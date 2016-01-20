library ieee;
use ieee.std_logic_1164.all;

entity Top is
  port (
    clock : in std_logic
    );
end Top;


architecture Top_bench of Top is

begin

  CPU : entity work.CPU(CPU_bench)
    port map (
      clock
      );

end Top_bench;
