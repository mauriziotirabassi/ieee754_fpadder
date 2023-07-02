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
static const char *ng0 = "/home/ale/Desktop/VHDL_git/proj-reti-2023/final_version/AdjustingStage.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0832342168_1516540902_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t19 = (t0 + 1672U);
    t20 = *((char **)t19);
    t19 = (t0 + 4608);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t20, 3U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t25 = (t0 + 4512);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 7796);
    t14 = (t0 + 4608);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 3U);
    xsi_driver_first_trans_fast(t14);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 7793);
    t8 = 1;
    if (3U == 3U)
        goto LAB8;

LAB9:    t8 = 0;

LAB10:    t1 = t8;
    goto LAB7;

LAB8:    t9 = 0;

LAB11:    if (t9 < 3U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t10 = (t6 + t9);
    t11 = (t2 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB9;

LAB13:    t9 = (t9 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0832342168_1516540902_p_1(char *t0)
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

LAB0:    xsi_set_current_line(85, ng0);
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
    t10 = (t0 + 7584U);
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


extern void work_a_0832342168_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0832342168_1516540902_p_0,(void *)work_a_0832342168_1516540902_p_1};
	xsi_register_didat("work_a_0832342168_1516540902", "isim/test_Pipeline_isim_beh.exe.sim/work/a_0832342168_1516540902.didat");
	xsi_register_executes(pe);
}
