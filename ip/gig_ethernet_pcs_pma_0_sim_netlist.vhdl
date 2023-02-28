-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Feb 28 09:19:31 2023
-- Host        : PPD-130859 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Vivado/DAPHNE2/DAPHNE2.runs/gig_ethernet_pcs_pma_0_synth_1/gig_ethernet_pcs_pma_0_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_clocking is
  port (
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    userclk : out STD_LOGIC;
    userclk2 : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    txoutclk : in STD_LOGIC;
    mmcm_reset : in STD_LOGIC;
    rxoutclk : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_clocking;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_clocking is
  signal clkfbout : STD_LOGIC;
  signal clkout0 : STD_LOGIC;
  signal clkout1 : STD_LOGIC;
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal txoutclk_bufg : STD_LOGIC;
  signal NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of bufg_gtrefclk : label is "PRIMITIVE";
  attribute box_type of bufg_txoutclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk2 : label is "PRIMITIVE";
  attribute box_type of ibufds_gtrefclk : label is "PRIMITIVE";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
  attribute box_type of rxrecclkbufg : label is "PRIMITIVE";
begin
  gtrefclk_out <= \^gtrefclk_out\;
bufg_gtrefclk: unisim.vcomponents.BUFG
     port map (
      I => \^gtrefclk_out\,
      O => gtrefclk_bufg
    );
bufg_txoutclk: unisim.vcomponents.BUFG
     port map (
      I => txoutclk,
      O => txoutclk_bufg
    );
bufg_userclk: unisim.vcomponents.BUFG
     port map (
      I => clkout1,
      O => userclk
    );
bufg_userclk2: unisim.vcomponents.BUFG
     port map (
      I => clkout0,
      O => userclk2
    );
ibufds_gtrefclk: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
        port map (
      CEB => '0',
      I => gtrefclk_p,
      IB => gtrefclk_n,
      O => \^gtrefclk_out\,
      ODIV2 => NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 16.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 16.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 8.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 16,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout,
      CLKFBOUT => clkfbout,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => txoutclk_bufg,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clkout0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clkout1,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => mmcm_locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => mmcm_reset
    );
rxrecclkbufg: unisim.vcomponents.BUFG
     port map (
      I => rxoutclk,
      O => rxuserclk2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_common_reset is
  port (
    PLL0RESET : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0reset_out : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_common_reset;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_common_reset is
  signal COMMON_RESET : STD_LOGIC;
  signal COMMON_RESET_i_1_n_0 : STD_LOGIC;
  signal common_reset_asserted : STD_LOGIC;
  signal common_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of COMMON_RESET_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of common_reset_asserted_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4\ : label is "soft_lutpair0";
begin
COMMON_RESET_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => common_reset_asserted,
      I1 => state,
      I2 => COMMON_RESET,
      O => COMMON_RESET_i_1_n_0
    );
COMMON_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => COMMON_RESET_i_1_n_0,
      Q => COMMON_RESET,
      R => \out\(0)
    );
common_reset_asserted_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state,
      I1 => common_reset_asserted,
      O => common_reset_asserted_i_1_n_0
    );
common_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => common_reset_asserted_i_1_n_0,
      Q => common_reset_asserted,
      R => \out\(0)
    );
gtpe2_common_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => COMMON_RESET,
      I1 => gt0_pll0reset_out,
      I2 => cpll_reset_i,
      O => PLL0RESET
    );
\init_wait_count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => plusOp(0)
    );
\init_wait_count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => plusOp(1)
    );
\init_wait_count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => plusOp(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(2),
      O => plusOp(3)
    );
\init_wait_count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      O => plusOp(4)
    );
\init_wait_count[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(3),
      I5 => init_wait_count_reg(4),
      O => plusOp(5)
    );
\init_wait_count[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => \init_wait_count[7]_i_4_n_0\,
      I2 => init_wait_count_reg(5),
      O => plusOp(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => init_wait_count_reg(7),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(6),
      O => \init_wait_count[7]_i_1_n_0\
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(7),
      I1 => init_wait_count_reg(5),
      I2 => \init_wait_count[7]_i_4_n_0\,
      I3 => init_wait_count_reg(6),
      O => plusOp(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(5),
      I3 => init_wait_count_reg(4),
      O => \init_wait_count[7]_i_3_n_0\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(2),
      O => \init_wait_count[7]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(0),
      Q => init_wait_count_reg(0),
      R => '0'
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(1),
      Q => init_wait_count_reg(1),
      R => '0'
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(2),
      Q => init_wait_count_reg(2),
      R => '0'
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(3),
      Q => init_wait_count_reg(3),
      R => '0'
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(4),
      Q => init_wait_count_reg(4),
      R => '0'
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(5),
      Q => init_wait_count_reg(5),
      R => '0'
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(6),
      Q => init_wait_count_reg(6),
      R => '0'
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[7]_i_1_n_0\,
      D => plusOp(7),
      Q => init_wait_count_reg(7),
      R => '0'
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_done,
      I1 => \init_wait_count[7]_i_3_n_0\,
      I2 => init_wait_count_reg(7),
      I3 => init_wait_count_reg(2),
      I4 => init_wait_count_reg(3),
      I5 => init_wait_count_reg(6),
      O => init_wait_done_i_1_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => state,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => state_i_1_n_0,
      Q => state,
      R => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gt_common is
  port (
    gt0_pll0lock_out : out STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    cpll_reset_i : out STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    PLL0RESET : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gt_common;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gt_common is
  signal PLL0PD : STD_LOGIC;
  signal \cpllpd_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[94]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[126]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[95]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal NLW_gtpe2_common_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gtpe2_common_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[94]_srl31\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[94]_srl31\ : label is "U0/\core_gt_common_i/cpllpd_wait_reg[94]_srl31 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \cpllpd_wait_reg[95]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[126]_srl31\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[126]_srl31\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[126]_srl31 ";
  attribute equivalent_register_removal of \cpllreset_wait_reg[127]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[31]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[63]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[95]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[95]_srl32\ : label is "U0/\core_gt_common_i/cpllreset_wait_reg[95]_srl32 ";
  attribute box_type : string;
  attribute box_type of gtpe2_common_i : label is "PRIMITIVE";
begin
\cpllpd_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => '0',
      Q => \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[31]_srl32_n_1\
    );
\cpllpd_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllpd_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[63]_srl32_n_1\
    );
\cpllpd_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllpd_wait_reg[63]_srl32_n_1\,
      Q => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q31 => \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q => PLL0PD,
      R => '0'
    );
\cpllreset_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[95]_srl32_n_1\,
      Q => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q31 => \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q => cpll_reset_i,
      R => '0'
    );
\cpllreset_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => '0',
      Q => \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[31]_srl32_n_1\
    );
\cpllreset_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[63]_srl32_n_1\
    );
\cpllreset_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[63]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[95]_srl32_n_1\
    );
