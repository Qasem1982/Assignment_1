	  GLOBAL main  						; Make main visible to the linker
	  AREA  mycode, CODE, READONLY 		; Initiate area for the program
	  ENTRY
main  
	  MOV R1, #02						; Assume N = R1 = 02
	  MOV R2, #200						; Assign R2 = 200
	  MUL R2,R2,R1						; Perform 200*N ==> R2 = R2 * R1
	  ADD R2, R2, #30					; Add 30 to get (200*N + 30) ==> R2 = (200*N+30)
	  MOV R1, #10						; Define the DIVISOR = 10 in R1 ==> R1= 10
	  UDIV R2,R2,R1    				    ; Perform the Devision Operation, ASSume M = R2= (200*N + 30)/ 10
      END