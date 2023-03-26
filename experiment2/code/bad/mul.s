.data
X: .word 5
Y: .word 3
.text
main:
ADDIU $r1, $r0, X
LW $r1, 0($r1)
MULT $r1,$r1
MFLO $r4
MULT $r4,$r1
MFLO $r4
ADDIU $r2, $r0, Y
LW $r2, 0($r2)
MULT $r2,$r2
MFLO $r5
MULT $r5,$r2
MFLO $r5
ADDU $r3,$r4,$r5
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0
TEQ $r0,$r0