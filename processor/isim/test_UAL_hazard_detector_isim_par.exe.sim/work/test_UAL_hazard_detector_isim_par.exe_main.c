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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *SIMPRIM_P_0947159679;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *SIMPRIM_P_4208868169;
char *IEEE_P_1367372525;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_1637942105_2431929443_3655956054_init();
    simprim_a_1637942105_2431929443_1487165558_init();
    simprim_a_1637942105_2431929443_0311666291_init();
    simprim_a_1637942105_2431929443_0400339190_init();
    simprim_a_1637942105_2431929443_0371120833_init();
    simprim_a_1637942105_2431929443_2316011599_init();
    simprim_a_1637942105_2431929443_3225187914_init();
    simprim_a_1637942105_2431929443_2307873825_init();
    simprim_a_1637942105_2431929443_0461987607_init();
    simprim_a_1637942105_2431929443_0324127812_init();
    simprim_a_1637942105_2431929443_1575702259_init();
    simprim_a_1637942105_2431929443_2365726867_init();
    simprim_a_1637942105_2431929443_0341337240_init();
    simprim_a_1637942105_2431929443_2738174066_init();
    simprim_a_1637942105_2431929443_2254333870_init();
    simprim_a_1637942105_2431929443_3488435653_init();
    simprim_a_1637942105_2431929443_0241438413_init();
    simprim_a_1637942105_2431929443_0588182998_init();
    simprim_a_1637942105_2431929443_4015754927_init();
    simprim_a_1637942105_2431929443_3978113270_init();
    simprim_a_1637942105_2431929443_0583835617_init();
    simprim_a_1637942105_2431929443_4003062936_init();
    simprim_a_1637942105_2431929443_3974060737_init();
    simprim_a_1637942105_2431929443_1386807119_init();
    simprim_a_1637942105_2431929443_0821121395_init();
    simprim_a_1637942105_2431929443_0850915114_init();
    simprim_a_1637942105_2431929443_0825441092_init();
    simprim_a_1637942105_2431929443_2361412260_init();
    simprim_a_3156740924_4150518722_0821121395_init();
    simprim_a_3156740924_4150518722_0850915114_init();
    simprim_a_3156740924_4150518722_0825441092_init();
    simprim_a_3156740924_4150518722_2361412260_init();
    simprim_a_1622123893_2810828532_init();
    simprim_a_3641581159_2082082460_init();
    simprim_a_2158099826_2082082460_init();
    simprim_a_0774837279_2082082460_init();
    simprim_a_3375542920_2082082460_init();
    simprim_a_4130118134_1564065396_4015754927_init();
    simprim_a_4130118134_1564065396_0588182998_init();
    simprim_a_4130118134_1564065396_0583835617_init();
    simprim_a_2099318024_1957906245_3978113270_init();
    simprim_a_2587667359_1957906245_3974060737_init();
    simprim_a_3566510718_1957906245_0588182998_init();
    simprim_a_0383625056_1957906245_4015754927_init();
    simprim_a_3749159905_1957906245_4015754927_init();
    simprim_a_4039401155_1957906245_3978113270_init();
    simprim_a_4021053430_1957906245_4003062936_init();
    simprim_a_1896078256_1957906245_4003062936_init();
    simprim_a_4021053430_1957906245_3974060737_init();
    simprim_a_4021053430_1957906245_1386807119_init();
    simprim_a_3910184593_1957906245_1386807119_init();
    simprim_a_3395610110_2220797900_0433961640_init();
    simprim_a_1509725169_3980060181_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_1451471450_0632001823_init();
    work_a_1182986245_2372691052_init();


    xsi_register_tops("work_a_1182986245_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");

    return xsi_run_simulation(argc, argv);

}
