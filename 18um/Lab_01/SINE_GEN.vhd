--------------------------------------------------
-- SINE-WAVE GENERATOR 
-- Outputs digitized sine wave. 
-- Gets sines from ROM look-up table. 
-- 
-- File: SINE_GEN.vhd
-- Path: <DFTW>/Lab_01 
--------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity SINE_GEN is
  port(
    CLOCK:in STD_LOGIC;
    SINE:out STD_LOGIC_VECTOR(3 downto 0)
   );
end entity SINE_GEN;

architecture RTL of SINE_GEN is

--This signal implements a five-bit counter.
--It counts 8 x 4 = 32 time slices, dividing
--each of four quadrants into 8 time slices.
  signal ANGLE: STD_LOGIC_VECTOR(4 downto 0);

--Signals to address ROM, and read its data:
  subtype ADDR is STD_LOGIC_VECTOR(2 downto 0); 
  signal ROM_IN:ADDR;
  subtype DATA is STD_LOGIC_VECTOR(3 downto 0); 
  signal ROM_OUT:DATA;

  component ROM_8x4
    port(
      ADDR:in  STD_LOGIC_VECTOR(2 downto 0);
      SINE:out STD_LOGIC_VECTOR(3 downto 0)
    );
  end component;

begin

  COUNT:
  process
  begin
  --Counts 0 to 31 and rolls over:
    wait until CLOCK='1';
    ANGLE <= ANGLE + 1;
  end process COUNT;

  COMPLEMENT:
  process( ANGLE )
  begin
  --Invert address, quadrants 2 and 4:
    ROM_IN <= ANGLE(2 downto 0) xor 
              ADDR'(others => ANGLE(3));
  end process COMPLEMENT;

--Instantiate look-up table:
  U_ROM: ROM_8x4
    port map (
      ADDR => ROM_IN,
      SINE => ROM_OUT
  );

--Negate ROM output, quadrants 3 and 4:
  SINE <= ROM_OUT xor
          DATA'(others => ANGLE(4));

end architecture RTL;
--------------------------------------------------
