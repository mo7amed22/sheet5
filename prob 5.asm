.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	inp    	DWORD 40 DUP (?)
	pr	    BYTE "Enter your grades", 0
	pr_1	BYTE "your total", 0
	pr_2	BYTE "your average", 0
	x		DWORD ?
.CODE
	_MainProc PROC
		input	pr, inp, 40
		atod	inp
		mov		x, eax
		input	pr, inp, 40
		atod	inp
		add		x, eax
		input	pr, inp, 40
		atod	inp
		add		x, eax
		input	pr, inp, 40
		atod	inp
		add		x, eax
		mov		eax, x
		dtoa	x, eax
		output	pr_1, x
		mov		ecx, 4
		mov		edx, 0
		atod	x
		div		ecx
		dtoa	x, eax
		output	pr_2, x
		mov		eax, 0
		ret
	_MainProc ENDP
END
