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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "F:/ucisw2/pong_game/vga_module.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1806846123_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 844U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3580);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1420U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t3 = (t0 + 3656);
    t7 = (t3 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}

static void work_a_1806846123_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1396U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3588);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(76, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 + 1);
    t3 = (t0 + 3692);
    t7 = (t3 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((int *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 >= 799);
    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3692);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1604U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t6 = (t5 + 1);
    t1 = (t0 + 3728);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((int *)t9) = t6;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_1806846123_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 0);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3764);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t8 = (t6 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 3596);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3764);
    t11 = (t2 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t2 = (t0 + 1980U);
    t8 = *((char **)t2);
    t9 = *((int *)t8);
    t10 = (t7 <= t9);
    t1 = t10;
    goto LAB7;

}

static void work_a_1806846123_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 0);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3800);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t8 = (t6 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB3:    t2 = (t0 + 3604);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3800);
    t11 = (t2 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1604U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t2 = (t0 + 2184U);
    t8 = *((char **)t2);
    t9 = *((int *)t8);
    t10 = (t7 <= t9);
    t1 = t10;
    goto LAB7;

}

static void work_a_1806846123_3212880686_p_4(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned char t12;
    char *t13;
    int t14;
    char *t15;
    int t16;
    char *t17;
    int t18;
    int t19;
    unsigned char t20;
    char *t21;
    int t22;
    char *t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    unsigned char t28;
    char *t29;
    int t30;
    char *t31;
    int t32;
    char *t33;
    int t34;
    int t35;
    unsigned char t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(117, ng0);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = (t0 + 1912U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t4 = (t0 + 1980U);
    t9 = *((char **)t4);
    t10 = *((int *)t9);
    t11 = (t8 + t10);
    t12 = (t6 > t11);
    if (t12 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(123, ng0);
    t4 = (t0 + 6139);
    t7 = (t0 + 3836);
    t9 = (t7 + 32U);
    t13 = *((char **)t9);
    t15 = (t13 + 40U);
    t17 = *((char **)t15);
    memcpy(t17, t4, 3U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t4 = (t0 + 3612);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 6136);
    t38 = (t0 + 3836);
    t39 = (t38 + 32U);
    t40 = *((char **)t39);
    t41 = (t40 + 40U);
    t42 = *((char **)t41);
    memcpy(t42, t4, 3U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB3;

LAB5:    t4 = (t0 + 1604U);
    t29 = *((char **)t4);
    t30 = *((int *)t29);
    t4 = (t0 + 1844U);
    t31 = *((char **)t4);
    t32 = *((int *)t31);
    t4 = (t0 + 2252U);
    t33 = *((char **)t4);
    t34 = *((int *)t33);
    t35 = (t32 - t34);
    t36 = (t30 < t35);
    t1 = t36;
    goto LAB7;

LAB8:    t4 = (t0 + 1604U);
    t21 = *((char **)t4);
    t22 = *((int *)t21);
    t4 = (t0 + 2116U);
    t23 = *((char **)t4);
    t24 = *((int *)t23);
    t4 = (t0 + 2184U);
    t25 = *((char **)t4);
    t26 = *((int *)t25);
    t27 = (t24 + t26);
    t28 = (t22 > t27);
    t2 = t28;
    goto LAB10;

LAB11:    t4 = (t0 + 1512U);
    t13 = *((char **)t4);
    t14 = *((int *)t13);
    t4 = (t0 + 1776U);
    t15 = *((char **)t4);
    t16 = *((int *)t15);
    t4 = (t0 + 2048U);
    t17 = *((char **)t4);
    t18 = *((int *)t17);
    t19 = (t16 - t18);
    t20 = (t14 < t19);
    t3 = t20;
    goto LAB13;

}


extern void work_a_1806846123_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1806846123_3212880686_p_0,(void *)work_a_1806846123_3212880686_p_1,(void *)work_a_1806846123_3212880686_p_2,(void *)work_a_1806846123_3212880686_p_3,(void *)work_a_1806846123_3212880686_p_4};
	xsi_register_didat("work_a_1806846123_3212880686", "isim/vga_test_isim_beh.exe.sim/work/a_1806846123_3212880686.didat");
	xsi_register_executes(pe);
}
