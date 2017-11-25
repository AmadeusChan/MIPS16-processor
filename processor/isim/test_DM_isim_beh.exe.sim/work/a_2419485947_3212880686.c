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
static const char *ng0 = "D:/yi__c/MIPS16-processor/processor/src/DM.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2419485947_3212880686_p_0(char *t0)
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
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5472);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(69, ng0);
    t1 = xsi_get_transient_memory(18U);
    memset(t1, 0, 18U);
    t2 = t1;
    memset(t2, (unsigned char)2, 18U);
    t5 = (t0 + 5856);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 18U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(70, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5920);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t10 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB44;

LAB45:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(73, ng0);
    t5 = (t0 + 3272U);
    t6 = *((char **)t5);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB22;

LAB23:
LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(74, ng0);
    t5 = (t0 + 5600);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 8685);
    t3 = 1;
    if (16U == 16U)
        goto LAB16;

LAB17:    t3 = 0;

LAB18:    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 5856);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 2U, 16U, 0LL);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 5984);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(76, ng0);
    t8 = (t0 + 3592U);
    t9 = *((char **)t8);
    t15 = (15 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t8 = (t9 + t17);
    t13 = (t0 + 5984);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t8, 8U);
    xsi_driver_first_trans_delta(t13, 8U, 8U, 0LL);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB14;

LAB16:    t14 = 0;

LAB19:    if (t14 < 16U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB17;

LAB21:    t14 = (t14 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t1 = (t0 + 8701);
    t10 = 1;
    if (16U == 16U)
        goto LAB27;

LAB28:    t10 = 0;

LAB29:    if (t10 != 0)
        goto LAB24;

LAB26:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 8717);
    t3 = 1;
    if (16U == 16U)
        goto LAB38;

LAB39:    t3 = 0;

LAB40:    if (t3 != 0)
        goto LAB36;

LAB37:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 5856);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 2U, 16U, 0LL);
    xsi_set_current_line(97, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)4, 16U);
    t5 = (t0 + 5984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB25:    goto LAB11;

LAB24:    xsi_set_current_line(85, ng0);
    t9 = xsi_get_transient_memory(14U);
    memset(t9, 0, 14U);
    t13 = t9;
    memset(t13, (unsigned char)2, 14U);
    t18 = (t0 + 5920);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t9, 14U);
    xsi_driver_first_trans_delta(t18, 0U, 14U, 0LL);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 14U, 1, 0LL);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t10 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t4);
    t1 = (t0 + 5920);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t10;
    xsi_driver_first_trans_delta(t1, 15U, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB33;

LAB35:
LAB34:    goto LAB25;

LAB27:    t14 = 0;

LAB30:    if (t14 < 16U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t7 = (t5 + t14);
    t8 = (t1 + t14);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB28;

LAB32:    t14 = (t14 + 1);
    goto LAB30;

LAB33:    xsi_set_current_line(89, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)4, 16U);
    t6 = (t0 + 5984);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB34;

LAB36:    xsi_set_current_line(93, ng0);
    t8 = (t0 + 5600);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5472);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB25;

LAB38:    t14 = 0;

LAB41:    if (t14 < 16U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t6 = (t2 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB39;

LAB43:    t14 = (t14 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 3272U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t10 = (t4 == (unsigned char)3);
    if (t10 != 0)
        goto LAB46;

LAB48:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB58;

LAB59:
LAB47:    goto LAB8;

LAB46:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3432U);
    t6 = *((char **)t2);
    t2 = (t0 + 8733);
    t11 = 1;
    if (16U == 16U)
        goto LAB52;

LAB53:    t11 = 0;

LAB54:    if (t11 != 0)
        goto LAB49;

LAB51:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 5792);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB50:    goto LAB47;

LAB49:    xsi_set_current_line(104, ng0);
    t13 = (t0 + 5536);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB50;

LAB52:    t14 = 0;

LAB55:    if (t14 < 16U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t8 = (t6 + t14);
    t9 = (t2 + t14);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB53;

LAB57:    t14 = (t14 + 1);
    goto LAB55;

LAB58:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t1 = (t0 + 8749);
    t10 = 1;
    if (16U == 16U)
        goto LAB63;

LAB64:    t10 = 0;

LAB65:    if (t10 != 0)
        goto LAB60;

LAB62:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 8765);
    t3 = 1;
    if (16U == 16U)
        goto LAB71;

LAB72:    t3 = 0;

LAB73:    if (t3 != 0)
        goto LAB69;

LAB70:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5920);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB61:    goto LAB47;

LAB60:    xsi_set_current_line(110, ng0);
    goto LAB61;

LAB63:    t14 = 0;

LAB66:    if (t14 < 16U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t7 = (t5 + t14);
    t8 = (t1 + t14);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB64;

LAB68:    t14 = (t14 + 1);
    goto LAB66;

LAB69:    xsi_set_current_line(112, ng0);
    t8 = (t0 + 5472);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(113, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5920);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_delta(t5, 0U, 8U, 0LL);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t14 = (15 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t0 + 5920);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_delta(t5, 8U, 8U, 0LL);
    goto LAB61;

LAB71:    t14 = 0;

LAB74:    if (t14 < 16U)
        goto LAB75;
    else
        goto LAB73;

LAB75:    t6 = (t2 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB72;

LAB76:    t14 = (t14 + 1);
    goto LAB74;

}


extern void work_a_2419485947_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2419485947_3212880686_p_0};
	xsi_register_didat("work_a_2419485947_3212880686", "isim/test_DM_isim_beh.exe.sim/work/a_2419485947_3212880686.didat");
	xsi_register_executes(pe);
}
