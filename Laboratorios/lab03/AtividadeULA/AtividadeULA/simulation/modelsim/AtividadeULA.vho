-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "02/13/2017 16:16:54"

-- 
-- Device: Altera EP1K100QC208-3 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, flex10ke;
USE IEEE.std_logic_1164.all;
USE flex10ke.flex10ke_components.all;

ENTITY 	PRINCIPAL IS
    PORT (
	OA : OUT std_logic;
	DIP8 : IN std_logic;
	B0 : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	DIP7 : IN std_logic;
	DIP6 : IN std_logic;
	DIP5 : IN std_logic;
	DIP4 : IN std_logic;
	DIP3 : IN std_logic;
	DIP2 : IN std_logic;
	DIP1 : IN std_logic;
	OB : OUT std_logic;
	OC : OUT std_logic;
	OD : OUT std_logic;
	OE : OUT std_logic;
	\OF\ : OUT std_logic;
	OG : OUT std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	P : OUT std_logic;
	carry : OUT std_logic;
	AEQB : OUT std_logic;
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic
	);
END PRINCIPAL;

ARCHITECTURE structure OF PRINCIPAL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OA : std_logic;
SIGNAL ww_DIP8 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_DIP7 : std_logic;
SIGNAL ww_DIP6 : std_logic;
SIGNAL ww_DIP5 : std_logic;
SIGNAL ww_DIP4 : std_logic;
SIGNAL ww_DIP3 : std_logic;
SIGNAL ww_DIP2 : std_logic;
SIGNAL ww_DIP1 : std_logic;
SIGNAL ww_OB : std_logic;
SIGNAL ww_OC : std_logic;
SIGNAL ww_OD : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL \ww_OF\ : std_logic;
SIGNAL ww_OG : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_carry : std_logic;
SIGNAL ww_AEQB : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL \inst|inst|41~3_combout\ : std_logic;
SIGNAL \inst|inst|81~4_combout\ : std_logic;
SIGNAL \inst|inst1|3~0_combout\ : std_logic;
SIGNAL \inst|inst1|43~2_combout\ : std_logic;
SIGNAL \inst13|inst9|inst5~regout\ : std_logic;
SIGNAL \inst13|inst9|inst4~regout\ : std_logic;
SIGNAL \inst13|inst9|inst~regout\ : std_logic;
SIGNAL \inst13|inst9|inst1~regout\ : std_logic;
SIGNAL \inst13|inst1|46~0_combout\ : std_logic;
SIGNAL \inst13|inst1|43~1_combout\ : std_logic;
SIGNAL \inst13|inst1|80~1_combout\ : std_logic;
SIGNAL \inst13|inst1|80~combout\ : std_logic;
SIGNAL \inst13|inst2~2_combout\ : std_logic;
SIGNAL \inst|inst1|41~3_combout\ : std_logic;
SIGNAL \inst|inst|41~11_combout\ : std_logic;
SIGNAL \inst|inst|3~1_combout\ : std_logic;
SIGNAL \inst|inst1|43~6_combout\ : std_logic;
SIGNAL \inst2|inst2|inst|9~11_combout\ : std_logic;
SIGNAL \inst13|inst|60~2_combout\ : std_logic;
SIGNAL \inst6|inst6|104~regout\ : std_logic;
SIGNAL \inst6|inst6|56~regout\ : std_logic;
SIGNAL \inst6|inst7~combout\ : std_logic;
SIGNAL \inst6|inst6|154~0_combout\ : std_logic;
SIGNAL \inst6|inst5~combout\ : std_logic;
SIGNAL \inst6|inst6|75~regout\ : std_logic;
SIGNAL \inst6|inst6|76~regout\ : std_logic;
SIGNAL \inst6|inst6|93~regout\ : std_logic;
SIGNAL \inst6|inst6|66~regout\ : std_logic;
SIGNAL \inst6|inst6|70~regout\ : std_logic;
SIGNAL \inst6|inst6|36~regout\ : std_logic;
SIGNAL \inst6|inst6|45~regout\ : std_logic;
SIGNAL \inst6|inst6|50~regout\ : std_logic;
SIGNAL \inst6|inst6|16~regout\ : std_logic;
SIGNAL \inst6|inst6|24~regout\ : std_logic;
SIGNAL \inst6|inst6|32~regout\ : std_logic;
SIGNAL \inst6|inst6|9~regout\ : std_logic;
SIGNAL \inst6|inst6|8~regout\ : std_logic;
SIGNAL \inst6|inst6|13~combout\ : std_logic;
SIGNAL \inst6|inst6|136~combout\ : std_logic;
SIGNAL \inst6|inst6|142~combout\ : std_logic;
SIGNAL \inst6|inst6|148~combout\ : std_logic;
SIGNAL \inst6|inst6|153~combout\ : std_logic;
SIGNAL \inst|inst1|43~9_combout\ : std_logic;
SIGNAL \inst6|inst6|133~combout\ : std_logic;
SIGNAL \inst6|inst6|138~combout\ : std_logic;
SIGNAL \inst6|inst6|144~combout\ : std_logic;
SIGNAL \inst6|inst6|150~combout\ : std_logic;
SIGNAL \inst6|inst6|134~combout\ : std_logic;
SIGNAL \inst6|inst6|140~combout\ : std_logic;
SIGNAL \inst6|inst6|146~combout\ : std_logic;
SIGNAL \inst6|inst6|96~combout\ : std_logic;
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \inst6|inst3~regout\ : std_logic;
SIGNAL \inst4|inst1~regout\ : std_logic;
SIGNAL \inst4|inst2~regout\ : std_logic;
SIGNAL \inst4|inst3~regout\ : std_logic;
SIGNAL \inst4|inst5~regout\ : std_logic;
SIGNAL \inst4|inst6~regout\ : std_logic;
SIGNAL \inst4|inst7~regout\ : std_logic;
SIGNAL \inst4|inst8~regout\ : std_logic;
SIGNAL \inst4|inst9~regout\ : std_logic;
SIGNAL \inst4|inst10~regout\ : std_logic;
SIGNAL \inst4|inst11~regout\ : std_logic;
SIGNAL \inst4|inst12~regout\ : std_logic;
SIGNAL \inst4|inst13~regout\ : std_logic;
SIGNAL \inst4|inst14~regout\ : std_logic;
SIGNAL \inst4|inst15~regout\ : std_logic;
SIGNAL \inst2|inst3|inst2~regout\ : std_logic;
SIGNAL \inst2|inst3|inst~regout\ : std_logic;
SIGNAL \DIP7~dataout\ : std_logic;
SIGNAL \reset~dataout\ : std_logic;
SIGNAL \B0~dataout\ : std_logic;
SIGNAL \inst6|inst~regout\ : std_logic;
SIGNAL \inst6|inst1~regout\ : std_logic;
SIGNAL \inst6|inst8~regout\ : std_logic;
SIGNAL \inst15|inst~regout\ : std_logic;
SIGNAL \inst15|inst2~regout\ : std_logic;
SIGNAL \inst17|33~2_combout\ : std_logic;
SIGNAL \inst13|inst11|14~regout\ : std_logic;
SIGNAL \DIP8~dataout\ : std_logic;
SIGNAL \inst13|inst11|13~regout\ : std_logic;
SIGNAL \inst17|33~0_combout\ : std_logic;
SIGNAL \inst13|inst8|inst~regout\ : std_logic;
SIGNAL \inst13|inst|46~0_combout\ : std_logic;
SIGNAL \DIP6~dataout\ : std_logic;
SIGNAL \inst13|inst11|15~regout\ : std_logic;
SIGNAL \DIP5~dataout\ : std_logic;
SIGNAL \inst13|inst11|16~regout\ : std_logic;
SIGNAL \inst13|inst|43~0_combout\ : std_logic;
SIGNAL \inst17|33~3_combout\ : std_logic;
SIGNAL \inst13|inst10|inst~regout\ : std_logic;
SIGNAL \inst17|33~1_combout\ : std_logic;
SIGNAL \inst13|inst9|inst2~regout\ : std_logic;
SIGNAL \inst13|inst8|inst2~regout\ : std_logic;
SIGNAL \inst13|inst|45~1_combout\ : std_logic;
SIGNAL \inst13|inst|82~0_combout\ : std_logic;
SIGNAL \inst13|inst8|inst1~regout\ : std_logic;
SIGNAL \inst13|inst|47~0_combout\ : std_logic;
SIGNAL \inst13|inst|79~combout\ : std_logic;
SIGNAL \inst13|inst10|inst2~regout\ : std_logic;
SIGNAL \inst13|inst8|inst3~regout\ : std_logic;
SIGNAL \inst13|inst|51~0_combout\ : std_logic;
SIGNAL \inst13|inst|52~0_combout\ : std_logic;
SIGNAL \inst13|inst|45~0_combout\ : std_logic;
SIGNAL \inst13|inst7|23~0_combout\ : std_logic;
SIGNAL \inst13|inst|48~0_combout\ : std_logic;
SIGNAL \inst13|inst|60~0_combout\ : std_logic;
SIGNAL \inst13|inst|44~0_combout\ : std_logic;
SIGNAL \inst13|inst|60~6\ : std_logic;
SIGNAL \inst13|inst|63~3_combout\ : std_logic;
SIGNAL \inst13|inst1|66~1_combout\ : std_logic;
SIGNAL \DIP3~dataout\ : std_logic;
SIGNAL \inst13|inst8|inst5~regout\ : std_logic;
SIGNAL \inst13|inst1|44~0_combout\ : std_logic;
SIGNAL \DIP4~dataout\ : std_logic;
SIGNAL \inst13|inst8|inst4~regout\ : std_logic;
SIGNAL \inst13|inst1|43~0_combout\ : std_logic;
SIGNAL \inst13|inst1|47~0_combout\ : std_logic;
SIGNAL \inst13|inst1|75~0_combout\ : std_logic;
SIGNAL \DIP2~dataout\ : std_logic;
SIGNAL \inst13|inst9|inst6~regout\ : std_logic;
SIGNAL \inst13|inst8|inst6~regout\ : std_logic;
SIGNAL \inst13|inst1|45~0_combout\ : std_logic;
SIGNAL \inst13|inst1|82~0_combout\ : std_logic;
SIGNAL \inst13|inst10|inst6~regout\ : std_logic;
SIGNAL \inst13|inst10|inst4~regout\ : std_logic;
SIGNAL \inst13|inst9|inst3~regout\ : std_logic;
SIGNAL \inst13|inst|51~1_combout\ : std_logic;
SIGNAL \inst13|inst|77~0_combout\ : std_logic;
SIGNAL \inst13|inst|74~0_combout\ : std_logic;
SIGNAL \inst13|inst10|inst3~regout\ : std_logic;
SIGNAL \inst13|inst10|inst5~regout\ : std_logic;
SIGNAL \inst|inst|43~3_combout\ : std_logic;
SIGNAL \inst|inst|43~2_combout\ : std_logic;
SIGNAL \inst|inst|43~8_combout\ : std_logic;
SIGNAL \DIP1~dataout\ : std_logic;
SIGNAL \inst13|inst8|inst7~regout\ : std_logic;
SIGNAL \inst13|inst1|51~0_combout\ : std_logic;
SIGNAL \inst13|inst1|74~0_combout\ : std_logic;
SIGNAL \inst13|inst1|74~1_combout\ : std_logic;
SIGNAL \inst13|inst1|74~combout\ : std_logic;
SIGNAL \inst13|inst10|inst7~regout\ : std_logic;
SIGNAL \inst|inst|43~4_combout\ : std_logic;
SIGNAL \inst|inst|41~0_combout\ : std_logic;
SIGNAL \inst|inst|43~5_combout\ : std_logic;
SIGNAL \inst|inst1|22~1_combout\ : std_logic;
SIGNAL \inst13|inst10|inst1~regout\ : std_logic;
SIGNAL \inst|inst|45~3_combout\ : std_logic;
SIGNAL \inst|inst|41~21\ : std_logic;
SIGNAL \inst|inst|41~14_combout\ : std_logic;
SIGNAL \inst|inst|25~3\ : std_logic;
SIGNAL \inst|inst|41~13_combout\ : std_logic;
SIGNAL \inst|inst|41~4_combout\ : std_logic;
SIGNAL \inst|inst1|22~3\ : std_logic;
SIGNAL \inst2|inst2|inst|9~14_combout\ : std_logic;
SIGNAL \inst|inst|25~1_combout\ : std_logic;
SIGNAL \inst|inst|43~7_combout\ : std_logic;
SIGNAL \inst|inst|25~0_combout\ : std_logic;
SIGNAL \inst|inst|3~4\ : std_logic;
SIGNAL \inst|inst|45~8_combout\ : std_logic;
SIGNAL \inst|inst|45~1_combout\ : std_logic;
SIGNAL \inst|inst|45~2_combout\ : std_logic;
SIGNAL \inst2|inst2|inst|9~2_combout\ : std_logic;
SIGNAL \inst2|inst2|inst|9~3_combout\ : std_logic;
SIGNAL \inst|inst|81~1_combout\ : std_logic;
SIGNAL \inst|inst|81~0_combout\ : std_logic;
SIGNAL \inst|inst|81~2_combout\ : std_logic;
SIGNAL \inst|inst|81~3_combout\ : std_logic;
SIGNAL \inst|inst|43~6_combout\ : std_logic;
SIGNAL \inst|inst1|82~0_combout\ : std_logic;
SIGNAL \inst|inst|82~0_combout\ : std_logic;
SIGNAL \inst|inst|48~combout\ : std_logic;
SIGNAL \inst2|inst4|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst|9~21\ : std_logic;
SIGNAL \inst2|inst2|inst|9~13_combout\ : std_logic;
SIGNAL \inst2|inst2|inst|9~4_combout\ : std_logic;
SIGNAL \inst|inst2|22~combout\ : std_logic;
SIGNAL \inst|inst|81~5_combout\ : std_logic;
SIGNAL \inst2|inst2|inst2|2~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|2~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|9~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|9~1_combout\ : std_logic;
SIGNAL \inst|inst1|43~0_combout\ : std_logic;
SIGNAL \inst|inst1|43~1_combout\ : std_logic;
SIGNAL \inst|inst|45~7_combout\ : std_logic;
SIGNAL \inst|inst1|43~17\ : std_logic;
SIGNAL \inst|inst1|43~10_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|1~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|1~combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|9~2_combout\ : std_logic;
SIGNAL \inst2|inst2|inst4|9~3_combout\ : std_logic;
SIGNAL \inst|inst1|22~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst4|9~1_combout\ : std_logic;
SIGNAL \inst2|inst2|inst4|9~2_combout\ : std_logic;
SIGNAL \inst2|inst2|inst4|9~4_combout\ : std_logic;
SIGNAL \inst2|inst2|inst2|2~2\ : std_logic;
SIGNAL \inst2|inst2|inst4|9~9_combout\ : std_logic;
SIGNAL \inst2|inst2|inst4|9~5_combout\ : std_logic;
SIGNAL \inst|inst2|41~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst2|9~1_combout\ : std_logic;
SIGNAL \inst|inst1|43~20\ : std_logic;
SIGNAL \inst|inst1|41~12_combout\ : std_logic;
SIGNAL \inst|inst1|3~2\ : std_logic;
SIGNAL \inst|inst1|41~11_combout\ : std_logic;
SIGNAL \inst2|inst2|inst3|1~3\ : std_logic;
SIGNAL \inst2|inst2|inst2|1~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst2|9~2_combout\ : std_logic;
SIGNAL \inst2|inst2|inst2|9~3_combout\ : std_logic;
SIGNAL \inst2|inst|81~0_combout\ : std_logic;
SIGNAL \inst2|inst|82~0_combout\ : std_logic;
SIGNAL \inst2|inst|83~combout\ : std_logic;
SIGNAL \inst2|inst|84~0_combout\ : std_logic;
SIGNAL \inst2|inst|85~combout\ : std_logic;
SIGNAL \inst2|inst|86~0_combout\ : std_logic;
SIGNAL \inst2|inst|87~combout\ : std_logic;
SIGNAL \inst2|inst4|inst3~1_combout\ : std_logic;
SIGNAL \inst13|inst1|48~0_combout\ : std_logic;
SIGNAL \inst13|inst1|45~1_combout\ : std_logic;
SIGNAL \inst13|inst7|29~2_combout\ : std_logic;
SIGNAL \inst13|inst7|29~0_combout\ : std_logic;
SIGNAL \inst13|inst7|29~1_combout\ : std_logic;
SIGNAL \inst13|inst7|29~3_combout\ : std_logic;
SIGNAL \inst13|inst2~3_combout\ : std_logic;
SIGNAL \inst13|inst1|82~combout\ : std_logic;
SIGNAL \inst13|inst|77~combout\ : std_logic;
SIGNAL \inst13|inst|82~combout\ : std_logic;
SIGNAL \inst13|inst9|inst7~regout\ : std_logic;
SIGNAL \inst13|inst1|52~0_combout\ : std_logic;
SIGNAL \inst13|inst1|77~0_combout\ : std_logic;
SIGNAL \inst13|inst1|81~combout\ : std_logic;
SIGNAL \inst13|inst2~8\ : std_logic;
SIGNAL \inst13|inst2~5_combout\ : std_logic;
SIGNAL \inst13|inst7|ALT_INV_29~3_combout\ : std_logic;
SIGNAL \ALT_INV_reset~dataout\ : std_logic;

