.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		x      DWORD ?
		y      DWORD ?
		promp  BYTE "Enter The Dimensions",0
		string BYTE 40 DUP (?)
		result BYTE "The Perimeter = ", 0
.CODE
	_MainProc PROC
		input  promp, string, 40
		atod   string
		mov    x, eax ;assign x
		input  promp, string, 40
		atod   string
		mov    y, eax ;assign y
		mov    eax, x
		mul    eax, 2
		mov    x, eax
		mov    eax, y
		mul    eax, 2
		add    eax, x
		dtoa   x, eax
		output result, x
		mov    eax, 0
		ret
	_MainProc ENDP
END

