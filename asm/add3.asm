        AREA Addition64NoTemp, CODE, READONLY
        ENTRY

        LDR R0, =0x123456789ABCDEF0 ; Load lower 32 bits of the first number into R0
        LDR R1, =0x0000000012345678 ; Load upper 32 bits of the first number into R1

        LDR R2, =0x00000000FEDCBA98 ; Load lower 32 bits of the second number into R2
        LDR R3, =0x0000000098765432 ; Load upper 32 bits of the second number into R3

        ADDS R0, R0, R2             ; Add lower 32 bits, store result back in R0
        ADC R1, R1, R3              ; Add upper 32 bits with carry, store result back in R1

        END                         ; End of program