BEGIN

OA <= ww_OA;
ww_DIP8 <= DIP8;
ww_B0 <= B0;
ww_clk <= clk;
ww_reset <= reset;
ww_DIP7 <= DIP7;
ww_DIP6 <= DIP6;
ww_DIP5 <= DIP5;
ww_DIP4 <= DIP4;
ww_DIP3 <= DIP3;
ww_DIP2 <= DIP2;
ww_DIP1 <= DIP1;
OB <= ww_OB;
OC <= ww_OC;
OD <= ww_OD;
OE <= ww_OE;
\OF\ <= \ww_OF\;
OG <= ww_OG;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
P <= ww_P;
carry <= ww_carry;
AEQB <= ww_AEQB;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst13|inst7|ALT_INV_29~3_combout\ <= NOT \inst13|inst7|29~3_combout\;
\ALT_INV_reset~dataout\ <= NOT \reset~dataout\;

\inst|inst|41~3\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|41~3_combout\ = !\inst13|inst10|inst5~regout\ & !\inst13|inst10|inst6~regout\ & (\inst13|inst10|inst4~regout\ # !\inst13|inst10|inst7~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1101",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst5~regout\,
	datab => \inst13|inst10|inst6~regout\,
	datac => \inst13|inst10|inst7~regout\,
	datad => \inst13|inst10|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|41~3_combout\);

\inst|inst|81~4\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|81~4_combout\ = \inst13|inst10|inst5~regout\ $ !\inst13|inst10|inst6~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst10|inst5~regout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|81~4_combout\);

\inst|inst1|3~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|3~0_combout\ = !\inst|inst|41~4_combout\ & (\inst|inst|45~1_combout\ # !\inst13|inst10|inst6~regout\ & \inst|inst|45~3_combout\)
-- \inst|inst1|3~2\ = !\inst|inst|41~4_combout\ & (\inst|inst|45~1_combout\ # !\inst13|inst10|inst6~regout\ & \inst|inst|45~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5510",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|41~4_combout\,
	datab => \inst13|inst10|inst6~regout\,
	datac => \inst|inst|45~3_combout\,
	datad => \inst|inst|45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|3~0_combout\,
	cascout => \inst|inst1|3~2\);

\inst|inst1|43~2\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|43~2_combout\ = !\inst|inst1|3~0_combout\ & !\inst13|inst10|inst2~regout\ & !\inst13|inst10|inst1~regout\ & \inst|inst|43~6_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|3~0_combout\,
	datab => \inst13|inst10|inst2~regout\,
	datac => \inst13|inst10|inst1~regout\,
	datad => \inst|inst|43~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|43~2_combout\);

\inst13|inst9|inst5\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst5~regout\ = DFFEA(\DIP3~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP3~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst5~regout\);

\inst13|inst9|inst4\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst4~regout\ = DFFEA(\DIP4~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP4~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst4~regout\);

\inst13|inst9|inst\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst~regout\ = DFFEA(\DIP8~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP8~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst~regout\);

\inst13|inst9|inst1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst1~regout\ = DFFEA(\DIP7~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP7~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst1~regout\);

\inst13|inst1|46~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|46~0_combout\ = \inst13|inst8|inst4~regout\ & (\inst13|inst9|inst4~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst4~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst4~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|46~0_combout\);

\inst13|inst1|43~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|43~1_combout\ = \inst13|inst8|inst4~regout\ # \inst13|inst11|16~regout\ & \inst13|inst9|inst4~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst11|16~regout\,
	datac => \inst13|inst9|inst4~regout\,
	datad => \inst13|inst8|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|43~1_combout\);

\inst13|inst1|80~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|80~1_combout\ = \inst13|inst1|46~0_combout\ $ (\inst13|inst1|43~1_combout\ # \inst13|inst11|15~regout\ & !\inst13|inst9|inst4~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|46~0_combout\,
	datab => \inst13|inst1|43~1_combout\,
	datac => \inst13|inst11|15~regout\,
	datad => \inst13|inst9|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|80~1_combout\);

\inst13|inst1|80\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|80~combout\ = \inst13|inst1|80~1_combout\ $ (\inst13|inst7|23~0_combout\ # \inst13|inst|60~0_combout\ # \inst13|inst|63~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5556",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|80~1_combout\,
	datab => \inst13|inst7|23~0_combout\,
	datac => \inst13|inst|60~0_combout\,
	datad => \inst13|inst|63~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|80~combout\);

\inst|inst1|41~3\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|41~3_combout\ = \inst13|inst10|inst2~regout\ & !\inst|inst|43~8_combout\ & !\inst|inst|43~5_combout\ & !\inst13|inst10|inst1~regout\ # !\inst13|inst10|inst2~regout\ & \inst13|inst10|inst1~regout\ & (\inst|inst|43~8_combout\ # 
-- \inst|inst|43~5_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5402",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst2~regout\,
	datab => \inst|inst|43~8_combout\,
	datac => \inst|inst|43~5_combout\,
	datad => \inst13|inst10|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|41~3_combout\);

\inst6|inst6|104\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|104~regout\ = DFFEA(!\inst6|inst6|104~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|153~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|153~combout\,
	datad => \inst6|inst6|104~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|104~regout\);

