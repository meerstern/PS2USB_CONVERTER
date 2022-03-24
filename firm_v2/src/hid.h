/*
 *  			hid.h
 *
 *  Copyright (c) 2022
 *  K.Watanabe,Crescent
 *  Released under the MIT license
 *  http://opensource.org/licenses/mit-license.php
 *
 */
/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _HID_H    /* Guard against multiple inclusion */
#define _HID_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */


/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


    /* ************************************************************************** */
    /* ************************************************************************** */
    /* Section: Constants                                                         */
    /* ************************************************************************** */
    /* ************************************************************************** */

    /*  A brief description of a section can be given directly below the section
        banner.
     */


    /* ************************************************************************** */
    /** Descriptive Constant Name

      @Summary
        Brief one-line summary of the constant.
    
      @Description
        Full description, explaining the purpose and usage of the constant.
        <p>
        Additional description in consecutive paragraphs separated by HTML 
        paragraph breaks, as necessary.
        <p>
        Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
      @Remarks
        Any additional remarks
     */


    
enum{
	HID_MODE_NONE,
	HID_MODE_KEYBOARD,
	HID_MODE_MOUSE,
	HID_MODE_OTHERS
};




    #define ukey_a	0x04
    #define ukey_b	0x05
    #define ukey_c	0x06
    #define ukey_d	0x07
    #define ukey_e	0x08
    #define ukey_f	0x09
    #define ukey_g	0x0A
    #define ukey_h	0x0B
    #define ukey_i	0x0C
    #define ukey_j	0x0D
    #define ukey_k	0x0E
    #define ukey_l	0x0F
    #define ukey_m	0x10
    #define ukey_n	0x11
    #define ukey_o	0x12
    #define ukey_p	0x13
    #define ukey_q	0x14
    #define ukey_r	0x15
    #define ukey_s	0x16
    #define ukey_t	0x17
    #define ukey_u	0x18
    #define ukey_v	0x19
    #define ukey_w	0x1A
    #define ukey_x	0x1B
    #define ukey_y	0x1C
    #define ukey_z	0x1D
    #define ukey_1	0x1E //1 !
    #define ukey_2	0x1F //2 "
    #define ukey_3	0x20 //3 #
    #define ukey_4	0x21 //4 $
    #define ukey_5	0x22 //5 %
    #define ukey_6	0x23 //6 &
    #define ukey_7	0x24 //7 '
    #define ukey_8	0x25 //8 (
    #define ukey_9	0x26 //9 )
    #define ukey_0  0x27 //0
    #define ukey_return	0x28
    #define ukey_esc	0x29
    #define ukey_bs		0x2A //back space
    #define ukey_tab	0x2B
    #define ukey_space	0x2C
    #define ukey_minus	0x2D	//- =
    #define ukey_hat	0x2E 	//^ ~
    #define ukey_at		0x2F	//@`
    #define ukey_kl		0x30	//[{
    #define ukey_en		0x89	//? |
    #define ukey_en2	0x39	//? |
    #define ukey_en3	0x31	//\|
    #define ukey_kr		0x32	//]}
    #define ukey_scol	0x33	//;+
    #define ukey_col	0x34	//:*
    #define ukey_han	0x35  	//hankaku-zenkaku
    #define ukey_cma	0x36	//, <
    #define ukey_prd	0x37	//. >
    #define ukey_slsh	0x38	// / ?
    #define	ukey_caps	0x39	//caps lock
    #define ukey_f1		0x3A	//F1
    #define ukey_f2		0x3B	//F2
    #define ukey_f3		0x3C	//F3
    #define ukey_f4		0x3D	//F4
    #define ukey_f5		0x3E	//F5
    #define ukey_f6		0x3F	//F6
    #define ukey_f7		0x40	//F7
    #define ukey_f8		0x41	//F8
    #define ukey_f9		0x42	//F9
    #define ukey_f10	0x43	//F10
    #define ukey_f11	0x44	//F11
    #define ukey_f12	0x45	//F12
    #define ukey_prsc	0x46	//print screen
    #define ukey_sclck	0x47	//scroll lock
    #define ukey_pause	0x48	//pause
    #define ukey_insrt	0x49	//insert
    #define ukey_home	0x4A	//home
    #define ukey_pgup	0x4B	//pageup
    #define ukey_del	0x4C	//delete
    #define ukey_end	0x4D	//end
    #define ukey_pgdwn	0x4E	//page down
    #define ukey_right	0x4F	//->
    #define ukey_left	0x50	//<-
    #define ukey_down	0x51	//down arrow
    #define ukey_up		0x52	//up arrow
    #define ukey_numlk	0x53	//num lock
    #define ukeyp_slsh	0x54	//keypad /
    #define ukeyp_aster	0x55	//keypad *
    #define ukeyp_minus	0x56	//keypad -
    #define ukeyp_plus	0x57	//keypad+
    #define ukeyp_enter	0x58    //keypad enter
    #define ukeyp_1		0x59	//keypad 1
    #define ukeyp_2		0x5A	//keypad 2
    #define ukeyp_3		0x5B	//keypad 3
    #define ukeyp_4		0x5C	//keypad 4
    #define ukeyp_5		0x5D	//keypad 5
    #define ukeyp_6		0x5E	//keypad 6
    #define ukeyp_7		0x5F	//keypad 7
    #define ukeyp_8		0x60	//keypad 8
    #define ukeyp_9		0x61	//keypad 9
    #define ukeyp_0		0x62	//keypad 0
    #define ukeyp_dot	0x63	//keypad .
    #define ukeyp_bs	0x64	//\ |
    #define ukey_lwin	0xE3	//left windows
    #define ukey_rwin	0xE7	//right windows
    #define ukey_muhenkan	0x8B//muhenkan
    #define ukey_bkslh	0x87	//\_
    #define ukey_henkan	0x8A	//henkan
    #define ukey_hira	0x88	//hiragana
    #define ukey_shft	0xE5	//shift right
    #define ukey_shft2	0xE1	//shift left

    #define ukey_ctrl	0xE0	//control left
    #define ukey_alt	0xE2	//alt	left
    #define ukey_alt2	0xE6	//alt2	right
    #define ukey_ctrl2	0xE4	//control2	right
    #define ukey_app	0x65	//application


    //Additional Key
    #define vKey_LeftCtrl	0x01
    #define vKey_LeftShft	0x02
    #define vKey_LeftAlt	0x04
    #define vKey_LeftWin	0x08
    #define vKey_RghtCtrl	0x10
    #define vKey_RghtShft	0x20
    #define vKey_RghtAlt	0x40
    #define vKey_RghtWin	0x80

    //Keyboard Lng 30ms, short 2ms
    #define LONGDELAY 	8000//4000
    #define SHORTDELAY	1800//1200

    // *****************************************************************************
    // *****************************************************************************
    // Section: Data Types
    // *****************************************************************************
    // *****************************************************************************

    /*  A brief description of a section can be given directly below the section
        banner.
     */
    extern int Hid_Mode;
    void GetHidStr(uint8_t * vinout);
    void SendPS2StrAdditional();
    void SendPS2Str();
    void ProcessHidStrMouse(uint8_t * vinout, int16_t *x, int16_t *y, int8_t *scroll,int8_t *btn );

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _HID_H */

/* *****************************************************************************
 End of File
 */
