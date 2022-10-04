-- clock_reset.vhd
-- DAPHNE2
-- Jamieson Olsen <jamieson@fnal.gov>

-- when the micro asserts hard reset (reset_n) this causes the MMCM to reset
-- and all reset outputs of this module to be asserted. while the MMCM is being
-- reset all clock outputs are unstable. when the MMCM asserts locked then we can
-- be sure that output clocks are stable, then we can deassert the reset outputs in
-- the proper clock domains.

-- when a soft reset pulse is detected do not reset the MMCM but pulse all reset outputs
-- low for a moment then release.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library unimacro;
use unimacro.vcomponents.all;

entity clock_reset is
port(
    sysclk_p, sysclk_n: in std_logic; -- system clock LVDS 100MHz from local oscillator
    reset_n: in std_logic; -- active LOW async hard reset from the microcontroller
    sreset:  in std_logic; -- soft reset from GbE interface consider this async

    sclk100: out std_logic;
    sclk200: out std_logic;
    mclk:    out std_logic;
    fclk:    out std_logic;

    reset_async:   out std_logic;
    reset_sclk200: out std_logic;
    reset_mclk:    out std_logic;

    locked: out std_logic -- main MMCM is locked
  );
end clock_reset;

architecture clock_reset_arch of clock_reset is

    signal sysclk_ibuf, sclk100_i: std_logic;
    signal clkfbout, clkfbout_buf, clkout0, clkout1, clkout2: std_logic;
    signal sclk200_i, mclk_i, locked_i: std_logic;
    signal reset_async_i: std_logic;
    signal count_reg: std_logic_vector(7 downto 0);
    signal master_reset_reg: std_logic;
    type state_type is (rst, wait4nolock, wait4lock, soft0, soft1, ready);
    signal state: state_type;

