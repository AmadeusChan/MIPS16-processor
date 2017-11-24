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


static void work_a_1451471450_3212880686_p_0(char *t0)
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
LAB3:    t1 = (t0 + 5088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5200);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2792U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)0);
    if (t12 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5200);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5264);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5328);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(67, ng0);
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

LAB13:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5200);
    t18 = (t2 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5264);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5328);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB16:    t13 = (unsigned char)1;
    goto LAB18;

}

static void work_a_1451471450_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5392);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5456);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 5104);
    *((int *)t1) = 1;

LAB1:    return;
}

static void work_a_1451471450_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1672U);
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
        goto LAB2;

LAB4:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 5520);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB3:    t2 = (t0 + 5120);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1032U);
    t13 = *((char **)t2);
    t2 = (t0 + 1352U);
    t14 = *((char **)t2);
    t15 = 1;
    if (4U == 4U)
        goto LAB11;

LAB12:    t15 = 0;

LAB13:    if (t15 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t1 = 1;
    if (4U == 4U)
        goto LAB19;

LAB20:    t1 = 0;

LAB21:    if (t1 != 0)
        goto LAB17;

LAB18:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 5520);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1512U);
    t8 = *((char **)t2);
    t9 = *((unsigned char *)t8);
    t2 = ((WORK_P_3647430093) + 7048U);
    t10 = *((char **)t2);
    t11 = *((unsigned char *)t10);
    t12 = (t9 == t11);
    t1 = t12;
    goto LAB7;

LAB8:    xsi_set_current_line(111, ng0);
    t18 = (t0 + 5520);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast(t18);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    t16 = 0;

LAB14:    if (t16 < 4U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t2 = (t13 + t16);
    t17 = (t14 + t16);
    if (*((unsigned char *)t2) != *((unsigned char *)t17))
        goto LAB12;

LAB16:    t16 = (t16 + 1);
    goto LAB14;

LAB17:    xsi_set_current_line(114, ng0);
    t10 = (t0 + 5520);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 5584);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB19:    t16 = 0;

LAB22:    if (t16 < 4U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t2 = (t3 + t16);
    t8 = (t5 + t16);
    if (*((unsigned char *)t2) != *((unsigned char *)t8))
        goto LAB20;

LAB24:    t16 = (t16 + 1);
    goto LAB22;

}


extern void work_a_1451471450_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1451471450_3212880686_p_0,(void *)work_a_1451471450_3212880686_p_1,(void *)work_a_1451471450_3212880686_p_2};
	xsi_register_didat("work_a_1451471450_3212880686", "isim/test_UAL_hazard_detector_isim_beh.exe.sim/work/a_1451471450_3212880686.didat");
	xsi_register_executes(pe);
}