\inst6|inst6|56\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|56~regout\ = DFFEA(!\inst6|inst6|56~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|142~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|142~combout\,
	datad => \inst6|inst6|56~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|56~regout\);

\inst6|inst7\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst7~combout\ = \inst6|inst6|56~regout\ & \inst6|inst6|104~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst6|56~regout\,
	datad => \inst6|inst6|104~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst7~combout\);

\inst6|inst6|154~0\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|154~0_combout\ = \inst6|inst3~regout\ $ (\inst6|inst6|56~regout\ & \inst6|inst6|104~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|56~regout\,
	datac => \inst6|inst6|104~regout\,
	datad => \inst6|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|154~0_combout\);

\inst6|inst5\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst5~combout\ = \inst6|inst1~regout\ $ \inst6|inst~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst1~regout\,
	datad => \inst6|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst5~combout\);

\inst6|inst6|75\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|75~regout\ = DFFEA(!\inst6|inst6|75~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|148~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|148~combout\,
	datad => \inst6|inst6|75~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|75~regout\);

\inst6|inst6|76\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|76~regout\ = DFFEA(!\inst6|inst6|76~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|150~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|150~combout\,
	datad => \inst6|inst6|76~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|76~regout\);

\inst6|inst6|93\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|93~regout\ = DFFEA(!\inst6|inst6|93~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|96~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|96~combout\,
	datad => \inst6|inst6|93~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|93~regout\);

\inst6|inst6|66\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|66~regout\ = DFFEA(!\inst6|inst6|66~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|144~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|144~combout\,
	datad => \inst6|inst6|66~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|66~regout\);

\inst6|inst6|70\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|70~regout\ = DFFEA(!\inst6|inst6|70~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|146~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|146~combout\,
	datad => \inst6|inst6|70~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|70~regout\);

\inst6|inst6|36\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|36~regout\ = DFFEA(!\inst6|inst6|36~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|136~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|136~combout\,
	datad => \inst6|inst6|36~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|36~regout\);

\inst6|inst6|45\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|45~regout\ = DFFEA(!\inst6|inst6|45~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|138~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|138~combout\,
	datad => \inst6|inst6|45~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|45~regout\);

\inst6|inst6|50\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|50~regout\ = DFFEA(!\inst6|inst6|50~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|140~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|140~combout\,
	datad => \inst6|inst6|50~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|50~regout\);

\inst6|inst6|16\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|16~regout\ = DFFEA(!\inst6|inst6|16~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|13~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|13~combout\,
	datad => \inst6|inst6|16~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|16~regout\);

\inst6|inst6|24\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|24~regout\ = DFFEA(!\inst6|inst6|24~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|133~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|133~combout\,
	datad => \inst6|inst6|24~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|24~regout\);

\inst6|inst6|32\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|32~regout\ = DFFEA(!\inst6|inst6|32~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|134~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|134~combout\,
	datad => \inst6|inst6|32~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|32~regout\);

\inst6|inst6|9\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|9~regout\ = DFFEA(!\inst6|inst6|9~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , \inst6|inst6|8~regout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|8~regout\,
	datad => \inst6|inst6|9~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|9~regout\);

\inst6|inst6|8\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|8~regout\ = DFFEA(!\inst6|inst6|8~regout\, GLOBAL(\inst6|inst6|154~0_combout\), !\inst6|inst5~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst6|8~regout\,
	aclr => \inst6|inst5~combout\,
	clk => \inst6|inst6|154~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst6|8~regout\);

\inst6|inst6|13\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|13~combout\ = \inst6|inst6|8~regout\ & \inst6|inst6|9~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst6|8~regout\,
	datad => \inst6|inst6|9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|13~combout\);

\inst6|inst6|136\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|136~combout\ = \inst6|inst6|13~combout\ & \inst6|inst6|32~regout\ & \inst6|inst6|24~regout\ & \inst6|inst6|16~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|13~combout\,
	datab => \inst6|inst6|32~regout\,
	datac => \inst6|inst6|24~regout\,
	datad => \inst6|inst6|16~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|136~combout\);

\inst6|inst6|142\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|142~combout\ = \inst6|inst6|136~combout\ & \inst6|inst6|50~regout\ & \inst6|inst6|45~regout\ & \inst6|inst6|36~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|136~combout\,
	datab => \inst6|inst6|50~regout\,
	datac => \inst6|inst6|45~regout\,
	datad => \inst6|inst6|36~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|142~combout\);

\inst6|inst6|148\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|148~combout\ = \inst6|inst6|142~combout\ & \inst6|inst6|56~regout\ & \inst6|inst6|70~regout\ & \inst6|inst6|66~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|142~combout\,
	datab => \inst6|inst6|56~regout\,
	datac => \inst6|inst6|70~regout\,
	datad => \inst6|inst6|66~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|148~combout\);

\inst6|inst6|153\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|153~combout\ = \inst6|inst6|148~combout\ & \inst6|inst6|93~regout\ & \inst6|inst6|76~regout\ & \inst6|inst6|75~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|148~combout\,
	datab => \inst6|inst6|93~regout\,
	datac => \inst6|inst6|76~regout\,
	datad => \inst6|inst6|75~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|153~combout\);

\inst6|inst6|133\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|133~combout\ = \inst6|inst6|16~regout\ & \inst6|inst6|8~regout\ & \inst6|inst6|9~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst6|16~regout\,
	datac => \inst6|inst6|8~regout\,
	datad => \inst6|inst6|9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|133~combout\);

\inst6|inst6|138\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|138~combout\ = \inst6|inst6|133~combout\ & \inst6|inst6|36~regout\ & \inst6|inst6|32~regout\ & \inst6|inst6|24~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|133~combout\,
	datab => \inst6|inst6|36~regout\,
	datac => \inst6|inst6|32~regout\,
	datad => \inst6|inst6|24~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|138~combout\);

\inst6|inst6|144\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|144~combout\ = \inst6|inst6|138~combout\ & \inst6|inst6|56~regout\ & \inst6|inst6|50~regout\ & \inst6|inst6|45~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|138~combout\,
	datab => \inst6|inst6|56~regout\,
	datac => \inst6|inst6|50~regout\,
	datad => \inst6|inst6|45~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|144~combout\);

\inst6|inst6|150\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|150~combout\ = \inst6|inst6|144~combout\ & \inst6|inst6|75~regout\ & \inst6|inst6|70~regout\ & \inst6|inst6|66~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|144~combout\,
	datab => \inst6|inst6|75~regout\,
	datac => \inst6|inst6|70~regout\,
	datad => \inst6|inst6|66~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|150~combout\);

\inst6|inst6|134\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|134~combout\ = \inst6|inst6|24~regout\ & \inst6|inst6|16~regout\ & \inst6|inst6|8~regout\ & \inst6|inst6|9~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|24~regout\,
	datab => \inst6|inst6|16~regout\,
	datac => \inst6|inst6|8~regout\,
	datad => \inst6|inst6|9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|134~combout\);

\inst6|inst6|140\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|140~combout\ = \inst6|inst6|134~combout\ & \inst6|inst6|45~regout\ & \inst6|inst6|36~regout\ & \inst6|inst6|32~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|134~combout\,
	datab => \inst6|inst6|45~regout\,
	datac => \inst6|inst6|36~regout\,
	datad => \inst6|inst6|32~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|140~combout\);

\inst6|inst6|146\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|146~combout\ = \inst6|inst6|140~combout\ & \inst6|inst6|56~regout\ & \inst6|inst6|50~regout\ & \inst6|inst6|66~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|140~combout\,
	datab => \inst6|inst6|56~regout\,
	datac => \inst6|inst6|50~regout\,
	datad => \inst6|inst6|66~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|146~combout\);

\inst6|inst6|96\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst6|96~combout\ = \inst6|inst6|146~combout\ & \inst6|inst6|76~regout\ & \inst6|inst6|75~regout\ & \inst6|inst6|70~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|146~combout\,
	datab => \inst6|inst6|76~regout\,
	datac => \inst6|inst6|75~regout\,
	datad => \inst6|inst6|70~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6|inst6|96~combout\);

\clk~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_clk,
	dataout => \clk~dataout\);

\inst6|inst3\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst3~regout\ = DFFEA(!\inst6|inst3~regout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst3~regout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst3~regout\);

\inst4|inst1\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst1~regout\ = DFFEA(!\inst4|inst1~regout\, \inst6|inst3~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst1~regout\,
	clk => \inst6|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst1~regout\);

\inst4|inst2\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst2~regout\ = DFFEA(!\inst4|inst2~regout\, \inst4|inst1~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst2~regout\,
	clk => \inst4|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst2~regout\);

\inst4|inst3\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst3~regout\ = DFFEA(!\inst4|inst3~regout\, \inst4|inst2~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst3~regout\,
	clk => \inst4|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst3~regout\);

\inst4|inst5\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst5~regout\ = DFFEA(!\inst4|inst5~regout\, \inst4|inst3~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst5~regout\,
	clk => \inst4|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst5~regout\);

\inst4|inst6\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst6~regout\ = DFFEA(!\inst4|inst6~regout\, \inst4|inst5~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst6~regout\,
	clk => \inst4|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst6~regout\);

\inst4|inst7\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst7~regout\ = DFFEA(!\inst4|inst7~regout\, \inst4|inst6~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst7~regout\,
	clk => \inst4|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst7~regout\);

\inst4|inst8\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst8~regout\ = DFFEA(!\inst4|inst8~regout\, \inst4|inst7~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst8~regout\,
	clk => \inst4|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst8~regout\);

\inst4|inst9\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst9~regout\ = DFFEA(!\inst4|inst9~regout\, \inst4|inst8~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst9~regout\,
	clk => \inst4|inst8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst9~regout\);

\inst4|inst10\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst10~regout\ = DFFEA(!\inst4|inst10~regout\, \inst4|inst9~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst10~regout\,
	clk => \inst4|inst9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst10~regout\);

\inst4|inst11\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst11~regout\ = DFFEA(!\inst4|inst11~regout\, \inst4|inst10~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst11~regout\,
	clk => \inst4|inst10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst11~regout\);

\inst4|inst12\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst12~regout\ = DFFEA(!\inst4|inst12~regout\, \inst4|inst11~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst12~regout\,
	clk => \inst4|inst11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst12~regout\);

\inst4|inst13\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst13~regout\ = DFFEA(!\inst4|inst13~regout\, \inst4|inst12~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst13~regout\,
	clk => \inst4|inst12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst13~regout\);

\inst4|inst14\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst14~regout\ = DFFEA(!\inst4|inst14~regout\, \inst4|inst13~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst14~regout\,
	clk => \inst4|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst14~regout\);

\inst4|inst15\ : flex10ke_lcell
-- Equation(s):
-- \inst4|inst15~regout\ = DFFEA(!\inst4|inst15~regout\, \inst4|inst14~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst15~regout\,
	clk => \inst4|inst14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|inst15~regout\);

\inst2|inst3|inst2\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst3|inst2~regout\ = DFFEA(!\inst2|inst3|inst2~regout\, \inst4|inst15~regout\, , , \inst2|inst3|inst~regout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|inst~regout\,
	datad => \inst2|inst3|inst2~regout\,
	clk => \inst4|inst15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst3|inst2~regout\);

\inst2|inst3|inst\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst3|inst~regout\ = DFFEA(!\inst2|inst3|inst~regout\, \inst4|inst15~regout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst3|inst~regout\,
	clk => \inst4|inst15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|inst3|inst~regout\);

