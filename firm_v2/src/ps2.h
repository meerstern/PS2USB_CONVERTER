/*
 *  			ps2.h
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

#ifndef _PS2_H    /* Guard against multiple inclusion */
#define _PS2_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */
#include "peripheral/gpio/plib_gpio.h"

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
   
    #define PS2_WAIT		40
    #define PS2_WAITHALF	20

    
    #define GetIoClk()      PS2CLK_Get()
    #define GetIoDat()      PS2DAT_Get()

    #define SetIoClkH() 	PS2CLK_Set() 
    #define SetIoClkL()     PS2CLK_Clear() 
    #define SetIoDatH() 	PS2DAT_Set() 
    #define SetIoDatL() 	PS2DAT_Clear() 
    
    
    #define key_release		0xF0
    //#0
    #define key_esc			0x76
    #define key_f1			0x05
    #define	key_f2			0x06
    #define key_f3			0x04
    #define key_f4			0x0C
    #define key_f5			0x03
    #define key_f6			0x0B
    #define key_f7			0x83
    #define key_f8			0x0A
    #define key_f9			0x01
    #define key_f10			0x09
    #define key_f11			0x78
    #define key_f12			0x07

    #define key_prsc1		0xE012
    #define key_prsc2		0xE07C

    #define key_sclck		0x7E
    #define key_pause1		0xE114
    #define key_pause2		0x77E1
    #define key_pause3		0xF014
    #define key_pause4		0xF077

    #define key_lwin		0xE01F
    #define key_rwin		0xE027
    #define key_app			0xE02F
    #define key_muhenkan	0x67
    #define key_henkan		0x64
    #define key_hira		0x13


    #define keyp_bs			0x13

    //#1
    #define key_1			0x16	//1
    #define key_2			0x1E	//2
    #define key_3	 		0x26	//3
    #define key_4			0x25	//4
    #define key_5			0x2E	//5
    #define key_6			0x36	//6
    #define key_7			0x3D	//7
    #define key_8			0x3E	//8
    #define key_9			0x46	//9
    #define key_0			0x45	//0
    #define key_minus		0x4E	//-
    #define key_hat			0x55	//^
    #define key_en			0x6A	//?
    #define key_bs			0x66	//backspace
    //#2
    #define key_tab			0x0D	//tab
    #define key_q			0x15
    #define key_w			0x1D
    #define key_e			0x24
    #define key_r			0x2D
    #define key_t			0x2C
    #define key_y			0x35
    #define key_u			0x3C
    #define key_i			0x43
    #define key_o			0x44
    #define key_p			0x4D
    #define key_at			0x54	//@
    #define key_kl			0x5B	//[
    #define key_enter		0x5A	//Enter key
    //#3
    #define key_caps			0x58	//caps lock
    #define key_a			0x1C
    #define key_s			0x1B
    #define key_d			0x23
    #define key_f			0x2B
    #define key_g			0x34
    #define key_h			0x33
    #define key_j			0x3B
    #define key_k			0x42
    #define key_l			0x4B
    #define key_scol		0x4C	//;
    #define key_col			0x52	//:
    #define key_kr			0x5D	//]
    #define key_en2			0x5D
    //#4
    #define key_lshft		0x12	//shift	left
    #define key_z			0x1A
    #define key_x			0x22
    #define key_c			0x21
    #define key_v			0x2A
    #define key_b			0x32
    #define key_n			0x31
    #define key_m			0x3A
    #define key_cma			0x41	//,
    #define key_prd			0x49	//.
    #define key_slsh		0x4A	// /
    #define	key_bkslsh		0x51	//	\	_
    #define key_rshft		0x59	//shift right
    //#5
    #define key_lctrl		0x14	//left ctrl
    #define key_lalt		0x11	//left alt
    #define key_ncon		0x67	//muhenkan
    #define key_space		0x29	//space
    #define key_con			0x64	//henkan
    #define key_hrg			0x13	//hiragana
    #define key_ralt		0xE011	//right alt exp-key
    #define key_prt			0x2F	//right click exp-key
    #define	key_rctrl		0xE014	//right control
    #define key_insrt		0xE070	//insert
    //##
    #define key_up			0xE075	//ex-key
    #define key_down		0xE072	//ex-key
    #define key_left		0xE06B	//ex-key
    #define key_right		0xE074	//ex-key
    #define key_del			0xE071	//delete
    #define key_ins			0xE070	//insert
    #define key_home		0xE06C	//home
    #define key_pgup		0xE07D	//pageup
    #define	ket_pgdn		0xE07A	//pagedown
    #define key_end			0xE069	//end

    #define key_numlk		0x77	//num lock
    #define key_han			0x0E	//hankaku


    #define keyp_7			0x6C	//keypad 7
    #define keyp_4			0x6B	//keypad 4
    #define keyp_1			0x69
    #define keyp_slsh		0xE04A
    #define keyp_8			0x75
    #define keyp_5			0x73
    #define keyp_2			0x72
    #define keyp_0			0x70
    #define keyp_aster		0x7C
    #define keyp_9			0x7D
    #define keyp_6			0x74
    #define keyp_3			0x7A
    #define keyp_dot		0x71
    #define keyp_minus		0x7B
    #define keyp_plus		0x79
    #define keyp_enter		0xE05A

    
    
    // *****************************************************************************
    // *****************************************************************************
    // Section: Data Types
    // *****************************************************************************
    // *****************************************************************************

    /*  A brief description of a section can be given directly below the section
        banner.
     */


    // *****************************************************************************

    /** Descriptive Data Type Name

      @Summary
        Brief one-line summary of the data type.
    
      @Description
        Full description, explaining the purpose and usage of the data type.
        <p>
        Additional description in consecutive paragraphs separated by HTML 
        paragraph breaks, as necessary.
        <p>
        Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.

      @Remarks
        Any additional remarks
        <p>
        Describe enumeration elements and structure and union members above each 
        element or member.
     */


    // *****************************************************************************
    // *****************************************************************************
    // Section: Interface Functions
    // *****************************************************************************
    // *****************************************************************************

    /*  A brief description of a section can be given directly below the section
        banner.
     */

    // *****************************************************************************
    /**
      @Function
        int ExampleFunctionName ( int param1, int param2 ) 

      @Summary
        Brief one-line description of the function.

      @Description
        Full description, explaining the purpose and usage of the function.
        <p>
        Additional description in consecutive paragraphs separated by HTML 
        paragraph breaks, as necessary.
        <p>
        Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.

      @Precondition
        List and describe any required preconditions. If there are no preconditions,
        enter "None."

      @Parameters
        @param param1 Describe the first parameter to the function.
    
        @param param2 Describe the second parameter to the function.

      @Returns
        List (if feasible) and describe the return values of the function.
        <ul>
          <li>1   Indicates an error occurred
          <li>0   Indicates an error did not occur
        </ul>

      @Remarks
        Describe any special behavior not described above.
        <p>
        Any additional remarks.

      @Example
        @code
        if(ExampleFunctionName(1, 2) == 0)
        {
            return 3;
        }
     */

    
    void PS2Process(void);
    void PS2Ack();
    void PS2Recieve(void);
    void PS2Send(uint8_t data);
    void ProcessPS2Mouse(int16_t dx, int16_t dy,int8_t scroll, int8_t *btn);
    

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _PS2_H */

/* *****************************************************************************
 End of File
 */