gtpe2_common_i: unisim.vcomponents.GTPE2_COMMON
    generic map(
      BIAS_CFG => X"0000000000050001",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK0_INVERTED => '0',
      IS_GTGREFCLK1_INVERTED => '0',
      IS_PLL0LOCKDETCLK_INVERTED => '0',
      IS_PLL1LOCKDETCLK_INVERTED => '0',
      PLL0_CFG => X"01F03DC",
      PLL0_DMON_CFG => '0',
      PLL0_FBDIV => 4,
      PLL0_FBDIV_45 => 5,
      PLL0_INIT_CFG => X"00001E",
      PLL0_LOCK_CFG => X"1E8",
      PLL0_REFCLK_DIV => 1,
      PLL1_CFG => X"01F03DC",
      PLL1_DMON_CFG => '0',
      PLL1_FBDIV => 1,
      PLL1_FBDIV_45 => 4,
      PLL1_INIT_CFG => X"00001E",
      PLL1_LOCK_CFG => X"1E8",
      PLL1_REFCLK_DIV => 1,
      PLL_CLKOUT_CFG => B"00000000",
      RSVD_ATTR0 => X"0000",
      RSVD_ATTR1 => X"0000",
      SIM_PLL0REFCLK_SEL => B"001",
      SIM_PLL1REFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_VERSION => "2.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      BGRCALOVRDENB => '1',
      DMONITOROUT(7 downto 0) => NLW_gtpe2_common_i_DMONITOROUT_UNCONNECTED(7 downto 0),
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15 downto 0) => NLW_gtpe2_common_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => '0',
      DRPRDY => NLW_gtpe2_common_i_DRPRDY_UNCONNECTED,
      DRPWE => '0',
      GTEASTREFCLK0 => '0',
      GTEASTREFCLK1 => '0',
      GTGREFCLK0 => '0',
      GTGREFCLK1 => '0',
      GTREFCLK0 => gtrefclk_out,
      GTREFCLK1 => '0',
      GTWESTREFCLK0 => '0',
      GTWESTREFCLK1 => '0',
      PLL0FBCLKLOST => NLW_gtpe2_common_i_PLL0FBCLKLOST_UNCONNECTED,
      PLL0LOCK => gt0_pll0lock_out,
      PLL0LOCKDETCLK => independent_clock_bufg,
      PLL0LOCKEN => '1',
      PLL0OUTCLK => gt0_pll0outclk_out,
      PLL0OUTREFCLK => gt0_pll0outrefclk_out,
      PLL0PD => PLL0PD,
      PLL0REFCLKLOST => gt0_pll0refclklost_out,
      PLL0REFCLKSEL(2 downto 0) => B"001",
      PLL0RESET => PLL0RESET,
      PLL1FBCLKLOST => NLW_gtpe2_common_i_PLL1FBCLKLOST_UNCONNECTED,
      PLL1LOCK => NLW_gtpe2_common_i_PLL1LOCK_UNCONNECTED,
      PLL1LOCKDETCLK => '0',
      PLL1LOCKEN => '1',
      PLL1OUTCLK => gt0_pll1outclk_out,
      PLL1OUTREFCLK => gt0_pll1outrefclk_out,
      PLL1PD => '1',
      PLL1REFCLKLOST => NLW_gtpe2_common_i_PLL1REFCLKLOST_UNCONNECTED,
      PLL1REFCLKSEL(2 downto 0) => B"001",
      PLL1RESET => '0',
      PLLRSVD1(15 downto 0) => B"0000000000000000",
      PLLRSVD2(4 downto 0) => B"00000",
      PMARSVD(7 downto 0) => B"00000000",
      PMARSVDOUT(15 downto 0) => NLW_gtpe2_common_i_PMARSVDOUT_UNCONNECTED(15 downto 0),
      RCALENB => '1',
      REFCLKOUTMONITOR0 => NLW_gtpe2_common_i_REFCLKOUTMONITOR0_UNCONNECTED,
      REFCLKOUTMONITOR1 => NLW_gtpe2_common_i_REFCLKOUTMONITOR1_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => enablealign,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg1,
      PRE => enablealign,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg2,
      PRE => enablealign,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg3,
      PRE => enablealign,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg4,
      PRE => enablealign,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_1 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_1 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_2 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_2 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_4 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_4 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_sync_5 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_reset_sync_5 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_reset_sync_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_sync_5 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_reset_wtd_timer is
  signal \counter_stg1[5]_i_1_n_0\ : STD_LOGIC;
  signal counter_stg1_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter_stg2[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_stg30 : STD_LOGIC;
  signal \counter_stg3[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_5_n_0\ : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset0 : STD_LOGIC;
  signal reset_i_2_n_0 : STD_LOGIC;
  signal reset_i_3_n_0 : STD_LOGIC;
  signal reset_i_4_n_0 : STD_LOGIC;
  signal reset_i_5_n_0 : STD_LOGIC;
  signal reset_i_6_n_0 : STD_LOGIC;
  signal reset_i_7_n_0 : STD_LOGIC;
  signal reset_i_8_n_0 : STD_LOGIC;
  signal \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair118";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \counter_stg3[0]_i_5\ : label is "soft_lutpair119";
  attribute ADDER_THRESHOLD of \counter_stg3_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of reset_i_8 : label is "soft_lutpair119";
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      O => plusOp(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      O => plusOp(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_stg1_reg__0\(2),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      O => plusOp(2)
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(3),
      O => plusOp(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(3),
      O => plusOp(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => data_out,
      I1 => reset_i_2_n_0,
      I2 => eqOp,
      O => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(3),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(4),
      O => plusOp(5)
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(0),
      Q => \counter_stg1_reg__0\(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(1),
      Q => \counter_stg1_reg__0\(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(2),
      Q => \counter_stg1_reg__0\(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(3),
      Q => \counter_stg1_reg__0\(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(4),
      Q => \counter_stg1_reg__0\(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(5),
      Q => counter_stg1_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => \counter_stg1_reg__0\(3),
      I2 => \counter_stg1_reg__0\(2),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(0),
      I5 => \counter_stg1_reg__0\(4),
      O => eqOp
    );
\counter_stg2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg2_reg(0),
      O => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_7\,
      Q => counter_stg2_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg2_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg2_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg2_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg2_reg[0]_i_2_n_4\,
      O(2) => \counter_stg2_reg[0]_i_2_n_5\,
      O(1) => \counter_stg2_reg[0]_i_2_n_6\,
      O(0) => \counter_stg2_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg2_reg(3 downto 1),
      S(0) => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_5\,
      Q => counter_stg2_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_4\,
      Q => counter_stg2_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_6\,
      Q => counter_stg2_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_5\,
      Q => counter_stg2_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_4\,
      Q => counter_stg2_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_7\,
      Q => counter_stg2_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg2_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg2_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[4]_i_1_n_4\,
      O(2) => \counter_stg2_reg[4]_i_1_n_5\,
      O(1) => \counter_stg2_reg[4]_i_1_n_6\,
      O(0) => \counter_stg2_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(7 downto 4)
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_6\,
      Q => counter_stg2_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_5\,
      Q => counter_stg2_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_4\,
      Q => counter_stg2_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_7\,
      Q => counter_stg2_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg2_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[8]_i_1_n_4\,
      O(2) => \counter_stg2_reg[8]_i_1_n_5\,
      O(1) => \counter_stg2_reg[8]_i_1_n_6\,
      O(0) => \counter_stg2_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(11 downto 8)
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_6\,
      Q => counter_stg2_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => eqOp,
      I1 => \counter_stg3[0]_i_3_n_0\,
      I2 => counter_stg2_reg(3),
      I3 => counter_stg2_reg(8),
      I4 => counter_stg2_reg(11),
      I5 => counter_stg2_reg(4),
      O => counter_stg30
    );
\counter_stg3[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => counter_stg2_reg(10),
      I1 => counter_stg2_reg(5),
      I2 => counter_stg2_reg(2),
      I3 => counter_stg2_reg(6),
      I4 => \counter_stg3[0]_i_5_n_0\,
      O => \counter_stg3[0]_i_3_n_0\
    );
\counter_stg3[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg3_reg(0),
      O => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg2_reg(7),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(0),
      O => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_7\,
      Q => counter_stg3_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg3_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg3_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg3_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg3_reg[0]_i_2_n_4\,
      O(2) => \counter_stg3_reg[0]_i_2_n_5\,
      O(1) => \counter_stg3_reg[0]_i_2_n_6\,
      O(0) => \counter_stg3_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg3_reg(3 downto 1),
      S(0) => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_5\,
      Q => counter_stg3_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_4\,
      Q => counter_stg3_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_6\,
      Q => counter_stg3_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_5\,
      Q => counter_stg3_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_4\,
      Q => counter_stg3_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_7\,
      Q => counter_stg3_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg3_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg3_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[4]_i_1_n_4\,
      O(2) => \counter_stg3_reg[4]_i_1_n_5\,
      O(1) => \counter_stg3_reg[4]_i_1_n_6\,
      O(0) => \counter_stg3_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(7 downto 4)
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_6\,
      Q => counter_stg3_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_5\,
      Q => counter_stg3_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_4\,
      Q => counter_stg3_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_7\,
      Q => counter_stg3_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg3_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[8]_i_1_n_4\,
      O(2) => \counter_stg3_reg[8]_i_1_n_5\,
      O(1) => \counter_stg3_reg[8]_i_1_n_6\,
      O(0) => \counter_stg3_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(11 downto 8)
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_6\,
      Q => counter_stg3_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_stg1_reg(5),
      I1 => reset_i_2_n_0,
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => reset_i_3_n_0,
      I1 => reset_i_4_n_0,
      I2 => reset_i_5_n_0,
      I3 => reset_i_6_n_0,
      I4 => reset_i_7_n_0,
      I5 => reset_i_8_n_0,
      O => reset_i_2_n_0
    );
reset_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => counter_stg3_reg(9),
      I1 => counter_stg3_reg(8),
      I2 => counter_stg3_reg(11),
      I3 => counter_stg3_reg(1),
      O => reset_i_3_n_0
    );
reset_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter_stg3_reg(6),
      I1 => counter_stg2_reg(10),
      I2 => counter_stg3_reg(4),
      I3 => counter_stg3_reg(0),
      O => reset_i_4_n_0
    );
reset_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter_stg2_reg(3),
      I1 => counter_stg2_reg(8),
      I2 => counter_stg2_reg(11),
      I3 => counter_stg2_reg(4),
      O => reset_i_5_n_0
    );
reset_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_stg2_reg(7),
      I1 => counter_stg3_reg(10),
      I2 => counter_stg2_reg(2),
      I3 => counter_stg3_reg(3),
      O => reset_i_6_n_0
    );
reset_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter_stg3_reg(7),
      I1 => counter_stg2_reg(5),
      I2 => counter_stg3_reg(5),
      I3 => counter_stg3_reg(2),
      O => reset_i_7_n_0
    );
reset_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg2_reg(6),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(0),
      O => reset_i_8_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset0,
      Q => reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_resets is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_resets;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_resets is
  signal pma_reset_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of pma_reset_pipe : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \pma_reset_pipe_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[1]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[2]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[3]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[3]\ : label is "yes";
begin
  \out\(0) <= pma_reset_pipe(3);
\pma_reset_pipe_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => pma_reset_pipe(0)
    );
\pma_reset_pipe_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(0),
      PRE => reset,
      Q => pma_reset_pipe(1)
    );
\pma_reset_pipe_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(1),
      PRE => reset,
      Q => pma_reset_pipe(2)
    );
\pma_reset_pipe_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(2),
      PRE => reset,
      Q => pma_reset_pipe(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_0 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_0 is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
resetdone_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out,
      I1 => resetdone_0,
      O => resetdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_10 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_10 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_11 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_11 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_12 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_12 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_12;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_12 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_13 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_13;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_13 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_14 is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out : out STD_LOGIC;
    data_sync_reg6_0 : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    time_out_wait_bypass_s3 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_1\ : in STD_LOGIC;
    rx_fsm_reset_done_int_reg : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_0 : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_1 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_14 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_14;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_14 is
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA8A8"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I3 => \FSM_sequential_rx_state_reg[0]\,
      I4 => \FSM_sequential_rx_state_reg[0]_0\,
      O => D(0)
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03443377"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \FSM_sequential_rx_state_reg[0]_0\,
      O => D(1)
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFFFFFDDDF0000"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => \FSM_sequential_rx_state_reg[3]_0\,
      I2 => Q(0),
      I3 => time_out_wait_bypass_s3,
      I4 => Q(3),
      I5 => \FSM_sequential_rx_state_reg[3]_1\,
      O => D(2)
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30E0"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => \^data_out\,
      I2 => Q(3),
      I3 => Q(1),
      O => data_sync_reg6_0
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \^data_out\,
      I1 => rx_fsm_reset_done_int_reg_1,
      I2 => rx_fsm_reset_done_int_reg_0,
      I3 => Q(0),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_fsm_reset_done_int,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => Q(3),
      I3 => Q(2),
      I4 => data_in,
      O => \FSM_sequential_rx_state_reg[3]\
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => rx_fsm_reset_done_int_reg,
      I3 => rx_fsm_reset_done_int_reg_0,
      I4 => \^data_out\,
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CFCC3B3B0000"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg,
      I1 => \^data_out\,
      I2 => rx_fsm_reset_done_int_reg_0,
      I3 => rx_fsm_reset_done_int_reg_1,
      I4 => Q(1),
      I5 => Q(0),
      O => rx_fsm_reset_done_int_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_15 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_15 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_15;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_15 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_16 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    data_out : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC;
    reset_time_out_reg_3 : in STD_LOGIC;
    reset_time_out_reg_4 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_16 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_16;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_16 is
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01550101"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]\,
      I1 => \FSM_sequential_rx_state_reg[0]_0\(0),
      I2 => Q(0),
      I3 => \FSM_sequential_rx_state[3]_i_4_n_0\,
      I4 => \FSM_sequential_rx_state_reg[0]_1\,
      I5 => \FSM_sequential_rx_state_reg[0]_2\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00000000"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]_3\,
      I1 => pll0lock_sync,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FFFFFF100000"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => reset_time_out_reg_1,
      I2 => reset_time_out_reg_2,
      I3 => reset_time_out_i_5_n_0,
      I4 => reset_time_out_reg_3,
      I5 => reset_time_out_reg_4,
      O => reset_time_out_reg
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10DD10DDDC11DCDD"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => pll0lock_sync,
      I3 => Q(1),
      I4 => Q(0),
      I5 => data_out,
      O => reset_time_out_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_17 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_17 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_17;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_17 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_18 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_18;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_18 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_19 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_19;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_19 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_3 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_3 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => status_vector(0),
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_6 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_6 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_wait_done_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mmcm_lock_reclocked : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_4\ : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_7 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_7 is
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151FFFF01510000"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_sequential_tx_state[3]_i_3_n_0\,
      I2 => Q(1),
      I3 => \FSM_sequential_tx_state[3]_i_4_n_0\,
      I4 => Q(0),
      I5 => \FSM_sequential_tx_state_reg[0]\,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F2F2F2F"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_2\,
      I1 => mmcm_lock_reclocked,
      I2 => Q(2),
      I3 => pll0lock_sync,
      I4 => \FSM_sequential_tx_state_reg[0]_3\,
      I5 => \FSM_sequential_tx_state_reg[0]_4\,
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45004500450045FF"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => \FSM_sequential_tx_state_reg[0]_0\,
      I3 => Q(2),
      I4 => pll0lock_sync,
      I5 => \FSM_sequential_tx_state_reg[0]_1\,
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_pll0lock_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => pll0lock_sync,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(3),
      I2 => reset_time_out_reg_0,
      I3 => reset_time_out_i_3_n_0,
      I4 => reset_time_out_i_4_n_0,
      I5 => reset_time_out,
      O => init_wait_done_reg
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FF0F0404FF0F"
    )
        port map (
      I0 => Q(3),
      I1 => pll0lock_sync,
      I2 => Q(2),
      I3 => mmcm_lock_reclocked,
      I4 => Q(1),
      I5 => txresetdone_s3,
      O => reset_time_out_i_3_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000FCCCE000FCC0E"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      I5 => pll0lock_sync,
      O => reset_time_out_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_8 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_8 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_sync_block_9 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_sync_block_9 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_sync_block_9 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
kYrcO/E+Jhm4R/4R3+CukKYR9M2FIvcsEHYDIEQ941LV/qe3nw66ouV0tjU2K77WxMp0KzE3bUaN
EkHZUhS54Zbapq0AAlHGThTWWu9TToic0Fogfo0uxbTRj/YKvsYbGHXn+38UtVT4gl+Z+q34s2Mx
S+RksJLLbqa/UjuB2IA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
k7VYfhbczr+tglBVnP2dNpzQUg4faERuh35S6DlbOXKmaLBzNWJuLZKd3/iHJso+4/ki/NZUVDCo
PIbVzwxMtfGyW1fMXDvveUi46OnejPwVxk5t1kIbtSbcZCd++dNgqg5UzMEgptRWzheZuzX0GigU
yFrxhwF/EKgqip1pp6C9cstz8ElT8YbfLOW5ZqJRuK3p8wRTUD9tZ+3ZT4AUQNnb5LwhJYd18bKy
gCZ5WG9Mj+aMW9valUSRFjEY4oFOYnca2u9dC1uGlv48Br0t9pUhfrmTbufRCalBxAR594dFK/W+
13kLKPWgZzIiZRLopKxSb3kx8JrEbJXF16BnhQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TxEtvLMShWARGvALMwAihIuShrdtPpwirMDR7BzuLz8WzVhoqvJSM5/nLMHFGqovxD5hXGIA2TAw
UB0YVlq6K3gG1/oM4RpzHTN3yz8Lt5YW3A+UfuxJr1V9UVkS6LmvF75rPoruMKpllkRnQaQkrdOH
79erJYgSSdvNFj79HX4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Jd4QdSkhWhpPJfQcqGINGTBbyQi4fwpgiNWDB3Wd2IjKeric0AmdHU7UViuSzCLh03DSaNG2q/XP
qatCMMw9/14uzhpUJU/1zUWxXlbRxdCkB/LSsYsRRmVRjaX8PHa9/COyOOXOwziBKCZ4EH/zCO32
LML+m8CiAQ/Hl3o7OkbgzReeGFKo2yT0AlTR1mlGeI1ujqvvwRe1Fai0g+TwEJcmsDU1/5bkvxQ8
aV49pZh6N2SUhTCJ+wLBZlcMIljfD3Bu8Sp/4tL/+j+yW2zEEf4Sl33jw0Cb08EifW3RF8BmuSm6
hUeX9HuDvEf347dVCR8t8qRzeC+0nGD4/fB1NQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
nE6k/lSQEQ4OmPB4XqBcP/LpC07K/JJ0IvLqk0FbQzQZjzqT5yDvPsiRjELAcBvPJRahwOqlfyes
JDXxH4G+XSbtKQtE02yLheyEjNesZ0dv/v3vL+wA09O8khSrVyP5ijRndW00Cf5Bf2IpNiaJRcds
F1ushZZu9jXeBItrh4znBf9fOoXggbdnBLyNjuw7bRfvTeY2Xhe1Z7RpJLgPWMz3yKmlUVxO5Zyf
mjNu1+82dGuZ9x/eImCHDzcLcpca/TdMV0iJAkZHrvuhhu0GfQ7zgBbvuyb+I/r0q0vuL52PeEET
HDmGQS2oxiFTbcwiGY3t/ioXPJYkEEqNFUIzSA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
EYYoCPbR+OMFlmBfBNcQ1RKQKD88wkYgxA5pkdacb5EuwAeven6zC8gsLrmbmaf1Y+GE+exjL/E8
csfwUz3cQq4551Y/pgVQB6wc+K/5qus2SV7wqxTpqsWY/Yu+bULiGuBSdS51qWlfxDNujKEBhRPN
GKWkQK8KP7xMHh1W8rO4WL7cLP0qnZ7xSovnz379iAYpAJOGf/f5GjM87wrRCh+60BUmNbENwN6h
Un/7huetrD2tvDcD67Ox5Dkto+nybbrNNH3ry0zh96Cq8sxNBI7cJ/iRp5kCBgqxCxELTa7hlTHW
RWkLjA2W/Y2HjatDbYo5U0A7bO8ORiG66IX0Kg==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
q9bGXHBOyTLb3eTSnDNZfQbfjyoc3yN7NB+1C2N+mReGSJxWRtlWWn5HWbhvjoAJehclGC7OtjK2
ZSTJ0A3pHY3St3rul3liQXKD5kCQ9+vFLUhyKlQc08mhaOXPkXVrLBkSbJoneeg+zcwJuKQzPvv8
Se016G+DYsP9PPIjvWbgYSkDDPBmrvDI1+5mRe5HwZFGFGhAQNqFMnPAskAW1MwhObzaIpkQKTZT
7A6i2BjYT3UzWyOCYK2zgjiB9ZFwChUw4Bwh+H8Xf2j3ysF46VVr3Y/hfiRxPSHR8Jb8iMEkCJjf
nRAfkr8Y2ZxDL10aUR1VFpL5aHsLiRKnNRdZXw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
nsakC0nZIZNi1X6ujQodgmUw2UIdYzuFQ4iAZwA9YfvRrxXUL7ynKQCgPpNVzwJk5S+CJlgNjRvH
avhNsBU4C+cBB3dvqouQ4tOLrtjvGCn/tgPDevuIaG5LBxGdZZ/MOgVEltPHWIYycz6nfuA5/Axp
6IIz71mUhQT3OW6kWYR5cK3zVKmHXkQGZxfNAWG/Pw5DHuc9xxTQpswaIv4ECw8olrxqfoRkzz/n
gmc1riU255Qanc8CpzTXkB0TXLYD8b3W4k0EIAYhAlKk5HVAVS9D3DfcWg27dKxRMm5dVH7ddpvn
9W7az/Gv4/jAcQ/A2wvn+5RGmVdmY2XJTvnb42j3M+6+R6PXkHvxDCRRgj7df9TYddZWyOeT0KQd
DnIaIlkFA345xytHveeTmDy6qVwsD6GrlsYJS9tCsR6FloMwjoQcZKSxBqfWh+rvQ8/8NxsGVy4v
3tFI5PwOhr5e4Nw4hm2q3u3mpmtv9+BzXIuf1HXxWr2eSaeu22WHlCsg

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
WuUgcS5b6yfqTuzjufwmIVC5kWm6y/3mx22Aii+Dgdcnv/uLoI9/njjHdhb7hUlsD3Xs1keDNIwN
3pNTWeUxyZTJzKR7udvlJMLBMym3o/ECBMv+uN4BToB/hl2qqhLvFAO/r5AFOlliZqDwiGcbQvyz
YxE2I3qA+lBeP2iX2/4t2ns07deHzxcGsGDpvkWpwNcM3RmD3m5puzv13u/mWj0iTjzSuDu+lCO3
EIjElwRdbJl/F7N/czlKYgmKd6feg7/nbSKTQgrJk+bEOJwzrhlLGQvovZgtfM2nxWwlvulcT7sS
n2ZxTDzZIZJeakYPGSP3PRWLzaOntLk4/JYNoQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HAfLWwf5IE4nVH0RKu6Ckfcag4YISAB7GxmA74RLd0WtgVtvSg/hiI6xjdDBajL3WlsS8r0EeRuE
7k3XV6Iw18PLWYY7xEqYXN+4UCUMJuuhFnCKbupuHsoPe92DFCS1iQmSCu4KA4if6La2soKs0Eai
lizBuddfJbplTj7Z459Jc2VAD/slvgcakh9coxr57R1xf3xL+SqtbztnNWXTWebaVsMi9o1R8+q2
Bw6o2bthJTK5AjuaNFC1mXchmICuCVK92/JyceC3nXwexvYK1qRmiOyoTPwPOS9/j/gup9+/1Be6
vYxlYOcskfzyxWLNti298ohd6UCc2uC5C4Rl3w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DzCZLHkutR8dxKMJJC1uS/LdG9PoCtj5GsOR4GKxJSZTHbAW3Lwb4zUisDiKbo8nzvAc+Pc3aKIh
FZY+iEihN/UyNBp/ZVBx4xfw4KiNs0WcNidwHxnj/AmT0YahVcv3MBdpFE4TvDgOFqEqCr2KvrS5
K14RY6HsADqifYcgChtDVh4X+2Nen/oSD8dZS1qLOsyQr7ETEhogVmc4Gi3TE4/HYjm8lV5GRuJM
x1+0GPRONu+RFuc2B6sidWODYyJus0b7HVqnBAA8gMcV6twjAADrnyIqZwnPoiUCKAMzsDKVKhW3
GrlmNwP5uDSVq/4QrLJ59GIzFy3EXCfFTYr7nA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 228272)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
  port (
    data_in : out STD_LOGIC;
    gt0_rxuserrdy_t : out STD_LOGIC;
    gt0_gtrxreset_gt : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg6 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_out : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_RX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal \^gt0_rxuserrdy_t\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_4__0_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \init_wait_done_i_1__1_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  signal \reset_time_out_i_4__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_6_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_data_valid_n_4 : STD_LOGIC;
  signal sync_data_valid_n_5 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_0 : STD_LOGIC;
  signal sync_pll0lock_n_1 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_i_4_n_0 : STD_LOGIC;
  signal time_out_100us_i_5_n_0 : STD_LOGIC;
  signal time_out_100us_i_6_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal time_out_2ms_i_3_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_2ms_i_5__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_6_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal \time_out_wait_bypass_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_1\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_2\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_3\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_n_3\ : STD_LOGIC;
  signal time_tlock_max1_carry_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_6_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_7_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_8_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_1 : STD_LOGIC;
  signal time_tlock_max1_carry_n_2 : STD_LOGIC;
  signal time_tlock_max1_carry_n_3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \wait_time_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_time_tlock_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_10\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_8\ : label is "soft_lutpair69";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reset_time_out_i_2__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reset_time_out_i_3__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reset_time_out_i_4__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of reset_time_out_i_6 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of time_out_100us_i_6 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of time_out_1us_i_3 : label is "soft_lutpair78";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of time_tlock_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1__0\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4__0\ : label is "soft_lutpair73";
begin
  data_in <= \^data_in\;
  gt0_rxuserrdy_t <= \^gt0_rxuserrdy_t\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8000AF00"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => time_out_2ms_reg_n_0,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF75FF55"
    )
        port map (
      I0 => rx_state(0),
      I1 => reset_time_out_reg_n_0,
      I2 => time_tlock_max,
      I3 => rx_state(1),
      I4 => rx_state(2),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100005551555"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => time_out_2ms_reg_n_0,
      I5 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1BFF1B1B1B1B1B"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => reset_time_out_reg_n_0,
      I5 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => init_wait_done_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000151"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      I4 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I5 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEFFAEFFFFFF"
    )
        port map (
      I0 => rxresetdone_s3,
      I1 => time_out_2ms_reg_n_0,
      I2 => reset_time_out_reg_n_0,
      I3 => rx_state(1),
      I4 => rx_state(2),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(2),
      I2 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD0000000000000"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(2),
      I3 => rx_state(3),
      I4 => rx_state(0),
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \rx_state__0\(0),
      Q => rx_state(0),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \rx_state__0\(1),
      Q => rx_state(1),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_pll0lock_n_0,
      D => \rx_state__0\(3),
      Q => rx_state(3),
      R => \out\(0)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => \^gt0_rxuserrdy_t\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt0_rxuserrdy_t\,
      R => \out\(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => \out\(0)
    );
gt0_gtrxreset_gt_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTRXRESET,
      I1 => \^data_in\,
      I2 => gt0_gtrxreset_gt_d1_reg,
      O => gt0_gtrxreset_gt
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => GTRXRESET,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => GTRXRESET,
      R => \out\(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__2\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => \p_0_in__2\(2)
    );
\init_wait_count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(2),
      O => \init_wait_count[3]_i_1__1_n_0\
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__2\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_count_reg(4),
      O => \p_0_in__2\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count[6]_i_3__0_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(6),
      I5 => init_wait_count_reg(5),
      O => init_wait_count
    );
\init_wait_count[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => init_wait_count_reg(4),
      I2 => \init_wait_count[6]_i_4__0_n_0\,
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(5),
      O => \p_0_in__2\(6)
    );
\init_wait_count[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      O => \init_wait_count[6]_i_3__0_n_0\
    );
\init_wait_count[6]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => \init_wait_count[6]_i_4__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[3]_i_1__1_n_0\,
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__2\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_done_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__1_n_0\
    );
\init_wait_done_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      I5 => \init_wait_count[6]_i_3__0_n_0\,
      O => init_wait_done
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => \out\(0),
      D => \init_wait_done_i_1__1_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(3),
      O => \p_0_in__3\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__3\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \p_0_in__3\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(5),
      O => \p_0_in__3\(6)
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(5),
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => mmcm_lock_count_reg(5),
      I2 => \mmcm_lock_count[7]_i_4__0_n_0\,
      I3 => mmcm_lock_count_reg(4),
      I4 => mmcm_lock_count_reg(6),
      O => \p_0_in__3\(7)
    );
\mmcm_lock_count[7]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      O => \mmcm_lock_count[7]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I3 => mmcm_lock_count_reg(6),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(1),
      I1 => rxresetdone_s3,
      O => \reset_time_out_i_2__0_n_0\
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      O => \reset_time_out_i_3__0_n_0\
    );