\DIP7~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP7,
	dataout => \DIP7~dataout\);

\reset~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_reset,
	dataout => \reset~dataout\);

\B0~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B0,
	dataout => \B0~dataout\);

\inst6|inst\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst~regout\ = DFFEA(\B0~dataout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \B0~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst~regout\);

\inst6|inst1\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst1~regout\ = DFFEA(\inst6|inst~regout\, GLOBAL(\clk~dataout\), , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst6|inst~regout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst1~regout\);

\inst6|inst8\ : flex10ke_lcell
-- Equation(s):
-- \inst6|inst8~regout\ = DFFEA(\inst6|inst1~regout\, GLOBAL(\clk~dataout\), , , \inst6|inst7~combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7~combout\,
	datad => \inst6|inst1~regout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|inst8~regout\);

\inst15|inst\ : flex10ke_lcell
-- Equation(s):
-- \inst15|inst~regout\ = DFFEA(!\inst15|inst~regout\, \inst6|inst8~regout\, \reset~dataout\, , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst15|inst~regout\,
	aclr => \ALT_INV_reset~dataout\,
	clk => \inst6|inst8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst~regout\);

\inst15|inst2\ : flex10ke_lcell
-- Equation(s):
-- \inst15|inst2~regout\ = DFFEA(!\inst15|inst2~regout\, \inst6|inst8~regout\, \reset~dataout\, , \inst15|inst~regout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst~regout\,
	datad => \inst15|inst2~regout\,
	aclr => \ALT_INV_reset~dataout\,
	clk => \inst6|inst8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst2~regout\);

\inst17|33~2\ : flex10ke_lcell
-- Equation(s):
-- \inst17|33~2_combout\ = \inst15|inst~regout\ # !\inst15|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst~regout\,
	datad => \inst15|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|33~2_combout\);

\inst13|inst11|14\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst11|14~regout\ = DFFEA(\DIP7~dataout\, \inst17|33~2_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP7~dataout\,
	clk => \inst17|33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst11|14~regout\);

\DIP8~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP8,
	dataout => \DIP8~dataout\);

\inst13|inst11|13\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst11|13~regout\ = DFFEA(\DIP8~dataout\, \inst17|33~2_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP8~dataout\,
	clk => \inst17|33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst11|13~regout\);

\inst17|33~0\ : flex10ke_lcell
-- Equation(s):
-- \inst17|33~0_combout\ = \inst15|inst~regout\ # \inst15|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst~regout\,
	datad => \inst15|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|33~0_combout\);

\inst13|inst8|inst\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst~regout\ = DFFEA(\DIP8~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP8~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst~regout\);

\inst13|inst|46~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|46~0_combout\ = \inst13|inst8|inst~regout\ & (\inst13|inst9|inst~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|46~0_combout\);

\DIP6~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP6,
	dataout => \DIP6~dataout\);

\inst13|inst11|15\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst11|15~regout\ = DFFEA(\DIP6~dataout\, \inst17|33~2_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP6~dataout\,
	clk => \inst17|33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst11|15~regout\);

\DIP5~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP5,
	dataout => \DIP5~dataout\);

\inst13|inst11|16\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst11|16~regout\ = DFFEA(\DIP5~dataout\, \inst17|33~2_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP5~dataout\,
	clk => \inst17|33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst11|16~regout\);

\inst13|inst|43~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|43~0_combout\ = \inst13|inst8|inst~regout\ # \inst13|inst9|inst~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|43~0_combout\);

\inst17|33~3\ : flex10ke_lcell
-- Equation(s):
-- \inst17|33~3_combout\ = !\inst15|inst2~regout\ # !\inst15|inst~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst~regout\,
	datad => \inst15|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|33~3_combout\);

\inst13|inst10|inst\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst~regout\ = DFFEA(\inst13|inst|46~0_combout\ $ \inst13|inst|43~0_combout\, \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|46~0_combout\,
	datad => \inst13|inst|43~0_combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst~regout\);

\inst17|33~1\ : flex10ke_lcell
-- Equation(s):
-- \inst17|33~1_combout\ = \inst15|inst2~regout\ # !\inst15|inst~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst2~regout\,
	datad => \inst15|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17|33~1_combout\);

\inst13|inst9|inst2\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst2~regout\ = DFFEA(\DIP6~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP6~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst2~regout\);

\inst13|inst8|inst2\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst2~regout\ = DFFEA(\DIP6~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP6~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst2~regout\);

\inst13|inst|45~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|45~1_combout\ = \inst13|inst8|inst2~regout\ # \inst13|inst11|16~regout\ & \inst13|inst9|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst11|16~regout\,
	datac => \inst13|inst9|inst2~regout\,
	datad => \inst13|inst8|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|45~1_combout\);

\inst13|inst|82~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|82~0_combout\ = \inst13|inst|48~0_combout\ $ (\inst13|inst|45~1_combout\ # \inst13|inst11|15~regout\ & !\inst13|inst9|inst2~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|48~0_combout\,
	datab => \inst13|inst|45~1_combout\,
	datac => \inst13|inst11|15~regout\,
	datad => \inst13|inst9|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|82~0_combout\);

\inst13|inst8|inst1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst1~regout\ = DFFEA(\DIP7~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP7~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst1~regout\);

\inst13|inst|47~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|47~0_combout\ = \inst13|inst8|inst1~regout\ & (\inst13|inst9|inst1~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst1~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst1~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|47~0_combout\);

\inst13|inst|79\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|79~combout\ = !\inst13|inst|43~0_combout\ # !\inst13|inst|46~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|46~0_combout\,
	datad => \inst13|inst|43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|79~combout\);

\inst13|inst10|inst2\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst2~regout\ = DFFEA(\inst13|inst|82~0_combout\ $ (\inst13|inst|44~0_combout\ & (\inst13|inst|47~0_combout\ # !\inst13|inst|79~combout\)), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6c66",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|44~0_combout\,
	datab => \inst13|inst|82~0_combout\,
	datac => \inst13|inst|47~0_combout\,
	datad => \inst13|inst|79~combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst2~regout\);

\inst13|inst8|inst3\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst3~regout\ = DFFEA(\DIP5~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP5~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst3~regout\);

\inst13|inst|51~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|51~0_combout\ = \inst13|inst8|inst3~regout\ # \inst13|inst9|inst3~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst3~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst3~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|51~0_combout\);

\inst13|inst|52~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|52~0_combout\ = \inst13|inst8|inst3~regout\ & (\inst13|inst9|inst3~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst3~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst3~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|52~0_combout\);

\inst13|inst|45~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|45~0_combout\ = \inst13|inst8|inst2~regout\ # \inst13|inst9|inst2~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst2~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst2~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|45~0_combout\);

\inst13|inst7|23~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst7|23~0_combout\ = !\inst13|inst|52~0_combout\ & !\inst13|inst|45~0_combout\ # !\inst13|inst|51~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|51~0_combout\,
	datac => \inst13|inst|52~0_combout\,
	datad => \inst13|inst|45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst7|23~0_combout\);

\inst13|inst|48~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|48~0_combout\ = \inst13|inst8|inst2~regout\ & (\inst13|inst9|inst2~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst2~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst2~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|48~0_combout\);

\inst13|inst|60~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|60~0_combout\ = !\inst13|inst|52~0_combout\ & !\inst13|inst|48~0_combout\ & !\inst13|inst|47~0_combout\ & !\inst13|inst|46~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|52~0_combout\,
	datab => \inst13|inst|48~0_combout\,
	datac => \inst13|inst|47~0_combout\,
	datad => \inst13|inst|46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|60~0_combout\);

\inst13|inst|44~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|44~0_combout\ = \inst13|inst8|inst1~regout\ # \inst13|inst9|inst1~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst1~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst1~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|44~0_combout\);

\inst13|inst|60~2\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|60~6\ = !\inst13|inst|52~0_combout\ & !\inst13|inst|48~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|52~0_combout\,
	datad => \inst13|inst|48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|60~2_combout\,
	cascout => \inst13|inst|60~6\);

\inst13|inst|63~3\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|63~3_combout\ = (!\inst13|inst|47~0_combout\ & !\inst13|inst|43~0_combout\ # !\inst13|inst|44~0_combout\) & CASCADE(\inst13|inst|60~6\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|44~0_combout\,
	datac => \inst13|inst|47~0_combout\,
	datad => \inst13|inst|43~0_combout\,
	cascin => \inst13|inst|60~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|63~3_combout\);

\inst13|inst1|66~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|66~1_combout\ = !\inst13|inst1|46~0_combout\ & (\inst13|inst7|23~0_combout\ # \inst13|inst|60~0_combout\ # \inst13|inst|63~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5554",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|46~0_combout\,
	datab => \inst13|inst7|23~0_combout\,
	datac => \inst13|inst|60~0_combout\,
	datad => \inst13|inst|63~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|66~1_combout\);

\DIP3~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP3,
	dataout => \DIP3~dataout\);

\inst13|inst8|inst5\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst5~regout\ = DFFEA(\DIP3~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP3~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst5~regout\);

\inst13|inst1|44~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|44~0_combout\ = \inst13|inst8|inst5~regout\ # \inst13|inst9|inst5~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst5~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst5~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|44~0_combout\);

\DIP4~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP4,
	dataout => \DIP4~dataout\);

\inst13|inst8|inst4\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst4~regout\ = DFFEA(\DIP4~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP4~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst4~regout\);

\inst13|inst1|43~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|43~0_combout\ = \inst13|inst8|inst4~regout\ # \inst13|inst9|inst4~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst4~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst4~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|43~0_combout\);

\inst13|inst1|47~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|47~0_combout\ = \inst13|inst8|inst5~regout\ & (\inst13|inst9|inst5~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst5~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst5~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|47~0_combout\);

\inst13|inst1|75~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|75~0_combout\ = !\inst13|inst1|43~0_combout\ & !\inst13|inst1|47~0_combout\ # !\inst13|inst1|44~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|44~0_combout\,
	datac => \inst13|inst1|43~0_combout\,
	datad => \inst13|inst1|47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|75~0_combout\);

\DIP2~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP2,
	dataout => \DIP2~dataout\);

\inst13|inst9|inst6\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst6~regout\ = DFFEA(\DIP2~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP2~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst6~regout\);

\inst13|inst8|inst6\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst6~regout\ = DFFEA(\DIP2~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP2~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst6~regout\);

\inst13|inst1|45~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|45~0_combout\ = \inst13|inst8|inst6~regout\ # \inst13|inst11|16~regout\ & \inst13|inst9|inst6~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst11|16~regout\,
	datac => \inst13|inst9|inst6~regout\,
	datad => \inst13|inst8|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|45~0_combout\);

\inst13|inst1|82~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|82~0_combout\ = \inst13|inst1|48~0_combout\ $ (\inst13|inst1|45~0_combout\ # \inst13|inst11|15~regout\ & !\inst13|inst9|inst6~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|48~0_combout\,
	datab => \inst13|inst1|45~0_combout\,
	datac => \inst13|inst11|15~regout\,
	datad => \inst13|inst9|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|82~0_combout\);

