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
static const char *ng0 = "//vmware-host/Shared Folders/amadeus/academic_materials/Semester_Fall2017/Computer_Orgnization/projects/MIPS16-processor/processor/src/RAW_hazard_detector_and_forward_unit.vhd";
extern char *WORK_P_3647430093;



static void work_a_0764326192_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
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

LAB0:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1352U);
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
LAB14:    t18 = (t0 + 8168);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 7944);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8168);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t2 = (t0 + 2472U);
    t9 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    t1 = t10;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
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

LAB0:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1352U);
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
LAB14:    t18 = (t0 + 8232);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 7960);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8232);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t2 = (t0 + 2632U);
    t9 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    t1 = t10;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
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

LAB0:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1192U);
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
LAB14:    t18 = (t0 + 8296);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 7976);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8296);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t2 = (t0 + 2472U);
    t9 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    t1 = t10;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
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

LAB0:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1192U);
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
LAB14:    t18 = (t0 + 8360);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 7992);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8360);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t2 = (t0 + 2632U);
    t9 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    t1 = t10;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
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

LAB0:    xsi_set_current_line(75, ng0);
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
LAB14:    t18 = (t0 + 8424);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 8008);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8424);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1512U);
    t8 = *((char **)t2);
    t2 = (t0 + 2472U);
    t9 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    t1 = t10;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
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

LAB0:    xsi_set_current_line(76, ng0);
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
LAB14:    t18 = (t0 + 8488);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 8024);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 8488);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB5:    t2 = (t0 + 1512U);
    t8 = *((char **)t2);
    t2 = (t0 + 2632U);
    t9 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    t1 = t10;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t2 = (t8 + t11);
    t12 = (t9 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t12))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_6(char *t0)
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
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
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

LAB0:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t10 = (t0 + 3592U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB5;

LAB6:    t19 = (t0 + 3752U);
    t20 = *((char **)t19);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)3);
    if (t22 != 0)
        goto LAB7;

LAB8:
LAB9:    t28 = xsi_get_transient_memory(16U);
    memset(t28, 0, 16U);
    t29 = t28;
    memset(t29, (unsigned char)2, 16U);
    t30 = (t0 + 8552);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t28, 16U);
    xsi_driver_first_trans_fast_port(t30);

LAB2:    t35 = (t0 + 8040);
    *((int *)t35) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 8552);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t10 = (t0 + 2152U);
    t14 = *((char **)t10);
    t10 = (t0 + 8552);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t14, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB7:    t19 = (t0 + 1992U);
    t23 = *((char **)t19);
    t19 = (t0 + 8552);
    t24 = (t19 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t23, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB2;

LAB10:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_7(char *t0)
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
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
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

LAB0:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t10 = (t0 + 4072U);
    t11 = *((char **)t10);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB5;

LAB6:    t19 = (t0 + 4232U);
    t20 = *((char **)t19);
    t21 = *((unsigned char *)t20);
    t22 = (t21 == (unsigned char)3);
    if (t22 != 0)
        goto LAB7;

LAB8:
LAB9:    t28 = xsi_get_transient_memory(16U);
    memset(t28, 0, 16U);
    t29 = t28;
    memset(t29, (unsigned char)2, 16U);
    t30 = (t0 + 8616);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t28, 16U);
    xsi_driver_first_trans_fast_port(t30);

LAB2:    t35 = (t0 + 8056);
    *((int *)t35) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 8616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t10 = (t0 + 2152U);
    t14 = *((char **)t10);
    t10 = (t0 + 8616);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t14, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB7:    t19 = (t0 + 1992U);
    t23 = *((char **)t19);
    t19 = (t0 + 8616);
    t24 = (t19 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t23, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB2;

LAB10:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_8(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 3432U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 3752U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t2 = t9;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t3 = (t0 + 3592U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t17 = (t0 + 8680);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 8072);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 8680);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_0764326192_3212880686_p_9(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 3912U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB8;

LAB9:    t3 = (t0 + 4232U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t2 = t9;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t3 = (t0 + 4072U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t1 = t12;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t17 = (t0 + 8744);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t22 = (t0 + 8088);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 8744);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t2 = (unsigned char)1;
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_a_0764326192_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0764326192_3212880686_p_0,(void *)work_a_0764326192_3212880686_p_1,(void *)work_a_0764326192_3212880686_p_2,(void *)work_a_0764326192_3212880686_p_3,(void *)work_a_0764326192_3212880686_p_4,(void *)work_a_0764326192_3212880686_p_5,(void *)work_a_0764326192_3212880686_p_6,(void *)work_a_0764326192_3212880686_p_7,(void *)work_a_0764326192_3212880686_p_8,(void *)work_a_0764326192_3212880686_p_9};
	xsi_register_didat("work_a_0764326192_3212880686", "isim/test_RAW_hazard_detector_and_forward_unit_isim_beh.exe.sim/work/a_0764326192_3212880686.didat");
	xsi_register_executes(pe);
}
