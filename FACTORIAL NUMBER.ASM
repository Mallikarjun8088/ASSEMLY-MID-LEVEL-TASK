MOV R0,#30H
MOV R1,30H

	MOV A,@R0
	DEC R1
UP: MOV B,R1
	MUL AB
	JO NEXT
	
	DJNZ R1,UP

NEXT: MOV R3,A
	  MOV A,@R1
      MOV R4,B
	  DEC R1
	  MOV B,@R1
	  MUL AB
	  ADD A,R4
	  MOV R4,A
	  ADDC A,B
	  MOV R5,A
	  END

	  
	