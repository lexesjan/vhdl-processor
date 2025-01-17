----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 09.04.2020 16:13:38
-- Design Name:
-- Module Name: multiplexer2_8bit - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer2_8bit is
  port(s : in std_logic;
       in1 : in std_logic_vector(7 downto 0);
       in2 : in std_logic_vector(7 downto 0);
       z : out std_logic_vector(7 downto 0));
end multiplexer2_8bit;

architecture Behavioral of multiplexer2_8bit is
  constant gate_delay: Time := 1 ns;
begin
  process (s, in1, in2)
  begin
    case s is
      when '0' => z <= in1 after gate_delay;
      when '1' => z <= in2 after gate_delay;
      when others => z <= in1 after gate_delay;
    end case;
  end process;
end Behavioral;
