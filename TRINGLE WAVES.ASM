UP2:MOV R1,#02H
	MOV R2,#0H
	
	
			MOV A,#00H
		UP:	MOV P1,A
			CALL DELAY
			INC A
			MOV P1,A
			CALL DELAY
			CJNE A,#0FFH,UP
			SJMP UP3
	 
	   UP3:	MOV A,#0FFH
	   UP1:	MOV P1,A
			CALL DELAY
			DEC A
			MOV P1,A
			CALL DELAY
			CJNE A,#00H,UP1
			LJMP UP
			
								   DELAY:
								   
								   MOV R3,#5
							LOOP3: MOV R4,#255
							LOOP2: MOV R5,#255
							LOOP1: DJNZ R5,LOOP1
								   DJNZ R4,LOOP2
								   DJNZ R3,LOOP3
								   RET			
								   END