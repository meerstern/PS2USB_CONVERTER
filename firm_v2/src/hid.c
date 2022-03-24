/*
 *  			hid.c
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
#include "hid.h"
#include "ps2.h"

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

int Hid_Mode;

const uint8_t USBKeymap[]={
		ukey_han,	ukey_1,		ukey_2,		ukey_3,		ukey_4,
		ukey_5,		ukey_6,		ukey_7,		ukey_8,		ukey_9,

		ukey_0,		ukey_minus,	ukey_hat,	ukey_en,	ukey_bs,
		ukey_tab,	ukey_q,		ukey_w,		ukey_e,		ukey_r,

		ukey_t,		ukey_y,		ukey_u,		ukey_i,		ukey_o,
		ukey_p,		ukey_at,	ukey_kl,	ukey_en2,	ukey_caps,

		ukey_a,		ukey_s,		ukey_d,		ukey_f,		ukey_g,
		ukey_h,		ukey_j,		ukey_k,		ukey_l,		ukey_scol,

		ukey_col,	ukey_kr,	ukey_return,ukey_shft2,	ukeyp_bs,
		ukey_z,		ukey_x,		ukey_c,		ukey_v,		ukey_b,

		ukey_n,		ukey_m,		ukey_cma,	ukey_prd,	ukey_slsh,
		ukey_bkslh,	ukey_shft,	ukey_ctrl,	ukey_alt,	ukey_space,

		ukey_alt2,  ukey_ctrl2,	ukey_insrt, ukey_del,	ukey_left,
		ukey_home,	ukey_end,	ukey_up,	ukey_down,	ukey_pgup,

		ukey_pgdwn,	ukey_right,	ukey_numlk,	ukeyp_7,	ukeyp_4,
		ukeyp_1,	ukeyp_slsh,	ukeyp_8,	ukeyp_5,	ukeyp_2,

		ukeyp_0,	ukeyp_aster,ukeyp_9,	ukeyp_6,	ukeyp_3,
		ukeyp_dot,	ukeyp_minus,ukeyp_plus,	ukeyp_enter,ukey_esc,

		ukey_f1,	ukey_f2,	ukey_f3,	ukey_f4,	ukey_f5,
		ukey_f6,	ukey_f7,	ukey_f8,	ukey_f9,	ukey_f10,

		ukey_f11,	ukey_f12,	ukey_prsc,	ukey_sclck,	ukey_pause,
		ukey_lwin,	ukey_rwin,	ukey_app,	ukey_muhenkan,	ukey_henkan,
		ukey_hira,  ukey_en3
};

uint16_t PS2Keymap[]={
		key_han,	key_1,		key_2,		key_3,		key_4,
		key_5,		key_6,		key_7,		key_8,		key_9,

		key_0,		key_minus,	key_hat,	key_en,		key_bs,
		key_tab,	key_q,		key_w,		key_e,		key_r,

		key_t,		key_y,		key_u,		key_i,		key_o,
		key_p,		key_at,		key_kl,		key_en2,	key_caps,

		key_a,		key_s,		key_d,		key_f,		key_g,
		key_h,		key_j,		key_k,		key_l,		key_scol,

		key_col,	key_kr,		key_enter,	key_lshft,	keyp_bs,
		key_z,		key_x,		key_c,		key_v,		key_b,

		key_n,		key_m,		key_cma,	key_prd,	key_slsh,
		key_bkslsh,	key_rshft,	key_lctrl,	key_lalt,	key_space,

		key_ralt, 	key_rctrl,	key_insrt, 	key_del,	key_left,
		key_home,	key_end,	key_up,		key_down,	key_pgup,

		ket_pgdn,	key_right,	key_numlk,	keyp_7,		keyp_4,
		keyp_1,		keyp_slsh,	keyp_8,		keyp_5,		keyp_2,

		keyp_0,		keyp_aster,	keyp_9,		keyp_6,		keyp_3,
		keyp_dot,	keyp_minus, keyp_plus,	keyp_enter, key_esc,

		key_f1,		key_f2,		key_f3,		key_f4,		key_f5,
		key_f6,		key_f7,		key_f8,		key_f9,		key_f10,

		key_f11,	key_f12,	key_prsc1,	key_sclck,	key_pause1,
		key_lwin,	key_rwin,	key_app,	key_muhenkan,	key_henkan,
		key_hira,	key_kr
};

/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */
/* ************************************************************************** */

/*  A brief description of a section can be given directly below the section
    banner.
 */

