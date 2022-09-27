-- endpoint.vhd
-- timing endpoint placeholder/dummy
-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity endpoint is
port(
    cdr_sfp_los: in std_logic; -- loss of signal
    cdr_sfp_abs: in std_logic; -- high if module is absent
    cdr_sfp_tx_dis: out std_logic; -- high to disable timing SFP TX
    cdr_sfp_tx_p, cdr_sfp_tx_n: out std_logic; -- send data upstream (optional)

    cdr_clk_p, cdr_clk_n: in std_logic; -- LVDS recovered clock 312MHz
    cdr_data_p, cdr_data_n: in std_logic; -- LVDS recovered serial data 
    cdr_los: in std_logic; -- loss of signal
    cdr_lol: in std_logic -- loss of lock
  );
end endpoint;

architecture endpoint_arch of endpoint is

signal cdr_clk, cdr_data, temp: std_logic;

begin

cdr_clk_inst: IBUFDS
generic map( DIFF_TERM => TRUE, IBUF_LOW_PWR => FALSE, IOSTANDARD => "LVDS_25" )
port map( I => cdr_clk_p, IB => cdr_clk_n, O  => cdr_clk );

cdr_data_inst: IBUFDS
generic map( DIFF_TERM => TRUE, IBUF_LOW_PWR => FALSE, IOSTANDARD => "LVDS_25" )
port map( I => cdr_data_p, IB => cdr_data_n, O  => cdr_data );

temp <= cdr_sfp_los or cdr_sfp_abs or cdr_los or cdr_lol or cdr_clk or cdr_data;

OBUFDS_inst: OBUFDS
generic map(IOSTANDARD=>"LVDS_25")
port map( I => temp, O => cdr_sfp_tx_p, OB => cdr_sfp_tx_n );

cdr_sfp_tx_dis <= '1'; -- don't send anything upstream

end endpoint_arch;
