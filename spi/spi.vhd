-- spi.vhd
-- SPI slave for DAPHNE
-- shift in / shift out 8 bits at time; it is intended to transfer ascii characters
-- incoming bytes are written to the RESPONSE FIFO (2k bytes)
-- outgoing bytes are read from the COMMAND FIFO (2k bytes)
--
-- Assume STmicro SPI master has CPOL=0 and CPHA=0 which means:
-- SCLK low at idle
-- MOSI/MISO sampled on SCLK rising edge
-- MOSI/MISO changes on SCLK falling edge
-- SPI_CSN is active low
-- 
-- If the command FIFO is non-empty, drive SPI_IRQ high. Also, if the command FIFO is empty
-- and the master initiates a transfer, then send back idle byte 0x16.

-- jamieson olsen <jamieson@fnal.gov>

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Library UNISIM;
use UNISIM.vcomponents.all;
library UNIMACRO;
use unimacro.Vcomponents.all;

entity spi is
port(
    oeiclk: in std_logic;
    cmd_wren: in std_logic; -- command FIFO write enable
    cmd_data: in std_logic_vector(7 downto 0); -- command FIFO write data
    res_rden: in std_logic; -- response FIFO read enable
    res_data: out std_logic_vector(7 downto 0); -- response FIFO read data

    clock: in std_logic; -- system clock 100MHz
    reset: in std_logic; -- system reset

    spi_clk:  in std_logic; -- keep it below 10 MHz
    spi_csn:  in std_logic; -- active low select
    spi_mosi: in std_logic; 
    spi_miso: out std_logic;
    spi_irq:  out std_logic -- set if the slave has data in command FIFO
  );
end spi;

architecture spi_arch of spi is

    signal spi_clk_reg, spi_csn_reg, spi_mosi_reg: std_logic;
    signal spi_miso_reg, spi_irq_reg: std_logic;
    signal shift_reg: std_logic_vector(7 downto 0);
    signal bitcount_reg: std_logic_vector(2 downto 0);
    signal cmd_fifo_empty: std_logic;
    signal cmd_fifo_do: std_logic_vector(7 downto 0);
    signal cmd_fifo_rden: std_logic;
    signal res_fifo_wren: std_logic;
    signal res_fifo_do: std_logic_vector(7 downto 0);
    signal res_fifo_empty: std_logic;
    signal res_fifo_empty_reg: std_logic;

    type state_type is (rst, wait4start, rdfifo, loadsr, clkr, clkf, wrfifo, wait4end);
    signal state: state_type;

    signal probe0: std_logic_vector(5 downto 0);

    component ila_0
    port (
        clk : in std_logic;
        probe0 : in std_logic_vector(5 downto 0)
    );
    end component;

begin

-- register IO to SPI bus. 

ioreg_proc: process(clock)
begin
    if rising_edge(clock) then
        if (reset='1') then
            spi_clk_reg  <= '0';
            spi_csn_reg  <= '1';
            spi_mosi_reg <= '0';
        else
            spi_clk_reg  <= spi_clk;
            spi_csn_reg  <= spi_csn;
            spi_mosi_reg <= spi_mosi;
        end if;
    end if;
end process ioreg_proc;

spi_miso <= spi_miso_reg;

-- clock is 20x faster than SPI_CLK so we have lotsa cycles to do stuff while waiting for the next SPI bus transition.

-- SPI slave state machine operation:
--
-- 1. wait for spi_csn to go low
-- 2. check command FIFO. If empty then load 0x16 into shift register, else read a byte from command FIFO and load that into shift register.
-- 3. master moves 8 bits through shift register
-- 4. wait until spi_csn goes high
-- 5. if shift_reg==0x16 then do_nothing else write shift_reg into response FIFO
-- 6. goto 1

fsm_proc: process(clock)
begin
    if rising_edge(clock) then
        if (reset='1') then
            state <= rst;
            shift_reg <= X"00";
            spi_miso_reg <= '0';
        else

case state is 

when rst =>
    state <= wait4start;

when wait4start => -- wait for SPI_CSN to go now
    if (spi_csn_reg='0') then
        state <= rdfifo;
    else
        state <= wait4start;
    end if;

when rdfifo => -- read/check the command FIFO
    if (cmd_fifo_empty='1') then
        shift_reg <= X"16"; -- empty, send idle byte to master
    else
        shift_reg <= cmd_fifo_do; -- load a byte to send to master
    end if;
    bitcount_reg <= "000";
    state <= clkr;