\inst13|inst10|inst6\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst6~regout\ = DFFEA(\inst13|inst1|82~0_combout\ $ (!\inst13|inst1|75~0_combout\ & (\inst13|inst1|47~0_combout\ # !\inst13|inst1|66~1_combout\)), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f40b",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|47~0_combout\,
	datab => \inst13|inst1|66~1_combout\,
	datac => \inst13|inst1|75~0_combout\,
	datad => \inst13|inst1|82~0_combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst6~regout\);

\inst13|inst10|inst4\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst4~regout\ = DFFEA(\inst13|inst1|80~1_combout\ $ (!\inst13|inst7|23~0_combout\ & !\inst13|inst|60~0_combout\ & !\inst13|inst|63~3_combout\), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "aaa9",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|80~1_combout\,
	datab => \inst13|inst7|23~0_combout\,
	datac => \inst13|inst|60~0_combout\,
	datad => \inst13|inst|63~3_combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst4~regout\);

\inst13|inst9|inst3\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst3~regout\ = DFFEA(\DIP5~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP5~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst3~regout\);

\inst13|inst|51~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|51~1_combout\ = \inst13|inst8|inst3~regout\ # \inst13|inst11|16~regout\ & \inst13|inst9|inst3~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst11|16~regout\,
	datac => \inst13|inst9|inst3~regout\,
	datad => \inst13|inst8|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|51~1_combout\);

\inst13|inst|77~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|77~0_combout\ = \inst13|inst|52~0_combout\ $ (\inst13|inst|51~1_combout\ # \inst13|inst11|15~regout\ & !\inst13|inst9|inst3~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6656",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|52~0_combout\,
	datab => \inst13|inst|51~1_combout\,
	datac => \inst13|inst11|15~regout\,
	datad => \inst13|inst9|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|77~0_combout\);

\inst13|inst|74~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|74~0_combout\ = !\inst13|inst|47~0_combout\ & (!\inst13|inst|43~0_combout\ # !\inst13|inst|46~0_combout\) # !\inst13|inst|44~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5777",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|44~0_combout\,
	datab => \inst13|inst|47~0_combout\,
	datac => \inst13|inst|46~0_combout\,
	datad => \inst13|inst|43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|74~0_combout\);

\inst13|inst10|inst3\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst3~regout\ = DFFEA(\inst13|inst|77~0_combout\ $ (\inst13|inst|45~0_combout\ & (\inst13|inst|48~0_combout\ # !\inst13|inst|74~0_combout\)), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6c66",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|45~0_combout\,
	datab => \inst13|inst|77~0_combout\,
	datac => \inst13|inst|48~0_combout\,
	datad => \inst13|inst|74~0_combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst3~regout\);

\inst13|inst10|inst5\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst5~regout\ = DFFEA(\inst13|inst1|44~0_combout\ $ \inst13|inst1|47~0_combout\ $ (!\inst13|inst1|66~1_combout\ & \inst13|inst1|43~0_combout\), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6966",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|44~0_combout\,
	datab => \inst13|inst1|47~0_combout\,
	datac => \inst13|inst1|66~1_combout\,
	datad => \inst13|inst1|43~0_combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst5~regout\);

\inst|inst|43~3\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~3_combout\ = \inst13|inst10|inst7~regout\ & !\inst13|inst10|inst4~regout\ & !\inst13|inst10|inst3~regout\ & \inst13|inst10|inst5~regout\ # !\inst13|inst10|inst7~regout\ & \inst13|inst10|inst4~regout\ & (\inst13|inst10|inst5~regout\ # 
-- !\inst13|inst10|inst3~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4604",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst7~regout\,
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst3~regout\,
	datad => \inst13|inst10|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~3_combout\);

\inst|inst|43~2\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~2_combout\ = \inst13|inst10|inst7~regout\ & !\inst13|inst10|inst4~regout\ & !\inst13|inst10|inst3~regout\ & \inst13|inst10|inst5~regout\ # !\inst13|inst10|inst7~regout\ & \inst13|inst10|inst4~regout\ & (\inst13|inst10|inst3~regout\ # 
-- !\inst13|inst10|inst5~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4244",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst7~regout\,
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst3~regout\,
	datad => \inst13|inst10|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~2_combout\);

\inst|inst|43~8\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~8_combout\ = \inst13|inst10|inst6~regout\ & \inst|inst|43~3_combout\ # !\inst13|inst10|inst6~regout\ & (\inst|inst|43~2_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst6~regout\,
	datac => \inst|inst|43~3_combout\,
	datad => \inst|inst|43~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~8_combout\);

\DIP1~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_DIP1,
	dataout => \DIP1~dataout\);

\inst13|inst8|inst7\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst8|inst7~regout\ = DFFEA(\DIP1~dataout\, \inst17|33~0_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP1~dataout\,
	clk => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8|inst7~regout\);

\inst13|inst1|51~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|51~0_combout\ = \inst13|inst8|inst7~regout\ # \inst13|inst9|inst7~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst7~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst7~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|51~0_combout\);

\inst13|inst1|74~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|74~0_combout\ = !\inst13|inst1|48~0_combout\ & (!\inst13|inst1|43~0_combout\ & !\inst13|inst1|47~0_combout\ # !\inst13|inst1|44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1115",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|48~0_combout\,
	datab => \inst13|inst1|44~0_combout\,
	datac => \inst13|inst1|43~0_combout\,
	datad => \inst13|inst1|47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|74~0_combout\);

\inst13|inst1|74~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|74~1_combout\ = \inst13|inst1|74~0_combout\ # !\inst13|inst1|45~0_combout\ & (\inst13|inst9|inst6~regout\ # !\inst13|inst11|15~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff51",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|45~0_combout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst9|inst6~regout\,
	datad => \inst13|inst1|74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|74~1_combout\);

\inst13|inst1|74\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|74~combout\ = \inst13|inst1|74~1_combout\ # !\inst13|inst1|48~0_combout\ & !\inst13|inst1|47~0_combout\ & \inst13|inst1|66~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|48~0_combout\,
	datab => \inst13|inst1|47~0_combout\,
	datac => \inst13|inst1|66~1_combout\,
	datad => \inst13|inst1|74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|74~combout\);

\inst13|inst10|inst7\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst7~regout\ = DFFEA(\inst13|inst1|51~0_combout\ $ \inst13|inst1|74~combout\ $ (!\inst13|inst8|inst7~regout\ # !\inst13|inst1|52~0_combout\), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|52~0_combout\,
	datab => \inst13|inst8|inst7~regout\,
	datac => \inst13|inst1|51~0_combout\,
	datad => \inst13|inst1|74~combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst7~regout\);

\inst|inst|43~4\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~4_combout\ = !\inst13|inst10|inst5~regout\ & \inst13|inst10|inst6~regout\ & (\inst13|inst10|inst4~regout\ $ !\inst13|inst10|inst7~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst5~regout\,
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst7~regout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~4_combout\);

\inst|inst|41~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|41~0_combout\ = !\inst13|inst10|inst4~regout\ & !\inst13|inst10|inst6~regout\ & \inst13|inst10|inst7~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst6~regout\,
	datad => \inst13|inst10|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|41~0_combout\);

\inst|inst|43~5\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~5_combout\ = \inst13|inst10|inst3~regout\ & (\inst|inst|43~4_combout\ # \inst13|inst10|inst5~regout\ & \inst|inst|41~0_combout\) # !\inst13|inst10|inst3~regout\ & (\inst|inst|41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst5~regout\,
	datab => \inst13|inst10|inst3~regout\,
	datac => \inst|inst|43~4_combout\,
	datad => \inst|inst|41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~5_combout\);

\inst|inst1|22~1\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|22~1_combout\ = !\inst13|inst10|inst2~regout\ & (\inst|inst|43~8_combout\ # \inst|inst|43~5_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst2~regout\,
	datac => \inst|inst|43~8_combout\,
	datad => \inst|inst|43~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|22~1_combout\);

\inst13|inst10|inst1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst10|inst1~regout\ = DFFEA(\inst13|inst|47~0_combout\ $ \inst13|inst|44~0_combout\ $ (\inst13|inst|46~0_combout\ & \inst13|inst|43~0_combout\), \inst17|33~3_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|47~0_combout\,
	datab => \inst13|inst|44~0_combout\,
	datac => \inst13|inst|46~0_combout\,
	datad => \inst13|inst|43~0_combout\,
	clk => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10|inst1~regout\);

\inst|inst|45~3\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|45~3_combout\ = !\inst13|inst10|inst3~regout\ & \inst13|inst10|inst5~regout\ & (\inst13|inst10|inst4~regout\ $ !\inst13|inst10|inst7~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst3~regout\,
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst7~regout\,
	datad => \inst13|inst10|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|45~3_combout\);

\inst|inst|41~11\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|41~21\ = \inst13|inst10|inst6~regout\ $ (\inst13|inst10|inst7~regout\ & !\inst13|inst10|inst4~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst7~regout\,
	datac => \inst13|inst10|inst4~regout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|41~11_combout\,
	cascout => \inst|inst|41~21\);

\inst|inst|41~14\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|41~14_combout\ = (\inst13|inst10|inst5~regout\ $ !\inst13|inst10|inst3~regout\) & CASCADE(\inst|inst|41~21\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst10|inst5~regout\,
	datad => \inst13|inst10|inst3~regout\,
	cascin => \inst|inst|41~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|41~14_combout\);

\inst|inst|25~1\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|25~1_combout\ = !\inst13|inst10|inst3~regout\ & \inst13|inst10|inst5~regout\
-- \inst|inst|25~3\ = !\inst13|inst10|inst3~regout\ & \inst13|inst10|inst5~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst10|inst3~regout\,
	datad => \inst13|inst10|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|25~1_combout\,
	cascout => \inst|inst|25~3\);

\inst|inst|41~13\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|41~13_combout\ = (\inst13|inst10|inst4~regout\ & !\inst13|inst10|inst7~regout\ & !\inst13|inst10|inst6~regout\ # !\inst13|inst10|inst4~regout\ & \inst13|inst10|inst7~regout\ & \inst13|inst10|inst6~regout\) & CASCADE(\inst|inst|25~3\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "300c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst7~regout\,
	datad => \inst13|inst10|inst6~regout\,
	cascin => \inst|inst|25~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|41~13_combout\);

\inst|inst|41~4\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|41~4_combout\ = \inst|inst|41~14_combout\ # \inst|inst|41~13_combout\ # \inst|inst|41~3_combout\ & \inst13|inst10|inst3~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|41~3_combout\,
	datab => \inst13|inst10|inst3~regout\,
	datac => \inst|inst|41~14_combout\,
	datad => \inst|inst|41~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|41~4_combout\);

\inst|inst1|22~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|22~0_combout\ = !\inst|inst|45~1_combout\ & \inst|inst|41~4_combout\ & (\inst13|inst10|inst6~regout\ # !\inst|inst|45~3_combout\)
-- \inst|inst1|22~3\ = !\inst|inst|45~1_combout\ & \inst|inst|41~4_combout\ & (\inst13|inst10|inst6~regout\ # !\inst|inst|45~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|45~1_combout\,
	datab => \inst|inst|45~3_combout\,
	datac => \inst13|inst10|inst6~regout\,
	datad => \inst|inst|41~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|22~0_combout\,
	cascout => \inst|inst1|22~3\);

\inst2|inst2|inst|9~14\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst|9~14_combout\ = (\inst13|inst10|inst1~regout\ # !\inst|inst|43~8_combout\ & !\inst|inst|43~5_combout\ & \inst13|inst10|inst2~regout\) & CASCADE(\inst|inst1|22~3\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~8_combout\,
	datab => \inst|inst|43~5_combout\,
	datac => \inst13|inst10|inst2~regout\,
	datad => \inst13|inst10|inst1~regout\,
	cascin => \inst|inst1|22~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst|9~14_combout\);

\inst|inst|43~7\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~7_combout\ = \inst13|inst10|inst4~regout\ $ !\inst13|inst10|inst7~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst10|inst4~regout\,
	datad => \inst13|inst10|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~7_combout\);

