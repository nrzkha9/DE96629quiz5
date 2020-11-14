			#include<p18f4550.inc> 

n 			equ 	D'7'
m	 		set 	0x00

			org 	0x00 
			goto 	start 
			org 	0x08 
			retfie 
			org 	0x18 
			retfie 


start 		MOVLW	n
			MOVWF 	m,A
			BSF		PORTD,0,A
loop		RLNCF	PORTD,F,A
			DECFSZ	m,F,A
			goto 	loop
			nop
			end 
 
