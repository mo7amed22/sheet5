.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
		x      DWORD ?
		y      DWORD ?
		z      DWORD ?
		promp  BYTE "Enter The Values",0
		string BYTE 40 DUP (?)
		result BYTE "The Result Is ", 0
.CODE
	_MainProc PROC
		input  promp, string, 40
		atod   string
		mov    x, eax ;assign x
		input  promp, string, 40
		atod   string
		mov    y, eax ;assign y
		input  promp, string, 40
		atod   string
		mov    z, eax ;assign z
		mov    eax, x
		add    eax, y
		imul   eax, 2
		add    eax, z
		dtoa   x, eax
		output result, x
		mov    eax, 0
		ret
	_MainProc ENDP
END
