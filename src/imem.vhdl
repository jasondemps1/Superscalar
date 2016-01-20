-- Single Read, Single Write (ROM)
-- Infer M9k blocks
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM is
  generic (
    ROM_SIZE  : integer;
    WORD_SIZE : integer
    );
  port (
    clock : in  std_logic;
    addr  : in  unsigned(WORD_SIZE-1 downto 0);
    data  : out unsigned(WORD_SIZE-1 downto 0)
    );
end ROM;

architecture ROM of ROM is
  type mem_t is array (0 to ROM_SIZE) of unsigned(WORD_SIZE-1 downto 0);
  signal mem : mem_t;
begin

  process (clock)
  begin
    if rising_edge(clock) then
      data <= mem(to_integer(addr));
    end if;
  end process;

end ROM;
