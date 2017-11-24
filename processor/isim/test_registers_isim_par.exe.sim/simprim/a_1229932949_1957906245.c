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
extern char *IEEE_P_2592010699;
extern char *SIMPRIM_P_4208868169;
extern char *IEEE_P_2717149903;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
char *ieee_p_2592010699_sub_3879918230_503743352(char *, char *, char *, char *);
void ieee_p_2717149903_sub_2486506143_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, char *, char *, unsigned char , char *, char *, char *, unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char , unsigned char );
void ieee_p_2717149903_sub_539877840_2101202839(char *, char *, char *, unsigned int , unsigned int , char *, char *, unsigned int , unsigned int , char *);
int simprim_p_4208868169_sub_3182959421_3008368149(char *, char *, char *);


unsigned char simprim_a_1229932949_1957906245_sub_655425482_3127390018(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[40];
    char t6[16];
    char t11[16];
    char t16[8];
    unsigned char t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    unsigned char t25;
    char *t26;
    int t27;
    char *t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned char t34;
    char *t35;
    int t36;
    char *t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned char t44;
    unsigned char t45;
    unsigned char t46;
    char *t47;
    int t48;
    char *t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned char t56;
    char *t57;
    int t58;
    char *t59;
    int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned char t66;
    unsigned char t67;
    unsigned char t68;
    int t69;
    char *t70;
    int t71;
    char *t72;
    int t73;
    int t74;
    unsigned int t75;
    char *t76;
    int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned char t81;
    char *t82;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned char t87;
    unsigned char t88;
    int t89;
    int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned char t94;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 3);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t11 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 1;
    t12 = (t8 + 4U);
    *((int *)t12) = 0;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 1);
    t10 = (t13 * -1);
    t10 = (t10 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t10;
    t12 = (t4 + 4U);
    t14 = ((IEEE_P_2592010699) + 3320);
    t15 = (t12 + 88U);
    *((char **)t15) = t14;
    t17 = (t12 + 56U);
    *((char **)t17) = t16;
    xsi_type_set_default_value(t14, t16, 0);
    t18 = (t12 + 80U);
    *((unsigned int *)t18) = 1U;
    t19 = (t5 + 4U);
    t20 = (t2 != 0);
    if (t20 == 1)
        goto LAB3;

LAB2:    t21 = (t5 + 12U);
    *((char **)t21) = t6;
    t22 = (t5 + 20U);
    t23 = (t3 != 0);
    if (t23 == 1)
        goto LAB5;

LAB4:    t24 = (t5 + 28U);
    *((char **)t24) = t11;
    t26 = (t11 + 0U);
    t27 = *((int *)t26);
    t28 = (t11 + 8U);
    t29 = *((int *)t28);
    t30 = (1 - t27);
    t10 = (t30 * t29);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t33 = (t3 + t32);
    t34 = *((unsigned char *)t33);
    t35 = (t11 + 0U);
    t36 = *((int *)t35);
    t37 = (t11 + 8U);
    t38 = *((int *)t37);
    t39 = (0 - t36);
    t40 = (t39 * t38);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t43 = (t3 + t42);
    t44 = *((unsigned char *)t43);
    t45 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t34, t44);
    t46 = (t45 == (unsigned char)3);
    if (t46 == 1)
        goto LAB9;

LAB10:    t47 = (t11 + 0U);
    t48 = *((int *)t47);
    t49 = (t11 + 8U);
    t50 = *((int *)t49);
    t51 = (1 - t48);
    t52 = (t51 * t50);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t55 = (t3 + t54);
    t56 = *((unsigned char *)t55);
    t57 = (t11 + 0U);
    t58 = *((int *)t57);
    t59 = (t11 + 8U);
    t60 = *((int *)t59);
    t61 = (0 - t58);
    t62 = (t61 * t60);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t65 = (t3 + t64);
    t66 = *((unsigned char *)t65);
    t67 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t56, t66);
    t68 = (t67 == (unsigned char)2);
    t25 = t68;

LAB11:    if (t25 != 0)
        goto LAB6;

LAB8:    t7 = (t6 + 0U);
    t9 = *((int *)t7);
    t8 = (t6 + 8U);
    t13 = *((int *)t8);
    t27 = (0 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t2 + t32);
    t25 = *((unsigned char *)t14);
    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (1 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t44 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t25, t34);
    t45 = (t44 == (unsigned char)2);
    if (t45 == 1)
        goto LAB17;

LAB18:    t23 = (unsigned char)0;

LAB19:    if (t23 == 1)
        goto LAB14;

LAB15:    t20 = (unsigned char)0;

LAB16:    if (t20 != 0)
        goto LAB12;

LAB13:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (1 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)2);
    if (t25 == 1)
        goto LAB22;

LAB23:    t20 = (unsigned char)0;

LAB24:    if (t20 != 0)
        goto LAB20;

LAB21:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (1 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)3);
    if (t25 == 1)
        goto LAB27;

LAB28:    t20 = (unsigned char)0;

LAB29:    if (t20 != 0)
        goto LAB25;

LAB26:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (0 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)2);
    if (t25 == 1)
        goto LAB32;

LAB33:    t20 = (unsigned char)0;

LAB34:    if (t20 != 0)
        goto LAB30;

LAB31:    t7 = (t11 + 0U);
    t9 = *((int *)t7);
    t8 = (t11 + 8U);
    t13 = *((int *)t8);
    t27 = (0 - t9);
    t10 = (t27 * t13);
    t31 = (1U * t10);
    t32 = (0 + t31);
    t14 = (t3 + t32);
    t23 = *((unsigned char *)t14);
    t25 = (t23 == (unsigned char)3);
    if (t25 == 1)
        goto LAB37;

LAB38:    t20 = (unsigned char)0;

LAB39:    if (t20 != 0)
        goto LAB35;

LAB36:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    *((unsigned char *)t7) = (unsigned char)1;

LAB7:    t7 = (t12 + 56U);
    t8 = *((char **)t7);
    t20 = *((unsigned char *)t8);
    t0 = t20;

LAB1:    return t0;
LAB3:    *((char **)t19) = t2;
    goto LAB2;

LAB5:    *((char **)t22) = t3;
    goto LAB4;

LAB6:    t69 = simprim_p_4208868169_sub_3182959421_3008368149(SIMPRIM_P_4208868169, t3, t11);
    t70 = (t6 + 0U);
    t71 = *((int *)t70);
    t72 = (t6 + 8U);
    t73 = *((int *)t72);
    t74 = (t69 - t71);
    t75 = (t74 * t73);
    t76 = (t6 + 4U);
    t77 = *((int *)t76);
    xsi_vhdl_check_range_of_index(t71, t77, t73, t69);
    t78 = (1U * t75);
    t79 = (0 + t78);
    t80 = (t2 + t79);
    t81 = *((unsigned char *)t80);
    t82 = (t12 + 56U);
    t83 = *((char **)t82);
    t82 = (t83 + 0);
    *((unsigned char *)t82) = t81;
    goto LAB7;

LAB9:    t25 = (unsigned char)1;
    goto LAB11;

LAB12:    t70 = (t6 + 0U);
    t77 = *((int *)t70);
    t72 = (t6 + 8U);
    t89 = *((int *)t72);
    t90 = (0 - t77);
    t91 = (t90 * t89);
    t92 = (1U * t91);
    t93 = (0 + t92);
    t76 = (t2 + t93);
    t94 = *((unsigned char *)t76);
    t80 = (t12 + 56U);
    t82 = *((char **)t80);
    t80 = (t82 + 0);
    *((unsigned char *)t80) = t94;
    goto LAB7;

