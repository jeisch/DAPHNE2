library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_testbench is
end spi_testbench;

architecture spi_testbench_arch of spi_testbench is

component spi
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
end component;

signal clock, oeiclk: std_logic := '0';
signal reset: std_logic := '0';
signal cmd_wren, res_rden: std_logic := '0';
signal cmd_data: std_logic_vector(7 downto 0) := X"00";
signal spi_clk, spi_mosi, spi_miso, spi_irq : std_logic := '0';
signal spi_csn: std_logic := '1';

constant spi_clk_period: time := 250ns; -- 4MHz

begin

DUT: spi
port map(
    oeiclk => oeiclk,
    cmd_wren => cmd_wren,
    cmd_data => cmd_data,
    res_rden => res_rden,
    
    clock => clock,
    reset => reset, 
    spi_clk => spi_clk,
    spi_csn => spi_csn,
    spi_mosi => spi_mosi,
    spi_miso => spi_miso,
    spi_irq => spi_irq
  );

clock <= not clock after 5ns; -- 100MHz
oeiclk <= not oeiclk after 4ns; -- 125MHz

reset_proc: process
begin
    wait for 8ns;
    reset <= '1';
    wait for 64ns;
    reset <= '0';
    wait;
end process reset_proc;

oeiproc: process
begin
    wait for 1000ns;

    wait until falling_edge(oeiclk);
    cmd_wren <= '1';
    cmd_data <= std_logic_vector( to_unsigned( character'pos('H') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('e') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('l') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('l') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('o') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos(' ') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('W') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('o') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('r') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('l') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= std_logic_vector( to_unsigned( character'pos('d') , 8 ) ) ;
    wait until falling_edge(oeiclk);
    cmd_data <= X"00";
    cmd_wren <= '0';

    wait;
end process oeiproc;








-- master SPI waits for SPI_IRQ to go high, then it shifts a byte, prints out what byte it got from the slave
-- increments the byte value what it sends to the slave

spi_master_proc: process
    variable init_out:  std_logic_vector(7 downto 0) := X"41";
    variable shift_out: std_logic_vector(7 downto 0) := X"00";
    variable shift_in:  std_logic_vector(7 downto 0) := X"00";
begin

    wait for 500ns;

    if spi_irq='1' then 

        spi_csn <= '0';
        shift_out := init_out;
        for i in 7 downto 0 loop
            spi_mosi <= shift_out(7);
            wait for spi_clk_period/2;
            spi_clk <= '1';
            shift_in := shift_in(6 downto 0) & spi_miso; -- sample on rising edge
            wait for spi_clk_period/2;
            spi_clk <= '0';
            shift_out := shift_out(6 downto 0) & '0';        
        end loop;
        wait for spi_clk_period/2;
        spi_csn <= '1';
        init_out := std_logic_vector(unsigned(init_out)+1);
        report "SPI master got " & character'val(to_integer(unsigned(shift_in))) severity note;

    end if;

end process spi_master_proc;


end spi_testbench_arch;
