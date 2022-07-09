DATA SEGMENT
A DW 4444H ; A = 4444
B DW 0002H ; B = 2
C DW ?     ; C = NULL
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA
START:

MOV AX, DATA ; LOADING DATA SEGMENT to AX and then to DS
MOV DS, AX   ; because we can't directly MOV to DS

MOV AX, A   ; LOADING A TO AX (Accumulator)
MOV BX, B   ; LOADING B TO BX register

DIV BX      ; DIVIDING BX FROM AX (AX = AX/BX )

MOV C, AX   ; LOADING AX TO C (Result)

INT 3       ; Interrupt to exit program
CODE ENDS
END START