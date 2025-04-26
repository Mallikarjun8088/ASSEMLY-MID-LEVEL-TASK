MOV R0,#20H
MOV R1,#25H
MOV R2,#03


UP: MOV A,@R0
	
	MOV B,A 
	MUL AB
	MOV B,@R0
	MUL AB
	MOV @R1,A
	INC R0
	INC R1
	DJNZ R2,UP
	
	CLR A
	MOV R0,#25H
	MOV A,@R0
	INC R0
	ADD A,@R0
	INC R0
	ADDC A,@R0
	MOV 31H,A
	
	 MOV R1,#30H
NEXT:CJNE R1,#31H,NEXT 
	 
	 MOV R5,01H
	
	
	
	
	
	
	
	
	END