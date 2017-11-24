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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vmware-host/Shared Folders/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/src/registers.vhd";
extern char *WORK_P_3647430093;
extern char *IEEE_P_3499444699;



static void work_a_1350853198_3212880686_p_0(char *t0)
{
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    char *t34;
    static char *nl0[] = {&&LAB16, &&LAB16, &&LAB14, &&LAB15, &&LAB16, &&LAB16, &&LAB16, &&LAB16, &&LAB16};

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2752U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5728);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 5840);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_delta(t6, 112U, 16U, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 96U, 16U, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 80U, 16U, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 64U, 16U, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 48U, 16U, 0LL);
    xsi_set_current_line(71, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 32U, 16U, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 16U, 16U, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 0U, 16U, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5904);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(75, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5968);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 6032);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(77, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 6096);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t2 = ((WORK_P_3647430093) + 7048U);
    t7 = *((char **)t2);
    t14 = *((unsigned char *)t7);
    t15 = (t13 == t14);
    if (t15 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 2792U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1352U);
    t8 = *((char **)t2);
    t16 = (3 - 3);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t2 = (t8 + t19);
    t20 = *((unsigned char *)t2);
    t9 = (char *)((nl0) + t20);
    goto **((char **)t9);

LAB13:    goto LAB11;

LAB14:    xsi_set_current_line(82, ng0);
    t10 = (t0 + 1512U);
    t21 = *((char **)t10);
    t10 = (t0 + 1352U);
    t22 = *((char **)t10);
    t10 = (t0 + 11688U);
    t23 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t22, t10);
    t24 = (t23 - 7);
    t25 = (t24 * -1);
    t26 = (16U * t25);
    t27 = (0U + t26);
    t28 = (t0 + 5840);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t21, 16U);
    xsi_driver_first_trans_delta(t28, t27, 16U, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t17 = (3 - 2);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t5 = (t0 + 12097);
    t16 = xsi_mem_cmp(t5, t1, 3U);
    if (t16 == 1)
        goto LAB18;

LAB23:    t7 = (t0 + 12100);
    t23 = xsi_mem_cmp(t7, t1, 3U);
    if (t23 == 1)
        goto LAB19;

LAB24:    t9 = (t0 + 12103);
    t24 = xsi_mem_cmp(t9, t1, 3U);
    if (t24 == 1)
        goto LAB20;

LAB25:    t21 = (t0 + 12106);
    t33 = xsi_mem_cmp(t21, t1, 3U);
    if (t33 == 1)
        goto LAB21;

LAB26:
LAB22:    xsi_set_current_line(94, ng0);

LAB17:    goto LAB13;

LAB16:    xsi_set_current_line(97, ng0);
    goto LAB13;

LAB18:    xsi_set_current_line(86, ng0);
    t28 = (t0 + 1512U);
    t29 = *((char **)t28);
    t28 = (t0 + 5904);
    t30 = (t28 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t34 = *((char **)t32);
    memcpy(t34, t29, 16U);
    xsi_driver_first_trans_fast(t28);
    goto LAB17;

LAB19:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5968);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB20:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB21:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6096);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

LAB27:;
}

static void work_a_1350853198_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t10 = (3 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = *((unsigned char *)t1);
    t5 = (char *)((nl0) + t3);
    goto **((char **)t5);

LAB2:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 6160);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 5744);
    *((int *)t1) = 1;

LAB1:    return;
LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(110, ng0);
    t6 = (t0 + 3112U);
    t7 = *((char **)t6);
    t6 = (t0 + 1032U);
    t8 = *((char **)t6);
    t6 = (t0 + 11656U);
    t14 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t8, t6);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t14);
    t17 = (16U * t16);
    t18 = (0 + t17);
    t9 = (t7 + t18);
    t19 = (t0 + 6160);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB5;

LAB7:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t11 = (3 - 2);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t5 = (t0 + 12109);
    t10 = xsi_mem_cmp(t5, t1, 3U);
    if (t10 == 1)
        goto LAB9;

LAB13:    t7 = (t0 + 12112);
    t14 = xsi_mem_cmp(t7, t1, 3U);
    if (t14 == 1)
        goto LAB10;

LAB14:    t9 = (t0 + 12115);
    t15 = xsi_mem_cmp(t9, t1, 3U);
    if (t15 == 1)
        goto LAB11;

LAB15:
LAB12:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 6160);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB5;

LAB9:    xsi_set_current_line(114, ng0);
    t20 = (t0 + 3272U);
    t21 = *((char **)t20);
    t20 = (t0 + 6160);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 16U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB8;

LAB10:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 6160);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 6160);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB16:;
}

static void work_a_1350853198_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t10 = (3 - 3);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = *((unsigned char *)t1);
    t5 = (char *)((nl0) + t3);
    goto **((char **)t5);

LAB2:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 6224);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 5760);
    *((int *)t1) = 1;

LAB1:    return;
LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(133, ng0);
    t6 = (t0 + 3112U);
    t7 = *((char **)t6);
    t6 = (t0 + 1192U);
    t8 = *((char **)t6);
    t6 = (t0 + 11672U);
    t14 = ieee_std_logic_arith_conv_integer_unsigned(IEEE_P_3499444699, t8, t6);
    t15 = (t14 - 7);
    t16 = (t15 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t14);
    t17 = (16U * t16);
    t18 = (0 + t17);
    t9 = (t7 + t18);
    t19 = (t0 + 6224);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB5;

LAB7:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t11 = (3 - 2);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t5 = (t0 + 12118);
    t10 = xsi_mem_cmp(t5, t1, 3U);
    if (t10 == 1)
        goto LAB9;

LAB13:    t7 = (t0 + 12121);
    t14 = xsi_mem_cmp(t7, t1, 3U);
    if (t14 == 1)
        goto LAB10;

LAB14:    t9 = (t0 + 12124);
    t15 = xsi_mem_cmp(t9, t1, 3U);
    if (t15 == 1)
        goto LAB11;

LAB15:
LAB12:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 6224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB5;

LAB9:    xsi_set_current_line(137, ng0);
    t20 = (t0 + 3272U);
    t21 = *((char **)t20);
    t20 = (t0 + 6224);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 16U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB8;

LAB10:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 6224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 6224);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB16:;
}


extern void work_a_1350853198_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1350853198_3212880686_p_0,(void *)work_a_1350853198_3212880686_p_1,(void *)work_a_1350853198_3212880686_p_2};
	xsi_register_didat("work_a_1350853198_3212880686", "isim/test_registers_isim_beh.exe.sim/work/a_1350853198_3212880686.didat");
	xsi_register_executes(pe);
}
