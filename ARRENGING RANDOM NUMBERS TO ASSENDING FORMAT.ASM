MOV DPTR,#9001H
MOV R0,#70H
MOV R2,#0AH
MOV R1,#60H



	UP:	MOVX A,@DPTR	//9001
		MOV 40H,A
		DEC DPl		//9000
		MOVX A,@DPTR
		CJNE A,40H,SAKSHI
		SJMP DOWN
	
SAKSHI: JC DOWN1		// TAKE JUMP ON IF  1ST NUM(A)IS SMALLER
		MOV @R1,A
		INC R1
		SJMP DOWN
		
 DOWN1: XCH A,40H // STORE SMALLER NUM 
		MOV @R0,A
		INC R0

DOWN:   INC DPTR   //9002
		INC DPTR
		INC DPTR
 		DJNZ R2,UP
		END