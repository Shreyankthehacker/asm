        AREA MinValue, CODE, READONLY
        ENTRY

        LDR R0, =array         ; Load the address of the array into R0
        LDR R1, =5             ; Load the number of elements in the array into R1
        LDR R2, [R0]           ; Load the first element of the array into R2 (current min)

find_min:
        ADD R0, R0, #4         ; Move to the next element
        LDR R3, [R0]           ; Load the next element into R3
        CMP R2, R3             ; Compare the current min (R2) with the current element (R3)
        MOVGT R2, R3           ; Update R2 if the current element is smaller
        SUBS R1, R1, #1        ; Decrement the counter
        BNE find_min           ; Repeat until all elements are processed

        END                    ; End of program

array   DCD 30, 10, 40, 20, 50 ; Define the array
