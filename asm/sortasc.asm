        AREA SortArray, CODE, READONLY
        ENTRY

        LDR R0, =array         ; Load the address of the array into R0
        LDR R1, =5             ; Load the number of elements in the array into R1
        SUB R1, R1, #1         ; R1 = n - 1 (number of passes)

outer_loop:
        MOV R2, R1             ; Initialize inner loop counter (R2 = R1)

inner_loop:
        LDR R3, [R0]           ; Load the current element into R3
        LDR R4, [R0, #4]       ; Load the next element into R4
        CMP R3, R4             ; Compare the current and next elements
        BLE no_swap            ; If current <= next, no swap is needed

        ; Swap elements
        STR R4, [R0]           ; Store the next element in the current position
        STR R3, [R0, #4]       ; Store the current element in the next position

no_swap:
        ADD R0, R0, #4         ; Move to the next element
        SUBS R2, R2, #1        ; Decrement the inner loop counter
        BNE inner_loop         ; Repeat until the end of the inner loop

        LDR R0, =array         ; Reset the array pointer to the start
        SUBS R1, R1, #1        ; Decrement the outer loop counter
        BNE outer_loop         ; Repeat until the array is sorted

        END                    ; End of program

array   DCD 30, 10, 40, 20, 50 ; Define the array
