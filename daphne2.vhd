-- DAPHNE2.vhd
-- FPGA Top Level
-- Target: XC7A200T-2FBG676C
-- Automatic AFE data alignment, No GBE interface, local clocks only, 2 outputs to FELIX
-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

use work.daphne_package.all;

entity DAPHNE2 is
generic(version: std_logic_vector(27 downto 0) := X"1234567"); -- git commit number is passed in from tcl
port(

    reset_n:    in  std_logic; -- active LOW reset from the microcontroller
    sysclk_p:   in  std_logic; -- system clock LVDS 100MHz from local oscillator
	sysclk_n:   in  std_logic; -- (note internal 62.5MHz clock is generated from this 100MHz clock)

    -- AFE LVDS I/O

    afe_p, afe_n: array_5x9_type; -- (7..0=data, 8=frame)
    afe_clk_p:  out std_logic; -- copy of 62.5MHz master clock sent to AFEs
    afe_clk_n:  out std_logic;

    -- two 4.809 Gbps outputs to FELIX (MGT RX unused/disabled)

    gtrefclk_p: in  std_logic; -- refclk for FELIX MGT LVDS 120.237 MHz
	gtrefclk_n: in  std_logic;

    sfp0_rx_p:   in  std_logic; 
	sfp0_rx_n:   in  std_logic; 
	sfp0_tx_dis: out std_logic; -- high to disable SFP transmitter
    sfp0_tx_p:   out std_logic; 
	sfp0_tx_n:   out std_logic;

    sfp1_rx_p:   in  std_logic; 
	sfp1_rx_n:   in  std_logic; 
	sfp1_tx_dis: out std_logic; -- high to disable SFP transmitter
    sfp1_tx_p:   out std_logic; 
	sfp1_tx_n:   out std_logic;

    -- misc board I/O

    led: out std_logic_vector(5 downto 0) -- DAPHNE PCB LEDs are active LOW

  );
end DAPHNE2;

architecture DAPHNE2_arch of DAPHNE2 is

    component front_end
    port(
        afe_p: in array_5x9_type;
        afe_n: in array_5x9_type;
        afe_clk_p:  out std_logic;
        afe_clk_n:  out std_logic;
        clock:   in  std_logic;
        clock7x: in  std_logic;
        sclk:    in  std_logic;
        reset:   in  std_logic;
        done:    out std_logic_vector(4 downto 0);
        dout:    out array_5x8x14_type
    );
    end component;
	
    signal gtrefclk_bufg_out, oeiclk, ready: std_logic;
    signal gtrefclk_p_ibuf, gtrefclk_n_ibuf: std_logic;

    signal gmii_rxd, gmii_txd: std_logic_vector(7 downto 0);
    signal gmii_tx_en, gmii_tx_er: std_logic;
    signal gmii_rx_dv, gmii_rx_er: std_logic;
    signal status_vector: std_logic_vector(15 downto 0);

    signal tx_data, rx_data: std_logic_vector(63 downto 0);
    signal rx_addr, rx_addr_reg: std_logic_vector(31 downto 0);
    signal tx_rden, rx_wren: std_logic;

    signal test_reg: std_logic_vector(63 downto 0);
    signal testreg_we: std_logic;

    signal bram0_we: std_logic_vector(3 downto 0);
    signal bram0_do: std_logic_vector(35 downto 0);

    signal fifo_DO: std_logic_vector(63 downto 0);
    signal dummy_RDCOUNT, dummy_WRCOUNT: std_logic_vector(8 downto 0);
    signal fifo_RDEN, fifo_WREN: std_logic;

    signal count_reg: std_logic_vector(23 downto 0);
    signal edge_reg: std_logic;
    signal led_temp, led1_reg, led0_reg: std_logic_vector(5 downto 0);

    -- DAPHNE specific signals...

	signal reset_async, reset_mclk: std_logic;
    signal fe_reset: std_logic;

    signal trig_sync, trig_gbe: std_logic;
    signal trig_gbe0_reg, trig_gbe1_reg, trig_gbe2_reg: std_logic;

    signal sysclk_ibuf, clkfbout, clkfbout_buf, clkout0, clkout1, clkout2, locked: std_logic;
    signal sclk: std_logic;
    signal mclk: std_logic;
    signal fclk: std_logic;





    signal afe_dout: array_5x9x16_type;
    signal spy_bufr: array_5x9x16_type;
    
    signal timestamp_reg, ts_spy_bufr: std_logic_vector(63 downto 0);


