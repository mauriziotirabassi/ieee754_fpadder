--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Pipeline_synthesis.vhd
-- /___/   /\     Timestamp: Sat Jul  1 11:52:58 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Pipeline -w -dir netgen/synthesis -ofmt vhdl -sim Pipeline.ngc Pipeline_synthesis.vhd 
-- Device	: xc6slx4-3-tqg144
-- Input file	: Pipeline.ngc
-- Output file	: /home/kryzha/Documents/proj-reti-2023/final_version/netgen/synthesis/Pipeline_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Pipeline
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Pipeline is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    OP_IN : in STD_LOGIC := 'X'; 
    INPUT1 : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    INPUT2 : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    OUTPUT : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end Pipeline;

architecture Structure of Pipeline is
  signal INPUT1_31_IBUF_0 : STD_LOGIC; 
  signal INPUT1_30_IBUF_1 : STD_LOGIC; 
  signal INPUT1_29_IBUF_2 : STD_LOGIC; 
  signal INPUT1_28_IBUF_3 : STD_LOGIC; 
  signal INPUT1_27_IBUF_4 : STD_LOGIC; 
  signal INPUT1_26_IBUF_5 : STD_LOGIC; 
  signal INPUT1_25_IBUF_6 : STD_LOGIC; 
  signal INPUT1_24_IBUF_7 : STD_LOGIC; 
  signal INPUT1_23_IBUF_8 : STD_LOGIC; 
  signal INPUT1_22_IBUF_9 : STD_LOGIC; 
  signal INPUT1_21_IBUF_10 : STD_LOGIC; 
  signal INPUT1_20_IBUF_11 : STD_LOGIC; 
  signal INPUT1_19_IBUF_12 : STD_LOGIC; 
  signal INPUT1_18_IBUF_13 : STD_LOGIC; 
  signal INPUT1_17_IBUF_14 : STD_LOGIC; 
  signal INPUT1_16_IBUF_15 : STD_LOGIC; 
  signal INPUT1_15_IBUF_16 : STD_LOGIC; 
  signal INPUT1_14_IBUF_17 : STD_LOGIC; 
  signal INPUT1_13_IBUF_18 : STD_LOGIC; 
  signal INPUT1_12_IBUF_19 : STD_LOGIC; 
  signal INPUT1_11_IBUF_20 : STD_LOGIC; 
  signal INPUT1_10_IBUF_21 : STD_LOGIC; 
  signal INPUT1_9_IBUF_22 : STD_LOGIC; 
  signal INPUT1_8_IBUF_23 : STD_LOGIC; 
  signal INPUT1_7_IBUF_24 : STD_LOGIC; 
  signal INPUT1_6_IBUF_25 : STD_LOGIC; 
  signal INPUT1_5_IBUF_26 : STD_LOGIC; 
  signal INPUT1_4_IBUF_27 : STD_LOGIC; 
  signal INPUT1_3_IBUF_28 : STD_LOGIC; 
  signal INPUT1_2_IBUF_29 : STD_LOGIC; 
  signal INPUT1_1_IBUF_30 : STD_LOGIC; 
  signal INPUT1_0_IBUF_31 : STD_LOGIC; 
  signal INPUT2_31_IBUF_32 : STD_LOGIC; 
  signal INPUT2_30_IBUF_33 : STD_LOGIC; 
  signal INPUT2_29_IBUF_34 : STD_LOGIC; 
  signal INPUT2_28_IBUF_35 : STD_LOGIC; 
  signal INPUT2_27_IBUF_36 : STD_LOGIC; 
  signal INPUT2_26_IBUF_37 : STD_LOGIC; 
  signal INPUT2_25_IBUF_38 : STD_LOGIC; 
  signal INPUT2_24_IBUF_39 : STD_LOGIC; 
  signal INPUT2_23_IBUF_40 : STD_LOGIC; 
  signal INPUT2_22_IBUF_41 : STD_LOGIC; 
  signal INPUT2_21_IBUF_42 : STD_LOGIC; 
  signal INPUT2_20_IBUF_43 : STD_LOGIC; 
  signal INPUT2_19_IBUF_44 : STD_LOGIC; 
  signal INPUT2_18_IBUF_45 : STD_LOGIC; 
  signal INPUT2_17_IBUF_46 : STD_LOGIC; 
  signal INPUT2_16_IBUF_47 : STD_LOGIC; 
  signal INPUT2_15_IBUF_48 : STD_LOGIC; 
  signal INPUT2_14_IBUF_49 : STD_LOGIC; 
  signal INPUT2_13_IBUF_50 : STD_LOGIC; 
  signal INPUT2_12_IBUF_51 : STD_LOGIC; 
  signal INPUT2_11_IBUF_52 : STD_LOGIC; 
  signal INPUT2_10_IBUF_53 : STD_LOGIC; 
  signal INPUT2_9_IBUF_54 : STD_LOGIC; 
  signal INPUT2_8_IBUF_55 : STD_LOGIC; 
  signal INPUT2_7_IBUF_56 : STD_LOGIC; 
  signal INPUT2_6_IBUF_57 : STD_LOGIC; 
  signal INPUT2_5_IBUF_58 : STD_LOGIC; 
  signal INPUT2_4_IBUF_59 : STD_LOGIC; 
  signal INPUT2_3_IBUF_60 : STD_LOGIC; 
  signal INPUT2_2_IBUF_61 : STD_LOGIC; 
  signal INPUT2_1_IBUF_62 : STD_LOGIC; 
  signal INPUT2_0_IBUF_63 : STD_LOGIC; 
  signal CLK_BUFGP_64 : STD_LOGIC; 
  signal RESET_IBUF_65 : STD_LOGIC; 
  signal OP_IN_IBUF_66 : STD_LOGIC; 
  signal REG0_OP_OUT_131 : STD_LOGIC; 
  signal REG1_OP_OUT_132 : STD_LOGIC; 
  signal REG1_SIG_OUT_133 : STD_LOGIC; 
  signal REG2_SIG_OUT_134 : STD_LOGIC; 
  signal REG1_OP_IN : STD_LOGIC; 
  signal S1_COMP_OUT_SIG_392 : STD_LOGIC; 
  signal S2_REM_MAN : STD_LOGIC; 
  signal S2_RESULT_1_Q : STD_LOGIC; 
  signal S2_RESULT_3_Q : STD_LOGIC; 
  signal S2_RESULT_5_Q : STD_LOGIC; 
  signal S2_RESULT_7_Q : STD_LOGIC; 
  signal S2_RESULT_9_Q : STD_LOGIC; 
  signal S2_RESULT_11_Q : STD_LOGIC; 
  signal S2_RESULT_13_Q : STD_LOGIC; 
  signal S2_RESULT_15_Q : STD_LOGIC; 
  signal S2_RESULT_17_Q : STD_LOGIC; 
  signal S2_RESULT_19_Q : STD_LOGIC; 
  signal S2_RESULT_21_Q : STD_LOGIC; 
  signal S3_TMP_UF : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out18 : STD_LOGIC; 
  signal REG1_OFF_OUT_2_mmx_out14 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out17 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out16 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out15 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out13 : STD_LOGIC; 
  signal REG1_OFF_OUT_2_mmx_out12 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out12 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out11 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out10 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_mmx_out19 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out9 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out8 : STD_LOGIC; 
  signal REG1_OFF_OUT_2_mmx_out10 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out7 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out6 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_mmx_out11 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out5 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_mmx_out10 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out4 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out3 : STD_LOGIC; 
  signal REG1_OFF_OUT_2_mmx_out8 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out2 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out1 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_mmx_out : STD_LOGIC; 
  signal REG1_OFF_OUT_1_mmx_out : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out18 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out17 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out16 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out15 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out14 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out13 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out12 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out11 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out10 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out9 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out8 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out6 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_2_mmx_out3 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out5 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out4 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_0_mmx_out5 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out3 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out2 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out1 : STD_LOGIC; 
  signal S3_NORM_MAN_OFF_1_mmx_out : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_20_o : STD_LOGIC; 
  signal S3_Mmux_FINAL110 : STD_LOGIC; 
  signal S3_SPCL_SPECIAL_OUTPUT_0_1 : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1 : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_11_o_23_1 : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_3 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT321 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT411 : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_4 : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112 : STD_LOGIC; 
  signal S3_Mmux_FINAL142 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT212 : STD_LOGIC; 
  signal S3_Mmux_FINAL114_562 : STD_LOGIC; 
  signal S1_COMP_E1_SML_E1_EQ_OR_10_o7 : STD_LOGIC; 
  signal S1_COMP_EComp_COMP1_n0019 : STD_LOGIC; 
  signal S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o_578 : STD_LOGIC; 
  signal S1_COMP_MComp_U3_COMP1_TE3_TE0_AND_31_o_579 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_TE3_TE0_AND_31_o_580 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_TE3_TE0_AND_31_o_581 : STD_LOGIC; 
  signal S1_COMP_E1_GRT_E1_EQ_OR_9_o : STD_LOGIC; 
  signal S1_COMP_E1_SML_E1_EQ_OR_10_o : STD_LOGIC; 
  signal S1_COMP_M1_GRT_M1_SML_OR_12_o : STD_LOGIC; 
  signal S1_COMP_M1_GRT : STD_LOGIC; 
  signal S1_COMP_E1_EQ : STD_LOGIC; 
  signal S1_COMP_OUT_SIG_SIG1_MUX_38_o : STD_LOGIC; 
  signal S1_MAN_ZERO2_594 : STD_LOGIC; 
  signal S1_MAN_ZERO1_595 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN2_22_equal_12_o : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN1_22_equal_6_o : STD_LOGIC; 
  signal S1_MAN_PWR_11_o_EXP2_7_equal_11_o : STD_LOGIC; 
  signal S1_MAN_PWR_11_o_EXP1_7_equal_17_o : STD_LOGIC; 
  signal S1_ESub_C_2_Q : STD_LOGIC; 
  signal S1_ESub_C_4_Q : STD_LOGIC; 
  signal S1_ESub_C_6_Q : STD_LOGIC; 
  signal S3_NORM_OP_C_2_Q : STD_LOGIC; 
  signal S3_NORM_OP_C_4_Q : STD_LOGIC; 
  signal S2_P1_C_2_Q : STD_LOGIC; 
  signal S2_P1_C_6_Q : STD_LOGIC; 
  signal S2_OP_C_22_Q : STD_LOGIC; 
  signal S2_OP_GEN_22_U_Mxor_S_xo_0_1 : STD_LOGIC; 
  signal S2_OP_C_20_Q : STD_LOGIC; 
  signal S2_OP_C_18_Q : STD_LOGIC; 
  signal S2_OP_C_16_Q : STD_LOGIC; 
  signal S2_OP_C_14_Q : STD_LOGIC; 
  signal S2_OP_C_12_Q : STD_LOGIC; 
  signal S2_OP_C_10_Q : STD_LOGIC; 
  signal S2_OP_C_6_Q : STD_LOGIC; 
  signal S2_OP_C_4_Q : STD_LOGIC; 
  signal S2_OP_C_2_Q : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT25 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT27 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT28_620 : STD_LOGIC; 
  signal S3_NORM_CMP_EXP_COMP0_SML : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT1 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT13 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT14_624 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT15_625 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT110 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT111_627 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT112_628 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal S3_Mmux_FINAL111 : STD_LOGIC; 
  signal S3_Mmux_FINAL112_633 : STD_LOGIC; 
  signal S3_Mmux_FINAL113_634 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal S3_Mmux_FINAL13 : STD_LOGIC; 
  signal S3_Mmux_FINAL131_637 : STD_LOGIC; 
  signal S3_Mmux_FINAL132_638 : STD_LOGIC; 
  signal S3_Mmux_FINAL133_639 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT3 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT31_642 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT32_643 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT33_644 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT4 : STD_LOGIC; 
  signal S3_NORM_RPE_Mmux_OUTPUT41_646 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED2 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED21_648 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED22 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED14 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED141_651 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED142_652 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED20 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED201_654 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED221_655 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED222_656 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED23 : STD_LOGIC; 
  signal S3_Mmux_FINAL152 : STD_LOGIC; 
  signal S3_Mmux_FINAL153_659 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal S3_Mmux_FINAL143_661 : STD_LOGIC; 
  signal S3_Mmux_FINAL144_662 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal S3_Mmux_FINAL31 : STD_LOGIC; 
  signal S3_Mmux_FINAL311_666 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal S3_Mmux_FINAL91 : STD_LOGIC; 
  signal S3_Mmux_FINAL10 : STD_LOGIC; 
  signal S3_Mmux_FINAL101_670 : STD_LOGIC; 
  signal S3_Mmux_FINAL82 : STD_LOGIC; 
  signal S2_SHFT_Mmux_SHIFTED26 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal S1_Mmux_ERR1 : STD_LOGIC; 
  signal S1_Mmux_ERR11_684 : STD_LOGIC; 
  signal S1_Mmux_ERR12_685 : STD_LOGIC; 
  signal S1_Mmux_ERR13_686 : STD_LOGIC; 
  signal S1_Mmux_ERR14_687 : STD_LOGIC; 
  signal S1_Mmux_ERR21 : STD_LOGIC; 
  signal S1_Mmux_ERR3 : STD_LOGIC; 
  signal S1_Mmux_ERR32 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_SML : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_SML1_692 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_SML2_693 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_GRT : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_GRT1_695 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_1_U_COMP1_GRT2_696 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_SML : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_SML1_698 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_SML2_699 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_GRT : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_GRT1_701 : STD_LOGIC; 
  signal S1_COMP_MComp_G_1_0_U_COMP1_GRT2_702 : STD_LOGIC; 
  signal S1_COMP_MComp_U3_COMP1_SML : STD_LOGIC; 
  signal S1_COMP_MComp_U3_COMP1_SML1_704 : STD_LOGIC; 
  signal S1_COMP_MComp_U3_COMP1_GRT : STD_LOGIC; 
  signal S1_COMP_MComp_U3_COMP1_GRT1_706 : STD_LOGIC; 
  signal S1_COMP_E1_SML_E1_EQ_OR_10_o1_707 : STD_LOGIC; 
  signal S1_COMP_E1_SML_E1_EQ_OR_10_o2_708 : STD_LOGIC; 
  signal S1_COMP_E1_SML_E1_EQ_OR_10_o3_709 : STD_LOGIC; 
  signal S1_COMP_E1_SML_E1_EQ_OR_10_o4_710 : STD_LOGIC; 
  signal S1_COMP_E1_GRT_E1_EQ_OR_9_o1_711 : STD_LOGIC; 
  signal S1_COMP_E1_GRT_E1_EQ_OR_9_o2_712 : STD_LOGIC; 
  signal S1_COMP_E1_GRT_E1_EQ_OR_9_o3_713 : STD_LOGIC; 
  signal S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_Q : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_1_719 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_2_720 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_3_721 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_Q : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_1_723 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_2_724 : STD_LOGIC; 
  signal S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_3_725 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal S2_OP_GEN_7_U_Cout1_873 : STD_LOGIC; 
  signal REG1_OFF_OUT_3_1_874 : STD_LOGIC; 
  signal REG1_OFF_OUT_2_1_875 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_1_876 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_1_877 : STD_LOGIC; 
  signal S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_878 : STD_LOGIC; 
  signal S3_NORM_CMP_EXP_COMP1_SML1_879 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_2_880 : STD_LOGIC; 
  signal REG1_OFF_OUT_1_2_881 : STD_LOGIC; 
  signal REG1_OFF_OUT_0_3_882 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal REG0_INPUT1_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG0_INPUT2_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG1_SKIP_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG2_SKIP_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG3_FINAL_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG1_SML_MAN_OUT : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal REG2_EXP_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REG1_OFF_OUT : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal REG1_ERR_OUT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal REG2_ERR_OUT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal REG2_MAN_OUT : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal REG1_GRT_EXP_IN : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REG1_GRT_MAN_IN : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal REG1_SML_MAN_IN : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal REG1_OFF_IN : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal REG1_SKIP_IN : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal REG1_ERR_IN : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal REG2_MAN_IN : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal REG2_EXP_IN : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REG2_ERR_IN : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal REG3_FINAL_IN : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal S2_SHFT_M2 : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal S3_TMP_ERR : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal S3_NORM_MAN_OFF : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal S1_EXP_DIFF : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal S1_SML_TMP : STD_LOGIC_VECTOR ( 31 downto 23 ); 
  signal S1_GRT_TMP : STD_LOGIC_VECTOR ( 31 downto 31 ); 
  signal S1_COMP_MComp_C : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  REG0_OP_OUT : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => OP_IN_IBUF_66,
      Q => REG0_OP_OUT_131
    );
  REG0_INPUT1_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_0_IBUF_31,
      Q => REG0_INPUT1_OUT(0)
    );
  REG0_INPUT1_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_1_IBUF_30,
      Q => REG0_INPUT1_OUT(1)
    );
  REG0_INPUT1_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_2_IBUF_29,
      Q => REG0_INPUT1_OUT(2)
    );
  REG0_INPUT1_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_3_IBUF_28,
      Q => REG0_INPUT1_OUT(3)
    );
  REG0_INPUT1_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_4_IBUF_27,
      Q => REG0_INPUT1_OUT(4)
    );
  REG0_INPUT1_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_5_IBUF_26,
      Q => REG0_INPUT1_OUT(5)
    );
  REG0_INPUT1_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_6_IBUF_25,
      Q => REG0_INPUT1_OUT(6)
    );
  REG0_INPUT1_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_7_IBUF_24,
      Q => REG0_INPUT1_OUT(7)
    );
  REG0_INPUT1_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_8_IBUF_23,
      Q => REG0_INPUT1_OUT(8)
    );
  REG0_INPUT1_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_9_IBUF_22,
      Q => REG0_INPUT1_OUT(9)
    );
  REG0_INPUT1_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_10_IBUF_21,
      Q => REG0_INPUT1_OUT(10)
    );
  REG0_INPUT1_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_11_IBUF_20,
      Q => REG0_INPUT1_OUT(11)
    );
  REG0_INPUT1_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_12_IBUF_19,
      Q => REG0_INPUT1_OUT(12)
    );
  REG0_INPUT1_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_13_IBUF_18,
      Q => REG0_INPUT1_OUT(13)
    );
  REG0_INPUT1_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_14_IBUF_17,
      Q => REG0_INPUT1_OUT(14)
    );
  REG0_INPUT1_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_15_IBUF_16,
      Q => REG0_INPUT1_OUT(15)
    );
  REG0_INPUT1_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_16_IBUF_15,
      Q => REG0_INPUT1_OUT(16)
    );
  REG0_INPUT1_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_17_IBUF_14,
      Q => REG0_INPUT1_OUT(17)
    );
  REG0_INPUT1_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_18_IBUF_13,
      Q => REG0_INPUT1_OUT(18)
    );
  REG0_INPUT1_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_19_IBUF_12,
      Q => REG0_INPUT1_OUT(19)
    );
  REG0_INPUT1_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_20_IBUF_11,
      Q => REG0_INPUT1_OUT(20)
    );
  REG0_INPUT1_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_21_IBUF_10,
      Q => REG0_INPUT1_OUT(21)
    );
  REG0_INPUT1_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_22_IBUF_9,
      Q => REG0_INPUT1_OUT(22)
    );
  REG0_INPUT1_OUT_23 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_23_IBUF_8,
      Q => REG0_INPUT1_OUT(23)
    );
  REG0_INPUT1_OUT_24 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_24_IBUF_7,
      Q => REG0_INPUT1_OUT(24)
    );
  REG0_INPUT1_OUT_25 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_25_IBUF_6,
      Q => REG0_INPUT1_OUT(25)
    );
  REG0_INPUT1_OUT_26 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_26_IBUF_5,
      Q => REG0_INPUT1_OUT(26)
    );
  REG0_INPUT1_OUT_27 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_27_IBUF_4,
      Q => REG0_INPUT1_OUT(27)
    );
  REG0_INPUT1_OUT_28 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_28_IBUF_3,
      Q => REG0_INPUT1_OUT(28)
    );
  REG0_INPUT1_OUT_29 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_29_IBUF_2,
      Q => REG0_INPUT1_OUT(29)
    );
  REG0_INPUT1_OUT_30 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_30_IBUF_1,
      Q => REG0_INPUT1_OUT(30)
    );
  REG0_INPUT1_OUT_31 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT1_31_IBUF_0,
      Q => REG0_INPUT1_OUT(31)
    );
  REG0_INPUT2_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_0_IBUF_63,
      Q => REG0_INPUT2_OUT(0)
    );
  REG0_INPUT2_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_1_IBUF_62,
      Q => REG0_INPUT2_OUT(1)
    );
  REG0_INPUT2_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_2_IBUF_61,
      Q => REG0_INPUT2_OUT(2)
    );
  REG0_INPUT2_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_3_IBUF_60,
      Q => REG0_INPUT2_OUT(3)
    );
  REG0_INPUT2_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_4_IBUF_59,
      Q => REG0_INPUT2_OUT(4)
    );
  REG0_INPUT2_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_5_IBUF_58,
      Q => REG0_INPUT2_OUT(5)
    );
  REG0_INPUT2_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_6_IBUF_57,
      Q => REG0_INPUT2_OUT(6)
    );
  REG0_INPUT2_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_7_IBUF_56,
      Q => REG0_INPUT2_OUT(7)
    );
  REG0_INPUT2_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_8_IBUF_55,
      Q => REG0_INPUT2_OUT(8)
    );
  REG0_INPUT2_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_9_IBUF_54,
      Q => REG0_INPUT2_OUT(9)
    );
  REG0_INPUT2_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_10_IBUF_53,
      Q => REG0_INPUT2_OUT(10)
    );
  REG0_INPUT2_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_11_IBUF_52,
      Q => REG0_INPUT2_OUT(11)
    );
  REG0_INPUT2_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_12_IBUF_51,
      Q => REG0_INPUT2_OUT(12)
    );
  REG0_INPUT2_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_13_IBUF_50,
      Q => REG0_INPUT2_OUT(13)
    );
  REG0_INPUT2_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_14_IBUF_49,
      Q => REG0_INPUT2_OUT(14)
    );
  REG0_INPUT2_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_15_IBUF_48,
      Q => REG0_INPUT2_OUT(15)
    );
  REG0_INPUT2_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_16_IBUF_47,
      Q => REG0_INPUT2_OUT(16)
    );
  REG0_INPUT2_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_17_IBUF_46,
      Q => REG0_INPUT2_OUT(17)
    );
  REG0_INPUT2_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_18_IBUF_45,
      Q => REG0_INPUT2_OUT(18)
    );
  REG0_INPUT2_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_19_IBUF_44,
      Q => REG0_INPUT2_OUT(19)
    );
  REG0_INPUT2_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_20_IBUF_43,
      Q => REG0_INPUT2_OUT(20)
    );
  REG0_INPUT2_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_21_IBUF_42,
      Q => REG0_INPUT2_OUT(21)
    );
  REG0_INPUT2_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_22_IBUF_41,
      Q => REG0_INPUT2_OUT(22)
    );
  REG0_INPUT2_OUT_23 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_23_IBUF_40,
      Q => REG0_INPUT2_OUT(23)
    );
  REG0_INPUT2_OUT_24 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_24_IBUF_39,
      Q => REG0_INPUT2_OUT(24)
    );
  REG0_INPUT2_OUT_25 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_25_IBUF_38,
      Q => REG0_INPUT2_OUT(25)
    );
  REG0_INPUT2_OUT_26 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_26_IBUF_37,
      Q => REG0_INPUT2_OUT(26)
    );
  REG0_INPUT2_OUT_27 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_27_IBUF_36,
      Q => REG0_INPUT2_OUT(27)
    );
  REG0_INPUT2_OUT_28 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_28_IBUF_35,
      Q => REG0_INPUT2_OUT(28)
    );
  REG0_INPUT2_OUT_29 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_29_IBUF_34,
      Q => REG0_INPUT2_OUT(29)
    );
  REG0_INPUT2_OUT_30 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_30_IBUF_33,
      Q => REG0_INPUT2_OUT(30)
    );
  REG0_INPUT2_OUT_31 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => INPUT2_31_IBUF_32,
      Q => REG0_INPUT2_OUT(31)
    );
  REG1_OP_OUT : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OP_IN,
      Q => REG1_OP_OUT_132
    );
  REG1_SIG_OUT : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => S1_COMP_OUT_SIG_392,
      Q => REG1_SIG_OUT_133
    );
  REG1_SKIP_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(0),
      Q => REG1_SKIP_OUT(0)
    );
  REG1_SKIP_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(1),
      Q => REG1_SKIP_OUT(1)
    );
  REG1_SKIP_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(2),
      Q => REG1_SKIP_OUT(2)
    );
  REG1_SKIP_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(3),
      Q => REG1_SKIP_OUT(3)
    );
  REG1_SKIP_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(4),
      Q => REG1_SKIP_OUT(4)
    );
  REG1_SKIP_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(5),
      Q => REG1_SKIP_OUT(5)
    );
  REG1_SKIP_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(6),
      Q => REG1_SKIP_OUT(6)
    );
  REG1_SKIP_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(7),
      Q => REG1_SKIP_OUT(7)
    );
  REG1_SKIP_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(8),
      Q => REG1_SKIP_OUT(8)
    );
  REG1_SKIP_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(9),
      Q => REG1_SKIP_OUT(9)
    );
  REG1_SKIP_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(10),
      Q => REG1_SKIP_OUT(10)
    );
  REG1_SKIP_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(11),
      Q => REG1_SKIP_OUT(11)
    );
  REG1_SKIP_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(12),
      Q => REG1_SKIP_OUT(12)
    );
  REG1_SKIP_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(13),
      Q => REG1_SKIP_OUT(13)
    );
  REG1_SKIP_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(14),
      Q => REG1_SKIP_OUT(14)
    );
  REG1_SKIP_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(15),
      Q => REG1_SKIP_OUT(15)
    );
  REG1_SKIP_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(16),
      Q => REG1_SKIP_OUT(16)
    );
  REG1_SKIP_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(17),
      Q => REG1_SKIP_OUT(17)
    );
  REG1_SKIP_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(18),
      Q => REG1_SKIP_OUT(18)
    );
  REG1_SKIP_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(19),
      Q => REG1_SKIP_OUT(19)
    );
  REG1_SKIP_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(20),
      Q => REG1_SKIP_OUT(20)
    );
  REG1_SKIP_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(21),
      Q => REG1_SKIP_OUT(21)
    );
  REG1_SKIP_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(22),
      Q => REG1_SKIP_OUT(22)
    );
  REG1_SKIP_OUT_23 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(23),
      Q => REG1_SKIP_OUT(23)
    );
  REG1_SKIP_OUT_24 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(24),
      Q => REG1_SKIP_OUT(24)
    );
  REG1_SKIP_OUT_25 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(25),
      Q => REG1_SKIP_OUT(25)
    );
  REG1_SKIP_OUT_26 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(26),
      Q => REG1_SKIP_OUT(26)
    );
  REG1_SKIP_OUT_27 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(27),
      Q => REG1_SKIP_OUT(27)
    );
  REG1_SKIP_OUT_28 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(28),
      Q => REG1_SKIP_OUT(28)
    );
  REG1_SKIP_OUT_29 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(29),
      Q => REG1_SKIP_OUT(29)
    );
  REG1_SKIP_OUT_30 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(30),
      Q => REG1_SKIP_OUT(30)
    );
  REG1_SKIP_OUT_31 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_IN(31),
      Q => REG1_SKIP_OUT(31)
    );
  REG1_SML_MAN_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(0),
      Q => REG1_SML_MAN_OUT(0)
    );
  REG1_SML_MAN_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(1),
      Q => REG1_SML_MAN_OUT(1)
    );
  REG1_SML_MAN_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(2),
      Q => REG1_SML_MAN_OUT(2)
    );
  REG1_SML_MAN_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(3),
      Q => REG1_SML_MAN_OUT(3)
    );
  REG1_SML_MAN_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(4),
      Q => REG1_SML_MAN_OUT(4)
    );
  REG1_SML_MAN_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(5),
      Q => REG1_SML_MAN_OUT(5)
    );
  REG1_SML_MAN_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(6),
      Q => REG1_SML_MAN_OUT(6)
    );
  REG1_SML_MAN_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(7),
      Q => REG1_SML_MAN_OUT(7)
    );
  REG1_SML_MAN_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(8),
      Q => REG1_SML_MAN_OUT(8)
    );
  REG1_SML_MAN_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(9),
      Q => REG1_SML_MAN_OUT(9)
    );
  REG1_SML_MAN_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(10),
      Q => REG1_SML_MAN_OUT(10)
    );
  REG1_SML_MAN_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(11),
      Q => REG1_SML_MAN_OUT(11)
    );
  REG1_SML_MAN_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(12),
      Q => REG1_SML_MAN_OUT(12)
    );
  REG1_SML_MAN_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(13),
      Q => REG1_SML_MAN_OUT(13)
    );
  REG1_SML_MAN_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(14),
      Q => REG1_SML_MAN_OUT(14)
    );
  REG1_SML_MAN_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(15),
      Q => REG1_SML_MAN_OUT(15)
    );
  REG1_SML_MAN_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(16),
      Q => REG1_SML_MAN_OUT(16)
    );
  REG1_SML_MAN_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(17),
      Q => REG1_SML_MAN_OUT(17)
    );
  REG1_SML_MAN_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(18),
      Q => REG1_SML_MAN_OUT(18)
    );
  REG1_SML_MAN_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(19),
      Q => REG1_SML_MAN_OUT(19)
    );
  REG1_SML_MAN_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(20),
      Q => REG1_SML_MAN_OUT(20)
    );
  REG1_SML_MAN_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(21),
      Q => REG1_SML_MAN_OUT(21)
    );
  REG1_SML_MAN_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SML_MAN_IN(22),
      Q => REG1_SML_MAN_OUT(22)
    );
  REG1_OFF_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(0),
      Q => REG1_OFF_OUT(0)
    );
  REG1_OFF_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(1),
      Q => REG1_OFF_OUT(1)
    );
  REG1_OFF_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(2),
      Q => REG1_OFF_OUT(2)
    );
  REG1_OFF_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(3),
      Q => REG1_OFF_OUT(3)
    );
  REG1_OFF_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(4),
      Q => REG1_OFF_OUT(4)
    );
  REG1_ERR_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_ERR_IN(0),
      Q => REG1_ERR_OUT(0)
    );
  REG1_ERR_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_ERR_IN(1),
      Q => REG1_ERR_OUT(1)
    );
  REG1_ERR_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_ERR_IN(2),
      Q => REG1_ERR_OUT(2)
    );
  REG2_SIG_OUT : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SIG_OUT_133,
      Q => REG2_SIG_OUT_134
    );
  REG2_SKIP_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(0),
      Q => REG2_SKIP_OUT(0)
    );
  REG2_SKIP_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(1),
      Q => REG2_SKIP_OUT(1)
    );
  REG2_SKIP_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(2),
      Q => REG2_SKIP_OUT(2)
    );
  REG2_SKIP_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(3),
      Q => REG2_SKIP_OUT(3)
    );
  REG2_SKIP_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(4),
      Q => REG2_SKIP_OUT(4)
    );
  REG2_SKIP_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(5),
      Q => REG2_SKIP_OUT(5)
    );
  REG2_SKIP_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(6),
      Q => REG2_SKIP_OUT(6)
    );
  REG2_SKIP_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(7),
      Q => REG2_SKIP_OUT(7)
    );
  REG2_SKIP_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(8),
      Q => REG2_SKIP_OUT(8)
    );
  REG2_SKIP_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(9),
      Q => REG2_SKIP_OUT(9)
    );
  REG2_SKIP_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(10),
      Q => REG2_SKIP_OUT(10)
    );
  REG2_SKIP_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(11),
      Q => REG2_SKIP_OUT(11)
    );
  REG2_SKIP_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(12),
      Q => REG2_SKIP_OUT(12)
    );
  REG2_SKIP_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(13),
      Q => REG2_SKIP_OUT(13)
    );
  REG2_SKIP_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(14),
      Q => REG2_SKIP_OUT(14)
    );
  REG2_SKIP_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(15),
      Q => REG2_SKIP_OUT(15)
    );
  REG2_SKIP_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(16),
      Q => REG2_SKIP_OUT(16)
    );
  REG2_SKIP_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(17),
      Q => REG2_SKIP_OUT(17)
    );
  REG2_SKIP_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(18),
      Q => REG2_SKIP_OUT(18)
    );
  REG2_SKIP_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(19),
      Q => REG2_SKIP_OUT(19)
    );
  REG2_SKIP_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(20),
      Q => REG2_SKIP_OUT(20)
    );
  REG2_SKIP_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(21),
      Q => REG2_SKIP_OUT(21)
    );
  REG2_SKIP_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(22),
      Q => REG2_SKIP_OUT(22)
    );
  REG2_SKIP_OUT_23 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(23),
      Q => REG2_SKIP_OUT(23)
    );
  REG2_SKIP_OUT_24 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(24),
      Q => REG2_SKIP_OUT(24)
    );
  REG2_SKIP_OUT_25 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(25),
      Q => REG2_SKIP_OUT(25)
    );
  REG2_SKIP_OUT_26 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(26),
      Q => REG2_SKIP_OUT(26)
    );
  REG2_SKIP_OUT_27 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(27),
      Q => REG2_SKIP_OUT(27)
    );
  REG2_SKIP_OUT_28 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(28),
      Q => REG2_SKIP_OUT(28)
    );
  REG2_SKIP_OUT_29 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(29),
      Q => REG2_SKIP_OUT(29)
    );
  REG2_SKIP_OUT_30 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(30),
      Q => REG2_SKIP_OUT(30)
    );
  REG2_SKIP_OUT_31 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_SKIP_OUT(31),
      Q => REG2_SKIP_OUT(31)
    );
  REG2_EXP_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(0),
      Q => REG2_EXP_OUT(0)
    );
  REG2_EXP_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(1),
      Q => REG2_EXP_OUT(1)
    );
  REG2_EXP_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(2),
      Q => REG2_EXP_OUT(2)
    );
  REG2_EXP_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(3),
      Q => REG2_EXP_OUT(3)
    );
  REG2_EXP_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(4),
      Q => REG2_EXP_OUT(4)
    );
  REG2_EXP_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(5),
      Q => REG2_EXP_OUT(5)
    );
  REG2_EXP_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(6),
      Q => REG2_EXP_OUT(6)
    );
  REG2_EXP_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_EXP_IN(7),
      Q => REG2_EXP_OUT(7)
    );
  REG2_ERR_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_ERR_IN(0),
      Q => REG2_ERR_OUT(0)
    );
  REG2_ERR_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_ERR_IN(1),
      Q => REG2_ERR_OUT(1)
    );
  REG2_ERR_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_ERR_IN(2),
      Q => REG2_ERR_OUT(2)
    );
  REG2_MAN_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(0),
      Q => REG2_MAN_OUT(0)
    );
  REG2_MAN_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(1),
      Q => REG2_MAN_OUT(1)
    );
  REG2_MAN_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(2),
      Q => REG2_MAN_OUT(2)
    );
  REG2_MAN_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(3),
      Q => REG2_MAN_OUT(3)
    );
  REG2_MAN_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(4),
      Q => REG2_MAN_OUT(4)
    );
  REG2_MAN_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(5),
      Q => REG2_MAN_OUT(5)
    );
  REG2_MAN_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(6),
      Q => REG2_MAN_OUT(6)
    );
  REG2_MAN_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(7),
      Q => REG2_MAN_OUT(7)
    );
  REG2_MAN_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(8),
      Q => REG2_MAN_OUT(8)
    );
  REG2_MAN_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(9),
      Q => REG2_MAN_OUT(9)
    );
  REG2_MAN_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(10),
      Q => REG2_MAN_OUT(10)
    );
  REG2_MAN_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(11),
      Q => REG2_MAN_OUT(11)
    );
  REG2_MAN_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(12),
      Q => REG2_MAN_OUT(12)
    );
  REG2_MAN_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(13),
      Q => REG2_MAN_OUT(13)
    );
  REG2_MAN_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(14),
      Q => REG2_MAN_OUT(14)
    );
  REG2_MAN_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(15),
      Q => REG2_MAN_OUT(15)
    );
  REG2_MAN_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(16),
      Q => REG2_MAN_OUT(16)
    );
  REG2_MAN_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(17),
      Q => REG2_MAN_OUT(17)
    );
  REG2_MAN_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(18),
      Q => REG2_MAN_OUT(18)
    );
  REG2_MAN_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(19),
      Q => REG2_MAN_OUT(19)
    );
  REG2_MAN_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(20),
      Q => REG2_MAN_OUT(20)
    );
  REG2_MAN_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(21),
      Q => REG2_MAN_OUT(21)
    );
  REG2_MAN_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(22),
      Q => REG2_MAN_OUT(22)
    );
  REG2_MAN_OUT_23 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG2_MAN_IN(23),
      Q => REG2_MAN_OUT(23)
    );
  REG3_FINAL_OUT_0 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(0),
      Q => REG3_FINAL_OUT(0)
    );
  REG3_FINAL_OUT_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(1),
      Q => REG3_FINAL_OUT(1)
    );
  REG3_FINAL_OUT_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(2),
      Q => REG3_FINAL_OUT(2)
    );
  REG3_FINAL_OUT_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(3),
      Q => REG3_FINAL_OUT(3)
    );
  REG3_FINAL_OUT_4 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(4),
      Q => REG3_FINAL_OUT(4)
    );
  REG3_FINAL_OUT_5 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(5),
      Q => REG3_FINAL_OUT(5)
    );
  REG3_FINAL_OUT_6 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(6),
      Q => REG3_FINAL_OUT(6)
    );
  REG3_FINAL_OUT_7 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(7),
      Q => REG3_FINAL_OUT(7)
    );
  REG3_FINAL_OUT_8 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(8),
      Q => REG3_FINAL_OUT(8)
    );
  REG3_FINAL_OUT_9 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(9),
      Q => REG3_FINAL_OUT(9)
    );
  REG3_FINAL_OUT_10 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(10),
      Q => REG3_FINAL_OUT(10)
    );
  REG3_FINAL_OUT_11 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(11),
      Q => REG3_FINAL_OUT(11)
    );
  REG3_FINAL_OUT_12 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(12),
      Q => REG3_FINAL_OUT(12)
    );
  REG3_FINAL_OUT_13 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(13),
      Q => REG3_FINAL_OUT(13)
    );
  REG3_FINAL_OUT_14 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(14),
      Q => REG3_FINAL_OUT(14)
    );
  REG3_FINAL_OUT_15 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(15),
      Q => REG3_FINAL_OUT(15)
    );
  REG3_FINAL_OUT_16 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(16),
      Q => REG3_FINAL_OUT(16)
    );
  REG3_FINAL_OUT_17 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(17),
      Q => REG3_FINAL_OUT(17)
    );
  REG3_FINAL_OUT_18 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(18),
      Q => REG3_FINAL_OUT(18)
    );
  REG3_FINAL_OUT_19 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(19),
      Q => REG3_FINAL_OUT(19)
    );
  REG3_FINAL_OUT_20 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(20),
      Q => REG3_FINAL_OUT(20)
    );
  REG3_FINAL_OUT_21 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(21),
      Q => REG3_FINAL_OUT(21)
    );
  REG3_FINAL_OUT_22 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(22),
      Q => REG3_FINAL_OUT(22)
    );
  REG3_FINAL_OUT_23 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(23),
      Q => REG3_FINAL_OUT(23)
    );
  REG3_FINAL_OUT_24 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(24),
      Q => REG3_FINAL_OUT(24)
    );
  REG3_FINAL_OUT_25 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(25),
      Q => REG3_FINAL_OUT(25)
    );
  REG3_FINAL_OUT_26 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(26),
      Q => REG3_FINAL_OUT(26)
    );
  REG3_FINAL_OUT_27 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(27),
      Q => REG3_FINAL_OUT(27)
    );
  REG3_FINAL_OUT_28 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(28),
      Q => REG3_FINAL_OUT(28)
    );
  REG3_FINAL_OUT_29 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(29),
      Q => REG3_FINAL_OUT(29)
    );
  REG3_FINAL_OUT_30 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(30),
      Q => REG3_FINAL_OUT(30)
    );
  REG3_FINAL_OUT_31 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG3_FINAL_IN(31),
      Q => REG3_FINAL_OUT(31)
    );
  S1_COMP_OUT_SIG : LD
    port map (
      D => S1_COMP_OUT_SIG_SIG1_MUX_38_o,
      G => S1_COMP_M1_GRT_M1_SML_OR_12_o,
      Q => S1_COMP_OUT_SIG_392
    );
  S2_SHFT_Mmux_SHIFTED111 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_2_mmx_out12,
      O => S2_SHFT_M2(18)
    );
  S2_SHFT_Mmux_SHIFTED101 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_2_mmx_out10,
      O => S2_SHFT_M2(17)
    );
  REG1_OFF_OUT_0_111 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(3),
      I1 => REG1_SML_MAN_OUT(2),
      I2 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_0_mmx_out19
    );
  REG1_OFF_OUT_0_31 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(6),
      I1 => REG1_SML_MAN_OUT(5),
      I2 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_0_mmx_out11
    );
  REG1_OFF_OUT_0_21 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(3),
      I1 => REG1_SML_MAN_OUT(4),
      I2 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_0_mmx_out10
    );
  REG1_OFF_OUT_0_1 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(4),
      I1 => REG1_SML_MAN_OUT(5),
      I2 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_0_mmx_out
    );
  S3_NORM_MAN_OFF_0_161 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG2_MAN_OUT(20),
      I1 => REG2_MAN_OUT(19),
      I2 => S3_NORM_MAN_OFF(0),
      O => S3_NORM_MAN_OFF_0_mmx_out5
    );
  S3_Mmux_TMP_ERR31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => REG2_ERR_OUT(2),
      I1 => S3_TMP_UF,
      O => S3_TMP_ERR(2)
    );
  S3_Mmux_TMP_ERR21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => REG2_ERR_OUT(1),
      I1 => S3_NORM_CMP_EXP_COMP1_SML1_879,
      O => S3_TMP_ERR(1)
    );
  S3_Mmux_TMP_ERR11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => REG2_ERR_OUT(0),
      I1 => S3_NORM_CMP_EXP_COMP1_SML1_879,
      O => S3_TMP_ERR(0)
    );
  S3_NORM_RPE_Mmux_OUTPUT3211 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => REG2_MAN_OUT(15),
      I1 => REG2_MAN_OUT(14),
      I2 => REG2_MAN_OUT(13),
      O => S3_NORM_RPE_Mmux_OUTPUT321
    );
  S3_NORM_RPE_Mmux_OUTPUT4111 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => REG2_MAN_OUT(7),
      I1 => REG2_MAN_OUT(6),
      I2 => REG2_MAN_OUT(5),
      O => S3_NORM_RPE_Mmux_OUTPUT411
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_111 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => REG2_MAN_OUT(16),
      I1 => REG2_MAN_OUT(17),
      I2 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112,
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_11_o_23_1
    );
  S3_NORM_MAN_OFF_1_16 : LUT4
    generic map(
      INIT => X"FF35"
    )
    port map (
      I0 => REG2_MAN_OUT(1),
      I1 => REG2_MAN_OUT(0),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out
    );
  S3_NORM_MAN_OFF_1_131 : LUT5
    generic map(
      INIT => X"FF0F3355"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(1),
      I2 => REG2_MAN_OUT(0),
      I3 => S3_NORM_MAN_OFF(0),
      I4 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out4
    );
  S3_NORM_MAN_OFF_2_81 : LUT5
    generic map(
      INIT => X"A8AAFDFF"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(1),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => REG2_MAN_OUT(0),
      I4 => S3_NORM_MAN_OFF_1_mmx_out6,
      O => S3_NORM_MAN_OFF_2_mmx_out3
    );
  S3_NORM_MAN_OFF_1_121 : LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      I0 => REG2_MAN_OUT(18),
      I1 => REG2_MAN_OUT(16),
      I2 => REG2_MAN_OUT(17),
      I3 => REG2_MAN_OUT(15),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out3
    );
  S3_NORM_MAN_OFF_1_111 : LUT6
    generic map(
      INIT => X"FF00F0F0AAAACCCC"
    )
    port map (
      I0 => REG2_MAN_OUT(16),
      I1 => REG2_MAN_OUT(17),
      I2 => REG2_MAN_OUT(15),
      I3 => REG2_MAN_OUT(14),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out2
    );
  S3_NORM_MAN_OFF_1_101 : LUT6
    generic map(
      INIT => X"CCCCAAAAFF00F0F0"
    )
    port map (
      I0 => REG2_MAN_OUT(13),
      I1 => REG2_MAN_OUT(12),
      I2 => REG2_MAN_OUT(15),
      I3 => REG2_MAN_OUT(14),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out18
    );
  S3_NORM_MAN_OFF_1_91 : LUT6
    generic map(
      INIT => X"CCCCAAAAF0F0FF00"
    )
    port map (
      I0 => REG2_MAN_OUT(12),
      I1 => REG2_MAN_OUT(11),
      I2 => REG2_MAN_OUT(13),
      I3 => REG2_MAN_OUT(14),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out17
    );
  S3_NORM_MAN_OFF_1_81 : LUT6
    generic map(
      INIT => X"AAAAF0F0FF00CCCC"
    )
    port map (
      I0 => REG2_MAN_OUT(10),
      I1 => REG2_MAN_OUT(13),
      I2 => REG2_MAN_OUT(11),
      I3 => REG2_MAN_OUT(12),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out16
    );
  S3_NORM_MAN_OFF_1_71 : LUT6
    generic map(
      INIT => X"AAAACCCCFF00F0F0"
    )
    port map (
      I0 => REG2_MAN_OUT(9),
      I1 => REG2_MAN_OUT(10),
      I2 => REG2_MAN_OUT(12),
      I3 => REG2_MAN_OUT(11),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out15
    );
  S3_NORM_MAN_OFF_1_11 : LUT6
    generic map(
      INIT => X"CCCCF0F0FF00AAAA"
    )
    port map (
      I0 => REG2_MAN_OUT(16),
      I1 => REG2_MAN_OUT(13),
      I2 => REG2_MAN_OUT(14),
      I3 => REG2_MAN_OUT(15),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out1
    );
  S3_NORM_MAN_OFF_1_21 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => REG2_MAN_OUT(7),
      I1 => REG2_MAN_OUT(5),
      I2 => REG2_MAN_OUT(4),
      I3 => REG2_MAN_OUT(6),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out10
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1121 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG2_MAN_OUT(23),
      I1 => REG2_MAN_OUT(22),
      I2 => REG2_MAN_OUT(21),
      I3 => REG2_MAN_OUT(20),
      I4 => REG2_MAN_OUT(18),
      I5 => REG2_MAN_OUT(19),
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112
    );
  S3_NORM_MAN_OFF_1_141 : LUT6
    generic map(
      INIT => X"FF00F0F0AAAACCCC"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(3),
      I2 => REG2_MAN_OUT(1),
      I3 => REG2_MAN_OUT(0),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out5
    );
  S3_NORM_MAN_OFF_1_171 : LUT6
    generic map(
      INIT => X"AAAACCCCFF00F0F0"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(3),
      I2 => REG2_MAN_OUT(5),
      I3 => REG2_MAN_OUT(4),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out8
    );
  S3_NORM_MAN_OFF_1_151 : LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(3),
      I2 => REG2_MAN_OUT(4),
      I3 => REG2_MAN_OUT(1),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out6
    );
  S3_NORM_MAN_OFF_1_181 : LUT6
    generic map(
      INIT => X"AAAAF0F0FF00CCCC"
    )
    port map (
      I0 => REG2_MAN_OUT(3),
      I1 => REG2_MAN_OUT(6),
      I2 => REG2_MAN_OUT(4),
      I3 => REG2_MAN_OUT(5),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out9
    );
  S3_NORM_MAN_OFF_1_51 : LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
    port map (
      I0 => REG2_MAN_OUT(8),
      I1 => REG2_MAN_OUT(9),
      I2 => REG2_MAN_OUT(10),
      I3 => REG2_MAN_OUT(7),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out13
    );
  S3_NORM_MAN_OFF_1_31 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => REG2_MAN_OUT(8),
      I1 => REG2_MAN_OUT(6),
      I2 => REG2_MAN_OUT(5),
      I3 => REG2_MAN_OUT(7),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out11
    );
  S3_NORM_MAN_OFF_1_61 : LUT6
    generic map(
      INIT => X"CCCCAAAAF0F0FF00"
    )
    port map (
      I0 => REG2_MAN_OUT(9),
      I1 => REG2_MAN_OUT(8),
      I2 => REG2_MAN_OUT(10),
      I3 => REG2_MAN_OUT(11),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out14
    );
  S3_NORM_MAN_OFF_1_41 : LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
    port map (
      I0 => REG2_MAN_OUT(9),
      I1 => REG2_MAN_OUT(8),
      I2 => REG2_MAN_OUT(7),
      I3 => REG2_MAN_OUT(6),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_MAN_OFF_1_mmx_out12
    );
  REG1_OFF_OUT_1_191 : LUT4
    generic map(
      INIT => X"8A9B"
    )
    port map (
      I0 => REG1_OFF_OUT(0),
      I1 => REG1_OFF_OUT(1),
      I2 => REG1_SML_MAN_OUT(22),
      I3 => REG1_SML_MAN_OUT(21),
      O => REG1_OFF_OUT_1_mmx_out9
    );
  REG1_OFF_OUT_1_101 : LUT6
    generic map(
      INIT => X"FFF000F0CCAACCAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(19),
      I1 => REG1_SML_MAN_OUT(20),
      I2 => REG1_SML_MAN_OUT(21),
      I3 => REG1_OFF_OUT_0_3_882,
      I4 => REG1_SML_MAN_OUT(22),
      I5 => REG1_OFF_OUT_1_2_881,
      O => REG1_OFF_OUT_1_mmx_out18
    );
  REG1_OFF_OUT_1_11 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(8),
      I1 => REG1_SML_MAN_OUT(10),
      I2 => REG1_SML_MAN_OUT(11),
      I3 => REG1_SML_MAN_OUT(9),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out1
    );
  REG1_OFF_OUT_1_31 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(10),
      I1 => REG1_SML_MAN_OUT(12),
      I2 => REG1_SML_MAN_OUT(13),
      I3 => REG1_SML_MAN_OUT(11),
      I4 => REG1_OFF_OUT_1_2_881,
      I5 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_1_mmx_out11
    );
  REG1_OFF_OUT_1_121 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(12),
      I1 => REG1_SML_MAN_OUT(14),
      I2 => REG1_SML_MAN_OUT(15),
      I3 => REG1_SML_MAN_OUT(13),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out2
    );
  REG1_OFF_OUT_1_41 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(14),
      I1 => REG1_SML_MAN_OUT(16),
      I2 => REG1_SML_MAN_OUT(17),
      I3 => REG1_SML_MAN_OUT(15),
      I4 => REG1_OFF_OUT_1_2_881,
      I5 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_1_mmx_out12
    );
  REG1_OFF_OUT_1_131 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(16),
      I1 => REG1_SML_MAN_OUT(18),
      I2 => REG1_SML_MAN_OUT(19),
      I3 => REG1_SML_MAN_OUT(17),
      I4 => REG1_OFF_OUT(0),
      I5 => REG1_OFF_OUT(1),
      O => REG1_OFF_OUT_1_mmx_out3
    );
  REG1_OFF_OUT_1_141 : LUT5
    generic map(
      INIT => X"FFF0CCAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(20),
      I1 => REG1_SML_MAN_OUT(21),
      I2 => REG1_SML_MAN_OUT(22),
      I3 => REG1_OFF_OUT(0),
      I4 => REG1_OFF_OUT(1),
      O => REG1_OFF_OUT_1_mmx_out4
    );
  REG1_OFF_OUT_1_51 : LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(18),
      I1 => REG1_SML_MAN_OUT(20),
      I2 => REG1_SML_MAN_OUT(19),
      I3 => REG1_SML_MAN_OUT(21),
      I4 => REG1_OFF_OUT(0),
      I5 => REG1_OFF_OUT(1),
      O => REG1_OFF_OUT_1_mmx_out13
    );
  REG1_OFF_OUT_1_161 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(9),
      I1 => REG1_SML_MAN_OUT(11),
      I2 => REG1_SML_MAN_OUT(12),
      I3 => REG1_SML_MAN_OUT(10),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out6
    );
  REG1_OFF_OUT_1_81 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(11),
      I1 => REG1_SML_MAN_OUT(13),
      I2 => REG1_SML_MAN_OUT(14),
      I3 => REG1_SML_MAN_OUT(12),
      I4 => REG1_OFF_OUT_1_2_881,
      I5 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_1_mmx_out16
    );
  REG1_OFF_OUT_1_171 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(13),
      I1 => REG1_SML_MAN_OUT(15),
      I2 => REG1_SML_MAN_OUT(16),
      I3 => REG1_SML_MAN_OUT(14),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out7
    );
  REG1_OFF_OUT_1_181 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(17),
      I1 => REG1_SML_MAN_OUT(19),
      I2 => REG1_SML_MAN_OUT(20),
      I3 => REG1_SML_MAN_OUT(18),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out8
    );
  REG1_OFF_OUT_1_91 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(15),
      I1 => REG1_SML_MAN_OUT(17),
      I2 => REG1_SML_MAN_OUT(18),
      I3 => REG1_SML_MAN_OUT(16),
      I4 => REG1_OFF_OUT_1_2_881,
      I5 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_1_mmx_out17
    );
  S2_SHFT_Mmux_SHIFTED61 : LUT6
    generic map(
      INIT => X"0504151401001110"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT_1_mmx_out7,
      I4 => REG1_OFF_OUT_1_mmx_out9,
      I5 => REG1_OFF_OUT_1_mmx_out8,
      O => S2_SHFT_M2(13)
    );
  S2_SHFT_Mmux_SHIFTED271 : LUT6
    generic map(
      INIT => X"5554445411100010"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out1,
      I3 => REG1_OFF_OUT(2),
      I4 => REG1_OFF_OUT_1_mmx_out2,
      I5 => REG1_OFF_OUT_2_mmx_out8,
      O => S2_SHFT_M2(8)
    );
  S2_SHFT_Mmux_SHIFTED281 : LUT6
    generic map(
      INIT => X"1110001055544454"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out6,
      I3 => REG1_OFF_OUT(2),
      I4 => REG1_OFF_OUT_1_mmx_out7,
      I5 => REG1_OFF_OUT_2_mmx_out10,
      O => S2_SHFT_M2(9)
    );
  S2_SHFT_Mmux_SHIFTED31 : LUT6
    generic map(
      INIT => X"1110001055544454"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out11,
      I3 => REG1_OFF_OUT(2),
      I4 => REG1_OFF_OUT_1_mmx_out12,
      I5 => REG1_OFF_OUT_2_mmx_out12,
      O => S2_SHFT_M2(10)
    );
  S2_SHFT_Mmux_SHIFTED41 : LUT6
    generic map(
      INIT => X"1110001055544454"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out16,
      I3 => REG1_OFF_OUT(2),
      I4 => REG1_OFF_OUT_1_mmx_out17,
      I5 => REG1_OFF_OUT_2_mmx_out14,
      O => S2_SHFT_M2(11)
    );
  S2_SHFT_Mmux_SHIFTED51 : LUT6
    generic map(
      INIT => X"1514050411100100"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT_1_mmx_out2,
      I4 => REG1_OFF_OUT_1_mmx_out3,
      I5 => REG1_OFF_OUT_1_mmx_out4,
      O => S2_SHFT_M2(12)
    );
  REG1_OFF_OUT_1_21 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(6),
      I1 => REG1_SML_MAN_OUT(8),
      I2 => REG1_SML_MAN_OUT(9),
      I3 => REG1_SML_MAN_OUT(7),
      I4 => REG1_OFF_OUT_1_2_881,
      I5 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_1_mmx_out10
    );
  REG1_OFF_OUT_1_71 : LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(7),
      I1 => REG1_SML_MAN_OUT(9),
      I2 => REG1_SML_MAN_OUT(10),
      I3 => REG1_SML_MAN_OUT(8),
      I4 => REG1_OFF_OUT_1_2_881,
      I5 => REG1_OFF_OUT_0_3_882,
      O => REG1_OFF_OUT_1_mmx_out15
    );
  REG1_OFF_OUT_2_61 : LUT4
    generic map(
      INIT => X"A8FD"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(1),
      I2 => REG1_OFF_OUT(0),
      I3 => REG1_OFF_OUT_1_mmx_out18,
      O => REG1_OFF_OUT_2_mmx_out14
    );
  REG1_OFF_OUT_2_41 : LUT5
    generic map(
      INIT => X"888ADDDF"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(1),
      I2 => REG1_SML_MAN_OUT(22),
      I3 => REG1_OFF_OUT(0),
      I4 => REG1_OFF_OUT_1_mmx_out13,
      O => REG1_OFF_OUT_2_mmx_out12
    );
  S2_SHFT_Mmux_SHIFTED161 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => REG1_OFF_OUT_1_mmx_out9,
      I1 => REG1_OFF_OUT(4),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(3),
      O => S2_SHFT_M2(21)
    );
  S2_SHFT_Mmux_SHIFTED151 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => REG1_OFF_OUT_1_mmx_out4,
      I1 => REG1_OFF_OUT(4),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(3),
      O => S2_SHFT_M2(20)
    );
  S2_SHFT_Mmux_SHIFTED171 : LUT6
    generic map(
      INIT => X"0001000100010000"
    )
    port map (
      I0 => REG1_OFF_OUT(1),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT(4),
      I4 => REG1_OFF_OUT(0),
      I5 => REG1_SML_MAN_OUT(22),
      O => S2_SHFT_M2(22)
    );
  S1_Mxor_OP_OUT_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => REG0_INPUT1_OUT(31),
      I1 => REG0_INPUT2_OUT(31),
      I2 => REG0_OP_OUT_131,
      O => REG1_OP_IN
    );
  S1_COMP_M1_GRT_M1_SML_OR_12_o1 : LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
    port map (
      I0 => S1_COMP_MComp_C(0),
      I1 => S1_COMP_MComp_C(1),
      I2 => S1_COMP_MComp_C(4),
      I3 => S1_COMP_MComp_C(5),
      I4 => S1_COMP_MComp_C(2),
      I5 => S1_COMP_MComp_C(3),
      O => S1_COMP_M1_GRT_M1_SML_OR_12_o
    );
  S1_COMP_MComp_U4_GRT1 : LUT6
    generic map(
      INIT => X"4F04FFFF00004F04"
    )
    port map (
      I0 => S1_COMP_MComp_C(5),
      I1 => S1_COMP_MComp_C(4),
      I2 => S1_COMP_MComp_C(1),
      I3 => S1_COMP_MComp_C(0),
      I4 => S1_COMP_MComp_C(3),
      I5 => S1_COMP_MComp_C(2),
      O => S1_COMP_M1_GRT
    );
  S1_COMP_E1_SML_E1_EQ_OR_10_o71 : LUT6
    generic map(
      INIT => X"4F04FFFF00004F04"
    )
    port map (
      I0 => S1_COMP_MComp_C(4),
      I1 => S1_COMP_MComp_C(5),
      I2 => S1_COMP_MComp_C(0),
      I3 => S1_COMP_MComp_C(1),
      I4 => S1_COMP_MComp_C(2),
      I5 => S1_COMP_MComp_C(3),
      O => S1_COMP_E1_SML_E1_EQ_OR_10_o7
    );
  S1_COMP_Mmux_OUT_SIG_SIG1_MUX_38_o11 : LUT5
    generic map(
      INIT => X"BEEE1444"
    )
    port map (
      I0 => S1_COMP_M1_GRT,
      I1 => REG0_INPUT2_OUT(31),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      I3 => REG0_OP_OUT_131,
      I4 => REG0_INPUT1_OUT(31),
      O => S1_COMP_OUT_SIG_SIG1_MUX_38_o
    );
  S1_COMP_EComp_COMP1_Mxor_n0019_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => REG0_INPUT1_OUT(30),
      I1 => REG0_INPUT2_OUT(30),
      O => S1_COMP_EComp_COMP1_n0019
    );
  S1_MAN_Mmux_SKIP110 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(0),
      I1 => REG1_SML_MAN_IN(0),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(0)
    );
  S1_MAN_Mmux_SKIP210 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(10),
      I1 => REG1_SML_MAN_IN(10),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(10)
    );
  S1_MAN_Mmux_SKIP33 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(11),
      I1 => REG1_SML_MAN_IN(11),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(11)
    );
  S1_MAN_Mmux_SKIP41 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(12),
      I1 => REG1_SML_MAN_IN(12),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(12)
    );
  S1_MAN_Mmux_SKIP51 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(13),
      I1 => REG1_SML_MAN_IN(13),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(13)
    );
  S1_MAN_Mmux_SKIP61 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(14),
      I1 => REG1_SML_MAN_IN(14),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(14)
    );
  S1_MAN_Mmux_SKIP71 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(15),
      I1 => REG1_SML_MAN_IN(15),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(15)
    );
  S1_MAN_Mmux_SKIP81 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(16),
      I1 => REG1_SML_MAN_IN(16),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(16)
    );
  S1_MAN_Mmux_SKIP91 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(17),
      I1 => REG1_SML_MAN_IN(17),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(17)
    );
  S1_MAN_Mmux_SKIP101 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(18),
      I1 => REG1_SML_MAN_IN(18),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(18)
    );
  S1_MAN_Mmux_SKIP111 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(19),
      I1 => REG1_SML_MAN_IN(19),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(19)
    );
  S1_MAN_Mmux_SKIP121 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(1),
      I1 => REG1_SML_MAN_IN(1),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(1)
    );
  S1_MAN_Mmux_SKIP131 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(20),
      I1 => REG1_SML_MAN_IN(20),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(20)
    );
  S1_MAN_Mmux_SKIP141 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(21),
      I1 => REG1_SML_MAN_IN(21),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(21)
    );
  S1_MAN_Mmux_SKIP151 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(22),
      I1 => REG1_SML_MAN_IN(22),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(22)
    );
  S1_MAN_Mmux_SKIP181 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => S1_SML_TMP(25),
      I1 => REG1_GRT_EXP_IN(2),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(25)
    );
  S1_MAN_Mmux_SKIP191 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => S1_SML_TMP(26),
      I1 => REG1_GRT_EXP_IN(3),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(26)
    );
  S1_MAN_Mmux_SKIP201 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => S1_SML_TMP(27),
      I1 => REG1_GRT_EXP_IN(4),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(27)
    );
  S1_MAN_Mmux_SKIP211 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => S1_SML_TMP(28),
      I1 => REG1_GRT_EXP_IN(5),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(28)
    );
  S1_MAN_Mmux_SKIP221 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_EXP_IN(6),
      I1 => S1_SML_TMP(29),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(29)
    );
  S1_MAN_Mmux_SKIP231 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(2),
      I1 => REG1_SML_MAN_IN(2),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(2)
    );
  S1_MAN_Mmux_SKIP241 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => S1_SML_TMP(30),
      I1 => REG1_GRT_EXP_IN(7),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(30)
    );
  S1_MAN_Mmux_SKIP261 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(3),
      I1 => REG1_SML_MAN_IN(3),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(3)
    );
  S1_MAN_Mmux_SKIP271 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(4),
      I1 => REG1_SML_MAN_IN(4),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(4)
    );
  S1_MAN_Mmux_SKIP281 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(5),
      I1 => REG1_SML_MAN_IN(5),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(5)
    );
  S1_MAN_Mmux_SKIP291 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(6),
      I1 => REG1_SML_MAN_IN(6),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(6)
    );
  S1_MAN_Mmux_SKIP301 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(7),
      I1 => REG1_SML_MAN_IN(7),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(7)
    );
  S1_MAN_Mmux_SKIP311 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(8),
      I1 => REG1_SML_MAN_IN(8),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(8)
    );
  S1_MAN_Mmux_SKIP321 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(9),
      I1 => REG1_SML_MAN_IN(9),
      I2 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(9)
    );
  S1_ESub_GEN_7_U_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"695AA569"
    )
    port map (
      I0 => S1_SML_TMP(30),
      I1 => REG1_GRT_EXP_IN(6),
      I2 => REG1_GRT_EXP_IN(7),
      I3 => S1_SML_TMP(29),
      I4 => S1_ESub_C_6_Q,
      O => S1_EXP_DIFF(7)
    );
  S1_ESub_GEN_5_U_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"66969699"
    )
    port map (
      I0 => S1_SML_TMP(28),
      I1 => REG1_GRT_EXP_IN(5),
      I2 => S1_SML_TMP(27),
      I3 => REG1_GRT_EXP_IN(4),
      I4 => S1_ESub_C_4_Q,
      O => S1_EXP_DIFF(5)
    );
  S1_ESub_GEN_5_U_Cout1 : LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
    port map (
      I0 => S1_SML_TMP(28),
      I1 => REG1_GRT_EXP_IN(5),
      I2 => S1_SML_TMP(27),
      I3 => REG1_GRT_EXP_IN(4),
      I4 => S1_ESub_C_4_Q,
      O => S1_ESub_C_6_Q
    );
  S1_ESub_GEN_4_U_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => S1_ESub_C_4_Q,
      I1 => REG1_GRT_EXP_IN(4),
      I2 => S1_SML_TMP(27),
      O => REG1_OFF_IN(4)
    );
  S1_ESub_GEN_3_U_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"66969699"
    )
    port map (
      I0 => S1_SML_TMP(26),
      I1 => REG1_GRT_EXP_IN(3),
      I2 => S1_SML_TMP(25),
      I3 => REG1_GRT_EXP_IN(2),
      I4 => S1_ESub_C_2_Q,
      O => REG1_OFF_IN(3)
    );
  S1_ESub_GEN_3_U_Cout1 : LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
    port map (
      I0 => S1_SML_TMP(26),
      I1 => REG1_GRT_EXP_IN(3),
      I2 => S1_SML_TMP(25),
      I3 => REG1_GRT_EXP_IN(2),
      I4 => S1_ESub_C_2_Q,
      O => S1_ESub_C_4_Q
    );
  S1_ESub_GEN_2_U_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => S1_ESub_C_2_Q,
      I1 => REG1_GRT_EXP_IN(2),
      I2 => S1_SML_TMP(25),
      O => REG1_OFF_IN(2)
    );
  S3_NORM_OP_GEN_3_U_Cout1 : LUT5
    generic map(
      INIT => X"8EAF0A8E"
    )
    port map (
      I0 => REG2_EXP_OUT(3),
      I1 => REG2_EXP_OUT(2),
      I2 => S3_NORM_MAN_OFF(3),
      I3 => S3_NORM_MAN_OFF(2),
      I4 => S3_NORM_OP_C_2_Q,
      O => S3_NORM_OP_C_4_Q
    );
  S3_NORM_OP_GEN_1_U_Cout1 : LUT4
    generic map(
      INIT => X"8AEF"
    )
    port map (
      I0 => REG2_EXP_OUT(1),
      I1 => REG2_EXP_OUT(0),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_OP_C_2_Q
    );
  S2_P1_GEN_7_U_Mxor_S_xo_0_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => REG1_SKIP_OUT(30),
      I1 => S2_P1_C_6_Q,
      I2 => REG1_SKIP_OUT(29),
      O => REG2_EXP_IN(7)
    );
  S2_P1_GEN_1_U_Cout1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => REG1_SKIP_OUT(24),
      I1 => REG1_SKIP_OUT(23),
      I2 => S2_REM_MAN,
      O => S2_P1_C_2_Q
    );
  S2_P1_OUTPUT_1_1 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => REG1_SKIP_OUT(24),
      I1 => S2_REM_MAN,
      I2 => REG1_SKIP_OUT(23),
      O => REG2_EXP_IN(1)
    );
  S2_P1_GEN_0_U_Mxor_S_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => REG1_SKIP_OUT(23),
      I1 => S2_REM_MAN,
      O => REG2_EXP_IN(0)
    );
  S2_OP_OUTPUT_1_1 : LUT5
    generic map(
      INIT => X"3C96963C"
    )
    port map (
      I0 => S2_SHFT_M2(0),
      I1 => REG1_SKIP_OUT(1),
      I2 => S2_SHFT_M2(1),
      I3 => REG1_SKIP_OUT(0),
      I4 => REG1_OP_OUT_132,
      O => S2_RESULT_1_Q
    );
  S2_OP_GEN_22_U_Mxor_S_xo_0_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => S2_SHFT_M2(22),
      I1 => REG1_OP_OUT_132,
      O => S2_OP_GEN_22_U_Mxor_S_xo_0_1
    );
  S2_OP_GEN_1_U_Cout1 : LUT5
    generic map(
      INIT => X"8EAAE8F0"
    )
    port map (
      I0 => REG1_SKIP_OUT(1),
      I1 => REG1_SKIP_OUT(0),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(0),
      I4 => S2_SHFT_M2(1),
      O => S2_OP_C_2_Q
    );
  S3_NORM_RPE_Mmux_OUTPUT26 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => REG2_MAN_OUT(6),
      I1 => REG2_MAN_OUT(7),
      O => S3_NORM_RPE_Mmux_OUTPUT25
    );
  S3_NORM_RPE_Mmux_OUTPUT29 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => REG2_MAN_OUT(18),
      I1 => REG2_MAN_OUT(19),
      O => S3_NORM_RPE_Mmux_OUTPUT28_620
    );
  S3_NORM_RPE_Mmux_OUTPUT210 : LUT6
    generic map(
      INIT => X"1111111011101110"
    )
    port map (
      I0 => REG2_MAN_OUT(23),
      I1 => REG2_MAN_OUT(22),
      I2 => REG2_MAN_OUT(21),
      I3 => REG2_MAN_OUT(20),
      I4 => S3_NORM_RPE_Mmux_OUTPUT28_620,
      I5 => S3_NORM_RPE_Mmux_OUTPUT27,
      O => S3_NORM_MAN_OFF(1)
    );
  S3_NORM_RPE_Mmux_OUTPUT11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => REG2_MAN_OUT(17),
      I1 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112,
      O => S3_NORM_RPE_Mmux_OUTPUT1
    );
  S3_NORM_RPE_Mmux_OUTPUT16 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => REG2_MAN_OUT(10),
      I1 => REG2_MAN_OUT(11),
      I2 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1,
      O => S3_NORM_RPE_Mmux_OUTPUT15_625
    );
  S3_Mmux_FINAL23 : LUT6
    generic map(
      INIT => X"ECECA0A0FECCFA00"
    )
    port map (
      I0 => REG2_SKIP_OUT(2),
      I1 => N4,
      I2 => S3_TMP_ERR(1),
      I3 => S3_TMP_ERR(0),
      I4 => S3_Mmux_FINAL114_562,
      I5 => S3_TMP_ERR(2),
      O => REG3_FINAL_IN(2)
    );
  S3_Mmux_FINAL32_SW0 : LUT5
    generic map(
      INIT => X"A8B9ECFD"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out,
      I3 => S3_NORM_MAN_OFF_1_mmx_out12,
      I4 => S3_NORM_MAN_OFF_1_mmx_out8,
      O => N10
    );
  S3_Mmux_FINAL32 : LUT6
    generic map(
      INIT => X"FFAAFF00FF03FF03"
    )
    port map (
      I0 => REG2_SKIP_OUT(9),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => N10,
      I3 => S3_Mmux_FINAL142,
      I4 => S3_SPCL_SPECIAL_OUTPUT_0_1,
      I5 => S3_Mmux_FINAL110,
      O => REG3_FINAL_IN(9)
    );
  S3_Mmux_FINAL2_SW0 : LUT5
    generic map(
      INIT => X"AB89EFCD"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out13,
      I3 => S3_NORM_MAN_OFF_1_mmx_out4,
      I4 => S3_NORM_MAN_OFF_1_mmx_out9,
      O => N12
    );
  S3_Mmux_FINAL2 : LUT6
    generic map(
      INIT => X"FFAAFF00FF03FF03"
    )
    port map (
      I0 => REG2_SKIP_OUT(10),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => N12,
      I3 => S3_Mmux_FINAL142,
      I4 => S3_SPCL_SPECIAL_OUTPUT_0_1,
      I5 => S3_Mmux_FINAL110,
      O => REG3_FINAL_IN(10)
    );
  S3_Mmux_FINAL113 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF_1_mmx_out18,
      I2 => S3_NORM_MAN_OFF_1_mmx_out10,
      O => S3_Mmux_FINAL112_633
    );
  S3_Mmux_FINAL114 : LUT6
    generic map(
      INIT => X"5755575552500200"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF_1_mmx_out5,
      I4 => S3_Mmux_FINAL112_633,
      I5 => S3_Mmux_FINAL111,
      O => S3_Mmux_FINAL113_634
    );
  S3_Mmux_FINAL3_SW0 : LUT5
    generic map(
      INIT => X"8C9DAEBF"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out10,
      I3 => S3_NORM_MAN_OFF_1_mmx_out14,
      I4 => S3_NORM_MAN_OFF_1_mmx_out5,
      O => N14
    );
  S3_Mmux_FINAL3 : LUT6
    generic map(
      INIT => X"FFAAFF00FF03FF03"
    )
    port map (
      I0 => REG2_SKIP_OUT(11),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => N14,
      I3 => S3_Mmux_FINAL142,
      I4 => S3_SPCL_SPECIAL_OUTPUT_0_1,
      I5 => S3_Mmux_FINAL110,
      O => REG3_FINAL_IN(11)
    );
  S3_Mmux_FINAL131 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF_1_mmx_out1,
      I3 => S3_NORM_MAN_OFF_1_mmx_out11,
      O => S3_Mmux_FINAL13
    );
  S3_Mmux_FINAL132 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG2_MAN_OUT(18),
      I1 => REG2_MAN_OUT(17),
      I2 => S3_NORM_MAN_OFF(0),
      O => S3_Mmux_FINAL131_637
    );
  S3_Mmux_FINAL133 : LUT6
    generic map(
      INIT => X"5554445411100010"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF_0_mmx_out5,
      I3 => S3_NORM_MAN_OFF(1),
      I4 => S3_Mmux_FINAL131_637,
      I5 => S3_NORM_MAN_OFF_1_mmx_out15,
      O => S3_Mmux_FINAL132_638
    );
  S3_Mmux_FINAL134 : LUT5
    generic map(
      INIT => X"55507772"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_Mmux_FINAL132_638,
      I3 => S3_Mmux_FINAL13,
      I4 => S3_NORM_MAN_OFF_2_mmx_out3,
      O => S3_Mmux_FINAL133_639
    );
  S3_Mmux_FINAL4_SW0 : LUT5
    generic map(
      INIT => X"BABF1015"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF_1_mmx_out11,
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF_1_mmx_out15,
      I4 => S3_NORM_MAN_OFF_2_mmx_out3,
      O => N16
    );
  S3_Mmux_FINAL4 : LUT6
    generic map(
      INIT => X"A0A0FA00A0A0FA03"
    )
    port map (
      I0 => REG2_SKIP_OUT(12),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => S3_TMP_ERR(1),
      I3 => S3_TMP_ERR(0),
      I4 => S3_TMP_ERR(2),
      I5 => N16,
      O => REG3_FINAL_IN(12)
    );
  S3_NORM_RPE_Mmux_OUTPUT31 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => REG2_MAN_OUT(22),
      I1 => REG2_MAN_OUT(23),
      I2 => REG2_MAN_OUT(21),
      I3 => REG2_MAN_OUT(20),
      O => S3_NORM_RPE_Mmux_OUTPUT3
    );
  S3_NORM_RPE_Mmux_OUTPUT32 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => REG2_MAN_OUT(18),
      I1 => REG2_MAN_OUT(19),
      I2 => REG2_MAN_OUT(16),
      I3 => REG2_MAN_OUT(17),
      O => S3_NORM_RPE_Mmux_OUTPUT31_642
    );
  S3_NORM_RPE_Mmux_OUTPUT33 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => REG2_MAN_OUT(8),
      I1 => REG2_MAN_OUT(9),
      I2 => REG2_MAN_OUT(10),
      I3 => REG2_MAN_OUT(11),
      O => S3_NORM_RPE_Mmux_OUTPUT32_643
    );
  S3_NORM_RPE_Mmux_OUTPUT35 : LUT6
    generic map(
      INIT => X"CC44CC00CC40CC00"
    )
    port map (
      I0 => REG2_MAN_OUT(12),
      I1 => S3_NORM_RPE_Mmux_OUTPUT3,
      I2 => S3_NORM_RPE_Mmux_OUTPUT32_643,
      I3 => S3_NORM_RPE_Mmux_OUTPUT31_642,
      I4 => S3_NORM_RPE_Mmux_OUTPUT321,
      I5 => S3_NORM_RPE_Mmux_OUTPUT33_644,
      O => S3_NORM_MAN_OFF(2)
    );
  S3_NORM_RPE_Mmux_OUTPUT41 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => S3_NORM_RPE_Mmux_OUTPUT411,
      I1 => REG2_MAN_OUT(4),
      I2 => REG2_MAN_OUT(2),
      I3 => REG2_MAN_OUT(3),
      I4 => REG2_MAN_OUT(1),
      I5 => REG2_MAN_OUT(0),
      O => S3_NORM_RPE_Mmux_OUTPUT4
    );
  S3_NORM_RPE_Mmux_OUTPUT42 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => REG2_MAN_OUT(14),
      I1 => REG2_MAN_OUT(15),
      I2 => REG2_MAN_OUT(12),
      I3 => REG2_MAN_OUT(13),
      I4 => REG2_MAN_OUT(10),
      I5 => REG2_MAN_OUT(11),
      O => S3_NORM_RPE_Mmux_OUTPUT41_646
    );
  S3_NORM_RPE_Mmux_OUTPUT43 : LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
    port map (
      I0 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_11_o_23_1,
      I1 => REG2_MAN_OUT(8),
      I2 => REG2_MAN_OUT(9),
      I3 => S3_NORM_RPE_Mmux_OUTPUT41_646,
      I4 => S3_NORM_RPE_Mmux_OUTPUT4,
      O => S3_NORM_MAN_OFF(3)
    );
  S2_SHFT_Mmux_SHIFTED21 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => REG1_OFF_OUT_2_1_875,
      I1 => REG1_OFF_OUT_3_1_874,
      I2 => REG1_OFF_OUT_1_mmx_out,
      I3 => REG1_OFF_OUT_1_mmx_out2,
      O => S2_SHFT_Mmux_SHIFTED2
    );
  S2_SHFT_Mmux_SHIFTED24 : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(0),
      I1 => REG1_SML_MAN_OUT(1),
      I2 => REG1_OFF_OUT_0_1_877,
      O => S2_SHFT_Mmux_SHIFTED21_648
    );
  S2_SHFT_Mmux_SHIFTED27 : LUT6
    generic map(
      INIT => X"5554445411100010"
    )
    port map (
      I0 => REG1_OFF_OUT_2_1_875,
      I1 => REG1_OFF_OUT_3_1_874,
      I2 => S2_SHFT_Mmux_SHIFTED21_648,
      I3 => REG1_OFF_OUT_1_2_881,
      I4 => REG1_OFF_OUT_0_mmx_out19,
      I5 => REG1_OFF_OUT_1_mmx_out1,
      O => S2_SHFT_Mmux_SHIFTED22
    );
  S2_SHFT_Mmux_SHIFTED28 : LUT5
    generic map(
      INIT => X"75757520"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_2_mmx_out8,
      I3 => S2_SHFT_Mmux_SHIFTED22,
      I4 => S2_SHFT_Mmux_SHIFTED2,
      O => S2_SHFT_M2(0)
    );
  S2_SHFT_Mmux_SHIFTED141 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => REG1_OFF_OUT_2_1_875,
      I1 => REG1_OFF_OUT_3_1_874,
      I2 => REG1_OFF_OUT_1_mmx_out5,
      I3 => REG1_OFF_OUT_1_mmx_out7,
      O => S2_SHFT_Mmux_SHIFTED14
    );
  S2_SHFT_Mmux_SHIFTED142 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(2),
      I1 => REG1_SML_MAN_OUT(1),
      I2 => REG1_OFF_OUT_0_1_877,
      O => S2_SHFT_Mmux_SHIFTED141_651
    );
  S2_SHFT_Mmux_SHIFTED143 : LUT6
    generic map(
      INIT => X"5554445411100010"
    )
    port map (
      I0 => REG1_OFF_OUT_2_1_875,
      I1 => REG1_OFF_OUT_3_1_874,
      I2 => S2_SHFT_Mmux_SHIFTED141_651,
      I3 => REG1_OFF_OUT_1_2_881,
      I4 => REG1_OFF_OUT_0_mmx_out10,
      I5 => REG1_OFF_OUT_1_mmx_out6,
      O => S2_SHFT_Mmux_SHIFTED142_652
    );
  S2_SHFT_Mmux_SHIFTED144 : LUT5
    generic map(
      INIT => X"55507772"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => S2_SHFT_Mmux_SHIFTED142_652,
      I3 => S2_SHFT_Mmux_SHIFTED14,
      I4 => REG1_OFF_OUT_2_mmx_out10,
      O => S2_SHFT_M2(1)
    );
  S2_SHFT_Mmux_SHIFTED201 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out10,
      I3 => REG1_OFF_OUT_1_mmx_out12,
      O => S2_SHFT_Mmux_SHIFTED20
    );
  S2_SHFT_Mmux_SHIFTED202 : LUT6
    generic map(
      INIT => X"3331323003010200"
    )
    port map (
      I0 => REG1_OFF_OUT(1),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT_0_mmx_out,
      I4 => REG1_OFF_OUT_0_mmx_out19,
      I5 => REG1_OFF_OUT_1_mmx_out11,
      O => S2_SHFT_Mmux_SHIFTED201_654
    );
  S2_SHFT_Mmux_SHIFTED203 : LUT5
    generic map(
      INIT => X"55507772"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => S2_SHFT_Mmux_SHIFTED201_654,
      I3 => S2_SHFT_Mmux_SHIFTED20,
      I4 => REG1_OFF_OUT_2_mmx_out12,
      O => S2_SHFT_M2(2)
    );
  S2_SHFT_Mmux_SHIFTED221 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out15,
      I3 => REG1_OFF_OUT_1_mmx_out17,
      O => S2_SHFT_Mmux_SHIFTED221_655
    );
  S2_SHFT_Mmux_SHIFTED222 : LUT6
    generic map(
      INIT => X"3332313003020100"
    )
    port map (
      I0 => REG1_OFF_OUT(1),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT_0_mmx_out10,
      I4 => REG1_OFF_OUT_0_mmx_out11,
      I5 => REG1_OFF_OUT_1_mmx_out16,
      O => S2_SHFT_Mmux_SHIFTED222_656
    );
  S2_SHFT_Mmux_SHIFTED223 : LUT5
    generic map(
      INIT => X"55507772"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => S2_SHFT_Mmux_SHIFTED222_656,
      I3 => S2_SHFT_Mmux_SHIFTED221_655,
      I4 => REG1_OFF_OUT_2_mmx_out14,
      O => S2_SHFT_M2(3)
    );
  S2_SHFT_Mmux_SHIFTED231 : LUT6
    generic map(
      INIT => X"FEDCBA9876543210"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out,
      I3 => REG1_OFF_OUT_1_mmx_out1,
      I4 => REG1_OFF_OUT_1_mmx_out2,
      I5 => REG1_OFF_OUT_1_mmx_out3,
      O => S2_SHFT_Mmux_SHIFTED23
    );
  S2_SHFT_Mmux_SHIFTED232 : LUT5
    generic map(
      INIT => X"57550200"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT_1_mmx_out4,
      I4 => S2_SHFT_Mmux_SHIFTED23,
      O => S2_SHFT_M2(4)
    );
  S3_Mmux_FINAL154 : LUT6
    generic map(
      INIT => X"1310030033302320"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_Mmux_FINAL152,
      I4 => S3_NORM_MAN_OFF_1_mmx_out3,
      I5 => S3_NORM_MAN_OFF_1_mmx_out4,
      O => S3_Mmux_FINAL153_659
    );
  S3_Mmux_FINAL6_SW0 : LUT6
    generic map(
      INIT => X"89CD0145ABEF2367"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out17,
      I3 => S3_NORM_MAN_OFF_1_mmx_out13,
      I4 => S3_NORM_MAN_OFF_1_mmx_out4,
      I5 => S3_NORM_MAN_OFF_1_mmx_out9,
      O => N18
    );
  S3_Mmux_FINAL6 : LUT6
    generic map(
      INIT => X"AA00AA00FFAA0003"
    )
    port map (
      I0 => REG2_SKIP_OUT(14),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => N18,
      I3 => S3_TMP_ERR(1),
      I4 => S3_TMP_ERR(0),
      I5 => S3_TMP_ERR(2),
      O => REG3_FINAL_IN(14)
    );
  S3_Mmux_FINAL144 : LUT6
    generic map(
      INIT => X"1310030033302320"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_Mmux_FINAL143_661,
      I4 => S3_NORM_MAN_OFF_1_mmx_out2,
      I5 => S3_NORM_MAN_OFF_1_mmx_out,
      O => S3_Mmux_FINAL144_662
    );
  S3_Mmux_FINAL5_SW0 : LUT6
    generic map(
      INIT => X"89CD0145ABEF2367"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out16,
      I3 => S3_NORM_MAN_OFF_1_mmx_out12,
      I4 => S3_NORM_MAN_OFF_1_mmx_out,
      I5 => S3_NORM_MAN_OFF_1_mmx_out8,
      O => N22
    );
  S3_Mmux_FINAL5 : LUT6
    generic map(
      INIT => X"AA00AA00FFAA0003"
    )
    port map (
      I0 => REG2_SKIP_OUT(13),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => N22,
      I3 => S3_TMP_ERR(1),
      I4 => S3_TMP_ERR(0),
      I5 => S3_TMP_ERR(2),
      O => REG3_FINAL_IN(13)
    );
  S3_Mmux_FINAL28 : LUT6
    generic map(
      INIT => X"ECECA0A0FECCFA00"
    )
    port map (
      I0 => REG2_SKIP_OUT(5),
      I1 => N24,
      I2 => S3_TMP_ERR(1),
      I3 => S3_TMP_ERR(0),
      I4 => S3_Mmux_FINAL114_562,
      I5 => S3_TMP_ERR(2),
      O => REG3_FINAL_IN(5)
    );
  S3_Mmux_FINAL311 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => REG2_MAN_OUT(0),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => S3_NORM_MAN_OFF(1),
      O => S3_Mmux_FINAL31
    );
  S3_Mmux_FINAL312 : LUT6
    generic map(
      INIT => X"1511050115100500"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_Mmux_FINAL31,
      I4 => S3_NORM_MAN_OFF_1_mmx_out6,
      I5 => S3_NORM_MAN_OFF_1_mmx_out11,
      O => S3_Mmux_FINAL311_666
    );
  S3_Mmux_FINAL7_SW0 : LUT6
    generic map(
      INIT => X"0123456789ABCDEF"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out18,
      I3 => S3_NORM_MAN_OFF_1_mmx_out10,
      I4 => S3_NORM_MAN_OFF_1_mmx_out14,
      I5 => S3_NORM_MAN_OFF_1_mmx_out5,
      O => N28
    );
  S3_Mmux_FINAL7 : LUT6
    generic map(
      INIT => X"FFAAFF00FF03FF03"
    )
    port map (
      I0 => REG2_SKIP_OUT(15),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => N28,
      I3 => S3_Mmux_FINAL142,
      I4 => S3_SPCL_SPECIAL_OUTPUT_0_1,
      I5 => S3_Mmux_FINAL110,
      O => REG3_FINAL_IN(15)
    );
  S3_Mmux_FINAL101 : LUT6
    generic map(
      INIT => X"FEBADC9876325410"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF_1_mmx_out3,
      I3 => S3_NORM_MAN_OFF_1_mmx_out17,
      I4 => S3_NORM_MAN_OFF_1_mmx_out13,
      I5 => S3_NORM_MAN_OFF_1_mmx_out9,
      O => S3_Mmux_FINAL10
    );
  S3_Mmux_FINAL102 : LUT5
    generic map(
      INIT => X"55570002"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF_1_mmx_out4,
      I4 => S3_Mmux_FINAL10,
      O => S3_Mmux_FINAL101_670
    );
  S2_SHFT_Mmux_SHIFTED261 : LUT6
    generic map(
      INIT => X"FEDCBA9876543210"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out15,
      I3 => REG1_OFF_OUT_1_mmx_out16,
      I4 => REG1_OFF_OUT_1_mmx_out17,
      I5 => REG1_OFF_OUT_1_mmx_out18,
      O => S2_SHFT_Mmux_SHIFTED26
    );
  S2_SHFT_Mmux_SHIFTED262 : LUT6
    generic map(
      INIT => X"5555555700000002"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(1),
      I4 => REG1_OFF_OUT(0),
      I5 => S2_SHFT_Mmux_SHIFTED26,
      O => S2_SHFT_M2(7)
    );
  S2_SHFT_Mmux_SHIFTED8_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => REG1_OFF_OUT(0),
      I1 => REG1_OFF_OUT(1),
      O => N30
    );
  S2_SHFT_Mmux_SHIFTED8 : LUT6
    generic map(
      INIT => X"0504151401001110"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT_1_mmx_out17,
      I4 => N30,
      I5 => REG1_OFF_OUT_1_mmx_out18,
      O => S2_SHFT_M2(15)
    );
  S2_SHFT_Mmux_SHIFTED7_SW0 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => REG1_OFF_OUT(0),
      I1 => REG1_SML_MAN_OUT(22),
      I2 => REG1_OFF_OUT(1),
      O => N32
    );
  S2_SHFT_Mmux_SHIFTED7 : LUT6
    generic map(
      INIT => X"0504151401001110"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(3),
      I3 => REG1_OFF_OUT_1_mmx_out12,
      I4 => N32,
      I5 => REG1_OFF_OUT_1_mmx_out13,
      O => S2_SHFT_M2(14)
    );
  S3_Mmux_FINAL16_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => REG2_EXP_OUT(0),
      I1 => S3_NORM_MAN_OFF(0),
      O => N34
    );
  S3_Mmux_FINAL17_SW0 : LUT4
    generic map(
      INIT => X"659A"
    )
    port map (
      I0 => REG2_EXP_OUT(1),
      I1 => REG2_EXP_OUT(0),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => S3_NORM_MAN_OFF(1),
      O => N36
    );
  S3_Mmux_FINAL19_SW0 : LUT5
    generic map(
      INIT => X"695AA569"
    )
    port map (
      I0 => REG2_EXP_OUT(3),
      I1 => REG2_EXP_OUT(2),
      I2 => S3_NORM_MAN_OFF(3),
      I3 => S3_NORM_MAN_OFF(2),
      I4 => S3_NORM_OP_C_2_Q,
      O => N40
    );
  S3_Mmux_FINAL20_SW0 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => REG2_EXP_OUT(4),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => S3_NORM_OP_C_4_Q,
      O => N42
    );
  S3_Mmux_FINAL21_SW0 : LUT4
    generic map(
      INIT => X"9A59"
    )
    port map (
      I0 => REG2_EXP_OUT(5),
      I1 => REG2_EXP_OUT(4),
      I2 => S3_NORM_MAN_OFF(4),
      I3 => S3_NORM_OP_C_4_Q,
      O => N44
    );
  S1_Mmux_ERR12 : LUT6
    generic map(
      INIT => X"CFCFCF8FFCFCFCF8"
    )
    port map (
      I0 => S1_EXP_DIFF(5),
      I1 => S1_Mmux_ERR1,
      I2 => S1_MAN_ZERO2_594,
      I3 => S1_EXP_DIFF(6),
      I4 => S1_EXP_DIFF(7),
      I5 => S1_MAN_ZERO1_595,
      O => S1_Mmux_ERR11_684
    );
  S1_Mmux_ERR14 : LUT6
    generic map(
      INIT => X"022202220222AAAA"
    )
    port map (
      I0 => S1_Mmux_ERR12_685,
      I1 => S1_MAN_ZERO2_594,
      I2 => S1_MAN_PWR_11_o_EXP1_7_equal_17_o,
      I3 => S1_MAN_GND_12_o_MAN1_22_equal_6_o,
      I4 => REG0_OP_OUT_131,
      I5 => S1_MAN_ZERO1_595,
      O => S1_Mmux_ERR13_686
    );
  S1_Mmux_ERR15 : LUT5
    generic map(
      INIT => X"151515FF"
    )
    port map (
      I0 => S1_MAN_ZERO2_594,
      I1 => S1_MAN_PWR_11_o_EXP2_7_equal_11_o,
      I2 => S1_MAN_GND_12_o_MAN2_22_equal_12_o,
      I3 => S1_SML_TMP(31),
      I4 => S1_MAN_ZERO1_595,
      O => S1_Mmux_ERR14_687
    );
  S1_Mmux_ERR16 : LUT6
    generic map(
      INIT => X"FFFFFFFFFF80FF00"
    )
    port map (
      I0 => S1_GRT_TMP(31),
      I1 => S1_MAN_PWR_11_o_EXP1_7_equal_17_o,
      I2 => S1_MAN_GND_12_o_MAN1_22_equal_6_o,
      I3 => S1_Mmux_ERR13_686,
      I4 => S1_Mmux_ERR14_687,
      I5 => S1_Mmux_ERR11_684,
      O => REG1_ERR_IN(0)
    );
  S1_Mmux_ERR22 : LUT5
    generic map(
      INIT => X"14000000"
    )
    port map (
      I0 => REG0_OP_OUT_131,
      I1 => S1_GRT_TMP(31),
      I2 => S1_SML_TMP(31),
      I3 => S1_MAN_PWR_11_o_EXP1_7_equal_17_o,
      I4 => S1_MAN_PWR_11_o_EXP2_7_equal_11_o,
      O => S1_Mmux_ERR21
    );
  S1_COMP_MComp_G_1_1_U_COMP1_SML1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT2_OUT(21),
      I1 => REG0_INPUT1_OUT(21),
      I2 => REG0_INPUT2_OUT(20),
      I3 => REG0_INPUT1_OUT(20),
      I4 => REG0_INPUT2_OUT(19),
      I5 => REG0_INPUT1_OUT(19),
      O => S1_COMP_MComp_G_1_1_U_COMP1_SML
    );
  S1_COMP_MComp_G_1_1_U_COMP1_SML3 : LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
    port map (
      I0 => REG0_INPUT1_OUT(17),
      I1 => REG0_INPUT2_OUT(17),
      I2 => REG0_INPUT2_OUT(18),
      I3 => REG0_INPUT1_OUT(18),
      I4 => S1_COMP_MComp_G_1_1_U_COMP1_SML1_692,
      O => S1_COMP_MComp_G_1_1_U_COMP1_SML2_693
    );
  S1_COMP_MComp_G_1_1_U_COMP1_GRT1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT1_OUT(21),
      I1 => REG0_INPUT2_OUT(21),
      I2 => REG0_INPUT1_OUT(20),
      I3 => REG0_INPUT2_OUT(20),
      I4 => REG0_INPUT1_OUT(19),
      I5 => REG0_INPUT2_OUT(19),
      O => S1_COMP_MComp_G_1_1_U_COMP1_GRT
    );
  S1_COMP_MComp_G_1_1_U_COMP1_GRT3 : LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
    port map (
      I0 => REG0_INPUT2_OUT(17),
      I1 => REG0_INPUT1_OUT(17),
      I2 => REG0_INPUT1_OUT(18),
      I3 => REG0_INPUT2_OUT(18),
      I4 => S1_COMP_MComp_G_1_1_U_COMP1_GRT1_695,
      O => S1_COMP_MComp_G_1_1_U_COMP1_GRT2_696
    );
  S1_COMP_MComp_G_1_0_U_COMP1_SML1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT2_OUT(13),
      I1 => REG0_INPUT1_OUT(13),
      I2 => REG0_INPUT2_OUT(12),
      I3 => REG0_INPUT1_OUT(12),
      I4 => REG0_INPUT2_OUT(11),
      I5 => REG0_INPUT1_OUT(11),
      O => S1_COMP_MComp_G_1_0_U_COMP1_SML
    );
  S1_COMP_MComp_G_1_0_U_COMP1_SML3 : LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
    port map (
      I0 => REG0_INPUT1_OUT(9),
      I1 => REG0_INPUT2_OUT(9),
      I2 => REG0_INPUT2_OUT(10),
      I3 => REG0_INPUT1_OUT(10),
      I4 => S1_COMP_MComp_G_1_0_U_COMP1_SML1_698,
      O => S1_COMP_MComp_G_1_0_U_COMP1_SML2_699
    );
  S1_COMP_MComp_G_1_0_U_COMP1_GRT1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT1_OUT(13),
      I1 => REG0_INPUT2_OUT(13),
      I2 => REG0_INPUT1_OUT(12),
      I3 => REG0_INPUT2_OUT(12),
      I4 => REG0_INPUT1_OUT(11),
      I5 => REG0_INPUT2_OUT(11),
      O => S1_COMP_MComp_G_1_0_U_COMP1_GRT
    );
  S1_COMP_MComp_G_1_0_U_COMP1_GRT3 : LUT5
    generic map(
      INIT => X"D0FD40F4"
    )
    port map (
      I0 => REG0_INPUT2_OUT(9),
      I1 => REG0_INPUT1_OUT(9),
      I2 => REG0_INPUT1_OUT(10),
      I3 => REG0_INPUT2_OUT(10),
      I4 => S1_COMP_MComp_G_1_0_U_COMP1_GRT1_701,
      O => S1_COMP_MComp_G_1_0_U_COMP1_GRT2_702
    );
  S1_COMP_MComp_U3_COMP1_SML1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT2_OUT(5),
      I1 => REG0_INPUT1_OUT(5),
      I2 => REG0_INPUT2_OUT(4),
      I3 => REG0_INPUT1_OUT(4),
      I4 => REG0_INPUT2_OUT(3),
      I5 => REG0_INPUT1_OUT(3),
      O => S1_COMP_MComp_U3_COMP1_SML
    );
  S1_COMP_MComp_U3_COMP1_SML2 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT2_OUT(2),
      I1 => REG0_INPUT1_OUT(2),
      I2 => REG0_INPUT2_OUT(1),
      I3 => REG0_INPUT1_OUT(1),
      I4 => REG0_INPUT2_OUT(0),
      I5 => REG0_INPUT1_OUT(0),
      O => S1_COMP_MComp_U3_COMP1_SML1_704
    );
  S1_COMP_MComp_U3_COMP1_GRT1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT1_OUT(5),
      I1 => REG0_INPUT2_OUT(5),
      I2 => REG0_INPUT1_OUT(4),
      I3 => REG0_INPUT2_OUT(4),
      I4 => REG0_INPUT1_OUT(3),
      I5 => REG0_INPUT2_OUT(3),
      O => S1_COMP_MComp_U3_COMP1_GRT
    );
  S1_COMP_MComp_U3_COMP1_GRT2 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT1_OUT(2),
      I1 => REG0_INPUT2_OUT(2),
      I2 => REG0_INPUT1_OUT(1),
      I3 => REG0_INPUT2_OUT(1),
      I4 => REG0_INPUT1_OUT(0),
      I5 => REG0_INPUT2_OUT(0),
      O => S1_COMP_MComp_U3_COMP1_GRT1_706
    );
  S1_COMP_E1_SML_E1_EQ_OR_10_o1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT2_OUT(29),
      I1 => REG0_INPUT1_OUT(29),
      I2 => REG0_INPUT2_OUT(28),
      I3 => REG0_INPUT1_OUT(28),
      I4 => REG0_INPUT2_OUT(27),
      I5 => REG0_INPUT1_OUT(27),
      O => S1_COMP_E1_SML_E1_EQ_OR_10_o1_707
    );
  S1_COMP_E1_SML_E1_EQ_OR_10_o2 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT2_OUT(25),
      I1 => REG0_INPUT1_OUT(25),
      I2 => REG0_INPUT2_OUT(24),
      I3 => REG0_INPUT1_OUT(24),
      I4 => REG0_INPUT2_OUT(23),
      I5 => REG0_INPUT1_OUT(23),
      O => S1_COMP_E1_SML_E1_EQ_OR_10_o2_708
    );
  S1_COMP_E1_SML_E1_EQ_OR_10_o5 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I1 => S1_COMP_E1_EQ,
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_COMP_E1_SML_E1_EQ_OR_10_o
    );
  S1_COMP_E1_GRT_E1_EQ_OR_9_o1 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT1_OUT(29),
      I1 => REG0_INPUT2_OUT(29),
      I2 => REG0_INPUT1_OUT(28),
      I3 => REG0_INPUT2_OUT(28),
      I4 => REG0_INPUT1_OUT(27),
      I5 => REG0_INPUT2_OUT(27),
      O => S1_COMP_E1_GRT_E1_EQ_OR_9_o1_711
    );
  S1_COMP_E1_GRT_E1_EQ_OR_9_o2 : LUT6
    generic map(
      INIT => X"22B222B2B2BB22B2"
    )
    port map (
      I0 => REG0_INPUT1_OUT(25),
      I1 => REG0_INPUT2_OUT(25),
      I2 => REG0_INPUT1_OUT(24),
      I3 => REG0_INPUT2_OUT(24),
      I4 => REG0_INPUT1_OUT(23),
      I5 => REG0_INPUT2_OUT(23),
      O => S1_COMP_E1_GRT_E1_EQ_OR_9_o2_712
    );
  S1_COMP_E1_GRT_E1_EQ_OR_9_o5 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => S1_COMP_E1_EQ,
      I2 => S1_COMP_M1_GRT,
      O => S1_COMP_E1_GRT_E1_EQ_OR_9_o
    );
  S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => REG0_INPUT2_OUT(29),
      I1 => REG0_INPUT1_OUT(29),
      O => N56
    );
  S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o : LUT6
    generic map(
      INIT => X"0000000000009009"
    )
    port map (
      I0 => REG0_INPUT1_OUT(28),
      I1 => REG0_INPUT2_OUT(28),
      I2 => REG0_INPUT1_OUT(27),
      I3 => REG0_INPUT2_OUT(27),
      I4 => S1_COMP_EComp_COMP1_n0019,
      I5 => N56,
      O => S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o_578
    );
  S1_MAN_ZERO2_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => S1_SML_TMP(29),
      I1 => S1_SML_TMP(28),
      I2 => S1_SML_TMP(27),
      I3 => S1_SML_TMP(25),
      O => N60
    );
  S1_MAN_ZERO2 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => S1_SML_TMP(23),
      I1 => S1_SML_TMP(24),
      I2 => S1_SML_TMP(30),
      I3 => S1_SML_TMP(26),
      I4 => N60,
      I5 => S1_MAN_GND_12_o_MAN2_22_equal_12_o,
      O => S1_MAN_ZERO2_594
    );
  S1_MAN_ZERO1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => REG1_GRT_EXP_IN(7),
      I1 => REG1_GRT_EXP_IN(6),
      I2 => REG1_GRT_EXP_IN(5),
      I3 => REG1_GRT_EXP_IN(4),
      O => N62
    );
  S1_MAN_ZERO1 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => REG1_GRT_EXP_IN(0),
      I1 => REG1_GRT_EXP_IN(1),
      I2 => REG1_GRT_EXP_IN(3),
      I3 => REG1_GRT_EXP_IN(2),
      I4 => N62,
      I5 => S1_MAN_GND_12_o_MAN1_22_equal_6_o,
      O => S1_MAN_ZERO1_595
    );
  S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG1_SML_MAN_IN(1),
      I1 => REG1_SML_MAN_IN(0),
      I2 => REG1_SML_MAN_IN(2),
      I3 => REG1_SML_MAN_IN(3),
      I4 => REG1_SML_MAN_IN(4),
      I5 => REG1_SML_MAN_IN(5),
      O => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_Q
    );
  S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG1_SML_MAN_IN(7),
      I1 => REG1_SML_MAN_IN(6),
      I2 => REG1_SML_MAN_IN(8),
      I3 => REG1_SML_MAN_IN(9),
      I4 => REG1_SML_MAN_IN(10),
      I5 => REG1_SML_MAN_IN(11),
      O => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_1_719
    );
  S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG1_SML_MAN_IN(13),
      I1 => REG1_SML_MAN_IN(12),
      I2 => REG1_SML_MAN_IN(14),
      I3 => REG1_SML_MAN_IN(15),
      I4 => REG1_SML_MAN_IN(16),
      I5 => REG1_SML_MAN_IN(17),
      O => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_2_720
    );
  S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_4 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => REG1_SML_MAN_IN(19),
      I1 => REG1_SML_MAN_IN(18),
      I2 => REG1_SML_MAN_IN(20),
      I3 => REG1_SML_MAN_IN(21),
      I4 => REG1_SML_MAN_IN(22),
      O => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_3_721
    );
  S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_5 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_Q,
      I1 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_1_719,
      I2 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_2_720,
      I3 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_3_721,
      O => S1_MAN_GND_12_o_MAN2_22_equal_12_o
    );
  S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(1),
      I1 => REG1_GRT_MAN_IN(0),
      I2 => REG1_GRT_MAN_IN(2),
      I3 => REG1_GRT_MAN_IN(3),
      I4 => REG1_GRT_MAN_IN(4),
      I5 => REG1_GRT_MAN_IN(5),
      O => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_Q
    );
  S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(7),
      I1 => REG1_GRT_MAN_IN(6),
      I2 => REG1_GRT_MAN_IN(8),
      I3 => REG1_GRT_MAN_IN(9),
      I4 => REG1_GRT_MAN_IN(10),
      I5 => REG1_GRT_MAN_IN(11),
      O => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_1_723
    );
  S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(13),
      I1 => REG1_GRT_MAN_IN(12),
      I2 => REG1_GRT_MAN_IN(14),
      I3 => REG1_GRT_MAN_IN(15),
      I4 => REG1_GRT_MAN_IN(16),
      I5 => REG1_GRT_MAN_IN(17),
      O => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_2_724
    );
  S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_4 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => REG1_GRT_MAN_IN(19),
      I1 => REG1_GRT_MAN_IN(18),
      I2 => REG1_GRT_MAN_IN(20),
      I3 => REG1_GRT_MAN_IN(21),
      I4 => REG1_GRT_MAN_IN(22),
      O => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_3_725
    );
  S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_5 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_Q,
      I1 => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_1_723,
      I2 => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_2_724,
      I3 => S1_MAN_GND_12_o_MAN1_22_equal_6_o_22_3_725,
      O => S1_MAN_GND_12_o_MAN1_22_equal_6_o
    );
  S1_MAN_PWR_11_o_EXP1_7_equal_17_o_7_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => REG1_GRT_EXP_IN(6),
      I1 => REG1_GRT_EXP_IN(5),
      I2 => REG1_GRT_EXP_IN(4),
      O => N66
    );
  S1_MAN_PWR_11_o_EXP1_7_equal_17_o_7_Q : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => REG1_GRT_EXP_IN(1),
      I1 => REG1_GRT_EXP_IN(0),
      I2 => REG1_GRT_EXP_IN(3),
      I3 => REG1_GRT_EXP_IN(2),
      I4 => REG1_GRT_EXP_IN(7),
      I5 => N66,
      O => S1_MAN_PWR_11_o_EXP1_7_equal_17_o
    );
  S2_OP_GEN_23_U_Mxor_S_xo_0_SW0 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => REG1_OFF_OUT(1),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(4),
      O => N68
    );
  INPUT1_31_IBUF : IBUF
    port map (
      I => INPUT1(31),
      O => INPUT1_31_IBUF_0
    );
  INPUT1_30_IBUF : IBUF
    port map (
      I => INPUT1(30),
      O => INPUT1_30_IBUF_1
    );
  INPUT1_29_IBUF : IBUF
    port map (
      I => INPUT1(29),
      O => INPUT1_29_IBUF_2
    );
  INPUT1_28_IBUF : IBUF
    port map (
      I => INPUT1(28),
      O => INPUT1_28_IBUF_3
    );
  INPUT1_27_IBUF : IBUF
    port map (
      I => INPUT1(27),
      O => INPUT1_27_IBUF_4
    );
  INPUT1_26_IBUF : IBUF
    port map (
      I => INPUT1(26),
      O => INPUT1_26_IBUF_5
    );
  INPUT1_25_IBUF : IBUF
    port map (
      I => INPUT1(25),
      O => INPUT1_25_IBUF_6
    );
  INPUT1_24_IBUF : IBUF
    port map (
      I => INPUT1(24),
      O => INPUT1_24_IBUF_7
    );
  INPUT1_23_IBUF : IBUF
    port map (
      I => INPUT1(23),
      O => INPUT1_23_IBUF_8
    );
  INPUT1_22_IBUF : IBUF
    port map (
      I => INPUT1(22),
      O => INPUT1_22_IBUF_9
    );
  INPUT1_21_IBUF : IBUF
    port map (
      I => INPUT1(21),
      O => INPUT1_21_IBUF_10
    );
  INPUT1_20_IBUF : IBUF
    port map (
      I => INPUT1(20),
      O => INPUT1_20_IBUF_11
    );
  INPUT1_19_IBUF : IBUF
    port map (
      I => INPUT1(19),
      O => INPUT1_19_IBUF_12
    );
  INPUT1_18_IBUF : IBUF
    port map (
      I => INPUT1(18),
      O => INPUT1_18_IBUF_13
    );
  INPUT1_17_IBUF : IBUF
    port map (
      I => INPUT1(17),
      O => INPUT1_17_IBUF_14
    );
  INPUT1_16_IBUF : IBUF
    port map (
      I => INPUT1(16),
      O => INPUT1_16_IBUF_15
    );
  INPUT1_15_IBUF : IBUF
    port map (
      I => INPUT1(15),
      O => INPUT1_15_IBUF_16
    );
  INPUT1_14_IBUF : IBUF
    port map (
      I => INPUT1(14),
      O => INPUT1_14_IBUF_17
    );
  INPUT1_13_IBUF : IBUF
    port map (
      I => INPUT1(13),
      O => INPUT1_13_IBUF_18
    );
  INPUT1_12_IBUF : IBUF
    port map (
      I => INPUT1(12),
      O => INPUT1_12_IBUF_19
    );
  INPUT1_11_IBUF : IBUF
    port map (
      I => INPUT1(11),
      O => INPUT1_11_IBUF_20
    );
  INPUT1_10_IBUF : IBUF
    port map (
      I => INPUT1(10),
      O => INPUT1_10_IBUF_21
    );
  INPUT1_9_IBUF : IBUF
    port map (
      I => INPUT1(9),
      O => INPUT1_9_IBUF_22
    );
  INPUT1_8_IBUF : IBUF
    port map (
      I => INPUT1(8),
      O => INPUT1_8_IBUF_23
    );
  INPUT1_7_IBUF : IBUF
    port map (
      I => INPUT1(7),
      O => INPUT1_7_IBUF_24
    );
  INPUT1_6_IBUF : IBUF
    port map (
      I => INPUT1(6),
      O => INPUT1_6_IBUF_25
    );
  INPUT1_5_IBUF : IBUF
    port map (
      I => INPUT1(5),
      O => INPUT1_5_IBUF_26
    );
  INPUT1_4_IBUF : IBUF
    port map (
      I => INPUT1(4),
      O => INPUT1_4_IBUF_27
    );
  INPUT1_3_IBUF : IBUF
    port map (
      I => INPUT1(3),
      O => INPUT1_3_IBUF_28
    );
  INPUT1_2_IBUF : IBUF
    port map (
      I => INPUT1(2),
      O => INPUT1_2_IBUF_29
    );
  INPUT1_1_IBUF : IBUF
    port map (
      I => INPUT1(1),
      O => INPUT1_1_IBUF_30
    );
  INPUT1_0_IBUF : IBUF
    port map (
      I => INPUT1(0),
      O => INPUT1_0_IBUF_31
    );
  INPUT2_31_IBUF : IBUF
    port map (
      I => INPUT2(31),
      O => INPUT2_31_IBUF_32
    );
  INPUT2_30_IBUF : IBUF
    port map (
      I => INPUT2(30),
      O => INPUT2_30_IBUF_33
    );
  INPUT2_29_IBUF : IBUF
    port map (
      I => INPUT2(29),
      O => INPUT2_29_IBUF_34
    );
  INPUT2_28_IBUF : IBUF
    port map (
      I => INPUT2(28),
      O => INPUT2_28_IBUF_35
    );
  INPUT2_27_IBUF : IBUF
    port map (
      I => INPUT2(27),
      O => INPUT2_27_IBUF_36
    );
  INPUT2_26_IBUF : IBUF
    port map (
      I => INPUT2(26),
      O => INPUT2_26_IBUF_37
    );
  INPUT2_25_IBUF : IBUF
    port map (
      I => INPUT2(25),
      O => INPUT2_25_IBUF_38
    );
  INPUT2_24_IBUF : IBUF
    port map (
      I => INPUT2(24),
      O => INPUT2_24_IBUF_39
    );
  INPUT2_23_IBUF : IBUF
    port map (
      I => INPUT2(23),
      O => INPUT2_23_IBUF_40
    );
  INPUT2_22_IBUF : IBUF
    port map (
      I => INPUT2(22),
      O => INPUT2_22_IBUF_41
    );
  INPUT2_21_IBUF : IBUF
    port map (
      I => INPUT2(21),
      O => INPUT2_21_IBUF_42
    );
  INPUT2_20_IBUF : IBUF
    port map (
      I => INPUT2(20),
      O => INPUT2_20_IBUF_43
    );
  INPUT2_19_IBUF : IBUF
    port map (
      I => INPUT2(19),
      O => INPUT2_19_IBUF_44
    );
  INPUT2_18_IBUF : IBUF
    port map (
      I => INPUT2(18),
      O => INPUT2_18_IBUF_45
    );
  INPUT2_17_IBUF : IBUF
    port map (
      I => INPUT2(17),
      O => INPUT2_17_IBUF_46
    );
  INPUT2_16_IBUF : IBUF
    port map (
      I => INPUT2(16),
      O => INPUT2_16_IBUF_47
    );
  INPUT2_15_IBUF : IBUF
    port map (
      I => INPUT2(15),
      O => INPUT2_15_IBUF_48
    );
  INPUT2_14_IBUF : IBUF
    port map (
      I => INPUT2(14),
      O => INPUT2_14_IBUF_49
    );
  INPUT2_13_IBUF : IBUF
    port map (
      I => INPUT2(13),
      O => INPUT2_13_IBUF_50
    );
  INPUT2_12_IBUF : IBUF
    port map (
      I => INPUT2(12),
      O => INPUT2_12_IBUF_51
    );
  INPUT2_11_IBUF : IBUF
    port map (
      I => INPUT2(11),
      O => INPUT2_11_IBUF_52
    );
  INPUT2_10_IBUF : IBUF
    port map (
      I => INPUT2(10),
      O => INPUT2_10_IBUF_53
    );
  INPUT2_9_IBUF : IBUF
    port map (
      I => INPUT2(9),
      O => INPUT2_9_IBUF_54
    );
  INPUT2_8_IBUF : IBUF
    port map (
      I => INPUT2(8),
      O => INPUT2_8_IBUF_55
    );
  INPUT2_7_IBUF : IBUF
    port map (
      I => INPUT2(7),
      O => INPUT2_7_IBUF_56
    );
  INPUT2_6_IBUF : IBUF
    port map (
      I => INPUT2(6),
      O => INPUT2_6_IBUF_57
    );
  INPUT2_5_IBUF : IBUF
    port map (
      I => INPUT2(5),
      O => INPUT2_5_IBUF_58
    );
  INPUT2_4_IBUF : IBUF
    port map (
      I => INPUT2(4),
      O => INPUT2_4_IBUF_59
    );
  INPUT2_3_IBUF : IBUF
    port map (
      I => INPUT2(3),
      O => INPUT2_3_IBUF_60
    );
  INPUT2_2_IBUF : IBUF
    port map (
      I => INPUT2(2),
      O => INPUT2_2_IBUF_61
    );
  INPUT2_1_IBUF : IBUF
    port map (
      I => INPUT2(1),
      O => INPUT2_1_IBUF_62
    );
  INPUT2_0_IBUF : IBUF
    port map (
      I => INPUT2(0),
      O => INPUT2_0_IBUF_63
    );
  RESET_IBUF : IBUF
    port map (
      I => RESET,
      O => RESET_IBUF_65
    );
  OP_IN_IBUF : IBUF
    port map (
      I => OP_IN,
      O => OP_IN_IBUF_66
    );
  OUTPUT_31_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(31),
      O => OUTPUT(31)
    );
  OUTPUT_30_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(30),
      O => OUTPUT(30)
    );
  OUTPUT_29_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(29),
      O => OUTPUT(29)
    );
  OUTPUT_28_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(28),
      O => OUTPUT(28)
    );
  OUTPUT_27_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(27),
      O => OUTPUT(27)
    );
  OUTPUT_26_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(26),
      O => OUTPUT(26)
    );
  OUTPUT_25_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(25),
      O => OUTPUT(25)
    );
  OUTPUT_24_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(24),
      O => OUTPUT(24)
    );
  OUTPUT_23_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(23),
      O => OUTPUT(23)
    );
  OUTPUT_22_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(22),
      O => OUTPUT(22)
    );
  OUTPUT_21_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(21),
      O => OUTPUT(21)
    );
  OUTPUT_20_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(20),
      O => OUTPUT(20)
    );
  OUTPUT_19_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(19),
      O => OUTPUT(19)
    );
  OUTPUT_18_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(18),
      O => OUTPUT(18)
    );
  OUTPUT_17_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(17),
      O => OUTPUT(17)
    );
  OUTPUT_16_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(16),
      O => OUTPUT(16)
    );
  OUTPUT_15_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(15),
      O => OUTPUT(15)
    );
  OUTPUT_14_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(14),
      O => OUTPUT(14)
    );
  OUTPUT_13_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(13),
      O => OUTPUT(13)
    );
  OUTPUT_12_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(12),
      O => OUTPUT(12)
    );
  OUTPUT_11_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(11),
      O => OUTPUT(11)
    );
  OUTPUT_10_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(10),
      O => OUTPUT(10)
    );
  OUTPUT_9_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(9),
      O => OUTPUT(9)
    );
  OUTPUT_8_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(8),
      O => OUTPUT(8)
    );
  OUTPUT_7_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(7),
      O => OUTPUT(7)
    );
  OUTPUT_6_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(6),
      O => OUTPUT(6)
    );
  OUTPUT_5_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(5),
      O => OUTPUT(5)
    );
  OUTPUT_4_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(4),
      O => OUTPUT(4)
    );
  OUTPUT_3_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(3),
      O => OUTPUT(3)
    );
  OUTPUT_2_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(2),
      O => OUTPUT(2)
    );
  OUTPUT_1_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(1),
      O => OUTPUT(1)
    );
  OUTPUT_0_OBUF : OBUF
    port map (
      I => REG3_FINAL_OUT(0),
      O => OUTPUT(0)
    );
  S3_Mmux_FINAL251 : LUT6
    generic map(
      INIT => X"00000000CC00F0CA"
    )
    port map (
      I0 => REG2_SIG_OUT_134,
      I1 => REG2_SKIP_OUT(31),
      I2 => REG2_ERR_OUT(0),
      I3 => REG2_ERR_OUT(2),
      I4 => REG2_ERR_OUT(1),
      I5 => S3_TMP_UF,
      O => REG3_FINAL_IN(31)
    );
  S3_Mmux_FINAL16 : LUT6
    generic map(
      INIT => X"FFFFFFFFF6B3F6A2"
    )
    port map (
      I0 => REG2_ERR_OUT(2),
      I1 => REG2_ERR_OUT(1),
      I2 => REG2_SKIP_OUT(23),
      I3 => REG2_ERR_OUT(0),
      I4 => N34,
      I5 => S3_TMP_UF,
      O => REG3_FINAL_IN(23)
    );
  S3_Mmux_FINAL17 : LUT6
    generic map(
      INIT => X"FFFFFFFFF6B3F6A2"
    )
    port map (
      I0 => REG2_ERR_OUT(2),
      I1 => REG2_ERR_OUT(1),
      I2 => REG2_SKIP_OUT(24),
      I3 => REG2_ERR_OUT(0),
      I4 => N36,
      I5 => S3_TMP_UF,
      O => REG3_FINAL_IN(24)
    );
  S3_Mmux_FINAL18 : LUT6
    generic map(
      INIT => X"FFFFFFFFF6B3F6A2"
    )
    port map (
      I0 => REG2_ERR_OUT(2),
      I1 => REG2_ERR_OUT(1),
      I2 => REG2_SKIP_OUT(25),
      I3 => REG2_ERR_OUT(0),
      I4 => N38,
      I5 => S3_TMP_UF,
      O => REG3_FINAL_IN(25)
    );
  S3_Mmux_FINAL19 : LUT6
    generic map(
      INIT => X"FFFFAFCBFFFFAFC8"
    )
    port map (
      I0 => REG2_SKIP_OUT(26),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N40,
      O => REG3_FINAL_IN(26)
    );
  S3_Mmux_FINAL20 : LUT6
    generic map(
      INIT => X"FFFFAFCBFFFFAFC8"
    )
    port map (
      I0 => REG2_SKIP_OUT(27),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N42,
      O => REG3_FINAL_IN(27)
    );
  S3_Mmux_FINAL21 : LUT6
    generic map(
      INIT => X"FFFFAFCBFFFFAFC8"
    )
    port map (
      I0 => REG2_SKIP_OUT(28),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N44,
      O => REG3_FINAL_IN(28)
    );
  S3_Mmux_FINAL22_SW0 : LUT5
    generic map(
      INIT => X"A9AA99A9"
    )
    port map (
      I0 => REG2_EXP_OUT(6),
      I1 => REG2_EXP_OUT(5),
      I2 => REG2_EXP_OUT(4),
      I3 => S3_NORM_MAN_OFF(4),
      I4 => S3_NORM_OP_C_4_Q,
      O => N46
    );
  S3_Mmux_FINAL24_SW0 : LUT6
    generic map(
      INIT => X"AAA9AAAAA9A9AAA9"
    )
    port map (
      I0 => REG2_EXP_OUT(7),
      I1 => REG2_EXP_OUT(6),
      I2 => REG2_EXP_OUT(5),
      I3 => REG2_EXP_OUT(4),
      I4 => S3_NORM_MAN_OFF(4),
      I5 => S3_NORM_OP_C_4_Q,
      O => N48
    );
  S3_NORM_RPE_Mmux_OUTPUT112 : LUT6
    generic map(
      INIT => X"FF00FF00FFBAFFF0"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(1),
      I2 => REG2_MAN_OUT(0),
      I3 => S3_NORM_RPE_Mmux_OUTPUT110,
      I4 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_4,
      I5 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_20_o,
      O => S3_NORM_RPE_Mmux_OUTPUT111_627
    );
  S3_NORM_RPE_Mmux_OUTPUT2121 : LUT6
    generic map(
      INIT => X"FFDD0010FFFF0000"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(3),
      I2 => REG2_MAN_OUT(1),
      I3 => REG2_MAN_OUT(4),
      I4 => REG2_MAN_OUT(0),
      I5 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_3,
      O => S3_NORM_RPE_Mmux_OUTPUT212
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_12 : LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => REG2_MAN_OUT(16),
      I1 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112,
      I2 => REG2_MAN_OUT(17),
      I3 => REG2_MAN_OUT(12),
      I4 => S3_NORM_RPE_Mmux_OUTPUT321,
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1
    );
  REG1_OFF_OUT_1_1 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(4),
      I1 => REG1_SML_MAN_OUT(5),
      I2 => REG1_SML_MAN_OUT(7),
      I3 => REG1_SML_MAN_OUT(6),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out
    );
  REG1_OFF_OUT_1_151 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => REG1_SML_MAN_OUT(5),
      I1 => REG1_SML_MAN_OUT(6),
      I2 => REG1_SML_MAN_OUT(8),
      I3 => REG1_SML_MAN_OUT(7),
      I4 => REG1_OFF_OUT_1_1_876,
      I5 => REG1_OFF_OUT_0_1_877,
      O => REG1_OFF_OUT_1_mmx_out5
    );
  S3_NORM_RPE_Mmux_OUTPUT114_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFF55551101"
    )
    port map (
      I0 => REG2_MAN_OUT(22),
      I1 => REG2_MAN_OUT(20),
      I2 => REG2_MAN_OUT(18),
      I3 => REG2_MAN_OUT(19),
      I4 => REG2_MAN_OUT(21),
      I5 => REG2_MAN_OUT(23),
      O => N70
    );
  S3_NORM_RPE_Mmux_OUTPUT115 : LUT6
    generic map(
      INIT => X"0F0F1D1D0F1D1D1D"
    )
    port map (
      I0 => N70,
      I1 => S3_NORM_RPE_Mmux_OUTPUT13,
      I2 => N71,
      I3 => S3_NORM_RPE_Mmux_OUTPUT15_625,
      I4 => S3_NORM_RPE_Mmux_OUTPUT14_624,
      I5 => S3_NORM_RPE_Mmux_OUTPUT112_628,
      O => S3_NORM_MAN_OFF(0)
    );
  S3_NORM_CMP_EXP_COMP0_SML3_SW0 : LUT6
    generic map(
      INIT => X"FEFEFFFEFFFEFFFF"
    )
    port map (
      I0 => REG2_EXP_OUT(7),
      I1 => REG2_EXP_OUT(6),
      I2 => REG2_EXP_OUT(5),
      I3 => REG2_EXP_OUT(4),
      I4 => S3_NORM_MAN_OFF(4),
      I5 => S3_NORM_CMP_EXP_COMP0_SML,
      O => N73
    );
  S3_NORM_CMP_EXP_COMP1_SML1 : LUT6
    generic map(
      INIT => X"087F0A5F0E1F0F0F"
    )
    port map (
      I0 => REG2_EXP_OUT(1),
      I1 => REG2_EXP_OUT(0),
      I2 => N73,
      I3 => N74,
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_TMP_UF
    );
  S2_OP_GEN_21_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(21),
      I1 => REG1_SKIP_OUT(20),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(21),
      I4 => S2_SHFT_M2(20),
      I5 => S2_OP_C_20_Q,
      O => S2_OP_C_22_Q
    );
  S2_OP_GEN_19_U_Cout1 : LUT6
    generic map(
      INIT => X"8FECCEF80EC88CE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(18),
      I1 => REG1_SKIP_OUT(19),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(19),
      I4 => S2_SHFT_M2(18),
      I5 => S2_OP_C_18_Q,
      O => S2_OP_C_20_Q
    );
  S2_OP_GEN_17_U_Cout1 : LUT6
    generic map(
      INIT => X"8FAEEAF80E8AA8E0"
    )
    port map (
      I0 => REG1_SKIP_OUT(17),
      I1 => REG1_SKIP_OUT(16),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(16),
      I4 => S2_SHFT_M2(17),
      I5 => S2_OP_C_16_Q,
      O => S2_OP_C_18_Q
    );
  S2_OP_GEN_15_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(15),
      I1 => REG1_SKIP_OUT(14),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(15),
      I4 => S2_SHFT_M2(14),
      I5 => S2_OP_C_14_Q,
      O => S2_OP_C_16_Q
    );
  S2_OP_GEN_13_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(13),
      I1 => REG1_SKIP_OUT(12),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(13),
      I4 => S2_SHFT_M2(12),
      I5 => S2_OP_C_12_Q,
      O => S2_OP_C_14_Q
    );
  S2_OP_GEN_11_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(11),
      I1 => REG1_SKIP_OUT(10),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(11),
      I4 => S2_SHFT_M2(10),
      I5 => S2_OP_C_10_Q,
      O => S2_OP_C_12_Q
    );
  S2_OP_GEN_9_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(9),
      I1 => REG1_SKIP_OUT(8),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(9),
      I4 => S2_SHFT_M2(8),
      I5 => S2_OP_GEN_7_U_Cout1_873,
      O => S2_OP_C_10_Q
    );
  S2_OP_GEN_7_U_Cout1 : LUT6
    generic map(
      INIT => X"F6727260F6E4E460"
    )
    port map (
      I0 => S2_SHFT_M2(7),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(7),
      I3 => S2_OP_C_6_Q,
      I4 => REG1_SKIP_OUT(6),
      I5 => S2_SHFT_M2(6),
      O => S2_REM_MAN
    );
  S2_OP_GEN_5_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(5),
      I1 => REG1_SKIP_OUT(4),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(5),
      I4 => S2_SHFT_M2(4),
      I5 => S2_OP_C_4_Q,
      O => S2_OP_C_6_Q
    );
  S2_OP_GEN_3_U_Cout1 : LUT6
    generic map(
      INIT => X"8FEAAEF80EA88AE0"
    )
    port map (
      I0 => REG1_SKIP_OUT(3),
      I1 => REG1_SKIP_OUT(2),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(3),
      I4 => S2_SHFT_M2(2),
      I5 => S2_OP_C_2_Q,
      O => S2_OP_C_4_Q
    );
  S2_Mmux_MAN_OUT111 : LUT6
    generic map(
      INIT => X"69FF690096FF9600"
    )
    port map (
      I0 => REG1_SKIP_OUT(20),
      I1 => REG1_OP_OUT_132,
      I2 => S2_SHFT_M2(20),
      I3 => S2_REM_MAN,
      I4 => S2_RESULT_19_Q,
      I5 => S2_OP_C_20_Q,
      O => REG2_MAN_IN(19)
    );
  S2_Mmux_MAN_OUT151 : LUT6
    generic map(
      INIT => X"B1B1AA55272755AA"
    )
    port map (
      I0 => REG1_SKIP_OUT(22),
      I1 => N79,
      I2 => N78,
      I3 => S2_OP_GEN_22_U_Mxor_S_xo_0_1,
      I4 => S2_REM_MAN,
      I5 => S2_OP_C_22_Q,
      O => REG2_MAN_IN(22)
    );
  REG1_OFF_OUT_2_21 : LUT6
    generic map(
      INIT => X"8088828AD5DDD7DF"
    )
    port map (
      I0 => REG1_OFF_OUT_2_1_875,
      I1 => REG1_OFF_OUT_0_3_882,
      I2 => REG1_OFF_OUT_1_2_881,
      I3 => REG1_SML_MAN_OUT(22),
      I4 => REG1_SML_MAN_OUT(21),
      I5 => REG1_OFF_OUT_1_mmx_out8,
      O => REG1_OFF_OUT_2_mmx_out10
    );
  S2_OP_GEN_19_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"6C9339C6C936639C"
    )
    port map (
      I0 => REG1_SKIP_OUT(18),
      I1 => REG1_SKIP_OUT(19),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(19),
      I4 => S2_SHFT_M2(18),
      I5 => S2_OP_C_18_Q,
      O => S2_RESULT_19_Q
    );
  S3_Mmux_FINAL271_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF_2_mmx_out3,
      O => N81
    );
  S3_Mmux_FINAL271 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(4),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N81,
      O => REG3_FINAL_IN(4)
    );
  S2_Mmux_MAN_OUT91 : LUT6
    generic map(
      INIT => X"69FF690096FF9600"
    )
    port map (
      I0 => REG1_SKIP_OUT(18),
      I1 => REG1_OP_OUT_132,
      I2 => S2_SHFT_M2(18),
      I3 => S2_REM_MAN,
      I4 => S2_RESULT_17_Q,
      I5 => S2_OP_C_18_Q,
      O => REG2_MAN_IN(17)
    );
  S3_Mmux_FINAL1101 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => REG2_ERR_OUT(0),
      I1 => REG2_ERR_OUT(1),
      I2 => REG2_ERR_OUT(2),
      I3 => S3_TMP_UF,
      O => S3_Mmux_FINAL110
    );
  S3_Mmux_FINAL1421 : LUT4
    generic map(
      INIT => X"FF40"
    )
    port map (
      I0 => REG2_ERR_OUT(2),
      I1 => REG2_ERR_OUT(1),
      I2 => REG2_ERR_OUT(0),
      I3 => S3_TMP_UF,
      O => S3_Mmux_FINAL142
    );
  S3_SPCL_SPECIAL_OUTPUT_0_11 : LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => REG2_ERR_OUT(1),
      I1 => REG2_ERR_OUT(2),
      I2 => S3_TMP_UF,
      O => S3_SPCL_SPECIAL_OUTPUT_0_1
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(0),
      O => N83
    );
  S2_Mmux_MAN_OUT131 : LUT6
    generic map(
      INIT => X"782D6699E14B9966"
    )
    port map (
      I0 => REG1_SKIP_OUT(20),
      I1 => REG1_OP_OUT_132,
      I2 => N85,
      I3 => S2_SHFT_M2(20),
      I4 => S2_REM_MAN,
      I5 => S2_OP_C_20_Q,
      O => REG2_MAN_IN(20)
    );
  S2_Mmux_MAN_OUT101 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_18_Q,
      I2 => REG1_SKIP_OUT(18),
      I3 => S2_SHFT_M2(18),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_19_Q,
      O => REG2_MAN_IN(18)
    );
  S2_Mmux_MAN_OUT161 : LUT6
    generic map(
      INIT => X"FFFF44BBFFFFB4B4"
    )
    port map (
      I0 => REG1_OFF_OUT(0),
      I1 => N68,
      I2 => N92,
      I3 => N93,
      I4 => S2_REM_MAN,
      I5 => S2_OP_C_20_Q,
      O => REG2_MAN_IN(23)
    );
  S2_OP_GEN_19_U_Cout1_SW0 : LUT6
    generic map(
      INIT => X"9AA99A9559959A95"
    )
    port map (
      I0 => REG1_SKIP_OUT(21),
      I1 => S2_SHFT_M2(20),
      I2 => REG1_SKIP_OUT(20),
      I3 => REG1_OP_OUT_132,
      I4 => REG1_SKIP_OUT(19),
      I5 => S2_SHFT_M2(19),
      O => N95
    );
  S2_OP_GEN_19_U_Cout1_SW2 : LUT6
    generic map(
      INIT => X"A5656656A5A6666A"
    )
    port map (
      I0 => REG1_SKIP_OUT(21),
      I1 => S2_SHFT_M2(20),
      I2 => REG1_OP_OUT_132,
      I3 => REG1_SKIP_OUT(19),
      I4 => REG1_SKIP_OUT(20),
      I5 => S2_SHFT_M2(19),
      O => N97
    );
  S2_OP_GEN_21_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"66CC3399C9C96363"
    )
    port map (
      I0 => REG1_SKIP_OUT(18),
      I1 => S2_SHFT_M2(21),
      I2 => N95,
      I3 => N97,
      I4 => N96,
      I5 => S2_OP_C_18_Q,
      O => S2_RESULT_21_Q
    );
  S2_OP_GEN_21_U_Cout1_SW2 : LUT6
    generic map(
      INIT => X"6566565AA6666A5A"
    )
    port map (
      I0 => REG1_SKIP_OUT(22),
      I1 => S2_SHFT_M2(21),
      I2 => REG1_OP_OUT_132,
      I3 => REG1_SKIP_OUT(20),
      I4 => REG1_SKIP_OUT(21),
      I5 => S2_SHFT_M2(20),
      O => N99
    );
  S2_OP_GEN_21_U_Cout1_SW3 : LUT6
    generic map(
      INIT => X"59A99AA959A95995"
    )
    port map (
      I0 => REG1_SKIP_OUT(22),
      I1 => S2_SHFT_M2(21),
      I2 => REG1_SKIP_OUT(21),
      I3 => REG1_OP_OUT_132,
      I4 => REG1_SKIP_OUT(20),
      I5 => S2_SHFT_M2(20),
      O => N100
    );
  S2_Mmux_MAN_OUT141 : LUT6
    generic map(
      INIT => X"A5FFA50066FF6600"
    )
    port map (
      I0 => S2_SHFT_M2(22),
      I1 => N99,
      I2 => N100,
      I3 => S2_REM_MAN,
      I4 => S2_RESULT_21_Q,
      I5 => S2_OP_C_20_Q,
      O => REG2_MAN_IN(21)
    );
  S2_OP_GEN_17_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"6A5995A6A965569A"
    )
    port map (
      I0 => REG1_SKIP_OUT(17),
      I1 => REG1_SKIP_OUT(16),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(16),
      I4 => S2_SHFT_M2(17),
      I5 => S2_OP_C_16_Q,
      O => S2_RESULT_17_Q
    );
  S2_OP_GEN_15_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"6A9559A6A956659A"
    )
    port map (
      I0 => REG1_SKIP_OUT(15),
      I1 => REG1_SKIP_OUT(14),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(15),
      I4 => S2_SHFT_M2(14),
      I5 => S2_OP_C_14_Q,
      O => S2_RESULT_15_Q
    );
  S2_Mmux_MAN_OUT71 : LUT6
    generic map(
      INIT => X"69FF690096FF9600"
    )
    port map (
      I0 => REG1_SKIP_OUT(16),
      I1 => REG1_OP_OUT_132,
      I2 => S2_SHFT_M2(16),
      I3 => S2_REM_MAN,
      I4 => S2_RESULT_15_Q,
      I5 => S2_OP_C_16_Q,
      O => REG2_MAN_IN(15)
    );
  S1_Mmux_ERR21_SW0 : LUT5
    generic map(
      INIT => X"5555BFFF"
    )
    port map (
      I0 => S1_MAN_ZERO2_594,
      I1 => S1_MAN_GND_12_o_MAN1_22_equal_6_o,
      I2 => S1_Mmux_ERR21,
      I3 => S1_MAN_GND_12_o_MAN2_22_equal_12_o,
      I4 => S1_MAN_ZERO1_595,
      O => N102
    );
  S1_Mmux_ERR23 : LUT6
    generic map(
      INIT => X"000000007777777F"
    )
    port map (
      I0 => REG1_OFF_IN(3),
      I1 => REG1_OFF_IN(4),
      I2 => S1_EXP_DIFF(5),
      I3 => S1_EXP_DIFF(6),
      I4 => S1_EXP_DIFF(7),
      I5 => N102,
      O => REG1_ERR_IN(1)
    );
  S1_Mmux_ERR32_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFF153F953F"
    )
    port map (
      I0 => S1_MAN_PWR_11_o_EXP1_7_equal_17_o,
      I1 => S1_MAN_GND_12_o_MAN2_22_equal_12_o,
      I2 => S1_MAN_PWR_11_o_EXP2_7_equal_11_o,
      I3 => S1_MAN_GND_12_o_MAN1_22_equal_6_o,
      I4 => S1_Mmux_ERR32,
      I5 => S1_MAN_ZERO1_595,
      O => N104
    );
  S1_Mmux_ERR34 : LUT6
    generic map(
      INIT => X"000000000A0A0A0B"
    )
    port map (
      I0 => S1_Mmux_ERR3,
      I1 => S1_EXP_DIFF(5),
      I2 => S1_MAN_ZERO2_594,
      I3 => S1_EXP_DIFF(6),
      I4 => S1_EXP_DIFF(7),
      I5 => N104,
      O => REG1_ERR_IN(2)
    );
  S2_Mmux_MAN_OUT51 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_14_Q,
      I2 => REG1_SKIP_OUT(14),
      I3 => S2_SHFT_M2(14),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_13_Q,
      O => REG2_MAN_IN(13)
    );
  S2_Mmux_ERR_OUT31 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => REG1_ERR_OUT(2),
      I1 => REG1_SKIP_OUT(30),
      I2 => S2_P1_C_6_Q,
      I3 => REG1_SKIP_OUT(29),
      O => REG2_ERR_IN(2)
    );
  S2_Mmux_ERR_OUT21 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => REG1_ERR_OUT(1),
      I1 => REG1_SKIP_OUT(30),
      I2 => S2_P1_C_6_Q,
      I3 => REG1_SKIP_OUT(29),
      O => REG2_ERR_IN(1)
    );
  S2_Mmux_ERR_OUT11 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => REG1_ERR_OUT(0),
      I1 => REG1_SKIP_OUT(30),
      I2 => S2_P1_C_6_Q,
      I3 => REG1_SKIP_OUT(29),
      O => REG2_ERR_IN(0)
    );
  S1_Mmux_ERR11 : LUT4
    generic map(
      INIT => X"6900"
    )
    port map (
      I0 => S1_SML_TMP(27),
      I1 => REG1_GRT_EXP_IN(4),
      I2 => S1_ESub_C_4_Q,
      I3 => REG1_OFF_IN(3),
      O => S1_Mmux_ERR1
    );
  S1_Mmux_ERR31 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => S1_ESub_C_4_Q,
      I1 => REG1_GRT_EXP_IN(4),
      I2 => S1_SML_TMP(27),
      I3 => REG1_OFF_IN(3),
      O => S1_Mmux_ERR3
    );
  S2_P1_GEN_5_U_Cout1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => REG1_SKIP_OUT(28),
      I1 => REG1_SKIP_OUT(26),
      I2 => S2_P1_C_2_Q,
      I3 => REG1_SKIP_OUT(25),
      I4 => REG1_SKIP_OUT(27),
      O => S2_P1_C_6_Q
    );
  S1_ESub_GEN_1_U_Cout1 : LUT6
    generic map(
      INIT => X"FFFFBB2BD4DDFFFF"
    )
    port map (
      I0 => REG0_INPUT1_OUT(24),
      I1 => REG0_INPUT2_OUT(24),
      I2 => REG0_INPUT2_OUT(23),
      I3 => REG0_INPUT1_OUT(23),
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o,
      I5 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      O => S1_ESub_C_2_Q
    );
  S1_COMP_Mmux_SML_IN110 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(0),
      I1 => REG0_INPUT2_OUT(0),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(0)
    );
  S1_COMP_Mmux_SML_IN210 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(10),
      I1 => REG0_INPUT2_OUT(10),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(10)
    );
  S1_COMP_Mmux_SML_IN33 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(11),
      I1 => REG0_INPUT2_OUT(11),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(11)
    );
  S1_COMP_Mmux_SML_IN41 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(12),
      I1 => REG0_INPUT2_OUT(12),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(12)
    );
  S1_COMP_Mmux_SML_IN51 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(13),
      I1 => REG0_INPUT2_OUT(13),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(13)
    );
  S1_COMP_Mmux_SML_IN61 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(14),
      I1 => REG0_INPUT2_OUT(14),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(14)
    );
  S1_COMP_Mmux_SML_IN71 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(15),
      I1 => REG0_INPUT2_OUT(15),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(15)
    );
  S1_COMP_Mmux_SML_IN81 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(16),
      I1 => REG0_INPUT2_OUT(16),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(16)
    );
  S1_COMP_Mmux_SML_IN91 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(17),
      I1 => REG0_INPUT2_OUT(17),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(17)
    );
  S1_COMP_Mmux_SML_IN101 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(18),
      I1 => REG0_INPUT2_OUT(18),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(18)
    );
  S1_COMP_Mmux_SML_IN111 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(19),
      I1 => REG0_INPUT2_OUT(19),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(19)
    );
  S1_COMP_Mmux_SML_IN121 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(1),
      I1 => REG0_INPUT2_OUT(1),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(1)
    );
  S1_COMP_Mmux_SML_IN131 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(20),
      I1 => REG0_INPUT2_OUT(20),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(20)
    );
  S1_COMP_Mmux_SML_IN141 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(21),
      I1 => REG0_INPUT2_OUT(21),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(21)
    );
  S1_COMP_Mmux_SML_IN151 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(22),
      I1 => REG0_INPUT2_OUT(22),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(22)
    );
  S1_COMP_Mmux_SML_IN181 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(25),
      I1 => REG0_INPUT2_OUT(25),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_SML_TMP(25)
    );
  S1_COMP_Mmux_SML_IN191 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(26),
      I1 => REG0_INPUT2_OUT(26),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_SML_TMP(26)
    );
  S1_COMP_Mmux_SML_IN201 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(27),
      I1 => REG0_INPUT2_OUT(27),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_SML_TMP(27)
    );
  S1_COMP_Mmux_SML_IN211 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(28),
      I1 => REG0_INPUT2_OUT(28),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_SML_TMP(28)
    );
  S1_COMP_Mmux_SML_IN231 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(2),
      I1 => REG0_INPUT2_OUT(2),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(2)
    );
  S1_COMP_Mmux_SML_IN261 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(3),
      I1 => REG0_INPUT2_OUT(3),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(3)
    );
  S1_COMP_Mmux_SML_IN271 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(4),
      I1 => REG0_INPUT2_OUT(4),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(4)
    );
  S1_COMP_Mmux_SML_IN281 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(5),
      I1 => REG0_INPUT2_OUT(5),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(5)
    );
  S1_COMP_Mmux_SML_IN291 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(6),
      I1 => REG0_INPUT2_OUT(6),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(6)
    );
  S1_COMP_Mmux_SML_IN301 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(7),
      I1 => REG0_INPUT2_OUT(7),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(7)
    );
  S1_COMP_Mmux_SML_IN311 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(8),
      I1 => REG0_INPUT2_OUT(8),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(8)
    );
  S1_COMP_Mmux_SML_IN321 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(9),
      I1 => REG0_INPUT2_OUT(9),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => REG1_SML_MAN_IN(9)
    );
  S1_COMP_Mmux_GRT_IN110 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(0),
      I1 => REG0_INPUT2_OUT(0),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(0)
    );
  S1_COMP_Mmux_GRT_IN210 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(10),
      I1 => REG0_INPUT2_OUT(10),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(10)
    );
  S1_COMP_Mmux_GRT_IN33 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(11),
      I1 => REG0_INPUT2_OUT(11),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(11)
    );
  S1_COMP_Mmux_GRT_IN41 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(12),
      I1 => REG0_INPUT2_OUT(12),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(12)
    );
  S1_COMP_Mmux_GRT_IN51 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(13),
      I1 => REG0_INPUT2_OUT(13),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(13)
    );
  S1_COMP_Mmux_GRT_IN61 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(14),
      I1 => REG0_INPUT2_OUT(14),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(14)
    );
  S1_COMP_Mmux_GRT_IN71 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(15),
      I1 => REG0_INPUT2_OUT(15),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(15)
    );
  S1_COMP_Mmux_GRT_IN81 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(16),
      I1 => REG0_INPUT2_OUT(16),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(16)
    );
  S1_COMP_Mmux_GRT_IN91 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(17),
      I1 => REG0_INPUT2_OUT(17),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(17)
    );
  S1_COMP_Mmux_GRT_IN101 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(18),
      I1 => REG0_INPUT2_OUT(18),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(18)
    );
  S1_COMP_Mmux_GRT_IN111 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(19),
      I1 => REG0_INPUT2_OUT(19),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(19)
    );
  S1_COMP_Mmux_GRT_IN121 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(1),
      I1 => REG0_INPUT2_OUT(1),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(1)
    );
  S1_COMP_Mmux_GRT_IN131 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(20),
      I1 => REG0_INPUT2_OUT(20),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(20)
    );
  S1_COMP_Mmux_GRT_IN141 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(21),
      I1 => REG0_INPUT2_OUT(21),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(21)
    );
  S1_COMP_Mmux_GRT_IN151 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(22),
      I1 => REG0_INPUT2_OUT(22),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(22)
    );
  S1_COMP_Mmux_GRT_IN181 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(25),
      I1 => REG0_INPUT2_OUT(25),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_EXP_IN(2)
    );
  S1_COMP_Mmux_GRT_IN191 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(26),
      I1 => REG0_INPUT2_OUT(26),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_EXP_IN(3)
    );
  S1_COMP_Mmux_GRT_IN231 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(2),
      I1 => REG0_INPUT2_OUT(2),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(2)
    );
  S1_COMP_Mmux_GRT_IN261 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(3),
      I1 => REG0_INPUT2_OUT(3),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(3)
    );
  S1_COMP_Mmux_GRT_IN271 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(4),
      I1 => REG0_INPUT2_OUT(4),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(4)
    );
  S1_COMP_Mmux_GRT_IN281 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(5),
      I1 => REG0_INPUT2_OUT(5),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(5)
    );
  S1_COMP_Mmux_GRT_IN291 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(6),
      I1 => REG0_INPUT2_OUT(6),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(6)
    );
  S1_COMP_Mmux_GRT_IN301 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(7),
      I1 => REG0_INPUT2_OUT(7),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(7)
    );
  S1_COMP_Mmux_GRT_IN311 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(8),
      I1 => REG0_INPUT2_OUT(8),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(8)
    );
  S1_COMP_Mmux_GRT_IN321 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(9),
      I1 => REG0_INPUT2_OUT(9),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_MAN_IN(9)
    );
  S1_COMP_EComp_COMP1_EQ_SW0_SW0 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => REG0_INPUT1_OUT(23),
      I1 => REG0_INPUT2_OUT(23),
      I2 => REG0_INPUT1_OUT(24),
      I3 => REG0_INPUT2_OUT(24),
      O => N106
    );
  S1_COMP_MComp_G_1_1_U_COMP1_SML2 : LUT4
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => REG0_INPUT2_OUT(15),
      I1 => REG0_INPUT1_OUT(15),
      I2 => REG0_INPUT1_OUT(16),
      I3 => REG0_INPUT2_OUT(16),
      O => S1_COMP_MComp_G_1_1_U_COMP1_SML1_692
    );
  S1_COMP_MComp_G_1_1_U_COMP1_GRT2 : LUT4
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => REG0_INPUT1_OUT(15),
      I1 => REG0_INPUT2_OUT(15),
      I2 => REG0_INPUT2_OUT(16),
      I3 => REG0_INPUT1_OUT(16),
      O => S1_COMP_MComp_G_1_1_U_COMP1_GRT1_695
    );
  S1_COMP_MComp_G_1_0_U_COMP1_SML2 : LUT4
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => REG0_INPUT2_OUT(7),
      I1 => REG0_INPUT1_OUT(7),
      I2 => REG0_INPUT1_OUT(8),
      I3 => REG0_INPUT2_OUT(8),
      O => S1_COMP_MComp_G_1_0_U_COMP1_SML1_698
    );
  S1_COMP_MComp_G_1_0_U_COMP1_GRT2 : LUT4
    generic map(
      INIT => X"2F02"
    )
    port map (
      I0 => REG0_INPUT1_OUT(7),
      I1 => REG0_INPUT2_OUT(7),
      I2 => REG0_INPUT2_OUT(8),
      I3 => REG0_INPUT1_OUT(8),
      O => S1_COMP_MComp_G_1_0_U_COMP1_GRT1_701
    );
  S2_Mmux_MAN_OUT81 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_16_Q,
      I2 => REG1_SKIP_OUT(16),
      I3 => S2_SHFT_M2(16),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_17_Q,
      O => REG2_MAN_IN(16)
    );
  S2_Mmux_MAN_OUT61 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_14_Q,
      I2 => REG1_SKIP_OUT(14),
      I3 => S2_SHFT_M2(14),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_15_Q,
      O => REG2_MAN_IN(14)
    );
  S1_ESub_GEN_6_U_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"35CACA35"
    )
    port map (
      I0 => REG0_INPUT2_OUT(29),
      I1 => REG0_INPUT1_OUT(29),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      I3 => S1_SML_TMP(29),
      I4 => S1_ESub_C_6_Q,
      O => S1_EXP_DIFF(6)
    );
  S1_Mmux_ERR13 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => S1_SML_TMP(31),
      I1 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_3_721,
      I2 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_2_720,
      I3 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_1_719,
      I4 => S1_MAN_GND_12_o_MAN2_22_equal_12_o_22_Q,
      I5 => S1_MAN_PWR_11_o_EXP2_7_equal_11_o,
      O => S1_Mmux_ERR12_685
    );
  S1_COMP_MComp_G_1_1_U_COMP1_SML4 : LUT5
    generic map(
      INIT => X"FFD4D4D4"
    )
    port map (
      I0 => REG0_INPUT1_OUT(22),
      I1 => REG0_INPUT2_OUT(22),
      I2 => S1_COMP_MComp_G_1_1_U_COMP1_SML,
      I3 => S1_COMP_MComp_G_1_1_U_COMP1_SML2_693,
      I4 => S1_COMP_MComp_G_1_1_U_COMP1_TE3_TE0_AND_31_o_580,
      O => S1_COMP_MComp_C(3)
    );
  S1_COMP_MComp_G_1_1_U_COMP1_GRT4 : LUT5
    generic map(
      INIT => X"FFD4D4D4"
    )
    port map (
      I0 => REG0_INPUT2_OUT(22),
      I1 => REG0_INPUT1_OUT(22),
      I2 => S1_COMP_MComp_G_1_1_U_COMP1_GRT,
      I3 => S1_COMP_MComp_G_1_1_U_COMP1_GRT2_696,
      I4 => S1_COMP_MComp_G_1_1_U_COMP1_TE3_TE0_AND_31_o_580,
      O => S1_COMP_MComp_C(2)
    );
  S1_COMP_MComp_G_1_0_U_COMP1_SML4 : LUT5
    generic map(
      INIT => X"FFD4D4D4"
    )
    port map (
      I0 => REG0_INPUT1_OUT(14),
      I1 => REG0_INPUT2_OUT(14),
      I2 => S1_COMP_MComp_G_1_0_U_COMP1_SML,
      I3 => S1_COMP_MComp_G_1_0_U_COMP1_SML2_699,
      I4 => S1_COMP_MComp_G_1_0_U_COMP1_TE3_TE0_AND_31_o_581,
      O => S1_COMP_MComp_C(1)
    );
  S1_COMP_MComp_G_1_0_U_COMP1_GRT4 : LUT5
    generic map(
      INIT => X"FFD4D4D4"
    )
    port map (
      I0 => REG0_INPUT2_OUT(14),
      I1 => REG0_INPUT1_OUT(14),
      I2 => S1_COMP_MComp_G_1_0_U_COMP1_GRT,
      I3 => S1_COMP_MComp_G_1_0_U_COMP1_GRT2_702,
      I4 => S1_COMP_MComp_G_1_0_U_COMP1_TE3_TE0_AND_31_o_581,
      O => S1_COMP_MComp_C(0)
    );
  S1_COMP_MComp_U3_COMP1_SML3 : LUT5
    generic map(
      INIT => X"FDF4DD44"
    )
    port map (
      I0 => REG0_INPUT1_OUT(6),
      I1 => REG0_INPUT2_OUT(6),
      I2 => S1_COMP_MComp_U3_COMP1_SML1_704,
      I3 => S1_COMP_MComp_U3_COMP1_SML,
      I4 => S1_COMP_MComp_U3_COMP1_TE3_TE0_AND_31_o_579,
      O => S1_COMP_MComp_C(5)
    );
  S1_COMP_MComp_U3_COMP1_GRT3 : LUT5
    generic map(
      INIT => X"FDF4DD44"
    )
    port map (
      I0 => REG0_INPUT2_OUT(6),
      I1 => REG0_INPUT1_OUT(6),
      I2 => S1_COMP_MComp_U3_COMP1_GRT1_706,
      I3 => S1_COMP_MComp_U3_COMP1_GRT,
      I4 => S1_COMP_MComp_U3_COMP1_TE3_TE0_AND_31_o_579,
      O => S1_COMP_MComp_C(4)
    );
  S3_NORM_RPE_Mmux_OUTPUT114_SW1 : MUXF7
    port map (
      I0 => N108,
      I1 => N109,
      S => S3_NORM_RPE_Mmux_OUTPUT1,
      O => N71
    );
  S3_NORM_RPE_Mmux_OUTPUT114_SW1_F : LUT6
    generic map(
      INIT => X"FFFFFFFF55551101"
    )
    port map (
      I0 => REG2_MAN_OUT(22),
      I1 => REG2_MAN_OUT(20),
      I2 => REG2_MAN_OUT(18),
      I3 => REG2_MAN_OUT(19),
      I4 => REG2_MAN_OUT(21),
      I5 => REG2_MAN_OUT(23),
      O => N108
    );
  S3_NORM_RPE_Mmux_OUTPUT114_SW1_G : LUT5
    generic map(
      INIT => X"FFFF4544"
    )
    port map (
      I0 => REG2_MAN_OUT(22),
      I1 => REG2_MAN_OUT(21),
      I2 => REG2_MAN_OUT(20),
      I3 => REG2_MAN_OUT(19),
      I4 => REG2_MAN_OUT(23),
      O => N109
    );
  S2_OP_GEN_21_U_Cout1_SW0 : MUXF7
    port map (
      I0 => N112,
      I1 => N113,
      S => S2_SHFT_M2(21),
      O => N92
    );
  S2_OP_GEN_21_U_Cout1_SW0_F : LUT6
    generic map(
      INIT => X"CDDD55D557773373"
    )
    port map (
      I0 => S2_SHFT_M2(22),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(20),
      I3 => S2_SHFT_M2(20),
      I4 => REG1_SKIP_OUT(21),
      I5 => REG1_SKIP_OUT(22),
      O => N112
    );
  S2_OP_GEN_21_U_Cout1_SW0_G : LUT6
    generic map(
      INIT => X"4445C54511135313"
    )
    port map (
      I0 => S2_SHFT_M2(22),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(21),
      I3 => REG1_SKIP_OUT(20),
      I4 => S2_SHFT_M2(20),
      I5 => REG1_SKIP_OUT(22),
      O => N113
    );
  S2_OP_GEN_21_U_Cout1_SW1 : MUXF7
    port map (
      I0 => N114,
      I1 => N115,
      S => S2_SHFT_M2(21),
      O => N93
    );
  S2_OP_GEN_21_U_Cout1_SW1_F : LUT6
    generic map(
      INIT => X"22222B22E8E8E888"
    )
    port map (
      I0 => S2_SHFT_M2(22),
      I1 => REG1_SKIP_OUT(22),
      I2 => REG1_SKIP_OUT(21),
      I3 => S2_SHFT_M2(20),
      I4 => REG1_SKIP_OUT(20),
      I5 => REG1_OP_OUT_132,
      O => N114
    );
  S2_OP_GEN_21_U_Cout1_SW1_G : LUT6
    generic map(
      INIT => X"2BBB22BBEEEEEEE8"
    )
    port map (
      I0 => S2_SHFT_M2(22),
      I1 => REG1_SKIP_OUT(22),
      I2 => REG1_SKIP_OUT(20),
      I3 => REG1_SKIP_OUT(21),
      I4 => S2_SHFT_M2(20),
      I5 => REG1_OP_OUT_132,
      O => N115
    );
  S2_OP_GEN_19_U_Cout1_SW1 : MUXF7
    port map (
      I0 => N116,
      I1 => N117,
      S => S2_SHFT_M2(19),
      O => N96
    );
  S2_OP_GEN_19_U_Cout1_SW1_F : LUT6
    generic map(
      INIT => X"0E8CF173C8E0371F"
    )
    port map (
      I0 => S2_SHFT_M2(18),
      I1 => S2_SHFT_M2(20),
      I2 => REG1_OP_OUT_132,
      I3 => REG1_SKIP_OUT(19),
      I4 => REG1_SKIP_OUT(21),
      I5 => REG1_SKIP_OUT(20),
      O => N116
    );
  S2_OP_GEN_19_U_Cout1_SW1_G : LUT6
    generic map(
      INIT => X"87F0E1C3C3E1F087"
    )
    port map (
      I0 => S2_SHFT_M2(18),
      I1 => S2_SHFT_M2(20),
      I2 => REG1_SKIP_OUT(21),
      I3 => REG1_OP_OUT_132,
      I4 => REG1_SKIP_OUT(20),
      I5 => REG1_SKIP_OUT(19),
      O => N117
    );
  S3_NORM_RPE_Mmux_OUTPUT28 : LUT6
    generic map(
      INIT => X"EEEEEEFFEEEEEEFE"
    )
    port map (
      I0 => REG2_MAN_OUT(16),
      I1 => REG2_MAN_OUT(17),
      I2 => REG2_MAN_OUT(12),
      I3 => REG2_MAN_OUT(15),
      I4 => REG2_MAN_OUT(14),
      I5 => N118,
      O => S3_NORM_RPE_Mmux_OUTPUT27
    );
  S1_COMP_MComp_U3_COMP1_TE3_TE0_AND_31_o_SW1 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => REG0_INPUT2_OUT(6),
      I1 => REG0_INPUT1_OUT(6),
      I2 => REG0_INPUT2_OUT(5),
      I3 => REG0_INPUT1_OUT(5),
      O => N122
    );
  S1_COMP_MComp_U3_COMP1_TE3_TE0_AND_31_o : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => REG0_INPUT2_OUT(4),
      I1 => REG0_INPUT1_OUT(4),
      I2 => REG0_INPUT1_OUT(3),
      I3 => REG0_INPUT2_OUT(3),
      I4 => N122,
      O => S1_COMP_MComp_U3_COMP1_TE3_TE0_AND_31_o_579
    );
  S1_COMP_MComp_G_1_1_U_COMP1_TE3_TE0_AND_31_o_SW1 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => REG0_INPUT2_OUT(22),
      I1 => REG0_INPUT1_OUT(22),
      I2 => REG0_INPUT2_OUT(21),
      I3 => REG0_INPUT1_OUT(21),
      O => N124
    );
  S1_COMP_MComp_G_1_1_U_COMP1_TE3_TE0_AND_31_o : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => REG0_INPUT2_OUT(20),
      I1 => REG0_INPUT1_OUT(20),
      I2 => REG0_INPUT1_OUT(19),
      I3 => REG0_INPUT2_OUT(19),
      I4 => N124,
      O => S1_COMP_MComp_G_1_1_U_COMP1_TE3_TE0_AND_31_o_580
    );
  S1_COMP_MComp_G_1_0_U_COMP1_TE3_TE0_AND_31_o_SW1 : LUT4
    generic map(
      INIT => X"6FF6"
    )
    port map (
      I0 => REG0_INPUT2_OUT(14),
      I1 => REG0_INPUT1_OUT(14),
      I2 => REG0_INPUT2_OUT(13),
      I3 => REG0_INPUT1_OUT(13),
      O => N126
    );
  S1_COMP_MComp_G_1_0_U_COMP1_TE3_TE0_AND_31_o : LUT5
    generic map(
      INIT => X"00009009"
    )
    port map (
      I0 => REG0_INPUT2_OUT(12),
      I1 => REG0_INPUT1_OUT(12),
      I2 => REG0_INPUT1_OUT(11),
      I3 => REG0_INPUT2_OUT(11),
      I4 => N126,
      O => S1_COMP_MComp_G_1_0_U_COMP1_TE3_TE0_AND_31_o_581
    );
  S2_OP_GEN_13_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"69A5A596695A5A96"
    )
    port map (
      I0 => S2_SHFT_M2(13),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(13),
      I3 => S2_OP_C_12_Q,
      I4 => REG1_SKIP_OUT(12),
      I5 => S2_SHFT_M2(12),
      O => S2_RESULT_13_Q
    );
  S2_OP_GEN_11_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"69A5A596695A5A96"
    )
    port map (
      I0 => S2_SHFT_M2(11),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(11),
      I3 => S2_OP_C_10_Q,
      I4 => REG1_SKIP_OUT(10),
      I5 => S2_SHFT_M2(10),
      O => S2_RESULT_11_Q
    );
  S2_OP_GEN_9_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"69A5A596695A5A96"
    )
    port map (
      I0 => S2_SHFT_M2(9),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(9),
      I3 => S2_REM_MAN,
      I4 => REG1_SKIP_OUT(8),
      I5 => S2_SHFT_M2(8),
      O => S2_RESULT_9_Q
    );
  S2_OP_GEN_7_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"69A5A596695A5A96"
    )
    port map (
      I0 => S2_SHFT_M2(7),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(7),
      I3 => S2_OP_C_6_Q,
      I4 => REG1_SKIP_OUT(6),
      I5 => S2_SHFT_M2(6),
      O => S2_RESULT_7_Q
    );
  S2_OP_GEN_5_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"69A5A596695A5A96"
    )
    port map (
      I0 => S2_SHFT_M2(5),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(5),
      I3 => S2_OP_C_4_Q,
      I4 => REG1_SKIP_OUT(4),
      I5 => S2_SHFT_M2(4),
      O => S2_RESULT_5_Q
    );
  S2_OP_GEN_3_U_Mxor_S_xo_0_2 : LUT6
    generic map(
      INIT => X"69A5A596695A5A96"
    )
    port map (
      I0 => S2_SHFT_M2(3),
      I1 => REG1_OP_OUT_132,
      I2 => REG1_SKIP_OUT(3),
      I3 => S2_OP_C_2_Q,
      I4 => REG1_SKIP_OUT(2),
      I5 => S2_SHFT_M2(2),
      O => S2_RESULT_3_Q
    );
  S3_NORM_CMP_EXP_COMP0_SML3_SW1 : LUT6
    generic map(
      INIT => X"FFFEFFFFFEFEFFFE"
    )
    port map (
      I0 => REG2_EXP_OUT(7),
      I1 => REG2_EXP_OUT(6),
      I2 => REG2_EXP_OUT(5),
      I3 => REG2_EXP_OUT(4),
      I4 => S3_NORM_MAN_OFF(4),
      I5 => N128,
      O => N74
    );
  S3_NORM_CMP_EXP_COMP0_SML1 : LUT6
    generic map(
      INIT => X"7575101075551000"
    )
    port map (
      I0 => REG2_EXP_OUT(3),
      I1 => REG2_EXP_OUT(2),
      I2 => S3_NORM_RPE_Mmux_OUTPUT3,
      I3 => S3_NORM_RPE_Mmux_OUTPUT31_642,
      I4 => S3_NORM_MAN_OFF(3),
      I5 => N130,
      O => S3_NORM_CMP_EXP_COMP0_SML
    );
  S3_NORM_RPE_Mmux_OUTPUT14 : LUT6
    generic map(
      INIT => X"5555555510101000"
    )
    port map (
      I0 => REG2_MAN_OUT(17),
      I1 => REG2_MAN_OUT(15),
      I2 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112,
      I3 => REG2_MAN_OUT(14),
      I4 => N132,
      I5 => REG2_MAN_OUT(16),
      O => S3_NORM_RPE_Mmux_OUTPUT13
    );
  S3_Mmux_FINAL1141 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG2_ERR_OUT(0),
      I1 => REG2_ERR_OUT(2),
      I2 => REG2_ERR_OUT(1),
      I3 => S3_NORM_MAN_OFF(4),
      I4 => S3_NORM_MAN_OFF(3),
      I5 => S3_NORM_CMP_EXP_COMP1_SML1_879,
      O => S3_Mmux_FINAL114_562
    );
  S1_Mmux_ERR33 : LUT5
    generic map(
      INIT => X"55696955"
    )
    port map (
      I0 => REG0_OP_OUT_131,
      I1 => REG0_INPUT1_OUT(31),
      I2 => REG0_INPUT2_OUT(31),
      I3 => S1_COMP_E1_SML_E1_EQ_OR_10_o,
      I4 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      O => S1_Mmux_ERR32
    );
  S1_ESub_OUTPUT_1_1 : LUT6
    generic map(
      INIT => X"0660422424420660"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o,
      I1 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      I2 => REG0_INPUT1_OUT(24),
      I3 => REG0_INPUT2_OUT(24),
      I4 => REG0_INPUT1_OUT(23),
      I5 => REG0_INPUT2_OUT(23),
      O => REG1_OFF_IN(1)
    );
  S2_Mmux_MAN_OUT31 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_12_Q,
      I2 => REG1_SKIP_OUT(12),
      I3 => S2_SHFT_M2(12),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_11_Q,
      O => REG2_MAN_IN(11)
    );
  S1_COMP_Mmux_GRT_IN201 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => REG0_INPUT2_OUT(27),
      I2 => S1_COMP_M1_GRT,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(27),
      O => REG1_GRT_EXP_IN(4)
    );
  S1_COMP_Mmux_GRT_IN211 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => REG0_INPUT2_OUT(28),
      I2 => S1_COMP_M1_GRT,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(28),
      O => REG1_GRT_EXP_IN(5)
    );
  S1_COMP_Mmux_GRT_IN221 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(29),
      I1 => REG0_INPUT2_OUT(29),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_M1_GRT,
      O => REG1_GRT_EXP_IN(6)
    );
  S3_NORM_RPE_Mmux_OUTPUT34 : LUT6
    generic map(
      INIT => X"0F0E00000F0A0000"
    )
    port map (
      I0 => REG2_MAN_OUT(3),
      I1 => REG2_MAN_OUT(1),
      I2 => REG2_MAN_OUT(4),
      I3 => N83,
      I4 => S3_NORM_RPE_Mmux_OUTPUT411,
      I5 => S3_NORM_MAN_OFF(4),
      O => S3_NORM_RPE_Mmux_OUTPUT33_644
    );
  S2_Mmux_MAN_OUT241 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_10_Q,
      I2 => REG1_SKIP_OUT(10),
      I3 => S2_SHFT_M2(10),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_9_Q,
      O => REG2_MAN_IN(9)
    );
  S1_COMP_Mmux_SML_IN221 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(29),
      I1 => REG0_INPUT2_OUT(29),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_SML_TMP(29)
    );
  S1_COMP_Mmux_SML_IN241 : LUT5
    generic map(
      INIT => X"AAACACAC"
    )
    port map (
      I0 => REG0_INPUT1_OUT(30),
      I1 => REG0_INPUT2_OUT(30),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I3 => S1_COMP_E1_EQ,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      O => S1_SML_TMP(30)
    );
  S1_COMP_Mmux_GRT_IN241 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => REG0_INPUT2_OUT(30),
      I2 => S1_COMP_M1_GRT,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(30),
      O => REG1_GRT_EXP_IN(7)
    );
  S2_P1_GEN_6_U_Mxor_S_xo_0_1 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => REG1_SKIP_OUT(29),
      I1 => REG1_SKIP_OUT(28),
      I2 => REG1_SKIP_OUT(26),
      I3 => S2_P1_C_2_Q,
      I4 => REG1_SKIP_OUT(25),
      I5 => REG1_SKIP_OUT(27),
      O => REG2_EXP_IN(6)
    );
  S2_P1_GEN_5_U_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => REG1_SKIP_OUT(28),
      I1 => REG1_SKIP_OUT(26),
      I2 => S2_P1_C_2_Q,
      I3 => REG1_SKIP_OUT(25),
      I4 => REG1_SKIP_OUT(27),
      O => REG2_EXP_IN(5)
    );
  S3_Mmux_FINAL23_SW0 : LUT6
    generic map(
      INIT => X"000000F000CC00AA"
    )
    port map (
      I0 => REG2_MAN_OUT(2),
      I1 => REG2_MAN_OUT(1),
      I2 => REG2_MAN_OUT(0),
      I3 => S3_NORM_MAN_OFF(2),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => N4
    );
  S3_Mmux_FINAL18_SW0 : LUT6
    generic map(
      INIT => X"6C93669936C933CC"
    )
    port map (
      I0 => REG2_EXP_OUT(1),
      I1 => REG2_EXP_OUT(2),
      I2 => REG2_EXP_OUT(0),
      I3 => S3_NORM_MAN_OFF(2),
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => N38
    );
  S3_NORM_RPE_Mmux_OUTPUT15 : LUT6
    generic map(
      INIT => X"0707777707070777"
    )
    port map (
      I0 => REG2_MAN_OUT(11),
      I1 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1,
      I2 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_11_o_23_1,
      I3 => REG2_MAN_OUT(13),
      I4 => REG2_MAN_OUT(15),
      I5 => REG2_MAN_OUT(14),
      O => S3_NORM_RPE_Mmux_OUTPUT14_624
    );
  S2_Mmux_MAN_OUT221 : LUT5
    generic map(
      INIT => X"7DD72882"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => REG1_SKIP_OUT(8),
      I2 => S2_SHFT_M2(8),
      I3 => REG1_OP_OUT_132,
      I4 => S2_RESULT_7_Q,
      O => REG2_MAN_IN(7)
    );
  S2_P1_GEN_3_U_Mxor_S_xo_0_1 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => REG1_SKIP_OUT(26),
      I1 => REG1_SKIP_OUT(24),
      I2 => REG1_SKIP_OUT(23),
      I3 => S2_REM_MAN,
      I4 => REG1_SKIP_OUT(25),
      O => REG2_EXP_IN(3)
    );
  S2_P1_GEN_2_U_Mxor_S_xo_0_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => REG1_SKIP_OUT(25),
      I1 => REG1_SKIP_OUT(24),
      I2 => REG1_SKIP_OUT(23),
      I3 => S2_REM_MAN,
      O => REG2_EXP_IN(2)
    );
  S2_SHFT_Mmux_SHIFTED91 : LUT5
    generic map(
      INIT => X"11011000"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT_1_mmx_out4,
      I4 => REG1_OFF_OUT_1_mmx_out3,
      O => S2_SHFT_M2(16)
    );
  S2_SHFT_Mmux_SHIFTED121 : LUT6
    generic map(
      INIT => X"0101011100000010"
    )
    port map (
      I0 => REG1_OFF_OUT(4),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(1),
      I4 => REG1_OFF_OUT(0),
      I5 => REG1_OFF_OUT_1_mmx_out18,
      O => S2_SHFT_M2(19)
    );
  S2_OP_GEN_21_U_Mxor_S_xo_0_2_SW0 : LUT5
    generic map(
      INIT => X"55555556"
    )
    port map (
      I0 => REG1_SKIP_OUT(21),
      I1 => REG1_OFF_OUT(4),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(3),
      I4 => REG1_OFF_OUT_1_mmx_out9,
      O => N85
    );
  S2_OP_GEN_23_U_Mxor_S_xo_0_SW2 : LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
    port map (
      I0 => REG1_OFF_OUT(1),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(4),
      I4 => REG1_OFF_OUT(0),
      I5 => REG1_OP_OUT_132,
      O => N78
    );
  S2_Mmux_MAN_OUT41 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_12_Q,
      I2 => REG1_SKIP_OUT(12),
      I3 => S2_SHFT_M2(12),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_13_Q,
      O => REG2_MAN_IN(12)
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_31 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => REG2_MAN_OUT(5),
      I1 => REG2_MAN_OUT(6),
      I2 => REG2_MAN_OUT(7),
      I3 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_878,
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_3
    );
  S1_COMP_E1_SML_E1_EQ_OR_10_o3 : LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      I0 => REG0_INPUT1_OUT(26),
      I1 => REG0_INPUT2_OUT(26),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o2_708,
      O => S1_COMP_E1_SML_E1_EQ_OR_10_o3_709
    );
  S1_COMP_E1_SML_E1_EQ_OR_10_o4 : LUT5
    generic map(
      INIT => X"FF8E8E8E"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o1_707,
      I1 => REG0_INPUT2_OUT(30),
      I2 => REG0_INPUT1_OUT(30),
      I3 => S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o_578,
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o3_709,
      O => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710
    );
  S1_COMP_E1_GRT_E1_EQ_OR_9_o3 : LUT3
    generic map(
      INIT => X"D4"
    )
    port map (
      I0 => REG0_INPUT2_OUT(26),
      I1 => REG0_INPUT1_OUT(26),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o2_712,
      O => S1_COMP_E1_GRT_E1_EQ_OR_9_o3_713
    );
  S1_COMP_E1_GRT_E1_EQ_OR_9_o4 : LUT5
    generic map(
      INIT => X"FF8E8E8E"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o1_711,
      I1 => REG0_INPUT1_OUT(30),
      I2 => REG0_INPUT2_OUT(30),
      I3 => S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o_578,
      I4 => S1_COMP_E1_GRT_E1_EQ_OR_9_o3_713,
      O => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714
    );
  S2_Mmux_MAN_OUT21 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_10_Q,
      I2 => REG1_SKIP_OUT(10),
      I3 => S2_SHFT_M2(10),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_11_Q,
      O => REG2_MAN_IN(10)
    );
  S3_Mmux_FINAL28_SW0 : LUT6
    generic map(
      INIT => X"7775575522200200"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(1),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => REG2_MAN_OUT(1),
      I4 => REG2_MAN_OUT(0),
      I5 => S3_NORM_MAN_OFF_1_mmx_out8,
      O => N24
    );
  S3_NORM_RPE_Mmux_OUTPUT111 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => REG2_MAN_OUT(4),
      I1 => REG2_MAN_OUT(5),
      I2 => REG2_MAN_OUT(6),
      I3 => REG2_MAN_OUT(7),
      I4 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_878,
      O => S3_NORM_RPE_Mmux_OUTPUT110
    );
  S1_COMP_EComp_COMP1_EQ : LUT6
    generic map(
      INIT => X"0000900900000000"
    )
    port map (
      I0 => REG0_INPUT2_OUT(25),
      I1 => REG0_INPUT1_OUT(25),
      I2 => REG0_INPUT2_OUT(26),
      I3 => REG0_INPUT1_OUT(26),
      I4 => N106,
      I5 => S1_COMP_EComp_COMP1_TE3_TE0_AND_31_o_578,
      O => S1_COMP_E1_EQ
    );
  S1_MAN_Mmux_SKIP161 : LUT5
    generic map(
      INIT => X"F0F0CCAA"
    )
    port map (
      I0 => REG0_INPUT2_OUT(23),
      I1 => REG0_INPUT1_OUT(23),
      I2 => S1_SML_TMP(23),
      I3 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      I4 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(23)
    );
  S1_MAN_Mmux_SKIP171 : LUT5
    generic map(
      INIT => X"F0F0CCAA"
    )
    port map (
      I0 => REG0_INPUT2_OUT(24),
      I1 => REG0_INPUT1_OUT(24),
      I2 => S1_SML_TMP(24),
      I3 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      I4 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(24)
    );
  S1_MAN_Mmux_SKIP251 : LUT5
    generic map(
      INIT => X"FF00CACA"
    )
    port map (
      I0 => REG0_INPUT2_OUT(31),
      I1 => REG0_INPUT1_OUT(31),
      I2 => S1_COMP_E1_GRT_E1_EQ_OR_9_o,
      I3 => S1_SML_TMP(31),
      I4 => S1_MAN_ZERO1_595,
      O => REG1_SKIP_IN(31)
    );
  S2_Mmux_MAN_OUT11 : LUT6
    generic map(
      INIT => X"349E9E34943E3E94"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => REG1_SKIP_OUT(0),
      I2 => S2_SHFT_M2(0),
      I3 => REG1_SKIP_OUT(1),
      I4 => S2_SHFT_M2(1),
      I5 => REG1_OP_OUT_132,
      O => REG2_MAN_IN(0)
    );
  S2_Mmux_MAN_OUT211 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_6_Q,
      I2 => REG1_SKIP_OUT(6),
      I3 => S2_SHFT_M2(6),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_7_Q,
      O => REG2_MAN_IN(6)
    );
  S2_Mmux_MAN_OUT201 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_6_Q,
      I2 => REG1_SKIP_OUT(6),
      I3 => S2_SHFT_M2(6),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_5_Q,
      O => REG2_MAN_IN(5)
    );
  S2_Mmux_MAN_OUT191 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_4_Q,
      I2 => REG1_SKIP_OUT(4),
      I3 => S2_SHFT_M2(4),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_5_Q,
      O => REG2_MAN_IN(4)
    );
  S2_Mmux_MAN_OUT181 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_4_Q,
      I2 => REG1_SKIP_OUT(4),
      I3 => S2_SHFT_M2(4),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_3_Q,
      O => REG2_MAN_IN(3)
    );
  S2_Mmux_MAN_OUT171 : LUT6
    generic map(
      INIT => X"BEEBEBBE14414114"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_2_Q,
      I2 => REG1_SKIP_OUT(2),
      I3 => S2_SHFT_M2(2),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_3_Q,
      O => REG2_MAN_IN(2)
    );
  S2_Mmux_MAN_OUT121 : LUT6
    generic map(
      INIT => X"7DD7D77D28828228"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => S2_OP_C_2_Q,
      I2 => REG1_SKIP_OUT(2),
      I3 => S2_SHFT_M2(2),
      I4 => REG1_OP_OUT_132,
      I5 => S2_RESULT_1_Q,
      O => REG2_MAN_IN(1)
    );
  S3_Mmux_FINAL26_SW1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => S3_NORM_MAN_OFF_1_mmx_out5,
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_Mmux_FINAL114_562,
      O => N134
    );
  S3_Mmux_FINAL26 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAC08"
    )
    port map (
      I0 => REG2_SKIP_OUT(3),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(2),
      I3 => REG2_ERR_OUT(1),
      I4 => S3_TMP_UF,
      I5 => N134,
      O => REG3_FINAL_IN(3)
    );
  S3_Mmux_FINAL30_SW1 : LUT4
    generic map(
      INIT => X"E400"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF_1_mmx_out10,
      I2 => S3_NORM_MAN_OFF_1_mmx_out5,
      I3 => S3_Mmux_FINAL114_562,
      O => N136
    );
  S3_Mmux_FINAL30 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAC08"
    )
    port map (
      I0 => REG2_SKIP_OUT(7),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(2),
      I3 => REG2_ERR_OUT(1),
      I4 => S3_TMP_UF,
      I5 => N136,
      O => REG3_FINAL_IN(7)
    );
  S3_Mmux_FINAL29_SW1 : LUT4
    generic map(
      INIT => X"7200"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF_1_mmx_out4,
      I2 => S3_NORM_MAN_OFF_1_mmx_out9,
      I3 => S3_Mmux_FINAL114_562,
      O => N138
    );
  S3_Mmux_FINAL29 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAC08"
    )
    port map (
      I0 => REG2_SKIP_OUT(6),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(2),
      I3 => REG2_ERR_OUT(1),
      I4 => S3_TMP_UF,
      I5 => N138,
      O => REG3_FINAL_IN(6)
    );
  S3_Mmux_FINAL1_SW1 : LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => REG2_MAN_OUT(0),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF(0),
      I3 => S3_NORM_MAN_OFF(1),
      I4 => S3_Mmux_FINAL114_562,
      O => N140
    );
  S3_Mmux_FINAL1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAC08"
    )
    port map (
      I0 => REG2_SKIP_OUT(0),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(2),
      I3 => REG2_ERR_OUT(1),
      I4 => S3_TMP_UF,
      I5 => N140,
      O => REG3_FINAL_IN(0)
    );
  S3_Mmux_FINAL155_SW0 : LUT6
    generic map(
      INIT => X"00000000BBBFFBFF"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF_1_mmx_out17,
      I4 => S3_NORM_MAN_OFF_1_mmx_out13,
      I5 => S3_Mmux_FINAL153_659,
      O => N142
    );
  S3_Mmux_FINAL145_SW0 : LUT6
    generic map(
      INIT => X"00000000BBBFFBFF"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(4),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF_1_mmx_out16,
      I4 => S3_NORM_MAN_OFF_1_mmx_out12,
      I5 => S3_Mmux_FINAL144_662,
      O => N144
    );
  S1_MAN_PWR_11_o_EXP2_7_equal_11_o_7_SW1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => S1_SML_TMP(30),
      I1 => S1_SML_TMP(29),
      I2 => S1_SML_TMP(28),
      I3 => S1_SML_TMP(26),
      I4 => S1_SML_TMP(25),
      I5 => S1_SML_TMP(27),
      O => N146
    );
  S1_MAN_PWR_11_o_EXP2_7_equal_11_o_7_Q : LUT6
    generic map(
      INIT => X"CC00A0A000000000"
    )
    port map (
      I0 => REG0_INPUT2_OUT(24),
      I1 => REG0_INPUT1_OUT(24),
      I2 => REG0_INPUT2_OUT(23),
      I3 => REG0_INPUT1_OUT(23),
      I4 => S1_COMP_E1_SML_E1_EQ_OR_10_o,
      I5 => N146,
      O => S1_MAN_PWR_11_o_EXP2_7_equal_11_o
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
    port map (
      I0 => REG2_MAN_OUT(15),
      I1 => REG2_MAN_OUT(16),
      I2 => REG2_MAN_OUT(17),
      I3 => REG2_MAN_OUT(8),
      I4 => REG2_MAN_OUT(9),
      I5 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_112,
      O => N148
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG2_MAN_OUT(10),
      I1 => REG2_MAN_OUT(11),
      I2 => REG2_MAN_OUT(12),
      I3 => REG2_MAN_OUT(13),
      I4 => REG2_MAN_OUT(14),
      I5 => N148,
      O => S3_NORM_MAN_OFF(4)
    );
  S3_NORM_RPE_Mmux_OUTPUT113_SW1 : LUT5
    generic map(
      INIT => X"23FF2200"
    )
    port map (
      I0 => REG2_MAN_OUT(6),
      I1 => REG2_MAN_OUT(7),
      I2 => REG2_MAN_OUT(5),
      I3 => S3_NORM_MAN_OFF(4),
      I4 => S3_NORM_RPE_Mmux_OUTPUT111_627,
      O => N150
    );
  S3_NORM_RPE_Mmux_OUTPUT113 : LUT6
    generic map(
      INIT => X"FFF3FFFF00020000"
    )
    port map (
      I0 => REG2_MAN_OUT(8),
      I1 => REG2_MAN_OUT(9),
      I2 => REG2_MAN_OUT(10),
      I3 => REG2_MAN_OUT(11),
      I4 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1,
      I5 => N150,
      O => S3_NORM_RPE_Mmux_OUTPUT112_628
    );
  S3_NORM_RPE_Mmux_OUTPUT28_SW0_SW0 : LUT6
    generic map(
      INIT => X"E0FFF0FFE000E000"
    )
    port map (
      I0 => REG2_MAN_OUT(5),
      I1 => REG2_MAN_OUT(4),
      I2 => S3_NORM_RPE_Mmux_OUTPUT25,
      I3 => S3_NORM_MAN_OFF(4),
      I4 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_20_o,
      I5 => S3_NORM_RPE_Mmux_OUTPUT212,
      O => N152
    );
  S3_Mmux_FINAL12_SW1 : LUT6
    generic map(
      INIT => X"00000C0A00000000"
    )
    port map (
      I0 => REG2_MAN_OUT(1),
      I1 => REG2_MAN_OUT(0),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF(0),
      I4 => S3_NORM_MAN_OFF(1),
      I5 => S3_Mmux_FINAL114_562,
      O => N154
    );
  S3_Mmux_FINAL12 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAC08"
    )
    port map (
      I0 => REG2_SKIP_OUT(1),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(2),
      I3 => REG2_ERR_OUT(1),
      I4 => S3_TMP_UF,
      I5 => N154,
      O => REG3_FINAL_IN(1)
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_41 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => REG2_MAN_OUT(3),
      I1 => REG2_MAN_OUT(5),
      I2 => REG2_MAN_OUT(6),
      I3 => REG2_MAN_OUT(7),
      I4 => REG2_MAN_OUT(4),
      I5 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_878,
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_4
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_20_o_23_1 : LUT6
    generic map(
      INIT => X"0000000200000000"
    )
    port map (
      I0 => REG2_MAN_OUT(3),
      I1 => REG2_MAN_OUT(5),
      I2 => REG2_MAN_OUT(6),
      I3 => REG2_MAN_OUT(7),
      I4 => REG2_MAN_OUT(4),
      I5 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_878,
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_20_o
    );
  S1_COMP_Mmux_SML_IN161 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I1 => REG0_INPUT2_OUT(23),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(23),
      O => S1_SML_TMP(23)
    );
  S1_COMP_Mmux_SML_IN171 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I1 => REG0_INPUT2_OUT(24),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(24),
      O => S1_SML_TMP(24)
    );
  S1_COMP_Mmux_GRT_IN161 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => REG0_INPUT2_OUT(23),
      I2 => S1_COMP_M1_GRT,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(23),
      O => REG1_GRT_EXP_IN(0)
    );
  S1_COMP_Mmux_GRT_IN171 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => REG0_INPUT2_OUT(24),
      I2 => S1_COMP_M1_GRT,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(24),
      O => REG1_GRT_EXP_IN(1)
    );
  S1_COMP_Mmux_SML_IN251 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o4_710,
      I1 => REG0_INPUT2_OUT(31),
      I2 => S1_COMP_E1_SML_E1_EQ_OR_10_o7,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(31),
      O => S1_SML_TMP(31)
    );
  S1_COMP_Mmux_GRT_IN251 : LUT5
    generic map(
      INIT => X"FEEE0444"
    )
    port map (
      I0 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I1 => REG0_INPUT2_OUT(31),
      I2 => S1_COMP_M1_GRT,
      I3 => S1_COMP_E1_EQ,
      I4 => REG0_INPUT1_OUT(31),
      O => S1_GRT_TMP(31)
    );
  S3_NORM_CMP_EXP_COMP0_SML3_SW1_SW0 : LUT4
    generic map(
      INIT => X"0A8E"
    )
    port map (
      I0 => REG2_EXP_OUT(3),
      I1 => REG2_EXP_OUT(2),
      I2 => S3_NORM_MAN_OFF(3),
      I3 => S3_NORM_MAN_OFF(2),
      O => N128
    );
  S2_OP_GEN_23_U_Mxor_S_xo_0_SW3 : LUT6
    generic map(
      INIT => X"0001000100000001"
    )
    port map (
      I0 => REG1_OFF_OUT(1),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(2),
      I3 => REG1_OFF_OUT(4),
      I4 => REG1_SML_MAN_OUT(22),
      I5 => REG1_OFF_OUT(0),
      O => N79
    );
  S2_Mmux_MAN_OUT231 : LUT6
    generic map(
      INIT => X"6BC1C16B1CB6B61C"
    )
    port map (
      I0 => S2_REM_MAN,
      I1 => REG1_SKIP_OUT(8),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(9),
      I4 => REG1_SKIP_OUT(9),
      I5 => S2_SHFT_M2(8),
      O => REG2_MAN_IN(8)
    );
  S3_Mmux_FINAL155 : LUT6
    generic map(
      INIT => X"FFFFA0C8FFFFA0CB"
    )
    port map (
      I0 => REG2_SKIP_OUT(22),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N142,
      O => REG3_FINAL_IN(22)
    );
  S3_Mmux_FINAL145 : LUT6
    generic map(
      INIT => X"FFFFA0C8FFFFA0CB"
    )
    port map (
      I0 => REG2_SKIP_OUT(21),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N144,
      O => REG3_FINAL_IN(21)
    );
  S3_NORM_CMP_EXP_COMP0_SML1_SW0 : LUT6
    generic map(
      INIT => X"0001000100010000"
    )
    port map (
      I0 => REG2_MAN_OUT(12),
      I1 => REG2_MAN_OUT(15),
      I2 => REG2_MAN_OUT(14),
      I3 => REG2_MAN_OUT(13),
      I4 => S3_NORM_RPE_Mmux_OUTPUT32_643,
      I5 => S3_NORM_RPE_Mmux_OUTPUT33_644,
      O => N130
    );
  S1_ESub_GEN_0_U_Mxor_S_xo_0_1 : LUT6
    generic map(
      INIT => X"0550066006600660"
    )
    port map (
      I0 => S1_COMP_E1_SML_E1_EQ_OR_10_o,
      I1 => S1_COMP_E1_GRT_E1_EQ_OR_9_o4_714,
      I2 => REG0_INPUT2_OUT(23),
      I3 => REG0_INPUT1_OUT(23),
      I4 => S1_COMP_E1_EQ,
      I5 => S1_COMP_M1_GRT,
      O => REG1_OFF_IN(0)
    );
  S2_P1_GEN_4_U_Mxor_S_xo_0_1 : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => REG1_SKIP_OUT(27),
      I1 => REG1_SKIP_OUT(26),
      I2 => REG1_SKIP_OUT(24),
      I3 => REG1_SKIP_OUT(23),
      I4 => S2_REM_MAN,
      I5 => REG1_SKIP_OUT(25),
      O => REG2_EXP_IN(4)
    );
  S3_NORM_RPE_Mmux_OUTPUT28_SW0_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => REG2_MAN_OUT(8),
      I1 => REG2_MAN_OUT(9),
      O => N156
    );
  S3_NORM_RPE_Mmux_OUTPUT28_SW0 : LUT6
    generic map(
      INIT => X"CDCDFFFFCDCCCCCC"
    )
    port map (
      I0 => REG2_MAN_OUT(10),
      I1 => REG2_MAN_OUT(13),
      I2 => REG2_MAN_OUT(11),
      I3 => N156,
      I4 => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_1,
      I5 => N152,
      O => N118
    );
  S3_NORM_RPE_Mmux_OUTPUT14_SW0 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => REG2_MAN_OUT(12),
      I1 => REG2_MAN_OUT(15),
      I2 => REG2_MAN_OUT(14),
      I3 => REG2_MAN_OUT(13),
      O => N132
    );
  S3_Mmux_FINAL115 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(19),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => S3_Mmux_FINAL113_634,
      O => REG3_FINAL_IN(19)
    );
  S3_Mmux_FINAL135 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(20),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => S3_Mmux_FINAL133_639,
      O => REG3_FINAL_IN(20)
    );
  S3_Mmux_FINAL93 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(17),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => S3_Mmux_FINAL91,
      O => REG3_FINAL_IN(17)
    );
  S3_Mmux_FINAL103 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(18),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => S3_Mmux_FINAL101_670,
      O => REG3_FINAL_IN(18)
    );
  S3_Mmux_FINAL84 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(16),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => S3_Mmux_FINAL82,
      O => REG3_FINAL_IN(16)
    );
  S3_Mmux_FINAL22 : LUT6
    generic map(
      INIT => X"FFFFAFCBFFFFAFC8"
    )
    port map (
      I0 => REG2_SKIP_OUT(29),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N46,
      O => REG3_FINAL_IN(29)
    );
  S3_Mmux_FINAL24 : LUT6
    generic map(
      INIT => X"FFFFAFCBFFFFAFC8"
    )
    port map (
      I0 => REG2_SKIP_OUT(30),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => N48,
      O => REG3_FINAL_IN(30)
    );
  S3_Mmux_FINAL313 : LUT6
    generic map(
      INIT => X"FFFFA0CBFFFFA0C8"
    )
    port map (
      I0 => REG2_SKIP_OUT(8),
      I1 => REG2_ERR_OUT(0),
      I2 => REG2_ERR_OUT(1),
      I3 => REG2_ERR_OUT(2),
      I4 => S3_TMP_UF,
      I5 => S3_Mmux_FINAL311_666,
      O => REG3_FINAL_IN(8)
    );
  S2_OP_GEN_7_U_Cout1_1 : LUT6
    generic map(
      INIT => X"8FAEEAF80E8AA8E0"
    )
    port map (
      I0 => REG1_SKIP_OUT(7),
      I1 => REG1_SKIP_OUT(6),
      I2 => REG1_OP_OUT_132,
      I3 => S2_SHFT_M2(6),
      I4 => S2_SHFT_M2(7),
      I5 => S2_OP_C_6_Q,
      O => S2_OP_GEN_7_U_Cout1_873
    );
  REG1_OFF_OUT_3_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(3),
      Q => REG1_OFF_OUT_3_1_874
    );
  REG1_OFF_OUT_2_1 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(2),
      Q => REG1_OFF_OUT_2_1_875
    );
  REG1_OFF_OUT_1_1_801 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(1),
      Q => REG1_OFF_OUT_1_1_876
    );
  REG1_OFF_OUT_0_1_802 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(0),
      Q => REG1_OFF_OUT_0_1_877
    );
  S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => REG2_MAN_OUT(10),
      I1 => REG2_MAN_OUT(11),
      I2 => REG2_MAN_OUT(12),
      I3 => REG2_MAN_OUT(13),
      I4 => REG2_MAN_OUT(14),
      I5 => N148,
      O => S3_NORM_RPE_GND_21_o_INPUT_23_equal_22_o_23_21_878
    );
  S3_NORM_CMP_EXP_COMP1_SML1_1 : LUT6
    generic map(
      INIT => X"087F0A5F0E1F0F0F"
    )
    port map (
      I0 => REG2_EXP_OUT(1),
      I1 => REG2_EXP_OUT(0),
      I2 => N73,
      I3 => N74,
      I4 => S3_NORM_MAN_OFF(0),
      I5 => S3_NORM_MAN_OFF(1),
      O => S3_NORM_CMP_EXP_COMP1_SML1_879
    );
  REG1_OFF_OUT_0_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(0),
      Q => REG1_OFF_OUT_0_2_880
    );
  REG1_OFF_OUT_1_2 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(1),
      Q => REG1_OFF_OUT_1_2_881
    );
  REG1_OFF_OUT_0_3 : FDC
    port map (
      C => CLK_BUFGP_64,
      CLR => RESET_IBUF_65,
      D => REG1_OFF_IN(0),
      Q => REG1_OFF_OUT_0_3_882
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_64
    );
  S3_Mmux_FINAL83 : MUXF7
    port map (
      I0 => N158,
      I1 => N159,
      S => S3_NORM_MAN_OFF(4),
      O => S3_Mmux_FINAL82
    );
  S3_Mmux_FINAL83_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF_1_mmx_out15,
      I3 => S3_NORM_MAN_OFF_1_mmx_out6,
      I4 => S3_NORM_MAN_OFF_1_mmx_out11,
      I5 => S3_NORM_MAN_OFF_1_mmx_out1,
      O => N158
    );
  S3_Mmux_FINAL83_G : LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => REG2_MAN_OUT(0),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF(2),
      I3 => S3_NORM_MAN_OFF(1),
      I4 => S3_NORM_MAN_OFF(0),
      O => N159
    );
  S3_Mmux_FINAL112 : MUXF7
    port map (
      I0 => N160,
      I1 => N161,
      S => S3_NORM_MAN_OFF(1),
      O => S3_Mmux_FINAL111
    );
  S3_Mmux_FINAL112_F : LUT6
    generic map(
      INIT => X"5554445411100010"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => REG2_MAN_OUT(19),
      I3 => S3_NORM_MAN_OFF(0),
      I4 => REG2_MAN_OUT(18),
      I5 => S3_NORM_MAN_OFF_1_mmx_out14,
      O => N160
    );
  S3_Mmux_FINAL112_G : LUT6
    generic map(
      INIT => X"5554445411100010"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => REG2_MAN_OUT(17),
      I3 => S3_NORM_MAN_OFF(0),
      I4 => REG2_MAN_OUT(16),
      I5 => S3_NORM_MAN_OFF_1_mmx_out14,
      O => N161
    );
  S3_Mmux_FINAL143 : MUXF7
    port map (
      I0 => N162,
      I1 => N163,
      S => S3_NORM_MAN_OFF(1),
      O => S3_Mmux_FINAL143_661
    );
  S3_Mmux_FINAL143_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(0),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => REG2_MAN_OUT(20),
      I3 => REG2_MAN_OUT(4),
      I4 => REG2_MAN_OUT(5),
      I5 => REG2_MAN_OUT(21),
      O => N162
    );
  S3_Mmux_FINAL143_G : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(0),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => REG2_MAN_OUT(18),
      I3 => REG2_MAN_OUT(2),
      I4 => REG2_MAN_OUT(3),
      I5 => REG2_MAN_OUT(19),
      O => N163
    );
  S3_Mmux_FINAL153 : MUXF7
    port map (
      I0 => N164,
      I1 => N165,
      S => S3_NORM_MAN_OFF(1),
      O => S3_Mmux_FINAL152
    );
  S3_Mmux_FINAL153_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(0),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => REG2_MAN_OUT(21),
      I3 => REG2_MAN_OUT(5),
      I4 => REG2_MAN_OUT(6),
      I5 => REG2_MAN_OUT(22),
      O => N164
    );
  S3_Mmux_FINAL153_G : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(0),
      I1 => S3_NORM_MAN_OFF(4),
      I2 => REG2_MAN_OUT(19),
      I3 => REG2_MAN_OUT(3),
      I4 => REG2_MAN_OUT(4),
      I5 => REG2_MAN_OUT(20),
      O => N165
    );
  REG1_OFF_OUT_2_141 : MUXF7
    port map (
      I0 => N166,
      I1 => N167,
      S => REG1_OFF_OUT_1_2_881,
      O => REG1_OFF_OUT_2_mmx_out8
    );
  REG1_OFF_OUT_2_141_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => REG1_OFF_OUT_2_1_875,
      I1 => REG1_OFF_OUT_0_2_880,
      I2 => REG1_SML_MAN_OUT(20),
      I3 => REG1_SML_MAN_OUT(21),
      I4 => REG1_SML_MAN_OUT(17),
      I5 => REG1_SML_MAN_OUT(16),
      O => N166
    );
  REG1_OFF_OUT_2_141_G : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => REG1_OFF_OUT_0_2_880,
      I1 => REG1_OFF_OUT_2_1_875,
      I2 => REG1_SML_MAN_OUT(19),
      I3 => REG1_SML_MAN_OUT(18),
      I4 => REG1_SML_MAN_OUT(22),
      O => N167
    );
  S3_Mmux_FINAL92 : MUXF7
    port map (
      I0 => N168,
      I1 => N169,
      S => S3_NORM_MAN_OFF(4),
      O => S3_Mmux_FINAL91
    );
  S3_Mmux_FINAL92_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(2),
      I1 => S3_NORM_MAN_OFF(3),
      I2 => S3_NORM_MAN_OFF_1_mmx_out16,
      I3 => S3_NORM_MAN_OFF_1_mmx_out8,
      I4 => S3_NORM_MAN_OFF_1_mmx_out12,
      I5 => S3_NORM_MAN_OFF_1_mmx_out2,
      O => N168
    );
  S3_Mmux_FINAL92_G : LUT6
    generic map(
      INIT => X"0101000101000000"
    )
    port map (
      I0 => S3_NORM_MAN_OFF(3),
      I1 => S3_NORM_MAN_OFF(2),
      I2 => S3_NORM_MAN_OFF(1),
      I3 => S3_NORM_MAN_OFF(0),
      I4 => REG2_MAN_OUT(0),
      I5 => REG2_MAN_OUT(1),
      O => N169
    );
  S2_SHFT_Mmux_SHIFTED242 : MUXF7
    port map (
      I0 => N170,
      I1 => N171,
      S => REG1_OFF_OUT(4),
      O => S2_SHFT_M2(5)
    );
  S2_SHFT_Mmux_SHIFTED242_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out6,
      I3 => REG1_OFF_OUT_1_mmx_out8,
      I4 => REG1_OFF_OUT_1_mmx_out7,
      I5 => REG1_OFF_OUT_1_mmx_out5,
      O => N170
    );
  S2_SHFT_Mmux_SHIFTED242_G : LUT6
    generic map(
      INIT => X"0101111001010100"
    )
    port map (
      I0 => REG1_OFF_OUT(3),
      I1 => REG1_OFF_OUT(2),
      I2 => REG1_OFF_OUT(0),
      I3 => REG1_SML_MAN_OUT(21),
      I4 => REG1_OFF_OUT(1),
      I5 => REG1_SML_MAN_OUT(22),
      O => N171
    );
  S2_SHFT_Mmux_SHIFTED253 : MUXF7
    port map (
      I0 => N172,
      I1 => N173,
      S => REG1_OFF_OUT(4),
      O => S2_SHFT_M2(6)
    );
  S2_SHFT_Mmux_SHIFTED253_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT_1_mmx_out11,
      I3 => REG1_OFF_OUT_1_mmx_out13,
      I4 => REG1_OFF_OUT_1_mmx_out12,
      I5 => REG1_OFF_OUT_1_mmx_out10,
      O => N172
    );
  S2_SHFT_Mmux_SHIFTED253_G : LUT5
    generic map(
      INIT => X"01010100"
    )
    port map (
      I0 => REG1_OFF_OUT(2),
      I1 => REG1_OFF_OUT(3),
      I2 => REG1_OFF_OUT(1),
      I3 => REG1_SML_MAN_OUT(22),
      I4 => REG1_OFF_OUT(0),
      O => N173
    );

end Structure;

