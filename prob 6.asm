.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	pr_1	BYTE "Enter the Grade", 0
	pr_2	BYTE "Enter the Weight", 0
	res_1	BYTE "The Weighted Sum", 0
	res_2	BYTE "The Sum of Weights", 0
	res_3	BYTE "The Average", 0
	inp		BYTE 40 DUP (?)
	x		DWORD ?
	y		DWORD ?
	z		DWORD ?
.CODE
	_MainProc PROC
		input	pr_1, inp, 40
		atod	inp
		mov		x, eax
		input	pr_2, inp, 40
		atod	inp
		mov		y, eax
		imul	eax, x
		mov		z, eax
		input	pr_1, inp, 40
		atod	inp
		mov		x, eax
		input	pr_2, inp, 40
		atod	inp
		mov		ebx, eax
		add		y, ebx
		imul	eax, x
		add		z, eax
		input	pr_1, inp, 40
		atod	inp
		mov		x, eax
		input	pr_2, inp, 40
		atod	inp
		mov		ebx, eax
		add		y, ebx
		imul	eax, x
		add		z, eax
		input	pr_1, inp, 40
		atod	inp
		mov		x, eax
		input	pr_2, inp, 40
		atod	inp
		mov		ebx, eax
		add		y, ebx
		imul	eax, x
		add		z, eax
		mov		eax, z
		mov		x, eax
		dtoa	z, eax
		output	res_1,z
		mov		eax, y
		dtoa	z, eax
		output	res_2, z
		mov		ebx, y
		mov		edx, 0
		mov		eax, x
		div		ebx
		dtoa	z, eax
		output	res_3, z
		mov    eax, 0
		ret
	_MainProc ENDP
END
