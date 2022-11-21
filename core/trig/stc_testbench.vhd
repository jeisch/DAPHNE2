-- testbench for the single self triggered core module STC
-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use STD.textio.all;
use ieee.std_logic_textio.all;

library unisim;
use unisim.vcomponents.all;

entity stc_testbench is
end stc_testbench;

architecture stc_testbench_arch of stc_testbench is

component stc is
generic(
    link_id:     std_logic_vector(5 downto 0) := "000000";
    chan_id:    std_logic_vector(5 downto 0) := "000000"
);
port(
    reset: in std_logic;

    slot_id: std_logic_vector(3 downto 0) := "0000";
    crate_id: std_logic_vector(9 downto 0) := "0000000000";
    detector_id: std_logic_vector(5 downto 0) := "000000";
    version_id: std_logic_vector(5 downto 0) := "100000";
    threshold: std_logic_vector(13 downto 0) := "00000000100000";

    aclk: in std_logic; -- AFE clock 62.500 MHz
    timestamp: in std_logic_vector(63 downto 0);
	afe_dat: in std_logic_vector(13 downto 0);

    fclk: in std_logic; -- transmit clock to FELIX 120.237 MHz 
    fifo_rden: in std_logic;
    fifo_ae: out std_logic;
    fifo_do: out std_logic_vector(31 downto 0);
    fifo_ko: out std_logic_vector( 3 downto 0)
  );
end component;

signal reset: std_logic := '1';
signal aclk: std_logic := '0';
signal timestamp: std_logic_vector(63 downto 0) := X"0000000000000000";
signal afe_dat: std_logic_vector(13 downto 0) := "00000001000000";
signal fclk: std_logic := '0';

begin

aclk <= not aclk after 8.000 ns; --  62.500 MHz
fclk <= not fclk after 4.158 ns; -- 120.237 MHz

reset <= '1', '0' after 96ns;

ts_proc: process 
begin 
    wait until falling_edge(aclk);
    timestamp <= std_logic_vector(unsigned(timestamp) + 1);
end process ts_proc;

pulse_proc: process 
begin 
    wait for 1000ns;
    wait until falling_edge(aclk);
    afe_dat <= "00000000000001";
    wait until falling_edge(aclk);
    afe_dat <= "00000000000010";
    wait until falling_edge(aclk);
    afe_dat <= "00000000000011";
    wait until falling_edge(aclk);
    afe_dat <= "00000000000100";
    wait until falling_edge(aclk);
    afe_dat <= "00011000000000";
    wait;
end process pulse_proc;

DUT: stc
generic map(
    link_id => "000000", 
    chan_id => "000000" )
port map(
    reset => reset,

    threshold => "00000000100000",
    slot_id => "0000",
    crate_id => "0000000000",
    detector_id => "000000",
    version_id => "100000",

    aclk => aclk,
    timestamp => timestamp,
	afe_dat => afe_dat,

    fclk => fclk,
    fifo_rden => '0'
);

end stc_testbench_arch;
