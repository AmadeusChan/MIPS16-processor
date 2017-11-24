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
static const char *ng0 = "//vmware-host/Shared Folders/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/src/structural_hazard_detector.vhd";
extern char *WORK_P_3647430093;



static void work_a_3046863904_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4752);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4624);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3046863904_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4816);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4640);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3046863904_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = ((WORK_P_3647430093) + 7048U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4880);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3046863904_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
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

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = ((WORK_P_3647430093) + 7048U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t4 == t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t20 = (t0 + 4944);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t25 = (t0 + 4656);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t15 = (t0 + 4944);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t2 = (t0 + 1192U);
    t8 = *((char **)t2);
    t9 = (15 - 15);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t8 + t12);
    t13 = *((unsigned char *)t2);
    t14 = (t13 == (unsigned char)2);
    t1 = t14;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3046863904_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = ((WORK_P_3647430093) + 7048U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t4 == t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t22 = ((WORK_P_3647430093) + 6928U);
    t23 = *((char **)t22);
    t24 = *((unsigned char *)t23);
    t22 = (t0 + 5008);
    t25 = (t22 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t24;
    xsi_driver_first_trans_fast_port(t22);

LAB2:    t29 = (t0 + 4672);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t15 = ((WORK_P_3647430093) + 7048U);
    t16 = *((char **)t15);
    t17 = *((unsigned char *)t16);
    t15 = (t0 + 5008);
    t18 = (t15 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t17;
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t2 = (t0 + 1192U);
    t8 = *((char **)t2);
    t9 = (15 - 15);
    t10 = (t9 * -1);
    t11 = (1U * t10);
    t12 = (0 + t11);
    t2 = (t8 + t12);
    t13 = *((unsigned char *)t2);
    t14 = (t13 == (unsigned char)2);
    t1 = t14;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_3046863904_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3046863904_3212880686_p_0,(void *)work_a_3046863904_3212880686_p_1,(void *)work_a_3046863904_3212880686_p_2,(void *)work_a_3046863904_3212880686_p_3,(void *)work_a_3046863904_3212880686_p_4};
	xsi_register_didat("work_a_3046863904_3212880686", "isim/test_structural_hazard_detector_isim_beh.exe.sim/work/a_3046863904_3212880686.didat");
	xsi_register_executes(pe);
}
