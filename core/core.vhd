-- core.vhd
-- DAPHNE2 core logic functions
-- four 4 channel streaming senders attached to Xilinx IP core 
-- with four GTP transceivers, TX only mode.
--
-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;

use work.daphne2_package.all;

entity core is
port(

    mclk: in std_logic; -- master clock 62.5MHz
    sclk100: in std_logic; -- system clock 100MHz 
    reset: in std_logic; -- for sender logic and for GTP quad
    din: in array_5x9x14_type;  -- AFE data synch to mclk
    timestamp: in std_logic_vector(63 downto 0); -- sync to mclk

    -- GTP/SFP external interface
    
    daq_refclk_p, daq_refclk_n: in std_logic; -- MGT REFCLK for DAQ, LVDS, quad 213, refclk0, 120.237MHz

    daq0_tx_p, daq0_tx_n: out std_logic;
    daq1_tx_p, daq1_tx_n: out std_logic;
    daq2_tx_p, daq2_tx_n: out std_logic;
    daq3_tx_p, daq3_tx_n: out std_logic

);
end core;

architecture core_arch of core is

    signal lfsr_c: std_logic_vector (19 downto 0);

    component dstr4 -- 4 channel streaming sender
    generic(
        link:     std_logic_vector(5 downto 0) := "000000";
        slot:     std_logic_vector(3 downto 0) := "0000";
        crate_id: std_logic_vector(9 downto 0) := "0000000000";
        det_id:   std_logic_vector(5 downto 0) := "000000";
        version:  std_logic_vector(5 downto 0) := "100000");
    port(
        reset: in std_logic;
        mclk: in std_logic; -- master clock 62.5 MHz
        timestamp: in std_logic_vector(63 downto 0);
    	afe_dat0, afe_dat1, afe_dat2, afe_dat3: in std_logic_vector(13 downto 0); -- four AFE ADC channels
        ch0_id, ch1_id, ch2_id, ch3_id: in std_logic_vector(5 downto 0); -- the channel ID number
        
        fclk: in std_logic; -- transmit clock to FELIX 120.237 MHz 
        dout: out std_logic_vector(31 downto 0);
        kout: out std_logic_vector( 3 downto 0));
    end component;

    -- the following component is from Xilinx IP generator...

    component daphne2_daq_txonly
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
        GT2_TX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT2_RX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT2_DATA_VALID_IN                       : in   std_logic;
        GT2_TX_MMCM_LOCK_OUT                    : out  std_logic;
        GT3_TX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT3_RX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT3_DATA_VALID_IN                       : in   std_logic;
        GT3_TX_MMCM_LOCK_OUT                    : out  std_logic;
     
        GT0_TXUSRCLK_OUT                        : out  std_logic;
        GT0_TXUSRCLK2_OUT                       : out  std_logic;
     
        GT1_TXUSRCLK_OUT                        : out  std_logic;
        GT1_TXUSRCLK2_OUT                       : out  std_logic;
     
        GT2_TXUSRCLK_OUT                        : out  std_logic;
        GT2_TXUSRCLK2_OUT                       : out  std_logic;
     
        GT3_TXUSRCLK_OUT                        : out  std_logic;
        GT3_TXUSRCLK2_OUT                       : out  std_logic;
    
        --_________________________________________________________________________
        --GT0  (X0Y0)
        --____________________________CHANNEL PORTS________________________________
        ---------------------------- Channel - DRP Ports  --------------------------
        gt0_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt0_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt0_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt0_drpen_in                            : in   std_logic;
        gt0_drprdy_out                          : out  std_logic;
        gt0_drpwe_in                            : in   std_logic;
        --------------------- RX Initialization and Reset Ports --------------------
        gt0_eyescanreset_in                     : in   std_logic;
        -------------------------- RX Margin Analysis Ports ------------------------
        gt0_eyescandataerror_out                : out  std_logic;
        gt0_eyescantrigger_in                   : in   std_logic;
        ------------ Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        gt0_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt0_gtrxreset_in                        : in   std_logic;
        gt0_rxlpmreset_in                       : in   std_logic;
        --------------------- TX Initialization and Reset Ports --------------------
        gt0_gttxreset_in                        : in   std_logic;
        gt0_txuserrdy_in                        : in   std_logic;
        ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        gt0_txdata_in                           : in   std_logic_vector(31 downto 0);
        ------------------ Transmit Ports - TX 8B/10B Encoder Ports ----------------
        gt0_txcharisk_in                        : in   std_logic_vector(3 downto 0);
        --------------- Transmit Ports - TX Configurable Driver Ports --------------
        gt0_gtptxn_out                          : out  std_logic;
        gt0_gtptxp_out                          : out  std_logic;
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt0_txoutclkfabric_out                  : out  std_logic;
        gt0_txoutclkpcs_out                     : out  std_logic;
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt0_txresetdone_out                     : out  std_logic;
    
        --GT1  (X0Y1)
        --____________________________CHANNEL PORTS________________________________
        ---------------------------- Channel - DRP Ports  --------------------------
        gt1_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt1_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt1_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt1_drpen_in                            : in   std_logic;
        gt1_drprdy_out                          : out  std_logic;
        gt1_drpwe_in                            : in   std_logic;
        --------------------- RX Initialization and Reset Ports --------------------
        gt1_eyescanreset_in                     : in   std_logic;
        -------------------------- RX Margin Analysis Ports ------------------------
        gt1_eyescandataerror_out                : out  std_logic;
        gt1_eyescantrigger_in                   : in   std_logic;
        ------------ Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        gt1_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt1_gtrxreset_in                        : in   std_logic;
        gt1_rxlpmreset_in                       : in   std_logic;
        --------------------- TX Initialization and Reset Ports --------------------
        gt1_gttxreset_in                        : in   std_logic;
        gt1_txuserrdy_in                        : in   std_logic;
        ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        gt1_txdata_in                           : in   std_logic_vector(31 downto 0);
        ------------------ Transmit Ports - TX 8B/10B Encoder Ports ----------------
        gt1_txcharisk_in                        : in   std_logic_vector(3 downto 0);
        --------------- Transmit Ports - TX Configurable Driver Ports --------------
        gt1_gtptxn_out                          : out  std_logic;
        gt1_gtptxp_out                          : out  std_logic;
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt1_txoutclkfabric_out                  : out  std_logic;
        gt1_txoutclkpcs_out                     : out  std_logic;
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt1_txresetdone_out                     : out  std_logic;
    
        --GT2  (X0Y2)
        --____________________________CHANNEL PORTS________________________________
        ---------------------------- Channel - DRP Ports  --------------------------
        gt2_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt2_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt2_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt2_drpen_in                            : in   std_logic;
        gt2_drprdy_out                          : out  std_logic;
        gt2_drpwe_in                            : in   std_logic;
        --------------------- RX Initialization and Reset Ports --------------------
        gt2_eyescanreset_in                     : in   std_logic;
        -------------------------- RX Margin Analysis Ports ------------------------
        gt2_eyescandataerror_out                : out  std_logic;
        gt2_eyescantrigger_in                   : in   std_logic;
        ------------ Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        gt2_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt2_gtrxreset_in                        : in   std_logic;
        gt2_rxlpmreset_in                       : in   std_logic;
        --------------------- TX Initialization and Reset Ports --------------------
        gt2_gttxreset_in                        : in   std_logic;
        gt2_txuserrdy_in                        : in   std_logic;
        ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        gt2_txdata_in                           : in   std_logic_vector(31 downto 0);
        ------------------ Transmit Ports - TX 8B/10B Encoder Ports ----------------
        gt2_txcharisk_in                        : in   std_logic_vector(3 downto 0);
        --------------- Transmit Ports - TX Configurable Driver Ports --------------
        gt2_gtptxn_out                          : out  std_logic;
        gt2_gtptxp_out                          : out  std_logic;
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt2_txoutclkfabric_out                  : out  std_logic;
        gt2_txoutclkpcs_out                     : out  std_logic;
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt2_txresetdone_out                     : out  std_logic;
    
        --GT3  (X0Y3)
        --____________________________CHANNEL PORTS________________________________
        ---------------------------- Channel - DRP Ports  --------------------------
        gt3_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt3_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt3_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt3_drpen_in                            : in   std_logic;
        gt3_drprdy_out                          : out  std_logic;
        gt3_drpwe_in                            : in   std_logic;
        --------------------- RX Initialization and Reset Ports --------------------
        gt3_eyescanreset_in                     : in   std_logic;
        -------------------------- RX Margin Analysis Ports ------------------------
        gt3_eyescandataerror_out                : out  std_logic;
        gt3_eyescantrigger_in                   : in   std_logic;
        ------------ Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        gt3_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt3_gtrxreset_in                        : in   std_logic;
        gt3_rxlpmreset_in                       : in   std_logic;
        --------------------- TX Initialization and Reset Ports --------------------
        gt3_gttxreset_in                        : in   std_logic;
        gt3_txuserrdy_in                        : in   std_logic;
        ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        gt3_txdata_in                           : in   std_logic_vector(31 downto 0);
        ------------------ Transmit Ports - TX 8B/10B Encoder Ports ----------------
        gt3_txcharisk_in                        : in   std_logic_vector(3 downto 0);
        --------------- Transmit Ports - TX Configurable Driver Ports --------------
        gt3_gtptxn_out                          : out  std_logic;
        gt3_gtptxp_out                          : out  std_logic;
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt3_txoutclkfabric_out                  : out  std_logic;
        gt3_txoutclkpcs_out                     : out  std_logic;
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt3_txresetdone_out                     : out  std_logic;
    
        GT0_DRPADDR_COMMON_IN                   : in   std_logic_vector(7 downto 0);
        GT0_DRPDI_COMMON_IN                     : in   std_logic_vector(15 downto 0);
        GT0_DRPDO_COMMON_OUT                    : out  std_logic_vector(15 downto 0);
        GT0_DRPEN_COMMON_IN                     : in   std_logic;
        GT0_DRPRDY_COMMON_OUT                   : out  std_logic;
        GT0_DRPWE_COMMON_IN                     : in   std_logic;
        --____________________________COMMON PORTS________________________________
        GT0_PLL0OUTCLK_OUT  : out std_logic;
        GT0_PLL0OUTREFCLK_OUT  : out std_logic;
        GT0_PLL0LOCK_OUT  : out std_logic;
        GT0_PLL0REFCLKLOST_OUT  : out std_logic;    
        GT0_PLL1OUTCLK_OUT  : out std_logic;
        GT0_PLL1OUTREFCLK_OUT  : out std_logic;
        sysclk_in : in std_logic);
    end component;

    signal fclk0, fclk1, fclk2, fclk3: std_logic;
    signal sender0_dout, sender1_dout, sender2_dout, sender3_dout: std_logic_vector(31 downto 0);
    signal sender0_kout, sender1_kout, sender2_kout, sender3_kout: std_logic_vector(3 downto 0);

