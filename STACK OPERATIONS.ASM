	 mov r0,#30h		// source
	 mov r1,#40h		// destination
	 mov r2,#09h		// push counter
	 mov r4,#00h		
up: mov a,@r0
	 inc r0 
	 mov r4,a
	 push 4
	 djnz r2,up		// push counter 
up1: pop 4
	 clr a
     mov a,r4
	 mov @r1,a
	 inc r1
 	 djnz r2,up1
	 end		 