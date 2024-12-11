AREA MyCode, CODE, READONLY
ENTRY

LDR R0, =num1        ; Load the address of num1 into R0
LDR R1, [R0]         ; Load the value of num1 into R1

LDR R0, =num2        ; Load the address of num2 into R0
LDR R2, [R0]         ; Load the value of num2 into R2

ADD R1, R1, R2       ; Add R1 and R2, result in R1

LDR R0, =result      ; Load the address of result into R0
STR R1, [R0]         ; Store the sum in result

END                  ; End of the program

AREA MyData, DATA, READWRITE
num1 DCD 5           ; First number
num2 DCD 3           ; Second number
result DCD 0         ; To store the result

END
