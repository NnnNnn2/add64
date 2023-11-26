.686
.model flat
public _add_64
extern _wcstoll : PROC

.data
	tempAdress  dd 0

.code
_add_64 PROC
	push	ebp			
	mov	ebp, esp		
		
	push edi
	push esi
	push ebx

	mov eax, [ebp+8]
	mov ebx, eax

	search1:
		add ebx, 2
		mov dx, [ebx]
		cmp dx, 0ah
		jne search1
	
	mov tempAdress, ebx
	mov ebx, offset tempAdress
	push 10
	push ebx
	push eax
	call _wcstoll
	add esp, 12
	mov edi, eax
	mov esi, edx


	mov eax, [ebp+12]
	mov ebx, eax

	search2:
		add ebx, 2
		mov dx, [ebx]
		cmp dx, 0ah
		jne search2
	
	mov tempAdress, ebx
	mov ebx, offset tempAdress
	push 10
	push ebx
	push eax
	call _wcstoll
	add esp, 12

	add eax, edi
	adc edx, esi

	pop ebx
	pop esi
	pop edi

	pop ebp
	ret
_add_64 ENDP
END