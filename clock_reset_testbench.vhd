-- testbench for the clock reset module startup
-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity clock_reset_testbench is
end clock_reset_testbench;

architecture clock_reset_testbench_arch of clock_reset_testbench is

component clock_reset
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
end component;

signal sysclk_p: std_logic := '1';
signal sysclk_n: std_logic := '0';
constant sysclk_period: time := 10.0ns;   -- 100 MHz
signal reset_n: std_logic := '0';
signal sreset: std_logic := '0';

begin

sysclk_p <= not sysclk_p after sysclk_period/2;
sysclk_n <= not sysclk_p;

process
begin
    wait for 200ns;
    reset_n <= '1';
    wait for 5us;

    reset_n <= '0';
    wait for 100ns;
    reset_n <= '1';

    wait for 5us;
    sreset <= '1';
    wait for 100ns;
    sreset <= '0';

    wait; 

end process;

dut: clock_reset
port map(
    sysclk_p => sysclk_p, sysclk_n => sysclk_n,
    reset_n => reset_n,
    sreset => sreset);


end clock_reset_testbench_arch;
