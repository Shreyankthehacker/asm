        AREA HexAddition, CODE, READONLY
        ENTRY
        
        LDR R0, =0x1A    ; Load the first hexadecimal number (e.g., 0x1A) into R0
        LDR R1, =0x2F    ; Load the second hexadecimal number (e.g., 0x2F) into R1
        ADD R2, R0, R1   ; Add R0 and R1, store the result in R2

        END              ; End of program