\reset_time_out_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      O => \reset_time_out_i_4__0_n_0\
    );
reset_time_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55227762"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      I2 => reset_time_out_reg_0,
      I3 => rx_state(0),
      I4 => rx_state(1),
      O => reset_time_out_i_6_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_pll0lock_n_1,
      Q => reset_time_out_reg_n_0,
      S => \out\(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => \out\(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_5,
      Q => \^data_in\,
      R => \out\(0)
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE: entity work.gig_ethernet_pcs_pma_0_sync_block_13
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_data_valid: entity work.gig_ethernet_pcs_pma_0_sync_block_14
     port map (
      D(2) => \rx_state__0\(3),
      D(1 downto 0) => \rx_state__0\(1 downto 0),
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[0]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \FSM_sequential_rx_state[1]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[3]\ => sync_data_valid_n_5,
      \FSM_sequential_rx_state_reg[3]_0\ => \FSM_sequential_rx_state[3]_i_8_n_0\,
      \FSM_sequential_rx_state_reg[3]_1\ => \FSM_sequential_rx_state[3]_i_9_n_0\,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_in => \^data_in\,
      data_out => data_valid_sync,
      data_sync_reg1_0 => data_out,
      data_sync_reg6_0 => sync_data_valid_n_4,
      independent_clock_bufg => independent_clock_bufg,
      rx_fsm_reset_done_int_reg => time_out_1us_reg_n_0,
      rx_fsm_reset_done_int_reg_0 => reset_time_out_reg_n_0,
      rx_fsm_reset_done_int_reg_1 => time_out_100us_reg_n_0,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_sync_block_15
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_pll0lock: entity work.gig_ethernet_pcs_pma_0_sync_block_16
     port map (
      E(0) => sync_pll0lock_n_0,
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[3]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\(0) => \wait_time_cnt[6]_i_2__0_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => \FSM_sequential_rx_state[3]_i_5_n_0\,
      \FSM_sequential_rx_state_reg[0]_2\ => sync_data_valid_n_4,
      \FSM_sequential_rx_state_reg[0]_3\ => time_out_2ms_reg_n_0,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_out => data_valid_sync,
      gt0_pll0lock_out => gt0_pll0lock_out,
      independent_clock_bufg => independent_clock_bufg,
      reset_time_out_reg => sync_pll0lock_n_1,
      reset_time_out_reg_0 => \reset_time_out_i_2__0_n_0\,
      reset_time_out_reg_1 => \reset_time_out_i_3__0_n_0\,
      reset_time_out_reg_2 => \reset_time_out_i_4__0_n_0\,
      reset_time_out_reg_3 => reset_time_out_i_6_n_0,
      reset_time_out_reg_4 => reset_time_out_reg_n_0
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_sync_block_17
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      data_sync_reg1_0 => data_sync_reg6
    );
sync_rx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_sync_block_18
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      data_sync_reg6_0 => data_sync_reg6
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_sync_block_19
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
time_out_100us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => time_out_100us_i_2_n_0,
      I1 => time_out_100us_i_3_n_0,
      I2 => time_out_100us_i_4_n_0,
      I3 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(19),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(15),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      I2 => time_out_100us_i_5_n_0,
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(11),
      I5 => time_out_100us_i_6_n_0,
      O => time_out_100us_i_3_n_0
    );
time_out_100us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => time_out_2ms_i_6_n_0,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(5),
      O => time_out_100us_i_4_n_0
    );
time_out_100us_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_out_100us_i_5_n_0
    );
time_out_100us_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => time_out_100us_i_6_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_100us_i_2_n_0,
      I2 => time_out_1us_i_2_n_0,
      I3 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \time_out_2ms_i_4__0_n_0\,
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(10),
      I5 => time_out_1us_i_3_n_0,
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(11),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_2ms_i_3_n_0,
      I2 => \time_out_2ms_i_4__0_n_0\,
      I3 => \time_out_2ms_i_5__0_n_0\,
      I4 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => time_out_2ms_i_6_n_0,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(5),
      I5 => time_out_counter_reg(6),
      O => time_out_2ms_i_2_n_0
    );
time_out_2ms_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(18),
      O => time_out_2ms_i_3_n_0
    );
\time_out_2ms_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(3),
      O => \time_out_2ms_i_4__0_n_0\
    );
\time_out_2ms_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(12),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(16),
      I5 => time_out_counter_reg(19),
      O => \time_out_2ms_i_5__0_n_0\
    );
time_out_2ms_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_out_2ms_i_6_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_2ms_i_3_n_0,
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(5),
      I5 => \time_out_2ms_i_5__0_n_0\,
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \time_out_counter_reg[16]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[16]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[16]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[16]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(19 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_4\,
      Q => time_out_counter_reg(19),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \time_out_wait_bypass_i_2__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => time_out_wait_bypass_i_1_n_0
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \time_out_wait_bypass_i_3__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(0),
      I4 => \time_out_wait_bypass_i_4__0_n_0\,
      O => \time_out_wait_bypass_i_2__0_n_0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(2),
      O => \time_out_wait_bypass_i_3__0_n_0\
    );
\time_out_wait_bypass_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(6),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(8),
      O => \time_out_wait_bypass_i_4__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_tlock_max1_carry_n_0,
      CO(2) => time_tlock_max1_carry_n_1,
      CO(1) => time_tlock_max1_carry_n_2,
      CO(0) => time_tlock_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => time_tlock_max1_carry_i_1_n_0,
      DI(2) => time_tlock_max1_carry_i_2_n_0,
      DI(1) => time_tlock_max1_carry_i_3_n_0,
      DI(0) => time_tlock_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_time_tlock_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => time_tlock_max1_carry_i_5_n_0,
      S(2) => time_tlock_max1_carry_i_6_n_0,
      S(1) => time_tlock_max1_carry_i_7_n_0,
      S(0) => time_tlock_max1_carry_i_8_n_0
    );
\time_tlock_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_tlock_max1_carry_n_0,
      CO(3) => \time_tlock_max1_carry__0_n_0\,
      CO(2) => \time_tlock_max1_carry__0_n_1\,
      CO(1) => \time_tlock_max1_carry__0_n_2\,
      CO(0) => \time_tlock_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => time_out_counter_reg(15),
      DI(2) => \time_tlock_max1_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => \time_tlock_max1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \time_tlock_max1_carry__0_i_3_n_0\,
      S(2) => \time_tlock_max1_carry__0_i_4_n_0\,
      S(1) => \time_tlock_max1_carry__0_i_5_n_0\,
      S(0) => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => \time_tlock_max1_carry__0_i_1_n_0\
    );
\time_tlock_max1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_tlock_max1_carry__0_i_2_n_0\
    );
\time_tlock_max1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => \time_tlock_max1_carry__0_i_3_n_0\
    );
\time_tlock_max1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => \time_tlock_max1_carry__0_i_4_n_0\
    );
\time_tlock_max1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(10),
      O => \time_tlock_max1_carry__0_i_5_n_0\
    );
\time_tlock_max1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_tlock_max1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => time_tlock_max1,
      CO(0) => \time_tlock_max1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \time_tlock_max1_carry__1_i_1_n_0\,
      DI(0) => \time_tlock_max1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \time_tlock_max1_carry__1_i_3_n_0\,
      S(0) => \time_tlock_max1_carry__1_i_4_n_0\
    );
\time_tlock_max1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(19),
      I1 => time_out_counter_reg(18),
      O => \time_tlock_max1_carry__1_i_1_n_0\
    );
\time_tlock_max1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => \time_tlock_max1_carry__1_i_2_n_0\
    );
\time_tlock_max1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(19),
      O => \time_tlock_max1_carry__1_i_3_n_0\
    );
\time_tlock_max1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_tlock_max1_carry__1_i_4_n_0\
    );
time_tlock_max1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_tlock_max1_carry_i_1_n_0
    );
time_tlock_max1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => time_tlock_max1_carry_i_2_n_0
    );
time_tlock_max1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => time_tlock_max1_carry_i_3_n_0
    );
time_tlock_max1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_tlock_max1_carry_i_4_n_0
    );
time_tlock_max1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => time_tlock_max1_carry_i_5_n_0
    );
time_tlock_max1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      O => time_tlock_max1_carry_i_6_n_0
    );
time_tlock_max1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_tlock_max1_carry_i_7_n_0
    );
time_tlock_max1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_tlock_max1_carry_i_8_n_0
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => time_tlock_max1,
      I2 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_out_wait_bypass_i_2__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[1]_i_1__0_n_0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt0__0\(2)
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt0__0\(3)
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(4)
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(2),
      I5 => wait_time_cnt_reg(3),
      O => \wait_time_cnt0__0\(5)
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(1),
      O => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4__0_n_0\,
      O => \wait_time_cnt[6]_i_2__0_n_0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4__0_n_0\,
      O => \wait_time_cnt0__0\(6)
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[6]_i_4__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(2),
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(3),
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(4),
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(5),
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(6),
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  port (
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg_0 : out STD_LOGIC;
    data_in : out STD_LOGIC;
    gt0_txuserrdy_t : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_sync_reg1_1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_TX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal GTTXRESET : STD_LOGIC;
  signal MMCM_RESET_i_1_n_0 : STD_LOGIC;
  signal PLL0_RESET0 : STD_LOGIC;
  signal PLL0_RESET_i_1_n_0 : STD_LOGIC;
  signal \^pll0_reset_reg_0\ : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal \^gt0_txuserrdy_t\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_4_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_4_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal mmcm_lock_reclocked_i_2_n_0 : STD_LOGIC;
  signal \^mmcm_reset\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal refclk_stable_count : STD_LOGIC;
  signal \refclk_stable_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_9_n_0\ : STD_LOGIC;
  signal refclk_stable_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \refclk_stable_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal refclk_stable_i_1_n_0 : STD_LOGIC;
  signal refclk_stable_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_PLL0LOCK_n_0 : STD_LOGIC;
  signal sync_PLL0LOCK_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_4_n_0 : STD_LOGIC;
  signal time_out_2ms_i_5_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_i_4_n_0 : STD_LOGIC;
  signal time_out_500us_i_5_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_2_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_3_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_4_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_5_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wait_time_cnt0_0 : STD_LOGIC;
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_6\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_7\ : label is "soft_lutpair90";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of gttxreset_i_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4\ : label is "soft_lutpair87";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of reset_time_out_i_2 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \time_out_2ms_i_3__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of time_out_500us_i_3 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of time_out_500us_i_5 : label is "soft_lutpair89";
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_2 : label is "soft_lutpair93";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4\ : label is "soft_lutpair86";
begin
  PLL0_RESET_reg_0 <= \^pll0_reset_reg_0\;
  data_in <= \^data_in\;
  gt0_txuserrdy_t <= \^gt0_txuserrdy_t\;
  mmcm_reset <= \^mmcm_reset\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55400000FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => tx_state(1),
      I2 => time_out_2ms_reg_n_0,
      I3 => tx_state(2),
      I4 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I5 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0D00"
    )
        port map (
      I0 => tx_state(2),
      I1 => \FSM_sequential_tx_state[1]_i_2_n_0\,
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => tx_state(1),
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      O => \FSM_sequential_tx_state[1]_i_2_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0414040455555555"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(1),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBBFBB"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => reset_time_out,
      I3 => time_tlock_max_reg_n_0,
      I4 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C50"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      O => \tx_state__0\(3)
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040404040404FFF0"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      I2 => tx_state(3),
      I3 => init_wait_done_reg_n_0,
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(0),
      I4 => wait_time_cnt_reg(4),
      I5 => wait_time_cnt_reg(5),
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(1),
      Q => tx_state(1),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_PLL0LOCK_n_0,
      D => \tx_state__0\(3),
      Q => tx_state(3),
      R => \out\(0)
    );
MMCM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(1),
      I4 => \^mmcm_reset\,
      O => MMCM_RESET_i_1_n_0
    );
MMCM_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => MMCM_RESET_i_1_n_0,
      Q => \^mmcm_reset\,
      R => \out\(0)
    );
PLL0_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => PLL0_RESET0,
      I1 => tx_state(1),
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => tx_state(2),
      I5 => \^pll0_reset_reg_0\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => PLL0_RESET_i_1_n_0,
      Q => \^pll0_reset_reg_0\,
      R => \out\(0)
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt0_txuserrdy_t\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt0_txuserrdy_t\,
      R => \out\(0)
    );
gtpe2_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTTXRESET,
      I1 => \^data_in\,
      I2 => gtpe2_i,
      O => gt0_gttxreset_in0_out
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(2),
      I2 => tx_state(1),
      I3 => tx_state(3),
      I4 => GTTXRESET,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => GTTXRESET,
      R => \out\(0)
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__0\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      O => \p_0_in__0\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(2),
      O => \init_wait_count[3]_i_1__0_n_0\
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(4),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(3),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(3),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(2),
      I5 => init_wait_count_reg(4),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \init_wait_count[6]_i_3_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(6),
      I5 => init_wait_count_reg(5),
      O => init_wait_count
    );
\init_wait_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => init_wait_count_reg(6),
      I1 => init_wait_count_reg(4),
      I2 => \init_wait_count[6]_i_4_n_0\,
      I3 => init_wait_count_reg(3),
      I4 => init_wait_count_reg(5),
      O => \p_0_in__0\(6)
    );
\init_wait_count[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      O => \init_wait_count[6]_i_3_n_0\
    );
\init_wait_count[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => \init_wait_count[6]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[0]_i_1_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \init_wait_count[3]_i_1__0_n_0\,
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => init_wait_count,
      CLR => \out\(0),
      D => \p_0_in__0\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => init_wait_done,
      I1 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
init_wait_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => init_wait_count_reg(5),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      I5 => \init_wait_count[6]_i_3_n_0\,
      O => init_wait_done
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => \out\(0),
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(3),
      O => \p_0_in__1\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(3),
      O => \p_0_in__1\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => \p_0_in__1\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(5),
      O => \p_0_in__1\(6)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_count_reg(4),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(5),
      I4 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => mmcm_lock_count_reg(7),
      I1 => mmcm_lock_count_reg(5),
      I2 => \mmcm_lock_count[7]_i_4_n_0\,
      I3 => mmcm_lock_count_reg(4),
      I4 => mmcm_lock_count_reg(6),
      O => \p_0_in__1\(7)
    );
\mmcm_lock_count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(0),
      O => \mmcm_lock_count[7]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(3),
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(6),
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => mmcm_lock_reclocked_i_2_n_0,
      I3 => mmcm_lock_count_reg(6),
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(5),
      I1 => mmcm_lock_count_reg(3),
      I2 => mmcm_lock_count_reg(2),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(0),
      I5 => mmcm_lock_count_reg(4),
      O => mmcm_lock_reclocked_i_2_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3F00000020"
    )
        port map (
      I0 => PLL0_RESET0,
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => tx_state(2),
      I5 => pll_reset_asserted_reg_n_0,
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => refclk_stable_reg_n_0,
      I1 => pll_reset_asserted_reg_n_0,
      I2 => gt0_pll0refclklost_out,
      O => PLL0_RESET0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => \out\(0)
    );
\refclk_stable_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_3_n_0\,
      I1 => \refclk_stable_count[0]_i_4_n_0\,
      I2 => \refclk_stable_count[0]_i_5_n_0\,
      I3 => \refclk_stable_count[0]_i_6_n_0\,
      O => refclk_stable_count
    );
\refclk_stable_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(28),
      I1 => refclk_stable_count_reg(21),
      I2 => refclk_stable_count_reg(23),
      I3 => refclk_stable_count_reg(25),
      O => \refclk_stable_count[0]_i_10_n_0\
    );
\refclk_stable_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => refclk_stable_count_reg(26),
      I1 => refclk_stable_count_reg(11),
      I2 => refclk_stable_count_reg(13),
      I3 => refclk_stable_count_reg(20),
      O => \refclk_stable_count[0]_i_11_n_0\
    );
\refclk_stable_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => refclk_stable_count_reg(18),
      I1 => refclk_stable_count_reg(6),
      I2 => refclk_stable_count_reg(22),
      I3 => refclk_stable_count_reg(29),
      I4 => \refclk_stable_count[0]_i_8_n_0\,
      O => \refclk_stable_count[0]_i_3_n_0\
    );
\refclk_stable_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      I1 => refclk_stable_count_reg(14),
      I2 => refclk_stable_count_reg(31),
      I3 => refclk_stable_count_reg(8),
      I4 => \refclk_stable_count[0]_i_9_n_0\,
      O => \refclk_stable_count[0]_i_4_n_0\
    );
\refclk_stable_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => refclk_stable_count_reg(17),
      I1 => refclk_stable_count_reg(12),
      I2 => refclk_stable_count_reg(19),
      I3 => refclk_stable_count_reg(16),
      I4 => \refclk_stable_count[0]_i_10_n_0\,
      O => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => refclk_stable_count_reg(1),
      I1 => refclk_stable_count_reg(7),
      I2 => refclk_stable_count_reg(30),
      I3 => refclk_stable_count_reg(9),
      I4 => \refclk_stable_count[0]_i_11_n_0\,
      O => \refclk_stable_count[0]_i_6_n_0\
    );
\refclk_stable_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      O => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => refclk_stable_count_reg(10),
      I1 => refclk_stable_count_reg(27),
      I2 => refclk_stable_count_reg(3),
      I3 => refclk_stable_count_reg(2),
      O => \refclk_stable_count[0]_i_8_n_0\
    );
\refclk_stable_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(4),
      I1 => refclk_stable_count_reg(24),
      I2 => refclk_stable_count_reg(15),
      I3 => refclk_stable_count_reg(5),
      O => \refclk_stable_count[0]_i_9_n_0\
    );
\refclk_stable_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_7\,
      Q => refclk_stable_count_reg(0),
      R => '0'
    );
