https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
# f2c.s
#
# float f2c( float fahr )
# {
#   return ( ( 5.0 / 9.0 ) * ( fahr - 32.0 ) );
# }
#
        .text
        .globl main
        .globl f2c

f2c:    li.s $f16,5.0
        li.s $f18,9.0

        div.s $f16,$f16,$f18
        li.s $f18,32.0
        sub.s $f18,$f12,$f18
        mul.s $f0,$f16,$f18
        jr $ra

main:   addi $sp,$sp,-4
        sw $ra,0($sp)

        li.s $f12,100.0
        jal f2c

        mov.s $f12,$f0
        li $v0,2
        syscall         # print_float

        lw $ra,0($sp)
        addi $sp,$sp,4
        jr $ra
