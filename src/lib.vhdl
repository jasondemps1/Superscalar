-- SuperScalar library

package lib is
  constant NUM_PIPELINES integer := 1;

  type Rinstr is record
    funct7 : unsigned(6 downto 0);
    rs2    : unsigned(4 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end Rinstr;

  type Iinstr is record
    imm    : unsigned(11 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end Iinstr;

  type Sinstr is record
    imm    : unsigned(11 downto 0);
    rs2    : unsigned(4 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end Sinstr;

  type SBinstr is record
    imm    : unsigned(11 downto 0);
    rs2    : unsigned(4 downto 0);
    rs1    : unsigned(4 downto 0);
    funct3 : unsigned(2 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end SBinstr;

  type Uinstr is record
    imm    : unsigned(18 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end Uinstr;

  type UJinstr is record
    imm    : unsigned(18 downto 0);
    rd     : unsigned(4 downto 0);
    opcode : unsigned(6 downto 0);
  end UJinstr;

end lib;

package body lib is
  

end lib;