\refclk_stable_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(2) => \refclk_stable_count_reg[0]_i_2_n_1\,
      CO(1) => \refclk_stable_count_reg[0]_i_2_n_2\,
      CO(0) => \refclk_stable_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refclk_stable_count_reg[0]_i_2_n_4\,
      O(2) => \refclk_stable_count_reg[0]_i_2_n_5\,
      O(1) => \refclk_stable_count_reg[0]_i_2_n_6\,
      O(0) => \refclk_stable_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => refclk_stable_count_reg(3 downto 1),
      S(0) => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_5\,
      Q => refclk_stable_count_reg(10),
      R => '0'
    );
\refclk_stable_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_4\,
      Q => refclk_stable_count_reg(11),
      R => '0'
    );
\refclk_stable_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_7\,
      Q => refclk_stable_count_reg(12),
      R => '0'
    );
\refclk_stable_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[12]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[12]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[12]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[12]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[12]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(15 downto 12)
    );
\refclk_stable_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_6\,
      Q => refclk_stable_count_reg(13),
      R => '0'
    );
\refclk_stable_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_5\,
      Q => refclk_stable_count_reg(14),
      R => '0'
    );
\refclk_stable_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_4\,
      Q => refclk_stable_count_reg(15),
      R => '0'
    );
\refclk_stable_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_7\,
      Q => refclk_stable_count_reg(16),
      R => '0'
    );
\refclk_stable_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[16]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[16]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[16]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[16]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[16]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(19 downto 16)
    );
\refclk_stable_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_6\,
      Q => refclk_stable_count_reg(17),
      R => '0'
    );
\refclk_stable_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_5\,
      Q => refclk_stable_count_reg(18),
      R => '0'
    );
\refclk_stable_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_4\,
      Q => refclk_stable_count_reg(19),
      R => '0'
    );
\refclk_stable_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_6\,
      Q => refclk_stable_count_reg(1),
      R => '0'
    );
\refclk_stable_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_7\,
      Q => refclk_stable_count_reg(20),
      R => '0'
    );
\refclk_stable_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[20]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[20]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[20]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[20]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[20]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(23 downto 20)
    );
\refclk_stable_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_6\,
      Q => refclk_stable_count_reg(21),
      R => '0'
    );
\refclk_stable_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_5\,
      Q => refclk_stable_count_reg(22),
      R => '0'
    );
\refclk_stable_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_4\,
      Q => refclk_stable_count_reg(23),
      R => '0'
    );
\refclk_stable_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_7\,
      Q => refclk_stable_count_reg(24),
      R => '0'
    );
\refclk_stable_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[24]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[24]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[24]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[24]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[24]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(27 downto 24)
    );
\refclk_stable_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_6\,
      Q => refclk_stable_count_reg(25),
      R => '0'
    );
\refclk_stable_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_5\,
      Q => refclk_stable_count_reg(26),
      R => '0'
    );
\refclk_stable_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_4\,
      Q => refclk_stable_count_reg(27),
      R => '0'
    );
\refclk_stable_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_7\,
      Q => refclk_stable_count_reg(28),
      R => '0'
    );
\refclk_stable_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refclk_stable_count_reg[28]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[28]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[28]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[28]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[28]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(31 downto 28)
    );
\refclk_stable_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_6\,
      Q => refclk_stable_count_reg(29),
      R => '0'
    );
\refclk_stable_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_5\,
      Q => refclk_stable_count_reg(2),
      R => '0'
    );
\refclk_stable_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_5\,
      Q => refclk_stable_count_reg(30),
      R => '0'
    );
\refclk_stable_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_4\,
      Q => refclk_stable_count_reg(31),
      R => '0'
    );
\refclk_stable_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_4\,
      Q => refclk_stable_count_reg(3),
      R => '0'
    );
\refclk_stable_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_7\,
      Q => refclk_stable_count_reg(4),
      R => '0'
    );
\refclk_stable_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(3) => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[4]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[4]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[4]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[4]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[4]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(7 downto 4)
    );
\refclk_stable_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_6\,
      Q => refclk_stable_count_reg(5),
      R => '0'
    );
\refclk_stable_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_5\,
      Q => refclk_stable_count_reg(6),
      R => '0'
    );
\refclk_stable_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_4\,
      Q => refclk_stable_count_reg(7),
      R => '0'
    );
\refclk_stable_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_7\,
      Q => refclk_stable_count_reg(8),
      R => '0'
    );
\refclk_stable_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[8]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[8]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[8]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[8]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[8]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(11 downto 8)
    );
\refclk_stable_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_6\,
      Q => refclk_stable_count_reg(9),
      R => '0'
    );
refclk_stable_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_6_n_0\,
      I1 => \refclk_stable_count[0]_i_5_n_0\,
      I2 => \refclk_stable_count[0]_i_4_n_0\,
      I3 => \refclk_stable_count[0]_i_3_n_0\,
      O => refclk_stable_i_1_n_0
    );
refclk_stable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => refclk_stable_i_1_n_0,
      Q => refclk_stable_reg_n_0,
      R => '0'
    );
reset_time_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      O => reset_time_out_i_2_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_PLL0LOCK_n_1,
      Q => reset_time_out,
      R => \out\(0)
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => run_phase_alignment_int_reg_n_0,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int_reg_n_0,
      R => \out\(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_PLL0LOCK: entity work.gig_ethernet_pcs_pma_0_sync_block_7
     port map (
      E(0) => sync_PLL0LOCK_n_0,
      \FSM_sequential_tx_state_reg[0]\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      \FSM_sequential_tx_state_reg[0]_0\ => time_out_500us_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_1\ => time_out_2ms_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_2\ => \FSM_sequential_tx_state[3]_i_7_n_0\,
      \FSM_sequential_tx_state_reg[0]_3\ => refclk_stable_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_4\ => pll_reset_asserted_reg_n_0,
      Q(3 downto 0) => tx_state(3 downto 0),
      gt0_pll0lock_out => gt0_pll0lock_out,
      independent_clock_bufg => independent_clock_bufg,
      init_wait_done_reg => sync_PLL0LOCK_n_1,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => init_wait_done_reg_n_0,
      reset_time_out_reg_0 => reset_time_out_i_2_n_0,
      txresetdone_s3 => txresetdone_s3
    );
sync_TXRESETDONE: entity work.gig_ethernet_pcs_pma_0_sync_block_8
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_sync_block_9
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_sync_block_10
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      data_sync_reg6_0 => data_sync_reg1
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_sync_block_11
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_sync_block_12
     port map (
      data_in => \^data_in\,
      data_out => tx_fsm_reset_done_int_s2,
      data_sync_reg1_0 => data_sync_reg1
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms,
      I2 => reset_time_out,
      O => time_out_2ms_i_1_n_0
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => time_out_500us_i_3_n_0,
      I1 => \time_out_2ms_i_3__0_n_0\,
      I2 => time_out_2ms_i_4_n_0,
      I3 => time_out_2ms_i_5_n_0,
      I4 => time_out_500us_i_4_n_0,
      O => time_out_2ms
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      O => \time_out_2ms_i_3__0_n_0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(0),
      O => time_out_2ms_i_4_n_0
    );
time_out_2ms_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(18),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(17),
      O => time_out_2ms_i_5_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAABA"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_500us_i_3_n_0,
      I3 => time_tlock_max_i_5_n_0,
      I4 => time_out_500us_i_4_n_0,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(15),
      I5 => time_out_500us_i_5_n_0,
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(14),
      O => time_out_500us_i_3_n_0
    );
time_out_500us_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(14),
      O => time_out_500us_i_4_n_0
    );
time_out_500us_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(10),
      O => time_out_500us_i_5_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_2ms,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => time_out_wait_bypass_i_2_n_0,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => time_out_wait_bypass_i_3_n_0,
      I1 => time_out_wait_bypass_i_4_n_0,
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(13),
      I4 => wait_bypass_count_reg(11),
      I5 => time_out_wait_bypass_i_5_n_0,
      O => time_out_wait_bypass_i_2_n_0
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      I1 => wait_bypass_count_reg(9),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(10),
      O => time_out_wait_bypass_i_3_n_0
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(0),
      O => time_out_wait_bypass_i_4_n_0
    );
time_out_wait_bypass_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(2),
      I5 => wait_bypass_count_reg(3),
      O => time_out_wait_bypass_i_5_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_tlock_max_i_3_n_0,
      I3 => time_tlock_max_i_4_n_0,
      I4 => time_tlock_max_i_5_n_0,
      I5 => reset_time_out,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(12),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(18),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(15),
      I5 => time_out_counter_reg(16),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(0),
      I4 => time_out_counter_reg(2),
      I5 => time_out_counter_reg(1),
      O => time_tlock_max_i_5_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^data_in\,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => \^data_in\,
      R => \out\(0)
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_wait_bypass_i_2_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => wait_time_cnt0(2)
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => wait_time_cnt0(3)
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(4)
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(2),
      I5 => wait_time_cnt_reg(3),
      O => wait_time_cnt0(5)
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      O => wait_time_cnt0_0
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4_n_0\,
      O => sel
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(4),
      I3 => \wait_time_cnt[6]_i_4_n_0\,
      O => wait_time_cnt0(6)
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(0),
      Q => wait_time_cnt_reg(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => wait_time_cnt_reg(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(2),
      Q => wait_time_cnt_reg(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(3),
      Q => wait_time_cnt_reg(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(4),
      Q => wait_time_cnt_reg(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(5),
      Q => wait_time_cnt_reg(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(6),
      Q => wait_time_cnt_reg(6),
      S => wait_time_cnt0_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  port (
    GTRXRESET : out STD_LOGIC;
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC;
    DRPDI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[7]_0\ : out STD_LOGIC;
    DRPADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \original_rd_data_reg[0]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal drp_op_done : STD_LOGIC;
  signal drp_op_done_o_i_1_n_0 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal flag_reg_n_0 : STD_LOGIC;
  signal \gtrxreset_i__0\ : STD_LOGIC;
  signal gtrxreset_in_sync : STD_LOGIC;
  signal gtrxreset_s : STD_LOGIC;
  signal gtrxreset_ss : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal next_rd_data : STD_LOGIC;
  signal original_rd_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal original_rd_data0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal \rd_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_reg_n_0_[11]\ : STD_LOGIC;
  signal rst_sync : STD_LOGIC;
  signal rxpmaresetdone_s : STD_LOGIC;
  signal rxpmaresetdone_ss : STD_LOGIC;
  signal rxpmaresetdone_sss : STD_LOGIC;
  signal rxpmaresetdone_sync : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair117";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute SOFT_HLUTNM of drp_op_done_o_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of gtpe2_i_i_1 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of gtpe2_i_i_10 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_11 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_12 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of gtpe2_i_i_13 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of gtpe2_i_i_14 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of gtpe2_i_i_15 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of gtpe2_i_i_16 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of gtpe2_i_i_17 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of gtpe2_i_i_18 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of gtpe2_i_i_19 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of gtpe2_i_i_2 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of gtpe2_i_i_4 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of gtpe2_i_i_5 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_6 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_7 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of gtpe2_i_i_8 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of gtpe2_i_i_9 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rd_data[10]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[11]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[13]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[14]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rd_data[15]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rd_data[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rd_data[9]_i_1\ : label is "soft_lutpair110";
begin
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => p_2_in,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => flag,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \original_rd_data_reg[0]_0\,
      I1 => flag,
      I2 => gtrxreset_ss,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_1_in,
      I1 => rxpmaresetdone_ss,
      I2 => rxpmaresetdone_sss,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => rxpmaresetdone_sss,
      I1 => rxpmaresetdone_ss,
      I2 => p_1_in,
      I3 => \original_rd_data_reg[0]_0\,
      I4 => p_3_in,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_3_in,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => gtrxreset_ss,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => flag
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      PRE => rst_sync,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => p_2_in
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => p_1_in
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => p_3_in
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => p_0_in
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
drp_op_done_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => flag,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => drp_op_done,
      O => drp_op_done_o_i_1_n_0
    );
drp_op_done_o_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => gtrxreset_ss,
      D => drp_op_done_o_i_1_n_0,
      Q => drp_op_done
    );
flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => flag,
      I1 => flag_reg_n_0,
      I2 => p_2_in,
      I3 => p_1_in,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => p_3_in,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag_reg_n_0,
      R => '0'
    );
gtpe2_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => drp_op_done,
      O => \FSM_onehot_state_reg[7]_0\
    );
gtpe2_i_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(9),
      I3 => drp_op_done,
      O => DRPDI(9)
    );
gtpe2_i_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(8),
      I3 => drp_op_done,
      O => DRPDI(8)
    );
gtpe2_i_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(7),
      I3 => drp_op_done,
      O => DRPDI(7)
    );
gtpe2_i_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(6),
      I3 => drp_op_done,
      O => DRPDI(6)
    );
gtpe2_i_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(5),
      I3 => drp_op_done,
      O => DRPDI(5)
    );
gtpe2_i_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(4),
      I3 => drp_op_done,
      O => DRPDI(4)
    );
gtpe2_i_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(3),
      I3 => drp_op_done,
      O => DRPDI(3)
    );
gtpe2_i_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(2),
      I3 => drp_op_done,
      O => DRPDI(2)
    );
gtpe2_i_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(1),
      I3 => drp_op_done,
      O => DRPDI(1)
    );
gtpe2_i_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(0),
      I3 => drp_op_done,
      O => DRPDI(0)
    );
gtpe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => \FSM_onehot_state_reg[5]_0\
    );
gtpe2_i_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drp_op_done,
      O => DRPADDR(0)
    );
gtpe2_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(15),
      I3 => drp_op_done,
      O => DRPDI(15)
    );
gtpe2_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(14),
      I3 => drp_op_done,
      O => DRPDI(14)
    );
gtpe2_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(13),
      I3 => drp_op_done,
      O => DRPDI(13)
    );
gtpe2_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(12),
      I3 => drp_op_done,
      O => DRPDI(12)
    );
gtpe2_i_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rd_data_reg_n_0_[11]\,
      I1 => p_2_in,
      I2 => drp_op_done,
      O => DRPDI(11)
    );
gtpe2_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => p_2_in,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => in7(10),
      I3 => drp_op_done,
      O => DRPDI(10)
    );
gtrxreset_i: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => p_3_in,
      I2 => gtrxreset_ss,
      I3 => p_1_in,
      I4 => p_0_in,
      I5 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \gtrxreset_i__0\
    );
gtrxreset_o_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => \gtrxreset_i__0\,
      Q => GTRXRESET
    );
gtrxreset_s_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_in_sync,
      Q => gtrxreset_s
    );
gtrxreset_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => gtrxreset_s,
      Q => gtrxreset_ss
    );
\original_rd_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => flag_reg_n_0,
      I1 => \original_rd_data_reg[0]_0\,
      I2 => p_0_in,
      O => original_rd_data0
    );
\original_rd_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(0),
      Q => original_rd_data(0),
      R => '0'
    );
\original_rd_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(10),
      Q => original_rd_data(10),
      R => '0'
    );
\original_rd_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(11),
      Q => original_rd_data(11),
      R => '0'
    );
\original_rd_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(12),
      Q => original_rd_data(12),
      R => '0'
    );
\original_rd_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(13),
      Q => original_rd_data(13),
      R => '0'
    );
\original_rd_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(14),
      Q => original_rd_data(14),
      R => '0'
    );
\original_rd_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(15),
      Q => original_rd_data(15),
      R => '0'
    );
\original_rd_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(1),
      Q => original_rd_data(1),
      R => '0'
    );
\original_rd_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(2),
      Q => original_rd_data(2),
      R => '0'
    );
\original_rd_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(3),
      Q => original_rd_data(3),
      R => '0'
    );
\original_rd_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(4),
      Q => original_rd_data(4),
      R => '0'
    );
\original_rd_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(5),
      Q => original_rd_data(5),
      R => '0'
    );
\original_rd_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(6),
      Q => original_rd_data(6),
      R => '0'
    );
\original_rd_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(7),
      Q => original_rd_data(7),
      R => '0'
    );
\original_rd_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(8),
      Q => original_rd_data(8),
      R => '0'
    );
\original_rd_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => original_rd_data0,
      D => D(9),
      Q => original_rd_data(9),
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(0),
      I1 => original_rd_data(0),
      I2 => flag_reg_n_0,
      O => \rd_data[0]_i_1_n_0\
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(10),
      I1 => original_rd_data(10),
      I2 => flag_reg_n_0,
      O => \rd_data[10]_i_1_n_0\
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(11),
      I1 => original_rd_data(11),
      I2 => flag_reg_n_0,
      O => \rd_data[11]_i_1_n_0\
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(12),
      I1 => original_rd_data(12),
      I2 => flag_reg_n_0,
      O => \rd_data[12]_i_1_n_0\
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(13),
      I1 => original_rd_data(13),
      I2 => flag_reg_n_0,
      O => \rd_data[13]_i_1_n_0\
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(14),
      I1 => original_rd_data(14),
      I2 => flag_reg_n_0,
      O => \rd_data[14]_i_1_n_0\
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \original_rd_data_reg[0]_0\,
      O => next_rd_data
    );
\rd_data[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(15),
      I1 => original_rd_data(15),
      I2 => flag_reg_n_0,
      O => \rd_data[15]_i_2_n_0\
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(1),
      I1 => original_rd_data(1),
      I2 => flag_reg_n_0,
      O => \rd_data[1]_i_1_n_0\
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(2),
      I1 => original_rd_data(2),
      I2 => flag_reg_n_0,
      O => \rd_data[2]_i_1_n_0\
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(3),
      I1 => original_rd_data(3),
      I2 => flag_reg_n_0,
      O => \rd_data[3]_i_1_n_0\
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(4),
      I1 => original_rd_data(4),
      I2 => flag_reg_n_0,
      O => \rd_data[4]_i_1_n_0\
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(5),
      I1 => original_rd_data(5),
      I2 => flag_reg_n_0,
      O => \rd_data[5]_i_1_n_0\
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(6),
      I1 => original_rd_data(6),
      I2 => flag_reg_n_0,
      O => \rd_data[6]_i_1_n_0\
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(7),
      I1 => original_rd_data(7),
      I2 => flag_reg_n_0,
      O => \rd_data[7]_i_1_n_0\
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(8),
      I1 => original_rd_data(8),
      I2 => flag_reg_n_0,
      O => \rd_data[8]_i_1_n_0\
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => D(9),
      I1 => original_rd_data(9),
      I2 => flag_reg_n_0,
      O => \rd_data[9]_i_1_n_0\
    );
