-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Wed Sep 28 11:20:36 2022
-- Host        : PPD-130859 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top gig_ethernet_pcs_pma_0 -prefix
--               gig_ethernet_pcs_pma_0_ gig_ethernet_pcs_pma_0_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clocking is
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
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clocking;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clocking is
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_common_reset is
  port (
    PLL0RESET : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_pll0reset_out : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_common_reset;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_common_reset is
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
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__1\ : label is "soft_lutpair3";
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
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(0),
      O => plusOp(1)
    );
\init_wait_count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(0),
      O => plusOp(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(1),
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
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
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
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(0),
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
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(1),
      I3 => init_wait_count_reg(5),
      I4 => init_wait_count_reg(7),
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
      INIT => X"FFF7"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(6),
      I2 => init_wait_count_reg(0),
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
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(1),
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
      INIT => X"AAAAAAAABAAAAAAA"
    )
        port map (
      I0 => init_wait_done,
      I1 => \init_wait_count[7]_i_3_n_0\,
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(1),
      I4 => init_wait_count_reg(5),
      I5 => init_wait_count_reg(7),
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gt_common is
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
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gt_common;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gt_common is
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync is
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
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1 is
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
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2 is
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
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    gt0_gtrxreset_gt_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4 is
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
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
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
      PRE => gt0_gtrxreset_gt_d1,
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
      PRE => gt0_gtrxreset_gt_d1,
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
      PRE => gt0_gtrxreset_gt_d1,
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
      PRE => gt0_gtrxreset_gt_d1,
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
      PRE => gt0_gtrxreset_gt_d1,
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 : entity is "gig_ethernet_pcs_pma_0_reset_sync";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5 is
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
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer is
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
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair119";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \counter_stg3[0]_i_5\ : label is "soft_lutpair120";
  attribute ADDER_THRESHOLD of \counter_stg3_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of reset_i_8 : label is "soft_lutpair120";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_resets is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_resets;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_resets is
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 is
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
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 is
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
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
      INIT => X"5500550055005700"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_rx_state_reg[0]_3\,
      I2 => pll0lock_sync,
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(2),
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_wait_done_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mmcm_lock_reclocked : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_3\ : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7 is
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal pll0lock_sync : STD_LOGIC;
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
      INIT => X"0DFF0DFF0DFF0D00"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_0\,
      I1 => reset_time_out,
      I2 => mmcm_lock_reclocked,
      I3 => Q(2),
      I4 => pll0lock_sync,
      I5 => \FSM_sequential_tx_state_reg[0]_1\,
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D000D000D000DFF"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_2\,
      I1 => reset_time_out,
      I2 => txresetdone_s3,
      I3 => Q(2),
      I4 => \FSM_sequential_tx_state_reg[0]_3\,
      I5 => pll0lock_sync,
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
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => reset_time_out_i_2_n_0,
      I1 => reset_time_out_reg_0,
      I2 => reset_time_out_reg,
      I3 => Q(3),
      I4 => reset_time_out_i_4_n_0,
      I5 => reset_time_out,
      O => init_wait_done_reg
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
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
      O => reset_time_out_i_2_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303030003030FEFE"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(3),
      I2 => Q(0),
      I3 => pll0lock_sync,
      I4 => Q(2),
      I5 => Q(1),
      O => reset_time_out_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 : entity is "gig_ethernet_pcs_pma_0_sync_block";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9 is
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
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
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
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
CfYWbKwylvtPqUOzF7uqmK4zs44bz2fdwvpuFLioaHj10Bf6wfz/J6ASNAQkNdzDWKNKpdQVU4js
IClenzy1Gg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
CebXybeWb7usVEwvfGGymgkIrvocUle6sj7yT4zEIm4i9uFyh5SaKwhbhgaGQtOTqohXiToS/HWM
ynFvwnrcMSqdNKeH+XTRlujIA0Ur6VKF7Loe/oNp1b7W64pIDqzI77KY5cHbD6/LUNYHhRhvUyrj
A4zdcMalFYRO8xf+eMA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
u8Q4xIAl+5IQ9LDuPIySUfr+FIAHc3eKWriUMXp2gqpexe2Z62NVfZ6DaIM2aqOTdUbtxTDdWx/r
N6cDE6tB09U4MNuQVpg1LEdmVV/xCvY8plQLPAAGlJJZxN0NeUGrg8UeKgAJM+3UG7oqO3MvPYK2
uEu2XXmKyazbrQFwn4o/Pl1UxWNZ27JWgop7B4FUJ7hnrj4bW0c2rdPL/IA/VeQXe1s0zaCBIFML
iVNxBJimH4+h6uDV33h94bxRWSrwOsTlPLvqFS9IoMeIdYOltcw4WOCF+1NDRRBRSutmgA6w6Zy3
/NwY/HhqUBn4J8PPB+NMAadhztbvmmB+hEXt5w==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Kr3foWuyUzAupd1E7iPi9zkwXkstPmWJWD5y8jxXUVfPbli5ElqScq6V7RUg0ucGB+bMkVy72KkO
4SeTSOOf/ym3a5YrxLjz4hUhYe6QzevP4YGOPnn3xx4PMCtxfeFhvrWf41nqfZI2A5km5njYzbRz
myDkobHiUKDj+k/p33AmOQNwc+nufedrdbd+P43EHF3M5Tu0HUtb6xpzDiK6LJloJr9Vl7k79WzH
7P+G0LKXsGNd+zgC4XU9lyymxVprAjHGqqCpNbmEiI675sEyMbSoCEmrWbLe2OHOjH5/bI/PIZpA
fshbwTarI0jXCu3OniTZDPE2B0OWvGkWYv2A5g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
RZ207B06H8GMroXA2sXNxFwurKOqO55VpY16rb2pS4Tr9HrogLWOGcyHRZqG87dS73fhLQ3uQnp/
z+MuAv97WN/bJ2O+8P3Emoh4VuDcKKbOKTmK822UgT5QmUWYQC0fQz3FUiOAqIx2hEnUAlbWPLpS
BxeuGSnBSGSzS7yiWHE=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
asuW5DHy+IbvHkMjfKhvedLnbuvn9AXk03V9JOZXaPKPv81cZQx/d8X1OROFqrUgs4HrYeqmU06t
DVxGtCJmMCxokzose4gcvq9E5GDYqZFvlhpM5eUJDDn5AdhhYyZvhmNBMsl20ooXUX+5XCn2nj2g
LsW5WhaPqAyHMTAb3OgxkQiVZqTcPBmPW4cpxlvy77JMjv8aQ9XKDOAa/gcPswwvZyCr6nIcfUNm
zs1WwDgTP/76Eyyb107vEkjefib52fliAdGzA4pjZTQWV1bDQOIbpAkEsmdgLw3QnCjTwyKlS6US
1/hHaaU13HIvUDEK+pnM+L1ZO2vFR/xwVNuu3w==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
m4lOpjqNlpNhypci9v6ztgXPp8EbVc+wvYWbTc4Da9NqT8uGt0RMFRVdpf7bv/0OZaYMf/f/b6TX
UptCdcrkVZTuVU73QxEFO6D7J/+WcjCg+5/bsvmfi65CxgbzRHQVppl5aLqmLuxW0QU8JkGQEsSN
SQvVG+5kWTqsrkwEoL1Jo+D3UPzb6zU2Fv3NF2nVHp9JypchR5bg2hfGIj9F7cjGBMJqXoiUJopF
YfXjaLc7jl80GwCBLcNqjIoZFqHdR78ckgT2C3YDYcBGy86MwJJq5flQSFUDgbE05HA3FKxzTveL
kdNGVCMqqB0yytu5EnoNcVRZDXhmDen7jTCkQw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OMUi83PSiPalEEiSBiHudEmuQIjQvRZqjQJt6OrYQuPTqxvFanRpm9SDo2z8ueGd6qZK2JiYREEO
5+PJm7Ab8y3F5Ed7H5BR+ZGOwYUlXsWRfV9VhhRymHelQW0bf3UDouo7uViOTsp7ew+BPOjV8hVk
4bYKYiX3d5CUUM/qMF7fyIudHuaiMSPz+1fpIUPH5KiTGmPrvV6HnvyUaB2PIgkE8ddo92BLsQ74
zsy6kx5dbbdBhKuXAlRM4B+x8Vj4+64RiE+kFeAxCPvJ1oW3LDr/GhoGEzyshuaVxjHHtomuL3YT
O2GevzXICki4aNLWfTJJn8gKhdgK4ow4ygRxbQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
f4h6vwxLmnvTtsJbdz+fBsfuhR907dusy+EfYSc63f0nY1lD1kEABbKHjGPgxj+4kJxSdJyGjonn
ZbDVMjzFOKen5Q+uU8lnqyzXNUBN9HGiUMLZ2uNK3PPpwv4583hfjeI4VtXw4e/vj3vo12GjSEbS
uTcnLDsCLLfEVhZ8rNECunv/m5BaqTvsQoSDYzzUxVruIEiTLwbt588Y0vxfSpDlvxxYAtPh2aDz
S1TmU9j1pCZGi0jn4tAtRR0Cqk7gZrJbSAFvOkZ8UTl2EFD0U+2rJwSJkhCsECZZQh8X398eMmae
ngTlE3qOYCN7cgGEn9rwWs3pJ1HSHIOJJ2FJiA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 225232)
`protect data_block
QAZ3jJQeJRhXLwJe3YGCbNqsd//nHX8+kri6sr6S2lnmqUWZYcWuc3Ebr5JYkGKMZYAstr5QdOjt
VyVgGU3bw22b2mghprjp+9rAhUxHzcDq432zw68MaFk5FLTOhIZG6inNMkdFeLm1itdZYK7UHpiL
b4B6Ux98izAF3Ond11yoYsZyyWWx/+KvOTQjwiNo6DNX3+E9s/knbPucqfnKvHAMfGtLv3lXmEsU
toF/pKhh9UDexpqYD+HtfoH9HVIqTl8R+RMY3zVAqk0mSJq0dK+EA63rdLjlrk3FNFLcdBcKEpEv
95OCfDU5q+DcOOUq0vAUzC70BSZk4saT/DWK1dwm/TmxLDEGfNkso1G1PToq2eCHYW/n6z4P9xtT
h6eVz1ybB84kEvyXbufhsJQRckvv2KN3rMDVXMVsubhm/QugMDZoGBqCmGxmW1cXev6JKCp7oA+g
2vHLm2tuCjuhAN5iymTHeiuHo6cXGh129/aApqL05QNsCRRulneJH3/or7TXRDTMpWMX7TobeSut
LtoOORNPmG3VrRn29kPmm3zShqFNP1SfZxh9jFki656UEpcqws42kGomhERc/Sw49PI/YA8cy1Dp
uCJ/tYTzZQFU4ANIcIRxJ8or5uFuq0LI8DdJw1OxyFcK2J0LrdIMkCHGtK76i1PadsqMd50AQpUK
6Wz/W356VQdiZKgoCTC32uhHPHrIfH7oij64XH0Np+Xbqzn7OhSTRW7h+WE6hEeyx7LEvKk+af9P
5/ruXzYahGqr+DwwmlNr1EwT57Afz4Se3KU0d/2Ym38qZlayq5v9b9mhNmgRwMLToNdWoROPVZdn
4QWH88BCg82dYFBorQKz47dUPixvS9GXI5jlBnVr2KtrLi/0NxOymh+A/fi76MA4czEWaAfP7+yp
QwfKGE7sUD70KixtEV5rbQ8LLljhkr9rmTJG9rpi56AYuf/17s9+6cE5prROfVz998W6LTGFsixS
9ACqY8lJImNli9+RkhXVzNgxvGxY2AWuo3G5M4ozPp8Ml4mJlk7/OwmA6IlncTKKaWNXZMWBFDd0
jMjExMUEOdZVvZFPOfuyX+WwoCW4qDlX354fU1O80tKJPy9+k0CP94tSKtCiuTw87h175pqPZsBd
xAwLEf5SOHMZjB21EEn4o+625daK0gCKWXOHHgE7SFL8M0cWeq3ZAXtosrM0CWDhn7KYZpA0VR9h
5hx3dvfzy86RK7lrVR/lJ7nd6p//4aGftRWYGY1y4TIVpgPgIJJ3ROVqQmG95inAU6LKwTS+fZti
cxr5I3RG2nTV4jeGdz566a0iKRsrVUviY7bbRPd23q6oDl9+r3ympdDj6LP3bjL0hEfAYbrXteqo
6lPeGG/naUPLlzdwYq4fPgqdxvPBw34SY36eql9VJuNdyPRIQsgRz2vQohNFIxta1bfAqcpz+kpt
BPxnK8B/40HLb4E4z3GCWy2Rm/6Sz/nyokFx0Y3io6fEYEoguN9aPqtAps3oiG4laT2qQEvYFB7a
343gFi0MvJ7pfVe2QGX3ABku59xxUhWXX/4xzRixnA5L3D4GrSdNMXI1nd9prcB5+kZ0ETphQ3OA
+7M2Ct/ymmoc/b2lb93LvQc1C5QLCgmNn4LmUqxbv0OHK0hsHWBSCRT/EIbelXFdWmrjRXn0V5yB
cUR/cWOl/PEZXqHNL3Jj9zUq5xjxkZP/h9bvC0q4UzKLZGW23PrlyQUiAKtQgabJO7IpKpB9ZXfS
hOcADUap2P0GsMegBPSlPrAsDIWVTi5/uBwb54RgLKpKZX3dbZXvFgf0RR/1Dc6281CQQUC+E/dE
1TCzg4rvAXxqNjTq5N9UD3R/meCrGk1In66dE/phDfBJzlHWyC7FKLB3b0bGYes1GZF5y1rlLENf
NLwlPHkIdG9N6L0SZUWTmBEY13xkFNZWJ74QCqBpVSmgAFdvReAsC643QzKriEYRVNSUPgazz/uF
X/FaExQWMVwu9OBBti7KsMUNAlRQZfIhQQRoXZxiglByIe9qCSs1rFTxvX8JzLztliSuC0Y+g7QV
sYkQjFw/czkqP7ag11r7pm+Ofa9shng3CHptLQIm713YygZArj8/tZi+JqaH2C7bhzeWOQDS1Y9h
iA74i9uI7ScxoLb5c7T0otK+UBCnLTVYyLfMqWwr5wacnzeM7PKYm6sI9gPwcfCJ/n96lXtIzZZ2
yOWSHx+i8U2M6yx/mSif9+7S4Cv/nhkQYpVT0UUwy7cPsvrTQ84qu1BB1USk7PZGHYCPusLbW1q9
7qWW/fciAM1XYBswmbptpqMufI36UPbzbxBTSIgFsp7mTlqjtyPKm5zvNLcIuKjzkNkv1L6yDB4c
gL9cvf5nWcHtxmUrC724pqboqRILdXbr/pbHhtdJmORydmB5n+ECyxBKJ8KnTsW5h5Lkeq7R9WF/
k1HiJC7Teky6WuppBlo8NcknRTfmeA7f/qk+3kv6XVJTTzOawX+wArQuJ1PD5EGpRB+4YwocsQS8
LJgcMqLZT70gQDpSluaUGHb5RzqjTBAwTWzF2ODAhJ43W4Z7mUBqQkc3NSq8yjNeYbGd5qkZTj4T
yOpCOS1pK5WxozD5XbHJ+PkNg3Y9vPaCUvBU2mfLMx0L98Sq0Qo7jLGamK1EtSLwbfM/+QaQX6Q8
SJLrmTlVuuz5AQboWqSf772lVOJ8RNFJo30RlyD4belsdp7VJDx3Qbjfw2opdMFIYFdc+C6/uQmp
1qfuMDL7qrEaSO5jzExV/7ildRi6KnoxhVpUYFgDMB/XdWh6JW4o8eq0Ql3cTPuDrxyTMnQ6NEhi
nRqzaEfXZFfea8m1yuWtLJ7IOrevWgVRbnAs82oFI77sAaWjNyOqFkiCuWZLApTfN4i3Lno0DpRW
+E2zkjCuLzJm6MJ/PMMytp12z3+PhLPa03EhHzRI0RpBDcQYJ3behMcO01NWR520ExxcT01lKGBa
OUlcx17ySrMizi3Q2f2nOV83FQGyitd98d4qngy6ZgQqsAhQRbMeJbLgwsmXDyLTEIQrW+yKlrXz
BjVJIkemeCRcJj0zwPLRC/v1BvxYfYljU8ja2M/BB3klOEeCx6NcBndlXWSzRvCxdP7bBHb+NJzu
PPwGUYhaJSdHSSZmleMsvPiPw6VURNsz6JuYsgOMjH0TY8PKw5PRKt1Vvfspm9a/hGQFvbuEenZs
mmNhLgbQ9VgbVQKaOwsfEOGh26A+I5cRw8Zb/NnLExe/7JqHvBQbAy7V+/3JuJSiZ5ydFItM70Ck
0aQNDw0vBO9U4//ZhD+PgB7ReWuNxECIw5XVQj/S5h0tRmM399fqdT1REomuElYeD0Uo+e0Hv/Kv
macy/wSzhMVChwqtnU724R6i8LZgr+ctRUoPmxm0DvrrN4LpS0oAhPM0q3DFgbBsGhriiA9xAWEC
KDisrn1gNY2bXU3ryztL7p+rCZ+lWKB9/XhSfZe21jx/Ec0fWavGcyC6656rC5NzOhBP0DUpTZVU
zCiDbtA6FuUb+4PAN/Nj88WzO03Zpopk2ocz2oosJA3W93PYQxifGdbz3ANU7K1i6GLKEhEv5zc8
TXniuCN4NXJho3KN6H7GjdUvwS+KarRcyshVIA6BRqDr21hm5a6M1vDnVBxt4IttI+kj6idhYdYD
2pROdXJ+Z50u3mgsC68RwEFj9ARJ7KuNhMMhshV6lJdl001oz9Dw8EZVcPslLhOWffeVjKna7eEX
6p/54z7L1Pu22wbB4GICWKAzLqET4+QEjjWWT27IFcTze8UiyB2vEiAjQ4pgN2esdRCRCAC02M0V
RDQJrqvlzV3b2RlRtTO9CkdLAF/oVo8e3P84g3p766gw4P8SwBy33d9bS3NLsSqD2qt4/FrJwkG8
ZEcrzVmGijxF5wdz5tjkHzw0NcTLimoKb20QhrpmUWUAKVpR2K2Dq6d5xA/uT19OMOkMBXwSmjCs
dFc/MoeDKpcK31gWllFL5yRtSfzZw9Z5of6CGZKfYMR5yS77NmQCfs8g4xR3IYjuT5SAyjRAhw1r
ySwP4qnvYALvkJ21DJcnp5t5e+S1sgqGrzt32P6ol1vRHLt/IoC5V96wQKDw4Fa09s4WGvSsZDD9
2I7jFzGTe7pX20CUXv/Obqnc1uEMg/QoBv2lwVrDLbl8fUHmIq+XleA3fAsWirENampzdentQEaE
ERkZ8tYJaWB7hCW0P03gEKDSTESmfw8HsKxupHR5w2eeRF2LM7KggKJpglN1OtO9tt6pHnM5x825
+6d/V19vu59yiVw8r71VXWlL5jfgxlH9CAGRDcpaJGYV+BSfwx73nYTePytsrTuewD41kv+fuLr1
e9o6dlTkEwBjq33EHX0xW0VsrDSXvHsdZIGnrpgCw9ARZN1PxwT3wjGPdxge006dsLS4RHiB0MqF
xkHga7LB/iQgFJ8QPbNQeOcwFdTH4gxrHN/Z04o4a6sUWha7CVTSgnar4/8bqPlEYveUuXWTkFvM
CVQyts32GYo/aFReFTXyl1GPmUqNgVhExvn7uHJeIYNE4fQkOvHQRdqBYiZ4h7eOuDTgbf2Gh9kN
IOBrCf1K3G82+43Dv37fsW21S/5/SLUzP1wGzYmw4FzXatsdSXV+5l0w00ZOPWVoBjddt8rh/keA
F2SHW6uxi09d9BNH6ZEyOlMuQB5memBYuoS2qH3Hh8AxXTuC/zO1pCFZ1iM1iz5IEVdIpU0fWAcY
tMZZmvB9CwVpKi7el0frrMHhnxG+pMNFdcv9LJ1tXIcxxUY1Cy1k19GXLImSRKG6jFWFMfYrqKkF
elh5negQCKJftIpM/j9cTnnluSBphkQF4akcN6fLkkNQ6Ija4+p2Uenm4qDkVOEIQs+S6Xk/mgqr
G5vnOtU/Syf0TN/MksS5Xbs645zkKBmzuCxmlQVvdM5MNoGF/PjdM5Oolj0bngzcv609b6vT9sVg
egNnkSwjrWRdJck47wa85FlFXoxhyGPkYGajETwS1qYlzm9hDGqtfvJVto0qG4iI9vF65kAifJbz
3Vl+MFh/1cT22hhNi5qWjaXB9IEobSRXCnf8u9zL7oqPyZ+68oPvJyb05Vvs6s7U0RTnRghAGi/P
SIDB+kllpWE3csiBGzspriOZl3KS2KDdV5fr9CMnK6PkQl6/thqiT1b4E2Gq/xrRaMgEn6/wKdtt
1IdVYwBrV60BEYTqKKjMk7JSLIrWSrFTGCLHU36He3u2+HCggVNrsVulBQXdW3VsojFvqnWl8Xr6
akovjEJoqewcl9ThjKIunr1F7Zb7uT+MF4ZfxjKfxgav8ERbIIC+vVr0JH2LyBv6eDEm50F8LlLI
qTAnrGDn02HLOawhnfRWxi/pMWGkM0CzLwBhGG0XG+VSb2ApTWE8AR4WR+4LgLwtmskxY7YGHPFk
vT2kO+9JMe3DURW50VBZkyHG0QEwZBCmwloba6Ag8GZwuoO4fIXia9PoFEec+3xef4dVlPRmKp/s
X7z1ciamRFOxi2zmp8+TO+8DHCZavEa/kxHFVJTDd6MTFLJLKNpF875WyTx5NVPEabktsbn8P8jh
c+DbmRPt6F35SKn91N5zdkSi7FQRKyv+TBW/I4A7OUxzzad9Izz0P7fc5VY9PYQB6qbELSslV/P+
/MCT2f4n/U5rdmCwJFunpgJhOdMYd0SPILn0rSmjRDPunTXJHeCvb08k+Zleb6PyLMgxdeqHY/Pq
X7flYCBsqG7Q8tL1LoR6xTxzgCkjOuETkko5gjQb+WjrT/m57yppOlP0b5D3KEwenKuaV+4zfjgY
gxSMpjB+Ca0LPAVyGARKz7MTrf7ojrtC9au2musoF0XGF6ec8dZQRTuCr1oJ3fAYt/7dte3kJgQK
3ZSBLWGsijN/mToiUb2Qq6TRr3QY3Yb3UHhRt8Y3JzavEo+q17ZWaBQ9FvTJaymVq7jFxNIsKJWa
p4eJdavazIFPFHyW+ZojaTZ2qlmhtw+LMiSmSE85FKrwO0uswfZ504ojeIX0hp9pXaEMBjYusfao
6PPqOG3M0/KQMJn2yW+lLYgHY6LeTSzYEzXG50u+q2knmDofl7pih5oIrKDM7y3E1HXQ1TglPoK8
Q1BBo/O0lgWVEPqwkXrMx8f2o3YJKomumI8lOIDpmYAycbhAPwWfjMEtGtlPPpMmATRdT7+trDlK
CCodQAZcXE0nuZ0F2sl4ddh1LCBhQWFhWr8dC7ZSHdYwwrSF9sfksFr8DlHMCorUrViwP5Q3EWPB
apFiin/muo4Dq0kK1cxO2A3r5sTmrguNHYWN+h6TCgybLhtSn3TWmjv/YPn0ooVkkwSg19aLp30c
KTSywwRSCL12vvWkadzbBK1o7SnrhakMnuqd1Ga1aHGPNPXfvoyzhTI5+ki4Msh3gfcnl1gStbsN
769U1JKlWmj19H1fAwbcEYBn1zFs9shABeTrNNGLJsgucSBddYZ2HchDNPd0ZEDkO+CFi2rbV+az
boUlt5Fnn6Qkku3+67g10UhNeYbYUMjGh0heMYVKRrg1moT13LK+iBOt2iTe9UwbDFvH33uGQzDf
TL1wnWLyZXB01XvJEOk+UGqF3APyR/GtVcxsP01s8EvEVbh5vCqAEvwDyEHJDXcZm1W517lrrPhk
JgU8QuI+IfsMBI1egWNa4VCjXJhN+C0t7dLIgcNQpsnXwnmpv3CqGufRmfL56xGl4iRQusBGgFLE
24z5UXdFvAmTDs+6beRoESlG0R+OOak/+uKN8T5HmGRHGudwZRfyHQwYa/6G5HsIMpELwAvabmiK
CGRB1zlEqwTjXW2UjqTXG1tCDiB1M28Ofm/KRp8Me6A0uYkUBmirYjCmw0vaivyc7od+TPDnTCc/
kOt4tNscnzllk0gpTrjaoiDAcJNFlCqgTLOr7QCR14kpHbVrbFNt4pD949rfp36E/HNuLGMmtXQ6
Sps/DwDKIl7+C5evT+qsb2/6uz1PhiorkBHIjnLT45i7z/gXQzvmqgLoHWtWxvMio26PdAN6+wkb
bbkH4BG0i2lVu5Ai7jqlF0GUEed0NwrjKKjAPDlCArF5+8PSD2mMW0ZBS32pkDVo+kUFuJ3M2+v2
E5M3oU5OI11ydLJEi0seVj43L5Cf/day+QLJj+Jk1IhA31SxqhwUj90RNihcZ5s5lYfARab61q2d
cFsbPyhhFJyqK3hjobrNyMWcSYY99MpdJju3Od39wWaAWtewZzP5L8Vw6M5LgNjglaWr0NLubCwm
17r6Ccvt9fNxOp173hzZBH2JgUUFclu62WIBnbAw07eV5+lrlkSO/4umfdxGisEfMq4kaGfvR7s8
WglIBMkRLW66Vpa991Vheny3M9ixNnRAKryijVR2ES3L6k4c7HldY+IpTlBHT8GjH9tV+mhCakCT
WjTmfB/xKfJSsJrNbfskmCDYq92dD8TupBEEcFqCbOkaO+priE31CEFn/FSmlkF1rAm736Gi7pMS
hVKqzK88SaqMu9F1plju0RmjmLUTDKaabjOMI7HQkYok/0BePCDTYElCSmG1OfwQoSULFHa6/gTg
/D2qSFlqDtf+ClniSW4U0rDFeiNBnFZsmZNGqtjOr0uQxuNT3NS3NySJNK3NwgMGOEvHLRecJVmO
AYefi6WfmLjxto/ftpB63zHxKhkWhgkwR4a/T9ntUT8O72buExnQhId9azXeCZ45xEIpkqcWSNey
YuHUJmbYz8LQMUedxnJUCTb0vbgwpUxaBbSTTDPR5qmlU2ZIvh3G8inf2oQ01MPOyyE/YV8vhaIV
taQzjvxDfhvEQrHqN6Ej7tgZLlBaJ3+flqNH2BLU+cQjCkqhRa6GCjxyRg7vrj1KZORVhgTDSfvm
mwxmSShkRO2h8c/+I8EVyV/I0bOCRQioXrBktj9GwgssDgNrnA0uMyikxmUi64EeZDM20S+6/nye
lWHszaGkq0Zno01qs9JOdVciKfi7M6QAMQjOql/QgLca9UXhKaJGy95gqAH9H/fkioS8K8z3yecz
CLvzKqNM2NOHQAS61wmpkPvk+DipamLLDNEUWaMztjYRegL7/1vzGUQOoC5o+GYC78S2LtM4Ft5K
5SZ7NTHbHm4tWodSTjScWQxk3NBEwWlMqE7yauBMrC8QENbWTqu8QLVJ24XbRJ6msNCyDrkzGRTK
g4mWrshLX8MX7wHtw4rZHuccCbWh6qB9UsT+IWZJyHVFox+ZVXiujtbIjJapnHk6/dKEpcr/4HMA
sHxvQMtWkFWZ+oKbcKVj4VZrifZfvqwQSLYqZSQ9ESwi43xiDZWCT7tqMmaGX6MMjXSbl7aUKP4/
blxfl6JmsOTlAgLlcxOEkjL9TQrYhjL8Focn3AXZWQ4zp22PFGKWQ6EJni5kp/vWnKo1tQw3TlzN
05TCj5VDMVPWGcEq7ekXg2V1fQ+r+rE2dVJrJlAkJASJLzYNOkgGxQzsOMmQhe+qShmGJlLHkxEY
5NuoG1Jkpqu2fZpei+rnBmLx+x3loQNq0rGI3CQHKpH+YhbUfmh+cBgCOjVTn5MRLK+m8pnNXqIO
quoJU9ijiFRFCbfLOonuwDWSKDw2EMr3V1QaooYHFEuOTkd0FYZhx0/jXGlCeWvy2uNwJoRhRbL9
+uVyXXVPz3XNQMdfNjWibvkxXiawD9WCqfyAtlCjlut+ZRepuXlLD6ND9LxRmNsWWe7dtvogk331
HWzG3drF0VFEGE+dqjkDh2X3og/NrYuKR6lSj8EW/lW6D0n9RsaI3sqJNjLu1+KGxZZR4I1p9AZg
z6JY9z0KjbRDobfIyww0GVVUr37Bq+jjrtdKqplOOvWFWZz7iWyw9QrZsKNBt3aiMAcyaGtI3xHX
a/psJfOQfEu8R6+GZoMZvCozZqPSxFf153WUX7X9aoHbECWXTwSmAi6XhTjMRSeeyLJjQfqxKcYQ
IZpReHY8gSn8okUnW/Y1MxuewuR14RCicsLwswFq1cf4Yadxt0RybqiQzhSInCba6uN4dw2gHvwP
4Wc17jnHUnY9pumAn+ieMr/C9Ha2I/dwgBuYVOuLP/61ymLm3Fog1Ur5sOORhqYiKY5znomrcmuD
TUB67KDQRlVVNGYuxdPbMxfCkcA/eHZ/oM7XZ/mogL6L55/4nh9l9AsakyDdP+dAiujwI/Wd5Eck
XaPdX9/11wldZBBgv3i8gr2dA7Eyj01M3LeJwX5351boBEezIxlC6nAqniexOJT64aMFha2pYiM6
8Xwz4G0Y4f01dsWUInxe5gKwYpc43k2kXURt64TnITlT/r49DoiG1iPaTjz5m7CUSlh/qh3HZQoj
0g6xfiyqAvvqSL8e/I1b2x7NHQap5seTiPH6S9AD5IKk/KbK+aUxfjOZlZG8fDib8gmXOeus7xh+
359IIkYDH3N1QwG3gdRILDVmGRzWX1j5+iBlPw6xPyrFyqQo0ADUMU5UwH3tef47kEbv4h7VGtK9
FSQP4fOqmC+gcjeyy7SEURvRdeIsda5O2ec3g7mjSkkAp+nKhFfvwxo5dooNRMtovijKEPHDa73H
yfMLxSMbiQvPeF5XsNiPIJD/u3Yj60w7ND/Uc4vQONcH5kE9SRl0pJJcWPpjukFu1q5M1n+j2IMV
ohdH4mw5Y897Wyxgr5xD1Dvon9KBpg7gHd61A7ekRCr7kXG0+mZZ9//cRN6jj6jgra/QTlU96pZI
cjO7A21JJiFh5/5gb3PDPU23T6HdlqLgPJh7HSMODVaApN6rsJuFAxcY2pxzA4sad/bMCJ+NSkXJ
cUG0ePAc0eYCF+449Z3bg713No9QIbWjp4CUhs7Ct7K7aFn+QsW9MDM/HJxAmPN2NEa7wh4r6cYC
3q6rlqyxaBzwe+ZGZCRXkL6F8wSEChOR0iGh/ONmcAAEGGGawF2wYJMjGWwFLKCFDbEg9khFfGWr
IaGcaxCdguWCQ/bwEpAzbcPPoWsxYwjrGKhXyu2goKwKJaTn91fzI1mPMY6FDvYxsVVQRFwhK0Cr
srCFehfqZkuoPg1ipj/YR3h6Bz9aCdX+bgzeuA+YH40JnDhuXo4j15nXD2LZ7PnN4I6QFzXGk3lb
B2E2Ajk2MQU9f+c70fib+jJ6A4N37kiO3UfD3MBwEkrdYD4AcljF6Owf9gc0dSbKmv3PSnFo+mKn
TX9duB0Xk9TwWNBfH0XiOIxdsQHiKpvFNiltHrKGxwVlvI3mbZGLHIJIXKvGTBcGCtwSxCUu/wBJ
XvoRc4XywV1gs0tE8/rVjUAGsKlCXqXw/X6umHH0TKpowdYdYhGG0ZDmon7IQgw2WVPJGlcg1eHC
9CuNqkSGebeLm3qAPg1dy1sqrnGFruFSJ+Oav1TPvL85pQ4LquZBZ48DNh1mj7Kbbz8FX1dtl29C
I1q5ZKmWDrJFuQyVjiSkB/vvyQNidLug2UKKmc19QD2ZfEzwnueHRrHD/LFlNmVL+Y5Twr1N1mPX
hf8mzRzcGABCE2aUdhrumrqK1JEX1fQ8xbLmydNhboqt0MNlIs27C+imZuLRPPNonmRdtqf/5WN1
RvdPrZhrfLwwdjWra0aEIiwEGghOhk9K+KYBJ+C2S4qtARClsLgs/W0jUAXPrD7LYPJH/y4U03vE
ne3x4+RqsixHf7ePYJ3XYRcSImRZazZnsxOwNtVim5+aWcmlCx3blvtIRrxL1AcblVuL/yIlDblh
Eto8YP6EcEu5+nSI/SuOuTRvTy7VsTY0G09IKyjOsG7L7qx1KXE18WuPWmaeY7WDi95OXf5IpNso
6C3u375BIFNJVKfI22oSbo8ZVVnRWRwrPQ240s+zGDfqIqEs9zXN1HqpFhHiXOR9AA/EXESl51cn
gChh7iP3f6wlrki2GzOPeL41wIIcpwlGa6GDWAKJrcB0uhP4ybqRc1cntWje1eFaY3fweuUvwVtf
ATArnorXnJXsZohPfare5KgMIPkA5miOSECmzvXib7K3S/DvZ8cuc2NagemTf9K/ZHcNd8PlXfyl
SrFbYdkRRtxNl4Nf8nLVpY5Z02hSYD0V8Q1vHp/1lxPwK8ntqQP1DDDSiWjYT3yaJ56jyVs2zbpS
BaeZb/gYxkfGT6oS7fUyw8OhT4sbI5LVxCC6taTJZx58SAstJ9+TQBIxrK3uru4SnACtOiowpgU3
T2afITjjmHydcUdLJMYMwWv1LbyN8szb6kJJhYm9H4dUZ/5EA9Pe4Y/dho5bC0faVtlDZYIxhEvn
f18JPDTJFhdeEJkpTnJF3d+pzK40ljP3gcRVexetVx+J61mnvMe6k1RHYY4vEPT1paTw60aT4lde
lsFvisl+lz/Z5YvQyg/Ib8jcL/BhsM7qpe7nGcRl8P+5DACvV8whiOyi+EcAQgRrcjHXkMsLHHMq
oA3+2EZd0Sb7u1nZLIX44s8hCgne54SAPkNB1akECqhSTZh4bANXT3FwV6mrhJvB6cjP4jbRMqxZ
gQ44PPe3mBuBJ/PB2/4RFxkzsB+x30o7O7NFUS/UVvvpABrDh5vl0qn4ViCwy7y7w4eRrOq408nw
1VrjPgTD/k50bC7hdqY/O5W+cIDpqigl7GnZJ5kJyUKdrAN90OXvZHflZROO7sXna8AWb94pJrK5
aAUq9FqnEjEOA0/0VHdbXRsxpxxYHcqIbwzHTZmx1cIG7KMKG3n5gjTnMUwdmhQvesyfFH9H7/gt
/AK/mIZcjFMVJot9QCNJr1DIJXdCkHwQUftaku1fKmo1L2XI1/g0rbQw6LqEXbBRxDg/98CqUr43
iEEr9RQae/fFuBc0SoQGVp1UqKsCjtM11kDNn32uG+lLJDovaN4bCSgzqOQw24vtNd01mwZv+uKr
eRVsQhV+eHlbGnHujXn6v8tKAcFZQF8mXspqNE6E+vjF/JxhgiIA9rHxzDEYx3Pvonx5Bq+isJox
wGRARxLrEIJzh2CG+BYrL/amAD89gRuVu7zotAHLbrAjnXnkADuBx9tMXf8AW6V4xfwWun3TFgF0
BkoICZjEmehIqsXimAFZLHFaONj1ewtGpiuVZbSo1o/hqLWNM3eZybXhwECiM/Xs4+SxobmaL3gM
pbR+rHIXsNqmbCcUHj+0BtQDfy3YjTwGtbiqXEoZsGJhk+GyOvmJoSv7bAxnigmvT7UIjfFC3kHM
8jLlHxVBxabphT7bToQrPiJLLO3otSaqidkxDrv4mjsBhyCiox+rbXwa3WcpXfW4CTpPrV142ap3
KOKgrn4d9Xx166c2bCWYDIsqTd9kHB0O3YkCjzS0M2sl/bZV9EllL+zg+7aokVgp3zwFSZNOTC+M
qfgAPA4UKbiX02q7RnlBvpnQ/qUP3l5s3oyldof5rN8K22JKtZKoZn29rXfWjmg4O0N1ekaONcpY
+GWUMfCkKc+ULY3SNX4x9DflEVRjVtXBLuqsJF+Un72GXqPXy34sgQML4JUKS+d9pQtbYczlk+TC
USrzHIOQRHiziXooWXR3Dq0rIHBbRkYUCmVMfb5BaLeVg89ZJVpA7QHu9PC2NoHUBMIUJsQMzekO
rHOJXKhGeIDNQ596Ox6EdbPLX+ULqQtccX7NRfax+yawOxjduECQVP5Lmn+xFX0DR1v7KxfyThjq
XoppT+lcGAATWmiFpyMe8H2cPOhuXL1ZL4w6kSNZfRh6bhcIEmCCIQqWn3P7TnlD59BMnI6K5c+o
JjFSwb5XQz7IerzUgN0kBWVBMsQSCNmNhCZPjBSeiF19TptnIh8a1i7eyl8AGdBKcipz7lkTCY/7
DJeWr9JDdAHJhAl2fYwcHmAdHGqYoyivm3sxqj05iCRYqUiHz7MVHReaFghL1aj0o2swxQTswQdw
1RP9kGCU8zt4P8WTrVTdBs0w4ouxqGx20ZDBuPuBvDbLPQH8/r36URfeKzt5ukrWi6T6I/ofUFRn
sWxBYWfLwp+0YZ38GicbZq69E4irY51zWYGJ4Eq5hbFRazBmLgYUCrRRchQ0lykrcJHUvF+jsybl
lyCck59sKsgP6pCdp4tQaR+oGQq3e9FK9dv3NM42LkZBJ2US4/O+mGoLqeWZsVWPJLx1vFdEaFV9
5pRpUlXzQvg27B9PxiwDe1XBrx6nbfYYIOpI3Sok6qL5PxaITwx2QLibjpGNARtvsxexrX5amKxN
HsYqFJcib1e8QxJFoFxaPSSeUfojY12DMUAa1HkwwpXt0Gur0hHc/0/MI1aTd0zQJXEqeUnXL/DV
U2Ei1bC2JjDuV68HW0+D5vn0v83Jr2XatG+dhA8m61C1uDApDZGKZnPT7uSrvDmG5LqRzFMGntaJ
1g7UZ22Qy/+GbkrTaQ1aXS7UeXLurgV1PHcHVmhqYezpLGaBMF9Ujbp126iYA6mWSfC2fxwh2uj5
ccSXIniKe4je8FPVhodrF47lVhcSVzYVE6dQaa6VS4EocGPJQz5G3kWyxfHM9el/QO2hM0q9x7L/
vX6XTVKC9cZ1Ao/SmxAC66TQCpxhWeoet6ictDrBICcaXun7XPerxH3KgSs3I5voh2kvuiHdyEZF
VKouc+3Tiqc3riKuJpQcKJRGg4Sm6/DrW7p1Ru4BbUGzYncGnbsx55nkGVqePvmCVGt/dgqxR54M
qcxkhj/Gsuwhusp1HKWMuH8aDEv22KW3OpQ1DQWl/7LJ1fkLjpH8OYnFr3XsikuecoGWlKAN2d4b
1Vrfu0/2dT7zpnMcvFHtwfksCT/rVfFYjFPvOOzNYk7KCxxm1kdu7/d4qWXxRPo9TgWXefSnM/zc
e8p4MvBXjbh838VyBYAKM8eC9Ja7VYjKk9e/gap3B3uBKUHJBA+ep2RV9Q0d5CKW9EgMuGLLzULD
pZ49F75vj9B9QBa3hNF7QrMRx/VcAMHokdbxir/+ylLhJLz3tIb2djuosZyM9nGMgeOKb2pw1cwL
PwzxwMkTUT15qIqBuhXd9PIOLiZFp8octBvWwZF6WDUcowsYoT5UPWnv9DTfcjwXS3vRf+FE3QdZ
9Db0CIqaR+Yn+HSwOFtSuUUgD7axAYLOVVaKGEZvtpRLhbfJY7PoHTZnngFSr/7nqV4PANei0HkA
YtRixKx2g+yUuZEpb/X9u/4MTIRTtwCnHDS6YqEdKpync32SvJDNhXPreNkhN17GwSWkVaf6QJ/r
3vhodv2wHPgjQfPj4lQuooX+nWPnoFiUxVCkXcgK81rs59TAGO2k7h+GIYVdGgVmxWTwQUIyA6Vj
53LRXUV+90fg3dg3EH9wfr/zMXfuo68mGNh6ZyJQpBX+jff1AppQ8rACXFBIriLdGsLbeTs4znSK
WFQIOxe9+5i1RLSRaJuTjXjXtDHZv3cXaJDl4A24g+XUGSdjnWh+zxK8s7G5Bw1FS+mouN+cczSt
cTSlcn08u2fIEmMksbmQX6yENUv6XYd/gJ1mm0ZgnLZCuA1tVxJI/wNIpAvmFApccKRHAHxy7UB+
JIsIdFUiP0LODfC90O1Ey4ci7PQxd9dgLBPJz43luFRP30JfGmlkyAIR6qvBvRhUS8Wi9/zVHd5f
Sjk+rqVUbKAqLwHVjrAWFzmCghJvrggBpxS1W0avQrgOUH6bydeVryncnAgwSDDCxmX9pcaci6Dd
wNsg41liqbI5A+yyHHbiZgXdNoBYQVCJY7rFrN/mLnpDu7pFMlV+GtgVdz47AGKCYS+1SkyHmsfv
baXyC8eIX1zRenh7r/vz78a1itQDMPog6Uj8+4Fx27ODN4ZkQTGExuZbpuX1K9ZuB5SznTn8dQQH
YVrq6d9OzMHBrV5kDzQmMCmbGKl8er29DTlJImw31FqunmsS4Xo9fGyWwO3ES5yGyMTpk0B5WIRb
Y0SKbjTROEPD5CkoGy71HGOxeZZv1999gOnr3YKIliTGlemYNqTMDysX6ttmOxXur0kOWyEdiP04
6hlOYF+yDpJWscCcj4gNna91yCBpryrlaxgayGCGfAfOTUuUWb4oia20sMeuC1dznl7/70LHo1Sx
L1+1j5uE7ru4X1VS48tV35ASiVpfHb8c6OEbZtVZFnHwcV4sL/JJyVaQh0zR02Pe1RP0G/xXmEgf
Z+jcwlvyc2bOmkthwBtmqbuIE0/lVRfRRrFAJ804KZ4oMv4fGgFhTbctbSYhsHC3DDlTHwetsDri
s+wNOusgAni7T/Xv6HHYB7o22Kk84pp8lnAkhUFxtAwWfLNreAALf/lVhlSFnkrPGMJr/AqcsCFg
iCVcb5Oz0x878e8PuRoeGZSXMg3eh9BWBRLhbKc2TWj95nnanZukWVft958g3A+KRUnyXrvljee2
1K4QqHo1ltobWdnEW9ODk2aCh2Ozz/IN+wHQOwGbwyfTgTtPQsQszhin572bhGVfYf1bxzOxfeyW
ee9USoIfhosBkrrN7DwIH8n4liYaqZcVh17iqRHwbWM/4qKVbQtCHmi9PtHORhAnEviqrr7jswHA
zYCo3Fc5AFQhOLTe2xocZ5xD+N0mxWGefpABZRicIfGi60358H8HUkU6adacoZrob5Tr/NPt5+8N
+3q1RQdma7k5Oq9rmOO966STk8/x2x2vec4SHfpxfzZN9lQZW6i1W1Rh0Sx4MbSlyALdM+huxzeV
yGl+xD5MsvmcCB0ActcvAZT40aQfp04asvUWwhWq2nxKYHYwanqU6JKxArsS60cCU8EFIG5m3xty
kh63qBi8YIFVtoeWc32E3W7jsvnTnjzyNyzg7vVZ8/T6xqWhNaanIq7Ck/IDvf9dcaS3U431ucIC
3ncYUrVGw03Xh0cIsqcnzJgss6QmKldwG2Qg/uWUl30FUobXcBC6cSKKf7R3KYssBgIM1/iI7Aqh
D+JHOjRSud9xFia1bkSqxYWJMwKF6jXhv0FXoaEx1P5ETgHbhbcXOU+wION7vKVyDvUoSUKwtB0o
Spbfi0kiLfYLaBSwpKOZ/rmiypHzy8e0WEVJ2BOD7aX1wBgTQiIHG3bbS/2uQ9IyfKVCx/n5/uh5
mP2H/ZS7I/WQgpX/IZtI/tpUp3ou7DqfOuRQMvTbVy54aaa0WkD6Zey0xEECcNQ+ext0+j/3N5rq
Pjbg4ZBexZK5btfLPi6uDWvnMSZoRPMR6IrAYCsQr6dZ3IsuyQum6EjDeQYKOLXWepYlboiOPOCb
MZt5d4MHMF8rIMdC1AbysgOu5gDMUQ1oJymGJbrr/1WA5zzMHvbIS8PQ7R0WVVDUSV95HqkKv05C
lflRNxUBI7WZHRAUffrU+XB7omYW4sBZiyLGCSe0BZwMk17C61BXFJnutJgy2vovYBOjhlnGrZex
KCO2zwvgWJQIpxxNvxDAaHACe0JLiklnFblVUcQpJfud2XsmGFrFNH8hLEsTCNaxxqK0np9VVjaS
JmbjrcUuZSUGeRe/hec8zNOyxtwPGMmAr2LelXg+tFWdwZAzoTsPKDmwJs//bNp0s7WKcQSQldoi
JEJqYtT4Hs/Z9zGhjqQRBaRT8PZxiyC7hXvwsHHqEYlYAnTGO9kGdnR289yTAxqjEWswBTKQJFOt
BAlHYIWhq3kKDZH5EI+H5hcEsBGKBWIKUaL0XC0V8D8HJxxYDvo4vGDuzf/xbRK79si6lvOWP6hG
ofBxAIPP8iz1efZxVKli8EQqAXpVQC4T2xA1eb360WzPv+pO59mlZvKtb4/CtGda52rG9owZaBba
G+2EOdxhIGN6RqtwczQG0sqn0qzTw7GM8l1cPyKVaDSCYKGs6zgjblA1Fsd0KpvawTmQDol6lYGK
aYnkdC8vdn9Y6hGUqQ7dXLV3EnSmsvapXyb7J3jrguezOZovtOSTev32wmmkelpB+di16Vl6usEP
UymYBxFHbaP94arImJW7Y70I77CzO2/btKyKhEP+gnPpAFlA4/YQAsn0daMSUEu+DfWdlt3dc2bo
yCYjiYrSlrCu5zMGIIkm0juDj6sdLYVmrZ6KlBU03pVyPeofL1D9N7SGjUJ+F8GLFTccl9/MuW8P
Yai+oxwDoPhf2harPMZJY+w2aoMYpTePflPmuQQmuBhrvoLLMIWkdSkyihvYf3YbcWnJgo8+YwwE
ObqCSwy8ZFNvhNecXC9sDK2jduzWhPeYt15NZlXo2uRHX/EStqZWVnw653CR6Jktn6w/uEGmiFZG
oFkRGV8DPhrrFx9SQwTrvcUUstY5MtAUVJdCYLvQvbU2jllGV/hDvCKNwE5ya1DlSKGHR7E4pIRB
I72EbHDm3OzKyfiMCG4uDlp3BPYjQ3fMgSRi1r1/LRcnf7y3C6ZIy6pm522gRoliec3jgTgA0I4Q
9E8VLC+ENDqjER6h2Jt4oYO5fnNDqR0+Et/WDfRsNk9A5hrr+o5V3AoHiRml2OUrC71QF+WC3UUP
chHVW01/CaXGAVKiDpy4rbY25yUpd76l1qx90gW/WPAo0iUbZKPhtPbsJ2r2eYa5jSzEp7hfOWla
SIzeoK3074WbxIMx6ejtswmdPknRMYpyegjqWkMFZmIB7j/y5X/eg1lhuFJQW2JNeASXjTVc6RFv
nrQvoHkwzUQCyPXhin9pWTshrm531AE1/wd5Ip8PGqt20GLyHQ74qjMW79MIafWOpKIMmZTyXNPX
9aOdqOfkRlrGoEWkNBJaAUyaA5gsy1eabNwCnIZT+6oiu+g9qOhJD4atwrEiA5EYhFwjPwPkhLUN
XEfgWw12BIUyC8mYyEYLZtjrp19ur8VhkoEVYoVZ1jFCCZxB/6kp4HHI5wJefDq5S/8oG4oY8C/L
VUbjNuEreznmrXmbCWXYs8ruXjTi2L9QoJDn1tHajMddJ1NBEZeHhVMZHuk7p896wge6JL6Qp8o7
k/lpkvP561YYmvpCQvSWtM2ki99c+sw50YxC/k96Fg7jtXLsxT8ftXQ05LFHx8Vq2Q1Hu4DsJfsC
/UJkcQM413Uc0Ci6ozTRGSt/k6q3yuDvZRT1QmnzioQZmSgLP99uYRbF5kiRS6Z7d5j25btwwwp6
h8td5SJ7yVCgXJND5XnzQXrUS+6MG8Ng6qU3m3+2mVqMPXOeBAlhLLuiiQRAHxLy0FdVF9p156SL
1W83+A92dmEmTnVo836PZQpZZe5dB5jATCTknQNoxdu6YASku8U9775TzWxASfWwuWn6NfcXY9oc
dZRdvuYk97mZsNFwWIFIZ5LrnOQ/Y3Hh20xfPb77zxFBUbDD/0P8G7mVXsw0HEFIQFrSZ/rpRp9H
SHKgKJeirPDB/UXM2KRU635auwBGG5FW5+EUXWPqcy/0xXBhIzMThH1oY6hcd5o6H1zIEbbCxTAj
YVhChWno2RHp67htyVk28NUvakp30ay0SYAzF5TZK9MiYnD+w9gM0XGmTw1VYdE0o0SdaT2TMbwj
GCFUJbfJp9+wsjQr6UZy3FiNBT6ScPNHzhbmyFkRyZhiLkOs12++G43S2LlJyuFgD7vcgf6ve5IK
SaGdTerZVS6iSIEBNbqCeyuFRYhb9RlNIxCXGWnyFRtiaLNitRAyrpL9GF4kBojIunz69mhRvIZ8
xZBIJ9xs05eusOQTGnnLPzGTsZP8JUZ3rP2egf6objn9xFfj4RhesIh4DCt2W9wcXdakV17isNfZ
i6w/mQG5LrdqR4mHKsH6JiJV19AZIBSsJo2rQEAUV3EtWoy09DunDd5rRAZGHaKrBvnEaOk0im8e
QglalkuSpkBbPy9fWu8w+vOz345kfLPDHBDzq/lmPg05UDRkjfnMqF9SFCk8LjEBdnnFm+jsvst/
OVm2nbmTwACmWdclgylBO1kFIdMNMUOtlMP/o4aLHH+fxTajSCUFyte5bA0xRRkAUVf3z+LwYL9x
ApLkdpEs0jFdoz776OlsU5pVgBoCXvmHJYfvhdP+e3jIEnnBkKWJkS5IzxSut9CvmW0i5jPZRBmY
sXRPNWKU44gEARkSYSXtln7bLV5LVSxJKKX4i/8XkCBWA4EQ+xhx+5lb+mzHJY8/KbcUCoSmhaWd
uCR0SXelpHnxmFnUQ2sgsmiKPivzBIEA42MVgESYwE9rInrmI/fJyEuoRDb6sNlxgdgKe3HpwuSV
eEPj7W3+ND9ZRgdNhL6Fdjdiax/cxmH5vli5wxQYYRSqu5Q0kYAEfDA/qmX1GADGmP8fUsCMRgfW
ckrsRZDaNitQOz1rnLj/NSra1e8M+L9pGmF6AImeDpxHoPbiQQbKZY0ddGCuc5u0Pe3OGupd40yW
XAzSlbhqJbdx64ukQO16pqGWm0Oq1ox3L8IU8HlXZV9odyRr5/oDe1gQavas0AV4nSy9RgfE8xzU
ha8xAqyroUZWjE7JlfjEGnYDVKi/U9FnodKuFUinkYbq+iErgCvtGmeDBKS2PhqBNIPirKKVdb0y
VMX9D5YApIC2soLnZy2hPnmO0z5v+zDXVKX3TdWKsuxhsBhV/FvfR5NNQx4KjvN/1M/Gh89laArG
kU1zD5u8oHm+DU6S0c2A+Ra/b17fBlieKkjfeJDghqdB2FNWVszjliG04dTLibyvnkTY2r3INkO7
XUEDL6y3xtzjKYopSuhje7o11BYbQyFOsOGA9nSH+yyFQXeI6LjOFbD1jCCoPyCyZIV9TspFR/Ye
sLiTD5AWgg4UVmPACEdC+WqhVYnO5MAg8K37OoQqtwqxqpa2GfBPM9qzMxWAXAxtwTsCYVC4iX+y
Zt8I7V+cT0ppRNqoXFLcvU1asfUQkQxJatvegC3HUkE2Z7GnKicfFNEQM4eOrYmszs1d/LT2TQV+
2Jvl4H32NlvWUyRD1RQsQIUC5kO/HhRgqFCfdNm6jrdbjeKj8wzGWZFIwb0QvLYZqG1Zg0+kZWSk
zuR/G44K1iiyFJ1ZQQI84AQMFNsiQfVoaN8pcZOySdFxEGL7V8gVROW2r1L72E8Snmyo/hCx7Z8f
mgCDf8VjzJjGcve4GnY3t07KHVoR4eWtgYq1Svc8M6l7U8j3RRCRlEcogL4xsPz+9RmV8zs0ePxZ
zCTkG+8391GDSPRKOhydcJfli0QdUB2KvzMG3kuu3VAzsf1GLAGxmRRv3ZWwKfjha81DSfHLBkdd
sUhf2rEfXuxrc4N2QX56w860LOq9hLmTjEKZ8lWEhgpXA5gGOSNYbpoPJQdyAGqKCFJoFWvpOKVT
doZ2O8XTeVCp3QrcrY1JMd7P3be+n0Hw2qH7f7BiVvN1GXldDyxr6fr0+kuuNzbcmZV95MP/LO82
avA+Z84u1wC7OKqkQVu3VdJxZ3bg/DhOOT10353WmBlFKffI+F2RLg28XS2EcU+ZB3H4Cr++der8
sccAqWSCSciPAe+V0EpHOoLgf0R50wW0j285isMuaI6HQk1YU1vwA1iXskj1TeG5et/ixq8Qjxmo
6K3UgzYug1FSqyOR1uOLoImKQTJXElVxJwVefGQH1LEvULs7HRo4F9qoNpZEGf1/HEvSufucJdn5
pN5PFaS0WxByFYQ2TdwLGV5u3nd0y4MNQx86/gPfF88K3afHTw7xkkFkqWbIx/69xPkPAo1bwVzh
Ex2LVYWoDc80orL9QP7O2JTw6Zq21QCQuQlgaOS9a1vQzDa53ePMwmWldOi9i0UOklKg5+nI6S7x
WNuetXPqjYDKCfqcJjDKNWIqRLBAb2aTTh3O7uPOpxK4u25rX88u2n3wGPFKwjVR5I3L6qoi4Wxm
Xjm9x3o3XkNqjM3trZYGLuLVQ9gUFzY9TgyaC7tje2t8NRmw4tjoxgS3mkyz2VXUuL5z+9WQDJ0V
iN9vTFwyM7rsUTsysVRZyvfe4Q4waPY19sDqIYb8Ef7fdiiZYio/BeqlDbbLjiH18km9g7f+VTi2
eys8HU7uDbS9vlSWOYb7bwNWa9NTSueTSfadn4KCWiHRVyLHj6rf7icbcmJNgbNuEijno3FlN0Wv
fI0oALOxaYAyzzEH5VhWxCLCly/ynRojWbcQysvTpTN86pVe9HigDlnMFzbgFiRZHB3b+zT5Ntby
dTwGs4EhofIXp6cIJQf/E6vT/Kwrw4YYeeCCWQiRQUUSG7KT2Ol0Rr/Im41Ob932ChgeMN+xC1co
P6jT95jdlgCZZU4XlmAUCqO5iIpAgkCFsbKILGn7LMHOnLkN3C5hV/rUqnzMsrGsWIVQdh8MUWnM
G2WOHGdzpddZZ6ZwVw8dLcJCpFFm31GlKKas7DBBvYf1yOak0huBb1VZSS3KsFiBc1evO6X2kLaR
bGpyprf0hQ1CDbUkCfuQhBokPJah2siiqor4Jsa3XLqmOWyyLBks6/9kb000E9Yl+Jy16F6eLqpk
1zFLjeCIPrPI36zsmKdEeqSeuYH2f/i3PGGv+myyqlAxKot5MlHnP/7+hksvHDiCSCKil3D1DfOa
aYcrnfty2yf9vhtnpCjaLaD187eNozYW9gbC72kp7SH01es5i5xObKOio9R5e2mBUbSwDOKSLpyz
eiW/zjv2G2ckZGQmPXQow/qHxv/QFJ2GJPOKjjGuwFbxWEyZ0a++Yk9g0N/VAxTCfj9cHmnkv21Z
CKoKJwW551e8FPQLbC2ZQv3a/CLmYV5nLDasvOLnV8LQIwepeJY3T8T2j1e82MyykCwqIxLRnxDI
HUykzOcQjkuj/+2uUVwMmSWgAlyrDb01yHU2mww1s+fLyWNwSoDhfenNAoGRxR+0ZcmysBe+XK7N
zxbJhS6sYt/YKTLp90PL12w3t0Pi05WcjgcGAetODwKNCJyiRzGpTspCRqnprxtHW311lCIGaxLX
vgxvQ0Fr2MoR9NYsfos+KG0wcZWmwOOVHlXS6Mq+ED/6OCM4l5vTx2w67/tJZbuekMzKtAAtrq7J
zOgY4H74Xy2KFyWFzII1mP6moZ7c/xDK0Q8H3PWrl7niyTXjysb9Pnqw60CltTbdvUcpC4iPC0zz
XLI1biC+3k2gEBI4iEAKbhmkp0TG8gPZ5dAIseLTrvArJRiHm/kUKXqZMzwdQ8oBceyckjs8m6dw
T9+UOhsK3MltygzeN/yBah2oOoumhwRK7C8sEZl0rJCNKZ8wSbTz9T2CzFf4GKUm2wfpKBSHUZpy
qSeYTWVgzWTimuTXLmuqMTy9fVLxq9DQjIWfIAeAXxmITq03LFl3bgrKNC/OgaJoBiyqRpZz/Ivb
SAJ3RMvHxSEQ1HjkAQI3KeIg6AZS9QjKVqz6NR+Qqj09iwydBP3SpXhqaoE80oqLGElS2RO/l6d6
SMeHiHujGPShtayaR+QzimanPUsWmtg72ckhxngRzDJvSkKhgP3lzF627CKtpxuE46fPB4Am40vE
EoK9kvpcgZVDt02HTnlHut2OqzUg/c5dw7gw3c82BaEXZ8BLJu/y9O/OnplKHZbrzNRr37DpH5hS
iWIQdrM38q5/58jlIEZ9tyzrVTmUpPwlg9j99loyxormebUV8LxKkwBcft9uqMUUVkGg96Ygse7N
8oIZTJDFM6wnTiU0qb5qSCvrwatTJHAXuxFt0aZdJC8HQIYjwrhFsuQ13uc/euLEHYZoY7y+W2cM
+5P28AIH7i6AKfb17Maz5RbUTlIbjxeAnyK40vnvwMjV2GlzmrJiHRxhK1nOjqo8tkcmAvzwOXv+
ksZxS7Z4XPegrbC1Pq0dFCjTEVbJbCmeNfRpBM/XrUCnqc7XxRe6MCEfnQpUMPFBPq7T2Xfc6cka
KyzbemrkJ6zRiOOMc0mDrLSSO9rcQy1qRBLxp3zSm51Zrn3gyb8tI9P4dxYgqwWT7w6IScOy88/4
tVmkYhglXQqE5pRHX1IoaYUShZIwtEGC8jV9a1aTGRLsCoN6FqayORrBdFPYLnqbmszAZsFxYRxK
yfzYHlYJ6kRFe8zinNAOMBn6yx81fNC+1r4I9fiWYK/kfmm2ln97cJSrMp6ZAbFt5rk/2o3fHofS
r9zGrciiOq0b9exJ78GcdENGMoJTf7VIdTw0hfueM7/ul8UaYqKhDoNTci4O77mom3m7z+3Zlits
FgSC9E23KnF/KVUC9PAl6UxH1966bh/yNwuoAp4jS+3Z4JRTxNMHFsR6pAemFHSvp/s2nGZrJdob
U5lTCjDt0VNB4qQUKbL8uaaYnbYMcyIfg/sK0LW19uj+vUFgTWxxW8nyNpijUfB79lTmcZ5g1FCB
HljUOC63eFO43bo3EFSpaoFDrAZ7+Au7Taj+ckCpYpPZGBmemjrQ99jNnZuvtfYAfMtaHObfUrag
sFwcn6+fAGGT1IueD9UmWztirHjTAGHfByUs78I2Ch8TWGVTBb4CXeyR8Rl6GAdQIBhBH8T6cM6V
vIgNdTE7w8VIDM030RJFs7t4YcEUEMm7Ame+4YPOxo95+bplDOCCi0PdoLVCQjYIK29Aq+DRQki0
mi2TkW94dmfQ7OjLu7KPyk7opI3p7SeOqUcZmN1Tsyy8MYYBaE7gypNHtXnZcg+Hna5rSnHGhocm
TxvzhVSleeuZtHxlqPDTelQmQHxRj40/BdFGC06hQFxUN9kRwkosobuwFxHg/U5Zdq1UPprvM8ck
BFOfXQ1Cz6GeFjn/MGaxCjfMXcFm48lHoiqVJO+BkPN9T1lqCaUUD/S6QMIZT8iV0VGN8X1pvFbj
5KEj5jF9sEqFDGRaCtIML+pUp2q64qiIP6Y3nmo8pSSBiXCj/AAXUvbe5Nz21Ey388uDS8Fl+eCK
x44iOUN8xIhpzMAKzR8qRLWn5w6lRxgiSimuAThCWRfIGW+xSinxF0+uVRWAVCmV9Q+4RD8qg7AU
Y6Cd0KYE2KjpKKmVCX5RzF9+KihWM5G8X25CCls3R0G+Y6Fd3ZiLLbVWmoUO1FMnuRC6uAUDhomP
SlR4p5rKpWt52WbilWUD/s5s8tXTInYTQ7CLj9uVNOyUAtucYiu2jBphajpZF/ubaeyZiEPDSM7/
MnFjn4tPm2O0rT+o5ePG1tELThza+mJImzTpUfjDIWH0MHG7/B0rx5T3bp+cL3XGyCLCeSepsSGp
qGbcEdd3TBQGphZYxdeFGNDj8eX24n6f1LeqKZQIHWmeR4ppP7Gigsdx1alHWjOs8tYGf30T9S8A
o167Fv8qdS4C8a8dfls3vOGZESlkzLsTY5MXenBbQMttptUEs7ZSn6rlCe0g3W9bH+9snsNAWs+5
NZzEbZOrnsU+dHz10f0mfBYSm9NSfnSBwXt3CCMn3KrpafV2/HZ3Rz/p3fCi5jCifeghx9e1Rnvb
4fGIlw/IsSTzPAfovPLJ8JWy3HC9sakdzmX/5ZKhz3cW+H2jhyNMxHlJu1tjJO06jQ8bcAErhIj/
XfF/5PuuxEULrxdQQrfBuIKUNixEFyJd2EUykVFpdEY9LykKcsxDwTPXA3IiwM0vQ6MdmbuvXrEJ
kQCyhmg3k9Iofp1sq/rTpsuqdX86s1dbtIBCa+Aw0eBpdnTQOd0jOe/bjhRYUcOzBxacSg+eLOZQ
0QsDJWG+Qa5Li6FtCmthjyx1c80gyL44eoviil2ku+E4eB7cQg9XhzBFFPX1lb71MuVyMxES5WXU
SrV7IMqSL2eG7YjASd2b0qhYhQGh37OzzaVWZl9FEtjbghg8QT80M7WFLIAjTbl1uFe9P+Zj/yeR
0/E8CuCPfYP9swlWcSSYDjTHkQXhRS41oMtIpSyY+0u7bcOkfKXDTHE+KYC0mDDHx+VqNSN2aNpM
l0+2CU3jYdG3TBgk4PLR2ZN7IGzj8AqcnQsgl1GWY4Lm0y3tdUUwmYdYAsfbNzmxDRe2w97drFe3
orutvGPYnHPqYexyYz9DrKHiy1JtXW8UEuBIuNHc6QECozyWm6luknBzEdcCg4hZkt8Mu5S1usn8
8QyCoSBBzGWQKCISvKv3MtuvJrsnTsrOkDutQZ1pZqdm4NXwyoi0uz7oVJ6wqZfuQJp2/ETB2vXp
js8BC8zVIQsxtpndtGX9n1M+4hlBg+RG4e6Ib8jvYbISpXqjXxNj9ptVlh7BNnYMAnTaQt9vNMJB
H0XRntcAPB3VsmeLiqFpkRmJE2AUWBi2iEVGXquEE7HJ9/dOeED4VQAtirvbbfmdmKrOzww9ZD3U
hdslt4BvZ+8n/eXcr2GdrTCf7TfIEjRsyBW+ykrnvv+WUFYQrUfve0cQ54Rp9/sN69kyfCn/N7IT
1StN1qYZau5YRrTRMQvwpFBzWf+uZhy3IyUMONq1r0jZxGgy0r4eIb0q8TijLOpLElFA+VLFtjzs
C8xRdc9yoxiOUEts8xiV2xfThqbdK/3zPnTTmYzRCDvtznq6nGWECyIZ3ffj1ebL/FJj4BQrCk1y
vKXqrx5Ir6RRdzn1F6gOemPCnd8o7IyEofc+MznM35T9fcXG3/EWvFiAA3KUhcXN4oZnqgp1cGk2
X29jm/6is9csxirDRAuvIkRwszAxvVSB8hZSAQVDNXAnZfeRwf0x9cyOnkoAy1/Jt++7GVrASEYD
ADdMPr+VdV9qsWi42B+rXHFsA7fJgY/VTj83GH1wFA1+xLExp+L+WM92tlvLgM4boTx27t3OAG4V
J6rHknBpHhuFUKm+vuZZxbtB9i6TElSUYsII/CSu0QxzMhQsYt5gc3UsPhkR38gepi3GZQqoU6hy
gdy+cC2ATKZHbLkZlQLzBuxoFFEJ1OlFmHCmFHmTtFmkD3Dne3l/PtTQtUOUiIdKDfBPlx8A16oL
24dWCYO7XnOFLGRRMvXk6MQDqf+MKq+/xcFg7tw56WtRrkXiKWRC4jsmwxBLKs1deppcdz4uwDAF
ZpuczwknHi3VXyQC36kZ290v6IzdTHE9A0h5L0fSIL8TfQgK6ZMfP2ImWxIOiEh6ycHF5N5oxY4l
LDiIu8Dg3aEkz2Hw5OPQaJjaB+3QAld2N8Ez7p07gJ+c/SK4/Pn6mJZPG2OgjH2xddO7g2EZUZbb
+q4drvRA0T+8bjghoQEdIX3W+yQI5l57Efozmkph+xG/axbmSNKNjjEZY/F2BlzffuAGb1BPWOlS
WDuCeDG88/y9WCzpSEioILHFkg6v4/+0sw7lnFggb6jewVz3UEt6PCR8pBcGh3Gh4DhdJFDVeQyc
+Od0w9+391RAfYk36wkkee1gjnC6OfdaG2AjxY5d+QzJCNyALvqVA6pkm6HFkRssR9XaqoN0Fy9K
Q7IgcGWceJa87K4QNWqBhzT04LZcCCmif35LEvB1tRqFPGRX5MG+UMZoV8RffRgcr7ysg+84vIVT
C8TnE3qzIaT47f3CeLduZGhWwVXtuTRzuVdJaxMxKM8zUO48cnaMOscSpUWMKUlmqxukGxkvwSYm
aseU5RFlMzrBc2owp37rACFDEazRrWuJ9QnpCcP+5T9fPuee5Csaz6Bflzlf+lv0AXxKo6lZL+BX
FJHAEIuB0TstZ/NQvVYhz4SC6q80iZnlEQq3gWdG/dHnebhcRYBmVm1eTk8QZuBK4hOrINrIouxH
DXiVOTlh+BnUv1e3pN7nRmIuA3LsW6zASkA5/EN+bjcQsrrM2h5M41qdoaM5078jmQdP8+Uz5JD9
kb0zeT50vC9f38csZ0B27jn0fZUyl5qIiwZtX2mq4PGrqq8/lwl2nrX/arWxwqYOpbzMlFe2aoBq
hlUtj7oJy9roUTXtaG9WMGA6UEtS58uNgBjV8in4t4EdmuhHpToBICn3+JvZXqJ4us4siGXdH8JC
kq0ne91ok7uCx8zZSGhNNEUO4hzR8hGEWe29IuXcd6jWHDIy55BuRp41rXSkJy+LaEoHUw8t78wG
HACVtNnukTPKLosOecwgMw7jTMrOxqOBwyBXqenbKUOlVQzjRvK8MNAeiW1LQ3IBI9XWt13mnV+U
CxNzVirXavAJbFm2ejl2/s2BvPWq2qC3YwiWgrbTgMj3zT4aIFsawoOnf/xmtAVnUE+psjg8aw/y
jvUoQkSTVvBmrc0kYj/+GLzcdYaUPVYe8c1nX3uLTE9XKjvI+ARPbzUbWA2Uf5jradkMq9BUvz1u
ZYZFSFD94MbEw/CMABwNEn3fZZZt/zG/TqnhlRcaMl0fiXy/3dH8lsTKGqlMIMDbLFlp9wrc5lie
IkPKjBik7taQdEzZl5k9/V4SX/OwwLf5TJnxC/eUtnLdgETEbOENRfdo6QxEP8+f9eQqsa/yQgQj
rkMqZ/M7q3cQ6rktFypOcm90lQbJEvi/QI6DlfTi9MuzJY78LQ9B9hUQ3BszBMqLUBKoh5fmylYY
+OLjujKx2WCQYuDpyRMGd3bk1lXylWSn5DGB8W9T4aLz59QgVWBa0DLqdgxlbJuzRP6i6P1KHYSD
lOgZjPi5qlP+BsN/ndtCAt4hYzoei2CqpAam0dfDa9vjBNRKbjoRzQ5RQpl9+ixyH121JgQQaq9t
qoCS+pyRE8fS0jfXqvF2jSrxdsjiTKadhEra3KRO2tI5rGm8dCjLXyJS3E7JcliAlSeOhiJFnzQR
AKAABPU6/fgxQmKC9t8GGSwNpyk5TXlKd0SAiwaaZfPRq7Nv0F/StVl7PMBGJPxk1PrBv5ldkN6U
CDhYXT7eL83CRW1DKRm1XzQ0RL27UjYMOvjsZGML1Qtuy8X3w7f2x45D/n4daqb7sGQZCnl5CrLm
8s+K+Is0o8ppQU0DGmKWdAgPQ9MNSrg0epTqQzYQF7bPyRejJ/W4+tQTxQbVPnxQFWRc5SOCTsYu
aPBbwS5HDOy8YGVT/DOh3MLRXxfRuSon9ABDwZu4mEzW70K0SnAYrzmJuQODpO4mk6lhANE+MR1q
ZAbAsp3GnolWYGnV6murF4NVR1IMYv6fJ+hQX1kfr89VhEYKTeXKDBH/qc1A5uGqCs24YRk2m8tR
g04yMoyTDJNjzdOcqz88l1mlZDLcmQaGVm6FI6OW873cJNZuYnzpkURMIVgObUsVRripXX021gFA
es6YW5hHP5BkP4lsM+lLf3QFphcRgdi/ADHPMjKjsrKDjapfd0WLNfVpJPtY2hdF3WhGXAT1c7Qd
6qLmmXwCMkSdkvpP88/17EpF5cZ9L4xUboi7pMRw/wXEDCPK5X4PXQOX/RyHiCDLWOnKX7TUZZAy
hsNMk+1srAgbZWygvioUwOWZKX8XJqC+abciVCR0LKWOB37BCuV6VMsQUKXJtFc/31QAE4QaIuhd
evQdz6s5PKemt4IAHpi/8X0IQ3ovehUNqm3Xmzbaw68tSTQ/CmIhDLw54651cgK80ExMsOXZ6+/b
LmX9xwpJ7VqwWKTYqWMoUungO72ixwxR6CEdTS6Ilf/tur4A9n668if1c2pl0D36jKlM4bxyv7Y2
KmmNn2k8+Hg1S5qX+QTvTMlLDiYr83qgXZzLFircPwlTIpjBrTiH4hbCLJB61t+tSh6+eTdOCs1f
4OB/zDrK6MHCXTkXCDuulNGbASiHSKZduHXV+2MI/HSL1j5HDtI38XCBD1StBLZyi2UTqCHQ9Dll
IWHA1y/LrpGiS9W8GiwoKSX9VnYlYgTCqFpWvY6NjSsa9KkhDpTAF/2s0BpuGTGjwhqLM3uro2oB
syA5N4IrY9jGWdcEqZeOevv/asArErwj1bYTumdAmoa90CGQLSpqneNdSJDYvG/H0wY1V+Wf6fWq
9cSCnY2A/Nl01t1e+XFLVCI3KvvfM5am0CrDF0QY0DAqbC+SdYuwnpSiyH66wAPi0K9lOtLdFZwJ
kyVCGLr6C+RG14DREj/+00ZhqVm1sRpBlhn6IkBljxD7wvGwqUZtNls7Yv/5itBnpOhdMfYJD6f6
xXePBTcIQsbaMOHRS1eITOjlwQj24AEZcJU5CISiitjBUmb4JtjoPK84+PKgq5ibvEr00RlFdphB
1axO6ejkfEUiaFvXNIWV81Px9eYcg3Xl/U0dahvpZcWtOyJr6Tuksv12N+NWxh32G8Tg8K4fvOTk
LiZpNLRLhbtkaSs+gnmtetvuiNRR63CQMf2ScbZ2mTo8LJy1BLjMsc9XkvyqSpiXFTFL6p3FkyW0
bKPV5KrID9jVJv8bldGGQVZ8LIjw8vx0VfVEyYONE8D6xYHexwQAZPu6BDxhoX4wX132VaqtUq+Z
pC3KkHFDnikbTgGmqqu3I32JmqDcWr7LtvO+3Xb78uwgew/eL5nMzHUV1q83V48KSVEnYn6t/wWU
hfCZup7i4a7AkOMGTolju8a+8jc5FEDhufrj6DgQi8uunqmmNocDG+o2VwLbfxpAD9VuIlFPlkJx
QyZZB22ymQp6NCu30xM1bPayI8cwmVadIMg6X3Iab81RoKbfHFmy6dDyTmI1HN2t10WMl0nOWNDE
hGXIxnNHMCvRlEVujfVDKhCvNi2oVHq4IIMweELN2UvXDPrDb1OAchQZ7WCyX/wZsEHSR7nrGZAd
CafcN65GXVdHg249ngilCNhDaF18ZYmZNMHcCe3KlidGY8aP1Mjy7/O4lE7wlrF7zPZPRjNCSkj1
QDdGZd9PRcGjNKn45R4TZ3Hw1vZA/Eq0nxRM14Kd4Z0wJOj/TJP91EOfdyQ/M+QaBRJy5/0oakCb
/cEqv5Ot06xY14ifmJyWOf5dk0AxgDdg+xDICH2mtKU3wRqxRobvcciOtFvtZfbX9cgWAm62nid2
C7ItHLYHJjd9/AWDQp2D5ZUrMfSLMpa9th5ltc+RO0/Jc3C8H5wCWWCak3I2HhCONPng/WFLIS2Q
Hk87Tw0QEcgfr1Nw45TP6vhqM6ozHV97JY+BNyr9op+t6CkldmgNONSNRz/W99Mu3/Wu0pJlFUad
OdkiZ0G1VffTJV1Dp9fXl4jELGgu5epHaE06KGgXzrebzGrVgDmRMw88mzGLMuU/b2+m0BCa8e72
k1sZN9mFpm6UJC6wRDKJF+jWnsLG1u/SidT6Dz/c5byVvs6roCCLoh14jO9HrNRWktslKMCqprn2
NwxpucHM0TsxXScAF3UzeEfyfxUefUcJZd+Rl6IvBCNS416DN7Km/doWnNppRlWk65sXNU+x5z0S
ruu/mZpObDkTgd9mY9qRh7Bv/wuAQYigK0rXV3WDrCmWeswtI3BqkGarn2LskLxilXaCU8fuv5C3
Lon5YVw+Rl5p7l+oyTyP2fg3xTGkbh6GVTG5K2BuHpqNUxpBRyDmshWCxs9flqfHPGaX9RciCtI+
8jvXHRHYO2fCCJBsJ/2QwcWRuVk6iEI43w0i770ygU1oFmV66aa3OjH/G7/K5/DsIHBm9xEd2fzx
aXPZpGcfJirjgPoDPUpgqP/xziOX7j4dEFelvdc8rmCH7pe+myOtmFkF6jaHHicGFF71ANQw0TmS
ozqhhkIVqJnxDxvXI1sIayssYp0EuV5R7DFsAszDDDhVEg3gw+TyM2mV7eUD52HGYQYtkX041IDM
aR7ED1fT0lphwQWdCt7yAo1gPs6YpySTQ1sqSg65pZm4204qCEAcOId7hR52XBPtKzVTHmDcz3gT
gnBUUEvxvamlL/IrZ/xKoX6rmFJqaFhIIJtfydVjKQNrlHqtQ4puGuVtfqGDlS9Q+ma1F29csvyV
SbP+hy3a6hN272lUov06d4S7CA7jxiUKl79wZKpMLNA5hIKEx4wsUzc8FGHKZD8EXvpsRfAfGv/C
hneeS3wNbleAxGyJxGNxIy9Dk0txHMkeN5bvw24ZOzmXeiSkyMGOOrXqlcseWoPABU2BEKljBSkA
WeF+A6KKqmeceLB+5+AdCZ29k2rsXhfPSejNKnnK4tZQkjv1BFh+GLI+9UuJX4TLKqj/b/tRgv3s
1CgogjCNnSHvvQFpfs0RrwJomMe05d0PZroaQ3n5zPpQlNrtCqNhG3JAz0D4lhzE9674vyUf94r8
nAcEsL5hDuSFYpolKigEhYk+btMygfv6obyNnTlz3WH0UQiGo9QUJ4lqHjRmLC0L3kZztL0Djx/q
nLYf37CRMFuu004KDHrCo6Gtj8VCIIpIU3C52LF6fts4tLTYlNFPVrYPXzDIesNFohpstWQtgXr+
R0KBrOVVl0y25Bz3/bMqnC19/649aLEpdGOcPgwmACAv7SEf51mFmle25aFFCV8IREOE4Pl5aAMT
jS1z9FMxGpT5VbuLOdpCJXGbe7m1RSZqOOFgE6XK6LFUrSPY0SiZefHZn44Lyai4jourhJPhnl9B
jhC9PKiRATC4pC0S9gVQuwl1mt/O/BAXMK+ct2Uf+fNoAcdloetDArI4esgjpoxAvewy+spHsXzy
JRgW16r+yVw8fqbWql5laCyVj+GayYlPxhnmqcUg4u8Xt7abjU0+dvvr1gWS5IfrSYt26hHwQzLP
ytFNPRT98FJdLbRcNXlWgZkBu5Ihj1x0TUJzJyCBgbrI48Z6C1ADogtUvMaVKiFSL7yRNMrd1zAE
7g2xHB+uxeDKzDyCAuoIFNcE7ntZbfgs93mtuPk/haieba1pBtDaUcDHFVLlgfqGaIjMjDK4hKwV
8M9ESebzJOugfNPMSrHXb5o9ys4Ux0IOcMqjXqNYGfod9AM1WK10bj3Rz8JuRZGokuLypzRSnS0n
z6Z5qMPP6WGW76SHF7ePCNQFDfbNdO2/hltvfRHDsnMY21+fHel7X7oWpWVBGnWgatB+/PaHzIno
7CQaPzL9K/sawqaUEA7RBjBY/PeKZDJCCtIWvpHV5O1tv9NBtdoNNLBzIhx4To7ZhrSwA45/8hF7
N4kbvgRnhiPdbvU60HxUPRlFta+8fkKiHZ9yqes4u8pG/ghN4eKcQ3Llsz3RlW5RWFx5/N6DjV1X
QO9q/oTmY2qH8KibfWQW49J4lN8WPHepvztfD5K3zP6ApET/kqQN7zp8HTQ+snTN6PiQ+OlJO4mL
kcZPOYA8MBl/haOCMFGQkEoCyaAyOEfdH7gAUmIOBpYvcfbfLpFIYAZqubF1iLaX+vwloQk38njO
Ndr7RKY6AhmDq70nHgGFZEXKE4yQ18hkaIxyhLSiySSDws6TU2CO/shQglOgya2WsZlIKUxA3ROK
YLezwbOS7seuRwVlL6+IF3PksO9MadWmRikmyfdq3ALHoMMVhz0UfalkyKLh/CBRRqBGlfd+0EVs
5tbXFvc6pIvB/863Apwf8p4bL66GPMwubX8Si92gDJHqfPBq6Urw4uFsx6aedFQzgo0u8QV/fxr8
kz/eqilKtIWs3xLXE5TraJDtvw+h/bb7bS/h5tncEJK58aWt4OKPUDWyefY1S8NpUkebPXLI0z5z
XqWPLevZCqTetEGKsW39LHQc6oj1elHqIFctv4NFg+SzjuxxEJVCGE0XMBV8je/DcXyEChkPr6xb
hVo0dtLpZogjz9wybpLnNmCXcoUXfGR/aipu166UqAeO1iGW8iMbWozha6VOcUaJLp6HE1kX75mR
YwrSeJNDWMSbYaEiQjCfHP/Rm8VHScFt9IZmaxsOspz6UG5VvQRBE4kAtoz0V9Hyuj4e3qMrNApb
kk5pxg4rRGhSXrFa+9t+g8uQnEckjjatkJEP5fa2ouf5fbSj2u7GTDEEBmmAqPnwIdgRFpZByVKY
RvdAOZdxtdhN1KEpW7xG5q4M47dpf0rneHykvmZnqnVwPmQ5Dy2HL/05tSGBdEBgd3sec7A6nmvz
pr0TzAHbCsubzYo6KlnYVPBx6AJruriRMwPjgMHvynlM4MAmxFOYY3IObeGDWZz6+ICFhLHLxkLt
KBynlUVkgZQlnKWRrA9o7yUB5cSdeqY9yfFQnQue+hrr1ouuEuhR/LbFpdIrEiItej2LLUNIUCXR
3PLsOChe9Ug62Btw43WV8gDXZSFz+VNacr8HRK4FSYjoObJ51hTZr5mhSkKrIIHf5IvcN20WU4Fs
PNPSpFb0bzlJIeAvscKP4/654myQlQ4zVckmynEWLfwCJAFDAeSpnyLBkGx4ih0YWkXMQK/zJW0A
aFwPjtRR+CIlihuFn8rw3VMi0y/0xL3EoWSNAkdAIr7SP9dyQW1+KNoyFeZnWar6jkKZmjpaf7Yz
tReBH/zhAf9/d4YtrSLH2KGqzVbJmj9d42/tsYG1QbnPw+86QHHVv0AKPMtvQAdSK990nn//BzVd
2FK+P714IYCDw8htNg8wFHmccB+nFkHRHIw7tw9ewm+9Ytc5yTmz0PVxba4zKo5riZEeBq2TvVCc
ihraS/z2kIlPT54IjwgHKB3+B940HrTTCV6C3HuHqjwxwPUM9+FE0hdGDGNb3b4eBJMandzipDrL
mDYQojIfkG9DUCAoiHXR/j54yFFzNMxxszMqWOUkf1YpUT9iZUZJWlmrd96nQaeV7vhtsYyiZkJY
Die7ugMjzv6tG1EMdb+1DU4VrJsMxOgB6QIFbRR8GtxLyeGlVeCddCR6VI8cRiy3r+iz9sh1IQ71
UfmqHGt821E648baINC1ef1hho02U4lRxVlY2Be0CwWPMe4+8XvXesUQWVHN6/zKizD4TwLQ13Ty
VC7km7RhxzRdELJd6xMy0bh7s+TGeaXqPDw49SXmESXungSzm9lGuDqy4Iu3rQTLOz7jrGacjz1Y
mEF0OW4Jya2oBTRlLSEVtBTA9JGaq3y6Un4tXxSDRv+EAOIT/iptrtMsGPMqjiyyjNrr6uslZGoT
qPUI81pLvOscAe0/oBtU7hS7jcmOML3DF5Z1KGG/TjJP0SuFT5+sLhovLzKv6dz0WzKChoySlyY2
6kzDxVf5QlQ/D3lgrbZjmSw8T/09kWPhPLt2OGnd+AFdmE3LvohR9zGg+p4eN1zMLO05qtIj2v6y
yqgXOb3ylJZFLbcpaq1aJfC0qNUqWRHxM2rYYqrTQ4Cq+TCtYUtcVAX/5NKGQCvF1IkG5iLFyTRH
m0P+fQhfbZJXZQG6x1fV/NeDfXPxGrVrDu4sH436Ao1/dHHw1F740xKf2nuMDCwcw1zV9FQvC+hE
yT4YoXGln/Gdym7vQmHdzwZZrBZ0liHCymP1F7O7XJGiWEhLWMKU+AOlEQGasoJIX+0pX/XzEo0L
zHyVE0Qu8tYmuVc0sBJZK6xSr4JUCg+6HQyzJ7rIZjgHsbQZCdh7zTRGGZ3OzWpZ/0Hes+P/n0Vo
IVH/7LEZnrKfNPq+Dh67umVE8gaFe65pexoNMWipOh20XMYU9Kzw4ltd35KAZ5lQJHwqS6lQWIwl
Mw24jDNnRSY4ufUeAxhWkx7TehcspzF0iXkGXmfy+eRLXki7oJvz9MAF5NCRKg6R6IVDuDwoi9zC
CKnS3IYs7ZrcVm6kR8G5zgBpMtQ3ZnGqmd59jMxMY0aTqh7IAuaK7ZgDWJyB14G1ImzrEMp8jl/Z
D9DTDs79oOlwpLpslIi/QWIUXOdi43JXZ9p1g3HpRjY/7FIH7WEqPQXzmigRdNHSH/49oKz6uhtV
ItRnfwRsACSD+qO3CSmMsKU+gTZj7uSy5pm05tP1upktq9jMXQHkTE/OxnrEBlAuuxSucbYicsjS
fEvSsI1whe7jypcxb2f9T2qm8eqcqyRsR/j2WC51WzX1tpGYnKV7s3FZGYXJudOG41iONUKKaPy4
sgZPVURWZaTZyzXlGubN8sbOIUttJvzzMzPkASFesEnXnLszKosPXfdsvIhdn7Z7rV5TN5MgHLAf
Zs7KbmScNZR0OarSS8j1PoKYzS6ubE98oy+Jt8bep3uSmO99qdIwoWmkaB51jK1Ty9/SDk2JpqCC
wb8wDiB9FtAh0LoJGMr5lvUcJB7LVoxNTQ89yp6z+ddBOF9MwSp0290M5sQZjTOnnoS8lKmRGoeZ
KqGz7rRUznPe/4Sb6ApaodjU1YMG7G20y0+u+jHShed5NTGqA8qtrwKpsSIipaw85XugQnUNUG3e
JXwPMb+nn4/0KU8fqv8f6fE2PMKv6WHxg2r12uP+C3bzSsaYFjzkzx/V312OBdsn5KSpdnSw3I5L
+hXLYB/rWjiAUZLZ+LVyct8fEjtNIsJgZhlXbrtNITiIefgC0Cvx5mTK8WJxGoKohUWnnBKSlanm
1Ln+b2NCvXhLN3Y8N0Q0qQV+j97Rxwp9qd3C/ial9VkYDNFiktCG5j5F3wbl2h2CdUP3S8hJatlY
Vr664657zP8LQLjvFptP6m8TW11jS3Kns6adnuz0pkb8AGOxX5VKFf/o6EgkuhpErm0kHtn4FP2R
Wa6wq3jw09MCwFpYpirhYKxmwK57VQXhQfXufRTOfp00JEqUPuL6Fxrr9kcYaBJXt7kCnKVvVGeQ
rlmpGGFZJCt+7KBvgvibFxCMga9HZPT7TC4a/HHSS6gCetbXNENXhQBbglGOfA1mzsavI3e4DXgH
wOAqD1Re2xh3jj8I5LMQXa3qVBw8d7GTXX/1egvkK1lywRNQt+gwtqx0PpONRPtkeSen3hT9ezpa
u2ivf8Px/ghF541umU7QJfsAzGzmXrWBwbKRFG8kS9BENCrIo61JPL3JHGfLaGUh+3k1wQ+8NtPm
s5AS/cVtvIZJZxvU/sJAHqL5AhIJRf97u6FrK1VA7+WTH+IrlK+GgHpGb3rlkLRE/AH7/kK1MsWb
2syFJBMfjdDIllYbhZ25rpV+70xNxkMBUqphqaxQ5yAxorBc+RL+/+SBJ8qaf5CSz6Gf+5c005Ux
WEUXBTB9veXhXH7n82jQbFTkIKLb1kk13jmF81pGg37k+W2NzE/iolyVvBS0WxHBqTT8CsdYUIvR
KnIW55+ZS/4CazjG90VgUBoLbBnJB43B1R9MvW5AEuUwGOnotlFzv/f6Cn/I0Bd5aQGgFB6LKUdo
D7uQQz01bCSxdeSnp8tQ8qP5ZOpBBrxFbe3c67bJZGNgx696jdCRcFje1T9efXsEVMl0atzRCQce
ujoVteVMCdTagZe+kziSSeJipJrZgZbR7cn7Wl8ChcbFKXiwZ5g4JL6Q6qGadzqysjUsehAIouui
+gcdtrJ4j67ny1HK5Z2h4UAgDV74CQbhHCZvydIL58XcZSLyaX/5Ffm4D20+PkU833CCVBVvyPoO
4NJV4wSHN8NvavODIu6ZTjYqubCE0VdUI5ZmKDgbBkNLvJk6PSEO88SM5+qIzY1nWygsB+TaKFQJ
DFrQQDSZ+Rol8jIVri5H2L1P3prEdiQ/BB9JikARNFUoGwFgHGXXKfAxIGoicfNynYRKSVDD/TYj
jPlJy3cKXFTGutILIvNpp5noI7n1RThTN9WCsGIR1PONvvIHB6q3zwSpNXmsIEYcztrEs7nDPGwv
q4oS5QxhngeyKlrByJjF8qr4awEYBh0nQUSohkRwHNGWDWzixjPsE+/Zj4J01+7sdP3CO2DcNINB
O58oQWc4FUm1+DpKLWVS9Wn+yDYLZ7YgZFTtoD55io0/7eZdYFqqmpWVYJeSOsgLghlJrOEuJcwo
g3vQvJDSOhEHQJbnxSBgIjk97FOV3Kr/0g0mOi/5KzcSckFwQUQowP18Yi06glc3nsSK2P+JIX1s
Da+fZR4Z8t6chXj9EDNsaOYiPA3Glit4k9VhBe4xEvyVHN+mvRFGhEIfrQ//aNV9UrxcuFYz8Lj1
+OqxyqferJYAiYWE5pexlI3zBy7B4D3sUOAAFoslPdSWsV9lS3HAJ+Z9da2B3Wmx2cctX71GBdFU
rS/+i0lv1xbbiz+jQQQZUwSUVQggiWjLHPQKNeWh79PkXa3WURa4n/RhJcZJSWSPba+elbwlHXyW
plp6GSgtfvgm61edYaxIzsfVyFTvv0VrPZW4oEITdIfcc33dtENCLJhFJ+k74//ZSyOY/GtYHNbe
+45a5b5e0Y5ELNcbFhEfnWoDSJ8YAJ3yvNVpZKlqKWqRrLJKRru23PUSPecIdCq3wmsm7ONQH0p0
RBno4cMWH8XQisESjNAwvoy8bZT+NFUXloWSUThaKtgwlAETNOJRyY5j7DP1FJWyPg2Vcmc9xVyp
u0DVsRdMZXb3Y+Al+OKCbdV3Gxd+rfy8pJWV5V9M3wofaVlEDxh0ebhheOLyeTze4OK8XUfDYkDj
N360hZ2PCeaC/VOrYFMuYq/OR+27CjJll9qr1JZ0QGw7Y/NH7I5425X+sSbY28qWdU7miBNe2hEs
xasGtOEvEHPHdpvC35JC7KUyBNDQWR4/XAeUbYzREuR3YtIEWLrCdjO3oFmSM32fUtThTCKkde6r
2Gc+d0U1LK+drA2jgUbsWHqdRg98hfMVmtpflkUss1azHgRwxiGtHC87FFHsIlsoTI8toRfO8pxc
Cb9BdG4WMH1ERALa/13hvkxWIWOr8B8O1CBkuhHtTkSjWxx+kAuwCj218B8jIiz3n6N+McrUSHJ4
iooXy7TJIPhidvEqqW83LYTUkwBCWvzOCgtUd36LeyE2tOxmUaUh/lFL6+/SFcYX8GlUIvf+IL/O
FhHnG3bHcDh6MhE0zN7cUggQR1l/82oMegzSCivEH8QrURhXluR6gfSxjG3lILzGWgG3XmnjIoEz
bEL3v26EocYxTO3ajrZNvJEEjsIPCNYXE8+bzN1bVnSqDKQfR0i0ZXWdOo2jR9Ajnj9gcF/Yjf63
hYolmDzqP1bYXsapkRcjP9DCP/aTKitEnraFDrA/3UVXjd/U6jVqlCRa1Zzs+ZzVzGl0ZztSTIJY
dMbNrTlH93/XGK5nSx0mk9TXWyeu6b4/1Jbnun4lLrcOai9Y+vRFzYtcV0/GDq4jI8eC5KPh5hSt
+q67wR19oQzV2Vw+tdA73aNuHw3ZMUifXUSTQ0utAT2Q/QduxI2oYHnE/IY8yY25MMsW7cKQIZD6
uep6mqN/YYdSgdDvRgdeukkWHo1nx3JBz9IepoQZlXAbWze2iWCJO+aMiQ2vD2U6ucJ3NXZQqF72
bqejgDTkyHSynwzd/JwrEz1ygo2KlNr4tzQQ2/9P5xiC7aXpsXipY8OBHRdd08JNaTgZbtJCDiMM
y08dmutRGgi7OZtuZEUbdbjw84lREwX+oEJFElGzb5UXEVJhaOPB5luZoHjz3oZIaM0O2YjyqiM9
FQOvUKzvEYdL54zzi0m8BAap2aUPh5yr/YF4yRRXMVboY84oqBsc8KpbjVISPvKfdcqJZjfsJpko
T2pHn/Qp8570aeJhq/DHEsmLIK3JKUI+1TZa5q8mWgJFHbqAjNqPdufHdRSMqbapNu0FZ0Qnc+3E
f1Xpd3YxZh5iYKc/MkAQG48cGg90Yt/kQAoss5+ICGuWKO33tz+9JZZwHJ2c8A97pKARkf6EUOO5
K099v878CemkJ8WONVL7/oqDUck+5g7Ykd4m1xTAQOPzTSIAgUzwxunG6BMpGo+n7OITDOzvsQED
sDaJ4cSg6n3Pxzf74aKg0GYkok1GBsVhfiV5sbNMWbGlbMUg6w6kwftdNtBifFNpYlSFgRcHsYz6
4Pb/JwoCNl5EVWGB0b67p8e85rKoWHls4+dYhZKTAHFR187XZeAXXvFPuDJGHi5e6gxN6OyeeQ/A
TjvCU3+8TRSMWqVpTttzyouj5L1HQJ+qBvVmBvfyCt9etV/zJkmcA0VBu08NC9Phkm84/XNtoK0g
2xv+/Uqw8M7SkfaxzQXw7+m/CuTWNljab1BD7U+1hnmdi+Zk0LA2Bw8kahO/bs/oPWUuMiHt5nP0
lGlK5LcJd/77HF3gvESpmLsFe2R2wtBDzpbkbrt7zZDF0rchr0uxs39r29gSfpGjIpWzDxr6BT8E
glIb/qVjSTSbWLSXMf2DlkJdzoHtEMtkTPY4JARZFkHW4fVEluuUhE4ZlRocXsK30gny28zO1MkQ
tSeUBZaePeaLnMGHxwYuZ3YvA6646TSHsEpKCsYnVbWKWajxqHXrv7KdSxl6uvJ4biUVe2fP6NJ/
976Fb+UvdUrPW2+K7zx1swV7vjlJpFTFbnTz0s3/daroxuar4o6ARR3Wq7i/PQ4qX0oHvbGiVkda
la4p+GTBvTTJ0orHhpxFW0D2DZup7bUTZnT7sOazC/pYXNtuVq0qGKTDHDjlgk4Q2/rhuQIP7hlP
wbuJhL7JJ0m+sSc1UXT3X4pSsAmUoqGWBSYviu39NDCe4me34xrOnWBC+A0rln77JjupBWLuGhGg
MuiUYfNngKmwpZ68rm3bxhhKEStAaY2oSrltIBa9NvcG/uJtZyZPBF+r5fT1wrwivsoyfgbSdADq
AhUcyAzSZD/CQzyhjaYUJBjpKyKZFmztNOpv2TC5TkKZ+NA0Qy04aWxBWYa8JxRjFaBckZb0wbjW
UCuljtH+aQByt192OVQVlXPaNIxyZvDcMnl5QKsEuLQOiXClyoiJYV3vPyAIz5b1nqx/uWO43qSa
1KQzOEPKNiXZtQygVv3S5b/R5BCmfM24LjI/IezPyApULQxt2Oge77nXRuWgd6BL+M5uy5X60XKH
eJE7HMz2/hgXLxeksU2wEP9/yr+M0WeAczi7UbVn4fOE6V7qlljyInAAdnYyavxUsMr6N41h8CfJ
JVp5pUTrZqS8ptoHRSFh1+k9YtVYQ1YxlHpF36E1VU77tczYEpdRyVfgo1d+0wng/oMIOuu7QaAR
QDIvZHyifZqNNBeriesMVl/YZgiluHhrjLAKiJxFUhb0nWCCioAwhhSCxOaWdxvMIgHG4vePstUw
XEMGj/6v/mrwilumVHYg3wcvccDUdLKR+SxxydH+OOviWeOL82HayEsDEaMSKIPQFUdHl5atx6ga
sNCdAt3Z0dfOmlFmB4NkIcWTMua7g5AX/eHwQYiRa/cLEZ39+iTmQ/n2B+A3kKFWx26hF5kIk/ro
sXwWUDAqlxkWLuv94qrBt5RsJz6N1uMya56d3Cr2B9UBqn3WAufAONPsoaFhZXIScykHDlg0If34
nonBr3uXlh/IsayGiwtR7FhAekqeQeLESD76awMThswEMy4t4Uvmt9swHdSkcn6pau2ggqek7CPz
tjjUrCHZc8eBxTaP55Kj95gMQw34sRd4eRCXGrR29lBNb48rdE1RXzb4vnC0bjZEFTYRpT8jhtyQ
hanlsrTzEm3zZV9TKlVeMtukUv+70+pthTZNsxCawnWL5uFk9aiyNKoJQRPL0iDrodctD15020kY
l9dgzjQshznsDH2vZVAYwWPx4Gtdi7ps9xT5CvyQz4Tx1hnTLynvIu4Q8R9YO0567oIZJttGTY+U
9s7CcFQwTNsjagddOuW3awVjJX1JSXJv2VRDmwVO0opdNip8nBLhtUM2nSlYnN88vEVre2tN4tRp
M9c/72ur6SEvGN6TbZgmmZE/t0Z932vie6dpts8LdxdG5/ROZYaDgGwAQZ8SVrVF/mngk24VFqk9
EQEDHAuTWFHt3H7s2T+zecVUQxHnC3umY1hEAiL7BpCA92Mly2U/hoKrlnaZMKPR6ob6b7EYyLSC
URXgQ9qLBoqBrd698/pM9eVzhwXhtsKHh/GxS1l4PET1qY1+0XwmBHpj4uAi6NcYu13yFH5p22XW
mq+ipINiq63EXvUk5Dr3cvbdVf9+9kxcY/9fXU/OLHxXJ7tNh0Zv5A7EY1+KF+zMET4xFhXi+rtM
spVFEaAB/tiHnSiDlRFb68vARCI+t4lxrLQ+RpKn55FfxOTJuImTKq8XtMwpoEZ5ujiMyS4BIF2F
GJLBLRBhsBAHtPqhpPBFiuuAZX2TqjOgsxWtGYl+sdyarBD7yZpyiln8g3xtGU82sLN89SwyCorx
9bbLX/CTB/RwyldulH+Fps7QOnGpIRrJujvg1skLkFabsbBM2L2XBejVn8jzOrFdtOEBRHI8/KAd
lcG3IKKyvj0sQn5LpV3BvCr+O9rDkkW2suEJGrjbLRjrcr61Ot8KRqJ6v9xsEL0Er+li+p0lxQHW
Sq4V/ij24Iz7RCMruNN1cNEQOFPqu0WpGaRhBVH37NIiXZMd4EHxEaM3vlza5cTH9LncNDFbrxle
bfq824eUmwiLU6x/RT4MeMY1nDjTJfZIniaKlmByukstwqdJBTjryGtC4yILBHcS/iqw22qJN9MT
QI70YUu1BPRWaeEdaJN/0wDnFcXFGvHSPbGbRNmULH6MId3MPi87kqV5HO9XeWqmt9nZd9cA8LWM
gRlGLAEQcPsvyExhFgEAlvuScgNmAkaXmQJb5R8TGtXfcarNmo7IFsIHsI5D4oMw6b8e7BDJ+Sng
0Uc8weoLWloZoMkeNHw/SXQyu8RyeVgZs6PDx49/YGdwxL0RTOITkwnvicrzPMEHflV4pmjPHLXo
NTpYWU0h++CV+VWKpacTX9rDFrDAt5aLMXPQVNSNATW0SCjlN+okecwSmPWc3L6qwbYIjbRld18R
e4btg1NIBe5nYkndiJPZobjP+Vx8Ov07ZTNv7ofCq1ujiXpndUv2D+Ee33syaD4V2WMIQCP/fh/g
1E2XURnVHDWiLyObK7G+QrPXQHTa3qIsGrMQO41KEhuU5mPR1OR2pT/9MFpduFvLQt/6iGhR6CAB
yrPiWpaha85XT2mHEvVmufSjwFfKR7evi+BBspUL1P4+mQCs7uCKckLJ4qRj1iSP1zCCoLNbBqqT
eTEKHmwMHaLB9IL4hEpo4xNIio0XbQiXKk/h+B2xrHcq86VvANRSW2exuxFKhRFcz0UE9XBD3bUo
hAEfj3234zIF/ALJ//rw9bDh5Becy0CeHgE2Xw4gMTLULa1bHuw9tzCs1ihfBybm5RYdIUSVaUkJ
ZJKcNEiX1GdBGYaeboY4W4wNU9GBqM+y8/wtAnvsiRfWeLdeBbLvsWwKdtwHpW9/e9VYoL/rr9ZS
HxlQqW3Pu3wKNP9DEvZEnv5F7ET50Y8uwqTFLOmEvaNYsPvcsJgPa0cHp9Ch6jX6krdH6mObYWKY
wVPp3f9lUiwKXYRUU8KTd2GU9B8bftOUt5BxUmlQ3bT3jF5uNKNcEAePMgBlGcfhp7wxB3fQ2SOf
N2TNTIsQZTdxqCHWHGRR70+93SZd8vTw4TmVQ8MrucbUxyJq1vRwLMTbgqebTqkVwHJTWCOXTUNv
pcqPtWtZsA5VGdY7o2Wwx4zObfD9eyxdYBt6d1w3pn/TTydbbifrt2gAtKNwplc069TtpT0MfSV7
cCA1lp7E1IUVvgB4BcrV3n6QtNz+/EEb+yvXKPeNIL85UG+Mm8TTpZch12V+zJY0BXJueepTfIiI
srZy+01pOQD2XPT+qciuw4nmuHZfPL4bZf8eTaxyNrm/RueU1wczCaxbD0DC69t++SbaN7DIxqKy
Mw3XhMQ5p8B160OjdL1DGSa48zT43Uj+sSwoCjnQ0xfAs1IEv7o4DV9T8BcEjtcv5k4zgEz3p8Bc
8dg7XXSPaD2YCeu46qZHsqV5eICkY7vK2MQYI8JXzgy9S61CzKq4Nxkeg13vNbpPwKxB2oITeJHe
fX9MAjws+xv6Op7mGWb6bhjlNl0TLPHKR+VJNtSlV9l4dniw9nJqRbpCfMiBWojGx+wdCGR8/21j
S4VQvFiNLx3NJxxt2fk0OZ6cvRHV+YnDBZalhesjZuez4jswirYdv5Ar0b9SKNuiAv3bNRWcQcot
Ml6ydFrID7vx9BpQBgLdWjMuSVViDkmgaNIOoLDjU42EG0062qBXfILtcEJsjN20da4YLxqftq1y
Rb6rr5dWWqAemel77sPQZX3EGy4fqaIIfWrDB1TB58dpn5/lihlkmbJo2d/vxoQIaZFaGOE+/8no
lkSbtwB0VKFLYepXfha9hxMIZa6GeGZyf6uMF46cai2p5QmEj7QrX7WQeyp+ShSylyufPBJI538z
xOJinO4AU+7vebB1O/U3JTJCCQCBW7pvLsplGRuZA9rgmmPzwxDBCV7sE6DVuHcNFsQcQOnrhtNO
PXEIw/jO3kwMmZY6YnfJJJnRjnRjUlkMACBL6gqMhSo0g0JrOwBH9ocPPksfxwaAFpIMcDO1K1vY
GX3Sl9K4jIF493mEDJgJUSpyq3ZPCL/7XKDXFBn+LLI3+Sod6NiWZQEGnWBxZoS/7X99kPEMkJ8n
ip6NiC/JJHmJPyoxGyRmD5uG3LTAACsMNfebFfcKG5IjbczIRmHvLrYC975RqFBQIgfud7jf2yXW
wrMvg/ywgD1x9qlvtVx4JW7S2kkBUf7g0iIkdT1z/87Le6Gr+WJcEWmQFNT+AFW3x0I0kry6Wu9g
c8wiTD0XJcA8qAP/OOm7KkNaQPg9TmPa2mWvcRbrXfemklcebd6Bq9NwGY/WPcpB2iU281nzY7QV
ws6Iz8oyAR8F9ob4p/vDolXTRVwXBv46oen+xHdKbr8HTbc1q3eOHXw2BuiWHNlKpHpjhFWfL3L7
6xoU0KyiU8KZ19McPqopZmoWU9RTqovlDiAUPK+vw2uedz1eaGlYHPT3brXLge06u+vMZ9d1FlZe
6WCorIY23bIH0Z9y1Z5xBGqyHK4cRPjWwwUQ41pOR64usCdkheXX0flQLJxobcPAATSTcoNHfVI2
zqOtocIVeV8BBGep7gZmEDpiQ7VniNOfr8qPJvk23afVw9DT3Z3D6uhj3iXMs2KCRWzjHmCpnFh2
dmfRGbqlvHlI7lCYSfgi8e8fMAvwE5/Cc/4A7ZZJPaydns1FjDQDK288gTxGMqBMZFQ7dlPC0mDj
9wngHuacGWSvrtVmV1aQYZr5X6xV0B08CgBF+iK8wX2CurHVhdFzFUNwswhKAMdZd5SFvEv15JF4
2HAI3qzpA7SJnlGpLsARD7et3dtvxbGs/6P6ApGFFDbOv8MbHfPErVp8urH2bGaoUFQ/NtagOSu7
sx0+Zf2egvNVEhqJMbKUIRE4Y/oufDUlyxtJiiDG1qcoG31EL2v7TUmDqwkDz9Aa09nwcKhEPi10
YZ787+515LwxUtWZaFQzZ8G5ErMHR27HA5Yb4xuGbg5VJNyS50n2YPyP88awJS7t4RKgyRR4Px0i
a/tivr4PwcZS5S82G6AmqnRSMFjR6A0X9Imxms/otM/jDXoLGYtVwC/IiirOiiu+boDAtPIURfBU
bK2fJ1U9Iy4026t5pZDRToMPPcRKsGbTNSoRt9tZU+20N7MA2sxrdiVpfStmhbWfHtUEsHUKGLdr
60PEokhC+OZxHcuG+bKNsegJr9jrZYrl1L+q+QOTIh48v2jamzYUHYBbexwSDPhduo5KNx3SoIOT
tGi7VaktX8xg1D9mKkPo+CuqX+oC6/13pD4FIZ4E2WYlqVkR6VcURsg+Vqpv3JubmeBSbnfvC7in
G3ck6w0KUFRCvR1rgl8yhroBQi8DvmWGB0A3SkFhIIhVaI4j+b7OskUdFhHmYrgERWqeYEzjQLTd
82JJMhKFSsyMiv9Y9q5aJrRFGclkCNn10omozkYNO2mb6ofKWbTNHb5cjycVQm1Vsn/1xfHlwZVi
vUYMJw4ws9AvqvQV9kHcVlxaqdpcfuLCqFCVxb3ADMtesF9z0rdL6vlTwhByELtLwJ/bOm8JsdTc
KJ9wu5NRdIUwqQunYW1d3SX8E5ydLrZLbSpjgbO2qbAPp15Uq6e4U/+qjiZahz8po7UXxf5WrxoC
k3IGRoYLNslnSLpDZKjbt0Aj/UbnqnHClnJpHwCpPjxyPVlR2AXK8rJHz5tSy78LaoKpOkVeFMr4
3lIWFnhDz055QLYJf9eCrTTizDUKgjPiT5/khcKwDVJydX9vjjiqSfLtQTUUVxcSZLNRv8BqTwzD
CBwMFPoSoPxHdgHpAldlqZrDoNB4b0pWLKCsptqmfixXbIZDVOPRO9ZgBXdKIYYd7HrIAljJwlbw
R7XS9mnI4P5aSBY3DqYYkK/qxxdM0Vs8A76hHtF7J5hXDGAaNtqzVhQHECl3eXmcf0rVd2KEIpaI
lVo7ppBfUhp/t6M9YxCLopAr/KAFLeXkogSlrafDRiNs340UIiKqLQ2XrKxfSdfKiLMxGaSlZRRs
uRs/VS+UHQ0uf1oH9Xj2esiH6D8lgVf9TUtua7eYXwedEZXS6fUpmnmmRNmYdlz3e8W2X4mfLP5i
pk91zRa5bsq5wXz9jUzI5xbOV0ifAHGllNede0dDy3CiVCDraISDIV8Shy0kEYiVmquv1AAl1LBQ
qfPXDdHYMmfqZUchlIitYJKvsocWYgmInfkLpuwDORnhgqhnrdTV8rtGbIAcoLbaDsQ9qJhxot0R
4+W+MT6ylqt/g2KoGhiLpNvaCkHlr8CyE0D5lCzAX21gYBq4qFpLug4pWshIaCpRFNZaZFV+O3Fl
b22krIrNHBIFJjPbvZYw148EeqGPn5lrG05aVR3IUksvv2XWv/S5Gyf0MxBQS3Vrkchrp2eZnXpd
8Wi0d1Zs0D4tCyLYxIeXCAiKuXcjlk1USAGJrgB96lVlgt2M6e4gZr9JZuU6fxVTg2DPWdQccMpS
xIwBowKcz3AXb7OKiRs8TBk/x0ETeYM3qYW6PpQTizEqSz28DrWiyAY/ho8QFxPyEVVjHsqOdo7S
f95ZjB8dbw8IizLAhKh0hnW6+j6H1e20odya28cxgaCCzpUICkQ0r8itQawP/stfeN6ZSXjLIF/K
CaKq4fvr0PmjyuBrZQRuabAjPCPG5mYcP9hsm38zLnWeTS2ZVQUxOo2HWD8NwncUf+j5z9sLPbgq
G/KN4tkiaxqBFwPNXslBsQ/RYf8iG6XUAnzWV/Mbdu6e3Y/iXaB/BxeijzMHLfQLytCVpjjqBr5v
Arw4fyCp0z+pmiQ0Fa0rGC/hVmNp314CranZOD2S+4YzMVA5/H9z3M7mgo8T8aNKFbV8krlNOF9t
q/dwIOO/1dwTPa8esdzwd4UGeq/lfN7UY87SsBBuksdAaMIeXma8XHGOI+o73/WVEyOTn1dSStvs
z6oVOLk2qGsolR2tEnMVnN5OMfIa+EYiIGurx88g4p5lOPC/o3B2IZKnkZnRJABUslelhTIgJRwZ
ilXVzsZ2av5pnDrW/BTGR1liPWbA9kgqnnMXstOAaMQhZFMCnG5eiFjGrpLdCWoCNc8jJUI9SW0D
F9U/OFU7zxlfmf4LjxZ8rI0Bg8WGrbnGz5turTqD/10vV1q7k8F8TB7/p8Hc3gkjgMFq/X7Ydkyf
/ipN28wUxFgPMcVITHqDdmTV8K72ajVWvxomKMxPliCEarOlhY7x9HxHl7u1eUTw95eZcwG/v6d/
L/0ZFCDMvhGOEoGG62P7iG2pFinEUtfukk5NPKvQI+Q50hUzJbBlVdVEegU1YEzZxYct8Zb6iMjE
vlO3BQiNFCdNNTKqlimR8A9sjaMMUCFR8hhd/ey3nXsT7XhVW0s2I0sbFhbXHVoAVdcHqOnhyyol
lPulL0FHnC75A6WcE0vnGDcYL4IL80Xkdrh0CPKjm4SkTy4566ld2eh3TxcdjfiT5izPKZGpX3dv
f5Y1hTHn1QBFUHeOfJIJxq3nttVTgUVgJ5327WYLO15WkwLAFo2Y5OXsf474dmSsznthRONeBxCZ
PcyIex2x04xjVWHXUWcxd68lU6vFnn0RRmTzJ8kMLfQN1sYS8lqluvLr4uLevXgucRvIE9hVMNmD
Xod2UCWWGd5sOYR+nBi8J5Cu4dYEtHysHWKJ79fKQNmLynlb7VXJ1XA6B4WTtMKwOyVjnsJqbt1B
FUZnCAWGVqwf/pQ+WSSwyCvAEgGx87Y/la6VmL+VE1z97HXCvDz434MmUJJF+Hssl6T1YSjvYnCR
cdNw4RmcSq/Bkrscdq5JpIHrMRPnWZ0O87fAVm4xN42lQhLnY9b2tmEmZzH9VKXXeWzFP7eVsBQo
UqHWoRE/GHO0jSz4CsTvp4A4ZfIFBVjp/E89LzoUfUmZC2A0rVSCeF25VhSCrlUZUz17c7B27iPt
TozNlXysb4yvqO4bW9ngvgEISfzxlg+ULkIkBWPvSjp0wd2EHHBEsJKoxb21d1KCzXUhbDwqSxno
qZ3gfIUE5ZkZnw1YWFvXJ1ptWnk2VBzDqbIiJwGrHCVuOHQLltb7hZ2SA1yT3gjgswbSaF8I4kxy
nyRzheE+M2dXcnKQ/u/683ULHAU+ID4CyQk/0Mt5cA05KmkmTEkOX/Up5AXkoO1G92aNTidGChME
sZKpKu/ncbgL72A78bcmWKiIOw8rbPvfbS5vopw2jnpNUbmdyo3i/E74F6dkxYgTdwdzbYv4BYGY
5Clmt8+MhoPZHs4cL2Yxk2uIOlubjrVdpP82psgyJabHJk6MQjOMcG9scUdcoac1F2WUP48/iBe5
7CC4n0El5Y7YIid7beqlh1I9tr/Qxj9o06rAztp85UZC2oQLLKtBFaDgg2nr6onWxz61pE9SJEcz
EO7EvV16MAWURu1euftcENdkhlv+naee8QwxqiPkdrOzkxMvX0GCi7Oq8MA7DVPK8k8j8pLksgw1
KARXMb4QV9POn7ZpwP4yRJd3DUCt9/pTpw8/t3OCyJdi/q99fBfEHndJ92BUXbrmQrd6a41xiAWf
H2IuC4QlqYafQe2KoJ27sIf7tVxiVntRsvqHms+oKtVXlMTMDRQp30RY9fSpSo449emeBuRCb+Jy
xaUHU5u8kaHNZVMAtZt95vTOq6bBO1bWEtsKFSsrEZNrkUGIz5n4WA398Pd2GPVVSCUzHK5+/TH9
BZiE6tV9UnXEklD31p7Ws1cPx3DiLMKIVCnHxSw+DvDSerTz5H09TWo0ethMRDvZVcjf5DSt7Pzp
dr7rG/CvChmI2vTmAs0MQ1hpZs4mXAeKU5odf3cqN3TbbRz5Jl5d1WPgsjZMDqbF+7JFAgxkCcBL
SiRi1QcgcRWBqPfzBvpDUvnqhxhhzlMhhV7kS41vEVaXUyGPjj2mkRN4SnmGdBMBA8Va+jSM/M59
GrcnnA74vxRae74q4CeEWFRJbB+2x1CfYOssgljvKL9vbu8xmQSvX3ZzXb1oEdpPQJH/IQMquuGs
9KJoAE6014ed0jXEULVR04YcRkRqAJtoIxPoUsKCD09RxGWhMNLJJ6Bt+o8wLTxK849z+ss8ws3o
7vCEk2jD7Z1Ura8sCADrreSH38i4Ah5zsA36nZz8dX8bXjptMmdhPK255/76wtYijsbnA9Gqmmgi
CCSOOKA1TQ5smNynIhCHlIWz0tBvilLJudva7tbJS/dMTVCa8TI8y8yObQGzhmo7W0pwheGxTSQv
EGO5yDIX/suRIZJMoNWHFR+dQUXACwHF9wiRCXBRubXZEUfMaQSlD6+mswKjRbAVXQ7AaVe5dgMJ
W+JDywhsU0Smubk0cVwCZYSigSLSVcysryUdn9vhymjXmG0Xd+oMnaz9HTCEaKYQlrqD+vQ+HHb7
NytME/bO6KF6qld+cvdVN9pNssus+F4fLVxr+MhSttAtBY25pOKIJ3YMSHZjrujGqZ1EA3qk2Zsv
RU8JVRLpdYAl6ApEBplStOdGwab/p1iaV2kfox2OhTPiWv1hFmLUSuIzTY4FTPYeJT8tCBAZqFI0
d70RTooiUtYcM4MCdFceG3emt3PVqITYcKAhk0ruFLCToQuAfF46JqomX0qYOFtltAd2obknPCs5
Q5dewScQ+MFW9LkTlFRoYJHtMGS+wFva/CgPSm29us5bB0LGag83Ps1I4jbhWNK/RN0jFVgCmf35
SgBDBzgRLu8vWlVTq9yZtLVre/GaJq0nGrOH2RKjWI/iUV6PgtK7737jd+Ar1y8hAwxzbBM5FEE9
MAgo3X6K5LxB3Vx1o06yBm5GG1UDBgSnzo6rbtY0wUWZSuGQuSElVbNzIVaSdZ8OlvTCPP2M3nw8
QLRWAVAi0axoNH+dhW/WzWq/t6+yKiG5RBVDwnxekXcXwHQ5BK3OQGzFHaR1eTknDgYWgPIEUmbV
X1p1WjzkUnlLpJPY382mBlQlgSCLqaxAUkimohec7BVJPa95tuhlUA6qPYDUjRMWb6SKE5EJp6ff
bPzIQ9FcEBbtdHk0rtbAHU/ubya7lG/zSNAjjCI9Qzs2AV98aaiLFFml0x77sII5sE39qlu6x7Jv
MDNzaVp21FXqu/QWMhEIrtKMWd6YdELrIRhbWGpSRHRE8UiPd7fv0HflUe17tjFepC07d7OlV55V
nFNp1R0kMsZxAwZY3Yn0XRSQGD5U+GLNO803j5A3vzmbkD/7//keOYVJymUi6ry8HUn6QNcaM6/X
dzOT+Zv08pFCclYYJnCFRjAygK/jWa8+qAx/bzinawTKP8qPLRQ07t7QDXdot7FxyUjRbRXoI37D
uOqpBC34hEDWLAWj0Fotf/78TMXGOxANcQPQK54E2YglPkiqqomW2yWPfjJVZMmiH1zBEqgOLcaX
BXHke2NcaN5xq71opgcCkNwW8i4jrF5wivPBHGMvlhBzNof6k/qfgUFh1RnAcoFL392r70MHvDeQ
DbXmZzQyGFHtksqwIZlDVW0SBljUQFVcLjZl9n0ADn1b/oVVlOd12WXZGgtfTXTpbB4/Y7fZrNkj
6cubFDQYDAbEPvfQa4Iq40KjpSwRg5g8hU5CVKwLpoPP+XaDrZ1DaE2bDLb0ja9Y3Ci4/qvm1vdP
ooHAO3iyBZWiRfZnPgc/YVB1A4tz9hH3Gwenv5rHJdKCz8quKaDiOefAHkM3ilWAcloGNajCAnTQ
YhbiLSLtSz1V5xpb4GzQ0rayQ4PiMfOaVP6izRIOmEJmD4tKFKaW4lSk41mWirDy5L4OROLrSdwf
HiIApCQbA0mawOpJvU1oXm/11iQpGMyXt2++LkrYOZhjmdInR2sCKSEX1rpO3DixBNj3lVxIAI7C
OhHVQex1eUOZ7pyFQlPvUSr+vC4JzKB6zrHY0dWMaAHQUyg4j1BVcf4Bw1BO0XAss+VAE0ksdGOg
rKSJRQNI5qLqxRb89FAMQp30YvS4OFT22FXH6j27AQ6yK/2YGo4j/KhvO5TaR/3boZgfn6tG3exx
tscRmaYU5Br5XudAizhpgDE/V7NrIa+zFI3jZSRySn5Wyu/oSpxmVjRMoDV0YMfspCz/BbUOZoCY
+HR5TjrYppVMt0bDFItqbYJTV+NWA69c2GD2ncxXE/zg4khZt1KktsZN21fSUMwY7ygJrSljUeEZ
fzJ/S9uFYsS1fva9WZmBJ1/PHtGEPSdvJmwzGMIAa+B+cG0xiyYLuozSNezWh4siS2Ltw47i3/r1
wceO9dITr3eI/jvj4IBfS8OagLP5/99JTAVF+JQxeqk0dtDQrXYWUmfBWz9RgaSI5OaHOUeOV8N/
gOnGgNCpI+fRMhyYStRjCzqINIZqBP74RjraMLqw/cXD60f2ybAxZbz/yt1WNiVxLRFr71XdiUpR
LBnFls5uA8jk1qKlqMfzAq+8ABzRky6IF3/n5p6mHKErpl8LlJkJP1hqqUWGxhAm4waVb3f02A2h
Uybz5o4+h8w9PxSQjlZKaVvSvdWCcJ1KsrCE8b/t/jJ4DxXuaACJTY+lS3Q4f5bbfWjuZM5srv8Y
87vA8B4nrDxTy2YGbBKEOD+i0asET0Rs4dSItxydcX5kv7qV7+FEOgCst6P/M9W2f66gTCPwHf04
p6iseAj30sBa74ida6f05qsCOMf4RBg+JIYYr1nGZZGhYXb97rbpVuPpSKa8q1ltgEjoj8Mh/UDI
Wq676ExN5azD6Ev/Rg6l9buQhWY/Czyj8XxJTS5ly+0misOiHu5InbApitQiFpZ8DKs+EpxB+cTu
IGYVZ2GbMVK7VkVTrgLbmmaDtKmBwjOGc7yLcHNBNin6gAKtOiIeuB5R9r8bvsl8AWsBG0fNKDvT
yGlS715EkPzpCW6iWcT1pSvH7xicEbjLOw6Rw57uE6RnMgDvTZh3MVAsSTzMH+FHet0LDSHWKFDd
+wu2L8JHK5KyvadXZjIPdbEkB1WCDjQtNG+6+gN1EH0ki3Ps/WTFY1qawOCNGFxJQYCXbTAzjHXy
4khP7HkbbRONrGBJ7ZDZ7XHphK1+LGikHjUS/tpxvIrUDpthkiXi6wi6eOTm4cd0H6uR2DB/gcwN
lWsVhV8y2KPdavcmQ+HuBzoHGhMHwNKIl6XZyI62YwhUeGazJqWxkTXpSpLgoA5EMwzybV4UlqjL
F8JGmd9452IlKupWJ0W/nw7sPEKK/0p5KQis/eHETMAP+hoN3UKgfZDORP+uAsnWRzdBJuuuieoS
IcKRsSFsjm8ibiT9EiRYnPmMlssaBv6Tr4A7Oz9N+Cv3kNZKYRn9EczQbhfg+u8V9Dbe9tDC+t9+
StfnjKFfQE0V9fANE8COgHVmFAXlf/gHoQo7pYjoD2Z0fhcUzFT4qM7axRD2wnzji5Z6L9odNxww
2TUaqkmOCol4RG/A+Adjk8u8hXs/C2Vz4YzaNchhodKOIp06gAq2enAoSrX+OzXmcHvNUXBvoqB1
J/ok22m8CVceLCx6PGviw3KIwHH3BbrKhQrrdlHdESIt0aHlRKIJx5tveDvwP6ONMoif4M44mc8W
oc7TaQBdiS+BeWhdW6pFBzLetsgktq4TLMm09AIDcvt3t+zHq5cmQnYtBm8x46tadEL2BiwYx8LY
Ad/leH8J1Xzb/bIwLtc7tKCrNaNr2EV8ZtGSa/YlwNhQ3GYyUyWv9QOdY9hGEkgeIPfl3pS6Bazg
hArTKm6LZ4e6UU6eDl1yQ3cHC6ajh+A7VClb/YoxxxsF6l7XFJwPpcryFfqgiZt0T8NVQVG8mPju
o+OvPsvqZntfg8Q70SJWxEfkp/EzzmyVKr4NrsuVMcR0mT7ngQHNWto8bKggBTkRchyBX9wBuIfE
Ng2s0pC9Hcd+4dtk/E/EWhL0PMpf7cfA3jSku8X/TeFPmzTXNERZI24uLZCmnDthujDUn3CdyVtv
gFwIFqarGwm6E3kAWQIoG0rpKMVVBBzYfQ/UPCkMLhhCccGLpM6mzmZWZr1H/mXPjRNVIjYQv6pw
Rz++XcFWpb0Umv2AG9hzyajuHUYftQ/XsQkl+L3tcbXxzJdkU9l9eYSiXSXMTXF7vE1IaY5/TAKD
qWHmC2yiYFJjmva+X9tvvroJTH0wxW54x6Z+sUdxZSdRDNqL5ShnT+50YGgjY+u2rvlD4DukpELu
iCDyjycBvL8Loc7rnGL9hqFLO54hEzgP1u2iquCIUVn0Y4tU9CBRpUKEWg5G61PBfQiBPVEaCK3w
AXuPgEhPUFENxTkcoVhte4YG/Wx9W3Tmfhf+euPDxg7jY56YkAyLpIWmmyF71IcyWDU/c/yhjoOe
BBUGnhUH1cqlSIxuHW7511cHmUcbSAFFcjnb0jPc1v3Fpoy20SQlyyfwimRz9wW9wPKWa8Vll1I0
NrnEj4BhMBWx4GrPonYcwEWoujmTyGQ2kdQYh2gOFF8u5yBEMfj4XKo6aaryIB5+WEv2cjrJi2LT
VFeDH21WGIWnO3eKZcD9uLHL+exNBDZDuOwPI71mozoAhqsccO89eaMkl5g2VFvVmZSpR3ExuhKd
qChRi1BzYRq61D/IpF7zdEtdeKYPOJsxAANpZSGEFYhxdVpXu5ViqzEqWL2beAdPw/jB+U29n/vJ
21C7S4HNBug4+KPBYkS6PhIfnNov4NyY7yQK3S09hIbVwzQLCNKQtVmGNdLEO1ZB8wrtYQbKM98s
AaMJOtTRZEIy4+No8McO7qdUaLxj5X3X0ntpMB8L/4zvaPWVVaU8KXGMff0M2h9H1wzO3zQlY72g
PGJuPADsNavHt/4YzehPQAuLqPf4qbo+EdNw5TZB3Sh4cebt8ozKb2fxtxxECwW6bvoXhPPno8tU
JBNSSkto0X+osUyfqCDKdltKYXQQxprb2A+aVXPPxIYEVLYzZd9G+FqecQMuYKMoGxy/OhejlyvO
bWrSWv0AQpa3zqF2paI+gPVvESHc1fH6+hMGjVUqabyce3cyug1w0KDMAXILdKVkFiAnf/r9XiS/
deWq0gxppd4nlA77ehShAG/hH4So+FQr3/S/dY8xZMLD/6kwZnSZUdEsPvqO6/QBND8peAjsNR70
wC0uJZmCwzPFdTEjt2lAfOhmtBRUnglN9GRAFhdIw8QPgk2g7gKO2F002PBRO8Tv5SEa6oshqjof
SWEPxUJyChquaRisRwd7frJeHSU8/hXk3oToRNw2zajdDKVvoSt7VMue6X9Vq0m2hpCMrbvGUbCf
GP2ctpRnK6lvMLjW/ashavr2Z6fwlPupM1sgc3VGPTChm/VecfbPISbBiw63Dc39gm3mw4+Ipc/i
xoqq7KIVWNqbdxkgDmWOYyZ/LheWSDWNYYfDDuXbzy8FIL5MipoJ2ce+gTbYyyy73tXi22bMceC2
KVr4EEXVVT9sPbHfjl0yFBH0GOouTmdXXGRseXMpzUupGAifls937aOdDqDr/XVS/eLEuhlwjlZS
0k8gDOVMtpDbZREI/YpT9/XMVbmqcNMRHoNEKVzofi3JTAzITlmejywzc4aZ1lZ+Mh/wIY7V4lKg
LhsFTYxStp+fsFsP8oqNyH+IcC42075eS+5v0p0GHU4hyF2xI6HOPY/saDAkMb4Y8XJcGkB+o+59
eBSB6OG/gqs9fsPpOr/OHIWX20MP21fNDaIDg9n4BHL6WCTHpWYu8zxYKnU1wASh9Ie5TRrob+bp
97bQlS4QYcMgNfPp4/YotN2h+yhnTbjXweRt4uzewkv7RgKUPiRaMdy8zugEYWE7hivtvC9GxvMC
Rxdd/A7OYoFz/nNu20fbsVxevScWtSX6p0eQYjTu6BWuR7bcr8SMWHHiozl5ZS9iHEaG4JfEthT7
MD+2cbY3rhEJaQKDLADJRBEZrKgDZcrVaz5ndws01YFApqzL7/fzF2/vcyjs0A3Tdai6F2ClOK0V
wfFWcpDcwRmiV4YODZZWEssZi1Wp+rUZQYPQgiT6CZgOPAXLAtVGr+X3/jTOTSrN+/h1IEbKzqej
FUI0kC8Ln8vAEGzFMpp4mII7CXYSuB6G6IpRiFWHsZg9Tu84U8SqUli3Et3Pl4C7+Qb4YsXTxX8+
VH+5zvc6X5xuLadGS/8+RLGy6OBPzocqDfEx5+0HlXj+GOn7wh2PhbqrHqTF1QgMQ/AQYnq2akGr
rq6WkkE9rbSF4/UbTP/Yj5LB6ptl9BXmfQcctPyAV+zO6lwS6eV/sQWqUcAHFyqVTPeBVbksjmKj
76RJLccEZIh7iMA0SuD92OYom8XsMjuSFeyQxNCj2u3J9U9pJVy3cr9Eo1iR+8I/XanQEiOW5c2C
hGxj9bhYMMokJ+5sAPKqsVRRhN2SfPnEF+z9l734eE+DxqJnrK2xIWzMeWGvF0ckXd9sA3HIIfKC
JeYXMjX3ry3gWJYYVSq1GcdRCj4gMHTv+ur8pLziMbRCnZcipmy1bW710Pm2H9Y9gFvMiyC0gT2Y
o2AK/FunYd4yUqZUw6kWWijHJLb0SsNAiBN5xfVAstYSZBN3bhuv19mREgJVU6XXR3+golV/9Jru
JOEUCHJa3MbYf4viDTeihdM3kI1rCoCGjOThrhiNKeNyB8rzEw4fs79DsHmXbubj9BsLKEe5dBWJ
2qoxtdEW9ohDvNrCOsRXg+mHoxEbuw4JX5F+FR4c5xC6ZmXfBtcvqbhzjjEf6L+onDnd37qLePdd
yzOe5n1CBH6XJgkfsAHS9mPWB1vIMhtjDNNG3Jid9p2g8LVsQbjoiCHvyfAMgtEK5l2dZPiDvwST
/UACEV9/vul+qlQpRqoiFnNB6Rv5gbivoRZHbKf3RcfXOrk2Q+vHTwgEc9yc1AhQ4ASJsTrtTj5w
IzVw2J6J9d72B9+CTa1ACHlOiVUXx1PWB+oBpndmHsCXSbje7dKMeKCxMEBJ62EIR5SiV+LxF1mc
FcNNriDfQUbe1lsMypDurdGkjUfke24Dv2ztFKxZLzcnbTb1Azs9zrT+rHyAdjZq6B9IhKJF3Wom
FdGTjrE2V9QksqXmOzN8mGEBbLIkytYbv9q2siagp8tl494fJjyFEFTUGmmwfE43Hn2/zCnAm7hW
OynJ6XOAFfjGq+t0h3iNz1n3z8Xo78rxY/eyPbk67B6qEm5Ymfwpy+JL5iTQu+NXKffPNrCF8CZj
rlbPRKDmyf2s4Co2TkSoFBewJ2LEq6QY8ZpMWfGICZMAOG0Sln3hJdU7BL83CTxDJ+5KT+Fs/Ylt
0Sx2RTMjiCHATgbefH9a800kKo2B0A4ffIkdPQFLGNdvajjrstyrbj7T9hY99uf9PeFsUd5qQpDM
oigI8fSj9UCES32cU3qxSRWhy12QPKqBxvgOJ0UTTI152lDrYbNN8jXZ1WYc59rYMrPTYg5ASFyz
KOcmJMXmXpSNw5kUkLMZwLQ9iZH1Ia/u9ZQk2aIt6gqjjF9tW0FUIgNsgvPJOJdQPxUvGkg1y1cZ
w6BvFuSoc2Vhpsh6oy8POE5MFoEpbPLqYwzECc1i0OLVL/a7jFeGyL/JyWJOm54/2feR6HHZ3hUC
P1AcP2TaFNx5MG1f9/pk3iNtZCREhSUpzg5bBiA4vi8wLbr3vlDw4C1QoJjH/z2Vl7xWkG4Sku97
rgFxJpkQ9OrYQteE8Nkb9OMBpP4Hi9w4PE8koyETVpu6bvX93QwJAJIXSQX4hb83xVS+U+Oy6+tc
2o0OVU1qwl03t/GB9rB4deZ8vvP3OI+bkvyohqXNbA/p/0cWa2rSUaVFjcG5mMmSgUwbc+09HdT/
wRk2HvSjmQsa/n+FH2JetvPTZAGDDL23npr02YBh7WMaaT7jlGTJcHZg3jhkt8pFZPoL3WjAG3t7
TVQe9ccSCRRuVZAHR3GFVNAQ5b1m4R714iXBtbPm4b6HkVcqP1tU9JGZ79H4D7Mfrx+rHm758S5i
KgyEimVrv9FeIthOIzvDE51T1BIWO4QZ0AGe4b7QALmWSzUZUQ4Ly4Q4ClW18g1MGQ3YnVKirEPT
dvRdTLoBWaVWAHP5QivcYhJ6l6bQKaDgHs/ZlFDt3syq9yzWZMD3cCgyyWuLJWelAFSFLQrLKTsX
Z1JlqmIAFKti+5/zq9xoPII8T5J/QwJON6NwA8JU6OzqIuz47XUZBbEAlOjWi/5mFzAYLAqphzDR
vXoViP1MqbfQ+wSaeCkKBhDTLZcgi/8aKXSxLkFqkj/m0eh3e81XPHgELoXKF0e+L/XTr8IlZ16O
0a1BNdmh0WPYcmO8mMHjQpsHOtLk/O1OQhavXnTEml81YPx0qCljvZ6vBlnk9NX6DZbJZabYPWt+
NfdGdXtkuLwQSOcr7UMtXVyu9Sbwd2oC3M4015Jj6ir3M2Q6jRYKxFW8BsuQCcMEjPgdM2KmIY3b
iGZcHKQYuAKJZG3uqV5WFPIZERC6lA1rvrJ5pYNJB2zyjzpzwbJFEMn0YX/U0mw1fEuW7HNJGysB
IfRBbNMU1TQLoaY/qAxIqGZvCqM3QJgA79qQKUd12yKLOoiZLTDHb00pW7P3R/zwSMRt7MPFKKF4
OagsG/0GnhUfWDvwjDqxTHLIjCsJ1mTozBK66AmzuWl/Mxoh9q8KPA/2aFRxFT0paEB90Shw7HLT
GNXn4gX4JrCHjkcp8iAS+FSDe0mUy0rXwubr+BzjNpOvXmeKt0PEG1czUBrEmhznW+XX1jTpoV0J
EB/EE8sV8CFGlP06BKZvBMDLv5ZgGCvZcgYuwhmEYaG0hxeLOMDiOlfhNmfWup1hKc30lO6aI1aU
SAxjLx2yzEYDkbPPIvUTrMVduA9hVOwr4Ndfd5EavHMhZ9Vsn2rsd34dhYPcagUNS5/2bRn3JCuu
IJ7C3DCESV3H3zofzzYGnJ1kFdU3yKVIiD99nXbx/Xpjj75WWeiS5i1QTmFmGXK9Hp/i+RbiZwwV
KWyjmkTgK9yr26XURx21PUfe1FstnoI0teBW75I1dJ8z8IrYZBKlz25ECNgLRqglzbfY25UUSHq0
F1Zvc1cT82J/E43HMxes5hxnFK8poHiuzyqp1OsNqrdZafGDUbNWlzod2sPTGYvubIhRCTx/8SMp
j9vr8L9qHrApI57XVTN93w8lndcfZ/C0iT7Yp4zdcyXSkiCXpY+es+QuVALiKtn/DmlDDUl7A/Uy
lKnAV1PruGlR3iCYod4V5D+N8j3ykMg45NFm5rnwQs0dd0aKWtPJeXCMSmQIDdDTzK/AxzLI0avq
NzKB8SZO3eeX9O8dHSITWayHPY0/NAiiFaGFWmjGhAMX9EzOBnDLzWfeLK4Ap7JNptpJ09AI4S/u
X6hooNVBQMRbvx8y2yY//R9G39haeVzWvV/nmNHaLovfWo0bKuwuWva0HcNaCWortnr9Y6iUOu8s
of2kY31Ro9Z/33JGOWNv3e5er+IFz3OZU5G35u4ryiAz83Vj/8+HiKG03nzP/YJz+uEAoo6F4TP2
R8bqHGmKkmbt1HoXB7U0wPtoEr4x+9OOF4SPVsUiweLh4vC7UvNBESQsUjhoxpcjqtX9Qo/pzBum
5IZvzJl/CkoZa+v9s5czQou0qh/Smszpo431ZQZDMC1Tz5XfRxxFR0zfBkq5WHkkSa4rh8MBnNeJ
uxOcoAKTmAFiIAq+qqeEPEwxEyxaOkKPlgr+7u/YWXtCGnrLh2dvlkLbCoHgk7lyDwdj4/ATUqN0
GshgWcFOUnJDU9ewbOJ0/e8KwStgm7MgTFTsIgGePolhAxvpWi9lXlGq4WQGtfWpyiiU67EghOlP
HYrkekacnKC0NvgEAZDCJBbMDDzlt4BjgPYm5WMYLTWjcgZKxY16XwWyO1d4517A2Fbh9dDv5aJP
3m4b/r3CKWyZeC7M2N/+oOAxUg5BWP+N4Nsu2Uo8jKz+9d9qCvpGVGjHDQcRMXe7wJ0SOirvRNOt
KP+wYc7ketGnkcHgaQs1Nt67OBTsEpWoRwCcMw5JoJT/LADNu4Sef974vmtRy1aopx1ND+DjqLLX
tzrcc58WNFnrGdDjB9sq7MUOMmSBxuI2XtB8/X6CbcFpPdZrnWzAy1TKgYQo1vSfNlT7cLt6v/5w
4cPC6Tx6NA8aZjy3cDYbXGGjVQn94kPk/R4PPAD5QjF4iM6KbvuY1dmYbNSp+u91oOq/MRtIcOlf
IzqvY5SeR0RoobfexlccOD38smlrEb4ITT/wgF+MKh3w8YiHgIZxj+j+QKV2rpguZNPQxsVYi5Iz
BM2tPI2T61T+xb7CeRQsGttGu3T0AX5rzbHS2wSeZpgBzBPl+6uHLunXuXCIuyqMoikjCATSexZ9
iE0UyEgGgTdNaX7w/1FOsEdl5Bty6zbdwV6tvOWoEcsNqE3rbxwdpqLaxF7ZyLrCeLdcFGAofVS7
fPYLPr++77x6+rSyNniyBr0Lmv3XZkRrmb0LgZ0BwfyKusqVZ6OfJge2D+lobs0AiRMTDTQ2dHML
WkFqiOhWFssbsODS4oX9fGWwFFQlHPtFGdpI5eZR18bsMX+8UXpMhOjZWwZclhX+D0PdJuRuZRCp
ghsKaDRmPWfAbNeGrHe14rKeVe9v+OxCkVAQSQwCcAV/9mZjB7qjDxgzz2p6D/OO8dAuqq40rhQ3
B4zxoP76l39gpugM1KRz+FI44/yonOngGoIJhluRAYet1fjmKqlU3wx3mBZy4pm4o7jWJF0UzJJP
9HSoFjPoo/3brijWgRlMFx+1oRbadZ0Tv+ZwfrdP2dUDrKvm0WokJHTtSnXI6clfYi9A+LXjqlWP
5lWb2B2rAVADFHy7YfpybQfzRfkbrJ93Mnn+ABkeZB3ZxEE+aZEXqJw1Pe05+tXW7OpCj+ZjguUi
AFVYVlRbnBAvHktzyTCTEHOzSOfIM3CHRlADwgi2DtQCCL6B2lcFskHvmy16dUhI1V5fn5m29DXW
fXXaE97EL07ECczzZEYATw07x9c0KOEHovlNx9B8f9vtJBy8kLA9ueBzZ1d595Q7bNyUl2SXqStN
sDHvh6Trqz/NHfAyUcpQ2ERrgojR+p96yau9Mu/IOOwPSWYovjn9F2y5tSBapG2e9l9PSVyvXNb7
NpwAEK4UNZN6eiGjm4py+mD2d7aVPzHoz4CG5CmPzIBI5lknB1xUZvy8AQODY1x3p9U7Dr/b7+QW
xmrIugH+0mhv45mC1QyjXtoJLVoeuBbSmf4Q2Fpq2f/6OUt8E/oqCR9ISW/1GyFDX2wvEtmWxRym
+9JYlquAFYrL+61RwoM14OoGY5xWyaym+0KZaYesNBECCgmvJQtfWMVohg8btuQVhsS6JK7egWyF
huHidlA8/ZCDwDFKzV18MY0Mw+e2i0vOH+lBRfuqplKHpFETFttAjNxYiMjbZWA0hz93dNo62oA5
K2GcfEo4MG8B53ih7bwuC95O1XgRLAl7AbC4NlRV0/r3joa6lqHb3RAJu5lOWm0DZMdwYabqX+6Y
gy/ENL11VhYnBZGECHJr59IFSK/M3/47ckGrcB7ND1yhc4ckxaH4/Qra5fFHTn3xb+XEWMz9izsb
PmffS5tCiNw4zm8WwWFB0is2aT6ey6dDIfhbix6vnADxjaR/5gYvjJxxU5nZaEQeZdwkiWefB+91
UYOrNNC+3+0n5aznBpywqxSiG8gMTnlZJRlpSeSmXRnIVEi2O4iGQVHaTHd5jYpstmcCzz3A7dIO
LLpRFA0SYrisbY3nUcClL4+ab0PSGlbkkHUfYTHbgbGXNeCPN+Q9p4UqBpEd8qdrtaU9blbuql0+
W0T4OTINYqUqhwjzsPOsToMGduaWPycwSI450N4bWX9zhGKFhHMg7+21C4jWn25dXd5i8ex7nR3k
SiqIP3q2SixizO+VKqYBrMevc3SBm5QkcWMWYOuLV2gASChxcP9fbDIswdYW2SJJG0bSSFKbT9G6
fbNhJebdPkP5Tn1okPpHO47hC24H9IC9yl/aKZpLzCRDxyI9y9RVhfjPsnfbQOp6rXG5CTLro2cS
FU1I2nQK28P6tw5GL/LKZZTq3jK8OWYMl3p4RvZsrJDud6OMErDYynNBs0vRigIxm1FqIRly8QJC
+5w0NXw/ViskXEMyRsjYEJbNkp09E2iIS28OQwQbuZCZZArj3UgtT1yRiLKvrV/ZKOqP67lOp76u
CnsOo+H33R4x+DX7blIvIRDKhauaagNMJDDUXrZzW5CWNtlOUDFZLAzOffR/uYfmlP3nxLaCMSEX
a97QY6ljvwcMK/VFHYLgKYd1AMRRthEErKMiMQquxNrhYRQR+xYAJg7br/MAOkZa3AS1yIKpNdsP
sr42ViD8V3X5h+r2GXBpUxOhMx7B9YHsUKxRxkJVWfpeWIN6cVMFiapIOlGanMTKQ+mOyP9xRmD4
wQB8yGC3JLgvVsw2rkkXsx5GzoFo+eOiHDQgFUgLxt7IINh+IhBYsb0ul2P55cwkCer/Nk+/3CTt
vT+dFw+gFf+DFDXxuQ/C0b4BEvW0m68yki+awSErppbCIU8TVhtaSsTRMXmQA6+v4Mh/hQw84O00
HUSdngUF1Ep14XSO8nBgaQufgjbgrOHmBhotOXN0r8bqiTZLvQMIn0ARpreb1G6KN5wsVtGrAqUr
1aLVqIYFduu9HcWVcv0DnXPrZttUKiwtvLyjwkP2xWjDpeMcTYUVCWaBpIu7Eie00smuyfmNctTP
5zDSfG9FFP9D53AZadP1dRJBqO8+zS6AmL8gwbmZLWolNLnAZVsKQa4ssobVEsPDpV+1e07u1VBS
jdGsiny5BZuV9LodNZJ1tCKE5wjnsmief1aGIq1xgAyPqsrgwas/GVuj0uurk4+z91oRE26hnp0i
6h/WZOtgO0+wYsKhH5izKKjZuY2yF8g6/MsEK3kyvJk+wbQeIYp9KMzZbxHGeeEdTXp1ucsTvNnD
9YQPiG4RGtsHitOOqd1H9eo7IJusIhfoFhCJWTFa0ugdHXjcsIvQirrY3VKCftwJ+YoWnOaJrwPM
LaFCiym4g/doEwh8LsNUVcIlbsM2Mf+x4ljFnaA1elCY45rXroGZWlN2JRHanfJKIGxXXlRqtYIo
YsCdvqAF7AuCvf5Kf1JlcHIoBJH2+aLyikw3Jd2XRTLLk6VPvO2FFAqU9howNzhIlLkssF6eictO
bd2JJBJycF6zpiHdDtqo2MEUNC/y6rq+Z2Uzh1qrfEcm2BNTcB/sgM/XcxvWrH+IZThiKXjU8k42
cX+hwzul+PxKZWQlMAvmrxaa9YuNRCWKgkC/2eAOSaILhW09w03SZ3zG1v8jt+BuKizNF3OaYJRV
FHA6NasK+1Rtwh1HAaB8Am1k6GVrm/nssZlEWNwZFlL58ybZZWZxjrtbRXq232aweOU5MsGzklZr
Fr/9dqv0iS31RuofRbRKoTp6smcmLy+V0NTQzuUs3uvnbGx0k14f5qGVn4DCAfuJeRnpSvL6PpZV
qcdIcmIgowJcuEmLTuDVelvypQPJYtMR+WStwUNs/gUjIT1ngErw4TgGJcSe+bmQmQO4fkPa8kFM
bqnM+wCPkI5+0bqLuyv3DfMhq3koddbSDnJMxeWXIRZICVt2XhOFjORP4D/XrcQZNzUgUPE+MD9z
ouQOMgtI63Y5bDCBeBvNeKHekt4fHOZmgYpvC0JhkEgjjPLMYE55gKkaJ+xzLPkxcO6Pd8cRvoeJ
BBErPqJOGB0nbh9O8q6Rr5hUCo7DcJ4QeSjtJZ+s6feJb6qel99EX7WNK7z3LSqCkKXHDHMsGEkS
Yufu+HhG5gIJOwY/qWO5u4yWftqtMEOr29tFgLX70+6T7KDzPdthft/I6IdmWckNyGWGYFnUdcjA
7oX2Z89eM5+yTbfz/W9yKaiNXCnmlxwNSuYJPhVPES/7KKuq8XYYcETWmEniC42oA+uXm0vJamQr
4d1fhA714ald4UcQg8ZW/13oT+HMUnMzX78p2n7/KW7zRvIzohqGd0hyMSOYVoZUTHe9rZIeXI29
9ivqC6zoTbF+6n4sioQz4mtWrs8S7h9NS9saphXpgy1xx+TPURJ8G+jrkj7Wk9AFCe3dpI9RnBMn
WfQWQ7kSzg8z/i0gC1c/xiAcBsmxwCzrp56SFwgModUxiT7o9kT5dIMbLScV5fQ667PP7r2hlZ/9
dVCWiqoJHKYOi9XY6WHxQfGT+PM+VMQ97U1v2TpXnxAd9R20w4fWpPWLeEhvUE7yj/wbAB7TX+Le
jJ07trPXOt2qDzlRB95SFu6+0mSLjXbABe3nx9gKcFawVpmY1GRDHcre1kDGhPD3Lj6LHcvimjXm
+GGDunnsOlHq40+FE0si1Dq4kVKTD+BUAlZQ6jl1+/pmjZGrYmwAWypSjOsXh1yIzQLJe4ixgfWk
vhd8xYb/RSQ3inXuEFFanmwvjBquqPP4jafc0Jn92pkw1CQViYNkhYkIWLBVQG31MydyeXCE4iMT
Za+h2RVCBY9AO7rps4V63A+benluB9fF+Aiz035oNzsg/HuvFwos8OmFzTwcFE88yr9+1KkGeDkP
ks7DhagBn46iK4cs1tdHrJgkxptsBtIsxdJpwXXTfO+rWiAhiDJiP44CY1DdZXL7Pg0Vk45l1+L7
eRQKZEGlmNH+uyHe8dzyigroLy8KEe8JiThzjuL1DVDXpoYqMWhv5KbezjTY0EfR86Mquf7gGVzp
EkpAkhAKAcfXwsNEYJDHzi6X4zEJm2SPgmn8X2qsJQHkCnFhQr+grgud4yymAEmGjn/jxgL50Ql9
NMuamyMumgYt9VvCyk5lAFX9nvNx3WLSkWHOBIi2DM3fKvo/nI4ddl7u82tRcpcpX1RJZ80ddie3
lE3bbgXohS6CYeYuk8X3+xrfL5tWaPmahq/CqD6IfVFYMh2gbFXNtdl7hmLk1gB1xj7BJu7f1xMr
FfkJAP58y3E1jzRq/8z54hTBYugqVlNBWgMxenxeBgGjOPHRc1uzD76kzL+rkBv4tSJe/Qph4AWb
aPjYlbwiEpJSuH251v1pq49m+Wub25gL5MtSafqlYiM6aeyGvD8DII4UrSa0jQFcw2et34VAKcly
6HVCeA2U4HK3Zq0cFfe8mimkONxnchPL5Dr6hsKw1QpOAkr2HPfc2Ny7oVw/BUkxiBzHd6PWOAU3
vYEBbrt/MqUr/H2bVzheavtSaGFT1oh9mYaTyosJWVZKFLVGJmztc6lmWuwmDLd0ODHFfXbl3nHO
VnUKds4+yZ3tvwcqy6or+9SL7nvrGlb9HDYK9fwPZeLYGq8p1XIeiv1m7d0qctyc8qcAh1eePA1a
BbLL+x2R9plriFZ1v0xQdVKiNRtAKJaYyvPoVtDQvDuEUCTmsOPElE9tWdt02X/MBj5KNYhc1OQp
u9yjeiNZVjEZw7yl4UM05vHndk4ayd/Ke+hGzCOqTZrCrfQSV9K3YkLe2unjcQtFsMZ6UyQlNA8t
4OFpx8WWQyp2ioImZ4ijvF3J+ShcPglR4E99AloY4dP08jv7Why+lxff9ywSFNJjY9b9PsnMcqrP
8qRFCIuTc9R8XiPup03RXvMCiAyIieU6KgyYRVd/Rsa6//KTYzSyBLKwfGd8nlo97JHejJlaHBHZ
cbtJTxrXd12tiicF15UJNhj9tjQrWA8YGsDgkWgFKNlqz6NAR5CItNx/Kyesl9ZZOOaJZUf4TVyk
rh40e+9/IdfvCmIXOKE2yFkAYDqPr7+D/xA09y0ywTy5XKlKUdhaYieKE1BsDIvDigQQoffyBJCl
DMSaIo8U5FX3fF2qpdIQMwNXOu1FoxVY4X9HWE6xu6yBTcxjCc/2NHxNNE6iUEGZKf6wqVGn9y8l
WgY2mHPuKEZoJCcdmUndn2J8ut6W2xcy6ktxc+UMYebR9GCaC2RR+pNzEyUvwjEwjv2DcHQsZTRx
V5lF2KJH0SO2TwGE0OVHwTvHfqzvKLSi8qWxXa6xQYOArvVbh5TkiGOqt6teRS4zld5km4l5gpMZ
H03xv5VM8EwhAeYHNy+x7rQTCUyhvqcDGYizB0BgE579Tswr5KqkQqbY++0almkvNvNTlpZujD5e
/GrspWob5YUWRFJX3zk3ZYKwAcEcADVvUAJktgrMxUSV6aHx0JlqKTCC3BwJnJ9EIx+Uv0QdVTeu
8zNf4DKUY5exlKVl249RPvf9K8UPmdOeYv71zLI5bPm19KHqhPE3p0chTuUpFWMPTa/Ujr1PwKHy
LICDLVW94hUqghU3p1xqyhuJOxuIrb04JrIenQ6Q+sf+3H1DDkEu2xlNAVsVUbbDV7lDWI1Q9Pjz
45iAtbwrPfDdd0AqODqHjccB4gdyES2x3eS9STVNKHT1qm49lb/PQqR3JvD8uyhPeCrx0kVG5wZE
Lt16a+XhjRNtg+JqHoigDOGeFAompq/xMLrsFpI18yqM1xGGCk4ETzEIFg/ZBplQ1t+MtHtAnuP+
QWcM4EG6JlrIEtYw0/2A9HtJpJlB3TMq28wIB1gaT4wfbCgCgsdDZ5Eondo71PBrGvizzvSOlExW
I6YLnDGLlRiOmwggjYDkTWbhleCSDiazJFsBfYiV3osVANcgt27hyJ7/rcXiRm83xFYwDCQ1QFUO
yQFSmr1cgXJXjxE8gTT3VL724narHPjQ30F7Ojh72SFn6jCkhJI2hwJqKqyvFffSrXYpnFG0MR7E
j0PLxT1hjNCfJPOz0XTYfDjn9/bkgyVXN1A2Ge/l3nvcBY8vrhm1ddDwo+O7QSfWuNEebV6ffTYB
BsKT7jeglEVTPU4ado5E91HQYPgQ50rgCt3pEb6fKZS/aql+k+Mfc2nHZeWZ692Y/zEy1BzNlr7x
Id5Z6zNBj27rLe40wQtjdTrxSE6ClEUBimFxbLkX/AkGIKESUzurth0BBdL3+Ke/3VNN40rSnFop
519U9kKGLn7pJ0vnT0599/Cr4cIN/Z1llgqqvhAAUSYy10w4OvfeuAaodDqytewGWABYHQQiz+D2
Z7hfcoVlgu/dpbpWKeBIBKH+1SsqttHAxmA0wpB07t0L3YW2OD3kGh+M2ttjWeEONhLifLFAPVqO
JPhmN096wnh9NefIb6rOJ+idq/3HBxSNy6aOHp2hJwOCVULkvWpYDDttxTHgzya+EWyJ8kHEYRmF
VkGcKe986toGXzY9rXh3dUQ6m1+PhigahgnZ7rlfw6lD65exljkyaHJc9PmebkXzAMlRvZcBDsaq
/6NbwYhtmSCXk8UmaayChaHkXV0O/gFNZbgkT8vAGaeSoEMnGz9gyv+BoVmTOwoCbNiY7AXPOj0U
VkdLbUrUMd9NBb8bZ0vpu+WgExZv6VXJHMGYn3eJfMIP0ROSKMNw3IvuFLc7+AMP3dHVXTiirpyO
4GaMBOD4j/iXrFui1ht3r74zRlA7WBW3TIzImoAOxdFki6lnB+4yaNNUyVNN3C9l9AhnelXcBDEV
oYSRcCVy58T2F6qnJLBYsg7cDr5mHenMWU6cS9ayxcw18ERkR/u2yfWSb17mlqZ4ldQtOt6fZ99O
eqFB8lwL3E3GC1KepfMOMzlRykaLmY9JSFV/baHutf20qfsjKUc/HNyxnksAxqh0JrFvyPA3bBcb
o0/U3jg1ded/g0oS2BTu29fWxOWj7jsJJPEMJETDWMzzImpqVC8JvoUY9ODUfBFV0DT5PZyOLvix
r8lHwV9vXuEWZMvC/BsGeQWGeusseM74jyVFc1N/mSlaKZnqovQi6OKDH0Fv0eSeMyaEWnJ5pA6y
4nGI2L8LWIgtGe0gegL4J2sFcaqurr6YfHsJPp9dayyEOkXw/knPU/o7q8UFFuKemttRoTppdxAu
IvOPIo+ikdQhMvsHPHrlmP5ietF655+IQ3GigF6AIOqvOG7duXQVNUAhkCBtTv3RjP/sbtJOojmx
K/giUEGEPWP/IKXf0bZMUPw3SO7eEhdVv+cC35YjaVMhElFZp9G4mRindUj7rYJopKN7kmeWRq/k
FqhJ7Pr+suffIrts7cW9pFKY4KkBMZT2A+aXJS292etoG6rWqqEoKpbMxwgECbMgu1IXuQW+jp2J
5w/mBK4mDcY31rbquIj3QO7FBD7LuGuSUWanLCnUkGOKATXvnLuc9KvyofFHEMem25kIlYdJfr+z
8Tr39eFJlKLZwCC4xZR9x5TW8+Rr5cOazzGNikkCE7+cHhntuw2Wy1NxcITbIP+nt8BZqfqK4lzY
lm7fL30QTSj+kPcCoRWTB+v39AjXCzfJZvzRDB2zRaZc+13i9I/7jKJWPBgNiy4krebGCapj5Ou+
zJrdVRLpLxZ47/ko6aRPdPTbqMPGCswhj5k+/bKPBanJn2on9eeXFALt81uPoqhyJEbzL174XB5I
/yFsLHXP2lO41zUkKMtSXgQsPLUyGo/r6fGQe6NTHGkcVGn3Zkwy9HbAIYbqQXY0Tr77/DUMLU/4
1IQK9l1qN2NaeCK7s5BdGlz7miZSIt+imKJPO9jZEse2/mnXbiuKRmiuskW7HpNTVF43PXmEfEU3
pxTAYasXPsx8mWKeA0ZeH3FcMZ1hxame+KB+pDCvpRV7jMF9HJnu6k2Mq8wrZliXE6Ox43Zr4lEd
p+yMvC5WEu0NnuOQvmr5ZhCsTi/G2ZQsjcsLeGSW1T+B4k5Qq+PcK813zQ7O3JcrtnxKoqWra12b
vUNnaHu/z/ST88r6ZsPEmbUfJdmEZXFtlgDVxltZ7EgbBk4Rf6aOlkhAcfY2H5ibnVjMNkzNtqHQ
rb4D41olH92lpBszapQ2q281elef+mAb75doZq7LvqU6cDmzBeawau1Av6jxNg1IeVE/9Um123v2
+tTnIhNrywaVshasVc3DkHasDsHCJUtSli12rWqa/D1sIToZ0+WQT+MwB4LsB/BxPJ02Qz3VyoZf
3BPJonrQbm3oLvR5zK8HTL6AMLd06kKmiOPf7JoSIKVZreEOMGm+LHSFsGOfpSZSmEeq1vUhyMeW
WQ4losiD/T53iWH+F7DlvkBsVepvWyP6U8A2getIakdhoiL7oY/0cwWin7Cd1HEyxleXPTIFlM2Q
kJkuMfgCD+0dGuklfKVqrRbyNJilHaWXwceV3pvwQrIlZRk9vIMWzw4BR5faADWBmH3TO3qeET1s
jY3lv/g6L2lhGV9bWsvtoeE7SuRreM9GDbrG0lxF/Ggmm22kWscRFQJiOgjJMTwCW22hDS/rnIfR
p66yKGJ8PsNXmMY0B77hO7OPhiD/XvAo6Lb2fhRAY8hXLXV2JKGpRyQvf/BjawPwyIZLJ4zfdye/
JJhmilSj7DGh7Qw01Dl7eSUt2JLEdHge9CeFpB7Lt9bbO/KgTf97RC5iyvXnO7s/sxvXPe3TXfJ1
cWYETVc7lt4tLG6HQwwNgjRoSjPdpt6fEAIcgfKqYCevwIqm72fAnGEzzze4310YPR38XTbEcXJV
2MkVY7scavqcR4ecEf+wGXsHYi4e1UiLD7fZBokuKdBermD8UpVcdI+/qgIbnye1vPkNwoxpi0tr
nqjCJU/XjUKodNXerVsDyOyFqL05a3h2gbQplNWByabmbZmg+RhloprWulUeWZjpRaLo1J4sysca
Sc/KfDSiE/5dAGOliGvlWqaka3VOINHpwnf4gXPq7ikjDmmGnGoFBkYQjlHlbJRdPv5wfV9rwTi5
w6VOaq+XUc3NvaNtYJf9IfjS3LwP5Xl7vCb3n2ciQvgwFP3vm5ZXOUFTvNHh747PJck6wW8qGZvE
zH9KWRiTIrPmtqw4izzr5z/53gbX6I26k04pZhDY1u08N+JUv+gtsGm29rajy1QYG04NYAHD/JaO
/5dH9BS2+s1iIk90xKx1sDnHcPrMOK5sO3UkG3Cj8wXFDg4lE1IESIBKwGFQ2jjkf9gNhreCako6
DfyfhzY1D6RSQRAhqpJ91VeuzDVAvSYyoB8q7k9RSuu9yFpefLggO8QMQAjaoQad9UtWamEqKZzu
4667NKhwBhIAyBfIrtR5H2xPJ3taW/TA5yVpOYdP2zQz1C/lermXwuthxfAZowcScQOvaU8c0yrT
a5dyF64MDXgoZpsP8N9/TVGGaRIlOHHRcbdWMpD8hbtI8jOBcvCVrdl7Y7vlRLKWKfNGSqBWVNdj
bMJ5EOA41tE5ima3XCFN3I1UM+8LaWOawUN1A6SyuxEk9575krNh5lygXKvEaqEJMF75OqqSWqzI
Fk6HZ56AU8Ao6R2ENQPPGZ7u6ajm6ZDi2WRlEltOLZ5k1skrqAZ6/43SpPZD9tjD0dWJti2l4RAU
Ty3DptOu38lsCIIqMcS51UYVinDzkMYgsm0glP96ZOxMICYO5d2LoXhWZlKHoRUz1u/XeUhWQHrh
GXoCoj9U9ZtgNvfaQ6DhTEmW+BFoEYtBY3GW3P5u2XTSm+V/DKxUP+iks5mN/PATqzNu0RJD+gqW
eOJXALbwVYYnnVewEyHXPEsScCTrvT2PSewQHBrNMlCLgVAszmu2h2HHWXoVia8ThcrEddjx6nIi
Q8Eqct4umv8td+x27NkwYuvAsSblv28ThGGeppxDE/xTa7aXuLrgVRMn78uxv9J/YpiVwRXiiXAQ
xeCPBHdtATnGW8LudAQt8T0RaQxZSbSRmvgVmjYCeSpustDauWVgdXLy6i5vac+6QcoHch1LwCVl
I9ue+B6P9kD0iFUTx+32LzP0i+mjBbzFan7uJIOwVrg0RdSj51asokcwnfwqXlPaTu3UhPdUC5mK
E+N/N2+DljClwo2MvYawF+C/wlpFJKxDJWP3tZpJDD3c3shKFdRmv1irC22dAZFMQdNvSOdDZp8T
vXs4mFzXqCgfLBytTF+vphRsXfA1m51OWZA50EW5RR9DWggedsLzx6QU4DSEW17jqInXbpd58KRy
3fvo1TTB0fQGnQClPnBnzaZe3g3BDVP4R4f43fvpJPLH4zdoiWbLDlmBtk5pAoe68mtuBCgfNh75
L0P4UvsEFRfJSGx7S2W17eStViM4/vSGpEayjnRRe8x6zfjuuameaEbIKcF8wxfsg+kYkbttLkCZ
KDDt/KhpE8yUpJ6gHAXiO8QvthSl217GvqH36KrAI4s3e4gqEPPmDISfRnKGTLiw2leQRWLLiJhK
RxeR/h+KxQBMS+l1Bjw7E7LugyYcObww2tB0iW2VG7UQAhKY6gsKRKOVfaVBPxXNl4S67LxJZtp6
nGt2Ox8PS7rv0fAVz9Ld4Mxq0v7X9z6p2RJYNACviERLkOuvV/zJ0r7OmDHZJtmlthTubgTiXfLY
n4dLZniOtpT6NgCOl0fDSjppy+/KPayArrHgsnBda7XGST94Ujnu7Wcv/21XxYIi9kd0l89FQ9Vv
+qli5KPQlum2hujs4TUyjbSpAltB02tyPEei0JrbGfr8RMiaDhHOZnYpxD94u6DRpN9iH5A+Nk5J
5UA/F950O2c2JzXsyoFUf2TQtbx3jG7W/3cizadENnWEjJbzoWIvGZDc1F4LjLwYrxxvGr2spf5C
YoIEYRIqERH5UKZn1FvD1D5XCG8q/FqsBu1bd1RFbcmjRt2l4nYN20LYQi2LSEvA3YtGkcuJAbS7
firJTEvl1U5SDAsF4ZB1/2sBvpd0hG53Bj0IYO7xOqwfkOR5WZjuQUCpqCrgFkrrhaFKy9nNyqac
fBVFcfay6O+AKS3lsLq9qpeGMSFP09oDzqxGH1g+0ZxLNBRs7dld4oXsCu1Qms9uGqbqISvUrTt7
yEUpU7rHRTK3T6lpuDdNMA39ka8fozPbDxTimdaOR9N883DrFzDGuXaWyB6z901+AzwoWAUbuV4I
UHywIMZEWkJHXMhnZUoKjDPwl8I2/dnKoBGQUI9ui/tnpSFKhIqKZQPwQ7y2lKe+y5i22abUySVD
56qLx8YmI0M+/gYDgT+dnUGJeOUsMoFdkqeHEnwK/qXFf7RxGstfvjHMtjsPB8lI37GMNOFc4hQZ
bWGhXI0Me3ZzrFkcau9q/HC4LH8aEAqyVUdqeHObtm3cicXQD3uiEOkTLP7AD5V1aERwl+n2nSIe
VkqUloEPs5seFFlDdMNnyl879oSwtRfYy3DFvP5TVurJwM8k704N12mJVYjPbtbdoiNRnKwFQbzE
BHnUKQiAKOPcjZWoeI3FJqlXO/6cgzji21ruRqExt7F/3aXQx1poPAD4Gy/DXYZ1MsU/9KuIICOb
7AW41mr2BDFlTEWtdQ9VZpHXiy1uKwLvf7FlstwJVLmIKWxOLCj4MWAJlTVu9HtgSsX/WZ72vG/M
cCp98yS3zrBgse6M5S7pjBqMvUKnEyS/XqrXGnaATZLatTxao6SqM76PCjkDbQoQxiJSYDw2UaY+
vFbU+/Nb6xCCySsAOFsxSQO+hZYc9qAiDZ9w2s/MeE+3Tf0aZPsuxohNlFGrVlC+MTI8hazP4GZ1
OXgYBBw6JNvnUEHPtMl6DL8nV3MUv3y6U1txYEwYPdxDzl7wp3zlcdz2M+AtSb4W2UouD0RDnN2u
B0np/HUpjMxwrXMwaHda2mn45cRdxnyEz8LGuPaIwi2gqTIU4WWzp9Zfa+o5qBWtk9FUi4WFKOHu
v+PitvJkGV8EkJqNI45yXNUhsEqewlp7JVABxzkT1r80W/jLltebPZj9EqjEgjwSkg9SP7oPwKcJ
apSfUfZEs7jBAYqsKXVxkG0nhh6sdmI5C0u0g7FG6v9jkWOFNAtfBo3P0hocHFgu0KF0sRbpVDGz
vUxcdiKpnusuZq9ZQ6g341Cb3cFRCJ9HuKPfpwV7eSa9NgjpaJ12xb86yHapxZzkSlnZxQYtmc0i
0ozm6qpb0w0NkcbRUbuF1S7rQhFCUL8uc5sHn9lfC1c7Bxmvq/I0n5P00Mg723DPCqK9mPuhoTul
tv4D4c3FhL/YgJQr5zMgWa+LmOHMsc+WtZRt2TUYmCCPyz0exdA32Dt4wDYgVADpWwBdgi5ZaB9X
kwh1ctG/G5eFzdLtxnX6j+R2Mv9fIvzLxkh3QQkfSbUC/D6orUwSS8WGIuyVt8aQy90QhsxwdsR8
+MownviYC0ja32HxbyItgCXU2JxIpCBbKrzvV5UTLyI774C/wt2WGAFMbbFuk+7BCeNruJ6kiaHj
fQkDsGRQaQMidD+sV6+qiORadSgEpam9yB9FKK0rivJMGD0pdd8M2RojM2UxJUSZ0TssP3i6JhHh
qFx6by4akEwfYfX0AhR2myMRmpvont4/uVvSiYRWlGACgXpdMLsJ4ffd5csTPbk/F8X+BtIY0Ku3
0JieVcl9SUKxDwgPsjcIFDP5Zf2O/wRut+8OC5REzqDHWRaTbKc49Mf9q1srvL374yvW1+HqUeX5
bjELIEfQw2WprSzEDODa3X0IVWwcdIZlIkYDXNg5dZwaWn9qWI1Ozgy445pDzhvcQbhk73cKTbeX
YhR22c2Ox6i4oLcwzmq7vm9BUu2z3BTGOa+QZrUx7Q4Pyb2NbHbYw60VcaiTd3zt6ndo4DwYuUKa
VeonMyTqalDJJgHJpbrTD97FIyw4zuBblqgZh0qu2aU+Phh4hNLSkYsbUFstzH93k0qAOqzIiyD2
SKbqPqXUGcTwe2BH7xVdymC4btMpUVvY4lehOrC7CHdE7vkO28jtJ6MEnYCGPJFIjz3RR7GtE6hn
pkBNfI7i0v7RYfcZU8QOcNapKRQZAmwAOJDqkizMtU5a6ocYj7pvZsBqybbXgQ+siIr3SLvN1qMP
eALzk3kES8yxbZTZwzUITCVRYbW7YperWOVLvQTefmJkKFaBIu2OSzqP4hngvmtl6w0w08YPlSaI
biy+uSiKeJ2E2nOnKYfb3fVuE3f6sLFERdxiGwFF2OurF4mqjTQA+p6V9ZnucacfemywbLuUXrx2
tlnL+2Wuzb8jA3oY7GP2ws2nPY8Fip86EFPGcSAlX8h20O77K9Xw/Fxd2eVu8HF7RfurW20SbPEA
H6gWyx0lPlA2rRe9MneBULmhTLCxVEZNxGyTYAyX2ymISUFB93Uy8k5tmkY2X4nx32qlVBa+0/LV
Ma5w0qCJVhsbksG0tmCnfvX8p2luqw8ZEj2nm7ozL7D9SdiMhvXr4AXHAodi6RQGq3V+TMbN7U0/
z5zKOgIGq4f4oxbJaL0YHYt1wU6dZh4drxczf/+WN2Y6E//5HH9iDimCSocri2nqLszRR1HLB3aO
HR1s7plo8hw00shWGoJpsk1jN7Vtm3nF/3cLMtJjUHviDuC8ya9EuYxEHIHI5azPDCUHehMaIjnh
59+ljZ2jq7444I21CDp24+JrnE4ph31HarEL10/ao8wHwCOdLtaDW7ZV6msn1gbB9Q1gqWnF/zbL
M5qSfSeTPGYx+UcovlPdTEtT7r0TQWcsW8jxsD/RCHnrQYhurHQM3zQwGRFXS6ZODLlbjNI1ocdT
HiRgwoiN/o6GNTZ8m8fbC6xfoerMR0595bkMeyoDH/GFjlxUci4ITDXkDDrAusQjk0yJcqqwk74O
9r8kEm+SvjQFbfRXmOWD2NzfVoOwdmwBuKCLhTBW1dAuIV6s/6HjrhzHouo/3qZFNOm+4dIdmiH/
2kKhDEMoBybDhiE2W0ud5pf/5qLE5kqsd5eYJSBijmmIh0+Dj+lRr9WssZGn7whR7ORodj4E/9e5
v1Iy8tszZWNSqzlucSIjlhLdwikXQRhVXqMz5tz+hc4MbZ0PUkbWv5LxmT1cYQmfBwbqAL8wM1QT
z4IcKO9uh5AarQfVbKZbj/VzYT+dPvsZk0Xrq1luNxORnjJW+xdd0QNa8IxUBjfwyOeD9IMSQ1Hw
Qb56sw/UiCn62HoaVfaS7Su2XA59rY+ZoDtwIEY4QeEu2NT68eMmXjSM/M8xbqor8pEWuVeIRx5P
gjKASI/ehV92Gann1QF7Ta8SdAa5qCshsrCUkfvzUU5fB1pIhbJj1a25tnlDalLKwsS+L0E45huN
unfo5jknvf7K7Tl6LyMxXsYM1KOCFJ9PtE8JQVhJ0OSR5wsDkF54LnDc2Mu4R8nhXs68kdAPOZ5u
HTpG+jurDOfND3bU4nkl4bgjf8F9rWMpVlXYVpUtT9av/P2g6EfEjj7iblTmsF8XyPpWo7V+fut9
bmFW37dStM1Z2cyVgMZ8zHQytXsaUPbWXXq6TR7Zcmi1HvVo8xmkOm6Mc2M3RTx5EWh0BkhUDAXa
dy5PAMkkDHOto9E7SDIPxYmQhBu8FLOwKZHDylk+WRd3i+e/2Q1mtZpRR3jn8nSr0I25pPHwLcfk
FuqhlMz+kIJv1FBrje53BY4a1z1rHYIhvHhV9sX+uY5iSDI5Yc/9rINiMZLLuw6irOl0tgQMTWsA
m5Pyz4aL7u2j5yEypcVsMUthKPjHUs+lS78qRd+Bh41AKu34XzOmM1jkw6++vLs8hAWFP/QH9EzE
c7ZBcY3EA5HqRS/3+8UmANB5x9CtsDT7RvB4T5CO+GIFD49V0dnb2Y6lzolKwhGLD6f61fpxYp7q
Lipt7ffXCpM1WhAyMNLvVOUpSW9jzhRtCaLhfCVVgDr023A6FuJyceJtwJ15lv8phHHHrwbDFqdI
suzIIdzZ9dDiilkIl5GfgSxFKLH1ar+s1wF0hW5RjisENln7rX3xEfWFXIPjwtl7boNLuVU1gykv
wQjWs1f05xZBCcKkkFKc3Fw/84G/vR5e4k7T7RKQvkVxq1QhtIpbhR7cCQFnEyOkmn3bUENBatco
EuZMphk8VVoHyzrdoz6SUeTLbbtncCCxNNvyghj3Dtkv3CD+Eauer3w79+fSbLL7kvR+QlRbpEG2
Slz0eC9JcG2O4R49dbebti8wt1Vt1Px6tEyNyTXk4T2eeLqDUVXTD7U5rNsi6+iw3xtiyLfgjLWm
Qw9acPIc6Gx2a0CpBDj3Igsy8fVxmURiih5HP8wIo8Z6io3xD09mtoVfTw+oXEL9b13ZEqyuQn0o
mb2Mad5sZMIoTjiAloyibnGk6lM/nxy/b8/YyBFYmDNdRR68Q4dTWBkNDdU6x3IATrwGNTyq/XgA
IckTJd2MDoohYjPdSzpEwYRxx4KNVk5J5e6rBh6jCo3GBXmzNTSHEM04P6M26AXZWmRXCZo1Np0w
ADfDeUx4ViLisKSIm/QLTKHQU1FvXf4XYfg9Pq7HrD13uy+hvTTnsn7hpUshxfj7Ln53/GO64tNF
PjH1Q+Wz3HL9L0cyloXPzwem+qJAh1U4pREdprzA4SkMlpWqoPBr8e416LHCHd1kmQQlDpp4c1u4
Qh9PkW23vkjkgFA7nCBNnNMASq4Gs5ziveBhSaSBULpIK2er0a7g+BiKcrVRX1elq/I4Nvd2/FTK
HL/oAhX2aF2M+SuGt+0RxHPdmzCvCoq8+415oGCyGvKzLF4drh+s1M7j7KimZLUrR9Oizon3ELsm
QNGSuaK8HfjisaX6IHJBQkzKIClEyA1cqVLiADZII5YbsUdcYuCE6uxCpBoumhapBw70VOCIXM3Z
zsl16ADAkBnqPl9mND4DYrAdNSUl3ZKPwRoGQJqnwiK8c4FlLHZmigJOyQq0qbyktHUiwa20Iha8
AT3TBQwsTVr1hWM4MaEYxYaTUoQKy8mkHQvFt0/Z9BQdPgCdkb3SaS2dxWlT+KZun0SeWDHP17q/
80vx3vQ82RgiHLjWmswZRkxsHiOWrbd97TCEhq7jB3Rwsg6kMSOmexjy7E2yVGA3gD85uCYP9wh7
J7+cySNc3muxvvFx9/K1nZLGZnj/GeywYhRoiZsR25Yq+XlTPnZH7jKmQuay62Zwl5tVFkzp9yFk
8HRYTd+EurPpksUURS8rz20Y+wzDAOKFudaw0p4EGNT/3ah2tOJBhijwD5dLJ0whmGLWIUr5ENpx
61XoDMKQ/wG0HqM+PodcC7S0Tlvt8I4j31CP6MNCeNiaZS/BUV1UZov55CqZz2ULLNlOB/+i1mTJ
VGQZDvY1AIO9rHaG2o058ym+GvnE+4wF2j9QfYEQPQ5fBF5lTFJ+2tlkkWJiIit9egQvNbbPz81N
DPkTkveua/hZ2ZPUy1m7l8zkntuGxS339ftDssZbrnq5NFzUjLuglIBsumRgncLwSGmm72Hu1brQ
Bam30m02Kubaicp0/WW18nqJKtPiRypM9cqTp5GDSTXj5VSlCq8EbRD004MLrULcR5cc7ZUjY+oc
1pZpbCHDKZcIvuTbi7z4Z97iUqDyuwYKi+KNlCQfwVrzn9GaQlI9qFUk9so5yQSef0njJaMLphPX
Rji4NNqTE2whF9R3ELtKdMAT3X1HiHmkv0iTr9mCPsiRCss5z+zjRjS3KGtv2d2Ok344OCw16VgD
3QbSksM74tjTyWQRR1oKb4E/lPIwS+EgAGAh10xVYbxhKP/ybj2VE0pF6FIC6W1mZ/wA/cqZYCrK
Mz7yJOEeiOrlHJoVEFsZlGKxJZrjPphnkBsNMKGMC5dKGxVwHzDlI2/8OOk6ipj3154kqhVYlIYS
WKZ66i9qX+tmM26vbnxZVB24zi3Bqw9E3lPxk8SAbpHurAVYt7AJVUnjSi9ip4leQtzhiPUJUXd5
GBZJRfTIE4aMgxSRhskGT3TUMXxyP3BEoKXZUlYgVlZLXu5Jkwnu/six7eC7bg92CYknEQ/lj9uJ
HhgAXhPfWtL9dI1vyLXk/FSS4zpN0g+l0YE6aU69vOTts0/0bywXuDfmeBmrWS2R4tspfujEsTkC
q4Gi0zQs+51wVE2Ke4H+JfeWLewf+FlO6Mk2tEzBBjyBmW4I+21pogAdi7zlLj7u+KGRkN6BZw9y
1gpSGbNzriUaU/iR46hl00MIYsPyQlhiG4pUrkvSbJr8a0fRO8TKdaPUY/xDgrOWKCTOSnZlcYJf
T6kfVb8wJy47dj1AUazjBMQ2E/Ud6YVNhebnAPlFFDUOFzUTNvX+VMqZARRPG89+eQFp7SahdSfP
qpnbzjFoHddkBrr2c3v3XhnjeHAriGD9yTNGYT7VoLZKaYjHSN7rI6EhpCWNz0Io3UCVSssNcXa8
bpU0tE6aPBzh60swFRTHdhTzEr3wE6ZbucmOY1Etd86sAATsjc59WTtt8IRxAeoaWGETM67mW4zd
gaRyYduIfj7yIQIvrqCn5ByowPaxTfc8fyMkn+WhPLZAhNFj7bnezs2mDntd18U2c549UpJu6kqZ
4sYW5EkFddIry7XA8AAeRVatWooXtiLC9RxjIe21CLqy2JJu2CaRpTCztgspDXRFWk7m+82O+OaR
xF5lla8arMQ8pRR9jfjLCGlnZoGZp6XMI2Vb2jzw1hROYWbqwRohalRhy3Zc0LRpCU1KkzzWGKdj
mwuFAAvssRU61rnHBTacmCz0rTUeypej8rRxZN7vXWe8SPiM4fhaWaQH3a6JNJieOM6ioWvcP3jq
ZjIuSx8FnFwNQaHCB+2Ii775eNdErwh1MInX842FQWjkTF+4bNVDt4QcP2+90ugS7T1oqh3irrm3
igwoS3hF2cxx1Px6eZt2Vi1opGl6VnUYFJfnBt63hhf2SPLc0DAayZXGMfIOBDxqzqlfW2PyNcUl
qcfhvvdxino2OEavD5fKQXQJ/aO7WAFWEPrNxQm9aIbAb1Kc8ezQ4T4M3hNHLsaCLKeZi6wIsr7o
iAAMGwr9WBvKZQRG7IqMNXa/eu5RR77zl12RBNSzj1XojhomfP6sHsjApEHc7rFn7MhYd7pKA0KT
R2CCfMLtLn+L2oZ+jndvGvT7vyR7/LLGeFJgd8RKjLBWKfDbBJR/+5/Ss85DrrsdX4G9EK7gphUJ
zgwztPwY2qW+kk4SszF7sbmbM10N6+gIXYknK0mtfFzgMasdC+flSUcpbJqt44RuXugyaZRLyvVG
gtbPJdrhbRlD8dp9v69p+67EvMOFXDTHGLq8shbl4E+8DHj6CrBfgVxo6jM/AD4aU3vXuWrcpMEg
IYikl42IH33mzNmWYgWQ2hNSdPys7D1RrC28CA3ZfpeP8EFXgiGf8xtlhdmkQ8lRFM5PNFDCmsb7
D1hW7ww7aFOgyZK4QGXhAvWQ8xszbf9JIskJ67Z3y1o3+obl+e2RHP2HR0atf3iXYHpLyade8MAp
4kiODUgrIOCzDm+NboldaXf5b6WNiXIveQiquIlxBUxQrtOmh0WRtLnxSWWRWIpGfagr5BUq8mod
Wu3yqQMP1TDhvPwpRS/kIqRb2EJBEq72nlF8hMFBFPEX7t0gmHbewZya+dAuw/4KXFkKtft2qofP
X7hNUHZpwYpYlpnnEYRinniW2l/R/e7XZUzip28W3Pyo+PdPYkCO6mGQtyrFVvMM9cx0848A+f0u
aAfStRImEFgtegAieMNI1SwhbDUKfP6gEBrgBqYIfMcuVzdDXNjzgY4ILe9geHVqVXjiwJbJZ1U2
uCiiGg7topACyKhQo1TwzAmtpCyuTm9QQ4JOieU3Dpe8iRVQchio05zsC1FOgKD1WRS3Q3uPjCUw
UVzjpECVRJttOaLhqerAwClSgMJgPAQz0O9lk0EANmNs2ZjzDis2/lxnpwIdI6HqnLSUHlLuRBl9
7tzrBqizadsldCd/4MoaaFfXyl1SkSWOnJalufwdRa0aHd4305Em12JWYEVhYvE41N8mjwgskk0D
3v2veK4IDDB7HQ+bCb94mWGII5XaXrOkEULz+Fy1t64uJ29HamD33eWBkCKXNyi+u05XFvmjn+Uy
SB5KYQYdJ247LyO9skOfxMMRSazzmQuOI33yBRyaaQ7BQLm7ffTU2gA1MmPk/afbaRnBzrNV6aEv
pJnaSPQQ7wW2TK3iHlz9PSilxptqeK9YmkbFl42dk4t+Il8+UC2dbe7YjbLdv2dW17Wr0glPF+t2
qRr8nz0X9lP1RQCOAK/OtKtyK6jL9jtueAd9XE+bfn682kj3c0IsnFgvRLodZi72pqw8+rGgClG7
ivC781JxXoU4ss555z2/Rl3u+cixoj9btoeey59js82An70S07mtpVV6Rle/ZHoCoaPLFWktnuyW
7J9663db8onHKbrkqdi+EMSaxL0MOsD3ktpKhMAuLfjQVfqnUUkz0TBmsC4igw0/UdomSA8pIbWW
7iO3nPVBJZOJcAzB5iXEUgB1VFhEbewIi5Zxd8RJBt40n2JPgiKk9MmJI4uAnZIVO/8wDgEtApOH
elv6AAVLBy26MeiyAjZzyXN9BbdXdtq8oBo48F/ue4Mi3SQwrvfvudXTSj7AK5Q/7E8zIDJYgae5
IF2Y1fs5WwyLjgwezrTnALH2tU8UmI+P1d7SW4kq+Aw7+9z24iuRsGRV7QlCQ1kcvtT+J632jR70
XaFB9RBjKJVJidMuy0mfeaH4ImHfAHsxnpJcqlduN8HHUk4CvCaFT9tQ2qyg25B978Tt+TXopoGr
V3pHdYRpZyqhE7D4G+nPCLMAikDneoRJmyvreIIc/b5d87DDuAkZdLmFOLAMilUmTmxVZjbMrmY5
oyJHWqwiOn7edHHsvXtb77w4zrgvLj+sSZJSn/KR1cBjGHi0/NW9ANDTYZZQ8N4H0AH2zC7U7w7l
8bJUfTnNxWpCqY508gVXFB53kI768pJhdqfnnBngZf5gKc0iRCPlseLcurnMl9/EknUxwvxk9bXK
87xHNVp14p4qgj2xkL/Q4QRp5KFm4So08V4WlcE5FLzGaApQJICqbjFGKS4wSm3jWT19N3heAA5+
O/5gHRg3Y0rMu2ttNE6Xkj4AdyiE4S1dRNDnoSvccEqCwKDL7F5A683RiKXWQRMz5+cN5D480jFD
lfgKT+/9+13gV7a0W/5ZhD84pMF6ki5JlScGPzMfoBh8+9KFTw8i2j9biLUcfc6mUA7ISAUc4Npg
3NMcCP/jA8Airkt5TcVs6qXwTLFOCbaRt5EeQ+APDgowU5mLoI2cVxb7hOGLZqTSXMURm6BP0q4Y
3HWLEoBAmznwrleKZiUQcCXpmh1aluRbQzfKcx+LRgTocICyDWKXIU4gIuZQ9ScqtB7Xq8/w+PlT
QBJOtBNlC3jqh8ZJicMdhTwTpzitlEZaWpGJ3GYYXDPyMJiBfcJ8NY+hFdBlbkupQKYGNN8/6Vpa
oupUIXGZBOKQ0bVRUrYvA/xyLSA9FhH+03LrNKnP59VRrTcq6XFA2ZaRooNUUcgG/6Y/Xh8KsbvR
FSWfL3gbWoUlxxXQk95SzoFXz2CTIfTtlP9zs1p7xnartOTZv35gDPK1liaQ0O937JhF17+7tah5
89TH/f3L6A9qn604bXmytzbp3eKJdPb8GR5bvs/Fm8g4sqbtMYwGv9jt0DSQNmk5Is7IYNJuBoX1
CV4YqK1Had8jyY/y2W5OPFMJObm/nTKFIpezMFZvUx8WwWjcNYmBcKwYDzlAT1schqoLR2bsUZBp
oJZ9rmqJ/zRJfEGJ0Wa2a6gCUaImUm5VZO13RVpuWK6E3B49t8IhK91m/oLujtQQqty20c8nbcsq
L48FZrt3sUwctOhxKJ2aRxGdftsfNZfC7QTyCSPECPvyodYql1dYZPgh0hwzLBvSYX1d1yn0YWIA
DhX4bGymrxos9LakwEnYLgq1Wci6e8kzi0KGKQG7IvcMofRpdGAIza2fRzhL4f+ivWd4/h/6tlJZ
X18/SNF7wsNf3xsS30LLzJ8Qv4aMqoOehHaflkYwm4N8mnbnvvDir9Gn7oJodNulXav7n3Ov2L+Z
rIy1PTU5UV/mN6K4yWK86PzuBhLs2t87slwP6QNvjyugy6v9pK5jxlsc6RcwGRfZgPqBWxxpvv8R
gZWT4qeFYkTh6+2YRoArR0ggxISMgv+c8x2EwKitJdOOjHvPTnYvHR747mVeik5N1F8Pw7vaHSbc
xUBKydWypvNgkQzFSSib0+MWIoMpUzxmtZHA84H4r60hm2oZ8VjHqij5FYMHotgkbeok9B8jnrFu
PNBFoiNQ7dpuZ9Ek2HYeI3kgTZTTQAwdd/yOS1WLUvbjhiLetAswJFVmGGIv4TmY9UWKHrJasXqV
5YZhtYCjR/aie+VRzWuWrVVTVGXS/Mw3qLEKUP8uSuukaHmB9KWT7bPnRNZBofJbJX1V1kDv5NV5
jC4z/gxLjRqXYESLRwszyWqqZESeAMr4KygLYz3u4xVo5xDUzkJ4HTndYkBoxmOgryRk5u/H6dZT
SPfgdF1sFi/lIkMafn29m642UC+y3Gf517PSL2Tbmy5bortg7ZYKmK4U2zLe+QJ2davCmME3NXgI
kKvre38dPRz2a9h8oFekZ0xbI5R1UUkfTQG8iFlDMqoQY5xzNafcOuIAh2QZNSjFIRKJXJ20Blph
wS2Bydo2JF45mWgVo+ki3nxwozmaDRBcMYsfOEU7pnsGnTicxJgrLWsJWRQN9BDxm7COJDpSMaXp
tYGYSEkIpLtW5lJv3UXtNn8kjisECyAJcROW+pt9e5hionuS/h2TYeyl5Mheiy5J6R2htmn4s1Mg
d3fL0gM150Q/vk6hGQQG76ba6t07NXIRC4SuluzsFb070ZN+y9GuDSkTno641F/VTDGNm66+Mvuu
JPNXJwx4SBcPO854o5Y12+pMgITyNsJ/yW78hpEaqxTRVi2C0laBhibylVWnsVbIGDp7bqyjXpM/
+DYxDq9t0nfgja57hRM2mBwyoc4kCtx/jgRSIcpOjlo63OswjmZoXGo+yEip8hkPCiofr51aaLP0
l8DtIrjG2TI7Ez4w0wx5pdeB8RicbHJibuBU4N8VTGR1I0fkPQlNDBvzzkyzk6bukWBKEMNYfMz2
xSjFyyEJQ3+MdYl1O/Km9xgkQpYa7PSc9PFrkbUVyzJ6KZEdMGCBZOTTEYJLdliPn8ilDXNc5Xvb
AhBIXJyhqM0hdjGnwQWYjIyOxrOZpjrcaCxNn99h4q5a6p1IfhHiOXng8le9yYESjNmbVEp1dww1
PkhufDOGAnQbsHeTrJu4T3kyme/a3Kv9jTxHBYU3n0htC2Q7IuQCkQqH5D3UMC6J9TQoIwBGU9cy
a27h7eAhfWcQxhQog+a3GDy65UgC2cZ1qM9Vf3yYJIcqu1uY4lmrI3YdE7N8Xo0h/UvdjcZn9iaS
+Ds+rYpExIXPTQoMNo0mnnBcPQDtJDprZYlmcAFoPMEHRqj1OoEMvHh6XLZQ0USWI9/Y1QA1xWz/
jIWVif5Z/yxED4SUovmJPeLZ9tRE8rhq5TTCGGFLi30nOQCk2gHpqusESVbUDq07dYYUPieew/mM
RAgPjmf4KNtGqUEcDY8BnFNXIcn0Y7HzMBZWH72e2zBZ0mmtObymzOSaM8tpy8q3IKvk/T/W+9jx
fqhHjHvIGDeMWMt6GG0ISGRx0dNY9ZEq9p4omBDnSWuXgBU3zNTjssZEzWrBRzIZUK5BVcqc+XxJ
wVjTsztCMOSMsxONjjpWVQcF2zSx81hIsbtxn28cDI0PdQHwZqlG2xd9LeCrLTh25TAdmMnnMx6Y
80iEBscnSECJRZJ0C8p78klFgv6m67p+q+FNzYU72j3dcn5UiL8dU7tgEdNFRctb9iUXkWn9cEk+
AELF6imEUsRB7Tj1Dtr5kMAdxrZaUQUpiS3cKddQVSuOERbAMUhU2hPKwr1VTFj9EqdsmMzpRUnM
XkfnTaCyfSJXdnYmfoA/z8DxYlJXPTA1a6ofd/cl4ag643f+ryJH+gYQ+wn8eu1RkqnuIAGCi7Nz
9uWc4IzsNKxpjjeL9ue8jU1wrcdj3ZlSMPKiJ5F57h4xiWE/5UVQPyLW83orvuHas93RuKFHscDG
PgVy4NnSaj3v6Qsyna+sgzVnvUdG0gkTOgorIoRwVU6x6qsZV0qqkk4jS10bR/a0j9Mw1wEdEnHH
4n8lN4AnJVqhYbQve97/5Q2bQl61SSwIq1vtQ93luZYJaFQNdqG6vK5H4xZNw6+u/tXILnoujSpr
9DN7AO79u11DlLCVsRsKxedF39u0gBCuXl+XTVZ/y/HeAVVo0+olk/TydpdGtQ645F73adywWE6m
+uD26LSVmsSzk5zgLgEQAgT5Mqr/1kIOLUo/VMZivUIjX1M/CpFQtWEb11zuOZv+0/0/xo5WXDlS
Y6vpPJs/df9w+W7PBlJqfY9fFR5ijOqzN0+BxdpWiRZjxrMvW6wNJBv/8BFbz9IxcoK8FVT0vXoO
fdMMZMnOdpnDjXBtrXyGbsqR4/bEsFnQNTpKC14gCkMKlTuS5QAzTXgs6kzVlVNaWm3XspMjG7f9
bFiUlNTZukuI28v0i4rMQvnyChJKSDh4wcnCLD5vI8+f+F7T6p4cbPtpYNdjwDAt/kER2lgbEoeE
kVYpnf1mp/Bn0doBL0mfQcb9e5PwV27UdIlEdxqIPeZ8rz/TScDr1ziYoys8IcrzvprPX2a+meVs
A3YI27ycG6Xvfk8n//Gn1PHr+LEPg5xKl9OX0YfyqI2EIuB10zd2FMU56H0GFRViFMdv9+oOCzsg
I2wSPGeoxdFzr57TMNrq1eA+oFdUjwNeBiN8bfS+a7kJZ1NRr7egI48ABzzqVnNsy8t9siDTdlHz
A34fEdxuLjvB8MraAv/CEnOefRg/tVL8uENRbgKDLijO1jgQKLFc5hNQFFjzFMto/vgGMSOcqbRN
pXRLhzMnlOq8/gP+QGqZBDfxx2qWW+jpH/rWMefcSafPSGrlRi9tQxEGSE0x8dGKb+4znv0tpfvu
9TIbMhXQYxocfjq8PtcC/PpKx8nUTwQ4KtWEhYRjTNhifpR+97qRPsnTM4g3TzJag77bSYjaEpWY
PGZcR7BqPmSVCPWCTn2OZljI+4UEKxNvF/obgLmMPDspZsOJ5d8KDVtZqXUSb5fXttoXZ9V8FzA7
I80xj4hDY95BjgorruIDYReZ1uBHcBRrfC2OsKt7i9zK9W1b+dla5nHVY4b6Youdjsp7cKwMfS8l
bicW3RtX+TTVBdt+LwnaTwsMu513+RT1jBIEaU0EFxS6ysupaHtoxf2QS42QPdrwEV1uVnDKuDEP
/1W52Agt45KStCWUdhwmW3SG7jwAdVHq4t9TLntkS2OcSBsDOFOxN//rVoyUDtMcskLPHqEiW0rm
KjbI3lLa5swTNoj63eKLJFFsWptoD9R2xfTuwZpe/xGYFAuvZLK5SdPRCeDjF7OZhmwKLIoWD9Jg
R2A2jPEf4/35vJsoBj9Gunnz1lXU9iOIMEyYMABjh2xm8NNTVSWhj/wedSDx6i3RkvV8ys0kJO1F
TnYCAv+BCA1nGSq8Qlen8Rxiqd9Mj2+iUNn48bpoXMZ/9dQrzZkmKbVtKHt7mnmeHXaIzbagQ204
m9FX1QIQTA/olQvJyQmVLahEEV+c3oAkiU76h5c2NiXnDftDVQ/1cg0fcFYCDAzJn3fuXAexlvNG
D1mVbE1gD77hsoCGsRj+xTl+1ZEU7KYSpQcj0JIP7WLBmikCYDrYYNybncIMu5jabRP0jiYa76PA
nTzW2yKeqI+RbiBR+8fTE8Gl0SBSXY+6g0UpE+Uh4BCNmSFz1BCGIyt2e/q/5AgLpom0UuquWMyZ
3t0tPdsVPXmEF9sElhVOncJnQIJRDftojMDGa4gP2frKJpK6Ge1CbvuhKVJzHp8QpVroc1oLSU+D
wpbpB/Gl8IbBcdJ+ZZKovgDds6Gm5rifixCcCeuNK96/I/c8TzB0yrZIUS7jxRn1trpw/N64QaLZ
nVI1tXKMiT/Xrhvn5muQ81QIwya+8DYvLfRsq33MS+fUSJItihJ8DegWe8pJUTINZMopQ+BxXfoE
UtfkC/j+KQPtmSZnuSGVTov/QyvEv9YrgWvWnFdcEjdwIK6cNt07i3I8SPdE/YB0iA+CKt4VGreR
2306tGJNfDL/2DyRCF0qTFmt6zzwUwYPQ8rr+472DGtVvtCp5sA78Kekvk3C52p26Drag4Aj9jsh
ye+0suggH6GxvgVaaEnAhnl4/s83FKfPxnwFkej7ca9rjIAZTCDZJhfgk4owdC3p+JLQ57dwOUhn
lml8l/mm0fdD5q66VPwJ8Zs96peZpk0WEKWg68ruU+0PhQyegs2t9HghIGb59J0vMMl530hYd3xC
6l0f4Jw8KIJkdKa79Jd7K8MadP8hpPTidWX+ROz6AMI/63oXxdnZH6Lj/XB2tRni8vSh2RXSFdwL
TZQrDHxriHtHUveqf0j4cSFgJUeGW0d1Z16+qIujUddBtoPi8sDjcRjXXxcS1y8WqEd9a9kJuWSe
0LCR0XBnEFQPuw9+nPI+Ijb2xgR+p6L6cwjP8zPozni6kWTt4xLBAIer8/IpfOV0lDz6ZetZssqi
Hwy1OI5IW30qd2gqPbNd243ifEACI0iq3d6mORifiz03YjhR8Q4DfWEpFSUJPQOocbkGe33uoreT
K69lbDAZK1jSEIgalt1FVR3hiNRcaY9pLjMCMtnfdxt3C0Ahac/ZFFwK3ixx34vFeAbjSo4JVENx
02MLhc9xkDrN3GwnVTzDy9KWj8N1+UBKOunlLN8RAJz7uUAhkUwZpddBAoSBlj/hrpI6BxuOjJD1
ABesHuT0gJ5lMwkUhMFLMbLgr8xRhRluQ+NUhyKHvbbeo8IjkMQV8g4kCJTomOUkovKKC4HyRg9j
M78w1l266rhr8z8nImNrRXZSGMLCQNYKXkRxRgAZaGUdfzwDgFpMFXgA2gE2lSBfP+zTtLwF/Yy3
e8kaXGTZlCqtIm37Voqm1zLuZ3aN9d78Jkcem17siTn+c8BzKRkDQ9VOJgdFhAHimRg7a+PUPcvD
On+m4RfM852iYkwoHslt76giTaV5CLftOn1xfaSkgjKjHY0IueYiiDSMfnsVqXk0Z4T6AWJ9H76y
NRU867gI1rgL+tM/KAtdDHpy5Os4Jfvk0Dzqs9PHE7jlK6LG8qQ05YK1B6rToyHUr3xPWZWFc0tf
/5fhLS9xt8irj2ExnsICAfjqKk7SiYH/Uecl++GhtkG8v0SrwfoApIwYcrOW06cf/L2rXq85XnPL
3yzK5xv/LhXHIhiMS94ECT2bF6RDxMyaBA+w07LRtoRkPvEakFotMPu8VXl0oBNGByk1vAuwGCDm
7HFaPZuyGYjIE/PhjPflOf6U+/AdFU9PVujguKjRd01kvkwrPUsTuLNmjWagmIJcJW2bX/oEPnsF
weopODOyUG2c7O0xKI7rW12mwZ/fPqUxc5jFhFkr37/5MHXVR4+VTrfRLKiFin1bxc3z8fQbKo7I
asHvoJFZr0/UVxP7ICJVlS1tTSQhT1+TuaKZvsTxp+T+9L+6CQBD6ko7vxqR8PpuPzrZZgcPawR8
UtkltVvWjAc/MBBPzXIhJckygAm4tm5Itm+Kbrhy3rrzMlNXUCas6jwJ1IDUtkg5GLV4SzibnRKr
qx69T8qAkeYEeJ695Fri6+Rk9xLySKDqNvoqKhEyUFIdtGGWFpQdiSxFW1SKMXR+jvHRXNdafFiN
ll8NeU3O6HqTvJUTQ0fXDZ6uEGG1M3hn753DcyWbQYZw2ztlY04hkKSuvZPQGMJM2T48FC1wc6MT
MgNs4J5dzdGFmxjaQQkVuF5oyYU9TYlsYYRLIMt+oK1n5t+1yE5xTzoe+Be1Mj+h5puCWEURQqSX
eFxGFTrKUnAD44a6kLN+a6MEUt/jmqFXxRMUb83RUs4coFVtvXaG/m4/bAsUqOhGVpqGEm5+FBGv
O30KWKyT8PWWujuL+FeZ6N0Rip4L952WmzlstPNzuMJfM/UK+AGbpUpbosjCTlpt1K6ltEx9qHgR
g3wxa84Ck8aox+iLRvxO3JAq9asXSgg+oxHGMEyQxfOIWQIX8g4PGfvJgoKjy8V1qECaBzzqNIEz
QU5JIt+x+yL9ixtOoQCWjFLdE6Y5TMAHMxBxv2246H17CHDKnCD2GwCNJj8dtHdsuqUY7lMUIsXQ
+U57KV+KvZbv9ahW4WzZ3T6mf93S5PCjWkT5JBwFcU4ZJjDxeGWeMTJbTy6I9y58edyhcxFICEyz
z5kQigtyeZEMc7IHKooeW4WruQfSEYmoTEpJ0ABSvFl2Xbq/KjN+uCYQPvxHatpoePggnRru4+Za
62dYi4KUHnsry0Zledr5r9fTsbFbvrvmRyEgOI1y+rBOTrtSkUAzzRYo3BItZIdTkYwyPbOSzw4C
d1snf2OEO9mZ6M8pyVKWBAF3yUthsv3F+pNwQeoLYnSYVmy+oeHL1NvUHhYcxZlyGO0DWJt1o7MW
nJVYEOL8r5GYOkXgPErFXoi8RUzDgNkcR4gjH6llVWVH1CgLnLmNkeAkmw4mVvol918EPSS5PSL7
GhR3WcrRERvVc3hX73YXiblmxfJ7PdQXdM8dJrfKIYId+QcP+1nJmuC2ltb/wPCxxL5eBdOcchc1
2QKOdXj1eYxc1jjdWMbJwM6iIQAdtFVBij+ai0VLBBy89Gw4KGCTBPVMgT8qRIGt+KhQHGBMMPxR
tyf/IP8x2L3H/dMqMXi/+38IFqFiUE4QgwnMxWuYbj/o2nZY7Tqiavw7nY+8kxEl1G429J3+dikl
5xjmtGQLANQzF3yhnTiJ93wCmYnV95XM817zcW3wIQckrgKObe0LA1mo8c83652g7rq6qyDxCXq+
VWi5K80L4o6j36wldWaCUxOkt2GK12/fagvhCpkr6fFuLdHb3PT45ZvqWJRu/BslABSrSBKKnoR9
nKHGHjTB3OWql1Rad5RTDwDP47JHRq8G8MJmJ+V4v8mamxpqDn+gJCmaKgSEo9124eD2afrh4USL
QPoMzUuA7ZGUK8jgO9p6nerz+dT8JMGyI3P7wxXckK61er2CojTO9icq+kGAnTqhSvHXIHZwWPtO
NgBCe6F+pNI0pnd50itGBtEHigjVLCoAHUYYyoEk5LR88t+9jq0SzBcwbty9fiWFpQSL42GiHC1J
83wOUeVU6Y+XsrEeaYLpUgDhP3QzRxlQBaIgfWU0WMQ49/07enlSc13z4Esa4AmHcLcXqAz6YhZ6
q4S3e5si1eO5cfy1Qfuh/AiwZn2MdfE6d6beckC3CIQhgdJl2dM3qMmQqAiyF/oFk8enujpABUUK
bwzNM0RAVBEVD52OEk//sUNaMqmGkcmyohVDBO7T53xGjatGMu9G7VOTler1ryJmbnsxx9NlcmSM
hZliqCCWuZTZ37BQelMqi3AvfqUWt3r7LFqGTibDRWoGeplPWqsCfkFDwaQWWb8Vt5O+GdZQvR7U
VfTzNdyBsl9eqRn8g+NAUKENbIS/qfOhXFTbGlupfIM8VYvEIVjMTN6bUSuvjAIeG/C2SkAI4U/4
6apkQxNXHFQ5+pxIflALQepyn7ZkFKVbnex92VjDEhSR52zL2p7M9SMHFp4IaIW4+JrmVZ7NygUB
YI3jfUcX694AdRzaG7p1Rx6hITZSLaaM0W4aWOmIIuYiokDZQ7T+p+Z0fS8ZuXD28bzRlR22pp9L
5T6sxs4dYCkj/p6ccEtbCXIQ/WHxMMHzoJf7BP0rBHwqOA2eyaOCf71MIx2LoywA0ciaNiPKqd/n
Tdlf9HVgMZKcvlc/lw0Wqe05eK7Rrm17yvPG1JG5/Fp2VqVSbFnPqOKzv7A/Nq62XVsZzMXnfymy
/QpAiolB6iVB5F0dvwoUI37B0LHUZmJbsx2swFZSUe7o0qNnrzGfYmrjKNsza3iT2LEaGDMWzDVT
uHsbYbJPSlA09bUIx2i+soANeguSJwvYRpTFfm5wbGH7PkIer4WgJzmFJXXpUFKcsHqIlYe9yUEE
ARkXEIv0gAU6WLSyLnutdNyP5A0SyM7/bMpL5+AvffVQBvm+NEhs5IqdZKIl5FWaljow+1pAZsv+
wBvQcFBcd6Wy2g/9oHLCWJsopRZUna3WpF8uzVIssHfbk8xzdVlTIL3gdpGb+xRCUMPqvptuN9cp
TRq8571MPlyIowthy3JHVla5EZyJCqfs/A/BMZFLiktdw8lUYnOlOThD11c3zNP/gO3P98U9o2yo
b/f6OG5mljF2NijKkNIW6Febkm8TsRkTuR8rm6XefLoc6wxK+0dXmTb6GBZX0sXXppQx06GmNpRP
lhrPVy+8iNFdONey8uw6PS0UEod5MkmU3/CgCU6/XQ5X0AIPzkfUICQOQCPr2P4CYNJbOQ43cW8d
pJNV0mqAiMCygga03vmk8I5RbXepiva3stPBnla4m/tMKeloPipQKH0mAIwnt+eTqEKj2KU9E55X
+Xzm2TXBjFne5JNI4ReLUCvlil/LncO5bFwJupJRKlnQcDz666eJoMSQQe3uCokJoPUuMluSHVeg
Zo32PTX/5ZkyfCL0BXNhjfpk/aUKBJt+6FLj+8S7JuImi/2sy/6cRwxFDMPV2i06Q6A+kiT29VSu
ly5VjXVBoF5IjMSZThX5fNLVHtkGQQCircNLcXlshDXfUK/PR7WxyPDpdOcEL3BXhgSHLvsLQm57
v1bvUr8PfUAYv1cj4+Ys+dv6/2x+D5wSTCP5eGw7tGypaxMmqbpSy7Biq8DlUAlRZAEyZZ6JfCBP
9pQIJRPMwUR6A2DhbBro3HPPv/KKSU5g960YJxHMc5WzB1pthJWUSYkLYY7j8rtODTCYzyzv/wHb
dWYF8b5M3b5/887wYtAm9wQq7TdHNdIBJMKCM9jrlJkW5v5I/UxTe+2UWdC5TpbjjVJdO35RFIy1
EDPRtuf8i+sMNv2WJjsO2pZ/v5sWjuKBzL4ypQdFyoFsXu1C8unNuOxhvAlrLwdW+7GW0psakgfH
PihNW9DLJhDwAJdiuBA7kOjnf1iuLPG57JSdlW5zdgUJbvX4EK5XOx9ujZz+74JyW2SqMpRbAur8
sAf3LnzJg+OHj/bwRBoybv5/LHV8hJzKKutUds8Bl1vQXZ4bRb2k83uZNdDZ7/xNb7neiwi+uDYQ
UdRABXmbUfkhm67SOgzfBTMG0sLld7bqNWshC7Uh/AwDLJTsOV8w3Qh4g5oVP7usX08hPXlHu0Mp
JwhLnkClQNZgxKJ73VzBffqcIaqKDIoa3/XhdwaRW0DCcGztbxU/sHO2ExfkndTobw+XimQDjMve
BCKOvLIVEp2PIySjzh5aXw5OdCIvTVdrCm7q5Q1wAWkWMSC+m3ET/MbhuTcH/y6U0Ur3DkWfwGud
s+yFfisW51qXbAlamjBxVVPesxzYgaieI62aLtkmaYnlEPq2snJ9Fpyd284Jvu6KJk3P34d+RkTc
8s8z0oFeynBWf1Qbmg89Ny2H+UArSFi/qVEBs7N/YGdYLTwts6ug9KRie3DExuXUScNUI4qUFqov
xqAweYAHrU13OIUzH6SHpFAiYJGYUHgc5TLG7wME4NGNXy/uGbLhV9wq6ZobqczNAyAMT/dz+XQE
BAkPOoZdF9kAP5OXKFTmZQpgFCyI2rDdLZ6v1pS6qyjy34wVzeZlLWHlZKLfYtrWkTz4VAsw3MTq
a/D26zjsZPk1MpUl/ciBl8Ovl7GYxzQP2NVbeSn8sLfeiY8brJ2EX0ifiDczPgdzyuC4DgXak+Z/
DjGjgiEsPGkquY9uWHuM5KLoBTB+KlrGfHdR1VLHb7m6Vh7hd+njT/R07GG+//CmpoerN6N8WHbf
B8UAIL8FxIgygTOiCIiQozPGZTtfTbera9ebyYcFjfWGLJehUHifdIk1FSA9fakVIK6+7WFng/DS
DCq4onbV+G4i4BbqUjXjUx5jodyBQ0gn0nwf1jEUmvTi/9rd7RfjTe0I1KmgCSWQbA2/MjUlHC1H
wZopWNvNbyX7Hjex3wKkkz8je2AWLvOfGWPD0AIYjth9j9k/sexhX/ES7j0w0d708kKPZjBtEMZB
bJb64PGnOeXyETtPXz32VBIgkZ01XmyKpXznoBnpgbhb8A9GG+8Fk9RhgiMrarIj2oGQIdUnAy5l
Sv2JuN1HRUN+2TrdN6q45zIFk247FTiBMjjaodUuf+q33d/ED1L0ok1w8429uoAq/Kpt+9+x0oAX
9Ll6RBfLliTYxLLXW8rjrCZdZIZ6DbMkj5qPIskPkZVog+16LUvOSI3AL9BYGVeFwz+kWjjxLf9v
GNY9YndzwWvMaSBHU5sAWccmvO8IGo+UTYI2cQ3jH446/8zEJHRTnOwodHJGO50kMvzhIgrg5viK
9lDzOrCjzzKbbwavi67y+ThXJ0Kd9L2LFlS6D0+LmeOVBP9g5YB8uMM1ir+yb3PpPdPvk4rdNBk3
xGk/tuDBFlY4XP4AVCDGW+1iuxL0j2hUeWnqnfZ1efedKNcIerpKXdW8tZIjIQSehImz7p2WwaQp
BCA5cadR7kmiNiLz5be4ImEeMfPJqdJBDaZ/Xm1mopuyOtg987gNlq7qV31zehbZQpRDVVZSnQSH
9SA5CN2iK8Ni49YfqJwjd0qDoelzII8CdQpvgEi9l02KsZ1mT5Kxez0AbzCNoQc7o5KX4OZfDomN
u0NDFsE1HQQOLg47x80qIjpj361cWrw+X2m9XvlK8LefHp2t35B53U7AS7KNgFXQU6nAMesg+vda
oF7WQ7w0dQN9zYjXc+ZSjXM2En3gDsEulaZrwfpHyZCs267reYIxyptCdhgBBDcXdtR+xlE30CHM
P8r/N3tc9ZTinK3fFgVgoTmOLF9RXBFI46i6UF3/D4KsTJmzysK2d1XFusCAgl9fJzQ1UCXLGo9R
xwKGxh7C3YeURtrx0eVXilh1iARiPwnLwajTlzo2nsbhD9hQgK6Nd9hV2/O9i6poXC0eW8Rqmpca
1ma7X0T0udLCJIUXkodMdfGaqSOY5YaFpAJJ0vwvTnys1UN2IPVNt5xidTM15+dUwDU3oxjODYlL
fLM0bM2sNrbV4gflhDXnNuTWLs3xSC6HkQ5pi5YHgZ+OuCsdMXJqvbKdDpyX/va7O1M66aFH1P2o
MuIKpkCwaSX34NM9dMJr8TsI2bBardFnXdFqLBc39+kEEOcHx9cByVV2flEttFOqGuyDDBjO+o8N
23D9/oDDCK4iixzkf+09yDIpB1kBOs7o9xfGUfUOCK+Rng5eE7MB7/VWIoMojqUP/XnB0gj1TZms
9vvPqdtQHVB6t7BT20ohK9VQpSiGBPOwIUSh8TSgD9Hn3tnQ/AUCltRE0s1haW+fz90J02GmS0Od
MYTdWg+oBmozbgy2t+x1UA1JBj0kZYY/fuYrlR3I9w4dr3QYrA/QcMPSyWQ845acaSMjno0LNPS9
rVa6k5JlRORbkfmw9ROGBS+2Hrp5qOPEFHxPoe11KGbkmRGCMSmFz+p/uiI+5ozw4Y2GrUol6/m9
rreLp85JvZ46qeRR0tf/g32ojPZukTPC/lOMQUx/ESlCuxp9FlADz2vBZYeVMaFMTit0fi6XLeQp
F3WY+A6w367Vp+YSkBrD0xC0t2hyB6BveX/lSVSdMS/WcYckB5197ZtG/Ar9yGfsirgTu6R4ozsW
scUVkU/zV5GIxAh9x9s3cqQBSjsRMBgYK+KZ25QCsCeKltqZ4QJt6NNfv1KcZ/X6yErXC9OUm0ks
Itb01SMH3sJXFgj6Zn7cFy5a0TxIedrihRvEEXq0QidbpWsUDhsei9IY5ZCJaMN50cGjmilPmaEN
XXsK6JqwPeqMQ1/dCIKUBengp0JprC0Cmg9Uq04DT7jJUeLD2B8qmyAeCHko9u9D7zv6B1L+N4le
rTp9ynIXhnIr4Fa3TqTY6/zeFsnUdxe4dcdC+d5Nz4cfrWwLiQF0LusZFcvb51hxX1LNFB6eJKjW
tU1yTk3WRtxuDOigHZBd4XvVOqGfWxWx0fW3Z6R0DP4rpAgIUkzNiW5sIh5I8lf5t300OVNTEOL0
0jR8WEbOVGnhfDvcGs0pYiipPVz0zvDSBzKExEWFXxs/qtM6NUaosxwCcd9YuXwFgW5Eh1njPp2E
KccPz8MyX/PNz7rAiRioDJtNp9nBNm+ohTGHoeekpD17e+bcpPPeKsgrYaEE89vv/E6M7S1NoW10
ba97XPnq4hzDq1KucQ6vQqM5jFA6gn82oVAR7hYwCwYrRmO8oWp7QFVpbxN6Z3uWGL93s4kNL3RZ
GYUojsoERh/ATfzLfPFayRHE6NBhoH2qTAauPGzmwULvlY9UtCodXMyTFVnczo0HCmA44olNSxP6
qys6IWgWBWcA/r6HGvk05mL7WbpXo4dCnWNucgqjHdDA/4UZwRCgydCoXhq6z92qhVILYbs3Z6cQ
NL0UC5QJR4gljmM1oPCfRufUQ31W8gl5PsNfbtXWw/bM5W+uBxZva8zk+xI8z09ifdB9PUghbjdW
lKZlyPU7t+dpYOwI/y9IHAqEGgCD0c/e14oE+M9fCRD9V0ksWiGAkpuS+4Z6++73XqDmXNtny3WG
Kkcmt9BbFdkw5QwC8uyih+G4Lx/KyqnAa8A6/JxOmwbStdgyQkAbzqKic9EbW8v2H3dc0etaxRl8
gSWA+5zpbKwyjCdm8ytwfAUKjSvXelOJZ8TVLrbzGWA68lbpA5kcJhZWe3Q7+4dJ6fd+mf4iwllO
ROvMcZG0JPKZfGSyiaPNjDn2tOmh3Kaxq/evKh7BDqQt0Vy7WtDaR7XN8eIBaFn7GzkUzhi5phET
1Q0wKGJ20Aiyg/GOJLiErFwryR2JJaelQJSxmW/ulIs7N2LF5ByTjUph15SeJeOARvtP6kqEn5SM
yQuiAVeapkOToz2FyLoypO2mlVPbXprWPlCD+3Ba4q7PRs7pSGs2DHsHCmAhYM1m7mAWUGdRsRDM
c1qZNX2frWSdE5ZzyxaLKrE41cLv5kV5CGTA0JLH2YU3SNRAv0LNbwm6fQwVnbrzmsz5srsRzbJn
Hj5SBbFZ4pIX+QsPsUXTeLoWLIsr1FhkNmBI3Wv8cSI+V+jNnh1K2Yo7GIGNtYyvtTG5uIas212q
2DgRJcH3OSnbgJ6T30PXLVedQnYxEhOpbVdyNZgh65XGwt155bR1w5BpvQ0oZ8l/XWQ7ni7R/ZlZ
ed7C6vsstt/g/bJy1xqqKcYOjTsaawYv2sRQ9a2qCpDB/ngMfxPh6QhYtG2yqjY5JphFNCe+UZz1
AiqIAOyA7b6XGGjTfsTk/XCL2le+V6RflMths6tstAQoYUw+ROshgISslYunD+FhtYf7NjW3B7QP
l/sSgc8H2qFslCKYrPDAPqV7JPJxuZwvLRqGLsnc7ZshCpq/HrzL/m7Y570KCOiAT/iVEL8GArqA
JlDoEdY7nTpFFyqQ2dtw4cE6vp1g6hABz6GkWGhALISM7Q2MznRMDMHAhqq0uFSX5lwWTN0rBNBM
SNzvO9gHT8Z5gaSdwH8pUDeTRR+I30n8c03HaxgJxFQx5clJRpCEa8E6Nclps3O4LyduelH2snoQ
JrCfJXmMVDxFOeTnmGCnzTLKxAl7qd3JYhYkgv8t8bHK4AxrIK/qAxfZaSJlOKZoQe18NRmCs7L9
fbJR5+/r41HxHoF3CyQjaEax54k7ZZJnOa13G8Mzw6T1JEFMolxWjAS+vS7VF6aTMVkmKhw6t3sJ
CcW8s2BFX4H4YLRIJ+9U3Swr3pZJGG+g9WqHPulMOWNeBzyh7LQuMqCuez6m9qeXuue776O0kwMQ
FvCRFG2Of6EUSL9N8MPoAUzlLoBoW8PzHY9IFI0zZerrt+y+IgW7WSjd7aOvPCHEBG2z4caRLTex
5r/NYqCTLAbtgiV8XERoO3dMgQN5MyeF+OyyzN2ZnLcqv0nhF3W8vjts0wWPZ+UCqEW8R93Q0Lky
9f9YIdUgTLuqLGtHOCdKJg4tc7Caqmt5I3OAQcZPvQHLgps87ko1LwZnv670EJ6MGK6A1lMW+emf
OJ+8bYFcGitdBqeFx7xGOzuMfAvUDyghzJ7XkHX3N3JihRJgGnN2VVVY2fYU5y1nIR2onCw67HQq
PSHSgZmMAQRvgiZeHxuglrmjvB8uC3t1RPTmB9E6rpT0ATucAPaV6DRcN79+t8d+MVn8G/dCHSvN
jlqp7puwlFJuBVqiBZyXJ5MM7D0/whpjyGZZKDP0Wl8ehYU9ydUbmRTwLLJ1HjoHgOkn7xFpSDwF
otWWvBteEEFD5F3kCDBM6kPqBp8emQsDuAF1NRAiYsNVvw6zuqNRJnNWnAdk9R0DjGnJaTNXT0as
+0sE4qZ1oVJ+8znnJQ2cg2JbLRKlZWXRUiwAw3l3wuUFLWgpwYHYrIW+eMKZqu1iAD8M5TASUQdJ
VUzAhpJszsbK58rDk6/urv3HOlT0qHKJiYpU39tsfnZul0qQXOPfeU4hC4EYRXOmEQHkZKS/mivs
gRRiZ6QKWX0iHuwrvjw7Sy+j/QbPXrrlg8FpPBXHsA1uE9T2/cPuHCZd431dd7JkIgEFyjBzyE4O
J9YzEl+6mLzQDOsIuW+Whi21V8Nn5BCHkC1gVuTo30Ta1mk/xb4UMoNmTznYE7Okfz3h/rK6T4Kl
k1Do3aUUrRg/RJNC1YlDbdBbP1j330xgUEajzHr0z5WUhl0i2dzXDJmQF7lI210gejQlBXkvx9Xh
A+RciJOqLakL3xj1GthSdMYnPDgEqzuOLzmuWk7+o4+Sy5/Hoi5gQnALnCmt2U6orVf3OPWV7WFg
hP5o0lzgE8Q1nOhSU2EB2fKCY3q/PkY3cUtIk35YuzNyv2CmivAy8wqtEbyO4i7ZO4+s91YLOkFF
PewqUTAcclhgy9x3N5A6kLpDmgEBpEe1n67QX25A/D6DgxylgOsWWnW8aDx8YA8/2B8BJAiJZw40
RNphTpw4LGA1qWl15hHccgy4iPKiEi6oFnG9ouPoh3Dfzqq3t2LHDG3CKoFvSn6rQoIBq/xmZ3FA
79Z97LeYZywZv1fvzxFDaGBitbPhR5Z/iZuozsB9GufUWvetzjH+tQhJxzYzo6aw7wnzkraM7qxr
RA8303Xhv7jj7MturhlCwzOmA5sVr5cWYDwpCmdgBt/zXlrzjHb2xFxOYqLTe/Edq7hRBFpZEPh1
W2cRoPo/CiBiFrjMPkB+4nEAHr4mxTxHkcyeE/6mPKrICZStD790lkizS6cet7nu3wDFNcEXjTjk
5nrAyoK/4MJMtjfVfSf6bzrhNZ2lyhRF2unXEzyL7yadP9VjADuNQyVDn0LBtIPjh5sNauDTTsOd
BKOwhlIOTXY7G0mC277pJVVDUXrT4GekVSU2OC1p7cD/1KODBE+z2DXckZpSqd6sPBk0sdBDDK/e
Pom+0ELgGpirSkGCnRrTyjhHmKxuvKtXYNjtgFPmgzx/I8kK6GjroQVwySPmHSfEEdfrRQmDEVYZ
9KwIByKgIkyOSn1WpYfEZsu0ili6yGxdS30m1Cf0xltYxFsAX9468HQGmtBjAKGxYqg4PwA88OPz
gQuZ1iFk5WBcFUXl/osg61TTXkZfUbRo8PlwrjQO++Du9asKAwwhqtXtQOoj97Xrac1ek3kGvvHe
67O81leuu/bv18O0XLbXLACzaMvHHaJd+l9kNwq8yC2gnFhtvDPyzbqfGKJOv4VNlZ0eW2n0EWkT
GI1FHFQ0nhr+d5pFaiOnIEm3gN9jbBMFEPKpj1+3OahH2R9I3Rshmed+yMkv4Xp1wiNNv0helv/1
EXT9RSaXluGex0N835SFBD+ZXmc2VXmaXG8vAoGWa+ANu2DL0veFOvEt5IrmzAC+q0/kVmSYJ2E0
a/mIIqqguf8tqjqzldlK+sNqRR6g6gSwCYxJsEWy3DOUSXrWXChlVYf0idqIjogvtCxY5s00c3F3
M/wLH7Te5sfNnahzrt8R/TWHMZwbJOvXazOVkw90XysqcS78O93HDItrgdWj0jALc1TLMNZAXzR0
vKxf8UaMs5+8IKpmWZF32AGxQk9cynxgYWUU27KARc3PsM7OKi8HbUi+HN6fLflfjyPS9ZuvVRQ5
ukiNTNfrHiYhY45J7E9ZxzwEuHzkuzDzNqh8pvo8MM0oZJLIKmYwl/ZuG3oiTg6qL9M9MDOKsR+c
LxIwtSR8pp5Vcid9x1KB2XVoNJdVaUJgaGKqRI9icIelwjShd19K1xtMJguoU9bA95G9uZgi4HBI
kQ8TbzqgNs//xspcbD7eUTC55C62/O3IMWxVQrf8IRJjC2cldMkCNjwVbIjauYBjGWqmv83Zh4m/
BjBwbAxGKJ3ElHbRTaDcLeXRoMmJOGWng+OcId5R4ZyJqruisq/GyoWr8rPGLziQF59frCsPcyyN
nlWps8jbZZm+d4Q6vM0EL/DTw2/gvnUvmtEPxw6I5JsAjlR8KbywHzjGycyE4UEUrjWGEjNGUYNF
lalz9L27zIfI3Wx5MSAl3N4d8pvUtr5k+xHuknzncC4PMaygAhhIMsb5VFs1X24qT0N8RiqiDMKr
DMVmpX0Tf6ENZAoJW0Lgt311wKkeoQWZJf4wYWDHyMFFu15H2FzcheE7KNAuTAT/u9Gs0KnMRocS
epP9Kdoea/79LtOA5UYpVOQ6jvKwB1efxIr4wmQmYxzoyiCpLsl+d72HWS/cvabIZhRtzLwsDiQg
qN6S7VP37x0Kb+nLwbQOb2XDwdbNXI/VM1IGBbumiN4fFmsWsxjHV6cbMhxRc8kTLL2Rq5oIBbBi
zZqWoB/x0HXxIZZjYYhwSVlxFcB6l2HL+I1OCnGbMVzmshs4GTVf6uoNiCkc7d6mtZHMBZQtnJP1
tjf+K6LBEfz5ar5lTuCKRKcLtxvksct1Zr8pmV4QwXRb1oXD0B3Ab2I3nYE2RjPyWmY+jRPIjj0t
j20mIHHVm2CXFRNOy9Bmkn+UCDDxh1JkQ+i+TAIvLwqC8OMxVb6B49Wmxnb8aeBj7G88NhSqn4cA
eaXh39jj06DndM1uNVy6gcnEeubg12dfxxOVH7U0wjI0o6gq5aeu7sI/76sf5DJ2w86Fry9EM3gj
fJoZCxxGhgCg5mVZMM0kev7X+O5gjx0PadHQJjQVtx4sd93iIOJ5dbrNhpu04BPIC+O8rnLkcS/6
PzMHgNbhJeWbSdYmnI06RAhrxTTiNwmogO2jB77Ut6JVX3L+BS8cJMG+4isoy1tnsBBIvD7M+9pE
hglTpYa75G17jaOBMcuEE0G5eJGxo5GTD4BeOBUCRGqViJhBgxpKvZ+HOLQqiVbRqotGTlqmWGY7
KJ4KIacqwlzhHNQGTb4Ab1RVp91P0ricm33t0LNCMQfHlmuIhO12kba0g+aXr+iZGEYxZWu5effT
qJdZF/qhGvHjylBRzdUkN+TNatgsZZ+ZfHTZ7SgdXN92NQKNIz9Hd4T0d7fEcA+EtWMNmjwd0I00
d/jr+kB73P752d9qgZyYY3yMmLg3RV3oE+JnoRrmjT7eZEiVZYVkd+IHFUR2BDmn0PTjAfA+fmzF
liJX4of4BpvUxrXwWbKqNx2mNJrzXXDtSvPR7lbU2CDDLyYLavKb6n0q1rM+ZDSbG2QDQnljQugB
DhDn7hIyOjchnAxWYvBUWrp6loDpqxTFpudtEPpc0nn1rruTnMlIFrjJB/QxcvBuZCNCz9rAuK7l
TFOci9SPEUrk/NvYnbnkHbhHh1C4+saaPAXIbBZdfIKbondX+Xe7KRP784PFQ8GQc//TO+Q+UzcU
AeP0xkIdrSbzpRzQlIMRkh+Qt3o/chK431HGlETS4VlNRoX3XzA+OXQ7bMu5iKQGp11DGrYNBFOV
+hKZHXNhBspvUtf26CCejkU/vTHUlRK8Q4WB75yKkEyaoFdxSfkGOHaDgWnbAoB6KDHQaljzNyBy
bGH4Nzz0ww4r97PruXEJmJ7+ZLUS4EcwyUFGyrzPZ30GDZGFRTlgOj/6llMErrY/9IrjkETBDIeb
fVGUIJxKoxOTGK5v2L7rrhsdbf1KA76BVCPd0l4+fwvlc5s9lQREJaW0rF7xDoMyW6b27PUio0ni
9BuRYhbYirUqfoJ1Yga7klaUtKUV4+g82v5trebpXPSXgDcLDnJ686SOEmrkvLpLdT6Ss/Ng9YQz
GAARJeAgQOpSHgYD8OZ+i+2x/YQGHBOe7OF2D57gM0bqvGYAqa1jvotFSfldH4+eio3zRWSGf5z1
haqTc37XLm2qaRRu/000mkO7VTTEgAWHW4klteNdRIsTwUc4qNBU1RsuBJi1JAJoetOq2gWXrVs0
Wd3gzscxgzk/ppqinKHfNaJE+NTHjv8h7NmhwIez06jBqsN+IoSGJFLZAVu6LEu2uWR87DG4v2eX
Nen96AoSEfhvgxR82PQHGYrZMLiNJAjBjrKyofJFEGGy+0XD4bUmdICD379yTwl6soN1561gOYY7
ZGnS2MwHEh1xdketv0zyc+OnRtxsOABebTBpa7lNHUdOnH82rS87djMIieXPE5PJDIA9LCnd/7nU
fOR1oSTdaa/5/NfMDfQsWFxVFHQ+Y1XjyoP3idbl2SE2Q5iij2ZhQg6T/WdOl2QgaBR/FBYX95GQ
zbNgSfg+0Bq+/K73PEb5eJhQI0qfPrygt1wKdTiWXTktZfKS1GDOiQ0ZRcPWiWVPeMLUP+cxd4yR
HfVE4lIWMy65Q9D4Q4OUdDDiFGOoEJdUzTWoqoHMLSRNm+WwXRBpdVVu47LeQ8SghNyUw025rkng
K9KkDS/XFeLAOW07JycmNupn86XG7QB9Z8tXQxb5DhafHddpp/if8j7AAH7wlDBAHu9aQegax79L
d3pSqOU+DMT9MK5HLcbj/jQWXh8ZG7PbU9WYkEmSaa40WHSgzphqXxngI6KvDI7MjZ/lw0z0V0XX
mnnK5ChfW+9n4XNpFy2lA7ky/2Pa8zbMTpY0GeBw+q+EG7gg6tlt9HoGJ83JX0oq1erCU+iebi6w
J8leUlomkyzA6sbJ1K2iJQYutZHXkqRcWmxeMGU50Widk09z8lEP9Zos+kwuQgF6iFqzjH1Hj90d
Y1SMapgV12hkUo3Ff2wVe7PmPcN5cMsYLUbXbpumhkQ381EkInXGovnFYVnbejdlyzX53w59URFl
sqpx4ySw/Er6myJHgEY/DVX2mWlY4xcSjuQSvg/+TMAZQKBHqg04hph/fKA5Ri7b5JwtOXT/q5Mg
ou9gKu5EThTJQoLZE9Zj2Ue1zL5csUklxQi30svy4I/aKsTRAi0kBx0Eo8BpLIae0iZjZltvt0UR
LajamMJiWLPWNuuYzpOhttdMXOXC7B55iCypKDrwwHwQwO4JpjtAYXRbbDM6GmVlfgIwVlheY5u5
G276qpld0DyZO6LfuGrtCRBHVxPicIB6dkmA5QaUESMN+Jw4Ry1wErpFrB5Iyi7p+AFA4FzuGzc7
DBshzrynsjYXf+TS6qW9FQ5XyEb5RmbWVJkSOcpLKWKuovpp07Ed3zIvQjKdbeKR/rrqxzC6LgdB
Pci2etTdfFQKmO5XG4q1D5Ck1PtXbrlgqZkfvF4mf0XF656zmz8DLmbLTykL6a18n7VhC94KMLK0
rPlrVc8MLx/0cdIYaRDijP183dhBeRy684LjEBEJpzByfEOSw0PKJ0QuA5oJ/J6xiID33w7ya2Gu
VBT7F7fJga4Hci7JnV8/aIA8JOhyUZ1SoQps3ZviO4yACIgl1RRugeAkjPAfKiizLvmoRHOIhprg
a5FaX8amUGiucyBBEBGfSThwdFQ9HYQeMtsLIvpLEHphA6cJ6ljF4HuhZCTnEq6qj5UzuGB8n5cV
vz1/ZLTmW3jVMZFRlRUAueMoIhrtY3t5Hf4ofstafYT65XTwy61Gndusj3SHvB0240R6cuezj0o6
qZ3y9Qjirt4JrjCRv28FCxYQabzKXjAZ2/SRrkWdlll382RO6lylGUolhXAsGAYhrY81olw8Y94o
ZTXNhxwApvIlXDaPqYSBcDWGFcyfaYlXZBPdBBw7IXJh/58YfXr6YbzdxO0e05MBJGU+e+klesoR
H8SFgYFTU8hiClB0vwfS5Q8XAf6fxZSUM0LQkdpxO48qx3MJor2Ld88NbbIqbpyBiMHcWSk8pGl6
f+QX0mPruC1BmJ2dN54648EgOfX4d06XvxUEhPDn98wvhkqqlYlr6DjQKsE6J39oyGFqxZW9JVDc
jTXV65p7dDk5wE9rxtu7SOnym4rflSPLvWo3pi8Jv7SRyUTRlXsT1GfHd1lM8BduAVLTnMe1kG0+
RZavKifAtT5swTWDfHOjr11aTa2KUbCioA/9Y/EtX/kx7Ai3/FH/68XM2LTbRJ3FRp/OKpuzeAJe
C4oLZcd92cEgVuOsyNaSJ/R55nbEKFfQJNYm/jTiqWoC8oNJRh43qurN3BlEaq6Tqb/FBZdz1+T5
vIHqI3PcmB/lBPIS3QsVuviTKXLKF0Cr96CJUcJiTDuUbamO4b2abOZJN9EO/PatgSS6WklAIsmn
jgU/69dq6pIhoF8uUQi/03p2SLFuHQRD7ftx0qDUJqfSENAxGlW97SNSI+xdhWi17RB4/TdGga6E
Hw2hvMTkli8EeGUIzaRuJs/TtIK6uVr9RLFKR5pkO24EDY0jpmgUTRNDTPX6FLGTLtIOnVJGbjk/
3lZhteIO4Sm4P/GoHUtLslHei7KeLyhZtlH5HLfE1tZ8n7BYp/UMYp08u0hzqLlBad+B3kWlwcg2
sckbJqkhegBK3xGmc/zcwDX+sFS8OKeagvUpbuzQPMZ8B7ReP0akYjZrRqGkO+mVVPOtTXVbsd1y
rEtBvMSZGaHrj4fsj3MGyM+uq0j3UoZsPlJJ1syp+rXX8Vv/fymohxJ6++/KSvsQeZhqP3AOcpRU
C1xoAA2QHQtvzIT82XQaPEYpgTT0aIq+YQUbKOCRXb3PoGu08YQcTFiyDEdktN1+ZPqkvstGV/zX
WZr4iSC0dyATrmpz9fKSAlQkMYP2xSPg5a/O7Pv38KQI9Tw7Kd8+v4Cz5uYt70mjHVTCCiOcnyNi
LDpdzqf/kbfTgTuQ1e5P++dOt6FYgbEwk2BH471tct/8CdV1Ar45sSb6AbHCnHP/vNXyladyjIlc
j5dB6LpyHKRCG2sxsiqiNiq3MiL5ykJzWRrIDaSOK/eiOYqPfi668PCFYNYZSGGs8K1J/y9gz8dz
oowVbeFxMD2bfWgi6cCqKzip9gWNEZ3iQIRbd4wHcEJSF4tFI5SQmm5BlBOxosFomDZ5TuJP1Li8
uAJLq/LoUafNgb2qeKt8mSctepXnfd1WcVAa5039pFUjcAFYwUCPT9x/53U7PUrkz1ieE6D56Ol5
3PfJa3EDXvYOuSVol2kVHHuLsetNRhGgRoxzM7kAB+iGLvxS2zTase0/+6afYRLZjXZzgLJt1boX
b7j34sICJFBLl2l3BxjwVPuB8ULb17afYevsDeNAUBpbfGykYPdA+73Md36H9ghthGF3BNAqtoM8
sIIha2Fn09e2sCCLMz7oB/gUswNx07rIjpoBvwYMhYiC3Jgcv2HsJtA9imAwqFhNuruTpTWGzM9h
aylaylvr2bV1c5dZqr7s3PmpeLEBCzL9qwiyssbOe2/5X75UJnP60+5nxx/1mNBxqGlT0QQBPs9T
hj0bf3BDJJr3KUlU42ev4M7HPwDU9icZTd6qd+ICER2pmcDcuvuZJDwDSZnzQ3sfKMliu6N/uXaM
wbhpL5pKxnLcAEx0fHqJVCVeoYXc4R0LGvJJ7sm9k9ZrbIus42ZNpqmZnEbTza1BeY8RBTiTyvqI
7pf3EsxSCP0sxGXBK7zioT0GFK7zauKpQUBDtxMtvoM/jnL2Dl94ANM2fXcpoQ1KECmEQ18NxwAP
hZlt7c8DjmpmvSf204MxFxZObP9hw4LgDFjPZaJeY9ZFlYGBeooHdTpd+bS4rHU7hEk0z6n7/wgF
UdzV5Wf2amO2pB7//6rYdiTHvINBQH/JZGU1XuJAEzvXE3333rsaxk5CAboKVqbRTt1wpmqy0Qhq
QQmYwBN1OdS0C8dYu5Dnxb69szs/1tChHuXdUXdG1zR8mOCConzWja+QnGuK0jBk7F/HmwiHoxMc
xTfBNVAh2GCgekzTYkaiOmob+fZPk9YOxoYSyFq9F0jxoCzqGbuJzLlqbyJicZrbz1K3eKBVZBZe
9zJgx+BAEF3KLyktDLRfcM+PjMQE/eM047pGrehLrIKUiHPb/xJffqTJu3dRd8FH4XU2uHSTk5Aq
hMrJCJ3TBl/q2AIIdxi9yMcDyfDJ7GZW0MaJDfbQ8UXYpsU+8ZW5hbYtB4FF13iUSzLGqblqkelb
ceBLfl8w1ZsX7BY4H2ojW9/q1fEDCVMTOGzhJH8BoE4RvifjD0RXR6nJ/VFa3xi2iUsgQouMFtxF
IsvPLwSbPcntfn8byKD0ac9F5sGPSPVXTxaiMQbnYtVzuLLkM1RNnVMPdNgWwt20CdE/MG1jqt1Q
fXkqekixrrusy93eo6mlobSyrSZrIK2uQ6yIcab5zwyShJlGr0T4uk+dNNh289rDTWXh8ipeigKZ
ZJbn6asDdv5d1oeLpaTHhmdt5/v6l4QNZ9Iv9gEdrmQ4Z5ISbLBbaoE1zqARcxyLymF8a+4jJCz/
v0fVsr9gck/r5QnrizehAOLGskS8nk/ausOQscuHyl2TFIPN4vOdziJUDucxBH1OWQghM7CJkvtp
YYQ9xkanYSY7eo6uoLMzkTDHgrxk76AUW3EEzD2snaFBLexZle50obIGrouooARAfYXA57OUhhK2
pBWj3YuxRZ6IGG2wOedSf9tOTEXIuqTc42vIclLUQmUGiwGE3qDLj7A7CCeAcVLpKfsMZiVRzZmm
l+ZQIrK4BYoG/AtH0rDhAV5HuYGF8RA0Lip9WV15v4hT59WmIsZBMDzNbFVISN2wz6LEqjHmd/E/
3rlvBITAxKdsrShGoGaXQbY3xqIio+/AtFKzzTzQM1k0eWEpTtv6ZI4D4HBT6bMKR+P6IvYKIIh0
Hyq1KzopNuuWasRZUOPd8LXJmUP0+utPZsrNb6YLRph8L6FGTO7+NIV8W5Qn8yG+PaoWGE4kFMJj
gz82UmmXukadUgiFQgKjPd1xra65Ae1GL40hBjP4r1VA3cpEq2pz7sqTshxhlaG4kmUWhMwoSY5L
xHORGvsYrm0hcRWVof4njlfJlQX1defLhO1T7EliVeeNHcPkBTm629a7c+paAW3FmJq8tVhhl1/G
Q79W8AqIgmYorkEJQKYtlmH74M9LJRxv4RC7OvVZ1hkBUEbCUVD+rPmWB2Xol5CZ0xF8R0SlKvYL
QFwbNjLeWFlT7oobovdvl+Dx1ticAAnG47p+cUV7k2Buy6UTbnQqJrVHnvc4e4tWeigYozItUR/C
lgNMr4uDT5eLQznTX+zaotIgMvPn3BaguwlfQAcu5CNKKDEX8owSRlY++xQNRGJZtqXWPpNDfps4
D1ADk7+XOaLfpKT2kvehhlejSbURyiEchxivHUEjwuCiqpKpnYkZcD0PFdJs+yD3pRolFvywA+VZ
r4Jgf3Wbcl/7TKj1cc+Qr6JJF6g1UuXxj9u30mrq1O3VVy08ckqufcWLoKCzTbtpiHb5xgDS23Uv
GFjasZyciOsHzGD/tCBd5Tzy9JgS6GiapzP3/87WI0zlFw+OGFy9x06wDSP1SMcGK/CxaOvc4GBv
g61cmwGua/oox6n53X9sEYUUrBAK6P2/eY+JHqCA6gI2W/9UpLkYjWyVgrL4VUg+5BUhtI1aqnQ7
i7tMjChHz4W9c8kxocVxlEHI53BfbfTSFQZi2kp/Ki2zCqRD9JQH0E+rtUtbdPtQY4hKb57ko1pn
9lphhvFcQrMKh4evDm+0imWDIkttpWIRynKXrsgsJPPSMQqEin+o7l7l2nZj+GOFlrsb+DnEYgSb
mYyoHJBcWIKAYHmkQopo40T0Xw7oA9z8M8WJkAWox1E4b71zXDxzNm6GJ+bx3LiWGquGXL7pKr+U
328GlNLo4yiXMjxQBgKVn0HKGK47g4Zqn8TJVZXi2ql/56ZsbRs77lBR/77ReaVpVosnuF/aCt44
7wWt4AVRw6AHjCFyklc0GJ3Gf+Xdw6EipFYr8M1CPLbewqqCyBlYmfhjYstuEmoqUl6PkfGv0rMp
xdV7BLGKMioqkyJxU9BMxQXZD/woZNUDaV7fDDewxOcxndGT6lk+1mIBPyhj8wvpDMdw+Tp+YQjP
d9Tl5ZlPQi9vTzBSquFFIvDQG59v9FHVAIzG9zfgLO31CEmtAFrVKLM3juhFsT0yuhIDbXAj3+Kx
Jdk7+CASnkTvJLYbFiizrDlnC/t2b7CcDzANr/DJkvNc+np3xB0PGCUqSctf01r9r2RdgNmDP32E
2FQoZWw9TyFpmG1WP4CqxL50f8R2peLfxrA0Np21vGen0uVaFYzeJeO9vlSYpHJAXJlYtVpa4qKm
aWfa8vVbY9PiYRxjf9l9iZC1AKdhbh+3ewdfsM+I0/f/izFxLZoJLQMZ3xfuL8G9AVB8WigO86do
rX41RugMxp5Bd8N3Nr62xAUM5XGL3XcraYEB/kmnfTtRFcGcivpsMIxRlzjI3NGR2eS9w9BIgc6b
ERdJpXPmOKkL5BM1VvaTcJ3oHgimfHXah80yebQJIQJZypQH2QmDdx0vDaPL4EAgDrfFuY3IuUSo
0BQTYz4D5Q19CQZwFRRdlgCqikn1yqXIV7wQqioaNTDoYcx1fvFoVvAfIeS/kgxZG0zFxKCt3utT
3FMF/WjDj5XkJz3xGH0xfbWSHncBlrViyhLJIcYS3nz5UsRnmeZ7SZcyPDOerFvRQ3w6SSuG0Ltr
/+FBbNMRuVtY3epD1AqS85b/FenrhduWlb0vp0PQBgG5hXd+nOI8bS2S1USNnEaX52N6Ci4iDNM+
FxFIj1J/IC5vgrOYFjaArQ2JxDImv/uT6qrDyAKzTeBEOnTrcoQzUj7YzJ9RL6vqsHHyNzKUPgns
oZ4oXFjdjaLjnNumJIJK/JTSeoJJQ+75+35meAsMDKea4e+v4nCaR5a3WR9YEvDds2U5CowcaT+j
111HiJU8WXOi4rOauGD8tATR1xoc0JwoUBNwUHZCMcDu69DQ97KJdRyvPpLAYHPqnLStmnTe1SnT
wCAtlCBkffcCSqXS5+jQ9CV4NVO/4TERx+LpU0Iw9p5bfE9R7YHp5T7mThq1lbEpmC6Q6tN/CP7E
7gYIE5BFPZLJyD6uhke5U6jdZDEMeT/an7bA3eknZEpka2ZxZNiICBuMIvp4l9y/Hm1SsVWYwPmJ
QEgNJb4F5QQNg1q9+1v3wBjQESTK3+VS6+HAGyfQaEdbSch5YgPWnHQzJdVekqg6OwUUWQcCgpfN
S+1z/K0uH3r1vSPOIpdg2IUrn1bIawL1eL4bZrDHlq70KkHoZwXmJmFmGEbGfEHpYsLfIpturJJu
rdKK7avUXniXcIVuuM5c9VaA58wbMDR9L4C8Jj6EqfpBZPuf41pGcvnOjxPCdNjJvyVnK10MLZU5
yrnntpd9FErFtTjIwwprrIaA0C31cE1TxzpETIB+fIvW0FI67eAvqsj57I710MQYw2mauMqnOD7A
DYIHtIlxSCV9+Bo7RfxvLUH/EuqjfWASn0zHiX53T68N1wa5Drm9IRHvNAkVDqr706Ojk8Cpj3o5
Yeqfz4/AcoK9pk4PxRjqj50A3qXQz641wyRj0joajbX1rNs7c2DHo/w2Y3Vd4uVzdq5cGhm51CMB
NTI7s3aFZ46BU8TkLvCTHAwIxRgJfvmSsqe5AdXt+qdZI9re6yv8qfWd53Sw/VuGQ1zmQ+6wEvr1
+18d1NorY2eGwmu4u8bF87sChVteDj/5xgbZe3UawS3bUUMeSqX9Ke2GiaXV/rDjEMAjRkLEbyTR
UKnGCKNtKHS6RtZzP0XV7cD/c1TWjN/LQcmcHhm90ppexyZnYwiBJU32dK+vTYCiyUNNhAhQ72zy
EfpaC9v2fblgsEQCN/WkfmbWqGPI/Fcskfyu5tiFALfrFWWpkYeVqXObLvnzfC9OrT0IEb68tvNf
RJU04Mcwak31ZdWU3o5//h11UK7rp1ZS1F8LlzBq2YWCoyE2GMfE6dlPTkzmF8gD3m+KymDLGJel
ikyNe7YjJZlxwy20xRLGIlGH8g3lCt5wb7F6gWAxoJmzBiFStzMfbjTlhzveZS/dL3NskJvSGYWI
uoWobhfSE/5k1k0in/XHk92QBwMzj8fNgFbfHxm+rsZpyWn1O4j69jvCJbpO4014FxL/LXwK+EOg
1K+/LmTY34wE7oqgb4cGZZ2twbA0xSoXkX+BTEVQdjTgk6APrUCAFd62VPu6BQrXeTpJ230orWWU
3frjV515qiKHfzhUSvbe56CpvvX2LrEMFJoLtT8leOdbTRgJ6O1Vbr+fNEqQBX8aXW5/F/z3IfSO
l58zxAu0iRgfnN9xnHkucy/6eNO3GG6JgiALIreMIkk+Qrqy3fWJRoTjbQ/SgGcBX8AQVxGmsA8T
A6hlgl+K8Z7Y8D8KZW8C3ckV9Hw0lP8JaZcTxbUPeZJa/UK/wJ4+biCXOdfTiAhwswPKnVrAvJrT
tDsH6puu/kOZBgsTkYY9zMi042zEUysjMJBPKncsQvk2fnTqSLqil7Vuo3YCaNhJr1THtFRVUxEh
iiftmCD/1l4XSFS+a6RwR5ZxVOdNk2yUazNuwC4X4IeTLpsb+OVTfneS3KuFBjjBEJBAQuhWV2bh
BT1msdeDCQ1bFwRiFveoH+Xk0tivgMh6og4gkJQX9DCJipHy3gjcTq2qs0Be/43rQfL/bKYgCf3k
oIccQmWPCRkyJt0gPVmV1pIdjWFvZ7mSS/82ROBxQdSCtWLAXCt5VH7TDtZi03mRl0p/j/oWJ3SB
ohFJmn9ij3VQ3FlqJhvOm4hNcpIwJyPbp/YgKOn7Rl/PjPnz8wPt1BQOGtGhaK5LmDkqLKYBrek2
aHpKeMNKZlJxQP9JP4kn+C866pjs7HBLG8DSPd3wnvk7AFEZZyb9OMr+kEIYxU7n2//KdhxmHyWz
ZMoNgIpOl9eRwm1hngnuUmQJzMRuY24cBrW0HgQLQ+bUjfLf5PQDVvr0B9ZQGRl3J2n9s6hOMt2v
phkjzIHrKrKEQv5RNP+Wrh7/NDP4FTf3+ord6bbr2MT/IVfEIrTKdI4gnuaHkVgFxrJyAmZZLYKn
+RIDQK2uzZq5tRGVhfxk8Cv660Zg/TlqEhHNoKLVzU6Cfv/po4MDygdg7VZXnn4E1fmcyrx2wagI
shkDXYyqIz+FZX+JyzCNDoGcoTbG52wA0WaIwb/gNo89W5RPhY56vpRZduZ6jLJwAdqRPlRCkbDo
ro08Xheo69Iz8q5D1E9VUJ1rS0RSg6EiLeijmDMwg4JkQo9Lf6FmeoRqot6sB8AI5I00iJYElRkZ
oanFh3Ohu193MmIRuaVv1PR4dhO7HmORqowXYLVYRH0dz6ivLLKoJkg/a53y3vqbjkoSLlfZWIJn
CoX1D+fhSJbqT633ZPCDC9LHRSrKMUwe0IN1zSVS/CP++oF32LJPsflDNna6fSqfM84xiPdvG1e/
Aof+I13Fl+pUT+qkFBSJN84oCwLuXKGL1lRqjlY40EhjN1+r9Go4yldw49rRPsi1pwJ2PAw5CDSv
kc2aPjMPrWXoYVCsOJQgOIW1VFnK0kN1VkdQw1nWqqgjv/JOZO6fAmAHtsnW6f2xiRmsWQuc7z3k
yNu9iGMHJmOnY4b1XSFyyYuqOapuHw4Ict0ZNVZT80HTts0l9MkwJwvtSnHPljmAucUFRH4mTK67
U5Xlrhcs8hCx0WHhLnyd1vpfFQcz4OGQHrsl9mNE21Q8TGIu66+Ri6WKw6y1+yJK3AN/vSSzuX9y
ib8AnLTm7Tg44DWwS/RkhWaHUY7Wgr4man6LcvXy10A7rnvBfRSg0PlO8qutzlGdcU2xdyh5nOBK
f3ef1dJVhJAOIP+K4fPGlUQOcYRu5ZO2hvzZFw31opJq3p+sMnbU/9P7qxTH1hV6NNojl3zdAWJo
teIzTm4tAMfJHN1cNwdv7L9P5q8KdOhusVorVgeL/MzCYEJCl5rHApczBWvw+dBlQk8XM2sOjgRw
OCqVzSvrfoO0C+84FEvi8JDfGU8cjLl5/hy9llzH+z3Cumhu76+zqlRs94imX2GWUekqaDgHqZm6
GKp8NBLibINy6pmtchVuYWXple64FIeQoyC57MeSDxFS38he/SQpliJx7S5vX5ORt9ZOt0DM8zcT
KrF3Xsz+z44riiQ4rT8aByp6pJYKTV3wNVtzF9gkhz9aS1MywOh7dd79RW4swU4yj7e3PTssXdKb
slhiY2PuJu860as7MyGpomiEWvPC+oUwCbfqno002Z5sOpCX60d8/vbXJP20Ute6+Dla7ntmUi9w
QTnL7gRjj24IuzctVnxMPR60tjxNUS9Lt6QfP2sp6wCDH2wyn6fQyf4V75q103E7812j/b9bcXGK
2kgGD/jvVMS1qd7Um0r8HHufl21F1rlihOitNUySnAApMDjxfojVnScXrWFlILlm3xhyOos6Piqa
VoSJ388TusGzqkAykppSngEhUGQSxA2wNrzIya9fPek+w2QO55+MvSFVg1mrV80rt/tsJuMPh094
KBt2eLZe5O8zdZldMNXWmAH03bYwNRgwjCQ7Tf5iucbiw5kaLoP/vUun1tkuvQmDK3dfBYMaxVOM
y4PZJgeSnAZKVJpKSIzZVveMO6in9a3rFHbRdhYET9XK+lrZVTxBGnAtB+dOEYk8OOlxQ7x3meUO
ueK4TeHOpYNAFZxk20jPWUS6wLyjYzl1LAfDbxDCobcpnNPFIV0wy3u3SsXUmGgXdpDRtxsekUMa
WXKhyP6T3eAn8rGXZ/z3R1gtk9Pyh5iEoLfA9+WMcmkbLx0kyyb8cYZHypfahw1pkG2tO8u+E5sD
aZJPJHeuzLrhcfLkXgc4cftATr6OaWmJqNx1w0RUnmE9/RHx0exYCetkC00RlJaeNcs+8iuEGcVE
groBSDYTfegS5XA+5fYsBnSQ294QFZrqel9xMBALHBSmM3+UKQ/2JeMH5OXR+T0ZywTdWo/k4J+M
5ccYzdAfxgLoB4GkRVxFEu0GB5CjlBtT3Rt1Mr4FOjoo9YsRhr7f8CvhmoDmG3J3qvv4wbyGa7R4
Ld86YZ3zwwqwx41tSkDx1uWBOaXbFr3T6b+vl7N8IpR2b4JpdxMHoRHhCIAvMFvOiaTx5z8bNucz
oyZ7KWN9xLCyksq3c9ONVQXzp+w/kJZFDoJRmPACmPZ4wuvZXvTC00+fv0BOjIttpgXYFYMnuIRw
i/XTOalVgvrZ74r3cedaTreYrW6YTJP0NYXJNAU2RPnE4nDV+xIUBZLnzB3BfcYlPVEQJH7o5ndu
PYxnlFvq8hLO+4+Wx+oNBLzA1RNK76jRd23bG64rIETWjAbPH2J5widHCX47MlQme5Su3t9TCrss
T0onWqbFWjZlOFso/bn4UOE6XP18AoqyLD0vCz74VDjtKMeYr0Icj3YpSAwJdqBLV8xwvPmU8ha5
W3oT3+8Gm6MCQVMAcOaW5OzdROp9WK5FEliK8FL6Y36TVgNizrVV7GlQOPv114ZgTDx2ei0L961C
66qDAe8TwXTKfQmJHlQBHkpc/yHELoikeuyp2A4Y+UT96/w3RB+R2uVzb0rn/mjnL4kAQKyWzuvn
Wppw3XgITV7D66Vt24bpTf+JqzmzBh58nmphxlwjXpWO+5ibVm3tXQ7T5bNFnXTTD9MHuijb8IMX
87SkJbOxbzIotmGyY7vYIN81I3Za4WeaI3BOhT7SVugMm6pARWqNiEKYniYllishoKlDUN318wMT
D78srf6+wSIBC4ydR3cieBUCwlGauWPgKlVWLXZKX6O6w2nXgdOv4/JbhzGDhR2eRQJRh+Dbv7NZ
crAefHi8aKte0QGubMdDq5ZcmqQ7IyGoPnVU+DupNaA+Evvdx9OiuLjXOLuoj+s8cK/wla308BaN
KDWZmCrUCTg0hBicSD2naX2SxavFt6ZVqALdRGhKtZCPlL1jdQv3tSC7MzXR/JkWz8iH2T25+xC4
chCXlRvs0a8IxEClSWeyS1VzpvfhOUOnASIdzCa3mb5Rkf79o2TPUpJfSS6C38Jj79S0V2X6Dt7J
LMk0FiBi9DJETAz9fxModsZcgeqeXP8ekCWkWGvklDkrsX6NMX/PLAY4sY5Yvco2bLYTNCroNHKT
VouhSEUATgWWgppS/OylLkiLfIYgMiKrwGLyDLxGVh9UUCvATgjPF74ve0j0SNImSrjwuLWPbyDk
hGWwQ2BKdGyH/AJvci3cUAblPvISUuVW4d5YejQNL3XOKj25ULI2xOq6NguhaZ1wwL29fmXhMUSo
gDcsetP7V7bBU41qBHpbI0DA8akwIoSwvvHzrfGzMGbIKlMPLXLJslg5I9SycfKzeBABKVe0ULjH
H4sCVFHCpvCoJYRhwLKze+IjT69gDqIP/GGjovYCG2EPvhSyVUQSm6rjJMWm/wNgTibD3Grbm6jH
pxEPA9/INuB4DHEsAm98ogG14Bms9XiplmzqWLI2PnizAs9NCKeA8RrqWdmKLUFo+3Ob0vENknjp
rLsR9De6XboGI1F+N0nXO1EZvHnaiyEePx3zTw4kQ1OOtKhqTEHgj5wRImIAq/endkHpPyg5DKeM
QrO+yCL4Rm5PXvjSzHwIQf3inWCY5V577/mqBEtNs0kTj7d1oy7K5Kz55DKbvpR7LDkKpxS8Tkui
85wztIZ63vhZcUW5nScTIvZmxYPAajrovszkcsosxUk11MJhTs9D7ik7d+M4DsZ69WvYG/OejX52
zibY9IHby+8QWHEvDvbGLLBWU2J90tb6OvEes605IxX9ODOHm6VDo8g5dn4BPsBAGHETIshrnt/D
TEKwDf7WZOEKURYdmg6nXx3Ug6JTcc6KxXUHb9B6lj+/w4L53tUxMQz3txnJ8p6qWPUXM9wswLbF
3i7ymFzMJx3BS9Ou6TyqDY52UKtTNNY48tjOiy1Tpeq3nevW8WPGZIeLf4xYOgbI0XL2rNzlCBiV
8wj8q6AkHFoDcL/L1Co59uOL+CVnf1SIlmul6CzEcKQ8Xbg1B3vnN8G1v7tDRineBjfoF/x3eZSk
uIHVMTRql919E3iLQyWLpzxEZTF4piNHl+2kFZzS+mnE1MX92i110yVViMrXOkcFQR/XD2J2MriU
RvFnHqJ522YzgmwP0O0ckA6Omix+8iCxlFhUJphniPm/eS5dJzqcnBYd/yWhJhulqZoBp03IE4Rj
Ura6rYMWGMEVB/bTCWIuyus4YZaTTOPIW9D/nFM/I77igHA9woGepHJlHosMN+CVdUaYKm8GzWnG
we0H7s67T33OobmbBVReZnwxrUdgyp5A/5FIcCLWdN67aI6mxrofNRPRMxv2BfscuSeLLHndcwsL
LYVR2AH5t+aREw1g0PrcHFqfLjD/2vaWsWqhgwwmDrmS4Sz/8jzYo6gwqtP3f6oSUhL7TG72ijrr
Rfj4OQQJGzQzusBiB3J5UwVDM9oGvN2RXJQ22DoHpiXuMXm1sgd/gzzR4nCsltRtUZbEKkfP4Jmr
IcwFPSv6EqSj23jw5CBn7Y/9xkYz3E8KdshRC9ftefSAS7mAAChukMDM2CiicIZCD1xqe2l6g1tv
9p6QKbncxk3nr/N6LnofEYd8sO22hrcvQuHVh/k8KLboMvMSfHUV62ZcvsEPohkeuYsqzwMEdqW6
QcIexFoNH0mSqYVq0hitYJVTKnLNR8QveeF9stTqqH6n+0iZu8klMw8w4irNn1FYLhvUjSlbM64Q
ufqkf/WTd1bsUI8YXtn9evCA/92Dgx/0XL/YSldKiCTESIV8O3tahEanBU696rW3S6uogZwp7/ZI
ggFNxtMFRCk6eipJKDLyyy1iAFIBXDlOPg+wmDogtevFtqyU0O5c7X69bYSzzlEWWzUauIB5ff9Z
JwoQ9NXrajCMU+WL5uXTaiNMcX+i2jUvoYrWjhRdke9cDNwS98JOsXoFAzZih8+SAW8RXsglOrti
TrhZsKmTqVpuMwZs88b8Y7oe+5ImViYVnxlmdr48BGFMuZizh/cshztSrAxSNQB5AlTQYOfpBCgi
TKJ3B4QLzFfDTqmCRjx7f6JQaRHwO9ezoCHAAQ4kiLQgpxnB8yuDgOBdV1MrqK5kGHL/VlmEKvaZ
1yQhYe2HXhbQ5fgdYcr1RnJG71zKIhtw5qp9RVK0CJctEeGw/BCwt1fYEU8pVDgGhH0EYY8DRCvs
GtdmRcY/aBORCTv5YH+hsx1Pi/XHxSSg+9E1v7dzDolKUIL5BhsYxspq4vLPKQ4gQPCtB93ul2PQ
ewpxrgeSG5Qemb5i4LBhwR2Boh+DXmFXbWKIli36HsWihnKr4yrE0Y/Xzm80pKVMHeg7j4LfdQio
UmehrS+HSL7XTxFm+31RMjqYQUsEh6eooIDSpfUBlXbBr0PgI7vQK8AEy2rLq79wiHgck+hQApd0
HurXH4ih1AT/JJRlPtlj63EWTN26l+UVlxaEJxQWRZGiaIv9YPCqD5yGEy+FuKSvUi3P9qaDojHF
xHhw5OXyMP4QHOn9t6Yr7To9qOsjhFbkgK672NAyauJGbXglV8wpAYeuejmUVg0ahfA0GvPt4RP7
CyKWxoFF0ADROdJS0Hpg7rfGMBNEIg+ah0BqKC5NqIH4th6AQ4Xerjys+gd6sDnKy3P1su20AhrV
AUQ1aneFgWTRH3BLoR3UL2FqXd/4LleDaI1RKih2Xffc8XsGX1WoVAomIzLK/PnmlWwIL7O6NYtk
aavgffdf247TC6aKur2pLZYp3Yw6AAaCNQ5NSOydSHBObQely8OhAhT/TdSuXH5EgYBLHjgGlP8x
uuiEYe6cOY23AtmU/YjTr4VlMVNlB784TmfUPGlU+Gi9TAXXX9L0npjk7iDLAuHLvJSWXciJNg9u
GofMEonYcmeBnzH1NCLHFTjMZF7TKneEUJ5hNSfzZmtvfF02pXS86gLYbTNZdBjOHwx2aMjWkIqw
Z79imZAuICiZ/vpQA9uyUCEJjYB0XUxlxSn3LIgNIx/MO6HXakl5P4YPamo+pfyr9+Oe5Y6MNuVG
8j5a5po9/hvRSZUIWP3G+kpiUO3er1QhsmifyeIQTkC62FzWVZ5/OqhH/4sOxDOkOQOaXam8aVsS
wAfC4ysVapEZTExXpa1kV3GE6rhKnHwsczhV3XLDLIZlR9ngc6BdJgYBECBbMAqmsuRZlsMH5ECB
sjDa4H3D7pjoPZGCCZOtYzp/B0cgSn2Hta2rXsoPaki6GljyDK49Nm4B0xqmArxEOxvoki5uJ9jX
gq71A+QYc5IbqI5DhuKeNoXMy3MmM1GfisgFttgRHnjZoYiZQLcEwXWWfe0TtrgqojdycRL2vhbx
ZMMzk4qjnGD1JaZrJ/Chq1GC58IoEug8jRGA+qgqnYEbjh1FQTQDRxfLNr4GWbgdzN5XdTpLr4B0
IfAa3Izdkc0OU12cc8g86noCz3yZyjPKzlU3IXjcGEuwALL6qDFTKyLMlAug2OAUyeVbs/El0RX1
rp/x8rvdkIFozAQ7JQ2VBhfWVrDiKIdAA2nmZw4QGd5Hep/5At7t3yVtuI2QxrhHuP+MkZk667zY
dIcY907OgDVb8vEvbeBVH+FW4lqIssL//EpffWigFBjqBkRRGQmNlZVg3ELcud3k4VOHsjPLplRc
oq+Lw1dlLRCxS+x+T0Cm3vljN8JFyCyL9d+0FdrcUp+s8j927G+WX2IB3v1AdS7eg/JUjpoad0Qx
FjRHeM63pYAuAZAGg4doy4KwKs5J6QJwlwcmK/D/cHlVwVKP/qsQvsOpif7W3IoPvoeIBDdWv02L
+LMv7Sn9q2QyhpoO7l/Tg9NlZdbtwD85uBTuEZAsRMnJyZiYcXB8DF2+YkpDaP46ooJqOR66qMiM
KuxxJLREx9ncyA4uEC1fgVpNGL2WCOe4tfd2wM3M0r/VJog3bc0ODvcGnnFTEnQoSv3ctcEuVQPb
RnK4rWXNaGpjsCmbluGMkgrQqM1CoHkz4iQic0u0AqFniOKadbgrtJqx/D5CH+ELQH3qaGTIofKf
xPcy/LC9vBh62eAkJ/X0bHZktbNQy9IDULZxBkuBqLR142/ZJkMP+uqtZl+1VbaKjxG5MEZ0s77V
1vpEVthedhyVVcKNjpns8h+IAuk3ibKJgCRO+Vy5js7cs1Brzl3zwdjA1Y8cvbVyWK3fOa+STOFg
er/Ln853YqdY3J1UIWpcmfrwPyO+jNCbSwzuxjENwhm7nKMynxB/4jaZwvf7VU2EXfTaxVgaA8kS
fSEptGAHezcpUhaY9z2z+AxERD4RTXkooLaWrY7ocV9MIZyOh+ezA8DqhZxDutlRcL02IC7e0TRQ
Q07VDC2NaHsH4Dj2gAXlFQG6nSjz1DowVqhnI2VSQdQobPPMmxCSSuZipA3fXJNu2/MYbMScdyUj
GzHojN/zxcsl0JOnrK1u4JaF/XUUF5gU4MFn6AWxSaoHOIUEdV4cEVonq4cHRKJ0IErA4oTZXegN
yZ96ku1a8XJ0UN16nlNDhC74dnmBGAOokp60g1YpxnPHASk+LzJZEudTg4RNFUipAEOBe85an62Q
UTfI+SoV1FwHCoNfLboVmp90dJyVTUfCibgqZzEefj4hpckMYBCmIR3inA/ABbUgFV3G7eR6L68N
BFrjEztVCKlfsKRbBSrbJs63xocV+F+5hgOwZcfOUMQrPAj5IzXlgq4+0uAmaElyjRHtqfF2SVlo
T9DB78hEVoqnUyQ6zBVWjLrKVrq8dVD+SAwS40ijQshvNc21pdQWA5CB7v+zht2e6MDz+F9v0+BJ
m55SHIVYdAubBL4U9gOe8ZTO58fEuL0Hgr3V2P6xZDahxJwKsZ8lclZu80YWIcsw8od60QfPtAvR
czDDMCcH5JPi0aH3A57yH9+Y8Q+iVEzbJGWi9FLvsE60kv4az2Iz83vVR0YMaAFyLCnh76Z941Z3
1ODqAOuxfvAt5HLYdHqZC0uqArBmvQ1ADCF+NjTX6piIJAOEcXOoeI7Qp3ZBfrWxjpFVpdcKPjlX
lI5b+f9m9f9zSKD9itMXsCINsq3oaQpN933bqq8lSAQAoq2KCeJNBkHAlkFPJ2ET7glYtLU4gI5+
6en4vziaPCRtHmnBIzAj4vK1e9kD3KiwbIR6ooO0btGfeEGiHzHPQv3G4hCK26nVA13OHCqqXVoN
kW9YjWQmZvBWWDzSDFtc6A/uT+yb5nUZSI8ZXZt0dotSscs8b6MObM+1JW7fcR5YYznnG5vPVXEW
7jSYz4C+5lSj3UHxYBwGen8iBgJGyXpXiOd+0xXS7GIghdhXBNP5YniOiuvzTBPxI3ZSjkAZki/V
BEOK5TIDwlGLmsFALlf6/3EfJ9HG2aTBPrMHaS55Fg1ngrGRLGuxGJOGqOnzdlYpbj7HNsR8JzaX
lMPSb4kGML8HDqJbFnlfP4pSM//dvkxRAOznv0kgJQIYdDHPBgWcsJ+vBUXE1R4ESIR5tOO3rgsx
hzEhXQpIE310C0exraNvD9GXiVH9biyR+rjZBshlMBFeHCUUGOuPzgRrQMVWyFdAZXzHDpVjX2bY
e5m+qseksz6O4JoKC9JxACSvOTOYBMsQSrwovSiScvB794Q/IvPuBqWtvgWAAMrhH0sMmisgUNvg
9SZQG1xvTyZgTBsdZDcCnnxcdSecU1XSFFF7tAnaffpPCFWwvf8r8cobMsDwv3ibVfOboydB0rL/
mAdw26h1hxNYMxPfss5U/nbSyM1tN5hbfoRi1VrOqzFLkKDeTu5YxyEJ1nhRs0zQypQ+yjfeYAOT
oTzcAjSbKZ07bjSqzb5L8J1G04DWB2j+MCNBHSNLuztE6cLCaiwnFDts0OE5wpYkAtEVBPPrqlOe
3OUj2IgLJQmRqpRxZ3qKAaUFx1IxZFmFzJOUReNB/0MciXX1DKYVsg4yCiOqh2uiudDua3XnnfO/
BBdbjdXxkmHKXWbP9+WkH3i/sIWFmMlDMWgiM/eV6s/AL6mCmYBnH1PYdov7a3CpasV6iUBQuKEY
S/uLSieLKdCvV1/aegoc51vS9MD3K+UjWibbq/MncAJ8ry0dsYUb30vf3G3TsEQS2WG5AAA69iPD
e1zYfrxyDJR0VDv5uZTT3XxXXsbexgFW1nu8m7++6YrOIrwA0XV61MAYUb9V4KVK3mvK41+PcRsA
PCeX5Jp0CQF5FItdawcDzzR0cFkZv93eUgq5xTxT07EwkDzLQrABkxsZFLOe5Uq5/vyNN76LJU0O
205v6FkXeuYtxmDB4MOJM4mmWwtMd8AGKbgsdiKCSaV6B44mPiP/WrbbzNIrLD/kfYnRF5Khtbkd
vIaPvnKSH1Q2IK+5tjiMDB9D19sToxDkrQmQBFftDXnmSqMi5wGwlIODJHO5Z01NJ7K17SJhTW9+
QnpWOlG2wzYAw/VJgfIkzuIwfIuJFBvqbURTvFovvmOfeF4G93l/jTV0MmNo5uHiIh9GmWgF7QNs
M4wXXOEaom0PUlNrIyNT6qIrMHYOBB3SiC6MASuvEJgCXByb9yHmcBD6aUnr33WZOy/aJt+kJAAu
T8IKS9xLqFAr56fk9uYqZTnRVtASHaOHK2Zw3vEwKB66bNVUbFFPeUYzF8/TsshVXAYfa8OxgZ82
DUUcB3TJgDl7otPihJ4u4QdqwLbmRZhYmfr+bw9bpzTH/pm5O429+c0cjVjLvzbswMYw05iHmfCM
6IuD+EDreJ0dYnlo02+5ej798GVAAmxyXQBJXeqAD4sh+0mqspNEgKyzz916UfpjsYDtDTuWz8sa
YuZMRWj4MtG5AClH7CWsUsFJY60c5CLcEEBbfnm3aD8EAkzqHIyjFij5LYWKsyCX9QhRC4mDeIVl
wzt6YoulyZr9bKZSSCvgn5odc3HxEvmMxwmexY6v8MIS6rmWtVePxLD3IlinkxmlNaFj0vKc37an
nsrKLYXj8nef9lhkVAbvXxXdvCZIecEO7e7SUKHIo1FnpiC+6ZkiJO8JJovkqSpF3MWAjU0zAKdE
8UV/MUnJqwV+WVSDz39v6s+9GA7qx2p/tEXAhqZJs5RLSM1d4myPjdRKd5vFKKvEXQAepHt+MC6m
JJxGivwgY/S26VBYKeLGYwLUCTdw+UoksSpZZP5of26LyHlI70NYJq9xxF4jNUXzmSCjMMyExpON
JHrygo/SpVnoW7k6+SefgNWRgyBoOC2LiQ6mxRmPOk+6C3wM4d9Ll0CGcUZqU1R1EKF1zZrgd3O0
/IBWxB37o55KmqfTwH/J1XkzAOBRBiJI9kueaCIcEAvMrKy2wpWZELCIKAklZKVDruPzH43X7N/K
J78Q/AXZVx8Hc/L8cFMqwWkMgqPVW0S2Jkv8odlMLLITvYksXupBBiO+j9grt2e4FmJ5D8zrbMLR
vsVM2msniy9P376FjCsz3QQhH7nscJ4k9tGyzhbOI0X2dzThWSFIyPtTFxxr3H05Lcdjx58J4BM4
TRu76yb7keUTAhNBEDEtR8Nuq75l4ikIuKIWtd/tMFXbEKSwDmQBXfN6J15b78eJ+SMjkASd25fZ
xbNbGAC4Fkp8xDqQ6qC2b+go7QQkE6ymU9ahHeu+m/VDWIhBWaVFEndoURnJ+QvtXLuKRljQujeX
9K0RPUfSe2qwemKRcN8mwKJiiLl5Xaw6bceV03Jubcpr1+DstNpsge5yiLte1uug5BivnbLBGpwG
ZoPLc0WzkztRRr5D2XsjeS0lg1eGd/6BHdi185/YnZg1mn+RchMD9+F+dJSA0r57c+/IY35fycgh
BPlfSpckkyNHV/JEC7vI5jiO5jSh2z1kjOf0Vc/VM6JDbdOoD091USgA+pjb/j2udDOZZXSUGjbN
qIbTbF2LIhPzl4E/RbOJWTOEXpnU38xsewSp80ykAbFPXkQ7rAkmJtSv2jsaGqyZ6rDc2UEy7/OD
y9ca328yx7qFHSl/ZMzWA6Tc2FtV6Y9E2UbghHa1e5dtu+QVxNY965EfDq+5pMEaB5e1k94KKDgx
eV5GonrMq8pDpyqVYJgidAvQbfhg2ByBOHdoZrPusaSZMD7kgs6IlL7RsctKnvv+gUV4bp7hgm0F
9exZkRk5Nnii1Ma/XOms1rCpUygY7is02/mXc+JVRekc2NgZiLF91apTUNwqkUV3N1sT0FtwQht5
I3hjf51im/fwfMsyStksxLFeCrUE+uV/nAd5TzVOzbCkac/ewPavQ8JTUx+vLvAVYks47hx6TUgi
vb9VKpuLI5FSKgBF0PwCfiTkk+VjNWiXtcVSeYSn1fvdAKjy5bhZwk4ymqJPy+Ov7QL9JMctS+mQ
pQ/mYFOQ9cBL+BiXPYDwwVmFSkW8Bas7rwl+UkN0qJdNttIPlT67n+9ywMOG5PtTdrT6iKeeqws4
xZolLrU1YZ4XzSSlxhz2nZ4LnVohLNVeOZq1k7IDaQuIvOBFx+e31VYrhEY+52Wzvai+zQO6d4UW
GwjswskZp8FLZBM2ZvW9EIaOydUvKdpaYvi7uJHv105x3Ta2q9lqe2xiAOLDtbyjkiBMOggNjDTB
/X7VwYGmo7koeBugWVQ4SNiZV5MSjjCFPhrAEleBAn8rb81TY/rOXIOUWT999luLG8gwJMFqQ1D/
0CI9kE3rekZlRAZa9ZJNOiWqsyk2ol4N7QatGzQFhJLFKc0zXOkdjhVZ/Kw6F/kOwmmbIMlrjYTE
3ZEPsThNFkNfL/qt0+UDuKsfhWvsooSyeN/rNiwMMRF52AQlpOdieuIc+0wI3uyJBEIsUB+Ix4BL
mRm6981+hBFjeKGrWwZEI502ioPs8j/7UgW1v0iXC/LV/T0IITLxLP+eribOncUYGCISFLPYamoD
AJBt+y1gUzcqCb9YzzYvh+4+h9u8cEaWAloKOoYA1Rsm9LrkFeaTQwm7tGvJFwQhiQWcfLh/+U2m
MQdhtKRZ6CPH+AIzUcvS8pgpM87eXBBxDQD2/eyYDgidYR7HsvjYCX1+XjNqLbP78FQKUaRfMpTm
WolqpdOziiFbhsmTBkzIbTBvw/d7WroLuBIjBjcfydprWNFXi23OLi1cvcxx16rlh3BZwS6aoD5e
ONcL94kB669ioRlizIkdL3Nbe5eZuU3ttORS7zscjsB8h20bf0vdkOsd+IM+v516wpBkHUvzTaso
ZNo7hvNroKAnXgF6z6PluikpCjna7gRDh/cGDgD3Dr7gvKiDJZmfMCg4r083KSDzXRBJU86nan7e
R1h2e78bTV3P5xDLJBRd/gEJMr3xgqdP/xpCFmHOWVRqWNKoJeuidquhdgeRUnXy7O8Gee2Tzjhd
v34aYmlA9hVohnAYLqEE1xHs9lKJ3flDl3E0TqQUOQAqRtlrkhZYPDGbbdQmETWryrgUziXj1TTO
dMWaOBan/hMmNmNFRzk0McLCjQqfws65yCfOAUfakVsnDzLkusBWMLOZCvaGpObq05MS6NjCcCIy
khEh/wGjg4hvRjM/wliieBIAXLH89ij5/ew68Ga1yVcFoUKA7I6R2179BVAY0bnH9BnlaycRjdII
f9kqeHvlloi8efflDYn7aMSsU1L0D1HldDlcFqx+iU518afZfOQ56yT6s2lDZGjBkM+Y9fVRsD15
wF+kLI2FBUC+9Iu2bnsq+XA7VfEcUYy3kYSZ+B/RvcskAExgh/5ZFgo5LHsolZf37kQ6NkIVG+/3
czcMpNTGV84PiDt7PQsxWl8hRI5PwNlheoqIbu1DZp/tNxBxotbDZbTH6c3q0Qi7yIXz4oMrofIO
pFLXEx1LatyoyWrV2G5Lw9cKoaMHu58ufn1Fx3LWEABwX8xuRcI/U2UMgqdBFmP3vxBRNH8LqGdg
hjnLHhXSg0iyu7z/fM/AXHUeilHl2NrgTNsCK1WHeFyLhNfylk49Ac6WCUiybnEnAYLVwWBn0bUl
6Qus7lrvMNpjpRuHERXQ7hnhIBFXBAcF6UyftTZyr6Ha4ySZkyEGHey8JN7cEW6Y99jHE5V+0yNt
v+5KtxBsYg2qf888cYYqg9Lz2VDvLkw2avH/54Mo/ZqhVuzgNJ2eMVKXT+lGyQG1ilxcATM4n8oV
XvaxZOMJGprahKBYIo0wS46AGkxl2Euh+XgX7tC5wXKcNc3ZT7cdvnItxfOaXOj3mPRhyqht6Seo
VIvmvRb7pByWbg/TN/SUfU0iPk2Khpq71ktaUzuX2Aprgtke2lyxpupbUS9zSXiidWq4/rfjZy7k
N6LBE0qxhlNWJC7o+OIhHtyEFS8RV+znYfjCmb22KTLqIvF0NvsWvgFoJXQdI+Tu7zaRPS+Ed0tr
grjK5vs8axe3U4J8O8qpTdvuBBTnPVdflsjq3TBpenY0L6ihiEbzHDr1OEjGts1mmMFk17XezlCK
//EThWRejZYaCk77YHS8fAQU6Sh61zHjknb3+rzTwqXNq3qtMZ5A8Gna5mlVMvQZrCwnnNQzf2fC
Yjf+Y+LiFO1m/W7Kwsw/3rCwIMlzfa2e7WAmtEbsPdWXR/p43wzZodSFllS/DlXuq5ZMS7YkNnVo
epUo6JJ2kf+Ba3RAmMCVjxwx3wxjeXpmC/SbZ2kZmiT7wVk2UQyJsWaAIdC0kE7DHB2M+7/eFtPp
XMSv19Ljgr+INeKAD2RcXm6a4OxmGjsjs4e12AFOR0mqh2o7PE6WkR4sZoc/+X1mSwzMJ7Zw8YYf
97cmbMexjnGqSuWqlxWjn6KAF5t8kVdqGWjbEDYOBW2ZkoGZ6qB7RPgLWWx88K1AWkQNpJD0Yi7+
DRx+/ubCb4xnWBdPgv6RuAoyWsHdzSiBcGYTKWtnfYBoZuRCtXeh7juA0yalrx5gFMmEScevwdy5
Nqm8xQYputUN1W4xqdh0PfmrTKjYV9cOt/+VujEKOhqNqWiO0HZnxyCm1nmQggPjM3SGuqy5Qrx8
XslUU6C+ZOr8ZecJ9Bk0WCj5wJL4tyhhC9KxJaWiCygZeyFx3K6N9LDlP9hWD2oEBpQXMbEHZUsn
S4WzrUhCTkvm2RcdAuuzzYnnbIVXWh3CZ5ZxwpBWh+6tMsFXoXxKhJVqsEwbcFY4WkbYgnjtTe2D
0TS0FxPTJn7Vp13vVvj6aFD3BK2MR8MhwLgXAPuplPEVneqz2C7C6/pAVG3JtUJMGUwaIzQLuCXD
6yZH4Jpr0U5g8225QRV+QlXfQuqs1a1UvA+tQNWZcx0zU6ygzt+2wXPLCbSu22Suc1YuwDhoDLRd
ad0/akxsYq24uR/PLYntRUXQJOaqEvoVv3hwUkq7EW3gobt0wbaHIznd8ihPs0ES2sbDLLuWqcL/
nqRqU6fLIrn7PZDf8+vm5CEGhcRHqKWe9+CBN2wvF6/hwQDvhDNZlCNZA00QKSarY0vvCJ10TnZL
uqkBkvBirkcvSVroeUjjsmNH0VQF9dCkNUS2LKUivjXee48F+D/MT0aINYOzFvEnBtkGKswSMAwi
mY3MaLVgvun0ikJ8VNB5RWWwtmbgDRaOuqdQwANqtXGlRlnVpSTOU5tD4TErmr/UPTsSRYHk2NJS
V/f9B80hltgLLlIelBs6FmCGlFs1GY7yb8XgV8mZTNOPsJ6CqnQ1GEgiN68IgDNOVMF3YGkbeKWw
FxVde5fTK9M9HlQnHXvXixnYM5OgT5ysCiOq4HzFrQyQmTAI4NR1fSOu8POIdViV2X9ginbG1m/r
wkqyBHjJc1sv3r9aFfQqjbKiUDDeWPvKa8i5RgXBtZJGPJY79WoSUzx66oD1R4SG02YNjWhqmdFS
mqq2xQkXKGl3fYgGVCSnzv6HLxq/JXejgIoFocxIv2TMB4sZKXwKyEySDM2zXVqXpge8xf+1OJuK
YfdzFYy7D0xbKwQSUrXjdgio/bbJOXZipAg6B2YilVU/8B82Tv3Vo2sFkceOCs/ZsliwJz9omqeF
1iNE/yHCFYUMtK+r7qVtc9WN58dtbckkiRjlaWd5Pg+oI3FLQCN13ZwnjlDQSq7v9jy9Fxlb22WO
tG8MBv8/4Xa0GLZv99cyhwLaeCjEMgHonuMIvh0rZAC+o/ozHc4tR2IDEMs5+JzcrBY7/xUfWJn9
G4iUUbT/r7LnoQv+Vj1dLlOPeFVZL/e7ek6OgOQ2n5QqAkLex6CfD0lNHSXXBkjT9MuJIF58pDgO
AkkrpbEUVwHUXf1T6eWBXZsiUVgEWe4dPYGeyfCzS6rLymuTt/Ww82YHfzWIfK4V4q5yE6P2IErk
aVbNrjPZ/aIqFJPZOznDaTpq0+EYa2YnTRCKUz7JGzfpSiou5GHsRjGIFLlagQdICnypNMVxnjG1
V04Zp3UTPS13LrDhuW2+mDvAbEFhVchokFUvhG9pPjbgMOuqR+NTgXwtPQ7vUTs7CYdhAca2JjJD
+X+mAvmzDJpqU8fXIQfrwA7EKq/pHLCBkC4gNRU8CYSAP8vzaZ3qTWeXBnD8SHslLBNKrE64/Rn8
CT+Dv5M+RlRGCiyHqD5gKk3lfv3URSA7JhV1ws4o6Z8G65M4pMjnZY7g1kgWN+JyUhwlCWBGOmuM
57HgCRqz5T0Fot35G5W2EfawsoK+vLMXph1IlwXbYcc7TeVp/tvtxNUy8HfjYaWmt2CbicwjdxCG
5NhgSWhgDwzyDb4NQ3URWyXXjBzXor/DvC63TekFucFegfd2K6PPz+EJd9/jqNsFVk/pVha9tR5A
hqA8qNbGa/GAvvmlAsnymreT5dv8E1+D/1BZqIIpdQ9wQh9tAiB94bd/qnXf4chS4FwiuBg7xV7K
4uAfeK6rZ9r5r4sEeLbctKvW4aG/CAKhc8UXt/1FzijhMKEsUuq6nDknzzSgiyJegwp1+tFFyJw9
rVJvSB/LpzQ2SVJJas4HHYZzNhmofgpjzlQG8U2DHpt90Pa1CZlnGLBbUFC0Q4Ev6x55S2BFw8cI
AqTODPZu5VSo0a6hmD42h4KqHrpFCb3m87aEX17K6nRfhxA3GLyzpVNQtXo7GdmkQaGTgVhX0tNR
PwyTR5gDRa/+P2SI3vc3NclE6H14zZAZzq3Z7/D+8wtlwGCpUg0iz1XxE78ykd+mUFIOnPRc12RA
BaMiQC10i7U2ujWppg32V5c1HJKI3lGseFZeRYN21t0L3fmCVN2OOkwFHS/5sxZUnTo+eQDgamSR
XQzCylCEAVy7HxTe8JqTDWY06HdVa7NM7WCLhu8+DdheowGnrXCIps0ZDZhr1eRjTlT9PV3px5iR
zTOGmq2qpgj8xY/6x09kevVZGr+H4iZxgFMKYTzbD7V9Q8wZ02edcr5vuJlO5bHeCzJqbEb47sDb
lnQkirrcaWZ3lPs1AtlWJHi4OHPX9s/ZHdIAfdtxitpENVTKQvqQqwiQbmeXw7UmqX3YEgDSiNoK
45iArkHIxdjaPSmhOTY5AdBK8afm3gc855MnYZ8aGnrEiCgqPHgthgapNpqntgPALtF6oQRBX5iC
yC1tpRvqFiWrH07adYDDPegSWz7WqGXiO4HXrVlCKWVPQ2uF1SzP66tFoZfEsS4TBy9ko/5hE76r
Nl0UOc8Zwb0K3ltSvY3ONeBdZkXZR+d9DjIFvKWpPNAQj/H0IjN7iQFex9TAOfy9+sGf5sX5b3Or
zm33mSs0B8d1prKNnRFGrXNI+l4L6mMsl9nSxv9U3e4Ir8kzvMDG9XQP1DadX9H+Y8Hp8jQp7GRm
no6w64Skv8x/kSbh0yV+9U2EnOFnkMPNQploDNLdiJgsp16Vlm5NccVEhPI7HQU/1tuKaxmJbfoh
bTo3tQHfokYa6y1VVXcLiy6u0p6Eg4HkRx9KXP85iskOHYuzvo59obvP9KqWokRAG/5jXv2imQmT
rf/IZJsd3sJ0qC6LRlg79dWFayWLdXIEz5dRsL2LAMFEq2mBnKe/AsJK5X2baGIZqO8j2NPOv/6J
AMxOFFyX193CTkyMcg5l4+6Jq3skR02H7unbi0vgbtNggtwIwJDedB3kWxrc6C8Vv/tkTjg0rblU
uM1TaPbpQ0HwWNy1zx5ZoXcGwKsFnLo0Gozh9B330PZAjkWILwJfhif6w3aznFAnvOOIP68C8Ls/
3xV1LfkkVX14IeMdYdDKdGd2H2iIvFgCGS2u6gi1LUMCVtCETM8JTJ0uKEvaxbS+Bs3iQU7pIL4G
uUp0WhCmlJnR1jTnI66VMCgYtGJfC37LYX8HY0dIjcMaiZ3zLmVlf6SP5mtzSzCGH94jvfeXEsBv
ozLUcF7L6YCzmBmuyfQYucDOwNzqFVxgoYhm49YbvsuRQoMcB+11Xsj/B0reLv4oHmDwkEbPCLfY
teANqMQqYSD5Z6vbjGI8qSb6p/du1twOrDdgcjf/NVQy2qio3zryWg0bfiEi4WKKeSl9taEltYZC
MHGu3Au7KvcvnXbLo/iOJsh/mH3V5iekaIhQV0HhKg+eaVPOM9QhTxwR8BWBjUjikf13jjViDFns
ui8mhMIO/d3gnJvcSKX6WfRtOKm0K1pG/8fMIU3F3Ris4fyKCPkRY3scM31D42OB78Kg0GDraoIS
lZvtLkw9cftlUYIycnjlKQnNAEBsD1tL+xatfKdU8Sc2424uJG4sOGhFT0ff54FdACIR7jM0sJm1
PejmE9SCnH5ipXIdDvwuU/8mWYNTGgJcSTO2OIhJf3vL1NVVV7DYFAwRYmiipv8t0sCg8i+S8ODd
JZ1x7KbK7c5iJIsixQAAeKxXRLSe+cdy6LQZ/8igViX/JbOtmJu8Io5fmt7v7xP27ZW6sREU0YOp
89JWu81K/qiX2birMO9RUo/VQiu0vojTngeMG0cqI+LHjebCFEs3KsSz+CaaWnkWi18Du9QHUGGp
XeLHgOC9CkHkUR6GJq78knwJjvZArMdAjvABKxM0Zx9/krCEE7YcfqFgF4XbN3VbB3PKDYnK5NIp
iC3fMQ4boM6YuddFGjxYwxLuCHx4eqlm+F5Gp21Pyp/bl+G+AYAn5V82GnU8t+LX2K/c4tsPGQxg
wuT3eUS0Nnif849NI7DOiQdq5gG4U76BIp+lBUedo3HHhDw+feVx2h7p2lWwqxnKhaKC/U3i/rOO
Qx1EdiV3V1xWxEgR7ktEXtc0N1QUuk1gYTil7PIIJaXdJ2qgiaTNS99rZp/h+fcWtSZKZDk+OcMp
W1Tzgw1z3fWSnBcp4iYXmfu/ss6DxoPBrME0/CwgLakmD0TROFBnApU1WswwxvS3x8mkWvsLTZd/
V0k0fR3l87zrYm3E5v4DJ1XZAyJA3lJm+4cjtegzdcTKzV/c4QgkWPz+4xEkBwWF7s5xX+d1foC9
hjdp9oe2Y97chlhfVbWFCa2Kffxl7bRIG7VXxRyiQOKyP1poMHLFTX64JCx4LVT160/bBGxCgSPo
xJkuZiwZ8dcNd0C/NZdWHZfAxOteTVBI+qFnB7qnmFUSwNp4ceSjLCmTfafyq8PWRxzFJ8fM4iAI
0nH2qPEQW6iAslvZ/v6FLdub2Zur+z62m9k+8py99MHbZiT8qLqdCQq49YG++iRu9GBTJq7kNdBR
OE9xlwTxK1LG2xZvJT6tOrUY5okWv1YDq9ijmnPvx5k7HUPCizQU0S9Msusgu3Y/0JmfVQQ4R0m4
+V2Gki8YSBvHu6OMc9BGrTJ/XfL+RIeMdYfdkBOYARYhKCN4JRHy51FYUMsBLzAyxUx4Ztp5s28c
0zUSSniKf8TVc2bYFcWDwK0L2OZUqTETaypuei2o+9G8hF91BUjtPcLlZWNBuw9OBRDYousMz6/3
IKd0wp5Rk5piTlPx0g8hIcQfYbC+dbIOsnH+l9bxfi8CK393GwsX1GzmGqJajMC1mrM7dP/G8Ucs
ypeX+1uq+zb62akySEtHUmKO4/8n+o/CyP54OxY1vWbsSgBmuoe01qEm34yD/ihdJBsOSDo9pD3G
vY777uEInIi391VU2tJftps3PEjbm/CMElNkW6e1gwRjjODCwwXztD4DRz0ntOkA58KnhAwOCc9R
ypdgSoXVfEvERujjlXLpcvAq75VWu2Oq/92PG/caTXnvR9kilMXQfIPgFGpzwQFPmgo+lQCmqxJW
e9lBBK4Q3Oa+lx19Mq5b8PeSTxD2gOEM44qpQyxYqeivc6cMyYNjgFrvRY6qal9VUhWrqEHRfS0k
raF8y+xQC8kS7fR+6R4IjQX6RqRSXymqIvoo8M0dpqaCPsCwMUKBAYm83aJIwJDrZ99gW/0PYwlk
LbxvK1bSnlp4M0LPqJRynSq0yYeWRGTop//LyDXkc/F5e6uP2KjQbI3yG7SvOLpLvVlQZzbwtrCK
GWrN0pIyp3I/+hyjphOU4GdK25wCxANlV5Mn/ak8kIf8u9UbigYabGFueOovFcy+4/9WMdcVlaed
y1xnrp+5Yd7ht5kcw0eIFne6bgo26RoO7RepNSmkBQhRPMzS9SoAINjSKnyaplIz5S4NdcXMQKfw
B8l5N0JmA4k1tAmAR5OaZU6rBfX6zWYW+EHQ5t7qLg7I9CGLAf7t3QbkP0lfoRI72SohdXtU7Tjm
LUYDwqEOTjjMe1bMeFIQqsNIV0N6f6qxWmMlCs1vsNxTI0ukfaOowdfgQYeQuz6HxpAdZ72TN/39
FOzSX7zr9sAIdD1xgoToPpu1iwRTbOKFJBQyfY/ck/yChk+6uTvAi9pxsh89ppdIdEkmo7IohilN
dzsTMt5yN2XWOMZqVNeNiy47HFXgX87B4jr6POY1quFxP5ucsYbTsOnXyUSHYtj78Qek2+AZWRCS
hmkApqGSBwA740M1hmTTzlZ5qzcV63QSBaHtxs1zsH4DENTGY3NFUXmEjafWP9SVk1P5i6FtdeIs
NVZZ1YL7cEY+M8vDcG7pn+msg1d23DxSrKwWAFN4vz9YqETT0b1JHbwisvG4fTGDryC4G3DEBk+k
GPNj8D3yM3o/zHhw8Yx3x7Id0hDfkVdDFI6+vfhPVbNo+wwvrZ2R2BROt8RQHU7fVn+6YIjENMcl
NqsPBzEmgXcpnGGXlivzG05iqFS53i5Bg6b1vWmuU79JYlfAqtsXvLnE/LthNiolDg/wrg0iPxiZ
BvJ7ICMMy+A7gNJrhkpuXyinws6WQaxsfO5KZ0xvT2PhKTTsp01zgLHVYTjLJBWp+N1VOKF5uUJh
HDZVI2OS5HbH5Z7ihrcIHC58WtCe7lWil21fu70WSqFb29o2ghy0A1MQUSuwpGVp8/aFpJWTTnsG
rcr6MHuK59Qp4mNahQ3C16EbmyJXG8BrTv8JSGO6QBBtZbvwU9XTFF20rvVW6FTsB3zYF7ojyZmI
Xgwq/j/k0XunBH+f2rCGz72WRKsNn2Rmk5xy2+8QqKJf9QuL2v/mA07A43pG8cNJxIFimGVe6cG7
dNL72n7QaZtOWjWW/Nfr8vzGrxz3GnzrBveZz+1lbWFb899dL+P0gqlh0dr8y9nVClb9bI+R9Ut+
UPdOKPkwCV6Q5d+bTdqPI6IMCFTuXgRRp3RgFnXoXp/ftcB/UmKuUwch5ofSm7A14I6zjbIrtrmB
/Hr3dDohDA6+3GH8XK58Y+ZD9esn9g9FJhIIM5F4VmXyUciouaAcnj2EOsaHn4u4rUoFAWhPU1zF
Pfls80kJcqaPX42zdIe/n94Wrwi74k8QSvkAt0QZIz3f9+a/NDyGjgIn16YEO13W50bcOyGjP6FK
Lk9C0Uf7Ija1LSn+Nhaggko1HSXkm+QK/P0rB7gzD/JD6AvbX0tDP5V8CpEKmR6LOmfwPAitQxwU
R0wgEcDaGXDuURKtOjiVj45mZGJ5sSw6jZ1mx5FrKrVLU6GaFh1lafDYZWDksTLHzGS6Z339jQNj
PzsvjOxHekvfi4e3p2m1oTL0k0d/aAWS7VNK1qKy+JWhAW4k2NML0SkVmSYViGYJD3aXwFYy04cf
nOSEekOf90V9RMgZy9NCkeQAl3Dt38gVMLEQxJWo5ONTw3Kv3K6AbqG71a+7JGwYcDtKefVVxv9j
KcM+rTrA/+cNScPT5FwpPu6N34ukOBvIIm5CLMRVsqUTxy8BzIXRfU7nT4I+VPVfZXiPxWPD9V2M
8aRhRgO1npgSiN7nZ6RtX+iqFCDW2R9/QT+OJFU4e8yTcM911sPPeBy+pDiH7LGP4Tpob/zEDIou
90h4PAtaguZv0BmO5QMk9pW6B5pTqdJYOPqXyTIwBWeybBba/p4Pz8zHUGQirM7W2qQ72NgGvF+H
Mz1OblSxupfjv4wn1driRkbecohP4asCUwOuFmBUPHTgJFkXwyWJElGxCqsIaw1PqRoWHKNbBdVR
2/kNNB2DDjH2kFSVnQ4TjOicthbjcF2H69O1z7lbrvmUoDBu/8+9IagwtOdV1P1tOhNIr4PkNq+0
Sf54vtLrJril7U/j7vPHutNRnFR7cxCjYB7KMM5ta9QXrIQnteiLU74xqtZ8xROetGhs7Fzd8Ydg
zPQn9A4jtTQygrTeqa8O3uiN4TNAmxiaz9XBMY4S6OsTLuBxk0u7WyOJOt37m3rKrmN8uvl9oQ5t
fKxHbT1ZEt+tkMFtpAPN+/DMGyTiuTx5v1W/fMjKT6jnd6hlIo9kd2MSM4dYlKWraU7Tlb76XuFu
scNXpZnj1QOIfKXacYj2V48xaRr6jngowDB2ujSfXEaTcO9rRsR9ObwY13vwegXPf6dggX/EubIx
nUyfxWzvssFTC1aU4d7a+3PqGjPlxyabL1t8T54/Wdi0KIiyT9ZYGgU3XAP59WBGwZR7Qw1UhiGZ
3H3WSr9fcas1AIJHt7Xn5/j8/++aOvEvtKx29aQbmtsP6uipjv3xLZ1PA/Zj594eKw3hQi4E8KLi
I+jW3i94NhhIvHyyzNvkAUtTLAuYVgGmYrezWnNemx8k2EuBw8z1h9NzD9p1nBIvyrKAb/eWMzUA
bUe2xGczKr7XPbcuujIytyR4dnYpMCDeBrtv/bDf5tf2qA0iyaqKA9W+i2045AzmoGGmyn9E1PdF
nrXzUusTy0u10S4zOBotg4/boxuAg07nj8FmUA7lPe9jLXozBID6Z1ezTAGO8Q7Oesw+bYG65Djw
r11YnClKyYG/e/tCDxtLWWZMzXgKoRRZSPgEjQe0z6MElxIPGXMGwkvgq10s94iXbeJjntUvdQEe
uo8i2V9y5zFU3rgVhghRcf+dht/qL99fOzFhpM3va4Pau1ZLqgh9PcGGKqIUZ0Y7eac1pRnchKC6
MCZ4GtDxwbgjllr+V+kqnYp1xWqfo2kwZpETMJ7DAHyFg1zrePEWTRHvVg8tCGES6EQAU8nWZpvv
sup0gtORNiW4gsNXkebK699RQVddVRQIT52/1yt90G0zDPXtW8/uASDJKkknoW6X15E3TwypDl5L
hZnvwnmOSqfJOOk6QSsJEqKR+yB6+C8Iu7avvh+R/THOUV5jrRbyjey6MsCLjmwwQRP0gQZqIk50
L9lbpYaqqVqmKojEebTOaUllOc6CzZNIuJ5/8HEnSiIDllSQMh2sRyyBiAEKX2jkZPE8cdQ6tVHr
gjNZhXp4+QKlgYPj8JeF0qzzevzVISvhhRhdC3HIYtU8YzB8sOwgLaRPbTh84A51hTCD43UkYxAw
bnlEU5WHcY1nAR1htNc4QuP+cE9ybXlUj7M04ArLhJdfmutoPhdrj63txB84qZR/HLVsaAHdDTHK
caMlvVRWgOGjqozB5YIrTWMjP234L9C4Jfq6pEpYs4DlbQ/bSBu+OZ5Tu2wLCf1OIgoROo4kJV59
H6hDXWZrD9R6RI/TZuKSgBrvXeOo12GU7YDw9G2FjD/IpjnhjrKgM55M0ifyQwjnBNNAhx2WmErS
ugLDwXYI611oJoGHI/nmG3iUz2FZtb8K9syinQmdjYM7YLAH/86IW3+UWrKsRwYEvA03cVNGlhfV
nH3F2Sbip+fFzxsJDoIWQzkxRHefa4rZ5m4gT6Eqb6vHiz/XhulMb68J2Qv5dLOJqbexfvFC0+pE
9JjCrwsx+EUzTtxFwiDvY/s30XCs/uCyM7W08yTKUfupxaHINPAxGo1df5HKThe00XkcLAakT+8o
7rHpogxMPGvofhOGg3rABASFOO57GTt8ECapQHzuLqsZQSzMECkYD2gi3kOIIsqtc8VWX2OYeO65
T3V686L0Rw5pnb/rsBcCN3gx9unSGWGICEebnG7W+zzcQAeyUML9s229te1/P0Gei0lc6VOVnFyR
JfXQ6sNaiL/jpTjXt7IlBI8v7wyN15QixTLislSYIENxmAzSUjMaaYNzxtkiJgEzTHn//nHq3zOG
H3AImM0Pj+KPNTWjdI5Bn3LdTFRmLV53zYt98YqjtXCpDBhC5peqQ5d23u2fyQ8pC9x4poPjru67
iGn3ByMq5ryZQS3thPLm6Kt7pYD4luGF3cHhclWnUXWAFz/Py7FjgHDaGPyQ4lvCk4O3gdcJxLr9
6uE+27vzKuov1y++WlhUYpigvrM/5dyOaCKCJLLcZlx7QJsh9Pr4okVlCHAWZz7wyR+zmfC1WRmY
4HoASvSxwP8T1aBxkFJJFxg/AM8wmMUegKzrE6ktTiugUIOwB0bAF4JquhfJBLx3FHXSVrPKizxe
awrWUOWcBhJ3ySid9yfT6OW/6Fkpj38ZfHdQD4jyPvwHSVjIZ6c/YlbQu8liaEXU7xBgWnqXqfCU
JcatfKCsbBxgErIbi72cDWVdEaaoE42V4oyWmiyE7dmbwNJBWVKkiczIx6VCkYs5MtcVIW4/CmSn
h6tl76f+kVMjUl5q4zcRgSlOt75h1/khgwNEHvM1EqxGxVzuHDBuTlIUtHHOFnxGE3GO8rF9Mn+u
TU/vComYbn4rNBtQWSpBBkRorfiHtm4PU3ymD+poKmOVclK2mqBXMWRnp2fdbU+3rRGd8XgeziAZ
yHVzzRuec3jCoG0O94tFz3vBSkoLcpFTmlH7yA9Y5uuZMjVrwQSSFtlXmBfFuAIViyvammEZn6fT
5VQPBOH2n5ngYBH+l1UF2hwWy6kIRiBUMTskBMSjtx4xYvWOmXMaNy0pLQi9gRt3e847cTNENAfn
cvU5K5GFeXp4t5ykRb9mppYWUcRVoYgYDEl97DdHus1/hnMA6F/1GPBb2TQwDP2IJT1g3SUZDxcU
XrCiAGtiJYhR4inhMYXJLw14Bz5yiZ+DjzuPEV+cm1HiLN35B9Oi7og0huaTQVl6Bnp1pPVA3Smv
ZZpcoRBAPE0TYHpa9uxDND2E7igkAqUmVoVD/h/82tJwUu6MfSF79w8kEh1NfWJu1BhCW06YlSM6
Vh0HqVuuAHDF7hGfK+iSoK4WR+tXmokMo3bYG5LZ8aQSgpTxqNgdO21pqAcM0pyS+OwVHDzIc7oH
Jbd9OTQrrhaHuEWfYAt1ybeIK7CiOIHmVykn8IEi39ic+lsv8qFD2KAqGxc97AZIaMiMBfOYVh8/
Eo9cUip3Zc05KTJ1QjXNh1hDz5NIvPFaRDZEy94cHJ6r+wNPlw1uaBx0/AYuN/vsDQQf2Sq+o3Nw
dCJ7rt7GQhHV/2VJctR2Yqbr5p1KKPRULFLCbUthwrRWjdKSoPZuAZbzQTZr7yXReQAXAfG0kWd9
CTS/OiHAKExQGsMuYl045FoYUQtWVeP9LL86wKDmE22jz7jETduIY18dOykhI2KJYehblzz9qO7d
ZaYcyaISqlrQ7l6IE+EVEOBh5v9tFhvf43kZtE33q4pEf/7EgDxTI/q4hXaUnV6K6UHV4RlIwRf7
qw7Ps4Ntf92HzveEsYrJRjk2MYjErYN526ID3qXcKWgDxrzd+5kBKmMXlc9KllgqIb3AGUc67nbI
Lw8V8+PsCllhOjEGBXv9McunsZND6cKcDpAl0Vo1FjLf/INxfL6ad89wA8hwAkhWHX68rigxTV7h
OXldIh1zXmPFzhQbmTJt617q484IjJ026gk3k4Q/v4FO5zJz9Hqb0L796OGJ7OXBOWa5MPprg0Jc
GNZ5siWcphnyGFeU17E1Q1hyJbrQux7vKQcfydkj8knB9Uf7Y+BaWcHwLCifvGpGs2Lthneu3FyB
8JoIjEj92WIa1cQTfhg4ZtjFhDDJe2KEXSk5gRTbFwAzjbXwZ4FxMDMSw43WHJKIyFlbrv1had97
e3rVksCapIvwiAUnuE1qpKAFkh4ZyJMZ3ZutCV1zkwhDmI5PRQcS/j4yosT1gW22T6J3dUKyykpd
76zXvdoguSyOYrk/J8gBPT1PxAolBTBpP0pQn5mW0zxEi99TiLaPYpTiTFMULeQXLX50VLCqLaR3
RuGgOGKgDZ5RYVLC+7OsZ3P6QkWNLno3hTJ+VvQ5w3sD5WpU1jSghiVpZNr3R08AkMoTPmoImwx8
duecQDHizgfDm3fvXdhkLD66ldj0fLBX1Zq0ObP0OWDmv4HIkizimO1b2DZ+PLhMhPf1Ly2B1AHv
1x6+9Sz0F+oNIycBuWiV+xOWd9SxdRr1bNB/EZhOZQgki521DmOltpueTRv6QoaruWjr6IL3HZi0
VIKTdooJLFweiR3j2XeR6a4tPoZ3yhX38LN27A2OfPrFtZg1GHvyVcrl+84Hh0VAnVUUZ6rFTESt
N5t/ZBAQpdkIejnYEF7xosmT+xxuysnl/EebGZf3UJ+7MFHfvt8A1duA63AqdPw7iUGRkv+bkxIz
Zsst6OzEUNTdsM7nfP6izlcysUrDtod2MjNQR5CJMEU7eDtf49tE6KTyAr4x6zp5B7Nyy46n3gJO
esdNXTX4lwE745Jn23h9r0QlKPmez/Of+bPPrzp67hZMC7pkXquJBrE9mk5yzksL/QudDjpfTM4E
2lZmvvPfQeZ3nB4TiLniwkScxgahHVQ7C0ilOOpL0I8zX1uk0KbhOTQUoLy5Zs8upUjbVQTJYVYS
Os5vNdGuyr8WxNy8CIt3xVGI/LtHguQI5/7N7rqUZU1W+ZihXch+sG4AbB1kjMPewisnl+SD49Hl
sn0ApggaqM3vKJF+ugSQjdjT9lNEOiB5o8PypwE08QfkeEvmQ8Gjgi9/355tCMOGXfBqKibPS2KP
g3frFatHDABGcjpFVK0GDDjjPBPcjbxnB/QDfx0YxVloW2p+9LDfk2xhgqKvIkutnlbU0vVOBXg+
B0u5Bh1dqix6kLgf1n1YYWz78tikAxhdsR0jf+BEC3LwLy0CM+1Xv3Mn6+uX4zK6cDSQOwiDBM5E
DzxovPxDikSiPf3nqNCt1rswNLE2Zrjnq8RyDYCwObwuG1Y+5tLtELz48loX/wiF8V3E1hBWxf08
zH6323y76GUjfYP0J117JREu8cF2c9dNrk5rn3KJ6Ld6fNoqPeYWivvejqUZIjM/j+QFJbPFhOGh
iBgmgr2njBR+KZgC5Cdhgn3lQXjuqdyy4sJ03emwwirI9w27fg/fQdVxvPgzUaU9PcIDCcvOXNjs
nUMiG/BZu9AQnqm6YJpDeHyhaqweGDCKeOIIvuOmHu0G695c/8s7KncbG+3tanzAVMHzMZta36C3
WYaQDqMTJ9OnTN0j2xHugRthuVnVhFSm2NbGCD4FfG1gknTFUK1NeMUMN2zeEVdp4rURBUBW93xK
US3REBwNhPD1Og2U6x2YC3E46f4ai3uLrgDE5jv7tD8qr2bF76yhXoWoW7fumwouWQFZQmBfsK1s
MpHncF+/wq3NzNJ0Ef7ySfmCgZaSVS+UULF4bazOhGOGT6Lqyn7+sHTcoBmpjDDQ7Rvc20R8BKih
Qx2MWx79vG143cIA6LTE1p1M+VLlUX+wRUbsE6KAsqxB4tPldr8DW76e1q2+xANh03EDugUhCCkL
3Juq9Bvtq+n6HLRmeSzNRwbzcpdww17Ri2aTt1PmZZzVwc0+BjJZVNrJ8NUcPV16P3Wb4DEmZdyc
fZM2AQBIghdwDZ5frsRjnLv0xyFbS6aqOutyyoAuSCLpIpfvOznvYc3MvpvKjguYGtJDkj6Ya55U
+z43Iw4JSFauUgQExJF+70WBqNI8h+eHEC0Aiu3NYCUuJ1sHJeDOj4uVRBHTudNDjoL1TaSldvuJ
qf2OADKAgjH29mXb4DrIG/8ZNT9L2Ay8ZlPDwQNHWOWOmq7ELSi0VcE1b2c4FgpfuYXt+DSxKyzp
1gtwBah2MtjwZ0japH1ENYqL3yNO3H84Nmox3vVHU0kpEzdB7iTSHqiHpsBvQf568W2PLCEkms3r
mgL/u8cLRpKB2l2ZESwz94nOrOED+qe8dOFysoXjZT5DXPHci0aE7TqTA51gMIyF2QhKXxtKHbzC
6+jB7RjZMyfk4PS3Rw0VTyXpf2YbATTjhVaIP9r9qRPLgKauCrwfrEShH8tf+VGpeyJsLxxyELKZ
smArg4uj9RG0J3QTUYG15P/C2bQYOYR2bE99Ve9qo0n/upL3ehWQ+oeRlcIRVAUvlD6FsiBG25lU
QdinovOEcmhy7QlgtGS9TctcBm4OYCMydPzIo2VJSQFHlIum491z0Kbsj+I5MV7/vhCaJ+dvUlHk
Xu/ak77LzWyexjjTqbdGZ4S6OLQ7YGj0u/G3z06jK/WbRfzx8YMSNy7U/8l9D02xmqka+T4X+EAV
nYd8U4+eGm0Uc20FObI7QQmGqnW2MUuUDI0/lzkeBWmkpsuK9Wk6UsXB2VGsf5UKoNFPxspIHCx4
FmhSg7VrDSIR4eE1qDFSuVKPykhjZDjsCbhzn9GRCv0Th0oi/wakhk/AQrWV10o3jGdJ3IldzNKc
eQh7WyOOrEzWqyDM2ku9eDPwAd+xj6dKOoCtmxSOsbQWro5zTnfBPPjDWTxwHFdNzRL1Qki/GfBy
X3A3r9EXRxEcvOgJjsqQS01IIDke+wkkJeZsIQ6y6Jsrt7XjleUknHER/3riFbDCt6Sf2adp/4+X
u1+llKAw2Ri06cxFnogS9F8Zf2jdoLr0KBtoo/+CC7sLjGf/+V4h5JtOUZDkhiuA1ihlnGPLO4IM
z0Q7LLNHcb7t9eqUxfR4+kh9W5PxU+U36ZEgqJIPsCrT9rQrR42tr/LIaQDgYsMmBmWVvCi7b9Hm
0etkwz6iFVJDTbi9950zeFGWtI1JbacDBDKi0K/zaQiCG9HkDvVrze8J2wR6uBxw4t2SvullD6PZ
lBrh9oHY5ed+BR+yE9kY9HnLYAtxveAsDuEOVY6B9WTJkGgBVGYLmYT/d5AQb5suwDpKUSSW/2Ly
BjZ/yHxl+cYvs1snoL1MGBPkEv8859xM/8/vKgJkSeKMJNWYADMUn5PGLhT4u7qEGnCzwjZmWcRW
RPFCh4FGdrEHSevaPNg+WG1Nw9S/2ubf4A9E6sDri+fWyjzuWGiM3u3MMb7pGn6m6BzjFBED3TD6
cFA8z3wRrXv8XAVgpAtbKuLDMaXfum2ZPXIqrUOqRFExCNDKOVPov4O0OGQgIupMH+VVIyZ6NymQ
VsXWN241gW/1AAaau1BE/OFB231yCnS60Uwa4BkY8cHzZV1TJZddpdBF6//+EB/7SLwN9lvbmh7O
H2htm7FmZndWwaFqgCVlUvVOCZ0vn8+uGBUGkhV4EoXZ+LdSS0avNx0nTiVx33zDgOXc6ayp6dR3
4nfdvUMyAm2wxYeESxBHqQne6il8BWu5pm49Tv5yb5ntlQsgKn2IbeXNj7zcMHG+PHhB81uD2W3C
vIAkkqkGKroJooiSX/W6toEy0OBFDESfFdsQYXWiNfKxBEFHm+U28rkcbMksSSS3I01bRNHo9nML
AGZcYFZfZc3P5eKqsULqUcv8nm2wnOSgG3Aa5wYuAYBFsS9UCnyZC7qyv9gzxYAyffgi3Boa30aJ
cwFbh0lK/MkBhka8D9U2o9Uky0+mc8jE8eeGPV40UJ/QeNLsrQaHd9FyJiQ5zafMufRq9Yprb87G
GfOfYAFh5BjLv4rAzviFRiSB79O89UTkZTk7w0qn419hco81JVhaLDgVVkmFD0lrJLb4KN7RInd/
WL+NqyNe/WzwWka02n4mxYAImd8ygScpnDeZLbXEOEfjuljC8SLWCHZJtXOOGDImXkSRdSU7b8yM
GYImsZCnG//73fYbp86sNyz/4es3BaBZmm2rdY6HfC2/kiHk58z4RNuNyQo3DssLf8eNZ8g9uLUG
YzvJr+nfV/5zygnMPGGwLEl93g9RSd82W0lo2KDSeitAH2EL9oGZlQcPQvVi+8UMI0Irr5pe1xOx
GG+KyePc1IN9107z2H1Lwf7vBRUspS/d0QB1pkAj340dCI/nJOwq5QibECiChp/QRw+D//6vDndM
LdwxVJf+ULu1WtJHbbHe/kBXZTcHQEmaKSyN22Mdi4uwFC4l5jlt2x/n0qQLoVzz5j66RhWUBYpA
H6zEx9uQig5lti6M4oy3uOBrR8nZ0G9ra4HcCZV+weMBALLEzMsg0s4QCVOfA9AGzE7Uv3rOeNIB
Mf6bkAkRFtJRsXK4SQgqKrLypcj08Hhku6hEwQsV/DxcEY4WLAFWy4Nuna65wctZsTSnvTpIXlIk
9AL7njHbYhnCpkOCiGTAW+S4s5dlxUSJwL+4ebs66KIP5LeLKUq4rHAtPmc8McaM0Ty+2A2dxZpm
GnGIEwgr5pL0K4l6A9livBFsIU65tGtB9VTWdkcJyU/Bx3Dbs9/Er7TLxPqiI/HSeaP5MAbZUxOq
ObO4y4V+5Tt/Q/e9XLfjAtPHFtajdvOwVD6KlqhQi/fROFX/hXpHN1m3N4ryFdAlbN8sxt+b+827
+wMjxylVXwC2ahjfWe8dJkLIT5zX7Kk/BjqWwk5UA81QbhU6e6Bvv9LAseLE8EBe+QTTxidKF7gd
PQVWJmgaW3lILLHqM9qQ+xSQWoOoMJ65U9bj7wz2PuWL5HX0BicAD0mEe29wmup9wzR//BusRZPO
6r7zjQ1gBFAacNTbzp7qyCB7DBRxIq1EN6hPBK6h6xdRaZWqikVPyARU3C0P7D/uCdBcHYAgEub8
2slnWCfU4Rw5jI0ZO2AXW9qDHBE9oAIhVlmRVTtypEba/FLDCqFexyT2Ov66JYKq/5uGxnBkqxDz
Qo53jIsxmlwcsi+sxPiazVtGVlIFzS/jQSQMBB8vQXr8D1Z8TjX7jvpM+uctlsjPAv8Ai6DUDNCH
c7RZfjQJpms1oi92v2gTOnWBaCaRfJ+orSGwqy+wIKx3sW2ij9AKpE0jIiGgpXPwV6COs04OrbnO
r914ApqGz9kicRPW1KJf39DGBbN+s20jrvMvbFhRNh1OhYroXSygHFAhWn+TX0PuTZU+5KQtSDuu
nKxrpNj8IRmYuimVMQkGorp/tb3dGwwMcWqpWj9b4B5aJE4aTwhOQe5uf/zvieoYfSD7X3RPXKaH
mPFJ5+sCT5IUcD45UWrR7y7G5RCxBPkko8jGWNtP02aRdxx1rdL9nGL6r29hIlZBD4OzRgSLpiEb
HKK7U70XhgxTpBEmZRCi3gfn5FQ7d3Hv3Il6GNV39wDTwkqlMSsC2QEuQ7RNx6G2Gma+OWB2JGjF
9w9oiTpSKmJ0SgbX24LMBQB3hqWI310SVUFslM4nh7+5HWG7CuU4BMiYU2AUHg/LX09+vi4yU461
q9rHanBzaPyVMhlG1BVWa6x4fQg8x7kbFSqjdDuTw91EnxB/Vtw00IpSmR3mEqfrjuZQf8vSO/1Z
vE2II3lupueSF+ZWkzKUBqLRla1G9bNq8Ht9kx6Q+G5IzuxBT8eU/itrZl9hSe/VEacHMPGIMpXi
S87XAsMuDWeTxqkGGva9Syxn9pwGChmXbhSrZPkOczcX9qFpq5csUbeuCYAr8JezK9g5ZEL1h9vJ
HCDdJd3yGcSN2LrXXt/WZBj9kE1uYfPHtOuTtyhM0+cSjjjKLWlwPL4Y0oniGbz5V8tsLSA8rn4L
umyq8HqD0vuTLsZ2ataX+oMO7IUNKrDbIguionsWw6ct3ingjqp5s1QYz9MqXfCRztzuhtSa1fhd
5par1zfdRH6h+s6JLmlyxgl1Ty90eZLSAPVNDD6Q9SBbyb4qMX3zI0rbCUUsHcU0bYKAi/sPSfpp
l0IYvX6ClxLd5R5Y9OrDdGVywRJsK3/eOksdinejK/JBv9BIOQaqziTlhc5h9BP6q2hLCocadwiR
NY7DPrpFFO6OHkwHzHgnriXZr49slp3kJiTu5DqQbBCy/gN5gVghBmJpavgKGZg065Xn2pG8HMzT
iQunIpT6ITn7iqOsQEVvAEsYzF9q8aQGeUXybggHdkhp1E0P2rBLxyDYweYzgmyHGM1ZYQxKjNH5
an48z5Lr8Fq9KNbFRUfIuyeuEqnP4STFvmpDtHort6J8Dy/mknwhB/NSNdystWTXJeQmogLy+4kF
Qe7m/mzc5OHlQKyK2EKOkLtkJawrw+zFXLl7igKpzIlYY+oYqiTrtnTxVj1HAdeuNs3Brz/NSJ2N
H/45KAg1P995U4aMPEnKrXjxrgOk8+HEnUXLUHhGZK3HEhe4BGrK3x2dfgYyojqimR5YWqvXOUbT
1rs/pm/bJIqHQsIjzehvFZR6mCjkQDUe9rx5FukWyBxaA6BnfllO/hWXyPxd50YL/q8AFw7x4d3W
y8sLTkfvk5eWjmeDebC9CUsQADRW3ijZJOytA6uSbcOZPSt012SX4sz2pNCdWg7khhTcvQPjb70e
0rPtO2ObI+XSjMQqE3VGVII8nKEC1NXgKQpws36vHIA09CoTe28ODOaGZ449C8krSpUq/0CW8UBz
EpJy5x69vz8tO4GOmHhnENedERp9iljyr2ZDUe27823/uJGXWFcUgDaWw2gb839/xfmZwIWaoOL4
4wSOFVmtM1gFfsSROGN2YFH0/KwM0Wd0WleEmDfz0nJvgolV3e0hb65bIVVr0PbemURyurHhYvOJ
LbFAY7STH1HMpFYjNIc5KV22fQGuU09n8pmu72NvR/GBG1TfaMkZkpaUt6TvlSRMypMx2dSCferK
Ho4aqTTUEgDUNf7pRowA8Ahvv7o9A+fzjdjC3iQ/oOeu0TJQ+JwqTs8TzsB9/er9153YsbPY8JXZ
yNcKAa61hQ3f54sExBtTwfonErUMuHfy2UZLUqwdPJjgcFqAkcV7Zd+sLOtuJSNa+UbiPRPS4/FC
pTxx/E8Gli3cmAvjIk9Ffmo+X7jUfV0ZzcbboTt9xeNOjkpf9gJf6yFFMiCAiHi4reiHoEVyavQO
shnxaSedSC8NZ/BiburyLrNL1nNKMQ9j0VYYtP1GZDdLnLyNVFbTtjeWgIyx6M0+nHy8WPvF456U
3E+dCAcBVQKtjsIJs9LrwwHFD/oz6lVw86wrTcqy8rLPjtpXMDhICOejJbmHzM/m90M1LsiAEW7E
ONBfjIa9C2641fjjgmG0gWwV1fRNVEMxPTmKKoV9P9SsQ3V2Y6h2jXXo08UzTRLePYvPRTDmtypH
SbfxNQAJkJYdOUxncuYS+qrkeNclYO2Iv+/IO7TVuO8GnwQKyl2hojlzbEvcTbuPN6DtHSYXD19g
Osp2xeXrbDVe9v2brPXPqQER2y5GhoxD2JohHsFGjzLWm4LR4jqKg3nv33Y9zWOXXJCd6UXpAyUw
G2E5w2oZPDD6RRArtXxkvTfpe1qUli3hzGXVUvDMFucM9utWLcHt/rUqzr4jzbfIYrhsvrNNikDy
I5pEAzHya8ju1htad7jBhzedd+pdFepgqUUX59Q0ejyzkhry4F6UQAIBZCOIOqIg0IF34QzxBJ4o
ST+aQQ5QEODBJoh+C4U2JHEnsxHzbJ17HGuIKGSEGjw8GOceQzedSJMQZxB5v8u5oeCgYVTqCR7e
49FHc0RZV5568+FGO4HBLzEGdrN+LwHmD3rsX5unMnw+md/G9dfMarCWCK3ZfbtX09LaA1lrLgUF
hp0C7MENEa0USUXgBp0AiZq2unv7wOG2/qItkEXXQ2+oOcNIy/oqGqWMhNJEhufxCzrJe7/+PM+o
prjYo1RDkMXfsvoybVlAUEEGKoOS7PxFlstwnPAlAcPaaEW73pzwUSG36OfXUINRC6E/6W/rWK/N
AYFRC5K/D3jRr1FfFKWTNAo+vvkKPjgTUtujOSEVwPSJ0FCuXMgPReVeCs6QcUvHM4odzbVAIgc9
EEsk9aYDdCsPBrmbRWEmKDrf2Yek8zoOn9bm3dJPFjAPpfgqOh9s3/k/ivJTePOWDfOzZm9p0f6w
RUVpzZAv6vMuEE9y0+mDNbS+00pJWTpVeLjzHz7sFNfmtQ4JQN363pLw8O/WaO4Gf9ZfRuElZgEv
PzGWFolZnkgNmlYhSCh+mzP7rHaxBh56T8uZGXw8EoVcRcGlsN8sBzWyl84meGwYg1UFWiUHBwZr
H7gXOuWG/cZ1e//jdMv2mPpXVSloAiX41O1bFSB4uhMkQ5m72na/Qi/AfuCZm6u4Q0dM5J7a8/tM
xnnoryL4LT5ziVgJ/Aa0JHqhw5o9BfHsHOapoh0Ft4mdvMmAWbGBeMKl7M75RWk594jnFYSMy3nJ
7v9pDCafWASLovhfuMYLpClCSBaA6En0ISNDW6QMISSezN7h/W7w7a8Ih0m9P7ytPhn1ZCzEEQqH
bOjPWdy5wdOek2NluKbC0BmHaJRAMbDGwovb7gOqEi2WcT018OUQN5A+kn9e8eMlmfrQb69pLcDx
horBsyvlgSC1Waz1r3tvfdtfAaVOGAu8qQx3CoxUZlC55o5Zx471SKFdXnovHT8YgyPZ1ZTNkXc4
qOWNgqXu3iOGxgAa1uLmlJ8036i3Qaje05PU2QJVjRu9WJxm31qV9LoNfM2dzSMK6pge1wfOMe4X
qFIQGX+19ExtfCbIdm2R4G/3LItdByFLesZx0SRPluqllKo3t7aGk9GkaHQoN/2R0q9DYzXUrSox
gxzrCTOBmpOgdqhDbwwZILKAUU9nYu3WaIHn4FQKAX7HkId0nKuEMHZLqQP9jHszn9TDyGUwuvU6
9/o0jPwooRYh/X3esQUhK0It17lgUcgsIvTIEPfdrba5VKyCxxd1iOOFfkqjyzFqPARAFDNzVoJK
03qyFdNqOV3wzJ+8dsmc3FtViYC9X+lhB3/9P+Zp8/4oEBTk+9NRXHtot7F2dtNS3Qwa+e5tIAsl
8aMksOeyfSceuBT2oCnsz0lyFOsxgtcrBd9BmpXZLyxrTPaDCh1/VQv3oEo9Kirm9Jmf18SnHt9G
jS66CFXXahjWsVdvkZu36+YvoOnPngy7kuj0tDKvqNt8Hjpov35DQwnRuDsu2kLgwtwv4WjNCT93
+CnKsNxfN+wJ6nnoxXKVLtU+9ryDwlgORtsSSfQb4dD+24V/Tcy013CYGle1NubjHO8kqGo2qZ4B
dxYOZiFjjqBRoxLs6jAndD4QHnI8citmpT+nw0QCkX7XsoVgfhGzwFO4sUdcpW/qmQVEBlut5j/T
xpmn1GLiQgn6+mMNpGvWi3s+RN4IheyfwLt9FRf4P3Zv1S8tGRTUozsWeHrJbnk2XotIu72JoL2p
n83JrfkG9QVxFqtr/ZETge315ps/7tAioSXuN6ocfv48DqGR1YiPXdC3CkZOTazp0M+Ah83XLsju
6n3VVRq73wCaSbdG1ch/X7OvvakSHAjUxBZU3188VjVqLU48/e7AinjYswuQ3xnJUNUHtN2A4Itw
Llm81eUJLk1lSsdsvZJBwzkoT201Jeti4PhiB2AZfCJqhUIlOupi8lfGA2gRFODmvKOBfXhMUKpv
FJhMtM+6X4O3WxE74cV8IIDKr7lziFUtJvgI4RJvaYJYtT/O7C7i0gN74wOVH0HgbDEnKboq6kWo
PBSUtSetf+QKU5FWbbmDrFOcRFO14Tgt2/Y/P1O4GPPWroPuavEyqkDVKECXPJt84TxPTONsifJ9
UMAVm/PVRH5MzZZ8sqjmJUVayRQG18Dbx9Ys8iwx2ArP9ODQbsU/wVdiuuq0dBKM1jdAH7t22qRY
CtDkkO7h92hNps7skiDn9ZcuKwY297mN0hpacT0rNLpSRzDLjdU6D4uWGo9C+oFV3L1z73wWNSa/
vjSLDQeGcfBsfDcpH/lFBuQqi2uI8pEMlzLIuH0UR7lMlXGXDAWMaGAtwn6K4UZbsg3klaG43ynD
P/9AJP3f4i5UKRwh32HoCSw9Spb38gPPMuw0R5/WO34vblb2AVZ54MkQ0pkcGEIc2TL2Mn2QPI8q
KDXRMhJCoJ5+Bng9qcqoVm+mYkHQ5UZfJRobzvt9hbLiGt8gFKI0YbbUbK2vtW0I7jYNdN1y7ieZ
7ffsBTj2C8uI19Zkq4Rl6z39xpbtxfaCYeacZNez8ji16JnqditAv7iEwvUoVmLWmcbnN32uX+sE
25h+RDbc5lmyYX2waeNoVhDbmVuQg/60E+B29d6YFtEXUnrgzcGVlENdCsBqF1EuraiBX5Oe+2FL
lUcox5gm8rZ8KXsxSe6s146EKhTs5q/97zA0X9betCqYwUh98mVy8t7xZyX+ZMW1Q7slsAeqLM/S
uzDfXKZ4wyDsKoeK6PI/iaKhGcZ/9Y40wr6gtIdj7cS/+b3cb4E4uOJJzJTXo7zr1K0D8efZ4h46
sXWpdtBCxN5SobFjo7pg1j9iCvlRDrnJz0KRKn2yrqb6cv+iatAz7ef8IsB+yCmQ4ym1egie5EJq
5LOFVPEKXT3JxKweiHtiFj+NbxWD5iblZ0bqyLZSCgSoOEcDeXxHlYE7n/JJIFtL4X3V8bV2ivLD
GCYvqIwKkKb/+UkDssYQmtdQ4yoCnW6Qc1yoMpAAwig6quy7n51y7/SsaINUrY81RXIYHZvh1CvF
e96gk7l7M1tLrXulDVppXxmA0ZJ72tVd+oBCJdR/mflhHkjE6IgFectgxBC+jK/92WUh92Zhm4WR
zLDkYRZzstkp6KkcwzbvxRyIHjYNbdjubIijHevcVApcWCGyEfkNfdNThZ2bc/d3bkhg3c7cUaAs
ztA9FOqkqge/H7zGwJ3e9rEOM1jg8rn+b4Hadkf2uv6XkLnJTH5M8HGn/080KHyeZQLGwQUYVae9
bKdbSyU9cBKwvY/XrSgjclbMWlrBGnq06vF04yuS66xJdzZtwkB6HyB1OYYJblH49AGUM2ZlRPo8
WVThQKG6vq9OJVPaRA5GX58qNsryRAcCLNCH7Sv/CB9/W9/Mgx5MdVnVt6vKxRRk20C9e/fxTWJp
IsnTHPcXA6Q1+Gt9Bfa8CPUgEide9BstrJ+ae/mRnmyvxHIbJ3zyjqDZBsR6jJmMVKWZcJfkKwnC
PasmOH8szv+eyb9GlpEL3HLLP1qI0PAXBMgB8kJJkjVcV52Sh3ffZ3+mptovWXZ8nVpTuaf7SYz8
nFpegpWR4TUerLJ9apzqw/HK14fV3tu1APqQo44kjDTXZjsptjThQxFKuy7hzkv8Ro0s8vYLDnmK
JYUgSmZ5DRCaHOOqdiFqLxIEipTsBT1aTalW0CjOp39FXc+lLqTtuE8UHECilyJzsAfDf1YMe1ZW
BI9urFYg2+bZXlS5tPslutHMWGuuh2xwucEGC7G0sBzk71OH1ihjr/dWnwx7Liqc+m9sHL3c/yne
qBuAyvcUqBhJ/GK3jn8JhuorOz2bM2xjJy/Fzby7XZJs0h8+xTn+NbVuBR9L5+0wASaEgQBp1C9m
knjJYu0pMaUtMnBqeRu/ReWWlxqTqV8dVClnV+YBYvYLsBR6awcO22eEhatgcO2KcZUZfwF3jqH3
Z4Hwv/l5HUsAOItWpnK1ptZi4O205E8+bGoRpODJ6siiRbrVIfJxafCk6M4k979kseC+y8uhXuWO
01QyBYJwef5aQO1GjdpaPsADqRDq9ockYzTLbEaF0TNQSLrdWl9t7dQVsMH3znVr6PXiHD4YFz+B
e/zIh4xCfo1b5720JU4D71aujrjvzZs9YWggcQvm/wo8ddO8sqGI+EkRIOMDMtO02P3qPZO/zJs5
5/8pdWfok8Bob6z/1aPkaOsEa+YJUZmXC10h1/HzQfGO0cpqCnoYvxen7cfxAom+XlsGqjzMHW4A
wgx03eCpaSF0LyEL56gFt06gP2FsRiztAihYsMszsOMjAVv/K0oeKpvW+iAxpczPg+rLi9jMolhM
vSQlVcmXYkUcIYY3Ss0AA1eKOfqS7gHfStTqbEtcqpwWgCzRnEE+tMF1ytJhK+fD7Cr/tU1591v6
GbhIQ/bC/W0+yplYl2QHvWsf+yjMn0loh2KVz9iA58GLIuVTcsMBrB4ioI2D7BuW7JTV7JN0WmkE
g4LrqLTUwlXqXI3Wm0bsMlLw/mw/of0y9xjAElEdUqU/1FpFfycam+0fhDc44xNRSAsS3PqZRgiQ
KGYdM4BWcqvfYiv+Ycgj1ORNHrZxrQt5S8FZiPqVhMo3IV5w9mwCbz8KT/N012NUkyoYLV3NfkoX
3Z3FjqrF0627lbzXkSnOV94+UqEVKpmWTTHOfNKi1bsIZOdyVXO4JIW0GqVwFdjdojtVXS2dgRjK
Q8qxYknNmNAresugPRMVo96kNKyULXQ9OIRwX06yf5lM8jZ/iCxKbK81j3msBLNi7lbY9NNdB7Eb
KjiQBKQNWxm/OgmWqPp9V5izanHvmOh8Zg8dz6aDX0grblpAWcU/ryJe0L85d6IFLuFla97QwtwT
u7xXhevEFQTdAZ/RP/XHRnT9+A2kwkw0V8QAUW7MiIuebOr6Ilmx2dFXP1ZXbbqzxzQK/PUzJ/qe
kF6AzN6fn1EBuHe0VtFHSotxju9HCM+pd3IFH2MYiQHslZL12bHIht7od8LwPcSusEUuq+IIRSIs
7ApaXusB0MfP6GpnQ4vKPfi45dhlW1Keq/wVg9tpm32Yyb9c/by9VXdpCkOOmErP21u3wm1gb/Ml
vGiFAltlGxz/pH0bsmQ6wwWHY2sPF3oq04Bm1J3W8Wea/01aEWW//LEG8TvOn9W95cvx+ye+JG2V
+JN4korrc0wexjVA7715MzqKwJx8AI9ZkN66LGhbmPogh7UECjDSIDlcm4qQBmVaecoE8+0g0w6K
n71pBQyJobmQ4ekWKjbv+T+p6FRG9uAveOPdsXEAS26vhTtbgg38ErsfSyTKKTmGGze+QUr/FKVc
qcUaxYelqm5JneHnOL02sqc2BUNJX5YUvQiVe1iaNgvVklFC3wb+jSptPBfv73pcww2lK7K5Iv2s
vLXOiFo0UjhtmMOdh44bJtlwcItcINa3qyhbSeznmF6dZNhUuOhmud0h1PnTO2iB3IgxIwwcGurE
5ZbkAzh1wX1nGVhoREshgpnHBCqXMuKFOBMwjKz3cmAA9WpxHQOuEgQOi6Xk42MN940UEtHnE//r
/168yvQ4UxkwFeioxX58qDDM3+nQjRA7Nns9bY1EyLXjdMJ4mCTG6VDx7+z+//lryKobzMy+SfwK
R116Nx8oDWVF/duGtUBsjENGPmjQflvZWKvzCo5leDmvU8CB7PjbA12HUEN3eVlEox3a8XjXu1HK
APrHYIHwTQUjOMrrTpxJRACRLKiZ0mETDVK7w88H29prvTwqyV+BBez0ILi1L2aWGxayTqDoGF06
7DUNz/muuwMxR/WO/jAKQH2bD57XCOK0uuPXcjc22Rl0c4kSQbtBKsBoKMsOM9pPHojzJ1mJGRhx
0finrs68dPWmB95E2CMvYWjxmIj2dHRUnLg1biv8Tkn649gGmvOVP3XjQ47LdWJQMSf2Ngspzx8Q
IZqO6W/+l5cOJ6QooDCo53nxANJdw6vWQLpnz8PIP6yc9ok/hJtuSXPnSDIZl6z4jOGaJJNnlSXk
t1WpXxbC4XNYOvobT7GOyy7740IbMa21+bw2dR/Zh2O3ZYb0C1HqmlRDmAb56XzUPbI3k+HCuRio
mwGk3Y/6oMy3gtqS2FgRGeBs2c87A4axAk+hhlVSOiD/DqzkTxrDJOmDmhAhQiLHbp0bnLmhiOj9
IzL3hloxbglalampA+fJfZ+12Hh4VVaoqJQ3cZEAzYjZGHUsDLN1SPZGGSfetliG98qsntbg4ROa
NjOY2kQFYJOvdSSycjN5MtQOFlVlin0EfwaUNPEdCyr3XgnAfCyQu6QnMSCxoc4selpdGHTwTyoG
4GWS2YCVrYJDUiMrGRt4H9EQn7egG8ErhLm+eSSlwdeg61c3THe7II8Q0Ccerzi0RJFhINldtkD4
NG166xsuF0kb3Ysfg2avrUg2hyqoeO2kiizpWzCg7xXqaHWCm70v2ylDYrZfHieeQ0Xus/YqiBc6
h7Ab0QuQCL+8mpDCRObl6jrTfDUligtg3B9okfVlDN7QBuq4L4SXIy52ShztdTgeQVDKgZLWSQmw
6nzXbTaLpWxfS+L8fLrdZGmksT7mLjsWhhGEZnF/cx3fpr1i8RhJ+fM5b0D5Zj235DAT8FW15QNh
kEWAhfrWtrzjxCb1kuY1XztMnDwWuUPQxcT/Zl5v2TZsaN0yvfzTDKAWKN6/lOyfR/7G9YBKdVhL
ATQdU49BXCPxRebok7LbO4DK5fmoA86wXWPZnpAQM14jVCQBzDWuEta48iNQKYQ9hMvVvkizDkkh
nAoZ2662eKM2lJom8H1xu8LH3Dk2k8oYN2rb1/DePdXxNFrfs4Q2EvsfnQHXBygmVG46EQbdxLey
eb97h/7z3dJm0QWlfqKfpqG1Hpi0Ov+VNIrWgRYAPLL09mz/+aLSysqsZ4o+ufK/uU2sCxR1yqCs
NxA0bo6ONo8Ec/5Q8C+33oVL7x+t3gZ2zmsW1jMmgELy/O3cGrnFgMFumRdxmSsQPHz+yNE4x/co
s/jXl+A6LP2Wt/ydVB83/Ja2KE5ZNRz4qCj4kf5QGEUQj5jhxYvNBArkgT0roU+fAYzXhzasysFa
zjWu2IhVoCpU5WVkiQZrg0fr2fXQil0+VFnHy6uecBps9OtTEwDrEMCtEAwfVZcPSFrT+ysYlj+u
3IQaalPNugBjcVRYqiTbNBR0ZfeMfsVfLkMIhfrTglxv5wgqZr9J9jCTJAo6S3NUJph+GE5DS9s4
c33vOa4X5U/FBCCLkzTrLmRTynBzYLdUk5/iNlReZJoYvWIP4CV61SVgy1sPtV9VZ0wbPex1wW7i
1hEsjAp2jHJCZQgF8D3enqHQ7K4nEojJeNT1ZIOZJL2CPpqYGQSchhGs5jMcLEyNoClFVvf57oca
fRcf9MpIerB2CPHfIaoLXMVkFZFWHNh4wdSpX+TnGcIIbiKNbzslm6fdMwk/ZoAZfndTHJJxCUiG
PYDxNByockLsIbrCqPGBiYbe8XM3HqHNJ95U5Q47LsAQFDKOxy//1KmXoS3+PmjDIzQ6IsA6jCfK
He4DHeXufy+XYu4YSQ4JZ7Xflwf0rse5D6kN2BC8UONonh6DEjzS6SNXUfGbaG9cT/GLLhg4ujR8
mY4ddxEfRuUNpmi1bgPf0lmYA6ctuQ/UZ5LVTEE4+rXUNZx2pM+izGAigWwxhPA+fJYHHr8E4m8G
CKn4KvJ0IpMd/EchRtV5rBYTzUessn4n0ROVpZERmVjA8vi79NI86KfuPKdccgfF7pbwsWAlEIOW
NU9imT4FW37xZVrtPfrRWKFNSU9O3YMoB+UQJGiYa+GvQ5G1ZD7P94tOMapKJN3OrD55VgZP2/dm
Ujz3tnWDnNc8A/zNwasN/0bYxAq8Hu/irxNvwBiV6GEhmeXBk49Yp7RVXoPpWmacTgkccBTa8Luy
5gDNlFmliS915RmU3cQMXUZxIVlX0snOn/I9pgPx0Y8TEUJviU43RY9jx7dt5BsnP/D2zpQyQyvN
PE8YPnSpp0pB00eaAk5kBjbUksL97dJjrf8fkLvf2w70D/0L2IL61L7z8mDzo2aO4m7p7akXxcYV
M0+vZwvBTFlSpC3vtbxMb1NClyvpfdPS287AxXbhxuSBOIHJhTILb0qAjIKEMSbv1h3i7c0h/s4N
NdJXyInSaYX5Bfx70xjTzLcoAxgzAoqmA6zvB4am/Ey5wbrEuWGj+ntOH1XswTPxmaFsvwAS9jNl
ELnDD5CXHx1aKrm5NGoS8+WeUA6azovUbEPDPyRfoNyvX09jlO/GDi9QsNA78qNui/V8/ye9XP3K
Dbd8qKSs4eCca0FMGSjhFxzIZ95f8LDjS339D+UaRPUtFg3LgknoWGnGz9ggQd8JH1nIiK0r4nZZ
7S+aUONXxvKmcz7v/uLhU1pYbBfPM3RFef9jHSGiyHJI6ax2VRXDQUENSnVqpuiDPZJfE5C0gSgV
jxpQqjpXln89xfx1HtyRgNCyvWpABByEV3p/SiGJGwvcoIFlBhVFGUTiFxE3OhFh8G8ZMzaQQzc9
qzJ5kKzUcWqFNGgiAdREgOhw2jR1p7ULEtYsB/TzgqmKI/YheNB3j0lfFlk0V4zYPb2CvYSPkr4c
n0/hyFNHtXo2GfXUOKvCg5TO3GzitTtRqDf/QFYekXYg3LFOee0YANWe/59ihYqhwAovr10BMze2
JdAORIIrrdTnf90gnMjiZtoOHrXPXZ2vkJruQ5RX3Gc8FCHTDK5FUb+UDF1cVA66gkPAmXlLTf8F
irazspNLFXwOw+38aliIvjfEk1aJYyCk5d+U7ESR8ltdg50d/HddmZLlXIRDvHFNwtIa+Tg92ZTd
52jx1ZWZfdpdGFYUsOQR1CzHvlSXb0fYvkMO71X1zU6rIAsf4tyCbXvK1j3N2+iOqO+ITXM/tRzB
p8UBlWvza3qCQghj7u4UaELuwpVVQSq/GgY31uhdV0S3T5cpZWklxQWEtWFXOuXiVsvqJaTtVYsu
rU0YuvnxaMgcJKiTVQkXXzPsdZI3wQ2h/Zfkx4XzerPIqid4hpDrQoxAGYnR4hhzO1Hhg5agO8VS
Sn3QhwZ6CgsUifIYenKdqXq89hvBq4pOrZr8OGyVQHSI06W0pYMAoCO/2YJ2ucZrv4qnJylt6lV6
9o096w2+U0QCrUDbu5qsGIH1qVSzp6x4413VzsMGEggVSEvoaeZTqJiH8Zz6trWmGB2q7i2iaYJt
uLr5hiQtDbns08oSl+/mprxb3dj0IZOx8YVyI0YsUz40eJF7WuHSAwSolGbXtBGfDTFcDDEg2LT4
eUOVb+cxj1NuPDCsTRahJjSuU1/zOx6niSZQSk7lPQwRReiJS7hw0tSfq2Pu5WHa31XSuAdmUo/j
Pzwve6MuxVeR60tOrRyiMSqm4V4vBXSUKAqYrE6uFo3D3xV2W3ThJD1iqW8ndxfOkQXhJR/8kWO/
8NL9qRrUW4NHJ1rMgnyGULzR4FZZp7u8CkUirLO5Qdl9yxRdkaJ9O5XYywDN4OrjNxNhaz9oucGh
1rrMyIUW4iPj+u5E/sfDm3lE/DYY/beds06D5jpYrJ96rL9VqccCuBF9JKdRuNhfFnPttvThhXlw
7wIsqGs45HSJ+rGohJnJySoZXU+danS0KKSeAlCB1PpUSB2ZnsgLgShYzc7xYzv9iowZNyL0hwGt
9YK8lmGwPZm5ryxp03/ZP1Dd8RBo9Iyy82K6bNwQYjXUyBDPn18p1ZBud4L1ZItcElnMoy/66VfD
lBYZd0quT+PxSareEZEVPgxYrFRb4XrJDYQEJgE+ss2BywT6irQobz3nuqUrUh1xC4SFhgEtZZxE
SqkTr3HS/9nsssHynem3F0XQQkYzt7OdGbhvSKTDvemGobx8i5RtT+IK0Iea63zsgZCdyzzB+g5Q
CCgKsGwvFrCiO5YaAgliprKJlpwg8EQAGBj6Cv9a8L3mkYBVcWjwFmrKMLdglMV2OFWDkP9flLWC
uMXwlDs0LJNsteaBlAWMNDFPS2F1XPwOsVTfKAry6ZHHqm855NbcEcUIMi+P2qIoN4z2nbF+2Vlq
uTICwnAXw5Uky/bNHeYANLkKdM2HCOKuCUST6bbbnw5JCEWJtLfNlOoKGXFMNzREd6ebmp6NEsfR
N1lMzlfTVder6XwSUYHn5u6zOECmPKb179uT5Trwr90NkESkrWopGXEw/lTJVNDxey0TaF+RyuCw
dYOiNshuhwW0vwcXWY2N1LoOVaBk6jy3x93+fNuB7abxgHzjoXR2ZF8S9hbXpURRrRa24jMMnIIc
YYL//HhHXzaN4Uky8Yohml+LlhX8BbWMIQYOMjAXUqsZNFNGpXqa6Sbe/Qsb4WFCcrbcsn7MSh69
TzYjFHGsE7vsBScwg5DDUYlk92viNNcvYTd4ynDeGSl3aY8ZADLyd0o59/S3xt2weFZFeLpUfo/E
90GKWFajAItxGx3GcCKKniDrB7RLLgHO7RUcg3rP8rqXYj/d7TbDijSGgRTGyT9ZVTXDrFZ22QFc
c4bnLGGEIBAqhQqhw/yQimYlHpOzIa9jiLog8ZzuCFQgmChkeyp3Vh9oa3NVwYppJjVyZUKPR0TA
KU/Z+dCmMUom+mhYTKcvZ+eaJdVIj1m5eQhJ16L80EUM5nF9bChhFrzrkN63OYpeK9DQ56OTjIYw
TqOA0RnZE2guE+oQi+97kGgtGBQwzNEoQcBWZ8WK1oajvvocsk4wdcNygl09SyZHeJpGqjSrIo25
aoq30rH9ddkHdqAUqLo26vqjW6FjgNmqbQgwdmqnbmCY57F2/8QryqI6Hh06WQCChq6VXDRWUjVq
aeSf9SPo3IVypMSyvVg50+wvXO5l3JVhmfqbG6X5q5O/UiFhM8dRQNH+wfazK0cB2j02mRzB2fRS
ah13CO4mBIP+yb8BlyFs6c93hDxMxD7Bm8dM4f+DMY7IM2GhrJsfX9fLWpD4L8upgH6NfMYFPZ9g
tpuE9YusDWQmNtVNoIyeO3+4D8xMfGgFCQA3yZ4D1TOqmyht5/R3MphsC7CFqEkIh9uzZa4AigPY
mza9t/ZqnYZHLvlL/IhFcr7W3qOi2gSbD0rk3GF1iWHLh3qLBADbyAWRp0eFhhlT4vDeW8Zsd/Pv
E4gJO60TPzdfA0NJZnLTCJHDUDHlxS2HawKL0q7Ieqbj+NRtr7WRRV4dG/p30MLHczaVLHJNOKGq
Mqy/opS4wUqUkzbRSMfKSoM1n5whXiEGRV5s3M1WhYVQBHtkVUGmWjBrQM48/288W0zPAufaIx78
MRzKYGIOr9d67ictvlzx432CDoSphc5eqtHhkUYer1eLhirLZcR2d0ccyMGGysftZRVuNe6mg8Ep
hel6IBUBh4ivz3BSdzFeHpnuCgdY7Pp0vqoV/ZoJm/RLHZ9wr+cxBPuHzPX7KJICga5RHZrWswsh
1OthGSktHt7CWzxsfgyye463cK5PK2CDYk4054xS1qgxN1iDw//6A0KK4J9876hdQZjfwlRBt4/y
O6132TAH86jS780SV2e2jQmCBhSNFhBLm0obVfESFsYQQkOGUSa3GFqkBr/+/nrkMXvF5XGq6ERp
OXYUJyLnLknoek/MM3w0yw5DpgdK4fhOdxb5Kb38589R402/YsFJ92Uo0QbMReGQyKmV7aiNZ1e/
FOgU8T9zKbAAn075lVXq4V1bNzxIUwn73YQ53MK0ZCTg9IRMufT3NTKxMGFz6RtSUlzy9acOFneL
KipuPLwqURCYOOuvAWnETaMqElPbN233OXOTBurXFdXUuS6RakOvnRCPodMezL6ecUHINm4MitI8
jDNUX4xjQQYwVi0YI3PeijwIaaKNOb1vlvyZMZ+GIWZ0UY8O092KXDiTBKpzEo7Tm9acjLCs6K1l
LqB4dIdRPFcrlTVsV1oNEqABU7cNVnMVDXqzPF5oExEHqvTs7cjTrZNONLNWVymjR6JhGr0dt3oX
K1trS6rn6TzzivNht8w8xnNCDjsP0KaeXKBvZB+oJlYurs7zcEOyRO3rgm3WwE3Kfin94Y7nYIFX
q4hO0JFWTo9/AI9qIBQGLUaGezO65IRMD563y4Kj5dZN761hB6oNBA7XyXB7JhHdY4e2SAnfk04y
bk1QUWsi1eXYXIughMpwS4Faln3Fq34k37hJTF9Sn4JU4ntdDqWKONe1G52n+iwQQHbspBseoXjx
MiJALvuXhNNdW7JChba/QwTfYSmmA3rlt+4i70mx5hAEI+NjImcdZ799KVuK9z97EEMIFf5PpTvt
cvcwUz9a9TvdPCtBqEAJHlHBgf099VN2EsKJu2HjUzR5LfcwJku4jU13GUQlmh0OeWhoOBUCJ1mE
O++i9qQL8qYW01BolMqde2oUJwIkSWEZugvqcq8e35MYLkYMBAHLynDehxLV+Y6KF9fdNPVg3llx
Dyfo6urvtJhOebvBR03ugyZEjfeK+Hch1vb+/SMndSUBylsr4rHH0DOPyAn5AhOBjgLQT0qcmvae
4R0VfQ0zRu6X2w2Dp9B1AVdsoP++SG8etRSqoAGgSCN1GUrl6of42GFgDUc8DhT6cI7X43qAuomj
XPYuO8CPf6uwgXCf6773fYCkNMUmiwWqScHu8LawVKmogzQ8p540SDsjIp/jWud51d33B1CwGlAB
AUlDYb6R/liuv9nsKd2Eeek8QLoTq9hlLPcdA+Giowbzc2v9TbzAm5VBKI+0oMfXIzQTfgRV5nwq
pjOMxVWRM2EhaMqBs7tWhpsoUKU1tfBl+DoIIcOQPSVHReUxm3vzQBuQcY+ljVaoK2nhUAsw5aZ8
FfSRDD9uy1m85bxtTPy690NamrK6i0j2E7rQdSanNdE4643OhRH9kowhgGC4o0jWxeVsQ0T1Fv4P
JLWgVDVOIqWe9Ujn/off5ZWUOUfONBtdoaE7rxjLtG4yiJ4xozLaMZGksyLjkLkJpzHRVDGfBtdC
SywhGxUUJaYjr1c5G4dKpXbhCMPgfu3C/DHgG86ypwI3uTZkrO0ZPH6c4E+q7lWZR9TDBxFzmm2a
IWKo0jDp1zVZUskBm65L9PbtuQuUjkFJLCoWuJcM4w4ZkDR9f8Z9xPQZs8FClMRZVlGCkU5+D7xQ
MZ0KvHQhUK0A5zRSrVB/DYJOEdnxPEJu+DYz2Z02RX7QkfDlkHK7NWpN1jMjGgpU5swLv4jtbq93
b3qBSjPC3wbzILBlA2OiJ/CZI6WLJ8xFaG4YRXSt6M4yv2jeEPywMBlLanY3oqtBDZEVoFYjNOkZ
5M7+NOi1CDvM7XanOYXg0gGJsLNFMSKAUOzOeiWXhOANwIu7Mi+l7P3zfnmlIXeNmURRLqA12r37
Gz8IO5HC73HMhyr8vLVHPEeD4kQ1kh3bgmWqbTMOt26ovE5q0wLbEInJLW7SiLF1Yb1D98EGcgVM
SeFxX3VFcYEWuEl2GhQsSo+c+nR3SMb/m9/VUVBFf0XdHdsUJRcWDGg0txmuP0RTTUGsQIANNP1b
G/pbK0CTV+kV/0GoLDxdRFqhGkzWTiFlZ/2TXv/MobqdOlVWvViqhJW5wjZPV+fnfdTwnjYV4mPs
YSR/B1O3tBP1a0fF4b1nB4WjDE9rVuIK21qbJl05g6VBHVERn4bPy+qOD0fw25GsgFl7hMBLu7OT
bG38KoWw527SDaP7z9XAuU+SQQBI6F4etne1GL6llPZpKn9d08MpavbvB0QMhreLROlU2Qvw3JHm
L/DsWT1MARSPmXVUjaV6bEl/G+8OUH2fmvasTQOzzsd+6e3Tc4rOPX4jsilEXkDP5ep6w19qsJyM
0u/Zwah0PhW9tQMyIJByYN1dgg0yWpdqSP9EWpeIuoQlgtKbktLb2xLAC1g3dr0kfUiBbiOUnkex
ZpkI9d907HYV+HGhA+Sv3ecbY9Wcc9Wm8C6On5HzpSuATrd2AFYG9WGk+WWVeS3oCZ+2XXtsSHJp
k3kbOQQyrniBrV9LvQdqv8JuBW9DjByUfFBJwudAogZhRlTbReDkGVZxVWJawRsZ5F0JS4cyp0OI
78eiSTjIz3ZBe9LdO9alb6baKHpgt7tDP1hhjdSYtmflWhqzeiLGSc7vdXfzShOTJJRov/eyO0pN
G0U4WoLS6lznbt1+lx4xyDsegSWV/Gx2rI4f9DXZGP4pQYiAWui8/o7M2hmReSpCCvElafBTCYAJ
G+SXu21c02WGL3pKlxp+J8MNAv2dNNTPHea+rTKPEMtODnbUL6Cjl+hRi9nuIjkkg1GHoqa8DAEq
tYt6MfZxsNv1Qt96RA0rvigsjcEjstaWxuH8PkWIOZfHnvgWHlOed8E+r7LraagEpGdD5OAIKcfV
pk1bEK6/rgYHcBlfAqMs2Hoe8ImMiGwCcdH9oqGZJiabVb3bOqkSGZZRPVYiNOzs5NRwnxLPVogF
IpM9VrlrtXKLCWbI8ODuEzkcHV8eMBMXcwzPGDo36gxcd5Xusgk8mCJuKGJ33AVDzfoFJF4QZpF8
p/wtFw9a9xqD9tJNCeSvsdE3lO6nva8S0E/JnGlm//BDadT/zLig+ZKpdK/05CDPS22hlaOw4x1t
z8gSJZxcNc/YZsGj8OuRkqFyAkcTe63PI6N3UJay6xCA4Gq/TfXjGoN1LTdu0GVEY3eq6FkBFb0n
MBWyot3ZUuzDLAm6aTawccxWutTmhCrbEEOnOLZsOCkJi4NMyePuf+JIopwNwXdInNqiLiaPD93T
ofE9cCHeiMmnMbV92wngnv90fNWxwKbI9GKhm2rD73ERShSaPOqLOfs9SBSExlHQJA149EgUv2Nb
6JVhjUqDA34GcRLVDZC18nUFiB8vfcat6fokQpJEV7f28vsQgTsiosXOt6o4NfazRDFiPd/n5VnG
F+BmhVcRwYbIAj1SdVaALAan30inG4XUoenS0Eu0i/6B5zltyb44PfzK0sAhEMZHfN0fV4/Yb466
RvCV1DgyJ1AIKQWmm9X8XOTEXpagAsy6exw5YL0ZYD0TUUDEPC6ti3cgvaiz/WTkUFAJQUn0TFQn
RwfUJBCJtlZ4Yk5hb4O0jodNZb/8VcNCXOGxl7Ir4oHumSAXo+cyWpNUU5tokvJEDJBk5fj6Isqf
0pbfAN/DJVtRYpizH9WzlRAX04mB2ZLKhRLKgsjslOhLMgwLA8i4BvBrIvd2BPqe/IGKqPUk3GBq
qrriIvvwvelNKbIVBnq/qDMWj+AxFckPBQh4gWUvZf9Umb6dEjepaks/JTSzOC+fe0CTVxvNc8yA
GAUMsCQ4v8A3jufiDzPsS6BJT14kmEsAMxScS9GBtHOcyQjxu7ZcB3ACleUbtREJshXfz568c3dL
O8+FGRj+SR9/BHyhYyiSPaEsVComMrVNTI8hEE8Zy/62fYjdG0xsfpog2DGaYji4SMDSC+bE/xdN
q5aMuD7BXhfF3Cd0raSFC3bB1gMGr+vCaPHkNiONcQGzRA3jRDzypRNDhDo9eoftBH66bWcpNG1W
CtpHIVbQ3CCfkYS5nGqAFfj10qiBFnbZvh6jds+aLzqqWMSNsYbktHA5fFIP1qqR87Oo7bsTVS1k
0Y4B3xttOP+8jgHWID1tuQQx9Cn6J0dz0zPZWgsWLOiH2dSrhwb0MqEF380ZVZTQ3Y4ZLfNvUP6B
bqS7mwqlszwqvP9ltEJJ9u8UrYYmi7m89IMuceC2YXdyZrmY5IVWVKXxSHdTESvuu9zISWMm6Sqt
3KBD2ILk21LBbJBS4hQSWpxv+P7k28ygIZu7FQNgaYkN0txGQR9bqCMrJPFR1CUXt2aXYBfssfg/
5ax0rIGCfOY69xU/g7zK73A6zzPMmmQT+iLp+/l0TDAoW30sPiu8Yjn1W2Voe8sU8kUMYMcNA4Pc
J6oN746fKnUvZ6EHQvERzzXAdBYkB5cIjPTraEGH0qyLwsqmQMA+STeT1vmTGx7dBvsnm29B9Pw/
q2d8+Xj7fZgYWM1FUPFqUFLgeI7BtO9BUz9AYJKM4ldCDBm6vvsPPs4SKlsfeicxRGX+Rac7ADj8
gjticcT0KZO0FDccObnFAzegQpcN3fqtpnsz+BPAnDUwi2/Ts2pCvotwNpRjhZ2AiHDx2Mj2iUF5
08j2YZ37KVi0AvK+wsNNAmeX0y8zTXyuNxJsGyaiiD41xujXjVvvUvnRcUTi3pWnHkuHmwh21OZk
ceZ4TgUHfdBiUcQglOA+ypLDmXRjtP7RMzUgFOxr/rE4+iw1uLjzxz1q2Rk6ST3rfg04ThcvbLWm
iRR6FpVgT3CRT8QKvTD6OPH2K9fAht4D/OiZ/vUURuFMSOvzv6OGKaWchMHNCOLb3J4Z2Qsj6dku
jJCNUP0wsHtO9sDpHwoiBN+davRIAXXD+dQSjljp+mEbsxkePlV/WFt6kdcwN2O77cVPewQoGwfg
bWCsbmhmgz3KwEm+bRt1447Dv/+u6tiu/YGgLVk8tCdoPJpCRToVDFls1FfD+pv3UzBXE8htIgim
O5rzNBxUyffbsBGBnBcLzJhEr++3tAHx7/7kusADOZ4Qj5OH6zg+n+hEgMLVuJoQf7lLg+TErykP
TZnAVFvBlESfnGr+CEfzf4oKtksonyoiWDDTZjXRBaikX2XammTLGGEkGlO2shNvAAtPhmm+KJEs
tMIHYqqFA3fwX3Htz/t95ZKF1UuEQNxyeMIvXrT1S3gslM7c3WKtFA4+1nh7aMTEls+QBTld9cpz
ouGTExL0oeV9NHeTCUeftBJvggKqUdqdj67tmGiEG+PBghPB7jnJRhH7zhO+SCY2YjGOu8/uxIl9
gveRGjTErXI/rui6oMTP9MqOKRkQ3fybllLpT0RRp5MhafWRY+2y+JPFZvOBiEN4nWQR2mdde8RZ
6Gwq4l5F0eGPfsQhzLeWktMP6YD+vg+D9skX6Oh8lVJMOnlAqQhnyZyB3lfIFy5ppYskdS035Cxv
AdRmO135O1NecjuoTJMphfSTOJxT+N7egTT0pllpGgUmdDlM9s2LsuValbuzBCwhTy2acx8d7xNk
/QXPssHk057OCwlSLuHIDjxRxPIXVfd4BtBrggoX1q9Z4kA30fP8wsEbdghyZVp2RW7YPkBbsMge
4IWdPhlISgTNdnoDfZsonvqP4m1z+HLbrtg31pFrja5C6qsIrgwvtsoln4tBVFa9yumoVD5xwjOU
A9LdQAn5vOcA8P7B8sxmRjwC7FZNYloAmLj3i8D+H/kquNASk69D1kQaQVOgmrhEpBZgI+aVSSsN
AOYT0tW8lbvBdbaXBx6HaUL2Cs1HsdFUPFmSIyDLedDc46434J8Tr1lEkLEUbYzyKoLLu1eKlhx5
kzbANnqaGlJBO7pn5QCLuue2jUXTui4ek/8ochtJj1VRzaZfPqvINuJ3AHK/9udNfx1JDUTLH1U4
a53qCqrxVoOAeZeE6W1sd66sRWm/EQfAST/Aj9uO8FgR8tu/irJTGj+bm2FOLtGTp9WwDmKWRCYQ
suNhD6Ps3w3LC2tOIWWtpUgVPhkU229y3LbDhKAzODk6uJvMfj6QTdVLJeXPEc6qi06CadGR2n5F
iyZDe0XHrlZFgEAlEtpmb0TSvj5blXnLSkQrsqCVKgqhN2NoS0RRGwXI7nUamVHGfIlJhih9x2we
bm9cfcfnXYt3HpdaChn6byNPcqkdhhb5C8PGwnm7vMFZD2yq5jS/eUa4vMceYzXJOx2XgnJhb+Yp
QPuF1x/An0ZCALvvx/Thqj3Lf32NFa5VzlfiwysBXZMwx2jvTkk61WZLtlDwFLcawdUo6n8CR8Ut
iVJ4xCQDQqUbJcJ9VDR5nJsJTACCWhCYTXxhMvPs/IA/L02vMD4f+4pt0HcVEBueIbEZz04IfcPm
4f/YoB/5m54LeThG4XF732vjgrzwYPDKZeljCRmYY0ohi4SqBa8FHdaR5YG6DDx2eiLLMaUi4wno
bduujcucReZB2NKe73TrMLHvFV9xJkobPcn+CQCiY9FN6qERSgHyNjr9K9Zu1xuer5ZhhfFvnpZY
Nxibz0QWOySkqKmsQXKqJ/hf7oB4DWDcEyk4xr8B1tcgInpM4F7DbUrtAmrth6eejf2YRE18DpDn
/JZAdE48Q46nspwvmkPOad5Y2gCq8i3X+nelAkOnYZ7d1KnDoVNrf0zh9EQ/AH1biolF7SIkkypT
yCC0CC3P6qQNCT9+ohhhZCsp/g/b9a3ztVLx2qtco6XkAqPL8LpBwo+2TegiNTB1shHpcWWZUhr0
piz1yGO6kmvr6L5aKNDPNZs7I1zZ2+R/mogLdK3gc/joYq+l68FcrLsLL0bKiXSwooeSr1hg1xvF
pPE1lFRygJGsB1k4rptnjg2kHIy4lulsi+TQW14hSHKl4oNEmIkX7atHoyphwYomj0hAflPUKu4x
WIIZP8jzAJpxN8C1QMyGaKuKdXcREIBa/FGi7nWxqdOS2BTd+nltkGoTJwqSmdD6tyB69/2bFOHG
yZLtbuBeRNgSp3Rvk4/ohobpSnitErNVIb3sNisRfzh/i8qjkzwPe8nU8r0xtB0wJot0IaxlYiDL
1LkBw3eaNdNjk/Y4o2n4u/rjL1QTvIeuR5HoaSPq3/XY4a5QSAzvr3s+77vLqeYVzy8U0/IAhNlx
NiVAu7z5Nf/5vFqvbl3EqGsvzB8jIOmdics6RwWCF7mX6bZiySeD1daNkWE6AQKWNfnT+Wqca6n3
jTliz1hcy3xZcPzgEybJ2cK6qybO3D0CI83LjpyPSBh4sDiep0Q/XHbA3feFmc//vpMRhytmeEqD
vLw1wxM8/3ZyyG495VThE6jQQrxf6ICP8ww2bNxby8N3wqDLQkRyQkYGgkiAa7ImrprfJqArztk6
YVM1iSGK/HJCdwY+sKHq+N8+I04LANjJiwRdRLSOjca9vrBz2ni/4kcnDsAmw+4cZB05xWIpwMZ0
X1fmXDJw0KLCT7/FEybZ1UCpSZRKHxOtSc9Pum8ctw/EbZ7H2XbNqonvx2yDa5Fh9dzl7f1+dK0y
XgibEETYg3IZYpcfMzWfNLSgV2Xqipzgimjk7EBUCmU0uJC5RNf+U3EQS5HxImKWo9O2Fx6FI5zh
A/s1qhwMhNK4tSiT94NBbhVhXDAph5yJPgguwqxxE49f6+vU4ZUFyZ8oQBGGXHZUG8isGTJ6JF0O
qAeLkhFgzgK4eYG9uVF8v5+o3FGxZYDV6RQ/pd2GVrNLOlOPcyKhD2ZtpohvKvGPlB91t3Mc75h4
JfC7PznyAdnF7+f0SmEbIBArz3FLCwvo4pBnJ9PropFf4Mgk6/6bLfXkNybiXCY9qa8gyKuHf5Os
pK66tw4c3myc4BgB7GQQoFdafMAt+aLQduFl/wVmqCmY7DZadvYelLUshvAUukmCB+6MFHk+aMgq
wd/RSNntc2cP3VBCUu14G/vu58svsQZB//40Nq6yAS48Afkd+kIWVyDFKbFJmVr7Gxqy9ygueP/C
o0FyhxiP3iAQH7tGif4aPZH7xGlBlq13UVkSoXCM8rZEX12SmocL35F9Ycg9GEujCKZD+QMJew6q
z6nQCKbu7Ma37o+ezlnDKryzEQUsJl84pBDPnNz4Z4ivfJDBVCwi173QuQvl+o95rDuuKNz5zx09
YNqZj3hbAuRMhk5WmHqvTm7+e36JtK83MMmU61DNHMmFlSvgP1mhL4at4ZaNXNBJyxqE+zjzJxAR
zBNjLDAim3v4jcQXTr0uc2uiWCaMRmtkn0X6221Va3RPFd1hQwjyyJshnVBd+1nJDbC0PnvlagiX
yIJPGZnoOOOQSobs8iXXnkr4p1CnzXPGtdFURKqGarg4u9DA2qJKCZFz/QqMNU/y1ZPPsvd60Hua
GILmsk6PTg1ZTqFqNb6Q6xPkZRlPIaPRpo5wf6OSaPQ9ukekeZdrtpgGyEqwlDBLNilC7O1scZav
t64+P42BxrFSiBu+v4ZWo0F4eE0xaXEF+6RiofZZzvL3wKPRPVp3rOIXUywYiTrLcBROrXzUokxI
FULKV0BRwcZZcw8R3ROycOx1ZpaanzIKmzDiKAz9GHulJpYEiT4op9FJFn88FOgvnO9YSg3jwioy
j5JxfnL/EJ+Lpr5npy9cEBdg2/BSfHOYXFldP2JICvEYZURUyRn/tz5K1wcCVgGeaxmPZ6XNxooL
uS+cPiqcJtmtm6Oi2BigSjKYMbE9bYUy61pVLvLHF3G9Xa+a6zSaFdzlvVtEqmqxCvsbE0A2PEcX
xoJpOAhOXwafoVnTU3uRV/zfi1TgDzXKDr9jv/8k3CCFxTXi4OeOjN4vwKLlRU8kdeqIravj7LVj
WUa50csZGfjwlrkD0M9Uj/0LNBwMIY3t0PVGgqpGwSRn1+5/L0gNSE7hylmiXcUwZkgLJH8c8fa1
wdJWZ/RhLGCeIsK3SRmEef4mMQXFnZ5b+vlGSOvV8bLVL2Fze2MxL0pcBncSKhpYkV5NosTa0i2Z
lCM0wvgxuaa6wNZdqpD7tBkU5ggqDToh64sie3abQpD/HUWVPdHGL7Ny873HxUmZJbm3xBc1HBAS
eGy3zkK3cpv0FCQtetv7SLbsc0BgcSRCXVPCama6wYiPT8ccfVyiXZZ7MCcWh0J3JA6MIng0N2/H
DvmCAS3LjmNksgafIYvlIipI33eP5ea/M1N7ZL9FdDkNo28PCQ3hO0hJBh9pn4G4xzorpnBYAExc
IO4uCtzwVsP6wEaPXG11iB9Xr68LqU5yAVEvVzhyN+13058vX0BTuxUpmJzSd4530DUU5qDJMtTM
UHyRnZ+3My5rGz+aaV8HiriuDMtc0r34bWuumJGrqeAgkMa/4BkqqlH8/tEDvG6KlnMwM5KoMWiN
pjj5ZSR4j2IybNlqTAXuKaRqpyo8em79nPkTw5du2VQVfv0vi+NgkoR8+xOQDrodY314V0JcLiK6
KR2f8Vdi2xfInW+F+D5AKuHY4au8coF5Z1WWDmSrT/PoT5gA6Muhq2f3zD62yEWMEax1ZZSbIuVM
CjCfNz1N5j1Lkau4ewwoY2KUh97hBMkXPIPfcRJaJbqB2gdHul5nt2P8kJiwW9fglaULDGagAjAU
RTM3kOfSW57LDTfSXjdJ2wFEvrvi/aAt3K0SSd96yal6Y3IJQPs59bjjY7P0g/E1EjtRUiGj8Pye
0u6yqwselq6S6p3pLS63UvgDJOHwoMNryzAGndPuBhUhn65zx5wO3HdawAujlrt9/2Ro98eNteeB
zT0+z7VPbyWZjCrGIzg9GNx9/VFG5FS6ITwJjXtgKhLNpzF/iUIjEQlKb/UcE3Zd00jq6VexaLYp
FVB/ZQBdWGHldB1aK70fOVBVa2hfsXsisrFrWaMUwGsO6nvf58ryoCxrindNmUfFY6vmLXZunS4M
7tlyq1YTRWaczEmhw3Gvrb7Atw/OEL6auKhDHFzNiPZ4cLau98jxoGVIh7r/X9czuqx9cCSrLfqu
awLGzmbJZv6zaOtLMU7ntrVEv5gI3svIB409khwXj9y5jwjDA1XINMeEkYFGbonKiQZoo1QbSIg8
N8djqerUy7oE2h1gvNdN2HGp62zs/tr8pOT+oumI1F0a5jHlEC7vaL9slkeWxZCnbZ3w+qfqc8cT
zHCJz1vawKXsPZVHXxw9VRls0QgsDf8JE6gdUsSXL0o68bcoCJKyxShjMoLbklmLUz7S3BKfIdii
NhSQDBG+d3oaTGv5zlcUYHueutdxiJWRnigYfLl8mWKjDaHU4ijLoc4viS9qUr0/+8bKSLYzQIWI
mTSM8RAu38HPHCPD/c4hku/ydnX2fvuUWw2F85lN045IEYe9dSthmuNLSyKawc0XvBVDcpWvN0lA
QzTdHO54GDoJqu80BmoK6esRbcbv85IKGUjUeMa9WvLThMIWaqKiglV+oXr6+tAQi9uFrHk/zFUr
zLPZL2t9nJ4z/dCNQIVfcHJmQGsOKvXVDZl/7SlHdSlSSDByYKJb3pNCRdHI8YDXN6ykF/CXlVSG
Ab05TmzcbtQ/d4LE2Z3bF/hqxcb5bLnVD+MtwLcFBqgYvweflSLTYvoBE/5+hgr02saqJ+ktFakg
LpVlsafPYeWcjzkL6854XXMVHwJw4/OFZtEoV7NC2Ji7+gq2pveHfCMzW4gsq7glv/mGgxKfIzcd
8eTqz3dZsnf64HF/wjujrqiEd7s5QD80ded9Lzt/Wr7b6zxgAcgDordW4oe9kJZVCndPPu5Vy2sR
BAzWswijfp0sRDjy2FrtxGgnApCF6zWei4BSA2QNuxRoabrULfhXIZQHmcL0rP+RMBGNwhugTyoL
fq7f2WVljrVNgUfbhVqj2fwDSAZ3ZBrI9VAPxCoStVD3dqhWmga0Vgb/cqE8/UhnOuKZpM/3IAnp
127OEoS/nXUYtJ7LYbmM/+uLTmFJZ8UltuIf5sd1kCEyZIxUHmMN0oOVIXgbMRDepetrfcj1fba0
WW+SgCB2V6/Sr6FZ6SVB8JrHx39Tnk5aHYP6XWndL75AMdHqnm6j0gBFtA1w/NyywT7d233ZX/g6
mDG2RdMSnrbDP5WtKi3jwDgB3sYL8eC5GIiqn0M6xELxKeDKucrEQZ/RIeR+gvO8qZR+fUxBJDeH
Zq2duBm5SYhe+3ToOM03KQfUO3m5cZblqnqRyRSkGrEvaMjddmZYFXS3vhhGvUKNvYg4vSSCJ3fM
RhAvlOZsO5xC3/cdHiP7f9ipPpeHZKpMpUhlTIYlsvrRQ/n4k6/XB0SBqBTNyVZEeaXqS1ig+94e
ZwWrKy9dUmMzPahssBK3P+qp78UcpOTUZCrpYMXSFg6OobIIA2XIj813R8Er97xwT819K8Ck6++q
U4usbS1KcR25ldZZE8wDPVvsac+pzLaKMZlhbMCNuwZjbn6y62x+TcOStkllEaQwNgmD+95AhZVi
DLrnZ/XDFVMgkYMYkFkbm2+NB4YX4ZSc2y8ND1/IpaRQdUFocwMRR4kia0brq/EIA5+zjIMBa0KZ
w39E6eVojVeVswOY4jDuimSRSsCXxFuIMatKVbbrKa084Vw7t6KwNuncOMzMyU77y2s3L4jmaSQ+
EdTiG5DImjFp9te41aoRGiuVUDwquZNIpC4+VL+6j1NM08tTCO8Zraeq3C4L+9QUgL6/HpB4c+KR
WjySQ09q64eHBXAgWi//LzjVCAcy/m1ihsMiAql9bSpdKEYpYV1iXmTiFdQtt6wFqzEqm/tOaLSy
0FEHQEOMO7eAjayZgQsmsScW9RPJPkfKIPyVUdg6LdyR5+XCo8W+D3uTKGYcDLPhfWXqapHER0Gy
Sf7+xLrAw7l/JPVbl6/gR6BeZwzSRidmVi4wy1TOnBsd+yo/Qm/+BqFLZf7rWBg+o+brsGDc6Gjm
eILE/RryevfBhOLjRlb3AJ8M9JoWvgOQMr8hO8Xmkvb7dzHdBxo+MTm9E3ud3Oxhd+e4hJIzwDYx
WITANx6twoVyFRYfH1PDim1uoZ9+2jGNmuLOXN260+iDUDJDawWaBpO+TFL1YpuOfr6bXP4z+2/A
98ksDHfoS73F8njq5o0gP9O0VvZAJZgyPED6L3l07+AZ/SPIQdg0oFH4m1WZhZYVzHVSAR/MSYZ9
c+dHKuJPXvqSlpZMpLB/MrIxNxg367bI3lc3B3b5sjroa4uGTogzvcW5S1TxTKduXvdw7z3Vb8/5
V6xXMqjTHi8YjwiClcXoxZvFzkLK+f2b266SnSKI+f8DOWV1SRspli2UDgGTOmOyUtG5gm68RZeG
XXPeysc44OF8G+cb08qtb+mNOnKhWCRtM0eVKr0VgZt/Tusy2iFASwazzEOGIHKbGAkkfVsIdXHC
xpjuPdgjD2+pbVo61mVOezLWBLvGtxSXbhtM5jklN+T2laEsJnbaUwJz/CRiCSkDHdiY8T4vhGcE
GSQE87EQBbLe0FmmS07OewS3o4klCis0YM4OVGekFBHYbk47uXHRM7dvMk1KpzG+eIBGbIMKOkkS
8XnBhGzLklm1Z6qvZ2Knh1hM66+rxzY22gJOx857MfObS4vw7VdTZXy0q/xnluLAlbZ6jJUngKu/
9ODFoUNpLSbrsAOVsOXfbHzNwlUGkfV6vLz7lTulaFX98pvdasLsDDZqbiKZHvkEVUfgEKdxpqlt
ZGOltMO4rL478MuApcl3Qq5IDWHHmalgf4IJnKE2ZABYlpQaUXSU67lGp6nsbZpSPuJt/18CNU4O
+9NB4dHHaJsEbPRwOeeJQXT+gLqi74bKA2Sv5FRUVBUx6gQzowFpQhudp16nftI+UTwP+uKRHuuq
c/v0e9n8w3sJ3dHlWkl8RuMjy9ifzVn+tpEClu/gbPSbW3vKwCd/rKYk+mbavKq6gSUOPmBzX1ov
PdicUmD69iNfUkHY8K2HyBIXSl19dag7SuitF55gY5bY1g0XzI6wV4Fc02n4Bcoz+1XN5dKn/Kth
HKuYaXWzFF5UEj1JZjvAVgkaak8NkbBP7tbwkTg6qvhgF5Rqm/upkqnkIIvsLS7afw1nvJCiM5Ve
oXTfMYQmg73YpC0kiWBBLFye0Mfm2WsoUgloBdSlsVRhdYukWuWRgyp7ylO3s5+avWgUiareYpPR
3c6MBrSgjXcOmYEiTJ13a7BCX1cT3LVzi+MF7IpDBdjW6GoizPD+2uoXHUNDJj/QT9fdzNkpTyZR
8J+H0ek0OimS9AIECCcyQ0Yq5QbjDyIlVdxpdMjKpVb2p8HIsduRq2BWtngNGTrw3bf8oiCB9Dlq
ISfXcgNm19Kt3K93fZApJ/6+BoNjqkcJA6/qLh4K6MYy0zGRmfsfcgkKihvuJAP2AUVEbAHoqlOB
dMrZVjsxEmnkHgHr6pj8RTEg5OM0AGT0IdhIdnULUtDdSnLvdc2/M/c0cmstbI0d9Wp3BAGS1Rww
bzhOGhlTHPiD435FgRkcsStN7z9xgLija9kwN64KToZ4sw8j2xj6oDii+CjQtVDCGnXxJZA61/iW
7zBlsUUuM5NWtxm5UHiEyc/nKK8PDSPOCATd79fBFV8nUxS+O3Pe1ZrhrgYLcwmQebjCDwKIwrl8
P29sfC9hfaSZJSDta/0l3k+vdztSmETs75i0bHEqLQu3g+tIusjAMRHthobF2Hyx3EEvlPEBAAGb
Y/tB7DiNDfguk7JClHfNbL4BZeyqZbWk02trNtemJ2PLKz8hxlxai0WLgAO/FVhNzVNOHO2uwnIb
iNKtDx95dENPR9UwzJuHGGSXYzvXIXqyuXSKjyHIJNbTjl+W6fd+rGmvHNMIoaC0IJUvPDZfThV+
o7ATo4qShhp/AQAflSdCq+92q3g8qz8JdI4zUU1sBrZjn5S/v/mPQJoQdnoiSs7amgztCslske40
HHW22Fl59k2By9qV6KA1+Mt/mUKPl9IgbpNF3qoUz3vNrB9OEaL2EhUMivSm7kcbcQAWqq7psFVs
rw2dY4ke9b173iTArHASrdvdwhZuhXCVEboO8OP6JA1+Pxq9jrlVgmIeeoikVemmqtxEglCzX2C/
F0q+eKuAl3PKmeopR0zA8Sy86JKdfKvkpw5ZWriSVNgGRa+6N8e7hZWVHo9Uvx6nJ+US5d4Q1iM2
T1ukH57VTNE1nBPg3ClyPNyDGGJlqjryTuGikQvI7M0Gt9/3SOXxE3IeZNsA6mDEkQIqEwQ+xe/y
kfS+dk6GppNljjpsV+RvdfDlLhEKd3ZOUMNG5tGbXlZGLzrJMsUw+7zu3Kf5zTVgf/ucGIyEiwmy
PUleZEYooBasfWJ8OC096QMMdqPG/moNCEABkuIrhxAzV49b+rPzvFOqiTFgEGccEvRhp/BlBSbg
cRjJg8f9JQpDwg5RZ30s2ycErDmuGy4HsdH+KlFjBAqSzRhV3h7aovCz8WqR5W1f1Y7vVhh0mXpr
LQ8L4Ss+zUevy037J3lmOeMH8FIc+LrNK/C4FiLa3lEM6ylXQYt9wwmXauZ1CLcHfvjJlckGUybb
yUjQ44LGhAE22Mlm7+AW5MznjFYs5DVmcMCLYsLVKyk0t6Gy9R57l/skWM1Llbjr0GsCMdUKEZy/
olwnRTOsmBLDPxny/FU76pDS3fTkErQdfsCju1GBzn9Ba/6DWKFgkHb519WN+61z0Q00DJbCsbnA
3TpPhFhP1sU/T8FCk4oikCl4Ut35AFkvEG0hdLsj2L5p0MUTzW6uifzbDw8QOHOuVAaT6s2AS3tB
pWu7MI7Jw8qKj4lHFa8nPgu6K8vsdLmi4uGuG7fIC4RDTWSnpRyMbWxm9a33DyUPDauWKKN78Bo0
dKLVNkDWqXfTxeKA41Y0rA68/o29rjzPF01lHj1eSKaE3HmPBDijJzubsHMrN4vQDHrQX6sKgJaE
PYL5ZvYWqhJLu2XCNzdR9IacTihGlGv1tvLSAzt92NOgqg5QdXudeM43DbtqigMVV44I1c09EBrB
sEtVyTMkSakcQljTw8iMoj/rYZFw/DnlaJ4Gp6fMaz6Mx4GMIm3piyJnoxu9u0+D1+I0b7rMfiZv
fOOzToC8eCrqEIWjD4JeHq9JHBpLh9hYR6aRc6CWUSCHkya7ZK0+XApQdl9sc8ZNAJt4bVQRGnx8
WXlrh43zAELj88pw8hJmyRoE3QLa93fdXfX2Trs903cAe7gOql48BktEzwsQgb14lsoMZL+vCU43
YHxwO/cYqd7Rkn8JeVEhg1Fpbl5oP/9Dpth965HEaa5Mg3L1jzsuxPJvCLmhpDMXTuwARgSiOFNR
NQlWG7Tur+AghUK9iqLNSxIgNZm6/i82/8IMT5AziT1FQK9RL4viE4tLn0X6bYU+vyZyQcdxk4+5
WFh243DZn3fl11MzEs46j1JOzV7l2pZqcz0H35hFHBgFHSlSnKrDH9mgEVhNxA7JuQXBrfz1yIk5
FzJXeVNX+NDRANqgrnw1CQ0o4EVgVF7YlMSSHBqIUqzlDVDCzDCsTSXQa0uwexhxLoCN/HvKl6eK
oXJ5JU9ubVCgmU3nCLs34wdJBLvqzAO47HPPXLJ6Dw/ldI1g9cMFf70fmBRPEsinrbB/3Ym/lx1b
kS1hepVTxA9CoK5UF+U6Ro0HwdQhpGu/f4ePpyQT2YElLknbjXRMYef+pqK1DGNgk3nnb9adji1D
egrX1TVQxZy59z0Tr3ikVDlrOLThA6dEwGRP7KB3BQ2jBS4W5uq7F4U7s2h+0n+UQ4102Qd8WSTx
x6s8pty7UY+9wynsdyew/fAV3oIGkU/vn+w/aOx4WRNSx8kFktDHv51pKSFh+q5HKNb2C2yFXJGg
6LDC44i0syyfzCl+92uOmI3K12BuASv5x4BRBNoA6IVEoOsr3wgsSLit45SBsyEj+Oous3pUMe6J
/FN+2JMPifZpNXqovBypws7gK1QrC+77iLnx2KZ2N/70sjI1tklUo3rYW9RwyV1UCE6F+HpG0Vg6
BkN8FZrbULWMldlWpgLcfPFKJ0TtlJ/BzE/11w0NHcSdlZgj1Gjxy9lnRXtK4V5O1DEkQQ+ttDZA
Ud1PrfoCpiY63XPFef61w8Zfh2bF8GJ9vAf3ExxWLKOlmLWckljSxI85Xyrbwg1HT4RU213R+ubC
+0B12FT+YeriUKErJk38Qxs/dovdnIFK++tvxjZ56s4NmRfVdJcGFO4PtTkyjRJaWg3TF0rnSSKD
PenG2dxqdUiv5FwVSInty3RhVKXBvrX0f/xwevHXQhx88VLckd5tTJZgC0GVx1XqINUD9WnwOvne
P9eVKf1FSz1PK28kxek6IjXHjPjCTAdgv1GPgaUVoJQ6n10FsPiBVHachRwxvDAfGH29KfQzlUKp
Ll3VrObj+33bjtGgaQElGidOyMZaxZQpNzjVa616tBjhQklixr1hYodetWIIHxU18uKIes/YH0Zc
42yYRQhCnbpJifZGurpoxERwxTywdvE0nAZvQxQSymu+YX6i8T1mGGB6CwyiVkB63YwcXfo+AqPE
QaWywXbLuwAxlV6w/D0woO9xzeaR8H2lIgpGccMYG/BF1joogGczrEByx5RQ8exUjLxTMUUXj6gh
Wg7XihPvM5nLtv5SkvBs7ZLbHrnysPuJVAagasJ1b3TTnyqPHKCPRZzcljNh7+5MRZDLgD3OqZjS
XDsZavxw/Nhup1jnN0g6V4B8+naYlzHQ+565v3l4lVmfIMCIhFGSKAtI8q1Zf7nj93TwZldk9h8i
feqz17xMYyclURqPPzDKy4n+uW2gBM4UtFKWKC4givYKzH4SL4sppT9ZxhZ/rVQxYsYYDfSx7czy
skOhUAe33wlM3hHv0qEGcOimuU/cAM7Z+WQnX4/jn6DPr2Uodv+iC3GI9fr6j8yqblR5eOVlYK86
cRmp4Uxd/FkyrHoXIUJD7IiruUjZKoZBNxM150gqb2uqA6tdUajndQBzvn1kjSNBddDKYN9u1vbO
9cME924k0wZStmSoF/kVagVklrXa9zuftMVbf7TBOWAiOF6D02/iXhY+HVqKWMJZjLgi41ZqQ5qY
k+47mNt35ntSM4gEa7/OKiEbmnyDNX5mHldszBtO+pLj8PTxkeN/jl4mc6YlUMzfbD0N9jhCKRXk
VK3GzJQNkkuiaq2mwkgXgPfaiS09uNZjQ1CB/XqmhvhNnTEQZXm8oM0Zs68uFC5utb7hz/qOgBaF
Zpx9q6Y9jl/z5zzLeOX3/tnC50NQhoc739JZAxevI64MsrjjxZr08WZXZr71pNnhx2NbDmcuEfNL
2o+3SECdFyOUhRTDytZjHI1LQxRyB5WmCmMs+XLkh8HfEAqZr52f22GFIiC082ND8jDjihjxlnHc
aZK57NLRZLjj+krWyvKiNTk9rJkM810lLUVFrBHo9Ehi9ghxKHnfI+1x3VbZ9mDwrM+NB7sxXWo3
NxczUL6wsP7RDx6OE66yaRYfQ0sOtUGtQtn/qvjhSO04yX4dsh2eW8ThPEjnIYPqdw0ZDPJLu/dn
XlQqKxBzl5aTlhqUcXrt2lzXuiZO5+DUYaX7t5jnwX3YVl8Ghhc8jzVDoOBDOV7QGtCPb/pLdUT+
0BgXMU9qi8DdLFqutpvs4J3EFrcpMKcETf/5xLVAdb3VhT21s9INcMmWcJxdCvaIDYoUReNlydcK
tmiCiNFCIsSYFhk2GWh+WB+cPpleQ/uO+6161HQBK2hRPhFUok6ZoovZakeY5UrPr+xXirsdPCnR
gT6BgRf44jcXPLNTy1ydK9OnARjDBZ8UmKt89RmExuz5/NZ+fHE48mIYu9QHgwvlbWLbye+J2v9W
DdSTz7U7M8CaxJLGzR7DunzqynyQXpOxtkEh19fJf54pV5sw2WyqHRC6BEdIUytoYWU/csioMYqn
tUtLGa6DAQ3hmvogLz+FBZyj7TFuKOfBliNV9VYBUjPR9E0V+CiWP7atBPB3nHv6ijOApmt8dQ0V
CbfvcPnlDvzZBCEcbil7ngz3a5pE9j/abcYx+kIf5BQp7yYRY5u3pqeq1dIqPHK+9ULQThbVYTwl
GKGSd89EBj/MhpySkQsEAqaZTvsDSgHxwWBtl2/ue+E9PBYa/BPTZ63MKSNY0WdEdujuSO6FXDCJ
uGJ7XAYUuI3BDvm2JZdkoIUPRruFafLwiToT6WtVhe0U5CV0a222JypAhMV5xexIpF6tLJUZv5pQ
kX8hW0uy5+UTzCNwSyBx9toXjOeLGQ5FDVyOlviiyQV9LMJ+C8EJtS1/NrN7kK5yq108ad6IBdj2
sRSnq8VaDFKx2g+RH+vLQ8uSiC6ED7wYoEaw3eIqY/PM3H2J7wjtDg/8Ynt8gauDbrkWVRoSRF8s
DgJfQTn03hMPegpy9t54+FmKnED92e6DgEeERpvlTkwqqrPdWkqlF3DYpiji9rWH85RVr5ZE88on
jMSp2A4s77I2p6vZZLRJ8OzxK3U1j2OxSsGCXm7nClvfFC/VE8j/G+31iMDj2dtq0OfPJ565mKFT
sj0feJQNOyWjc55IIzHNFRiMO6zoLWCWFnQjWhpcDAQeyfFqfD82zj8PtAN64AC2ebAs38Qm+kYA
upusxPRdclPxDve0HkCRq2Xzrqez9+vxe8v4dXWVlAexJBsA0q3kCfRcRJgzJUKc2q+tbwZsPyIV
DezDPe8gvylpGVmOv2GmeFC3ajkUXy2BxxtAITMtG82N8spukvHH9CyFaIqCS/FQZVPmL5ngwPiT
1i6aVaPgi/IrBLtbBd36zUJGFMVSWXuiOTsvUs1TeY9OwiKsCVNS5L8bCZ4LvN/+FuHqFNM/rwad
rPy0w5VzHTkEmB/YJsCydy02DwPknzwXbXnauqkI/f/sVpHZ5EvvhkFJS/Vrc+eYYUckzLIluGEV
2NHhnKXPGrBAFaxiSZnI6PtsAELoB3pGSnHt1uuFQPZn18mksU7Ijjvr7GWyKHPPPpUxcaWHiOnI
wywpM8QtaLYYU1Pxw8igJDni0AX1u5hJgrkA1i4ih8ZTUASq+2UPFwLUTCoy/zvPV/AOMkQKkwFv
c9a3iAb/85gnbswFn9gImHKmKeH+XSRvASWUhsKyxPRf/4cHoJYSDFnK0QyHvvrwZvrRdmQmIdXK
IJA08jT1vLK1hqRX8yHT+E2AgTd7pjhoT6D1CuBeYypWGFZfgh3c20ybMLsM89OtWQj8TgHJh7Pj
kgbZflkFnCQCBgLNkFWbN3tLrzcnj83jLRGFprPJVRIGhqggTfNRpakpA2TdBg+pqNJqfMz54TKN
N/Lfq5KF5lJhJV0R+mmCr8Zs6AdUzVR0PtNHPiZRjwFF3OXop3e5huvxsCWe+oi8bpFnpT5VGeiF
Uv+Z75npzlOvYXLiwra2wqRuzumQB+/chnLGrSzbjkP5m5J5lvBJrWjFINvPJ4QDhPyJgWLparpx
P98WAGCL9fT5lQT5uvLr/9lDpCs7je3mmf2dcHrDUu7sW2sddA9aKATH+T4woxWEG0iAM8bs0BCF
mEFqVpP3FdD9p2KBiLT+VX5T3YS0kJ82+8Fbg8NJ2gwL+Vy1j3FHQVIx89EccUnS8UjjitbFzKtM
Ct1UwMSQPdQX1HcPXru8Aw7Ehe2pMp2nX3tdkWgTxTcP+B3o07Kpp2Ni1o/vUq+4nRMfEKYDvo77
0MJ4xkBg7mc2Nea2QDbLt9ECKlNKRNXpbF/YnyYMYlJmCQnQl04sMzJlqlLSWo+v2WNFvI325inO
CUz5F0vIyNEgNWj2mhV8yEFdLGD5oxVcovbIphig2xsh87Z4Dz8D35bWR2/G0jjLv6i0Ym/xCtcV
ss5RP9NKg+RgTSoQgueOgygL9TaSH3kVOwdta6jQCvrShaiSaYURlmlxulBqiAXAw6xdC9rFqW5h
DwCAN3yQG9lavTzXXIzAb8/iv8RDkzcru3Du+IFADtQjo2OcEdjaPmS8APENHtOzFJPBuh8cgN7d
sALTtBy17ZfGFj/jauDJaX76x4uS0vqYpIMUvwtT/Pez+40v357V034BoRLGwWubQqXwLysNL3uH
noG4jPmWv1PMeVpRvIvJZ2iFwE7lQCY+rAbGIxtNanDEWtsXnl7exIOBt1MdWQn12Md5IcnGK3uI
dSttFdfA8WwJ+8dQceSsb2YRK7ib5uBOMpCsHPceAKohlV0FUQjuCinaC8XYmlnFrtiMZXdWztVC
GyT5BwQH/TEf/faWDRPTzi8mcjw7rVgMtXDgF15C3zRsh1+KOc2/p78FcM+K+nercJAQgcykmfAF
/HKyJN4z2WlnCLXukTIlhQHGj6o79VRR0hm544vsfh5mWZ7v/7Ze9Irk/qzlZQjiFkxbHMkjpm36
ozBAbM4vJMD9QiMZdW4cDDuPU5Ks3WbZO22CWAmnVrnodjrHHPoSuUQmdbSVqgDxBgOBpVWzIRM9
rbV6R40APvvvAWZsItwdsEqij5wGHnuMlz/A+6VpvnuAjvJE079fLB3STuQVKZVQlWRXjEJzbw3R
soIaWq0tNVRcxUAcdgAksPARTaZjG5QCYZsQH5DboP4e+hzfMmgN06gioge6VbogjoXjJpbGoTMY
OyCOGtg5XoJEiw2ONOcxrHrYUCYuhKA0ubsnYLhKOB/JrS/H4juj/kpl/bb9Dmn+/eQfKgjA4+Nh
769bz47E8fap5deUCY4qwAwNOoJ0POpkq4LfWXfG6BfdHwEoPXw/O5whDRMXSHcHCN5A8sfDI9VO
20qcTQYDxkFVdr4o/wW9hHVrnMa384xtUJPPq+YSzXNHLGk82HWLcWucDSdl1EAhlOa4WQl8HOGI
F5lyOzdOgd89sBjJkKf3aaFCiyiJ/QQd8VmpVo+K+dHO0Ypth3qbOJKDSg73y0QVFTejsCE0YfXm
XGLayDbtF0N6wfcmf1IuVIIh2cWWHfCWQaPLrYcDCwAJPHw9QOU4vWA7WUqRkh/M54ZnJXp4qd44
Xuf4Jkz3k1ZMhoWCgWnTWsF/EekP5iVpJkIn5V35ugAHJmS1FyAbJ3/rsaOetao42ZscTEjWSu+A
JVLonsVnlWhCmsyPfpbaaVik9NA1vowwTHxMLqwHlKK5UYonOZlhy2O8AIsQrMlRp1nXAecbkc9b
zjNSESNNmhQouZGxzCGIZRvZ4YArcW/jQQJWtTaZRHUNYjZERYMj/OYSOUSw1+od3fFUdY8gtKHI
uFIr23a3nYQ+igSaJ+ka+hXNIyoo1x+HHGlv2NNQTw9d8+H4cMyaaerQzwAEOYVkEE9cm+wPJcLo
eNm0ky/cJMjtTMPhr7ltz+R4B4deuOv9Fci+0a7gNVldcv5yBXPP/5v8ovZgau4y0RHccll3cEv/
BdIkyETXLTnXfcGy93oqE5zNpGLGgz85/gZKTdi0Ji6HnwC8Jd/SooFcNpEYZcSB/8NuRT1Zg7wT
WHnpA+Reyj8Rlo/UmtfFj4+aq5OAbSceUGYP9PlF0OtE5lAuSRANEq3mY3j0ecuPWHqEp1yrM+Xp
VVl1qMe4SCM7CED7RmCJDYQdshJwErx+9eZbNuv0XWmufRdm9VagItGJjoOnLPQhtvt6EF0CRe6m
5nvIHb5PaYef0sQ9WJKMg1Yvp7XRQsycCifyumvMF7Ri/4ADBUaj1jqPPRNOAXkUnJJjn0VN1AzI
vLIKokE0fX/ctnKIomZcwIJULPpKYq6yJhg9kFxl4Y88+Xozfd+5qPToO9hKpTqZfeb4TkgQNmrh
yEiTxyRCEA7o1ArYSmlZSTbGVvI7V70Sjc5gw3tcb8yeb6Mnk0Kj+9aQrh1NQq7CR872JycAMJWM
Ua1UpUuPjm1dG3ObVcf0BiaFqsMwBJQ+RDoRofAZFv6uB849DC+Me6CmsGtWcKV02I+TnvJYEBvY
MELSEqo1A6RFGgcqV/g8bH7nLa7oQTlEDMWvY9fnHuW3/qlSTKxKbTQb2QFreTO5SxMESmwqw5CY
beFCHeWTElAI1ZQqReeo4SByP98gmN9K8YO3V0yz33/KUKRrRXX4ut4YVAHY4jzP9LOt1udgITFY
d8n1amcgXiECRqMewSvbrm9rgv/cQWaeiWDmS9xf9YCSnIpREL1j/F7X6V8S0g3rHHhM1Iu9qukh
U9YSCxIZSqjg3yEFdgO0+2JHOrfsCq/L9RqPofkk4CBXrr3tDoB3NFpVIjcFLg4Z+U1NLhOaTIj3
brGeTXzXk3e9Xx/q1dr5p+vWUq/oDFots5z26dVDT2Wl+785alQr8PL2HqYJ7iEnAs1DsZPDGBfs
iymHA5plTBzAYN2tn+jUK0Pq/aF+nDiia+9pLSWG7wpZ0MR1Kxw1RxUe5dXvM3LQG30obTPkQTGS
8FBnBGf2wLDHadq2m5GPwCiNx8VyuB9YhU8t2488ap81o9PJT8NW5EybHqANeg7I8ZtrRTOfuNWk
gGyLc7BDRUlPq5hKfiXj+eEhNKzM/UYYewvuRCGMxQgcDS6KPDgZT3SnX3ggEflZ5o0b2ZF39Glq
qeOWooAHxtk7oBrRzma8SNv7swu8VdvUz2NJtirCBl2rpJjBa+cuOQb5UIEmDhmLGiIMUcG6He7z
PqMhe5jk8Q+H6jmtyeiZ/d2L3cjQoYvl0zUfF8/dC6SIX6Zf4x/m+nsNQ1AxoWZBltIO2E9DS/0L
rCeHqF2byk2J4rd2vI4IjOwhjqcgFyjLZUnyLICPIAEkWzS7eJFsLEkIewSePNGhYZHZid6pa+xX
5K+ovw83bbLUjdhT5DWzKjGkeJCgHaCsTg6sMUZqbuoveMM6FwwfZw10M5Sp5Hh3oDuDhvarmoy9
c2SSyj0xYl/nWTWb4qYF4N9BuId4Evd1PTf4skn0swBIYKHq2DcsPrdhGzZf2gsyzL/xsGOYcA3V
W0RdnUve5entXcvajbi2fvl7tpkiQCCY2tizwdgMZkGSPhkJMIeUSIrOUCaPlUvzGmJIfZ8If6sV
RqhQm6oIctvsGDtyZtB8gjkgeL0g2xRCHoKe1bHvvoXC6rAQBHeDzhep4glG+RexqQPwYJ733Po7
r0bk4U8melkVNLNgjcZidL9mf8Cti02u9V5v9T6yN+1Xezl1FPc91IHHqbxmQqTSNdNpZEKO+7nL
2f6ithBC28GhT6n+cfZuHvtujbBW5a/kPXlqC01sRA1uYakqNPN9I08AeycWpIzsf99z6oknW9ZS
ScGxnge/Nz4XdDJ/tpt/MQCjvmkWEvPX60cmEknuob/PYWHE7d3yEqjTBUbP3c0d/FmvtvBFMX7m
Jvbh+7CYRtRPACfZa10jzwlGwOk9BRZubnuwsCLe3g5uDmRraitIlvrRUOK+a/qBzitAd4ZHGb0i
lqaEq+zF0YNzQV9xOtL8jQxAFLONjDQzjhbCvPUxImBIp/7CMEhhjqhZ4OGPTewWUUkpIJxj9p9o
Mb9I95Ozs8UjG4ujyyi1y2H9fe6bWBiLRh7lkD+jUM9DN8MU9U+1ObAE8dW8ttEgsu9n2Ta1E9NL
ZhGIM2njXXXMhb3T9UvG+3RwKI6wt0KwBE0OeijRPW2q8p2WpETGChfDEKZ+L6Y9htP0GMleU4gC
knfE9gTAz42ziF9eCyLJR6UM0ZH8Ij+eEKelQ+hkh9D/EGwX7/ds977SWNfi3MyWuzSp/TNrUru9
gBpb6qNSilQ+uq5TTbwDf6mgF7zIJuiOBb75jckK7diVoxuqXR/MwDxjCbPMDWQyGP7S2Vpj5ri2
xOeXjHi9xuLk2pYoNsc9Qk7k3W7CCniPx/g7+UeqgCMlhtsLSMALWQv0Hd1yk9rzHFT+FlzzSjdq
5xCHAzBlVsbW1xTamU1FrpacM7qo49ULxVe/049+K4gtkdwPoGXrZ03eccl3f6+Wfcc7NM4wgTdY
VpcM2Nk/ZdGwg4r8QOvaySiuqNn7eTyKixzIZzEl8oTaI1sKIDBm9CHfNYVRt5UUu2sCUW+kcPJO
yidE+maMCucojeUkYqqgDYTf5ubf7heTKZkBiY2Yxb9UHkqJseDJLAvd4v8HB9Ts6UbBY7hYEau2
RISCyBf4dzZnZBZ6O7GWiTpfILGRkvFtIUxjVJ/MahC7h5Adkvpu2swh8WOG5MJN5cq6vXN7NGSx
QCdwsfbPcpFnuiM/fBY76cv/32j37eHRkuQdOvmBh3z0Oix9W/GczmcDyW589PYdc4hkGeTffm6d
nexBlA9pV25YIbnqTxbQ70pVDDzDNTIaCekJgIvCmGCp5kWJ5A2cUeYwia8ESzZ3Z3H6YIIoNkdT
zugUlbn7Edoc/DYE9Vxw3h9h0XTO9XWp/VC5xNI6Z2/JML4yi6O4hQUosgM7IjQesPKQzLBaCAC3
yVEU2v9Gmjda3kqN8h6UGwM9dffy3IhE2qrVDjZJEcKyZmgfWM8aHCAyT4/9eGXybmb9uWyVnE17
mWr+n4ZSPT20Q67EpfijFRqoHekrouRBCIam8aQe2S7AOS1oG3ox6UkXjuh/KtyC2yzQz34SoL8f
oxrcV8lYoCCY6atXK8Tu3SiA+7IWcyJq31Nsr2xPZ9/JVYZSkqVxa8BPxnCw9mBrEdncw44imi4H
HS3VVQbp5PZ4esnf0L6qBjNv3hb2wIAHU5dEaJ/dPW+aL4tGo3BJEArkRMxEncrr437PmmxLNLIy
WlwDI+nuLfeKHDrSwAa2R0Rn+drolC+DH1e8uZkHQPjuX8pGGKBazmKXs2a6seLmSpvj1Ix0nP06
xNI5XEv9ZklxAbKCCWRblSXKUcb36RYB0Y5Tc7oxJcNr9ab4jEt1UKckD2e44yMQGoY17btqVa18
/x5+bwnJOryIVGns39dDxJYM1RK2PX9dwySld5G8ZBldNTKgyjzgZtAs2V38Gen1ljY1oNpYfmII
r/XVOtreywn4OGtB+/kDGvRte/zJPBr4zXTyAl8ALXwGvYC5hgobCbeD+jeOrSPr1rThKhTRJFVO
TzTwnEK4zPGPtlll8w9gMHsX6NNOe4pqJhsmmNA8TCsg0yX7j2ZyRRBIsu4+G7MBOHWSkYNHaTVw
RKCKXbks0lEOyueTKWVJhtKwsEQOPXFk/KwRPzxnjKvxJODeR+w1QAuWY3WI0YJLB9YveQppH93/
EvylV4ss3T3twPTd/NKh5NzUldTIE4Z/x0yZVFzWZzDu8YYt7ZoKNLFs8Kj4zL5JmUTIUwMl/GPl
pao1GJSHD7lcu5UkdyhfpC9UDwPAaYrXNDebqhbEdE1CsSNpFEP9xJyH1H1M+UaYLjWqN9aARHuX
yKhsYOotUODxJ/8HW7Jww/7f780ln4ytdvy7SmFbX/M8xZpVdrDtLicUQKEps7PNCOjhDd66KPgE
KbN/PWZ1MTJxH3NwR7R6xEfspsBRlOP2dL/WADauD4nUXhClX02+4baZE3fx3FAISsvVa9KXfJ7V
tHzB2gG4C4Uye6xnuajk8NJ8d+DNmlXuOL2k8NkZDzKlctsIFMcVtxk6QLgkmSpt+nozYj44UmiF
F7nxnt8GNOMF71j3Mwu676+51bHm5jrUZZrdsnh6xc06d2b091McDnDqtyqffja8yjjBYXQHL74f
M67g8LM5pkcRWC2FgQaCs7Rg0Y+BHHOXAvQHvhxyqqYgzcOVUiraU+ekDRuFfbxHlYZcXGDOyfLB
qZtfUKrYspl4tpyKWWl4WtR69lbcsoeNx/UQlIhz6bmUgFbsv6nYAx7MN+fVXZLesxXGFrDImliI
V2OEC1QSH4GlHJaHD3bto3Wl69T66b01lbyTE9rpAc2DCoo7w/LGmzY0sITPHKMQTSDsNLO7flDn
etV2PVZxcZ1fA8TDlg/ssA7XcWQ8BdzSqwikkboG1Gd1XsKWWJqJAS7EeqgUAfhtxsz6ghnneROq
E719+svYbGhEGZqJYQP8IFbEo68kt7BN4ixoCrcKUW0VqM952rc44Q7w2BzvII1o8WacdM/kjA9k
Y+J8jT6uxgumRev4ZtIxgi7TBx5w5SskfmUv2Zscclt0nYNUKwyWkTFCfA+AJFjaybFIRX5AIK6z
ZLK4wyK4DeckBpN7RSCEyjsmclRCuoT1wef1WCdoshTZ4QeovQSMl6V1x8GgQT8QcCzDscjx/92Z
N7TZCLQmIvr3eq8UCxfvCQ1QrpcnxnG1tEjxwE6269KZ2IPWTuhCP2d1c34g73JaUU3RzDuvIBbq
UscuIBMH/UBxOLeWUFsd3wvkx6MQNo5uKeUHeMd8vg2otcWdc0534ajxe5oWSi79daosDW84cQC7
RxDtrdGyHMWK5MEBJ0GyoAGxtqzp2DW+L9jUIZ+WCpxq5UoT9F9wayXb9xwyOGRSMUiHctXIxJTX
2eslBbmVtfafvXa+XXFI2m04CP1pv4URWuMsf9Ao+h0CqCtsk+YrebCZ+tnE85C+RxVNd2LpZjb0
Z4c+A4Ug1jDl8qGwNJXZCrcqQr3g9eXJI/vTGwiwSuM9Yb754mU+PunvMYRpUsFcIbrw5C+6k40+
kmYbauumoZ9b4U5q9yDGgRCr0I2YNImiOfRdNa2GB4geYoaUPk9gOH2BcLwOveJZC53huYPpNSky
D2erRna7F2URjtwzz3bOd5hL4R3My+XouEGLqwO4Uq9XhMcDen6MkZ3eRQL99IujDX3nsHcxWJWd
ZLFnvZypqTjtpm0LJHhfyts1fS+T1Nswwcd7msAcuceRUIwn2jyWpryfkMmlCjT4RgEXMfv7VQ/1
a8nWKD3tAqDJZ8C2ddRKraqcbhxU7bYeL64qTmc+3x9YvFHJ1McMfSX7pNI0GxmQvHb8yXrOyAwZ
uA7vblBqLQYpabKXh5SDy0obc1bivhgNaAms3tLy7JabBnMscG/QmBVkzpc4VS/rq3dCPRjZgxv0
Ezo1u/n+7osOZmeKG4XwoKJ5gq73faW+YzcDZPbxhszju9cOTHIUVpu8qixEPMlusP1Pad9nGkYs
UiRCcjJYaOzuVLXRkdbPM6VBAUYaWmnnqEf8nHuTY7aiRqbYB1RUy6nhEMOUS0Gi6S1Y7g7ou17e
0ibWWNxD9DbTWmOcFWrbH+C4hJoUd23r+6jux+vpTQdYjjYlU5xI6r+7D0C1HYwD3/Uf/oDlY/k4
LvOj0Dv/3wF+jQQrn3MatEcEIJzcoQDTLSIpMnyX65w4Na8l4S3CMHHuCDVXgSCh2mvLhSvRZNFF
X9AUsRUTl3NMcvS4rziof692JCU558phnmZykDTyR+PR4I3BPOjBPsdYoGDQzP3VMZBZ2nt4HnT5
joWyalJgZ/E4lTIeCTquGbAi/N3dFjY+b9CT6Quamwu4IjMC+MDMilVfNV9VDCOGxY5xSxQryBFA
QFsbrTZqs88LJaLwgoUj5fAwK9tnaJcswq88S2ik2jo+GCDcICVIJpj7vcbzRT2L2i86VOAp7KCs
izu6zboVfX2FAJIh/gnreAH5PT9iS37uKv5huCPZjs9kcSoT25Iu111s+juzRZdglFH7ebGpliUh
rrHLnGjtz6OzlsAkhfsbR0tuyAgkgstPs8xO9i1nnRN87jnXohVFFo01Z2q0hwFIchMZkXG9pcGD
dlcOrca2cyz/6hjQuGbcmCG68vXbIfcNo/1feCUydL4SHX+O2dFMdhMR9sA3JOOULjK0PCiuTfWS
F8umuxWKQeyYIUKU1c00uOOecnIRQPbGQcnuiAHMGgjYRSP53caGHjafdh3rfxddg5y5YN+eUdn7
ijnBjAqXTE0RB4J1lglczVFz9Oc23jVfsenPj2g/Oq/JEsjUCeiT3FGlvMAMQ9/dEKmGPqjvaxj6
xu/QxcQOQ5xUiEQW1snOg6DJBwQap3g5UaUhkor3cv6QZEeil9BtRqJ8D83/n6u+X08IIu2xrawR
0QGuRDmJjZ9D/PKT817vd73NcUKpA3XCgT3IQyTF+e0eLJ90niSjOqOSSwWSZ33cGS7BGxjZRcv5
w4luLYHNoCfcrGCvsgF3T2ez9Hua7roT/QaDDjN62jW7edzlV7O8cCzmh2LlphCYNVjA98ew8iJ4
y1phN1IqsmoBnWNykLM6ONtMd+k2d3z0qk8A3vpn6FWRwOFj/89powFhDYzpXVkHF09juXvC3ykS
ROB64J3Lk6VBstbHmN/xMC9cjXWwI9Xd5+B6w1QLKXss96PXKVMm7ZqKvGdACV9/jP1AYDgi5ZUA
SY+MMYS2sxh1f9tPThSOZzghjwgxjei6KacuZnv/7Rixcv73yeQpRaC5YB5w/M1RscK2Cisn8UwF
7fz6yljNAMCmn0XCyquK5WolBeg1+CXjt9bvAqPCBsYZwi+f1cDP7fvpZmNipXil9nyT+im5lWaS
Q5J+MotWBbD+G3/rG+j8G4b1jaDj3bhWbKrjTMfv4A18urTYjNzMxaJZoHxywOKuxhACB3TCLGoy
VYSkEesPrNbmOHTEv8Nng3ctyOLmVYXIT0TpMpnTjBOtfFveLk3MwaAtt9p3ZCHgEP+NDwjp7ZtC
JF3W57OXC+ZV/dg9qYqRe2KR7Hpx/EVzwjp5WTMz8OWayGrHPT9vagyy0MGlhteFwmVdiiApO7Ak
CU82fLWOPU4hgae0V630m5ScDFJShgDk7Ows6oxCDmo6dhusphSE13jqVfVY6C44KUpyDnUYHzNT
NXboQos1luNSzuHUtaRceQ/X1kGokxAap5gCxLS42t2Ed4K0X+L6e88vILdj0/c+OeXheioWXk2C
VRLA6np8AUH8ZOm0UqPFhms+AtesaJG81o2WVLxmCqtSPLmQR4YDC2U6BpsWi5k/vmg3yCMVJTnd
RYRjQizlsnZu+fYsjKobCleZAM/MdzWz1+3kLcaKf1CFuCuGiP+SeUqKRRpIADLyPFNnhN9/m9vC
BnRyaBpe9WhXnaD8vkFKjV9v2wY76Hi8jJYcdyl5jHstNAlv7szngFCpaUlsAHNZx3DVmkqEHw9K
C710YsBTxMUxtDCysDk80NsNAv2rKlkyDHB1Ofka6rmgdlMXNJqFZPjPzt4Tad/A+79xAejDQNmK
BHTbpvQeXp+0ADjhBXg1+qxGx3o/7jGiIy4jHXK1g+qifJ1cW92nDzHgrSDLMtfsWs3zmCw+Kbpi
defPjECXs5SLopcQ5GoxyZGA+oSd57keOpbO9s9gSYHNgLo/2d7WMTP4ycB3lY1Em33RNDB5gnP0
6ayyt7YUPlmL4pv2NijfRhlTurm5Sd2YQy8o7M3hGyHtu6aZfPUac0YOMKrL6xCIwio7+8xS+jOU
zlOeOiy8PXro8avR7hrTz216VEAxtn4WWCqg+mWAujbT80sr0ORk8/Yo4YIC6G8IRtf8SO26WQI6
tIScfbgliIU5U+u31hkcTWPpiWn9jwe5DtY8/RMWogtdOz6RSUxGt8sXXW3dtfIEIJmkifn+wzgI
QX+O7DWcXbkeYAWcLvv1Ba9QYj+yJCD1WsffRtrS5jyghjR5HUtQnPLndkzCfqR5fALDOVzSQZUw
L26kzlriFJKnt4YIO96UCvOdszUiTHwkSbMZbboP7eqCVQR2L8rw3ED6dlz5n/r/vP9rISiphprX
fnp6fdzExtdPlQlU1vK1W9w1ymuE03uBLPebJv6xigDCaLNt3bTzpta0VqeJCDcQjUSpMdgGgLWz
u6oupLFHQIZm9DmEePpl5MbJaJoLL/UEiWxKiHS3hgB/Ze4NC+p9YeVHEhz9o0gLkNahZWREq1x6
m0mH0xYBwMqeLLEyQvw4YwC/YtfTyECu0ZHeCGAoKyNJAbxMlEUaYcKD2LKbz5IKGBB4ZcgXdwDV
FC/qR2NiJeTW/T4fNh9duvnbZizWvjFby4qsZz1hi1JfxVEfbh+pOo+Vdn77oeUVjRss7PjyW533
zTctzQHEIsgUmrEfjmkG9Ln/dVbDjN7Artnw5wI5xZpxqTYRJBXNSBTo5ZnRUNFbNkfo9xNPuKUu
TOks/DDGcf0z8ViiKi1kKi7iaAOPbctb8G4jdOQrgwSTI45gkg69idUSaAmhwli91jKIuZENC142
THkXPVzc9FXXn7v9xBmpJObqon0Oc90ds2u5Fb5zhwsC2lrfR71giWSM7Rbq3MW9oHoxY5qt6zN5
Du8cXdJ/7nVsQTto309Xee2eWtq70zzlhGFyE1fWuWSnS2gziO8dKEmdjq8gtrn3azsis2xU0qfl
sX0q/giLX3wFobhZjwZYhhvaMDKHR8H5jx5/sgbFN/JAhGOQhV9Gd4eeWTm3qKb1IGvxX4x1eGwt
T/m8P9vxaL9XMMFWI1JYkZdUTrIbY4cZ+OnDsmrdrzPWR9DV7JKSG+pLhfZO68gRMg54QNQ9UNsv
5LlhRVTsvku9vMvxKSOjxsnV1c/+B9Q0Ad+En9uH67n/Q/ucE43H/jy915kuUuNVbgBu7Qqk62ut
6db9bQbcPYcgplXwhy5eQfNyC0bikMncGOOGg1xNYeK7V8usOKzaVHFu2OWJaol+IL+/aEE+S4+f
+phtQa4w8dez3egctf+99whGcOqRwXWYf1pmWK4DrH6HvpYepZiQjgQhf16D3HfMo4FO8We86iEh
si2I/VKgOvUJw9HosLa9NSKcy8L1bqPVY8mLDQt7lpXyiH7ZWWX3urkriMovS9QBVAOPEMfqbEEj
bSzSMvoMYInsfQLA/sCFZJ0yWKvJ9s5NUslt8gaoKgacv7kAt+GEtw3SvLIixUCYH8UDDaqsI+Lt
IpyQXTl3XYJqTcYyJsUzEbSBZTIl4lT2pFKfLpEdodbRJ4cBfkzbmcUDsJroJtkfzMGJb5DE/lSH
cSF3TqJpi/oJwyXB4IrMYnfRkq4dW2IQ+8bJc0zJAftUvGCAiL9+o+VNDUOp7tkCZ2wBuYEuy+KX
+2RdGUFbfyRNAO4Kz6URBTZPzJH+ai87Y+8AELLoa/NA+Ptf9JnoPijLbqlEwr55uismW1myzOpW
clk8vTGAMlv13bPcxVlORrHFZ4slVcqyTVluNnSk+WB5j9KcEFsf0A7rw8oFP4Llb3e/alxGoIl6
qJLxQoPWrlNDMBCrXgtK4u0D3jTK4bf4lF+wLS3NUQEigXcxdfAfo+9kGoZKYurlSn/qruib19ig
IP3UnSzC/acGpMllKjFSGkGKstHtvx6dtf2iqDL58hxPyCkI/1eePab4Rp0O5LBacMcFPE4eCW9Z
5zPg1Eb7GdgzX7MBjnCDyKTsNZonASdqjCabo2erHnYs3LRn3+8LSNRdZPynBC3HWmtrwZkXXSfJ
20TmtcXMJ+SJewBo2Z5op2xCVnN7Eyjso1uYRtZi+Y/bEQB8TtDyBF3xT9o2tRGFSovtgu2cN7ur
lS9zYFCAqUjjAF2ITXhBvBgInd1ctQrvD8rufIfY9Ht0Lfpk0KDTfMNdk6BmZ5ROYewxWYJ4xjQp
wupUmXk7nOolceMTJDJHZeUAEMJLfNdUG2MELX54fCTtPdgudWRieGM/D5scWzBNz0HZ5JvOpGWN
4+q2uhJmbk4rUB/sPuBj5g1stnxmnrPGqKQ0brn65jABzrlTZoIkLFrF0tqdjiUnzeTqWrv52zgL
uFRLR929e8Q2NzKzLOf8SFW1gXLnj1BXhU8SRAKrQjilvz+r/Ylyjvim+3nda0vPKqCMsmlv0d3r
cm5lit0/4Rm6YIOGPAJshuVmjFLxG8lZO7pSgt7JzAt8LwT4Qiww6obg6THhY98KHtw4LfAaD/qW
ZbyhCtCp3RIHSQ9NQdB9ZETTTA7PtKoAkiC6UOt1KPHPeIJKTxj+50vPMAQEKiFTC7KpcLF5gut5
AtYsz3TbIWXs7WQYobT2iHe1/xmYjZnWQJB09090/eyjHnheEW4gdCnkc0wHpURtPGmqkJiLhDOn
AVHovBok3as+SqHOSOb7S/fp1pjaQABlu3CYF2F43RqTnY++lZOvXmqDj8nkuMSOZhf5rWMcsFNz
9rbCPG15aDyclzJe/nzHGqbgJ76WkYcMMuKDwXO/JFnRBjxUhXq7r/24MvmwY78nkZ0wXBCB61Xm
k3w17asbC4MJ8ehn8G5ISH6TFqEz0dZk6FG8mAJE/lHXCU9XWMAvzNzblYX7/Jaul4GlX7Y5+7p3
yn4IpU+CXho2PO3TByVdlVq6I876GVP0KzIfmKEa5mehQoWo9nbGnH9imiqfhDXrOHPfKVZ8NrKD
ozauPYC6YnYMUlOd3hn2wbKbWwpKB8l9ex2ztl/36T1FuuCBGub1nXYu0/BTcg03G+nn5sz+wS9D
tHZ4w+i+4H0VKDlZNpOCrEyTOUFY0BeBI5XOtGwq6oR1betOp4FJB/72sdGQ7FMHJWx7rYqqR9o3
xp4xBYVTDvPLHX6Og5Z3zsJ6tc+MuJ9QMmauP+rJsFY40O+pDh4BaILs8oHVJLqndDrUQ5j1Zw1J
KtwMd9Eb3K8fFwcCpndI/HJMKeOXyv46xEh9MTVRrOFItJ6pWFwMh0ny1Wtwe3XBkM7IPspDNl+b
N5DAlg1uT/CCp2Nz3BBBzjSXAFtwDJPsWgyTzlA4x/+lkPgT4tDw2OU10rtuHSnATerHWJO0LGO4
LJaw6D2yywlldG7jilI4Aq4PwfwG2aviUBt+aw8JVLt1jWXPyYUb/3QnR4QY6lPNvTxhq9j009Pu
a1Vcw40KslsApaziD6656xmOL5Af8OUdCGzY5FHhf1DgPDOG7Aij6fjkN3DojgH9Enyv+D6zd5ic
caSnbfvn9XmhCALZoGxL+UG18L8mbs6q42S9fD/FHmuuk96n43bgAU5nM3ETQUo82uUPVSUc6qgg
EFwt64BCeWHJ1MVJYpiCOO3ufP7C0k7bvj4dmMJx3HBq0R1x+gLuqAEZvSx5lmr4ti8MFyXyKQTe
MNmV4ZZXSxE1AIWoNlxQNOjdESFNy5I5jQnGW+BrXcT0bhcUU0ab0AIxpROK2UyKxISM2DeRKcbh
7lLPpAKjZnSfGeDJGQPKL36d1y6GdRM7xDvTnM+0dOI2KqNZTLzBAkUSVsTBTSIbV3wkKCaPeAeI
qu8H0AsgLZ2TqTnbTGMveq20iME0mNbJPVcXoqFuNHOd9bqBMrP9XHn6uxaF/mDE3m5okvKXy3mq
XeXUaaijF86M351PSu8+qxlxM2sVDQOxTgYYBeDtsnle4j+EIewev2Po+RKtaOm+iSzwXAuSXXa4
6vlvfuqL+vhV2uLbOjFPmR0r23JVzpWDUcWIPcRlv7fp864fNR6YjpPRAkUiX7rpTwyCCQ68ktke
c9npxcDwqa4WHpEPJPnDANUs9f+7aGYY9zhMQ6DHNuI4VEx+jI3SBZKey006k3tpZ0fc2wpCuY8g
RnHgquJ2sM/DYcvIrUoAWOE1C7UAnkDUbyXGkVtvNaJIgL3Txnlf8GcQHovkOsaFS9huOrq8Ow2b
oEEXXUOsWkRVbZHlkjJhnWOPzLG37/UvWlrV7SAG4zpJYWEzD0GucDCvSvvPJ1gP4HCtyFfG6fV3
WuywQ1hRB69gkARxexhTrtWxFrccvrTMn+BhYWnu7SPHKlrQ/9OcpT668KftaiPX+zTZq+Okm2EC
w2AHC1a5jdjCUfrrNoQZkCzn1d4qB0VsbHI14fPrg12oRCW2rVISOvu0pfK1dPpEy8Z2wFuKfJV1
HlHWg0GT9cM1GMtXA1E126J6iDbQDAqgzqfMMJaIK7dYbj3Y8FhMABpqKEX9qt0/rhbtTwz7ekLI
To4Y3l7vi+eM+27mBzxxNMZ8YLQrMnLVqUzVRkZ0ZjbbPXe2aCp7+Rm/nQkEQjUweOkGrUJ6RM4Y
Bw2Ched094+7S61x1kd9jHSeYp9mHToAVrqPUevKhFMrhYtaGfp3bhVL50jEdiHis9WU0pJS1jJ9
m1V1xYJAylAeE6/5msj+o6QzCUWm16fkDrUbk8Im3mj4BJyDyvw4vlQp85/enjM4DIn8vr6LjHca
5sFx+R+xroQkCiswZLHcIve6x0YQ2DSXWAc6haur5IDwWBxGZTktWfvVpaSmyYTEVaIdlLpbYZ5E
lWy0308wDQp0e/8FA2PtqohgArqOZ/as7vP8Od1b22W18i7tJthxFJnEoBLW0D+QiLIh9hk6aV3s
AxxLQqbcRKVfzDmqxxjCMw/wowbxE67rOocN1mGZOPqOLXNSZ+LnPPvng1dDlsugMD3qgZwshgls
GAIWzf7T53jAwYQQtUrcDiCXcBdiPMydJk7XkyKhSSQg7AkQpp4yZ7Sx7HtbtseRBxEQvuGxmF6b
9k2EezLMBS9v+UUvTY7bh490guHzaW1n/gYd2P4ihBrL1VTyDd1CejRa605mBHZXfUnmHRlQ0L9l
y0OXlbYn4s2gm2bBsNDiZAREu8F0mtmpJexq9s2gvT8hZ7t6PxgKOq9ONE+Bo+qf/K3ELuj6m8MA
j+R4urDHW0NYbGYVcdLaYzSaJfU2Jh4lQIJ9gnYNp7si4wOe42alt51PENG1PjBxDzfsRiUzMNNu
s4eFQn+w8RkVUkiek8DmYZ5hQTKIn5ctWomKG2rM4Cw8HAC8yhBcPbAStfruuFxzCYtoZHmIX7tU
1VcEhcpTMslLKHjvb5T8/tZBOjIdzx2lYsdlH2DDTahbQR6OuoCSkZe/YDdpIEGzIEau7tzs4sdH
/i5W8LPwgFAl5Jy9Ta5cF5yf1+FHABMRhLlWab27GWVyKIf5PQXfDJGVR/1umOw5vm5Co2ZoH9cq
TNEKyK7u7cN9gKrXmL2shiAKlzjDqrhoa3sdPkl76RFAce+wnvLTbMOV1lsVaS5bMSO026N6x4+d
y9lNmoS/alCrA3fuP6Ct5iOP4VQGkRURB46oEmgyqYzPcy3qSuspQ5K/a3T6Eqh4wUlAqURkWr1M
wtjVq0bzixXKcfBTMSZlwIps6pDRpOf7885GO2gj+FznawPgdwX1bfVEmyzYjI/dmYolPYrWDzfJ
kR4LeIMLek8iEPJnTijpMV3iMKDorA/9cHf98LAMR/4Kn+0A8q8OfzXS9M38SlGEU52wgXytZrwn
RVhMm6stXAupulTFR4hYlTbWF5dF/w2NKk8pvB8M5SF8d+wluk9RCsMzQVW9Uu7t1MuEl7H4TSzd
9jVoFf+BDxetJXnVwGM1glvhNCJ6qqLhEHvEGA1rorlpEqSAnmGYPqCP5s2eEOuD1SdEu7lzcod8
36W2U41hSeLoZvfogrRcObtgQ9uwTx1Krxuz79iikAG+drR85krI+ogVXOVIUYh0q3JRf4EpkawV
oqeoe9BYbV5wd5qJGcccrAGAPBknWWURlYAjkPd+TF8ZtgX7jfzeGcyfe0DmfeCYbwfZ70EUXynm
Vyzb6bNNU3HtEWqNmKzaacKJMhdEBGw6aRdIc6OpPrC8/4FGWEVUZINnLtbrwU/l4TcBT9xpThig
JylFNTUWDPtzZiMl/6mBj7go7S3Wcf9eTGHpDwHBr3YYj5rypAE4rL8Na1bSfX2rrNor9A8Hkyjy
g14Ci48H3itbix5bBZBaEf2cGX6xhxRn7Tkp3X6mYRHgU0q7P+r9e6cItUi5hiFzLLXpP7NW6fDh
Av5l0zLNKolKM6yyKeUJZTyazEDsrYC8kVlz3dhC7p8A9L5SAWzAY0BKQQqll3OI8ehCgJZ04Wex
73/ci/bbzNx3xXcc7ukalcPlDLOAMTCArQlslHYdVqLy6qut78mgxjsxqUKBNnv51N5TQDEcra6g
teJQR34U3f7YCs6cELqA6kb4lwmZMxVGwvVfx8RQMjLFACLWxj6LOXTtVWjcQvgjkJ0l1z2wbL4v
vjr5Vbu82PZJtouf2wnp7SqwrTqa8dmyZ1s2GHMcvvBiLAC9GY75t1aO11Vy2qutKR/LwTRnP0xq
4k7oP5czKuaIRrDAuKunhi3ZzDel//J7a5vstMDlOod1yNau7nYgStIORp/plqdeIfni2aeFywH6
SdL19EKsq3gLkmtdQuphf269eVrTBXn+/SKT1X5mCBNbGTSS0ga62N3VtpjxK5q8OT+ZQES+UMbw
en2N8BAAR9Q8Ie/4NPvl2f3YJZEoO5YTVAbOmc61F/h2jVEWsfyNfNcJdX/TGG6LctDljolba86U
0kuCQ8hvgSixn/vaACs0eoQoTJFd+xeNFTBGMWC+kM+niCI6U4K40tm37b9zMt86Tmc+Va7DjlYg
04xyP6W+2vARSxck/QQZmCczc/o+k2TC8rEoUiyLZOIT27NdZWaKMU1RELLmvtU8zXVAYh1sCFIP
l5mz/V69vX0N5Krk8H7ToR84vUdK3A6H/gYzOqmR4tsRayQzBRFYuOIktg7O6QuroTsQodW7fMaG
FbynIWvKyv2xbk02WieXCYM5wZ6HELrqcAi6fYNWIJnN/wBqpTFnpceqrU3wvwMrt3jfZF9sLYYB
dk5EgasaJSYDTo4FxIz2B4GKrDM/SM/ujblII7DLIAaDbjfNbXLH4rmHvtI927NGn9Wku1UVZlRl
M6S0FVuCqfQFE+dDRZkY09z96mPrGGwcCRp3pkCnZJO/aSqibl5UXeBFgYxO2YJTq5rCyi/HIplm
n7Uo99e6SF2/gZ/5/qI5VFOvCpHkX/T1q7XFLQbQP5qzz18BnCgFwnUIiQzevW8KXuXLvfsfwZe4
pTL+F7E+9e8HAuMM6x7rOXZtRLtwJoXMP03X30PHCVesRiDQhd7k8SVAWVS1chhqmubPVYgBMtOj
17PK9J8lGKvxAjXLJkwQmTI4rBT9kXmUx9uvyOsaNOdwXGEUyJup+Q/yDguQyvPw/vO2hq6ogIBj
x6j6YjyGf1OEPHOk8Ai1qLpcUglOMUfUHUJh/zqb/3YW86PXtKtUx4QdCs/6/9lBi217AP11K1MR
ec71x6YrNDxp7+aEtH6T5Ohk0sfgjqk7rpT90jnOPTcAnotyrRtrHSpMAbMR1l0RcxIFsO+/c+kh
Nps1iKJrLaa8SnGpw0IXoi5NScxzZloDTlVOEwWNoQSCHbM5Togqikbpmwp6yhKnkBV6tyKzYaPI
md3yBEVvNlyaDmSGUrmvmkEFQhx8S/tsilI153M8m03UUQlOzrBDLeA63LmLL/DqxmhiteDifMRu
LeKbIwbrPvn9uY0xRLFbNhSufTefYvRq3363TJWbeDlNujg+mL856Dq+Teyg7MXEMQBf+kFfb7V6
uqG+ZwYNhKaas6+uuuKO/9qIMpGjQL7YsbhoLXCdwYhN/o7zfbHtKzKNGjg2r7Ium7BpE6MR8Zsc
PQf0r0hFVGy6x1+iggBOaAZliX7EwlorCaqg+4M9mwJcx1i9pxBlD6W7Pj1p/Y2Cdy2/0V5whr0G
P5RDrHZmb+6MxuhhguVzPQOsUFpwrujWsN89/TQXXkPogg+aEednsJs5X15X2yHw1KXlui206T9i
h6F2xevnhP6cPkSU4KZyf087XOzazq1ssId0z9Wc5HDIsZw3ruPwR9uknyUifOUFhR9urUygjTRy
+pe8IVe34XtFU8un9hEZiYsAiLQ5C+hTbaluxPjs7QVeO7GpxmERxCiDHx4lnTGVGUGfBSBDuPB5
YfqDI2iUiEMILfKr/MBFkmm0nkuefY9AeOBdkpsf9148jD5PvFJH1QtDQxW3J383jRMa/Dr6KbzK
H2mgIxupe7uhSGRnotcRisfR35JFyBMN5ZCbyG0U0tKwOMUJeTSdA9HbCrz7co+tXej5jSzqR2ip
n2pBkq0/GypWxKh4OcJj3ciwGB+DDbDyjCi5+iZB/MpEDb4KA1Yr/xhz4t5b7r0UVcCrqp6dsg0a
TWiZNRLYeGUuoGu7tg3ONWgEr20zJTb+UoAH2nRmsvuLsUm709qmS1GjymRDaQ6fGhLsn3LJxO4o
OSP1WPslI084HqMFziD3dRZ0qZOxiZKAFrqA6djzeV2HlQAxuzRQ7EYt6p+uYCVfsH1rqEDHq6rl
0hKh4DjuqSIiWLxfvt+VL/1M7WiolqK8F1tZIzq2msTqXBGDv0I8Jn46Jdvrv1R3SeDEUUdIKykE
iVG3cHUr+ROKRmle958EYG9K5jygqgCuY1g6BXGy7nnYRkEEb0yh4Sg/OQi8DveC83nQwvPPhOLL
JyxgRkni457/v1t+VTcmqJKT3p+Xj51zzDg/RoiV7GhxDMAe+jNAySdjXev68OWylh2Q/oCHbv35
0Ac2ofi6XBCvaPecwoBWAV+ywk3WNm4d3ho/vC57j/Q+j6eUZy1hYCU17Sk93DbA1iWDVshbrhHr
T2FI9ojg7dAa+eAGqB5+CiRMrbFYohjaV3xk9C454CnR4HnJ0OEyIjw9w5rqth7SsUbmOEcZT/Vn
z/DoQkMbCf+9g4Gk/o46tqO/hUjUOLcnrcclt5+PMilU8dap17yzVlLjkLExUI2bqEWpOFRUJsvh
wSsIGf2bMyXPWvLti7hNEAus4cGRD14Wddb31NXh2B5/G1hylwkXXn0sN8dQc/fgku9BVB9t0gqz
RNmUowRcseNZegVf+zaHjKJzoJIQ3HxduOdqgNDxtDpIdkHTEmHTzA2XvRagTBzMQkRN5lYAaV1o
XimLvmXRUehSA1VhqTT5EtOZ97VlRBCPpG4bSCZI61E9kl+0+RqhKHv6j2/wRJb0Mgb22MU3t84A
cF4Hk25l+zOFtOHIjp2CL9Jc4Q+K8o+d5cuoE7MnDK7ae1V1z2iFb4bbAz5C2QSwxkToGd+pxDDJ
MEgiBI6dgQWlU30/gqQtvoJiR2fIfCLQdj+Q+ekM/AV66IA/XvsbxZAKs343ec3uqjG6M2n3J8cx
nbfWGDL1x9gpakNCGwFHsGigUL28CkDneqWnNqbfkYua7CCgoeNAItk0L7TOXZM6kFX7kawpaxn7
e+/2g0aWg8IlX/s2GJ8M51jaFMsDk7Y++0HD75iT8lEBT/4ZLpWFihBgv9ZONXk7W1Tf7P3iWl0L
XX21Q4iwmJVCeSesmDDW9B/iiGd3LOn0Am3t9xc0t03ycGMziE3gWWVZFvQUnXRkvvH+aJpOHVWQ
V5OrI2jowS6P2lO4wstp8CyM5z+RwV2qz17CEl6paMBylONMOHRQbNOIqUq8/3w2z+GJe8eBIz5+
e1Rlw6zqhfIA0rx4CofA7UR3nkB3h7zwzLt/dAlWz2yxifAu9Z9W+JPSMyp6njm+AnD5Q+bNXtvH
1279yxMLzBL+eHe5lwJn2WfHNDJNcR6A9yC8x72L3no/TP5VBsvDI2PF6pqpt+m/xYDj5tDlf0lt
258L7Yc9iuwuq9UtQB5gwItyJ9QoiEzb9ADIL5viFzu30hacuawVPUdgH/OhLYnNAURoiBFO5zcl
e/odjmHrIHTu8gMhqO9o3eo0o2I4RP0AHKWcNEm3/Wf7V2oDyVeKVobe+QqwvsCi56Jt/qgNUYqM
IDTL2KY5+LAR0ZGmsi4ax8rDmwgjYZvnRe7WIluh8rOADWd9Hb8iNZC2v1k9mZC9HnyCQ7K3ZQph
4iQmq08C8k5mVCaY3r9Ief9HItwW2Of05+2ggMrkNJ2bS0VHuNqhU+9+GUn6q8A3phntlny5IdpH
PwFdgVJXL3zyKVmW7I4yAKPqcCC4zn44ROdEOEQf9H156N3YbYaDvMVkQb1EipLwjxZOoeyT+j2K
w5uJhYxwQMalmyBJGqsIS81IsRusotra194cp9YI2fla8vPcPmilSj6auFSd83n2P2jly6lGrzY0
iiGcrqaR6i4HcNdbuGbCgU+ash2+AnilWYGYH69cpy4271J3EAQdyNtgzUY9f7gsudwi+2KB8apj
E6YTdcUeB74RJv2BKb51vG+hoyjuUfu6P8ROaNhjTvKITE7LLS3TtJzNu7hQfRdErqpmxavO2izu
uf2IUeDnOQo9FBGdiTqqD5KCIDOihQ44OOa6b9tPTvmLTSNtd7F1GoQfHmFGN5Mu3sBGiDNeWobs
KItmhtokaXJIKWkFY7NC6pQYKT0Lk8EbcNPEMuiv1kfH9ZRItRfPC1DoyEZrKIeGwWhOEJIVMI21
Bcw2r8oiZiy/FtjbooyRcz9nGozRAaNMuGZg9/ccfrxYZ9EZbMM61t0lreVQ2HZDlG2/UoDVa7dx
LNhYki2iHR4lwGJ/PGjbyj98J4/ZDJR6W3aZaF/osYrmGgNT0ThUTe+cl0HiQRH5yryyQ2JTjmiQ
ozVMe3nayxTSLXVs1zofDQT1QtN6VLj+iIINcszwgfyHDlG0z5EhW0Wa47MyXkoljkq2Jkfa5pMF
Q+wYQ1e1oqkgL8e4xFmQwEn/q7McVk46py4RdwIwzW63kw1h2lkykZLSZBnNW+rcZZVjv96m6pj7
5D+eon7lSoNKm9pLBQzrfYxc/v0r+aeaS2BOqabrrL7SWQ6NntBtCRLk8K2fZYNvlykKS3QyOa9D
UTIwCb/Z9E0ZMYBSeHtSCve/Dt1gMluvR0x50/K1ckhdjf2zYC6Ku/f7D0Xi9cEeDKLdeZg5Cnqk
mtM7xlYXFmDaugkbpTjFlOuA+bKPHzfNWBdkLVc79wwADpl6PUyszzudqcITlA7CfwyWvE8qQnZU
zpmAb9HqPYmtIMSrBb9idthtrOIa65VQdvgbJo1n4nyyNB9yATbmnrUCnlPImMsYPykbRS4+w7GZ
BaD2DjRyV22F7PN+leS82k0xY9iuCfWVR0MMb5MBts/PudcZLYFkmwRFHTCw2VPTUSR1yq2HcehK
nNM4q0dazk3Merayy2Ke0Xu16fz0dyHU1uZBxU7TQ8d17LS9ZuyDp0pWVBQnFyAjD4A3zCqcDelo
gLbDhAafoP41iGoeVvFVXhT5/8RIdYt373s8qgR7mMpHfiAq2oeIl0CQXt/yLyzujWPEw6cEA4TA
HdxZnPy+JPf5S0uJsIZrt2/At3CyRAhYyqUO50ckh4uJmWJojNG7cWY+rAElGyYPW6MuHEAHHagf
H8GKk0C0i2S/XJRFLC80p+O0fkmizi/7NZ43/Qc/qO7h+ouGCgmarleLoSYAsHiaO2EgrtdwXt/1
GSqtmERdKANDQ7cY7HJrqhYJEO3lVQ+aqkQTKTvbsRFO2DMiLvdvNe/t+FP+KWN+5PM35QoDBKhq
8wxnRq2LOjlBIBI+c4AgvkAgr6igxKm1yPGVHikB6Dfvg4qzn1dxVQsQgVSlA/jv79KM3McxrZAF
nXEBOTlzfLGOm0RGN0iZiSQIKVDj/lFRQaXbdcq5LUDvWunOY4zpgpS9UcC6VNPxKF89s9/oUvTY
aV9F1Q/d/T9e2VG83K4nzGfIH7ndL/6YYLPpcev22DC+gnHxizC3Id7h6NKR1hqpVSGfgAf4EU8F
oDJFMXpiHj5bwZvnPQ5WS9s/lWA466x/B4NhzSfEFfS+HnVhiAO1bqSpGRsSV2fg+NFt+F5/EfYC
qOTWlDmHx0IYxtBH3O2qe1p9zreRVKgc9ZX+/2TwiUBNlrQkrCS5brxv0Z/9EfeEE76ryPP40nVg
B8hdqGh9gAPK0DcK/ebeHjZcPOLxDmqd87TvuQuY8HadXgq/gw5xTeOwI/adNAoQcKo3Mj4zVe8u
ktaGQxKVqd51vQxhQ6900xr3ZNaNc7qy1pnOCYWXl71JLn1UKX6DbTfbFBD/eJ5+lCmFoRmEf7o9
ihRqcED0PATTvn09BrIdE3+oZCJTYHYAREyKLCu1ULJzwS2HvYP+efTgWfvTCmpnl3Pq25HU0rWf
tWW28MNLvIax1lZgIeyht5i+waz/9DPY6u2DQqqxDOeSknbWcYzx9MTqjvjh9Is2jItVqxckYCkY
i+pfoFKdpGATM+h552i3+ooGLcTgwFWjwtpIis+u22o1IBQ0YKn2vNG+B4W/yn5W//DZDir6XqiT
Ud2wJQU2mA0AyvowU4G7g8l+QP7YZYlcnRNpTp6HJpLMASvVTpLjMmqricQFgmLzVMJ31Txi3NJb
vglX2qvsewYRWZDeulAzLNVl2X9MVrdYPjeuwBkl2mPmvOZ9vspVCmVQBLfpZPrRG6+s0PlSsTNi
Vg//mawMZvjXNJSeLst5b/KfRymVtkuII/KrDG7TKRzUMx8ApuuY72iY4KZg52i/jFu32n6LdUTA
GQ+gUmCJY5id7mWeNi1QT6Ljy7yRIKIDJSNhHEhnqNLIS9X/0lAIHEkPpve7whcL93ZlL8yfSZtf
0y1yGY49VmJEIT1KF1rwMUsImlVCaGYR0lCIhmgzLDvQwSXg4bVW30VINwb0730LSR/fhJUkLvmt
tI+iYtdbat+qsqVsrwxZrECQGBeL3PoUXCldMlyzPa15Mj+htTtaPtt7w458EyAfXnY4+8b3j58v
Qkjgph/XAOkUjrsS3YLcSbXeEzJYDNog51+rSt+vyswSeit+QXYfbOi3mgytOEW1DBMKpOSiZczg
cDyPD9uQX34tODMJ91De8dRNN+OB5j7AxjYykBmk/GR04/6tux9aw6Cre2cjrlovxIchIZ4CUB7O
a6rcMDdNWVAjeaGJrbkos6FgLWloy24ZuCP6K3TVlvBoOD0h5fVy+WrZNf+13e0LU9pUv06o6TtM
rhw++zqU3MXVKjRMKAQgNYFx8UmTTwdCRn77h6np1xPNYFYgDu3yZYR58XgsPH/SOXqUSBZ86Ovf
QJCH97nSsAcBaWRRhOzTS8tOyrBpQ/RXL0ITyGVcEXDtCh4yFteGbBCZBu+1oWN3mC1aWfqC2Fbn
OtEqyPOhAoEmxotjzajb6BQe1ES4zyBHg+UbmpkLxFTW+fljb5O3mgpHT5NQcZG2AkFsQgD0/eUE
3O3vHj+HYjCv3e/BWIMCQfdhqC//w1x0JoRp1VjDRR9xswuZ0IybNbNVePKSUA/dPAK5bUA23+F7
Q2dpFU0ORaXbX+lw6tVMSLH/f9sZHGa2RxMP9Q27LpUtKu9S8djZKz2ztrsMGA5w7nIumfF+DUb6
1V3bgOIABHSe4oe/Chd9XhlZ/wnqzf0r3wK4CyPwrv+IQ18yodu2BxEmwZ53p04F5HLuC84PkVVX
ziR1AnrWs9Y91jMb+7j6Jp4QCSbtly/kNwMcfMqa+MGFvX9OTPSoq6NXIbkvazbMYxKj5j/yqUto
qCWaJZEACLULixgmW++fDZ2kVG1IDZFsZOmKFHYOeq8tKCsG4ExDiOm0phABTFmi3XEVSv4XdwH/
+tKwNSW0dZcklfaqsD7KTgjWA8Q2vtudG97kiSLDpFa7vYb98D+EyM26fM0B3GfIm/rmwauELdAc
Dg8yrU0SqUB/tfcHaStQr7P2zgoZave18BkPHrVFrcBNtDMKfwJKiMsHLpWMYDBAp/N8EWx53Opv
ESRfMalfgEhMMzi5t1tOGqg3PgyfwrCEugH1SJH7i4WmRTU0bo3reC5jNorw/FHhXmCrPGZuouTu
yfQDTaxN4rOxQDj9Vl1kC/a6wxjDona5ulLg7uXE/1Re2N/55vuPTXI9Y7/u2+Lu4jtJMmLzPdJd
O+aHIPCMSvm/JRhmOZhdpi/jeChXfPSR8YUXZfIDi5Iw7DuCpOvs/NCjhoyZa+jVFOJ/q6QNeNZF
eOJ2z+JbC0w2N8yx6FjYgOw19VfsSlL++FwAIrC5+eZcZ//b7d8DMQ8I3N+0FHWJ4QnSKpIuFZzQ
13kgrTEBiP2vLgmhcewtkefQgpHQR9MkpzVnlM2i7NEc34QiTrIdRRF3lLM9oUgQSLaJsvhIv8Yz
027kUsJjd/pRATZTvcNDbVq5s0yX036CYmdz8e25xIiptJ9i+KEusdCFK3V5RIjl6LFkH3r64F74
0S4jarI71PR/H5QaywqoNKvsCqKLKOPoDC2h1+GtEgTCaIzbFxvEHhvsSpWIzMceVhv+LuCJtv3I
LF0mXvWpCpl+funDjUM8WgD7bqhqWGYpr4/akUfi/XADNUck7rrnq+qsbDJP4COe/84YSziwm85+
ODr1jREVpZ0P5wgIedSC3zLCSw+kVyAxoUDOOBwEM2lemZ8HyuWmneb0hRsAxNHQKtBywP1OPwKF
kilvnz1gUJ3euy821XadGZ+Yl9GAjAqZlLYIDvpu8Rp4ZihqPs4IPxYSFx8FuZyExmCC09mZG6Fd
SQzJmt9OmAYDY8HcDvnBoj2rwjNNe1VoDPK1WRWtKqyYY3y+AJuT+moiW1ec3j6u2SgRX1ZjCYQl
w5J4z95JYL0yV0rGfXBL38X4qPxgiv4fKvDA/t1sgkxWlneLTyLgGdny7mXSUFb9kEmf/O7w2erq
zFqity62I0x1PemrjTEUWTdUe9bcTKCrh8JQlG6rGpIRqRJxjUhrA/cwbwRvBkbWgM78yp3t3bvR
hoNVZOypYEyubMGg0xB9XsBW4AQQmpfEcvZHFIHyEvAlD7EfCUKaWXl8oBb45sbJuwa6LCFTZSBe
Nx20yR4XP0JFcXYXsHsvy7x1qNLbctOz1oV4ZoSC3UrvJ7fCd7dpS7oynVx1Pmz7hvrg9JsbPrnB
Ax2jrpyT+70uekG6BsetrtyAnQ7b9IjlPQDkeeK6EPx2aP3I89XX6pgw/RAEvCfQqVtlxelDatNX
sVdmxSqLb943aKHAGShlZUST5s7OSYJtPjwuEd24SPjBFRNrODcfUiFu20laJjOJw+3nE8JMCLco
FxRuSm7+UTrCGxgAYP6x1inzbzQ3B4KUPT6zxhFIjMFhZbBC4ejmtx7zi7zgX4xqEimehG/0nefE
pFKfllOZnjqVVBkGVR3fIRe7ee/9we4y4UNqduxpoqNq0Wu1UZZZ8CP7kRXqC8NZw5hTphkUR6Mj
yrSMDIHIXl6fVdX+Om1v48NmxN8BNwdVFqXxCCLuU+FbIi3Vg7sz6HtJMdsGjlqwquLEs1m3SEnV
/Ty5N7zNaZ6dp5kaPImORQIe69/UZKVFDOAbpaR8Zh1uEcfUrWr2lGn3RcWAFLNmG3tXpJ8aud9T
NHjHDqOVaEXCufv63QuWPz6lQWPJ1KnGOmJ0Fbj46P0eXYLdNTPP6hNcp3ZRJJFq2q7UpxcPCJQd
n1qlZRa06pTDb6BpBfWEZ3Sv8Ac0TyvPaw8SpBdHH6baO+qIG1JPVd77CBtyZDLtXZ2TATMrxF3C
KFT+gwc3753HysHQar8mQg/aTLOfMoifg3lTEzxWDd9YAihkkcNHqoI2maCInkVPELTdezd7yEeW
yZGY+Wgt334ymcGZtVJjoApQtkqmyDc46yCnhVrmiIGjIY+NQg9YcDTFuEiilMh5AZWFD8uDzCx5
BvO5k2IgjvCz92+OmhdU2RvKaiX8v/1ul7TiMsKedHxRbbPdEZh0YuqRR9U9IXzVhU4XINlGB84H
QhrDB1op0m1qPLLU8jkj5W6Um62sCsEi5HsOKZu6GoZfsZVMU4EQYONTz/uAw/d7EcL/sbKaIypC
37NpA1AHfqQ5KuQpWmnwMMtmz4J/hndTJhP3mi87rdirlO+Yy4CB2EftzvmVCH29YgpKxXlOo1XF
YNhv4cWRA8fyaKRm93xsiAs9xsUysfmui6Y7S6IcSczJa5JWZVS+nZTbvFG2f8Vd+FKABT5PKyo2
jXLJty4+2EufuJxPFYhGbEAk1yz+Lk6lZ73BWI2h9I9Lx6Z9D0Ur7/r5E0IfaTn2rK3+K6xize3L
Q5UzH5CJztwhkm45ptzbiKytDXjj+Br8qGoo7LRAqKqr0xbc1a9B6fSSHW6d9KqcF6Ln+DYffj7m
BrxJ0cYvgQwlUfwL14gYNMwHnr0gaIT1cS/RMJ9K3UNgIefxPaPvFXqEi2oUfVTFEL511e5Me02N
JTJHDahm6+UR5Bg28uWK/fXQ3uwG8i8bqbyB59sRefMija15Hsaeee3PRB5ww8ZWUWY9IsgbYozp
8Gewha7RwUYZZU4qtLkCdMroPCQzvKAVd5zMC8vUZ25Q6cZ6GY3/2YJxNeoU3E+qIphYDu+EreTC
dsfn0sdWboLi4BR0qK7AkFV6mWHaz8K3RSc5WQZu07hZ2lS5dFY33CMX8qxTSZYs/AxaBpqNX+bh
x0oEU/5XYy0o7R78Flr/DHvTUqagMbMYqOapk2oac5oopFyRom4ik4cYsUIWdemAOGjoYRKZFK3R
4VdXyNAlFjq9US3i1/vS8sBTBpSc8wUu4q3jqlYbtHxe89KTf7zyz7co9M+MyCyX+phqiPyeyow9
kPhi7uYoRHP2gv8n7vw3K1EDtestNtriy/BotEea1yAhO0+LxX1HZ79gBSwPtFF0bvjsU2chgBNG
+IrNzSt/6ey1FdETKW3vSPwcnaV9LbGTHlR8/gozIsZGdN/v8ZFPHw9kP1HH0LmVz3lp1INwJkY0
+H4EYIiUksUGF7kRMRLQCv9nvoB7bZQkMnZdlNWCXVijLlLDi0VA5Igxnt86vVSRMhRNl6KU79q3
1qlWt01zKmpQh7vgDrt5gfPj4sxSKv6Kc7ZT+Xv/x9nNpyyUsWtu2nViTWM6UbHTfDoKEZnFuqCK
FmsEussuchwKj987lEmvY/WohdS5TAD6BVi3Iikl+MTSYLcwJbtXHYhb3pzrnjycEtXaBr9FwEAS
8A5LgBtXTF+Xj2ZWcE1+tUaxo4KBhl18m3EQgu6MI4XIZMGSJVnIisE/yi7RYi0plYeoH7AtOMA0
oQr2L9NcXI2T1hzIrERHCyHN3HUhJN7RH5yyK76ZqUMCkG2ZKbgyoRAdTYZvsFePEwtWx2FFi8we
7kqhlTDdZb+ujQd4wzPtzNDAzrtxotz/jhUOjYwFBejP/ZG2G219WLB9LPGGIO0qVccjfkOHX4g+
8dPPJoJoN7hv9wvBBvm4P0arCawKcOV5MTB+/vGjWtJCWuvvnSaVnyU5aiH84napgi1HhSbhplIG
FzsgoFBSYyo6gM1PpkKYybNVCmRNOcoe4UUaTOcBwoBpDStLK2lCOWg300Ay50oQ9zD0LshmlXMx
tKvhL+2Fb23my1SOPsAR8XSFpXyoKHQdwUW/4QAVplcYcE0vXM5GHxPmnSeqc/UQahAdUWWv/qWr
24EgOB2H6pTcF+Oew3nWMo66xLUQbSdyEBBFTmMd6okkIJeiGS8RGNWPQT0jhphUiZe+K80MN6fb
TMIqOMzQb9RBgodkqIH8ZYaEJHXU/lCfsirxgRpfcHZ6Anb1zqmtMn3plffqDbUyLjiP8iO3leib
7y7bRIWykm/9hxP+HoW7uAtvAGilYcwKsfOe8lZPjf64E6lysiN0zeSvv6DlrDHjYJnfoiy3rWLa
OofFw6gfUNRB2llr383Rqw9cEhNgc9dW8aAS9dMyq4q+4cXR7rke97tHFLpeaksngi9/vit9wFfq
7Nz1rtfCewkOlQqtD6sxGRB/E3LZl5NMSrd8gmR9waq7qXo5Onj6SLYuCLu5p223VyFg39mnz/HG
alUfF7uGgAcYzIbqNjx14BW1kw8cgEs+Yp7GW7wxe43Fw0C4vQJ4dXJt2wuaakPeM3Yr2LO68Xlg
ZanmNaOdAf+nkQu4z9/53Bjz7Cdik7GHNACGRSTqiMmDZHKO5jVVGjEs5jKNiavQVnVOrbBYYVh6
RV9CGIBij3YSfQ9quDeLEtXttFscERUDwnpxF92Er1g7jiav3PIjIuXKrcIMLzJBEuX5gxrSz67n
40+Ao3v/dteUkb19edy1Wr43cNJHORYtNLpp8PoS8PMiBRQJtlaWJ0lcunUrCvP4vUvrQ5wYrFdw
MyXXN5faS5SWmmhMi9Tjcod1oELSuqaPYvpK43xHm2A3G8sGPVeZLxMKbucvs1UQM73ja9ISYtwx
EToAHIt7V7oLzkF3oOFrSIWabYALIoDcZnazArDgTrsNzRSC0g3VWcjgaveogU8nYvxk+AODwG9X
Hbltf/0/LCxMtGTaA0TUE/7yfuwkxKfT48fvVUckUj7+SYFTOmHATcAhTzvgXXmQMHZBI8YrKfwp
E3jfLRyTaGpsZQVJx8y0bkPSgir+iwfl6rOk6HgtFbsxyDgRk7pkEP+rC77kl+My/9ObAqIZ0KFD
2m8R1J12PoiU5l6YAj9j/ywQ/gAH+XP8eSltb9lJ9xE+fbfiaSVGCNBPG+1P4ZreWjnifGYFpv1T
HiHLiMb4onoXF5o7lv0QeOnrUcV6z6rUTkh6EoteVhJZT6PJKy43HNLZWM5Eo8sTzIIGebiOTgk6
KU1AmYeAzNORzHipPjru+JQglwVciUTbx5a0fPENaFtzLs4TSZXgIDpLnf6zHfCxTr0qBCxCVQv4
GZqqaG07HalBUvnqXZ5MNK9RfoIT3TMOHVZlzPQQzfUehXJVnaCXXwZDDVXeoxxCqc4a3qfYSYz8
1H5F1TH4i4ZO8qT2r8R+H6WDv6f7a9sFNby6RvB5N3UPW+aQKVqX9TOarG/DahWguXm5twaeBREF
OQQeADqW9cvebZBvafp17UUJ/cL+WxgKYTgrBUH5W4wwlgK64jyMyk/jlPDjb/NleRGL66XVa7VP
qJ8vOIyCGIKHEWzuDCjGhg3B2ws/Eq+Zw7uIGOrnt+sc4OPzVIBZvC+ai5k5suZ38rMZMBgv6X8u
Dy7vHNlXGpvqDGMp3Vo7hCvU0Q1d6KEUMjKN4SbkmjvLDtprifKgkyyzq7vWktytoUwxrLcYZmSx
viZr6CQ9Kh6uHNdclUYgwbLQnLESJ4ZSh8kZBSrXczsJlEIWjfT3yWuF4U/MYJQfx72yz4DqTctw
TbfQagFCVIjg1dDjK7pvp4dLc2MgIh6X92/ftSXYCkrbTckInH7oERK7kZt6b6W4vBMe92hjgFEv
lByiNH4gOGqSI4/DL0WkuaIzo8GzYprypPgoqvAxQG3b5wmmUJ5yd1guq6CH0AN9OVhc40FM9Jit
bt/AGLP7cFo3kOfo205H7BqrDCPaT8wwgRd1smwWcddu2mSCKNAjYLCZ7xErPz5qnDSG0raZSKnN
I8I9twglXpMgTBDFAA8STiUO1dCbbv2yGVHyjgP0tJSlVuC8AXJbG10pbdDpkLmPB6+Frb+ahu/q
cDpX2pw91CACK1AJeEO/gq2iThI4mIO2YW2SUGPVUkTZ6P0YACTvUcx+qBEDGiripJ/uERDtMsuv
HVtZ1eCnVYmJql9FZEa8TVq+CG9TTmcLLqFnenhWVGayOY2yV66XbtTMpw/fLl251dIzyZ6fN9FE
7UVi+QU+OKSFEbOHJ68BtDQxSQXfcCN6G91cJuAndmE73I3ly+6Ij6SF7YCSNsXg/+8Zd7dKoDn4
0WM2deX+5igCSFfk7CULPdBIdwUdEfzprTeBenosViOjLfSJFfaDIcoI17jXh5ZD6SifccjDY5TN
iyjIIzJGyFhszxEBQNXfRpTi1gkCb4Yb9cSmYHinEGc62qcxMZh09Jh1MkO0TK63asTqZPX49yxA
fs/WRlxz1dvw39B4WnGCYuAa0AgF9JoMUIfM2wf+H+b5/yWJPtOA0le3EFqCze4dhGmg7qyLQv0h
azvdrgkeqxFEJfNoAXeQQB/sEzqtQb6new9iDrFNgNrDLP7oXV5M38hhJUEjm4h1xhhJMRIqMToQ
EpUbgajDXcG5NqKNbgVss2a+Uf8cpEAahJbr9H/5ZxtBRi78IRHzEOZXFOVPqYm1yKevWh7kR1Qn
JjBeoj0gd8BeoUDF7tgpQEytnCmFpXWzsABWJZsZORPaecI/3b8G2tJDoNzyW+FT47qB1HzqO9XI
B6DPE0v+m6bl/I2o8zAK+ONQb79LAAQ9z8XT+kbi/a9VfM7yWeFs8vktbOheYM+E8rIghVEsaMNX
ztEs17CG5yuBCE2eiZtjlD2pzsK5vCCcznIfJKrcm9xXyQxCnP2ds65dksOYYr6Z4JYVnvE+tbXI
VvYZf7ZMqijlZ8pi0FQWZe8G5b9MZoj6V0ykuEg6XL/Rx+TPvObkBCxnn5KvvFR+Rqmr7ka8miyp
NGwQYQwSJb27BgNlmnebPp5xmRkXpKt9o5TznTjtWtZ8pvU4bMSSIRvSA1PbLcyDqI8GJNToLR5z
oq9WloKauRo6NHurCsVxulP2tqBiQDtUtYEG0UEXLnZlZTkkV3pQotlYjEyK4oWEq3zq+GBcqD71
yae7M1j1GBNQN2bogJsAxoNkE7Trw0+PplvEsjmOXnc2bLuH3vq/vQcuYlprm3zwz+A5zV7diMNK
/Mr8WIo6jqsuIxCBB/A8HPd40iMukDQbKtyxsUbaxTWVuymsuJOMOX/chy5Y0MVHFrJhcqlPPlxa
j70QXprkmNXTXf5H1rqY5DyWF7Qnp2ZeR1zvcN/pnrkRuNxa8f8ipwGwIHMMsM+bjJNK0PlDMAXy
9E2gJ8tiK3vH9vhwQB7PgmztdxWV5eO0WVCSO7zeMs7T9l1yhwnZ00aphTYOmnXwr45tOmMOvBMf
OLRcJ4xbTRM9FYXTe/QH1r9TaQkB7niKU7pkzzRb7aRyj4lRhyyyzHy5/lZ42mx314S+0Sfl2t2G
MGdwt8gNaO2gpaUzMhZ1FvygXv1VRaoPsDj62BGIndfDpZPK4AAUv8qovCw+AkRRQxO9EbEe2TZK
2Is3gTCcQNyUOX5v/074X1gV1RaGWHFj7NlkkhOl6yXunHA6wViNIgFovgiIWiaxlhMM5ngXrRZ+
zQLhQGXaWjfrg3ESD9Yr1ajpgkcuM3l8j/E3022vAmIEWR61T6KnrlgZUQmQhznngmnXPXW5JLW9
lPeKczkFbIcz+Xi0R/7AQyFP3VdehbkhKUHcp3Uz7aNtC9AH9gUW80Yg5k5k4APRcDCfOqmKVPv0
b0O20p+NDrmlmB8cxcw+G5eX4Wc8MIdGhh+qPKBEqvEECFYKACFZg4ki16J0e1fCTT523Ls31/4i
g3DYYqe+AedXEVBjTo0klQXgiGeBUkio0JBT+oVP2jK/PUf2skzX9uqqF9qJWBRXbi0M0d686DfI
KFtav/JQtdzq6irg/fFvMQO3DHglKyT9adBQmQ0Ly05hGtovjShHf29BMYiCkvOpyLwUgDehAd17
qMOTyo7DjIzk5SjLJkkDWwUFauBYMEX4rYSkNPeXgtqAEe1dTs2XpDn3F20WsTTteYJABx4gdNKh
DVG3iQ08loTbfKsSVF2wDq1dVig4Pe6KSphU5qCWfpuX7IErLZHokXiafSekX59SY6RY0aYBnptT
VxCtnr0JTQhIv66sZPEDtgmpXktxkcOIZZIgdN7rq/A3+calJyVtnWeWR0v0VQ25Y9IHJ9ysrFta
M/fjsVvVV5JxNgEQr9P4vhj2iqkm5Pufl/9G9ozSyruJ+rByeJPRyHXP9KvAkmdeqHdYCZtqGKqH
QGd1ETdK+L4jMUjiz0m7Yn+lZyzz/FETOfhebkfArxitxW/Eino9S+DyHOEZtdK6XJPEKcD+HEkS
HUPhQf+yk5FAmP7brw17ZH7BdcQ8+JJb26GsxnRBpAi5rAFXs25c3TGrRDzZzScLhrHhWUWPm7Sb
kbegG6Y3drXwO1zfkP9+QKmYLgw9Gs08T2Q1vm8ARRjbMZnA6CwBmtA7BuJ1I51NIJapmzLuPAk3
LysKh1h2H34XIvg5AtSg6+IpRS+lcoW5h0xZ0a0kn3SEI45RIHN1lrrIT5ogDexTmEPv89+FpqU0
zeMVkoUg3Vtz4s/sCJr8aOBTCizD3PolljCdcN16xACgm5uAc+C8XWJr77jJNvMGxH60ZYPIUQyt
t2Deb1IO+J0ouPtn9wguhadZl2g4o5RD8r0yQIRCGc+I7j6w+dC2u75+YjKzXJw+gDwD/MR8yOv6
kIkm2ymDc3sp18wHzKnS+UwkmNMecAYKr40DzzdiA58lJHrtXFtMHIoAuIkE/rYFomwqaB4WfP22
NZRU18Jnr/YDpt7T/DTE5LLVefiGyqKK9RFGMiocaBICPqj7UJw4KW5iHYIKx+bNwq0yDyBT2rlU
xG3OqMiLE5xY3WHyLxVQkOaGuGAwQCTUnLIPwld/V2X2U8qSdDmYbAbp2JqG3+9GQdMby82sq2lQ
xD5t2Zrr5OmHcgBVmSbSJ69FbO2qZEIZB0gaSPYhNoMTTGuktbQmTFgltCXQzwTMlxix5ZikSVlY
07EVFVQzwQgglQ7QI3op6FL71igMLn9uYNz4VUUsj3T4V1xC+mLFVSjd7IZNsdP5boQuVuDKR1a+
BHcLUZHR+pGaS23X/leX9nK0iqxwcYlghE9Zf0JBDicU+LnD6h46VsflQCGKNjgjUoJq5nUqUzh6
7p5RTVyZ7g7oqNhnnl1Y8x3XdRfzqHHL3KUd49sFZ8O4P7mFAoh5SnJZLEO3BXYBYLA9bGPN34xh
a15GQSL0gHtnIAejf2/uUBkGTghGCuLZ7pWw/TGEvyQ7yKUrsOWVqT3fXgIS5em6q3JNtiNsUH8F
54vcuXEeEOF82kTNS1a6Dtz1s46mJePOVJ/c9u2w4i6kra1ZGL0UHAE/py8cQzVQsHFT1Qjh3fzG
QLyZH/EWOhFz9TiP03uUgjkVu+NoVaHW4rsn5UrkZP6wqrx0IijqSJnN0UOt/hPRonY/3ukQBvDf
vWD9OY3axyAp6UgkMzxX+PZHTplTQSRoKuHIMmwi9zN0JJwj8YLb6zeWOtabSYv/7o6EbJIZakcP
qVwRg1VtisStLMq1xdEGsZ3iSCRFtXWrsGYzs5Tmz3fAVK4xeqQLp5z18bl1ZhBIba/nDWWDBc2K
cerBFYFtGW4FnwdY3vO/mk2GsMdfDShtXWaPFdGyCf0NcY5xJsSuEXkPyrswEeNASyZmKYPpm2yP
plYt1GzUkeEpPI+GuM78eT2OTcDjZaUHem4pvhWn3rJpeYw/1TCasb1OY5AB5AILEdLWbW4kG+ML
ap+fQ/PB/Bqc7afpuUSbmFxDWWLAJJ40UeQbLLov5vS7QuCeoIUpUHo+BN80uWRzqqW/91nf/Q0K
3OqoSGEcuhkTS9pxhWZGIH5uIJEEwHFi9vIDEyiyQR5/28Xb0Gg9LLogipJi0Sf7DZd24GOEZXVC
9yS+qAi2YpuH6c6Zu7O3iBXkv347aTl+6l8TDcFubLQE1NaYyuvyXgY0GY7Iws3g26Rxl+xBpVlq
Ce5WDXWyD9GFqx8dmZghkatE4QdAHxmuSAETuhSZEgozYU5NcalnE1d+uL4YaHvryxHuo/BFb3Ti
UG4UscOzXMUzoUicPGobOxK3lfx1bpEjxyOWp+iAQeqsnD8F2AcSsvik1sDcZI3CiD+2UE/F5W3d
rCvt8352u6BtFo9iCJkqQdr4WnVqAxsHYybKs5suob1kJEe8hshtyQHxhULn8QZyskMIJ1lDEje7
4jdaYO773n0m+ORuYUxXV8YI4X9uUXUPCYYCcUOK0gJNuRXrbOhUD9d2nXWqQbPwrRd2EpEAA1eG
jQVqT1Klpm5dR51UMD3Lnv79S/y+St+6QEdI1KF9+yzl3Ka50zujTqSZR46i1TUskZ6K/Odm0o5Q
5CXagddnSJu7eWXv2ikzgHuJjnfq+lgd3ZJRzqqeWITHb6jx0nXAnSLT/+YYOi4TCyDGuwmDzofK
f/75mUjAL8bhpCGxZzHY9uSUd8CqIzQK3aFoAKIR4SEtohRWrq2C4PhJPDWta94IsEtsnIPaChU/
kxbRyQx6T3KY0Znyh8HkAqSNvMW65tYiP5uWdakcElBUxuy+Loe4B2EXVHVI+d6gyK1QKSYUIK+J
RUwzj5/lUhze4J92aH97QCletl+y3JtOl+43DqVtxJJIrF3umD3y84anLloC2n93BipXUB8mFu97
FKI/BTumnktqLalKI3q2FxbNehDH3bJRnW1qYjcmNsG4dozr1PvuGe8AandeL6zRcWZsyiSU4vUO
IbDeW1ARJyqN5FDS8bfExOV2IkGnElViQhfcr7T6yvWyuIBct4Isl+70fv7M/sdVSqdn0EaShuHt
FHs76ZgW0GZR+zXQLpWTXTJvsEsj8rzEeEbHvgBo6z1VCC01JRL0cfVwQ14CAET0d5tiIPmE5SIT
TvMEIaiIkybTRMFbmGOfO7oi29ZiF88qGCH/Pmn0AlNDkcQ22P9skSBYExt9lJ9QREZGfyDDceQB
WmmOdHnHMHPquup8GaSGkykgfo8E11osH/A+BsgFruPQF6rObIb+lxFTCnTvXLHYKMi4Ys6GV8VA
+fKI0nUdZXgVvOH2vBwNDOrsa/pFOtClpFzio6yGV5l/JfpHPFr0ofitb87EoyZOlRrEVqfGUr5S
2hWoiRhgfkH5Mw92FAeekQdVQAwaad+f2FX2xktHLP6T0B0+dEoXZlM7KU2hh+MFB0nx/gzUIbcz
uoqVwcpic+Z9J3cdnYOjTYtqjr/em2Tyi1Hm779sJdCjqHkdarPRcUCu8rXxAmNhYBZofCCkXYcc
pV8M4egdfPgGEM2Gzq/K+6Qq95W69bgnSRA2tyAF2HFgACYv4qgJ7V/XA9MTlIopgNExbqSHl8yQ
cwJDi1OaYF5i2E3p24bMK/N6jRK0l+nEpqI5FvrlcOlNGqvM5BbeBeRj67qvicEdG4qpWmhRfg0n
uMr9q6Cy0uA8xJ2JyOenI9opvbN/70KzsEhaufUwL34xSOK/dMTxUNcN7nxkgVI0AHXNqHUIwm72
pWEuGiNDMK1Jl7/CYDuBPn00DB9y4nw9RupF4bb3CrvaKB9AzL74pOFOs3PsSFd4vZ58NSPMo5Os
5gNhUnoRcOnORXJIR6DsleRfg5emJ8no2S4vyWBpDJ7f7SDsDHf4sHN4e/FCHersUOjUyCiFGa/E
AJE/5Oyta9tXFL0mWxDgj406aApAJJ9dpsdyRxvgKZzy6FwQ4sEsI8xkBIuW/TfJ1XAij1JAFS/r
w9HiDtBhDrZbqKr5Dbb6mP9AdMnB0Szdy86pR0uyiSdMEeJVu+V2mTGFvj0Ct691SoRiansnGgiP
9KBTpU5gvhMhSsQDu0toiqlSixcmCJ7bcQ7rYQr+DLytrlvhIwA6iMK7+1rNx+L82STcGvuzSv2e
TLRzUUGkQBf1fxj17vQcPHChqCoTMZpzfLq7su5DRnFc3e0PxIRGvV604LZegOQS3DxawbpM8RpR
EYn1d3rrk7/xcEQsjQlZTE9c6Gs/nu+GB7bbG1LosyAaqHxe00yo9RcMnwhIwj161Q5QOfq4SKKu
t8/BNUZY4DZGC1BXSDvoRHPc1mFXeSnmc2DHC9RpzOZMgq1dg2gi3ke8opMlh/eAT+aEZeHzFDF0
JO6uAVusVjx78B/AHTVDLZY9L0t5bj8QSzDZiclC3H9Xjl7IjPWXzptRup2vwN+u0xmMl4f0J1Vn
K8Tvs3BjVI4GrqvJTcXQOH3cIFfCUHQvMSZiijWPVSU9W331EqV9GKEp15gW/BVljO3g2F2PXQLC
OuJ+efQltWhOHwPll0qpVTo9YRi2ZNvuda+OxNAnndT+/QmbRFG6/TJ6Ek5bEhH0n/UO0ttURVwf
Iy+IDd1dUTee3lZvPDiM9WGR/utGPQkAp52Q6wryMk/gMON4sDBXXJ4D5F/+uHErhGpXpPXznLrO
CxCmK3qbC9n3s447Et1/fkfa9ASLWccQXpkiIL5TG2/0QDrpG6c4VM6rCh/pY1n039nDIF29y7xn
6A/z57/2WeypBTsQzRPSOisZpAvKTp0NQHUw2XOL+3bmZYYw9xXSzHIi0YwgNKXlJUPz03vEXSQl
i9wiEoNHZhVjMkW/6d4X/PuCyuVH6L6sYGcinKUs4xodw/I3zuCeikhFrd9Xl6qtluiWgPPm3E+b
qt0i1NOiz+3VCxPkgGJPCvrImvxyw49oEdiWCxBCoOV5VZ7iRM6T9/Hlaek+tsOGE1veyKw4jbJq
xZZEJ3C9EaibalLInOFGzsNJykafPQNGEpmTN/DEjFZdJGHl4v8z1UjS8dBuHiUbxJ93xi34RP6k
FtgYIHBS1HQSHAMk0WXnWlbWZcVibXgtx3wJwdsumzBOlUArK5/5+UNf+IFLlShweovuH2NAXvuz
Ztz5ab61amYG0K9ahy4Xiek92GAYynRpXSCPhCWDVCoQkA3sTZ0Inh8+HRqRxMWWDAdB7tgYvYbl
QbcuEFKTYnuLEMMUy3rAiWbce0g4+Q7NP5Enp00vV906r1ZChkphWPjBdu4WJ4+5MBPEmBpO9H1j
n00FehbzLo6sJ2PctqSkfxYhbtzO+JAfRabliv7f9p92VmS/uVcipP9kXBlchwkvA22kqjUHbX5q
+SilxXjCL6nRKRHyNf1KhhOU15Qrc8WCr4sWbeReTuzvaEkQjBkzHiPR+b4rquzr9pFdsrWUTzfk
lUsio1MiBZ6esEbjS3UaiNNOt8k2ngLtYVl5g+Qp3zfAu9mMEzs53ENJO5zBYuEUt9g+1pzH+4Ff
e56R6XSvuaIFLaW0JUGjwaunuYhlZ5B6zbU1zKpGcajl1PwkCg1PZr5q6RGmKKXIwdCtTcyLtIxs
kkThbORyeaxTpWjfLz6C8JhaRH8wnUZCZm7eXZR4FXKQxJI2HcwiegJb+kn28vHgwL9h8VmCt1eD
9/lUbbldRefbt7jSGY+CGVteLo3OwM71iqwEU3P5zECd0cd4LOJzXR0vZglMJfnJd85hBKuVEu8y
BXzJ9bXIyus5tBKDr13Vda9bZjvuZL1CIyR/0ECib86jXW0g6RfR1X60YV327FXx+wtwghKUoJiS
6fi8/TfrgeQ1qVCJlZlnDgGVKMKrJgnS97S9DO54CPKRMl2BQ0ccTnkySyFvcmlDHpHDpZuemtOD
HfbBfY0UKTnjrw7ggNSNxWTvevBI+qiaq28/ohtgN1/lwyPTniVcQb0UHfqP3tu1AAJiLggqUPOt
qMGzLDsIWuFrTMjH8l/xpHy06/NpBNd7SESo0Y+YqeEXo/kN8A4ksW5Zju3jl0f69UMF8V90ulIy
K0jIPYGX6eljhUCL5aVWVRUWCeIScE/3ZwbfXLsdmIaOFiin2oyPX2m1Gv+HzK9DvNtbSiDw6qEC
6i8SZ8vEPim9/v9Q0OnrBV+9YlIOI2MlkjMLMr+2U5f2YPHyXEFPZpYRkWbsloTC5WcL0TQTdY0B
rEoHic7roeFiTuZSdhHnqMCfVmUlTjiHonJ3V5is7y3gjQRfKWM0vVUXGDLR4VqwOTugkWKp1ZsQ
joLd+uXLsH2l24qpmpMROcYYj3KduH+Ok+1Bya00Kt7x6rhoKoIbyFgiG7OZtWb9iH4DwmGfWS6S
2YQ9SlRW2+JqEClPzKBBUrBlVmm7QQVjHMgAwRjQfjNH7tqBPs27QGS2nKNEQisHxNKWnPlT7t+M
4KMYvOSl/P7uXeamOGmdgUpdypJBcPe45xnpyBIYujISezmmoMSg3KzJNPxP/KIh4awiCnnUV27v
vVuTVaNpSoB+qhvHTwp0JDo6q52hvDh2Gr2lEWPabi7dVOcezxZNnoxKyIbQIkNDLpxmxqUKrnt6
8BZuW/JNzQPS38/SyMe+FEVIcOMy7oPQccdFjkNexQRUa6b37j/ZI98W6P5A/rzxi1EyRvHv4bZi
U+I/Tc8XNqptUcPFw2HY5DH+Ewlp+QpadOBuesv/Wr77o/kkjHWFvthSqE1B8IKceVvNPlaUX2Tx
a5FW2eO4Ul5QmFFI9ANDQDyU+Mae2bZoX9BBsaa/QKOYPZuhYjkPH2eL9xNUTmq9HPZIPc9paTuD
Ilv0JJlke+AGSy99pK9T5UHypJkJF+ZhOaf5F9ZFSSFUQ5WaPCyoMO+uG+tHahI6rgnCQRz9IzQ4
suIgGMMkNvJr+jm3fdfAQhNVvbsK3lUldPHtojxK+fTWcxHW+75ygixWEsj0yjdKgCqy1PUVOSPz
Z0T61PVmPDk+UWODp2VReoq5/fUxQ2jlnX9dZzRsh8nDlzPqSP1spRoyDAlt5WABKEAdCIrBHW8S
ZGhQqXI0MpjH4umr/SqkHzNU/AYKM/Un8RP5jmE8NUHpETjIk0+DT1UHxPuTTkDUEkFMlfpTgQ6Q
BPveWVxKwXYmV8pIEvv3Vs8lmfK2emRTsB50N3qYII8L/jUAAasXp+RKeiYzofOyyN+YM2yabBhV
rg5unc1H8/Qz/gIe54+5SvGYh6EwBdb4oQfZKGjOHN2HsHfIm7sE7yI0a1F1iVHB9FsF+EQxMNGz
m/zSayATwHyfQafeiDPuNOisY7N0P/w9azXqNWAjQ7uheGIrm5+gd203DapYH8iw4IWpYdIPrhj2
0KVygGaEgTB+Z60ZEYdpopaqZurr5MpscBQdad7oWkjmRObBn2UR15hDjTIox9gkz6Ve05PsIW+g
k7xwBzist6b3PI+GCOGwB9u2hQICblWP7fxbQxD/AX5cA8IhsoC+5U3rBZ3NCiT6P2kKMSr7PJx1
R1hJKxZdyB7D64XlF1YBFcaSKEmU7OWmbfURIUcfJQE6qIPPK/WzP2yVWDi2gDE46bbq2f8OryBR
Gd4UYP0agor0G9TJJ1r+FD9taY6ZAnCnMueCFhCGjkKqpTEt7B028402otaIq3zGKGsC1TltKUkk
Uf43DEtrpH3H+8EazJawDoEqOa9NvU14chgvYPPZGvrTOfuTpcr/iCZBgKVgv47XIXbVp/ZWaAZk
lx9Tw0wDJnFyGwleChPHz/Re2mqbyxwaKOlD04eJML1dS6XqfkJCds0fwTcN3eExhsgqzfmj3AJW
B4dFjBkEwdf+bX6OOfn0g3iVwCzYsJDW8KBZ6FgaG+LP+P6R70HvUl/Fk1IpCTvClRqukoBXvjhK
b1xFDrgzU6cibsMHYefNzTndcJsgUzWIsVHjR7jFJLbY8Y2abH2aSR01n9JYDlBbyGqYdgl23HAG
6cV4YHC/T+shd3EFX0VDM1yA4zpix3QFp5Gp2kjxbRU2z1NYn8+uUVu4eHMHBuUjvsjQkX1Ahl47
qxm6+Sig0wZz9D8xM/dJ7y3+QlrhzJicrw2fgZPM12ctxdAekDkBlyNTUp376elOdhugj14Xi156
owjfXVNblJtrIijnGtGHxavHW1f7nWVIgdWqHsDhzvqJU8+hhySUuMj0VHHVpbmwIoJ9SDPEo8SF
Phdcji/w68lgWQw6GZNucaDCzS/Idt1pS+UUifb3j3yTzYavuyCfIZToxKnDlLQIvHwKUZi/cnyL
MhwKICeShJGXsfiqg+STbBOlJe2hnvMCfim2pn3NHIVH3sxKJLPbhqhIkeBHxycInLf12K+Ijz3P
TkbHmOVLVDhXEK9Y1cRIoQ4wis43E1SVWkzdqzfKmVfdpp7T2JmmN3WVBA+sjReXxpy/3xaJWsRN
W5HgV8GFCdeZzQrLFHWySHu07JdTvFFE4L9nHo24qinEer4cLJyINikkZfSCgGUz8WlkwExS96t5
HNH4xh69MdLwGeQNqyvH5P4lBLuTG6qm7iTqT65WKV2zgFbwLYX1uC1YynEXZpEmrSa2GuHuC9Xx
9mAHyZ5jr9cEW0MJVF/Tze+JKLeHZuvLpw2wYcM4Hz5svG7n39aei8iGWTO9rhyUygofXnKnYOVF
ABs5AEqOjZNjw19TLSvsQZ/t34tFbYx8nBLoXvnaaOdvVcZ3PN5I4CWBR5tyW+Uz9W6r3+NtxLSP
YlcntfM0GSYOIm+CtaSZlts+MynTRR4coPoYjqyZr4f+rnRjN4a3dTdfOk1cTlpXVAYgiWjzEx3c
I6fHdfdQ2TtSVv88BuLtpFIq5iIlL16WJ/tObemZVXBNUZlmJltnRVF+7DDWcUftfYcHaAYX+QhM
QKDmh+U/eQ73EiHfR/wycGZHVaoTpRCmuVSR1/KkuurbTzCTe32jRp6Zjq7JWcxOD2c3fqOhiV9U
AepbH2MV23lctkVOfqs5pmI8vxo2asvIOSooOPPNXSVl5WQyNkKTTkLP3wuB+bRrsl22huNsmzO2
JMjLKTx6I95uVDaL+7B+YMRnJPfQejs+N1FCf1V53e1k9uV3CfwiVR0O8mepxTtbHnMYtP3NyR7n
KRK4ZA2ZGYePtnH7rhbPFD1R5Jpn+WQlpeJERxfD0ENDdvsagz9OCcKbeMR++cowCUfXV/TRQbyM
Ebp37QTCGThW0eVzmEiFlxdPOWWucjQ7x8b5ELVXiFzE/Tafjkwnk9O9El0IsQK+JYMxkgNZRLHo
I8aV3+e9wnBW/+Dqb8fZDlLpeRuvZURtThtHchfd98kJ9V+AQkKsi1r8MzHs4Pc6tg+eETnGUE/1
6Vpuj79cfxbYuVNF2DYJjkrUnmo+inCdWm/kubiV3TW/FXkkHQeccKcJX81bOxXsF+HgSK2M4Znp
fZbWFM/ewsEPPll+6BGUQtqN70YabMJeh4RKsJJsc5/d6T3y4YjGJdBU7zYg9N2CaHJDGJ7xt3Mo
9nFfSMQvT/RXrrIbQHqAn4qnoboKYjDo68EylUlXN2YSuUV9JUiiVZYCZYNDDH4owkLu+AuYmpvq
KphmA7kOY70bpKCciNxAl1KakmqE9ej0rSe4/8oSIRSvLebXEgbEAFFAWnN4/rD7DMV3lETdv2y3
4xOMnZ8skc8iIyqX2IISxkPADYYkWmouqKYTOH2sb/hS+rvNfTfhzHgITRiACD0kdmjhQqde6/xM
GfzhyAa5xoB4GOATAN4bBETK+/SOikfXT4NxuYojGasg/UHS+c7PgRD5Vef1jPgQddll2Bx50sQE
q2LBbtIb5gAbaH5zHJvtEvnsssb+rY0kp8ejKHeTe6Q0+MCx0VsobCkUegfJkYZlXaCaXu77w2Iu
XFCAS4kgp2inQAimS0YLH6tIRqEQFT49Xl5nefHcFMigzbY8Ydov77twAhFf+YJCAnxoeXpZRaRr
OOMVWj7qVEer4YLE8lVFEUCYp5dfOXMC//rJZwX1gcpPzV4Ljoy6dYtK6wQ7RaxsApLewcoquxPg
tQAedBlTIW5QlTsOkPgHW0J6MWoERZMlNIGdiIqDHdIyVK9k5NVKvjF6Yz9fvj67BkAqsg7RvOJ2
T6hIw/+6xLm/YvGeIBPw6+DT7GKSdq8xsdfqz3DFNTmYvPec04U58Ji70vhRc+y5l9OKdUQP1jZU
EmL1+ed9N7F1sYWNeY/16A795Y6LhA49NKD4/edDnFbcrrHPiHMXogzTw2TJ6ZC8wW6YDQIoj4ep
TXlb6plyN7bwmxGpYe50QuW+wJaBj257liDCS5A9bGR60GcDYmoG0oaUWFOyeFwSE4rcpQ4i2Eyr
ENmtrD0Z1LnKBrpAfhEmX7N3tDked+kgmYLAjPWGjiqDTk+uxnpBvRa47qNF1GvU1RtdgBIbxhZK
xUkMXmoeaiOCmd78zdFqeqD78VE/EOjzaUQdg1/BPdxcY4BhKXk7WW5gfCXT+YmyAp9y163nhpFy
Q2UjwmLrpDpMf8vEltn6NxybSUG7dr0/N715Wfv8znX6tjqGpBP/Wo15nUeUJSeakthDHwQ/sLRt
sBaeg3TCPQ/XLQVG32GRsMbstlTek/4N31cwMyKGt/qTZKTowun9lgILWVkWegSVOP0hnnzQVv1+
o8PAbEcBTpQhJ3MVgwwOLfKLCsfTt0VNIyMkkXpYVLs+7HpXYJXpGLb5WCM5eZMGaadgctIaDjHg
nwz+fT+qxP64fTVOax+diUVxRuFiubRgJwY3pz6zUQLjPFWMWbPTymRvvaW8rBl7nwaMcHe0etcg
HQqODY8Q43zy5AiBq5YfxSTNKu4zEVTEcK8DOkSl1nP3oWI8BACFCHHSSpaYXR22E6lOUblHmouz
kzaUO7i93c2+9uk2ZzteKIlBOwOgizpaYlya3yANyqY/DA5Du+JNe6yz/vNcw4iZW0Hp8lZFX2Sw
JEVtACahItEAWisOrLVd7Zvi3ocIsXPoNbndQQSPR23XuDBw25EwQ8nXogrwAbCdZTgwZMuA0C7c
W5gpV4Ymmlw1Zl1gsCNhJHh9qylxITVeyan2V6yc/kKm0v0fgwyM/cTuR5v4QAN05nYFC8pt4lPE
T2LlirTVRGfkg6Vb5LPm8tYTdqUCvgPeql86mNQ652a3iySWUZ39URjmwzUMTWYq/s2CuzH+oCK7
yaoa6Tb58WxUdSIgGJFJA3zXCshfSMIjF4Li5jF7Hz0dwNa026gbvCZ/N0z4Gjo1dIo3vddDJ2ga
ythdE8kkxHTD2pzgSNoLIqqFeNBzOAOwS4i0M3fVBnK+guP30LLydzVHgbAloMgYKwbvffJWCSTS
9tvcs/CF+v/i3fYWggjxB9DpMNzs/da9KEnOYeTbM/xySZxCCxa6vPQvtruIcWrRapFrPVzPcVns
nxEJYFLpm7NwhO0as5o4cQVNfOHeXhwKGrD2yLOB7UZM6x6mAGZF0h5Wij0ULgAhzOegLoVI+Pn7
H3c7cB5O+1vKKzCNa73dhkgPfOlVBTm2OkZU6vJi2wpDUlXFy5hcp0gL9kG4wB78UVPj2fUFYQqr
8btz8pYIsrin0c5j9QQq07Wa+oDyKtoYnBVHA03hDlH7ml6awikv8VPuQ3BE9ff2zpeeivHTw0oF
/swoAD/nyN5k8o1Qro35I2nKQAUO+PgogWW/vv+Ofgru7PK0JPuqkPIfLpBySZ1+5Eh00dgNEm/9
ifJmhfr+mOkPPvRMtZZPwBEw6MSopujGrIfltL6td8CwYW98X0TvdOQ7AwClXbP57+6rf75EUXfq
JyBrzFl2+OHbRcAgopLIu0qH92FGphd8iZLAQ4Hp0R3LqVrz1UvC0y3JSyxhdi+SnErp0jzRLE2e
9zNJeu4rK7ZxBBN4wQn1eEodvsMAHwP8bjaIxenoy2aBkirks1+6YEaV6clP+g7Ir6ejWe283Nzp
YESoTh3IT3jbdA1kGIhcYK42Z8HUS0ZUm5Dd/MXcMMXKmhtEe5kWpVa7e4F5xtexuJ51/OPW3/Wa
EU/RgKH3AkdcSYgKjftppwSkJ865clveWPE/KLpPhdci1+h7uUBxfwMvDXvwsForM/9POzc8ghg3
1Ffjj2dSrw35X+aI4cgl9nzExunCLvCwZDdU4lBUA7IprlO+MON79FksNPo9BAiIqjVcIttvcy/u
N7DhGhaYN6pPAN1MFZSwWNF4RQJyoDYT1SOM0I0qEjGfoTD3Gv5K+jG/2v3BwJQQP7svCs604+XW
Nzj+fXFDK6uKQvrge23xCAKy2l9JoJ6exs4s5GbfLlYxmcEb7/fmbBIPF0zj9nVYsa0dPff0PuVG
ZaZYHvoZ/ZQqLa/DjMzR74+VcOTdoijT6hWXZefTh+4hrjZovINV1X6awxAFaFxyj10kyGIiGWgC
KemRNvR1B5cW9Lm/CjtCyEKquFGyiLttQYP9A+bMoDkKNYJRqhftKykvsTVS8oPTEuvielaaOOpb
Rt/da5JKX7WlAH9tM8u9ST38MXGk3zg1aY4FzGzE3NK5jdp+vIfVQx4Uw6j1brdP3Lr+2DWo4mDm
2d6VPOT5ykGbq/75KZriZ4II3hfPGRSyk+cz7SMiCElRSmtDqAl/baGIIzrCPKblznMDs3/QDrX5
lTL2iw3LibSvYHZ+aWFyRVe/eOyaVhROoZ0f6lZmbrUtpQE3VeEENHYUSz1e7yq/030PiVxLeHU9
psdhlwg4LTWy7phE1LWX1kx1A92LZt9JOWxQ6GhFXddBUmmuodVTX7a7S9Ga6NZDcVraU4M6XAKs
yFaBUo3LeKsmgtjN3oG+/gHzH3H01a4qMExO1BHJtIruLdUAq5VWZhgCdTT+C30lyj8Lj7MbItoN
65Qt6fC/TF6FJ77Bcf09iV4+sn8mVMFxUxgE6rInNezSAQl0pD3YZpOz/jmbgwb49FVL0V4L0hI/
xKskUkWdrfdxmXuKdp1SfyFr3F5CF3AZenTZ0qFZjB4aaRhRlfmKPyt+Wdgf1G3RzxKqOJiIFIa9
beymxcOrZ5SrfoVmHYyqqXyXeEp51aQMAq7jDxVZUlVjlZ8xNgj4ZkwudPI4lk7pFWu0/CMvD913
VkBny1biRlJHHNxxHcyyYkTj+jykweJNgCxn3+T3SuG+BSzOu7qSNwLb3o5Jdclpj/LI8SQjKiXk
v++f3sZussz8NJqyYYOBlXLcNOY1HsqB8lseAkupnaptb3cmwe3Hz0Ph50xewt5oTlaFzwrj6EQY
GqgyLnPQmbp5T3tMtj470ozuq86+M0QI/zJzpPtj98jAIGMHzE5N6Xt8Jgd5EoJOMdxCa4bqNWSZ
EsmTZEVyXzxuXQZYGVIYsSfnLcf8TLwAf/we0HU4ivj7KfhORc8MgLhUTGotv/JVdx66cwZSeDt/
XUmtR6TKKfxFOVy5nvhUt6d4lFBlmNVxyzBEZxhh8YW/lWbieFB9VzynOMDdIc5z1/CngHCupZQb
NxC8ThrqN9rTvqIP4udyoGsO+nv73zTrxRsz1kK4l7SCrAaHHKD2NBLMhQnauibE4nZhncyGNUtg
WXHP8B4WFzPnDwZqX6TqtSHU4hOyz6MU57rLSB0PS8nKOWPohtUwia6BhW2CL/LO0zdOc8uJusiY
IPJReMpSp+MKDqprLqkW5296glFAKT36gKhtDxKRAlsg2PNwqj6UA59xhG5aQcIEA5ICWd1gDp7z
MuJ+dwCJtH2r2Q6SsmWONNS59lGR7BJgmqcjyOMc9CFQ4qxIHT+eDHa9/V65A5UlFmmpTwS1yGUv
e/8lE52VYr63+cGnSCsBdzC0jKrCNbG19hfO6GBAOQnJYFa5WPymR+sw6jobJELvTzQeSz+3O6nw
kNXEoAbTOEd2j9INSWW6mqEtpw6hJpSXZy7XuDHcElMQLxRf/o1IVwSHU52ABrbfRzeBr/BdLOCz
T/NpgziObtOUCflxjEOCw76In6mpfQBDkWK+/V/UJerbemhjUyJdcZTVfDZv1Jb8hMBkyCo6Wfq0
SheEdvfbVUF3qljTGngX7SW7wNBrJYSLxOdg/s3JMfKix2kO4rlwFU5ZEpRfSZl/t3QmPOSDJ0SA
F+HqM2LvRc/UNyI45wpEYPU69qBqO+e7yKR/TgL1i8mEwtO0Cg2vlbKr/2MDhZrRAFhwW0yPp+rq
F+S3qLsdezLJauMvvtuozzmGHtRWl0UcSEF4HnhRyOLNXlbA2C4OMcB8jEX8a4YNZQMzYLzMe+Y9
7VuL9D081biusZl0X2eyYk85p2GlmlGRv1IaBfZbCEnN8+26HLugN9zTxKpC95MF5LJjQEApp8JN
SvnYHw1ctWda3FxjpFLB6J254yo2/nqnsmtCyrCCa5Zkv/2ss1V1SmjAx+E+yI5VElcKWYQ2qAUG
H4Y0ECsFLkJ5O0NpOD0jBaslTMFJpIw3Nji3S5Y0+6eq/VdZ41eUdXMh7NZSl75m5YXe2ikzxorC
+fQN5i6VxCE8L9bRQ5Hhk+vGfrp2MTaz29oz1S86qcSKI5A+C2LnDzS7Fj88TPksNaeHNkeIhu2J
MneYnMwMfB/5n/IoK5k/8afih+7PiNAYbqheipduF5B6KTanLS9A+6GhGOnZRbvVJ6sQdycz8zZC
sev63EMAXgrZIwOB1FAzBrUt3t8HP9yx83fKPfWvoMyPuMJYlfEwCh6uM+M1vYaqoptRU0kqWkVY
g4EaX8tSBvbKEtYn+Y9t4q+cUtrpinBYcv1hJ8PWCbjCxapBHua0vmrhDLL4y24EYzBDs0UWzv68
YxH6KK+E9kxpTqMTQ8BF3O7sZI7odOi5DTwbM8PvDJu93yWJ2VDpHk7Tsno1MvMCaBW1Aya4o0wF
bgr8DtlOcWwr7ZEbz1YKt+IMWl99JR5BiSvGSt7+BcN91OxvcaIhLwXnosYiupy1DhA3WiMViUBf
diF6AW6KPMcoF9rIwgf1reGZJq5G3QFa8OgMXJY1w7fZPqJMCvcYhUjYiHdkcKF/X86c5J/SIOAY
9f/caB9zBaotVX/TQnTJdqZNtLHoSNXJTb29OarFsKAaL64bXNoV6S4jfTO4TCVjU+lKRstD8JTc
KHs+mP8b4xobKmu6Z5lfYZuWq4AuhVN5BR/yaEuwueVIVgG2sU4l7vA0z2rWARxQN9FjYnmPjdK5
t2Hmiwkq9tflXn2zVsyl6PajroVfyTDALmz/sA85i/for/pIrwLwNHZJiPfqyDnsnYjOeqHALM43
2+vBURkct0LsPcJZhUa5Hwb1ulfNwBLnZIrRSf4ARmMHiH/KHAUWhsU7AWuS/ks/Jf+ztYJ7jT43
VaCA8RNm7XP2KyZSWO2aZQr3hokK/5cdueg5FKYAYM7kOvTakeF6oLRCwIlk/IK8HbrAib24S9x6
p+9WfecFZ3nHeDLNiZhYI98rA/BNCI5dpcRYg81CA4Wx7lv2/YywI6OaYdVuYylvg+vOUE2ZcekE
50cIIsNl7cvL2wjwFYazg7m1lKRb8e+vCa1Rb/XbKB2vHRK6zqup3l3VBlvLADEDW5wmfD323WBj
4HRSopUPT8E9oKVJsMyAlrjGtaiiAkm+XIbipI9xH+7cYkKhWBcAwHS4BaVFC2IuJFjmWMRWXWko
b/veyJC//5/M4TlIEmGkObw+lCaK4BECyLlqGaB/rrep7RSUHPnCkqM0hTzf1SaDdyc8TRM8S6Y4
9PHlOW6nXonEiM5MkIcnmlEj0XmwS+sJoO+L4Vqb4SnHgoAoIuTM3uH7tXZCH5Zw/crfq3ON/dxm
ZD+aG8O2rGp4OJEhbDpeMdOGWqyIL+VP7o55NL/3pWTJ1fBjIMRZihr5oFQOiSmfkHxgk2Y5IPWi
heBgyvmxqVsEbecG99NYpsMB68nMienTfr2K7I19hGPHQQMYhXMntL9Vc0xNe52Uo/V6n8NQ1NBw
R3TD/nEZ4X9SEKyabtBNBQccTDFt/c1UpCCgtxpngIxVgmzk6FyIOy2l2P5qDHnPrFDUWeIVcdLP
la6wUtz6dQzW7BOemk6HrpTv1AvRXwx4nHBUVRmydOtPmPl6VMN/7R1Vmzo6z/jYb+mF4jKjXKyE
LCaQ1QQbh1WOvS1u3Ah2RgNAwleBp0pDJFUOBKi5NK6yDwn1EHmIx0kuxqeO3shT+PHqXKYRpYuF
lcEu4RPkdMNFBq1s9WneNhmfU/Ew4WBnCcneqIrmHtx7qERELsJAEZLJpjEDowk8Y/lffqEn5227
AgnfGEk9z9ci3n9MxN4yoKAwzXPuHki6Hq7l/fpTAqA4oCwAI6SXzvfECZOWHqkKiy9MT651tqrT
ZO3eD7q4pTXIj/clh/hNV8/4tMjloqK7AfDBMk7IV2OgZ/g+khFTymwIRUNysLueQ6VW899H+EDY
borpfuUrgzDiWF9uASxgHO9MAs1uTOuFVxwFLV/39RedMGKgt1azT/2mQUjlQUR/k/Ims/Tg88Xq
iLKMC8zYGl2tKLrkschuEOcaNikUzMAzsfCufnK/dQiKbtDjP6w2PJYOpLggvsETgNDfS/jM9QM+
GC3v5sltYZZpBqeDl/VZK3HKLc5f6UN/LgQ5o48Tga4LlX/bxUIO1dBGwqWF0kCMtbiZzb0EjDGJ
EdsjSMyqlDED41D8IzhWkoB/9yctDDzidTn+bdLw6cJ6bQe8POjVz7pux8Mn7pBUCpAz38/NoYRT
o7Pug39qXfH8JWdvLgVnj8haRP/nfmvVWsj6USaseAgvoi93HZnyci2uKLCkGMv6yKZCkhhEpRMV
TUqnjAXB0nSDMxeD/DtRwBTfaa2NiUu2FGRPf0w0xR06GFTwf5Crce/nr3Th3rekqYuL1r8lHFUN
vdZSpFs1VJFed/+mTtNKJ9VxH6RjCVrNMhA/eiQTNBRRVeqNocO+m6XYfxBtv3lt1Hky5WpmBN7a
JYaY1cK6JEg26uGEHgRYRoO7zxcizVucW7WqDLTLZT0/lomRAXArWepcOJ+9hCcSFr4t2ice150p
/x+AMBwf/YrTUv7pj8c/ETJi4lVA/5xRZIVO0zj2GR5iZ9ajSBgDBP8OH2INcxDyON7BpPIF46+j
FAU4vhMLp/UXKLCSXjT8sFW34DPN0KSqG/ecTUd9DFLGfas1/H55kv3Jw3KbZe0Ce5g8CltJ9PqE
fzd/3FPSu+WbfC17L4ov6RMQbvqGRnydlHSKiqG7ilAerHtHnCuiJCSZeQl4VAfHIyOeTjxl1HJ+
iO/ed6ZYYmC2CTb+jQruTWVMMSw1l8VueEdrERJl/cspIsKh1cM8Il1Zk6i/DC4bIJMRlR+MQH4F
nMSav8PlkR9H4/vs9O0F8AlZFcxBt/2NSzQwaXzg2xCjjAKEfU+YombyoODKxLo1eaxIyPRxkUPI
xxg00qt4ihrK1z22NCazmtSNOvvtbHZGG9E8MBMN+QA1+b6etLjNA6lLVEgnygnDicXHSeW/bwWJ
RN/YAcjyi839kM0Vke8mptGKcbaJLgs1fkyIynL6engs+CnFMTRPWkBryilFtGGGgSiPSOvk/dbO
SePasOsVATLWfiqrgxgWPFXYjl1KONPE8YyJf3gDcE2vGpn+qaprCkO56reNUu3J4VHLL1+LGbqP
q6T6HacFHOHBf+LBsdeYotWs+WxjyRo1A6H76cC6dOr05KW5B4sATzb6nBBJ3ct97MoXz5nB43gF
aSm6tzY2a4vfDNBRWah+Z/cVwb0W+TroYNA73NMqBkDL8IdLcpGyoLs4Gp31BJyo0cnc6GIk7yGR
GV9RuJAjcJO3RIdi6twoHs73UtpeneXYcncO9Or/Swm7SStjeHHuym7ac/VwwrycwfvWB1rHXx1U
KByRBPDpUd8hDIj2JZlstibSpM5knj+qDfXbreAwG3tb7B1ZsNIICT3XmpQtMyS1BLz/qDquPbs0
ITYeBBHp2fMDQI0xLQPSQ36h6VfOJTiO6kNSjI7DHQUk//SivOD6egtFGDWpb20NAlXqv1w/rEE3
1sdQPttqjXTYUA1oQ0OjnMkl4mx1/xIR97VHNcS0Yqhg9UTkBtOIrVKR74lOWcJwmyT+b1O20lxK
M176ee80dA/gskjmqtv4CD5RCSYwfIxmhavc16ktEhwY1c/JSVqnRFYvaKx4yrzIaQm+lz0pUpdp
Jy3WnN2Okbbb3VkeP/GCFXKnTITUwfnoPY8GST/KH0xe9QCJ+9bhCJ1n2/WLmuU8h/lLXRyVFbqo
M/nd6GtBxdvroxoyIRsYRVLpuYLxn1gk2XYAMdC/mFup71ZQJxInp9QOzJ2Ij6sgrbWGsCW3iY6a
u+et+3vRXFAvSgGFv5kw0KJs1dYBsO9MuDtDysaO3pS8V8OFf6Z1xsDQLmyFwLk834mmTbAFi+O7
CvHixvIPuIFgFzJaG+RLkDjBkdpd21DZWa/se6led1wVeMIjVWgoi/W6vI08ZIxvJMWDuyqTR0sB
hlNPsrscTa5jp1OFIfOzwHcwYgunDNPbazSkcQaitC+3487+lvr3T83qeYfxrN0nIic3fo0TIXL1
VB6NPgwiNhnQOlNIr5aq+08YNhRWdpuCig9E981KWkXGNXOIWmrefpXEzYs+SttshkHQ6rr6wJ+H
qSaoxvS8RmCgD/pUvag8xnVOixzlM8dJaA8wNWEFMc0yBbONfIu3YSNdeLYaT4ofM4gtOn5OoABG
zRP2y5ZHe/7i3z1H/j6UuYMfrAh3jMEUhkv0iARltJvr7m5ZF+oDDQUx9/50lejmrwNwvRu4h2r2
9nfYr+F2Eckuo9tuWfu7gg4I6AWGnBmk0BDXxYSKLOxdz/5nuJB6oLgFc001HfIseulnrBbsKFgr
NorPaVGsX9Z7XhdozoRV0igIpICRAuVu7KQ8glSiYAXL7pK00+HoYX2bNhNfXudWcF1ZuFFDM3Zh
RlX45SlUIidyoNBxj+mf+5tlDmyoU6+emX7kOg6bEMmLDiNpciDeuuEM25eHqlFQU2V5lIcTq1Qm
vp4gwlwval642yKd2hTxc1hNs48ReHzxE69s60aVHMeIsbzxoASD2Wi0NSTV8UAmomWDwuEXgPV/
uN7EAVACJCIcDEpRJWsDWhrP2F2wIo03TZrgkNsIXqjWinqC9cA5L+vLxACzDe/W1a8ognx65/EG
tJgZuWAEZjmKXt6wkhbHGeVnSsz7In9hkg+NZUwvPfJ3bC8lzNrhowrNwvcpMbQ4igAxiiUJhL7k
VPENhALZ5wPe4bbToz7UJt16FXGqige3ETa+z9oiwkNKfZ63/dpjEpZdts5u3sBsdnZDpOeJvxbe
apX8+thNYZNxMF6aaUm6EBCvc5AGfqnSMavl6avOAKYkrSzLTVDhBqV2HkG1yjyz7OizB3nKW5e+
3u3eOwzwaniyhpGm7R95UvQyraGQkTcRRLfYFyX8wIgrSXTSeAMz6PZyr0vfkFAkk81hk1T1Xtkx
JIjcEfJ1jsj33gV0giXobc3mpSwJSWKOG5JDuz69tl6m+icGvl48xVmOsZdbjbX4RJurv0cbM64r
kRrTWLJuyFiFTN8cHvMhDChwQFHYlMj0DRSEq/jY/fVTPAl1RcE3c1pUcIxTHrE6EhsQxRwcvGrs
ECNyYHw1001NBR3p9xeQUFamYFbiqcu00vtuGK144rqtYmkZeY6JO/nDO7/hNfYF/dmnebUIJ1ny
+0Q7jfys9T0cCLEwQ4D71gqP51J4nGJWXnqZpveHrUnwSySlB40Rs7QzPibJmJ5xXT65+kE/kc9x
0mqrXHBc54iH+z+FW9yI5nKWLY1vH5CHkv4JKeyfYXq321Tw4MUUKestmdm1IUQkKChSJJxX6JDe
qIO4rw9OpcqF+uxBjBWtZmrz/SZxv4k39bfWbaT9y61ynGZn9T2E4J4dWBvmuLWq4riBI7TQZ3N6
PGYcz6VJ0BwGJHUpYsDO+BJWSC2pULjblKoGHPBe7xNK9SBlKminKRoldxMcOo7LyT2cZzbwGFGA
huKiXUqR4CC61DCqssoQ39Slyq+DrE3Xel/4zGkspWr+32f2p7k/g99gGTHvGFL3fP0ZuTZLfMVY
ZtMZUyZE8px87/j6yarYb244PhiGQKoKJeYNLRWrA1IM2MZC/xcZXf2BF2r3yil+oR6N7FKztg3k
FBdHVCP7oUlfT8FZ4ropg94jXEHISy8lKdw+3dVWeDTrjFp0JjnJ4NJAm7MNaO+WzxCE8GdSrSB6
N03SFCqSglRVY5yCGNn/ZYVaoLQFbBi4TC8qFNbUHvQsBlvxOnXj0kWuKZ+CGehAXgj3pZi4pqTd
62tPSF8aZVvB+U1Z5V0gQASFWhyBawFOXFHgxuMBpYwb1OtiIsefofilBDewWaMOyAqUaPblUUbx
kRaAZ3LXOddj2xs/snq1l9fClN6Ay0DB9kCQAaMMrOwhqsmn03pOZrIEhC6TCCDr25SNebjjcsnO
+uU4gfc+QJekuCvjutEEJu0krucMC/5+w4haQE97adx1BXy68vq1xjTo2bRd51UtG8F1GAjT2Hdp
7nGYmcKY2kEjkrJrMVrC1zULz0P85aI60H8VSfYVgHfIrSnolEX2Ed/OYtUc9pHqTmrU2C7KvlEf
dMHY4obst2A/XiMrzq/xlWh+r3a+2SkAfITSsWRNg8uSg/67KKRyVtORRtjyloSMQyoRnhHsmtIP
rzjMPJlOWzmRIs8UqzYM8KJ4IQtXZ5YElA4tbR3PwrC/x4h0MuLLioA0B3FXxRWLtXXnTi5qazPu
gjsJEYBjHYFF9echR7IxjPEGF8zZ+xxukF/4rHYlzU08jkWZeyFZ4baqc+YC2k2xt7Nd6NO5hz9c
XyndGwFLF8HCQngeni0JJooujgFsNZtmFDPqXn4tbt2SuJhQvL2Th2fxx52oqYPpFAEJ+sAIizHN
wlTtejLEzqf26TxHujmwcya0AZcd21wgkmxg5RBurcv/FiqQ9E9RhDUBUBuWZihq/5EVYU29VrPU
YHlgEivcbHJqwFxIOG0IXGnPBq2XySr856Ebe5eyFXbBtHjHEl0P3A/63Escy63G8fsZelD5axkW
Ih716llS/T6R3zqsg4x410jWvuwXqBJ3c30dufEvt6n7x8kqPMSSr1lPO/Op+ZQT3IiDEfcNjdfU
m2sNKk8MpSKlhwEOS4tGMlX6SyyRS6OM/J8gY3Ps2Sk6aK/4CWsoy1VwyYOey0l5mPZCpJg08LZz
LbAr3YuWxczEhZME48Esluyz1qhA5r1Hgua6Anp0RBCDiJoZQoe6U3tyZfKe6MaK7HrSfQD8tF01
D4Up2PB4CAQIeOGFxDPmbhdmh8NE81NSb+4uvf93G3Vycf1mjDh99xZlO8AHXoxyfUzYQg/+YyYS
ctPFa67JmufdPwKygu3jBUlb1wPIyqcIaAwv1FzcZX95OTsCakSCojC42EFFRJJqej3D59Xc467s
bTljlwOPEwLAum5tdGpOCZf5mSqzNBNavQgHh5xtVOakBC20Oa7aTXe90ItJoRWJXhfz5nmBVgT6
F7T9fpwUBGdQu22zoe9krBCuBe9Iypwq4TsvGTDzkn8mJ5vNz0tafPXDK0cnaiVgEGz6IESYC5tH
WqR1wLDEgW98/+CgYn2d+0WaUot7ZQCuI+dE/Pp42VPjsiWGu5GO8zABiTNX2jYdZE0jnqlhL8KU
9rS9LpjAolMw4Ke03P8r6iTNIQ2nFbJK9qstsxQLWsNa82QqOWAzqksl+5fr6AzaYWUvtEAmhwXd
czH8M+MV5C1Fku2M6LD9khwZvOCWpf7ObYcbOhTfNSCcbEHAcY3tIJtwNw+NcZVog3f1HT+VFiB2
aJoffWdbPjIOYsP7zbfylAKOfZUidZlRZmq2MPDyT/uC0sN0GhMdZLysqreaFoe9YSY+fkSD84iO
Q+53lOfcjMaydkpz5jrqFKdoZ/0rL2HWETuMLERb7Fz6t/AtA6RkZMzZImAWjfzdQYeLiCif/det
QJ2ISlPWlr5YOgEm3c7voGH3s9JanoRR+GFZ8zat88JsSmpi+2bAOAipZI1k9VYsLQpgMfI9JDUr
F/uWP+ZmKapMoaKIazqnuB85NlNdGSNak/M+qKLYYwf4s1lxvcIRsXpGgmBLYID0ur15/4VcqLAi
yWVcXpwmLw5hAbTYuu9xGh7lX2FSXokdQKKLTNeDTli2Z95N0SbHXFXrj6f0pj+d2Dc4HqswhcbZ
AMXuIb1KlCo8ngZ4c7Hw2CCteLo8WoUc2HezQSnYWUHkBxjshfmeSW7DIPokFlzVGGSxtf1jKw/5
Icrij0d3NXe6uL9quXBDxp0lRKb4jIrblN4kMjup95OSLKyArZOtExmdwInuInnF4V8DqTYmErPH
9UkL9OtJ+zN3oBkffvzbmLLThqYjPULk6o3MHV4xVScIb5ZiZCwbqO6nXplUOX2HovVQniu35eMy
gcr6gR6vIe7KS5JdELa79WD7C7D56lBq4CGBUaK5Wm+g4I/seg+/lJli46SndxfPNBNqPkaZiFea
yYxUkek0CjKyD+DYmyIs6kiQQl5hoAgXqzN1EJ0RSnOPQLuebUXy+e2LCCSY4onMZKJbLRdCyTYP
1azXkDQW2qA3kmAaPES+gXgfkqi2IMTzfPCQkyWXfhKk/FTShlkpAFKc9j8ph35Pqbhj3FObGIhQ
V3yujxyX96Twk/QFGJGhYkNklxf/IeddbNfMFGfLGPCf+0RRhHdrQOl26AXRSE1s2s4gzNwiPBg/
1KuGXOeYoNX/adYplK0drgRgEykIdLvkZ5INfeJ7vPeEiPMRjnraPWEhalKZE3hbEZU8Oh7dpf+5
BlZKxTQJ8/+4Oi73qE3EgFYjPY5Yo7EVBmPkUjWbRxegCWvrOsYMkgIlK3Qp428m4sWegoMcPtBG
ejFeK38kUQ4S4bDVsCZuLqzUt53gNLKJ4DKgEG+uG9PY3soKY9Wi4ALO+FhzcUzQFpcd/yA84EGT
16ALCvHVQdS4d0tMWV7bWsRVtlELV21xyg/POjEB2F01S0H+5eY1aD8jaBJ5bhnwL//AG7WFZpSy
hTXA8QubrHVBEfP8ngr9RStoNfNdRuqmBpX3+AmIEInD4IuPtIYqk8VEQ/N0PDVJXqNnWmD8+8eH
iPkF1nErLS63J5h6Br4hDV4Nems4fQDsXtizXmfYIiC2cdMkeW+efyYl7ZbYgHOziTEmdJwyLGVJ
dDt3qmjc0J3pmOVMmxSin9FEDxQ3mHhgJq2T2PnURPIG/vXrq9hv2ceakHq5OE1aNoSAe3utA0ad
RtKIB0F0JyFWXxuOqG1F/trLNkxPRY6X1ppMIrx+6OBD5UfUkMXrzkAgTR3WnMecLuzpCFgpdhZD
PsD9W3GgH2MoVkCIqcxcHLx94C1LA5LVEMQ/gizA1H0xX+tmHmicN1RHSZuzUnlBbByL0cnuxNp7
KhAmobOUnlzpAmjFOpOFXHmsNO8sChYFN2joRZszL6ypxT0KJgui8OhD+e1lqlnASIYA/FN2s5Ub
30AjZtYBHzgUwEDi4bSdhFLB+z2B4B86pT79PbGZZ8IZF685h3P5EaNz2D04DwWpMbt9MV2lUtnn
iJxSzAG8zxYoEdWMtTJSWhMuhMG3fNisnYw1jFZCOCu0miXFFYtbw7XPg6m+4kdMWQzhLq9FojYt
805hFfHPEUGClg4AkxuFFy8J08sVMIKRI+aWcup3ryanoLMvsT6vl3rB/lDM0SxZECKDLBU761aO
F4ts2D8UUwJi5jF5pGo4w7E2EIueTMrnKIXAxJ3b9JqdzW8vRfosGKwajJplTTpXJsNaSx6BIv4N
ABCfUK1DYFHe2+5ZZcHe4WEHIIkRLijuxtPtv2ONEEXqF6PW2//p7D65sZnBM6CSBRuqKsVvBU+w
dVeP+5yFzxw4Y4WCY4QZ32nHunsJGJ/1OamjckAYvJ+rZj7ZR2SUJuVAOjyl/J5KFLk6+RngK1Jq
M4U0WTpCKPkjuhSb3HF/zSblXz5K7VsFeyMP3Ocl8d35GXyxoPmEC8fBYEkaeO0LkbOo4jmW/HVZ
lNGxaj1DeOls2rPS1lPN9RcODETS3yS23p8C3DPhoRdyFMxKtHM/XNpHVDn2/6jANibFEOcXaeVc
OgoAj5eTd5xCvL1vwTe42/cIRuhO42LgTqfhOQo7R/AcBYxMBJWa9/kuvTODKFRw3GvVc3hS7U0E
nAuZOe7xqPDGt5tNwZXPGMILT4A4CUeHeLVhOBoRIMhb49uK/vk4aiP84o6B6CP/uf9Q/vmePyBE
T6/QPD4bA/nqZpZrqExGZpqcGh4hJohf7ZzZNY9gV7TLzwkm4ATBtotmPNUox9hnfKFbCzf+04Ch
i+/6g3Nxaslt+RWIFOiYh0JwUWBU49zgmwj1iFmap+b9qEnMQX1zj0eiU6mfGvCBCB+uF9oKtkGB
zK41h3ttyxAFepQrOKLMJMxPNcscC4W/XsFoIxr3tWCwkR+/V5K4bi+tvNsyGNW1oY6J1ry+C37m
8ejJ+jJXkY8I8mHVdXcemIUZJ7bwbBK4sCajAMX+vfjKIKLWTHz3WoMl2s2mDEaNAn7s7HvLXkwE
25cmILIE59MV69GQcL+pPfH2JD0ysBBth7hXQS0OEYCYTQgjdB2H4rZxDENMrkwNmt2ETYiCqaRo
eOKzjYRMYneYs95Q0SfyKdJ3JT/eVBCTkO4hTv9IvhkAObyY0fsg6WJfIR1lxcOLkajNPJ7htlXw
WSaF4/H59/5WQVpEUynD4ZV4IE7c5m5jmO5PDioHjwKgAOALy3WNdukGsm4AjMtMPyNiigz5HJou
bzo7VwYxcfIkIacRZnfC16Qmb4q6kDEXAScFOCJJhWF349+z8AKhg9rer30g4ne9j7qWjGPtUKNA
xG11wOq1z/xHD/dVJpR5q1JoEPlPSWWGC4ErMZmgNu3TjkoUD3m1fIOXrUb2/9e63U1jOXpD/dm1
FkmmEdcS6+0e81F5gZ4rLmYvUBujDuIGE+3gsazg7kzISgNc2vWOavgaSucJ9DeJ/CRZUJHHzrQd
u6gSFYF6sgYRQcUoZTDMSY9SbKFg8sEMB0z2vrmk3e6h12Iox9Vo6UmS5P0q5kyF8QOPEll13a+V
YYsSz11kopnv4BuB+E7WZjVjmpmP8fA+Zcb1++GLmnGwcL1BkQWuQTzlHAmZPqOJn9VEbmVI003J
C2AE44aAw9ofo8VDSMNLcJjr3T6Cw0DL393gWSV56eAyb4u4TOMV3GszsNAHixwKNvPrclWHqoHs
uoNwwCuAy+3CobbRRr+2Vit/oh5BHmerXQyJpQpogS1rOTSJEOEwr98ltei2DRMdgWAihKo7MtsV
k159Mj2brNam1kzkm/ejjt9NRz5Dc3bmXjxR833OnQsiOPLqHMnyAwYccWywe6hiOEMReWwKjaPk
gSN/iQssJrtli/7QkT1kiKPD4LgdUIBnzJheNKEQZZG/d9rZXfauQkkXDZPg7Kvj/8S1RzLT+Skp
r5lVNMp9asldBJZoW/vmydf7lV91yYlipmv2dxB4oBWUizjXsGTikgdF8/ePw3qtLMLCcIVHlQ2r
D/a/hVd4dOBAcK0zVAJsovM5VJ3zDRN4KD1CENeCZykVxOL6mfgF/vrJwvM3CjDzcEU/4MnxmXR/
OvNeIcdSWunfpxMstmc84nK8QNp11Do5luxwHZ5P2pkXHmG1v3Tcf+zV9HvhaSr30+ZnQmPdiH+W
+qfZyK9lBWRGU0gWeogOOrxS64IZGjWlIWupU/vZG8jTjfU+0WLV0jBu+/S0Htj5XaHf3z4egDby
hfQG0elRbSZxycKVs/FoHIZ2EW4wMG+QrEB1LMH+8CsLCbbF8e7UqlhMaSNlAIIEHhwvBFOKgLMz
yWLGTHRfqk+aJSb90NWSaqKdsOS0AFtIdNqJyWh2TAY6Tf9FVdN2w/sblSI64RKmu18rHuZ7AIF4
/XH22qpc0YvE++JiDTk/SYBhoSJQdIu+rOTvZUjnk/+m03qwWfSTXtlvN5lRsqp3IjC5M2WWih6w
ubF2pB0lqLnsN3gpyglJ5pVaT1T21NApZ22GXm0K9uuSjTvxT1G6iQ6tm6b9/VdHu82U0Z3SQcKW
pbPp8DqYu1n0mH5lPakZGzQms2oG7JQ/UyeOSp0kFRB+ciPNsp+iOibzJs1R/TosKh7p0kQkU5Oh
YBz7LNQI1t1pLtaYXStCT/SgvD6q9kCz68+Gyw88UUP4lAdTtaAOvrye7N5n3omSpLGl3IIsh8dc
R32jfOubqkjJSEWFxadMlw5TBcRA0AGmb++SQ+hClfxBl/65U9mKMYhTAx3X/U7Fzl6X8YaLzm4J
QkQ92TlDCy6aJGa5x4zrWV9TvxcnSOaUsdM0mSf36bG8ViFrlFG9c6qUQBPEpqjnKwjFxKZKRPGt
Mls6C+ar4B3wvnCRj4G5KnjI80TQ7QekZsNQ3/YcNnzrvvER0Nvnhej89OYzOHa04YTKqLD+nTFl
UFgvoHajvOgn+VS47j69v5b009tuL+9e3IIzQnGXHRpjKrrG8R4yjEyABrqXKrtC1e6bXTLDRYNi
DT7SvSeaoAT39wpq8VHfAIEXkeKwNf825L+KJr7eBt6wFLPG5dPF9pKzDK/qqKb4u7tEejxC/oP1
2kocf4PvJ22crw6R9CFxCtHD44AwmfjxOTDBslbWQIiFoPyGPuZ9W3wktQjf47EqyhAFaI+f+W4J
9GrxoEF1UiN23gJfk24qtSlj+ftYKKAbXY0PO2Nhwch/PdeGEx86YmvYQIUBtkXT7QVyc4ZALy1/
0jkYDCmtZCGzAm493E6K5wWksO14jQJVOm1OtyiV7ph5VDFCrCFzdNzSTTkU3VDUvqz+EAONhKNU
/FnASnUKHxqcTnSvdoak4EgARTorGg5j45zhD4huBVFeiFciH+kA2AsrYu/dE9+Vo1CX/4U6U9HG
3vyu/02YRBQgj8hgZ+1Ieiy2PfjK31y8A3XaNmYS4MS3sPFwd5wJjryUPS95iNNbXYe7APkgKwj1
170b9oBaxFFFR934g1clG7XSkc29H85VvBHxb0lAVQ8rokiK35cOgfEjTAH4AHCq3UsXF05RmSG/
i4wbwtf6ZPkfau/QRbqcj2tVZwD5+H6rgBRGTDcnbO9NREp1aD3JpU/SbPDqy/Qh13Kl60nFjb0u
e0OSx6SRNH8kWcgMKbzFAyv+i1jaBvhNKue/fbjzGFu5iSDZWBPXFukastmp2Z487cP6ZyWFPyZn
R5DtqF37clVp00UZOWIMWyl7IhABzRgc1dHXmpYVL3WnJ9k3LPBMhasCgJlhvPc2g0v1etn1+zLi
4BaMuX3amoEptIBaezVT3LRRLFvJPQz8Rtc8EqllAuMXPc0lJZ6I/rfU/g0Vkbmfya/wKfpoCrAO
q5Orm10gkQd3xgkSJuLHN3SIAXy142hxGA+j0s+vW6qkO3RKQxgA+hqpMQQ89WRGDQ8jmPlBGWer
PqC+fshi6wU/LVEohTH93GEzXlyvJK4p79OoLRo25KaEHU9cpBqWwNQeYF4ijuZa0sVRDbptEBYM
OJO3fxHq2syLQ/iszT+U3gClSXvPFNUacYMhuXuAvwYzxvQM7yXubdgyXG7p+dSYDA57OFw4qwuE
mCjYwPYXqblmxrsY59ywqwHxAKsa9DQ078sOn9qSleVEbiRPKQv+PLvZr4mr3lVSZo/DI/1ZrAmk
Pi+xCsyPQDIkW4xBpNxxu08FYlu7EYKIZlVCXUe+ULPrNoV923Or+ysUffxXqf0tMUFD0f399NPR
//Ue4/W6avniMVbsa8ZrZnk7+ZkS4fvhPgOcAea6YfZYoKs1HCduqoF1ZVHXXSzcXSP5E2s4SH3/
6m6R1AtfGXf1nWQvCo1OYRqQP+8eQ+3rcN2HUdy/Idj/SobKbdHevywNky7y65KxcNSuBEc14L1x
RSVezZxIeB1RuSCY6a5u3oonSDPyQFEdecvYhEtl138cgg7aNUBVp0SLPkFk9QR9xc/m7epJDv/w
Mf1ZUR6nRtaapSQmbicnxqZmq/TDgIX3d0pcwGB4MqFq8+aGHHiKEsPcvQR8X7BXh+nyD+M9dz+5
SWrXBUHF17pckkJqL5x3H3gfW2eGJl4KHG69KDvnVjPHuxNKtx/735+JjdXh+RInVblkDe1P9s3l
8LBrHG1Grms39NMgr817WTHuKiM9JLAFPNQjnZ0K9v30Ui5V1Y4FRt+oSHSU0k/eH6jJPmvoSlv4
Cc+mwGCANfVckBGEx0SrrK2q9ly8ulQs65mbsxfQHZHy9QygURm5xStfnjIwrizQe+6+rHmpA8+B
cgd/w+//3i8PpL9Y5Z0+1yqhDi8X8xfi8Y/yUPmdak0/zQB+x2gvOn+n6umjyJGnuuOsgUp5ojui
rMNcDDMK0PhpmtUwEHLKu9342nTjcoLLkM1VAkEsof6kYFJoEzW3PuCQOQRaSroxeTkRlJ4go61n
K3fLbAYfsOoZthvF0vRu4waWwAMCa4hDAia76up+u9Mk3+cEfAj2Rp1rvhO/ZAeLciLGb+OYFnjz
Z+bdwW6ybSDTkbGyHy0V5lym31ruoZKtzFBNK7/v22uYdHPpW++lmazNU104OzthKtwI+cJgpAt5
hc+KwEdAu8xn+7neU/OYF+qtNrAaVEXre48+vHYY2V00pGjfHbCYmIe493/QDizfUKUiyV51FheB
YYBbquBr2MWGFemlw+7qjvlcl3h1i7RmcqxM+76xA50fu4AGZH7vU7u4wHx/k+dh1zCa4BdhPadp
yksZ6y3rjzGDC7+YV7kGErW9DzQrVbFBggfZk5V1CK1B4U074ILmEE3rZYbRnKj9Sy7RqoL1JaZL
TWR8+DPgwbipXupWmtv/drnkr75Z5/seNAbxKHp/AK+V7hvgdgjvYRqWRocNTc+XCEYRHqHYc5ks
bPNwozIoEGlf0O+boZkjqhoMHkYRRPIf91eWJqlrnsOLlp+0rPza6Ong7NHIkAWrJdrSv0jMlwCS
NnUhZ55R4tZ1ICdPCpPwEHxyRhSLBEpIYhWVNM3oA8BPAx1MsYsBkcktIOX3U9sPmPgnU31iXjFW
rJanT+507lM9I9b/ryuuyKx8ESCAaftsgzaJMPoRuQl8+vwgSs/s9h/gNslytrD9MULI+Gjh2A3V
Kr8a22uzc1R0HMTtL1UMJ2WYuqG+B+YLCSPETNZ5mbOSnoZzMkxWkLyzF+2Gok/nOANaIoORtrUM
Sv3SMIx4eRUue47jVAxpi5ZJgwW6wxEvbLenF12FPvzo/X3Td/M6NwnT3tFXkuhOSKoK6m6+TnR6
foZu/qshxYDXkIPl/8lR62Xl1ByrLC0s0Uy2GtP6IW9dZcTVQcvMZh03P3GzKz98sOgQZnW+wcMY
ppe1X42ESe1RaTesPKCL1sDLOvHRTnmUIPfkY106RyAARSO9EW1oln5cGpPzsoHmBHzgQbstvhFk
+K74n3aJYc0c4KgOdZObvPdIvMfkz+z9CujvLvz8VB6IMtKczVSc/+vKzr/36D0GNvHwjq6lOp/n
te23nt6jfmqtNfcgre2MI7LVVdpbHzZXzPayJReKc24xR4mRoMmHf8+EcUKmPWXKKynymzWXCGfu
mrz92+wPVARnRCZRg3ICWSndleJqZhz+bSWLQlY4nDaZf7JzhrlLA+oQDtz2RYLsWlKvpgIaW/LH
mYmCvPWgXPhq/wzNpLbaEMDZOClnwdxeoSxNK0xBIKTL+Weu5dpIvYmxiX43sgBUqSUPRludoXNi
6gvhjuZfLmFdkdi2A1HbQx1fwEyGwp/b2ga34bLzXDnjlOIkHfzbm4EmPc0lJZKQ3EBZeELWFvHA
aeDwESigYylt6kd8x/DT5bV6ny3lrV74GjXAmUC3JMfl/sMVd5k9EOMX6KOAYy2704sApQfpb7e1
Ad1dglgrUqjvZt34tHFaIuLOCGinxV5Wx1nM49Dk2gyfujFwSyKz8ouBB+zNzxnfP/qGx6rw6XJv
lhMXY7fdTjh9Yla8//k8F2oGPrTFo/8P3RTIQ8v6Twx9lGgBT4zaLBThFuCukB6F7tglbbHVdc/t
67DUuCOupVyyC9ys1RBbJLs6KOgyp5eOacCFe2R7q6VxsIR6nYcXr53bt9YIvnlecYncns/1sone
2iqcuKlW0oxociG18IRpKZzTI/NokB0peDYJqHIh/DmUbJeEISMUf+mGlav7H3qysHx5fKxkhmAv
C968UltTmTmayCxSaWWIOUs4u+DGerU4KvFO2viImKZ8IlIUc2Utt06yMh1pf8bqCvdn4aiFpZ9l
NMy73qiGZ4woaBCmfBvJA+1M9FXiv9GSb9j9xmSGKcZFvZ6ZzINK9puOAa+IQFV2NuKE9vDyRtJH
LRT+bEAHTkldaFgfMR2dGzV87qByGyPB+d1eSZQxvJ1DQVSgtPm8937SJ5hSi50hbC7niMKk9sh6
rZk7n8bFJ2MkSUTDtdx6pdZbviPmOU3BpkwJHrVUxz0b7nuhnZ3CQiI9s8xjacVK1Ap9g7E7i7we
eQa07Svn3dX9GYO79w/LH1xhzkK5UtGRbUnK4sob6+vyaP3WLc4PAGxZvd10AAdYIOSaUi452DTS
RlXtAZsYpwqE+5I/JJ82u4BOPI5X2/bbhSm/+JgbpGBke16rXbsqoKyY5AdlWJ1e3u5y6dHEYGyP
OhjOLLKlNIA4y2K1Q8zM37XYpsNS9/0e4ne88aEjJblz6ftY+VljrvIwMUjYVtEjLxKLQwvsi0EG
P0SRgr0QCD+Hj8hk0IcQsE9tTEGZlEwSB8QCuQyu5l2Y1HnOXPZXtGncb/+6fjSvwU+3oEhU9xGG
9YNIxhLQjgys4DHEOjWMPRCfasyL8jmn+EaGbdH+2HSMTmzzQXpW+loqyLkyehfYY7ZCxZg/iGI2
TgdL/+YMda35c+INJdlof+rwNHoMrUBOX4SK0fSbQXfyh1SRqyC/zEOwFaz/6inacEFSKm5PY0nI
HbVziNEcES6GTS9Fd/r4PDp2rU7Nlt9OyrouhOqPJakxdsvXGfKUi6WQdmQ3QTSX/PWiZtSI5Quu
FUwXxDQ+Vx3bQ6zRDpScE3tH4cJw0ENkPjzILWuGivadalr1gEk7YKy5FUTgMltMdwzWwwzenizX
9FiuUscVi1xNWELwYrI+XbKlxcMOh86oV9JFtOuFpXNdrpalDqDF55HF1i6ZPx4BpdzNZQP7u2J5
k29HXPMdk+ub2Ia/7tErQF3AYKGxnMmxlCMDN7Y6oGsNCNsdw9k6LH9Sp/6X4IyY7csMzDh+Rmvq
QAkEekCuxmvTBx6KOKfbY//9vinfLQH/y8B2gaYkGmSxOm5DHeo0QKrjEcyWbwUaRiKJaU+rySM5
J9uTRDJdJ3DI4CY0fnhu2LKjKgkd+w+9MhfP+/fNBr8xgIIeq8p+q24Bg6lhY9UbhhDBnPHZU3Za
Zd/m+6XSsJGrG5VOs/D/8NhgCPS7Aq6zCQ8zLAPWnbB83xwHzKZUVLs8JkOsDiziBLIR+9kGWLwV
NHPN/vvcrfljG4yburZycAaIM1Uf7WOk6WeTF8o8v9FvZB7gC4I+BjaHTv/Y7VVDfJJzDwTIqXSu
HBNF5ztjhXNPqjlx8c9dGplV0P0+uziEsrL05gMujPSxpDtbdStHllL2G4maUf8uBOOoq4iCrwfx
hjszS1MMjcehWUU0Z5LMQzjmUjaQbnNI5d3Lu1+ol0iT3AuxL1l8rIohzFmctq7gpBGBfGlqoqxM
8N4v/tzKkEdIrgzoFUxTJNT1nG3ukDQupS1OstMtaFMD8g7xwtC7lOtvEiPzMbKvK68xcLl1y9JP
EwXRMtUhVVxwodwv/Vzm2CfQg6tsuRLpDuVgpCqy3mpQSgQ0XlLrp9l2g/giWq8/11nEwtNB3jSV
holiL5HH2HQ9VuESq/sH/0NkuW41jx36DskUM6hYXeH64D0+aawjXoCPAF0nauzywNU8KzyJWc/4
eswP2ihUd/d1nFfXMxi8L8LZeOZavDuYU9RPrpBPkPlREudtNfdtTAVo8RbkFvrWdmUx5kh3Jt0Q
TIBSOu1HHHFqD+3GLwawdfYoBt8iqLFhxySKVoeosQR2k5xvUs/0UHE+yH/FdkQGQrg55UrOeTWt
5OxlXpt5H1cyK07pBX492BFzjJoBqQXns7bMsUhecjzXUvczryfmj/RFz/URYPNckvBJl0cHp1ak
qfHUQK6wV1JCuuz+s30N7Mq4QXH3JQYW3NaUQq+f3B+cM4w7pKvcSQVUizG8kEvXb4OOcLK/6Wl8
9EDqgjmbFH45RWmnoxjegkI2RcLprfr4ZbJY9Z3N48VPc675EhsBoNsJBmCwz5mNb8npCA1Eg+wF
qhlPpUIQaH1cg1pJO0FflXE0fx95pxyKtBvOLckqdo1sn/Wuo3eO6Al3HIa2CMN4M0tzLITkIht4
wyEr1CL7NC7o6RGFhu0QeFQ81/yig+pGC66Lx3kYEkwqZ8/HaJFAmT2J+nq7F0sdl/S5b3mvhNW5
ahBwHMWesi6oIk7VGudv+Ii8reVPY6lPf+21UApYAhEQYdX+McBHGvbdQ5uqWVxPeoXl4RHlV+/f
DNpXol1zZgaFSVD1kzjr6c2qcuOgoNm3SY5SZ3hPugF+ixVe1WT44hTbDUI8T3hAS04uxlULgvvg
+ICjsp2gpk8gGPGnzuZac7YXwLETn0EasqW/62vtsRYUCjopFHHT+e8RYiGxrT9yVwvIw8MWnyiQ
uj5F0JjIG+Vg8fpzMux94dl5XI9ZLK/SqpOwoOdtkqhU/FS81L/T2etbmjXW4GQkYPbA78j9r54q
1NnZlxFbIRk3/Tm7ukN1apfJiZrXEPdNdqEHZL7/Anyb1PL5VxYYOsfpkjsfYz/Pjmi0+n81RycZ
+RopyMEAhHTAKRdvmDBuG784UpVvAmB28z0CmVlQT8xVm6wRs9mZmWAuw3X+SnSvtBnOVwmd8p/J
McYdd8KOozx/JqMdzQJ/aDVLZH8zuY5mhJg3T2ywqr2ahRK9xL1oSYe2JFpftN8wxbRza1zLusB8
FZnjlP8o6h7rK/JLZoWjBRUKoaW5OEpXKtN9BKz3AXoGZesgw5ODlJ84qXZWpTW9NYs2z8ILWwAy
nEd/mT4rRhz5N7LviWdd4cllyKIgZgWb2fJESnQYe4MwGNdKapeGVLgPURtXjhlcfqadaxlIkfKz
6Rn4LM+kldEWjYowObSZj0wQ8JrDBUeqbxa5mOkn1JsI5B0cLl3+UEn86nxkihj9dPsIEkgCQGwH
SiMmMQ3/h7p6v0DwqxXb2i5oavWZ8LgJjqe79hvCmsHkYKavdiMGVM9BxaZR1+6+o4MgIAxh7T1Z
Kiap+0H20jxRKDuHGs0u/RiuVq2sVuTqd+t8YEh8JEhXGoZmZHPGfHXlfTp9JUvkiB0uTIqhQFEN
93dhuAQrtI1L7Pv8bINAE9qVVPLqVia7W2sj8nHTRRTYH1CI4aJ9lGx48pxpx4kCvzeCmNaqDK9Q
s0rGIOfJPATDq66e5KUoo4hv1xdzhaN+wjCbyA/ai05tm5DAZigo/XR5+FvG4Uwt36Gr8nH/dq9s
cMsdaA6KKswk15B2Ctbvm7dbTCFj37upFUulX7z0JY3/+izlbj02WiO3l5jmASuMC7xLO2HKvuKc
H3ItIeoRbGwzcV9wevRr1BV0PpgdFodZ4dxbEaWDUj9UzPWK8JIqsvA04aA+/pZf20iHTu/L7cxz
u2W3o0sxdjxdQqv0oOgnIPq0GFTVOXsej5KmikeFMOJnAxoIDJT9iFOj+H/abI7fmB8UCGi/sE9B
dGRvwOP4Bxvr0Xma7TX/i03DTD7OecpcDKCgor/gFfky/xhEpVleTpjO3LvzdyT18OaJM1FvegpG
VYbv3Ia8FrDHqZt475tEXFZGaXIot5Q8wPxh7KYXp7D8MYqnr0oFBpwHXUKiOiFw6Exi0zIg2+4t
ZDGEoLiKxLNGQndqICB4bSeRd80f4UWxGaZMaV38CMx5ZSgcl6icMa7tkQa5Vy5k3taSzrv7Txmb
VyhCTxhQSblMj2SIZREL795Mx/x2kmSgaQfYvdZXNvxj2ALQO/xaJrp/GZuZA/yoSUZAsaMvWWrb
qhtdMVmlhO3PUiOm4XbRhJ8qXPQRnuC5BQ5zJSMGdbjkSLewSkdmcY6ILRENNSeCAoRhF6sFyhKA
SGi4Et0PN8UsfsUIz3gZAUkZJfl/8/aEFzJ+M/+s0iUuZz3duEQjklotPCjjOtqmOfZLUJ7FDA4C
rsMR737vFy05aFlaea+svhM4JYMv7rpoXe/rvuMOvqQqtumYnnmfdqBcDGv6aAQEmIWsx5mvYhI6
+74J3dCEBxv2zU41u0ZgmDaccXaOnS+gtQutUGqdpjcgj83dA5ga8ImdQB0PpSbvhEp9cb9NtRXz
41kRw4rxdMxGdn1Ht2OHWmDSj9erIFEFrOaAUpAX/QoRqtCdCZfoIFoXCVqEdQAswJd9y5l9S0IW
DJlxL3cbEx9WlHR18AKMfKzPRTzs50xYwlu4BsfRFsL+1bOwYRK3fKt2wS59w4i0El7SAYM50k1G
rnX8bGCSnmbfxRO6S6GrA7fs2QCL1SKxsx9oqaPpL2tAAsLVek330aD8iwMa2ad79EcJT4sUyfFR
LOp5F8B9/nD5dhGmD/qdZwTiBdNtm6eCqv3qcZzRy38o+MRjUL1l64Fxwp/WKTg46qHt7mBm49Fo
FHoI/advk1h1g3KwRwhCJYiBbKd7S6kdlq9aNbEViyAJ3/7XyTcelJbbLxE/FbRcGbr1nLPnGyhG
kguU8DkhbGdqXF2Q1s+T0XEGXqQnIK2GiLCFTrb7XcOpBgQeE3CxBF/Lsb9HAzcOeJajicV3Qnv/
3j/3maxKeM7CROXYKYIWYXv8jfWjzV2EIidIAJmxK8FXvXJqD0KMCodRcNhRmQKMef2EkKInXxnM
4vykVAqFjhDeiVykE2Ir4zJ+0V/KFqRMiyHmxORCP2aA0MXWxJyiXFGQthYS0Y9ugGsok6mPRQt4
bY+miW+bvTBQPQ0DNspieSRO0Frpx1103xAOCtPQBrJuooUEiEpP1SbbIumV815JA07gjrGvWgUY
wq63AH5Rsgs+TiWuWGfFL4EE+MOufYP1AaJZ3JqbCXiU86/okDrT9A61MJPNx1ZdwB5q/yGv7AAf
6AwkV+AaYOZEoii6NehiLDQkAsdzGZyx7Dwy2+VFEJ1A8jScj6yeC+TXu/W8LqYbi/LW18tU/EAW
FMGR5H3y7pi27xSStAQjCoGQw4HDfH4QEha0UUH0/qyqCt92dUQwJn76gbonFGlZdfSya/Vg7zc2
f50dmNGwjab6QMtAMUNeF9NimXiX5CIfEEGqbC1ljZP3MbqENAw5sYK17+NaFwKwLZBDw1coeVdX
LCdpUA1nylKTGoy3QOIFoctNfZD0HinOSO1FExwA2++DAFMJ1cJOXukVusT0qjcEPHNlURVwjdc1
LboJZoXm2JoSDz662+A35IvZNXcSbFZznsYsj7mLMWZSS3ux02uM/cEAYNq+M2jrAZLKIC3uErca
bR92qj1C1XawUDBmt//wE7ug4f0FmpMSu87iabXeRT7H5+Gwi5+UzHN4CD/GWL9UZvQRQzKbMKyD
wKWFZB4oL0ievYZTIre5QnTH93vYPlfDMhEdAqy70MTgfe6y1GlI3R2oJrnRlnUzNjZD2lg4+PRW
+VcFUnA6muhEAm5beJlwrDyQvO3gfpj6xgj6wenWtJrE5kNWRyeYHlCofuGgQYBTNEjB84zeJ0wd
gamrZ1ur1Bz+eXxm3VGHWMIYR0r9rft4WMWZAgRQmwaSmTGy5I3oNk7nh7wiGk1AXhHA/eNrYDRQ
+/snt9oln0B+60xFrfbPODTf3QQpQLsDEr6k/ECbnmslesCsO5xPnh/FD0UimsJ6GRgY6FiVuddc
AZ3u4nBTz4ShQvpbB1wT+Zi2RpeariUzgPjlQtyeM+RoflOk29yZ6TfY/QhTFcFobcMY4ihURe2x
k5KONVXTX+7FEfBTHdv5x1WyEayoualze92Le9FYI5pSRaJRfeoj9td1w2nMmXA80OPxFMinoKvL
40SpDIPxH+P6O85uRfKfSsjdRgDHv8/L2g8esRqU362YyuoFlZESBxIS71qA+2SURk4XIZUij3d0
UmUX5HPcsf16Z+dDDlJ8fs7V/f/vL/yjwRyMjMNdFzpn/zoO7CuabEyigfBOG9XC7J6AOUurWqlT
5e2wYXKjmt2SHGK+tAez2bTqILVs//2UxC4STW1ikpeN+4SMznwQ0WdLgxi3LwbthZH0I4g2xWkT
S0kj+iTCOxbuQRW+OWSUH5DJ+cQUbam0vNjUqTX11TompdJU/VR42eqw/rx3C9xQKSa5Jdkto+o0
b9lqUdIwU5qVHJ8Iaya8DgJDfPuQ1bQJoVqvJTRo5hExHjqcDI48gBTut+jyGx/u1AJY90VU9JKO
xR2Ju1L55v4C715SgTt3zwwhcAvL5UB4ijGTom/yhjaKeo1lsGh3CPoD/mta6Bp5JJszHKKJMF+6
xe3gXFVD/a2d9OV50XILaSLQP4n08kSFeqh43+ca7bDNnN4Bbn4dGNra6YVRQyt0yd+xfmKVNgGW
cddXvMgewl3PHSTZzU2glc9rxYN80BQFkpmhFtJgBtz/X4l+tpRAOtezRwiNnb6NAHpFyeqFd9Tt
3u1bRC9hsbaUA+a7RVHNIFTfe4iG+W6qUahanVo18rVIWWiAksQYdl0OSQekuiQl86IjmGLni2mB
x1Ei5a6z/D/ZeJja8pN2RhPgugLDr+bGVBHPR+3tLZRGIW0SGZGJrBGENegFP7HyIlkVFSRXz8hi
GeA2rAkXdvBq0JF0NYtMC9exJidmFu//g/hy59SZrMhGSe5SE6retE1RldaQ0o48i5mI2eu4070G
XEl1OFSu5+XHoUDoL06dUUnFtRJn1gKqbA4UGWi6cziXq6ftydUPPu2lNltfV5fOZtcruB7HpW6y
LGHqPoUrwTwshANi9KeHIWAJQap5dVXPURqoJA7jHQEv8PU5r47MkrTIH+Tgc1RK8GM99oIQbRFO
fmDmgl8044tFjuuPuE+kfnm8bEFfD9CQge1Rny00OjPQcB2I5cof9DGf8zxECsig7NLEPCKsW5W0
PYYXSOISsEdMWksoH31y4YF5Aa9oVKvS6WvhACVER+wywmmVI/dVAXbW0Po6/mbEE2N1LPRHZJXt
yxDPQ8E5k2Ru3HhDUcDDayliQ3+JaTkd/Hxv4en6TUZ+I5xs25WprTGI6w5cNzU5Qn5PVnDn8auX
ekuKWhLdpxO71lf5Bitc5V1OqMZy/0t7eDlzWYg5zwphBT+w/VDzKPZdRTPba5b1Y/rvxmX8TSJ2
XMzs1pPfaRs1UGvgV5A0hYAzJTK2Idqt3wh1hLC6FeoJbAvudR7HmabWuk2yLtmSMZ/QI9YisfN4
vjgcxq4juVUrmEuv8h+OEuVQYocp0aSTT4NGM2ArpFfr1T/JrmErNlpQrrOP571QTZc8qts1ci9V
Ry4Ex7DTs1Lv60NcXPbsbrbJRNhHLIN7ycJvK+q6CKAbOnG9Ey31F7lOOkPu56MbgASxj8yt38/P
xziBh0AK6F998YgXCrlfMRC9f8unujwSgE96bnKUcYI6GIRNnbp62fFgZnqSmUTCR/5/COmqmwVj
y4yQK4+IDYxBzIqIGr55uvoJ0PB8DswTciMcyXr4YnzIEU/yJJYiPHH7rbk/TzBns+kwRVKvx3kR
ybx2uo+08rlIC9N4OO3HSFMj0Ksn+GTFaNfUUtPYt7PqS/ZYEiCaZMJwvDKNhd7b1pijNW/LJVZs
eB5DSMXMEWVRfHZNVEyxPQYR/MkkRkyeZuZIJERlnEADFO192KQqzFGRTxCFRBpd01qa39TfSU3m
ybBFMrtVBCUFjEER6ovupdLlA+YyHVPRobRcNkCoKV1sVkwPwEdqbl21bzfZpN0njkGGODprevEv
DzCZ+Byttk90zBqUHB/oxEjQMDpj/hTl4d+5YWfKdkI+I7oVxwRdqpJmVnzDlRiNVdB89XS+9+4C
/fNXo03YoCoG4+c8PigXeJUhAvR2cFpqSwdnRDvd3EMH8ICm6zYV/TgUhVWJ3ANGRYMCuJ7Iahum
BFs0VEA9X4RgE+IRnYX9Dh019tPZI0Agd4Wywa1LOHm6gQ5CVEg2EdNvPAMOJOAIzKRZGbVZfBsx
qZUiKtOvUpKdcAnbouZZAjSGAWMWwUr9GveBluG7EoexkkYVjZuj4/wSHnLmUvjy9ZKk579xhO4Q
yM/TStR5TQX3q7FktdDVHaDJd7u5esk0ge9BftsgloQezIdEh7NgDYnB9ZE3ymmvvLVbFd6mRl0G
9H1y5JUpFXnzlnp5Mroj0siglzFUHNoWZqrlQOvNYou3Q+++fRYW8L/4sfPuFf5qnIYBsqV72Ih1
2GuAaESwCMCIYa1O4fjDsHOg9WeVeeRqXf9iXa6RADEf3PFXDprA5uONw/fiVrqCdazzNILam69X
UTwQ+rQgvthGIqxfNqGy1LQisKhnEqwJPM6twAxVmZ3/cS63uOx6/LoxuEaZIqH2FwSpGOy/oMqq
ZvNGdTh0To+949Aae55Cj9sFknJ2MF2rJARi+2WofcwdikX4VZVQdznU4r/bXLixEJJ4yrX9gXAB
pTJ4UTWknn2w5Ni/ZfeaO99CUKmSnnNyhyBx8Kv86bNE/hwgec5IlFhDWCtS5WfJgHmhpPdNAA6v
TwwTS8sHPVsUSyGbKDxu8IfWfcbVlp8S4DVnRITRhetex/WgNUe3SSmFpcmEoTl+3ZzpExNRdHTZ
vnNwAgR2iS4ucBSnV77qJLd7s5S7Z87lZDuEoWKN3E4AVsB4VSlJfDODkQ+HhowQ6M0nTj8njG00
A9biR/j1790f1s7bX5n0Geaxy4geKGGNup7emnrMaEt9p29JuJDwjFjvz4EFDxBzjSUS9vjBhaP9
vg42w4JYNHlv77N4qEjGZmwHFkn+YWJ7w8fbIzWFuELvzvrHzWiYkwY9kz6elznJetUXRGNAdwmQ
IW22ywW/ECOCk4JXYYe7xTCLKIuUZgDb56RBurXSgeCwl6FybMCPQtju1ISbHRpKvLL4BkJbFd26
XId+sAzOF3bjo7kB9hLWuoojTu53/H+PUqON/489V9dMlEww/ztmwYxELAF9QTyQOpwHV3dYnjSD
55q5LVOf2+pJCezw0DAnUOk1gkHlVZVehMCVjApn1DxUeC1KJWEuB2BB+w4sP//YqdMaw/PCZdpt
Hi3zrIpSEGg+VlsMqxP3Ccmb3Aa2rZxrBqRuNQA2ow33TOFE6SZ/PhULXdAY8uglIbOVnZ50Rwzg
/NNzwszxcoNI+Vxt91vow98xZM/H2En6AZVhnJQWN+9a9lwdMtkUAj97Zt/BpTN/9Dg/iQflbzoM
5Jv0DKGJk6zdP/wGFHEmzs0v723j7mRDdfh3kscr9nyu4IXPzQBvXdlqYE9vc6ZmO8mcQz2T490e
D1pjjsroKDfrZDuvtugRSBm3onSnh9KCA5pxRG8obwAefdj/jcTI+SQy0KbG/XRbBD0IMCigKnHt
zoA+Ranzc6N0P11knYJLVwx+ogcluBoCoPuyEf5AW/qwMOBZe4sj/RPSCYTKQmCFS/VB5g6ygLq5
/BKZ/FcS3KHX8oY+VQV2EigVwoOquyOuHDCWm0iFY3yypiSNfvO+x9legjhyLrlIc5OxQOGaJHY0
drltZ/jWS+a4fd3f554ZOUYLcRr4tlpBULlEnUAe9Q33dhdyVwCC3csOkocHreJmW0pwxDhLpBu0
fJrkc06AP2qEZD6hUUvpEMsiVt2NYmy++uPhvvF19iBpfUqesn5X0TVeqZkL8SRfJYSRIBfXft0+
PBCSFJAkaRIC/xd/ZKqVEpG8FvligdvzQlfjIUdPy+5MXkHB49TU22ih5jiIJU7jb4NVQBIoSx5u
K1QkiTZGW4Fqpq9iAIy6diBl+DSzN80AqaYgyv4QCSGTBHocVDUL7HgLxIvu/M6d0+WwUw6Q7NsQ
JWyhGuVeFiKGiVx4t1BPksXtYd5aLUugWQa3damsppm5dAY6E5KAmSth5hFdx63tU2tKBPUKkPES
JpZfctxmd/8Lt+Vu4gc8lsZac2GInB/smQZxs0jRefULhqW6WPJ3JUIZ5SWZssyWNtR8DdGr5bsS
oBLw3j+CzNgI9PV3TgJ9VPR07kv8i1lOLWvQ6QmdFL8lMj5kYy4tQrdhbQ+2sRiNpZ3bD+igK5ko
X8vYeo124qbG8SOe7LjRlFC9yswLB0fFOQxBQZNx5Gf6eUQixyHxg0XMrcRGGlDUTlboQxDXtGM+
trh5bAgkm8jBZO3crIMWmgEh4s9dQZd80h7qe9Bu9zDgdDyNNXzUnXT+5oYPhYTCcnWc+7hvXcAV
sL9CevhhAbX/riIQlrhnbFfBkbpvU7ezj1Q4voWa0loMmMJz/L8hqUqQKemRZibxDdXcxBMqMSGc
fQrUX97+f99+W5bpl+1j62+I4VYaN2FkW9beqckHHH+58/IyG0FYdyH+usXWLzAjPaNfz3ri0zff
tXufDhSLFO8672DVMpG5dnRAWg4s34KNLp9RWCauiWsx8TqvV+sgCOBRyujMgGvdFv552iJq0CXu
/RYZyxsfMNYzVN46P51cqnUFBr8W+7a0U0T0nMxWGzM2YqsLKd9X6W8WJeY8hsFgD0afCzOhgn5i
NNOM9puu/l1nwRYIO3GCSq4RpgYQOheYy3sMUaaVEKenEkaBU1Hb5cQYGWbxQqtVlYDI05T+fM1H
oFVGTsus1uW3KCEgRyILiz55cAq2ZuaP/vNnCjhnhBh2sa1algsj4TQ6msTG4Uy2VfGW/ZZ+itBO
xgFc/Jc2r8dFEr7T+pP1rxf84tTTH40eqzRsbYtrMpWL33CLfGfK5pO9klHhmEtJSQcIB7YpgICu
wszOpMUb5lv8Tth/plDU6AZHTQ9uTgX/E/JbWiS/ApdmwtuJ3GE6mOashz7bzWXXnh+1eXdEFNY/
qx5lUTH6dGm74RSWWEbSBJgkkwJvU6MPzNFsoCQ4pP9F7vhbroJ4KmtdaHIRGDAVGz6t3eqGE7uF
tPF+dzYDMixw0MNd+95NA+AZCBX5gqiK9chJsYEjDuFag4LUZl/2PSl+zlz2w4sFJXRxvaHwI+D6
JlLPpxwcCzzC6NR5bwTmnoTCd7iwgqaPpf4pK36hb9ltXFeMKAcNNJvyyICBDtiCc4jBs95POHUN
O0HE7g0peW29+N17OcP8MAxrJa/XL436QgqBxE+qLZkvLEzeOw1aZsP9xHbbYLX5P/T4SQfAssxn
+mHsDHKBK2CH61cSoQEP+vd6qQoMgLyLdYrtzy8JM6lhRyuWni4O70T/Gpx3sK993abEkIbiVSCR
QdaoTHzbQb9YiYuXlIkYzseiG5+OWzQhZqOywHrkORs+w4lJZ3r5SBuxj2jT7jWYN6KtymLfS9Yv
T9XXlfcqZpz/MPVLWVW/q4AI2d1kF6qPka5W/yZtWz3H5cfyDP0wJ4CqjtLOZLA3qh4EYIOVj70v
N1L0Pxi1UQ2gEwdCnfvNxgPqVWG5ta27wLfHfOe5p39Irza60cnZaE+J4cgkHUudN3ipMLps4Q/A
PmaAiAuwE1ohVWXIBvnMDSpM9sMi5qNSzl8yX+Wb0HlCbFAScWAKSO2LtxYI/pxltodesgYT3Wp/
SqreeWsrUuNOTODsIwg9v++aGH/D7HJl5qsh8hA1/aiFd+rVoq2E00nTHTESdrO/S8G1Ti/Ku7jm
44D41KAlGRA6keMamNkJRBc2L4Eg/Act/Xc3GD/wHYLea9LXmYKsCOXHkGo15QX6qEOKK6C8MA5V
1GwFNCD7/zBeGExAc3Sn8gbGHGF1ZyrAuexkptSOEGD3J8fGGNC2zaG/XPcIHl8vHkyN8Gn/auEn
H5TGqqDYTFOqcVdTZVbfI4nfHg1xH6PBgNGEgC9fADuG4sC2Vg3kioYonpmNcNLZ34RGcFMJE1Qr
OC306kvCwn+fVOnQURAALoNS48fd2CCLN1yDNWhNV/PtTRz2qm5GgH7JfwAJdhIY1sWWFWGVr8Ta
D/J9T1rfd9ixXFa3W2/PQ8kNoGLNXOwqBpwM/t58DdIIyeACa3yyMCKafdq4SpQRrGdVm3KqVqsy
OfnlicpWZApYR1UQFUdyqxrzbJbH6C36QCq7ERUZEoSq5MqbzQjhBXSQMNP0VtgBj6jjAPK1qqMN
iCtf6evklRNRGmGfRy8KJho67cGoxELOU4KgpWWBK+y3s0O2QzcfcSNAwMjD3+7LviywCHXhIshz
dPQ9s0/lbHzlY7zU7xUmAvylUpB0DE+MFyzmSAfEuJqq0cYEpjc4KGNucwZSCxUrCrz0kbvxvgu6
7qhijV4G3z59eMEliO9j0XOcwGjEuXsN9YSVsrV16aM/T4ZXZklK2+7QeikZwce5jwphJWTmvDU1
CjXNhIt5ebYTskK5bWPpGlJvQigPEKxm+A6Um0VOyeXp7vc2Z0MFg6GL664erPKSK8+L7LOa1KxD
OQlzI3P40bq6CUtErGWnqz5cR/CtAhUCdg65zJHZJ3gjiaX+mX+kMfYcawCYnKTW4M7zP3UWWdAy
gPtrED/swgCxODZSZ08Ot/sKFjCeYuvsS/CfMTv4ZGlXmXCuS1DomIRX3W+UvronwrHhGvR1K6Qv
jPZawycSaFTs/aN4eJg2Ut/tCvjQmRuzdosBE6FCUGxS6dBndBqsQ6Y4cmDylJhMrkQPDPaTArts
CndwoJcUEcd9io77ANdpzPMoFH0frzUMDwgZ17pRu8nGMtBs62DZpxZoxnOTBeSW/kTREr3hN4AJ
25ULeoGWEYcTUOy/GN1y+y5USUxCXHxUdMGZhI2vjEJL7p4HSt2WDdDO/My9R4NoLJLYZfhLpjC3
X4hKE2eP2cSbWcAoNP7W0iaBFHUVuzzMsKsqRjWabT4hEVl3AKOzxmnlO0ecqNzkocV9UtDd6uEA
WqHk6OfCtvalBQxH+e4A+wCwy3OO6YX52DR6RYnx8Y7/QtMYHuqxKkF7qvVUzbCIGuEKNx0UZAJn
XhIWeBmHlh3zDDoJ5xU/BxUN9qGDH5HnWcbEQS9M1De03wesiAxvLYopR7MM4Rmy18bBdeZ2oVYw
apxrUyHT6Q7Szijy9hRIbQ8AUhiSvCs0xcc48hEK2wGVQmkV9tCJXGZqebpd19LRxisOlJhbgKZp
tB9hCmoP92xlvZ7xFRhnSKj5e1qifJ6xxyYklDoNg2DDe2phZBWixPCSN+6MW0hi2FZCscZqBQJ6
rKlfDhLVSqL2fOoHP9r0HQiISVGdBL6dxxZDF170XxlEA7q+8R0eS1dLaUJo3IwMrcT4DLMn6Wsx
3/aH2TxPBKBFxRgHJtKeAhg4LIoVN6z9wUGKfWBXFg4lium/OHS+HCtZvWJnFrbYEtFIn2tuKf8m
BmFv6B3pt6QoM7WwapkFIVUHMggMSb0LZabhRCKv5mwIpbnJKutPpQ+XyAclJcg2QCHHWCEgL0kD
tx+wq86FVusjy8fm9kbrauLTsDYLdPv6rEUZx7CUQ+5t9KbC/N4JEOT3H3Ws7IXybLJTelPcCIYM
VjTo8xakHUEZFTJn6SShb6R4Lbwngj8f1ADj2i3jjBjPcMEEDRmnxz+NkQJXTQXe3Pp0wK8X23u0
dBo3zdVg1O9uDUZevNxy+P/LaKKVIf/jDORn8LTcKe48W4H7LReAjTbFJ6OUQo+yF5JZcfCh5uCM
Tkok9/NHEVh0lq3MVM2OupjrwR6xNRqFjhqf1N+YoTbKUCEqFHQVJ8S92WiJMdTc5OSX2DM7C7DQ
bQ2Tjk3fBIVLTbTSwXyweIwz0ZzuT08debMh87BNv/R8vDZPZ7EV1tpRvOgSFYZtAjhSgZSAdo+I
7O3DOPwOnUdd3LLEEAppvR0/H5Ig8Cm48NUjxksDBtzeYRCRMp/cOJyoMtv2TXBLqBzFvp0cnCe1
E6eSbNWgmOpmP5fpeP6bdTi84PVUqz42DcrJptJYTQLMToeYfQLd0SBcfSQR5GBnFVFVHrxgDwql
uwzQrxaIgeBMNPtLCEGcKDSk6yilj+r/PU5SmjI++elNoCVr0A1KMt5veFq/XHMwr98Y2IvXrcSP
T9d+s1x0wogT6yHU3FCCD7Ank7fBh0OOqWV7aTCbAzDLONIwCZ9an6LUjPoLbDPTCFqUHNTHWwrW
qR1Wr0ok1kUeYF4IB1W5awQneogKUsP5wg4Nf4L9i0P0GnOxqac03jDuITtA6OewwB7n4F3RPtpf
Y5Zf2KvBsBhQwMtxmcm2hHRMxsv8T/kXhZ9soGqXAQg0fVSecEqLds2qE/8fdhXlodAQ/FQeC2PH
yS67gpbRuo1ZM5SYLzMFBbX7O+y7J53p9X2TLGOxTkc1wxAuEY6rxAeWGxD4bm0CqGHRlUymy1xl
rNPSdgN37gl4F2uTmJV40P37iTPmZnEWwdZPic+0hcS84CDWDVfKK1lRsn4qTvpyTUKb51Zbyvi7
lwMcteFnFUv6TtzdyrVkkxoskOb7G7BThvvtH/nb8gaNiWii2zLCoMnp58b8jLYIvJ7BQ5jex3ir
LN73X96GpP3pPKEWF1XdrE/r07evoIzYmBBaxfICa4AR+qoJCS2pq2WbwagtkaoWelmHJLfmsKSG
PPv0tssJWR4lpQkSFD2Lk0nm/WJHksW6GEuC9/yT2+0dCqgDUqPw3ajSY2cQonRdk3FMrHzJ7Nxj
hNKjykkwDIrYuN5395XpWSbCBoE4xctvqBKhqDm77zynSbu+ogUKx896C0uhmjG6ysiJfKWkdtjd
B9rRyfiKx8Yo2pvXeKwCF0zABOSWxQsl7vlJJuDQVrvqZNZdjsHRWyLulLJrWB3RKCuNLiNgKxEV
9VGCu8MOlwVwMWP3ed2JU49KfVDqkLXJBg70K9+qltYKO3Sclnv1zx39hxMVLoID0qhSmd+CV1An
r9TwZnh02+v/V2DYyZWso/Y16MZGZhUypdfmGvj7xLiC6z3yPaCfYJV8CW8OCYYuV1j0RGeBDkPS
vnMp287jqxxWKoV6oZxZIbWOA8O1Je7qQ794b7AYp2LB6BGK7YPDMo7pAu0VXLdLwu4CdkWQ4rly
4X0IneIIKW/VsyXKCWhkvDjtl8QZ4Ub0q0ibddQumEG9iXAdy24L7I/CjG7nmSnfkOm1XCZNRLwp
ru3hu2aIOD9Yd4/mPrPuO1oPvcIidu/Uxfv/lLTNMUVZ+ip8mUKLOAhUbnad4oxcV1y+eRyrTGaY
BEyM16WciKLWIG94NWNilZYcCm/ZBTzS57G0MZ1q6NVEd4pgHLmV9EFgH9/zY9xAD1JhU7+PpB0l
uGybtkNWQ02K7DIMbsGNUhaNM6LJBwpd2jDmPd3Kd5Q8ZLKKhc7NQtcrKRds/VsyvEAl7Gp0hRch
FuDzfUXxdCSZYHSGH5Jsl5/rRLVi5PluQwQMT7/kOo/zXuVVZjmq0daToWfkNwx/+IifquyOp3Vf
kcbNjtQ0HgbWHQupZ7ecTISFNOfb2YNyYW19DuSKdEhnz76r8BfyoV6awEsbj7+mivYocoQ8ph/t
rQdaghzRwfwVANz/Yjf5u7r4gu+0lrT9e+IO4AXNgD9frOvJrr1/ekcexaVQMLKS7bvRhWLvR97B
b5hqKhrGvJYOJWnDsnLjQ5OGX/qX01ANN4yHzVlpxM5T6SR/2iVPE7AtPdNhiG1CADRNkmufa10Z
+93wx1O7asCd5xnMn3SoxSnq5DzyG8TErHKm1FqCZxoDyz9T1feGqrK51aHJLGEjH8lAe8sNjSFc
OzvJN5Y1qOEWAo1VCeceioShp3K4GXJfCGRHHPlxxTisF80+Yp16Ac0XkNf3uX4i2+ZdAYSl//dJ
e7zLilTZ/d7glSUec4SBfmv0wNQhP+iWpgjbbfpDqONRDbGuDhA1staVkitKvSoDC8xrqzOWP9Wb
shSWsHAnERoAcEjSkOg3yE3fZgGBlhvJd8iyfSnQGNEfFOthFJkV0AP202GliH0Xpwm/L9uLmHhr
+bHexI4fZSTx//lNJCZG74zbepdsj8RbpO2ccFec1Vh0WnYa0kJB6EYt3zXZ9/BywzqewCH6Qoy4
HDBefFQpkp+kW0MQqNd39rrJfejFe0i7RrkIevzhai/WMJqw+xjpb7MMh/EMXJxD4ANCAFsWWabk
cI1MxsUZDT7O92mFq9fG0spcDM5HEFMK5WmQ9nHXW6OVWXhyBh6Vq7WSymQJOi+iAriJ2LMSA5pS
O0jZMX4Yd5f/bjwyKcvWXllLAi7hskDUFaiyRCMKV1PpLADQzy3sem4zV6+9wHa7IaRJUGh262eR
MG2dqt8ANj5lntYkhiDI8azD9yPIWcJfi5FBsPf6i1atZsNSNRvoZBYVlwdHMxP6UJs3RfyVAeHS
MJogT005wEAq0+01uNjQ0yc7nfpQRbP1IJpLc28Tjmjp3VUqj2EtdHfJier9nGR2aUydFrS7PdsV
NV2BuoHmckTaW1rTHHFO1zGY3Pcyb11YYsav/aX47Je0lmG5QjP3P1agpeFEktowG31XLr1CL1UX
1cwugZScIjH6g12bG5jb5Q19aMK9EDFOiJI5kUwrEwp25f+RJFlHU80Gu5PqEWXfpalIYeRzGTnH
xh4X6NBnPQbuLbqi0+zmOF4LrDGYFdR+oLgSugIkcfvyH2F/W4hiE4IvWYtoLEJtDV+sryu0kwfM
zWICjcFKyyJYEFITOzv4aH6JL3hOFYCppQt3USTVqC8ozx/IJaQMvKKc40FmG5Np7GfUzNuiTgDw
YRkd1ee3ZBJn+KxfPLvT95wh//Wg+ru6FfgJCvs1qrYkQJ7hHYWjqPvc0Y1Un03fguJyKw++XKe0
vPJAhayJ6qEOeegEYqk8QNkuFuhfDyCDMiSlLYqft63PMEUzWEmzO3HYTg3pWSakUlVHqrpM/n9k
p+cJK62WJ9cDP24P0nRNjwwXkZUScTMDYx4/XFLUu8Q3PbDK+5LQumjBw/8LBSpUobXCnbwrz0M0
TvWi1f/sKMYlGnHRFbGNUvFRHIMfnNUoIpnh2dKggXnJUZ9dzwXsRFue8OzKswe57i65IlbAv1w+
b/olr2whJfzcdnrW5ScZw0JoJCbphRUMt4/EtCjFMKWQRcxnhD0sKMwXnMidROwRyW8qIHG6s27f
T6cHJSP8zmfFMvcZm1We4US//jSmkrNBfXgBZGWxzsm3JE9rF0iDjCIo6dO0LnSaXGWgVOZrTTI0
nA0iH6lkDNRKljBQiNsxVHFfnlkZZUhSHYpVXDCNDwFc7v7ObdyYDVJSNQgWOWEwIcZJbQgByrvl
zgbyatxaeMvOmMlBqTZcWD1ncJRqDK1RhZ1JHYbPk8UGyz9DuVPZ9KiHueKN5LydU5JUL1n+Udk1
3kq6oBso639Voq2lnQN9rveB46xCp9TJzjb7RGP16ZHwLR/u8fbnPgKx4KR4uNcdIC3aF5MXHWGN
YaaolCstyp0Q/2t6E71M3KzmrujdaY1B+45GkihRpog/4jrkw6zCV73vVRKv/NbZ9tn9s9FZ23IZ
xSI4euxTqfmdlnArW36TOdC26luGevlepYkF7+jo9foaoQ7vEmy7e2BRcr5I+TTTt5lpE0eBdzmH
Bihqmk0auNQ68rulZ7mSjx6S8OvUifp0FdimeMCPIeT19uquINlvXhZZLOETqSZrrPeI/t8/Tvsg
W66RxUe4VpATv4hg24DzXyvZsbBQLwQY+iarKYKz/LmH+ZEkdVLvwutWe3fS4ARKbiUrHsAT7EnY
PbntLFgXgjv3lATBOo49lPnXpGoYcian7bR9T+6jNxFVUL5S7re3RGj9Ah0P4DXkp/X4b1VKXO6g
0i9xTOiSWFZB6/9liHJ3pj0keHf7a+Liqf0kG0Si4cm6yu8FV5WKlkzeRN0kbBXxk72lPOBWpq5n
e4S/rgMx95pn10zhK8Dm1HiP5JDaMsj4HJARh0k2haHHKT41BUovWfUlyjgutzEQr/ojqjG8jOjk
VeiTY376hYF/CsZbWi+Z+aP2JwvsNDcd8cByOyyqynh/Vgim+BoeeWPXW6YEMeBr5oIkoQLdezM3
RsmGVx8xJXRs6li1a980IRJtIFzO7L3YODYJmcVOfe8d6hZofr9NmzICOG1q7ODpgZnBJsZcVJgB
bJG83iZ5DRtEqy7/szWO4u5MJYt3MNKCIt4d2G5VYg3RtTUi5jP8KO2kuPhB8qu8zXrvkyaXLRnh
wtmkdTEO9fmOrYEyNvxp+PNvUuiedqgdAsumUumCrQ4Mjrtp6Vl0hFUrxPYuN9IqxXf42Jebx8Ac
gFaeTzpJGe8T/sttZw2xcodWLuH8vsZREbEoq9Kw05KF5pIEDk6AN2nPYBmPXvjjp5lwF+/6r7Oy
LURelFkjdyMNVeo4gHsHeAQws7R3IszcLxuCKw6VW9hh1B2uVsWIcXLataA9F5JLc4yff3J7qC/6
9w3wyPr8w+jSrJ5UuZ8gcPDH71+Fk8flyvgNJmCzKVycngp6Ym3SQBcgGZtuBfBn2Vihi/Q1LSfQ
8sEe+CcYUw5guAoxyhHgjlRcay7NfFIH5i5Rl6/19xoLvsGTvTSyiSO3pGGtGgHtzruvoIglqQDI
rC4EdrVgYELSg6oVNLVpFzg9kY7xbgvyqCqHkRV9+xt3qs12VXwepXYiTmRlophU5b6GmrYuRuTi
MMET37dQFm2OGB8r5Sxuwa/WjpcFRTBeqWBiTqwc2OUWvWLqDlpqI5Kausp8oqZpp0oebs4tN5Mh
voFte7+8YXx7lylMyX+84zaZxJgeXUhPcHwOOeX8WoomK/ZeZRWDJtzDtRhX0a2mLtM46VX1VPdT
H4jhSw3VkXxlO6E3fm/NFRcc1Q770dN8+L4VW57Isa+KckXv3Tz1vfHXFcZfUHHJJtceBPKH3zdE
77IBE3pCI7S4hdm9p3M6Xa30O27wb6ObL9xndGOYbX0ERhCdassA6JoMGonxEq9zY0Wc7tLkybKl
lvZGHz1FYX5qXCd0owFQxju9+0dOVZaKhAqbk6+5TLQO0nYq1J4qAUrppZdPa+xLkDkulUDzsq8u
bXUZDjR95Pjt8bZr6dfxBB2hPjZxZ5V+JWRwE76ZEtEM/Hqm74aFMhbRRu370YvUYyN8eS2wvHPN
KSnQkoSp2BEZco/xpIskBnPF4+ATTD0edWh0q9GI8u8TLtIaLtojrkzKu2s9reXbmVgpDyEZ4EL9
JcpATilliiG/wynNUPHBFtZJ1LI8cTtlZPyZrUxp8JL57hSMxWUs+tDhIGOHLfO8meDxc1QNMTVi
+slqwjwR79f4MkCFyuj/yJJppOE0wIrHI/AZ4ZTentTGXEeEemd/pi/PacTYx0Em2/DBYxU55vuB
575SL3buQamD8OwohafAl1isETJgLQS9hXTzhYGEZS5jzRXYsyJjLwskbJi9ruh/ol6qOba9wzyG
GMtMjyKbQCx5WJUFc6ANVUKtyYU4F7kUOWls5guDFhOSy/JH6InKCo7EE2IRpCo/x6sRcTV+ew0t
/YK72b+qDnXxGvWIUJRMq1A9CWw0DuPwsoIxtziyPfygXXwtFsRf6/RolY7ixE/6E4sbLYsGkqTr
EEpmJMxADIR+nyVnjfh1+D5v8BynJMF1xxbGqUYp6gDkFaZxLGskoPxy1U4gPonBmp9XrC2yv3BD
7IDaCivl4fNV19vvzoplMwKIqOvJD7fug6mpOJPkGmU6M7mJhM1fjLG3flcyLChlPhUq76d8CJtO
fMMd91XrPPVNvL220x/U0fbsTqkfk8KZWiSN8RVMkdhxZIpZkhSGP9cuJwt9vqxHs8V8yBLo2VOk
syMdYKM/CFYlLFzHN5mCbZvh340OHks4Z6L/r06GBLQHzUgQ2SpvXKfUEM8oWg96W0zKeyGrBt3g
DReTMjPbYZSCG8TO10Pxzr9uBvpGQWnBMeBcH8jYtqefAtlvk0RyVNDfaOcCR/TJo5dyqJ/rV3Yj
46FqBvgEePShbl0DV0Gs0LTU17VrhUyn8dOA165FmUUeHYGD7N46Ko022ljW6oG2Rh7IhEERdpjx
IV8HC3KwGx/77BKWQcmx93PnBPfgSJ4f7ajKzxo20V63ugS2Of8WMiQG8yhRenkPQo35JKAiK7li
11HE/rZxuzzqVFOm0qBzMbSF0fGIO+HktEpKIOh0lo6eBckUdsf/QvW6J1NQDyqoYgqv1EDPkVoB
UVChhYQ76ADODE1ym6BKIhG7cJM644pKgDH8bB6Nk0l3U6N2YLDYwCl8F4/FcBIY7+uJAGGDHIZW
D1jHpl6oNCyL3K40GsUmoAvzq+NrTbLJQ4RDV0LHMWR/jb0wnGB9xvrudBPxTgzxmyylD7Avu2X2
DbJoq9zPaYKJZl6Rj25oKC+Fm/9Rr7uoO++qVfG7l5sIowBKaQv7cs4QDmBwn6L6zEnnqVVtunD7
U1QrkYjPbttummcTzZeIaLa6aeZV3ya15lyjNd3AZJ9pjZk3fjD5Y2EBp6MW28xrO5lUcrbWO5gW
qHG0PwWt0OBTHRgM4H8H2uGw6Ss6I3tH3QVsJyLv8lxNMhuC170ptIfZ3ZYzT/xJ+kZER/3ofCdd
rg/o4gza7nGVsDhpqLF7ZexfYU5jVZ7gdCMf8n69SQHT5aEBpc4dhtckBubElR4037dMf3dXnYoI
fs4R7g/QVmNbAN7uSg/dlG6n0QuiWvkiGNO+kARUwGbbZuSJCYhVOUPMakchWNRpa42iffUgXEki
oJ5Coeo6ZCKvuN5+f/JMG9f2KV3NYeGq3hQWhOtnkIsJ0WPcrH4bMERqkFBY+3OmRw/e/jNHduuf
IA7q2Sen4uClnIaMdFj9oKOT5U8Khzs0f+IB2w5JVh3gwkGXyGYF7FQuW9LyUZzIK/PGJlARO6yD
rgTE1aGoe0lNd+NpOdssOKT9US3++FNMUu8CQmbCQa+SCRsMx1uC8rX7ILx76UHWMhm/RfvrBdQV
OtAKQTC7ptdsPb4L4IjgnpId+f98NkkgZBzxbGF9nELrxfCAq53g0MlaFIatF00JJfU5GvXuzVg3
A6KNXlSJWjnwhbfx6xYt0baDUoXc3W4SwLIWEkxTv7Z5cEV/tCP62dm7Z+JI0D13iwHrCEYlGUL1
BwOeLFQpVPiE/eT4HD9aGXnWrXSnoufWYm30T7Ygh6P1m8HjRJTcrpPmrFlkoiZkval0ZnykYqfm
hT0nc9ruC75jG51arEQ+YgMD5eUuOZyOv8DP2TWS+sXFExDB9KpOizClp/lj8nPSULq2nUA1/VOJ
EkDnpnz6ILvGetMiAjaVazOqxQxScYFU0JHX/nutAhkVSMg/eRXnTQli7OtQYqZIJNIAv2i+12B4
IiQt4JDioYx1SQ9GeuRrjXFYtbMLijFZ3e9r8J8ofsZDxNf3nNjaRufQ5fkiNX0ds9YiAesVk7Ep
0cWRKQnmbz9nCd5dRLPsvKkm4vkF7LNFSdUEfa9Hb0T6oDvUPW42ipKiMk9MVv4fGatZoRoKSDei
MrE7sC6P+7sDHsFn3ZaUADGEao6QzIqvprJLf00nXefpaKeZPageDVgXX6UeHPHxYmwDOxoMs2j2
uAb7hFo1pThSo7SsCODFPP6khi7Am561oATHBmOv6N9guqI/0e1GG0bED9kJ9aSEwBhe8/j+eHtg
sA4szNFF/gkYKUawWUYseAOHtSVbJR1C9s9qZ+IalYxvYnCB30o2eW/YrnJ0rO48Rk/GTLpEb+w5
jZJDQtMtwPXXBw0XHyOsk4Ff/8PvFJ69gO7maxUXiwLeZWaUc2E7KdCvuRt3Rvytw4Dr45f6AORP
ufTz0xN9gcj13KldabwoPiwHrlxQeZ9hPu+bc69AzegKNzshuI1zhEv5QXvNzIcfCZEVdwcxM4LH
eSmXF7fhhthhP6jr5Q46+oBwmLfeTTpjyLXX9q2QLZdYeKP2TWTGRmtIkegwMNi9N8Y1pSmJ6/v5
UoskHmz4i/FT1+hWJGndM2KP1lGQ/7nSg2QsQ4+g7s/xqb6k3MjzTf3ppMnxO4pdSS4xOx68aD1K
DKyjeUHK3tXULCnbEMS2t5tXFxj6K/az+Ib6zXsKZG88g3wlk0xmgnvms/2qI5LjgrzrYGWWOfOX
Lq9VDLV1sgLofmyXc90/TUVlf+N9JrBtc0p4E3JLm5ppOp2ldR3HBf5aoLg+uonneQ1Yski1i0qF
Z0YsOxmIyelB1riPm6wHg+fgav+PtNCODcbGEhBdIHSI6DoEB9UKApTsdyEvSXs/vb5cssE2JHCr
4J1OP/8OkdKsVyFSw/ubpOV9OpVX4Bd0E3Pz9H5/raCZi1nrsILEQyDc72RH6DGT50ncuM4yPCJV
d6bwp/K4s44JIGn206Sr5B95MHM8q5njLHv90+SjjWY2vzWfa+XndsG75Q27+oIBtXj0UzAhCixm
Cm1Oi4e9noMoDWj6GUZhP0NNBTPQUBxx3emZBVRnOVlXEDSovHeWJNBnOihCwToWbEmxRvFLWcFQ
OnERsZHCVJpp1LR+aZ+B8ytCfWeq8a/2aKYQslI5Wa3COYQYrxSJlinQq2FzdB10OJxGXvrwyW/Y
j6reh5Bc7Hrs2mCe/4FElIGkA72gLMy9o3/jvTOquw3s/oebfBgUyJ4omRQv1CvvD45+81ky4R9k
z2DCcYwvhWttCUlXJivaiWWGPpo1hprOgTWFezdM2H/pLAAKhDptAPaBUJBnw9VRwAcknPa3DlqR
hP1IbMThu1Gpcj9RioJmsgG/GmiVQEErnnRyD6yB0jDNNDoKNCVL9R9WK+8cqO0IiBrDxY+zMfo/
qrKX4dss+HkEUtxYF0SqpLs0onEcFqr8jRw3MScrS6plhTB/CAX08Pv7+z3nLnI/4ZNURRBDSuWW
2Fxj2hg+tAGdI2/J/ghkyyAQ5gEur9oFrWlvX9c7Rd+pWaK4De3X0I388kTvQRqlH66FEZFdqmIs
9XQjS3AkPY8Dpu7uHZLGa6CK0SvKQQq8m3krFMMBirOk/lA46bQU1x43PGspdGfYncjG+QbJrESG
/vM8byiovxbBZGEucH3HbOTvnaUp9IhirFBxeXPXxw3fMHqPNiRf0U8PL+eiVvhvdaIk2TPAK4hu
M1Dpdh6AgLkhVDvJcjEj5yOk/LsG0Xp0a1U1G7Di4Wvk+8HFMTBAXr1brmR/bHL68ZaIYTu6N5Xn
PKZoqsFFQRMGNVO44xWwEnR8pedBkhC5ExaM26Q4jLpj6EArt5S8vzAtCRY3mfgngtSX9f4x3HKM
HIIcCGUomQlTbHIT5Er4oQeiXTSjBP5uN/iyzbhwePsJeM9trD5uFP+TPbWPSZp/VnXXFEs6wQuV
tGJlkmAdjDbDAdtYpcjO7/y3i5wTBMzW9o7EprkodmMULIrNFgsIsHeGiAogf2EuFHRww6A4BQ5g
AH2WW5KPnga6XjrDoXbvcCKgr7KqC1E2aA8MYVGQOo2FSswcCxe7tztRx9d9hyGr0B/mTvtFRiGo
Hj+UgksmFR4oiL4BSd8YXorc3lB6m7jLwLJ4AepfpS6vw1/JtpRRRkJEfFnShokHV/7vXVUWUMVi
+H0XOrIf1wDf+pE+KLQR8Y3aisPSl3FqS8OjGhzE00eq6ZRGLLs/HDDeX8q18TwcbeB/Q4g/PnFm
Y6J3Xxwic9babuciOB4ktCnXeqo2W+ICu7DsEQ0qNxlqA3HB6ghw/X3fiqYTvJcnftWNm9Fz1kRH
rVy2vQ9h6JdMarYw9CJtQl0YTCdIywFX+ikJDoQ/8EE7OyjAtpsmGvFZagL2RUKjRJzpoEmUPpJg
n0a8xaA1IVJgMwjnFuowwNVEX147FS8ylUmCan5txZzQyxZPJBrn0TNQanadN7lKed8BsL8e5MTG
hbHIO5eD2XbGAKzpaMtu17yFxhU4ojHNVDbrdROqvJZpAbML5iBgm+QNCL15nhWdZ++b3i0+f5xe
ujW+m8Wbxup0KtKZq++v9FkKg5Gi9J0HRqo1FWfMVuAIkF/fKRke1lXOdA0IKE5X2cahSv5BWNSF
RIXQ/m6kjcxt0Ii4Vv3xaQoW4n/WlDXned7ngQiJnZVipCxKSzspQtPe2RNyetfIYE9PA9wPoleN
V2aP/ULfD1CWpgaoIKZR38GIGjnbQCOnIH8D2BE/o6xkFLU52ewL6GHPlEgk04dYSIQXUrLIegSH
mOA/m7XQIoVg6libupdTUpveknw/0QZO6H6ehhEPl0t0c2Hwfv7Zr8tXYbkaVJn8ieOqLrHN/FNT
1iXxMnLuRFmUhHaROsuvFGp/ucWN1tR2Kol0uqX7x+dBGAik7gSE9E8CQ77zqEQLNY4TTTBD2/4w
Zer58C4esSEmqm2LTGkx1ZDUaJSbCLkuV0LkvWQ4Mjw51PFmmP5dMbCO51wYbUS1bDWAZc1PBbwh
+Wa6I1quWZ00qDiyVDU14B603BqQhQC1eXg6Rk6l+Y8EEq1hW/tIkpsnktobV+FWfs8aZLLj/IEC
kIKhfFe32iihwVBu1ZUqtchbERsMJA+QiRdzoyvMIOZtGMeSzqnoK1vdujB+q9WB5JzhgQBmiuE2
rVaof43YFk5h8APa7v/IHrtxmom05zWkU1kyRVl/y3t4xZBKrtaXgnJEhhzm8nHywaHz3QZbHy1s
d2CzmDjRNk3sOLSfEaaUXnAO8ys9CgjmbrM8UI9oPw+x7LlItL0PBRcJnDERVMSmR7+dgwuepDLv
WhiojYbWx+8jQxBJfqWlt3Ul/tsG0wY2UoDg8WPJvMudikkZ/j/cX/Na0uq+DjpC8nmHpQV5pOJX
GBNI/z9jLEJpIDP/iMzq64yCa/aPaaEjFKxrkBnT81tzN3DPButzt3dIIRD0SEARicrj9UyeeeUm
SNPlLGcPjLQz35axBTUfsZN6GrEBGStxioE1VBDqfgS2OglsDlosHmA6rc6+GGEz3eleSzb07NM6
iImCwEtRnizm0ukjZFfVbo0VtEm1cynQgBmlgZqhrKSEyNfCKLGhsZgmNJPomv+GYBIYOOLen1PD
NyVKdINf6GCVXXnNPeqkd10+64F3BOKaaOXJ30FXjs07ouaT/vkIfVn+FZLOrXCfjh9udh0FMPo1
pGcbgGAUC/GnAJQTUjNgSLRR3kq3G+RAI7mD2CYaqlmMYBDqHoGmzHIW5qWcukGSyXJp4khnT3hZ
tnMZ0hQ7PlXGmgiroT3evQqHEGUL6L/vEORtzMUdty2llHLUj5y1RGIMKZbNLY4xw8Y7TMnTbGri
1oBLOPWOoz/p0V1AEcpQsiaWB3y6rQWTqz989f2wmO2DITbChrUIAfNckEwcWezxLJZPOpaeTe5F
U85lSCUILdnXTC4AebVeeu+ui6dPsKWWxtLhXPHpREey1bfqSF2QGWSpcG4iFta5+PMJzhT90nfH
WofSXyPZdgYozoiZv7yhM8Tunm6KqnNc9M/T6vizfgwDyC1Qxh9/5YUEuiKRBiaZtpWbGKqUro3E
2L2ZcSdg9Jj5enmRjC/2tt9V5ZcdDlMts7L9Vvnqd/wM4aztBh6VsziXyYksUx+kTXB+rQFh8Uud
sppYPRDBHDucWP8B/3thb3u/iinnPDJ58tNC2R7NVMwMgYJ0aHiznI11rjwXCzJDZNmgCojQ7dDy
ArWhqpgo9TeWcVJK7fev+ymaFznq3NvvIdsXe1l7h1w6GUBwDbjjZjgkuznF0qiFISJgLpHqCDll
dM4w9LUWUP1dn8uUDvmm0aeMgWJsnlZwY1GkyCeBL/5FEknu7+lOZ0eAUQd3C2YVIXOf0xLn3412
IMcnKlkWqW3tkoAXexukY/D9Sfdp/myT4TYFfIZ/jbjXkmKiZI2tL1ZTruz5244JYT8nNSFO60qe
IHosspyci37CBQngcyMEKRJkI7/KK5CA7/G9uA1n/p4mzNxmcDK2zbCcLDan/pBWO1XZNQ2L8mQu
B7t0gIF0Tk1ZZyXuoleHPUpxNOgMnenDxQwuan3bTRpBOCqA/reZGL8YvE08KG+Yv0sdaQz6bplV
HlUAAAaq88iWctXcKlpMya1N3NoBo+uOvpzYUrzdWArFKFDXpV3IudyLbgEsYmWtzM9jf5xjtsMi
aTlowabqHtul4vKhIsJhI7E7+QD4FNTa8/Mz/0wzwg46hNJ7KdlCkal1CFO4lQriGinKrW6xemDK
TkCY8v0beSdM7w8oVl5kYZxN9mRYg4JbwoqIWwKt9/dU29T4tDaGW2P4CXS7w4KG7YibrQraBLgt
XfClmaEo2BKDYLhMLecLi+5/RcnUBoW8oCzfCU1IngPv1hkCqJ2j7SjY8Oi93EBlKNUU2uW7mPBy
JrSk8a6BzoHnBIS5VeGvkQkcwtFju+wKS1lDTFO6BScic2+lu65nI/nfXSCfBP81p7EYiD1Bf13r
pv0m8GzdsLcZE5vv5n1NHBhzl6895tFlhkUBpw4ayOmM22cyj5A93WvsJrMusbTpBqSDigszU0rf
bbJOqLvODYyY5bHVbFKTaPDnLCAlo7ODF8dZN4ISSRAwm710U12l/baxsrqKe0qoif9BYfHlbMKF
U+ZNc2Ccz9lnOxmz5v0Kh/FhhJJUYD3dq9HhmB72pKkV481r8IUudrscVkSAvZe4nbSEHGF5M2X2
XvdjRULJbUkXNujNlr0Mprf8fl05wj15durjI3gb/24fLCZw62/agoB1YqY9t3LtLde5DGgdjHx7
g2Hr4KWHR/E4qMmchH50Suwqx24J+ppCUN9Xk9+ICQKi7jqXiclqLyEbrhXtt+zXo/cnQAIiFfMV
oZ4NXw0KQsSD7owXFv1byLKJYpVYHd0lOcJ6AovIzCMYL4aYQGjJuKxOeOrbNw2GEJkGGvWz3HNv
46jzcEBz9pH2NRs1I45hNVoSaJ1PEvEUzdsYwRQK83hCwLrThNoM0GM9fNfTNCmprhESKCAmHoSo
aIR/ShD/DT/1jkeeSLvHphIgev+9fvN+jRZC3MhxPV4WU/xezranMLuSZdxXVtDT40EQDOAdn3Li
ag08qkqIjgmcIKdLK0tPtiiD1AXFLy9LOiY/PA7q0uIupZW9yLnOVjK2duc8BfQQUZiAaeEE5dcH
ov1Q2W/bpvxIJVCVCUW6MUa9mpBbwjld0Hp+s5gT/5GV4bRoTk7UScc2s+IGv7yC6gTzsnljOf4k
ufFSXJ+r/mxsj5qFH2QH8dI/nbOofZPq1m7mUcc23WxJdm8Fd7PmZfHxeY+Bmn0eNMpv7nELDXM9
wp3vjvwDeWYLDJoqlDava+uheup3n4NiVVGzkCalaguRu56MXXF2JfXV3qqoUckP+sHr5XxLfLZ+
F0x2l0o3BfUy/wFkZCBMZLKQjcxgpWkvOP4+7bcfjxdW0+cghZOHfeCLHZGFSXrql1UqxwrSo8S1
VsKUZi5dIEZylA+/SVbkKnx3jHHCyxFZZ13txfR4koXNeLpHPjoiQADHo3xQcADbE3c14QjPB05s
jvXdtUgiv/GxrIqo/n/98cdCi+ID/N4c8I5A78UWzPQOYfIrHVl+XreiCs32UNh+cV3+Ez69tHMV
ak2y/pFORBALa8OM5r5+2Qg9Sg4Lbjz/McAvA3hSJ2rELUdKM1ITQck2gXpuww8ztK32FmaPH7eZ
lL2g9r4RrDNgT9RPy4m6nvzozYiGEA8ybGRoH00mRn9QbDmrWM6oPxuUxJu5bt3IkunjiRojn4OE
iy0a3Y1SStS+vtr07qfHDDOKZLN4uxTvlm+tGklpTgKMEKpLrB2LIAYYm3/w7wMJg6mMya/LIzWK
UIDIq1Vs+e7orItskKonYthnk2bgClQ/Xx2tz26ouOuUkkdhcVgcIFmaXBhzueCq09q2V/vxxhVc
E/ToZ2iIfLAr+PgSw4Iw96f3xHO9EOvzAtFNVLMelelQxD7eheSBvyc0WTW2pOyGQkiDF9716M67
nounm8qfJhnVYtZIvx1vzIG/PAtYb+oUk0yZiRhLmq95fyeeBP4hCcV2qTn3de8+eEQ4vk//wObS
NhtJ/JtJshB3j6wMRgv3sF+YXjwCM7TP/ioa3oDHmKWkdjFz3Z0cN8+ARPDOCOgzoECR9KdvK+Zt
o4ZVPXjpPQC5TEZVy+5E3JmZvEajJktSnxcomO9kUaI/i+gLkBTy4ma+4fFpYZv6wr1uRpy4hO0T
vPmfwjPAPjlRQRCfemt+l6BlW3mde+6IPTRPzZSojMwSDW0g8SFo+7cdTexsnh860NfGQcI8IYup
SKD6kEgs8sW2hKDaX0LbzQPxV8wOXxRWaaZMe5kY5EaldUptA7zqClgov3qBzaVm56WUQwLA1OlR
JIdqDRX/TPeD+AzQGXBaSyIrf5iuzcfHEwrlWHC8VsCvRyvFBa8AD4iBN+cRT4fq8rEIhVO0Yhuw
3R3KUqvO2CF62hw1S/syfG8pAc25Uwm9C9ldxCIiymvhmLje85tchj8EsgCDCiedwQVpb5jOJg5D
WEoeY6GxmRKF30Jbl1om8NSSToc0I+0bTo4g8OmtRkIW1tFodRVdOnd4g+uUlr5Gkh7NKOTQWv0t
fgrZbI1sW4aM996BELB7FyAYvzJjqbRdKpS/M85fwzJhgaKJzvMYPohX8gjb2kSui8A7CVIYSyr0
W1nlSCRwE81xayffmfcL4zHQoVj94RU0AIAcpiPSuLG67zsjA2lTxbKqtJ0L1d7v6X0ZANCUSqLk
mBh+Q6fgFMXl9whWR6qLLmnfGLSdAu2C8nDuPqNDTQULisSqeDbFDH8lKHGm6pARiTygkKX8hciP
gGXa0jN/fYCF7mva4NocRCjV3DSO5ujH9j6RsQO1QW78IEQdlOvjhGeivZ2BauOzAzVcV+vXAC48
GUr4yip6Hf2+p7qwrL9q2ZERKPKNU4XwKZNsKmXTO7FKv6O04enhvhe89Vnej9/QwXKjh53pVW+U
zqQ2YRv9jFprmD7tQ3qbRskwrauGO6cZEYGOotgMbUZh7TGxGSpYU7ItLGYzkXiQELiAjg6/pSPf
TqT0G1RV+JvUaGiY3Lwkr5SFo+UBzbi9RluR5EBg3HKx+bAS3w59mqFgwN90hv+FWqoC7wa176hb
LrkjhXCgQTzjhvnfBdzyLnTaG0FL2PAOmTpdFnm9IyZv7OdPT3g8tLFIJMuqBdywxLgfZwxtbrD3
2IW8zzJjFT1u1rt7C8K6KSC4kgVj7A0PPMIXzpJ3DB9MSjqaFCzy0R+Y16oxHbfNKTSOjgT1fuiK
9NEaY7yxlL/wDbQ5FALrsX1PERBXTpEO2XkNwqoYzsXCYJDOdgzn6Hc3M32iBgepVEk+RtAxpBhv
7Z/7ryZBW7+poySnGl1BhhZONHrhn3JAkvlQOk7u3Ac3lp3xRBHsGjYFyPI7XYIN/WhE0TGOVSAg
evR4zjKYFpArwLCBWNAiLNc/LFJElj/QyoLINfjIy9dEURhS1haz8o+NfER4CM8PZZEdBwKk1+R9
/zz1+sweX8t3wr2jXxoakmGoCYtW67eT4VSZeW/qZ42V783CslRGHzT9OANs+OdSIJtNKQmF1qFo
M69hVr8ODkk3Ku4UCQAGWiEFV0xrG1tUEzg6k2a9yth0p+YafAyF716WIt3EITHlB+v9ypDHGiEt
8ACahaX2Qh5cqu9WO+f2jGk+28IuuIZmcarwUXz3dV7VYtZzIZMBWx03Wb57tcI6BoZg73yYy7u7
uVTQEq+qCTQUPvOVLZ92UCJIav/EzLx33d5iuE9ARlaSRjrOkQMCVwwdO76MoiigEs//9YJotPk+
5478eBXfvH8A6K0o4KsXsexSMhX5aAehvP5AP8u/anK5g4FAxNWQfohzEMbYvjMyfnxpji0DzcOY
DOw4Cy/5wyDqkL0LinGgrX2lSWuNf4FbDLX53/Yy+FRTcVyWzo6zXc0V8cTrEx0ETYFAehiwunRb
qOhxDvM2SsLgsDrSX8eYhQ+9c5xAP7V2uaXI3tsMfDP7iLQp5VpzH9+eDdNg1YfDpgnAfgBqRpYx
Lgx+iczO0D4VvAl7wKs467VylrZ/evxCQDD/aTTIxamDmiFLd99/Wz/wWe7IqGkLfFNVKPcwfbiW
/XM9W1XRJispNHEQSXFtmdSAfXhPYkYiWfwi0teOhvf09LMlrvAs3dDGg55+fyg9LLP2EX4ZVwJH
fgG42yiBP6YzmzbPARmj92GNMnV+Y/4kGsgBQRK3FvyGHDRAmCW9TE/wYZKy7pOz+6HyqbWYpjCO
n3uY9A/Non9myFWb8hQdLWEL4IKexhZD6ViyApV5WsXWjdYLU9B2HBPrwHmKzDMq3Lxrizmb9T+m
0feQGPbaMQrpqTmx0HLcKgJJDE9rVGn/zORQY5xKNSnXra7knLVKqneW0md3N1RHHozV7rhE5Wn8
4nFVAKDP9ZwLrpk+fhK0R2Fw6euPY0TUFRMrbMU/h0lx18RAv9kidE8TUdw16SInsRyn/LqT2RVE
uLdEvZKXj86ixDQmtPWkWbXFSNiyz9atY/+F3sTC/VQsClpuiFXXSQHFAB/YClLwq06K4l3oLnX8
5rjGw/AMPFFCbrjYNPFjdQ+PtZMLrHEFpRvx+QNdZvdTIg0a38lTMOQleYTba9hBDBFMtOeBzW9N
ZBZ1AxOw796w4kBU+qJDtupH6US9ylF7XEtU6d7StygGunOTu4peANiHNRtOl92/HmFyKB01Pth5
q6+L1AAjGPs2e4IuXe7bicDpn84me8CCYHskqO5dYuLA6dNSWzqWtqpVUWIsK/muCKpurk1/tyDf
P22vdnbMK4JmTf4iF8cJE4xVYfF361fydURaOMC5n8wtA4niBBNg7zEPh4SMgv5Q1Q651qYywMUd
DnD5a0I2XpaYEFjW9ZPX0DvjBvyg24ag1G4CG6Ln/2uqLgqrO481qD0zYysz7j367IZdhmqD5qKj
JboQzEK2fOjppIqvGBDqyxrESqFrszuLQ6uXgIx51NFNNzW5qt7zkr7Q/3pQuCLYQasuwd2ru7+e
kMCGDcm2rROoWPUEmjfIXpUqCWM8CD8mEDGVi0gRKAyvLIDa6qyP82fKursBqOGUnfgZ53W0H12b
DS2qtlZOwj3A589qFc+TnA4g/3bq9IWfIB6QTUgedxzXCxQn4ks8z8OYAprQBO7J3nRhfODXdc2Q
5w1P14qgxh9k5acx9T9BSSZUUeH8yuuuQ6cfKFAcfK0KAiwQpLubSAKIwe2Xna8uRl2Xy8EspPLE
vdyLSOqzktkIOeJTrOzXhwtpNV5CC/zxeg9rPVTblUnW3yyK+WfnsfwcBYNtm4LujLRoDiH+A6yp
ARIQDOuKXTnyLzwcEOjG6bQtw7rhrTHwN3lOPtIZRrITsX8+6aIuWj23lMFA9FKJa1b0qqLUjzQX
9U9GSBYk/aQvlhIa9yedTfIJYwZh8fe4Yho10hK2Rb0TEQ0R7b0tNmSdphoccTZEV5XEs428iFiI
q/blpudFV8QBd5gj5v6/GU0Tko1lQ+2Rhgrsbwgy2jJzIyxwhYwbL1a8dh/oE8cHjKlL/ui2nZbB
m8OAQ9jIKfRouMGPVUmF32740QfqhXX/VfF4CL+r6zDJcXlQhsBWEo9C1J3vwxf9UT+cAcRHb42A
Vl3fKPfgguGAoH6G2ipDfti+l0i0uwY4Z3P7yKfAewK4Dh1sz7UFYYS8WUQOBNLcHtRrk83LS5em
fZCOqBtUQz+7VuBM+YEdKeomrSeF07i9hwrS+RYi5zqhPAcrecuHHmRHKze7d9nXqjQtbL7b/SdS
UXx/61WRNLY+aJJwwSvoK6zwYBx7subodMVtGutA8pJOMH2ODhRgZOIqDPGwHGbZjYN+DwzZ59nd
YhR5xZycqYL90v8qrnYQLJNr4/+LLlFlUQIqFG8e81LP+7Ieyg2pOsBdl1E+y/l/deH4pbduBKih
Nw/X4Tf6ZGh4FuVHQeA99luP3jEBdA/rnhxKiRjtcsbhPQ4tvuADW8Kg/Pt79NEBeSZJzunlUaGc
K9Gjl0bn0oK0Aw63mPcYRMu5Rw6EizIsB7uPzWqxNizHOPtEDOkvitWUYqkqAKDC73cYqtmsKrr3
z1WlfKupjsK3iKEQYDi3eSH+apGvljkdMn4b+e/DZPvrz7jsvf87vyRAtq3aGG+JWEi907sBN9xQ
n3fxS/U6Ra3XC4LEPogv/ybwrcp1CFCcI9R4jRPGKOQ1pH8ywXjd3jP6M1Sq/us5cr5is4u7PNwU
zLMzMLM6NNik0Z5mh21/GFPt0+o82g18T+kN4k2xTTLVIW1bn2Vt9G6XZHBgePHtOhenSeyW5uBR
7WB2V4TIYck4Su4ogCZXWWRWiAeX73l+OvevoU2HfnFVRiX0pDPwJsk/pXo54g3r4lX6Aijr/LQn
esqryNHe1O5xE/9vtHrjmNhqoRRO2ZLutT+gZjSbN0JpMJb2CbGzQKCAJ17+D9OeTwKZkaNSW1Vu
Lcu3OUmcRBNNBa6aFRNf23Jj02GYk+AA1tpa1AP/ZyHq3VvFCVYOpg2RJgCmnC0DL7qP+pnrIQ/2
B9VQ48LkWqefvA2bQsLySmdZrpyy4UTr7MSK/wn/e4yNJWxBzU+DCQtD8HFBfVMhJIp41JilaVu/
gNgmMKrjwbA/J8tmrZPA/dWENMGt01+9PaqMCHM3+KYUVpnJhrASyFxhDjt9sqXPUxx7O3rKU+EF
hI3K5BBaYF1KMVjJiP+E2gQdpujytA5vmewvOFfjoHivYUTkHn1yJAel2QZOTKHQ4tTKETp6POY5
OPvKB/MHkMGLDULfJ/YtGF5i7Z2vk8gEI8D9IXHTKl7eWpxTZo1G1IuTfuMOM1MEtq8rqk+VzPBw
6K6VeomXK+NfuPRUHs3jL0sbenGWGxlt6ZuiV0bC20Q2b4eHmsqkI72EJnPgIiXVchglQW8sZODR
qmuw0WKOta/Dp2+sovM00a5PY7EIWVSDQP9+zvhzdZQV3OClsla+M66toQCFFBwmj37oZ5RhLhLn
XgD2ud8/d/0aZqkW0AEMoxUwP6r55ripGlIPuJcBZaxOGJ76mw18hO1YO1rFhwE2qC2GtdNpY7Bt
/IoRLiTxcLlSaZRwPRMszffbQwCKq/f1GOoEFBUfPKjTtOrudkWySRdlKZ40f8VjFJizIOrqW/0Z
yMSIIgGqu/hCqsyQACxZmfJiavpbvcFwxt1k+46JKBMRxpqRKEWdBFmIG0WC3a6X6qUjUKqHuXnM
+Ccq13PYRAgga+qOVsLleZNfnxTN8tIyB+D12pO7mkriXjGyDw+iQ5ympdTWqCe9idQDmpeq3Qnf
etex6T5pBNdrrIsFfEjBhN4ZqYa5ULsnYvnk0yQlRvDyQxUTzhvtaMH+ifzvJ0Gl2JfKburbTTu4
QWSaoJmpcW3PK8civtvCVhBKHK4DD7PyxkhSIVbDlO7mJ0P/Zqqn8xZ4hAAHtvSsNmUqIgGPr3bC
FBJHOyAUazI3U6S1UwTbVab8SWyPlmF+Frh9KGaLvBaRs/2LDqPqy0IPfjEzXIH0foFL9VdX0yYR
AAcd9kgUh/GL5D56bkFDoPPLrfGHfYk1lpgmB/Fr8Frd4lfngufywNUBYUI+J4IMYGl8KLcul2rc
nD5aLBPNh8m/JLKpVCqIGL0IRAN9ukTWxT/7V6LavaN6mGxq/glC+a3T17N0/yioMjxAQ5nTMvc5
W/E0Xr8+VNVI4ETyQ5eJcTPwFdZQMJe5j7kX1GZyb63K4lir+rzAjFCV5ekLu22KgzOI93aFCbpV
GBX/NTLM7Vxhr5Hemxuuas9la6MPQfm//4ySH+uZnapCryHfohRl1r0iiM+BlZh+qJzp5nyY3Rg6
HScbJbckyk5Ak5KZzbEeUuDmViaMcXtowogxQim203zs8ujqWBOEMZc+d/RV+Q91knA7UEgCOX7H
ihe2fXjp+cJyGVXN+K3Vhl7tL96jFDXz+c8nIbFOwrH7+duzh49P6pbKV5dK4mc9DZZ+2mhfypZI
SfNn52qg9dC/wIhoyP5rAhpQ8+v6+Q6AH8ELZnQR+TWUNS7ivHIlPj1leyM/GsMrIPw1kAYCBtqn
tn7aS2g/R7I0ou0s2SHggg7WPUZ7C8TZ75yI8+dXu2vKyWfOrNWMZQl208DHPfW1Oda76z6WTnS+
MkfPUFb98CphOWj8GYt9sWvxO5b+cmofkI1vZX+yIPPLvIJ1IRoY0SfSLopu4/6mWcz0yeSGwch+
DFRwkLDDYl0A2+5krumPL7LB9wK2FRfY7zPOdWh9sD0UT/OCs0dSwycIFbIlFipuSIRUoXcv5ena
AMAN8QhPTqBgckMt+E7XLD7uqyiZEaBm94joD8kJAJfDgCJ1mco2/ZqBuS7sSXKk8gM2ApfPRXDg
Qay1PXbsEdtP7zvgq857+uNgumspza5fkZMl46x+qyX2VFICSc6kzeRzeNS0FBnkWXDV3DCKnKUp
mQ02L4+7n8X2XIrxGhNf9srS6gO8P2HbJtIS/uHerAHr7B8PtOhj7wu5ysc9oKyV9sskI9QrTzrM
/WvKbciZUC9MjFrmY7bG/I1X+Taq2J+MMjntlRjyTSpwIiZZpZfGu6BBkoVs5NQ9WKb6TEz9pBMc
WPFvnopant/pAwJvOSnwshkyzKnF6BHxHvTjAet0so2q1lN7/sXmYmQbZ2x1kMP+mOa7E8NrlfPE
AgwCqKi4aUgML10J1c75L3kwSeAQAvRn+qAn6Zje/Ul+J6xNyAxyOGME++43gQz3Qrk3r6oLPysK
09I/C8Yg3PsxduKL45Um2OoxBUV64E/YAVu+Zs7qEa7UT24xCPe3l6Z9kEsBgpxu624TIyDcsVCh
Gx05xe8yS34CE0XcGxM87jwa0j5frd4vMeaXouvvC0JCptDoAnzf0G5eA3ALPdVCDJaQ3cdCWKPC
kYsPTjVB3wsAF6nf1cm2MAODWSnfj+SrXlGZB3MB4gt4d0crloVm3Fc1677HZiA+Pbb2h1efZJ0Y
jWBsPT3ynWPpKREejdoVIoNd1vAQGNR4a8Af6WIv0YDxJCVQg9Na33J5x6SzGSLDXxiKuRrc6Gsq
U9QxXYZbcQwSPLsJueIa9kkCHfrIIE62INMHWYQbaL4CNmSZQI/Ue3Sg7qpZrt68gADjUBtNspQ6
c+q8dJCvIEy6WDseYvpuoTJbU1igStJrnxv6d6/g/0YhSj2v7Pc/izHvYg1g0ntsl1lZPAcpQbjn
U/tDlvSBl8WIBcKOhSa2PHUl/S75kmLg/L3GobEHZeo+dB13y6QV/NL4XliUwq8Yc1tAOsMudKq8
LtZ47MVr4cZw5XWVaiaQDdTvPdjmUlZZvNbIhLdKvLNS5k4E0iBxIW2eIkHBdlhj2R20QTfw8UH0
kiZHTBQMcTsRL7ws2TEMXstvioxnhs1RVTjaUpsZP/H/gctHQ2a51QXRhY8u2QBoh//Vpp/Y2zTe
Z8uHvqRiLiRqKk2JUPsLLa8gPTxnNJchtuunCB7Y5IAFlFgdNZBFkuciL56twHLHLe4irO5QUC17
vaHzmceF4SnfEniuv/PgZeohtlA1p1LM+HEVV1MhOgeiBdqd4YGdUUj7uiX6SJ/7nlaQZkDooUlH
H3Pq8IPNKX1TlanmiJCiLAmClbRlGkdRv/K+tc8gDNE4KnQfbqjLh5Osqv1rrro9AsSS7sdTvxLX
5f/gYBurJX3lepaqT64TTmNSFssNrROm4PNWw5mMdkqwJCbcsoiOFUQiWA5zlqft/L1EmvF2gkFd
EcX5cgeMeYqzEho+Uss8Jg9kSbVejaCiCmUz6NhRedUHQpeHVPqwd7iEnEXyMkrGs97IlRc/KWGf
h7U285jTqNgrnSJ9Cs9FG2Xj6l4yb7nu4HBuJtgMvJInVVXjjjI/18muSzim5Xat7N9jaTjzCIi/
TzRpXd2UcQeWSSqb1BCJjkMQ2EKZ1ykhiPkC2Fwuv8R8dCi0Haspxc4AIcjAazRYaOXYIsZJtn34
t0JITx/kENgSPdPpmCRDEGQZdYUY8LiUnzAIjDghZacadlxFXwwxNXri2ZvcFa+iV7GwZ7CpidLC
DkcjHHWZIuF/dmst6yAbqH5M0lCHpATETnufC8yTKYj7+RQa9YsVlHb1k1JC7H5haQiOmvW8v3xi
jO7asoRCXE7WvjcFgkN3Au59nDHkNcydu30FXIIvCkhp8vQ93BMdGlwhNAenYs3RFvE0y06k8Rct
XB4y72bl4q3qs1VLR6IEPHxfBZOqIjPQLhhl1LAOaOHGLR3cmpLbGTftQEe5HrB7pQdCTKchXocy
JRCJn9IhizDqlN9C9rt36BAlxNqGLxymZ0DVLk+XAVoy22lZbCWTGw+Q5Ee4p01Cejves49r/cBv
3w8hKC4WEQYJih99CPYe1exAi6aRDaLZ7yLvmsJrSsJUKY+FIDoXvDEqdcP4wMaJ4I2HKe6R3R4u
eJfuD0IlSHsjJOTau1D5G+Tr22AYBmjXzLrqOO06b2hmlthZmE/5cQI6ZYFCpJn2G1HoSiUcmJ0D
JUcxhN0burScB7wF33PaaZa6gBBgOkLMlT7oh59ZjxxjnG6XkX9Mm0NU4iC0pyzTtg9eWJvnS8+9
mDr/ZtlwYtvMkcbNbJXvGoja9p7lL+mY1Cs7Q/hWOfLLa0dLB7/v/RGBlM+Ad0jigsM3xlPiHWzP
MWCTfcBEVnlrnw9YLWtIrj1H8GvOtu7TadfjchLffNTWaEc4OqgaV9tP10bXEcxmX3pfRbq24ogf
YSW/6FKMFPPuxkfz0P1CssTFAte1wrKso0SwLv/ujqxc6Y6Ld/BZo+yPTP5zFQXVbnN6D2V/cgtr
m0pneEK06Kcd1o2DPBAjWik1KlDE1be+NmZ5eeNjTu3N4fGZ8DRdXcZAjWlrm7HOpgzbwpDiJfCu
se+f+3qF66zAcE3bcfiscU9vQ7r56beMF9ZA/1RovLoVuz6peXSS07DwQAdw4UqFOQJLZz2G/eRT
qbkLWzZa5mCkaXloAd1Zkv6RjN6Beahu2aAc9IgN9nm4Hwga6aSmcAM51feIwLuKmDk3P1j6suks
SRfcpiR8WYaMf0amIyz6OJ93wrncRt+NM9mtIAsYpVTgHuz8oza9HGrJ1AHyEnHjmdJ8bmhmkOVs
AYlpnGXyB98qIuhpOxNMI22KW6fMv/LcE4zakhBUtibm4PlZWEqW5x2Tlq9LdYT18CTscxhnCbdi
ZDvwUE30C2APWK7WT0Gn9iN0qbta4OO0+7rFJfJQOWNGh+mfdLLUVpW82UFi2KKrcK71DEzR1b2y
ODR6nAKGhAZ/aIAETcj9yEajj7iYurMUMKss3KUcU+Iocl4RPMAH/zT5L980iE2wnPhyiJqvX6Uo
moQTtZE1KU2OyXvkWJwTguVgnYfx4fZJgzhMxjvQmuLRUG4hGEN6R8gkP8RTlrmwFdx++N4fjSSV
PQWwRJ27CFKF81JMLCR3qoqb8by/lYs1SZ2D9kZbM8mDHgsJ57PCKUbKRbIQfgLLdc0vKSMOlkcS
1aOiagiT7l4GA4cjSu84aG95DVOvFzj/6VQ5Oree2s7j/nu7sJYqrwrN1bZgN9zmLtFi/43JfSoW
vJnWgm/Gq1ipbv+lRUkeo1zo3C+nl/jfBBn3EPx+GHHh/skBHINhPQc7f7MS7np5zNPksOaViGfV
yqsukriZE3Pt/EPSSZwAHnxia48Hi5sM9nGbsSOlqZKwtDM8HLrOTyUKRVgtE0XGOvV6qSyYBmxr
gZOiwKnx1d9Zr8lihB35Ya3ulzI9IjwfzUC5XlS9/L3faS8boj+sDfKgrb0FiHSbFBLAy5QJLP5q
ettBVgdNNrmo/LK7kw5G8Tzdtt7r+B5pGpPbztRO5QNQi1JJ/f0dSqyPgGp7CYMsr6g0AGg2657H
D8ynnSvUn0A7KAhNtTeNcbQJn9J1NQ+z45mOjeqR3xZjVZiRxMJKRKrmpT6xn0Ha45Ok+vJUaKad
dLM+dpzPQw2ogjZq7c/8OfVltQZO22DhojDDvWODgIzr2H5qktDA827YqgRzdCyqrXcFZ3kxGzyJ
Gx9BSd/Z50rPjozzR/uhyEh/GNyGBKLiMhEi3Kg9+HfnXSaRdSXwJW4gvIbfx/08BOMYLZ7XR5Dq
MI+DBhKuYHMi0chTzWQmMYk4qv6a0e6TbBIKNpQSiQ0Eyz+0X0R7I56kWzbUAQb4jrA1QILEguAw
Zrx0dHTeZfBKdk6ssoVH5N87cMUipQ4XSwkna0h/v8NQZdnlmws/LrS1+i6MG1haUi6+R/geSkgx
f92hdIoy97zgCOsuCPEsPL/A2buHo044Bah5RO7aJbA8JKJl3Dk0jdxrVmvZhIyEnCVV1uY75KJ6
q8dq07yK7pwn/DjROZAnDzCkIhyBHkK+0c0M56puxcNBMvZJeFUDHeB3mavtKbQ6jGYkCvejhWtw
TmLK5Xt5ysS/4YLxsRFjO9y5X4erQOpTxmkpjl/O6IqPr7aUopu6ZB8LgDnsseVquMytUOlnjqpF
2pKviElWQjBcjhtUsWeWWFlwSBn7fKswzFX/AvoJM6DEpf5qQLNiBqnBcBRrMglQorgYlM1IzPc+
MuGJ+PJ9JLpHbXG2iiZUW99aJRuo2NCp9DCmRfdc0943W2HNWrK6tvzHxFTDRPaJhjlV9Rh65x6x
SnI7JzKNNP3QpAtbnyMxKXceUJP8E7zdlSSPhTREldG30hxtmPacUMRG8YBT/OCeXGgTtfy4oSR9
C9dF3HZXwBQaRjuUqn+AcIxsxq5sAUqMoQ1dXdg0F/b/OHnC8OAGknwVYopqKZp7ZYgDb46iLL3H
qG3ag9kJSO0jAq0bqz2MtBblOFb0yhbYiUpSoqqXoGYRiJWwVjuvcu9dn6IHJjDN++XdujeG0lIz
6T4EGbL3MgVPZMxU3cZK70h+DF1rc9OvLezTr4Wo92p6mIa9TfqscpS52ts73arQff2WFGUzDOKN
HpyuuQUXQeJayp4kvR3sVaLr3xEnNeRRg/msDNVmesa2WwQh6xxKSnOdKQeIGeA20LJhLXD5stXH
GG2TdVgdKmcAc7iDj8mCjSy1JFKUGSgo/DSn2NBcbaFFZotZeV8WQ58gn5Col5jkuVFcOnNSYubJ
mYOAB/Ogb3e10KqOGuxjZ8Hh0YnYOJP/0HhqUNzEy99PHNqRjy0umj7bvSsRaNhHxXnITD7TF4EZ
BMNsX0CGz7/+KyZYfneyeqmoQBCGLr7Y1QK9Mw6XfOYqoBDQ1CS1oHQOyDstED/dsMF8teVqN94u
QZPxp0TJGmDzr0rvWf7YQm7f90J/sDv8r7nk5Cm4aCSyawEf57f1XRsWIz1exRv7fMTDbUQvu+d3
3hyCtyYyJZ6/X+ysq1uC/HJPlaCyHusHtl6wZHT0yc7kdHIZ8WC0KGDNMjT0hRWmdkl1GWyYhhcd
v3rdFvjIVy0CKmV0df4UcmQdVtdtyYImXd3v1JKUkCam+lC1ByDPET5CY49TU8GusiZdxM0uC3HK
7jcIB14xoTlQ21izti3RvyhdYcb2quqTFyWpHmn+EwGQiVhAGvBXEAeT7IgSGL+DulLu28gXjsSz
lB0fIlklTeBa0Zvvztu3/TbkWJvSjkAjpHd+1UIeOWcejetYuA07arQybrSCmWmTTIJsnj8LXEo9
n1uHv7AYSJWUEDjk5hmrJ28d43oB7bjcflpSp3IN0zeWiIIQYXA8MkII1HeaHTYLmwvEZnX7VsE0
o5F9Ee5D9fw5pk8eYW5bFM+uOP/efbwBSNT3gjU0AowvYU6smS3MUnJbVr7WcjiZPJrnMZ1yKJSV
zEn0mGKvcUGOUIiejBDV6e1b9lyunDKAqxFftfpiLbcqp0oPr8NV6ktZGxC1Hyvv60e1GWSTdnsi
OvJj2uNcVfOpHjIW38qeeXnJqmR/ZD3HcCUuHNbt/yi+9r9rrM2TVBz4MYSRpAwtKgKoQjZ+WhIK
na/zcU2p5Mhjy0ADTfcRyItuND20q3CRijG4P7mjW9Eevi6+OsKz22ovleRqhOVRRtXjiOSKB0f0
wEiw1vTOHEePPz0h2UESOaa/oltm6TJcrS8mrHLbjLKHxdd0iMNUOmjPJ1m9pRGXTMaYrOeKIW97
8wuc84anYh537hMG1Dcsc4vYJvOkusd/xARvf0hFRCaZqIVK+Gh4++L1e6HbvHJrktOiH/BeK0sV
g01DZso+6xIEUdrN5BKeGE6tMFnjYlN3CknnOTfqy2Wjho7WPy49aP/+DH8eDbRVhIS+ZRqdY7bM
vc9k6lCvwjw1hHC8xKRg2lq4f1cXh6al6IMVEKYXG2QReXjbJ+rFAblgqeLVlQEudSYIXUSx9324
7ngh7kG64lNx5TGlQfi0/AtUzIW8paAcEjRlzbC5WKGzQC7NuSaqFkN6wJuwhq52L5HdRZ5hHrNm
34mv7U1B9UtqYtTHA4JXYIykfpOTBezD+nXfPSjH2m3/En5AgaLlgrr8xt3WFIVXdSfoXRlpkIYs
n/u4N2gD2avYymRPpJNgmNJdcJY2z7kPXwPoaCjZtCQeOHPXyODptp7maA7eQZ6RBhhkXWIYESZj
oaRpcI0VTGmW8cIPuvoIP7LNCFkmxESRntwTtu+pEU+E8uqsLg8jMVvONWQjv9SxbJbnCYKTPLIc
vCk7n8XbHGeFvplf8kG6/0u5KIzcBWfKYT5KFW1qThjHHONbhwpnT3nwmfLW3KQYV60+DfX33DvS
fjRE2mrkRrp4vztQnkwLV9g8NWDiN5HHBPFIrKVT/OnpKboiKq8gLtfZQrgw83pI3xRgU6x7U434
IU3zAMKR+sO+49x6i/Xko/T/68uPW+jZMTL/JN1Vm3BHxtooAE9aWLI1aENO2ZOsAwuipafNyCuU
tTdapctUqFO2Y4EGnLbBAtgnUDzzAdSEStG24z/6vouvSVMfJMHZJp8qQDJvuWHl/5eIqv7hzgar
v2geuVCen7zpsry3OamCnR9KVvfgxDo+9gm2puiE1iMhZz3jGdBXYTaXjkmbWhDdkzPlkualCjMT
Ggxfi5vsWSdb6tX1H3pPZO3Ry2eycgPN45mkqRutb9lQGPmIOgs3xvgL+IWKnsfY0rVspvRYYmMC
EaA7/U2jVBof04naCrIRKslR+Sja3uhsojq9Vmk+6WNu2V3wHMkbij5g7aWJUYM0Bmo8htfJmnPC
flgF3nQubGdUemRO0MDTBzfnRTrYQad34tlbBHNE0ozEmMRVoj2VxTecbUs1ltrGQ9DFD4QTMCck
n0qOXuNyguOPhdy2Qg+fM87oCyCjjCtq+1+IBxk4cgZ8PJ5TvvlcrmFdaZLh+RgR8+QdqT9NlCOz
7uv+mjqgavD2d94Y/CJVto7JQ1HbR4OY/E3fGgRNqr/Qo5g7vBDN5ZSW2rPNSd0qrmhZA2o/fOG9
GjK21/8/jUVx+IVDILtIgiCB9lyg01PcbUCT51BLQPhl2hc7fefMdOoRf0DwxZX+xSJIJV+qANQq
fXcCjUcOAT7Lc0d7ukKOrsHmcuSQ64BCnp4/LUVh92OLGjfTX5JisxmgwRF0uWCKI6zQuxEe15MQ
7qD6FdbgOWICYoOsgRoGuJoCT850BU+/v036Ne03oaUteHUsirr2h7G58KIm0f9vTSvzo2GojaBf
/U3UrJrZhkP4AHBz7oWuYMfPrAjYzzNf6aJpIp70t0qc2yNoAGqsVSdQgmnnxe1aW9COmsyMZcxA
Ru73hYdtBRizsUmF3hRo3s/m3H3irVenlsDObsp2zd98r/T2QPTJthqXq1fjinHX3SSIC4cbxQGv
bbW3FEml87V6x4Zz4BqpUHFjFfm7XzkCvup8XF7qEt0NP0MC1tgD4S7hJzMlnD7P2d6ZxSMEwgg6
U6Yvn0UWgWm4d7TpWNg2VRb/66S8t+XyRmJ01z604J5Y8RRz7gOJiu24B8QTrJLCsaU9FX2lhuZ7
LtPtyaB6LO7uZOMRO8pvBJi6Ao4myoHYuhIb1uQEzyxE806PP527dkToKR0FrhUg80HQtzb11AuK
CQKh74ouKWP7kuucp0R8s0pzRwME7ySSbe4fsr0nFA1T8LA5LZxW0a1StHQLoO8ayN59ymNQaFjg
EZHTMPy3nppVxjrsIBP9cNLowcDaV+gFHA/Sjz1KOH3zht5DLmLI0qkwuc8ltvt4A/+fA3YlQd+7
sm4KuI15UejYzMjwdOv1CYMOsHBboXQJZFeGgpC0KBhkWd/maM7C8A6HjWyZkxP8vu+2yFMjtRmL
Hf9peELSf8JB4Ijfmdn83xbxXYVAWl9JwSqQiadn0pb3JAUOFMjrdUHEduYHD19nCVwMMPGxiZpI
hG+GcSc3TOfw+ByRWOHN6+/QRYW3RfFRrm0+C/RlcSyMnP1Rc19B5j1GeGLjVM8sKPuR2Pa5kC+s
VPgQvC0q7wT/4qS+M8ReqDin2/q67ck9feLjxjPKikbxiVE75tK74ChcllnFlV4VSac1DHB2Nprf
jZSclIrV9lDFDE5c3qdhNJj2KR3fRavCzXWtCjeaw7/zKH28Bv8K5rx4J0UIcRwTmOmQ3Xt1v49f
iHHR9ZTybLYIR8wRt68NI2bEaEwdHHtFK7kN22WZ+HWdgzGB0Wct1ec6ebudbWgVNE44Hww7NWc+
JPIM2AuawbWK8+x44tQnllTHjcC0rA0LBfWX6vFLiv53T8VMF2jdWVE9IL0ZCTZyr+j2+fA4+mOZ
GGSRAreN8FPw+4Q7rKw/pUDrfDOX275UpCpNO0IbWdB/Iu1cakvLNbaF5hYyEah1pf+yAVvOGXnO
clBoslyxm8XCifhDbAjR1Unkp+Wg1H0KnPmlMCszOEW7IwDtrP6Ql/Nio+J2hTc/ONI0YACpPg8J
GMDky9PoHvrHi8qmJmhSJH008dZgoBMYfcn9iEEqiC6i5uu2LRh50vC9xKfNYejh+Zkx0YLJDqgo
wr4wvYHOrhuRDH7SzedDJIvd3QE5FPo9ESuGuyhrOJ471WPhYVVQE3lUXXhkFoMBxJFnHZyFtcJX
/yyJvreVbc0Tnc/t9QOdE8FmEsSfPFHnCWfN/LqDxFK7RpMf2/z3AYL/eQ59yMZQnvoxkBs1y8Z3
IbO6U8xvKA/6w5jhjj4BFMgQBH901bDmyal0BSJb1oXiSIYu743yZLYoY7E9BTO5dHA7CGiN/jXP
gpKv8XXf4r8NnaEAYntic/aNyD8oq2TBx26JyRpBog/0ACBDnNFNLuJ9VlCUhdxjVf7GtakaQgrS
DDNHnOF6RnKPDQ4Nb9Sgz6mOVfqq3vVfLPUsf4j2KL8Cmq410H1MKKegWtU36e3fmWtKdXmJsrdI
cCP/Rs3cIKnlU6hUZgtsJ23b7oVk18igh4bZCYpQSgHgPpgoq1IFbjmbWF38Qg+evmTBnGGANGcx
21bjWU/wM27ByL4Cxv3vjGTXkNcxo7ZRCalPBz/KPKxacB1MOKrGjJ5biNVju7IWIw4zH37FWzKZ
57XkviaqWaZ3rU6PS97e7bfz3w6nRlV8HxDWt+dpcbWn3cqu7T70U6m16wOoi/dBNJpw9H72nIdY
5J0oF2bapENprOodlav16yAYek2yCHBAG0ijwf3A/x2eyCOgvtamoH1ZcwlDmTjGI29NIeQ3bEyW
XD3xftqZF3GPeTScObVyjcC+kEC/ZeBVklfkdG+4R9OOQKEy/kYbWHJVG63t1S2oVW5MjK+DOjUk
yG/58JfKCpg8kXewfl25o8mC8ALRRzSn1G5T31JyaJ9zf9lRILHi8M3rSAF3ven6KXHvO6iJ6y1g
sm3ckaoKO+Ts4ItpkK3K2N8Ms6PcfvdE9xNnBmOlL71uyrNcAMBATKLw+yVRmsIN3+saBU7q2M6k
xnajWevF7/syUe3bMp68vrIkZD1UZOwT7neU3h42qablFtxkeqQZCgGBLbUytlhFP/gJ2gvAAfg4
dyu6Fj5mXXOSSaVHUtQ4MZJGUhRN5CYKJrwwIV0MCqw1SOVUI0CHrmPbTP4VjwrkkkYAMeA17A/l
YxF6kTXPCVjWyiMhuFD0/C/abtN77OEB/DadnYZXobsr75ncMvz5ks/2iqzQ5nz+nPTGpfVDOwg3
7nI7+3kHJG2i434mxMDbYd6HMt729z+nDiai+rxque+zS5UWU2XWgbKAcslHOF05wU/FsEiZvZUW
7LXlFcI0NyvGPbYGkr+rp1MrK0TfDc4QA6YVZ2V2wtU2yj+UpbyX5axgAJ4IFFuDyARmNBpys42t
z3brZM4LGkhl2VdazjsTYlYLaIroRnGutIxWwCVMjyPmmBCmrIf7hwtu2YCjWsCu7ncULMTZhXT8
iM1Jb02BzyqQIDjeBX4ZQ9zgYpNU+zQl2cHJsPo053aL6+/KGVvw+NJlSdewYR2w/2R/qsQ9vZed
XJ/VrDni8tmDOCm+l+6aa9cdeq6//KVZ13lksq5Ybtt9hm4VnHDq9xd2pVoVxvpejEU1BC7LUf/+
ip9kQ62SYr1w5xJJZ6EqXXbb2ss1yRxUrXFG1BcHkzIgwRtn6h0hVzhZ0vp7dfbRS11Ohb0Z9vgH
ksg7eDPkw7O8qFJ+/t2VFNyIVx8T/5m8V4l83BVxZBO9/JiG4YTt5DxEMT16fEl3vSKOoOclsQmU
j3CXO/Wqx06Lr9AKuGKGNDs5/1vh8aAChOrZr72FGAtmF9sp6MLm8D87PoJ72ZXmiTtn/vF0ZZbg
d0tGW+oCtcw7HrKtOcvVZFhZ9oSrNhQWuEOxWgX//dqlWdfSUgBeZm6Ixn+goiUByv8VT9vnQFEl
F/nBPiXfKaKR/7Kt6CidqM2NI9ZjkWxDNNEv9hwXqVXdNmZuqn3dxqGUGv3aj323fEqFTiDaJGkv
k2xfuhPASglVtzptyIlnD3/qQ6dJECMuzZoCZog9ehnb7XQQc7F/Fb+aCcgo2uZ/3MAyoq2t/LaG
zTwrZA1HYDOjZqGqrqc3X/LNFRAdiB+wDnwWbO0Oq1gV3gY8DkV54/O5bG9NEzNhHGV7V39skjlc
04MzWrCmRDX723BgHe4DNuqAU/zcR0wcIEnPSEYVgxvnyhUSwAhVqWiupqfISWoMtW2q+ayR+rqN
ijuxwBkqIA8XqGUyOJllCas2/550I48x8HKNcv5k/pc8jBAsN3hd4RDHNJk1hyLERyl7uWztsg51
obrlB/xSIovHDXFPWVOH5sCFWyFMFoWnDkPAfzOVHK7SWUBh14KMb6UckRinn9xoBJN2+pZRaKTU
WHy2G2XFxoMdlI7XjbUcaD9HgTB4VUGTY/aEa0lPyken/ULUKnx+gaGOQGyb/GWPCv44IarbiSd5
BiPRwKPIJ2ekMlpyCYuErTHg/L61umSizTBy649Vh923Qd2P/kE1uW5LgPXxzj61Ued6OH2LLZdO
d2crUKfT/w82Ryn4lryexavQEasy+urhgb3RrRc3B4OYb+nZKzfwcUqTxfVFIBMEFenk+BtDvrME
AXxfkmp+21KgHGKpRdXNkdlauA8uRYVkhSdhdcC3kgApVntnx9zmjx8eadGwY3t6L2un9RnvZ+Z7
AkgQm3RppW14JQuIRLwvdvHQQOc9JUFBkU5gVvUL2iAf/P2gkDzRIbiF/G4I+rDKzVqi/E/7MRGF
ZBqXQZ3xQphEOBTfL3Nr6hmLrbqPVVLarYaAAlrp7sHk8OoX4yG0Q3XfT1/DDODroenAFBXxyGFY
voPdHE5bvPq8bMfUYeQQzLeImaVTQhbfcgds1EuFOCPbY95WNP2Z6JYgX7uCZkvnK8qFJQ2jgm6P
rCn+h+vaUrBBvVrdjk79YOTBACIo3LwDhv1jBOvyhPQ+LgZyPWDR1TYQwYX7YWOLeIwFU6f2/5+d
BbfKcbfjfSM8jC1WGTwoh1wat2u+pyL8pvF2lhl+fT//LxBrf0BT9Sy6e4QdmBEP+NykdqgLmJJJ
IOrk4P1xZgI/Hgj/hehfoiNEpFWsUwvAj7ri/Thd+CfdzJ5JY7z8k9hNlIg3N+yy7ZiWWmS0EYZd
FycldUDBH/rd1dK5kNm7i6IfESkji4609cel4kHX3AcfdtwIar7uLsTKdrR+Qy8U6+dF74voilTx
EIT3yhhG7z9DsekL92w8PBZaAp/jnpSpIdMnknXccFW5BCtTcZnbtzhM1O2gl5+04OQiZy3XfjVJ
kzhpXzdpa0tAvgr8Skan5uvz4CTXsllZrIpRsxL2AEpF8shz2zh0pRTfY6l3q6Zn+i2TTlLieXoH
62fDn5z9+pDi8kE/8ZKOzV1c9jO67/EZVtxhIfzp04pvwp1gqW3fzVDE1howL6QZupQfDj0YPd1F
o4Ck/rxON6O3EULkWTBzC152td9vVMNhXsrwm1cWqf+YZP5VFufDouoTZ1Nryv2VCTqa5F6HnWaO
Iu3V8wW2+Uk2f2tuYRa/WQ/EsFNu+ehnyigf7lOuqyA3UxLofjvxNp8QqLw/as/j9cN7CFMLC+gx
pkxRlRKQ/kclbW42hj5LhB/OOkysXTmgsvQMlnhLStVT2FTSzCorVTMbr1gEPlomtPLGIaxId/tx
ulcvO6ySWz8iWpLU7gZw7zlZ6qKh1QTk4inpe+skNh5uGIsX5XmCHasxfgmqxHLf7YaqGhMcSDeU
AbRiv1zvaACIk/qeooTm2diQ6N4+23Jexa/G1klu+V+ZdDZV3D6FD2aClCusZlCroZynG9MsLUER
JorKS7VhdpW5NefV4ZIFEPVJqnUdicKp0ue9ZfMoKRQmY6A1I+WPjDWqpqBkzylLeFdmsjyxNd9G
0simxz3bP4YiW5mXbdrH/S+Ebq2TeMkbuOY2VeT20IS+2eZMXXO2+zaJZaS3Z9tlkB6EMV2GPbwD
LlDDKhJdIQXa7qBAwgnjf+E96Uy0zNvwbEx1FHQSKQE6C8Nawqk675nysETVHPHsI9uepk+Olbbv
k6NNCtHtgPoebyV4p8RbUxyvlJwGxOIPdnoeUHa56FZ6hj5CkDs6jjFBCUDCF+paDHmz25ZudmrT
3IBVWoHojKTaPYXAJMO9uKQUt8rMA3YPSTu4QI6NuKyLnclZBijhRlPAQycRlWOFGJxOb/ZsTfUC
w+vWPGWe1WaoFHD+PQaQqld75FJpF1B3o+92mWoRpdzE8uXTa3RD09/Vpcqdtbpxf/9W0mkluyJT
HlMtjA85UBCG6QPJtNdvAP4SgI75mtOjDqLUzU8SCvqRFCsL+weAxd9AIblWqowrgbBSZJeO81nV
K57GkvovTTjtde1MY18gjM13L1hyklYHINZvemYTmzTa51Ekuo38Jcj5m5fk3NjifW+AjsegLtEq
n0H7P9Mf1TIAklpc7mGjtTS+DFXcycUWJPta8Y2ity4StGcvavcsvTaK+f176UqGI35qUZdJuDIz
JP3oYbIYYAXjLG04M5LV4Wg3IL/I+mMjGxyMVci/XLfqN5xTJuTYOKjN8iByniXhZP79CtlnX5OZ
mYIHi64wGBklpm1PV8DyxYoQM+IzmshyI0tP2nDRQLSINvj8yMw62voLnyCdALUpmxBfCMpSfchU
SaTUOIQQYoj//Jp7NlGfa5N1uxplFPK7UmMW9PcY2Dfo1C0pzGrANQJh+jty5eKAVrDKeCUht+HO
FOeT6o59dMI/d4LnE5/ylJ3BtdPWYq5iymGQJJ+KQberfDQXpaCd225QWvJUbkTjWTmL/KlGRbW2
+N76kRFtQmK3Eo2nnv2yPfhLPzyx15Br+0UMQTR2p2uO4KVCHWTTjRG0kXyRh3O6kxC2FsfQuYz1
B9phRXfP4vA2kUgif6kFV4GjDCh0qz5ZljVDldFpN5rtV0W2Qh0ZD7cKStbWUrHhlFr/OgyVjCT1
Do2PehZZY8Y7sxhGrDICKgKGjGdB6A+GGOPYNVuT8+h0g5gu7i7vuEbgbYp5lu4STZ2wF6VvvwM0
eVWW6He3U4wNRKM6RQCweR6ArP4HRZl0cTVMs3NSh0bOawXW18bP41FZpYy6gixUnxKQucey1wBO
DwWITjyRA7Rzy1Z77PsHZ3n9AsdLvzum6fgSdFc4JdFnu6zrh5pLwFDWVgOpvvGorisPO3iaUTKj
8SLi9QxH3G3hZqdAm7K1oTHriCEK2aOhg42ogLYxPFXnq+Cg5b/nLZRJP4t0JOG6aw698nqQViaO
ug+/pE9v0z0F2gbbverM6GyYEg/dCtMzvP3owadHJ66Ro0LbPbxrI0AL8/LbrM3CpSjuN23Q7MWw
Pc99bW6PEziDE8AmFrLQ4fbxAAPUrCYFYsITCJgRN4sQJHVOe79gO4/oEEMzuoBHj7zb2FUnmy2B
dwVDU5W2/dUF3klYecD4/asWBe4ndmX+bPAB4U81T+rL5OMPhw+52uyni/wbqKCh9MhNkHrkuZgf
qa9FaY7DFiB3NKWvPb7icrxlNdhia6cf7wSWnzJUphXl6IDBrllPOzC1Z2fU6hSC/OrB2ieGttRI
B3Cn8wsJax8uOQPh8Gb2ONQ1QkWI/ET2ovP6GcwOsg1PmuuEuvoSP8luGhYT2muILMGOUq4DoXoT
woKW06fZZHaLMaQ5D+VzJhIRIUGa22nxaDiZBGXb+pQwlaOtPljXWtrt4RoLTK0pRf1Kja/00evy
rd/ZkHRU5Zn9sjCBW8rT2mwXGH+Sqi8q0/GkGn2qtRb4dhNxGeOr3PcdG+6s92lLV6EgSdhs/0rj
EGGvwRI+fWNBf2T+a9mw7W9ekTPWLYFhXZQoX3kf4GZ1xupd+6BsITBR7bqFFC8CW/tPYXRwEJmJ
LgbJohVd7UodMYjyq0V4pvg3WyaBhhnY3soisYtqooC5OS/gBu6DnFBQgyUyolnepVSPwIkti10w
vz8m0i7+5+DPajtXoyST6OWVufCCCRM+7tS/UsH+/apgNTDboojDiM1U7AGmVuUM3+BlWjZ8/zsb
M09Yw///Jd7XA2PTYc6Q43Icbrx5HqlP0F6Nhgkn0tkSUgPhK0+ZgZakrdAadUDosEFULB+eG/DV
JsacOOVolxC2akC7xmT56yaN9OzA7VEPZVfLqz2fXvdYy/6T9guWt08pdYpiR4KFpqNSacBqTwhE
01XokgniBROXn7CcX9rA03NZ3GA1KGXBL/rU0seN53vr1s2Ns52WFSewYLzI0XLkCFRGyEZAWtXH
dU/rJf7C3OoUDqPS88P9ZZbHbT9JWAzUqhgevKhQSzIdI8GI2sD6HWaGvSZ24+lIut0VNdtXn8y6
ztVTaMfu1oLO6fLbC+5sZAHLky63hrSGy3HZHoEwc4Mp9pWtaRP7L1tZ40fM8+6t5oUB8hs4w7Gr
Qk2MtkhI+KuHnsmn80BpSm5xp/PQQO6b3l0gmlsaW2kGv/KEDMxjfiTiCBSJzNQnFK2oW29qCSlI
p43m6WDQT7aB9cyBPi33Mo/5zBWpAuWXEqg0eL7mzRvYLjvWgVG8HMw6u6qP8QH/knAmfZk4e2Yd
VluEWassanVNICg7D5Zx9sC2oAjPhKwdPDJzGzh02KC1vJpp8szTcF44Va4O9ESRlO0GmImVFS4f
NGmFnp55xcN5CnXMqINKDNXnWIaUFXDWLkSUtqwpXvrqZbV8t7ep93F1PphqCbba902uy1yC3Pha
GQmehahCj/8UnIA5gpd7RyzTU2II6Mhrz8YQgwzzMlQZnPjS6ylidH3PCjlEmeSldQgrVDgZFk0T
DzP24d7Hk0XKa4LnXYEOhyoSzlXxwwE0RBqA+8AxUhD/GUVLIVUUNIUVMEsNRgm9/xTZrVbFdgxc
NcSA8fEUfezbEFqowFHRvmVWWWOFbzEWrZn5/JpHQUqC0h8PRN86UD732FfyrZx/JaxjaZwAgDXA
NrPkTsV02l49pyxmSL5Uw5iO66hwSxVvgchmDQY4pm8+XZmmRsu1ljz70ZTwoWG3aDoqn/Hi69z7
6nq5OXcRpD1s5aYrlzEoLiUWJOKTZ9vo8LqEw6bvQG2lzfOd7ECj/F3X6Hq79SBgAc3CnTvys8hY
2/ZT+UVQ87TjufLI1rmHNgvyqu7HHGBjlEqNbfltHPpoSxXBtj7HKewh9I14+PrrMsNcsrZN8P+Y
7a6GR0rZCmZPabmvJnF3SFdMQOxj7lDNL5jkBQUdh+43SysiYo9cKWCsDg4eEUgev7Yg8FOT2WkB
ITxQvmgUiHJvtqnsQs8OROPJKpvEqCy8kw15pEIbNsz1D3ZU5buCA4UQWfeJJbUjd8fM2O4vtnmF
LDxmPN8LjO40Wm1YFi0NeV3cIjWAFkinYcO2YjnIDh4WwkyAnZimjBLpNz2u1uO7paIOvt4ZUFHc
rukoB7ZtqT6fsRFLH6WS8cvDx5/y6D6e7FAhyPc5YpiOkWQSVyfwrE0FttQLLRJIwBtfYwIDo4lS
ER2jYkKZvNeCPzY4TTuWg9rKk4eUjG36h+NOwLa1USMvmEp+M/oI16jKvbU3p5HB1O+PUAonHltU
AbWDDrjSIPvqt0gDYTrJXTFqzdPN1l/GoeusTNxLOs5BZHZG3ER7Y0O1xU4SahJX7whxmm8oEf+0
rD/G3LTUe89IsWaHrFFp+pU6RH69w+E1aglAzyEjPNctYq71eewbAM6Zolit2cZvr4AHNLMpjRGD
/TJ5cxsArxQ8/djjV4E+lJ5TaTMPegH7DD8KoozuCZFRTJ73OqzgTOoCjqnmjaTRuXGb1bxcd+3b
hfehYK/dF4o60wGSHepHEPw+e7e+63OfpyUY/14M6TvSrdn6PzmUu5TClXZ5C2Rw0F+q2RA0/Lio
hGlfdzd0uKQg/ZXYwR1dhr1wJpkWWixaq5awpmnqd70GvOsaZizC/GdEekXqSKk+oBwurqWTOnQC
g0Rw+6iQgWINOM1Pa6JOvFSEkAC6UnwUjUGIB36AB4An9tHTgtrmFL3j2C3zKDYbOlxqlZd2pxmI
TjI3xxHqBeclzNZkpyZlYnkRgNqzgIOG4+L1A+YJAT6LaSggWvGgLEwRU6zshNW1hVu4pdclMXkd
dWFSXq5qlgxVfa0g2L1dpY+IPnPxO6xQkmyTNFGLJPixfvxpMytpUDCG02gYkphrUDjed9aY4okG
pFj3rI06o8QvB3ypzdndVQqJRxHwK0Ta1zftOyQoNPhEiH2BBF5qqRKLLS+NyTA2uXvkxIvBcXqX
1NJOBMFFN/RgI50sKAaCSm9T/kxyiel25okaw02i0rtMAFai/jdNFckY45XKRLLIQ8XXcOx1kjIS
OHc27faBcw0b/cTNcxO7TZbWcOb7h1sFEXjw3P9SzBPMUC8uMRKLqIl9QblofFS29Vx4aPLq0c8s
0uWK/mNJfovboQTI4wUCebhnaw8+tKJLDIT1ZIR9LoDJ1efCc+15oWE0Opw1lqLkSK3COuH2h75b
YwUC6Q6+pBVpZzVRlUD+RVeLkasdlWWMBjTXwWG1L39B5H+kk/hpgQXuZjmBJXGpTnqjv/+D+jbV
fYFxfQN3+uZqOiN56GIoIatEl5/Nz0BhIWfzz/h8NZzaNppYRfKNfx2ywzVTX5agTS9kAkZjZr/N
1+L1qZupdiEJNEpw0njh8tLzvBweis9AQVlKSd65gcHDoo/jl5aNxXGwSpCYxJ+Ms983pd7eFkmP
SzZHyJzSz/KemaWb/yf3cy1eDcRY1gg1pNa6e6tc7rUxHJV21ZUIHh66m/faJ5ZXTG/4Y8Rq3+k9
Hbw19m7offjXBJfuVMokLHJ0M/uj6p5gDkDVz9Cj2DoP9ROh5EfXwCNABzVhVg5FszvDJqBhEZG3
1Ng6jNB8tsQ2+9+KlqGuu4Qitrkc+ZzjHvL1AXnp/kO21Z/KynRH+K4P1L5/ubpB4pEqaOQbj4FG
vqFW3vcHhxvX43g7cFQHnWL0Ipgp2oapEXfZu6qCO27XuKMPUfam3wkfCLpxArfRzti2rOCo17B9
rfutlr+SmIkHKwXsZEGymDMB/IA8Nj1LIEXE4QUSX+qIvqtrQb6FtBY7QZyDM9HNc67A9CZr5SVd
3P9EmA+6C8EOn3rycYAuSEfuS9xR+4L7ylINvDC54n4t5+B6hlYr3MAPtw/PRpGfkFinklzaUKli
w4GusKQiMCtny6bUts2dGmqiAJn0xHtmjV0VmscIhm3Xx/VfTRp48iiKJ3FFdvj2VxA8rrXFRkyN
khCnrh9FwftUvBHpstoNLwFJDZNmBcL5bYQOuORHJJVXoY2N/lzwfVJNu2lXax6lqPCmxIEac2AZ
tC6wAUPgGwC/2UQf/pQOtVKomCIuIaK98UaFio5os5h8U2ZQPQ7YyP5GM/dglEmW7eGfFgmRP3vu
L/O90Czu46AU+WIaLJYLTAwjAlQQ1SSydAyojmMe7sIgN5tTNpM5iFXi5TJi5EHUMw/acmvccqmx
BuQ56yoyIpEc0aiVajMngkthVPaspjPFxr4bqRkrFTDAVeIBsTJ4Qh9XUD0uE7T3bg1pte6KrrmP
QRD3DvW1AQYvV0owuYuJXSlOqaH2ljzWGDM8UGlhwFgm6RvjwL8KeBd5FEpR/vGMX5E4hdLusNkd
4blmFpT0zEBIi9TfVCI+rxh3QyKX+gRKQpU2boCJ8NWA2XZ1Zai/NLHIdjcjYGrHmxYzOKBYCoKd
EE0/na8TCOATL4M/ycehrjNKHckWA6zx4Jjb19o53eZhK16Ecq1nXPtac7VLCmT6Mwpu+gFcBcih
ltbEL/3pLorIpRoe52mAGY4s7stIHq8PCI9Qtn55qCvYpG1pRcNymsCvkZg1AwW7nCpw3i1qBOB7
Fy8wp5l1OUsWFsN44F0csch9B1NEbL2nFwWSUk2wefXYNBA/D81n0iFzaqN39xhedhEzk4cIuZRz
OAHqwZn6/iE/oqPDsU3AFnb15ZsuMwU8qLWFjpCVt0VNyn6ekB5KNivxXflyb3dZmpe5hSmpHasO
dsqF0Bd47iqcvCPdl+yL3cQvyGnKajJhVutXAgVMIUf7nQkK1sRvRDYBUGtGkPh7UxUuzID37M3w
BtP5xenBkTi+iltvdu4NAnm+u88U/zhotXGo0sFrnNmWcoibKulKpKbc/8M+oYof/rZeSs96L18H
RcMSDYkoLB371rnN+RgeuFCovRcvO5Ak9UC96VFHy/g32t8gQ/TgEBe5UzYJsER0pU578mt3T84w
MVHEJTztqGySc1UASiOw/A9/QCOuwXQJ2ybpwtP2BJxLO5c7YAhmYnxjSLwtLN5TxTn89tOjkqB3
KRZvjSTFbrYQyMpZn6Iwe0VPP7u4Enz0GuuvYjffZxX1jUgf6eoKihmsdqlN+J/+e7D4rzLzcuMl
fCii4+ch/QL6aZurXBLB8uDK1Rivx8xGCCsCgFjXTSGdhmbnK97blSatM1dK12zpXww2X8b4oCy5
RW03G3+3og1Vj4fGmDYMEwbwPYSyYjrTTN+KJrf+vcRdnbkFXCpUhga/wEbfnCzDTH1QIGQngqjo
11MzLcUHj7ag0U919tI9l1fjuvbXAqTapZWu1bhhB+0L5ZIO+97sF8Ti0+Mj63W5+G+aJJoqzVC/
E16ncmjHLpkuRDYWkwlB9gTc6UoiZ5h+CPhtSvLsIc2GRfcPej3E4R7reoH1b+gzrbrZtNPSy/3T
0K8I5Ub9SxJxS1w9NqAR3x5ydEwVeMFv32LM2QZSnXnZAXisFzTIgHawKPu1FEula8fLT/t7ns94
AEP7IeCmEm8yAR5X26AslpXjno1MwBh3NRHfU8lK0wvYgB86LNJUYx1DZ7qzZ/Z/sN5xCtKCeC7U
AYtKw/jk/gDv6Ool26bv8DmaLAe3V1fDGg8L/v6u+atbYBSt63AOklMMATKR58O51PYNV/IjyBSf
0Iv+6zrmIYOEVBY1ktMEwtuWP3C/u5FXMutSoPvVfPf2kABflH84+zzhdyF8ftZXm1rrXwo23j5e
sZzQWh9GMsgU25yiE8EN3AIKOQOHqUAPI7SNr6O3tZgedQdGGn2qX1FOVN8Q7qQcx6/Sq56g+xUQ
/3Yak+g5mYx87aYyNkT1KjTko+tNzP4NI7MxwruCbUPVxcQyQKv8vJ4v9FOC86tra0LJanC8RkM7
qJgOcjOwjcptb+bw6y+h+vBIF2WPt3zgfd7AWwK56dnrDCuA4nh2phh8rHmIBOhM7x3FJkdQoXzd
X7FyFxyxlZuZgAfCAGUdjwg/kgalu7ECi8Xf9V43Qw9U/LN/xujhg3LYuqKv7U7Iatgx2AhFybwm
TDsVlAh5xPHVFRpljx2OBl5hLx4mLU1H7EP1k/Zee2Mfcw9AhdS5flcNDJ/V3dP9mmA4ZmXsvKIU
Z57iCc4zbQ4YyK/Hc3DTghUkkcxSZnuuH4Tbes3P6fP/+26OxLI1Y+TChTeGT3KK57vBlHYoPfRe
3FIifqTLroLP2OY7yjOKvzoIMwAGw0ngN2pAhyWiucKEi5tGpyLzJqx0ifHxchU9+Lk18q+2sd1z
BaykiUOeMlOnrDvKEf/EY0gNSJHJK5LrlKCceIrrletRVCuap/3Q5q1TeZ8RJfgoGCdqR1686REq
5zk1z+JQAVI3oR0qzmnwbpy3A3YMfATOEvI1SBBIQb0NAqmzuXFh4fnsmlJZpoE4Lkoe5a8rHAir
M3vRiSRXU5+bTIXMJrVgNEPkGyEJTRfTFG9Se5OViPFtqBkpSNo3qZNZGMWgXe0QTeuNMCtEvzC2
vgjl4CkE2A82TEhshO6ge329UPRBxUHSeHfTKcSyHB2+s4YtZg/AsX+gE/8qJ4V4wkqCfTB1hUWm
vl/uSJIxlPIDnCQoRQhO0FX0ehOL6jHrXDih6k0ZumcVI3yWUsm6W2K+Re+cMpU7inxhIVYh63k6
Txo6WwZsDkGFpGuCAxCFu8Vndp8P0Qej8yLEu/FWRMw6DtK91JZ/semMsvTNw2ORDXSbCLcYf3mT
HDVV8AZLaK+gQddpgggwSBWv7v2r4EqXXYs/xk07rsYbqU4poN0NrxwPNpYGYxVR+xv0xqXpJ8iB
2j78a8A7rw0O04+xsc45b+Yh8wG1Cbawz6g25xzPlHRoXOomt/f6vepcZhhM49+ONfLgIu0KhnNU
qm7fdRwkrWH9AYWTqg5XNWlIyEtcu2flDpIMK2y14KhD7ocsbSHDtpJ1NajnUrnDhO3DFfP6FKF+
h6Q5IX+8YvKw2t1fhTMfjP6LjijHIeG8rOpvsUsviTRLp7lUoVHUqDAWM2CA7kJ9N8G3A7r1+beZ
EpBeF5Bog0800Bb7YEmHe/+xhNvMhbgBtMiDVai4oTS6xBypa5XP93ts2E52mbA44XfrYit3OGWx
5sQ5r/SMxY00C4iI5wCpUme4pRIXQyoSSrb9ie2PRT1Mb2MXraHc0J2vCng7//wIRRp5qqkUQMgb
ktpz0vy4qnFDdFHyh33GsMq876kCTT+38VJeTdjoF/Fpl+n/a8m2hptU6vy01kmPRw38zfRDn0Aj
mdXtSlJqlBKPBkX5sbU8tVb8CcB0dM3MFIU+zB+71roG6ZmygZ9xKDDqxYC4YKeWwrMFch+3/sdI
69eRRj346T4AVMMFro14nzWxvXOBOifhVTDm5kfQqSwt+5vRA39/e12FSOPeTitFGI8uV13Nv46u
v+aL2bo+xEwfJZXfVkJJnLX7ozz+r0At1Y/ervhKg0paeNXvppIeEpBv2W7Z3yBp9G1hZvorcJnF
rDQxVH0xcdtvNRCePtlZAg/kv38cl9q2fGnUTxMfoMOP+yWN2jnc/4yfNh0izzApX039OfxXj2fp
hSEihtzNxqM5sKRObgzXVk5RiOp8PpZLydvBdwlUCdmSWGjJBK3KqPmuwcHqZz9/ceUeaRaeddGk
5yBJXYyW+OhzDUXrEIclQFm4f5abhctyv++cnaE0ZkozB2jLLOWGSeNM7XZTaFPWtvDu6P4mjAsL
l6Fxn9wh7tmYxIrrVx7LYxJJpM31F4OPkELV36WK89UDCMA7tslFiiyLLcbDYRYb8TAS+O7h2qRg
+VgDx1YsbFh6kKnopcmFuPAIJMNxn767YOOKX30OpkjGvY0N1isbVQPXN5LF+tuGLLWjBgqmAyN2
qHmMGLeugCLxQRPWFXt0VpabU7OTTwP5VdVlmmW7laUZKdTKlyYN8XeUZRBH7TGqngp1py0eb64R
lOKk5zJ51cqss6M45bZbJAcWjav6M5ApJl50hdwD+A6GW8sZUkCUdrJghHsS19/cLKzSLdy0nqDe
XnWG8YdlMjZLShDcaQOOE6qTpBzhZc9nr3dV4+Gif+6OwO0k3rLdAjUbLz6vG1k/2SGcVq8vcH9Q
LZkeapUTc5wFwgJTaSkZYdbl7TQaaFK5O50CPHOyQP3hB5Y8um3/JcHMuXYWAjyd+5co8fxW52wX
Gnq5VSmH/cqvlHHiQkkln//DeMrgcszOGNvYI0IPIL1CnKVPxm+g7ZwJkUvFIQzzLdPl/bMVm7dd
PISL2YqLXwjZu/lErwtm2DvUDadVHG98ZNm14Ci4vQXqtVFF1cfMdYSB8OquT6U7sb3fcFm0v+Ov
Xe221yZ2O0nArNxIoVA57RN7wJQNSejg1s8tFCcpl9VeEVlR9xQwKO6Kxhds4FcH3PsUlP39XPKx
lo6p0gjDDGY3CAX5rf3joD9VOCuR7oDLHKPp5iZ1jGrkpD6qEJxRXvyxgZvkIP/XI+r47uAzh2hM
AFedZEr7kUYV5iNcyfasXliZyHaIVZsm7NKeAHKjR1m7DF0XSAjCRXGlbdCnHEuFdX5OIhsVtC7v
mvPTkpTQo/PptJndXVlSuP5HWcwlXGzRaNEcE42PEmFwEjw3KXP48Ab9QxNE/UZyexGVaj32MWaD
/g7Ag0CX4rri4ZCPxPZTu9wRTb7SeElF/UPXuwXYs6fL8aVIA2O65Vr8SEKBfGtyl2LLCXjvGcCM
ruizEsrjQ0unKU3bIX4YeYgmpGEplM1YQbI5HJm5xQGBYENl3B1bcaaIEcyeb/qaIEyP0+gOY2uY
OfZYiacMVrXPDWR21HsBsi4cwq/eyCsrr2itBCQ2+CsOO0d7F+G6SdTBOsmz7+3MUwOZYPiBDekW
b2KemGbg89sSVmpO77todQoxo9t2kMWJnq15CxTH7Y5pCZldiezAwoa99eZmWEA2HNlxJTpKvohW
0RuCVFN/+Ey9mvzvx5qb2Z181AOvdjFUea04g0Woy1UzmERUsxJQkCpt3NS+namUfh7HmfXrOfQI
pXFbU37RRkbiP3cCoThdROQPtC4OBJe/SB+qPA+ZQAnRQ6M/D9jSwsZCaR4DVNM9ISmG37xMjrOo
L3+CsbBe09ClZw0K9GENHnXINwgpJI+GgHRWQsj6IDUIrxXDwYBjMDlXazwKJAv6aIEr9LuEDf+3
AUyOeLZABmzR8vP2FJsQleezjnN/AciLcJv44RoyUH/gF4SZSYU/JnmUC7m4w3GyjkuTIeQWDefk
HL/Uw13G0lLfr9c9x25aU+KEwB7/rqOhlTMpjfD/wjR2uX4HaNSlF5gdWW+HIYlFfpsuQCws55ZZ
NXsvktQUk4G5Hj6QDsKJSIOrQg13DNgn9EuWamB/+q/cAeUagBmeHfgXl2p0PdCKdoqadFhkXl8y
vWi+M5NCFb7yZd+Dg+m8uBQyx0s0wR7uzFP+NEKYEq5iBpYaJr/0vzzVtgclnmFG+gediMME29q8
i3UPDqlgrzLflJH1+YndZq9/5wcw8KIeisQN8OHq+AMdXSQ03rVP9Rz4pipUOTcc6Sm8fZcyyoMl
jmxyIq8jHzsWJeek1j5REdLiEz1bH8panmn+7OknRkkEm2OLVhe9vIVZtTkUTzOAk0P9wpCagUPE
lhMLeejMGxw9wC2zKA9+wXm11/i/qwT4RJlkTsWy1TM1Q/6n8qW+eHtbcLCgiXDpHHQ8oipi73Hq
PzKQjviveC8u/vHyaXheGUo8PkrdHApv3Af43cFBt9zarhPViUt/FJysIksXDBUYIHhgTcDuAMWY
wY0B7O5mEv2H/L0UCZn6Havl+pcxfSqeSEDMd1P/86tof436n04pT2DDG/eA5NfQL7YezVSB0OAt
QPLqGxiIx1EnTFYSV3IlbVgK6/Qzbv7Xi1CjwFsQWUw2v0eWVM2J87kDgnu3K4X+2PmAtlaZY6b1
bX+LJLVAX0gb9ndTlwOmtrkYSSMdgfWqHXAfNvhPZoAf64RTc4vIGAyCB79lDmN8rWAl6+LgRASM
TeUexMz9m3KOQNc26RR4+PhdXz5KwHyfMkzw3KczcdyVAcoa2cbKVIgO4FY3bY7m1t0RgjGO07Ej
5lMcjl3aoRDsDJYWx7Q0UId3XXWyxEJCXwCIWc6SS7ThpjINzNikKwL1A/ofzlKBmRM55IweUpQi
cJeHV/pLPBybFz2pY3rFoG6FshpzZ031hErfpOcR1p+EUUr6f24XjJrwW9OpuQtPM8chvVMSQZx4
1iE7sSLaEwf04eoNSp9Dw5viHEXmOVvMD44Oy+Y9ZWRRqumP5ZhitmsKAYtd11gx6csP8Gq9PunI
Jepye4EUl98QDd2wgCfiog+cxUrnEJRTk0520f4QPD+lub5UcpiqhCSqzSqrF0QsN98TfmyFCUBb
9KKm0THj1I9+9eGbyxXeUMvi+pcTNCPT8WOcaQowzTpA2fVIXF/n5jLMpItMhJNu7fX/JYWWU7mb
k9PiX4q6WUK+0T+LomLNqDL3AUPPYB1xRYzqJHCCfHmZIq/J7Ivweb3moEiO7pLm9Csi8AkwTGGo
bf5O5G1c8nnoTE4o7+3lj5DHTRMre6C1VT4nA1E8SWftVc6eVA7QZYe2peNsTS95Zl3s+3K7MeU/
4cuIhhF5LDVawAkt9NHRlVgTuRXZSiisMftd9+zWGDczHqiFvs2WmJLpc/7zVHtCNF2KeU3dcIX+
+y6rZmtP3ML89VQEOlab0bqZJHK/R0gGRKc0Yqr5fyOBag5L/wQIXUacgwNlqMRB/8F0LmfTJ6CF
xe+hU5vFaJ069INl/8RGf5crpoH7CO3sxWPe4utTbgoWz1pV8qWVGap0uetjm5ZF6zBJdTTJ33Mv
td0RgQRZZC+aYIhxNdt8EmHqDlSDBNU4Jb9a2PeQVPAOD5VynqEI3lD5kRXX+YGhiXno7ZbpJ7uw
HjYn9hTQeHCnNCF5lkIKOXxYG8avT2D+YvRKf3b/Rgu9j8rkBitRAOL2VFvSJyJvtWMLUSfiYOJu
jjrRDvNBZhpUm+FWRwXFvIlbIYAGbIjVLVEHDR7O4GrIG6RTCmqEHcKK0Qgv2IL9SVtOWxCSHuEq
VENhP7X1XW+k1YT3ESTvL2ULv3sPavz8RsCn+gN0rapgWkL06FJ9RQ6eFaqFVNqXCUBgQtNs44uM
TeUY+QfrUxVgvnoht0EpJnCvsbLeTgn6qi05sQH8XPzcNLPYATHGSwn2LhOfzEtqQNGk286bESEO
81iit0m5rxTFAuYBPRss1SqSz066uX45aRewh5s6bllhOo98ZpBvFr60PLjEfJpD4kH5o2UxLZSP
J9VB+UkdIjohT1hBRh7DNI5mKMDKoITx8mYV/Z4sPK0SGEja2AlYVsWewIovezm6vqU2ZbvezR33
x3qUZdaJHPGRjzSkvM5zwEk53sGhpAY03aV9RQomXI6cnDQlVrYvy4HuD8ND8ewkBAswRJnicisn
4e5AaHgrW+Hq+SlXrA07XT7hEdbdPDoHgYIv3w5I/s7YmJ8eTvWmRlLuRnwqLzPdoncraWYCenvM
eWc/9lvWw2PsXMbNe7dKtiw/bzDTHvU1Mp6sON44HbGyfu8LYlsN9cZdWE4/MYNrrlfQ5ukFfTcj
azeFDz7zUlGVI/uhiRLStj+dg2V+ZpVD00MWQI1OTgrElJvCIodJNt4Hpy5IyDN2c6vxrzGTw321
I7z/R+8exVwL7Er3+DfRUlXCKd6sQdnVgGNchsLsTP1XWptmeqabqpLpPCn1qs8Y1t5cfHXFUmvN
V2WCupINOI85q9e4otGFFhGES/eknqQ/F3TSD9S3xLETyUSn4i9q13OLHIUpdVY8QR90o6VPVhAO
cr8mIR1m7f0PAQZBz46Hdl9sQECALAEBrzlMgn8J/R2d4nQ7m9US0CmH2gQTUokEimtVuZ/2SNHl
gBABcFi2/AeXpR+rKCdgfNyRgK2cM5md4NXgzQxu/5gLaHnwi7GlofUHhQK5rboXx944LXx4Rigf
rWugjOYmlKx0YhmiVZlUyxd5BoZsc+LRUag2OyWQWJ45PwF/fq4aYP9cYcN+fKyPz76oLpJrF0MG
G0Q1dTRX9zpPNnSUsSkMZGqi2sTwnFi4gmRFudg1vatp+hoCm/G952ehjPZdHbqGqBWZ7ucYNnxA
VHem4T7lKFVBGWYWQB8H7OKDktsluIL8KhHmW5uau8Rjeg+Bn7VnCG9QZ85tSy9iYsHnq4QpJJcc
XbEqPC87ZEYLVJbkE/kwoZ0epGUU2q3dtmGm8KaWba5lOf+P8qeQaK4AYOjQe+gSnABO1g/9hC/o
Ek11Aoq9AP2MNwrCjZxOFIJlPekLG40W2d0iPsw1oFBxfJdsi3pAS2N5lmqXUeqpJVCl08hFUole
PwRTQCo3/XIPN1DSZqyPYBF0RXFAzRCtvur86vNZR1Wh54NHIB6ttZXHLQvDkW3uQSyci3HI0caH
TwrURXPLxk6ndGagHx4+4HhaYz6+eW9Eegr4Jny6EZuRtQNHbJpjpsxSvYs+6gOig7bDfQHzzsRa
SLynrdgYzJUGoSuUR6de9Omig1qz895RN8WjVKYOoKzt25nimLZhf7UyH2EyB7iECJY0NSbG4e7B
3Itp4WKPqnQhB7troWkUD7nm72vxq8aX1WNlvO4Sf7rgaQAltpziJGoNWzfLe1uOD06NcZFP00Ao
F5XXxcTgPwTYD1sbk7JlCWEgWCsXTjcE7LtxunQo37GMH5plhqZducltAtKDIoF6fucF3VBMPo5Z
F9RQDGVnIbOGJKHrgVOPwoH/bcf0ceAahUlW3mSuqZXdqaknUnswAquoF/6m1wjSOlelwvwUXYeo
QQJPSaK2CM2EQ12KJT3n4tlNFZ5K4axpNCktHZT8DAPy9CayGZh4zuMAkSeEdAkNDZgxGzAKdPpU
BMRbTaXE1IwH+PqoLyasaGkYd0OIK3YHc0EUzKQ9RXs/mGjt3lXl8egpqbrhhVowN6v4DmsP/NJX
TmLp0j3hCG0vtJMeQuasBgCrPCTLAzoosVNbEO+AKaWxHNshGNNdHlMVF8hc/F0npnyBHGIGM6dm
4Yj1BV3xM1VY8RbrYbHB500UVD0LA8VGWm49MiE18Fa38BWBd2KsVBUp2FrE3RgHVpR/SKhXHdiS
fNdBGSVMj2mjrFOBjQf1PddhBlharA/XnnaDKkteACpcjdzzJEBRt6I/7gFtM/22XgxTzhtfuUsU
fbkZvTBU/wsXaeUoJQL0LkwrKNEGIxFwYSQajd2OGQ2RXOFNPITOnKC+IH0qPZ3vVLBrZsIwQEOO
pfgfJpzMTp43HwcZxhutn0debxq8aUzXqzskPO/L1jxWKi3mOoZOwoA6k81jKLM/ESjgrp3ifdmC
8KYgdZWxxfDx5mz4nu1vq8LgJKEYESoA8bLo2cLNwItE92a37AbSL9Ozxjq2C8I4l9Jb19tmn5GO
SDfuZUzPDG/ecMn4UVPyvzkymm67AEhOhQ432M5pKK13XDPysGYhLLHYWXL4Gw8AbCXYqIGF91Lz
+oiC1EhHB4AAybHUYu4omAVZLZ8uRJI/5ijVtOxWNaEtBPQhmA5+ZVtIa/zAFn4gnuzkTqHl5ZMX
UIj+870AhmYixXJ9h7SxMWqdonZ+FlK7/bX4Icf48E3b4xBas5QaSB+cQ5EqG+N+j5HOk51CJWNy
8nnYKEAdxoRk2q4HdxgEDXo656nyVxUlRb6ANEhxU88LZq60BDtarU0DuTtzGCrxmIgv4JTjvgnS
UTQ9BMDIC3FtGfXPwhJ+xdDjXume87ryb3y31kjpi4UMgMvbDO7A5eSQ9VmkYvF7Yti0qt87j3NX
Ua/tF3wWR0V2xs0iVFNwyROJzR1neWXlJaGKGM39a+Dm/5zUradpOfwjm7Jz0tqmGq/xTqXBSrRh
iEuxbgR0H98OdnYRH0dd6j4OHx0mOjm840M4FIqz/ySIhTx6n5OMDFtzxjZPpg5URenperaqlJmo
esWIK3O4jYxxvzp+mZcsh5HqRgtSDAP3wEnasdOGr+XEMw0jyB4BYYLSwazkgpPuFN3T4jq8rhb6
dKQupi+8sknt/xtuJYZJHbdxz5d6MxvE/slN+pJekKjK3/FgxSSYbHc5TFQ8SemjIc3YlMMj/9Kn
jJ/XO7JpH6HgY7zKKXlSDsXUXJTGctbC3useSGBangiklgorZXzN3+OWqY7uWeI0oAd6QrWHy+xs
kH3oe1nVRdbl4qEfwGQdfygiN31aEXEHy2FP52GmhqU6xT5vuGc1y51qX0d8z7mOIxLml9yseUdv
u66U57OgGh3GVYyIwlEbfL3J2ROfgLMxZXzlmdnHyLRR2L521HQPpEVtGhjqa38JsjXCgY7OsmYb
IsxTBeSs9AJO7aP1IpGhXu0xXzXALkN2EEA20PojsiZXrHSmR6zq34G0EaKRI82LGJ28ccq9m7Ua
ae62QN1ZWjXBE89xtaqQqNYF3p9eCnwnqH1jG99CbaOzGSm+Aw8aYoSZaLoiNGfjUx96ujPaIy1K
ZW98kdGjpfEyKO2Co6WuDwyvgNOcb2Tguuh5QHGXLG3t/p7eImIIWexKM9W6kP7FTayhyyNw0OvY
4sxq185x3/F3t3AizAPzeRW10/xth5B0ZOJGuFdjmMVHB8bvkTFrKd57CmtndLYu/wE+PlmL4YZM
Y3FIDI+KEp55Cj098+hzSsctj9QXaGM66PAO+gzx4//tMQcRozlCz9uJljqRUZHlr7VKQd8bA0Vc
Xnc2M3TzjPs7rLAYrwkC9YT8kxQ35hfm8n7eqr/TZjmJZSXxHqNt+MhBIrh/g9hcJ2DHZV6mTgET
ZB4OZHFf/UayNqqGMwQuAPGT4IMGqbiX6KJls5XBs9wBgQUroa8wfYahOk4KzX8NnyX0+ncEPkI4
mzEbd5Ph4s8Np3jmlwz1uL2YuJA7dj8T/Xwd3VpLMCfkM1UrCeH++q2a9OtNupRpvNGuwy4TqBNo
z+LBaw+C4Xf24nViXa3wrPEgfYK3inii6E/sFMnVAEHMWGv87twdlCYe2vfgAzayPwk1YXYdqK3Y
CPf82qjMVvjT6F7ZNlXLv0FtC7twML5lDLzk4HjH9kGXsGcFRYQm+foNscyNUrpliCEa+hW+p+NH
ip6GZdZ191IFdnqKq1TAfE6gOyROW8wxn0wzvM70kV0q1EpOafEQA1lyoyXH1DUzyZ8zDYe2gKlI
VfDCy6qblO6KkmdzxhE/MTNJkZlhcmQeLgpNregtd5NuAJ1UJqby3MoTqh17pEmLWLAU67vu/ChZ
z27O5cPYgGPjN3hp1HKv9f0aMZWFWoINQNiNmXERmbwbj/OXZ5zt1Lj9dTWqsiwQBEGQ4SL+ZULR
MaKuPMbgk/PFloX7i1y5gjpgeLuu7EvsLEwhP8GobKx28vVG+wSzkysH8FEJChFhv0aPH9voTB6p
7KcD4z1u8Bj3ul+XY7cZdlEFAtOhEy5xF/FBYc1MS9LpkEdzwaoKbdH6QIt2TSSIbet6uaOiwL4G
c9vG4Z7P7qBBmTNHtPlf5VcJDSiUNWV8w8g3NTJcCLIZywIYggly33Prl6G6om9IZ/pu1BD0w51s
fVuO0kCXv7xnOLd9g9Vv19dqKTDpp1GQpjFDFKkns7sLVOi/OdidTAfHNkTJIIcS/neI43B2/z/y
YYZtCIp2b4WhRCNFQht5tU2jbw9xo+C/Xmmo40QNkA41TGhBiNLQcIIwdSU1powGG71HHXBEYFgY
lvxekP9ndTFmsytwnl8F+Psyr1Yzdi05Yex/HfnTd45RIO1pnDvW8pg1faB6sBXRJaOF00TEWpGY
J4M/F/FlrFR9Tfvmh6XM+J4EAaMk7NeMeJuLABHMswoDJaKmOKE1l7f6cVAOabbqq65FbZ4RD+Qy
nMSIpdW26I4u0cIGwbJD7oPJGLM1ycyFRvE5YCL32hNG7wv83tT1ohoE+Win1igQM3pJe/y5ibz1
MHPxRN513A1wCzwXREXEVl0x7amlAWV7R/tuZfLTbT7ORw90/wNq12L2IkXPr0lp7Imtp+CPw+X5
TU0HE1w4c39lh02AaEvEQ38WxMUmHsdgNgY4p70l0WBSew3GP8UdBekuJPGJabXoQwGBn45OdhC8
AsmSiiPM27TdVOQz8r966Zn3PbCxKDgptdreQSaKUQbAzChr/+xGAdeNp+w5XRvyi+kJuZ9RjqHw
8ZdEgGXSTmHve1xpkPBtQ2Ht2+5F2ThmoW6NDgmy2PWWdM3n5ZwvCk9haP/WYkqDsjZsJly8z6fs
6o9f+kWpVvuUzuPl8+9t1XoXpJDyzpq3mkYg1Iub701xNRrc2N/b2cET67zogo7lzNYEGYS/QZk5
SwFqcmS8WCQgn81yzczc3ENltegz6P3oUhIlt0zxXCHkOM9VSO0d8ZkmOoQX55Gv2BfAJymzDPHu
tjMLJaOpYhNVLOrgXJn31cpeleufLB10VeUtpanFdJTD+fDSi7obs4XZ/UrLsVfgldN72QNJUpS6
bwAr9lyO6o4QP22Ap1w62MXgtq/qHG0nqob/c4lz40WAUPj1JzklmDQIVuBngiYn8nhojHChDMyB
uDApf3zOUAeggqzMcdXIXG+1e/IZaaOxfcR7bBBedFHCbaC6DHPU7R37CeXZGmSIz6rBhuHBBlx1
gYEXJFDEOGO0B++SRGv7Ztaa7mtxmrbXWC/np+nxXMfPDLVcliRmnj8lGW16WDNjKK8zb5R3lE7w
iVm7G0k61o32mU3UImEmcn/ahYDxQb1YRG3Ilf+yiBGnoGcEA55nd+aDQ+/YEsHPNJGVAnTkUlFL
8yAqqmXQBu51I9geGUlx4aZWkAS0XVFUw2HWG63LHsWL2OCnqb4pfhYJF3DGDt3AnZCL77DvjGwQ
IU546xC5oewS2urG5yWxXpcCgbzQtDnnbAOnRv0TLXSbgvQKvsfGsati8dauQ7Nq2974npfA/zQA
JKPV9U9GDqZSVlt2rpPFpEcXYXTIVPNiV1b8gfFeY/VwW7x8XSi/pD5SyBWvBLexpxaEMLMjXBte
pI2y2JRPtAwvJ+8uYFKoOmH3HMV5fNb9d8UMI8d1UVgXxEapo/XB55grNmVXizYk5KuLD6b4LLHn
IGQIXaIOnjeE4CLqokFjV5AIyFezQJ6IlC5sBhZnhhks9uQ5T3U7RuOFSGHDi4DE/94MAdBL/2to
pa+y2vE2o2UoSGX+Qf5s2xyCfNW4ZCG4Iw7HABu8t/qG4+hzHsEBt30sFZmKvd7w+e5M19jkyYM/
esYsx07vyeUpqypgeGjFAFP5gk+1dlMjQMbC5MM90NBtQADOFrMzRnJWTTTNG+jBYjM3EhLXm9ZD
q5PY+ArM566Zxp0+c0hPuUarb8NOHZ0aU2RpIcaF0RlFDQROB3zF6q045hx0WJVmCHWimt7T619G
ntfwfIfGehl3oe3yWsfm7rPAc+ZF0mEpu6ZyIyYBOYxkvOS2pv3Vhkb4bMtIyYzf5yItud6RMddY
wl9TOmYxQ0LNwpZA5JrgX8qyuleoHylc5fIBm7U8mU0/QNSl1pHqIfge4lVSIbDRis4c2gjoNGn9
PNdx39BLeke9VbFkPai0LUAAhqJ1ijz9mZGz9ojdfqNRlXZ3AgVTECDL4RncJcEnIeWHRxY8PQ9G
7PEWZ1DmxSDRGAg0vW/p7g2iW/gsCLW0M554+EAOC7ivzGMEX2GQqSzVjPXyhvyiqYVNrVe9/Yi8
XFEtRnSwEU5eROQMIvj5vO/ZiIwuErRAqpqzTlrNWO0UoTqRmU8aBCt0/XiVBfsTs6LvtF0N27ay
aRqSM0ennqVYThgslK9Vj/CITqoD5PJB67JXv7kHG5nRn2Etbqe8Y71zfLNoFxSEUof1RB2znvoC
8iULHQS5i0auCxAI4Hbc5YHzZIrAHqW0wTrEaF7COniso7rjBiQraucvYbfDRpgr8d30Y/uzxzDa
KwHgBqfueiMAcAALnanygVxfPYf+nUrR4sIpdQspAGfY7+NJRZakCozjKW2EEsEO8OwHaEYUMUrU
aIlPYBXBpxppVi3T1MKUGEQfsOkFWpJTjtNa87QMSOxIVbUsVcXBNOigc6f9waYptYjIczM1nKHm
LWm586dqTn/n7JpGG6SZlwxufv71GC8tDMT4H9Fli08SurEN9b7lldAMc7VRXophSaJym686RAGC
xDFCeoQH0ui+B8IybDYo/NLV18rPvSoN+gtI1JdxawqhqgKiE6su2sLn2NFX/88y+YfAzt41rh2j
u+XxIZnduu2XuEGkyZ25OxdGpsNOV/KMMBQCwECre0O8mX2F2KSPEh06g3rJzynDiPvM0ktlgfDS
Mj3KH2Kn8zNNrEw+ZqdnqxK6ZyxwEY7bILx5puGfZk2hmGkWqjME/OeNIIQhYk8t+tz4Y04ySv0v
h7B6wOuwa/s8T7VWgBweJqyYRRsXojihwsUQZ3NNcXKlPuYU7MZRizetY5Uu09WtjHsiGwmf/u2v
rrFogT4wUgnhL7ev8QA1Ht5pyDPjeARg82Z7fsi6IYIqNjsNfPuoL8KWjYE2zp5iI4KlcrD0xBft
dk9ubgwK5qqsIpumAYkg9+pBN6QRRYzzdKUfk/i5EhQgAr+WQTUoZSCmI0TffjdvhGG4zTZXslIZ
Zw/cOL/CyW6UPMl158jKTOZgftx1fdgyPwRMrhMqBX17fAWVWnkD+LyQkst7USph2AILqK5V7gyk
1zyLlbtdrtg/aif5yUn5Oyu76XE+Nl1+OgoERT8Dbp3GNffu9RbberlUYRhzxlj27YCOIGh3L7Fc
xM8X4zV06ozrm3S2WHZEh0hj+T0gMdp49IuoPrMmE60SjwsHzMhdaxMAktARqFC2u8aIPrpNZrod
XkQ8uEIfs4yW8icbJ6vvw5JwrlizcrZjkuv1Lx3uiV65Kaqmh9hDxj36ZG3jVd3TJ26yGOpksTsR
rsKV/zAEkpDRsf/jzfZA1d6MZ3soB0eYbjuXTV6r0e1/Fq2LgRh4TYbNPh8uxFFGLmZoa1Y1JwiT
FAhKgOS7IY0wxGGStpIQULJpxnHP9R8OztM2z+Vb5fQuCvjq76jMtfvj2xejGgB5qO5/WkZXIDD/
k9ax4zirrq26IFfW+alTywqxftmy2JTQ6jOEYogCbxJWfE9aa31iqwJjQ6VxELn4lFfTy21fDt+U
YYiEY3XVVrUgCGR3tcPmXP9N4I6HsjAXrV/JCMyxZOLQ01dkrr4WqWertCsWFYM2lpZ4NWmOkGnY
bVppgIfOF/nJeaTxmYfFdurFbos0b3RuMzSixIOFa25viaxrwm/AoBTjVKKn3i53yTrWIuFKBoZM
7uzF2q0NB7BVAOMzYl4MKPa0p996TnGZfZjGFe08SxzvEGJEaH7zuQvd98ClC4aC2xHft1z0ayJi
YcB5HZa3T92H14UFylSsf349s5Ji9CMRv97VKlpcF+MQfcPhbXTM461aouafCtwiICsCmCFVDqf1
w54lLmMc9FJm3FFvUlbBgnbw5ayMuEK5pTwOsEXgmVOYF6vEK54cHQ8suiTK3mJjFVDjaIU+cCOd
JLk7Mnp8IOl+904PudoPjDA9/s9+fNVh4gCeampOAjSIXg2NDfw2H8aR16ZqWGz9l/qWEEogU5AV
eWpR3OgsBI+tkp2Q+SWMVWjyPHSgQPE4osP8QdVoOQPCmMzgLJUrVgIyQRzTsy6qXHqdIy7eq5tY
mQKrY2rJOB59pWTUvw9/6PzzsJLbAwAdWXEJC+Dma23KwdEsf7/lE0Lbm8BGfxzMIn139AItZLeA
4IUmASqiphWvpgsU+N17G2fF+lxC6uUFOUrJRU/ZdwGFvxqhx0TDmEl/2hMpZaoh2zJU1RpWTZ7D
3qtxUCQ6SPm7Z8hsp7fGoCMYnVzGBbTRlp3cFE15K+liLjH9TQRK3MPtBFIZnHfACy87ZtPZntGE
rdy5vKFhvRjb4gTJ4QdS5hEGRFXza3uooQeCsnNBriUhr/+EW/EM7IZiCdPATwycCpdsuCxIZ7aC
TgFxF81N8W6W7KrA6zQbTRKIft36QYKHspltHsekDEkQgr2eGx9Jd3/EL3Ss+gvLz200WS2QXrpW
80dWAt809xvV7FwT6FQ2Cn5lYrnt2GXXGuztHSTIUyxkLmXkYHHXRUW1spah7pl6WTPNMfoeF5Cv
Xf4TFKeh4eL+amvmp+rklv0symXpQE4KvcktqPGnKIM+bG9fILVaJJjNzG4BmlZV/KdZxPmCUIL9
AcNaQVMb+3TJsDFa07MWOrzqkmjWGHWAw/goEL2HvgVEkwHEFEmZd/9LIdGGkTZ01DAalP+Gmzx2
//S5rxSsjxxgkWrcaQfYc2S4Yr+JagOMjeh7PDx9ubHRyFxUK05jOlqytCB4OSV3vz0WtQybQYeU
9j5wVNAGucxqVN8D6klCZ1c24qleQJHQisjl7+4/UXq45LaqEckYNhWA+7hRTv8rlt6scVXd1k1C
hAijbA5AZE5LL0Qji51MuT+mR26lmq+uMVrzRCbLC0yc5m/KjQRZ6uSH0lWz1jlJM1iSNl9WbcFy
XDGi/UuJOZCuvIoQ18yVrjvgZKmLfpEHpPNufTaYUWx3JbE43qxasOZdoG0R3j81WbjjYE6GHp65
O2RraBZA6w5WAtv8+jKV5tBlX1GcoBrVLH8zaob8Wp6+ZgZNO2sMiuURzYKUheR6jTzD6RppnWyI
5C4GWrnd7oIb6ZWjR5fYxPbeJoKD386oo6AGseysRyqrATthEWD2PVAXt4YfC+dXKw+otvG0yWDY
fu1Zs2OO3kgGBi4ik57if8yqPirbxAo7KzVHq+Q6+KvFO0jZC+on5Hr567BRExs//GgM8Tg1Ne2Y
OGs786/V/Xlm2sGv/j9PQJ2hL0c7EejB2mdMOsOv+KhL23zzA4p1ftuuwEUepB1eJG7ktixG6ASp
L5LYCLqc57dPKhg32q9kXu5PLx1yr5T/HeSt/JjQGwEpYc/SclU7KREHvQl/Z8LEVKBKKt6TDtrt
yHJn+eMaOryP2ISUBsvOpsGxvRWeI1dPqgsfvVoAlA2+O/odakiFIVHEevWGGdkYApdgcxMPSQME
T8MDJycdiZ6GRrQviqKO7656AG5AX4BzyCnDZ4zQ5iUmhZwslNP8RJwLzm879kvB94iZ6kL9yI1R
6NZt50oT2dDrtdrFrLdiVP79T3IigAPpDpxO8+iSfdJCuJabNQg0ilCJaasw+zvnhq1kGcdQVWDM
lX+8SbZpIiTvmrb/gvuH1/DImXek4mrnFchKXK/4OEo9Uir3JmDVLgMauHX/GFP1c5psf3x7jiit
l5VkDEfIeEKMeAhZ6njydH1/wuIBZKTzPSH3IwHLt5WqyEIhfL3EzHmXsil/0WvoG5HUG3LutwEz
grv9Q6RupmQRWcAsBegONP6A6c0sz7KA1LVZW/p8uaLQufzZPSriRpyDYLHac19CkiP2pcK6X6rt
oJEfkaEvslLy7iIjCJ3Tvt7gqHxvl5iYaPQb8Es+Y7J1zjEGc314WwRba/YEAL7sK6OiKqpGazzY
JdE9DYn1VnTIr8yu1MqHg/xppyy4C1errjY5QW/REKZKjlUanCXOtCm/kKNon1OFVS7uaagCa+Tw
ZjJKxxFJS4aWGfnsmfFrjdry9zUrb7YR9XoFnAPVDzs66AR6SOgnmeNFI3WmaKy/ibqFKd7FvpJl
HItvZDokHo+JITeZdZdqexyZsIXCel/oXujSfvVVwiPBQ+hhY8RKwBvOj/fLjc2trZh0Qm24g973
4vqKLkxrkC6xSk7iML/Mcu9yz34ixtOnWHtjAawiOB5g8OE79eagamsHFq0e+LIOiNnl9HeI1xUI
w2biFXGE/+p9P1sJs2VBVEzmeav+I2moeeOyx47rtTHluNhGPNoIeqoZLNinh2uOPQ3IWF8DRxdd
tD7hMWqGH34JU1aoMHtC+OqJgY44ldnMB1lfqcvAUrbsXjn4yt5tfvpPaVPUhO+qMQe8r1g9V5qH
7dk8p+aabL96lKvaaQ9j8t1pF6kS6UtVWMbwcuiWbj/9kv7CUFPHVIi/CgEkOnEmSd8WfPEBEDCK
lRXdcxhHU4BVhPMYO8Vy/Gj3fd+M1bYM6Zap/77a2cJDxenj6pMlgiGj3mhIYz8Z9I0JRk3c6wOM
4r1+3HA3wMcZ8Krk9LZf/pMkJtjmRGFIQ+OGakM5m1h6ilF3IADlTtLtJzq9ajxTGgGhtA8IHFxN
mirw2XdmT4gDwn5JL8Sy/H2zlTeBxDAxPsiJoo6RrmVq+tY+LIIkrvbnwuuLbAzSTKlsp3KD1avC
PAnJKrpEOzhBeNXC328q0lZNqPQ2pTK4DqmbvWTeNiis4GoUm+YogfbWlpY2p7myfDBmaTHMnFCW
/XrrMTBVwUnZXNgdAYSg+6vcFWxRtb6r/0ot8fdN0XtRW5fBBcEYNd6EdpuovmrGeVzqBE/YbdSf
LRSLy4h6+re5lChJOuoyU7pJKNzYuVFYz5zJQvKKoezFPF3vwhQtZhDVotwB6tvsoV9EzW6bC4/c
CECZs6ZZ8vLV9PjCHF4WqBio5kdSsRztUA==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
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
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM is
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
sync_RXRESETDONE: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_13
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_data_valid: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_14
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
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_15
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_pll0lock: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_16
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
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_17
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => run_phase_alignment_int_s2,
      data_sync_reg1_0 => data_sync_reg6
    );
sync_rx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_18
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      data_sync_reg6_0 => data_sync_reg6
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_19
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
      I0 => time_out_1us_i_3_n_0,
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(10),
      I5 => \time_out_2ms_i_4__0_n_0\,
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
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
      INIT => X"FFFF0010"
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
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => time_out_2ms_i_6_n_0,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(5),
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
      INIT => X"0D"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(5),
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
      INIT => X"FFFFFFFFFEFFFEFE"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_2ms_i_3_n_0,
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(3),
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
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
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
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
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
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
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
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(2),
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(3),
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(4),
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(5),
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
  port (
    mmcm_reset : out STD_LOGIC;
    PLL0_RESET_reg_0 : out STD_LOGIC;
    data_in : out STD_LOGIC;
    gt0_txuserrdy_t : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    txn : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_sync_reg1_1 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM is
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
  signal PLL0_RESET_i_2_n_0 : STD_LOGIC;
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
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
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
  signal \time_out_2ms_i_6__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
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
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_7\ : label is "soft_lutpair94";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of MMCM_RESET_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of PLL0_RESET_i_2 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of TXUSERRDY_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of gttxreset_i_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_4\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of pll_reset_asserted_i_2 : label is "soft_lutpair94";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of reset_time_out_i_3 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \time_out_2ms_i_3__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of time_out_500us_i_2 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of time_out_500us_i_3 : label is "soft_lutpair82";
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_2 : label is "soft_lutpair82";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4\ : label is "soft_lutpair86";
begin
  PLL0_RESET_reg_0 <= \^pll0_reset_reg_0\;
  data_in <= \^data_in\;
  gt0_txuserrdy_t <= \^gt0_txuserrdy_t\;
  mmcm_reset <= \^mmcm_reset\;
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA22222AAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I2 => tx_state(2),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(1),
      I5 => \FSM_sequential_tx_state[1]_i_2_n_0\,
      O => \tx_state__0\(0)
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
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0320"
    )
        port map (
      I0 => \FSM_sequential_tx_state[1]_i_2_n_0\,
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(1),
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_tlock_max_reg_n_0,
      I2 => mmcm_lock_reclocked,
      I3 => tx_state(2),
      O => \FSM_sequential_tx_state[1]_i_2_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0555100000551000"
    )
        port map (
      I0 => tx_state(3),
      I1 => time_out_2ms_reg_n_0,
      I2 => tx_state(1),
      I3 => tx_state(0),
      I4 => tx_state(2),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => tx_state(3),
      I1 => time_out_wait_bypass_s3,
      I2 => \FSM_sequential_tx_state[3]_i_6_n_0\,
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
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FFFFFFF7F"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => time_out_500us_reg_n_0,
      I5 => reset_time_out,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => refclk_stable_reg_n_0,
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
      D => \tx_state__0\(0),
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
      INIT => X"37FFFFFF37000000"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => refclk_stable_reg_n_0,
      I2 => gt0_pll0refclklost_out,
      I3 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I4 => PLL0_RESET_i_2_n_0,
      I5 => \^pll0_reset_reg_0\,
      O => PLL0_RESET_i_1_n_0
    );
PLL0_RESET_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => PLL0_RESET_i_2_n_0
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
      INIT => X"FFEF0080"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
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
      I2 => txn,
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
      INIT => X"37"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => refclk_stable_reg_n_0,
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
      INIT => X"FFEF"
    )
        port map (
      I0 => refclk_stable_count_reg(1),
      I1 => refclk_stable_count_reg(20),
      I2 => refclk_stable_count_reg(6),
      I3 => refclk_stable_count_reg(3),
      O => \refclk_stable_count[0]_i_10_n_0\
    );
\refclk_stable_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => refclk_stable_count_reg(8),
      I1 => refclk_stable_count_reg(9),
      I2 => refclk_stable_count_reg(10),
      I3 => refclk_stable_count_reg(17),
      O => \refclk_stable_count[0]_i_11_n_0\
    );
\refclk_stable_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      I1 => refclk_stable_count_reg(21),
      I2 => refclk_stable_count_reg(18),
      I3 => refclk_stable_count_reg(16),
      I4 => \refclk_stable_count[0]_i_8_n_0\,
      O => \refclk_stable_count[0]_i_3_n_0\
    );
\refclk_stable_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(22),
      I1 => refclk_stable_count_reg(5),
      I2 => refclk_stable_count_reg(27),
      I3 => refclk_stable_count_reg(24),
      I4 => \refclk_stable_count[0]_i_9_n_0\,
      O => \refclk_stable_count[0]_i_4_n_0\
    );
\refclk_stable_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => refclk_stable_count_reg(15),
      I1 => refclk_stable_count_reg(29),
      I2 => refclk_stable_count_reg(2),
      I3 => refclk_stable_count_reg(4),
      I4 => \refclk_stable_count[0]_i_10_n_0\,
      O => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => refclk_stable_count_reg(31),
      I1 => refclk_stable_count_reg(11),
      I2 => refclk_stable_count_reg(30),
      I3 => refclk_stable_count_reg(19),
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
      INIT => X"FFDF"
    )
        port map (
      I0 => refclk_stable_count_reg(13),
      I1 => refclk_stable_count_reg(28),
      I2 => refclk_stable_count_reg(7),
      I3 => refclk_stable_count_reg(14),
      O => \refclk_stable_count[0]_i_8_n_0\
    );
\refclk_stable_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(23),
      I1 => refclk_stable_count_reg(25),
      I2 => refclk_stable_count_reg(12),
      I3 => refclk_stable_count_reg(26),
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
reset_time_out_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      O => reset_time_out_i_3_n_0
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
sync_PLL0LOCK: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_7
     port map (
      E(0) => sync_PLL0LOCK_n_0,
      \FSM_sequential_tx_state_reg[0]\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      \FSM_sequential_tx_state_reg[0]_0\ => time_tlock_max_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_1\ => \FSM_sequential_tx_state[3]_i_7_n_0\,
      \FSM_sequential_tx_state_reg[0]_2\ => time_out_500us_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_3\ => time_out_2ms_reg_n_0,
      Q(3 downto 0) => tx_state(3 downto 0),
      gt0_pll0lock_out => gt0_pll0lock_out,
      independent_clock_bufg => independent_clock_bufg,
      init_wait_done_reg => sync_PLL0LOCK_n_1,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => init_wait_done_reg_n_0,
      reset_time_out_reg_0 => reset_time_out_i_3_n_0,
      txresetdone_s3 => txresetdone_s3
    );
sync_TXRESETDONE: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_8
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_9
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_10
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      data_sync_reg6_0 => data_sync_reg1
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_11
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_12
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
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000E00"
    )
        port map (
      I0 => \time_out_2ms_i_3__0_n_0\,
      I1 => time_out_counter_reg(14),
      I2 => time_out_2ms_i_4_n_0,
      I3 => time_out_2ms_i_5_n_0,
      I4 => \time_out_2ms_i_6__0_n_0\,
      I5 => time_out_500us_i_3_n_0,
      O => time_out_2ms
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => \time_out_2ms_i_3__0_n_0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(10),
      O => time_out_2ms_i_4_n_0
    );
time_out_2ms_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(0),
      O => time_out_2ms_i_5_n_0
    );
\time_out_2ms_i_6__0\: unisim.vcomponents.LUT6
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
      O => \time_out_2ms_i_6__0_n_0\
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
      I2 => time_tlock_max_i_3_n_0,
      I3 => time_tlock_max_i_5_n_0,
      I4 => time_out_500us_i_3_n_0,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4FFFFF"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(15),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(8),
      O => time_out_500us_i_3_n_0
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
      INIT => X"00000000AAAAAABA"
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
      INIT => X"FE"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(6),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(18),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(14),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(11),
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
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
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
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
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
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
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
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
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
      INIT => X"0222"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      I3 => tx_state(1),
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
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(0),
      Q => wait_time_cnt_reg(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => wait_time_cnt_reg(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(2),
      Q => wait_time_cnt_reg(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(3),
      Q => wait_time_cnt_reg(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(4),
      Q => wait_time_cnt_reg(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(5),
      Q => wait_time_cnt_reg(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
  port (
    GTRXRESET : out STD_LOGIC;
    \FSM_onehot_state_reg[5]_0\ : out STD_LOGIC;
    DRPDI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_state_reg[7]_0\ : out STD_LOGIC;
    DRPADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \original_rd_data_reg[0]_0\ : in STD_LOGIC;
    gt0_gtrxreset_gt_d1 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq is
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
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair118";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "drp_rd:10000000,wait_rd_data:01000000,wr_16:00100000,wait_wr_done1:00010000,wait_pmareset:00001000,wr_20:00000100,wait_wr_done2:00000001,idle:00000010";
  attribute SOFT_HLUTNM of drp_op_done_o_i_1 : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of gtpe2_i_i_1 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of gtpe2_i_i_10 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of gtpe2_i_i_11 : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of gtpe2_i_i_12 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of gtpe2_i_i_13 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of gtpe2_i_i_14 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of gtpe2_i_i_15 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of gtpe2_i_i_16 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of gtpe2_i_i_17 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of gtpe2_i_i_18 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of gtpe2_i_i_19 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of gtpe2_i_i_2 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_20 : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of gtpe2_i_i_4 : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of gtpe2_i_i_5 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of gtpe2_i_i_6 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of gtpe2_i_i_7 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of gtpe2_i_i_8 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of gtpe2_i_i_9 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \rd_data[10]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rd_data[11]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[13]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rd_data[14]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[15]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rd_data[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \rd_data[2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rd_data[3]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rd_data[4]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rd_data[5]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rd_data[6]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rd_data[7]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rd_data[8]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rd_data[9]_i_1\ : label is "soft_lutpair111";
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
sync_gtrxreset_in: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_4
     port map (
      CLK => CLK,
      gt0_gtrxreset_gt_d1 => gt0_gtrxreset_gt_d1,
      reset_out => gtrxreset_in_sync
    );
sync_rst_sync: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_5
     port map (
      CLK => CLK,
      reset_out => rst_sync,
      reset_sync5_0 => reset_sync5
    );
sync_rxpmaresetdone: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_6
     port map (
      CLK => CLK,
      data_in => data_in,
      data_out => rxpmaresetdone_sync
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
CfYWbKwylvtPqUOzF7uqmK4zs44bz2fdwvpuFLioaHj10Bf6wfz/J6ASNAQkNdzDWKNKpdQVU4js
IClenzy1Gg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
CebXybeWb7usVEwvfGGymgkIrvocUle6sj7yT4zEIm4i9uFyh5SaKwhbhgaGQtOTqohXiToS/HWM
ynFvwnrcMSqdNKeH+XTRlujIA0Ur6VKF7Loe/oNp1b7W64pIDqzI77KY5cHbD6/LUNYHhRhvUyrj
A4zdcMalFYRO8xf+eMA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
u8Q4xIAl+5IQ9LDuPIySUfr+FIAHc3eKWriUMXp2gqpexe2Z62NVfZ6DaIM2aqOTdUbtxTDdWx/r
N6cDE6tB09U4MNuQVpg1LEdmVV/xCvY8plQLPAAGlJJZxN0NeUGrg8UeKgAJM+3UG7oqO3MvPYK2
uEu2XXmKyazbrQFwn4o/Pl1UxWNZ27JWgop7B4FUJ7hnrj4bW0c2rdPL/IA/VeQXe1s0zaCBIFML
iVNxBJimH4+h6uDV33h94bxRWSrwOsTlPLvqFS9IoMeIdYOltcw4WOCF+1NDRRBRSutmgA6w6Zy3
/NwY/HhqUBn4J8PPB+NMAadhztbvmmB+hEXt5w==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Kr3foWuyUzAupd1E7iPi9zkwXkstPmWJWD5y8jxXUVfPbli5ElqScq6V7RUg0ucGB+bMkVy72KkO
4SeTSOOf/ym3a5YrxLjz4hUhYe6QzevP4YGOPnn3xx4PMCtxfeFhvrWf41nqfZI2A5km5njYzbRz
myDkobHiUKDj+k/p33AmOQNwc+nufedrdbd+P43EHF3M5Tu0HUtb6xpzDiK6LJloJr9Vl7k79WzH
7P+G0LKXsGNd+zgC4XU9lyymxVprAjHGqqCpNbmEiI675sEyMbSoCEmrWbLe2OHOjH5/bI/PIZpA
fshbwTarI0jXCu3OniTZDPE2B0OWvGkWYv2A5g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
RZ207B06H8GMroXA2sXNxFwurKOqO55VpY16rb2pS4Tr9HrogLWOGcyHRZqG87dS73fhLQ3uQnp/
z+MuAv97WN/bJ2O+8P3Emoh4VuDcKKbOKTmK822UgT5QmUWYQC0fQz3FUiOAqIx2hEnUAlbWPLpS
BxeuGSnBSGSzS7yiWHE=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
asuW5DHy+IbvHkMjfKhvedLnbuvn9AXk03V9JOZXaPKPv81cZQx/d8X1OROFqrUgs4HrYeqmU06t
DVxGtCJmMCxokzose4gcvq9E5GDYqZFvlhpM5eUJDDn5AdhhYyZvhmNBMsl20ooXUX+5XCn2nj2g
LsW5WhaPqAyHMTAb3OgxkQiVZqTcPBmPW4cpxlvy77JMjv8aQ9XKDOAa/gcPswwvZyCr6nIcfUNm
zs1WwDgTP/76Eyyb107vEkjefib52fliAdGzA4pjZTQWV1bDQOIbpAkEsmdgLw3QnCjTwyKlS6US
1/hHaaU13HIvUDEK+pnM+L1ZO2vFR/xwVNuu3w==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
m4lOpjqNlpNhypci9v6ztgXPp8EbVc+wvYWbTc4Da9NqT8uGt0RMFRVdpf7bv/0OZaYMf/f/b6TX
UptCdcrkVZTuVU73QxEFO6D7J/+WcjCg+5/bsvmfi65CxgbzRHQVppl5aLqmLuxW0QU8JkGQEsSN
SQvVG+5kWTqsrkwEoL1Jo+D3UPzb6zU2Fv3NF2nVHp9JypchR5bg2hfGIj9F7cjGBMJqXoiUJopF
YfXjaLc7jl80GwCBLcNqjIoZFqHdR78ckgT2C3YDYcBGy86MwJJq5flQSFUDgbE05HA3FKxzTveL
kdNGVCMqqB0yytu5EnoNcVRZDXhmDen7jTCkQw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OMUi83PSiPalEEiSBiHudEmuQIjQvRZqjQJt6OrYQuPTqxvFanRpm9SDo2z8ueGd6qZK2JiYREEO
5+PJm7Ab8y3F5Ed7H5BR+ZGOwYUlXsWRfV9VhhRymHelQW0bf3UDouo7uViOTsp7ew+BPOjV8hVk
4bYKYiX3d5CUUM/qMF7fyIudHuaiMSPz+1fpIUPH5KiTGmPrvV6HnvyUaB2PIgkE8ddo92BLsQ74
zsy6kx5dbbdBhKuXAlRM4B+x8Vj4+64RiE+kFeAxCPvJ1oW3LDr/GhoGEzyshuaVxjHHtomuL3YT
O2GevzXICki4aNLWfTJJn8gKhdgK4ow4ygRxbQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
f4h6vwxLmnvTtsJbdz+fBsfuhR907dusy+EfYSc63f0nY1lD1kEABbKHjGPgxj+4kJxSdJyGjonn
ZbDVMjzFOKen5Q+uU8lnqyzXNUBN9HGiUMLZ2uNK3PPpwv4583hfjeI4VtXw4e/vj3vo12GjSEbS
uTcnLDsCLLfEVhZ8rNECunv/m5BaqTvsQoSDYzzUxVruIEiTLwbt588Y0vxfSpDlvxxYAtPh2aDz
S1TmU9j1pCZGi0jn4tAtRR0Cqk7gZrJbSAFvOkZ8UTl2EFD0U+2rJwSJkhCsECZZQh8X398eMmae
ngTlE3qOYCN7cgGEn9rwWs3pJ1HSHIOJJ2FJiA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71184)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    rxn_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxn_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxn_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxn_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
    txn_0 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_gtrxreset_gt_d1 : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT is
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
      RXCHARISCOMMA(1 downto 0) => rxn_3(1 downto 0),
      RXCHARISK(3 downto 2) => NLW_gtpe2_i_RXCHARISK_UNCONNECTED(3 downto 2),
      RXCHARISK(1 downto 0) => rxn_4(1 downto 0),
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
      RXDATA(15 downto 0) => rxn_2(15 downto 0),
      RXDATAVALID(1 downto 0) => NLW_gtpe2_i_RXDATAVALID_UNCONNECTED(1 downto 0),
      RXDDIEN => '0',
      RXDFEXYDEN => '0',
      RXDISPERR(3 downto 2) => NLW_gtpe2_i_RXDISPERR_UNCONNECTED(3 downto 2),
      RXDISPERR(1 downto 0) => rxn_5(1 downto 0),
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
      RXNOTINTABLE(1 downto 0) => rxn_6(1 downto 0),
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
      RXRESETDONE => rxn_0,
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
      RXUSRCLK => txn_0,
      RXUSRCLK2 => txn_0,
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
      TXCHARDISPMODE(1 downto 0) => txn_1(1 downto 0),
      TXCHARDISPVAL(3 downto 2) => B"00",
      TXCHARDISPVAL(1 downto 0) => txn_2(1 downto 0),
      TXCHARISK(3 downto 2) => B"00",
      TXCHARISK(1 downto 0) => txn_3(1 downto 0),
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
      TXRESETDONE => rxn_1,
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
      TXUSRCLK => txn_0,
      TXUSRCLK2 => txn_0
    );
gtrxreset_seq_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gtwizard_gtrxreset_seq
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
      data_in => gtpe2_i_n_28,
      gt0_gtrxreset_gt_d1 => gt0_gtrxreset_gt_d1,
      \original_rd_data_reg[0]_0\ => gtpe2_i_n_0,
      reset_sync5 => reset_sync5
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
CfYWbKwylvtPqUOzF7uqmK4zs44bz2fdwvpuFLioaHj10Bf6wfz/J6ASNAQkNdzDWKNKpdQVU4js
IClenzy1Gg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
CebXybeWb7usVEwvfGGymgkIrvocUle6sj7yT4zEIm4i9uFyh5SaKwhbhgaGQtOTqohXiToS/HWM
ynFvwnrcMSqdNKeH+XTRlujIA0Ur6VKF7Loe/oNp1b7W64pIDqzI77KY5cHbD6/LUNYHhRhvUyrj
A4zdcMalFYRO8xf+eMA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
u8Q4xIAl+5IQ9LDuPIySUfr+FIAHc3eKWriUMXp2gqpexe2Z62NVfZ6DaIM2aqOTdUbtxTDdWx/r
N6cDE6tB09U4MNuQVpg1LEdmVV/xCvY8plQLPAAGlJJZxN0NeUGrg8UeKgAJM+3UG7oqO3MvPYK2
uEu2XXmKyazbrQFwn4o/Pl1UxWNZ27JWgop7B4FUJ7hnrj4bW0c2rdPL/IA/VeQXe1s0zaCBIFML
iVNxBJimH4+h6uDV33h94bxRWSrwOsTlPLvqFS9IoMeIdYOltcw4WOCF+1NDRRBRSutmgA6w6Zy3
/NwY/HhqUBn4J8PPB+NMAadhztbvmmB+hEXt5w==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Kr3foWuyUzAupd1E7iPi9zkwXkstPmWJWD5y8jxXUVfPbli5ElqScq6V7RUg0ucGB+bMkVy72KkO
4SeTSOOf/ym3a5YrxLjz4hUhYe6QzevP4YGOPnn3xx4PMCtxfeFhvrWf41nqfZI2A5km5njYzbRz
myDkobHiUKDj+k/p33AmOQNwc+nufedrdbd+P43EHF3M5Tu0HUtb6xpzDiK6LJloJr9Vl7k79WzH
7P+G0LKXsGNd+zgC4XU9lyymxVprAjHGqqCpNbmEiI675sEyMbSoCEmrWbLe2OHOjH5/bI/PIZpA
fshbwTarI0jXCu3OniTZDPE2B0OWvGkWYv2A5g==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
RZ207B06H8GMroXA2sXNxFwurKOqO55VpY16rb2pS4Tr9HrogLWOGcyHRZqG87dS73fhLQ3uQnp/
z+MuAv97WN/bJ2O+8P3Emoh4VuDcKKbOKTmK822UgT5QmUWYQC0fQz3FUiOAqIx2hEnUAlbWPLpS
BxeuGSnBSGSzS7yiWHE=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
asuW5DHy+IbvHkMjfKhvedLnbuvn9AXk03V9JOZXaPKPv81cZQx/d8X1OROFqrUgs4HrYeqmU06t
DVxGtCJmMCxokzose4gcvq9E5GDYqZFvlhpM5eUJDDn5AdhhYyZvhmNBMsl20ooXUX+5XCn2nj2g
LsW5WhaPqAyHMTAb3OgxkQiVZqTcPBmPW4cpxlvy77JMjv8aQ9XKDOAa/gcPswwvZyCr6nIcfUNm
zs1WwDgTP/76Eyyb107vEkjefib52fliAdGzA4pjZTQWV1bDQOIbpAkEsmdgLw3QnCjTwyKlS6US
1/hHaaU13HIvUDEK+pnM+L1ZO2vFR/xwVNuu3w==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
m4lOpjqNlpNhypci9v6ztgXPp8EbVc+wvYWbTc4Da9NqT8uGt0RMFRVdpf7bv/0OZaYMf/f/b6TX
UptCdcrkVZTuVU73QxEFO6D7J/+WcjCg+5/bsvmfi65CxgbzRHQVppl5aLqmLuxW0QU8JkGQEsSN
SQvVG+5kWTqsrkwEoL1Jo+D3UPzb6zU2Fv3NF2nVHp9JypchR5bg2hfGIj9F7cjGBMJqXoiUJopF
YfXjaLc7jl80GwCBLcNqjIoZFqHdR78ckgT2C3YDYcBGy86MwJJq5flQSFUDgbE05HA3FKxzTveL
kdNGVCMqqB0yytu5EnoNcVRZDXhmDen7jTCkQw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OMUi83PSiPalEEiSBiHudEmuQIjQvRZqjQJt6OrYQuPTqxvFanRpm9SDo2z8ueGd6qZK2JiYREEO
5+PJm7Ab8y3F5Ed7H5BR+ZGOwYUlXsWRfV9VhhRymHelQW0bf3UDouo7uViOTsp7ew+BPOjV8hVk
4bYKYiX3d5CUUM/qMF7fyIudHuaiMSPz+1fpIUPH5KiTGmPrvV6HnvyUaB2PIgkE8ddo92BLsQ74
zsy6kx5dbbdBhKuXAlRM4B+x8Vj4+64RiE+kFeAxCPvJ1oW3LDr/GhoGEzyshuaVxjHHtomuL3YT
O2GevzXICki4aNLWfTJJn8gKhdgK4ow4ygRxbQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
f4h6vwxLmnvTtsJbdz+fBsfuhR907dusy+EfYSc63f0nY1lD1kEABbKHjGPgxj+4kJxSdJyGjonn
ZbDVMjzFOKen5Q+uU8lnqyzXNUBN9HGiUMLZ2uNK3PPpwv4583hfjeI4VtXw4e/vj3vo12GjSEbS
uTcnLDsCLLfEVhZ8rNECunv/m5BaqTvsQoSDYzzUxVruIEiTLwbt588Y0vxfSpDlvxxYAtPh2aDz
S1TmU9j1pCZGi0jn4tAtRR0Cqk7gZrJbSAFvOkZ8UTl2EFD0U+2rJwSJkhCsECZZQh8X398eMmae
ngTlE3qOYCN7cgGEn9rwWs3pJ1HSHIOJJ2FJiA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17872)
`protect data_block
AWGpxi78IzytavbG+7BzFuAJQkop8xgXbpOlZoL2Cnz6E7Hu6ebhcIFpqUYtZAZ9pcsJ9avIRmLw
++FwpUxDc7Ab+rLyadd9zb0bMQ2qAy7d9ZUtx4y7c4V0ETHBDP66IP2CIfGqhQ5Cbqf6aNXRRJ5q
YNqIhlODnX2p5gfBhcCec2Kmf4l9RnKjYiFTxLO/sml+xNz7VZ3v2ru9eckeJxm5k/vmQg/1yJM6
eMOhadKToFuV/tCSZRw2GqlrG3MUnW2s2u3MZGVj8+WtzQQopGdln5/r7xb6gt/NsKMMqInggRDo
GWpqkzaer1xQWrubk2nIsxOBi8xelzFhDOmrUp5iU0hLl0TGrAkyh+E6SMbjl9aG1lDF1FLi5dof
elP9S/IwSM1Qo6Yjx3Olj5iIwJdITlwIt1PkjT2DXumMKf4I0s/nqP9LZ8s0uEZekQ/E3dd569Ev
z1zZa3JkvDUz1nKqN4BBNgv3wzuGxyVgZF8DQZnAaroQpUoqWaWebtukuRx4Hca2WLHusa5BvHrj
tq71g02MgXDYgPgTLsbc10YPQntldhtRK/U7yD1/ifExvm47MCH/gCvJR3MPv81TLD44wZ6hbKkU
obAKaXD2tHhdHt8jk2cW/WCHqPCECbxu8h0EkeX3gMR7kEG4Co3txo/3ZUIb1B4XlPLeyNjWxRKI
3ZZ/INjv0edFscZ/75Yui7cbPfpb4iXkInJu7FI/mwOY00XKSCwOqFfKO3Sx8XMsRm2NDiAAYM+A
wfEJs4+O9M96xLGM9MRH44iiKan7pizO4CQlf1Jcp3umAh7W4AKq1kwZJmdfKlXo4O6JDxwS/C7h
FS4Mubm6MkSsLWA2q7NNYFIEf510mgeMz71hhUH5sV+i8ltbyzUOFFYQw1PR4bY6lcB2+poYuzLQ
yYSy0EL3dp17d1KBagcyj/aOVAU41nEQInNNkks4IFI/Vkc0F+5QnF9M5rx9AiZAXQIBfo/0iTQJ
p8Lrw/l5dcg/N4/wNa1qtoxghwKoiBkiYhXLRPYwmNIY6mzGhI2lSNUY4SWEvp9YP7jIke+Kxzn5
AO1ARbnvcXlDbm6bgbcoV+7bQZHKflwN9MzFNdREr02LE7w99efayZg3uc94IKPQk01/biHgWjDd
DnXho99pvd1h0zvjzIxQbQZxR8TqmXvKV4zITeJAT2XPTod0pAV11RlF3wHhtz4ie+8Zv/b8nPV0
PeGOOp0aurkSG26XAAJRGzCJisTiHd3wLARmCedWrJ4bYnZzvT5+2k/Ipk1QJDWdI20J2Ed6JkLY
By/0hSFaFENzBgb5+kwhNDEvFcZ8tH8tI6Uau1jLUG5j24TgFcODyax2zldNoMC2VIWFeJ7LCWss
TC5/WAisFgveM0A7mnkLdHNhHpm/Ujd4cUXWUD+NSrCgsCTo/NDgatERU01A61OH3rONTmw2vmuv
ny67Ytv1F6RnMoDmVB2LLz0PnY+QO2PO8+bxtmdtr070/lh/u8IzEm7UnTU0c1QJj70cH5pvq9N3
kAa0LgUY7VXpo7Npz2Beu5U/DAczHTuZBkwf9Uc4+vqY+67I2Lhh4Hnh99FhlmZTVzKLlnPSWfB1
m4hakk0lKOoSoPd8Pe0M5iNAykOyQNGFeF1siMGkoC90kFP30y1AsTm30/pWwUDZeBkBctRaE0wX
4HFN2L6iKiTkm4KHqgES5fZNqeZa/9wlxICs/Q78eKNyrTjxIYobwOGC/QqdJsD4MG0yp+7RAS5X
jtljACdKKTKkdaCKTvLliysyD6fMlhEEmgQUiP2LqW8Hh5NrPmWH3twuYwV+sZn1vb1Apc1o0E4Q
ZUrX4P8CQPU8hADnxrmm4Nec5jzXFvbr4O8ira1qHXDr3S0BP+DXvZ+1EOP7feLrQYiqwYNtB2gW
D56DFBUbKHPjWeBhiM6g+qtYO4mM9bJxWfXfTASXQZz8q3FULYIRKEq5niZJv7v3VxXt8LJNpcPd
V7JM3b6KqpzgD6sUiVua/wZ1GGRMpadbWNS/pmMUgjrptMfNwLDxftwfFeUVN6AntBigzOXlLR5A
wuPScmrlLu71WMw8hlYEJnGE9hBtPuqEM0QyGZ0RdrBMZe0xaytr2IlYAzbAfxN0j2znI2+6iwH2
k4qQ5ueO/Yw4QHYLHYnAuAiM1c7E0lINfz3En6TvpjORysq05Xl2X/MjqIL0yWpzHXZoAAtzT5Bt
hGWlCXJ/GY8mjOZu6jxPo3xG5tX/j2Mc8z/sEmNkWtDAEoOMPvtQ77rK+G0gVPicHCWgDtc6YokA
zZ9My0RHUYqvh3cTxRS5hmDzuE9Fubfju+0D2Oc0AgwAtX2d35VN/KIOKLVvTYPkW7Khj/+GLeGK
CHLH2sHjIkKeepVgNqw6jLfK3aRhEe/GIekPAWTShDfRgy8yaJDFX7CcsaC8I+HQAuxMXlUK1aVm
dh49mlL1LrEM87vtRxnoofmSVg9QnCESS1Y/qq/oIA/fPq069E+buPwDxb/Aea4ctZcPpGeZm7LK
ax1lkMplpOXhNSZAevrKpMQ4mvDjdag3XFgBA4uMspG8sFIhez1bxiE7kq0G29+hnk4Xdfok1skg
6NMTFnwM+OLsdLK8w6Dy+Pz6WlYlJ/DP2g1ZZjvvxpuD/4sHT631xZAc7Uy1GNTGDGI5dud4FkGS
guY9PA0k6/FDnSfhpsloQNkvWMHe3ncJhV7lHqaNnrAabgRYRw4NE/7MyYpgHXHtVUcIBzTkfgU9
QKAHDEV4SnAqBurrq/nZyJptSZGZJa2M8+vtqi6fLps9AK//oybEu6Wj+T8DanqNZQdzJDmZISxF
z4BGfWGADMMMwnPdgWFoEshlz0TrVRpCvYNhN99bg1C4VrFwzgyxQt1px5HP7YjoYy/3Fvp/fIKM
3prtkC8usSqFIVmmctk6L/Uofkun8VAPQ2sw1oT6E9Rnh8soyTChbz8a8bSeDIoMJXUz/gti9iEe
4tqbfzQdr7b8LmtLftpEr6Yt6QSjipjVZSKNisQakWA6fM381OmBTMxGO2XiKNN37RMEQ8DlCbp3
2pUlQ20IDLg3BrtRdDykKSxizpaMVSBLfJDZGmiSBqK8fF3jnB+MXIaGDHGH5AaGuwVnNNWNL0AW
oS+p67TousEXUHDRZN5wB+Ldoteg8W1JryGgm9PmCDMAF0+eVWLWfhN0AIskKP1J1t5hfHqulDr2
jJpwLDsx2MA7YIpz2OO4stIobG6TGH5416QVH1gFPiVR8r+K4ElGaJ09jBLSh/5uFtgS411m+zG1
Id/S3xmIEujcCr9odVcPMPsumWEyWQTkMYTob2HrX3jUTxL7w0BoBfiLPy7/R/hZwkOEd0+gC5/8
BVKeh1Qh044pUvRVxGlZ5l+oKQy8rH5nnXi1uH1pnrPZVF2WFbHPfWAW8o0E8v9X4nu3MqYmaxg8
9ctCDo2iFPhLiyAfwPodmWk1zdN89SFxSL0eNJ2kkq8lGtGPsmajxijo5r7PuQD57EFNuvyba2n5
NH1VM4PDpS8gwy3YdHAx9m8JNw/a7Zy+oCWklqNGrCMROyR3SVCzgOWBGaCXJsT8xLNDLGh2zgkz
34FtDfLP9jivcLznzUCKqro6kR7ffWkNs/JgQefqHPplhXvsjdRiTvPNtgMd7rvFPqxdLPm4+31s
KDsfsPLNcSBL+ZKso0CiKcOBLEtzzhbBk9vl/Rxv6QX6yzU4gAooM7yjlZn/bwCE04CrZCpS+eIf
HyblRSVRb+QlQlNF+DlfGdom6FrsPTNWwb9c7k9HFoNLsDNPhE+In8txex+I2jOarcEm6U18Kzqc
A0dZxORjg1FJH0XQ7OSGM2No4sOULuD+tpQj2CyJx5PIzfnrKD0hF3pJ84kbysCDT7IEa/Fpbs3T
VqTWoPeaZ7632jABtaVqEnQk7jkVYRj1FyGl969rXqjkZMWtzpmFLarLTZwMYeWh9YNAC6nbAIny
2rK3ekuxF7JRQiZ6VZMOPwSC1YCSJULWwzqrp79JmC9t1I+1vzdhDXGMlNOKSJQUainX7pxgLdyC
Jy+9c9gAFAqrWv7pcq+Q1rYk7NovHufSFDkw8MeLDhiqnZ/khSGMa2TV9rcj8Tr12io4d6QSEA6c
W5LK72Yu7hsFmbCEL/WtXSYp8LBO+Q1TV2c0VPbl51o2w8qT0ek2+INlxAqOJxwI3LuY3LoJo8i0
WSJiIBBMHc6seOyQHYbyGRro5nnA11CFUE9LD4heU54num0d1HQVmvWJ+/hxElLElcFyYw9clL8H
lPNeqHpVL2XIPq18Jw8x03ey63UYKGerz7yi7dRD0KlxkB0EIGVE1/0K5i2mzCBM0LWN3JCnwtLD
TmD0BmPH+De7Wi+MBzKJNTgxh/1MWG9R+Cr9cYI3L8HJ+43sfZBQIXVHoqtCbUlQgrn2TZdUfI7y
NCWeoG/ZFBbvlD0wwLHKcHHNozq1otrJLDNlbTnNhjrDc6AhGLf8FPxq5dkTPNh5JTMyJ0Hwa+/J
LW58p+dFTiSJ5Kn+MqUSY0kHYZ/OPtSeWfvWoEXO1pOo9nbolDMLKY6VvKNMqWEOyYnz6MY0PVqJ
3q/asNllO4DhH+xrnfSUpApxlsR2UnX3EfNfvdW80+vUF8UepkJyGVNTd/ShKKPaBHmqHEn1CKJB
YwvM3Oe3S8c0zdgwJsih5Ngfg7nnMbpdb4Ze2IgB5pYV3AilwAtv7MCsalQWV4sxehCn3pulupaH
rGoniKFFkK/09Y+toInwWni3OG8yS4BXZw/EQkfv8kTR2RiZpuh9xNKtVwnKi4dq6+fREQhK/ek8
xlCndYmyXqhK/eeyq9cP+xF2eqPxkZYgZuj+nUAW8010MWv9NAgCNrLffFuqAQ2CGUW57VHE8D4N
9EGqL+TMXRkVtqqD3Wc03/KiCucuVhnq1xkm7gN5cdmZLzJSVrJ9uEdcDks6ZXZWJwWO9ZMTJeKO
mL2QsU1NDpMv6KcbGBbcOnTVgYy6sNI6YVMDA5ZoxmvG7iU6tUTjTrBrQZou6KDfP3mFcBaklEVM
kJJQJNcbxRpk1In/nuI5DcXQAvQYNODQveZswCYx2oYyQUDIaymsT34R3dhV/1CL1hfoiiMk5BQj
X6hpYqUrmz43cyT/WwYyvACRaNk3joKzN52tGB6YF3gXRscPUKkgcYUKf/ep2yGGzr/RSG/39QvA
nwm6/lb/9Q8xvnGX72BzcPh2hnQJdgUcBbibB7E6P+/IjtNBEfjZUI8vkMiqe5balh4raXUBHu2j
D73ZlTCwXYuSlw4TfQX+2PIlTR3vG1kIcB46AQst7hcGrqF7TwDhYMA0YT3jgAS/NiVhJ84//XXd
rAGrYmMH8zANBIVeS4YUXHy08HmJB8IRiAbGjE9GUaS9E9DCs4E3pV4OlBrTXm+X9xLWn5LZHEYZ
+YXBNv3g5e+og/PT1k17093uvVZ4Wbq/VBJ8AaJcwnP+bH+GjPw53peiE97UMk/4tsta23BmqZiH
XgOpjSiiIavfK8aqbr77nOx3EYltKMKmdUTc/hJ1rHYVr+1A6iqNdL8DEhA33S2bt1bume+IKkDL
izXYMn/2an355b45Il78EcVhayeYx8piFJlTkMgxGoD8oz4GowpJgU8lluj5Tu1AAGlTH9tIVQPG
HJaV4mqi3VKF5AWaBkRueqGzAcd/fyi08P2VySBtY8MsHyeyAUTf065L/EvtB2CPtQc93XXSU+fn
yqcBQK5Fh5wxLzt3USB7VBr9hwzgfkZQAAY9G4m0BPZdr/CQvOru2QJx1bDqX8hq7NLO4EM0mmOY
tkkN4OBivDACKmncYYHanXa8KGNOM7M5fysIv/JYqecI4+dCJNx3mz9SzkPZqc1LPrz2xHgQGJCp
nzYE1V5j1W/SywPQ0p/K9/9Zx78aPsECoD1AXC8c1YWOZ2ha0qARJW31Gnib8SIJDjZxktcsyKtK
q6K4CCw3raU5cCmz5xH0bjDsv8b1DBG/kTqhZyleuh6fMMl0FKEgMB164r/6fv7PWCHKOrr1h8CV
E+4s4qu4uqH9Yk/ijJAKVDMKqK2mnrJkTQ15W99ez8rf2GKDDvE5hXQAO13fBdVUr2XYOdvuhm7D
+Y1e3sWFzpWIXLy0V+iU5Id+Jmf2ITAu1Bbf2srMpBMi6nIqw1UZ1bDaggNr3idAEn3TgEhrilLu
7nuKIEJxZC/+3Mop+vkXlobgXWR1y7efeo12sB4k9NW/zhAEgh7L35l9ig6I3KyURCThH0iOWZhu
cQ7nXTeJFTTv0biXnFeRl6SDCNpQcc1zpQ2uOrK+Yp/G04VO8UiQ6qXyIn6RIvurhsgfEMTzXdgf
+0QTbzUANJ95DRuqrUSdEUaDJmSKabI7nUgeP8C1tRXWdHUzQ/CQBdfFmYFHbVDssCp/ytbrkwmb
3abK0tpeG731UZwU6sI03Whuw7N5/XCUTohvFKgc9KxLBEmzJ6kXnFWGxq0uN+RrQ3QRfqqjlgft
RuWESqKN2N0ptrXZuh7B5gRBKl50elU+ldrft+J/hiIUBC19Udon2URe7+rOcg6OBXkYps+akJij
e62+CTZAFtjC3VexK0E/YCPkBRMdNgVsHqvfZEgrf504ksMcaz9EdPqEbED4RXLFCeJa17/L4EXG
FmfRCHwbukNYH8Oj3SM+eBnHDpFjaHaMceHp9Thhp3NgP6Xry6z8J1WB7GsxH9HAmZF1CQh/Oxut
hcL8S4aKV8G1MDSau65EGswiSOKqxyVIs2MXBdvPW7UMvA3fZlpnKPQmmDD8pSp+hccK4G37DQL/
6xpIA/RdDbkUV+0YYnpFJHNHpWGSFhYZuzHteNRLx9WaiKArJe0v0qBg2joXw/nA0jSefkociF7R
RRpHw1V3jntKgCmYobhS0JzdosMtStYe5HVMA7WopjgZDq+DmEFMTvsjn8H3SCesXYT7VZ1R3++S
og5MUBHo76VaQ2AbFuNn7hS1VYbZeUbdkHE/Am5MBF9b8Di4Yv89TrFSdlRvGJXNNTX/XljoxXhz
4PrK0CfpOV8Yp69s6MMvdpW5fqENHoJ0udhDMFvpWrWSL+k+aGb2OK+hjFQnanJGkhPtHFwX8uzG
vPJZ+Rg27w3Hxj9Yjgb+I3kk50m5NWTmjjkCZ1x95QcPG1sAB/ZDpjQHjGsmicg2B5gwl2cVh5EC
JvarPCTWj1DKTP9HYwJT09KnyVpBgnnEABFIfMI6Le50fgMPYu6P/Q8Gs7yzo/KrL6Xpa/cuEy1B
6Y61cgkILHVChT/f35V5Gahz9a3s3SjC02VP19a7BQxnQTRb1upYOIJjHvrd8PPT4mWJxl5vsiD+
oDKWInCEX/qzpKvbZd9BONVo8HRpqGfoxVKPUoDHWFAdWml+StmWcRbayqwJpZJmaKXDcCUkZ95Z
BTQfLCjqHZINECbYc8x484b4ECwX/PMJmOGB+y287F3flu9M2hpzm2IMeq28HdZRW9LQgDXEiV1n
djaUEIEbHdET0Fhf+UCnAJOd41bnsnfunkDHPj6m9x2+VH2tvFO7ZW7/e9Jp3ETyqXqra4swuYw0
zqmRvULXnUtuWJQe3e6JsMNUmjZxFX875bPHvqAeXuLaLfTQVOioiMHf5LVyP2fu/7zYni+RZj7o
diRp+jhtP/Brw7gfFYf/taiIDenj3mZoaOQMjKoWIfchszb+QTRCmTonidIH1snuQhVHijaDfWz0
m2iKh2ZnAqcaPUVLg3vsn2XTm8O6dtnmDTPJ5I0W/v0ZFlGjnnRdPmU1gV/eputjO4xuDAylbisN
FwH7rJ+sw28sSU/s9sM3CTDHBxg6fxaKXQN0CJD0Kk8ILRNl78YGyFeczqGagjAXv+PNfoYsNTsF
sH7Amv2gyFMx+TD6DSaXSeBY1RRw+1R6xVpF2GgcVv+AKH0ra1RM2E4wmZcc008KbcDFX01WJvgH
a6nbxKsCflOWV/9sgGTI7SbMYtjMYxqky+a9ZUsIZTToZ2J7dA7h+ZNFVqPCeoemF2i+jPVAxko0
TGS+DOcEycNpPw/lmoU8AsDTxf3BOWpkCgaoRNj0HCyi50q82T3jzgL7i8G2XzCq/qnAjRwshGdF
TtUjFwna0oQzVnLyfu1UhPPyExdHktMd+lVK3CbHYbkyP/yYstJ6HUQCpZ2bSX8ls8gGgtX9b9Vd
YxNp22dbW2tL3jwbQygbWoLnoFsl2y+4TnDaZ9ONNTUNW+EI4vKCpAwgY6wiWAWyqUmDXV5uhmqc
pgfT0zJfQzHJ05BBv02xmBzv/aoxmxIu/SR/aAEzFFLhI1zjc3IBtg5moydJjh5b/gplmbTnOeek
Co5WTN2NygWqm0n4J6wGFF7WpJPKRvep73ue+YOnwsl0EZZMk0tTMjCbOs8w1DDpjMCcVQLD4Mrn
pDO585jxSs4GMO4o/abA9Y7wBK05BMrKg+iCXOiA/Dw/ARe9IKduQlJdwwGe5gQPybw17qtgL1yi
9Il3pAz89j6dNqEcNta1MFSHx7mQW0zkaqcrQ49V+aqaVQC/AV5ySoruaE0JXnAWOEMtMrGOG0De
al2NVgow/+oXThRlbjIoRMzLXkxSIvaQUFnpnumta4TK/QpnC0DlCtfOXhNou3AOHSiXG7Lvu9mj
IeSjSW7DAcXGfnhP2pDbGPc/DVUXK1g7mAcg5WAgqovc9ROmJfIx24oEXRSbUbzryupWxROSw6I6
C7BjnwXBV8hVAMt7B5DFDwMNqXabdS51kemyJqEKSxMVaB0ecnkYoj241r5iSNhOUuKOwkJNxXvH
rlI3nqephi3JpOGlNKyyFzLXTiTzqFloC6B0VdjAMFGErhnII5cTf5s1qCqCKr4jQuu8amfxFr31
4gn6YwuBT7aEshilqGF37bWXY58EglXDb6X9WPT4diJHa3vKHWOn8jJH630m1y/Y77EKQPtYWj+6
uYMAnu22yZ5PS58FWfZNY5Slasq35sROvL3boCfOR0KBbY4klM8B91z/DUNFSYoH5orLZqrEbDi7
D65vrTbRWjQULQMICJNJiWJn9siV3QTwapT20yacD7FihBqnSwJbebDQrSiK0E34lWT/oQVk6Z+5
swd9ZB8oicHN6udn0t4X3MUKH/sUsUk8ImxFjZxyedMRRDdyt9TrUjzA1ZUpk2J2FDUtTlziaqJG
/WGvTfh9WujPOJfEg94poNHleNRt0HudTGIA/Sulqw7lsiBF07xNdmYxkmWxJqirirhq0YOZvhph
/H4KSs0pAZjybSL0aUV9ikxeKOQBi9/AVsvBVkpFtYVBbMr6aON1CPnQU9wLajVBQpZcCR/YHnHQ
o+ki0k344w+f1MhLiZLVz2lq5rcgym+NYpSCYj816KdU1Hg78P4qO11PtadEeg/7gr/2Obhisreq
iAM1zFYuJv6q+UNV/uShdZBL911QsaDhPPWEfKKCo91oiiGw8NhlquHdlSjUxqKhREsiSxMcfbZq
16fEpL4RTUpP7kRLrFXov6/Ggw4PNW4pENvYfQ7voukyDiOf5uupWoGZ6hD2YX/2TvY75s3pQuNo
WehFrI7bEugaw63Rb3zKVbEnXkePkBCw3QYWoVxXChdEvl1HqWowgugkZIQni+vmC9pRknnMGWp6
K34LAGkLaDGDZxSjbt98VWJm6ob4YbYGksdeGzcFz8QKWq0nZVM2+FCiVnp/OYMc5VGeipL+fVp2
+hcCqaqChJPcl0S0XVKCQn+a3PBAAr+PgTfMs08V/mRCftap8O40eIAzDI1MSdbsn2+LntEUatZC
2+4+2FxnE1xsfObDSQAAYSiK13MLGMJGtJwGJCNGgjcAphk+KCMhmzGid5ZPkywC9tTkeDr8kKRW
MiB8kDAVxZtW7npUkZXNLIJOXeYLLoYR7AVGKT9qrVNGRKJ1Qa9MITWKm13+JKEW27ikS3vG0eIR
3DFtlBBUs7u/jMf82VbkzyvzPg6ga2MuCcwfotDfsZA/tpYDFTsEh8U8+Y/I2q8e1RLzGlsbJyoX
zHyhkI/6u8n+uRkKp+lOLPgRR+AqRo8LQ6d6TlxcUJO6K/W/4M00CR6V71q49v0DI1OrAAAjnZJk
St+iTp8RYc5k5zr0RbZj2RWg9i2cB6axtoxoTVmQzqefwFUO0t8cl3svA7Lxua2yWCoOokC2BiEL
myU0bitX/FlqsdY4iksRRHbZymSwMeCqv4k189jMwNd6ZH0FU3xs1UJV6I9hCB+grY2QXUCFa5nJ
9zxAd2glq/nN7qiX/e7NGJBqtBl/siylI0WrKTXcpL9B1EjI2hjxDEpQgibjdvZd3pRMYiYKoIBg
dpfq6EXpHgg5trYzm06oQztVf8P323LjAEsGvvMtp0OwKg/40KwhOLyLYSN0uyONiZAeoHBkoikd
ERkzRe+onfY+cDLm5nD/l5d3lMr8r3GghQK3QVHqq4IFozLetAcNAvDUNaP57lOdupSrukRmBd/a
6KpVmzi8XTQ+uZHeYxkdv6RgC7kP7ImJBj3TugjKm/R3kBc/MWDPzQk044hodzjH8HjSYVSxPsbJ
vO+Im9awo4U4FGc8/CrjRaL/PmCx5Xu+kMPKF+wEQ7aZRtbJez5hs+b1gLZPXkmJ4C2mfqEM39eS
oTJXDIcH6VcmDfT/UjlHGwgiysnNDqqz6p1z3QxJWQnXyF+cVCZLmshmNCgSIlA+K3uYLvcaxm4h
ebRBmmBBXNp6m0UlfV7i4BmhIg6sb4f4N376QgA9Rn9eBnedmSiOeK+sYwKGC0wTdvjTqB1OmjxG
cenyRhtVyp7ZsS5izJoDjznh85L7c08ZUxPozNd1UHKKyGY8Qt2KSz955GD0fvPH+RveXI/KuxEm
UicSIJC8jakgs9IAfp73z09W7ZtXhNosVGTiLm/YbcMXOTfgnP4v8F+dtcQUHYnkzlZlzNlvz/Kl
U35AvWbOsSo2M5SXbJrsppJv7j20BTHXxgEUURR6vNX36Q50x6VI0Rg3+FwaSykUVGxXaZsHowJ4
6YWhsr/4fpIkWecL6jcKVGKB6iG8ZbveJdQ38jY2AgdFHhmGdWfKTz+Dv1TPOvHoon3Av0kOhxQW
GFdU9x2d3ZyqO2eEjgSdVFwURxtJaXN9b6mc+/G2AF2ICwMpqEWFuBPrjDOFBudXlZtKJhii6Dy7
lBLuUoedsCHwODLumbAQp/KsdWgtuT59ly8not7Pa6wCNxaAF2sZh3gvB6WqyjCJQa4wKpjuvJgk
SFzOjl2WIrruUFgmEwQ85xOFJsDXDociosguo79s9sefV4kBi+t3b58a02uYfvgJWBp9p7xhWxil
3jkFhAo1KA4ZhcV+kjldF6iWHrF0/p+Qa/VM6qgAA1d7u0wwhn7TSqY6I96YQT6gAxtfxkGQrfTt
4ZO6/rER2taRNUW1I7zBbvrSK3SPY3TGE9Mei3DrZTBE7BTwI37rLuIsvX7PBoSycwfXbCUuJNB5
2yoLb6Sc40j/D8yC88YPJiptKHHo6Nof7UMUkCggoRTYZHSuGogAhACcqJcI/svC98vHjm5F0MLu
Aj4trLrK7g8wZNbB+lnxytFjTTsmktYLFCkb1gnKTI1oZrogLXC7yLJwoYl5BNZ5+AtUkVDnB6+P
TXEOQVJ3CDjGynY4cirNE9vhkPUnRyPRDc5OLP5Rk5T5XiOu3hTs+8CA3hVbv5fe5gxCnZBYJRur
rTwJof53U5vLnZBe6STzDXU15IPcP0p6EtpguvRt8G2XjSz51Aur5OP8+TQ0b1piTM6JvMst/LUy
Ocl1KMQVfI6Ju9GIhRIz1Q9oJJGLWw628N3NUe3vdrs+u7Z3O6FvHogIfbC0XBuyT7KzlCZN/n/8
nN/bVeC4J8DozLQx0DLaW53xGdKZg1On2OHXAep/Mc7IIRqcOHOJ7vGpjIWdOKhVxzSoyPx+1dFw
xZPdhDTeKKNu+lmyczzrMbOj9A7K7C2ermWxDWBFRHdtRqjW3p0kLVxdXNlC+x0QyCKSywDAMdCf
2eUvJvYcsz956jFkGKhLyRL2k0Q3geGAR0yrzk7D3tw+LtLHy7wljJbI28rP5jL5e02eAGD/0y6i
FmDjzquX4AQ9Ito33h3Ezg3gPOFSQ8xoLIo1UG7w+u0Pv0//kJ/EETKJR+3xWPM5/kQLOJPZ/ESv
W9CcA92CcwAen/cIsw57sMZAf4nGa2e+HFTsFaUVR3pdomiPJlx6yj+QQ0v1sL0yhPTjUFIjnKa/
ncbaP4FXzuuetE5pm+IV9rc2rQXnSLheuBYsN04Q4V+iMVck+0+9jYDJvBELnzLFJtF1fc80eKgI
k+hWi+lxB1rpDtim3HQKbi1sg2BtBKeA9B28T2cIUsWgcxjdzCKwfVx6JpS7VAv4Vny8waOYPApI
yQXeGPpIUv1Nj/TkygSnUnk5+q4JQrddZWPqBAIIeB5d/366x2VgoeYNtqyAJQkeIFGKoWHCuEXn
i3GdsllwvXalqQ9aKPRObXvhs83CYqrvZkikk9TTHluxzApY1ZSNLGOK/vzpwsVdkxusS4Vh+BOK
iL3hAlZyoBQsL/LoawJZ+ctaXNWR57TkvrXBC9U6Sx/9mwBwEOoj8nM8sYywsIKFVYEoDvwiSeh1
r/YEw2C5kCkTt7XJQIQ91zB5XzFtpX2AUB9bdye47cMmhZkjKlLS+qUcEU701ehZfeWNWfimlyLE
PD3XH8nbW02bquLqPcNPlWhjdGqzhDmECIX7imExLmqV8m9bqVsHm4H18nd8WLIWUg03PaOg4kjr
4JOXZVuZXebvgX+dbGRUTkxvB97XyeaYfrTwKavQQ/a9RRpRzKGdv+XtEth5aGgBBkbRD2lKRkCN
rKtfL7ga0S4awGStAZLottC8fMYnJjS8BU2USTJLzDQfJC23Lg3F457cE+LQ/vMP+AxWfbjuZuu0
bDQM9F8yrF3Ca3iNDocUVraSnx8Mmp1hJVGd1pzfGJs1OKWGc6DEkUDbOzZ6qRH3Lq+4ZZzbI5xU
loYb2cQ+g872XByskAuBKesEUUFsDt7ftpSRK6U7h9K1CW8U5I8xmFK6ndh84g+PNRICWuuxTESd
MNHTuTbC+EHhGTVfxqfA/nESdV3pvFPeier8FHoCu3xZKV9hTmwMU7GQLTp8GeivzIuYZFlKo2ef
R28GGzlBplRC2lNXoNSXDfRiyFNCWOfJv1Aol+LVGhngbEAUucIMFCfUomfwUp8N3rKOJkdse461
jAK103+N5kZ1B+im0PM8ura6uPPdYnXThKZUP0vCJxesOYwQiWYud/6IWb7HukuxVExRWhX2CMrZ
t9fC629oUJvWXq5KPneVaUn+9CC2yy6MY2/CG+IYd5jINb/18XRN5c1vESN0GPi1FMMvvH2qH4RO
qvLVMWavtFE3iceJlsTqOtozLNo5yF8Ss8v86mMqHC6aiIERrSw5rRgj/GpLPbBOKBmp8+iu5C3a
Jy9I4r+u8EDK8/4hIrSlA8/VTJh/F+FM8DvxWqAA8GPtt4okuEsoib89z7aukbnBCm83BCpeIH+N
KVSJboxu50dn1bL5Jf8KDdjmhOp2666G49167IYRgYd4dTE05PnebonCncWAFhZ4/JlosxTfdZ6u
8wkfESfxNdkIO+5jPMUc//pi9nazKyu3LUkcdu7S3NggX5/bkS7gJs8bjf9QPsAM3EO4UgXBAIXB
a6LscsXnP80q3IgOtEjRZOLeITemJUnaRZYM17A3Aat09HswHCdFc5e84ezUz8dzTxyqVJwYgIli
aGHuGY/QtQj23bzYq4iqMnFpEhxVK75KBmfphCM0ofWsgmqpSMW6fHfNJRlxyL5xeGAEMFfDwkHv
5Eg8TMvhjVvxNg4yApxrAg0IAQ24OInx70dSduPJAnfvWpMJTv+7BsT7aP1kt3YHpZ2mLT0vV4Pg
zRjoKh5zvTd9tLcGVi+qyQUgAbI4nKp8innU69ltY+h4YLUClVNVoeAbqUFnONSFAGpkmvg1jO2i
b0isDSlUgzE36dQSzGzu8JqVWPmRgdAhxnuD5xg1b8nzLmWl4dkesb1ixTQzDGqASljXXriNrLmb
5soDmMxqfvWD8RxDcKF71Zw9qlmzGPQ3/cS0JOR1Ecnd8gZwjJvSeokRp3N0FCsiLmws4b+xHBnn
KovUff3RNGBUza/hqNBxDiLIzUwwc4VYtneksvkU8G5E5FvveOO+quDfUI9VxsqIXVPler+MqZbz
H/0/W+2UJzVzowM2KNRevfUdU7Q64WX+gGXKojlHg3/K3nLkqoGRf4ym4IE0WUXALFOHRfu/qROx
fHS8uPkrwGkLjoWR6IwfiFuC2VnVBJJSh+FWlCKPbLFOwnjP/vET/QAu9mrSI70dpUhUsr28DUyy
3zi0d9Si0Zujc9u5xlNnARkpv4qNhMp4PHRvUcy39IvPcSKgM+dq8/LZxk5e3UYNfKFI1azwKoFe
UnNKAECS3RefYUBRemRLVZEq/Z57HGvaCBiWGgAQNyu90Nt8pHAhpAaSQtBiC9hjHFtevZsWvIQQ
IqtDp8133TkiEiEW3uMd96K2fFngSmnaHrcJnFIDW9Il8BpquAkFDWv9sKEOW+0eXZy9tEeyPc47
N/cbuTyDjbYkamLeuXmQ2BRjwA0RbnvHRIXn02EpgQqcCjPu8HC51klrVH+EX9cdh8EsDyRxvsIh
4TEpLKS2pXtKR01itHGrBCSxXgGpnm8uv17DT2VralREEMDB86jNsbriYU6oLDDCxS8aWsIV9vdu
TUnPJZpB/QirIGU7gFOZCLSvb0PQCDTps6nfQpjMKzr9doYAI3o4YDb6ml6FPFj5Mk3c2G57P54A
86hz2FxVlEnmnuyZF30eu30/3Nn1BUIGD0NhwJ5d2CpK3cB21QAtbzi0gcF69oG9rnE6hVXlc/WY
bw2Bd16WsZR6HhLplY+ASSwjFcQ6IDDqoDjxPbZbcg6Y+Ikt8Djwag2T/68crydyS69IQx2d0rXO
JGQMQ9xfbB1uHZspz0qbN8isiOVzhLRYS35fEFYvF1/CaU/de8ou6rAFtyXNQCMRUsqYbsL2dzNF
GNeBB5WjnRiDiXF8jq2uUdiXHpCemGncfzdVks18ogpqzqmZU3B+V1PgonMU+3YUostUaBjEcH6q
DKp9+g5xIjAoRAv1es22Pp+XN2GEHkU+kLRBCLkiKHuLyYTYtSdSmnBx5GYYAM22niiN9NA0v4U7
x9gah1uq19WmVajJZ3fhGNTHybeNbD3ezqphg9IPyVgJ8eqa/CKB7mcDZRnieoVdscK1Q1U/po7S
hXsa1vNw/XrWIKNHDgdK7Bt2WQuxZBxAcPMiPqzGYEEDRbUOmtRNi1rK2P/HQqAxX11N2Y+T4gcB
o1BiahZjh/Eutg9cjzpPS/d+EyjgT90/knlCCidy4+wXVxe3elCN3amD11I0TvZJSkCeqboYuKSg
GMYEzoQW69WocbPTuCGK7+uKyD/YU/AEJJwI8xv2AkXXDn6rcKKEQjr997w9KlBE9ujH4M2nvap8
xHeqEi7l/4dqytYynxStdr9W6HXK3kX8aRKcqGfOKt1J3b7td595OkKu48apCabmvrCwLRxDgiXz
lvgWq0cQ80ruhn9PtVC+a0IoRdW4UseVIoveWijnFA3n+C5MWGJfJOiWrjQ1N6uw918O6PgLTqPX
twcUGcCfCyaBSNFi+FA/tZhvQkkPPhyJ0EMH++zl4SNt8yAkVhXExg56CnPZzm0P/7K/C4+T9j5x
oTxmlRpYUflJm2LPjVUIEIU8Et3T4+zgpYDatQRVWMqtLy747q72UFh+2P7CV8BnVVJhKa2+0yjE
35Btw4sGfNHuNxg5qdEIB4OrdVbAPT1inqNeMgMBg2OTX7km0MdQmf+jjTVfpobVillFzKmP5h2Y
E/UWu+oA/CZfebyyktcHVp4nnzzTGDF3DuKjUQaNciXepkd3rfaCYF6m7nbtjcPZsxFh3ENOU/00
WfydXNo5S1CEYybI3T0AJSnGkcGUC1hUZ5voNRxeLUcKtZp/MsAnfD3n+XGOvfDRs3sQhTAjYKVx
r3x5Kyj4VXwjIXa9e8IZZsMVJdcHQ4c/m7C7QoStMKk23u4wKLZbgcOI0CshT3StAJuK327AE7+u
qLo4lyKscJS/PiXztFdD5uE7PA2DWOQuNoASBowg3bDOMlfRz2n02xqSrd5bimITL7EvYwXjnq4y
nAf9Rn+YpiPBK1rclItAa3MPWndY9NtRviWcQa65vW2u6p1il0GrB6wr8lmO8c1Ud7pZXGkBo/m7
xxVBH8V9W71/pfV3c9K4YbJy+iZG8RTSQFRb2GtcNYWiO0ACGyfsOqtMDRYIxvBzsr0dY8pPIMS4
NFo9zSzI3VNac029mv1yav3DzsqN6ru1TRJqVKKf38I/j5Pa/CQ/g/EFR084rf/o9x+eRhaM5isQ
hg53m38L50zLKNPMRPjomTLUf+vnY6MLqT4f3S6EdgOJNnJkttnIlC7bVlUOokwTt4wVXBMoF/r7
r+EEY8hYJTxCt8jP/dtNajwnd6jLQEZiM7MBLsiXrGe/fHKRjaj3FnT4oW3s4FbTokQv6ulT7mPt
/BVGP+Zl56nsp/1t7RYuz7IGdf+gFNx/KY5Kj/b2sPdsLBFdirukUwvEd+I961o1mB1TsI2TeyEu
CRRZnTeW/yYfuuhZPnpM1NnVD5KBFp0Y39VbYf5ku3Cn4tEd2i8+yPcWK4eUAbXuVvvE9AVp94vi
KvCbiOW+NGR5zNO98CkTJPizNFhafSLpX6AhCTT2FM1SU0SynSHKQa8uFUkgMY58ZlWFXGhfh/qH
5hRZzO6xgyLc1BHqbLqm8J5dpfohybi+t8iiEX7/q+uv1a31YOhqmVs8q1mzYj/08AOj3P6umLQm
fAZvvszqYIWW3QB7kojRPu8Gse+jWqQFhgrYkrm00MePlvoTBe3Ny8vykd61hhIAoKCU4NNnEgzE
FmrAL/S5xOwCHuJVOhjxkzMFLJ32OWVGz1Pwzp3r3UKA+jI2W2IePt+L/oCpAfYKvl13DVwVfFIw
+8MrBqDWewpBqb5ZlVp2FcpBd5eU0jjht8tTs+0cyskalZ8CeXurEu8XJQp0Hm3ZFYNqFf2wTOGt
uLtebHxBk8ACL2JD4kPgBabiiDPsS7hj15GLnGA3IrPqnoL4ooym5gfeAoZLIgiMN1wQSyLAzJ1K
nb7wBBiJCwqyjQbj4B7QEgNgFKdNv5rXL6unW2cDVlkQ9uIN/6POrt0TXV0KFJ+qhH+yEAP9G6+Q
9/OUMdzSESEK8EIRZDt/ZAW0cBtgGZbFm3+yC4tojXEhoyFr5tirAJF2zlt9Dg3uSyjnFukJQxsJ
ta36XZlB9Xm2i5N0XxeEGtgs2CDYRy5Zq4SJKqABhVS0XC8UBiso6P7yPHFG2qWlLgEWJp3iKI1j
fIj1kt1Dz4c8DTErFkz1pWWYslG1IDDyo3oBie3r+qfXqxjaN78uIL+aL279YBmRFSlwaXUClY4l
sWGlWEUBE+3d5w9Zc5uaqfLV765zicq7ydwiKXEw9LY0xAbvVoBd09FcRdrrotVKK03sfeCiEi3F
eYpSUOaYazTE6o4LuNQ4yItXvA/K9FPXjUl1aYSvTkSYqAJbx3NHvb+7zG1mpi7qJzYk3/em8H2M
/n5OF9cQwSwwrNzi3QSVomdtrjkfe226w7wKiDwZI4Y6BhNJbmgqgAHBQLYsPnPUIg+nRo5i0AdF
bmJ+rUo81+Hobgn0dvTdZsrNL4ngfkxafpMWoJ+eWAhnyWxJNpWyUvXrNv2tIfdQZLi821cXwfdm
PtHDA36clPo3T+S3o2n3Uyr3ktsr6lHw9t6MD6HtWlmlSVDfkAibebDxhPFh+OG6r8V+m7LwBxL+
G67mcIvLyIE3wcwyf/VISnCnngfc1YZWgneHlhWH2BEBPgYJrkZfc7fi9dXqLEY4DPLRfPOXuCqW
pOSRv9yAnZ5R8a/fJDIR76nXK82qknOXuyWHKsCvgDT/VHZjH6Z5aEf/XlZzY8lbGOv7RkeB+mId
3ThDF08UfFtj97uDAiRq8iNhEOQ5OGxIgXq4/vgxR40g6AkwDSLmUmJiqjNlvZ3Hqbo1BqX7vBMX
ecZL4P6QDqeq29XHgoNyDNmmXSD4XNAhV+YYlxRIsSUk40p+RRTcj3Mq4eUfvVsQGyXKwjN13eQ/
aDwQRwEKWWJEq+wd371ljfsV1viAqB/mDHYm+NJoB/buvsubFtRVHDPULHpk5+ZJzYEVGOm4oh6B
Zk0n9uha0V9qtYyyComqysgWGP3GZyz6pd6zE80X5otqYy8V0/90yamhSx3oqbtDIp+JIjxgPjge
GoFVu0O9zHServXjN8jh0OvWHuLKFRoYWjboLUwopX7FPrXAsmokapdF8E89+/YawAr2zfPNYd0W
wdN1RroeEWg49lcusS87r1UUqcsxnuk0V0oWNOLlUP53hbF/fMWJUaZLE5fdgjxZ9XCWJJ+hSc/x
wtc7hVHnG7O1LAhq0jocvUxMls89McWrBZbO6A3XMY1tM5P2g1GqhgqcNFJcTudcXVndkIqv0GYQ
xqOrkTjF+vTDXFOBOVQWnDMmHi+1eF9bmfwXGCYI6cD5xkvfWY4/OodSslMZjcwzsFr27dO5gPp1
c9uQEOIgtYUliI2lm5GdJaCjT6UKQ0K47mhycOs5KwbElGKU2XBNcmM001c3SriG4CeRLHd4gGnB
9PFto2OtvFD3NO6B4AGXzzPqsGyGE7QsSesyVm0+4Axyb2/ppDc7eawnMsI5b0IoE8NUPGcis/CE
uewyX1n04ltcHGczxnToUs6TCaO31BAxno8xKOANdZVmx4pb7UIPWApupgvtTO8yVjF16LDZQW3S
/5bw0jwBSPGm5SZ3uUUQx9pruSOkCSEiX5OlNNb/pTvMpu765nFyGuVjD9/MU8yrWrbRwyguKVAt
Aoc9qH7kzOj+ALtP0StE1ozGJRHC5xu2jx6OezKw63ep7UUm6eVYLjmMTO9q+2db+gYelZO0bXDt
L4GgNky83sS0o2jZZRl2O9yf0Q7d64Or5UrS1t3LcCeXawSPAAf/8poSDtLFoUuJd2CDefiTSwOe
YHQ6FPqNkSuRYWWx59wOtjOq3QHbdafWsLyjSChYAUXu6XwxlKoL4KSFoZ2PMymnwJnk4on2Ulq/
M1ey3soUFXB7Efc7TEdf0eOQVbhT7hQo7Wo4vr6ZROXWrMi49Vx0iisVHOn7hctYhAdS2hfYC2tl
dmrfqGpo0vh2N3It2ZT+Pzgn33arMskWdoha/CQNC3hgSdcCauLnBRcWEft4PPvCn18tK/cvo7Em
GmjSDQVlsW3vzmv/BlPsr299H31pYBPu4BQQCg8ssdR0AW1NVR0jnUBs6bZhC0zj356eWGZETBaQ
3rwWlYYBojVTkAvoYkRP6+NfJTT37IIW/UiW8ehkogZmBSHEJmN7bHnAMxBwJ1bVX22pCFJvcfc9
277T9gfIFAdmiIGjygun8KHnR9ovJDqhTa8GtQX3nbJvDliZw0pqXejnf2x7+ogiYnqLeF8Y8IQe
vBS82PvlUqBkv5xCeJUneGNf+4aUln4JKwYifw14RDWaNk0K9yARx1Anz9ORmk+QftblBIZWTuUm
gHCTsrxp5ZpOu8HHYL9ak7rPKEgGJ5vjAXwumeLxJ4e+HYb1BxPFiD4GwWuAIuo93P1mW+o8P0cg
rYGBm4GYfQJTD2opsKta0yGn8xH2lQ1NRALcnkKUdQsWCk6OohkVZwIzrehN3QMdtRM20fqpFV+t
P860GMR3k607U1CvZpUA0DM1RlKP0urJMq7S6/mDyWG603yn/UKH4sHV15Nxu270tdTBkJu23C6/
ZkkMjFe1rmKy7mMH6ozfoY/SOOwO0gtH80RNLcCQ1UssmoZCNh0EddiIDb2bNhotkZdE7lUe6gK1
CHFGo/lDJmtMi1XWTA6PO11HCdvo5DSvGP0XPevRliiKlM9c6LWIb0UmVuMJoKQJ7WMTDni///tg
IgbAzpA1Y7W1L8+aFngZJPHn+6uur7KWqY69+v6PqCSdYne9vp+NO7z7XkDsjy0IAl3isDmU47oZ
7hqjy2mX7CFbO3GqHzK/GCG0KjWLRE5pRobwfj+U+NEgHlTFc42CVkbRiFBoI+GMQVa3a1ndW3tB
HB7mZfNw6wWXpTbdTDWK4Y/tcSRtTpcTcDvWBwv8S+vlr11htIUe9h0IX2HN29d1n/6T/kDmlYCh
i3CM/zigJE7pP04e+8eaNmMauv7vTWRP+pyQPgaMEGKI7YAT355vX98+n4yr+Wkq84D/0Jxg844I
p+/gIzTWHSwBI7MNZUwHaH+JP1Cd+ju/b/ou9MjWUvdW/NiMTuSmGOI+lCfSp9hIba7IK31t8lPV
4OVXSW5VFvJFfuyopBCDY038NROb1hIyWgkKN62LQkEybRDhV4D5NuQ4FILS4Hwn2Ehwet4sU9JU
6N8/O/QvAqFbNUZ1R1FuWXQqcsDKCIQqXaCfIDXrLa6v2F2nNe87snMX4ye85OdlKb7mlrI2GR4z
RkxWR/WIA+L4Y9fO7Y8eUUpNSvevIIAQvzIOaGdEIFW6aM6ZXaCjYIhghG6WYPj95a5bazCUM4Xe
kZOywFWVf9iOeZ6MAxkBZPERE6XM69Jg1IeirlhHSl00R2HdFM52uGkcultCLLG5Eks8tB8/9DPR
uR56MiASUZFXmL+gvznMzKdZ09Mqg6Iolyr+Yby8JkgbGl8uEt4O4LSpbjtg7voTKX2KiagY1UkU
gk2XwnGrisBNR3HbTeg6dBCNWCRZ4F+1LizOQc8z37b78zUEX0IhRzLI+LowWZMEzdjuYAJ0fJfx
8bO+vGOkhr08g8TzCwJfZtMhi4bIytuEYJTQCiY0vgOG7qGQWCoTvaymfGecLWRj6PHKvOHIQX7F
TK2Ol2NT2hLzdciZIoVCvESvKij+nLVUPwVZXtMe1A3oMJsDSsTuHZ0htqv9N5+58C9RBwrM4bHJ
ISUMK3JroBVKJHsjsoDZJO2Bh+wb7sBRq6+YI19+mMfwGkwCboEjaNRLTHfMgkEqwh9c/ESb37xK
xkJC9mXsFSfZCi/ZRi1UhRaAMrgfUAAzoWjqp4TacM7IBjl00ZXtN1JSxcVqfXhcfs4T2KJPlUys
LhnuT7DPW6UJ6pl32CZYz/FvLPP3lSa5iS3ToLsPk/5V/BPdAcfdw1szZFeorSPWr2zFa9VBJyOs
JLyv5mYIS0ql3eMCyD+AuLiTP0G3Wat43wVMEm7U1rCWhnEmmqjGHCAw74gNAuWzZaRSIYFTkcBz
EVPDgKs+a4P3fxyu2acNPDPHp2BYAo/SVUfoQD8x6fqc9j0vnvx25viBUgbL4i+0SHpi1rzVGZqc
jwZwGD1KjV+0Rv08uB7atECZDyWlv02+g9Phz5+1TGY6CQzk4e8Y2adVTQtmkTUR2Ii8zCdGZiz5
WbwuceIbkNnoEyD3sej7sAs16zPkfYK+IzZAG323eJuyZnRlaH172cbOstGRj/n4SFRBMIuI1z1g
iEOtBQ8hcX+iSBNUq2pQS6yQuhz0/D2Jqtz2fUY/U2A9nBTs+fWJ4eLmtQXTjjU+pzxQCPGghrsR
igtC96pt6OrJhfOZncRUaGCT5xavCaiP0vqbINNtsnVDtc5Jk9uIXE9ta1/b1EDq4jEgF8eMQPxJ
eV+GkxSzpWqp8xngzEtA1kHYYzmq0ciFANiF+MPUXb4A3vFsMcVtqEmSqbeKPooVTcH2hpyv2oFX
aDJG6dKf13FlE/GasJ0jbk8RdMexQLvNN379QjL2dDupru2+uxbk+nOlM+Mto2KT+IeTW/feXMin
iv1AauMlKe5tEWab0XyuqdGPaTVPCYWxzLN3UaCpoArW+QvN2RzOXo0McMzFqu3bGmzjQJdf7CM+
9IzE2+Pc8eZkoigC/3knWDLJyB2XuhmlNPSa149D6QRBv2iEfTj1rTIXHxcYiiarNZYY6UuBzcmD
e1UwZLCspL5/A9G4heVIgkS5xynG8HUUqREP84BYZ6KMFUSVCZ9suVCsE86fOVKM4V0epUSNtt/r
fhqhhYgb7XW/fy1o5SmC2VVB1EX1TNRXxmn6KMN5Cz4jHl9cINiOILQ3e17QWWNw90kPzMqRXcEr
CSI33gBPQfJVqN54BWmH20qBYB1aeboczvTDj+nxZ/LYh64qhnOt2KtkEFHgFJvsc9wnNAX6KXOe
Izo8fkinc2Or0NBuFXbPfQmgd1TZyj7ppq0I1EEPnTk+zbchXZyFTWjPbFvzoMmfGZnWJxTw6Krw
iSeBQNlM60h7R+DS4M40a45yM4AFm9lgcwD0x3DPMCtcWMg+ABAR4vAT7ScDmvmn7vhvfFkThbvK
OWEwATeFGak50mBm9tXfdTiRpNijc10Ypae3V+aQcS6KoE6QxjzTsFawO1OzsoIuAm5Ol8Ay+/aN
/D5Sog+AF0acc4Pr2kOHFjoXVe+1+LF3mCTC4Rfzg3PhQUrlMANK9HKdPpjoFthXnj3/QIBf6vSk
RmBNgguVGuWEYJVVwe/s/biwJdGorwIxRBj8nO+qb/ncz2r5WbRtdo7e/jAMNRt2KFqKJYi4XLQY
y/9S0x4x7Uw8LSgOeD5Ec9V15+3fL9l6RLPhN91LneZcTwKG+dVW9wZM7HHEjBEsqx2cpS328ddN
dB0KwN700U9MK4nr0ZMjZGN8jLSyO7iRuJzZCqVQX9iWvlT3OWdA6iVG7lCwlfQCG8Ag6R60eTIL
/leDr2mKwIPQhNw6Osvz1/rvTaYAxd+tTLfkJ7rKACPoR1+k1GJxVNOy77TnB6hIBckvc7kAaw1J
aqSHV5KmwEz3RUSPkaxbFxbhFxxO6K9KPfizf83jiYFjnNunvf+XMajVWyM79Fp3OAjivNYjR3EH
YTrIm4eDcx2p3RviU24i2NcoSoSC4PHR58T0Xn7DYUfLL3KHLbG7LZr/twLPL7uYS6r1Z7GBGHrS
Xbl7s4XrbXs48fzOgdCo0LOckFoXEa+RB/W7gx1LzyhgxKTjVTCy1q1F/rWAo41XCZrYmou4pFDZ
YPASE0dZiGw8LQztXnY9hb3kjPm4Oo06bWqqlZ3tW+vtCtlKb/vH7B2AQITIi2owdrDLSHkRtBrZ
7aQe1dgz9QoHUyohbEOhk+A89WKi2cJb9kh7htayHTsw2EKMnqpcJgDb/rYb0doKU2EORrHCm9Nf
cGxxkjlJx+LZm29J2jrtDz5CbLgVh/ac5M6aRplGYFDestb44AT8qFJ0bK5UnswShvgS1aOXu6BH
KFDFEPOASTvmK4uxtNjdg1vqfqQCS5HpiUoeSmngOk6mHUMb+XIxMYRglcpeLchAfjvWUX0/Oera
IJwJsjp5zlJ0aYfFnOqmf6uim8fu0unJ4sQ1XjQ1tekIO1x3Gxk+ze0I+AUg+aEs1BKEwJu0zg4s
6bidZGEnsjpo6i26LJC1UGeXmCEm18joopJ9419XtBQD3Jg95PjRlQCBFCE0axdu8+DEzbGzSpZh
tfbsNKrozwsCmfC2cJfeoJRvWmdSvrkvtYOrzQ2OVaWXUJUVJ81POP77ug4VvO6HmxgyEBeyIwQl
jxzPsO5JET7U49l2/SBuDkCsQ/E4WOss6JNQF2X9aSbiYxi3HHomdIXd9i3lsEUKqx9bDnVL6S5+
HaJvTRUsGJpVm6WrnbJV2pyp4c+ZiIWTraIYHJmFG5lvZciBnnEpE0eg2fcFXveqmIqOp0vh6yzb
sMst2CF+QLFi0mrDCYRBxjtj9UVUXg+DfxdibLtKaq0qxtLwmM6FRxiw7gmacLNsmDkSus2DCGLb
gHp/vZbQPn9BaZqvJovZdaVSGePoIsXGCNcUGt6qQDZhL6QmD/PtL9Bts+aiJGERmTwAON8msZPq
Ap0caB1Mt819py4f9T9UeFkyPgTG/Gk69Ez5LvV2qA==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    rxn_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxn_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxn_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxn_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
    txn_0 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_gtrxreset_gt_d1 : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt is
begin
gt0_GTWIZARD_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_GT
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gtrxreset_gt_d1 => gt0_gtrxreset_gt_d1,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => reset_sync5,
      rxn => rxn,
      rxn_0 => rxn_0,
      rxn_1 => rxn_1,
      rxn_2(15 downto 0) => rxn_2(15 downto 0),
      rxn_3(1 downto 0) => rxn_3(1 downto 0),
      rxn_4(1 downto 0) => rxn_4(1 downto 0),
      rxn_5(1 downto 0) => rxn_5(1 downto 0),
      rxn_6(1 downto 0) => rxn_6(1 downto 0),
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0 => txn_0,
      txn_1(1 downto 0) => txn_1(1 downto 0),
      txn_2(1 downto 0) => txn_2(1 downto 0),
      txn_3(1 downto 0) => txn_3(1 downto 0),
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxn_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxn_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
    data_sync_reg1 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg_0 : in STD_LOGIC;
    txn_3 : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init is
  signal gt0_gtrxreset_gt : STD_LOGIC;
  signal gt0_gtrxreset_gt_d1 : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal gt0_rx_cdrlocked : STD_LOGIC;
  signal gt0_rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_i_3_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_i_4_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_t : STD_LOGIC;
  signal gt0_txuserrdy_t : STD_LOGIC;
  signal gtwizard_i_n_3 : STD_LOGIC;
  signal gtwizard_i_n_5 : STD_LOGIC;
  signal \^reset_in\ : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter_reg[8]_i_1\ : label is 11;
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
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gt0_rx_cdrlocked,
      O => gt0_rx_cdrlock_counter
    );
\gt0_rx_cdrlock_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter_reg(0),
      O => \gt0_rx_cdrlock_counter[0]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_7\,
      Q => gt0_rx_cdrlock_counter_reg(0),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_4\,
      O(2) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_5\,
      O(1) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_6\,
      O(0) => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => gt0_rx_cdrlock_counter_reg(3 downto 1),
      S(0) => \gt0_rx_cdrlock_counter[0]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_5\,
      Q => gt0_rx_cdrlock_counter_reg(10),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_4\,
      Q => gt0_rx_cdrlock_counter_reg(11),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[12]_i_1_n_7\,
      Q => gt0_rx_cdrlock_counter_reg(12),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gt0_rx_cdrlock_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_gt0_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \gt0_rx_cdrlock_counter_reg[12]_i_1_n_6\,
      O(0) => \gt0_rx_cdrlock_counter_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => gt0_rx_cdrlock_counter_reg(13 downto 12)
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[12]_i_1_n_6\,
      Q => gt0_rx_cdrlock_counter_reg(13),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_6\,
      Q => gt0_rx_cdrlock_counter_reg(1),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_5\,
      Q => gt0_rx_cdrlock_counter_reg(2),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_4\,
      Q => gt0_rx_cdrlock_counter_reg(3),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_7\,
      Q => gt0_rx_cdrlock_counter_reg(4),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter_reg[0]_i_2_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_4\,
      O(2) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_5\,
      O(1) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_6\,
      O(0) => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => gt0_rx_cdrlock_counter_reg(7 downto 4)
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_6\,
      Q => gt0_rx_cdrlock_counter_reg(5),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_5\,
      Q => gt0_rx_cdrlock_counter_reg(6),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_4\,
      Q => gt0_rx_cdrlock_counter_reg(7),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_7\,
      Q => gt0_rx_cdrlock_counter_reg(8),
      R => gt0_gtrxreset_gt_d1
    );
\gt0_rx_cdrlock_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter_reg[4]_i_1_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_4\,
      O(2) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_5\,
      O(1) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_6\,
      O(0) => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => gt0_rx_cdrlock_counter_reg(11 downto 8)
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => gt0_rx_cdrlock_counter,
      D => \gt0_rx_cdrlock_counter_reg[8]_i_1_n_6\,
      Q => gt0_rx_cdrlock_counter_reg(9),
      R => gt0_gtrxreset_gt_d1
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => gt0_rx_cdrlocked_reg_n_0,
      I1 => gt0_rx_cdrlocked,
      I2 => gt0_gtrxreset_gt_d1,
      O => gt0_rx_cdrlocked_i_1_n_0
    );
gt0_rx_cdrlocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => gt0_rx_cdrlocked_i_3_n_0,
      I1 => gt0_rx_cdrlocked_i_4_n_0,
      I2 => gt0_rx_cdrlock_counter_reg(8),
      I3 => gt0_rx_cdrlock_counter_reg(10),
      I4 => gt0_rx_cdrlock_counter_reg(13),
      I5 => gt0_rx_cdrlock_counter_reg(5),
      O => gt0_rx_cdrlocked
    );
gt0_rx_cdrlocked_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter_reg(7),
      I1 => gt0_rx_cdrlock_counter_reg(12),
      I2 => gt0_rx_cdrlock_counter_reg(1),
      I3 => gt0_rx_cdrlock_counter_reg(3),
      I4 => gt0_rx_cdrlock_counter_reg(0),
      I5 => gt0_rx_cdrlock_counter_reg(9),
      O => gt0_rx_cdrlocked_i_3_n_0
    );
gt0_rx_cdrlocked_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter_reg(11),
      I1 => gt0_rx_cdrlock_counter_reg(2),
      I2 => gt0_rx_cdrlock_counter_reg(4),
      I3 => gt0_rx_cdrlock_counter_reg(6),
      O => gt0_rx_cdrlocked_i_4_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlocked_i_1_n_0,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => '0'
    );
gt0_rxresetfsm_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_RX_STARTUP_FSM
     port map (
      data_in => rx_fsm_reset_done_int_reg,
      data_out => data_out,
      data_sync_reg1 => gtwizard_i_n_3,
      data_sync_reg1_0 => data_sync_reg1_0,
      data_sync_reg6 => data_sync_reg1,
      gt0_gtrxreset_gt => gt0_gtrxreset_gt,
      gt0_gtrxreset_gt_d1_reg => gt0_gtrxreset_gt_d1_reg_0,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \out\(0),
      reset_time_out_reg_0 => gt0_rx_cdrlocked_reg_n_0
    );
gt0_txresetfsm_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_TX_STARTUP_FSM
     port map (
      PLL0_RESET_reg_0 => \^reset_in\,
      data_in => data_in,
      data_sync_reg1 => data_sync_reg1,
      data_sync_reg1_0 => gtwizard_i_n_5,
      data_sync_reg1_1 => data_sync_reg1_0,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      txn => txn_3
    );
gtwizard_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt
     port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_gtrxreset_gt_d1 => gt0_gtrxreset_gt_d1,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      reset => reset,
      reset_out => reset_out,
      reset_sync5 => \^reset_in\,
      rxn => rxn,
      rxn_0 => gtwizard_i_n_3,
      rxn_1 => gtwizard_i_n_5,
      rxn_2(15 downto 0) => rxn_0(15 downto 0),
      rxn_3(1 downto 0) => rxn_1(1 downto 0),
      rxn_4(1 downto 0) => rxn_2(1 downto 0),
      rxn_5(1 downto 0) => rxn_3(1 downto 0),
      rxn_6(1 downto 0) => rxn_4(1 downto 0),
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0 => data_sync_reg1,
      txn_1(1 downto 0) => txn_0(1 downto 0),
      txn_2(1 downto 0) => txn_1(1 downto 0),
      txn_3(1 downto 0) => txn_2(1 downto 0),
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxn_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxn_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxn_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
    data_sync_reg1 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txn_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txn_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gtrxreset_gt_d1_reg : in STD_LOGIC;
    txn_3 : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD is
begin
U0: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD_init
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
      data_sync_reg1_0 => data_sync_reg1_0,
      gt0_gtrxreset_gt_d1_reg_0 => gt0_gtrxreset_gt_d1_reg,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_in => PLL0_RESET_reg,
      reset_out => reset_out,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxn_0(15 downto 0) => rxn_0(15 downto 0),
      rxn_1(1 downto 0) => rxn_1(1 downto 0),
      rxn_2(1 downto 0) => rxn_2(1 downto 0),
      rxn_3(1 downto 0) => rxn_3(1 downto 0),
      rxn_4(1 downto 0) => rxn_4(1 downto 0),
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0(1 downto 0) => txn_0(1 downto 0),
      txn_1(1 downto 0) => txn_1(1 downto 0),
      txn_2(1 downto 0) => txn_2(1 downto 0),
      txn_3 => txn_3,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver is
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
    data_sync_reg1 : in STD_LOGIC;
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
    data_sync_reg1_0 : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC;
    \txdata_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver is
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
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair127";
begin
gtwizard_inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_GTWIZARD
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
      data_sync_reg1_0 => data_sync_reg1_0,
      gt0_gtrxreset_gt_d1_reg => rxreset_int,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_out => encommaalign_int,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxn_0(15 downto 0) => rxdata_int(15 downto 0),
      rxn_1(1 downto 0) => rxchariscomma_int(1 downto 0),
      rxn_2(1 downto 0) => rxcharisk_int(1 downto 0),
      rxn_3(1 downto 0) => rxdisperr_int(1 downto 0),
      rxn_4(1 downto 0) => rxnotintable_int(1 downto 0),
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txn_0(1 downto 0) => txchardispmode_int(1 downto 0),
      txn_1(1 downto 0) => txchardispval_int(1 downto 0),
      txn_2(1 downto 0) => txcharisk_int(1 downto 0),
      txn_3 => txreset_int,
      txoutclk => txoutclk,
      txp => txp
    );
reclock_encommaalign: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync
     port map (
      enablealign => enablealign,
      reset_out => encommaalign_int,
      userclk2 => userclk2
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_1
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reclock_txreset: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_sync_2
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_reset_wtd_timer
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
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => rxchariscomma_int(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => rxcharisk_int(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => rxclkcorcnt_int(0),
      Q => rxclkcorcnt_reg(0),
      R => '0'
    );
\rxclkcorcnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => rxdisperr_int(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => rxnotintable_int(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
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
sync_block_data_valid: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_3
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
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_sync_reg1,
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
      C => data_sync_reg1,
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block is
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
    data_sync_reg1 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_pll0refclklost_out : in STD_LOGIC;
    gt0_pll0lock_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block is
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
gig_ethernet_pcs_pma_0_core: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_v16_2_2
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
sync_block_rx_reset_done: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block
     port map (
      data_in => transceiver_inst_n_13,
      data_out => rx_reset_done_i,
      userclk2 => userclk2
    );
sync_block_tx_reset_done: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_sync_block_0
     port map (
      data_in => transceiver_inst_n_12,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i,
      userclk2 => userclk2
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_transceiver
     port map (
      CLK => CLK,
      D(0) => txchardispmode,
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => mgt_tx_reset,
      data_in => transceiver_inst_n_12,
      data_sync_reg1 => data_sync_reg1,
      data_sync_reg1_0 => data_in,
      enablealign => enablealign,
      gt0_pll0lock_out => gt0_pll0lock_out,
      gt0_pll0outclk_out => gt0_pll0outclk_out,
      gt0_pll0outrefclk_out => gt0_pll0outrefclk_out,
      gt0_pll0refclklost_out => gt0_pll0refclklost_out,
      gt0_pll1outclk_out => gt0_pll1outclk_out,
      gt0_pll1outrefclk_out => gt0_pll1outrefclk_out,
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
entity gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support is
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
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support : entity is "yes";
end gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support;

architecture STRUCTURE of gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support is
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
core_clocking_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_clocking
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
core_gt_common_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_gt_common
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
core_gt_common_reset_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_common_reset
     port map (
      PLL0RESET => PLL0RESET,
      cpll_reset_i => cpll_reset_i,
      gt0_pll0reset_out => gt0_pll0reset_out,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\
    );
core_resets_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_resets
     port map (
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\,
      reset => reset
    );
pcs_pma_block_i: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_block
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
      data_sync_reg1 => \^userclk_out\,
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
  attribute x_core_info of gig_ethernet_pcs_pma_0 : entity is "gig_ethernet_pcs_pma_v16_2_2,Vivado 2020.2.2";
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
U0: entity work.gig_ethernet_pcs_pma_0_gig_ethernet_pcs_pma_0_support
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
