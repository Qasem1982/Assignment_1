	   GLOBAL main  					; Make main visible to the linker
	   AREA  mycode, CODE, READONLY 	; Initiate area for the program
varX   EQU 0x0035 						; Define a constant 0x23 to be used as value for the variable
	   ENTRY
main  
	   LDR R3, =varX 					; R3 points to varX
	   LDR R1, [R3]  					
   	   
	   B myFunc						; Call subroutine (funtion)
	   
	   MOV R2, R0						; Additional intruction added after funtion call
	   NOP						        ; Additional intruction added after funtion call
	   NOP								; Additional intruction added after funtion call

myFunc LSR R0, R3, #2 					; R0 = N>>2
	   ADD R0,R0, #0x15
	   BX  LR 
       
	   END