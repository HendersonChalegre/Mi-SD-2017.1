// megafunction wizard: %LPM_COUNTER%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_counter 

// ============================================================
// File Name: lpm_counter1.v
// Megafunction Name(s):
// 			lpm_counter
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.0 Build 235 06/17/2009 SP 2 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lpm_counter1 (
	clock,
	s);

	input	  clock;
	output	[11:0]  s;

	wire [11:0] sub_wire0;
	wire [11:0] s = sub_wire0[11:0];

	lpm_counter	lpm_counter_component (
				.clock (clock),
				.q (sub_wire0),
				.aclr (1'b0),
				.aload (1'b0),
				.aset (1'b0),
				.cin (1'b1),
				.clk_en (1'b1),
				.cnt_en (1'b1),
				.cout (),
				.data ({12{1'b0}}),
				.eq (),
				.sclr (1'b0),
				.sload (1'b0),
				.sset (1'b0),
				.updown (1'b1));
	defparam
		lpm_counter_component.lpm_direction = "UP",
		lpm_counter_component.lpm_modulus = 3421,
		lpm_counter_component.lpm_port_updown = "PORT_UNUSED",
		lpm_counter_component.lpm_type = "LPM_COUNTER",
		lpm_counter_component.lpm_width = 12;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "0"
// Retrieval info: PRIVATE: ALOAD NUMERIC "0"
// Retrieval info: PRIVATE: ASET NUMERIC "0"
// Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
// Retrieval info: PRIVATE: CNT_EN NUMERIC "0"
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: Direction NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "ACEX1K"
// Retrieval info: PRIVATE: ModulusCounter NUMERIC "1"
// Retrieval info: PRIVATE: ModulusValue NUMERIC "3421"
// Retrieval info: PRIVATE: SCLR NUMERIC "0"
// Retrieval info: PRIVATE: SLOAD NUMERIC "0"
// Retrieval info: PRIVATE: SSET NUMERIC "0"
// Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: nBit NUMERIC "12"
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "UP"
// Retrieval info: CONSTANT: LPM_MODULUS NUMERIC "3421"
// Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "12"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: q 0 0 12 0 OUTPUT NODEFVAL q[11..0]
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: q 0 0 12 0 @q 0 0 12 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1_bb.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_counter1_wave*.jpg FALSE
// Retrieval info: LIB_FILE: lpm
