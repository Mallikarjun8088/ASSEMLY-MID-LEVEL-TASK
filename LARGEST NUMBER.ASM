
MOV R1, #09H
MOV R0, #20H
UP: MOV A,@R0
INC R0
MOV 40H,@R0
CJNE A, 40H, NEXT
SJMP NEXT1
NEXT: JNC NEXT1
XCH A, 40H
NEXT1: DJNZ R1, UP
MOV 40H, A
END