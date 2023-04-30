.text
main:
ADDI  $r2,$r0,1024
ADDI  $r3,$r0,16
loop:  
L.D    $f1,0($r2)
ADD.D  $f1,$f1,$f1
S.D    $f1,0($r2)
ADDI  $r2,$r2,4
ADDI   $r3,$r3,-1
BGTZ  $r3,loop
ADD   $r7,$r0,$r6
TEQ   $r0,$r0