/*
 *  			ps2.c
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
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */
#include <stdio.h>
#include "peripheral/coretimer/plib_coretimer.h"
#include "ps2.h"
#include "hid.h"
/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */
/** Descriptive Data Item Name

  @Summary
    Brief one-line summary of the data item.
    
  @Description
    Full description, explaining the purpose and usage of data item.
    <p>
    Additional description in consecutive paragraphs separated by HTML 
    paragraph breaks, as necessary.
    <p>
    Type "JavaDoc" in the "How Do I?" IDE toolbar for more information on tags.
    
  @Remarks
    Any additional remarks
 */
int global_data;
extern int Hid_Mode;

uint8_t     PS2RecChar      = 0xCC;
uint8_t     KeyBoardFlag    = false;
uint8_t     NullUSE         = 0;
int8_t      DataEnable;
int8_t 		Ps2Init;

/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

/* ************************************************************************** */

/** 
  @Function
    int ExampleLocalFunctionName ( int param1, int param2 ) 

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

static void ps2DelayUs(uint16_t us)
{
    CORETIMER_DelayUs(us);
}

static void ps2DelayMs(uint16_t ms)
{
    CORETIMER_DelayMs(ms);
}

static void ps2ClockInDataIn()
{
    PS2CLK_InputEnable();
    //PS2DAT_InputEnable();
}

static void ps2ClockOutDataOut()
{
    PS2CLK_OutputEnable();
    PS2CLK_Set();
    PS2DAT_OutputEnable();
    PS2DAT_Set();
}

static void ps2ClockOutDataIn()
{
    PS2CLK_OutputEnable();
    PS2CLK_Set();
    //PS2DAT_InputEnable();
}

void PS2Ack()
{
    if ((GetIoClk() == 1)&&(GetIoDat()== 0))
    {
		ps2ClockOutDataOut();
		SetIoClkL();
		ps2DelayUs(30);
		SetIoClkH();
		printf("ACK\n");
		ps2ClockInDataIn();
	}
}

static uint16_t ps2IsEven(uint8_t data)
{
    uint8_t temp;
	uint8_t count=0;
    uint8_t i;
	temp = data;
    
	for( i = 0; i < 8; i++)
	{
		if (temp&0x01)
		{
		   count++;
		}
		temp >>= 1;
	}

	if (count%2)
	{
	   return(0x0000);
	}
	else
	{
	   return(0x0001);
	}
}


static void ps2CheckParity(uint8_t resChar, uint8_t parity)
{
	uint8_t check;
	uint8_t parityBit = 0;

	check = resChar;
	parityBit = ps2IsEven(check);
	if(parity == parityBit)
	{
		PS2RecChar = resChar;
	}else
	{
		PS2RecChar = resChar;
	}

}

void PS2Recieve(void)
{
	uint8_t parityBit = 0;
	uint16_t i = 0;
	uint8_t data = 0x00;

    ps2ClockInDataIn();
	ps2DelayUs(200);
    if ((GetIoClk() == 1)&&(GetIoDat()== 0))//1 0
	{
        for(i=0;i<8;i++)
		{
            ps2ClockOutDataIn();
			SetIoClkL();
			ps2DelayUs(15);
			data=data>>1;
			if(GetIoDat())
			{
			   data|=0x80;
			}
			ps2DelayUs(10);
			SetIoClkH();
			ps2DelayUs(30);
        }
        
		ps2ClockOutDataIn();
		SetIoClkL();
		ps2DelayUs(20);
		if(GetIoDat())
		{
			parityBit=1;
		}
		else
		{
			parityBit=0;
		}
		ps2DelayUs(30);
		SetIoClkH();

		ps2DelayUs(60);

		SetIoClkL();
		ps2DelayUs(60);
		SetIoClkH();
		ps2ClockOutDataOut();
		ps2DelayUs(4);
		SetIoDatL();
		ps2DelayUs(5);
		SetIoClkL();
		ps2DelayUs(50);
		SetIoDatH();
		ps2DelayUs(20);
		SetIoClkH();

		ps2ClockInDataIn();
		ps2CheckParity(data, parityBit);        
        
    }

}

void PS2Send(uint8_t data)
{
	uint8_t parityBit;
	uint8_t i;
	uint8_t ACC;

	ACC = data;
	parityBit = ps2IsEven(ACC);
	ps2ClockOutDataOut();
	SetIoClkH();
	ps2DelayUs(30);
	SetIoDatL();
	ps2DelayUs(20);
	SetIoClkL();
	ps2DelayUs(50);

	for(i=0;i<8;i++)
	{
		SetIoClkH();
		ps2DelayUs(20);

		if((data&0x01)==0x01)
		{
			SetIoDatH();
			ps2DelayUs(15);
		}
		else
		{
		   SetIoDatL();
		   ps2DelayUs(15);
		}
		data>>=1;

		SetIoClkL();
		ps2DelayUs(60);
	}
	SetIoClkH();
	ps2DelayUs(20);
	if (parityBit == 1)
	{
		SetIoDatH();
	}
	else
	{
		SetIoDatL();
	}

	ps2DelayUs(30);
	SetIoClkL();
	ps2DelayUs(50);
	SetIoClkH();
	ps2DelayUs(30);
	SetIoDatH();
	ps2DelayUs(30);
	SetIoClkL();
	ps2DelayUs(50);
	SetIoClkH();
	SetIoDatH();
	ps2ClockInDataIn();
	ps2DelayUs(35);
}

void PS2Process(void)
{
	if(KeyBoardFlag==false)
	{
		ps2ClockInDataIn();
		if ((GetIoClk() == 1))
		{
			if(PS2RecChar==0xF3)
			{
				PS2Send(0xFA);
				PS2RecChar=0xCC;
				printf("Repeat Rate\n");
			}
			else if(PS2RecChar==0xED)
			{
				PS2Send(0xFA);
				PS2Recieve();
				PS2RecChar=0xCC;
				printf("SET IND\n");
			}
			else if(PS2RecChar==0xF0)
			{
				PS2Send(0xFA);//FA
				PS2RecChar=0xCC;
				printf("SCAN CODE set\n");
			}
			else if(PS2RecChar==0xF2)
			{
				if(Hid_Mode==HID_MODE_MOUSE){
					PS2Send(0xFA);
					ps2DelayUs(30);
                    ps2DelayUs(30);
					PS2Send(0x00);
					ps2DelayUs(30);
                    ps2DelayUs(30);
				}
				else{
					PS2Send(0xFA);
					ps2DelayUs(30);
                    ps2DelayUs(30);
					PS2Send(0xAB);
					ps2DelayUs(30);
                    ps2DelayUs(30);
					PS2Send(0x83);
				}
				PS2RecChar=0xCC;
				printf("READ ID\n");
			}
			else if(PS2RecChar==0xEF)
			{
				PS2Send(0xFA);
				ps2DelayUs(30);
				PS2Send(0xBF);
				ps2DelayUs(30);
				PS2Send(0xB0);
				PS2RecChar=0xCC;
				printf("SELF TEST DONE1\n");
			}
			else if(PS2RecChar==0xFE)
			{
				PS2Ack();
				PS2RecChar=0xCC;
				printf("GET FE \n");
			}
			else if(PS2RecChar==0xEE)
			{
				PS2Send(0xEE);
				PS2RecChar=0xCC;
				printf("GET echo \n");
			}
			else if(PS2RecChar==0xF4)
			{
				PS2Send(0xFA);
				PS2RecChar=0xCC;
				DataEnable=true;
				printf("SCAN ENABLE\n");
			}
			else if(PS2RecChar==0xF6)
			{
				PS2Ack();
				PS2RecChar=0xCC;
				printf("Set Default\n");
			}
			else if(PS2RecChar==0xF3)
			{
				PS2Ack();
				PS2RecChar=0xCC;
				printf("Scan stop\n");
			}
			else if(PS2RecChar==0xFF)
			{
				ps2DelayUs(100);
				PS2Send(0xFA);
				ps2DelayMs(600);
				PS2Send(0xAA);
				PS2RecChar=0xCC;
				printf("SELF TEST DONE2\n");
			}
			else if(PS2RecChar==0xCC){

			}
			else{
				PS2Send(0xFA);
				printf("ELSE: 0x%X \n",PS2RecChar);
				PS2RecChar=0xCC;
			}
			Ps2Init=true;
		}
	}
}

void ProcessPS2Mouse(int16_t dx, int16_t dy,int8_t scroll, int8_t *btn)
{

	int8_t overflowx,overflowy;
	uint8_t data[4];
	dy=-dy;

	overflowx=0;
	overflowy=0;

	DataEnable=true;

	if(DataEnable==true){

		if (dx > 255) {
		    //overflowx =1;
		    dx=255;
		  }
		  if (dx < -255) {
		    //overflowx = 1;
		    dx=-255;
		  }
		  if (dy > 255) {
		    //overflowy =1;
		    dy=255;
		  }
		  if (dy < -255) {
		    //overflowy = 1;
		    dy=-255;
		  }
		  //overflowy=0;
		  //overflowx=0;
//		  overflowx=overflowx&0x01;
//		  overflowy=overflowy&0x01;

		  data[0] = ((overflowy & 1) << 7) 	|
		    ( (overflowx & 1) << 6)			|
		    ( (((dy &0x100)>>8) & 1) << 5) 	|
		    ( ( ((dx &0x100)>>8)& 1) << 4) 	|
		    ( ( 1) << 3) 					|
		    ( ( btn[2] & 1) << 2) 			|
		    ( ( btn[1] & 1) << 1) 			|
		    ( ( btn[0] & 1) << 0) 			;
		  data[1] = dx & 0xff;
		  data[2] = dy & 0xff;
		  if(scroll>0) data[3] =0xFF;
		  else if(scroll<0) data[3] =0x01;
		  else data[3] =0;

		  PS2Send(data[0]);
		  ps2DelayUs(100);
		  PS2Send(data[1]);
		  ps2DelayUs(100);
		  PS2Send(data[2]);
		  ps2DelayUs(100);
		  PS2Send(data[3]);
		  ps2DelayUs(100);
	}

}


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

// *****************************************************************************

/** 
  @Function
    int ExampleInterfaceFunctionName ( int param1, int param2 ) 

  @Summary
    Brief one-line description of the function.

  @Remarks
    Refer to the example_file.h interface header for function usage details.
 */
int ExampleInterfaceFunction(int param1, int param2) {
    return 0;
}


/* *****************************************************************************
 End of File
 */
