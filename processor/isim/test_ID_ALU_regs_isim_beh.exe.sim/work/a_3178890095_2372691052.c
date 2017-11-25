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
static const char *ng0 = "D:/yi__c/MIPS16-processor/processor/test/test_ID_ALU_regs.vhd";



static void work_a_3178890095_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 7272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 7904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(161, ng0);
    t2 = (t0 + 6288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 7080);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 7904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 6288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 7080);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3178890095_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 7520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(171, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 7328);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(173, ng0);
    t2 = (t0 + 7968);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(174, ng0);
    t2 = (t0 + 6288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 7328);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(176, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t4 = t2;
    memset(t4, (unsigned char)3, 16U);
    t5 = (t0 + 8032);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(177, ng0);
    t2 = xsi_get_transient_memory(3U);
    memset(t2, 0, 3U);
    t4 = t2;
    memset(t4, (unsigned char)3, 3U);
    t5 = (t0 + 8096);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(178, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t4 = t2;
    memset(t4, (unsigned char)3, 16U);
    t5 = (t0 + 8160);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(179, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t4 = t2;
    memset(t4, (unsigned char)3, 16U);
    t5 = (t0 + 8224);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(180, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t4 = t2;
    memset(t4, (unsigned char)3, 16U);
    t5 = (t0 + 8288);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(181, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t4 = t2;
    memset(t4, (unsigned char)3, 4U);
    t5 = (t0 + 8352);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(182, ng0);
    t2 = (t0 + 8416);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(183, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t4 = t2;
    memset(t4, (unsigned char)3, 4U);
    t5 = (t0 + 8480);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(184, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t4 = t2;
    memset(t4, (unsigned char)3, 16U);
    t5 = (t0 + 8544);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(185, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t4 = t2;
    memset(t4, (unsigned char)3, 16U);
    t5 = (t0 + 8608);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(186, ng0);
    t2 = (t0 + 8672);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(187, ng0);
    t2 = (t0 + 8736);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(188, ng0);
    t2 = (t0 + 8800);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(189, ng0);
    t2 = (t0 + 8864);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(190, ng0);
    t2 = (t0 + 6288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 7328);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(192, ng0);
    t2 = (t0 + 8928);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(193, ng0);
    t2 = (t0 + 6288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 7328);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(195, ng0);
    t2 = (t0 + 8928);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(196, ng0);
    t2 = (t0 + 8992);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(197, ng0);
    t2 = (t0 + 6288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 7328);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(201, ng0);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    goto LAB2;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

}


extern void work_a_3178890095_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3178890095_2372691052_p_0,(void *)work_a_3178890095_2372691052_p_1};
	xsi_register_didat("work_a_3178890095_2372691052", "isim/test_ID_ALU_regs_isim_beh.exe.sim/work/a_3178890095_2372691052.didat");
	xsi_register_executes(pe);
}