\rd_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[0]_i_1_n_0\,
      Q => in7(0)
    );
\rd_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[10]_i_1_n_0\,
      Q => in7(10)
    );
\rd_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[11]_i_1_n_0\,
      Q => \rd_data_reg_n_0_[11]\
    );
\rd_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[12]_i_1_n_0\,
      Q => in7(12)
    );
\rd_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[13]_i_1_n_0\,
      Q => in7(13)
    );
\rd_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[14]_i_1_n_0\,
      Q => in7(14)
    );
\rd_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[15]_i_2_n_0\,
      Q => in7(15)
    );
\rd_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[1]_i_1_n_0\,
      Q => in7(1)
    );
\rd_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[2]_i_1_n_0\,
      Q => in7(2)
    );
\rd_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[3]_i_1_n_0\,
      Q => in7(3)
    );
\rd_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[4]_i_1_n_0\,
      Q => in7(4)
    );
\rd_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[5]_i_1_n_0\,
      Q => in7(5)
    );
\rd_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[6]_i_1_n_0\,
      Q => in7(6)
    );
\rd_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[7]_i_1_n_0\,
      Q => in7(7)
    );
\rd_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[8]_i_1_n_0\,
      Q => in7(8)
    );
\rd_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => next_rd_data,
      CLR => rst_sync,
      D => \rd_data[9]_i_1_n_0\,
      Q => in7(9)
    );
rxpmaresetdone_s_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_sync,
      Q => rxpmaresetdone_s
    );
rxpmaresetdone_ss_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_s,
      Q => rxpmaresetdone_ss
    );
rxpmaresetdone_sss_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => rst_sync,
      D => rxpmaresetdone_ss,
      Q => rxpmaresetdone_sss
    );
sync_gtrxreset_in: entity work.gig_ethernet_pcs_pma_0_reset_sync_4
     port map (
      CLK => CLK,
      SR(0) => SR(0),
      reset_out => gtrxreset_in_sync
    );
sync_rst_sync: entity work.gig_ethernet_pcs_pma_0_reset_sync_5
     port map (
      CLK => CLK,
      reset_out => rst_sync,
      reset_sync5_0 => reset_sync5
    );