LAB14:    t47 = (t6 + 0U);
    t60 = *((int *)t47);
    t49 = (t6 + 8U);
    t61 = *((int *)t49);
    t69 = (0 - t60);
    t75 = (t69 * t61);
    t78 = (1U * t75);
    t79 = (0 + t78);
    t55 = (t2 + t79);
    t68 = *((unsigned char *)t55);
    t57 = (t6 + 0U);
    t71 = *((int *)t57);
    t59 = (t6 + 8U);
    t73 = *((int *)t59);
    t74 = (2 - t71);
    t84 = (t74 * t73);
    t85 = (1U * t84);
    t86 = (0 + t85);
    t65 = (t2 + t86);
    t81 = *((unsigned char *)t65);
    t87 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t68, t81);
    t88 = (t87 == (unsigned char)2);
    t20 = t88;
    goto LAB16;

LAB17:    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (2 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t46 = *((unsigned char *)t33);
    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (3 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t56 = *((unsigned char *)t43);
    t66 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t46, t56);
    t67 = (t66 == (unsigned char)2);
    t23 = t67;
    goto LAB19;

LAB20:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (0 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB22:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (0 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (1 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB24;

LAB25:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (2 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB27:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (2 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (3 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB29;

LAB30:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (0 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB32:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (0 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (2 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB34;

LAB35:    t35 = (t6 + 0U);
    t50 = *((int *)t35);
    t37 = (t6 + 8U);
    t51 = *((int *)t37);
    t58 = (1 - t50);
    t62 = (t58 * t51);
    t63 = (1U * t62);
    t64 = (0 + t63);
    t43 = (t2 + t64);
    t46 = *((unsigned char *)t43);
    t47 = (t12 + 56U);
    t49 = *((char **)t47);
    t47 = (t49 + 0);
    *((unsigned char *)t47) = t46;
    goto LAB7;

LAB37:    t15 = (t6 + 0U);
    t29 = *((int *)t15);
    t17 = (t6 + 8U);
    t30 = *((int *)t17);
    t36 = (1 - t29);
    t40 = (t36 * t30);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t18 = (t2 + t42);
    t34 = *((unsigned char *)t18);
    t26 = (t6 + 0U);
    t38 = *((int *)t26);
    t28 = (t6 + 8U);
    t39 = *((int *)t28);
    t48 = (3 - t38);
    t52 = (t48 * t39);
    t53 = (1U * t52);
    t54 = (0 + t53);
    t33 = (t2 + t54);
    t44 = *((unsigned char *)t33);
    t45 = (t34 == t44);
    t20 = t45;
    goto LAB39;

LAB40:;
}

static void simprim_a_1229932949_1957906245_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 5528);
    t2 = (t0 + 2056U);
    t3 = (t0 + 7456);
    t4 = (t0 + 1416U);
    t5 = (t0 + 3272U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 7280);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1229932949_1957906245_p_1(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 5776);
    t2 = (t0 + 2216U);
    t3 = (t0 + 7520);
    t4 = (t0 + 1576U);
    t5 = (t0 + 3392U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 7296);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1229932949_1957906245_p_2(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 6024);
    t2 = (t0 + 2376U);
    t3 = (t0 + 7584);
    t4 = (t0 + 1736U);
    t5 = (t0 + 3512U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 7312);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1229932949_1957906245_p_3(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 6272);
    t2 = (t0 + 2536U);
    t3 = (t0 + 7648);
    t4 = (t0 + 1896U);
    t5 = (t0 + 3632U);
    t6 = *((char **)t5);
    memcpy(t7, t6, 16U);
    ieee_p_2717149903_sub_539877840_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t4, 0U, 0U, t7);
    t5 = (t0 + 7328);
    *((int *)t5) = 1;

LAB1:    return;
}

static void simprim_a_1229932949_1957906245_p_4(char *t0)
{
    char t1[16];
    char t7[16];
    char t12[16];
    char t17[16];
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;
    unsigned char t32;
    unsigned char t33;
    unsigned char t34;
    unsigned char t35;
    unsigned char t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;

LAB0:    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 2416U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t8 = ((IEEE_P_2592010699) + 3912);
    t2 = xsi_base_array_concat(t2, t7, t8, (char)99, t4, (char)99, t6, (char)101);
    t9 = (t0 + 2256U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t13 = ((IEEE_P_2592010699) + 3912);
    t9 = xsi_base_array_concat(t9, t12, t13, (char)97, t2, t7, (char)99, t11, (char)101);
    t14 = (t0 + 2096U);
    t15 = *((char **)t14);
    t16 = *((unsigned char *)t15);
    t18 = ((IEEE_P_2592010699) + 3912);
    t14 = xsi_base_array_concat(t14, t17, t18, (char)97, t9, t12, (char)99, t16, (char)101);
    t19 = ieee_p_2592010699_sub_3879918230_503743352(IEEE_P_2592010699, t1, t14, t17);
    t20 = (t0 + 4472U);
    t21 = *((char **)t20);
    t20 = (t21 + 0);
    t22 = (t1 + 12U);
    t23 = *((unsigned int *)t22);
    t23 = (t23 * 1U);
    memcpy(t20, t19, t23);
    t2 = (t0 + 2576U);
    t3 = *((char **)t2);
    t6 = *((unsigned char *)t3);
    t2 = (t0 + 2416U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t16 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t11);
    t2 = (t0 + 2256U);
    t8 = *((char **)t2);
    t24 = *((unsigned char *)t8);
    t25 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t16, t24);
    t2 = (t0 + 2096U);
    t9 = *((char **)t2);
    t26 = *((unsigned char *)t9);
    t27 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t25, t26);
    t28 = (t27 == (unsigned char)3);
    if (t28 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 2576U);
    t10 = *((char **)t2);
    t29 = *((unsigned char *)t10);
    t2 = (t0 + 2416U);
    t13 = *((char **)t2);
    t30 = *((unsigned char *)t13);
    t31 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t29, t30);
    t2 = (t0 + 2256U);
    t14 = *((char **)t2);
    t32 = *((unsigned char *)t14);
    t33 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t31, t32);
    t2 = (t0 + 2096U);
    t15 = *((char **)t2);
    t34 = *((unsigned char *)t15);
    t35 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t33, t34);
    t36 = (t35 == (unsigned char)2);
    t4 = t36;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 4352U);
    t3 = *((char **)t2);
    t23 = (15 - 15);
    t39 = (t23 * 1U);
    t40 = (0 + t39);
    t2 = (t3 + t40);
    t5 = (t0 + 4472U);
    t8 = *((char **)t5);
    t45 = (3 - 1);
    t46 = (t45 * 1U);
    t47 = (0 + t46);
    t5 = (t8 + t47);
    t4 = simprim_a_1229932949_1957906245_sub_655425482_3127390018(t0, t2, t5);
    t9 = (t0 + 4352U);
    t10 = *((char **)t9);
    t48 = (15 - 11);
    t49 = (t48 * 1U);
    t50 = (0 + t49);
    t9 = (t10 + t50);
    t13 = (t0 + 4472U);
    t14 = *((char **)t13);
    t51 = (3 - 1);
    t52 = (t51 * 1U);
    t53 = (0 + t52);
    t13 = (t14 + t53);
    t6 = simprim_a_1229932949_1957906245_sub_655425482_3127390018(t0, t9, t13);
    t18 = ((IEEE_P_2592010699) + 4024);
    t15 = xsi_base_array_concat(t15, t1, t18, (char)99, t4, (char)99, t6, (char)101);
    t19 = (t0 + 4352U);
    t20 = *((char **)t19);
    t54 = (15 - 7);
    t55 = (t54 * 1U);
    t56 = (0 + t55);
    t19 = (t20 + t56);
    t21 = (t0 + 4472U);
    t22 = *((char **)t21);
    t57 = (3 - 1);
    t58 = (t57 * 1U);
    t59 = (0 + t58);
    t21 = (t22 + t59);
    t11 = simprim_a_1229932949_1957906245_sub_655425482_3127390018(t0, t19, t21);
    t43 = ((IEEE_P_2592010699) + 4024);
    t42 = xsi_base_array_concat(t42, t7, t43, (char)97, t15, t1, (char)99, t11, (char)101);
    t44 = (t0 + 4352U);
    t60 = *((char **)t44);
    t61 = (15 - 3);
    t62 = (t61 * 1U);
    t63 = (0 + t62);
    t44 = (t60 + t63);
    t64 = (t0 + 4472U);
    t65 = *((char **)t64);
    t66 = (3 - 1);
    t67 = (t66 * 1U);
    t68 = (0 + t67);
    t64 = (t65 + t68);
    t16 = simprim_a_1229932949_1957906245_sub_655425482_3127390018(t0, t44, t64);
    t70 = ((IEEE_P_2592010699) + 4024);
    t69 = xsi_base_array_concat(t69, t12, t70, (char)97, t42, t7, (char)99, t16, (char)101);
    t71 = (t0 + 4472U);
    t72 = *((char **)t71);
    t73 = (3 - 3);
    t74 = (t73 * 1U);
    t75 = (0 + t74);
    t71 = (t72 + t75);
    t24 = simprim_a_1229932949_1957906245_sub_655425482_3127390018(t0, t69, t71);
    t76 = (t0 + 7712);
    t77 = (t76 + 56U);
    t78 = *((char **)t77);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    *((unsigned char *)t80) = t24;
    xsi_driver_first_trans_fast(t76);

LAB3:    t2 = (t0 + 7344);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    t2 = (t0 + 4352U);
    t18 = *((char **)t2);
    t2 = (t0 + 4472U);
    t19 = *((char **)t2);
    t2 = (t0 + 11520U);
    t37 = simprim_p_4208868169_sub_3182959421_3008368149(SIMPRIM_P_4208868169, t19, t2);
    t38 = (t37 - 15);
    t23 = (t38 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t37);
    t39 = (1U * t23);
    t40 = (0 + t39);
    t20 = (t18 + t40);
    t41 = *((unsigned char *)t20);
    t21 = (t0 + 7712);
    t22 = (t21 + 56U);
    t42 = *((char **)t22);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    *((unsigned char *)t44) = t41;
    xsi_driver_first_trans_fast(t21);
    goto LAB3;

LAB5:    t4 = (unsigned char)1;
    goto LAB7;

}

static void simprim_a_1229932949_1957906245_p_5(char *t0)
{
    char t7[16];
    char t54[16];
    char t60[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned char t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    int64 t30;
    char *t31;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    int64 t40;
    char *t41;
    char *t42;
    char *t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    int64 t50;
    char *t51;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    int t57;
    unsigned int t58;
    char *t59;
    char *t61;
    unsigned char t62;
    char *t63;
    unsigned char t64;

LAB0:    t1 = (t0 + 6768);
    t2 = (t0 + 1256U);
    t3 = (t0 + 7776);
    t4 = (t0 + 4592U);
    t5 = *((char **)t4);
    t4 = (t0 + 11736);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 1;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 2736U);
    t12 = *((char **)t9);
    t13 = *((unsigned char *)t12);
    t9 = xsi_get_transient_memory(128U);
    memset(t9, 0, 128U);
    t14 = t9;
    t15 = (0 - 0);
    t11 = (t15 * 1);
    t16 = (32U * t11);
    t17 = (t14 + t16);
    t18 = t17;
    t19 = (t0 + 2056U);
    t20 = xsi_signal_get_last_event(t19);
    *((int64 *)t18) = t20;
    t21 = (t17 + 8U);
    t22 = (t0 + 3752U);
    t23 = *((char **)t22);
    memcpy(t21, t23, 16U);
    t22 = (t17 + 24U);
    *((unsigned char *)t22) = (unsigned char)1;
    t24 = (1 - 0);
    t25 = (t24 * 1);
    t26 = (32U * t25);
    t27 = (t14 + t26);
    t28 = t27;
    t29 = (t0 + 2216U);
    t30 = xsi_signal_get_last_event(t29);
    *((int64 *)t28) = t30;
    t31 = (t27 + 8U);
    t32 = (t0 + 3872U);
    t33 = *((char **)t32);
    memcpy(t31, t33, 16U);
    t32 = (t27 + 24U);
    *((unsigned char *)t32) = (unsigned char)1;
    t34 = (2 - 0);
    t35 = (t34 * 1);
    t36 = (32U * t35);
    t37 = (t14 + t36);
    t38 = t37;
    t39 = (t0 + 2376U);
    t40 = xsi_signal_get_last_event(t39);
    *((int64 *)t38) = t40;
    t41 = (t37 + 8U);
    t42 = (t0 + 3992U);
    t43 = *((char **)t42);
    memcpy(t41, t43, 16U);
    t42 = (t37 + 24U);
    *((unsigned char *)t42) = (unsigned char)1;
    t44 = (3 - 0);
    t45 = (t44 * 1);
    t46 = (32U * t45);
    t47 = (t14 + t46);
    t48 = t47;
    t49 = (t0 + 2536U);
    t50 = xsi_signal_get_last_event(t49);
    *((int64 *)t48) = t50;
    t51 = (t47 + 8U);
    t52 = (t0 + 4112U);
    t53 = *((char **)t52);
    memcpy(t51, t53, 16U);
    t52 = (t47 + 24U);
    *((unsigned char *)t52) = (unsigned char)1;
    t55 = (t54 + 0U);
    t56 = (t55 + 0U);
    *((int *)t56) = 0;
    t56 = (t55 + 4U);
    *((int *)t56) = 3;
    t56 = (t55 + 8U);
    *((int *)t56) = 1;
    t57 = (3 - 0);
    t58 = (t57 * 1);
    t58 = (t58 + 1);
    t56 = (t55 + 12U);
    *((unsigned int *)t56) = t58;
    t56 = ((IEEE_P_2717149903) + 1288U);
    t59 = *((char **)t56);
    memcpy(t60, t59, 16U);
    t56 = (t0 + 3032U);
    t61 = *((char **)t56);
    t62 = *((unsigned char *)t61);
    t56 = (t0 + 3152U);
    t63 = *((char **)t56);
    t64 = *((unsigned char *)t63);
    ieee_p_2717149903_sub_2486506143_2101202839(IEEE_P_2717149903, t1, t2, 0U, 0U, t3, t5, t4, t7, t13, t9, t54, t60, (unsigned char)3, t62, t64, (unsigned char)1, (unsigned char)0, (unsigned char)0, (unsigned char)0);
    t1 = (t0 + 7360);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void simprim_a_1229932949_1957906245_2183574698_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_2183574698", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_2183574698.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_2100680580_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_2100680580", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_2100680580.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_2293799328_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_2293799328", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_2293799328.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2134098238_1957906245_1378423448_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2134098238_1957906245_1378423448", "isim/test_registers_isim_par.exe.sim/simprim/a_2134098238_1957906245_1378423448.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3746195946_1957906245_1500861861_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3746195946_1957906245_1500861861", "isim/test_registers_isim_par.exe.sim/simprim/a_3746195946_1957906245_1500861861.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1105581484_1957906245_2812566716_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1105581484_1957906245_2812566716", "isim/test_registers_isim_par.exe.sim/simprim/a_1105581484_1957906245_2812566716.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_1682726857_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_1682726857", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_1682726857.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_1682726857_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_1682726857", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_1682726857.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_0453736139_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_0453736139", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_0453736139.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_0453736139_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_0453736139", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_0453736139.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_0274149878_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_0274149878", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_0274149878.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2134098238_1957906245_2259404824_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2134098238_1957906245_2259404824", "isim/test_registers_isim_par.exe.sim/simprim/a_2134098238_1957906245_2259404824.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1141483966_1957906245_1434164823_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1141483966_1957906245_1434164823", "isim/test_registers_isim_par.exe.sim/simprim/a_1141483966_1957906245_1434164823.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2153841838_1957906245_3203362405_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2153841838_1957906245_3203362405", "isim/test_registers_isim_par.exe.sim/simprim/a_2153841838_1957906245_3203362405.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_3203362405_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_3203362405", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_3203362405.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_3701871995_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_3701871995", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_3701871995.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_3714350924_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_3714350924", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_3714350924.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539390052_1957906245_3939389934_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539390052_1957906245_3939389934", "isim/test_registers_isim_par.exe.sim/simprim/a_2539390052_1957906245_3939389934.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539390052_1957906245_3943447513_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539390052_1957906245_3943447513", "isim/test_registers_isim_par.exe.sim/simprim/a_2539390052_1957906245_3943447513.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1972260898_1957906245_0209412494_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1972260898_1957906245_0209412494", "isim/test_registers_isim_par.exe.sim/simprim/a_1972260898_1957906245_0209412494.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3006927376_1957906245_3357640295_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3006927376_1957906245_3357640295", "isim/test_registers_isim_par.exe.sim/simprim/a_3006927376_1957906245_3357640295.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3458359505_1957906245_2577583870_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3458359505_1957906245_2577583870", "isim/test_registers_isim_par.exe.sim/simprim/a_3458359505_1957906245_2577583870.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_2577583870_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_2577583870", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_2577583870.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3652266664_1957906245_0707164645_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3652266664_1957906245_0707164645", "isim/test_registers_isim_par.exe.sim/simprim/a_3652266664_1957906245_0707164645.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1830911609_1957906245_0707164645_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1830911609_1957906245_0707164645", "isim/test_registers_isim_par.exe.sim/simprim/a_1830911609_1957906245_0707164645.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2002949504_1957906245_0179348325_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2002949504_1957906245_0179348325", "isim/test_registers_isim_par.exe.sim/simprim/a_2002949504_1957906245_0179348325.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2132651894_1957906245_0179348325_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2132651894_1957906245_0179348325", "isim/test_registers_isim_par.exe.sim/simprim/a_2132651894_1957906245_0179348325.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2090135573_1957906245_2282675236_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2090135573_1957906245_2282675236", "isim/test_registers_isim_par.exe.sim/simprim/a_2090135573_1957906245_2282675236.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2854551621_1957906245_3147856096_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2854551621_1957906245_3147856096", "isim/test_registers_isim_par.exe.sim/simprim/a_2854551621_1957906245_3147856096.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_2293799328_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_2293799328", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_2293799328.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_2230154817_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_2230154817", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_2230154817.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1141483966_1957906245_1378423448_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1141483966_1957906245_1378423448", "isim/test_registers_isim_par.exe.sim/simprim/a_1141483966_1957906245_1378423448.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_0449387772_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_0449387772", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_0449387772.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_0295001025_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_0295001025", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_0295001025.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_0295001025_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_0295001025", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_0295001025.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_2271846959_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_2271846959", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_2271846959.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1141483966_1957906245_2271846959_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1141483966_1957906245_2271846959", "isim/test_registers_isim_par.exe.sim/simprim/a_1141483966_1957906245_2271846959.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_1421472864_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_1421472864", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_1421472864.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0787569890_1957906245_1421472864_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0787569890_1957906245_1421472864", "isim/test_registers_isim_par.exe.sim/simprim/a_0787569890_1957906245_1421472864.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2434754757_1957906245_3207398482_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2434754757_1957906245_3207398482", "isim/test_registers_isim_par.exe.sim/simprim/a_2434754757_1957906245_3207398482.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2153841838_1957906245_3714350924_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2153841838_1957906245_3714350924", "isim/test_registers_isim_par.exe.sim/simprim/a_2153841838_1957906245_3714350924.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3279087018_1957906245_3943447513_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3279087018_1957906245_3943447513", "isim/test_registers_isim_par.exe.sim/simprim/a_3279087018_1957906245_3943447513.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1646074459_1957906245_0189626882_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1646074459_1957906245_0189626882", "isim/test_registers_isim_par.exe.sim/simprim/a_1646074459_1957906245_0189626882.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1437714265_1957906245_3357640295_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1437714265_1957906245_3357640295", "isim/test_registers_isim_par.exe.sim/simprim/a_1437714265_1957906245_3357640295.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2153841838_1957906245_2183574698_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2153841838_1957906245_2183574698", "isim/test_registers_isim_par.exe.sim/simprim/a_2153841838_1957906245_2183574698.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3973750099_1957906245_3147856096_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3973750099_1957906245_3147856096", "isim/test_registers_isim_par.exe.sim/simprim/a_3973750099_1957906245_3147856096.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_3126989527_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_3126989527", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_3126989527.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3973750099_1957906245_3126989527_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3973750099_1957906245_3126989527", "isim/test_registers_isim_par.exe.sim/simprim/a_3973750099_1957906245_3126989527.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_0219106877_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_0219106877", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_0219106877.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_0219106877_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_0219106877", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_0219106877.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_0214770698_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_0214770698", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_0214770698.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2434754757_1957906245_0214770698_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2434754757_1957906245_0214770698", "isim/test_registers_isim_par.exe.sim/simprim/a_2434754757_1957906245_0214770698.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_2212814493_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_2212814493", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_2212814493.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_2212814493_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_2212814493", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_2212814493.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2250401807_1957906245_2096610739_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2250401807_1957906245_2096610739", "isim/test_registers_isim_par.exe.sim/simprim/a_2250401807_1957906245_2096610739.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_2096610739_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_2096610739", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_2096610739.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_2100680580_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_2100680580", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_2100680580.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_2306536343_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_2306536343", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_2306536343.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_2234457206_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_2234457206", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_2234457206.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2153841838_1957906245_2234457206_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2153841838_1957906245_2234457206", "isim/test_registers_isim_par.exe.sim/simprim/a_2153841838_1957906245_2234457206.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_2230154817_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_2230154817", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_2230154817.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1105581484_1957906245_1407940783_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1105581484_1957906245_1407940783", "isim/test_registers_isim_par.exe.sim/simprim/a_1105581484_1957906245_1407940783.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0166967330_1957906245_1407940783_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0166967330_1957906245_1407940783", "isim/test_registers_isim_par.exe.sim/simprim/a_0166967330_1957906245_1407940783.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3746195946_1957906245_1488404370_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3746195946_1957906245_1488404370", "isim/test_registers_isim_par.exe.sim/simprim/a_3746195946_1957906245_1488404370.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3279087018_1957906245_1488404370_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3279087018_1957906245_1488404370", "isim/test_registers_isim_par.exe.sim/simprim/a_3279087018_1957906245_1488404370.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3279087018_1957906245_2944192495_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3279087018_1957906245_2944192495", "isim/test_registers_isim_par.exe.sim/simprim/a_3279087018_1957906245_2944192495.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0516864232_1957906245_2944192495_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0516864232_1957906245_2944192495", "isim/test_registers_isim_par.exe.sim/simprim/a_0516864232_1957906245_2944192495.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1928725684_1957906245_2931729880_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1928725684_1957906245_2931729880", "isim/test_registers_isim_par.exe.sim/simprim/a_1928725684_1957906245_2931729880.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3746195946_1957906245_2931729880_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3746195946_1957906245_2931729880", "isim/test_registers_isim_par.exe.sim/simprim/a_3746195946_1957906245_2931729880.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2623113454_1957906245_2791716491_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2623113454_1957906245_2791716491", "isim/test_registers_isim_par.exe.sim/simprim/a_2623113454_1957906245_2791716491.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_2791716491_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_2791716491", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_2791716491.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3921003744_1957906245_1863325940_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3921003744_1957906245_1863325940", "isim/test_registers_isim_par.exe.sim/simprim/a_3921003744_1957906245_1863325940.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1141483966_1957906245_1863325940_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1141483966_1957906245_1863325940", "isim/test_registers_isim_par.exe.sim/simprim/a_1141483966_1957906245_1863325940.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2134098238_1957906245_1859285699_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2134098238_1957906245_1859285699", "isim/test_registers_isim_par.exe.sim/simprim/a_2134098238_1957906245_1859285699.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1105581484_1957906245_1859285699_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1105581484_1957906245_1859285699", "isim/test_registers_isim_par.exe.sim/simprim/a_1105581484_1957906245_1859285699.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539390052_1957906245_1703818750_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539390052_1957906245_1703818750", "isim/test_registers_isim_par.exe.sim/simprim/a_2539390052_1957906245_1703818750.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_1703818750_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_1703818750", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_1703818750.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539390052_1957906245_0373125613_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539390052_1957906245_0373125613", "isim/test_registers_isim_par.exe.sim/simprim/a_2539390052_1957906245_0373125613.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3921003744_1957906245_0373125613_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3921003744_1957906245_0373125613", "isim/test_registers_isim_par.exe.sim/simprim/a_3921003744_1957906245_0373125613.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1928725684_1957906245_0402594778_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1928725684_1957906245_0402594778", "isim/test_registers_isim_par.exe.sim/simprim/a_1928725684_1957906245_0402594778.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_0402594778_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_0402594778", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_0402594778.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_0449387772_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_0449387772", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_0449387772.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1928725684_1957906245_0522684553_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1928725684_1957906245_0522684553", "isim/test_registers_isim_par.exe.sim/simprim/a_1928725684_1957906245_0522684553.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0516864232_1957906245_0522684553_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0516864232_1957906245_0522684553", "isim/test_registers_isim_par.exe.sim/simprim/a_0516864232_1957906245_0522684553.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_0518382270_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_0518382270", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_0518382270.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_0518382270_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_0518382270", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_0518382270.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2434754757_1957906245_0274149878_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2434754757_1957906245_0274149878", "isim/test_registers_isim_par.exe.sim/simprim/a_2434754757_1957906245_0274149878.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_0917220205_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_0917220205", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_0917220205.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_0917220205_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_0917220205", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_0917220205.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1105581484_1957906245_0929677658_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1105581484_1957906245_0929677658", "isim/test_registers_isim_par.exe.sim/simprim/a_1105581484_1957906245_0929677658.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_0929677658_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_0929677658", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_0929677658.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_2259404824_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_2259404824", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_2259404824.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_3690240436_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_3690240436", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_3690240436.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1928725684_1957906245_3690240436_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1928725684_1957906245_3690240436", "isim/test_registers_isim_par.exe.sim/simprim/a_1928725684_1957906245_3690240436.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2900707653_1957906245_3661034371_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2900707653_1957906245_3661034371", "isim/test_registers_isim_par.exe.sim/simprim/a_2900707653_1957906245_3661034371.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539390052_1957906245_3661034371_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539390052_1957906245_3661034371", "isim/test_registers_isim_par.exe.sim/simprim/a_2539390052_1957906245_3661034371.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2623113454_1957906245_1434164823_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2623113454_1957906245_1434164823", "isim/test_registers_isim_par.exe.sim/simprim/a_2623113454_1957906245_1434164823.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1229932949_1957906245_3594008689_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1229932949_1957906245_3594008689", "isim/test_registers_isim_par.exe.sim/simprim/a_1229932949_1957906245_3594008689.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_3594008689_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_3594008689", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_3594008689.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2434754757_1957906245_3623506502_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2434754757_1957906245_3623506502", "isim/test_registers_isim_par.exe.sim/simprim/a_2434754757_1957906245_3623506502.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2153841838_1957906245_3623506502_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2153841838_1957906245_3623506502", "isim/test_registers_isim_par.exe.sim/simprim/a_2153841838_1957906245_3623506502.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1141483966_1957906245_2219635889_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1141483966_1957906245_2219635889", "isim/test_registers_isim_par.exe.sim/simprim/a_1141483966_1957906245_2219635889.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0787569890_1957906245_2219635889_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0787569890_1957906245_2219635889", "isim/test_registers_isim_par.exe.sim/simprim/a_0787569890_1957906245_2219635889.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3746195946_1957906245_2240716422_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3746195946_1957906245_2240716422", "isim/test_registers_isim_par.exe.sim/simprim/a_3746195946_1957906245_2240716422.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0787569890_1957906245_2240716422_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0787569890_1957906245_2240716422", "isim/test_registers_isim_par.exe.sim/simprim/a_0787569890_1957906245_2240716422.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2434754757_1957906245_3701871995_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2434754757_1957906245_3701871995", "isim/test_registers_isim_par.exe.sim/simprim/a_2434754757_1957906245_3701871995.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3746195946_1957906245_2160166915_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3746195946_1957906245_2160166915", "isim/test_registers_isim_par.exe.sim/simprim/a_3746195946_1957906245_2160166915.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2134098238_1957906245_2160166915_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2134098238_1957906245_2160166915", "isim/test_registers_isim_par.exe.sim/simprim/a_2134098238_1957906245_2160166915.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1141483966_1957906245_2164515380_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1141483966_1957906245_2164515380", "isim/test_registers_isim_par.exe.sim/simprim/a_1141483966_1957906245_2164515380.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3746195946_1957906245_2164515380_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3746195946_1957906245_2164515380", "isim/test_registers_isim_par.exe.sim/simprim/a_3746195946_1957906245_2164515380.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_3939389934_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_3939389934", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_3939389934.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3279087018_1957906245_0904555184_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3279087018_1957906245_0904555184", "isim/test_registers_isim_par.exe.sim/simprim/a_3279087018_1957906245_0904555184.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2623113454_1957906245_0904555184_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2623113454_1957906245_0904555184", "isim/test_registers_isim_par.exe.sim/simprim/a_2623113454_1957906245_0904555184.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0166967330_1957906245_0875036807_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0166967330_1957906245_0875036807", "isim/test_registers_isim_par.exe.sim/simprim/a_0166967330_1957906245_0875036807.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2623113454_1957906245_0875036807_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2623113454_1957906245_0875036807", "isim/test_registers_isim_par.exe.sim/simprim/a_2623113454_1957906245_0875036807.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2623113454_1957906245_3763371236_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2623113454_1957906245_3763371236", "isim/test_registers_isim_par.exe.sim/simprim/a_2623113454_1957906245_3763371236.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2593767918_1957906245_3763371236_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2593767918_1957906245_3763371236", "isim/test_registers_isim_par.exe.sim/simprim/a_2593767918_1957906245_3763371236.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2134098238_1957906245_3784447699_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2134098238_1957906245_3784447699", "isim/test_registers_isim_par.exe.sim/simprim/a_2134098238_1957906245_3784447699.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1105581484_1957906245_3784447699_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1105581484_1957906245_3784447699", "isim/test_registers_isim_par.exe.sim/simprim/a_1105581484_1957906245_3784447699.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0969694248_1957906245_2202360941_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0969694248_1957906245_2202360941", "isim/test_registers_isim_par.exe.sim/simprim/a_0969694248_1957906245_2202360941.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0787569890_1957906245_2202360941_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0787569890_1957906245_2202360941", "isim/test_registers_isim_par.exe.sim/simprim/a_0787569890_1957906245_2202360941.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3279087018_1957906245_2189899354_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3279087018_1957906245_2189899354", "isim/test_registers_isim_par.exe.sim/simprim/a_3279087018_1957906245_2189899354.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0969694248_1957906245_2189899354_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0969694248_1957906245_2189899354", "isim/test_registers_isim_par.exe.sim/simprim/a_0969694248_1957906245_2189899354.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3921003744_1957906245_2174902468_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3921003744_1957906245_2174902468", "isim/test_registers_isim_par.exe.sim/simprim/a_3921003744_1957906245_2174902468.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2623113454_1957906245_2174902468_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2623113454_1957906245_2174902468", "isim/test_registers_isim_par.exe.sim/simprim/a_2623113454_1957906245_2174902468.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539390052_1957906245_2153777907_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539390052_1957906245_2153777907", "isim/test_registers_isim_par.exe.sim/simprim/a_2539390052_1957906245_2153777907.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2250401807_1957906245_1264721985_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2250401807_1957906245_1264721985", "isim/test_registers_isim_par.exe.sim/simprim/a_2250401807_1957906245_1264721985.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4111363329_1957906245_1264721985_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4111363329_1957906245_1264721985", "isim/test_registers_isim_par.exe.sim/simprim/a_4111363329_1957906245_1264721985.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3965303026_1957906245_1252018806_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3965303026_1957906245_1252018806", "isim/test_registers_isim_par.exe.sim/simprim/a_3965303026_1957906245_1252018806.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2854551621_1957906245_1252018806_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2854551621_1957906245_1252018806", "isim/test_registers_isim_par.exe.sim/simprim/a_2854551621_1957906245_1252018806.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0516864232_1957906245_3707580776_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0516864232_1957906245_3707580776", "isim/test_registers_isim_par.exe.sim/simprim/a_0516864232_1957906245_3707580776.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3973750099_1957906245_3707580776_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3973750099_1957906245_3707580776", "isim/test_registers_isim_par.exe.sim/simprim/a_3973750099_1957906245_3707580776.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2900707653_1957906245_3711916895_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2900707653_1957906245_3711916895", "isim/test_registers_isim_par.exe.sim/simprim/a_2900707653_1957906245_3711916895.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1097265165_1957906245_3711916895_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1097265165_1957906245_3711916895", "isim/test_registers_isim_par.exe.sim/simprim/a_1097265165_1957906245_3711916895.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0760573075_1957906245_1606326094_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0760573075_1957906245_1606326094", "isim/test_registers_isim_par.exe.sim/simprim/a_0760573075_1957906245_1606326094.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1768127149_1957906245_1606326094_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1768127149_1957906245_1606326094", "isim/test_registers_isim_par.exe.sim/simprim/a_1768127149_1957906245_1606326094.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1362829520_1957906245_0130696996_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1362829520_1957906245_0130696996", "isim/test_registers_isim_par.exe.sim/simprim/a_1362829520_1957906245_0130696996.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1395812669_1957906245_0130696996_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1395812669_1957906245_0130696996", "isim/test_registers_isim_par.exe.sim/simprim/a_1395812669_1957906245_0130696996.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0407254606_1957906245_3366287735_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0407254606_1957906245_3366287735", "isim/test_registers_isim_par.exe.sim/simprim/a_0407254606_1957906245_3366287735.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3362892137_1957906245_3366287735_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3362892137_1957906245_3366287735", "isim/test_registers_isim_par.exe.sim/simprim/a_3362892137_1957906245_3366287735.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1480197436_1957906245_1470304686_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1480197436_1957906245_1470304686", "isim/test_registers_isim_par.exe.sim/simprim/a_1480197436_1957906245_1470304686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_1470304686_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_1470304686", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_1470304686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4228147247_1957906245_2286042947_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4228147247_1957906245_2286042947", "isim/test_registers_isim_par.exe.sim/simprim/a_4228147247_1957906245_2286042947.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4052724298_1957906245_2286042947_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4052724298_1957906245_2286042947", "isim/test_registers_isim_par.exe.sim/simprim/a_4052724298_1957906245_2286042947.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1589226328_1957906245_3931136078_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1589226328_1957906245_3931136078", "isim/test_registers_isim_par.exe.sim/simprim/a_1589226328_1957906245_3931136078.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_3931136078_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_3931136078", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_3931136078.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0760573075_1957906245_2306889076_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0760573075_1957906245_2306889076", "isim/test_registers_isim_par.exe.sim/simprim/a_0760573075_1957906245_2306889076.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_2306889076_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_2306889076", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_2306889076.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0760573075_1957906245_1441116151_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0760573075_1957906245_1441116151", "isim/test_registers_isim_par.exe.sim/simprim/a_0760573075_1957906245_1441116151.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4052724298_1957906245_1441116151_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4052724298_1957906245_1441116151", "isim/test_registers_isim_par.exe.sim/simprim/a_4052724298_1957906245_1441116151.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0407254606_1957906245_2455702323_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0407254606_1957906245_2455702323", "isim/test_registers_isim_par.exe.sim/simprim/a_0407254606_1957906245_2455702323.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4052724298_1957906245_2455702323_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4052724298_1957906245_2455702323", "isim/test_registers_isim_par.exe.sim/simprim/a_4052724298_1957906245_2455702323.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1362829520_1957906245_1411892672_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1362829520_1957906245_1411892672", "isim/test_registers_isim_par.exe.sim/simprim/a_1362829520_1957906245_1411892672.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2229322725_1957906245_1411892672_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2229322725_1957906245_1411892672", "isim/test_registers_isim_par.exe.sim/simprim/a_2229322725_1957906245_1411892672.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2250852557_1957906245_2567130126_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2250852557_1957906245_2567130126", "isim/test_registers_isim_par.exe.sim/simprim/a_2250852557_1957906245_2567130126.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4170092454_1957906245_2567130126_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4170092454_1957906245_2567130126", "isim/test_registers_isim_par.exe.sim/simprim/a_4170092454_1957906245_2567130126.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1692973256_1957906245_0139960268_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1692973256_1957906245_0139960268", "isim/test_registers_isim_par.exe.sim/simprim/a_1692973256_1957906245_0139960268.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_0139960268_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_0139960268", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_0139960268.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3864192988_1957906245_4061932819_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3864192988_1957906245_4061932819", "isim/test_registers_isim_par.exe.sim/simprim/a_3864192988_1957906245_4061932819.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4052724298_1957906245_4061932819_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4052724298_1957906245_4061932819", "isim/test_registers_isim_par.exe.sim/simprim/a_4052724298_1957906245_4061932819.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0760573075_1957906245_1595975406_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0760573075_1957906245_1595975406", "isim/test_registers_isim_par.exe.sim/simprim/a_0760573075_1957906245_1595975406.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_1595975406_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_1595975406", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_1595975406.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4289427612_1957906245_1416308391_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4289427612_1957906245_1416308391", "isim/test_registers_isim_par.exe.sim/simprim/a_4289427612_1957906245_1416308391.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0958869942_1957906245_1416308391_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0958869942_1957906245_1416308391", "isim/test_registers_isim_par.exe.sim/simprim/a_0958869942_1957906245_1416308391.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3544300801_1957906245_4032467786_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3544300801_1957906245_4032467786", "isim/test_registers_isim_par.exe.sim/simprim/a_3544300801_1957906245_4032467786.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4052724298_1957906245_4032467786_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4052724298_1957906245_4032467786", "isim/test_registers_isim_par.exe.sim/simprim/a_4052724298_1957906245_4032467786.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1802122048_1957906245_1475343049_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1802122048_1957906245_1475343049", "isim/test_registers_isim_par.exe.sim/simprim/a_1802122048_1957906245_1475343049.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2342685352_1957906245_1475343049_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2342685352_1957906245_1475343049", "isim/test_registers_isim_par.exe.sim/simprim/a_2342685352_1957906245_1475343049.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3544300801_1957906245_0711430982_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3544300801_1957906245_0711430982", "isim/test_registers_isim_par.exe.sim/simprim/a_3544300801_1957906245_0711430982.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1395812669_1957906245_0711430982_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1395812669_1957906245_0711430982", "isim/test_registers_isim_par.exe.sim/simprim/a_1395812669_1957906245_0711430982.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1536497039_1957906245_2379412165_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1536497039_1957906245_2379412165", "isim/test_registers_isim_par.exe.sim/simprim/a_1536497039_1957906245_2379412165.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0365818923_1957906245_2379412165_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0365818923_1957906245_2379412165", "isim/test_registers_isim_par.exe.sim/simprim/a_0365818923_1957906245_2379412165.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4228147247_1957906245_1538120284_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4228147247_1957906245_1538120284", "isim/test_registers_isim_par.exe.sim/simprim/a_4228147247_1957906245_1538120284.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1437714265_1957906245_1538120284_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1437714265_1957906245_1538120284", "isim/test_registers_isim_par.exe.sim/simprim/a_1437714265_1957906245_1538120284.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1362829520_1957906245_1517269099_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1362829520_1957906245_1517269099", "isim/test_registers_isim_par.exe.sim/simprim/a_1362829520_1957906245_1517269099.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1437714265_1957906245_1517269099_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1437714265_1957906245_1517269099", "isim/test_registers_isim_par.exe.sim/simprim/a_1437714265_1957906245_1517269099.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0223539440_1957906245_2084698167_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0223539440_1957906245_2084698167", "isim/test_registers_isim_par.exe.sim/simprim/a_0223539440_1957906245_2084698167.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2342685352_1957906245_2084698167_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2342685352_1957906245_2084698167", "isim/test_registers_isim_par.exe.sim/simprim/a_2342685352_1957906245_2084698167.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0223539440_1957906245_3258342841_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0223539440_1957906245_3258342841", "isim/test_registers_isim_par.exe.sim/simprim/a_0223539440_1957906245_3258342841.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2545379834_1957906245_3258342841_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2545379834_1957906245_3258342841", "isim/test_registers_isim_par.exe.sim/simprim/a_2545379834_1957906245_3258342841.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4289427612_1957906245_0126968631_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4289427612_1957906245_0126968631", "isim/test_registers_isim_par.exe.sim/simprim/a_4289427612_1957906245_0126968631.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1768127149_1957906245_0126968631_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1768127149_1957906245_0126968631", "isim/test_registers_isim_par.exe.sim/simprim/a_1768127149_1957906245_0126968631.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1362829520_1957906245_2686714548_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1362829520_1957906245_2686714548", "isim/test_registers_isim_par.exe.sim/simprim/a_1362829520_1957906245_2686714548.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2545379834_1957906245_2686714548_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2545379834_1957906245_2686714548", "isim/test_registers_isim_par.exe.sim/simprim/a_2545379834_1957906245_2686714548.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0251519043_1957906245_2408860828_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0251519043_1957906245_2408860828", "isim/test_registers_isim_par.exe.sim/simprim/a_0251519043_1957906245_2408860828.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3362892137_1957906245_2408860828_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3362892137_1957906245_2408860828", "isim/test_registers_isim_par.exe.sim/simprim/a_3362892137_1957906245_2408860828.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1362829520_1957906245_0702760744_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1362829520_1957906245_0702760744", "isim/test_registers_isim_par.exe.sim/simprim/a_1362829520_1957906245_0702760744.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_0702760744_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_0702760744", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_0702760744.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0251519043_1957906245_3913975168_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0251519043_1957906245_3913975168", "isim/test_registers_isim_par.exe.sim/simprim/a_0251519043_1957906245_3913975168.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4170092454_1957906245_3913975168_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4170092454_1957906245_3913975168", "isim/test_registers_isim_par.exe.sim/simprim/a_4170092454_1957906245_3913975168.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1802122048_1957906245_1299918957_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1802122048_1957906245_1299918957", "isim/test_registers_isim_par.exe.sim/simprim/a_1802122048_1957906245_1299918957.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3362892137_1957906245_1299918957_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3362892137_1957906245_1299918957", "isim/test_registers_isim_par.exe.sim/simprim/a_3362892137_1957906245_1299918957.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1802122048_1957906245_0795438944_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1802122048_1957906245_0795438944", "isim/test_registers_isim_par.exe.sim/simprim/a_1802122048_1957906245_0795438944.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2545379834_1957906245_0795438944_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2545379834_1957906245_0795438944", "isim/test_registers_isim_par.exe.sim/simprim/a_2545379834_1957906245_0795438944.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2864942416_1957906245_1287215706_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2864942416_1957906245_1287215706", "isim/test_registers_isim_par.exe.sim/simprim/a_2864942416_1957906245_1287215706.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3362892137_1957906245_1287215706_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3362892137_1957906245_1287215706", "isim/test_registers_isim_par.exe.sim/simprim/a_3362892137_1957906245_1287215706.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1236206793_1957906245_0845626748_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1236206793_1957906245_0845626748", "isim/test_registers_isim_par.exe.sim/simprim/a_1236206793_1957906245_0845626748.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4170092454_1957906245_0845626748_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4170092454_1957906245_0845626748", "isim/test_registers_isim_par.exe.sim/simprim/a_4170092454_1957906245_0845626748.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1402405708_1957906245_2518114866_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1402405708_1957906245_2518114866", "isim/test_registers_isim_par.exe.sim/simprim/a_1402405708_1957906245_2518114866.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0330110537_1957906245_2518114866_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0330110537_1957906245_2518114866", "isim/test_registers_isim_par.exe.sim/simprim/a_0330110537_1957906245_2518114866.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4213882839_1957906245_2311894547_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4213882839_1957906245_2311894547", "isim/test_registers_isim_par.exe.sim/simprim/a_4213882839_1957906245_2311894547.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0958869942_1957906245_2311894547_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0958869942_1957906245_2311894547", "isim/test_registers_isim_par.exe.sim/simprim/a_0958869942_1957906245_2311894547.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3876729751_1957906245_2513591551_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3876729751_1957906245_2513591551", "isim/test_registers_isim_par.exe.sim/simprim/a_3876729751_1957906245_2513591551.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1340557482_1957906245_2513591551_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1340557482_1957906245_2513591551", "isim/test_registers_isim_par.exe.sim/simprim/a_1340557482_1957906245_2513591551.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_1791768085_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_1791768085", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_1791768085.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2002949504_1957906245_1791768085_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2002949504_1957906245_1791768085", "isim/test_registers_isim_par.exe.sim/simprim/a_2002949504_1957906245_1791768085.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_2487947995_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_2487947995", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_2487947995.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_2487947995_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_2487947995", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_2487947995.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3174461127_1957906245_0505365597_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3174461127_1957906245_0505365597", "isim/test_registers_isim_par.exe.sim/simprim/a_3174461127_1957906245_0505365597.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3458359505_1957906245_0505365597_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3458359505_1957906245_0505365597", "isim/test_registers_isim_par.exe.sim/simprim/a_3458359505_1957906245_0505365597.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1830911609_1957906245_4278345233_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1830911609_1957906245_4278345233", "isim/test_registers_isim_par.exe.sim/simprim/a_1830911609_1957906245_4278345233.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3652266664_1957906245_4278345233_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3652266664_1957906245_4278345233", "isim/test_registers_isim_par.exe.sim/simprim/a_3652266664_1957906245_4278345233.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0421883078_1957906245_3254676144_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0421883078_1957906245_3254676144", "isim/test_registers_isim_par.exe.sim/simprim/a_0421883078_1957906245_3254676144.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3652266664_1957906245_3254676144_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3652266664_1957906245_3254676144", "isim/test_registers_isim_par.exe.sim/simprim/a_3652266664_1957906245_3254676144.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1830911609_1957906245_0147435116_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1830911609_1957906245_0147435116", "isim/test_registers_isim_par.exe.sim/simprim/a_1830911609_1957906245_0147435116.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3458359505_1957906245_0147435116_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3458359505_1957906245_0147435116", "isim/test_registers_isim_par.exe.sim/simprim/a_3458359505_1957906245_0147435116.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2061286518_1957906245_3826783717_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2061286518_1957906245_3826783717", "isim/test_registers_isim_par.exe.sim/simprim/a_2061286518_1957906245_3826783717.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0567015561_1957906245_3826783717_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0567015561_1957906245_3826783717", "isim/test_registers_isim_par.exe.sim/simprim/a_0567015561_1957906245_3826783717.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_4064741632_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_4064741632", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_4064741632.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0567015561_1957906245_4064741632_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0567015561_1957906245_4064741632", "isim/test_registers_isim_par.exe.sim/simprim/a_0567015561_1957906245_4064741632.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2132651894_1957906245_3199108294_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2132651894_1957906245_3199108294", "isim/test_registers_isim_par.exe.sim/simprim/a_2132651894_1957906245_3199108294.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2002949504_1957906245_3199108294_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2002949504_1957906245_3199108294", "isim/test_registers_isim_par.exe.sim/simprim/a_2002949504_1957906245_3199108294.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1805832221_1957906245_2027635697_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1805832221_1957906245_2027635697", "isim/test_registers_isim_par.exe.sim/simprim/a_1805832221_1957906245_2027635697.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_2027635697_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_2027635697", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_2027635697.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3612196410_1957906245_1708660777_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3612196410_1957906245_1708660777", "isim/test_registers_isim_par.exe.sim/simprim/a_3612196410_1957906245_1708660777.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_1708660777_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_1708660777", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_1708660777.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2132651894_1957906245_3211587313_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2132651894_1957906245_3211587313", "isim/test_registers_isim_par.exe.sim/simprim/a_2132651894_1957906245_3211587313.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2002949504_1957906245_3211587313_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2002949504_1957906245_3211587313", "isim/test_registers_isim_par.exe.sim/simprim/a_2002949504_1957906245_3211587313.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0635092512_1957906245_1228101996_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0635092512_1957906245_1228101996", "isim/test_registers_isim_par.exe.sim/simprim/a_0635092512_1957906245_1228101996.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2002949504_1957906245_1228101996_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2002949504_1957906245_1228101996", "isim/test_registers_isim_par.exe.sim/simprim/a_2002949504_1957906245_1228101996.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2265576737_1957906245_2060525263_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2265576737_1957906245_2060525263", "isim/test_registers_isim_par.exe.sim/simprim/a_2265576737_1957906245_2060525263.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0567015561_1957906245_2060525263_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0567015561_1957906245_2060525263", "isim/test_registers_isim_par.exe.sim/simprim/a_0567015561_1957906245_2060525263.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_3114740762_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_3114740762", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_3114740762.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_3114740762_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_3114740762", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_3114740762.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2342685352_1957906245_0866473803_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2342685352_1957906245_0866473803", "isim/test_registers_isim_par.exe.sim/simprim/a_2342685352_1957906245_0866473803.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1768127149_1957906245_0866473803_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1768127149_1957906245_0866473803", "isim/test_registers_isim_par.exe.sim/simprim/a_1768127149_1957906245_0866473803.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4096127023_1957906245_1164359309_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4096127023_1957906245_1164359309", "isim/test_registers_isim_par.exe.sim/simprim/a_4096127023_1957906245_1164359309.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_1164359309_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_1164359309", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_1164359309.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_2976215545_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_2976215545", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_2976215545.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3652266664_1957906245_2976215545_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3652266664_1957906245_2976215545", "isim/test_registers_isim_par.exe.sim/simprim/a_3652266664_1957906245_2976215545.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3298374020_1957906245_2720224846_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3298374020_1957906245_2720224846", "isim/test_registers_isim_par.exe.sim/simprim/a_3298374020_1957906245_2720224846.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_2720224846_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_2720224846", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_2720224846.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1402405708_1957906245_2110746983_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1402405708_1957906245_2110746983", "isim/test_registers_isim_par.exe.sim/simprim/a_1402405708_1957906245_2110746983.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1402405708_1957906245_2533874370_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1402405708_1957906245_2533874370", "isim/test_registers_isim_par.exe.sim/simprim/a_1402405708_1957906245_2533874370.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0635092512_1957906245_3653185065_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0635092512_1957906245_3653185065", "isim/test_registers_isim_par.exe.sim/simprim/a_0635092512_1957906245_3653185065.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3458359505_1957906245_3653185065_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3458359505_1957906245_3653185065", "isim/test_registers_isim_par.exe.sim/simprim/a_3458359505_1957906245_3653185065.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0493005057_1957906245_1703099450_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0493005057_1957906245_1703099450", "isim/test_registers_isim_par.exe.sim/simprim/a_0493005057_1957906245_1703099450.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0567015561_1957906245_1703099450_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0567015561_1957906245_1703099450", "isim/test_registers_isim_par.exe.sim/simprim/a_0567015561_1957906245_1703099450.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2229322725_1957906245_1404067004_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2229322725_1957906245_1404067004", "isim/test_registers_isim_par.exe.sim/simprim/a_2229322725_1957906245_1404067004.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2545379834_1957906245_1404067004_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2545379834_1957906245_1404067004", "isim/test_registers_isim_par.exe.sim/simprim/a_2545379834_1957906245_1404067004.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0157217739_1957906245_0534589034_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0157217739_1957906245_0534589034", "isim/test_registers_isim_par.exe.sim/simprim/a_0157217739_1957906245_0534589034.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2559249880_1957906245_0534589034_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2559249880_1957906245_0534589034", "isim/test_registers_isim_par.exe.sim/simprim/a_2559249880_1957906245_0534589034.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3612196410_1957906245_4091430692_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3612196410_1957906245_4091430692", "isim/test_registers_isim_par.exe.sim/simprim/a_3612196410_1957906245_4091430692.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3652266664_1957906245_4091430692_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3652266664_1957906245_4091430692", "isim/test_registers_isim_par.exe.sim/simprim/a_3652266664_1957906245_4091430692.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1830911609_1957906245_1497262115_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1830911609_1957906245_1497262115", "isim/test_registers_isim_par.exe.sim/simprim/a_1830911609_1957906245_1497262115.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0567015561_1957906245_1497262115_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0567015561_1957906245_1497262115", "isim/test_registers_isim_par.exe.sim/simprim/a_0567015561_1957906245_1497262115.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3612196410_1957906245_2304740983_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3612196410_1957906245_2304740983", "isim/test_registers_isim_par.exe.sim/simprim/a_3612196410_1957906245_2304740983.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3652266664_1957906245_2304740983_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3652266664_1957906245_2304740983", "isim/test_registers_isim_par.exe.sim/simprim/a_3652266664_1957906245_2304740983.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1768127149_1957906245_4123481864_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1768127149_1957906245_4123481864", "isim/test_registers_isim_par.exe.sim/simprim/a_1768127149_1957906245_4123481864.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0330110537_1957906245_4123481864_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0330110537_1957906245_4123481864", "isim/test_registers_isim_par.exe.sim/simprim/a_0330110537_1957906245_4123481864.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2539586878_1957906245_2595891413_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2539586878_1957906245_2595891413", "isim/test_registers_isim_par.exe.sim/simprim/a_2539586878_1957906245_2595891413.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0567015561_1957906245_2595891413_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0567015561_1957906245_2595891413", "isim/test_registers_isim_par.exe.sim/simprim/a_0567015561_1957906245_2595891413.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0971125344_1957906245_2724379885_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0971125344_1957906245_2724379885", "isim/test_registers_isim_par.exe.sim/simprim/a_0971125344_1957906245_2724379885.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_2724379885_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_2724379885", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_2724379885.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3044106025_1957906245_1374092144_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3044106025_1957906245_1374092144", "isim/test_registers_isim_par.exe.sim/simprim/a_3044106025_1957906245_1374092144.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_3458359505_1957906245_1374092144_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_3458359505_1957906245_1374092144", "isim/test_registers_isim_par.exe.sim/simprim/a_3458359505_1957906245_1374092144.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1362297160_1957906245_0192072018_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1362297160_1957906245_0192072018", "isim/test_registers_isim_par.exe.sim/simprim/a_1362297160_1957906245_0192072018.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_0911782640_1957906245_0192072018_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_0911782640_1957906245_0192072018", "isim/test_registers_isim_par.exe.sim/simprim/a_0911782640_1957906245_0192072018.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_4288895236_1957906245_0983225295_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_4288895236_1957906245_0983225295", "isim/test_registers_isim_par.exe.sim/simprim/a_4288895236_1957906245_0983225295.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_2002949504_1957906245_0983225295_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_2002949504_1957906245_0983225295", "isim/test_registers_isim_par.exe.sim/simprim/a_2002949504_1957906245_0983225295.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1897869936_1957906245_0189626882_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1897869936_1957906245_0189626882", "isim/test_registers_isim_par.exe.sim/simprim/a_1897869936_1957906245_0189626882.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}

extern void simprim_a_1897869936_1957906245_0209412494_init()
{
	static char *pe[] = {(void *)simprim_a_1229932949_1957906245_p_0,(void *)simprim_a_1229932949_1957906245_p_1,(void *)simprim_a_1229932949_1957906245_p_2,(void *)simprim_a_1229932949_1957906245_p_3,(void *)simprim_a_1229932949_1957906245_p_4,(void *)simprim_a_1229932949_1957906245_p_5};
	static char *se[] = {(void *)simprim_a_1229932949_1957906245_sub_655425482_3127390018};
	xsi_register_didat("simprim_a_1897869936_1957906245_0209412494", "isim/test_registers_isim_par.exe.sim/simprim/a_1897869936_1957906245_0209412494.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