begin

    sender0_inst: dstr4 
    generic map(
        link => "000000", -- link 0
        slot => "0000",
        crate_id => "0000000000", 
        det_id => "000000",
        version => "100000")
    port map(
        reset => reset,
        mclk => mclk,
        timestamp => timestamp,
    	afe_dat0 => din(0)(0), -- AFE 0, ch 0-3
        afe_dat1 => din(0)(1),
        afe_dat2 => din(0)(2),
        afe_dat3 => din(0)(3),
        ch0_id => "000000", -- chid 0-3
        ch1_id => "000001", 
        ch2_id => "000010",
        ch3_id => "000011",        
        fclk => fclk0,
        dout => sender0_dout,
        kout => sender0_kout
    );

    sender1_inst: dstr4 
    generic map(
        link => "000001", -- link 1
        slot => "0000",
        crate_id => "0000000000", 
        det_id => "000000",
        version => "100000")
    port map(
        reset => reset,
        mclk => mclk,
        timestamp => timestamp,
    	afe_dat0 => din(1)(0), -- AFE 1, ch 0-3
        afe_dat1 => din(1)(1),
        afe_dat2 => din(1)(2),
        afe_dat3 => din(1)(3),
        ch0_id => "001000",   --> chid 8,9,10,11
        ch1_id => "001001", 
        ch2_id => "001010",
        ch3_id => "001011",        
        fclk => fclk1,
        dout => sender1_dout,
        kout => sender1_kout
    );

    sender2_inst: dstr4 
    generic map(
        link => "000010", -- link 2
        slot => "0000",
        crate_id => "0000000000", 
        det_id => "000000",
        version => "100000")
    port map(
        reset => reset,
        mclk => mclk,
        timestamp => timestamp,
    	afe_dat0 => din(2)(0), -- AFE 2, ch 0-3
        afe_dat1 => din(2)(1),
        afe_dat2 => din(2)(2),
        afe_dat3 => din(2)(3),
        ch0_id => "010000", -- chid 16-19
        ch1_id => "010001", 
        ch2_id => "010010",
        ch3_id => "010011",
        fclk => fclk2,
        dout => sender2_dout,
        kout => sender2_kout
    );

    sender3_inst: dstr4 
    generic map(
        link => "000011", -- link 3
        slot => "0000",
        crate_id => "0000000000", 
        det_id => "000000",
        version => "100000")
    port map(
        reset => reset,
        mclk => mclk,
        timestamp => timestamp,
    	afe_dat0 => din(3)(0), -- AFE 3, ch 0-3
        afe_dat1 => din(3)(1),
        afe_dat2 => din(3)(2),
        afe_dat3 => din(3)(3),
        ch0_id => "011000", -- chid 24-27
        ch1_id => "011001", 
        ch2_id => "011010",
        ch3_id => "011011",        
        fclk => fclk3,
        dout => sender3_dout,
        kout => sender3_kout
    );

    -- DRP is not used here

    daq_quad_inst : daphne2_daq_txonly
    port map
    (
        Q0_CLK0_GTREFCLK_PAD_N_IN => daq_refclk_n,  -- should be 120.237MHz for FELIX links
        Q0_CLK0_GTREFCLK_PAD_P_IN => daq_refclk_p,

        gt0_txdata_in => sender0_dout,
        gt0_txcharisk_in => sender0_kout,
        gt0_gtptxn_out => daq0_tx_n,
        gt0_gtptxp_out => daq0_tx_p,
        gt0_drpaddr_in => "000000000",
        gt0_drpdi_in => X"0000",
        gt0_drpdo_out => open,
        gt0_drpen_in => '0',
        gt0_drprdy_out => open,
        gt0_drpwe_in => '0',
        gt0_eyescanreset_in => '0',
        gt0_eyescandataerror_out => open,
        gt0_eyescantrigger_in => '0',
        gt0_dmonitorout_out => open,
        gt0_gtrxreset_in => '0',
        gt0_rxlpmreset_in => '0',
        gt0_gttxreset_in => '0',
        gt0_txuserrdy_in => '1',
        gt0_txoutclkfabric_out => open,
        gt0_txoutclkpcs_out => open,
        gt0_txresetdone_out => open,

        gt1_txdata_in => sender1_dout,
        gt1_txcharisk_in => sender1_kout,
        gt1_gtptxn_out => daq1_tx_n,
        gt1_gtptxp_out => daq1_tx_p,
        gt1_drpaddr_in => "000000000",
        gt1_drpdi_in => X"0000",
        gt1_drpdo_out => open,
        gt1_drpen_in => '0',
        gt1_drprdy_out => open,
        gt1_drpwe_in => '0',
        gt1_eyescanreset_in => '0',
        gt1_eyescandataerror_out => open,
        gt1_eyescantrigger_in => '0',
        gt1_dmonitorout_out => open,
        gt1_gtrxreset_in => '0',
        gt1_rxlpmreset_in => '0',
        gt1_gttxreset_in => '0',
        gt1_txuserrdy_in => '1',
        gt1_txoutclkfabric_out => open,
        gt1_txoutclkpcs_out => open,
        gt1_txresetdone_out => open,

        gt2_txdata_in => sender2_dout,
        gt2_txcharisk_in => sender2_kout,
        gt2_gtptxn_out => daq2_tx_n,
        gt2_gtptxp_out => daq2_tx_p,
        gt2_drpaddr_in => "000000000",
        gt2_drpdi_in => X"0000",
        gt2_drpdo_out => open,
        gt2_drpen_in => '0',
        gt2_drprdy_out => open,
        gt2_drpwe_in => '0',
        gt2_eyescanreset_in => '0',
        gt2_eyescandataerror_out => open,
        gt2_eyescantrigger_in => '0',
        gt2_dmonitorout_out => open,
        gt2_gtrxreset_in => '0',
        gt2_rxlpmreset_in => '0',
        gt2_gttxreset_in => '0',
        gt2_txuserrdy_in => '1',
        gt2_txoutclkfabric_out => open,
        gt2_txoutclkpcs_out => open,
        gt2_txresetdone_out => open,

        gt3_txdata_in => sender3_dout,
        gt3_txcharisk_in => sender3_kout,
        gt3_gtptxn_out => daq3_tx_n,
        gt3_gtptxp_out => daq3_tx_p,
        gt3_drpaddr_in => "000000000",
        gt3_drpdi_in => X"0000",
        gt3_drpdo_out => open,
        gt3_drpen_in => '0',
        gt3_drprdy_out => open,
        gt3_drpwe_in => '0',
        gt3_eyescanreset_in => '0',
        gt3_eyescandataerror_out => open,
        gt3_eyescantrigger_in => '0',
        gt3_dmonitorout_out => open,
        gt3_gtrxreset_in => '0',
        gt3_rxlpmreset_in => '0',
        gt3_gttxreset_in => '0',
        gt3_txuserrdy_in => '1',
        gt3_txoutclkfabric_out => open,
        gt3_txoutclkpcs_out => open,
        gt3_txresetdone_out => open,

        sysclk_in => sclk100, -- must supply this 100MHz clock even tho DRP is not used...
   
        GT0_DRPADDR_COMMON_IN => "00000000",
        GT0_DRPDI_COMMON_IN => "0000000000000000",
        GT0_DRPDO_COMMON_OUT => open,
        GT0_DRPEN_COMMON_IN => '0',
        GT0_DRPRDY_COMMON_OUT => open,
        GT0_DRPWE_COMMON_IN => '0',

        GT0_PLL0OUTCLK_OUT  => open,
        GT0_PLL0OUTREFCLK_OUT  => open,
        GT0_PLL0LOCK_OUT  => open,
        GT0_PLL0REFCLKLOST_OUT  => open,    
        GT0_PLL1OUTCLK_OUT  => open,
        GT0_PLL1OUTREFCLK_OUT  => open,

        GT0_TX_MMCM_LOCK_OUT => open,
        GT0_TX_FSM_RESET_DONE_OUT => open,
        GT0_RX_FSM_RESET_DONE_OUT => open,
        GT0_DATA_VALID_IN => '0',

        GT1_TX_MMCM_LOCK_OUT => open,
        GT1_TX_FSM_RESET_DONE_OUT => open,
        GT1_RX_FSM_RESET_DONE_OUT => open,
        GT1_DATA_VALID_IN => '0',

        GT2_TX_MMCM_LOCK_OUT => open,
        GT2_TX_FSM_RESET_DONE_OUT => open,
        GT2_RX_FSM_RESET_DONE_OUT => open,
        GT2_DATA_VALID_IN => '0',

        GT3_TX_MMCM_LOCK_OUT => open,
        GT3_TX_FSM_RESET_DONE_OUT => open,
        GT3_RX_FSM_RESET_DONE_OUT => open,
        GT3_DATA_VALID_IN => '0',

        DONT_RESET_ON_DATA_ERROR_IN => '0',

        soft_reset_tx_in => reset,

        GT0_TXUSRCLK_OUT => open, -- 240.474MHz don't use
        GT0_TXUSRCLK2_OUT => fclk0, -- 120.237MHz
        GT1_TXUSRCLK_OUT => open,
        GT1_TXUSRCLK2_OUT => fclk1,
        GT2_TXUSRCLK_OUT => open,
        GT2_TXUSRCLK2_OUT => fclk2,
        GT3_TXUSRCLK_OUT => open,
        GT3_TXUSRCLK2_OUT => fclk3

    );

end core_arch; 

