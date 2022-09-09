-- spi.vhd
-- SPI slave for DAPHNE
-- to the microcontroller this looks like a plain old 128x8 SPI EEPROM
-- some bits/bytes are R/O only, others are R/W
-- byte write sequence (24 bits): X"02" & ('0' & addr(6..0)) & data(7..0)
-- byte read sequence (24 bits):  X"03" & ('0' & addr(6..0)) & dummy(7..0)
-- 
-- Note! This is SPI MODE 1. This means that:
-- Master and Slave sample the data lines on SCK FALLING EDGE

-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi is
generic(
    fw_ver: std_logic_vector(27 downto 0) := X"1234567", -- git commit number is passed in from tcl
    hw_ver: std_logic_vector(7 downto 0)  := X"01"
); 
port(
    sclk: in std_logic; -- 100MHz constant
    srst: in std_logic;

    spi_sck: in std_logic; -- keep it below 10 MHz
    spi_csn: in std_logic; -- active low select
    spi_si:  in std_logic; 
    spi_so:  out std_logic;   

  );
end spi;

architecture spi_arch of spi is







begin










end spi_arch;
