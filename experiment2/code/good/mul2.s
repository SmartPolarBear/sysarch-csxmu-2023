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
MULT $r1,$r2
MFLO $r6
ADDU $r9,$r4,$r5
ADDU $r8,$r1,$r2
SUBU $r9,$r9,$r6
MULT $r8,$r9
MFLO $r3
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0