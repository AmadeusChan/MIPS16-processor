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
static const char *ng0 = "//vmware-host/Shared Folders/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/src/UAL_hazard_detector.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_3647430093;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_1214047758_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1792U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5728);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)0);
    if (t12 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2952U);
    t7 = *((char **)t2);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB16;

LAB17:    t2 = (t0 + 3112U);
    t8 = *((char **)t2);
    t16 = *((unsigned char *)t8);
    t17 = (t16 == (unsigned char)3);
    t13 = t17;

LAB18:    if (t13 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5728);
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB14;

LAB16:    t13 = (unsigned char)1;
    goto LAB18;

}

static void work_a_1214047758_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5600);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 5792);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5792);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

}

static void work_a_1214047758_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB3, &&LAB4};

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 5616);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(88, ng0);
    t4 = (t0 + 5856);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5856);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

}

static void work_a_1214047758_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5920);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5984);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 5632);
    *((int *)t1) = 1;

LAB1:    return;
}

static void work_a_1214047758_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5648);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t1 = ((WORK_P_3647430093) + 7048U);
    t8 = *((char **)t1);
    t9 = *((unsigned char *)t8);
    t10 = (t7 == t9);
    if (t10 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(115, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1032U);
    t16 = *((char **)t1);
    t1 = (t0 + 1352U);
    t17 = *((char **)t1);
    t18 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t18 = 0;

LAB16:    if (t18 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t3 = 1;
    if (4U == 4U)
        goto LAB22;

LAB23:    t3 = 0;

LAB24:    if (t3 != 0)
        goto LAB20;

LAB21:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 6048);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB6;

LAB8:    t1 = (t0 + 1512U);
    t11 = *((char **)t1);
    t12 = *((unsigned char *)t11);
    t1 = ((WORK_P_3647430093) + 7048U);
    t13 = *((char **)t1);
    t14 = *((unsigned char *)t13);
    t15 = (t12 == t14);
    t5 = t15;
    goto LAB10;

LAB11:    xsi_set_current_line(105, ng0);
    t21 = (t0 + 6048);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    t19 = 0;

LAB17:    if (t19 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t1 = (t16 + t19);
    t20 = (t17 + t19);
    if (*((unsigned char *)t1) != *((unsigned char *)t20))
        goto LAB15;

LAB19:    t19 = (t19 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(108, ng0);
    t11 = (t0 + 6048);
    t13 = (t11 + 56U);
    t16 = *((char **)t13);
    t17 = (t16 + 56U);
    t20 = *((char **)t17);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 6112);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t8 = (t6 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB22:    t19 = 0;

LAB25:    if (t19 < 4U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t1 = (t2 + t19);
    t8 = (t6 + t19);
    if (*((unsigned char *)t1) != *((unsigned char *)t8))
        goto LAB23;

LAB27:    t19 = (t19 + 1);
    goto LAB25;

}


extern void work_a_1214047758_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1214047758_3212880686_p_0,(void *)work_a_1214047758_3212880686_p_1,(void *)work_a_1214047758_3212880686_p_2,(void *)work_a_1214047758_3212880686_p_3,(void *)work_a_1214047758_3212880686_p_4};
	xsi_register_didat("work_a_1214047758_3212880686", "isim/UAL_hazard_detector_isim_beh.exe.sim/work/a_1214047758_3212880686.didat");
	xsi_register_executes(pe);
}