//Normal Key
uint8_t vinkeylen;
uint8_t vinkeylenold;
uint8_t vinkey[8];
uint8_t vinkeyold[8];
uint16_t ps2key[8];

//Additional Key
uint8_t vin2keylen;
uint8_t vin2keylenold;
uint8_t vin2key[2];
uint8_t vin2keyold[2];
uint16_t ps2key2[2];


uint16_t ConvertKeyMapUSBtoPS2(uint8_t usbkey);
void InputPS2Key(uint16_t input);
void ReleasePS2Key(uint16_t release);
void InputAddPS2Key(uint16_t input);
void ReleaseAddPS2Key(uint16_t release);

static void hidDelayUs(uint16_t us)
{
    CORETIMER_DelayUs(us);
}



void ProcessHidStrGamePad(uint8_t * vinout)
{

	if(vinout[0]==0x01&& vinout[1]==0x80 && vinout[2]==0x80)
    {
		if(vinout[3]==0x7F)
        {
			//printf("Come\n");
			if(vinout[5]==0x0F)
            {
				//None
			}
			else if(vinout[5]==0x1F)
            {//B -> ESC
				InputPS2Key(key_esc);
				hidDelayUs(500);
				ReleasePS2Key(key_esc);
				hidDelayUs(500);
				printf("ES\n");
			}
			else if(vinout[5]==0x2F)
            {//A -> Enter
				InputPS2Key(key_enter);
				hidDelayUs(500);
				ReleasePS2Key(key_enter);
				hidDelayUs(500);
				printf("En\n");
			}
			else if(vinout[5]==0x3F)
            {//Y -> Y
				InputPS2Key(key_y);
				hidDelayUs(500);
				ReleasePS2Key(key_y);
				hidDelayUs(500);
				printf("Y\n");
			}
			else if(vinout[5]==0x4F)
            {//X -> X
				InputPS2Key(key_x);
				hidDelayUs(500);
				ReleasePS2Key(key_x);
				hidDelayUs(500);
				printf("X\n");
			}
			else if(vinout[5]==0x5F)
            {//X -> X
				InputPS2Key(key_z);
				hidDelayUs(500);
				ReleasePS2Key(key_z);
				hidDelayUs(500);
				printf("Z\n");
			}
			else if(vinout[5]==0x6F)
            {//X -> X
				InputPS2Key(key_p);
				hidDelayUs(500);
				ReleasePS2Key(key_p);
				hidDelayUs(500);
				printf("P\n");
			}


			if(vinout[6]==0x10)
            {		//Select -> Tab
				InputPS2Key(key_tab);
				hidDelayUs(500);
				ReleasePS2Key(key_tab);
				hidDelayUs(500);
				printf("Ta\n");
			}
			else if(vinout[6]==0x20)
            {	//Start  -> Space
				InputPS2Key(key_space);
				hidDelayUs(500);
				ReleasePS2Key(key_space);
				hidDelayUs(500);
				printf("Sp\n");
			}
			else if(vinout[4]==0xFF)
            {	//Down
				InputPS2Key(key_down);
				hidDelayUs(500);
				ReleasePS2Key(key_down);
				hidDelayUs(500);
				printf("Dn\n");
			}else if(vinout[4]==0x00)
            {	//Up
				InputPS2Key(key_up);
				hidDelayUs(500);
				ReleasePS2Key(key_up);
				hidDelayUs(500);
				printf("Up\n");
			}

		}
		else if(vinout[3]==0xFF)
        {

			if(vinout[4]==0x7F)
            {	//Right
				InputPS2Key(key_right);
				hidDelayUs(500);
				ReleasePS2Key(key_right);
				hidDelayUs(500);
				printf("Ri\n");
			}


		}
		else if(vinout[3]==0x00)
        {
			if(vinout[4]==0x7F)
            {	//Left
				InputPS2Key(key_left);
				hidDelayUs(500);
				ReleasePS2Key(key_left);
				hidDelayUs(500);
				printf("Le\n");
			}
		}

	}

}

void ProcessHidStrMouse(uint8_t * vinout, int16_t *x, int16_t *y, int8_t *scroll,int8_t *btn )
{

	//int16_t dx,dy;
	//Mouse Button
	if(vinout[0]!=0){
		btn[0]=vinout[0]&0x01;//Left
		btn[1]=(vinout[0]>>1)&0x01;//Right
		btn[2]=(vinout[0]>>2)&0x01;//Middle

	}
	else{
		btn[0]=0;
		btn[1]=0;
		btn[2]=0;
	}

	//Mouse Direction
	*x=(int16_t)(vinout[1]);
	*y=(int16_t)(vinout[2]);

	*scroll=vinout[3];


}

