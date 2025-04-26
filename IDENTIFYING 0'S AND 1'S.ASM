	mov r0,#30h
	mov r1,#00h //num of '0'
	mov r2,#00h //num  of '1'
	mov r3,#08h

up: mov a,@r0
	rrc a
	jc up1
	inc r1
bbb	sjmp up2
  up1: inc r2
  up2: djnz r3,up
  end