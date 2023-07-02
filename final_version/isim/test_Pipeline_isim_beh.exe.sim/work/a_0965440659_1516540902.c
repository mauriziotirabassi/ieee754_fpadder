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
static const char *ng0 = "/home/ale/Desktop/VHDL_git/proj-reti-2023/final_version/SummingStage.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0965440659_1516540902_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 10304U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)3, (char)97, t2, t5, (char)101);
    t6 = (1U + 23U);
    t7 = (24U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 6360);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 24U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6216);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(24U, t6, 0);
    goto LAB6;

}

static void work_a_0965440659_1516540902_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 10320U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)3, (char)97, t2, t5, (char)101);
    t6 = (1U + 23U);
    t7 = (24U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 6424);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 24U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6232);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(24U, t6, 0);
    goto LAB6;

}

static void work_a_0965440659_1516540902_p_2(char *t0)
{
    char t16[16];
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 2952U);
    t11 = *((char **)t10);
    t12 = (23 - 23);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t10 = (t11 + t14);
    t17 = ((IEEE_P_2592010699) + 4000);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 23;
    t20 = (t19 + 4U);
    *((int *)t20) = 1;
    t20 = (t19 + 8U);
    *((int *)t20) = -1;
    t21 = (1 - 23);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t15 = xsi_base_array_concat(t15, t16, t17, (char)99, (unsigned char)3, (char)97, t10, t18, (char)101);
    t22 = (1U + 23U);
    t23 = (24U != t22);
    if (t23 == 1)
        goto LAB7;

LAB8:    t20 = (t0 + 6488);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t15, 24U);
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t28 = (t0 + 6248);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t1 = (t0 + 6488);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 24U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(24U, t22, 0);
    goto LAB8;

}

static void work_a_0965440659_1516540902_p_3(char *t0)
{
    char t6[16];
    char t8[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(96, ng0);

LAB3:    t1 = (t0 + 10627);
    t3 = (t0 + 3272U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4000);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 6;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (6 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t3 = xsi_base_array_concat(t3, t6, t7, (char)97, t1, t8, (char)99, t5, (char)101);
    t12 = (7U + 1U);
    t13 = (8U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 6552);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 8U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t18 = (t0 + 6264);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t12, 0);
    goto LAB6;

}

static void work_a_0965440659_1516540902_p_4(char *t0)
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

LAB0:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t19 = (t0 + 6616);
    t21 = (t19 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t20, 3U);
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t25 = (t0 + 6280);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t12 = (t0 + 10637);
    t14 = (t0 + 6616);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t12, 3U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB5:    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 10634);
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


extern void work_a_0965440659_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0965440659_1516540902_p_0,(void *)work_a_0965440659_1516540902_p_1,(void *)work_a_0965440659_1516540902_p_2,(void *)work_a_0965440659_1516540902_p_3,(void *)work_a_0965440659_1516540902_p_4};
	xsi_register_didat("work_a_0965440659_1516540902", "isim/test_Pipeline_isim_beh.exe.sim/work/a_0965440659_1516540902.didat");
	xsi_register_executes(pe);
}
