library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Fetch is
  generic (
    WORD_SIZE : integer
    );
  port (
    clock  : in  std_logic;
    branch : in  signed(WORD_SIZE-1 downto 0);
    count  : out unsigned(WORD_SIZE-1 downto 0);
    );
end Fetch;


architecture Fetch of Fetch is
  signal pc_value : unsigned(WORD_SIZE-1 downto 0) := (others => '0');
begin
  -- TODO: Just need to add stall, but we'll probably need a lot more here.....
  -- like branch prediction or something.
  count <= unsigned(signed(pc_value) + branch);
  
  process (clock)
  begin
    if rising_edge(clock) then
      pc_value <= pc_value + 1;
    end if;
  end process;

end Fetch;
