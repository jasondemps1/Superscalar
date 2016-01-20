library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Pipeline is
  generic (
    WORD_SIZE   : integer;
    ROM_SIZE    : integer;
    BRANCH_SIZE : integer
    );
  port (
    clock : in std_logic
    );
end Pipeline;


architecture Pipeline_bench of Pipeline is
  -- LOCAL SIGNALS
  signal pc_value     : unsigned(WORD_SIZE-1 downto 0);
  signal branch_value : signed(BRANCH_SIZE-1 downto 0);
  signal rom_instr    : unsigned(WORD_SIZE-1 downto 0);
begin

  -- INSTANTIATIONS
  -- Form: labelname: entity work.entityName(architectureName)

-- Stages
  Fetch : entity work.Fetch(Fetch)
    generic map (
      WORD_SIZE => WORD_SIZE,
		BRANCH_SIZE => BRANCH_SIZE
      )
    port map (
      clock  => clock,
      branch => branch_value,
      count  => pc_value
      );

  -- Memory
  imem : entity work.ROM(ROM)
    generic map (
      ROM_SIZE  => ROM_SIZE,
      WORD_SIZE => WORD_SIZE
      )
    port map (
      clock => clock,
      addr  => pc_value,
      data  => rom_instr
      );



end Pipeline_bench;