sync_rxpmaresetdone: entity work.gig_ethernet_pcs_pma_0_sync_block_6
     port map (
      CLK => CLK,
      data_in => data_in,
      data_out => rxpmaresetdone_sync
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
kYrcO/E+Jhm4R/4R3+CukKYR9M2FIvcsEHYDIEQ941LV/qe3nw66ouV0tjU2K77WxMp0KzE3bUaN
EkHZUhS54Zbapq0AAlHGThTWWu9TToic0Fogfo0uxbTRj/YKvsYbGHXn+38UtVT4gl+Z+q34s2Mx
S+RksJLLbqa/UjuB2IA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
k7VYfhbczr+tglBVnP2dNpzQUg4faERuh35S6DlbOXKmaLBzNWJuLZKd3/iHJso+4/ki/NZUVDCo
PIbVzwxMtfGyW1fMXDvveUi46OnejPwVxk5t1kIbtSbcZCd++dNgqg5UzMEgptRWzheZuzX0GigU
yFrxhwF/EKgqip1pp6C9cstz8ElT8YbfLOW5ZqJRuK3p8wRTUD9tZ+3ZT4AUQNnb5LwhJYd18bKy
gCZ5WG9Mj+aMW9valUSRFjEY4oFOYnca2u9dC1uGlv48Br0t9pUhfrmTbufRCalBxAR594dFK/W+
13kLKPWgZzIiZRLopKxSb3kx8JrEbJXF16BnhQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TxEtvLMShWARGvALMwAihIuShrdtPpwirMDR7BzuLz8WzVhoqvJSM5/nLMHFGqovxD5hXGIA2TAw
UB0YVlq6K3gG1/oM4RpzHTN3yz8Lt5YW3A+UfuxJr1V9UVkS6LmvF75rPoruMKpllkRnQaQkrdOH
79erJYgSSdvNFj79HX4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Jd4QdSkhWhpPJfQcqGINGTBbyQi4fwpgiNWDB3Wd2IjKeric0AmdHU7UViuSzCLh03DSaNG2q/XP
qatCMMw9/14uzhpUJU/1zUWxXlbRxdCkB/LSsYsRRmVRjaX8PHa9/COyOOXOwziBKCZ4EH/zCO32
LML+m8CiAQ/Hl3o7OkbgzReeGFKo2yT0AlTR1mlGeI1ujqvvwRe1Fai0g+TwEJcmsDU1/5bkvxQ8
aV49pZh6N2SUhTCJ+wLBZlcMIljfD3Bu8Sp/4tL/+j+yW2zEEf4Sl33jw0Cb08EifW3RF8BmuSm6
hUeX9HuDvEf347dVCR8t8qRzeC+0nGD4/fB1NQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
nE6k/lSQEQ4OmPB4XqBcP/LpC07K/JJ0IvLqk0FbQzQZjzqT5yDvPsiRjELAcBvPJRahwOqlfyes
JDXxH4G+XSbtKQtE02yLheyEjNesZ0dv/v3vL+wA09O8khSrVyP5ijRndW00Cf5Bf2IpNiaJRcds
F1ushZZu9jXeBItrh4znBf9fOoXggbdnBLyNjuw7bRfvTeY2Xhe1Z7RpJLgPWMz3yKmlUVxO5Zyf
mjNu1+82dGuZ9x/eImCHDzcLcpca/TdMV0iJAkZHrvuhhu0GfQ7zgBbvuyb+I/r0q0vuL52PeEET
HDmGQS2oxiFTbcwiGY3t/ioXPJYkEEqNFUIzSA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
EYYoCPbR+OMFlmBfBNcQ1RKQKD88wkYgxA5pkdacb5EuwAeven6zC8gsLrmbmaf1Y+GE+exjL/E8
csfwUz3cQq4551Y/pgVQB6wc+K/5qus2SV7wqxTpqsWY/Yu+bULiGuBSdS51qWlfxDNujKEBhRPN
GKWkQK8KP7xMHh1W8rO4WL7cLP0qnZ7xSovnz379iAYpAJOGf/f5GjM87wrRCh+60BUmNbENwN6h
Un/7huetrD2tvDcD67Ox5Dkto+nybbrNNH3ry0zh96Cq8sxNBI7cJ/iRp5kCBgqxCxELTa7hlTHW
RWkLjA2W/Y2HjatDbYo5U0A7bO8ORiG66IX0Kg==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
q9bGXHBOyTLb3eTSnDNZfQbfjyoc3yN7NB+1C2N+mReGSJxWRtlWWn5HWbhvjoAJehclGC7OtjK2
ZSTJ0A3pHY3St3rul3liQXKD5kCQ9+vFLUhyKlQc08mhaOXPkXVrLBkSbJoneeg+zcwJuKQzPvv8
Se016G+DYsP9PPIjvWbgYSkDDPBmrvDI1+5mRe5HwZFGFGhAQNqFMnPAskAW1MwhObzaIpkQKTZT
7A6i2BjYT3UzWyOCYK2zgjiB9ZFwChUw4Bwh+H8Xf2j3ysF46VVr3Y/hfiRxPSHR8Jb8iMEkCJjf
nRAfkr8Y2ZxDL10aUR1VFpL5aHsLiRKnNRdZXw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
nsakC0nZIZNi1X6ujQodgmUw2UIdYzuFQ4iAZwA9YfvRrxXUL7ynKQCgPpNVzwJk5S+CJlgNjRvH
avhNsBU4C+cBB3dvqouQ4tOLrtjvGCn/tgPDevuIaG5LBxGdZZ/MOgVEltPHWIYycz6nfuA5/Axp
6IIz71mUhQT3OW6kWYR5cK3zVKmHXkQGZxfNAWG/Pw5DHuc9xxTQpswaIv4ECw8olrxqfoRkzz/n
gmc1riU255Qanc8CpzTXkB0TXLYD8b3W4k0EIAYhAlKk5HVAVS9D3DfcWg27dKxRMm5dVH7ddpvn
9W7az/Gv4/jAcQ/A2wvn+5RGmVdmY2XJTvnb42j3M+6+R6PXkHvxDCRRgj7df9TYddZWyOeT0KQd
DnIaIlkFA345xytHveeTmDy6qVwsD6GrlsYJS9tCsR6FloMwjoQcZKSxBqfWh+rvQ8/8NxsGVy4v
3tFI5PwOhr5e4Nw4hm2q3u3mpmtv9+BzXIuf1HXxWr2eSaeu22WHlCsg

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
WuUgcS5b6yfqTuzjufwmIVC5kWm6y/3mx22Aii+Dgdcnv/uLoI9/njjHdhb7hUlsD3Xs1keDNIwN
3pNTWeUxyZTJzKR7udvlJMLBMym3o/ECBMv+uN4BToB/hl2qqhLvFAO/r5AFOlliZqDwiGcbQvyz
YxE2I3qA+lBeP2iX2/4t2ns07deHzxcGsGDpvkWpwNcM3RmD3m5puzv13u/mWj0iTjzSuDu+lCO3
EIjElwRdbJl/F7N/czlKYgmKd6feg7/nbSKTQgrJk+bEOJwzrhlLGQvovZgtfM2nxWwlvulcT7sS
n2ZxTDzZIZJeakYPGSP3PRWLzaOntLk4/JYNoQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HAfLWwf5IE4nVH0RKu6Ckfcag4YISAB7GxmA74RLd0WtgVtvSg/hiI6xjdDBajL3WlsS8r0EeRuE
7k3XV6Iw18PLWYY7xEqYXN+4UCUMJuuhFnCKbupuHsoPe92DFCS1iQmSCu4KA4if6La2soKs0Eai
lizBuddfJbplTj7Z459Jc2VAD/slvgcakh9coxr57R1xf3xL+SqtbztnNWXTWebaVsMi9o1R8+q2
Bw6o2bthJTK5AjuaNFC1mXchmICuCVK92/JyceC3nXwexvYK1qRmiOyoTPwPOS9/j/gup9+/1Be6
vYxlYOcskfzyxWLNti298ohd6UCc2uC5C4Rl3w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DzCZLHkutR8dxKMJJC1uS/LdG9PoCtj5GsOR4GKxJSZTHbAW3Lwb4zUisDiKbo8nzvAc+Pc3aKIh
FZY+iEihN/UyNBp/ZVBx4xfw4KiNs0WcNidwHxnj/AmT0YahVcv3MBdpFE4TvDgOFqEqCr2KvrS5
K14RY6HsADqifYcgChtDVh4X+2Nen/oSD8dZS1qLOsyQr7ETEhogVmc4Gi3TE4/HYjm8lV5GRuJM
x1+0GPRONu+RFuc2B6sidWODYyJus0b7HVqnBAA8gMcV6twjAADrnyIqZwnPoiUCKAMzsDKVKhW3
GrlmNwP5uDSVq/4QrLJ59GIzFy3EXCfFTYr7nA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71552)
`protect data_block
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
BQtj8H8YU5xiA7pzbjvfMdY=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtpe2_i_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    gtpe2_i_7 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD_GT;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  signal DRPADDR : STD_LOGIC_VECTOR ( 4 to 4 );
  signal GTRXRESET : STD_LOGIC;
  signal gtpe2_i_n_0 : STD_LOGIC;
  signal gtpe2_i_n_1 : STD_LOGIC;
  signal gtpe2_i_n_102 : STD_LOGIC;
  signal gtpe2_i_n_104 : STD_LOGIC;
  signal gtpe2_i_n_105 : STD_LOGIC;
  signal gtpe2_i_n_14 : STD_LOGIC;
  signal gtpe2_i_n_28 : STD_LOGIC;
  signal gtpe2_i_n_29 : STD_LOGIC;
  signal gtpe2_i_n_39 : STD_LOGIC;
  signal gtpe2_i_n_40 : STD_LOGIC;
  signal gtpe2_i_n_43 : STD_LOGIC;
  signal gtpe2_i_n_48 : STD_LOGIC;
  signal gtpe2_i_n_49 : STD_LOGIC;
  signal gtpe2_i_n_50 : STD_LOGIC;
  signal gtpe2_i_n_51 : STD_LOGIC;
  signal gtpe2_i_n_52 : STD_LOGIC;
  signal gtpe2_i_n_53 : STD_LOGIC;
  signal gtpe2_i_n_54 : STD_LOGIC;
  signal gtpe2_i_n_55 : STD_LOGIC;
  signal gtpe2_i_n_56 : STD_LOGIC;
  signal gtpe2_i_n_57 : STD_LOGIC;
  signal gtpe2_i_n_58 : STD_LOGIC;
  signal gtpe2_i_n_59 : STD_LOGIC;
  signal gtpe2_i_n_60 : STD_LOGIC;
  signal gtpe2_i_n_61 : STD_LOGIC;
  signal gtpe2_i_n_62 : STD_LOGIC;
  signal gtpe2_i_n_63 : STD_LOGIC;
  signal gtpe2_i_n_64 : STD_LOGIC;
  signal gtpe2_i_n_65 : STD_LOGIC;
  signal gtpe2_i_n_66 : STD_LOGIC;
  signal gtpe2_i_n_67 : STD_LOGIC;
  signal gtpe2_i_n_68 : STD_LOGIC;
  signal gtpe2_i_n_69 : STD_LOGIC;
  signal gtpe2_i_n_7 : STD_LOGIC;
  signal gtpe2_i_n_70 : STD_LOGIC;
  signal gtpe2_i_n_71 : STD_LOGIC;
  signal gtpe2_i_n_72 : STD_LOGIC;
  signal gtpe2_i_n_73 : STD_LOGIC;
  signal gtpe2_i_n_74 : STD_LOGIC;
  signal gtpe2_i_n_75 : STD_LOGIC;
  signal gtpe2_i_n_76 : STD_LOGIC;
  signal gtpe2_i_n_77 : STD_LOGIC;
  signal gtpe2_i_n_78 : STD_LOGIC;
  signal gtpe2_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_1 : STD_LOGIC;
  signal gtrxreset_seq_i_n_10 : STD_LOGIC;
  signal gtrxreset_seq_i_n_11 : STD_LOGIC;
  signal gtrxreset_seq_i_n_12 : STD_LOGIC;
  signal gtrxreset_seq_i_n_13 : STD_LOGIC;
  signal gtrxreset_seq_i_n_14 : STD_LOGIC;
  signal gtrxreset_seq_i_n_15 : STD_LOGIC;
  signal gtrxreset_seq_i_n_16 : STD_LOGIC;
  signal gtrxreset_seq_i_n_17 : STD_LOGIC;
  signal gtrxreset_seq_i_n_18 : STD_LOGIC;
  signal gtrxreset_seq_i_n_2 : STD_LOGIC;
  signal gtrxreset_seq_i_n_3 : STD_LOGIC;
  signal gtrxreset_seq_i_n_4 : STD_LOGIC;
  signal gtrxreset_seq_i_n_5 : STD_LOGIC;
  signal gtrxreset_seq_i_n_6 : STD_LOGIC;
  signal gtrxreset_seq_i_n_7 : STD_LOGIC;
  signal gtrxreset_seq_i_n_8 : STD_LOGIC;
  signal gtrxreset_seq_i_n_9 : STD_LOGIC;
  signal NLW_gtpe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtpe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_gtpe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gtpe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute box_type : string;
  attribute box_type of gtpe2_i : label is "PRIMITIVE";
begin
gtpe2_i: unisim.vcomponents.GTPE2_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => B"00000000000000000000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CFOK_CFG => B"1001001000000000000000001000000111010000000",
      CFOK_CFG2 => B"0100000",
      CFOK_CFG3 => B"0100000",
      CFOK_CFG4 => '0',
      CFOK_CFG5 => B"00",
      CFOK_CFG6 => B"0000",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_COMMON_SWING => '0',
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"010",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CLKRSVD0_INVERTED => '0',
      IS_CLKRSVD1_INVERTED => '0',
      IS_DMONITORCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_SIGVALIDCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      LOOPBACK_CFG => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_LOOPBACK_CFG => '0',
      PMA_RSV => X"00000333",
      PMA_RSV2 => X"00002040",
      PMA_RSV3 => B"00",
      PMA_RSV4 => B"0000",
      PMA_RSV5 => '0',
      PMA_RSV6 => '0',
      PMA_RSV7 => '0',
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"0000107FE106001041010",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"001001",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPMRESET_TIME => B"0001111",
      RXLPM_BIAS_STARTUP_DISABLE => '0',
      RXLPM_CFG => B"0110",
      RXLPM_CFG1 => '0',
      RXLPM_CM_CFG => '0',
      RXLPM_GC_CFG => B"111100010",
      RXLPM_GC_CFG2 => B"001",
      RXLPM_HF_CFG => B"00001111110000",
      RXLPM_HF_CFG2 => B"01010",
      RXLPM_HF_CFG3 => B"0000",
      RXLPM_HOLD_DURING_EIDLE => '0',
      RXLPM_INCM_CFG => '1',
      RXLPM_IPCM_CFG => '0',
      RXLPM_LF_CFG => B"000000001111110000",
      RXLPM_LF_CFG2 => B"01010",
      RXLPM_OSINT_CFG => B"100",
      RXOOB_CFG => B"0000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOSCALRESET_TIMEOUT => B"00000",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"C00002",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => B"000",
      RXPI_CFG1 => '1',
      RXPI_CFG2 => '1',
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_BIAS_CFG => B"0000111100110011",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_EN => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"1010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"00000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SATA_PLL_CFG => "VCO_3000MHZ",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "2.0",
      TERM_RCAL_CFG => B"100001000010000",
      TERM_RCAL_OVRD => B"000",
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOOB_CFG => '0',
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"00",
      TXPI_CFG1 => B"00",
      TXPI_CFG2 => B"00",
      TXPI_CFG3 => '0',
      TXPI_CFG4 => '0',
      TXPI_CFG5 => B"000",
      TXPI_GREY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPMCLK_SEL => "TXUSRCLK2",
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00001",
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 5,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0',
      USE_PCS_CLK_PHASE_SEL => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD0 => '0',
      CLKRSVD1 => '0',
      DMONFIFORESET => '0',
      DMONITORCLK => '0',
      DMONITOROUT(14) => gtpe2_i_n_48,
      DMONITOROUT(13) => gtpe2_i_n_49,
      DMONITOROUT(12) => gtpe2_i_n_50,
      DMONITOROUT(11) => gtpe2_i_n_51,
      DMONITOROUT(10) => gtpe2_i_n_52,
      DMONITOROUT(9) => gtpe2_i_n_53,
      DMONITOROUT(8) => gtpe2_i_n_54,
      DMONITOROUT(7) => gtpe2_i_n_55,
      DMONITOROUT(6) => gtpe2_i_n_56,
      DMONITOROUT(5) => gtpe2_i_n_57,
      DMONITOROUT(4) => gtpe2_i_n_58,
      DMONITOROUT(3) => gtpe2_i_n_59,
      DMONITOROUT(2) => gtpe2_i_n_60,
      DMONITOROUT(1) => gtpe2_i_n_61,
      DMONITOROUT(0) => gtpe2_i_n_62,
      DRPADDR(8 downto 5) => B"0000",
      DRPADDR(4) => DRPADDR(4),
      DRPADDR(3 downto 1) => B"000",
      DRPADDR(0) => DRPADDR(4),
      DRPCLK => CLK,
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      DRPDO(15) => gtpe2_i_n_63,
      DRPDO(14) => gtpe2_i_n_64,
      DRPDO(13) => gtpe2_i_n_65,
      DRPDO(12) => gtpe2_i_n_66,
      DRPDO(11) => gtpe2_i_n_67,
      DRPDO(10) => gtpe2_i_n_68,
      DRPDO(9) => gtpe2_i_n_69,
      DRPDO(8) => gtpe2_i_n_70,
      DRPDO(7) => gtpe2_i_n_71,
      DRPDO(6) => gtpe2_i_n_72,
      DRPDO(5) => gtpe2_i_n_73,
      DRPDO(4) => gtpe2_i_n_74,
      DRPDO(3) => gtpe2_i_n_75,
      DRPDO(2) => gtpe2_i_n_76,
      DRPDO(1) => gtpe2_i_n_77,
      DRPDO(0) => gtpe2_i_n_78,
      DRPEN => gtrxreset_seq_i_n_18,
      DRPRDY => gtpe2_i_n_0,
      DRPWE => gtrxreset_seq_i_n_1,
      EYESCANDATAERROR => gtpe2_i_n_1,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTPRXN => rxn,
      GTPRXP => rxp,
      GTPTXN => txn,
      GTPTXP => txp,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => GTRXRESET,
      GTTXRESET => gt0_gttxreset_in0_out,
      LOOPBACK(2 downto 0) => B"000",
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDOUT(15 downto 0) => NLW_gtpe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtpe2_i_PHYSTATUS_UNCONNECTED,
      PLL0CLK => gt0_pll0outclk_out,
      PLL0REFCLK => gt0_pll0outrefclk_out,
      PLL1CLK => gt0_pll1outclk_out,
      PLL1REFCLK => gt0_pll1outrefclk_out,
      PMARSVDIN0 => '0',
      PMARSVDIN1 => '0',
      PMARSVDIN2 => '0',
      PMARSVDIN3 => '0',
      PMARSVDIN4 => '0',
      PMARSVDOUT0 => NLW_gtpe2_i_PMARSVDOUT0_UNCONNECTED,
      PMARSVDOUT1 => NLW_gtpe2_i_PMARSVDOUT1_UNCONNECTED,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXADAPTSELTEST(13 downto 0) => B"00000000000000",
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => RXBUFSTATUS(0),
      RXBUFSTATUS(1) => gtpe2_i_n_104,
      RXBUFSTATUS(0) => gtpe2_i_n_105,
      RXBYTEISALIGNED => gtpe2_i_n_7,
      RXBYTEREALIGN => gtpe2_i_n_8,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => NLW_gtpe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtpe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtpe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtpe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(3 downto 2) => NLW_gtpe2_i_RXCHARISCOMMA_UNCONNECTED(3 downto 2),
      RXCHARISCOMMA(1 downto 0) => gtpe2_i_3(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => gtpe2_i_4(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(3 downto 0) => B"0000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(3 downto 0) => NLW_gtpe2_i_RXCHBONDO_UNCONNECTED(3 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtpe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtpe2_i_n_14,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtpe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtpe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(31 downto 16) => NLW_gtpe2_i_RXDATA_UNCONNECTED(31 downto 16),
      RXDATA(15 downto 0) => gtpe2_i_2(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => gtpe2_i_5(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtpe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtpe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtpe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtpe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFOVRDEN => '0',
      RXLPMOSINTNTRLEN => '0',
      RXLPMRESET => '0',
      RXMCOMMAALIGNEN => reset_out,
      RXNOTINTABLE(3 downto 2) => NLW_gtpe2_i_RXNOTINTABLE_UNCONNECTED(3 downto 2),
      RXNOTINTABLE(1 downto 0) => gtpe2_i_6(1 downto 0),
      RXOOBRESET => '0',
      RXOSCALRESET => '0',
      RXOSHOLD => '0',
      RXOSINTCFG(3 downto 0) => B"0010",
      RXOSINTDONE => NLW_gtpe2_i_RXOSINTDONE_UNCONNECTED,
      RXOSINTEN => '1',
      RXOSINTHOLD => '0',
      RXOSINTID0(3 downto 0) => B"0000",
      RXOSINTNTRLEN => '0',
      RXOSINTOVRDEN => '0',
      RXOSINTPD => '0',
      RXOSINTSTARTED => NLW_gtpe2_i_RXOSINTSTARTED_UNCONNECTED,
      RXOSINTSTROBE => '0',
      RXOSINTSTROBEDONE => NLW_gtpe2_i_RXOSINTSTROBEDONE_UNCONNECTED,
      RXOSINTSTROBESTARTED => NLW_gtpe2_i_RXOSINTSTROBESTARTED_UNCONNECTED,
      RXOSINTTESTOVRDEN => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => rxoutclk,
      RXOUTCLKFABRIC => NLW_gtpe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtpe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => reset_out,
      RXPCSRESET => reset,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtpe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtpe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPMARESETDONE => gtpe2_i_n_28,
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtpe2_i_n_29,
      RXPRBSSEL(2 downto 0) => B"000",
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtpe2_i_RXRATEDONE_UNCONNECTED,
      RXRATEMODE => '0',
      RXRESETDONE => gtpe2_i_0,
      RXSLIDE => '0',
      RXSTARTOFSEQ(1 downto 0) => NLW_gtpe2_i_RXSTARTOFSEQ_UNCONNECTED(1 downto 0),
      RXSTATUS(2 downto 0) => NLW_gtpe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYNCALLIN => '0',
      RXSYNCDONE => NLW_gtpe2_i_RXSYNCDONE_UNCONNECTED,
      RXSYNCIN => '0',
      RXSYNCMODE => '0',
      RXSYNCOUT => NLW_gtpe2_i_RXSYNCOUT_UNCONNECTED,
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt0_rxuserrdy_t,
      RXUSRCLK => gtpe2_i_7,
      RXUSRCLK2 => gtpe2_i_7,
      RXVALID => NLW_gtpe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      SIGVALIDCLK => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TX8B10BBYPASS(3 downto 0) => B"0000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => TXBUFSTATUS(0),
      TXBUFSTATUS(0) => gtpe2_i_n_102,
      TXCHARDISPMODE(3 downto 2) => B"00",
      TXCHARDISPMODE(1 downto 0) => gtpe2_i_8(1 downto 0),
      TXCHARDISPVAL(3 downto 2) => B"00",
      TXCHARDISPVAL(1 downto 0) => gtpe2_i_9(1 downto 0),
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => gtpe2_i_10(1 downto 0),
      TXCOMFINISH => NLW_gtpe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(31 downto 16) => B"0000000000000000",
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtpe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => TXPD(0),
      TXGEARBOXREADY => NLW_gtpe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => gtpe2_i_n_39,
      TXOUTCLKPCS => gtpe2_i_n_40,
      TXOUTCLKSEL(2 downto 0) => B"100",
      TXPCSRESET => '0',
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtpe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtpe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPIPPMEN => '0',
      TXPIPPMOVRDEN => '0',
      TXPIPPMPD => '0',
      TXPIPPMSEL => '1',
      TXPIPPMSTEPSIZE(4 downto 0) => B"00000",
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPMARESETDONE => gtpe2_i_n_43,
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtpe2_i_TXRATEDONE_UNCONNECTED,
      TXRATEMODE => '0',
      TXRESETDONE => gtpe2_i_1,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYNCALLIN => '0',
      TXSYNCDONE => NLW_gtpe2_i_TXSYNCDONE_UNCONNECTED,
      TXSYNCIN => '0',
      TXSYNCMODE => '0',
      TXSYNCOUT => NLW_gtpe2_i_TXSYNCOUT_UNCONNECTED,
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt0_txuserrdy_t,
      TXUSRCLK => gtpe2_i_7,
      TXUSRCLK2 => gtpe2_i_7
    );
gtrxreset_seq_i: entity work.gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
     port map (
      CLK => CLK,
      D(15) => gtpe2_i_n_63,
      D(14) => gtpe2_i_n_64,
      D(13) => gtpe2_i_n_65,
      D(12) => gtpe2_i_n_66,
      D(11) => gtpe2_i_n_67,
      D(10) => gtpe2_i_n_68,
      D(9) => gtpe2_i_n_69,
      D(8) => gtpe2_i_n_70,
      D(7) => gtpe2_i_n_71,
      D(6) => gtpe2_i_n_72,
      D(5) => gtpe2_i_n_73,
      D(4) => gtpe2_i_n_74,
      D(3) => gtpe2_i_n_75,
      D(2) => gtpe2_i_n_76,
      D(1) => gtpe2_i_n_77,
      D(0) => gtpe2_i_n_78,
      DRPADDR(0) => DRPADDR(4),
      DRPDI(15) => gtrxreset_seq_i_n_2,
      DRPDI(14) => gtrxreset_seq_i_n_3,
      DRPDI(13) => gtrxreset_seq_i_n_4,
      DRPDI(12) => gtrxreset_seq_i_n_5,
      DRPDI(11) => gtrxreset_seq_i_n_6,
      DRPDI(10) => gtrxreset_seq_i_n_7,
      DRPDI(9) => gtrxreset_seq_i_n_8,
      DRPDI(8) => gtrxreset_seq_i_n_9,
      DRPDI(7) => gtrxreset_seq_i_n_10,
      DRPDI(6) => gtrxreset_seq_i_n_11,
      DRPDI(5) => gtrxreset_seq_i_n_12,
      DRPDI(4) => gtrxreset_seq_i_n_13,
      DRPDI(3) => gtrxreset_seq_i_n_14,
      DRPDI(2) => gtrxreset_seq_i_n_15,
      DRPDI(1) => gtrxreset_seq_i_n_16,
      DRPDI(0) => gtrxreset_seq_i_n_17,
      \FSM_onehot_state_reg[5]_0\ => gtrxreset_seq_i_n_1,
      \FSM_onehot_state_reg[7]_0\ => gtrxreset_seq_i_n_18,
      GTRXRESET => GTRXRESET,
      SR(0) => SR(0),
      data_in => gtpe2_i_n_28,
      \original_rd_data_reg[0]_0\ => gtpe2_i_n_0,
      reset_sync5 => reset_sync5
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
kYrcO/E+Jhm4R/4R3+CukKYR9M2FIvcsEHYDIEQ941LV/qe3nw66ouV0tjU2K77WxMp0KzE3bUaN
EkHZUhS54Zbapq0AAlHGThTWWu9TToic0Fogfo0uxbTRj/YKvsYbGHXn+38UtVT4gl+Z+q34s2Mx
S+RksJLLbqa/UjuB2IA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
k7VYfhbczr+tglBVnP2dNpzQUg4faERuh35S6DlbOXKmaLBzNWJuLZKd3/iHJso+4/ki/NZUVDCo
PIbVzwxMtfGyW1fMXDvveUi46OnejPwVxk5t1kIbtSbcZCd++dNgqg5UzMEgptRWzheZuzX0GigU
yFrxhwF/EKgqip1pp6C9cstz8ElT8YbfLOW5ZqJRuK3p8wRTUD9tZ+3ZT4AUQNnb5LwhJYd18bKy
gCZ5WG9Mj+aMW9valUSRFjEY4oFOYnca2u9dC1uGlv48Br0t9pUhfrmTbufRCalBxAR594dFK/W+
13kLKPWgZzIiZRLopKxSb3kx8JrEbJXF16BnhQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TxEtvLMShWARGvALMwAihIuShrdtPpwirMDR7BzuLz8WzVhoqvJSM5/nLMHFGqovxD5hXGIA2TAw
UB0YVlq6K3gG1/oM4RpzHTN3yz8Lt5YW3A+UfuxJr1V9UVkS6LmvF75rPoruMKpllkRnQaQkrdOH
79erJYgSSdvNFj79HX4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Jd4QdSkhWhpPJfQcqGINGTBbyQi4fwpgiNWDB3Wd2IjKeric0AmdHU7UViuSzCLh03DSaNG2q/XP
qatCMMw9/14uzhpUJU/1zUWxXlbRxdCkB/LSsYsRRmVRjaX8PHa9/COyOOXOwziBKCZ4EH/zCO32
LML+m8CiAQ/Hl3o7OkbgzReeGFKo2yT0AlTR1mlGeI1ujqvvwRe1Fai0g+TwEJcmsDU1/5bkvxQ8
aV49pZh6N2SUhTCJ+wLBZlcMIljfD3Bu8Sp/4tL/+j+yW2zEEf4Sl33jw0Cb08EifW3RF8BmuSm6
hUeX9HuDvEf347dVCR8t8qRzeC+0nGD4/fB1NQ==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
nE6k/lSQEQ4OmPB4XqBcP/LpC07K/JJ0IvLqk0FbQzQZjzqT5yDvPsiRjELAcBvPJRahwOqlfyes
JDXxH4G+XSbtKQtE02yLheyEjNesZ0dv/v3vL+wA09O8khSrVyP5ijRndW00Cf5Bf2IpNiaJRcds
F1ushZZu9jXeBItrh4znBf9fOoXggbdnBLyNjuw7bRfvTeY2Xhe1Z7RpJLgPWMz3yKmlUVxO5Zyf
mjNu1+82dGuZ9x/eImCHDzcLcpca/TdMV0iJAkZHrvuhhu0GfQ7zgBbvuyb+I/r0q0vuL52PeEET
HDmGQS2oxiFTbcwiGY3t/ioXPJYkEEqNFUIzSA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
EYYoCPbR+OMFlmBfBNcQ1RKQKD88wkYgxA5pkdacb5EuwAeven6zC8gsLrmbmaf1Y+GE+exjL/E8
csfwUz3cQq4551Y/pgVQB6wc+K/5qus2SV7wqxTpqsWY/Yu+bULiGuBSdS51qWlfxDNujKEBhRPN
GKWkQK8KP7xMHh1W8rO4WL7cLP0qnZ7xSovnz379iAYpAJOGf/f5GjM87wrRCh+60BUmNbENwN6h
Un/7huetrD2tvDcD67Ox5Dkto+nybbrNNH3ry0zh96Cq8sxNBI7cJ/iRp5kCBgqxCxELTa7hlTHW
RWkLjA2W/Y2HjatDbYo5U0A7bO8ORiG66IX0Kg==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
q9bGXHBOyTLb3eTSnDNZfQbfjyoc3yN7NB+1C2N+mReGSJxWRtlWWn5HWbhvjoAJehclGC7OtjK2
ZSTJ0A3pHY3St3rul3liQXKD5kCQ9+vFLUhyKlQc08mhaOXPkXVrLBkSbJoneeg+zcwJuKQzPvv8
Se016G+DYsP9PPIjvWbgYSkDDPBmrvDI1+5mRe5HwZFGFGhAQNqFMnPAskAW1MwhObzaIpkQKTZT
7A6i2BjYT3UzWyOCYK2zgjiB9ZFwChUw4Bwh+H8Xf2j3ysF46VVr3Y/hfiRxPSHR8Jb8iMEkCJjf
nRAfkr8Y2ZxDL10aUR1VFpL5aHsLiRKnNRdZXw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
nsakC0nZIZNi1X6ujQodgmUw2UIdYzuFQ4iAZwA9YfvRrxXUL7ynKQCgPpNVzwJk5S+CJlgNjRvH
avhNsBU4C+cBB3dvqouQ4tOLrtjvGCn/tgPDevuIaG5LBxGdZZ/MOgVEltPHWIYycz6nfuA5/Axp
6IIz71mUhQT3OW6kWYR5cK3zVKmHXkQGZxfNAWG/Pw5DHuc9xxTQpswaIv4ECw8olrxqfoRkzz/n
gmc1riU255Qanc8CpzTXkB0TXLYD8b3W4k0EIAYhAlKk5HVAVS9D3DfcWg27dKxRMm5dVH7ddpvn
9W7az/Gv4/jAcQ/A2wvn+5RGmVdmY2XJTvnb42j3M+6+R6PXkHvxDCRRgj7df9TYddZWyOeT0KQd
DnIaIlkFA345xytHveeTmDy6qVwsD6GrlsYJS9tCsR6FloMwjoQcZKSxBqfWh+rvQ8/8NxsGVy4v
3tFI5PwOhr5e4Nw4hm2q3u3mpmtv9+BzXIuf1HXxWr2eSaeu22WHlCsg

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
WuUgcS5b6yfqTuzjufwmIVC5kWm6y/3mx22Aii+Dgdcnv/uLoI9/njjHdhb7hUlsD3Xs1keDNIwN
3pNTWeUxyZTJzKR7udvlJMLBMym3o/ECBMv+uN4BToB/hl2qqhLvFAO/r5AFOlliZqDwiGcbQvyz
YxE2I3qA+lBeP2iX2/4t2ns07deHzxcGsGDpvkWpwNcM3RmD3m5puzv13u/mWj0iTjzSuDu+lCO3
EIjElwRdbJl/F7N/czlKYgmKd6feg7/nbSKTQgrJk+bEOJwzrhlLGQvovZgtfM2nxWwlvulcT7sS
n2ZxTDzZIZJeakYPGSP3PRWLzaOntLk4/JYNoQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
HAfLWwf5IE4nVH0RKu6Ckfcag4YISAB7GxmA74RLd0WtgVtvSg/hiI6xjdDBajL3WlsS8r0EeRuE
7k3XV6Iw18PLWYY7xEqYXN+4UCUMJuuhFnCKbupuHsoPe92DFCS1iQmSCu4KA4if6La2soKs0Eai
lizBuddfJbplTj7Z459Jc2VAD/slvgcakh9coxr57R1xf3xL+SqtbztnNWXTWebaVsMi9o1R8+q2
Bw6o2bthJTK5AjuaNFC1mXchmICuCVK92/JyceC3nXwexvYK1qRmiOyoTPwPOS9/j/gup9+/1Be6
vYxlYOcskfzyxWLNti298ohd6UCc2uC5C4Rl3w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DzCZLHkutR8dxKMJJC1uS/LdG9PoCtj5GsOR4GKxJSZTHbAW3Lwb4zUisDiKbo8nzvAc+Pc3aKIh
FZY+iEihN/UyNBp/ZVBx4xfw4KiNs0WcNidwHxnj/AmT0YahVcv3MBdpFE4TvDgOFqEqCr2KvrS5
K14RY6HsADqifYcgChtDVh4X+2Nen/oSD8dZS1qLOsyQr7ETEhogVmc4Gi3TE4/HYjm8lV5GRuJM
x1+0GPRONu+RFuc2B6sidWODYyJus0b7HVqnBAA8gMcV6twjAADrnyIqZwnPoiUCKAMzsDKVKhW3
GrlmNwP5uDSVq/4QrLJ59GIzFy3EXCfFTYr7nA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18032)
`protect data_block
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
1gtj3sT8zqUOlUVQN2+UFXI9m/Y=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtpe2_i : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtpe2_i_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    gtpe2_i_6 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
begin
gt0_GTWIZARD_i: entity work.gig_ethernet_pcs_pma_0_GTWIZARD_GT
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => SR(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i_0 => gtpe2_i,
      gtpe2_i_1 => gtpe2_i_0,
      gtpe2_i_10(1 downto 0) => gtpe2_i_9(1 downto 0),
      gtpe2_i_2(15 downto 0) => gtpe2_i_1(15 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_4(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_7 => gtpe2_i_6,
      gtpe2_i_8(1 downto 0) => gtpe2_i_7(1 downto 0),
      gtpe2_i_9(1 downto 0) => gtpe2_i_8(1 downto 0),
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => reset_sync5,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD_init is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gtpe2_i_4 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg_0 : in STD_LOGIC;
    gtpe2_i_8 : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD_init;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD_init is
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal gt0_gtrxreset_gt : STD_LOGIC;
  signal gt0_gtrxreset_gt_d1 : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gt0_rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_4_n_0\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal gt0_rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_t : STD_LOGIC;
  signal gt0_txuserrdy_t : STD_LOGIC;
  signal gtwizard_i_n_3 : STD_LOGIC;
  signal gtwizard_i_n_5 : STD_LOGIC;
  signal \^reset_in\ : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of gt0_rx_cdrlock_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__2\ : label is 35;
begin
  reset_in <= \^reset_in\;
gt0_gtrxreset_gt_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_gtrxreset_gt,
      Q => gt0_gtrxreset_gt_d1,
      R => '0'
    );
gt0_rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(2) => gt0_rx_cdrlock_counter0_carry_n_1,
      CO(1) => gt0_rx_cdrlock_counter0_carry_n_2,
      CO(0) => gt0_rx_cdrlock_counter0_carry_n_3,
      CYINIT => gt0_rx_cdrlock_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => gt0_rx_cdrlock_counter(4 downto 1)
    );
\gt0_rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => gt0_rx_cdrlock_counter(8 downto 5)
    );
