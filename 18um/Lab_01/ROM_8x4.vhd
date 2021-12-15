--------------------------------------------------
-- ROM_8x4 Look-Up Table
-- Eight four-bit sines.
-- 
-- File: ROM_8x4.vhd 
-- Path: <DFTW>/Lab_01 
--------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ROM_8x4 is
  port(
    ADDR:in  STD_LOGIC_VECTOR(2 downto 0);
    SINE:out STD_LOGIC_VECTOR(3 downto 0)
  );
end entity ROM_8x4;

architecture RTL of ROM_8x4 is
subtype ROM_WORD is STD_LOGIC_VECTOR(3 downto 0);
type ROM_CORE is array (0 to 7 ) of ROM_WORD;

  constant ROM:ROM_CORE := (  

  --   Four-Bit Sine Table
  --    (0 to 90 Degrees)
  --    Approx.     Exact
  --    ------      -----
        "0000",  -- 0.000
        "0011",  -- 0.195
        "0110",  -- 0.383
        "1001",  -- 0.555
        "1011",  -- 0.707
        "1110",  -- 0.831
        "1111",  -- 0.924
        "1111"   -- 0.981
  );
begin

  LOOK_UP:
  SINE <= ROM( CONV_INTEGER(ADDR) );

end architecture RTL;
--------------------------------------------------