begin

    -- sysclk is 100MHz LVDS, receive it with IBUFDS and drive it out on a BUFG net. sysclk comes in on bank 33
	-- which has VCCO=1.5V. IOSTANDARD is LVDS and the termination resistor is external (DIFF_TERM=FALSE)
    -- use MMCM/PLL to generate the following internal clocks:
    --
    --      200MHz used to calibrate the IDELAYs in the front end.
    --      62.5MHz master clock
    --      437.5MHz (7 x the master clock) used for ISERDES in the front end 

	sysclk_ibufds_inst : IBUFGDS port map(O => sysclk_ibuf, I => sysclk_p, IB => sysclk_n);

    sclk100_inst: BUFG port map( I => sysclk_ibuf, O => sclk100_i); -- 100MHz always present

    sclk100 <= sclk100_i;

    mmcm_inst: MMCME2_ADV
    generic map(
        BANDWIDTH            => "OPTIMIZED",
        CLKOUT4_CASCADE      => FALSE,
        COMPENSATION         => "ZHOLD",
        STARTUP_WAIT         => FALSE,
        DIVCLK_DIVIDE        => 1,
        CLKFBOUT_MULT_F      => 8.750,
        CLKFBOUT_PHASE       => 0.000,
        CLKFBOUT_USE_FINE_PS => FALSE,
        CLKOUT0_DIVIDE_F     => 4.375,
        CLKOUT0_PHASE        => 0.000,
        CLKOUT0_DUTY_CYCLE   => 0.500,
        CLKOUT0_USE_FINE_PS  => FALSE,
        CLKOUT1_DIVIDE       => 14,
        CLKOUT1_PHASE        => 0.000,
        CLKOUT1_DUTY_CYCLE   => 0.500,
        CLKOUT1_USE_FINE_PS  => FALSE,
        CLKOUT2_DIVIDE       => 2,
        CLKOUT2_PHASE        => 0.000,
        CLKOUT2_DUTY_CYCLE   => 0.500,
        CLKOUT2_USE_FINE_PS  => FALSE,
        CLKIN1_PERIOD        => 10.000
    )
    port map(
        CLKFBOUT            => clkfbout,
        CLKFBOUTB           => open,
        CLKOUT0             => clkout0,  -- 200MHz
        CLKOUT0B            => open,
        CLKOUT1             => clkout1,  -- 62.5MHz
        CLKOUT1B            => open,
        CLKOUT2             => clkout2,  -- 437.5MHz
        CLKOUT2B            => open,     
        CLKOUT3             => open, 
        CLKOUT3B            => open,
        CLKOUT4             => open,
        CLKOUT5             => open,
        CLKOUT6             => open,
        CLKFBIN             => clkfbout_buf,
        CLKIN1              => sysclk_ibuf,
        CLKIN2              => '0',
        CLKINSEL            => '1',
        DADDR               => (others=>'0'),
        DCLK                => '0',
        DEN                 => '0',
        DI                  => (others=>'0'),
        DO                  => open,
        DRDY                => open,
        DWE                 => '0',
        PSCLK               => '0',
        PSEN                => '0',
        PSINCDEC            => '0',
        PSDONE              => open,
        LOCKED              => locked_i,
        CLKINSTOPPED        => open,
        CLKFBSTOPPED        => open,
        PWRDWN              => '0',
        RST                 => reset_async_i
    );

    clkfb_inst: BUFG port map( I => clkfbout, O => clkfbout_buf);

    clk0_inst:  BUFG port map( I => clkout0, O => sclk200_i); -- system clock 200MHz

    clk1_inst:  BUFG port map( I => clkout1, O => mclk_i);   -- master clock 62.5MHz

    clk2_inst:  BUFG port map( I => clkout2, O => fclk);   -- fast clock 437.5MHz

    sclk200 <= sclk200_i;

    mclk <= mclk_i;   

    locked <= locked_i;

	reset_async_i <= not reset_n;

    rst_fsm_proc: process(sclk100_i) -- this clock ALWAYS runs!
    begin
        if rising_edge(sclk100_i) then
            if (reset_async_i='1') then -- hard reset just happened
                state <= rst;
            else
                case state is 
                    when rst =>
                        state <= wait4nolock;  
                        master_reset_reg <= '1';
                    when wait4nolock => -- wait for the MMCM to drop locked
                        if (locked_i='0') then
                            state <= wait4lock;
                        else
                            state <= wait4nolock;
                        end if;
                    when wait4lock => -- wait for MMCM to lock, then do soft reset sequence
                        if (locked_i = '1') then
                            state <= soft1;
                            count_reg <= X"00";
                        else
                            state <= wait4lock;
                        end if;
                    when ready => -- MMCM is good, normal operating state 
                        if (sreset='1') then -- soft reset just occurred
                            state <= soft0;
                            master_reset_reg <= '1';
                        else
                            state <= ready;
                        end if;
                    when soft0 => -- stay here until soft reset is deasserted
                        if (sreset='0') then
                            state <= soft1;
                            count_reg <= X"00";
                        else
                            state <= soft0;
                        end if;
                    when soft1 => -- stay here for "some time"
                        if (count_reg = X"FF") then
                            state <= ready; -- OK done with soft reset
                            master_reset_reg <= '0';
                        else
                            state <= soft1;
                            count_reg <= std_logic_vector(unsigned(count_reg)+1);
                        end if;
                    when others => 
                        state <= rst;                            
                end case;
            end if;
        end if;
    end process rst_fsm_proc;

    -- now derive all other resets from the single reg (master_reset_reg)
    -- but square them up in their respective clock domains

    rst_mclk_proc: process(mclk_i)
    begin
        if rising_edge(mclk_i) then
            reset_mclk <= master_reset_reg;
        end if;
    end process rst_mclk_proc;

    rst_sclk200_proc: process(sclk200_i)
    begin
        if rising_edge(sclk200_i) then
            reset_sclk200 <= master_reset_reg;
        end if;
    end process rst_sclk200_proc;   

    reset_async <= reset_async_i;

end clock_reset_arch;
