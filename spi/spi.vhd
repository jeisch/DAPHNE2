-- spi.vhd
-- SPI slave for DAPHNE
-- to the microcontroller this looks like a plain old 128x8 SPI memory device
-- some bits/bytes are R/O only, others are R/W
-- byte write sequence (24 bits): X"02" & ('0' & addr(6..0)) & data(7..0)
-- byte read sequence (24 bits):  X"03" & ('0' & addr(6..0)) & dummy(7..0)
-- 
-- Note! This is SPI MODE 1. This means that:
-- Master and Slave sample the data lines on SPI CLOCK FALLING EDGE

-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi is
port(
    clock: in std_logic; -- system clock
    reset: in std_logic; -- system reset
    spi_clk: in std_logic; -- keep it below 10 MHz
    spi_csn: in std_logic; -- active low select
    spi_mosi: in std_logic; 
    spi_miso: out std_logic;
    spi_irq: out std_logic
  );
end spi;

architecture spi_arch of spi is

    signal test_reg: std_logic;

begin

    -- dummy logic

    spi_miso <= spi_mosi and test_reg;
    spi_irq <= spi_clk or spi_csn;

    process(clock)
    begin
        if rising_edge(clock) then
            if (reset='1') then
                test_reg <= '0';
            else
                test_reg <= not test_reg;
            end if;
        end if;
    end process;

end spi_arch;
