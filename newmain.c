/*
 * File:   newmain.c
 * Author: cchoc
 *
 * Created on October 23, 2019, 8:02 PM
 */

// CONFIG
#pragma config FOSC = INTOSCCLK // Oscillator Selection bits (INTOSC oscillator: CLKOUT function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma confData Used: 2 (0x2) Free: 62 (0x3E)ig PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF      // MCLR Pin Function Select bit (MCLR pin function is digital input, MCLR internally tied to VDD)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config IOSCFS = 8MHZ    // Internal Oscillator Frequency Select (8 MHz)
#pragma config BOREN = OFF      // Brown-out Reset Selection bits (BOR disabled)

#define _XTAL_FREQ 8000000	//8 MHz internal clock

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "LetterDef.h"

void init(){ //initialize
	TRISIO0 = 0; //set GPIO 0 as output (SRCLK)
	TRISIO1 = 0; //set GPIO 1 as output (RCLK)
	TRISIO5 = 0; //set GPIO 5 as output (SER)
	
	GPIO0 = 0;
	GPIO1 = 0; //initial conditions
	GPIO5 = 0; 
}

void SRCLK_r_edge(){ //sift register clock
	GPIO0 = 1;
	__delay_us(1);
	GPIO0 = 0 ;
	__delay_us(1);
}

void RCLK_latch(){ //register latch
	GPIO1 = 1;
	__delay_us(2);
	GPIO1 = 0;
}

void shift_data(uint16_t frame){
	for(int i = 0; i < 16; i++){
		GPIO5 = (frame >> i) & 0x0001; //mask the bits one by one
		SRCLK_r_edge();
	}
	RCLK_latch();
}

uint16_t create_frame(uint8_t row, uint8_t column){
	return ((row << 8) | column);
}

void display_letter(char letter, int shift, bool dir){ 
	for(int i = 0; i < 8; i++){
		switch(letter){ //not enough program space for all alphabets so ...
			case 'E': shift_data(create_frame(0x80>>i,
					dir?(~(letter_E[i]<<shift)):(~(letter_E[i]>>shift)))); 
				break;
			case 'H': shift_data(create_frame(0x80>>i,
					dir?(~(letter_H[i]<<shift)):(~(letter_H[i]>>shift)))); 
				break;
			case 'L': shift_data(create_frame(0x80>>i,
					dir?(~(letter_L[i]<<shift)):(~(letter_L[i]>>shift)))); 
				break;
			case 'O': shift_data(create_frame(0x80>>i,
					dir?(~(letter_O[i]<<shift)):(~(letter_O[i]>>shift)))); 
				break;
			case '!': shift_data(create_frame(0x80>>i,
					dir?(~(letter_excla[i]<<shift)):(~(letter_excla[i]>>shift)))); 
				break;
			case ' ': shift_data(create_frame(0x80>>i,0xff)); //space
				break; 
			case '#': shift_data(create_frame(0x80>>i,
					dir?(~(img_smile[i]<<shift)):(~(img_smile[i]>>shift)))); 
				break;
		}	//~ used to match the convention used on header file
	}
	__delay_us(500); //it takes 8ms to paint the image once
}

void main(void)
{
	init();
	char phrase[8] = "HELLO#"; 
	int roll = 0;
	for(;;){ //program loop
		for(int k=0; k<8; k++){ //for sliding animation
			for(int j=0; j<5; j++){ //persistence of letter
				if(roll!=5){
					display_letter(phrase[roll],k,true);
					display_letter(phrase[roll+1],(8-k),false);
				}else{
					display_letter(phrase[roll],k,true);
					display_letter(phrase[0],(8-k),false);
				}
			}
		}
		roll++;
		if(roll==6){
			roll = 0;//roll back
		}
	}
	return;
}

//!note: can't use GPIO2? clashes with timers (delay function)?