\inst|inst|25~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|25~0_combout\ = !\inst13|inst10|inst4~regout\ & \inst13|inst10|inst7~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst10|inst4~regout\,
	datad => \inst13|inst10|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|25~0_combout\);

\inst|inst|3~1\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|3~4\ = !\inst13|inst10|inst5~regout\ & \inst13|inst10|inst6~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst10|inst5~regout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|3~1_combout\,
	cascout => \inst|inst|3~4\);

\inst|inst|45~8\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|45~8_combout\ = (\inst13|inst10|inst7~regout\ & !\inst13|inst10|inst4~regout\ & !\inst13|inst10|inst3~regout\ # !\inst13|inst10|inst7~regout\ & \inst13|inst10|inst4~regout\ & \inst13|inst10|inst3~regout\) & CASCADE(\inst|inst|3~4\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "300c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst7~regout\,
	datac => \inst13|inst10|inst4~regout\,
	datad => \inst13|inst10|inst3~regout\,
	cascin => \inst|inst|3~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|45~8_combout\);

\inst|inst|45~1\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|45~1_combout\ = \inst|inst|45~8_combout\ # \inst|inst|81~4_combout\ & \inst|inst|25~0_combout\ & \inst13|inst10|inst3~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|81~4_combout\,
	datab => \inst|inst|25~0_combout\,
	datac => \inst13|inst10|inst3~regout\,
	datad => \inst|inst|45~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|45~1_combout\);

\inst|inst|45~2\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|45~2_combout\ = \inst|inst|45~1_combout\ # !\inst13|inst10|inst6~regout\ & \inst|inst|25~1_combout\ & \inst|inst|43~7_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst6~regout\,
	datab => \inst|inst|25~1_combout\,
	datac => \inst|inst|43~7_combout\,
	datad => \inst|inst|45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|45~2_combout\);

\inst2|inst2|inst|9~2\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst|9~2_combout\ = \inst|inst1|22~1_combout\ & (\inst|inst|45~2_combout\ # !\inst|inst|41~4_combout\) # !\inst|inst1|22~1_combout\ & (\inst2|inst2|inst|9~14_combout\ # !\inst|inst|41~4_combout\ & \inst|inst|45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd74",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|41~4_combout\,
	datab => \inst|inst1|22~1_combout\,
	datac => \inst2|inst2|inst|9~14_combout\,
	datad => \inst|inst|45~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst|9~2_combout\);

\inst2|inst2|inst|9~3\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst|9~3_combout\ = \inst2|inst3|inst~regout\ & (\inst2|inst2|inst|9~2_combout\) # !\inst2|inst3|inst~regout\ & \inst13|inst10|inst~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst3|inst~regout\,
	datac => \inst13|inst10|inst~regout\,
	datad => \inst2|inst2|inst|9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst|9~3_combout\);

\inst|inst|81~1\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|81~1_combout\ = !\inst13|inst10|inst4~regout\ & (\inst13|inst10|inst7~regout\ & !\inst13|inst10|inst5~regout\ & \inst13|inst10|inst6~regout\ # !\inst13|inst10|inst7~regout\ & (!\inst13|inst10|inst6~regout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1005",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst4~regout\,
	datab => \inst13|inst10|inst5~regout\,
	datac => \inst13|inst10|inst7~regout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|81~1_combout\);

\inst|inst|81~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|81~0_combout\ = !\inst13|inst10|inst6~regout\ & \inst13|inst10|inst7~regout\ & (!\inst13|inst10|inst3~regout\ # !\inst13|inst10|inst4~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1500",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst6~regout\,
	datab => \inst13|inst10|inst4~regout\,
	datac => \inst13|inst10|inst3~regout\,
	datad => \inst13|inst10|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|81~0_combout\);

\inst|inst|81~2\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|81~2_combout\ = \inst13|inst10|inst3~regout\ & (\inst|inst|81~0_combout\ & \inst13|inst10|inst5~regout\) # !\inst13|inst10|inst3~regout\ & (\inst|inst|81~1_combout\ # \inst|inst|81~0_combout\ & \inst13|inst10|inst5~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst3~regout\,
	datab => \inst|inst|81~1_combout\,
	datac => \inst|inst|81~0_combout\,
	datad => \inst13|inst10|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|81~2_combout\);

\inst|inst|81~3\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|81~3_combout\ = \inst|inst|81~2_combout\ # !\inst|inst|25~0_combout\ & (\inst13|inst10|inst5~regout\ $ !\inst13|inst10|inst6~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff41",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|25~0_combout\,
	datab => \inst13|inst10|inst5~regout\,
	datac => \inst13|inst10|inst6~regout\,
	datad => \inst|inst|81~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|81~3_combout\);

\inst|inst|43~6\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|43~6_combout\ = \inst|inst|43~8_combout\ # \inst|inst|43~5_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|43~8_combout\,
	datad => \inst|inst|43~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|43~6_combout\);

\inst|inst1|82~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|82~0_combout\ = \inst|inst|45~2_combout\ & (\inst|inst|41~4_combout\ & \inst|inst|43~6_combout\ & \inst13|inst10|inst2~regout\ # !\inst|inst|41~4_combout\ & !\inst|inst|43~6_combout\) # !\inst|inst|45~2_combout\ & \inst|inst|43~6_combout\ & 
-- (\inst|inst|41~4_combout\ # \inst13|inst10|inst2~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "d242",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|45~2_combout\,
	datab => \inst|inst|41~4_combout\,
	datac => \inst|inst|43~6_combout\,
	datad => \inst13|inst10|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|82~0_combout\);

\inst|inst|82~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|82~0_combout\ = \inst13|inst10|inst6~regout\ & (\inst13|inst10|inst5~regout\ & \inst13|inst10|inst7~regout\ & \inst13|inst10|inst4~regout\ # !\inst13|inst10|inst5~regout\ & !\inst13|inst10|inst7~regout\) # !\inst13|inst10|inst6~regout\ & 
-- \inst13|inst10|inst7~regout\ & (\inst13|inst10|inst5~regout\ # \inst13|inst10|inst4~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "d242",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst6~regout\,
	datab => \inst13|inst10|inst5~regout\,
	datac => \inst13|inst10|inst7~regout\,
	datad => \inst13|inst10|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|82~0_combout\);

\inst|inst|48\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|48~combout\ = !\inst13|inst10|inst5~regout\ & !\inst13|inst10|inst7~regout\ # !\inst13|inst10|inst6~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst10|inst6~regout\,
	datac => \inst13|inst10|inst5~regout\,
	datad => \inst13|inst10|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|48~combout\);

\inst2|inst4|inst3~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst4|inst3~0_combout\ = !\inst2|inst3|inst~regout\ & \inst2|inst3|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|inst~regout\,
	datad => \inst2|inst3|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst4|inst3~0_combout\);

\inst2|inst2|inst|9~11\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst|9~21\ = \inst2|inst4|inst3~0_combout\ & (\inst|inst|48~combout\ # !\inst|inst|82~0_combout\ # !\inst|inst|81~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|81~3_combout\,
	datab => \inst|inst|82~0_combout\,
	datac => \inst|inst|48~combout\,
	datad => \inst2|inst4|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst|9~11_combout\,
	cascout => \inst2|inst2|inst|9~21\);

\inst2|inst2|inst|9~13\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst|9~13_combout\ = (\inst|inst|82~0_combout\ & (\inst|inst1|82~0_combout\ # \inst|inst|48~combout\ & !\inst|inst|81~3_combout\) # !\inst|inst|82~0_combout\ & !\inst|inst|48~combout\ & \inst|inst|81~3_combout\) & 
-- CASCADE(\inst2|inst2|inst|9~21\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f244",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|48~combout\,
	datab => \inst|inst|81~3_combout\,
	datac => \inst|inst1|82~0_combout\,
	datad => \inst|inst|82~0_combout\,
	cascin => \inst2|inst2|inst|9~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst|9~13_combout\);

\inst2|inst2|inst|9~4\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst|9~4_combout\ = \inst2|inst2|inst|9~13_combout\ # !\inst2|inst3|inst2~regout\ & \inst2|inst2|inst|9~3_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst3|inst2~regout\,
	datac => \inst2|inst2|inst|9~3_combout\,
	datad => \inst2|inst2|inst|9~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst|9~4_combout\);

\inst|inst2|22\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst2|22~combout\ = \inst13|inst10|inst4~regout\ & \inst13|inst10|inst7~regout\ & \inst13|inst10|inst5~regout\ & \inst13|inst10|inst6~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst4~regout\,
	datab => \inst13|inst10|inst7~regout\,
	datac => \inst13|inst10|inst5~regout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst2|22~combout\);

\inst|inst|81~5\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|81~5_combout\ = \inst13|inst10|inst7~regout\ & \inst13|inst10|inst4~regout\ & (\inst13|inst10|inst5~regout\ $ !\inst13|inst10|inst6~regout\) # !\inst13|inst10|inst7~regout\ & (\inst13|inst10|inst5~regout\ $ !\inst13|inst10|inst6~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c341",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst7~regout\,
	datab => \inst13|inst10|inst5~regout\,
	datac => \inst13|inst10|inst6~regout\,
	datad => \inst13|inst10|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|81~5_combout\);

\inst2|inst2|inst2|2~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst2|2~0_combout\ = !\inst2|inst3|inst2~regout\ & \inst2|inst3|inst~regout\
-- \inst2|inst2|inst2|2~2\ = !\inst2|inst3|inst2~regout\ & \inst2|inst3|inst~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|inst2~regout\,
	datad => \inst2|inst3|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst2|2~0_combout\,
	cascout => \inst2|inst2|inst2|2~2\);

\inst2|inst2|inst3|2~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst3|2~0_combout\ = !\inst|inst|48~combout\ & \inst2|inst2|inst2|2~0_combout\ & (\inst|inst|81~5_combout\ # \inst|inst|81~2_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|48~combout\,
	datab => \inst|inst|81~5_combout\,
	datac => \inst|inst|81~2_combout\,
	datad => \inst2|inst2|inst2|2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst3|2~0_combout\);

\inst2|inst2|inst3|9~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst3|9~0_combout\ = !\inst|inst|81~5_combout\ & !\inst|inst|81~2_combout\ & \inst2|inst2|inst2|2~0_combout\ & \inst|inst|48~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|81~5_combout\,
	datab => \inst|inst|81~2_combout\,
	datac => \inst2|inst2|inst2|2~0_combout\,
	datad => \inst|inst|48~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst3|9~0_combout\);

\inst2|inst2|inst3|9~1\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst3|9~1_combout\ = \inst|inst1|82~0_combout\ & (\inst2|inst2|inst3|9~0_combout\) # !\inst|inst1|82~0_combout\ & (\inst2|inst2|inst3|2~0_combout\ # !\inst|inst|82~0_combout\ & \inst2|inst2|inst3|9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fb50",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|82~0_combout\,
	datab => \inst|inst|82~0_combout\,
	datac => \inst2|inst2|inst3|2~0_combout\,
	datad => \inst2|inst2|inst3|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst3|9~1_combout\);

