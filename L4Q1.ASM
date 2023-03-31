DATA SEGMENT
        NUM1 DW 1234H
        NUM2 DW 0FEE0H
        RES DD 0
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV AX,NUM1
        MOV BX,NUM2
        MUL BX
        LEA SI,WORD PTR RES
        MOV [SI],DX
        ADD SI,2
        MOV [SI],AX
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