void GetHidStr(uint8_t * vinout)
{

	int8_t i;
	i=0;
	vinkeylenold=vinkeylen;
	vinkeylen=0;

	//Normal Key
	for(i=0;i<6;i++){
		vinkeyold[i]=vinkey[i];
		vinkey[i]=vinout[i+2];
		if(vinkey[i]!=0)vinkeylen++;
	}

	//Additional Key
	vin2keylenold=vin2keylen;
	vin2keylen=0;
	for(i=0;i<2;i++){
		vin2keyold[i]=vin2key[i];
		vin2key[i]=vinout[i];
		if(vin2key[i]!=0)vin2keylen++;
	}
	//printf("N:%d, A:%d \n",vinkeylen,vin2keylen);
}

uint16_t ConvertKeyMapUSBtoPS2(uint8_t usbkey)
{

	uint8_t j;
	uint16_t res=0;

	if(usbkey==0)return 0;


	for(j=0;j<sizeof(USBKeymap);j++){
			if(usbkey==USBKeymap[j])res=PS2Keymap[j];
	}

	if(res!=0)return res;
	else return 0;
}

int8_t CheckHidStr(uint8_t * vinout)
{

	uint8_t i;
	int8_t flag=false;

	for(i=0;i<8;i++){
		if(vinout[i]!=0)flag=true;
	}
	return flag;
}

void SendPS2Str()
{

//	int8_t index;
	int8_t i,j;
	int8_t keep_flag;
	keep_flag=false;

	//**check key input or release**//
	if(vinkeylen==0 && vinkeylenold==0)return;
	else
    {

		//Key Release Check
		for(i=0; i<6;i++)
        {

			keep_flag=false;

			for(j=0;j<6;j++)
            {
				if(vinkeyold[i]==vinkey[j])keep_flag=true;
			}
			if(keep_flag==false)ReleasePS2Key(ConvertKeyMapUSBtoPS2(vinkeyold[i]));

		}

		//Key Input Check
		for(i=0; i<6;i++)
        {

			keep_flag=false;

			for(j=0;j<6;j++){
				if(vinkey[i]==vinkeyold[j])keep_flag=true;
			}
			if(keep_flag==false)InputPS2Key(ConvertKeyMapUSBtoPS2(vinkey[i]));

		}


	}
}


void SendPS2StrAdditional()
{

	int8_t i;

	uint8_t oldbit;
	uint8_t newbit;


	//**check key input or release**//
	if(vin2keylen==0 && vin2keylenold==0)return;
	else{

		//Key Release Check
		for(i=0; i<8;i++){
			oldbit=(vin2keyold[0]>>i)&0x01;
			newbit=(vin2key[0]>>i)&0x01;
			if(oldbit==1 && newbit==0){
				ReleaseAddPS2Key(i);
			}
		}


		//Key Input Check
		for(i=0; i<8;i++){
			oldbit=(vin2keyold[0]>>i)&0x01;
			newbit=(vin2key[0]>>i)&0x01;
			if(oldbit==0 && newbit==1){
				InputAddPS2Key(i);
			}
		}


	}


}





void InputPS2Key(uint16_t input)
{

	uint16_t tmp;

	if(input<0xFF){
		PS2Send(input);
		hidDelayUs(LONGDELAY);
	}
	else if(input==key_prsc1)
    {//Print Screen

		tmp=key_prsc1;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xE0
		hidDelayUs(SHORTDELAY);

		tmp=key_prsc1;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x12
		hidDelayUs(SHORTDELAY);

		tmp=key_prsc2;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xE0
		hidDelayUs(SHORTDELAY);

		tmp=key_prsc2;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x7C
		hidDelayUs(LONGDELAY);
	}
	else if(input==key_pause1)
    {//Pause

		tmp=key_pause1;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xE1
		hidDelayUs(SHORTDELAY);

		tmp=key_pause1;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x14
		hidDelayUs(SHORTDELAY);

		tmp=key_pause2;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0x77
		hidDelayUs(SHORTDELAY);

		tmp=key_pause2;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0xE1
		hidDelayUs(SHORTDELAY);

		tmp=key_pause3;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xF0
		hidDelayUs(SHORTDELAY);

		tmp=key_pause3;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x14
		hidDelayUs(SHORTDELAY);

		tmp=key_pause4;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xF0
		hidDelayUs(SHORTDELAY);

		tmp=key_pause4;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x77
		hidDelayUs(LONGDELAY);

	}
	else
    {

		tmp=input;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);
		hidDelayUs(SHORTDELAY);

		tmp=input;
		tmp=tmp&0xFF;
		PS2Send(tmp);
		hidDelayUs(LONGDELAY);
	}

}

