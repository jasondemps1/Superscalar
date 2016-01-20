library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.lib.all;

entity CPU is
  port (
    clock : in std_logic
    );
end CPU;

architecture CPU_bench of CPU is
-- CONSTANTS
  constant WORD_SIZE   : integer := 32;
  constant ROM_SIZE    : integer := 512;
  -- Unconditionals => +- 1MB (2^20)
  -- Conditionals   => +- 4KB
  constant BRANCH_SIZE : integer := 20;

  -- LOCAL SIGNALS
  -- TODO: We'll perform clock gating at this level.
  signal clock_gated : std_logic;

begin

  Pipe_Gen : for i in 0 to NUM_PIPELINES then
    Pipeline : entity work.Pipeline(Pipeline_bench)
      generic map (
        WORD_SIZE   => WORD_SIZE;
        ROM_SIZE    => ROM_SIZE;
        BRANCH_SIZE => BRANCH_SIZE
        )
      port map (
        clock => clock_gated
        );
  end Pipe_Gen;

  end CPU_bench;