begin

    reset_async <= not reset_n; 

	-- sysclk is 100MHz LVDS, receive it with IBUFDS and drive it out on a BUFG net. sysclk comes in on bank 33
	-- which has VCCO=1.5V. IOSTANDARD is LVDS and the termination resistor is external (DIFF_TERM=FALSE)
    -- use MMCM/PLL to generate the following internal clocks:
    --
    --      200MHz used to calibrate the IDELAYs in the front end.
    --      62.5MHz master clock
    --      437.5MHz (7 x the master clock) used for ISERDES in the front end (also produce an inverted copy of this.)

	sysclk_ibufds_inst : IBUFGDS port map(O => sysclk_ibuf, I => sysclk_p, IB => sysclk_n);

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
        CLKOUT2B            => open,     -- 437.5MHz inverted  (was clkout2b)
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
        LOCKED              => locked,
        CLKINSTOPPED        => open,
        CLKFBSTOPPED        => open,
        PWRDWN              => '0',
        RST                 => reset_async
    );

    clkfb_inst: BUFG port map( I => clkfbout, O => clkfbout_buf);

    clk0_inst:  BUFG port map( I => clkout0, O => sclk);   -- system clock 200MHz

    clk1_inst:  BUFG port map( I => clkout1, O => aclk);   -- master clock 62.5MHz

    clk2_inst:  BUFG port map( I => clkout2, O => aclk7x); -- fast clock 437.5MHz
  
    -- when the uC asserts reset_n, use this to reset the MMCM. Some time later, after clocks stabilize,
    -- synchronously release reset to the rest of the design.

	






   

    -- now instantiate the AFE front end, total 45 channels (40 AFE data channels + 5 frame marker channels)

    fe_inst: front_end
    port map(

        afe_p => afe_p,
        afe_n => afe_n,
        afe_clk_p => afe_clk_p,
        afe_clk_n => afe_clk_n,

        mclk  => mclk,
        fclk  => fclk,
        sclk  => sclk,
        reset => fe_reset,

        delay_clk => oeiclk,
        delay_din => rx_data(4 downto 0),
        delay_ld  => delay_ld(4 downto 0),

        bitslip   => bitslip_mclk,
        q => afe_dout -- mclk domain 5x9x16
    );





    -- must manually add IBUFs for refclk inputs
    -- see http://forums.xilinx.com/t5/Implementation/Vivado-IBUFDS-GTE2-driven-by-IBUF/td-p/383187

    gtrefclk_p_ibuf_inst: IBUF port map ( I => gtrefclk_p, O => gtrefclk_p_ibuf );
    gtrefclk_n_ibuf_inst: IBUF port map ( I => gtrefclk_n, O => gtrefclk_n_ibuf );
 
	

	-- make sure SFP transmitter is enabled!

	sfp_tx_dis <= '0';











	-- DAPHNE has 6 LEDs controlled by the FPGA, which are labeled on the PCB like this:
    --  led(5)   led(4)     led(3)     led(2)    led(1)    led(0)
    -- "LED14"   "LED13"    "LED4"     "LED3"    "LED2"    "LED1"    "LED5 (uC)"     

	led_temp(0) <= locked;           -- "LED1" on if main PLL MMCM locked and clocks running
    led_temp(1) <= not sfp_los;      -- "LED2" on if SFP module is detecting a signal
	led_temp(2) <= status_vector(0); -- "LED3" on if Ethernet link is UP
	led_temp(3) <= '1' when (status_vector(11 downto 10)="10") else '0'; -- "LED4" on if link speed is 1000
	led_temp(4) <= gmii_rx_dv or gmii_tx_en; -- "LED13" is on if there is ethernet RX or TX activity
	led_temp(5) <= trig_sync;        -- "LED14" is on when DAPHNE is triggered 

	-- LED driver logic. pulse stretch fast signals so they are visible (aka a "one shot")
	-- Use a fast clock to sample the signal led_temp. whenever led_temp is HIGH, led0_reg
	-- goes high and stays high. periodically (200MHz / 2^24 = 11Hz) copy led0_reg into led1_reg 
	-- and reset led0_reg. this insures that the output signal led1_reg is HIGH for a whole
	-- 11Hz cycle, regardless of when the blip on the led_temp occurs.

    oneshot_proc: process(sclk)
    begin
        if rising_edge(sclk) then
            if (reset_async='1') then
                count_reg <= (others=>'0');
                edge_reg  <= '0';
                led0_reg <= (others=>'0');
				led1_reg <= (others=>'0');
            else
                count_reg <= std_logic_vector(unsigned(count_reg) + 1);
                edge_reg  <= count_reg(23);

                if (edge_reg='0' and count_reg(23)='1') then -- MSB of the counter was JUST set
                    led1_reg <= led0_reg;
                    led0_reg <= (others=>'0');
                else
                    led0_reg <= led0_reg or led_temp;
                end if;
            end if;
        end if;
    end process oneshot_proc;
   
    -- DAPHNE LEDs are ACTIVE LOW

    led <= not led1_reg;

end DAPHNE2_arch;