void ReleasePS2Key(uint16_t release)
{

	uint16_t tmp;

	if(release<0xFF){
		PS2Send(key_release);
		hidDelayUs(SHORTDELAY);
		PS2Send(release);
		hidDelayUs(LONGDELAY);
	}
	else if(release==key_prsc1)
    {

		tmp=key_prsc1;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xE0
		hidDelayUs(SHORTDELAY);
		PS2Send(key_release);//0xF0
		hidDelayUs(SHORTDELAY);

		tmp=key_prsc2;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x7C
		hidDelayUs(SHORTDELAY);

		tmp=key_prsc2;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);//0xE0
		hidDelayUs(SHORTDELAY);

		PS2Send(key_release);//0xF0
		hidDelayUs(SHORTDELAY);
		tmp=key_prsc1;
		tmp=tmp&0xFF;
		PS2Send(tmp);//0x12
		hidDelayUs(LONGDELAY);

	}
	else if(release==key_pause1)
    {
		//nothing to do
	}
	else
    {

		tmp=release;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);
		hidDelayUs(SHORTDELAY);

		PS2Send(key_release);//0xF0
		hidDelayUs(SHORTDELAY);

		tmp=release;
		tmp=tmp&0xFF;
		PS2Send(tmp);
		hidDelayUs(LONGDELAY);

	}
}



void InputAddPS2Key(uint16_t input)
{

	uint16_t tmp;
	uint16_t ps2sdata;

	if(input==0)ps2sdata=key_lctrl;			//Left Ctrl
	else if(input==1)ps2sdata=key_lshft;	//Left Shft
	else if(input==2)ps2sdata=key_lalt;		//Left Alt
	else if(input==3)ps2sdata=key_lwin;		//Left Win
	else if(input==4)ps2sdata=key_rctrl;	//Right Ctrl
	else if(input==5)ps2sdata=key_rshft;	//Right Shift
	else if(input==6)ps2sdata=key_ralt;		//Right Alt
	else if(input==7)ps2sdata=key_rwin;		//Right Win
	else ps2sdata=0;

	if(ps2sdata==0)return;

	if(ps2sdata<0xFF)
    {
		PS2Send(ps2sdata);
		hidDelayUs(LONGDELAY);
	}
	else
    {

		tmp=ps2sdata;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);
		hidDelayUs(SHORTDELAY);

		tmp=ps2sdata;
		tmp=tmp&0xFF;
		PS2Send(tmp);
		hidDelayUs(LONGDELAY);
	}

}

void ReleaseAddPS2Key(uint16_t release)
{

	uint16_t tmp;
	uint16_t ps2sdata;


	if(release==0)ps2sdata=key_lctrl;		//Left Ctrl
	else if(release==1)ps2sdata=key_lshft;	//Left Shft
	else if(release==2)ps2sdata=key_lalt;	//Left Alt
	else if(release==3)ps2sdata=key_lwin;	//Left Win
	else if(release==4)ps2sdata=key_rctrl;	//Right Ctrl
	else if(release==5)ps2sdata=key_rshft;	//Right Shift
	else if(release==6)ps2sdata=key_ralt;	//Right Alt
	else if(release==7)ps2sdata=key_rwin;	//Right Win
	else ps2sdata=0;

	if(ps2sdata==0)return;

	if(ps2sdata<0xFF)
    {
		PS2Send(key_release);
		hidDelayUs(SHORTDELAY);
		PS2Send(ps2sdata);
		hidDelayUs(LONGDELAY);
	}
	else
    {

		tmp=ps2sdata;
		tmp=(tmp>>8)&0xFF;
		PS2Send(tmp);
		hidDelayUs(SHORTDELAY);

		PS2Send(key_release);//0xF0
		hidDelayUs(SHORTDELAY);

		tmp=ps2sdata;
		tmp=tmp&0xFF;
		PS2Send(tmp);
		hidDelayUs(LONGDELAY);

	}
}

/* ************************************************************************** */
/* ************************************************************************** */
// Section: Interface Functions                                               */
/* ************************************************************************** */
/* ************************************************************************** */


/* *****************************************************************************
 End of File
 */
