
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SINE_GEN is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type typeId_0 is array (2 downto 0) of std_logic;
type typeId_1 is array (3 downto 0) of std_logic;
type typeId_2 is array (3 downto 0) of std_logic;

end CONV_PACK_SINE_GEN;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SINE_GEN.all;

entity ROM_8x4 is

   port( ADDR : in std_logic_vector (0 to 2);  SINE : out std_logic_vector (0 
         to 3));

end ROM_8x4;

architecture SYN_verilog of ROM_8x4 is

   component ao1d2
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component inv1a1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component inv1a3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component ao2i3
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component or2b2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component xor2a2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   signal n16, n17, n18, n19 : std_logic;

begin
   
   U10 : ao1d2 port map( A => ADDR(1), B => ADDR(0), C => n16, Y => SINE(3));
   U11 : inv1a1 port map( A => ADDR(2), Y => n17);
   U12 : ao1d2 port map( A => ADDR(2), B => ADDR(0), C => n19, Y => SINE(1));
   U13 : ao1d2 port map( A => ADDR(2), B => ADDR(1), C => n18, Y => SINE(0));
   U14 : inv1a3 port map( A => ADDR(0), Y => n18);
   U15 : ao2i3 port map( A => ADDR(1), B => n17, C => n18, D => n19, Y => 
                           SINE(2));
   U16 : or2b2 port map( A => ADDR(1), B => ADDR(2), Y => n19);
   U17 : xor2a2 port map( A => n18, B => ADDR(2), Y => n16);

end SYN_verilog;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SINE_GEN.all;

entity SINE_GEN is

   port( CLOCK : in std_logic;  SINE : out typeId_2;  test_si : in std_logic;  
         test_so : out std_logic;  test_se : in std_logic);

end SINE_GEN;

architecture SYN_verilog of SINE_GEN is

   component ROM_8x4
      port( ADDR : in std_logic_vector (0 to 2);  SINE : out std_logic_vector 
            (0 to 3));
   end component;
   
   component xor2a2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component xor2a1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component fdmf1a6
      port( D0, D1, S, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component fdmf1a3
      port( D0, D1, S, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component inv1a1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component inv1a3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component and2c6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component or2c6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component xor2b2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component clk1b3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal ANGLE_4_port, ANGLE_2_port, ROM_OUT_0_port, ANGLE_0_port, 
      ANGLE20_3_port, ANGLE20_1_port, ROM_OUT_2_port, ANGLE_3_port, 
      ANGLE_1_port, ROM_IN_1_port, ANGLE20_2_port, ROM_IN_0_port, 
      ROM_OUT_3_port, ROM_OUT_1_port, ANGLE20_0_port, ROM_IN_2_port, 
      ANGLE20_4_port, n56, n57, n73, n74, n75, n76, n77, n78 : std_logic;

begin
   test_so <= ANGLE_4_port;
   
   U_ROM : ROM_8x4 port map( ADDR(0) => ROM_IN_2_port, ADDR(1) => ROM_IN_1_port
                           , ADDR(2) => ROM_IN_0_port, SINE(0) => 
                           ROM_OUT_3_port, SINE(1) => ROM_OUT_2_port, SINE(2) 
                           => ROM_OUT_1_port, SINE(3) => ROM_OUT_0_port);
   U11 : xor2a2 port map( A => n57, B => ANGLE_3_port, Y => ROM_IN_0_port);
   U12 : xor2a1 port map( A => ANGLE_4_port, B => ROM_OUT_3_port, Y => SINE(3))
                           ;
   U13 : xor2a1 port map( A => ANGLE_4_port, B => ROM_OUT_2_port, Y => SINE(2))
                           ;
   U14 : xor2a1 port map( A => ANGLE_4_port, B => ROM_OUT_1_port, Y => SINE(1))
                           ;
   ANGLE_reg_3_label : fdmf1a6 port map( D0 => ANGLE20_3_port, D1 => 
                           ANGLE_2_port, S => test_se, CLK => CLOCK, Q => 
                           ANGLE_3_port);
   ANGLE_reg_4_label : fdmf1a3 port map( D0 => ANGLE20_4_port, D1 => 
                           ANGLE_3_port, S => test_se, CLK => CLOCK, Q => 
                           ANGLE_4_port);
   U15 : inv1a1 port map( A => ANGLE_0_port, Y => n56);
   U16 : inv1a3 port map( A => n56, Y => n57);
   ANGLE_reg_1_label : fdmf1a6 port map( D0 => ANGLE20_1_port, D1 => n57, S => 
                           test_se, CLK => CLOCK, Q => ANGLE_1_port);
   ANGLE_reg_0_label : fdmf1a6 port map( D0 => ANGLE20_0_port, D1 => test_si, S
                           => test_se, CLK => CLOCK, Q => ANGLE_0_port);
   ANGLE_reg_2_label : fdmf1a3 port map( D0 => ANGLE20_2_port, D1 => 
                           ANGLE_1_port, S => test_se, CLK => CLOCK, Q => 
                           ANGLE_2_port);
   U22 : xor2a2 port map( A => ROM_OUT_0_port, B => ANGLE_4_port, Y => SINE(0))
                           ;
   U23 : xor2a2 port map( A => ANGLE_3_port, B => ANGLE_2_port, Y => 
                           ROM_IN_2_port);
   U24 : xor2a2 port map( A => ANGLE_3_port, B => ANGLE_1_port, Y => 
                           ROM_IN_1_port);
   U5 : inv1a3 port map( A => ANGLE_3_port, Y => n75);
   U6 : inv1a1 port map( A => ANGLE_0_port, Y => ANGLE20_0_port);
   U7 : xor2a1 port map( A => ANGLE_4_port, B => n73, Y => ANGLE20_4_port);
   X_cell_128_syn468 : and2c6 port map( A => n74, B => n75, Y => n73);
   X_cell_128_syn542 : or2c6 port map( A => ANGLE_1_port, B => ANGLE_0_port, Y 
                           => n76);
   X_cell_128_syn544 : or2c6 port map( A => ANGLE_2_port, B => n77, Y => n74);
   X_cell_128_syn549 : xor2a2 port map( A => ANGLE_3_port, B => n78, Y => 
                           ANGLE20_3_port);
   X_cell_128_syn550 : xor2b2 port map( A => ANGLE_2_port, B => n76, Y => 
                           ANGLE20_2_port);
   X_cell_128_syn551 : xor2a2 port map( A => ANGLE_1_port, B => ANGLE_0_port, Y
                           => ANGLE20_1_port);
   X_cell_128_syn567 : clk1b3 port map( A => n76, Y => n77);
   X_cell_128_syn569 : clk1b3 port map( A => n74, Y => n78);

end SYN_verilog;
