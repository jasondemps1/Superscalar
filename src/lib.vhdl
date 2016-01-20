-- SuperScalar library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package lib is
  constant NUM_PIPELINES : integer := 1;

  type Rinstr is record
    funct7 : unsigned(6 downto 0);
    rs2    : unsigned(4 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end record Rinstr;

  type Iinstr is record
    imm    : unsigned(11 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end record Iinstr;

  type Sinstr is record
    imm    : unsigned(11 downto 0);
    rs2    : unsigned(4 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end record Sinstr;

  type SBinstr is record
    imm    : unsigned(11 downto 0);
    rs2    : unsigned(4 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end record SBinstr;

  type Uinstr is record
    imm    : unsigned(18 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end record Uinstr;

  type UJinstr is record
    imm    : unsigned(18 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end record UJinstr;

end lib;

package body lib is
  

end lib;

