
-- VHDL Instantiation Created from source file SEUDisp.vhd -- 16:31:27 11/08/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEUDisp
	PORT(
		Disp22 : IN std_logic_vector(21 downto 0);          
		Result : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEUDisp: SEUDisp PORT MAP(
		Disp22 => ,
		Result => 
	);


