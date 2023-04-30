.text
main:
ADDI  $r2,$r0,1024
ADDI  $r3,$r0,16
loop:  
ADDI   $r3,$r3,-4
L.D    $f1,0($r2)
L.D    $f10,4($r2)
L.D    $f11,8($r2)
L.D    $f12,12($r2)
ADD.D  $f1,$f1,$f1
ADD.D  $f10,$f10,$f10
ADD.D  $f11,$f11,$f11
ADD.D  $f12,$f12,$f12
S.D    $f1,0($r2)
S.D    $f10,4($r2)
S.D    $f11,8($r2)
S.D    $f12,12($r2)
BGTZ  $r3,loop
ADDI  $r2,$r2,16
ADD   $r7,$r0,$r6
TEQ   $r0,$r0