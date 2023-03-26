.data
X: .word 5
Y: .word 3
.text
main:
ADDIU $r10, $r0, X
ADDIU $r11, $r0, Y
LW $r1, 0($r10)
LW $r2, 0($r11)
MULT $r1,$r1
MFLO $r4
MULT $r2,$r2
MFLO $r5
MULT $r4,$r1
MFLO $r6
MULT $r5,$r2
MFLO $r7
ADDU $r3,$r6,$r7
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0