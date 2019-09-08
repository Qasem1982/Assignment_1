	  GLOBAL main  				; Make main visible to the linker
	  AREA  mycode, CODE, READONLY 		; Initiate area for the program
Av    EQU 0x00000023 				; Define a constant 0x23 to be used as value for the variable
Ad    EQU 0x20000000 				; Define a constant 0x30000 to be used as address in the RAM

	  ENTRY
main  
      MOV R0, #Ad				; Point the register R0 to the address variable
      MOV R1, #Av				; Move the desired constant value to register R1
      STR R1,[R0]				; Move the desired constant value to register R1
      END