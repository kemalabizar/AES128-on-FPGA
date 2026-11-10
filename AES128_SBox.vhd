-- AES128 SBox implementation
-- Copyright (c) 2026 Muhammad Kemal Abizar, Galvin Efrem Lesmana, Hanif Abdul Aziz
-- NOTE 10/11/2026: Belum dicek lagi kesesuaian SBox secara manual

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AES128_SBox is port (
	X : in std_logic_vector (7 downto 0);
	Y : out std_logic_vector (7 downto 0)
);
end entity AES128_SBox;

architecture RTL of AES128_SBox is
	signal A : std_logic_vector (3 downto 0);
	signal B : std_logic_vector (3 downto 0);
	signal C : std_logic_vector (7 downto 0);
begin
	process (A, B, C) begin
		A <= X (7 downto 4);
		B <= X (3 downto 0);
		case B is
			when B = "0000" =>
				case A is
					when A = "0000" => C <= x"63";
					when A = "0001" => C <= x"CA";
					when A = "0010" => C <= x"B7";
					when A = "0011" => C <= x"04";
					when A = "0100" => C <= x"09";
					when A = "0101" => C <= x"53";
					when A = "0110" => C <= x"D0";
					when A = "0111" => C <= x"51";
					when A = "1000" => C <= x"CD";
					when A = "1001" => C <= x"60";
					when A = "1010" => C <= x"E0";
					when A = "1011" => C <= x"E7";
					when A = "1100" => C <= x"BA";
					when A = "1101" => C <= x"70";
					when A = "1110" => C <= x"E1";
					when A = "1111" => C <= x"8C";
				end case;
			when B = "0001" =>
				case A is
					when A = "0000" => C <= x"7C";
					when A = "0001" => C <= x"82";
					when A = "0010" => C <= x"FD";
					when A = "0011" => C <= x"C7";
					when A = "0100" => C <= x"83";
					when A = "0101" => C <= x"D1";
					when A = "0110" => C <= x"EF";
					when A = "0111" => C <= x"A3";
					when A = "1000" => C <= x"0C";
					when A = "1001" => C <= x"81";
					when A = "1010" => C <= x"32";
					when A = "1011" => C <= x"C8";
					when A = "1100" => C <= x"78";
					when A = "1101" => C <= x"3E";
					when A = "1110" => C <= x"F8";
					when A = "1111" => C <= x"A1";
				end case;
			when B = "0010" =>
				case A is
					when A = "0000" => C <= x"77";
					when A = "0001" => C <= x"C9";
					when A = "0010" => C <= x"93";
					when A = "0011" => C <= x"23";
					when A = "0100" => C <= x"2C";
					when A = "0101" => C <= x"00";
					when A = "0110" => C <= x"AA";
					when A = "0111" => C <= x"40";
					when A = "1000" => C <= x"13";
					when A = "1001" => C <= x"4F";
					when A = "1010" => C <= x"3A";
					when A = "1011" => C <= x"37";
					when A = "1100" => C <= x"25";
					when A = "1101" => C <= x"B5";
					when A = "1110" => C <= x"98";
					when A = "1111" => C <= x"89";
				end case;
			when B = "0011" =>
				case A is
					when A = "0000" => C <= x"7B";
					when A = "0001" => C <= x"7D";
					when A = "0010" => C <= x"26";
					when A = "0011" => C <= x"C3";
					when A = "0100" => C <= x"1A";
					when A = "0101" => C <= x"ED";
					when A = "0110" => C <= x"FB";
					when A = "0111" => C <= x"8F";
					when A = "1000" => C <= x"EC";
					when A = "1001" => C <= x"DC";
					when A = "1010" => C <= x"0A";
					when A = "1011" => C <= x"6D";
					when A = "1100" => C <= x"2E";
					when A = "1101" => C <= x"66";
					when A = "1110" => C <= x"11";
					when A = "1111" => C <= x"0D";
				end case;
			when B = "0100" =>
				case A is
					when A = "0000" => C <= x"F2";
					when A = "0001" => C <= x"FA";
					when A = "0010" => C <= x"36";
					when A = "0011" => C <= x"18";
					when A = "0100" => C <= x"1B";
					when A = "0101" => C <= x"20";
					when A = "0110" => C <= x"43";
					when A = "0111" => C <= x"92";
					when A = "1000" => C <= x"5F";
					when A = "1001" => C <= x"22";
					when A = "1010" => C <= x"49";
					when A = "1011" => C <= x"8D";
					when A = "1100" => C <= x"1C";
					when A = "1101" => C <= x"48";
					when A = "1110" => C <= x"69";
					when A = "1111" => C <= x"BF";
				end case;
			when B = "0101" =>
				case A is
					when A = "0000" => C <= x"6B";
					when A = "0001" => C <= x"59";
					when A = "0010" => C <= x"3F";
					when A = "0011" => C <= x"96";
					when A = "0100" => C <= x"6E";
					when A = "0101" => C <= x"FC";
					when A = "0110" => C <= x"4D";
					when A = "0111" => C <= x"9D";
					when A = "1000" => C <= x"97";
					when A = "1001" => C <= x"2A";
					when A = "1010" => C <= x"06";
					when A = "1011" => C <= x"D5";
					when A = "1100" => C <= x"A6";
					when A = "1101" => C <= x"03";
					when A = "1110" => C <= x"D9";
					when A = "1111" => C <= x"E6";
				end case;
			when B = "0110" =>
				case A is
					when A = "0000" => C <= x"6F";
					when A = "0001" => C <= x"47";
					when A = "0010" => C <= x"F7";
					when A = "0011" => C <= x"05";
					when A = "0100" => C <= x"5A";
					when A = "0101" => C <= x"B1";
					when A = "0110" => C <= x"33";
					when A = "0111" => C <= x"38";
					when A = "1000" => C <= x"44";
					when A = "1001" => C <= x"90";
					when A = "1010" => C <= x"24";
					when A = "1011" => C <= x"4E";
					when A = "1100" => C <= x"B4";
					when A = "1101" => C <= x"F6";
					when A = "1110" => C <= x"8E";
					when A = "1111" => C <= x"42";
				end case;
			when B = "0111" =>
				case A is
					when A = "0000" => C <= x"C5";
					when A = "0001" => C <= x"F0";
					when A = "0010" => C <= x"CC";
					when A = "0011" => C <= x"9A";
					when A = "0100" => C <= x"A0";
					when A = "0101" => C <= x"5B";
					when A = "0110" => C <= x"85";
					when A = "0111" => C <= x"F5";
					when A = "1000" => C <= x"16";
					when A = "1001" => C <= x"88";
					when A = "1010" => C <= x"5C";
					when A = "1011" => C <= x"A9";
					when A = "1100" => C <= x"C6";
					when A = "1101" => C <= x"0E";
					when A = "1110" => C <= x"94";
					when A = "1111" => C <= x"68";
				end case;
			when B = "1000" =>
				case A is
					when A = "0000" => C <= x"30";
					when A = "0001" => C <= x"AD";
					when A = "0010" => C <= x"34";
					when A = "0011" => C <= x"07";
					when A = "0100" => C <= x"52";
					when A = "0101" => C <= x"65";
					when A = "0110" => C <= x"45";
					when A = "0111" => C <= x"BC";
					when A = "1000" => C <= x"C4";
					when A = "1001" => C <= x"46";
					when A = "1010" => C <= x"C2";
					when A = "1011" => C <= x"6C";
					when A = "1100" => C <= x"E8";
					when A = "1101" => C <= x"61";
					when A = "1110" => C <= x"9B";
					when A = "1111" => C <= x"41";
				end case;
			when B = "1001" =>
				case A is
					when A = "0000" => C <= x"01";
					when A = "0001" => C <= x"D4";
					when A = "0010" => C <= x"A5";
					when A = "0011" => C <= x"12";
					when A = "0100" => C <= x"3B";
					when A = "0101" => C <= x"CB";
					when A = "0110" => C <= x"F9";
					when A = "0111" => C <= x"B6";
					when A = "1000" => C <= x"A7";
					when A = "1001" => C <= x"EE";
					when A = "1010" => C <= x"D3";
					when A = "1011" => C <= x"56";
					when A = "1100" => C <= x"DD";
					when A = "1101" => C <= x"35";
					when A = "1110" => C <= x"1E";
					when A = "1111" => C <= x"99";
				end case;
			when B = "1010" =>
				case A is
					when A = "0000" => C <= x"67";
					when A = "0001" => C <= x"A2";
					when A = "0010" => C <= x"E5";
					when A = "0011" => C <= x"80";
					when A = "0100" => C <= x"D6";
					when A = "0101" => C <= x"BE";
					when A = "0110" => C <= x"02";
					when A = "0111" => C <= x"DA";
					when A = "1000" => C <= x"7E";
					when A = "1001" => C <= x"B8";
					when A = "1010" => C <= x"AC";
					when A = "1011" => C <= x"F4";
					when A = "1100" => C <= x"74";
					when A = "1101" => C <= x"57";
					when A = "1110" => C <= x"87";
					when A = "1111" => C <= x"2D";
				end case;
			when B = "1011" =>
				case A is
					when A = "0000" => C <= x"2B";
					when A = "0001" => C <= x"AF";
					when A = "0010" => C <= x"F1";
					when A = "0011" => C <= x"E2";
					when A = "0100" => C <= x"B3";
					when A = "0101" => C <= x"39";
					when A = "0110" => C <= x"7F";
					when A = "0111" => C <= x"21";
					when A = "1000" => C <= x"3D";
					when A = "1001" => C <= x"14";
					when A = "1010" => C <= x"62";
					when A = "1011" => C <= x"EA";
					when A = "1100" => C <= x"1F";
					when A = "1101" => C <= x"B9";
					when A = "1110" => C <= x"E9";
					when A = "1111" => C <= x"0F";
				end case;
			when B = "1100" =>
				case A is
					when A = "0000" => C <= x"FE";
					when A = "0001" => C <= x"9C";
					when A = "0010" => C <= x"71";
					when A = "0011" => C <= x"EB";
					when A = "0100" => C <= x"29";
					when A = "0101" => C <= x"4A";
					when A = "0110" => C <= x"50";
					when A = "0111" => C <= x"10";
					when A = "1000" => C <= x"64";
					when A = "1001" => C <= x"DE";
					when A = "1010" => C <= x"91";
					when A = "1011" => C <= x"65";
					when A = "1100" => C <= x"4B";
					when A = "1101" => C <= x"86";
					when A = "1110" => C <= x"CE";
					when A = "1111" => C <= x"B0";
				end case;
			when B = "1101" =>
				case A is
					when A = "0000" => C <= x"D7";
					when A = "0001" => C <= x"A4";
					when A = "0010" => C <= x"D8";
					when A = "0011" => C <= x"27";
					when A = "0100" => C <= x"E3";
					when A = "0101" => C <= x"4C";
					when A = "0110" => C <= x"3C";
					when A = "0111" => C <= x"FF";
					when A = "1000" => C <= x"5D";
					when A = "1001" => C <= x"5E";
					when A = "1010" => C <= x"95";
					when A = "1011" => C <= x"7A";
					when A = "1100" => C <= x"BD";
					when A = "1101" => C <= x"C1";
					when A = "1110" => C <= x"55";
					when A = "1111" => C <= x"54";
				end case;
			when B = "1110" =>
				case A is
					when A = "0000" => C <= x"AB";
					when A = "0001" => C <= x"72";
					when A = "0010" => C <= x"31";
					when A = "0011" => C <= x"B2";
					when A = "0100" => C <= x"2F";
					when A = "0101" => C <= x"58";
					when A = "0110" => C <= x"9F";
					when A = "0111" => C <= x"F3";
					when A = "1000" => C <= x"19";
					when A = "1001" => C <= x"0B";
					when A = "1010" => C <= x"E4";
					when A = "1011" => C <= x"AE";
					when A = "1100" => C <= x"8B";
					when A = "1101" => C <= x"1D";
					when A = "1110" => C <= x"28";
					when A = "1111" => C <= x"BB";
				end case;
			when B = "1111" =>
				case A is
					when A = "0000" => C <= x"76";
					when A = "0001" => C <= x"C0";
					when A = "0010" => C <= x"15";
					when A = "0011" => C <= x"75";
					when A = "0100" => C <= x"84";
					when A = "0101" => C <= x"CF";
					when A = "0110" => C <= x"A8";
					when A = "0111" => C <= x"D2";
					when A = "1000" => C <= x"73";
					when A = "1001" => C <= x"DB";
					when A = "1010" => C <= x"79";
					when A = "1011" => C <= x"08";
					when A = "1100" => C <= x"8A";
					when A = "1101" => C <= x"9E";
					when A = "1110" => C <= x"DF";
					when A = "1111" => C <= x"16";
				end case;
		end case;
		Y <= C;
	end process;
end architecture RTL;