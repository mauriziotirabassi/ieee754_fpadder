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
static const char *ng0 = "/home/kryzha/Documents/proj-reti-2023/final_version/ComparingStage.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_0313352503_1516540902_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 8320);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 8096);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 8384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 8112);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(93, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1352U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 8448);
    t10 = (t1 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t14 = (t0 + 8128);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(119, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = (31 - 30);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8512);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 8144);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(120, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = (31 - 30);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8576);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 8160);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(122, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = (31 - 30);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8640);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 8176);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(123, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = (31 - 22);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8704);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 8192);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(124, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = (31 - 22);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8768);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 8208);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_8(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    unsigned char t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(142, ng0);
    t3 = (t0 + 4072U);
    t4 = *((char **)t3);
    t5 = (7 - 7);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t8 = (t0 + 13677);
    t10 = 1;
    if (3U == 3U)
        goto LAB11;

LAB12:    t10 = 0;

LAB13:    if (t10 == 1)
        goto LAB8;

LAB9:    t14 = (t0 + 4072U);
    t15 = *((char **)t14);
    t16 = (7 - 4);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t14 = (t15 + t18);
    t19 = (t0 + 13680);
    t21 = 1;
    if (2U == 2U)
        goto LAB17;

LAB18:    t21 = 0;

LAB19:    t25 = (!(t21));
    t2 = t25;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t26 = (t0 + 4232U);
    t27 = *((char **)t26);
    t26 = (t0 + 13682);
    t29 = 1;
    if (3U == 3U)
        goto LAB23;

LAB24:    t29 = 0;

LAB25:    t33 = (!(t29));
    t1 = t33;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB29:    t40 = (t0 + 13685);
    t42 = (t0 + 8832);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t40, 3U);
    xsi_driver_first_trans_fast_port(t42);

LAB2:    t47 = (t0 + 8224);
    *((int *)t47) = 1;

LAB1:    return;
LAB3:    t34 = (t0 + 4232U);
    t35 = *((char **)t34);
    t34 = (t0 + 8832);
    t36 = (t34 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t35, 3U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB11:    t11 = 0;

LAB14:    if (t11 < 3U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t12 = (t3 + t11);
    t13 = (t8 + t11);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB12;

LAB16:    t11 = (t11 + 1);
    goto LAB14;

LAB17:    t22 = 0;

LAB20:    if (t22 < 2U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t23 = (t14 + t22);
    t24 = (t19 + t22);
    if (*((unsigned char *)t23) != *((unsigned char *)t24))
        goto LAB18;

LAB22:    t22 = (t22 + 1);
    goto LAB20;

LAB23:    t30 = 0;

LAB26:    if (t30 < 3U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t31 = (t27 + t30);
    t32 = (t26 + t30);
    if (*((unsigned char *)t31) != *((unsigned char *)t32))
        goto LAB24;

LAB28:    t30 = (t30 + 1);
    goto LAB26;

LAB30:    goto LAB2;

}

static void work_a_0313352503_1516540902_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(145, ng0);

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t3 = (7 - 4);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8896);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 8240);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0313352503_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0313352503_1516540902_p_0,(void *)work_a_0313352503_1516540902_p_1,(void *)work_a_0313352503_1516540902_p_2,(void *)work_a_0313352503_1516540902_p_3,(void *)work_a_0313352503_1516540902_p_4,(void *)work_a_0313352503_1516540902_p_5,(void *)work_a_0313352503_1516540902_p_6,(void *)work_a_0313352503_1516540902_p_7,(void *)work_a_0313352503_1516540902_p_8,(void *)work_a_0313352503_1516540902_p_9};
	xsi_register_didat("work_a_0313352503_1516540902", "isim/test_Pipeline_isim_beh.exe.sim/work/a_0313352503_1516540902.didat");
	xsi_register_executes(pe);
}
