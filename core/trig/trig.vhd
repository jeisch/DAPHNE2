-- trig.vhd
-- a very simple trigger algorithm:
-- one sample above threshold followed by three consecutive samples below threshold

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trig is
port(
    clock: in std_logic;
    din: in std_logic_vector(13 downto 0);
    threshold: std_logic_vector(13 downto 0);
    triggered: out std_logic
);
end trig;

architecture trig_arch of trig is

    signal din0, din1, din2: std_logic_vector(13 downto 0) := "00000000000000";

begin

    trig_proc: process(clock)
    begin
        if rising_edge(clock) then
            din0 <= din;
            din1 <= din0;
            din2 <= din1;
        end if;
    end process trig_proc;

    triggered <= '1' when ( din2>threshold and din1<threshold and din0<threshold and din<threshold ) else '0';

end trig_arch;
