/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ale/Desktop/VHDL/proj-reti-2023-main/test1/ThirdStageTOP.vhd";
extern char *IEEE_P_2592010699;



static void work_a_4078950148_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 1672U);
    t12 = *((char **)t11);
    t11 = (t0 + 4608);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 3U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t17 = (t0 + 4512);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 7649);
    t6 = (t0 + 4608);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4078950148_1516540902_p_1(char *t0)
{
    char t8[16];
    char t17[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB7:    t30 = (t0 + 2632U);
    t31 = *((char **)t30);
    t30 = (t0 + 4672);
    t32 = (t30 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t31, 32U);
    xsi_driver_first_trans_fast_port(t30);

LAB2:    t36 = (t0 + 4528);
    *((int *)t36) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 1992U);
    t7 = *((char **)t1);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t0 + 7440U);
    t1 = xsi_base_array_concat(t1, t8, t9, (char)99, t6, (char)97, t7, t10, (char)101);
    t11 = (t0 + 2152U);
    t12 = *((char **)t11);
    t13 = (23 - 22);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t11 = (t12 + t15);
    t18 = ((IEEE_P_2592010699) + 4000);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 22;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t22 = (0 - 22);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t23;
    t16 = xsi_base_array_concat(t16, t17, t18, (char)97, t1, t8, (char)97, t11, t19, (char)101);
    t23 = (1U + 8U);
    t24 = (t23 + 23U);
    t25 = (32U != t24);
    if (t25 == 1)
        goto LAB5;

LAB6:    t21 = (t0 + 4672);
    t26 = (t21 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t16, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t24, 0);
    goto LAB6;

LAB8:    goto LAB2;

}


extern void work_a_4078950148_1516540902_init()
{
	static char *pe[] = {(void *)work_a_4078950148_1516540902_p_0,(void *)work_a_4078950148_1516540902_p_1};
	xsi_register_didat("work_a_4078950148_1516540902", "isim/test_stage3_isim_beh.exe.sim/work/a_4078950148_1516540902.didat");
	xsi_register_executes(pe);
}