\inst|inst1|43~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|43~0_combout\ = \inst13|inst10|inst1~regout\ & (\inst13|inst10|inst2~regout\ $ (!\inst|inst|43~8_combout\ & !\inst|inst|43~5_combout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~8_combout\,
	datab => \inst|inst|43~5_combout\,
	datac => \inst13|inst10|inst2~regout\,
	datad => \inst13|inst10|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|43~0_combout\);

\inst|inst1|43~1\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|43~1_combout\ = \inst|inst|41~4_combout\ & !\inst|inst|45~2_combout\ & (\inst|inst1|22~1_combout\) # !\inst|inst|41~4_combout\ & \inst|inst|45~2_combout\ & \inst|inst1|43~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|41~4_combout\,
	datab => \inst|inst|45~2_combout\,
	datac => \inst|inst1|43~0_combout\,
	datad => \inst|inst1|22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|43~1_combout\);

\inst|inst|45~7\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst|45~7_combout\ = !\inst13|inst10|inst6~regout\ & !\inst13|inst10|inst3~regout\ & \inst|inst|43~7_combout\ & \inst13|inst10|inst5~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst6~regout\,
	datab => \inst13|inst10|inst3~regout\,
	datac => \inst|inst|43~7_combout\,
	datad => \inst13|inst10|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst|45~7_combout\);

\inst|inst1|43~6\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|43~17\ = !\inst|inst|43~8_combout\ & !\inst|inst|43~5_combout\ & \inst13|inst10|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|43~8_combout\,
	datac => \inst|inst|43~5_combout\,
	datad => \inst13|inst10|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|43~6_combout\,
	cascout => \inst|inst1|43~17\);

\inst|inst1|43~10\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|43~10_combout\ = (\inst13|inst10|inst1~regout\ & (\inst|inst|41~4_combout\ # !\inst|inst|45~7_combout\ & !\inst|inst|45~1_combout\) # !\inst13|inst10|inst1~regout\ & (\inst|inst|45~7_combout\ # \inst|inst|45~1_combout\ # 
-- !\inst|inst|41~4_combout\)) & CASCADE(\inst|inst1|43~17\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fe57",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst1~regout\,
	datab => \inst|inst|45~7_combout\,
	datac => \inst|inst|45~1_combout\,
	datad => \inst|inst|41~4_combout\,
	cascin => \inst|inst1|43~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|43~10_combout\);

\inst2|inst2|inst3|1~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst3|1~0_combout\ = !\inst2|inst3|inst~regout\ & !\inst2|inst3|inst2~regout\
-- \inst2|inst2|inst3|1~3\ = !\inst2|inst3|inst~regout\ & !\inst2|inst3|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|inst~regout\,
	datad => \inst2|inst3|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst3|1~0_combout\,
	cascout => \inst2|inst2|inst3|1~3\);

\inst2|inst2|inst3|1\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst3|1~combout\ = \inst2|inst2|inst3|1~0_combout\ & (\inst|inst1|43~2_combout\ # \inst|inst1|43~1_combout\ # \inst|inst1|43~10_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|43~2_combout\,
	datab => \inst|inst1|43~1_combout\,
	datac => \inst|inst1|43~10_combout\,
	datad => \inst2|inst2|inst3|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst3|1~combout\);

\inst2|inst2|inst3|9~2\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst3|9~2_combout\ = \inst2|inst2|inst3|9~1_combout\ # \inst2|inst2|inst3|1~combout\ # \inst2|inst2|inst2|2~0_combout\ & \inst|inst2|22~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst2|2~0_combout\,
	datab => \inst|inst2|22~combout\,
	datac => \inst2|inst2|inst3|9~1_combout\,
	datad => \inst2|inst2|inst3|1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst3|9~2_combout\);

\inst2|inst2|inst4|9~3\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst4|9~3_combout\ = \inst13|inst10|inst2~regout\ $ (!\inst|inst|43~8_combout\ & !\inst|inst|43~5_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc03",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|43~8_combout\,
	datac => \inst|inst|43~5_combout\,
	datad => \inst13|inst10|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst4|9~3_combout\);

\inst2|inst2|inst4|9~1\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst4|9~1_combout\ = !\inst|inst|41~4_combout\ & \inst13|inst10|inst1~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|41~4_combout\,
	datad => \inst13|inst10|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst4|9~1_combout\);

\inst2|inst2|inst4|9~2\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst4|9~2_combout\ = \inst2|inst2|inst4|9~1_combout\ & (\inst|inst|43~6_combout\ & !\inst|inst|45~2_combout\ & !\inst13|inst10|inst2~regout\ # !\inst|inst|43~6_combout\ & \inst|inst|45~2_combout\ & \inst13|inst10|inst2~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4200",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~6_combout\,
	datab => \inst|inst|45~2_combout\,
	datac => \inst13|inst10|inst2~regout\,
	datad => \inst2|inst2|inst4|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst4|9~2_combout\);

\inst2|inst2|inst4|9~4\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst4|9~4_combout\ = \inst2|inst2|inst4|9~2_combout\ # !\inst13|inst10|inst1~regout\ & \inst2|inst2|inst4|9~3_combout\ & \inst|inst1|22~0_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst1~regout\,
	datab => \inst2|inst2|inst4|9~3_combout\,
	datac => \inst|inst1|22~0_combout\,
	datad => \inst2|inst2|inst4|9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst4|9~4_combout\);

\inst2|inst2|inst4|9~9\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst4|9~9_combout\ = (\inst|inst1|82~0_combout\ & !\inst|inst|48~combout\ & !\inst|inst|82~0_combout\ & \inst|inst|81~3_combout\ # !\inst|inst1|82~0_combout\ & \inst|inst|82~0_combout\ & (\inst|inst|48~combout\ $ !\inst|inst|81~3_combout\)) & 
-- CASCADE(\inst2|inst2|inst2|2~2\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4210",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|82~0_combout\,
	datab => \inst|inst|48~combout\,
	datac => \inst|inst|82~0_combout\,
	datad => \inst|inst|81~3_combout\,
	cascin => \inst2|inst2|inst2|2~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst4|9~9_combout\);

\inst2|inst2|inst4|9~5\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst4|9~5_combout\ = \inst2|inst2|inst4|9~9_combout\ # !\inst2|inst3|inst~regout\ & !\inst2|inst3|inst2~regout\ & \inst2|inst2|inst4|9~4_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|inst~regout\,
	datab => \inst2|inst3|inst2~regout\,
	datac => \inst2|inst2|inst4|9~4_combout\,
	datad => \inst2|inst2|inst4|9~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst4|9~5_combout\);

\inst|inst2|41~0\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst2|41~0_combout\ = \inst|inst|82~0_combout\ & (\inst|inst|48~combout\ & !\inst|inst|81~3_combout\ & !\inst|inst1|82~0_combout\ # !\inst|inst|48~combout\ & \inst|inst|81~3_combout\ & \inst|inst1|82~0_combout\) # !\inst|inst|82~0_combout\ & 
-- (\inst|inst1|82~0_combout\ $ (!\inst|inst|48~combout\ & \inst|inst|81~3_combout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6518",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|82~0_combout\,
	datab => \inst|inst|48~combout\,
	datac => \inst|inst|81~3_combout\,
	datad => \inst|inst1|82~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst2|41~0_combout\);

\inst2|inst2|inst2|9~1\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst2|9~1_combout\ = \inst2|inst4|inst3~0_combout\ & \inst13|inst10|inst6~regout\ & (\inst13|inst10|inst5~regout\ # \inst13|inst10|inst7~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst5~regout\,
	datab => \inst13|inst10|inst7~regout\,
	datac => \inst2|inst4|inst3~0_combout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst2|9~1_combout\);

\inst|inst1|43~9\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|43~20\ = !\inst|inst|41~4_combout\ & !\inst|inst|45~1_combout\ & (\inst13|inst10|inst6~regout\ # !\inst|inst|45~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1101",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|41~4_combout\,
	datab => \inst|inst|45~1_combout\,
	datac => \inst|inst|45~3_combout\,
	datad => \inst13|inst10|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|43~9_combout\,
	cascout => \inst|inst1|43~20\);

\inst|inst1|41~12\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|41~12_combout\ = (\inst13|inst10|inst1~regout\ $ (!\inst13|inst10|inst2~regout\ & (\inst|inst|43~8_combout\ # \inst|inst|43~5_combout\))) & CASCADE(\inst|inst1|43~20\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f10e",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|43~8_combout\,
	datab => \inst|inst|43~5_combout\,
	datac => \inst13|inst10|inst2~regout\,
	datad => \inst13|inst10|inst1~regout\,
	cascin => \inst|inst1|43~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|41~12_combout\);

\inst|inst1|41~11\ : flex10ke_lcell
-- Equation(s):
-- \inst|inst1|41~11_combout\ = (!\inst13|inst10|inst1~regout\ & (\inst13|inst10|inst2~regout\ # !\inst|inst|43~8_combout\ & !\inst|inst|43~5_combout\)) & CASCADE(\inst|inst1|3~2\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5501",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10|inst1~regout\,
	datab => \inst|inst|43~8_combout\,
	datac => \inst|inst|43~5_combout\,
	datad => \inst13|inst10|inst2~regout\,
	cascin => \inst|inst1|3~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst1|41~11_combout\);

\inst2|inst2|inst2|1~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst2|1~0_combout\ = (\inst|inst1|41~12_combout\ # \inst|inst1|41~11_combout\ # \inst|inst1|41~3_combout\ & \inst|inst1|22~0_combout\) & CASCADE(\inst2|inst2|inst3|1~3\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|41~3_combout\,
	datab => \inst|inst1|22~0_combout\,
	datac => \inst|inst1|41~12_combout\,
	datad => \inst|inst1|41~11_combout\,
	cascin => \inst2|inst2|inst3|1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst2|1~0_combout\);

\inst2|inst2|inst2|9~2\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst2|9~2_combout\ = \inst2|inst2|inst2|1~0_combout\ # \inst2|inst2|inst2|9~1_combout\ & (\inst|inst|82~0_combout\ # !\inst|inst|81~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|81~3_combout\,
	datab => \inst|inst|82~0_combout\,
	datac => \inst2|inst2|inst2|9~1_combout\,
	datad => \inst2|inst2|inst2|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst2|9~2_combout\);

\inst2|inst2|inst2|9~3\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst2|inst2|9~3_combout\ = \inst2|inst2|inst2|9~2_combout\ # !\inst2|inst3|inst2~regout\ & \inst|inst2|41~0_combout\ & \inst2|inst3|inst~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|inst2~regout\,
	datab => \inst|inst2|41~0_combout\,
	datac => \inst2|inst3|inst~regout\,
	datad => \inst2|inst2|inst2|9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2|inst2|9~3_combout\);

\inst2|inst|81~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|81~0_combout\ = \inst2|inst2|inst|9~4_combout\ & (\inst2|inst2|inst4|9~5_combout\ & (\inst2|inst2|inst2|9~3_combout\) # !\inst2|inst2|inst4|9~5_combout\ & !\inst2|inst2|inst3|9~2_combout\ & !\inst2|inst2|inst2|9~3_combout\) # 
-- !\inst2|inst2|inst|9~4_combout\ & (\inst2|inst2|inst3|9~2_combout\ # \inst2|inst2|inst4|9~5_combout\ & \inst2|inst2|inst2|9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f446",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst|9~4_combout\,
	datab => \inst2|inst2|inst3|9~2_combout\,
	datac => \inst2|inst2|inst4|9~5_combout\,
	datad => \inst2|inst2|inst2|9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|81~0_combout\);

\inst2|inst|82~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|82~0_combout\ = \inst2|inst2|inst2|9~3_combout\ & (\inst2|inst2|inst4|9~5_combout\ # !\inst2|inst2|inst|9~4_combout\ & \inst2|inst2|inst3|9~2_combout\) # !\inst2|inst2|inst2|9~3_combout\ & \inst2|inst2|inst|9~4_combout\ & 
-- \inst2|inst2|inst3|9~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ec60",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst|9~4_combout\,
	datab => \inst2|inst2|inst2|9~3_combout\,
	datac => \inst2|inst2|inst3|9~2_combout\,
	datad => \inst2|inst2|inst4|9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|82~0_combout\);

\inst2|inst|83\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|83~combout\ = \inst2|inst2|inst3|9~2_combout\ & (\inst2|inst2|inst4|9~5_combout\) # !\inst2|inst2|inst3|9~2_combout\ & !\inst2|inst2|inst|9~4_combout\ & \inst2|inst2|inst2|9~3_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst|9~4_combout\,
	datab => \inst2|inst2|inst2|9~3_combout\,
	datac => \inst2|inst2|inst3|9~2_combout\,
	datad => \inst2|inst2|inst4|9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|83~combout\);

\inst2|inst|84~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|84~0_combout\ = \inst2|inst2|inst2|9~3_combout\ & \inst2|inst2|inst3|9~2_combout\ & \inst2|inst2|inst|9~4_combout\ # !\inst2|inst2|inst2|9~3_combout\ & (\inst2|inst2|inst3|9~2_combout\ $ \inst2|inst2|inst|9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst2|9~3_combout\,
	datac => \inst2|inst2|inst3|9~2_combout\,
	datad => \inst2|inst2|inst|9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|84~0_combout\);

\inst2|inst|85\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|85~combout\ = \inst2|inst2|inst|9~4_combout\ # !\inst2|inst2|inst2|9~3_combout\ & \inst2|inst2|inst3|9~2_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst2|inst2|9~3_combout\,
	datac => \inst2|inst2|inst3|9~2_combout\,
	datad => \inst2|inst2|inst|9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|85~combout\);

\inst2|inst|86~0\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|86~0_combout\ = \inst2|inst2|inst3|9~2_combout\ & (\inst2|inst2|inst|9~4_combout\ & \inst2|inst2|inst2|9~3_combout\) # !\inst2|inst2|inst3|9~2_combout\ & (\inst2|inst2|inst2|9~3_combout\ # !\inst2|inst2|inst4|9~5_combout\ & 
-- \inst2|inst2|inst|9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f510",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst3|9~2_combout\,
	datab => \inst2|inst2|inst4|9~5_combout\,
	datac => \inst2|inst2|inst|9~4_combout\,
	datad => \inst2|inst2|inst2|9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|86~0_combout\);

