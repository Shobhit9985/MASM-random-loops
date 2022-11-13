TITLE

; Name: Shobhit Kumar Biswal
; Date: 2022-11-08
; ID: 110033055
; Description: Lab 6 Solution (SECTION 2)

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

STR_COUNT = 20
STR_SIZE = 10

.data

aString BYTE STR_SIZE DUP(0),0
    
	; data declarations go here


.code
main PROC
mov ecx,STR_COUNT
L1:      
push ecx       
mov ecx,STR_SIZE      
mov esi,OFFSET aString  
L2:     
mov eax,26      
call RandomRange     
add eax,'A'     
mov [esi],al      
inc esi      
loop L2          
mov edx,OFFSET aString     
call WriteString     
call Crlf          
pop ecx      
loop L1

exit

main ENDP
END main




