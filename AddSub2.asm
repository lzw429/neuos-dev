TITLE Add and Subtract, Version 2	(AddSub2.asm)
;This program adds and subtracts 32-bit unsigned
;integers and stores the sum in a variable

INCLUDE Irvine32.inc
.data								;伪指令，标识声明变量的区域
val1 DWORD 10000h					;32位无符号整数
val2 DWORD 40000h
val3 DWORD 20000h
finalVal DWORD �					;随机生成

.code
main PROC
	mov eax,val1					;start with 10000h
	add eax,val2					;add 40000h
	sub eax,val3					;subtract 20000h
	mov finalVal,eax				;store the result 30000h
	call DumpRegs					;display the registers
	exit
main ENDP
END main