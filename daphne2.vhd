-- DAPHNE2.vhd
-- FPGA Top Level
-- Target: XC7A200T-2FBG676C
-- Features: Automatic AFE data alignment, OEI GbE interface, Spy buffers, 4 outputs to FELIX DAQ
-- Note this version does not have the timing endpoint firmware -- local clocks only with fake timestamp
-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

use work.daphne2_package.all;

entity DAPHNE2 is
generic(version: std_logic_vector(27 downto 0) := X"1234567"); -- git commit number is passed in from tcl build script
port(

    reset_n: in std_logic; -- active LOW async reset from the microcontroller
    sysclk_p, sysclk_n: in std_logic; -- system clock LVDS 100MHz from local oscillator

    -- AFE interface, LVDS, 5 AFE chips, each AFE has 8 DATA + 1 FCLK outputs

    afe_p, afe_n: array_5x9_type; -- (7..0=DATA, 8=FCLK)
    afe_clk_p, afe_clk_n: out std_logic; -- copy of 62.5MHz master clock sent to AFEs

    -- four 4.809 Gbps outputs to FELIX (note: MGT RX is unused/disabled)

    gtrefclk_p, gtrefclk_n: in std_logic; -- MGT REFCLK for FELIX, LVDS, 120.237 MHz

    sfp0_rx_p, sfp0_rx_n: in std_logic; 
    sfp0_tx_p, sfp0_tx_n: out std_logic; 
	sfp0_tx_dis: out std_logic; 

    sfp1_rx_p, sfp1_rx_n: in std_logic; 
    sfp1_tx_p, sfp1_tx_n: out std_logic; 
	sfp1_tx_dis: out std_logic; 

    -- misc board I/O

    spi_clk, spi_csn, spi_si: in std_logic; -- slow controls spi slave interface to the micro
    spi_so: out std_logic; -- looks like a 256x8 SPI EEPROM

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
        warn:    out std_logic_vector(4 downto 0);
        dout:    out array_5x8x14_type
    );
    end component;

    component felix_gtp0 -- dual MGT TX only
    port
    (
        SOFT_RESET_TX_IN                        : in   std_logic;
        DONT_RESET_ON_DATA_ERROR_IN             : in   std_logic;
        Q0_CLK0_GTREFCLK_PAD_N_IN               : in   std_logic;
        Q0_CLK0_GTREFCLK_PAD_P_IN               : in   std_logic;
        GT0_TX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT0_RX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT0_DATA_VALID_IN                       : in   std_logic;
        GT0_TX_MMCM_LOCK_OUT                    : out  std_logic;
        GT1_TX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT1_RX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT1_DATA_VALID_IN                       : in   std_logic;
        GT1_TX_MMCM_LOCK_OUT                    : out  std_logic;
        GT0_TXUSRCLK_OUT                        : out  std_logic;
        GT0_TXUSRCLK2_OUT                       : out  std_logic;
        GT1_TXUSRCLK_OUT                        : out  std_logic;
        GT1_TXUSRCLK2_OUT                       : out  std_logic;
        gt0_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt0_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt0_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt0_drpen_in                            : in   std_logic;
        gt0_drprdy_out                          : out  std_logic;
        gt0_drpwe_in                            : in   std_logic;
        gt0_tx8b10ben_in                        : in   std_logic;
        gt0_eyescanreset_in                     : in   std_logic;
        gt0_eyescandataerror_out                : out  std_logic;
        gt0_eyescantrigger_in                   : in   std_logic;
        gt0_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        gt0_gtrxreset_in                        : in   std_logic;
        gt0_rxlpmreset_in                       : in   std_logic;
        gt0_gttxreset_in                        : in   std_logic;
        gt0_txuserrdy_in                        : in   std_logic;
        gt0_txdata_in                           : in   std_logic_vector(31 downto 0);
        gt0_txcharisk_in                        : in   std_logic_vector(3 downto 0);
        gt0_gtptxn_out                          : out  std_logic;
        gt0_gtptxp_out                          : out  std_logic;
        gt0_txoutclkfabric_out                  : out  std_logic;
        gt0_txoutclkpcs_out                     : out  std_logic;
        gt0_txresetdone_out                     : out  std_logic;
        gt1_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt1_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt1_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt1_drpen_in                            : in   std_logic;
        gt1_drprdy_out                          : out  std_logic;
        gt1_drpwe_in                            : in   std_logic;
        gt1_tx8b10ben_in                        : in   std_logic;
        gt1_eyescanreset_in                     : in   std_logic;
        gt1_eyescandataerror_out                : out  std_logic;
        gt1_eyescantrigger_in                   : in   std_logic;
        gt1_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        gt1_gtrxreset_in                        : in   std_logic;
        gt1_rxlpmreset_in                       : in   std_logic;
        gt1_gttxreset_in                        : in   std_logic;
        gt1_txuserrdy_in                        : in   std_logic;
        gt1_txdata_in                           : in   std_logic_vector(31 downto 0);
        gt1_txcharisk_in                        : in   std_logic_vector(3 downto 0);
        gt1_gtptxn_out                          : out  std_logic;
        gt1_gtptxp_out                          : out  std_logic;
        gt1_txoutclkfabric_out                  : out  std_logic;
        gt1_txoutclkpcs_out                     : out  std_logic;
        gt1_txresetdone_out                     : out  std_logic;
        GT0_PLL0OUTCLK_OUT  : out std_logic;
        GT0_PLL0OUTREFCLK_OUT  : out std_logic;
        GT0_PLL0LOCK_OUT  : out std_logic;
        GT0_PLL0REFCLKLOST_OUT  : out std_logic;    
        GT0_PLL1OUTCLK_OUT  : out std_logic;
        GT0_PLL1OUTREFCLK_OUT  : out std_logic;
        sysclk_in : in std_logic
    );
    end component;

    component dstr4 -- streaming mode sender 4 -> 1
    generic(
        link:     std_logic_vector(5 downto 0) := "000000";
        slot:     std_logic_vector(3 downto 0) := "0000";
        crate_id: std_logic_vector(9 downto 0) := "0000000000";
        det_id:   std_logic_vector(5 downto 0) := "000000";
        version:  std_logic_vector(5 downto 0) := "100000");
    port(
        reset: in std_logic;   
        aclk: in std_logic; -- AFE clock 62.500 MHz
        timestamp: in std_logic_vector(63 downto 0);
    	afe_dat0, afe_dat1, afe_dat2, afe_dat3: in std_logic_vector(13 downto 0); -- four AFE ADC channels
        ch0_id, ch1_id, ch2_id, ch3_id: in std_logic_vector(5 downto 0); -- the channel ID number        
        fclk: in std_logic; -- transmit clock to FELIX 120.237 MHz 
        dout: out std_logic_vector(31 downto 0);
        kout: out std_logic_vector( 3 downto 0)
      );
    end component;
	
    signal gtrefclk_p_ibuf, gtrefclk_n_ibuf: std_logic;
    signal gtrefclk_bufg_out: std_logic;

	signal reset_async, reset_aclk, reset_sclk: std_logic;

    signal sysclk_ibuf, clkfbout, clkfbout_buf, clkout0, clkout1, clkout2, locked: std_logic;
    signal sclk: std_logic;  -- system clock 100MHz always present
    signal fclk0, fclk1: std_logic; -- FELIX output link clock 120.237 MHz 

    signal aclk, aclk7x: std_logic; -- main "AFE" clock 62.5 MHz + 437.5 MHz
    signal ts_reg: std_logic_vector(63 downto 0) := X"0000000000000000";



    signal fe_done, fe_warn: std_logic_vector(4 downto 0);

    signal afe_dat: array_5x8x14_type;   
    signal afe_dat_sel: array_8x6_type;
    signal afe_dat_mux: array_8x14_type;

    signal kout0, kout1: std_logic_vector( 3 downto 0);
    signal dout0, dout1: std_logic_vector(31 downto 0);

    signal count_reg: std_logic_vector(23 downto 0);
    signal edge_reg: std_logic;
    signal led_temp, led1_reg, led0_reg: std_logic_vector(5 downto 0);

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
        CLKOUT2B            => open,     
        CLKOUT3             => open, -- need to make 125MHz here?
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

    clk2_inst:  BUFG port map( I => clkout2, O => aclk7x); -- fast clock 437.5MHz for front end deskew logic
  
    -- synchronize reset for various clk domains

    reset_aclk_proc: process(aclk)
    begin
        if rising_edge(aclk) then
            reset_aclk <= reset_async;
        end if;
    end process reset_aclk_proc;

    reset_sclk_proc: process(sclk)
    begin
        if rising_edge(sclk) then
            reset_sclk <= reset_async;
        end if;
    end process reset_sclk_proc;

    -- make a fake free running 64 bit timestamp 

    ts_proc: process(aclk)
    begin
        if rising_edge(aclk) then
            if (reset_aclk='1') then
                ts_reg <= (others=>'0');
            else
                ts_reg <= std_logic_vector( unsigned(ts_reg) + 1 );
            end if;
        end if;
    end process ts_proc;
   
    -- now instantiate the automatic AFE front end, total 45 channels 
    -- (5x8 AFE data channels + 5 frame marker "FCLK" channels)
    -- Note that the fast (7x) AFE output clock "DCLK" is NOT used by this front end design
    -- because that fast clock is generated locally in the FPGA by the MMCM

    fe_inst: front_end
    port map(
        afe_p => afe_p, afe_n => afe_n, -- 45 LVDS inputs from AFE chips
        afe_clk_p => afe_clk_p, afe_clk_n => afe_clk_n, -- FPGA outputs 62.5MHz clock to AFEs
        clock => aclk,
        clock7x => aclk7x,
        sclk => sclk,
        reset => reset_aclk,
        done => fe_done,
        warn => fe_warn,
        dout => afe_dat -- 5x8x14 bits in the aclk domain
    );

    -- programmable muxes select which 4 channels out of the 40 afe channels
    -- are selected for the streaming outputs

    gen_afe_mux: for i in 7 downto 0 generate
        afe_dat_mux(i) <= afe_dat(0)(0) when (afe_dat_sel(i)="000000") else
                          afe_dat(0)(1) when (afe_dat_sel(i)="000001") else
                          afe_dat(0)(2) when (afe_dat_sel(i)="000010") else
                          afe_dat(0)(3) when (afe_dat_sel(i)="000011") else
                          afe_dat(0)(4) when (afe_dat_sel(i)="000100") else
                          afe_dat(0)(5) when (afe_dat_sel(i)="000101") else
                          afe_dat(0)(6) when (afe_dat_sel(i)="000110") else
                          afe_dat(0)(7) when (afe_dat_sel(i)="000111") else
                          afe_dat(1)(0) when (afe_dat_sel(i)="001000") else
                          afe_dat(1)(1) when (afe_dat_sel(i)="001001") else
                          afe_dat(1)(2) when (afe_dat_sel(i)="001010") else
                          afe_dat(1)(3) when (afe_dat_sel(i)="001011") else
                          afe_dat(1)(4) when (afe_dat_sel(i)="001100") else
                          afe_dat(1)(5) when (afe_dat_sel(i)="001101") else
                          afe_dat(1)(6) when (afe_dat_sel(i)="001110") else
                          afe_dat(1)(7) when (afe_dat_sel(i)="001111") else
                          afe_dat(2)(0) when (afe_dat_sel(i)="010000") else
                          afe_dat(2)(1) when (afe_dat_sel(i)="010001") else
                          afe_dat(2)(2) when (afe_dat_sel(i)="010010") else
                          afe_dat(2)(3) when (afe_dat_sel(i)="010011") else
                          afe_dat(2)(4) when (afe_dat_sel(i)="010100") else
                          afe_dat(2)(5) when (afe_dat_sel(i)="010101") else
                          afe_dat(2)(6) when (afe_dat_sel(i)="010110") else
                          afe_dat(2)(7) when (afe_dat_sel(i)="010111") else
                          afe_dat(3)(0) when (afe_dat_sel(i)="011000") else
                          afe_dat(3)(1) when (afe_dat_sel(i)="011001") else
                          afe_dat(3)(2) when (afe_dat_sel(i)="011010") else
                          afe_dat(3)(3) when (afe_dat_sel(i)="011011") else
                          afe_dat(3)(4) when (afe_dat_sel(i)="011100") else
                          afe_dat(3)(5) when (afe_dat_sel(i)="011101") else
                          afe_dat(3)(6) when (afe_dat_sel(i)="011110") else
                          afe_dat(3)(7) when (afe_dat_sel(i)="011111") else
                          afe_dat(4)(0) when (afe_dat_sel(i)="100000") else
                          afe_dat(4)(1) when (afe_dat_sel(i)="100001") else
                          afe_dat(4)(2) when (afe_dat_sel(i)="100010") else
                          afe_dat(4)(3) when (afe_dat_sel(i)="100011") else
                          afe_dat(4)(4) when (afe_dat_sel(i)="100100") else
                          afe_dat(4)(5) when (afe_dat_sel(i)="100101") else
                          afe_dat(4)(6) when (afe_dat_sel(i)="100110") else
                          afe_dat(4)(7) when (afe_dat_sel(i)="100111") else
                          "00000000000000";
    end generate gen_afe_mux;


    -- dual streaming core 

    core0_inst: dstr4
    generic map(
        link => "000000", 
        slot => "0000",
        crate_id => "0000000000",
        det_id => "000000",
        version => "100000")
    port map(
        reset => reset_aclk,
        aclk => aclk,
        timestamp => ts_reg,
    	afe_dat0 => afe_dat_mux(0), 
        afe_dat1 => afe_dat_mux(1),
        afe_dat2 => afe_dat_mux(2),
        afe_dat3 => afe_dat_mux(3),
        ch0_id => afe_dat_sel(0),
        ch1_id => afe_dat_sel(1),
        ch2_id => afe_dat_sel(2),
        ch3_id => afe_dat_sel(3),
        fclk => fclk0,
        dout => dout0,
        kout => kout0
      );

    core1_inst: dstr4
    generic map(
        link => "000001", 
        slot => "0000",
        crate_id => "0000000000",
        det_id => "000000",
        version => "100000")
    port map(
        reset => reset_aclk,
        aclk => aclk,
        timestamp => ts_reg,
    	afe_dat0 => afe_dat_mux(4), 
        afe_dat1 => afe_dat_mux(5),
        afe_dat2 => afe_dat_mux(6),
        afe_dat3 => afe_dat_mux(7),
        ch0_id => afe_dat_sel(4),
        ch1_id => afe_dat_sel(5),
        ch2_id => afe_dat_sel(6),
        ch3_id => afe_dat_sel(7),
        fclk => fclk1,
        dout => dout1,
        kout => kout1
      );

    -- must manually add IBUFs for refclk inputs
    -- see http://forums.xilinx.com/t5/Implementation/Vivado-IBUFDS-GTE2-driven-by-IBUF/td-p/383187
    -- gtrefclk_p_ibuf_inst: IBUF port map ( I => gtrefclk_p, O => gtrefclk_p_ibuf );
    -- gtrefclk_n_ibuf_inst: IBUF port map ( I => gtrefclk_n, O => gtrefclk_n_ibuf );
 
    -- dual TX MGT goes here:

    felix_gtp0_inst: felix_gtp0 -- dual MGT TX only
    port map(
        sysclk_in => sclk, -- 100 mhz
        soft_reset_tx_in => '0',
        dont_reset_on_data_error_in => '0',
        q0_clk0_gtrefclk_pad_n_in => gtrefclk_n,  -- reference clock input
        q0_clk0_gtrefclk_pad_p_in => gtrefclk_p,

        -- gt0_tx_fsm_reset_done_out : out  std_logic;
        -- gt0_rx_fsm_reset_done_out : out  std_logic;
        gt0_data_valid_in => '1',
        -- gt0_tx_mmcm_lock_out : out  std_logic;
        -- gt0_txusrclk_out : out  std_logic;
        gt0_txusrclk2_out => fclk0,
        gt0_drpaddr_in => "000000000",
        gt0_drpdi_in => x"0000",
        -- gt0_drpdo_out : out  std_logic_vector(15 downto 0);
        gt0_drpen_in => '0',
        -- gt0_drprdy_out : out  std_logic;
        gt0_drpwe_in => '0',
        gt0_tx8b10ben_in => '1',
        gt0_eyescanreset_in => '0',
        -- gt0_eyescandataerror_out : out std_logic;
        gt0_eyescantrigger_in=> '0',
        -- gt0_dmonitorout_out : out std_logic_vector(14 downto 0);
        gt0_gtrxreset_in => '0',
        gt0_rxlpmreset_in => '0',
        gt0_gttxreset_in => '0',
        gt0_txuserrdy_in => '1',
        gt0_txdata_in => dout0,
        gt0_txcharisk_in => kout0,
        gt0_gtptxn_out => sfp0_tx_n,
        gt0_gtptxp_out => sfp0_tx_p,
        -- gt0_txoutclkfabric_out                  : out  std_logic;
        -- gt0_txoutclkpcs_out                     : out  std_logic;
        -- gt0_txresetdone_out                     : out  std_logic;
        -- gt0_pll0outclk_out  : out std_logic;
        -- gt0_pll0outrefclk_out  : out std_logic;
        -- gt0_pll0lock_out  : out std_logic;
        -- gt0_pll0refclklost_out  : out std_logic;    
        -- gt0_pll1outclk_out  : out std_logic;
        -- gt0_pll1outrefclk_out  : out std_logic;
 
        -- gt1_txusrclk_out : out  std_logic;
        gt1_txusrclk2_out => fclk1,
        -- gt1_tx_fsm_reset_done_out : out  std_logic;
        -- gt1_rx_fsm_reset_done_out : out  std_logic;
        gt1_data_valid_in => '1',
        -- gt1_tx_mmcm_lock_out : out  std_logic;
        gt1_drpaddr_in => "000000000",
        gt1_drpdi_in => X"0000",
        -- gt1_drpdo_out : out  std_logic_vector(15 downto 0);
        gt1_drpen_in => '1',
        -- gt1_drprdy_out : out  std_logic;
        gt1_drpwe_in => '1',
        gt1_tx8b10ben_in => '1',
        gt1_eyescanreset_in => '0',
        gt1_eyescantrigger_in => '0',
        gt1_gtrxreset_in => '0',
        gt1_rxlpmreset_in => '0',
        gt1_gttxreset_in => '0',
        gt1_txuserrdy_in => '1',
        gt1_txdata_in => dout1,
        gt1_txcharisk_in => kout1,
        gt1_gtptxn_out => sfp1_tx_n,
        gt1_gtptxp_out => sfp1_tx_p
        --gt1_txoutclkfabric_out : out std_logic;
        --gt1_txoutclkpcs_out : out std_logic;
        --gt1_txresetdone_out : out std_logic;

    );

	-- make sure both SFP transmitters are ENABLED!

	sfp0_tx_dis <= '0';
    sfp1_tx_dis <= '0';

	-- DAPHNE has 6 LEDs controlled by the FPGA, which are labeled on the PCB like this:
    --  led(5)   led(4)     led(3)     led(2)    led(1)    led(0)
    -- "LED14"   "LED13"    "LED4"     "LED3"    "LED2"    "LED1"    "LED5 (uC)"     

	led_temp(0) <= locked; -- "LED1" on if the main PLL/MMCM is locked and stable
    led_temp(1) <= '1' when (fe_done="11111") else '0'; -- "LED2" on if all 5 front end modules completed auto align process
	led_temp(2) <= '0' when (fe_warn="00000") else '1'; -- "LED3" on if there are bit errors observed
	led_temp(3) <= '0'; -- "LED4" 
	led_temp(4) <= '0'; -- "LED13"
	led_temp(5) <= '0'; -- "LED14" 

	-- LED driver logic. pulse stretch fast signals so they are visible (aka a "one shot")
	-- Use a fast clock to sample the signal led_temp. whenever led_temp is HIGH, led0_reg
	-- goes high and stays high. periodically (200MHz / 2^24 = 11Hz) copy led0_reg into led1_reg 
	-- and reset led0_reg. this insures that the output signal led1_reg is HIGH for a whole
	-- 11Hz cycle, regardless of when the blip on the led_temp occurs.

    oneshot_proc: process(sclk)
    begin
        if rising_edge(sclk) then
            if (reset_sclk='1') then
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
   
    -- DAPHNE status LEDs are ACTIVE LOW

    led <= not led1_reg;

end DAPHNE2_arch;