\gt0_rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => gt0_rx_cdrlock_counter(12 downto 9)
    );
\gt0_rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => gt0_rx_cdrlock_counter(13)
    );
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[0]_i_2_n_0\,
      I1 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(0)
    );
\gt0_rx_cdrlock_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I1 => gt0_rx_cdrlock_counter(4),
      I2 => gt0_rx_cdrlock_counter(5),
      I3 => gt0_rx_cdrlock_counter(7),
      I4 => gt0_rx_cdrlock_counter(6),
      I5 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      O => \gt0_rx_cdrlock_counter[0]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(10),
      O => gt0_rx_cdrlock_counter_0(10)
    );
\gt0_rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(11),
      O => gt0_rx_cdrlock_counter_0(11)
    );
\gt0_rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(12),
      O => gt0_rx_cdrlock_counter_0(12)
    );
\gt0_rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(13),
      O => gt0_rx_cdrlock_counter_0(13)
    );
\gt0_rx_cdrlock_counter[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(1),
      I1 => gt0_rx_cdrlock_counter(12),
      I2 => gt0_rx_cdrlock_counter(13),
      I3 => gt0_rx_cdrlock_counter(3),
      I4 => gt0_rx_cdrlock_counter(2),
      O => \gt0_rx_cdrlock_counter[13]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(4),
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => gt0_rx_cdrlock_counter(7),
      I3 => gt0_rx_cdrlock_counter(6),
      O => \gt0_rx_cdrlock_counter[13]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(9),
      I1 => gt0_rx_cdrlock_counter(8),
      I2 => gt0_rx_cdrlock_counter(10),
      I3 => gt0_rx_cdrlock_counter(11),
      O => \gt0_rx_cdrlock_counter[13]_i_4_n_0\
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(1),
      O => gt0_rx_cdrlock_counter_0(1)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(2),
      O => gt0_rx_cdrlock_counter_0(2)
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(3),
      O => gt0_rx_cdrlock_counter_0(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(4),
      O => gt0_rx_cdrlock_counter_0(4)
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(5),
      O => gt0_rx_cdrlock_counter_0(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(6),
      O => gt0_rx_cdrlock_counter_0(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(7),
      O => gt0_rx_cdrlock_counter_0(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(8),
      O => gt0_rx_cdrlock_counter_0(8)
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(9),
      O => gt0_rx_cdrlock_counter_0(9)
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(0),
      Q => gt0_rx_cdrlock_counter(0),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(10),
      Q => gt0_rx_cdrlock_counter(10),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(11),
      Q => gt0_rx_cdrlock_counter(11),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(12),
      Q => gt0_rx_cdrlock_counter(12),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(13),
      Q => gt0_rx_cdrlock_counter(13),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(1),
      Q => gt0_rx_cdrlock_counter(1),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(2),
      Q => gt0_rx_cdrlock_counter(2),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(3),
      Q => gt0_rx_cdrlock_counter(3),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(4),
      Q => gt0_rx_cdrlock_counter(4),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(5),
      Q => gt0_rx_cdrlock_counter(5),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(6),
      Q => gt0_rx_cdrlock_counter(6),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(7),
      Q => gt0_rx_cdrlock_counter(7),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(8),
      Q => gt0_rx_cdrlock_counter(8),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(9),
      Q => gt0_rx_cdrlock_counter(9),
      R => gt0_gtrxreset_gt_d1
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => gt0_rx_cdrlocked_reg_n_0,
      O => gt0_rx_cdrlocked_i_1_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlocked_i_1_n_0,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => gt0_gtrxreset_gt_d1
    );
gt0_rxresetfsm_i: entity work.gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
     port map (
      data_in => rx_fsm_reset_done_int_reg,
      data_out => data_out,
      data_sync_reg1 => gtwizard_i_n_3,
      data_sync_reg1_0 => data_sync_reg1,
      data_sync_reg6 => gtpe2_i_4,
      gt0_gtrxreset_gt => gt0_gtrxreset_gt,
      gt0_gtrxreset_gt_d1_reg => gt0_gtrxreset_gt_d1_reg_0,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \out\(0),
      reset_time_out_reg_0 => gt0_rx_cdrlocked_reg_n_0
    );
gt0_txresetfsm_i: entity work.gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
     port map (
      PLL0_RESET_reg_0 => \^reset_in\,
      data_in => data_in,
      data_sync_reg1 => gtpe2_i_4,
      data_sync_reg1_0 => gtwizard_i_n_5,
      data_sync_reg1_1 => data_sync_reg1,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i => gtpe2_i_8,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0)
    );
gtwizard_i: entity work.gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => gt0_gtrxreset_gt_d1,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtpe2_i => gtwizard_i_n_3,
      gtpe2_i_0 => gtwizard_i_n_5,
      gtpe2_i_1(15 downto 0) => gtpe2_i(15 downto 0),
      gtpe2_i_2(1 downto 0) => gtpe2_i_0(1 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_1(1 downto 0),
      gtpe2_i_4(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_5(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_6 => gtpe2_i_4,
      gtpe2_i_7(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_8(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtpe2_i_9(1 downto 0) => gtpe2_i_7(1 downto 0),
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => \^reset_in\,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_GTWIZARD is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gtpe2_i_4 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtpe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    gtpe2_i_8 : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_GTWIZARD is
begin
U0: entity work.gig_ethernet_pcs_pma_0_GTWIZARD_init
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      data_in => data_in,
      data_out => data_out,
      data_sync_reg1 => data_sync_reg1,
      gt0_gtrxreset_gt_d1_reg_0 => gt0_gtrxreset_gt_d1_reg,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtpe2_i(15 downto 0) => gtpe2_i(15 downto 0),
      gtpe2_i_0(1 downto 0) => gtpe2_i_0(1 downto 0),
      gtpe2_i_1(1 downto 0) => gtpe2_i_1(1 downto 0),
      gtpe2_i_2(1 downto 0) => gtpe2_i_2(1 downto 0),
      gtpe2_i_3(1 downto 0) => gtpe2_i_3(1 downto 0),
      gtpe2_i_4 => gtpe2_i_4,
      gtpe2_i_5(1 downto 0) => gtpe2_i_5(1 downto 0),
      gtpe2_i_6(1 downto 0) => gtpe2_i_6(1 downto 0),
      gtpe2_i_7(1 downto 0) => gtpe2_i_7(1 downto 0),
      gtpe2_i_8 => gtpe2_i_8,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_in => PLL0_RESET_reg,
      reset_out => reset_out,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_transceiver is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdisperr : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus : out STD_LOGIC_VECTOR ( 0 to 0 );
    txbuferr : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    reset_in : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rxdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    gtpe2_i : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    userclk2 : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    powerdown : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    txchardispval_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcharisk_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0refclklost_out : in STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    enablealign : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    \txdata_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end gig_ethernet_pcs_pma_0_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_transceiver is
  signal data_valid_reg2 : STD_LOGIC;
  signal encommaalign_int : STD_LOGIC;
  signal gtwizard_inst_n_6 : STD_LOGIC;
  signal gtwizard_inst_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxchariscomma_i_1_n_0 : STD_LOGIC;
  signal rxchariscomma_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_i_1_n_0 : STD_LOGIC;
  signal rxcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[7]_i_1_n_0\ : STD_LOGIC;
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdisperr_i_1_n_0 : STD_LOGIC;
  signal rxdisperr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_i_1_n_0 : STD_LOGIC;
  signal rxnotintable_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal rxreset_int : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  signal txbufstatus_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal txchardispmode_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_reg : STD_LOGIC;
  signal txchardispval_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_reg : STD_LOGIC;
  signal txcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_reg : STD_LOGIC;
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  signal txreset_int : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair126";
begin
gtwizard_inst: entity work.gig_ethernet_pcs_pma_0_GTWIZARD
     port map (
      CLK => CLK,
      D(1 downto 0) => rxclkcorcnt_int(1 downto 0),
      PLL0_RESET_reg => reset_in,
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXBUFSTATUS(0) => gtwizard_inst_n_7,
      RXPD(0) => rxpowerdown,
      TXBUFSTATUS(0) => gtwizard_inst_n_6,
      TXPD(0) => txpowerdown,
      data_in => data_in,
      data_out => data_valid_reg2,
      data_sync_reg1 => data_sync_reg1,
      gt0_gtrxreset_gt_d1_reg => rxreset_int,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtpe2_i(15 downto 0) => rxdata_int(15 downto 0),
      gtpe2_i_0(1 downto 0) => rxchariscomma_int(1 downto 0),
      gtpe2_i_1(1 downto 0) => rxcharisk_int(1 downto 0),
      gtpe2_i_2(1 downto 0) => rxdisperr_int(1 downto 0),
      gtpe2_i_3(1 downto 0) => rxnotintable_int(1 downto 0),
      gtpe2_i_4 => gtpe2_i,
      gtpe2_i_5(1 downto 0) => txchardispmode_int(1 downto 0),
      gtpe2_i_6(1 downto 0) => txchardispval_int(1 downto 0),
      gtpe2_i_7(1 downto 0) => txcharisk_int(1 downto 0),
      gtpe2_i_8 => txreset_int,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_out => encommaalign_int,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
reclock_encommaalign: entity work.gig_ethernet_pcs_pma_0_reset_sync
     port map (
      enablealign => enablealign,
      reset_out => encommaalign_int,
      userclk2 => userclk2
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_0_reset_sync_1
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reclock_txreset: entity work.gig_ethernet_pcs_pma_0_reset_sync_2
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_0_reset_wtd_timer
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset
    );
rxbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => p_0_in,
      Q => rxbufstatus(0),
      R => '0'
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => gtwizard_inst_n_7,
      Q => p_0_in,
      R => '0'
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => reset_sync5(0)
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => reset_sync5(0)
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxchariscomma_double(1),
      I1 => toggle,
      I2 => rxchariscomma_double(0),
      O => rxchariscomma_i_1_n_0
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxchariscomma_i_1_n_0,
      Q => rxchariscomma(0),
      R => reset_sync5(0)
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxchariscomma_int(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxchariscomma_int(1),
      Q => \rxchariscomma_reg__0\(1),
      R => '0'
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => reset_sync5(0)
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => reset_sync5(0)
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxcharisk_double(1),
      I1 => toggle,
      I2 => rxcharisk_double(0),
      O => rxcharisk_i_1_n_0
    );
rxcharisk_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxcharisk_i_1_n_0,
      Q => rxcharisk(0),
      R => reset_sync5(0)
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxcharisk_int(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxcharisk_int(1),
      Q => \rxcharisk_reg__0\(1),
      R => '0'
    );
\rxclkcorcnt_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(0),
      Q => rxclkcorcnt_double(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxclkcorcnt_reg(1),
      Q => rxclkcorcnt_double(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(0),
      Q => Q(0),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxclkcorcnt_double(1),
      Q => Q(1),
      R => reset_sync5(0)
    );
\rxclkcorcnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxclkcorcnt_int(0),
      Q => rxclkcorcnt_reg(0),
      R => '0'
    );
\rxclkcorcnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxclkcorcnt_int(1),
      Q => rxclkcorcnt_reg(1),
      R => '0'
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(8),
      I1 => toggle,
      I2 => rxdata_double(0),
      O => \rxdata[0]_i_1_n_0\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(9),
      I1 => toggle,
      I2 => rxdata_double(1),
      O => \rxdata[1]_i_1_n_0\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(10),
      I1 => toggle,
      I2 => rxdata_double(2),
      O => \rxdata[2]_i_1_n_0\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(11),
      I1 => toggle,
      I2 => rxdata_double(3),
      O => \rxdata[3]_i_1_n_0\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(12),
      I1 => toggle,
      I2 => rxdata_double(4),
      O => \rxdata[4]_i_1_n_0\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(13),
      I1 => toggle,
      I2 => rxdata_double(5),
      O => \rxdata[5]_i_1_n_0\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(14),
      I1 => toggle,
      I2 => rxdata_double(6),
      O => \rxdata[6]_i_1_n_0\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(15),
      I1 => toggle,
      I2 => rxdata_double(7),
      O => \rxdata[7]_i_1_n_0\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => reset_sync5(0)
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => reset_sync5(0)
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => reset_sync5(0)
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => reset_sync5(0)
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => reset_sync5(0)
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => reset_sync5(0)
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => reset_sync5(0)
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => reset_sync5(0)
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => reset_sync5(0)
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => reset_sync5(0)
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => reset_sync5(0)
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => reset_sync5(0)
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => reset_sync5(0)
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => reset_sync5(0)
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => reset_sync5(0)
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => reset_sync5(0)
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[0]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(0),
      R => reset_sync5(0)
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[1]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(1),
      R => reset_sync5(0)
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[2]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(2),
      R => reset_sync5(0)
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[3]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(3),
      R => reset_sync5(0)
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[4]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(4),
      R => reset_sync5(0)
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[5]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(5),
      R => reset_sync5(0)
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[6]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(6),
      R => reset_sync5(0)
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \rxdata[7]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(7),
      R => reset_sync5(0)
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdata_int(9),
      Q => rxdata_reg(9),
      R => '0'
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => reset_sync5(0)
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => reset_sync5(0)
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdisperr_double(1),
      I1 => toggle,
      I2 => rxdisperr_double(0),
      O => rxdisperr_i_1_n_0
    );
rxdisperr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr_i_1_n_0,
      Q => rxdisperr(0),
      R => reset_sync5(0)
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdisperr_int(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxdisperr_int(1),
      Q => \rxdisperr_reg__0\(1),
      R => '0'
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => reset_sync5(0)
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => reset_sync5(0)
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxnotintable_double(1),
      I1 => toggle,
      I2 => rxnotintable_double(0),
      O => rxnotintable_i_1_n_0
    );
rxnotintable_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable_i_1_n_0,
      Q => rxnotintable(0),
      R => reset_sync5(0)
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxnotintable_int(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => rxnotintable_int(1),
      Q => \rxnotintable_reg__0\(1),
      R => '0'
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => toggle,
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown_double,
      R => reset_sync5(0)
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtpe2_i,
      CE => '1',
      D => rxpowerdown_double,
      Q => rxpowerdown,
      R => '0'
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \rxpowerdown_reg__0\,
      R => reset_sync5(0)
    );
sync_block_data_valid: entity work.gig_ethernet_pcs_pma_0_sync_block_3
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      status_vector(0) => status_vector(0)
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => SR(0)
    );
txbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txbufstatus_reg(1),
      Q => txbuferr,
      R => '0'
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => gtwizard_inst_n_6,
      Q => txbufstatus_reg(1),
      R => '0'
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispmode_reg,
      Q => txchardispmode_double(0),
      R => SR(0)
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => D(0),
      Q => txchardispmode_double(1),
      R => SR(0)
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispmode_double(1),
      Q => txchardispmode_int(1),
      R => '0'
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => D(0),
      Q => txchardispmode_reg,
      R => SR(0)
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg,
      Q => txchardispval_double(0),
      R => SR(0)
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_double(1),
      R => SR(0)
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txchardispval_double(1),
      Q => txchardispval_int(1),
      R => '0'
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_reg,
      R => SR(0)
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg,
      Q => txcharisk_double(0),
      R => SR(0)
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_double(1),
      R => SR(0)
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txcharisk_double(1),
      Q => txcharisk_int(1),
      R => '0'
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_reg,
      R => SR(0)
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(0),
      Q => txdata_double(0),
      R => SR(0)
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(2),
      Q => txdata_double(10),
      R => SR(0)
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(3),
      Q => txdata_double(11),
      R => SR(0)
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(4),
      Q => txdata_double(12),
      R => SR(0)
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(5),
      Q => txdata_double(13),
      R => SR(0)
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(6),
      Q => txdata_double(14),
      R => SR(0)
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(7),
      Q => txdata_double(15),
      R => SR(0)
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(1),
      Q => txdata_double(1),
      R => SR(0)
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(2),
      Q => txdata_double(2),
      R => SR(0)
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(3),
      Q => txdata_double(3),
      R => SR(0)
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(4),
      Q => txdata_double(4),
      R => SR(0)
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(5),
      Q => txdata_double(5),
      R => SR(0)
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(6),
      Q => txdata_double(6),
      R => SR(0)
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => txdata_reg(7),
      Q => txdata_double(7),
      R => SR(0)
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(0),
      Q => txdata_double(8),
      R => SR(0)
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(1),
      Q => txdata_double(9),
      R => SR(0)
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtpe2_i,
      CE => '1',
      D => txdata_double(9),
      Q => txdata_int(9),
      R => '0'
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(0),
      Q => txdata_reg(0),
      R => SR(0)
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(1),
      Q => txdata_reg(1),
      R => SR(0)
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(2),
      Q => txdata_reg(2),
      R => SR(0)
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(3),
      Q => txdata_reg(3),
      R => SR(0)
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(4),
      Q => txdata_reg(4),
      R => SR(0)
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(5),
      Q => txdata_reg(5),
      R => SR(0)
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(6),
      Q => txdata_reg(6),
      R => SR(0)
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => userclk2,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(7),
      Q => txdata_reg(7),
      R => SR(0)
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => SR(0)
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtpe2_i,
      CE => '1',
      D => txpowerdown_double,
      Q => txpowerdown,
      R => '0'
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_block is
  port (
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 12 downto 0 );
    resetdone : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    gt0_pll0reset_out : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_detect : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 6 downto 0 );
    an_restart_config : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_pll0outclk_out : in STD_LOGIC;
    gt0_pll0outrefclk_out : in STD_LOGIC;
    gt0_pll1outclk_out : in STD_LOGIC;
    gt0_pll1outrefclk_out : in STD_LOGIC;
    gtpe2_i : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_block is
  signal enablealign : STD_LOGIC;
  signal mgt_rx_reset : STD_LOGIC;
  signal mgt_tx_reset : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rx_reset_done_i : STD_LOGIC;
  signal rxbuferr : STD_LOGIC;
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal transceiver_inst_n_12 : STD_LOGIC;
  signal transceiver_inst_n_13 : STD_LOGIC;
  signal txbuferr : STD_LOGIC;
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_0_core : label is "10'b0101010000";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_0_core : label is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_0_core : label is "gig_ethernet_pcs_pma_0";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_0_core : label is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_0_core : label is "artix7";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_0_core : label is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_0_core : label is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_0_core : label is "TRUE";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_0_core : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of gig_ethernet_pcs_pma_0_core : label is "soft";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0_core : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of gig_ethernet_pcs_pma_0_core : label is "true";
begin
  resetdone <= \^resetdone\;
  status_vector(12 downto 0) <= \^status_vector\(12 downto 0);
gig_ethernet_pcs_pma_0_core: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_2_9
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15) => an_adv_config_vector(6),
      an_adv_config_vector(14) => '0',
      an_adv_config_vector(13 downto 11) => an_adv_config_vector(5 downto 3),
      an_adv_config_vector(10 downto 9) => B"00",
      an_adv_config_vector(8 downto 7) => an_adv_config_vector(2 downto 1),
      an_adv_config_vector(6) => '0',
      an_adv_config_vector(5) => an_adv_config_vector(0),
      an_adv_config_vector(4 downto 0) => B"00000",
      an_enable => NLW_gig_ethernet_pcs_pma_0_core_an_enable_UNCONNECTED,
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      basex_or_sgmii => '0',
      configuration_valid => '0',
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      correction_timer(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dcm_locked => data_in,
      drp_daddr(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_daddr_UNCONNECTED(9 downto 0),
      drp_dclk => '0',
      drp_den => NLW_gig_ethernet_pcs_pma_0_core_drp_den_UNCONNECTED,
      drp_di(15 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_drp_di_UNCONNECTED(15 downto 0),
      drp_do(15 downto 0) => B"0000000000000000",
      drp_drdy => '0',
      drp_dwe => NLW_gig_ethernet_pcs_pma_0_core_drp_dwe_UNCONNECTED,
      drp_gnt => '0',
      drp_req => NLW_gig_ethernet_pcs_pma_0_core_drp_req_UNCONNECTED,
      en_cdet => NLW_gig_ethernet_pcs_pma_0_core_en_cdet_UNCONNECTED,
      enablealign => enablealign,
      ewrap => NLW_gig_ethernet_pcs_pma_0_core_ewrap_UNCONNECTED,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gtx_clk => '0',
      link_timer_basex(9 downto 0) => B"0000000000",
      link_timer_sgmii(9 downto 0) => B"0000000000",
      link_timer_value(9 downto 0) => B"0100111101",
      loc_ref => NLW_gig_ethernet_pcs_pma_0_core_loc_ref_UNCONNECTED,
      mdc => '0',
      mdio_in => '0',
      mdio_out => NLW_gig_ethernet_pcs_pma_0_core_mdio_out_UNCONNECTED,
      mdio_tri => NLW_gig_ethernet_pcs_pma_0_core_mdio_tri_UNCONNECTED,
      mgt_rx_reset => mgt_rx_reset,
      mgt_tx_reset => mgt_tx_reset,
      phyad(4 downto 0) => B"00000",
      pma_rx_clk0 => '0',
      pma_rx_clk1 => '0',
      powerdown => powerdown,
      reset => \out\(0),
      reset_done => \^resetdone\,
      rx_code_group0(9 downto 0) => B"0000000000",
      rx_code_group1(9 downto 0) => B"0000000000",
      rx_gt_nominal_latency(15 downto 0) => B"0000000011111000",
      rxbufstatus(1) => rxbuferr,
      rxbufstatus(0) => '0',
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxclkcorcnt(2) => '0',
      rxclkcorcnt(1 downto 0) => rxclkcorcnt(1 downto 0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxnotintable(0) => rxnotintable,
      rxphy_correction_timer(63 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_correction_timer_UNCONNECTED(63 downto 0),
      rxphy_ns_field(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_ns_field_UNCONNECTED(31 downto 0),
      rxphy_s_field(47 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_rxphy_s_field_UNCONNECTED(47 downto 0),
      rxrecclk => '0',
      rxrundisp(0) => '0',
      s_axi_aclk => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_resetn => '0',
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_gig_ethernet_pcs_pma_0_core_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_gig_ethernet_pcs_pma_0_core_s_axi_wready_UNCONNECTED,
      s_axi_wvalid => '0',
      signal_detect => signal_detect,
      speed_is_100 => '0',
      speed_is_10_100 => '0',
      speed_selection(1 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_speed_selection_UNCONNECTED(1 downto 0),
      status_vector(15 downto 12) => \^status_vector\(12 downto 9),
      status_vector(11 downto 10) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(11 downto 10),
      status_vector(9 downto 8) => \^status_vector\(8 downto 7),
      status_vector(7) => NLW_gig_ethernet_pcs_pma_0_core_status_vector_UNCONNECTED(7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      systemtimer_ns_field(31 downto 0) => B"00000000000000000000000000000000",
      systemtimer_s_field(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      tx_code_group(9 downto 0) => NLW_gig_ethernet_pcs_pma_0_core_tx_code_group_UNCONNECTED(9 downto 0),
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk => '0',
      userclk2 => userclk2
    );
sync_block_rx_reset_done: entity work.gig_ethernet_pcs_pma_0_sync_block
     port map (
      data_in => transceiver_inst_n_13,
      data_out => rx_reset_done_i,
      userclk2 => userclk2
    );
sync_block_tx_reset_done: entity work.gig_ethernet_pcs_pma_0_sync_block_0
     port map (
      data_in => transceiver_inst_n_12,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i,
      userclk2 => userclk2
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_0_transceiver
     port map (
      CLK => CLK,
      D(0) => txchardispmode,
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => mgt_tx_reset,
      data_in => transceiver_inst_n_12,
      data_sync_reg1 => data_in,
      enablealign => enablealign,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtpe2_i => gtpe2_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      powerdown => powerdown,
      reset_in => gt0_pll0reset_out,
      reset_sync5(0) => mgt_rx_reset,
      rx_fsm_reset_done_int_reg => transceiver_inst_n_13,
      rxbufstatus(0) => rxbuferr,
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      \rxdata_reg[7]_0\(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxn => rxn,
      rxnotintable(0) => rxnotintable,
      rxoutclk => rxoutclk,
      rxp => rxp,
      status_vector(0) => \^status_vector\(1),
      txbuferr => txbuferr,
      txchardispval_reg_reg_0(0) => txchardispval,
      txcharisk_reg_reg_0(0) => txcharisk,
      \txdata_reg_reg[7]_0\(7 downto 0) => txdata(7 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_support is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll0lock_out : out STD_LOGIC
  );
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0_support : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0_support : entity is "yes";
end gig_ethernet_pcs_pma_0_support;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_support is
  signal \<const0>\ : STD_LOGIC;
  signal PLL0RESET : STD_LOGIC;
  signal cpll_reset_i : STD_LOGIC;
  signal \^gt0_pll0lock_out\ : STD_LOGIC;
  signal \^gt0_pll0outclk_out\ : STD_LOGIC;
  signal \^gt0_pll0outrefclk_out\ : STD_LOGIC;
  signal \^gt0_pll0refclklost_out\ : STD_LOGIC;
  signal gt0_pll0reset_out : STD_LOGIC;
  signal \^gt0_pll1outclk_out\ : STD_LOGIC;
  signal \^gt0_pll1outrefclk_out\ : STD_LOGIC;
  signal \^gtrefclk_bufg_out\ : STD_LOGIC;
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal \^mmcm_locked_out\ : STD_LOGIC;
  signal mmcm_reset : STD_LOGIC;
  signal \^pma_reset_out\ : STD_LOGIC;
  signal rxoutclk : STD_LOGIC;
  signal \^rxuserclk2_out\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txoutclk : STD_LOGIC;
  signal \^userclk2_out\ : STD_LOGIC;
  signal \^userclk_out\ : STD_LOGIC;
begin
  gt0_pll0lock_out <= \^gt0_pll0lock_out\;
  gt0_pll0outclk_out <= \^gt0_pll0outclk_out\;
  gt0_pll0outrefclk_out <= \^gt0_pll0outrefclk_out\;
  gt0_pll0refclklost_out <= \^gt0_pll0refclklost_out\;
  gt0_pll1outclk_out <= \^gt0_pll1outclk_out\;
  gt0_pll1outrefclk_out <= \^gt0_pll1outrefclk_out\;
  gtrefclk_bufg_out <= \^gtrefclk_bufg_out\;
  gtrefclk_out <= \^gtrefclk_out\;
  mmcm_locked_out <= \^mmcm_locked_out\;
  pma_reset_out <= \^pma_reset_out\;
  rxuserclk2_out <= \^rxuserclk2_out\;
  rxuserclk_out <= \^rxuserclk2_out\;
  status_vector(15 downto 12) <= \^status_vector\(15 downto 12);
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9 downto 8) <= \^status_vector\(9 downto 8);
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
  userclk2_out <= \^userclk2_out\;
  userclk_out <= \^userclk_out\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
core_clocking_i: entity work.gig_ethernet_pcs_pma_0_clocking
     port map (
      gtrefclk_bufg => \^gtrefclk_bufg_out\,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => \^gtrefclk_out\,
      gtrefclk_p => gtrefclk_p,
      mmcm_locked => \^mmcm_locked_out\,
      mmcm_reset => mmcm_reset,
      rxoutclk => rxoutclk,
      rxuserclk2_out => \^rxuserclk2_out\,
      txoutclk => txoutclk,
      userclk => \^userclk_out\,
      userclk2 => \^userclk2_out\
    );
core_gt_common_i: entity work.gig_ethernet_pcs_pma_0_gt_common
     port map (
      PLL0RESET => PLL0RESET,
      cpll_reset_i => cpll_reset_i,
      gt0_pll0lock_out => \^gt0_pll0lock_out\,
      gt0_pll0outclk_out => \^gt0_pll0outclk_out\,
      gt0_pll0outrefclk_out => \^gt0_pll0outrefclk_out\,
      gt0_pll0refclklost_out => \^gt0_pll0refclklost_out\,
      gt0_pll1outclk_out => \^gt0_pll1outclk_out\,
      gt0_pll1outrefclk_out => \^gt0_pll1outrefclk_out\,
      gtrefclk_bufg => \^gtrefclk_bufg_out\,
      gtrefclk_out => \^gtrefclk_out\,
      independent_clock_bufg => independent_clock_bufg
    );
core_gt_common_reset_i: entity work.gig_ethernet_pcs_pma_0_common_reset
     port map (
      PLL0RESET => PLL0RESET,
      cpll_reset_i => cpll_reset_i,
      gt0_pll0reset_out => gt0_pll0reset_out,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\
    );
core_resets_i: entity work.gig_ethernet_pcs_pma_0_resets
     port map (
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\,
      reset => reset
    );
pcs_pma_block_i: entity work.gig_ethernet_pcs_pma_0_block
     port map (
      CLK => \^gtrefclk_bufg_out\,
      an_adv_config_vector(6) => an_adv_config_vector(15),
      an_adv_config_vector(5 downto 3) => an_adv_config_vector(13 downto 11),
      an_adv_config_vector(2 downto 1) => an_adv_config_vector(8 downto 7),
      an_adv_config_vector(0) => an_adv_config_vector(5),
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      data_in => \^mmcm_locked_out\,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_pll0lock_out => \^gt0_pll0lock_out\,
      gt0_pll0outclk_out => \^gt0_pll0outclk_out\,
      gt0_pll0outrefclk_out => \^gt0_pll0outrefclk_out\,
      gt0_pll0refclklost_out => \^gt0_pll0refclklost_out\,
      gt0_pll0reset_out => gt0_pll0reset_out,
      gt0_pll1outclk_out => \^gt0_pll1outclk_out\,
      gt0_pll1outrefclk_out => \^gt0_pll1outrefclk_out\,
      gtpe2_i => \^userclk_out\,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \^pma_reset_out\,
      resetdone => resetdone,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      signal_detect => signal_detect,
      status_vector(12 downto 9) => \^status_vector\(15 downto 12),
      status_vector(8 downto 7) => \^status_vector\(9 downto 8),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk2 => \^userclk2_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0 is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_restart_config : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_pll0outclk_out : out STD_LOGIC;
    gt0_pll0outrefclk_out : out STD_LOGIC;
    gt0_pll1outclk_out : out STD_LOGIC;
    gt0_pll1outrefclk_out : out STD_LOGIC;
    gt0_pll0refclklost_out : out STD_LOGIC;
    gt0_pll0lock_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_ethernet_pcs_pma_0 : entity is true;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0 : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of gig_ethernet_pcs_pma_0 : entity is "gig_ethernet_pcs_pma_v16_2_9,Vivado 2022.2";
end gig_ethernet_pcs_pma_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 7 );
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
  status_vector(15 downto 12) <= \^status_vector\(15 downto 12);
  status_vector(11) <= \<const1>\;
  status_vector(10) <= \<const0>\;
  status_vector(9 downto 8) <= \^status_vector\(9 downto 8);
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.gig_ethernet_pcs_pma_0_support
     port map (
      an_adv_config_vector(15) => an_adv_config_vector(15),
      an_adv_config_vector(14) => '0',
      an_adv_config_vector(13 downto 11) => an_adv_config_vector(13 downto 11),
      an_adv_config_vector(10 downto 9) => B"00",
      an_adv_config_vector(8 downto 7) => an_adv_config_vector(8 downto 7),
      an_adv_config_vector(6) => '0',
      an_adv_config_vector(5) => an_adv_config_vector(5),
      an_adv_config_vector(4 downto 0) => B"00000",
      an_interrupt => an_interrupt,
      an_restart_config => an_restart_config,
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gtrefclk_bufg_out => gtrefclk_bufg_out,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => gtrefclk_out,
      gtrefclk_p => gtrefclk_p,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      pma_reset_out => pma_reset_out,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      rxuserclk2_out => rxuserclk2_out,
      rxuserclk_out => rxuserclk_out,
      signal_detect => signal_detect,
      status_vector(15 downto 12) => \^status_vector\(15 downto 12),
      status_vector(11 downto 10) => NLW_U0_status_vector_UNCONNECTED(11 downto 10),
      status_vector(9 downto 8) => \^status_vector\(9 downto 8),
      status_vector(7) => NLW_U0_status_vector_UNCONNECTED(7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txp => txp,
      userclk2_out => userclk2_out,
      userclk_out => userclk_out
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
