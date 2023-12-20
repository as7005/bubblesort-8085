mvi b,04h
back2:mvi c,04h
lxi h, 2000h	

back1:mov a, m ; move a=1st no.
inx h 
cmp m	
jc skip
jz skip
mov d, m
mov m, a
dcx h
mov m, d
inx h
skip: dcr c
jnz back1
dcr b
jnz back2
hlt
