-- daphne2_package.vhd
-- for the DAPHNE2 design
-- Jamieson Olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package daphne2_package is

    type array_5x9_type is array (4 downto 0) of std_logic_vector(8 downto 0);
    type array_8x6_type is array (7 downto 0) of std_logic_vector(5 downto 0);
    type array_8x14_type is array (7 downto 0) of std_logic_vector(13 downto 0);
    type array_10x14_type is array (9 downto 0) of std_logic_vector(13 downto 0);

    type array_5x8x14_type is array (4 downto 0) of array_8x14_type;


end package;

