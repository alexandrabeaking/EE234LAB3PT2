/*
 * b12.S
 *
 *  Created on: Sep 17, 2018
 *      Author: Alexa
 */
@BEGINNING OF PART 2
@THIS PROGRAM WILL ILLUMINATE THE RGBS IN THE FOLLOWING FASHION: LD4 (RGB0) == WHITE, LD5 (RGB1) == RED,
@LD6 (RGB2) == GREEN, LD7 (RGB3) == BLUE.
.text
.global main

.set MYRGB_BASEADDY, 0x4BB01000

enable_RGBs:
MOV r1, #0X0F
bx lr

main:
	LDR r0, =MYRGB_BASEADDY
	bl enable_RGBs
	MOV r2, #7 @this is white
	MOV r3, #1 @this is red
	MOV r4, #2 @this is green
	MOV r5, #4 @this is blue
	STR r2, [r0, #0x04]
	STR r3, [r0, #0x08]
	STR r4, [r0, #0x0C]
	STR r5, [r0, #0x10]


loop:
	b loop

.end

@END OF PART 2