when clkr => -- wait until rising edge sclk
    spi_miso_reg <= shift_reg(7);
    if (spi_clk_reg='1') then -- sample SPI_MOSI, load/shift, wait for falling edge 
        shift_reg <= shift_reg(6 downto 0) & spi_mosi_reg;
        bitcount_reg <= std_logic_vector(unsigned(bitcount_reg) + 1);
        state <= clkf;
    else
        state <= clkr;
    end if;

when clkf => -- wait until falling edge SCLK
    if (spi_clk_reg='0') then -- falling edge SCLK detected
        if (bitcount_reg="000") then -- shifted 8 bits, we are done, got the complete byte
            spi_miso_reg <= '0';
            if (shift_reg=X"16") then -- idle byte, drop it
                state <= wait4end;
            else -- master wrote real byte, write it into response FIFO
                state <= wrfifo; 
            end if;
        else
            state <= clkr; -- more bits coming, get ready for next rising edge SCLK           
        end if;
    else
        state <= clkf;
    end if;

when wrfifo => -- write shift_reg byte into response FIFO
    state <= wait4end;

when wait4end => -- we need to see SPI_CSN go high in between bytes
    if (spi_csn_reg='1') then
        state <= wait4start;
    else
        state <= wait4end;
    end if;

when others =>
    state <= rst;

end case;
        end if;
    end if;
end process fsm_proc;

-- command FIFO is written by OEI Ethernet and read by this SPI slave 

cmd_fifo_rden <= '1' when (state=rdfifo and cmd_fifo_empty='0') else '0';

cmd_fifo_inst: FIFO_DUALCLOCK_MACRO
generic map (
    DEVICE => "7SERIES",            
    ALMOST_FULL_OFFSET => X"0080",  
    ALMOST_EMPTY_OFFSET => X"0080",  
    DATA_WIDTH => 8,                   
    FIFO_SIZE => "18Kb",            
    FIRST_WORD_FALL_THROUGH => TRUE
)
port map (
    RST => reset,

    WRCLK => oeiclk,
    WREN => cmd_wren,
    DI => cmd_data,

    RDCLK => clock,
    RDEN => cmd_fifo_rden,
    DO => cmd_fifo_do,

    ALMOSTEMPTY => open,
    ALMOSTFULL => open, 
    EMPTY => cmd_fifo_empty,
    FULL => open,
    RDCOUNT => open,
    RDERR => open,
    WRCOUNT => open,
    WRERR => open
);

-- tell the SPI master that there is something in the command FIFO

spi_irq <= '1' when (cmd_fifo_empty='0') else '0';

-- response FIFO is written by this SPI slave and read by OEI Ethernet

res_fifo_wren <= '1' when (state=wrfifo) else '0';

res_fifo_inst: FIFO_DUALCLOCK_MACRO
generic map (
    DEVICE => "7SERIES",            
    ALMOST_FULL_OFFSET => X"0080",  
    ALMOST_EMPTY_OFFSET => X"0080",  
    DATA_WIDTH => 8,                   
    FIFO_SIZE => "18Kb",            
    FIRST_WORD_FALL_THROUGH => FALSE
)
port map (
    RST => reset,

    WRCLK => clock,
    WREN => res_fifo_wren,
    DI => shift_reg,

    RDCLK => oeiclk,
    RDEN => res_rden,
    DO => res_fifo_do,

    ALMOSTEMPTY => open,
    ALMOSTFULL => open, 
    EMPTY => res_fifo_empty,
    FULL => open,
    RDCOUNT => open,
    RDERR => open,
    WRCOUNT => open,
    WRERR => open
);

res_fifo_empty_reg_proc : process(oeiclk)
begin
  if rising_edge(oeiclk) then
    res_fifo_empty_reg <= res_fifo_empty;
  end if;
end process res_fifo_empty_reg_proc;

res_data <= x"FF" when (res_fifo_empty_reg = '1') else res_fifo_do;

-- "chipscope" ILA core running at 100MHz system clock

probe0(5 downto 1) <= reset & spi_clk_reg & spi_csn_reg & spi_mosi_reg & spi_miso_reg;
probe0(0) <= '1' when (cmd_fifo_empty='0') else '0';

ila_inst: ila_0
port map(
    clk    => clock,
    probe0 => probe0
);

end spi_arch;

