----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 03:26:21 PM
-- Design Name: 
-- Module Name: problem2_case - Behavioral
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

entity problem2_case is
  Port ( A, B : in std_logic_vector(1 downto 0);
         D : in std_logic;
         E_out : out std_logic);
end problem2_case;

architecture Behavioral of problem2_case is

--intermediate signals
signal A_out, B_out, C_out, D_out : std_logic;
signal A_in, B_in, C_in : std_logic_vector(1 downto 0);
signal E_in : std_logic_vector(2 downto 0);

begin

--group signals
A_in <= A(0) & A(1);
B_in <= B(0) & B(1);
C_in <= B(1) & D_out;
E_in <= A_out & B_out & C_out;

--process A
    process(A_in)
        begin
            case(A_in) is
            when "11" => A_out <= '1';
            when others => A_out <= '0';
            end case;
   end process;
   
   
   
--process B
    process(B_in)
        begin
            case(B_in) is 
            when "11" | "01" | "10" => B_out <= '1';
            when others => B_out <= '0';
            end case;
    end process;
    
--process C
    process(C_in)
        begin
            case(C_in) is
            when "11" => C_out <= '1';
            when others => C_out <= '0';
            end case;
    end process;
    
    
--process D
    process(D)
        begin
            case(D) is
            when '0' => D_out <= '1';
            when '1' => D_out <= '0';
            end case;
       end process;
       
       
       
--process E
    process(E_in)
        begin
            case(E_in) is
            when "000" => E_out <= '0';
            when others => E_out <= '1';
            end case;
    end process;



end Behavioral;
