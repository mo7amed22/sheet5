.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	pr_p		BYTE "Enter the number of pennies", 0
	pr_n		BYTE "Enter the number of nickels", 0
	pr_d		BYTE "Enter the number of dimes", 0
	pr_q		BYTE "Enter the number of quarters", 0
	pr_f		BYTE "Enter the number of fifty-cent", 0
	pr_do		BYTE "Enter the number of dollar", 0
	pr_rsd		BYTE "You have in dollars", 0
    pr_rsc		BYTE "and in cents", 0
	pr_nrs		BYTE "the total number of coins", 0
	h			DWORD 100 , 0
	inp         DWORD 40 DUP (?)
	vd			DWORD ?
	vc			DWORD ?
	n			DWORD ?
	res			DWORD ?

.CODE
	_MainProc PROC
		input	pr_p, inp, 40	; input number of pennies
		atod	inp
		mov		vd, eax	; The Value in cents
		mov		n, eax  ; number of coins
		input	pr_n, inp, 40
		atod	inp
		add		n, eax ; add to the number of coins
		imul	eax, 5 ; convert to cents
		add		vd, eax ; add to the total value
		input	pr_d, inp, 40
		atod	inp
		add		n, eax
		imul	eax, 10
		add		vd, eax
		input	pr_q, inp, 40
		atod	inp
		add		n, eax
		imul	eax, 25
		add		vd, eax
		input	pr_f, inp, 40
		atod	inp
		add		n, eax
		imul	eax, 50
		add		vd, eax
		input	pr_do, inp, 40
		atod	inp
		add		n, eax
		imul	eax, 100
		add		vd, eax
		mov		eax, n
		dtoa	res, eax
		output  pr_nrs, res
		mov		edx, 0
		xchg	eax, vd
		div		h
		dtoa    res, eax
		output  pr_rsd, res
		dtoa	res, edx
		output  pr_rsc, res
		mov eax, 0
		ret
	_MainProc ENDP
END