\inst2|inst|87\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst|87~combout\ = \inst2|inst2|inst3|9~2_combout\ & (\inst2|inst2|inst2|9~3_combout\ & \inst2|inst2|inst|9~4_combout\) # !\inst2|inst2|inst3|9~2_combout\ & !\inst2|inst2|inst4|9~5_combout\ & !\inst2|inst2|inst2|9~3_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c101",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst4|9~5_combout\,
	datab => \inst2|inst2|inst3|9~2_combout\,
	datac => \inst2|inst2|inst2|9~3_combout\,
	datad => \inst2|inst2|inst|9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst|87~combout\);

\inst2|inst4|inst3~1\ : flex10ke_lcell
-- Equation(s):
-- \inst2|inst4|inst3~1_combout\ = \inst2|inst3|inst~regout\ & \inst2|inst3|inst2~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3|inst~regout\,
	datad => \inst2|inst3|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst4|inst3~1_combout\);

\inst13|inst1|48~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|48~0_combout\ = \inst13|inst8|inst6~regout\ & (\inst13|inst9|inst6~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst6~regout\ & \inst13|inst11|14~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst6~regout\,
	datab => \inst13|inst11|14~regout\,
	datac => \inst13|inst11|13~regout\,
	datad => \inst13|inst8|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|48~0_combout\);

\inst13|inst1|45~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|45~1_combout\ = \inst13|inst8|inst6~regout\ # \inst13|inst9|inst6~regout\ & (\inst13|inst11|16~regout\) # !\inst13|inst9|inst6~regout\ & \inst13|inst11|15~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst6~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst11|16~regout\,
	datad => \inst13|inst8|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|45~1_combout\);

\inst13|inst7|29~2\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst7|29~2_combout\ = \inst13|inst1|52~0_combout\ & (\inst13|inst8|inst7~regout\ # \inst13|inst1|48~0_combout\ & \inst13|inst1|45~1_combout\) # !\inst13|inst1|52~0_combout\ & \inst13|inst1|48~0_combout\ & \inst13|inst1|45~1_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|52~0_combout\,
	datab => \inst13|inst1|48~0_combout\,
	datac => \inst13|inst1|45~1_combout\,
	datad => \inst13|inst8|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst7|29~2_combout\);

\inst13|inst7|29~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst7|29~0_combout\ = \inst13|inst1|44~0_combout\ & (\inst13|inst1|45~0_combout\ # !\inst13|inst9|inst6~regout\ & \inst13|inst11|15~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst9|inst6~regout\,
	datab => \inst13|inst11|15~regout\,
	datac => \inst13|inst1|45~0_combout\,
	datad => \inst13|inst1|44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst7|29~0_combout\);

\inst13|inst7|29~1\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst7|29~1_combout\ = \inst13|inst7|29~0_combout\ & (\inst13|inst1|47~0_combout\ # !\inst13|inst1|66~1_combout\ & \inst13|inst1|43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f400",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|66~1_combout\,
	datab => \inst13|inst1|43~0_combout\,
	datac => \inst13|inst1|47~0_combout\,
	datad => \inst13|inst7|29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst7|29~1_combout\);

\inst13|inst7|29~3\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst7|29~3_combout\ = \inst13|inst1|51~0_combout\ & (\inst13|inst7|29~2_combout\ # \inst13|inst7|29~1_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst7|29~2_combout\,
	datac => \inst13|inst7|29~1_combout\,
	datad => \inst13|inst1|51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst7|29~3_combout\);

\inst13|inst2~3\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst2~3_combout\ = \inst13|inst|47~0_combout\ & !\inst13|inst|44~0_combout\ & (\inst13|inst|46~0_combout\ $ \inst13|inst|43~0_combout\) # !\inst13|inst|47~0_combout\ & \inst13|inst|44~0_combout\ & (\inst13|inst|46~0_combout\ $ 
-- \inst13|inst|43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|47~0_combout\,
	datab => \inst13|inst|44~0_combout\,
	datac => \inst13|inst|46~0_combout\,
	datad => \inst13|inst|43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst2~3_combout\);

\inst13|inst1|82\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|82~combout\ = \inst13|inst1|82~0_combout\ $ (!\inst13|inst1|75~0_combout\ & (\inst13|inst1|47~0_combout\ # !\inst13|inst1|66~1_combout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f40b",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|47~0_combout\,
	datab => \inst13|inst1|66~1_combout\,
	datac => \inst13|inst1|75~0_combout\,
	datad => \inst13|inst1|82~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|82~combout\);

\inst13|inst|77\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|77~combout\ = \inst13|inst|77~0_combout\ $ (\inst13|inst|45~0_combout\ & (\inst13|inst|48~0_combout\ # !\inst13|inst|74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|45~0_combout\,
	datab => \inst13|inst|77~0_combout\,
	datac => \inst13|inst|48~0_combout\,
	datad => \inst13|inst|74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|77~combout\);

\inst13|inst|82\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst|82~combout\ = \inst13|inst|82~0_combout\ $ (\inst13|inst|44~0_combout\ & (\inst13|inst|47~0_combout\ # !\inst13|inst|79~combout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|44~0_combout\,
	datab => \inst13|inst|82~0_combout\,
	datac => \inst13|inst|47~0_combout\,
	datad => \inst13|inst|79~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|82~combout\);

\inst13|inst9|inst7\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst9|inst7~regout\ = DFFEA(\DIP1~dataout\, \inst17|33~1_combout\, , , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \DIP1~dataout\,
	clk => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9|inst7~regout\);

\inst13|inst1|52~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|52~0_combout\ = \inst13|inst9|inst7~regout\ & (\inst13|inst11|13~regout\) # !\inst13|inst9|inst7~regout\ & \inst13|inst11|14~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst9|inst7~regout\,
	datac => \inst13|inst11|14~regout\,
	datad => \inst13|inst11|13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|52~0_combout\);

\inst13|inst1|77~0\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|77~0_combout\ = \inst13|inst1|51~0_combout\ $ (\inst13|inst1|52~0_combout\ & \inst13|inst8|inst7~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1|52~0_combout\,
	datac => \inst13|inst8|inst7~regout\,
	datad => \inst13|inst1|51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|77~0_combout\);

\inst13|inst1|81\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst1|81~combout\ = \inst13|inst1|44~0_combout\ $ \inst13|inst1|47~0_combout\ $ (!\inst13|inst1|66~1_combout\ & \inst13|inst1|43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "6966",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|44~0_combout\,
	datab => \inst13|inst1|47~0_combout\,
	datac => \inst13|inst1|66~1_combout\,
	datad => \inst13|inst1|43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1|81~combout\);

\inst13|inst2~2\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst2~8\ = !\inst13|inst1|80~combout\ & \inst13|inst1|81~combout\ & (\inst13|inst1|77~0_combout\ $ !\inst13|inst1|74~combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|80~combout\,
	datab => \inst13|inst1|77~0_combout\,
	datac => \inst13|inst1|74~combout\,
	datad => \inst13|inst1|81~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst2~2_combout\,
	cascout => \inst13|inst2~8\);

\inst13|inst2~5\ : flex10ke_lcell
-- Equation(s):
-- \inst13|inst2~5_combout\ = (\inst13|inst2~3_combout\ & \inst13|inst1|82~combout\ & \inst13|inst|77~combout\ & \inst13|inst|82~combout\) & CASCADE(\inst13|inst2~8\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2~3_combout\,
	datab => \inst13|inst1|82~combout\,
	datac => \inst13|inst|77~combout\,
	datad => \inst13|inst|82~combout\,
	cascin => \inst13|inst2~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst2~5_combout\);

\OA~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|81~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_OA);

\OB~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|82~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_OB);

\OC~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|83~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_OC);

\OD~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|84~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_OD);

\OE~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|85~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_OE);

\OF~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|86~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => \ww_OF\);

\OG~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst|87~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_OG);

\S0~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst2|inst3|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_S0);

\S1~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst2|inst2|2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_S1);

\S2~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst4|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_S2);

\S3~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst4|inst3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_S3);

\P~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_P);

\carry~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|inst7|ALT_INV_29~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_carry);

\AEQB~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst13|inst2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_AEQB);

\LED0~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_LED0);

\LED1~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_LED1);

\LED2~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_LED2);

\LED3~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|33~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_LED3);
END structure;


