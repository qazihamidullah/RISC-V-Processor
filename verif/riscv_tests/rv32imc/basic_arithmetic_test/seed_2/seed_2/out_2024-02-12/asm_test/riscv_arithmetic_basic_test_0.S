.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x2, 0x40001104
                  csrw 0x301, x2
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 1
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  li x2, 0x0
                  csrw 0x304, x2 # MIE
                  mret
init:             
                  li x0, 0x38727380
                  li x1, 0xfff529df
                  li x2, 0x0
                  li x3, 0xd
                  li x4, 0x0
                  li x5, 0xb
                  li x6, 0xe
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x8
                  li x14, 0x80000000
                  li x15, 0xfd37c31a
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0xd
                  li x20, 0xe
                  li x21, 0x0
                  li x22, 0xa9566662
                  li x23, 0x8c28ee28
                  li x24, 0xa
                  li x25, 0x0
                  li x26, 0xe9795ce2
                  li x27, 0xf3998e07
                  li x28, 0xf3e054c7
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x9
                  la x9, user_stack_end
main:             li           s2, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           a3, 0xffffffff
                  li           s3, 0x80000000
                  li           t6, 0x80000000
                  li           a4, 0xffffffff
                  li           s4, 0xffffffff
                  li           t4, 0x8f55c94a
                  li           t5, 0x41982dc
                  li           a0, 0x80000000
                  li           s8, 0x80000000
                  mulh         a0, s4, a3
                  mul          a0, a0, a4
                  lui          a3, 1015663
                  divu         s4, s4, a4
                  mulhsu       t6, s4, s3
                  remu         t5, a3, s4
                  sub          s3, a3, s4
                  divu         s4, t6, s3
                  addi         a4, s4, 1917
                  lui          s4, 629856
                  addi         s2, a0, 1210
                  remu         s8, a3, a0
                  auipc        t5, 50467
                  rem          t4, a3, a0
                  nop
                  div          a4, s2, s4
                  mulh         a4, a4, t5
                  rem          a0, s8, s4
                  add          a4, s2, a3
                  nop
                  lui          a3, 336892
                  addi         t6, s3, 234
                  rem          s8, a0, a4
                  addi         a0, s2, -1674
                  add          s8, a0, a0
                  nop
                  mulhu        s8, t4, s8 #end riscv_int_numeric_corner_stream_27
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s11, 0x80000000
                  li           sp, 0xffffffff
                  li           a3, 0x3b7cb8eb
                  li           tp, 0xffffffff
                  li           t1, 0xffffffff
                  li           s2, 0x0
                  li           ra, 0x12cdcc5c
                  li           s8, 0xffffffff
                  li           s10, 0x0
                  mulhsu       s11, a3, tp
                  mulhsu       s10, ra, s10
                  lui          t1, 309384
                  mul          a3, s10, sp
                  addi         s11, tp, -1802
                  rem          s11, s2, ra
                  addi         a3, ra, -105
                  div          tp, t1, sp
                  sub          t1, s2, s8
                  mulh         s0, t1, tp
                  add          tp, tp, s10
                  addi         s2, s11, -772
                  div          s2, s10, ra
                  auipc        ra, 735539
                  nop #end riscv_int_numeric_corner_stream_4
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           t0, 0x80000000
                  li           a0, 0xffffffff
                  li           s7, 0xffffffff
                  li           s3, 0xfcb8535c
                  li           a1, 0x0
                  li           s11, 0x0
                  li           a5, 0x6d7e24b5
                  li           s8, 0xb9674e38
                  li           ra, 0x80000000
                  mul          s7, s3, s11
                  divu         a5, ra, ra
                  addi         ra, a5, -1744
                  rem          ra, s7, a1
                  mulhsu       s8, t6, s8
                  rem          t0, a0, t6
                  lui          a1, 730826
                  rem          s8, s8, ra
                  mulhsu       s8, a5, s11
                  auipc        ra, 81778
                  mulh         s11, s8, a1
                  mulhsu       s8, a0, a0
                  mul          a0, s3, t0
                  divu         a0, s8, s7
                  divu         a5, a5, ra
                  mulh         s3, s7, t6
                  sub          a0, a0, a5 #end riscv_int_numeric_corner_stream_30
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           t1, 0x9a59370d
                  li           t4, 0x0
                  li           a7, 0x72aa89ea
                  li           s11, 0x5b599f0c
                  li           t2, 0x0
                  li           a2, 0x80000000
                  li           gp, 0x80000000
                  li           s6, 0x0
                  li           s5, 0x80000000
                  nop
                  mulh         s11, s11, gp
                  mul          a7, s6, gp
                  nop
                  mulhsu       t2, a7, gp
                  addi         s5, s6, -124
                  mulh         t1, t1, a2
                  mulhu        a2, s11, gp
                  div          gp, a2, a7
                  addi         t4, s5, -1946
                  nop
                  nop
                  div          t4, s10, a7
                  mul          a2, s10, t1
                  rem          s11, t1, gp
                  mul          s6, a2, s11
                  mulhsu       a2, t4, a2
                  remu         a2, s6, gp
                  mulh         t1, s10, s5
                  add          s6, s11, a7
                  mul          a7, a7, t2
                  mulhu        s11, gp, t4
                  nop
                  addi         a7, t2, 166
                  mul          s5, s6, t4
                  remu         s11, s6, s6
                  mul          gp, a7, t4
                  div          t2, a7, a2
                  sub          s10, a2, gp
                  add          gp, t4, gp #end riscv_int_numeric_corner_stream_35
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           s3, 0x80000000
                  li           a1, 0xffffffff
                  li           s6, 0xffffffff
                  li           t5, 0x259f95ca
                  li           a4, 0xffffffff
                  li           t2, 0xffffffff
                  li           s5, 0x0
                  li           a7, 0xffffffff
                  li           a0, 0x0
                  rem          s5, t5, a0
                  rem          t5, s6, s5
                  divu         t2, s3, t2
                  mulhu        a4, s6, a1
                  lui          a7, 405240
                  sub          a0, a4, t2
                  rem          s5, a7, s5
                  add          a7, a0, s6
                  addi         s5, s3, -1317
                  nop
                  lui          a7, 131506
                  mulhu        a7, s3, s5
                  auipc        a7, 68359
                  div          t2, a1, a4
                  rem          a0, a7, a1
                  mulhu        s6, t5, a7
                  sub          s6, s5, a1
                  remu         s3, a4, s3 #end riscv_int_numeric_corner_stream_7
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           a2, 0x80000000
                  li           s7, 0x1dcec529
                  li           s2, 0x0
                  li           a0, 0x80000000
                  li           t1, 0x80000000
                  li           t3, 0xffffffff
                  li           s4, 0xffffffff
                  li           t2, 0x55eecbee
                  li           s10, 0x80000000
                  rem          a0, a1, t3
                  mulhu        s4, t1, a1
                  nop
                  rem          s4, s4, a1
                  remu         s7, a2, s2
                  mulhsu       a2, s7, t3
                  addi         a2, a2, -580
                  mulh         a1, a1, a1
                  remu         t1, t3, s2
                  lui          a2, 816256
                  sub          s10, s2, t2
                  nop
                  mulh         a2, s4, a0
                  auipc        a2, 120675
                  add          a1, s10, a2
                  mulh         s4, s10, a0
                  auipc        a2, 1009520
                  mulhsu       a2, s7, a2
                  mulhsu       s7, a0, t2
                  auipc        s10, 851394 #end riscv_int_numeric_corner_stream_2
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           ra, 0x0
                  li           t3, 0xffffffff
                  li           t1, 0x80000000
                  li           s0, 0xffffffff
                  li           tp, 0x80000000
                  li           t0, 0x0
                  li           s10, 0x0
                  li           s8, 0xb54b59a
                  li           s4, 0xffffffff
                  sub          s0, s8, s10
                  nop
                  mul          t0, s0, tp
                  sub          t0, s4, s0
                  mulhsu       tp, t3, t1
                  remu         s10, a5, ra
                  mulhu        ra, ra, s0
                  div          s10, t0, t3
                  div          t0, s0, ra
                  add          s10, ra, s10
                  rem          a5, s0, s8
                  add          a5, s10, t0
                  add          s4, a5, a5
                  sub          t3, s10, a5
                  mulh         t1, t3, t3
                  mul          ra, s4, t3
                  mulhsu       s10, s8, t0
                  mulhu        t1, tp, s4 #end riscv_int_numeric_corner_stream_8
                  li           a1, 0xc8ed4e94 #start riscv_int_numeric_corner_stream_36
                  li           s0, 0x80000000
                  li           t6, 0xffffffff
                  li           ra, 0x2650f0d6
                  li           a0, 0xffffffff
                  li           t0, 0x80000000
                  li           t2, 0xffffffff
                  li           s2, 0x80000000
                  li           gp, 0x80000000
                  li           t1, 0x0
                  mulhsu       gp, t1, s2
                  lui          t1, 212613
                  lui          s2, 112391
                  add          t6, s2, t0
                  div          t0, a0, s0
                  auipc        s0, 470797
                  mul          t2, gp, s0
                  mulh         t1, t0, s2
                  addi         a1, ra, -1855
                  add          t1, s2, t2
                  div          s0, t2, s2
                  addi         t0, s2, -1709
                  nop
                  remu         gp, gp, s0
                  lui          t2, 94085
                  remu         t1, t6, t2
                  mulhu        t6, a1, ra
                  rem          ra, gp, gp
                  div          s0, t1, t6
                  addi         s2, ra, -527
                  divu         s2, a1, t0
                  auipc        s0, 485576
                  div          t2, s0, a1 #end riscv_int_numeric_corner_stream_36
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_39
                  li           s0, 0xffffffff
                  li           a7, 0x0
                  li           s11, 0xffffffff
                  li           a0, 0xffffffff
                  li           s6, 0x0
                  li           a5, 0x7331f5bc
                  li           t1, 0xffffffff
                  li           s10, 0x0
                  li           gp, 0x0
                  div          s6, a0, gp
                  divu         s10, a0, s0
                  mulhu        t1, gp, s11
                  remu         a7, s11, s0
                  rem          gp, s11, s11
                  div          s6, s0, t1
                  mulhu        a1, a0, a1
                  sub          a5, s6, a1
                  sub          a7, gp, a0
                  mulhsu       s11, s0, a1
                  nop
                  lui          gp, 789006
                  mulhsu       a5, s10, s0
                  remu         a5, a5, t1
                  lui          a0, 726584
                  mulhu        s11, s11, s0
                  sub          a7, gp, a1
                  lui          t1, 529231
                  mulhu        s0, s0, a7
                  lui          s6, 301429
                  mul          a1, a7, a0
                  mulhsu       a1, s6, a5
                  add          s0, s10, s0 #end riscv_int_numeric_corner_stream_39
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           a2, 0xbb9fa4f0
                  li           s6, 0x30194979
                  li           s3, 0xffffffff
                  li           a4, 0xcb0c936b
                  li           s4, 0x80000000
                  li           a0, 0xffffffff
                  li           s0, 0x741ef78
                  li           a1, 0xffffffff
                  li           s5, 0xc093e727
                  mul          s4, a1, s0
                  lui          s3, 273567
                  remu         s3, a2, a0
                  mulhu        a4, s10, s10
                  divu         s4, s4, s3
                  rem          s6, s4, s10
                  mulh         s10, s6, a2
                  lui          a4, 114252
                  sub          s10, s6, s0
                  sub          s4, a1, a2
                  add          s3, s6, s4
                  lui          s10, 224788
                  auipc        s3, 902298
                  auipc        s10, 505561
                  remu         a0, a0, a2
                  add          a2, a1, s6
                  mulh         s5, s5, a2
                  lui          s3, 319075
                  add          a4, s3, s3
                  divu         s5, a2, s5
                  mul          s3, s5, s5
                  auipc        s10, 981997 #end riscv_int_numeric_corner_stream_37
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           s2, 0x0
                  li           ra, 0x22be4cb3
                  li           sp, 0x200185fe
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  li           t4, 0x80000000
                  li           s0, 0x6635143
                  li           s10, 0x80000000
                  li           t5, 0x0
                  lui          s0, 9160
                  mulhu        s10, t4, s0
                  auipc        t4, 597412
                  lui          s2, 873179
                  mul          ra, s0, s2
                  lui          tp, 296753
                  add          ra, tp, a4
                  remu         a1, a1, s10
                  mulhu        a1, s0, s0
                  mul          a1, ra, sp
                  add          s0, tp, t4
                  mul          t4, s2, t5
                  addi         s0, s2, -2023
                  mul          ra, a1, s2
                  div          t5, t4, ra
                  auipc        t5, 230
                  rem          ra, s10, s0
                  divu         a4, s2, s0
                  mulhu        a4, a1, sp
                  nop
                  addi         s2, s10, -27
                  div          a1, t5, s0
                  mulhsu       t4, s10, sp
                  mulhsu       s0, s10, t4
                  lui          s2, 377753
                  lui          a1, 488055
                  auipc        t5, 218790 #end riscv_int_numeric_corner_stream_29
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_38
                  li           gp, 0xffffffff
                  li           a7, 0xcbf7ef47
                  li           sp, 0x76fbb58a
                  li           a3, 0x80000000
                  li           a2, 0x80000000
                  li           t1, 0xb5ba1ecd
                  li           t3, 0xffffffff
                  li           t2, 0x1b88253d
                  li           tp, 0x0
                  nop
                  lui          sp, 478851
                  nop
                  mulh         t3, t1, t2
                  remu         t1, a2, t3
                  sub          gp, t3, t3
                  nop
                  add          a7, a7, t2
                  divu         gp, t1, a5
                  addi         t1, gp, -325
                  add          t1, t1, gp
                  add          a3, t3, t3
                  mul          tp, a3, tp
                  mulhsu       a3, a5, a2
                  lui          a3, 759966
                  lui          gp, 330706
                  sub          gp, gp, gp
                  mulh         t3, gp, a3
                  mul          gp, t2, sp
                  remu         t1, sp, gp
                  mul          a3, gp, tp
                  div          gp, a7, t1
                  mulh         t2, tp, a3
                  remu         a7, t2, a2
                  divu         a3, a3, a5 #end riscv_int_numeric_corner_stream_38
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_21
                  li           t4, 0x0
                  li           s7, 0xffffffff
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  li           t6, 0xffffffff
                  li           s10, 0x0
                  li           s4, 0x62445303
                  li           a7, 0x80000000
                  li           tp, 0xffffffff
                  divu         gp, s7, s4
                  mul          a7, a7, sp
                  div          s4, sp, a7
                  divu         gp, a2, gp
                  mulh         gp, t4, s4
                  div          s10, a7, s4
                  div          s10, t4, s4
                  addi         a2, s4, 559
                  mulhu        s10, a7, s10
                  add          tp, sp, t6
                  mul          a7, t4, s4
                  rem          gp, gp, a2
                  sub          gp, sp, gp
                  sub          s4, sp, s7
                  add          tp, s7, a2
                  mulhsu       s10, t4, s4
                  nop #end riscv_int_numeric_corner_stream_21
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           a2, 0x4a2154f3
                  li           s5, 0x3e5ed830
                  li           tp, 0x453563d6
                  li           a4, 0x80000000
                  li           a5, 0xffffffff
                  li           t3, 0x0
                  li           s11, 0xc1cbbdf4
                  li           t6, 0x2075e204
                  li           t5, 0x0
                  div          s5, t3, gp
                  add          tp, s11, s11
                  lui          tp, 420463
                  rem          gp, s5, a4
                  add          s5, a5, s11
                  addi         a5, t5, 179
                  div          a2, a4, t5
                  remu         s11, a5, a5
                  lui          a4, 915898
                  addi         a5, a2, -330
                  auipc        gp, 290768
                  addi         a2, s5, 1476
                  rem          a5, gp, a5
                  add          a5, t3, gp
                  rem          tp, tp, a5
                  add          a4, gp, a2
                  addi         a5, gp, -1209
                  divu         a2, s11, s5
                  auipc        tp, 902384
                  nop
                  mulhu        t6, a4, t3
                  sub          t5, a2, t5
                  divu         gp, tp, s5
                  mulh         a2, a4, tp
                  mulhsu       a4, s11, a4
                  div          t5, s5, a5
                  rem          tp, s5, s5
                  divu         a4, tp, gp
                  add          s5, tp, t5
                  mulhu        gp, t3, tp #end riscv_int_numeric_corner_stream_1
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a4, 0xffffffff
                  li           a2, 0xffffffff
                  li           ra, 0x0
                  li           t3, 0x3488696a
                  li           a5, 0xffffffff
                  li           s0, 0xffffffff
                  li           s7, 0xa45af7de
                  li           a0, 0x80000000
                  li           s4, 0x80000000
                  nop
                  mul          s0, t3, s7
                  lui          ra, 93537
                  rem          s7, ra, a2
                  sub          s4, s7, a4
                  mulh         s7, ra, a4
                  lui          a4, 798159
                  mulhu        a0, a5, s4
                  mulhsu       s7, s7, s4
                  nop
                  lui          a2, 36290
                  div          gp, a0, s4
                  div          a0, s0, gp
                  rem          s7, ra, a4
                  sub          s4, ra, s7
                  mul          s7, a0, ra
                  rem          ra, s7, ra
                  nop #end riscv_int_numeric_corner_stream_9
                  li           s2, 0x6056765b #start riscv_int_numeric_corner_stream_18
                  li           a1, 0xffffffff
                  li           a4, 0x7d763098
                  li           s0, 0xa73c11f2
                  li           s7, 0x0
                  li           a7, 0x0
                  li           s11, 0x80000000
                  li           s8, 0x310bc2c8
                  li           s10, 0x80000000
                  li           a0, 0x80000000
                  mulhsu       s0, s10, s11
                  sub          s0, a7, a7
                  mul          s7, s11, s2
                  div          s7, s7, s11
                  mulhu        s10, a4, s10
                  divu         s0, a1, s11
                  rem          s2, a4, a7
                  mulh         a7, a4, s2
                  lui          s2, 917687
                  rem          a7, a0, a7
                  remu         s7, s0, s7
                  divu         a4, a4, s11
                  sub          a1, a4, s8
                  nop
                  mulh         a1, s7, a0
                  add          a0, a1, s2
                  nop #end riscv_int_numeric_corner_stream_18
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a2, 0x80000000
                  li           a7, 0x0
                  li           s6, 0x34f2de7b
                  li           ra, 0x80000000
                  li           a3, 0x938a51f8
                  li           s3, 0xffffffff
                  li           t2, 0x0
                  li           a4, 0x80000000
                  li           s5, 0x0
                  lui          t2, 175785
                  addi         a4, a4, 204
                  lui          ra, 408871
                  divu         a7, ra, s5
                  rem          ra, s11, s6
                  addi         s11, s5, 790
                  remu         s6, s5, t2
                  mulhu        a4, s5, a4
                  auipc        s11, 822638
                  mul          ra, t2, s5
                  mulhsu       a4, a4, t2
                  auipc        a3, 721350
                  remu         t2, s11, s6
                  sub          ra, t2, a3
                  rem          s3, a2, a3
                  addi         a2, a7, 67 #end riscv_int_numeric_corner_stream_16
                  li           s10, 0x69413b6c #start riscv_int_numeric_corner_stream_22
                  li           a5, 0x80000000
                  li           t5, 0x80000000
                  li           tp, 0x0
                  li           s2, 0xffffffff
                  li           sp, 0xa4db1078
                  li           s0, 0xffffffff
                  li           s8, 0xffffffff
                  li           t4, 0xffffffff
                  li           t1, 0x80000000
                  remu         s0, t4, s0
                  mulh         t5, tp, s0
                  mulh         s8, a5, s8
                  addi         t4, t5, -1780
                  auipc        tp, 355989
                  mulhu        a5, s2, tp
                  divu         tp, s0, a5
                  div          s10, s2, s10
                  mulh         t4, tp, t1
                  sub          t4, s10, s0
                  lui          t5, 45919
                  mulhu        a5, a5, tp
                  div          s10, t4, s0
                  nop
                  addi         t1, s0, -812
                  mulhu        t1, s0, t4
                  rem          a5, s10, t4
                  mulhu        sp, t5, tp
                  divu         a5, sp, s2
                  div          s8, sp, s10
                  nop
                  add          t5, s0, s2
                  div          t5, sp, sp
                  mulhsu       t1, t4, s8
                  div          sp, t4, sp
                  addi         s2, a5, -1423 #end riscv_int_numeric_corner_stream_22
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_25
                  li           t5, 0x80000000
                  li           t2, 0x0
                  li           s7, 0xcb26618a
                  li           a7, 0x0
                  li           sp, 0x8cdb0982
                  li           tp, 0x0
                  li           gp, 0xc11b4b2f
                  li           s6, 0x80000000
                  li           s0, 0x80000000
                  lui          s0, 823135
                  mul          ra, s0, s7
                  mulhsu       s6, t2, a7
                  mulhu        a7, gp, t5
                  mulh         t5, a7, s6
                  div          t5, t2, a7
                  lui          ra, 117347
                  div          tp, sp, t5
                  rem          s0, a7, s7
                  mulhu        sp, t2, gp
                  mulhsu       tp, a7, t5
                  mulhsu       sp, s0, s0
                  addi         tp, s0, 239
                  divu         s6, s0, sp
                  rem          sp, sp, a7
                  lui          sp, 612421
                  auipc        t5, 62753
                  divu         a7, tp, s0
                  remu         sp, gp, t5
                  remu         s7, t5, t2
                  mulh         ra, tp, t5
                  remu         a7, t5, s6
                  lui          tp, 602782
                  rem          s0, tp, s6 #end riscv_int_numeric_corner_stream_25
                  or           s3, a2, t4
                  sra          t5, t5, t3
                  or           t0, t5, t3
                  add          a5, tp, a1
                  c.and        a3, s1
                  divu         a1, s6, s11
                  xori         gp, a3, 2023
                  divu         s4, t2, s4
                  c.li         s2, -1
                  srl          t2, s5, s6
                  c.srai       a5, 6
                  c.li         a5, 6
                  c.slli       s11, 29
                  c.or         a1, a4
                  sltiu        sp, s5, -1495
                  remu         t3, t1, a6
                  mulhsu       s0, a5, s11
                  c.lui        s6, 20
                  remu         a0, s7, sp
                  c.srai       a2, 4
                  c.addi       a1, 14
                  div          a4, t3, s9
                  c.sub        a3, a4
                  sll          s7, s0, s3
                  mul          ra, t2, t2
                  c.xor        a1, a5
                  c.mv         s8, t5
                  c.and        s0, a2
                  srli         sp, a7, 9
                  div          t6, s0, s0
                  srai         sp, s3, 9
                  c.srai       a2, 5
                  xori         a0, a6, -974
                  mulh         s3, a1, s0
                  c.lui        s0, 22
                  add          s0, s2, tp
                  and          a3, s4, s6
                  sub          t2, zero, tp
                  sltiu        ra, zero, -1670
                  c.sub        a5, a5
                  c.sub        s0, s1
                  c.add        ra, tp
                  c.lui        t2, 12
                  mulhu        a0, s11, a5
                  c.nop
                  c.srli       a1, 14
                  or           s11, a5, t2
                  mulhsu       a7, s3, a1
                  srl          a2, a3, a4
                  c.li         s6, -1
                  sub          t2, t6, t3
                  c.and        s0, s0
                  mulhu        a3, s0, t0
                  slti         ra, s3, 345
                  divu         s6, tp, a1
                  c.li         s2, -1
                  sra          s0, t4, s9
                  c.nop
                  srl          a1, s2, s2
                  c.add        s6, s5
                  xori         s10, t6, 1248
                  sll          t2, s6, gp
                  or           a4, a5, t1
                  mul          s7, s10, s5
                  sll          t0, a3, a1
                  c.li         s7, -1
                  xor          s2, s3, t2
                  c.lui        s11, 20
                  sltiu        t4, sp, 1811
                  div          zero, s11, t2
                  c.sub        s0, a1
                  srai         s8, a1, 11
                  sll          tp, t3, s9
                  srl          s8, a7, s3
                  lui          t4, 313864
                  auipc        s8, 620734
                  remu         a1, zero, t1
                  and          s10, tp, s8
                  c.andi       a5, 31
                  sltu         a2, t1, s1
                  c.and        s0, a5
                  c.sub        a0, a1
                  nop
                  mulhsu       a4, a2, s10
                  c.add        t1, a2
                  c.and        a1, a1
                  c.lui        a0, 8
                  addi         s7, a4, -277
                  c.nop
                  slli         a1, gp, 12
                  c.srli       s0, 3
                  ori          a5, s9, -1969
                  c.add        sp, t1
                  rem          s5, a5, s10
                  slti         tp, s6, 1354
                  remu         t6, ra, t5
                  lui          t6, 685012
                  or           t3, t6, sp
                  addi         s10, s10, -1764
                  c.srai       a2, 20
                  and          s0, s2, t2
                  nop
                  add          s10, s11, gp
                  c.addi16sp   sp, 368
                  c.xor        a4, a3
                  c.srli       s0, 28
                  c.slli       a0, 15
                  mulh         t4, ra, a6
                  or           s11, s4, s11
                  mul          tp, a1, s9
                  mulhu        s0, s9, gp
                  mulh         ra, a4, t0
                  remu         t2, s2, ra
                  ori          zero, sp, 1178
                  c.srai       a2, 21
                  slt          sp, s6, s6
                  mulh         a3, t2, tp
                  add          t6, t0, s0
                  div          a4, s7, t3
                  srai         s2, a6, 8
                  c.sub        a5, a4
                  xori         a4, tp, 530
                  slti         s2, s6, -1281
                  sll          t0, t4, s10
                  c.xor        a2, a5
                  xor          t5, s1, t1
                  sltiu        s8, t5, 1154
                  slti         t5, a5, -104
                  xori         t1, zero, -742
                  div          s2, s6, a4
                  c.andi       a1, -1
                  sub          s4, s0, s10
                  div          t2, s6, s5
                  c.or         a1, a2
                  c.sub        a3, a0
                  c.sub        a0, a0
                  andi         s2, s1, -373
                  auipc        s6, 354924
                  c.srli       a3, 19
                  slli         s10, s7, 31
                  c.andi       a4, 15
                  srli         s5, a1, 5
                  c.lui        gp, 8
                  c.lui        s8, 7
                  c.andi       a2, -1
                  srl          a2, t5, a6
                  mulhsu       s2, a4, a5
                  mulhu        tp, s8, gp
                  slli         s0, s3, 9
                  rem          sp, t2, s10
                  divu         a0, t5, s3
                  divu         t4, t4, t5
                  nop
                  mul          t3, sp, s9
                  slli         tp, a0, 26
                  c.mv         sp, s7
                  nop
                  srai         zero, t1, 27
                  slt          s0, a5, s4
                  sra          t4, s10, zero
                  rem          s2, s11, a0
                  sltu         zero, s1, s7
                  add          a3, s1, a0
                  c.add        gp, gp
                  mulhu        t6, a5, s10
                  c.addi       s0, 17
                  remu         t5, t5, s9
                  lui          s10, 376388
                  addi         s8, s1, 1212
                  c.li         a1, -1
                  srl          s0, s2, s8
                  addi         s2, t0, 1938
                  slti         s3, a3, -641
                  add          a0, gp, t6
                  c.srli       a3, 11
                  slt          a1, a3, s0
                  nop
                  c.srai       a5, 3
                  div          s8, s8, a2
                  or           a2, zero, s3
                  xor          ra, a0, t1
                  div          t5, s9, a3
                  mulhu        s8, s8, sp
                  remu         s5, t1, s6
                  sltiu        s2, s9, 303
                  c.slli       gp, 24
                  div          s2, t0, s11
                  c.srli       a1, 21
                  sll          s8, s0, a5
                  divu         a7, s11, s5
                  c.andi       s0, -1
                  c.sub        a0, a1
                  andi         a7, a2, -912
                  nop
                  auipc        a5, 986573
                  add          gp, a0, s11
                  c.andi       s0, -1
                  lui          ra, 789682
                  slt          s7, tp, s9
                  sltu         s8, t3, a1
                  andi         zero, ra, 1488
                  srai         a2, s10, 3
                  c.addi       a7, -1
                  sltu         a7, t5, a5
                  mulh         s5, a3, a4
                  div          a1, a6, s8
                  div          tp, tp, s3
                  c.xor        a1, s1
                  rem          t2, a1, sp
                  c.lui        tp, 1
                  c.add        s7, t6
                  c.addi16sp   sp, 240
                  add          s3, a2, s2
                  c.addi       a4, 13
                  c.slli       s8, 2
                  slti         s8, s8, 295
                  c.addi       t3, 18
                  nop
                  c.addi16sp   sp, 496
                  c.slli       s2, 28
                  addi         t1, a5, 257
                  srli         zero, t6, 30
                  srli         t4, s2, 6
                  srl          s10, s6, sp
                  sltu         a2, s7, tp
                  div          t0, a5, t0
                  sub          a2, a1, a3
                  c.addi4spn   s0, sp, 528
                  div          a7, t1, s3
                  nop
                  add          a4, a2, s1
                  addi         a0, a3, -1967
                  mul          s8, a6, t6
                  mulh         t0, s6, a4
                  nop
                  srai         a7, zero, 24
                  c.addi       a2, 5
                  or           a4, s10, a2
                  c.addi       ra, -1
                  ori          zero, a3, 1547
                  auipc        s10, 379439
                  nop
                  mulhsu       s10, s2, s8
                  c.li         t1, -1
                  ori          t6, a1, 600
                  c.add        t4, a2
                  or           a0, s3, a4
                  srli         t5, s7, 17
                  c.xor        s0, a2
                  remu         t4, zero, s11
                  sub          s6, sp, s11
                  addi         gp, a5, 297
                  slli         a0, t5, 13
                  c.xor        a5, a5
                  c.nop
                  mul          t5, s10, a6
                  srli         t5, s8, 31
                  c.lui        s7, 11
                  slt          t6, s5, a1
                  sra          a3, a7, t5
                  mulhu        a1, s8, t3
                  c.nop
                  andi         s2, s10, 146
                  or           s2, t2, s1
                  sltu         tp, sp, gp
                  c.xor        a2, a0
                  andi         a1, a3, 816
                  srai         a2, s2, 23
                  c.or         a3, s0
                  xori         s11, gp, 1031
                  c.slli       a7, 24
                  sra          s8, s0, s3
                  or           zero, ra, t1
                  div          t1, a7, a1
                  c.andi       a1, -1
                  c.and        a1, s0
                  c.and        a1, a0
                  lui          t0, 692815
                  c.addi4spn   a2, sp, 16
                  andi         s4, a6, 167
                  remu         t6, t2, a6
                  lui          tp, 649540
                  c.xor        a2, a0
                  c.mv         a7, t4
                  c.addi       a0, -1
                  slli         t0, s10, 1
                  c.add        a7, a1
                  c.slli       gp, 26
                  slt          ra, s2, tp
                  mul          s7, s6, a0
                  c.nop
                  lui          a4, 453839
                  c.addi       sp, 13
                  xori         s3, s4, -1366
                  slli         t4, t5, 4
                  c.srli       a5, 20
                  div          a0, ra, s3
                  xori         a7, t1, -629
                  c.addi16sp   sp, 432
                  remu         a1, sp, a0
                  c.or         a2, a5
                  div          s11, a4, s4
                  and          t6, t1, s4
                  xor          t6, a0, a6
                  c.mv         a1, t0
                  sub          t6, t4, a4
                  c.srli       a4, 5
                  c.slli       t3, 30
                  srai         s8, s8, 27
                  slli         a0, a3, 8
                  ori          a4, t0, -1066
                  c.lui        s4, 12
                  and          a0, zero, t3
                  ori          s0, s4, -1682
                  slti         a2, a2, -1305
                  c.addi16sp   sp, -16
                  sll          s6, t4, a2
                  remu         s4, s11, s2
                  divu         s6, a5, a7
                  c.add        s2, s7
                  c.srai       a2, 24
                  mulh         a4, a0, a6
                  and          tp, t3, s3
                  auipc        zero, 179693
                  c.srli       a5, 20
                  lui          ra, 4213
                  xor          zero, a7, t0
                  mulhsu       s2, s9, s10
                  c.srai       a5, 29
                  andi         a2, s11, 1465
                  c.and        s0, a4
                  andi         a7, t2, -1011
                  slli         t5, a6, 17
                  add          t4, a3, s2
                  c.addi       a7, -1
                  divu         s7, t2, s1
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 48
                  mulhsu       s10, a5, t4
                  addi         s7, s4, 1618
                  srli         a5, sp, 1
                  mulhu        s11, gp, s0
                  sltu         s2, a1, gp
                  ori          a5, s7, 704
                  slli         s11, t5, 29
                  srli         s2, s9, 15
                  c.mv         gp, t4
                  srai         a3, zero, 29
                  slti         t6, a2, 162
                  mul          s8, s4, t2
                  auipc        t6, 912097
                  c.xor        s0, a5
                  nop
                  c.nop
                  c.sub        a1, a3
                  slli         a4, s8, 11
                  srl          s8, a5, ra
                  c.li         s10, -1
                  slti         t4, t1, 778
                  c.srai       s0, 2
                  c.li         s3, 31
                  c.addi16sp   sp, -16
                  mul          s8, a1, s1
                  srli         a4, t0, 2
                  c.or         a1, a0
                  remu         a7, t1, s7
                  srai         s2, a1, 31
                  sll          s0, s1, tp
                  c.nop
                  srai         t6, a5, 9
                  c.addi4spn   a3, sp, 112
                  mulhsu       ra, a7, s4
                  add          s5, s9, s0
                  auipc        gp, 617168
                  srli         s7, s4, 19
                  c.xor        a2, a5
                  sll          a3, s8, s8
                  and          s8, a4, a5
                  remu         a3, a7, a1
                  sltu         t2, gp, s2
                  div          tp, a0, t5
                  c.addi16sp   sp, 320
                  c.xor        s0, a1
                  slli         a3, s9, 8
                  divu         t1, s5, a6
                  rem          t2, a6, a6
                  sub          a3, t5, t4
                  xori         t1, s11, 127
                  or           t4, a6, a0
                  c.addi       s8, -1
                  c.addi16sp   sp, -16
                  c.andi       a1, -1
                  c.nop
                  c.addi4spn   a5, sp, 496
                  c.andi       a0, -1
                  div          s6, gp, t6
                  sll          a0, s0, s5
                  nop
                  c.xor        s0, a4
                  c.add        a7, s11
                  mulh         t6, a7, a1
                  c.andi       s0, 28
                  rem          a4, a5, s1
                  c.srai       s0, 16
                  c.add        s11, t5
                  or           s0, s1, s5
                  or           t3, zero, s4
                  mulh         zero, sp, s7
                  andi         s10, a7, 1040
                  c.addi       t5, -1
                  rem          s5, a2, t3
                  c.srai       a4, 15
                  slt          s3, a7, sp
                  c.srai       a3, 27
                  and          t1, s5, s0
                  div          zero, s9, tp
                  or           s7, sp, s3
                  c.slli       a0, 13
                  sltiu        s3, s8, 1082
                  c.and        a2, a5
                  auipc        s6, 968587
                  divu         s0, s9, a0
                  sltiu        t3, s9, -1447
                  add          s2, t0, t0
                  c.addi4spn   s0, sp, 928
                  c.mv         a5, s8
                  c.andi       a2, -1
                  c.or         a3, a2
                  add          t4, a0, a7
                  slli         t0, s1, 5
                  srli         t2, a3, 13
                  mulh         tp, sp, t0
                  addi         s0, t6, 765
                  addi         ra, s0, -1271
                  srai         zero, t6, 5
                  c.li         a3, -1
                  ori          sp, t0, 544
                  c.xor        a2, s1
                  mulh         zero, a3, s6
                  auipc        t1, 895032
                  c.sub        a2, a4
                  mulh         a3, s0, zero
                  c.and        a1, s1
                  c.slli       t0, 19
                  slt          s3, t2, s7
                  srl          s0, a3, s7
                  mul          s10, a3, s7
                  c.addi       s8, 18
                  sltiu        t4, t3, 1599
                  remu         t4, a1, sp
                  c.mv         t6, a0
                  divu         ra, s6, t5
                  c.or         a4, a3
                  sll          a5, s8, ra
                  rem          s0, ra, a0
                  srli         a2, a5, 30
                  ori          s7, a6, -786
                  andi         s0, a4, -1102
                  c.srai       a5, 18
                  c.slli       s5, 20
                  c.slli       gp, 4
                  xor          s4, t4, a2
                  mul          s6, ra, a3
                  mulh         s2, s8, a2
                  mulhsu       a3, s2, s8
                  or           t4, s8, s8
                  srai         zero, s5, 15
                  slti         t0, a4, -1676
                  rem          s2, s6, t1
                  ori          a3, ra, -1116
                  sltiu        a5, a5, -1058
                  sltu         s8, t0, zero
                  srli         t4, t6, 19
                  lui          a3, 652622
                  c.mv         s6, t6
                  c.addi       a4, 15
                  slti         sp, a3, -983
                  mul          s8, s1, a1
                  add          a5, t4, s4
                  c.or         a5, a0
                  and          t1, s11, a1
                  nop
                  nop
                  c.mv         a7, s2
                  and          a5, s11, s11
                  xori         t1, t3, -1212
                  ori          a3, t6, -739
                  lui          t1, 49584
                  c.xor        s0, a4
                  mulh         a5, tp, a6
                  srai         sp, gp, 28
                  sltu         a1, a3, tp
                  c.li         s7, 13
                  and          t1, t5, a0
                  auipc        t5, 458949
                  srli         zero, t6, 26
                  sltu         a4, s1, s0
                  add          s7, a1, s10
                  srl          s0, s11, a6
                  slti         a7, ra, -1199
                  rem          a2, s1, s6
                  c.srli       a1, 31
                  srli         s3, sp, 14
                  c.xor        a3, a2
                  c.srai       a0, 4
                  andi         t2, a1, -1518
                  c.andi       a1, -1
                  c.li         sp, 31
                  mulh         s7, s2, s1
                  and          ra, t3, t0
                  c.srli       s0, 17
                  srl          a1, s3, s11
                  c.addi       a1, -1
                  or           s4, s9, ra
                  c.xor        a1, a2
                  sll          tp, tp, t6
                  c.mv         a4, t1
                  sll          tp, s9, t5
                  c.addi4spn   a3, sp, 960
                  c.li         t4, 7
                  lui          zero, 523726
                  andi         s8, s4, -253
                  lui          s6, 509255
                  c.xor        a0, a2
                  c.slli       a4, 9
                  nop
                  c.andi       a1, -1
                  c.andi       a5, -1
                  c.add        tp, t1
                  c.nop
                  and          a1, s10, s9
                  c.sub        a2, a2
                  c.xor        a2, a2
                  mulh         a7, s6, a1
                  lui          tp, 515329
                  c.mv         a5, s5
                  slt          gp, gp, zero
                  mul          a1, a0, a2
                  c.slli       s3, 17
                  divu         a7, s11, a3
                  c.xor        s0, a2
                  rem          s0, s3, t5
                  c.srli       a5, 4
                  slt          s0, t2, t2
                  c.lui        a0, 7
                  sub          s11, a5, s3
                  srl          sp, a6, s2
                  xori         s2, t6, -1619
                  remu         sp, s2, a0
                  div          gp, s6, s8
                  ori          t5, ra, 869
                  divu         t1, a0, t3
                  c.or         a2, a4
                  c.and        a3, s0
                  xori         gp, t5, -702
                  sra          a2, s8, s4
                  c.and        a5, a0
                  divu         tp, t1, sp
                  sltiu        s0, a7, -216
                  mul          s3, a5, t2
                  add          ra, s5, s3
                  sub          s11, s4, s8
                  ori          t4, t6, -1247
                  mulhu        t4, tp, s10
                  nop
                  sra          s4, a4, t2
                  auipc        s10, 43629
                  xori         a4, s5, -1599
                  lui          s2, 937761
                  srl          a1, s8, s3
                  xori         s4, t5, -569
                  addi         t2, a2, 539
                  srli         gp, s4, 18
                  lui          a1, 578663
                  c.slli       tp, 2
                  mulh         t0, t5, zero
                  xor          t6, s6, t0
                  rem          s2, t0, s3
                  ori          ra, a6, -684
                  slti         t0, s4, 1575
                  sll          t0, a3, a1
                  remu         t4, a1, s9
                  c.addi4spn   a2, sp, 144
                  and          zero, s5, t3
                  or           s6, a7, t0
                  c.addi16sp   sp, 416
                  srl          a7, s10, t5
                  srli         a1, s8, 12
                  c.mv         s10, t3
                  mulh         t1, ra, a5
                  srli         ra, a0, 30
                  lui          t2, 1026092
                  slt          s6, s1, sp
                  c.addi16sp   sp, 208
                  auipc        ra, 678531
                  srai         zero, a2, 18
                  srai         gp, tp, 3
                  c.sub        a1, a2
                  srai         t1, a3, 17
                  srl          a7, a1, sp
                  divu         t4, s0, t3
                  c.or         s0, a5
                  c.and        s0, a5
                  c.or         s0, a1
                  c.addi       s7, -1
                  slti         ra, t0, 183
                  and          a4, a6, a3
                  auipc        a4, 490908
                  srl          a7, a3, s9
                  sra          t3, zero, s11
                  div          a0, s4, s7
                  mulhsu       s11, s8, s6
                  c.sub        a5, a5
                  divu         a2, t5, s11
                  sra          t3, s3, sp
                  lui          s11, 651217
                  c.mv         t5, s1
                  auipc        a2, 542684
                  sub          s4, t5, a4
                  c.nop
                  nop
                  c.slli       s5, 25
                  lui          a7, 65688
                  lui          t5, 693493
                  addi         t3, a0, 388
                  auipc        s8, 551126
                  ori          t2, s5, -1903
                  c.nop
                  c.andi       a1, -1
                  c.li         s0, 21
                  xor          t6, a1, a1
                  div          sp, s1, sp
                  slli         zero, s7, 13
                  sub          s11, s11, a5
                  c.add        gp, s10
                  c.srli       a3, 10
                  srl          s3, t3, t6
                  c.addi4spn   a3, sp, 592
                  auipc        t4, 766364
                  c.nop
                  slt          t3, gp, s10
                  mulh         ra, t5, zero
                  andi         gp, ra, -1958
                  c.srli       a4, 3
                  sltiu        s2, t2, -871
                  slli         a0, s9, 12
                  slli         t0, s10, 14
                  c.xor        a5, a3
                  slti         s0, t2, 771
                  sll          s4, gp, s7
                  c.add        s10, s1
                  srai         t2, s11, 16
                  slti         t6, sp, 1836
                  sll          t2, a1, t0
                  sub          s2, s4, s6
                  addi         t1, a2, -974
                  c.andi       a4, -1
                  auipc        a0, 174119
                  remu         s8, a0, gp
                  xor          tp, a7, sp
                  slt          a7, zero, a0
                  sra          s2, s9, a3
                  xori         s7, s9, -446
                  c.and        a4, a4
                  srai         t0, gp, 23
                  c.mv         s5, a0
                  nop
                  c.add        s2, a7
                  remu         zero, a1, gp
                  and          a4, s6, a0
                  mul          a5, s7, zero
                  c.and        a4, a2
                  srli         t2, s1, 23
                  remu         s3, t2, s0
                  lui          t1, 176252
                  c.sub        a2, a0
                  mul          s2, tp, t4
                  mul          s5, t2, s8
                  and          a7, tp, s9
                  c.addi4spn   a0, sp, 656
                  slti         t3, t5, -1185
                  srli         a7, t6, 16
                  slli         a4, t0, 16
                  sltiu        s10, t3, -1209
                  c.addi4spn   a0, sp, 688
                  sra          s11, s4, s0
                  xor          t1, tp, a2
                  mul          a0, t0, s5
                  and          s7, t1, gp
                  ori          s0, a4, -847
                  xori         a7, s6, -31
                  c.slli       s11, 31
                  mul          t5, t6, s8
                  slt          s3, t1, s9
                  nop
                  mulhu        ra, tp, s0
                  c.addi4spn   s0, sp, 640
                  sltu         a4, t5, s1
                  c.sub        a3, s1
                  sltiu        t0, s4, 335
                  remu         a1, s7, a6
                  xori         s4, a1, -1807
                  xori         s4, gp, -480
                  lui          s6, 967894
                  auipc        s0, 283677
                  sll          a5, a6, s7
                  c.slli       s2, 7
                  c.lui        a4, 6
                  ori          a3, t6, 516
                  srl          ra, s11, s8
                  mul          s7, a2, s5
                  c.li         s2, -1
                  andi         s3, a2, 810
                  or           s2, a4, s6
                  c.addi       t4, 9
                  srli         t4, s0, 30
                  c.srli       a1, 11
                  mulhu        ra, t3, t4
                  and          t2, s10, t3
                  c.li         t1, 22
                  c.addi       s8, -1
                  c.slli       ra, 1
                  c.addi4spn   a0, sp, 400
                  srl          a0, t2, t3
                  nop
                  add          s8, s0, s6
                  lui          t1, 610679
                  mulhsu       s10, a4, zero
                  c.srli       a1, 15
                  srl          a5, s11, a6
                  andi         t2, a3, -1331
                  nop
                  sltu         t6, s9, s9
                  slli         s0, a3, 3
                  c.li         s3, -1
                  slli         s11, a1, 3
                  and          gp, sp, t4
                  c.and        a0, a3
                  srai         s10, t1, 5
                  lui          t3, 670953
                  c.addi4spn   a0, sp, 480
                  div          s11, t4, zero
                  c.addi4spn   s0, sp, 816
                  srli         s8, t3, 27
                  sub          t0, gp, a2
                  andi         ra, a5, 2035
                  c.or         a0, a3
                  c.andi       a4, 19
                  sltiu        a2, s4, 764
                  srli         a3, t4, 4
                  lui          s4, 810453
                  c.srai       a1, 31
                  c.sub        a5, a1
                  auipc        ra, 991300
                  sltiu        t6, a7, -814
                  srl          a7, t2, t3
                  c.or         a5, a2
                  c.mv         s4, s7
                  c.slli       s8, 26
                  c.xor        a4, a5
                  remu         s6, s4, tp
                  c.addi       t2, -1
                  add          sp, t1, a4
                  slli         s11, s8, 3
                  c.or         a1, a4
                  c.li         a7, -1
                  and          a1, a6, s6
                  c.andi       a3, -1
                  mulh         s3, s11, a1
                  sltu         s8, s10, a6
                  srai         t6, s4, 18
                  slti         s10, s4, -563
                  c.nop
                  slt          s4, t3, s9
                  c.addi       s4, -1
                  c.li         a5, -1
                  auipc        t2, 897084
                  srai         a7, s7, 1
                  srai         s10, a1, 26
                  or           t1, t2, t5
                  sra          ra, t2, s10
                  srli         s8, gp, 25
                  divu         s8, tp, a7
                  rem          s3, s9, s4
                  srli         t4, tp, 7
                  ori          ra, s9, -56
                  slli         s8, s11, 5
                  srl          a0, s6, a6
                  c.addi4spn   a1, sp, 160
                  lui          s7, 518179
                  addi         s5, s11, -2043
                  c.addi       a4, 11
                  c.xor        a3, a5
                  c.addi4spn   a2, sp, 912
                  lui          sp, 190628
                  srl          a7, t5, t1
                  srl          zero, s5, a6
                  sra          s10, s0, t1
                  sll          a5, a3, a1
                  mul          s11, s2, t6
                  c.nop
                  c.li         a4, -1
                  mulh         a2, zero, tp
                  c.sub        a2, a4
                  xor          s5, ra, s7
                  and          s0, tp, s9
                  c.add        t4, tp
                  nop
                  srli         s11, t2, 21
                  c.li         a2, 31
                  c.addi16sp   sp, -16
                  srl          a1, s3, t5
                  c.xor        a3, a1
                  rem          s11, a3, s4
                  ori          a5, zero, -845
                  slti         a3, t0, -128
                  srli         a0, t3, 30
                  c.xor        a3, s1
                  c.li         a0, 0
                  mulhsu       s3, a4, s3
                  add          s2, a4, s2
                  c.addi16sp   sp, -16
                  c.addi       s2, -1
                  c.nop
                  mulhu        s11, t1, a7
                  srai         t1, a4, 11
                  sltu         a4, s7, a6
                  c.addi4spn   a3, sp, 912
                  c.mv         s4, s7
                  c.addi4spn   a2, sp, 416
                  c.li         ra, -1
                  auipc        s11, 341913
                  slt          t4, t5, t6
                  c.srli       a4, 9
                  sll          t5, s11, s8
                  remu         s3, s7, ra
                  c.andi       a5, -1
                  c.li         s11, 23
                  mulhu        ra, s0, t1
                  c.srai       a3, 15
                  slli         t4, s0, 9
                  c.and        a0, a4
                  nop
                  c.and        s0, s1
                  divu         a1, s7, tp
                  mulh         sp, a1, s10
                  c.or         a3, a5
                  srai         t4, s3, 3
                  c.srli       s0, 28
                  slti         a0, sp, -1515
                  div          a4, s5, s7
                  c.addi16sp   sp, 176
                  andi         s3, a0, -16
                  c.andi       a3, 19
                  mulh         s3, a6, a5
                  c.slli       t2, 3
                  srli         zero, t2, 28
                  c.or         a2, a2
                  remu         t6, t5, t3
                  srai         a0, s10, 1
                  c.li         s0, 28
                  c.addi4spn   a4, sp, 848
                  lui          a1, 976032
                  mulh         a4, t5, s3
                  c.lui        t2, 6
                  divu         s5, s10, zero
                  addi         t4, s8, 688
                  srl          t2, a1, s9
                  remu         a2, s6, s2
                  nop
                  mulhu        s5, s5, t0
                  c.addi       t4, 9
                  lui          s0, 4723
                  div          s2, gp, a4
                  c.sub        a4, s1
                  c.slli       s5, 5
                  c.slli       a5, 20
                  ori          s5, s8, 349
                  mulhu        a7, s7, t0
                  c.addi       s8, -1
                  auipc        s8, 610742
                  c.addi       s10, 28
                  mulh         a3, s4, s0
                  c.nop
                  srl          t0, tp, a6
                  c.li         t1, -1
                  auipc        a5, 397832
                  c.li         t5, -1
                  rem          a7, s0, t6
                  rem          s2, t6, t2
                  slt          a3, t0, s2
                  mulh         s11, t4, s10
                  sltiu        gp, ra, -632
                  c.xor        a3, a3
                  c.sub        a1, a1
                  xori         t0, t1, -1291
                  mulh         sp, tp, a4
                  div          a2, sp, s8
                  or           t2, t3, s3
                  mulhu        sp, a0, s11
                  c.and        a0, a4
                  c.sub        a5, a3
                  remu         t5, s1, t3
                  remu         s3, s11, t5
                  c.addi4spn   a1, sp, 352
                  lui          a0, 231348
                  c.slli       a3, 8
                  andi         s5, s6, -1645
                  rem          s10, s7, s5
                  c.lui        a1, 31
                  remu         t6, zero, gp
                  sra          t3, s4, a0
                  mulhsu       t3, a3, tp
                  c.addi       s11, -1
                  slt          t1, s2, sp
                  sll          ra, a5, t3
                  sltu         a3, zero, t4
                  or           s2, s0, s5
                  xor          s6, a0, a2
                  c.or         a0, s1
                  add          s4, t5, a2
                  sltu         s7, s4, a6
                  c.srli       a2, 22
                  sltiu        t3, s9, 1572
                  sltiu        s6, a3, -1157
                  nop
                  srai         s10, s7, 29
                  mulh         a2, s8, a4
                  addi         s3, s6, 2006
                  add          gp, t5, a7
                  c.sub        a1, a4
                  c.add        s2, s6
                  or           ra, s3, sp
                  c.addi4spn   a2, sp, 448
                  c.nop
                  xori         a0, t5, -1725
                  c.lui        t3, 1
                  srli         a1, s8, 26
                  lui          a7, 6822
                  sub          s4, s8, s9
                  c.nop
                  c.and        a4, a1
                  sltu         a2, zero, s7
                  xori         s10, a1, -1597
                  srai         s8, t6, 24
                  sltiu        sp, sp, 3
                  c.or         a1, s1
                  rem          s11, s6, a2
                  c.add        s7, ra
                  srl          s0, s0, a3
                  c.xor        a4, a5
                  c.or         a0, a4
                  ori          sp, a6, -1880
                  mulh         a1, a5, a5
                  sra          gp, s9, ra
                  c.slli       t4, 16
                  xori         t1, s0, 1007
                  c.addi16sp   sp, 304
                  rem          ra, t5, a2
                  rem          a1, s1, s6
                  c.sub        a3, s1
                  div          s10, tp, tp
                  rem          t0, s9, a3
                  c.addi       tp, 16
                  mulhu        t5, t3, t4
                  c.li         t1, 12
                  c.srli       s0, 10
                  div          s0, t5, ra
                  slti         t5, t5, 15
                  remu         s11, s0, a7
                  addi         a3, t0, -1516
                  mulhsu       s10, a4, s7
                  sub          t5, s8, a1
                  c.mv         gp, s7
                  div          zero, s3, t2
                  add          a4, ra, a4
                  sltu         tp, s5, s6
                  sll          a7, s5, s6
                  c.addi16sp   sp, -16
                  slti         t0, t4, 405
                  c.and        s0, a1
                  remu         gp, s1, s0
                  remu         a5, t2, a4
                  c.or         a2, a4
                  slt          s3, a5, a0
                  sub          a7, a3, t2
                  rem          s7, t4, t2
                  nop
                  remu         s8, a3, t0
                  mulh         s7, s0, ra
                  rem          zero, s3, s10
                  mul          sp, s7, s10
                  sll          a2, s0, ra
                  c.addi       s8, -1
                  sll          a7, a6, s6
                  srli         t5, t0, 4
                  c.li         t4, 14
                  xor          a3, t1, s1
                  c.slli       s0, 9
                  c.li         t6, -1
                  andi         a2, s7, 2044
                  c.andi       a2, -1
                  mul          a7, s8, s9
                  mulhu        s3, gp, s2
                  or           a3, t2, s5
                  andi         sp, ra, 1746
                  slli         gp, t6, 26
                  c.and        a1, a2
                  c.slli       s5, 5
                  rem          zero, t3, a4
                  remu         s6, s0, t4
                  c.and        a5, a5
                  slli         s0, a2, 2
                  rem          a3, t3, sp
                  and          s4, s6, zero
                  c.andi       a3, 0
                  c.or         a1, a1
                  c.srli       a4, 28
                  sra          t6, a0, t2
                  mulhu        t0, t5, s9
                  c.addi16sp   sp, 384
                  mulh         a7, s6, a3
                  nop
                  mulhsu       t2, tp, a6
                  c.addi16sp   sp, -16
                  remu         s11, s9, t0
                  srl          a7, t4, ra
                  c.addi       a3, 4
                  c.lui        s8, 18
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           t6, 0xe5c01e56
                  li           gp, 0x80000000
                  li           sp, 0xffffffff
                  li           tp, 0x80000000
                  li           a0, 0x34244a31
                  li           t4, 0xffffffff
                  li           t0, 0x262645a6
                  li           s4, 0x81f12f46
                  li           a5, 0xffffffff
                  sub          gp, tp, a0
                  remu         sp, gp, t4
                  addi         s4, a5, -1166
                  nop
                  divu         t0, tp, a0
                  rem          a3, a0, s4
                  mul          s4, a0, sp
                  divu         sp, t0, a3
                  mul          t4, tp, a5
                  mul          a5, t0, s4
                  lui          sp, 929693
                  mulhu        t0, t4, t6
                  addi         tp, a0, -1595
                  mulhu        s4, t0, tp
                  addi         tp, a0, 2005
                  rem          gp, s4, a5
                  sub          tp, t4, tp
                  lui          t6, 70214
                  add          a3, gp, sp #end riscv_int_numeric_corner_stream_31
                  c.sub        a5, s1
                  mulh         ra, t6, t0
                  c.li         t1, 6
                  c.srli       a3, 28
                  sll          t4, s3, a1
                  c.or         a1, s0
                  c.add        a1, a3
                  andi         s0, s10, -1376
                  c.srai       a0, 15
                  c.lui        tp, 7
                  and          t5, a4, s5
                  sltu         s4, a7, t1
                  c.or         a5, s0
                  sltiu        a1, a6, -85
                  c.slli       s3, 15
                  c.and        a1, a4
                  srai         sp, s4, 14
                  auipc        sp, 676526
                  add          t4, a3, t6
                  c.slli       a0, 11
                  sll          gp, a1, sp
                  rem          s8, s9, s4
                  div          t5, s6, s11
                  sub          s11, gp, s10
                  add          sp, s0, s11
                  sltu         t2, a6, a1
                  sll          gp, t6, s1
                  nop
                  divu         a4, s1, t4
                  srli         t2, zero, 26
                  ori          s7, t3, 139
                  div          a0, s7, a0
                  c.srli       a5, 23
                  mul          s8, s7, s7
                  c.li         a0, 11
                  slt          s10, a0, t1
                  sltu         s2, s4, t4
                  ori          ra, s4, 1589
                  addi         s4, t0, 1470
                  andi         t4, a5, -1759
                  c.andi       s0, -1
                  ori          s10, a7, -1198
                  sub          a1, a4, a3
                  slli         ra, t6, 6
                  sub          a5, s9, a6
                  auipc        a2, 597545
                  slti         s8, t2, 840
                  sltu         t6, a6, s2
                  c.nop
                  auipc        s10, 424758
                  mul          s3, s4, a5
                  mulhu        t6, a6, gp
                  sltiu        s8, s2, 1596
                  mulh         s4, s8, a4
                  c.slli       s0, 8
                  slt          t5, s0, a4
                  andi         a7, a3, -1931
                  sra          s10, s6, a3
                  sll          s6, a2, s0
                  and          t3, t2, t0
                  ori          t1, a7, -1867
                  div          s7, t6, s8
                  ori          s0, t4, -171
                  rem          a7, s11, t5
                  andi         s11, a2, -1764
                  sltu         s10, t6, ra
                  addi         s0, s3, -859
                  c.or         a5, a5
                  srai         a1, s6, 4
                  c.srli       a1, 15
                  c.srai       s0, 30
                  rem          t5, a0, gp
                  c.sub        a3, a2
                  c.mv         a4, s10
                  and          ra, a1, a2
                  c.srai       s0, 16
                  sltiu        t6, a0, -282
                  c.addi       s2, 3
                  c.mv         t1, a7
                  auipc        gp, 139233
                  mulhsu       ra, t1, a2
                  remu         s2, gp, s0
                  and          gp, tp, s1
                  c.andi       a5, 31
                  mulh         s3, ra, s5
                  slt          s2, a1, ra
                  mul          s4, s8, s3
                  sll          a2, sp, t0
                  divu         tp, t6, t0
                  slli         t4, s7, 12
                  sll          a3, a5, a5
                  c.or         a2, a1
                  slt          sp, t6, s5
                  c.sub        a1, a4
                  sltu         t1, a2, s4
                  ori          a3, tp, 901
                  divu         t2, t1, zero
                  mul          s5, s0, a1
                  sltiu        s10, s1, -232
                  nop
                  remu         a1, t1, a1
                  c.xor        a1, a4
                  add          s4, s10, s11
                  c.addi       s2, -1
                  divu         zero, t3, s3
                  lui          s5, 332633
                  c.or         a3, a0
                  c.add        s0, s5
                  nop
                  sltiu        sp, s10, 1588
                  auipc        s3, 255002
                  c.srli       a2, 5
                  c.addi       s10, 19
                  slti         t4, zero, 603
                  sll          ra, t3, a4
                  c.li         a1, 26
                  c.sub        a1, a3
                  slli         a7, s1, 20
                  mulhu        ra, zero, a5
                  srli         a0, s10, 26
                  slt          sp, t5, ra
                  c.lui        s3, 8
                  sltiu        gp, s1, -526
                  c.add        s8, a2
                  slt          s5, s5, s3
                  sltu         a4, a2, tp
                  add          s11, t3, a6
                  xor          s11, sp, s4
                  c.add        s2, a1
                  c.addi16sp   sp, 160
                  c.addi16sp   sp, 16
                  c.addi       t4, -1
                  auipc        s2, 1027420
                  sltiu        a7, tp, 1369
                  add          s4, t1, sp
                  ori          ra, a1, -1239
                  c.slli       tp, 3
                  sltu         a0, a5, s6
                  sra          t4, t4, a4
                  srli         tp, tp, 2
                  sll          a1, s9, sp
                  c.addi4spn   a1, sp, 864
                  c.or         a5, a1
                  xor          s0, s5, a1
                  sra          s5, a2, t3
                  c.li         tp, -1
                  sll          s7, t0, sp
                  remu         s0, tp, tp
                  c.xor        a1, a0
                  c.addi4spn   a1, sp, 336
                  or           sp, t5, t2
                  mulhsu       s6, a1, ra
                  slt          a2, a6, s5
                  c.addi16sp   sp, -16
                  c.lui        a1, 7
                  c.addi4spn   a2, sp, 16
                  and          t4, sp, s11
                  ori          zero, s6, -623
                  or           s2, s2, t2
                  c.mv         s5, s1
                  nop
                  srl          sp, s9, sp
                  xori         a3, a5, -447
                  c.li         a1, -1
                  sltu         s2, zero, s2
                  sltiu        t2, zero, -1854
                  xori         a1, s10, 1459
                  c.andi       a2, 8
                  c.add        tp, s1
                  c.slli       a1, 3
                  nop
                  srli         a3, t5, 26
                  c.slli       a2, 21
                  c.slli       a7, 16
                  auipc        a7, 382884
                  xor          s2, a7, a6
                  c.addi       t1, -1
                  c.li         s4, -1
                  div          s7, s8, s6
                  nop
                  c.andi       a3, 8
                  sltu         ra, s6, s5
                  andi         ra, s11, -1307
                  c.nop
                  slli         t3, a7, 9
                  auipc        a2, 1034687
                  sra          s8, gp, a4
                  c.slli       t6, 5
                  and          s3, t4, zero
                  slli         s8, sp, 25
                  srai         a1, ra, 30
                  slli         t5, t4, 7
                  and          s5, s3, gp
                  div          s3, t0, tp
                  divu         a4, s3, a6
                  add          s5, t5, a7
                  c.srai       a0, 23
                  c.andi       a5, -1
                  slli         s0, a3, 9
                  c.nop
                  xor          s10, tp, a1
                  andi         t2, s9, -627
                  sub          zero, s1, s0
                  and          s4, a1, s5
                  and          a1, zero, t3
                  c.andi       a5, -1
                  lui          s0, 226885
                  addi         ra, tp, 1981
                  c.nop
                  mulh         t0, a4, t0
                  mul          t0, a0, s2
                  c.addi4spn   a3, sp, 752
                  srl          t6, ra, s6
                  mulh         t2, a7, a2
                  mul          a2, s6, t5
                  c.addi4spn   a3, sp, 896
                  c.nop
                  c.addi       t3, 17
                  c.add        tp, t5
                  c.add        a3, s11
                  c.addi4spn   a1, sp, 96
                  sltiu        a3, s0, -215
                  slti         t0, s4, -370
                  srli         s8, s9, 17
                  srli         t6, ra, 21
                  sub          s4, s2, s3
                  c.li         tp, 17
                  add          t4, ra, a7
                  slti         ra, tp, -382
                  sltu         s0, s2, s7
                  c.addi4spn   a1, sp, 912
                  c.srai       s0, 15
                  sub          s4, t4, s4
                  lui          s10, 69994
                  srai         t3, s6, 23
                  xor          a2, s9, a3
                  mul          a2, s11, t2
                  sub          s11, s10, s5
                  sra          t4, s0, a2
                  slt          s4, zero, t2
                  sltiu        a3, a7, -1868
                  remu         a7, zero, a2
                  c.lui        t4, 7
                  mulhu        a0, s7, t0
                  slti         s6, a6, 1534
                  slt          a2, s10, t1
                  c.addi16sp   sp, -16
                  c.li         a5, 1
                  c.lui        a4, 10
                  c.slli       ra, 19
                  c.addi4spn   a1, sp, 736
                  auipc        t3, 916810
                  c.mv         sp, s3
                  c.addi       t1, -1
                  c.add        tp, s6
                  div          a4, a5, a6
                  mulhu        tp, s9, sp
                  c.addi16sp   sp, -16
                  div          t4, t1, s3
                  slli         gp, t4, 8
                  c.slli       t4, 7
                  lui          a3, 314169
                  sub          t1, a2, s8
                  c.srai       s0, 9
                  srai         gp, s8, 8
                  c.andi       a1, 28
                  c.add        s7, s7
                  c.lui        s4, 16
                  div          gp, a4, s4
                  auipc        t3, 241371
                  c.add        a1, s0
                  srl          a4, s1, s0
                  c.slli       tp, 20
                  c.nop
                  c.mv         gp, s9
                  srli         s4, s3, 14
                  mul          t6, s3, sp
                  c.li         s8, -1
                  addi         tp, t5, 390
                  c.addi4spn   a3, sp, 960
                  addi         a7, t2, 411
                  remu         t5, t0, a7
                  srli         s8, s2, 14
                  c.addi4spn   a3, sp, 320
                  auipc        s0, 113117
                  xori         sp, t3, 1116
                  c.xor        a3, s0
                  remu         s7, s1, a5
                  ori          t4, s5, 1554
                  mulh         a3, s0, s2
                  sltu         t4, s6, a2
                  ori          t6, a7, 22
                  c.addi       a1, 20
                  xori         a2, s11, -647
                  mulhsu       s11, t1, a1
                  xori         s2, a3, 175
                  c.andi       a0, -1
                  c.addi       gp, -1
                  nop
                  add          t4, s0, a1
                  slti         s11, a7, -21
                  nop
                  c.andi       a3, -1
                  c.addi4spn   a2, sp, 160
                  xor          t1, t6, tp
                  c.andi       a1, 24
                  remu         a3, t6, s2
                  nop
                  srai         a3, t2, 17
                  mul          gp, a6, ra
                  sll          a1, a0, s9
                  srl          a0, t0, a1
                  auipc        s7, 675497
                  divu         t5, t0, a7
                  ori          t1, a6, 840
                  mulhsu       a7, a5, t3
                  c.addi4spn   a4, sp, 496
                  nop
                  rem          t5, s7, s7
                  srli         s7, t3, 12
                  mulhsu       a2, gp, s0
                  c.or         s0, a2
                  c.or         a1, a5
                  rem          s5, t6, s6
                  mul          t2, s7, a2
                  c.srli       a3, 28
                  c.mv         s11, t4
                  xor          s8, gp, s8
                  divu         t3, s9, a6
                  c.and        a5, a4
                  nop
                  srl          s10, zero, a6
                  slt          zero, t4, s1
                  srl          t1, s9, tp
                  sll          sp, s2, s2
                  c.addi4spn   a4, sp, 112
                  c.li         s2, -1
                  slli         s3, s3, 10
                  or           sp, s2, a7
                  c.and        a0, a1
                  c.addi16sp   sp, 224
                  slti         s0, s5, -1202
                  c.addi16sp   sp, -16
                  sra          t0, a4, ra
                  slli         ra, s5, 0
                  andi         s3, a4, -1363
                  lui          a1, 1005339
                  srli         a7, a6, 23
                  slt          a2, s6, t4
                  c.srli       a0, 4
                  c.andi       a1, -1
                  divu         s10, gp, a2
                  c.slli       a1, 21
                  remu         t1, s0, s9
                  addi         zero, gp, 316
                  slli         a2, zero, 4
                  xori         s11, ra, 1730
                  c.addi16sp   sp, -16
                  and          gp, t6, s5
                  div          a0, gp, s5
                  c.mv         a4, s7
                  c.slli       sp, 25
                  srai         ra, ra, 7
                  c.add        sp, s5
                  c.xor        a5, a0
                  sll          zero, s10, sp
                  sll          s2, s10, s7
                  sltu         ra, s8, a4
                  c.andi       a5, -1
                  divu         s7, a3, ra
                  or           ra, s9, a1
                  sub          t5, a4, t6
                  srl          s8, a4, s11
                  nop
                  c.srli       a3, 15
                  div          s3, s6, s3
                  c.srli       a5, 9
                  andi         a7, s5, 425
                  c.slli       s5, 24
                  sltiu        tp, s3, 147
                  sub          t0, a4, t3
                  c.xor        a1, s1
                  c.sub        a4, s0
                  c.lui        a2, 31
                  rem          s8, s10, t6
                  c.andi       a5, 25
                  c.and        a4, a1
                  slli         a0, s10, 7
                  rem          tp, a1, t2
                  c.addi4spn   a2, sp, 880
                  divu         s11, s3, a7
                  and          s5, t3, s7
                  c.srai       a5, 12
                  mul          t4, s7, ra
                  srai         a1, a0, 23
                  c.andi       a3, -1
                  lui          ra, 324275
                  c.add        a3, ra
                  sltu         a1, t6, s2
                  mulhu        t0, t4, s2
                  mulhu        a5, s1, gp
                  c.addi16sp   sp, 400
                  mul          gp, s6, a3
                  andi         gp, s11, -420
                  c.addi16sp   sp, -16
                  slt          a1, gp, a6
                  srai         a1, zero, 31
                  c.and        a5, a3
                  sll          a7, s8, s10
                  div          s3, t2, s4
                  rem          a2, zero, zero
                  c.and        a2, a1
                  divu         s6, a5, a2
                  srl          t1, a4, t4
                  c.xor        a3, a2
                  slt          sp, s4, s3
                  srli         sp, t5, 0
                  c.sub        a5, a0
                  sub          a3, t0, a0
                  c.and        a1, s0
                  c.srai       a2, 11
                  c.andi       s0, 7
                  slli         s6, a4, 6
                  sll          s6, t0, gp
                  andi         s5, a7, 1298
                  slt          t1, a7, gp
                  sltiu        s8, a1, 291
                  c.andi       a3, 13
                  or           s8, t4, t1
                  c.srai       a0, 18
                  add          a1, gp, a6
                  ori          s4, s1, -1195
                  c.lui        gp, 14
                  slt          s4, sp, a6
                  c.or         a1, a5
                  nop
                  c.nop
                  andi         t2, a6, -47
                  div          t1, a7, t2
                  rem          zero, s0, t6
                  mul          t6, a4, a1
                  c.addi4spn   a0, sp, 48
                  sltu         s7, a3, t2
                  slli         a3, s2, 23
                  c.lui        a0, 27
                  mulhu        gp, s2, t2
                  slt          s3, s1, gp
                  c.addi16sp   sp, -16
                  c.srli       a4, 2
                  xor          s2, ra, s3
                  mulhu        tp, sp, s7
                  c.xor        a5, s0
                  sra          a0, a6, s6
                  c.or         a3, a5
                  xor          tp, t1, t5
                  div          s11, t0, s7
                  sra          sp, s1, s10
                  nop
                  divu         a7, s4, ra
                  srl          s2, zero, zero
                  c.nop
                  c.xor        a1, a1
                  ori          a0, s9, -1988
                  remu         t3, s4, s9
                  c.srai       a2, 1
                  mulhsu       a2, zero, s7
                  c.li         ra, 10
                  c.or         a0, a4
                  c.andi       a4, 22
                  sltu         s10, s8, a3
                  auipc        s10, 242633
                  sra          s2, t3, a0
                  mul          tp, s4, t1
                  mulh         s8, zero, t6
                  or           sp, t1, s0
                  c.sub        a3, a5
                  c.srli       s0, 21
                  auipc        zero, 104899
                  c.nop
                  slt          s7, a7, gp
                  c.li         a7, -1
                  mulhu        a4, s7, t5
                  c.xor        a5, a4
                  slti         a0, a4, 549
                  mulh         gp, t1, s3
                  div          t6, t2, a7
                  slti         t6, t1, 1370
                  srl          t0, a4, s5
                  sltiu        t1, tp, 1656
                  mulh         s8, sp, a6
                  divu         a1, ra, s6
                  div          a5, s3, t2
                  c.srli       a4, 29
                  c.and        a3, a1
                  c.addi16sp   sp, -16
                  andi         a3, s7, -1986
                  mulh         s7, t5, s3
                  andi         s4, a3, 1100
                  slt          s8, sp, t6
                  sra          tp, t1, a5
                  c.slli       s7, 12
                  mulh         t4, s3, s9
                  nop
                  c.or         a2, s1
                  c.addi       a4, 19
                  slt          s6, s2, ra
                  srai         s3, t4, 29
                  mulhu        s8, t3, s9
                  ori          s0, a7, 1895
                  slt          t4, s1, a6
                  c.srli       a4, 5
                  addi         t0, a3, 418
                  c.addi16sp   sp, -16
                  andi         t4, a2, -1766
                  slti         t0, s11, 2028
                  c.and        s0, a2
                  c.sub        a3, a2
                  c.mv         a2, s2
                  remu         t6, s7, t0
                  div          s0, t6, s10
                  slt          s5, a0, sp
                  ori          t6, t4, -702
                  c.xor        a2, a4
                  c.and        a3, s0
                  c.nop
                  mulhsu       zero, s0, s7
                  mulh         sp, s2, s1
                  c.slli       t4, 6
                  sltiu        a7, a2, -1221
                  c.slli       a2, 9
                  remu         s7, s6, s0
                  rem          a3, gp, s6
                  c.lui        ra, 11
                  slli         a2, a7, 9
                  mulhu        t4, s9, s6
                  and          s8, s4, t0
                  mulh         sp, t3, s2
                  srl          a7, s8, tp
                  sltu         t1, s2, t6
                  mulh         a5, s6, s10
                  add          s0, t1, s2
                  sltiu        a1, tp, 321
                  and          a5, a0, zero
                  sll          s3, a4, tp
                  c.or         a1, a1
                  sub          t3, a6, t4
                  divu         a1, gp, a4
                  mulhu        s11, t5, t1
                  divu         a1, a6, s10
                  sra          s7, a7, s9
                  sub          a2, a7, t5
                  ori          sp, gp, 455
                  and          s11, s3, a0
                  c.nop
                  xor          s0, a6, a7
                  c.xor        a2, a3
                  sll          sp, a2, s4
                  mul          t4, a3, t5
                  slt          a2, s11, s0
                  c.and        a2, s0
                  c.srai       a5, 24
                  slti         sp, s6, 148
                  slt          a1, a0, s0
                  c.slli       t6, 16
                  ori          ra, a0, 1017
                  c.addi       s0, 25
                  slli         a2, s8, 15
                  srai         t5, s10, 28
                  auipc        s7, 108525
                  srl          s6, sp, a0
                  slli         a1, t6, 4
                  xori         t4, a4, -339
                  c.andi       a0, 29
                  mul          s11, t4, s0
                  c.addi4spn   a0, sp, 96
                  c.sub        a2, a2
                  andi         gp, s0, 585
                  c.addi16sp   sp, 16
                  c.xor        a2, a0
                  c.andi       s0, -1
                  srai         s2, a6, 2
                  c.or         a5, s0
                  c.srli       s0, 10
                  div          t3, s4, t4
                  c.srai       a0, 9
                  lui          s6, 654017
                  mul          t3, s5, tp
                  sltu         t1, s3, a1
                  addi         s11, t4, -542
                  xori         a4, a6, 1110
                  c.add        a3, s6
                  c.nop
                  c.nop
                  divu         a4, s8, a2
                  slti         a0, a2, -742
                  mul          s4, ra, ra
                  c.and        a4, a3
                  c.or         a3, a2
                  c.li         a3, -1
                  xor          ra, a3, ra
                  c.li         a0, -1
                  slli         sp, gp, 25
                  c.li         s8, 31
                  sll          t0, a1, s9
                  or           t4, s1, zero
                  mul          t6, s8, s5
                  rem          s7, s9, s10
                  c.mv         tp, s9
                  c.andi       a2, -1
                  divu         s11, a6, s4
                  addi         s0, s9, -169
                  mulhsu       s5, s5, t0
                  mulhu        s11, s10, t2
                  mulh         tp, zero, gp
                  c.lui        t3, 5
                  slti         a5, s0, 992
                  c.sub        a3, a3
                  slti         s10, t5, -249
                  c.xor        a5, a5
                  addi         a3, t0, 1850
                  remu         s6, t2, a4
                  nop
                  srl          t0, a0, s2
                  andi         a3, a4, 1269
                  ori          t1, a0, 725
                  mulh         t3, zero, t3
                  c.addi4spn   a0, sp, 448
                  xor          tp, t4, s10
                  lui          a2, 98319
                  divu         t0, s5, t0
                  mulh         t0, t0, t0
                  c.srai       a1, 11
                  c.nop
                  c.lui        ra, 12
                  auipc        s0, 300471
                  add          s3, a7, a7
                  ori          a3, t3, 1480
                  sltu         t2, a6, t6
                  lui          t2, 431205
                  div          a3, tp, t3
                  mulh         sp, s4, a6
                  and          s2, s1, s5
                  nop
                  srai         zero, t0, 30
                  lui          t4, 112986
                  divu         t3, a3, s11
                  srl          s5, t0, a0
                  andi         t2, s0, -476
                  c.xor        a1, a0
                  c.srli       a2, 3
                  xori         s11, t6, 1560
                  c.and        a3, a4
                  c.slli       gp, 19
                  sltu         s3, s1, sp
                  auipc        s11, 154358
                  slti         a7, a1, -32
                  slt          t4, s5, s8
                  div          s10, a4, t6
                  divu         t4, a4, s11
                  sra          s11, a1, ra
                  rem          a3, s5, a6
                  sll          gp, t3, s6
                  c.addi4spn   a3, sp, 288
                  c.addi4spn   a3, sp, 800
                  sltu         t2, s11, t0
                  c.slli       a3, 25
                  ori          a2, s0, -1516
                  rem          a4, s6, t4
                  rem          s0, s9, s1
                  sub          gp, t4, s1
                  c.add        s7, a5
                  and          a3, s4, sp
                  slt          a2, t4, t0
                  and          a1, a0, s1
                  sub          t4, s3, a6
                  c.mv         s0, t0
                  slti         s6, a2, -231
                  mulhu        a2, t6, s7
                  slli         a5, gp, 1
                  div          a7, s5, a4
                  divu         s11, s0, s8
                  c.xor        a1, a2
                  div          s6, t1, a3
                  remu         t3, t4, a1
                  srai         s2, a3, 27
                  mulhu        t4, s6, s1
                  mulhu        s10, s5, a4
                  c.addi16sp   sp, 128
                  c.lui        t3, 19
                  c.mv         t4, ra
                  srai         s4, tp, 0
                  and          s5, a6, s7
                  addi         t3, s2, -1025
                  sltu         sp, sp, a3
                  srli         s7, t1, 28
                  sra          a5, s7, a6
                  c.xor        s0, a2
                  c.and        s0, s0
                  c.or         a5, a4
                  c.srli       a3, 12
                  srli         s8, t1, 9
                  c.slli       s2, 24
                  srl          gp, t0, a3
                  c.slli       s10, 6
                  c.xor        s0, a2
                  andi         gp, a5, 401
                  sra          t4, s7, gp
                  andi         s3, t3, -404
                  c.nop
                  sltiu        s3, ra, -1993
                  rem          t6, s8, a5
                  c.addi       s0, -1
                  sltu         ra, s7, a1
                  ori          t3, a0, 1045
                  c.li         a7, 27
                  c.or         a4, a0
                  sltu         zero, t5, a1
                  c.slli       t2, 25
                  mul          t5, a4, s8
                  c.sub        s0, s0
                  addi         s0, s8, -1127
                  sra          s2, s6, t0
                  nop
                  c.srli       a2, 7
                  and          s8, t0, s3
                  c.and        a4, s1
                  or           ra, t0, s9
                  mul          t4, s5, s7
                  c.addi16sp   sp, 192
                  rem          tp, a7, s3
                  c.li         a5, -1
                  slli         t5, s3, 1
                  andi         s2, tp, -1071
                  remu         s4, a1, s1
                  c.srli       a1, 22
                  rem          a3, s10, t6
                  c.mv         s10, s9
                  sll          t5, s10, s8
                  sub          s10, ra, a1
                  xor          t5, a3, s7
                  mulhu        zero, t5, t1
                  lui          tp, 1006775
                  c.addi4spn   s0, sp, 304
                  c.nop
                  sll          s2, ra, a6
                  srai         s0, t6, 13
                  c.or         a2, a4
                  auipc        a4, 63448
                  c.slli       s5, 26
                  c.and        a0, s0
                  srl          t4, s7, a5
                  rem          t1, a4, s5
                  srai         s0, a2, 5
                  c.slli       t3, 21
                  xor          a3, a5, t4
                  srl          a3, s9, a6
                  lui          s3, 539009
                  c.or         a1, s0
                  rem          t5, t0, t0
                  c.addi16sp   sp, 304
                  remu         a5, a1, a1
                  add          a2, a7, t5
                  and          s4, t0, a7
                  c.srli       a4, 11
                  srl          a3, zero, t2
                  sltiu        sp, a3, -541
                  or           gp, sp, s8
                  sra          t2, s10, s10
                  rem          a4, t4, s7
                  divu         s6, a7, gp
                  c.and        a1, s1
                  c.xor        a1, a2
                  andi         a0, a6, 912
                  ori          s7, s8, 715
                  srai         tp, gp, 13
                  c.addi16sp   sp, 112
                  addi         s5, s4, 1329
                  and          t2, a6, s5
                  lui          a4, 796223
                  slt          ra, s9, s10
                  slt          s3, t1, tp
                  slli         t0, a7, 20
                  sll          t6, t4, s6
                  c.srai       a0, 30
                  c.mv         a5, s8
                  sub          t4, ra, ra
                  c.addi16sp   sp, 384
                  c.li         s4, 3
                  c.slli       s0, 21
                  div          s10, zero, a5
                  c.mv         t1, a1
                  add          a5, s3, s7
                  c.and        a1, a2
                  mulhu        t2, s2, s0
                  or           a7, s2, s11
                  c.and        s0, s0
                  c.andi       a1, -1
                  add          s6, a2, a6
                  mulhu        t0, a4, s10
                  lui          s2, 10552
                  sltiu        s2, t0, 905
                  c.add        s2, a0
                  xori         s8, s10, 501
                  srli         sp, t3, 16
                  srl          zero, t1, ra
                  remu         zero, s10, s10
                  c.andi       s0, -1
                  slti         a3, s11, -336
                  srai         s0, t4, 30
                  ori          t1, s3, -650
                  rem          ra, s7, tp
                  c.andi       a3, -1
                  srli         s8, a1, 26
                  c.and        a2, a3
                  sll          s0, zero, tp
                  addi         t6, s5, -655
                  sra          a4, s6, gp
                  sll          a2, tp, a7
                  c.addi       s0, 27
                  srl          t6, tp, s3
                  addi         t0, s5, 216
                  rem          s3, a4, t3
                  xor          t1, t2, s3
                  slti         sp, s7, 1630
                  srl          s2, a1, a4
                  c.sub        a5, s0
                  xori         a0, s2, 1814
                  c.and        a1, a4
                  sltu         s0, a0, s9
                  srli         s0, t6, 25
                  c.nop
                  add          a0, gp, a3
                  c.srai       a1, 14
                  xori         zero, s7, -439
                  slli         s6, a1, 6
                  srli         t4, s10, 2
                  c.addi       sp, 24
                  c.and        a4, a4
                  rem          t6, t6, s8
                  remu         a5, s11, s4
                  srai         zero, a0, 4
                  srl          a1, a1, s0
                  ori          s6, zero, 606
                  c.and        a2, s1
                  c.srai       a1, 5
                  c.or         a2, a0
                  addi         a3, s1, 530
                  or           a1, s1, s10
                  srai         a1, tp, 30
                  mulhsu       a0, s5, a7
                  srli         s6, t3, 4
                  c.slli       s8, 18
                  c.sub        s0, a5
                  mulhu        s8, sp, t5
                  sra          s0, t2, a4
                  srl          a7, t6, t0
                  mul          s7, a3, ra
                  mulh         ra, a2, s6
                  slti         s10, t5, 49
                  sll          a1, a1, s0
                  andi         s2, s11, 982
                  xor          a5, a3, a1
                  c.nop
                  div          t5, a1, t2
                  c.nop
                  ori          sp, a5, 1052
                  or           s4, t0, s2
                  rem          a7, s0, t2
                  c.and        a0, a1
                  xor          s8, t0, a3
                  div          a7, t1, tp
                  srl          t1, s1, s6
                  xori         t0, zero, 791
                  sltiu        a5, ra, 955
                  sra          a5, s4, s0
                  remu         t5, s7, a2
                  c.addi4spn   a3, sp, 80
                  lui          s3, 627531
                  srai         a7, s7, 20
                  divu         s11, sp, a5
                  c.li         a5, 7
                  lui          s11, 426793
                  sll          t4, a6, s7
                  srli         a3, s4, 28
                  addi         t3, s1, -1951
                  slt          s11, a2, s7
                  c.xor        a1, a1
                  mul          a5, t2, a7
                  c.and        a5, s0
                  xori         s2, s9, -1770
                  slti         a5, a4, -1299
                  xori         s11, t5, -1764
                  c.lui        tp, 11
                  sltiu        s7, t0, -648
                  c.or         s0, a1
                  mulh         t0, s8, s4
                  c.lui        a7, 14
                  srl          t5, t5, t0
                  c.addi16sp   sp, -16
                  xori         a7, s6, -616
                  or           s3, s2, s10
                  nop
                  srai         s0, a7, 20
                  c.sub        s0, a5
                  c.li         a7, -1
                  sltiu        t0, t3, -53
                  sltiu        a7, s7, -940
                  addi         zero, s11, -939
                  mulh         s11, a1, t6
                  srli         t4, a1, 18
                  mulhu        t5, s3, a1
                  div          t4, sp, s2
                  c.srli       a1, 21
                  c.nop
                  auipc        t4, 888765
                  c.add        tp, t1
                  c.andi       a4, 12
                  mulhu        t5, s9, s9
                  slli         t2, s5, 28
                  mul          t1, gp, t0
                  slli         gp, a3, 26
                  div          s8, a5, ra
                  addi         s2, t5, 1330
                  add          tp, t6, t1
                  c.slli       s0, 2
                  c.and        a1, a1
                  slli         a0, a6, 6
                  addi         t0, t6, -1285
                  rem          a4, a2, s7
                  addi         a3, s8, -1644
                  c.addi       a7, 25
                  c.and        a4, a0
                  c.addi       a2, -1
                  auipc        sp, 881937
                  c.addi4spn   a4, sp, 64
                  slt          t5, gp, s9
                  sll          s2, a4, a3
                  rem          ra, s10, s6
                  c.li         s2, 30
                  sll          a0, t5, s10
                  add          a7, gp, s8
                  div          t4, s2, a1
                  rem          sp, a3, a2
                  mulhu        t5, s6, s4
                  c.xor        a0, s0
                  c.srai       a4, 18
                  andi         s5, a2, -1865
                  c.or         a5, s0
                  and          t5, a5, a0
                  sub          a5, s5, a2
                  mulhu        ra, a4, s6
                  ori          a5, s11, -1065
                  c.or         a3, a1
                  slt          t5, zero, s9
                  c.lui        a3, 10
                  c.mv         t3, gp
                  remu         t0, t0, a5
                  sltiu        s5, a2, 1096
                  addi         a7, t6, 570
                  c.or         a4, a5
                  sub          a7, sp, a2
                  c.and        a5, a0
                  div          a7, s9, a3
                  srli         s0, a7, 23
                  c.srli       a1, 28
                  c.addi16sp   sp, 32
                  c.or         a3, a2
                  sll          a0, t0, s1
                  ori          gp, s7, -415
                  c.addi4spn   a2, sp, 608
                  div          a5, t4, s6
                  lui          t1, 533548
                  sll          t6, tp, ra
                  mulhsu       gp, t0, a6
                  c.andi       a2, -1
                  ori          t4, a3, -1795
                  addi         s8, t3, 154
                  c.srai       a1, 20
                  rem          a2, t5, a5
                  mul          a2, sp, s8
                  mul          tp, tp, a0
                  c.nop
                  and          t0, s0, s6
                  add          s11, t3, s10
                  andi         tp, s5, 326
                  div          a4, t2, t2
                  andi         tp, s0, -1554
                  c.and        s0, a2
                  c.sub        a2, a0
                  add          a3, s3, t4
                  srl          a7, sp, t4
                  c.li         sp, 7
                  c.lui        s2, 2
                  c.or         a4, a0
                  c.mv         s0, tp
                  c.xor        a2, a0
                  div          a2, a0, t1
                  c.xor        a1, a3
                  srai         s6, t0, 14
                  slt          a4, s10, t1
                  sltiu        gp, t1, -1480
                  and          s10, t5, a2
                  c.slli       a1, 5
                  lui          t1, 544922
                  xor          t3, a7, a6
                  c.andi       a4, -1
                  rem          t6, a6, s8
                  c.slli       s4, 1
                  mul          a5, a1, t0
                  mul          t5, t0, a3
                  xor          t6, s1, a2
                  mulhu        s8, s8, s0
                  mul          a1, s6, s1
                  sll          a7, ra, t4
                  or           s6, s7, s4
                  ori          t4, t3, -378
                  and          t2, s6, s5
                  c.sub        a0, a3
                  c.sub        a5, a0
                  c.addi       ra, 7
                  slli         t5, sp, 14
                  srli         a4, t6, 10
                  div          gp, t5, t0
                  sra          a0, t0, s4
                  div          a4, sp, t5
                  lui          a0, 397170
                  c.srai       a4, 23
                  slt          s2, a4, s6
                  c.or         a0, a0
                  srli         zero, a0, 1
                  and          s3, ra, s4
                  c.nop
                  lui          ra, 953226
                  xori         a0, gp, -1951
                  c.addi4spn   a4, sp, 80
                  c.xor        a1, a1
                  c.sub        a5, s1
                  c.mv         s11, s9
                  c.mv         s4, a7
                  c.srai       a3, 5
                  c.lui        s7, 23
                  c.li         t2, 16
                  xor          s4, a0, a5
                  nop
                  div          a5, a1, a7
                  nop
                  and          s0, a3, a7
                  sltiu        s4, ra, 926
                  lui          s10, 68800
                  slt          s3, a3, t5
                  lui          t2, 494017
                  lui          t2, 709679
                  sub          t2, a6, t3
                  add          s6, ra, a7
                  divu         a2, zero, t1
                  slt          gp, s10, s11
                  lui          a1, 660857
                  srai         t3, a7, 11
                  c.lui        a7, 6
                  c.add        t0, s2
                  xor          s11, t4, gp
                  mulhu        t6, s4, s1
                  xor          t5, a3, t3
                  nop
                  c.and        s0, a2
                  addi         a2, a5, -1495
                  addi         t0, a1, -803
                  sub          s11, s4, t0
                  sra          s3, s8, s2
                  c.addi       a4, 30
                  srli         s4, t4, 2
                  c.addi16sp   sp, -16
                  sltu         t1, s5, sp
                  c.andi       a3, 29
                  srai         zero, s7, 0
                  sll          t1, s6, zero
                  sltiu        a5, ra, 1457
                  andi         tp, t4, -1902
                  c.slli       a2, 21
                  xor          a3, s1, a2
                  c.srli       a0, 6
                  c.lui        tp, 4
                  c.mv         a0, s2
                  slt          a0, a0, s3
                  sub          s11, a5, s9
                  slt          s5, s9, s5
                  xor          s4, t1, s10
                  srai         s8, a7, 19
                  sltiu        s10, a7, 305
                  or           a7, sp, t6
                  c.srai       a2, 10
                  c.srli       a2, 3
                  srai         ra, s8, 2
                  xor          s2, ra, tp
                  divu         a7, t4, t3
                  srli         zero, t0, 20
                  divu         t5, t0, a1
                  c.srai       a3, 8
                  add          a7, t4, s11
                  slti         s5, s6, 993
                  sltu         s4, s10, a6
                  auipc        ra, 292251
                  c.sub        a2, a1
                  slti         ra, s9, -976
                  slli         a7, t2, 7
                  mulhsu       s10, s4, s10
                  slti         s4, s9, -960
                  remu         a0, t5, ra
                  srli         a4, s0, 2
                  sll          s11, s8, a7
                  sll          tp, a0, s5
                  c.srli       s0, 5
                  ori          s6, a6, -174
                  mulh         t4, t2, s10
                  c.srli       s0, 4
                  c.srli       a0, 20
                  c.srli       a1, 20
                  srli         sp, a5, 3
                  mul          ra, t5, t1
                  c.xor        a2, a3
                  sll          t1, a0, a4
                  sltiu        s10, zero, -1694
                  c.add        a2, s0
                  mul          t4, s6, a1
                  c.addi4spn   a2, sp, 352
                  mul          tp, a7, t4
                  c.srli       a5, 2
                  slli         s0, s4, 1
                  lui          s11, 871931
                  c.andi       a0, -1
                  c.add        s2, sp
                  rem          a3, t5, s8
                  auipc        a2, 860265
                  mul          t1, s8, s10
                  and          sp, s11, t3
                  c.slli       s0, 30
                  c.lui        a2, 3
                  c.li         s8, -1
                  addi         tp, t3, -1401
                  c.srli       s0, 26
                  c.addi       s11, 28
                  rem          s2, t2, a3
                  remu         a3, t1, s10
                  slli         t3, gp, 15
                  sra          s6, s9, s6
                  c.add        s8, s11
                  srli         sp, t1, 13
                  sub          s8, s10, s11
                  c.srai       s0, 6
                  sub          s11, t1, s10
                  div          s2, s6, s7
                  div          t6, s5, t5
                  c.li         a3, -1
                  auipc        t2, 983593
                  c.addi       a3, 13
                  slli         t2, t0, 17
                  c.addi       t4, -1
                  c.nop
                  srl          t4, ra, a5
                  remu         a4, ra, s10
                  c.lui        t0, 27
                  nop
                  c.addi       s5, 21
                  sltiu        a4, s9, -510
                  srli         a5, s9, 29
                  mulhsu       zero, s4, s3
                  nop
                  slti         t4, gp, -132
                  c.slli       ra, 31
                  c.or         a5, a0
                  c.addi4spn   a1, sp, 960
                  div          ra, s1, t3
                  sltu         t4, gp, s1
                  c.addi4spn   a3, sp, 208
                  mul          s3, t4, t2
                  mulhsu       s8, s0, t0
                  div          s8, a6, s4
                  c.nop
                  or           t3, a7, t0
                  mulh         s5, ra, a5
                  slti         s6, gp, 1790
                  rem          s0, s4, s9
                  xori         a0, s4, -1724
                  mulh         t4, t2, ra
                  and          s11, t1, s4
                  remu         s8, s2, t0
                  or           s6, t6, s1
                  xori         s3, s8, 837
                  mul          a7, s0, s3
                  c.xor        a0, a5
                  mulh         ra, a4, zero
                  andi         a3, t3, 1062
                  sltiu        a1, a1, 1640
                  nop
                  c.srli       a0, 10
                  c.mv         s2, a1
                  or           s0, s11, s7
                  and          s8, t4, tp
                  addi         a2, s4, -2048
                  add          a5, a2, s7
                  c.nop
                  sll          gp, s3, a7
                  or           s8, s5, a4
                  c.li         s8, 10
                  xori         sp, t1, -1039
                  c.srai       a3, 18
                  mul          ra, a2, a3
                  mul          s7, t5, a6
                  andi         s3, t6, 84
                  addi         s6, s7, -1500
                  sltiu        s5, zero, -1288
                  c.li         t4, 28
                  auipc        t2, 161473
                  lui          t1, 316978
                  auipc        t5, 43874
                  andi         ra, tp, -981
                  andi         t4, s6, -1604
                  or           t4, sp, t3
                  srl          t6, sp, s4
                  andi         a7, s9, -1384
                  c.andi       a5, -1
                  mul          s5, s1, s2
                  c.xor        a4, s0
                  c.srli       a3, 25
                  c.lui        s7, 5
                  addi         s3, t0, 1489
                  c.xor        s0, s1
                  c.slli       a3, 9
                  auipc        a7, 181463
                  slli         t1, t0, 18
                  srai         a2, t0, 19
                  c.or         a1, s1
                  remu         t3, a0, sp
                  srli         s4, a3, 28
                  or           tp, s10, sp
                  c.addi       t0, -1
                  andi         a5, t3, -1146
                  c.and        a1, s1
                  sra          a2, s4, a5
                  slt          s7, t2, t4
                  c.slli       sp, 19
                  and          sp, t4, s0
                  c.slli       s5, 1
                  mulhsu       t0, s10, t6
                  srl          t4, s2, t1
                  c.srai       a0, 31
                  mulh         zero, a7, zero
                  nop
                  andi         t2, a0, 529
                  mulhsu       a7, gp, t2
                  ori          t2, a4, 962
                  sub          a1, t4, a5
                  c.nop
                  sltu         a5, a0, s1
                  mulhsu       s8, gp, s1
                  slli         zero, s8, 3
                  c.and        a1, a3
                  auipc        s2, 770505
                  c.srai       a5, 2
                  divu         tp, a2, a1
                  lui          s7, 988176
                  add          tp, s11, a5
                  c.addi       a1, -1
                  sltiu        a7, ra, 434
                  c.addi4spn   a3, sp, 320
                  or           t2, a0, s4
                  c.andi       a3, 1
                  srl          s2, a2, t3
                  c.xor        a4, a1
                  c.addi4spn   s0, sp, 560
                  c.srai       a4, 3
                  div          t2, a4, gp
                  xor          t5, t2, a4
                  c.addi16sp   sp, -16
                  add          t3, a7, s10
                  c.sub        a0, a3
                  c.andi       a2, 8
                  xor          s2, s7, t1
                  c.andi       a2, -1
                  sub          s5, sp, gp
                  xori         s3, t0, 1591
                  c.lui        a0, 6
                  c.addi4spn   a1, sp, 496
                  addi         a7, s5, -1158
                  sub          t2, a0, t0
                  srl          s3, s1, zero
                  c.addi16sp   sp, -16
                  and          t0, s6, tp
                  c.srli       a3, 25
                  slti         s7, s3, -1832
                  c.lui        a3, 13
                  c.mv         s10, a4
                  c.and        a5, a5
                  c.andi       a2, -1
                  c.or         a0, a0
                  lui          t6, 267757
                  sll          t4, zero, s4
                  c.addi16sp   sp, -16
                  c.andi       a1, -1
                  c.xor        a0, a4
                  c.addi16sp   sp, 368
                  add          ra, s4, ra
                  andi         zero, t0, -1582
                  c.and        a1, s1
                  c.addi16sp   sp, -16
                  mul          s6, s5, s11
                  srl          s0, s2, a3
                  mulh         s8, a4, a3
                  c.and        a4, a5
                  c.addi4spn   a4, sp, 480
                  xor          s10, t6, s10
                  mulhu        t1, a6, ra
                  slt          s7, t4, a7
                  slli         a7, s7, 17
                  sltiu        gp, s7, -517
                  mulhu        ra, a3, s5
                  xor          s10, s5, a3
                  div          t0, zero, a2
                  slt          s0, a5, s9
                  slli         t0, gp, 17
                  c.sub        s0, a1
                  and          s4, t5, a5
                  c.or         a2, a1
                  add          t4, ra, s7
                  c.mv         a4, t3
                  and          a1, s6, t6
                  c.lui        s0, 12
                  sltu         s7, t5, s3
                  srl          t1, t3, a4
                  or           a2, s11, s10
                  nop
                  auipc        zero, 581548
                  sra          t3, gp, t5
                  c.and        s0, s0
                  sll          t4, s6, s7
                  c.add        s8, a3
                  c.add        a7, s0
                  c.lui        s11, 6
                  c.mv         t5, t1
                  srli         s11, s9, 20
                  srai         t5, a1, 16
                  ori          zero, a5, -1094
                  c.sub        a2, s0
                  slli         t3, t3, 21
                  mulhu        s8, a2, a5
                  mulhu        s6, a6, s5
                  srl          s2, a4, tp
                  auipc        s6, 1036833
                  sltu         s2, t4, s11
                  sll          a3, t2, a2
                  c.xor        a5, a3
                  sra          s8, t0, s11
                  c.mv         s0, t1
                  slt          a4, a7, ra
                  and          t5, t4, a3
                  srl          a2, t5, s0
                  srai         a3, a1, 26
                  sub          gp, a2, s11
                  c.lui        s2, 6
                  sra          s11, a7, s3
                  c.xor        a0, a3
                  slli         s4, s2, 5
                  div          tp, s0, s8
                  mul          s5, a1, s11
                  remu         gp, t5, t4
                  divu         ra, s7, s9
                  lui          t1, 556700
                  sltu         s7, s8, s9
                  slli         t3, a3, 6
                  c.addi       s4, 10
                  slli         s10, t1, 0
                  add          t0, s10, a6
                  sub          a7, a4, s10
                  c.nop
                  c.slli       s4, 22
                  slt          t4, s10, s0
                  nop
                  c.sub        s0, s0
                  c.nop
                  sll          a3, a2, a7
                  c.addi4spn   a1, sp, 96
                  c.mv         t4, s11
                  c.addi       a5, 16
                  xori         s10, s9, -1493
                  div          s3, s1, s10
                  c.srai       a5, 26
                  add          a4, t5, s6
                  addi         t1, t6, -366
                  sltu         a5, s5, t1
                  addi         t3, a0, 1534
                  c.srli       a4, 30
                  sltu         gp, a1, s11
                  lui          t1, 619737
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_26
                  li           t1, 0x80000000
                  li           s3, 0x18e2d465
                  li           a2, 0xffffffff
                  li           t2, 0x32d32df2
                  li           a1, 0x36acc600
                  li           s0, 0xef015183
                  li           s10, 0xa389a51b
                  li           s11, 0x0
                  li           s2, 0xffffffff
                  divu         ra, s10, a2
                  auipc        t1, 491905
                  mulhsu       t1, s0, a1
                  rem          s0, s11, t1
                  divu         ra, s0, a2
                  div          s10, a1, t1
                  nop
                  mul          a1, a2, s2
                  mulh         ra, s3, s11
                  auipc        s10, 497255
                  divu         a1, t1, t1
                  lui          ra, 913839
                  mulhu        s0, t2, ra
                  mulhsu       ra, a2, a2
                  mulh         s2, t1, ra
                  auipc        ra, 612234
                  auipc        s10, 1010020
                  rem          t2, ra, a2
                  remu         t1, a2, t1
                  sub          ra, ra, ra
                  divu         s11, a2, ra
                  addi         t2, a1, 817
                  mulh         a2, t1, s0
                  mul          a2, a2, ra #end riscv_int_numeric_corner_stream_26
                  slt          zero, t2, t6
                  c.and        a3, a1
                  c.srai       s0, 16
                  mulhsu       s3, s5, s1
                  remu         s2, s8, a2
                  srli         t6, t3, 31
                  auipc        s6, 795947
                  c.mv         t3, tp
                  srli         t5, t5, 16
                  div          a4, ra, s9
                  sra          t4, t4, a0
                  or           t5, a5, s4
                  c.addi16sp   sp, 480
                  c.add        s5, s10
                  xori         t3, gp, -1198
                  c.addi4spn   a3, sp, 128
                  xor          t4, s8, a7
                  sltu         s8, s2, a7
                  srai         s2, s5, 15
                  xori         t4, s10, 402
                  sra          s5, tp, s8
                  srli         sp, s5, 4
                  mulhu        a5, zero, t3
                  add          t3, t0, s6
                  or           s4, s8, a2
                  nop
                  sll          tp, a4, s2
                  c.addi4spn   a5, sp, 608
                  c.addi16sp   sp, -16
                  or           s5, s4, s0
                  c.addi       s11, 7
                  divu         a1, s0, a7
                  c.lui        s5, 28
                  srl          s10, a6, s6
                  c.addi4spn   a4, sp, 720
                  addi         s11, a1, 901
                  slt          t1, a6, s11
                  sub          a4, t2, a4
                  andi         t4, s5, 2029
                  c.addi16sp   sp, 112
                  c.li         t1, 26
                  lui          t0, 19571
                  c.andi       a4, 28
                  sltu         t3, t4, t4
                  c.addi       s5, 27
                  c.lui        s8, 1
                  c.srai       a4, 30
                  mul          s2, s2, t3
                  srl          a0, s0, t3
                  c.and        a4, a1
                  sra          s0, t2, s8
                  c.sub        a3, a1
                  c.or         a5, a1
                  nop
                  c.xor        a0, a1
                  mulh         s2, a6, t0
                  sltu         s10, a0, s10
                  srli         a2, s4, 24
                  add          a2, sp, s11
                  slti         tp, a0, 1997
                  sra          sp, s3, a5
                  c.li         a7, 28
                  auipc        t6, 83295
                  mulhsu       t2, zero, t4
                  sltiu        zero, s6, -1426
                  sltu         t3, a1, a4
                  slti         a7, ra, -225
                  addi         ra, a2, 527
                  auipc        s0, 418566
                  c.mv         a5, t2
                  slli         t0, tp, 12
                  andi         a1, ra, 1785
                  mul          t6, s0, s0
                  xor          s5, s4, a6
                  sltu         a7, s5, a4
                  c.lui        t4, 7
                  c.addi16sp   sp, -16
                  c.or         a5, a2
                  c.andi       a4, -1
                  c.addi       a4, 16
                  slli         a1, s0, 17
                  sltu         sp, ra, s11
                  sltiu        s6, t5, -340
                  srai         s3, s11, 13
                  and          t6, gp, gp
                  c.slli       ra, 23
                  andi         gp, ra, 112
                  sltiu        t6, t1, 1202
                  c.addi4spn   a4, sp, 464
                  c.nop
                  c.andi       a2, 13
                  xor          a1, s6, a5
                  c.mv         sp, t6
                  xor          a0, t1, s10
                  c.srli       a1, 25
                  add          zero, s8, a5
                  sub          s10, s9, tp
                  c.srli       a0, 24
                  xor          t2, s1, s6
                  nop
                  sll          s0, s3, a1
                  c.li         s2, -1
                  rem          a0, t2, s5
                  c.srli       a3, 30
                  lui          a0, 363132
                  c.nop
                  rem          s5, s4, t2
                  remu         t2, t2, s2
                  c.nop
                  xor          t4, ra, s9
                  and          gp, s5, tp
                  mulhu        sp, s6, ra
                  sra          s7, t0, s6
                  mulhsu       a5, t1, s3
                  sll          zero, a2, t5
                  c.addi       a0, 18
                  sra          s11, a0, t3
                  sub          a7, ra, t1
                  c.or         a1, a5
                  auipc        t1, 779128
                  c.andi       a1, -1
                  c.sub        a3, a3
                  slli         t2, s1, 5
                  c.andi       a1, 19
                  or           s10, s9, s6
                  sll          t4, s9, a7
                  or           s10, a3, s6
                  c.or         a4, a1
                  sll          s6, s1, a5
                  andi         a7, s3, 436
                  auipc        sp, 852608
                  sra          a0, s0, t6
                  andi         tp, t2, -1996
                  mul          tp, a4, s9
                  c.add        s4, tp
                  c.nop
                  xori         a3, s1, -1025
                  c.addi16sp   sp, -16
                  divu         s11, t6, t3
                  c.andi       a4, 7
                  andi         s8, a6, -997
                  c.xor        a2, a4
                  c.nop
                  c.add        s4, a7
                  c.slli       a0, 31
                  xor          s4, t0, t4
                  and          s8, s2, s3
                  nop
                  c.addi       a0, -1
                  c.srai       a0, 16
                  srli         t4, s11, 4
                  mulhsu       s0, gp, a7
                  srai         s3, t1, 1
                  add          s8, t4, sp
                  mulhsu       s11, s8, t6
                  c.srli       a4, 14
                  c.slli       a0, 13
                  c.li         s6, -1
                  mulhsu       a7, a0, s3
                  divu         sp, a3, gp
                  c.or         a2, a4
                  c.sub        a5, a1
                  addi         a3, s9, -420
                  slli         t2, s5, 8
                  c.xor        a1, a3
                  auipc        s4, 880037
                  c.slli       a1, 8
                  mul          zero, s7, s1
                  sll          t2, sp, a0
                  auipc        t0, 786326
                  mulhu        t3, a4, a6
                  slli         a1, s6, 14
                  c.li         a7, 12
                  c.srai       a0, 10
                  c.lui        s11, 26
                  c.addi16sp   sp, 48
                  c.srli       a1, 4
                  c.li         s5, -1
                  add          a7, a6, a4
                  div          s3, t2, sp
                  srl          a3, a7, t1
                  c.slli       s6, 3
                  srli         t1, a4, 4
                  c.addi16sp   sp, 368
                  sltu         s3, t0, s0
                  lui          s11, 959132
                  and          sp, t0, s9
                  slti         t0, zero, -661
                  nop
                  c.sub        a5, a2
                  c.addi4spn   a0, sp, 144
                  ori          a1, a6, -139
                  remu         zero, zero, a6
                  c.srli       s0, 12
                  c.addi16sp   sp, 496
                  srl          s2, s9, gp
                  remu         s2, a2, t5
                  addi         s8, s0, -79
                  c.mv         ra, s6
                  slt          a1, s5, t0
                  c.srli       a3, 7
                  remu         s8, t5, s5
                  srl          s2, s11, t0
                  c.lui        a2, 7
                  c.andi       a5, 8
                  slli         s4, s10, 6
                  addi         a5, zero, 1745
                  c.andi       a2, -1
                  srl          a2, a3, s10
                  c.mv         sp, s2
                  mul          a4, s8, s5
                  c.addi16sp   sp, -16
                  mulh         ra, sp, s9
                  c.li         a1, -1
                  or           s6, s5, a6
                  slt          ra, a3, s4
                  sll          s7, s3, a3
                  sra          zero, s0, s7
                  remu         s11, sp, s7
                  c.add        a3, t3
                  c.mv         s6, a6
                  li           gp, 0xd229467e #start riscv_int_numeric_corner_stream_13
                  li           t5, 0x80000000
                  li           s8, 0x64b8f691
                  li           s3, 0xffffffff
                  li           t3, 0x80000000
                  li           a0, 0xb28bc14d
                  li           ra, 0x80000000
                  li           s11, 0xffffffff
                  li           t2, 0x4e6ddad7
                  li           a1, 0x80000000
                  rem          a0, a0, s8
                  nop
                  addi         t3, s3, 34
                  nop
                  add          a0, ra, t2
                  lui          ra, 448869
                  rem          a0, ra, gp
                  sub          s8, a0, s8
                  sub          s3, ra, t3
                  sub          a1, ra, s8
                  div          a1, s3, s11
                  div          s3, t3, a0
                  remu         t3, t2, t5
                  add          a0, ra, gp
                  div          s11, t2, s3
                  mulh         t5, s11, t5
                  lui          ra, 657584
                  rem          t3, t2, a1
                  mulhu        t5, t2, t5
                  sub          s8, a0, t3
                  rem          s8, s3, t3
                  mulh         t5, s3, s8
                  lui          t2, 947560
                  mulhsu       s8, t2, t2
                  mul          gp, t2, a1 #end riscv_int_numeric_corner_stream_13
                  slli         t5, a0, 15
                  divu         zero, s6, s1
                  c.and        a5, a0
                  c.andi       a1, 9
                  nop
                  xor          sp, s5, s4
                  add          s7, s0, a1
                  srl          s6, s6, s9
                  mulh         s8, tp, s2
                  c.nop
                  remu         s5, tp, a4
                  c.addi4spn   a4, sp, 288
                  mul          a4, s3, t5
                  c.lui        s5, 8
                  remu         s4, s11, gp
                  add          s11, ra, a1
                  sll          s4, t1, sp
                  c.xor        a4, a2
                  c.nop
                  nop
                  c.add        a1, a5
                  xori         s8, t2, -948
                  add          sp, s0, s2
                  addi         s3, ra, -811
                  div          a3, a7, s11
                  add          a2, s5, sp
                  xori         t1, s5, 1260
                  rem          t3, a5, sp
                  xor          ra, s7, a7
                  c.xor        a1, a4
                  sll          ra, gp, a1
                  c.addi4spn   a5, sp, 880
                  c.xor        a5, a1
                  slti         t6, a3, 20
                  c.nop
                  srli         s6, s3, 24
                  or           a4, s9, a7
                  c.slli       a0, 7
                  srl          s8, s4, t1
                  c.lui        s10, 18
                  nop
                  srli         s3, s5, 14
                  or           s4, t0, a3
                  mul          a2, s7, a7
                  c.xor        a4, s1
                  addi         tp, a1, -2023
                  andi         s11, t1, 27
                  mulhsu       ra, zero, t6
                  div          t2, s0, a6
                  addi         a2, t4, 415
                  or           a5, gp, s0
                  sub          a4, sp, a1
                  andi         gp, a2, -656
                  c.and        s0, a3
                  c.add        sp, a5
                  c.srai       a4, 31
                  xori         s11, gp, 684
                  div          a1, s2, a1
                  c.and        a3, s0
                  sltiu        a5, a6, -681
                  sll          sp, a3, s10
                  c.nop
                  sra          zero, t3, a2
                  lui          a0, 999798
                  c.mv         a4, s8
                  add          tp, a2, s4
                  addi         gp, a4, 1544
                  mulhsu       zero, zero, t5
                  xor          s5, t3, s2
                  sltiu        gp, a3, -67
                  c.and        a0, a5
                  nop
                  ori          a2, s7, -893
                  remu         s0, a6, s2
                  andi         t6, tp, 700
                  c.addi16sp   sp, -16
                  add          a4, t1, s1
                  ori          a2, a7, 1187
                  xori         sp, zero, 1249
                  c.nop
                  rem          zero, s7, s7
                  andi         a3, s2, 1558
                  mul          t5, t3, s7
                  c.sub        s0, a4
                  c.nop
                  lui          a1, 565604
                  ori          t4, s9, 262
                  c.xor        a4, a0
                  addi         s2, t6, 210
                  nop
                  c.add        t5, sp
                  srli         a0, s1, 5
                  slli         t4, s3, 6
                  srli         sp, a0, 27
                  sltiu        s8, s2, -820
                  sltiu        t1, a7, -1116
                  auipc        t1, 682267
                  mul          zero, s5, t0
                  add          a2, s3, s10
                  mul          s7, s4, s0
                  c.srli       a4, 30
                  srli         t5, t0, 27
                  andi         s0, s1, -1807
                  slli         s8, t3, 21
                  c.srli       s0, 7
                  or           a4, zero, t4
                  lui          s5, 5652
                  andi         s3, a7, 578
                  c.xor        a2, a5
                  slt          tp, a2, zero
                  c.or         a1, a3
                  c.lui        t3, 22
                  sltu         s11, t3, sp
                  auipc        t0, 786315
                  slt          s7, t5, a6
                  sll          a7, t2, t6
                  c.and        s0, s0
                  ori          t4, a2, 1947
                  sra          s11, ra, s10
                  c.addi       s8, -1
                  xori         a3, s5, 1343
                  slli         s11, s6, 13
                  srl          t2, s5, t4
                  c.andi       a0, 17
                  xori         a2, tp, 593
                  auipc        s7, 715687
                  slli         t4, s5, 1
                  c.andi       a4, 26
                  or           s0, ra, s8
                  c.li         t1, -1
                  c.and        a3, a5
                  c.addi       s7, -1
                  sub          t2, a4, zero
                  c.srai       a0, 4
                  mulhu        t0, s0, s2
                  and          s3, gp, t0
                  c.or         a3, a5
                  c.xor        a0, s1
                  slt          a1, tp, a6
                  sra          t6, a1, s3
                  srai         a2, t1, 10
                  addi         t4, s2, -1131
                  srl          zero, sp, sp
                  divu         s10, a4, a7
                  srl          s0, a5, s0
                  sra          a0, s7, a3
                  c.xor        a2, s1
                  c.nop
                  mulhsu       t5, s2, ra
                  mul          s3, s10, s0
                  addi         a0, s6, -811
                  c.xor        a4, a3
                  c.sub        a2, a4
                  c.mv         a0, tp
                  addi         t1, t6, -1112
                  auipc        s8, 762050
                  mulhsu       s10, a4, s0
                  sltiu        a2, s10, 1484
                  slt          ra, s9, a4
                  sltiu        s4, s7, 1536
                  slti         s0, s10, -1914
                  c.andi       a0, 24
                  xor          t2, s4, s7
                  or           s6, s1, a4
                  mul          tp, t2, sp
                  c.or         a3, a2
                  mulhu        t5, s10, s6
                  mulh         zero, gp, s0
                  c.srai       a1, 28
                  c.addi16sp   sp, -16
                  c.and        a3, a0
                  c.lui        s11, 5
                  mulh         s8, s3, s11
                  sra          s0, tp, s9
                  mulh         s8, s2, s4
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           tp, 0xffffffff
                  li           t0, 0x0
                  li           s3, 0x80000000
                  li           a5, 0x80000000
                  li           gp, 0xffffffff
                  li           s10, 0xffffffff
                  li           t5, 0x12ac419a
                  li           s6, 0x80000000
                  li           a3, 0x80000000
                  nop
                  lui          t0, 603776
                  div          s11, t0, t0
                  auipc        t5, 194542
                  mulhsu       s6, t5, s10
                  mulh         t5, a3, s10
                  mulhsu       a3, s6, t0
                  addi         t5, a5, -698
                  nop
                  mul          a3, t0, s10
                  mulh         tp, s10, s6
                  mul          s10, s6, tp
                  lui          s11, 944569
                  divu         s10, t5, gp
                  lui          a5, 355132
                  add          s3, a3, t5
                  mulhu        s10, tp, t5
                  div          s6, s10, s6
                  remu         gp, s10, s3
                  divu         t5, a3, s6
                  lui          tp, 640183
                  sub          tp, a5, t0
                  mul          s11, s10, tp
                  mulhsu       s6, tp, s10
                  mul          tp, s11, a5
                  mul          a3, a3, t0
                  sub          s3, t5, t5
                  nop #end riscv_int_numeric_corner_stream_11
                  c.addi4spn   a0, sp, 848
                  nop
                  mulhu        s10, a1, a3
                  c.lui        s5, 10
                  c.addi       t1, 18
                  andi         s8, t0, -457
                  xori         t0, t2, -784
                  add          a3, t5, s2
                  c.andi       a2, 2
                  mulhsu       a5, zero, a7
                  mulhsu       t2, s5, s10
                  auipc        s7, 415497
                  c.add        s0, a1
                  mul          s4, tp, s7
                  c.srli       a3, 13
                  c.nop
                  auipc        a2, 718480
                  c.addi       s3, -1
                  ori          s8, ra, -233
                  slli         s4, t4, 12
                  srai         s7, a4, 18
                  slti         a3, t2, 1167
                  c.addi4spn   a4, sp, 704
                  sltu         s8, s5, s5
                  c.mv         a5, a2
                  sll          zero, a7, t6
                  c.or         s0, s0
                  xor          a1, s11, a1
                  andi         a1, ra, 1135
                  divu         t6, a5, zero
                  mulhu        a3, s6, t6
                  c.and        a5, a4
                  slt          s10, s1, s6
                  rem          s11, a1, a5
                  c.lui        s5, 2
                  nop
                  slt          a4, t4, a4
                  lui          sp, 96901
                  mul          t5, s9, t3
                  srai         t5, sp, 19
                  sltu         a0, s10, a6
                  addi         sp, s0, 1445
                  rem          t3, s10, s7
                  srli         s4, s10, 16
                  nop
                  srai         s3, s1, 11
                  srli         s7, s4, 5
                  add          t1, s6, a5
                  c.addi16sp   sp, 16
                  c.or         a0, a3
                  auipc        s2, 247899
                  lui          s11, 630371
                  rem          t0, a7, t0
                  nop
                  lui          s8, 386335
                  c.slli       a1, 13
                  srl          a4, t1, t5
                  c.addi       s6, -1
                  xor          a5, a2, s11
                  mulhsu       s10, a7, s1
                  c.andi       a3, -1
                  slli         t2, s11, 20
                  addi         a0, t5, 1242
                  auipc        s3, 713503
                  c.and        a4, a4
                  xor          s5, a3, s6
                  or           t5, t5, s6
                  c.lui        a5, 20
                  divu         s4, s7, s5
                  c.sub        a2, a0
                  c.addi       t1, -1
                  lui          s3, 455188
                  c.slli       ra, 2
                  mul          a4, s6, zero
                  c.srli       a0, 25
                  ori          t0, s3, 1419
                  srli         zero, a7, 15
                  srli         a7, a0, 23
                  c.srai       a1, 24
                  sra          a5, t4, s5
                  and          t4, s11, a1
                  c.mv         t4, s4
                  slt          s4, s8, s1
                  divu         a1, s3, a7
                  mulhsu       t1, t3, a0
                  divu         t2, tp, a4
                  c.xor        s0, a4
                  xori         t6, ra, 2002
                  c.addi16sp   sp, 80
                  mul          t3, s5, s6
                  sub          s8, t4, s7
                  remu         a1, s4, tp
                  or           t5, s4, s4
                  sltiu        s5, s1, 1465
                  sra          gp, a4, t6
                  sll          t2, s3, t6
                  mul          s3, s10, t0
                  and          s4, sp, s8
                  c.addi16sp   sp, -16
                  c.addi       ra, -1
                  c.mv         s7, t3
                  mulhu        a4, a5, t2
                  nop
                  srai         s7, s6, 23
                  ori          s8, gp, -105
                  c.sub        a4, a5
                  andi         s2, gp, -150
                  nop
                  nop
                  sltu         s2, t5, a2
                  mulhu        t4, s2, s6
                  and          s8, s2, s5
                  c.nop
                  or           s10, t2, t0
                  sll          s4, ra, gp
                  nop
                  sub          a5, s10, sp
                  andi         s0, t1, -340
                  auipc        a7, 341925
                  slli         a1, a2, 10
                  mulh         a4, sp, s5
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_34
                  li           s11, 0xa6fe9fe
                  li           sp, 0x80000000
                  li           t0, 0x80000000
                  li           a0, 0x32e17a92
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           ra, 0xcaf9364b
                  li           s8, 0xffffffff
                  li           s2, 0x80000000
                  mulhu        s4, ra, t0
                  auipc        a0, 940695
                  remu         s11, a5, a0
                  rem          a5, s5, ra
                  rem          a0, a0, s8
                  mulhsu       a0, s8, s11
                  mulh         s11, s8, a5
                  nop
                  mulhsu       s5, t0, s5
                  lui          t0, 369517
                  lui          s4, 121696
                  sub          s4, a5, t0
                  remu         a0, s11, s8
                  remu         s11, s2, a5
                  mulh         ra, s4, s4
                  add          s4, a0, a0
                  addi         s11, s4, -1703
                  auipc        s8, 352913
                  mulhsu       a5, t0, ra
                  mulhu        sp, s8, s4 #end riscv_int_numeric_corner_stream_34
                  c.srli       a0, 31
                  c.addi       a3, 1
                  c.or         s0, a0
                  c.slli       t3, 8
                  c.slli       a7, 30
                  ori          ra, a4, -1085
                  mulhu        s11, gp, s1
                  addi         zero, a2, 900
                  c.addi4spn   a4, sp, 192
                  c.srli       a0, 13
                  xori         s8, zero, -1359
                  mulh         a5, s7, a0
                  c.mv         t3, s5
                  c.lui        s5, 5
                  xori         gp, s4, -838
                  mulhsu       t4, s5, a0
                  slti         s5, s8, 713
                  c.mv         s4, t3
                  or           s7, a6, t6
                  mulh         s10, sp, s5
                  c.mv         s10, t5
                  c.andi       a0, -1
                  c.srli       a4, 20
                  and          s3, s4, a1
                  c.nop
                  auipc        s10, 171464
                  c.or         a1, a0
                  and          a7, a5, a1
                  mulhu        t4, s11, t0
                  and          t6, s0, ra
                  sub          s11, s11, ra
                  c.srli       a5, 10
                  divu         a4, t4, s9
                  c.mv         s4, t3
                  add          sp, s1, a6
                  nop
                  c.andi       a2, 2
                  srl          s11, s8, s11
                  mulhsu       a7, s8, a7
                  rem          s6, s2, s11
                  c.srli       s0, 4
                  c.srai       a1, 12
                  c.srli       a4, 22
                  c.sub        a5, s1
                  sltiu        s11, a3, -1675
                  srai         s5, t2, 31
                  sltiu        t5, t1, -1140
                  nop
                  slti         a1, a7, -718
                  auipc        t3, 492628
                  c.srli       a1, 24
                  srli         a5, s9, 14
                  c.and        a0, a0
                  sltiu        s5, s2, 1468
                  lui          s7, 228355
                  or           a7, s5, s10
                  srai         gp, s7, 3
                  c.nop
                  c.add        a7, t0
                  and          a1, s4, tp
                  srai         s8, s7, 14
                  sltiu        zero, s0, -948
                  remu         a2, s8, s8
                  sll          a4, s4, a5
                  c.mv         s0, a3
                  or           s0, t2, a3
                  mulhu        a2, s11, a3
                  srl          a7, s1, s3
                  srli         s3, t0, 26
                  c.addi16sp   sp, 128
                  div          t6, t3, t2
                  and          t6, a3, s9
                  mulh         t6, t0, s1
                  sltiu        s6, a0, 1437
                  mulhsu       s8, s11, s2
                  c.lui        t2, 2
                  c.mv         tp, s2
                  sra          gp, a3, t3
                  mulh         s11, s1, s4
                  srl          s0, s2, s11
                  lui          t4, 496921
                  slt          a3, a2, s0
                  nop
                  and          a5, s2, s7
                  ori          a4, t1, 862
                  divu         tp, a7, ra
                  add          ra, s0, s7
                  c.srli       a0, 16
                  sltu         s2, s1, ra
                  c.slli       s5, 11
                  xori         a5, a7, -1588
                  nop
                  sll          a7, s5, s6
                  ori          s0, a6, 1804
                  add          a1, ra, a5
                  c.add        s0, t5
                  sltiu        s8, t5, -1096
                  lui          a2, 813031
                  sltu         s0, s6, a3
                  c.srai       a3, 19
                  srl          a3, s2, gp
                  or           a2, gp, t1
                  auipc        a7, 404965
                  sltu         s2, t0, a4
                  c.slli       t3, 2
                  addi         s2, s2, -1324
                  div          s11, s3, a1
                  c.sub        a3, a3
                  c.addi16sp   sp, 128
                  sll          ra, t4, tp
                  c.slli       a3, 11
                  ori          t6, sp, -1633
                  c.srli       a5, 29
                  mulh         s4, a3, s4
                  sub          zero, s2, ra
                  sltiu        gp, sp, -1686
                  auipc        s5, 170061
                  mul          a2, s5, s0
                  c.or         a3, a3
                  add          a7, a0, t2
                  c.and        a3, a5
                  sra          t4, t3, s3
                  remu         a1, s3, a7
                  rem          gp, a6, t0
                  mulhu        t2, s7, t1
                  srl          zero, s2, s9
                  slli         t2, s0, 25
                  c.and        a1, s0
                  divu         s0, s0, s3
                  c.slli       a3, 25
                  c.nop
                  or           t3, s3, s7
                  divu         a2, a1, s6
                  c.nop
                  c.nop
                  c.mv         a0, s5
                  sltu         a5, t5, s8
                  rem          s4, s11, t2
                  and          a7, gp, tp
                  lui          sp, 252161
                  addi         a1, t2, 275
                  sltu         s6, a3, ra
                  rem          t6, tp, s4
                  c.sub        s0, a2
                  srli         s8, t2, 5
                  slt          zero, t3, s7
                  sltu         t2, s5, t5
                  add          s6, s10, a6
                  c.sub        a3, a2
                  slt          s3, a5, t3
                  or           t2, tp, gp
                  c.addi       s11, -1
                  c.lui        s6, 24
                  nop
                  srai         ra, t0, 11
                  c.mv         t1, t3
                  c.li         a1, 8
                  ori          tp, zero, -928
                  c.xor        a1, a5
                  c.srai       s0, 29
                  srl          t6, a2, s9
                  srli         sp, a6, 0
                  lui          t4, 96526
                  sltiu        sp, t5, 1507
                  c.addi       t0, 16
                  div          zero, s8, s5
                  c.and        a0, a0
                  sub          t0, gp, t4
                  rem          tp, s0, t5
                  rem          s7, t6, t0
                  remu         t4, s6, ra
                  srai         t6, s5, 17
                  xor          s4, s8, a3
                  xori         t1, gp, -544
                  sltiu        ra, s2, 1601
                  c.add        a7, s0
                  sltu         a7, a7, t1
                  mulh         a1, s3, a1
                  mul          sp, t1, s3
                  mulh         tp, t1, s10
                  c.slli       ra, 16
                  sltiu        t0, a6, -1885
                  slli         a2, t6, 22
                  c.slli       s8, 27
                  auipc        a5, 22200
                  c.slli       s3, 10
                  c.andi       a1, -1
                  mul          s6, zero, t4
                  c.nop
                  c.srai       a2, 2
                  xori         s7, a3, -864
                  addi         a5, s3, 154
                  xori         s8, s7, -252
                  sra          t3, s0, tp
                  lui          a2, 438964
                  auipc        s5, 840129
                  srli         ra, a7, 15
                  c.addi16sp   sp, 400
                  add          sp, a7, s0
                  divu         zero, s2, s5
                  ori          s2, s5, 1764
                  xori         a1, s6, 1105
                  slt          ra, zero, t5
                  slli         s11, t5, 3
                  and          s10, a7, t2
                  c.or         a4, s1
                  sra          tp, a4, ra
                  srl          s7, s11, sp
                  slli         s5, t6, 21
                  auipc        t5, 299586
                  addi         t5, s6, -1146
                  mulhu        s8, a5, s7
                  mulhsu       s8, sp, t0
                  c.slli       s11, 14
                  andi         s7, a5, 1039
                  mulhu        a3, s0, a2
                  nop
                  andi         s5, a2, -1577
                  and          s10, s0, s0
                  add          t0, t6, t3
                  c.lui        a5, 29
                  c.add        tp, s5
                  srl          tp, s11, s0
                  div          a4, s6, t1
                  slti         t4, s4, -1615
                  c.or         s0, s1
                  mul          s6, a1, a4
                  slt          s11, s2, t0
                  c.mv         s2, t1
                  sltiu        sp, a3, -1572
                  mulh         sp, sp, s8
                  remu         a4, s11, s8
                  lui          a3, 647077
                  c.srai       a5, 8
                  c.srai       a1, 16
                  srl          a1, t0, s10
                  andi         zero, s0, -680
                  slt          a4, a2, a4
                  lui          a7, 492097
                  c.mv         a4, s8
                  sltiu        a2, s11, -1363
                  auipc        a2, 533668
                  c.lui        a7, 4
                  sub          s10, t5, sp
                  xori         t2, gp, 594
                  c.and        a1, a2
                  remu         s8, sp, t0
                  nop
                  ori          s4, a3, 74
                  remu         a3, s11, a1
                  divu         s0, t5, s8
                  sub          s2, sp, s11
                  c.sub        a5, a0
                  mulhsu       s5, zero, t3
                  div          s8, a4, tp
                  nop
                  nop
                  xor          a1, t1, s8
                  auipc        s10, 903343
                  sra          s0, a6, s3
                  lui          tp, 867216
                  c.sub        a2, a3
                  slli         ra, s3, 28
                  andi         a3, ra, 53
                  xori         t0, s10, -302
                  mulhu        s0, a6, s4
                  c.li         ra, 14
                  c.addi       t6, 31
                  divu         s0, s5, t2
                  auipc        s7, 608915
                  sra          s4, t6, sp
                  mulh         a7, s3, t1
                  rem          a7, t0, a2
                  srl          a3, s9, tp
                  addi         s0, zero, -1631
                  c.lui        a4, 4
                  c.andi       s0, 13
                  c.sub        a3, a2
                  slti         a3, s8, -1463
                  slt          a1, s8, a7
                  ori          t6, t2, 1617
                  rem          gp, s0, a0
                  c.add        gp, ra
                  divu         s4, s3, s5
                  andi         zero, s2, -184
                  c.srai       a1, 21
                  ori          t3, s5, -434
                  slli         s10, a1, 19
                  auipc        s10, 310834
                  sub          s0, s4, s11
                  rem          a7, t1, t3
                  mul          s3, s6, t1
                  c.nop
                  srli         t2, a0, 29
                  sub          t2, t6, a5
                  rem          a5, a1, t6
                  div          t2, s9, s6
                  remu         a4, s4, ra
                  srli         t0, a2, 4
                  c.nop
                  remu         t6, tp, s7
                  c.nop
                  c.lui        gp, 9
                  c.xor        s0, a4
                  c.slli       a0, 10
                  c.mv         a1, s9
                  srl          s4, a4, gp
                  c.addi4spn   a3, sp, 544
                  c.addi4spn   a1, sp, 1008
                  sra          s7, s3, ra
                  sltu         s8, t3, t0
                  add          t2, zero, a5
                  c.xor        a3, a5
                  sub          s7, s3, a6
                  c.or         s0, a5
                  sltiu        s6, t6, 156
                  c.addi16sp   sp, 368
                  ori          a3, s3, -1366
                  c.andi       s0, -1
                  sltu         a1, s7, s7
                  sltiu        a0, s8, 1514
                  srli         a4, gp, 2
                  xori         s0, a5, 1868
                  slti         a0, a3, 1507
                  srl          a5, a3, t6
                  c.or         a3, a5
                  c.addi       s2, -1
                  c.andi       s0, 11
                  c.andi       a5, 29
                  sll          s8, t6, t4
                  srli         t5, a3, 16
                  srl          a5, t0, zero
                  slli         s7, t2, 15
                  c.slli       t1, 28
                  srai         s8, t6, 6
                  srli         s3, a5, 16
                  c.addi4spn   a5, sp, 480
                  c.add        ra, tp
                  sltiu        a1, s10, -1343
                  sltu         s6, s0, a4
                  c.addi16sp   sp, 304
                  c.addi       s11, -1
                  c.xor        a0, s0
                  c.srli       a3, 1
                  sra          s7, s8, a6
                  c.srli       a3, 6
                  slt          s8, t1, sp
                  c.slli       s7, 20
                  nop
                  c.li         s7, 3
                  addi         s5, a7, 1260
                  c.slli       a1, 6
                  c.addi       t4, 24
                  c.addi16sp   sp, 224
                  rem          s7, t5, s5
                  c.or         s0, a4
                  c.add        s11, t3
                  c.srai       a3, 31
                  auipc        a3, 89938
                  c.or         a3, a0
                  c.andi       a0, -1
                  nop
                  divu         zero, s1, s9
                  c.addi4spn   a3, sp, 576
                  andi         a1, a5, 1172
                  mulhsu       s11, tp, s9
                  c.sub        s0, s0
                  sub          s3, s4, a0
                  xori         a1, t1, 1943
                  srl          s11, s7, t0
                  c.mv         t1, a7
                  c.li         s0, 0
                  srli         t4, t4, 23
                  auipc        s7, 417071
                  slti         a7, s4, -493
                  mulhsu       s10, t5, s3
                  or           s4, s8, s1
                  c.nop
                  mulh         t0, a4, t2
                  c.nop
                  andi         t4, a7, -1926
                  sltiu        a4, s0, -1453
                  sub          s7, s5, a3
                  slti         a0, a7, -1978
                  sltu         ra, t3, a7
                  c.li         s2, -1
                  mulhsu       t1, s6, t0
                  c.xor        a0, a0
                  c.sub        a4, a1
                  c.slli       a5, 13
                  c.srai       a5, 8
                  c.add        a1, t6
                  c.nop
                  slt          gp, s1, a5
                  c.sub        a5, a5
                  xor          a7, t6, ra
                  srl          a1, t1, s0
                  xori         s11, t1, -995
                  lui          a5, 405675
                  divu         t5, a2, a4
                  sltiu        ra, sp, -2024
                  or           a3, t0, s4
                  sltu         zero, s5, s3
                  remu         s3, s6, s0
                  slti         s8, a2, -717
                  slti         zero, a6, 227
                  c.andi       a3, -1
                  c.add        s0, s9
                  c.li         s4, -1
                  lui          t0, 429975
                  c.and        a3, a3
                  lui          s10, 866171
                  nop
                  slt          a0, s2, s5
                  sltiu        t4, t5, 829
                  sltu         s10, ra, s0
                  sra          tp, a5, a5
                  xori         a1, t4, 176
                  slt          s10, sp, s1
                  c.slli       t2, 21
                  mul          s3, a5, s10
                  c.addi       s11, 27
                  mul          gp, a0, a1
                  srl          a5, a5, a4
                  slt          s6, s3, t0
                  add          s4, a6, t2
                  divu         t4, a3, sp
                  slt          sp, ra, a7
                  slli         a2, s7, 17
                  mulhsu       s3, t1, ra
                  divu         t0, a2, zero
                  c.nop
                  auipc        s2, 697607
                  or           a1, a5, s7
                  or           a5, t0, gp
                  xori         s2, s6, 793
                  rem          sp, a5, a4
                  c.sub        a3, s1
                  divu         a4, tp, t0
                  c.add        s0, t3
                  divu         s6, ra, s5
                  rem          a7, gp, s4
                  sltiu        a1, t6, 1173
                  c.sub        s0, a3
                  srai         ra, a7, 17
                  c.addi       a1, 17
                  sltiu        t4, t3, 1696
                  c.addi16sp   sp, -16
                  c.lui        a1, 31
                  xor          a4, ra, s2
                  xor          a2, t3, s6
                  c.or         a1, a5
                  mulh         t1, a5, s9
                  srl          a7, s5, s5
                  slli         tp, s0, 29
                  srai         ra, gp, 9
                  c.add        s0, t3
                  sll          t2, s10, a6
                  addi         a5, s9, 330
                  mul          s5, s3, t0
                  sll          t6, tp, t4
                  divu         a7, zero, s9
                  c.nop
                  xori         t1, a3, -479
                  mulhu        t2, a3, a7
                  sll          ra, tp, t2
                  c.andi       a3, -1
                  andi         s5, s5, 443
                  sltiu        t2, t6, 1105
                  c.lui        gp, 22
                  c.or         a1, s0
                  slt          tp, s2, s4
                  c.xor        s0, a2
                  c.xor        a2, s0
                  nop
                  slli         a1, s10, 29
                  c.lui        s8, 30
                  add          s2, s8, s8
                  xor          s3, zero, t0
                  addi         s11, t1, -750
                  sltu         s5, t6, zero
                  c.addi4spn   s0, sp, 832
                  nop
                  c.lui        s6, 10
                  addi         s7, sp, -2011
                  srl          ra, t4, s0
                  c.sub        a4, a4
                  add          s7, s9, s10
                  sll          s11, t5, a7
                  ori          t6, t6, -442
                  c.and        a3, a4
                  sub          tp, s1, zero
                  rem          t0, t3, s2
                  ori          t4, t3, 175
                  slli         ra, a0, 12
                  c.addi4spn   a1, sp, 672
                  c.slli       t1, 17
                  ori          s10, ra, 315
                  c.xor        a3, a0
                  sltiu        a2, a7, -636
                  xor          s4, s11, a0
                  divu         s6, t1, s11
                  rem          zero, t0, gp
                  slli         a3, s4, 15
                  c.addi       sp, 5
                  auipc        a0, 1034742
                  mulhsu       t2, s7, t3
                  c.sub        a4, a2
                  c.srai       a4, 12
                  c.nop
                  c.mv         a1, s3
                  srai         t4, s2, 14
                  c.add        s11, sp
                  and          s4, t2, zero
                  srl          s4, a1, s8
                  xori         t1, a1, 1281
                  ori          ra, t3, -1520
                  sltu         s10, s0, a3
                  slti         t3, t3, 1825
                  rem          zero, a2, t5
                  c.or         a1, a2
                  c.srli       a4, 28
                  c.add        t2, s10
                  mulhsu       a7, t4, s2
                  srli         s7, s4, 10
                  and          s6, gp, a1
                  add          s6, a6, tp
                  c.add        s4, sp
                  c.slli       s8, 3
                  c.andi       a1, -1
                  c.sub        s0, a4
                  c.slli       s11, 29
                  rem          s2, s5, a3
                  srai         s4, t3, 22
                  xor          tp, s3, t1
                  auipc        tp, 171697
                  c.addi16sp   sp, -16
                  srli         s11, t1, 6
                  c.and        a5, s0
                  c.xor        a3, a3
                  c.mv         s11, t1
                  srai         a1, s3, 14
                  c.addi4spn   a4, sp, 656
                  rem          s11, s8, tp
                  slti         zero, s2, 2026
                  c.addi4spn   a3, sp, 272
                  c.mv         s10, s6
                  lui          s11, 996811
                  c.mv         t2, a4
                  c.addi16sp   sp, -16
                  and          tp, t4, zero
                  addi         t2, a2, 1116
                  sra          s2, s9, s8
                  or           a7, t5, a6
                  mulh         ra, ra, s7
                  mulh         a7, s6, s8
                  c.srli       a3, 21
                  c.slli       a1, 19
                  slli         t0, a1, 24
                  slli         s6, s8, 7
                  c.andi       a1, 23
                  c.lui        t6, 10
                  c.xor        a1, a4
                  sll          t4, s8, zero
                  c.mv         s11, a3
                  c.lui        s3, 25
                  c.mv         a2, a1
                  slti         s4, tp, 991
                  divu         t3, s7, t5
                  addi         s0, a1, 1052
                  lui          a3, 607642
                  sub          s8, a2, t3
                  remu         s8, a2, a7
                  divu         a5, a0, a5
                  srai         s2, a1, 9
                  nop
                  c.or         a2, a1
                  c.addi16sp   sp, -16
                  mulh         s2, a6, a4
                  or           t5, s10, s1
                  c.or         a0, a1
                  c.and        s0, s1
                  remu         ra, tp, s1
                  c.srai       a4, 26
                  lui          s8, 464085
                  c.nop
                  sub          sp, t4, s7
                  c.srai       a4, 13
                  c.andi       a5, 30
                  slli         s8, s6, 5
                  c.addi       t1, 12
                  slti         a2, sp, -1412
                  div          gp, gp, s4
                  lui          a4, 390262
                  sub          a4, s9, s4
                  slti         tp, s7, -1718
                  srai         a0, s1, 4
                  c.li         ra, -1
                  sll          t4, s0, t4
                  mulhu        a1, a2, a7
                  slli         s2, s2, 10
                  div          a5, s2, s6
                  srli         s8, sp, 31
                  xori         a4, a3, -1788
                  or           zero, t0, tp
                  c.nop
                  c.nop
                  slti         t5, a2, -118
                  remu         a5, t0, a4
                  sltu         tp, ra, tp
                  xor          ra, tp, s3
                  and          t5, s8, sp
                  c.addi4spn   a4, sp, 944
                  mulhsu       a3, zero, a4
                  mulh         a1, t4, s4
                  c.nop
                  c.or         a1, a3
                  mulh         s0, s10, a6
                  lui          a7, 926
                  c.or         a5, s1
                  andi         t5, s2, 948
                  mul          s5, s11, s7
                  c.or         a0, s1
                  c.srli       a4, 27
                  srl          s11, t3, tp
                  c.and        a2, a2
                  c.mv         s11, sp
                  c.mv         s6, a4
                  c.li         a5, 16
                  xori         s8, t1, -493
                  mulhsu       a4, t6, a2
                  or           a7, s8, a0
                  div          s5, t0, s7
                  c.sub        s0, a1
                  c.nop
                  slli         sp, a7, 13
                  lui          t5, 759679
                  remu         tp, t1, gp
                  c.addi       s2, 28
                  slli         s4, a7, 6
                  c.lui        a1, 30
                  xor          s4, zero, a0
                  sub          t2, s5, s1
                  mul          a5, t1, s6
                  c.nop
                  c.nop
                  sll          s6, t3, s9
                  c.slli       a1, 27
                  addi         a0, ra, -1149
                  sltiu        s2, ra, -191
                  mulh         s4, a7, a0
                  xor          s11, ra, ra
                  srl          s6, t2, gp
                  sltiu        sp, a6, 701
                  and          s7, zero, tp
                  c.andi       a0, 29
                  slti         t4, tp, -273
                  sltu         a1, zero, a7
                  c.li         s4, -1
                  c.xor        a3, s0
                  srai         t3, t6, 31
                  srl          zero, s6, s7
                  sll          a4, a6, t3
                  c.slli       a3, 19
                  auipc        s7, 249577
                  rem          ra, a1, s6
                  c.xor        s0, a0
                  nop
                  srai         s4, t4, 21
                  sub          sp, s9, zero
                  c.addi4spn   a1, sp, 720
                  xori         s8, t3, -1378
                  slti         t2, a6, 1019
                  slt          a7, s6, t2
                  mulh         a3, s5, s3
                  srai         s8, a3, 10
                  c.add        s7, s11
                  xor          s7, t5, t4
                  c.addi4spn   a4, sp, 560
                  slt          t4, a2, s3
                  and          tp, a5, t2
                  sll          s10, a5, s2
                  rem          tp, a5, t2
                  sub          s10, s4, tp
                  andi         s0, sp, -124
                  rem          s5, s9, t3
                  c.andi       s0, -1
                  c.sub        a3, a2
                  ori          t0, a4, 1809
                  and          a4, s8, a5
                  xori         sp, zero, 1735
                  c.or         a5, a1
                  c.add        t3, t2
                  c.srli       a5, 7
                  c.or         a1, a1
                  c.sub        a0, a2
                  mulh         a3, s0, tp
                  sra          a0, t2, a4
                  c.andi       a4, -1
                  c.and        a3, s0
                  auipc        t6, 136690
                  mulh         a4, a3, tp
                  auipc        s11, 879799
                  c.addi16sp   sp, 384
                  slli         tp, s10, 3
                  andi         a0, s1, 218
                  mulhsu       s3, a7, zero
                  mul          s6, ra, s5
                  li           t0, 0xd7e6e235 #start riscv_int_numeric_corner_stream_14
                  li           t4, 0xffffffff
                  li           s11, 0x0
                  li           t5, 0xffffffff
                  li           s10, 0xffffffff
                  li           t3, 0xadbfd633
                  li           s6, 0x0
                  li           a2, 0x80000000
                  li           tp, 0x0
                  li           ra, 0x80000000
                  add          s10, s11, s10
                  rem          ra, s11, s10
                  mul          s6, a2, s11
                  mulhsu       t3, s6, ra
                  div          t5, ra, t0
                  div          a2, s11, t4
                  mulhsu       t4, s11, ra
                  remu         s11, s10, t0
                  lui          s6, 214951
                  mulh         ra, s11, t3
                  nop
                  mulhsu       s6, t0, tp
                  mulhu        s6, s11, t5
                  remu         t3, s11, s6
                  lui          s10, 350899
                  addi         t4, tp, 1421
                  lui          a2, 259107
                  add          t4, a2, tp
                  auipc        t4, 637683
                  div          s10, t0, t5
                  rem          t5, t4, t3
                  rem          t3, ra, t3
                  lui          s6, 959824
                  remu         s6, t5, t5
                  rem          t4, tp, t4
                  divu         s6, t5, t0
                  remu         s6, s6, s6
                  remu         t0, s10, t5 #end riscv_int_numeric_corner_stream_14
                  or           a7, t5, s0
                  c.and        a4, a2
                  xor          s0, s11, a0
                  add          sp, t1, t6
                  mulhu        zero, s8, t6
                  sltiu        ra, a0, 1649
                  or           t1, t4, t6
                  slli         a0, t5, 7
                  c.srai       a0, 8
                  sub          sp, a6, a0
                  c.srai       a3, 16
                  c.addi4spn   a3, sp, 752
                  sub          a4, sp, t5
                  or           a5, s3, a0
                  or           a7, a0, gp
                  c.add        s11, t5
                  c.addi       s7, 26
                  remu         ra, s8, tp
                  xor          t2, sp, a7
                  srli         a2, t0, 2
                  srai         s3, a5, 16
                  mul          s2, t0, s8
                  add          tp, a6, s2
                  lui          a1, 250538
                  addi         a7, t1, 1084
                  xori         t5, s5, -969
                  srli         a4, tp, 24
                  c.addi16sp   sp, 432
                  sub          a2, a5, s4
                  addi         s8, s2, -532
                  andi         s8, s1, 1006
                  addi         zero, a0, 627
                  c.addi16sp   sp, -16
                  c.add        s3, s8
                  auipc        s4, 113453
                  auipc        s4, 495197
                  auipc        s8, 90131
                  add          a7, s2, s4
                  srli         s4, a4, 29
                  andi         a1, t4, 1068
                  div          s6, s9, t3
                  c.sub        a2, a3
                  or           s7, gp, s1
                  slt          a3, s3, s5
                  c.slli       a4, 7
                  mul          t1, t6, tp
                  mulhu        t4, s8, t4
                  c.andi       a1, 23
                  slt          s8, s8, a5
                  srl          a7, tp, s7
                  slli         s6, t0, 30
                  sub          a0, t1, s4
                  slt          tp, s10, s5
                  mulh         a4, s9, gp
                  div          a4, s10, s10
                  c.andi       a2, 20
                  auipc        s4, 821949
                  auipc        s5, 985429
                  sltu         a3, t4, t2
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           t3, 0x0
                  li           sp, 0x9d29661d
                  li           t5, 0x80000000
                  li           s4, 0x80000000
                  li           t1, 0xf7aff5fc
                  li           s2, 0x490b1f8e
                  li           a7, 0xd073c311
                  li           s5, 0x0
                  li           s3, 0xd7c4e871
                  nop
                  auipc        t5, 364205
                  rem          s3, a1, a1
                  mulhu        s3, s5, a7
                  mulhu        a1, a7, t5
                  mulh         a7, sp, s2
                  remu         t3, a1, t1
                  add          s5, t5, s2
                  addi         s5, s4, -876
                  mulh         s5, a1, s2
                  div          t3, t1, s5
                  rem          t3, s2, a1
                  divu         sp, a1, sp
                  mul          t1, s2, t5
                  add          s5, a1, t5
                  sub          s2, t5, a7
                  mul          s4, a1, s3
                  mulh         sp, a1, t5
                  mul          a1, a1, t3
                  lui          sp, 117897
                  addi         t1, s2, -1552
                  mul          a7, sp, t3
                  mulhu        sp, a1, s5
                  div          t3, s2, s4
                  lui          s5, 529592 #end riscv_int_numeric_corner_stream_20
                  c.srli       a0, 15
                  slli         s5, zero, 26
                  xori         s8, a2, -24
                  c.or         a3, s1
                  remu         s0, t6, a6
                  c.addi16sp   sp, 416
                  c.and        a0, s1
                  div          a1, a2, t0
                  slti         s6, t4, -781
                  or           t0, t6, s5
                  mulhu        a4, s11, t1
                  mul          a3, t0, t6
                  divu         t4, s5, s8
                  c.srai       a4, 10
                  rem          t6, tp, t4
                  div          s4, a5, t5
                  and          t0, zero, a5
                  c.or         a4, a2
                  slt          s10, sp, s6
                  c.slli       s3, 19
                  xori         s2, sp, -842
                  mul          t4, t2, t5
                  auipc        s7, 242646
                  sltu         gp, a4, s3
                  c.srli       a4, 6
                  srli         s2, s5, 24
                  sltu         s6, zero, a6
                  slti         a5, zero, -1730
                  c.addi16sp   sp, 416
                  c.and        a5, a1
                  c.li         a7, 18
                  slt          a5, a3, s1
                  sll          s4, a5, t1
                  mul          s8, s7, s0
                  mulh         s4, t5, a5
                  sll          t6, a5, s9
                  rem          t0, s1, sp
                  c.addi4spn   a4, sp, 368
                  or           t6, t0, s10
                  lui          s3, 659550
                  mul          t6, s11, t6
                  srai         a3, a6, 31
                  sra          a3, s9, a1
                  div          s2, s1, s5
                  lui          zero, 472330
                  xori         t3, a0, 879
                  c.sub        a4, s1
                  rem          s4, s10, s0
                  mulh         s5, t3, s7
                  c.add        a2, s10
                  c.slli       a1, 19
                  andi         tp, s2, -822
                  add          s4, a6, tp
                  c.srli       a3, 5
                  div          s6, ra, s8
                  divu         a7, s11, s1
                  mul          a7, s4, s5
                  c.mv         s0, t5
                  c.sub        a0, a5
                  slt          s8, a1, s8
                  mulhu        t6, sp, a2
                  c.sub        a1, a0
                  c.srli       a1, 30
                  remu         a3, s9, a5
                  c.sub        a1, s1
                  addi         t6, t5, 1440
                  c.addi4spn   s0, sp, 80
                  andi         t6, a7, 1581
                  addi         t3, zero, 1220
                  c.slli       s3, 20
                  andi         a3, s10, 747
                  c.mv         s0, t4
                  mulhu        gp, s3, s3
                  add          a4, s10, t3
                  c.andi       a5, 23
                  divu         t3, s3, t4
                  mulh         tp, a6, a5
                  slti         s8, s1, 631
                  c.add        a4, s10
                  sra          t3, gp, t5
                  nop
                  andi         ra, s5, 151
                  c.lui        t4, 15
                  c.nop
                  c.slli       a7, 11
                  sltu         a4, s1, ra
                  c.addi16sp   sp, 16
                  addi         t6, s4, 1442
                  rem          sp, s7, s10
                  remu         a5, s9, s9
                  sra          s10, s6, s5
                  lui          t5, 655825
                  divu         a3, a6, s8
                  mul          s5, t6, ra
                  lui          s5, 329872
                  c.andi       a5, -1
                  remu         a1, t0, s11
                  c.lui        s2, 7
                  c.li         a4, -1
                  c.slli       t2, 1
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 480
                  c.addi16sp   sp, 288
                  slt          a1, s9, a2
                  sltiu        sp, sp, -298
                  srl          t1, s2, a3
                  rem          s2, a2, s11
                  srli         s8, s6, 23
                  mul          s4, t3, a4
                  mul          zero, a3, s10
                  slt          s0, s3, zero
                  sub          s8, s2, t0
                  and          s11, s8, s11
                  c.srai       a1, 24
                  c.andi       s0, 11
                  c.addi16sp   sp, -16
                  ori          t4, s2, 998
                  c.sub        a1, a3
                  or           a4, gp, t5
                  c.lui        s3, 2
                  sll          a7, a3, tp
                  c.lui        tp, 20
                  slt          a1, t3, s0
                  xor          a0, a0, t5
                  slli         a3, ra, 20
                  c.addi16sp   sp, -16
                  or           s6, t3, a6
                  srai         a1, t6, 4
                  ori          t3, t4, -442
                  sra          a3, s8, t6
                  c.xor        a4, a0
                  ori          t5, s6, -689
                  c.andi       a1, -1
                  remu         s6, t0, tp
                  add          a2, s1, zero
                  andi         s11, t4, 1682
                  andi         t6, gp, 1627
                  remu         gp, s10, a4
                  remu         a3, a6, s7
                  sub          a7, s5, t6
                  or           t2, s6, tp
                  sll          a5, s1, t0
                  xor          sp, t1, s1
                  c.lui        s4, 31
                  mulhu        a3, t1, t2
                  xor          s5, s8, a1
                  c.li         t1, -1
                  slt          t5, ra, a4
                  sltiu        s0, s1, 601
                  c.xor        a0, s0
                  c.li         s0, -1
                  c.andi       a5, 8
                  c.add        a7, t4
                  divu         t2, t0, s4
                  c.srli       a1, 18
                  add          zero, t0, t2
                  c.li         sp, 8
                  c.li         t3, 29
                  andi         a2, s11, -1228
                  c.and        a1, s0
                  c.xor        a2, a4
                  mulh         s8, t6, a0
                  c.and        a3, a1
                  c.nop
                  sra          a2, s4, t2
                  sub          tp, s4, t3
                  auipc        t1, 924596
                  ori          a1, a1, 1657
                  divu         gp, zero, t6
                  and          s2, s2, s4
                  slti         sp, sp, -1677
                  c.and        a0, a4
                  c.li         s8, -1
                  c.andi       a2, 4
                  slli         s3, s10, 2
                  divu         s3, s2, s0
                  srli         s0, a3, 7
                  mulh         a4, a2, s2
                  remu         s8, t6, s6
                  mulhu        a3, ra, s3
                  rem          a3, s4, tp
                  c.mv         t2, s0
                  c.addi16sp   sp, -16
                  c.sub        a0, a2
                  c.lui        s5, 1
                  xor          t5, s2, s8
                  auipc        s5, 313051
                  and          t6, s6, s2
                  ori          tp, a2, -154
                  srli         a3, a0, 12
                  xori         a5, a2, 528
                  c.or         a1, a2
                  c.andi       a3, 30
                  or           t1, zero, a3
                  c.srli       a0, 27
                  mulh         t0, s3, s1
                  lui          s10, 834038
                  c.srai       a1, 29
                  srai         t6, t4, 5
                  c.or         s0, s0
                  c.add        sp, t1
                  xor          s11, t6, s9
                  mulhsu       gp, s5, s2
                  c.or         s0, a2
                  c.lui        s6, 21
                  sltiu        ra, s6, -181
                  remu         t1, a4, s11
                  slti         s10, t0, 469
                  c.srli       a3, 4
                  c.addi       a2, -1
                  mulhu        s3, gp, s2
                  div          s5, s11, a3
                  c.add        t5, a1
                  sltu         a1, s3, gp
                  slti         s11, a6, -1829
                  or           ra, s3, sp
                  lui          s10, 936063
                  andi         s7, t2, -1594
                  add          a3, tp, s3
                  sltu         t2, s5, a0
                  mulhsu       s8, t2, t4
                  mulhsu       t2, s2, a1
                  srai         t3, a5, 10
                  c.srai       a1, 3
                  sltu         sp, sp, s5
                  c.add        s2, a5
                  c.srai       a2, 5
                  slt          s4, t1, s6
                  remu         t3, s4, a0
                  div          t1, s9, s0
                  xori         ra, t5, 1306
                  div          t2, s2, s7
                  sltiu        zero, a6, -693
                  rem          gp, t6, a1
                  slti         gp, s0, 1968
                  c.xor        a1, a0
                  sll          t6, s8, a6
                  mulhsu       sp, t1, t2
                  xor          a4, ra, t3
                  c.or         a2, a5
                  c.addi4spn   s0, sp, 816
                  andi         t0, t6, -1824
                  c.srli       a1, 19
                  c.li         s6, -1
                  c.addi       a1, 4
                  sra          s0, a4, a6
                  slti         zero, a1, 90
                  divu         s10, s8, t3
                  ori          s4, s5, -570
                  c.xor        a0, a2
                  sltiu        s11, s6, 557
                  c.or         s0, s1
                  remu         s8, ra, gp
                  c.sub        a1, a3
                  sll          gp, s6, s6
                  xor          s3, t5, a4
                  srl          a0, a7, s7
                  c.srli       a4, 3
                  c.addi4spn   a4, sp, 688
                  and          sp, ra, a1
                  srai         s6, t3, 14
                  c.li         gp, 3
                  div          gp, t4, gp
                  c.xor        a2, a4
                  xori         zero, t1, 426
                  sub          s2, tp, a0
                  auipc        a1, 126903
                  c.and        a3, a4
                  sub          a3, ra, t6
                  c.add        a5, tp
                  auipc        s4, 702821
                  c.and        s0, a0
                  mulhu        gp, t3, t3
                  mulh         a5, a4, a6
                  c.addi4spn   a5, sp, 464
                  add          a3, a0, zero
                  andi         a5, s3, 276
                  addi         s7, s2, -1415
                  lui          a3, 947762
                  c.and        a3, a3
                  nop
                  sltiu        s2, s11, -1971
                  div          gp, ra, t0
                  srli         s11, a7, 9
                  li           t4, 0x74137aac #start riscv_int_numeric_corner_stream_0
                  li           t1, 0xe0bfa3ce
                  li           ra, 0x6a2d790d
                  li           s0, 0xffffffff
                  li           s11, 0x7dc8463a
                  li           s4, 0x80000000
                  li           a2, 0xc2675016
                  li           s2, 0xffffffff
                  li           s5, 0x6faffcd
                  li           a3, 0x0
                  divu         ra, ra, s0
                  addi         s4, s0, 502
                  nop
                  remu         s4, s4, s11
                  mul          s5, a2, t1
                  auipc        s2, 287452
                  mul          ra, ra, a3
                  divu         s0, a2, a2
                  mulhsu       s11, a2, s4
                  auipc        s2, 140050
                  mulhsu       ra, t4, t4
                  mul          t1, s0, ra
                  remu         s2, t1, s2
                  remu         s5, s2, a3
                  lui          t4, 198348
                  remu         s5, s2, s2
                  lui          s0, 887405
                  sub          a2, a3, s0
                  mul          s2, s11, s2
                  nop
                  div          s2, t4, s5
                  add          a2, ra, ra #end riscv_int_numeric_corner_stream_0
                  c.slli       s2, 21
                  mul          t2, a5, s3
                  andi         s0, s8, -204
                  mulhsu       s2, zero, t2
                  mulhu        a2, a1, a1
                  addi         zero, s4, 1108
                  c.or         a3, s0
                  sra          s4, sp, a6
                  xori         t6, zero, -866
                  sra          t2, sp, zero
                  ori          a1, a4, 1717
                  and          s4, t5, s9
                  mul          t4, t4, t1
                  srai         gp, t1, 7
                  c.addi       s2, 12
                  c.addi       s6, -1
                  or           s11, s6, t1
                  sltu         a0, t4, a3
                  srli         a7, s0, 20
                  sub          a4, a2, s5
                  rem          s2, a7, s1
                  c.addi       sp, 30
                  rem          s2, s11, gp
                  sll          s8, s9, t3
                  c.add        s8, t4
                  xor          t3, a0, t6
                  xori         t0, a7, 244
                  xori         a5, s9, 140
                  srli         t4, t1, 17
                  addi         t6, a7, -399
                  divu         a7, t1, a5
                  c.addi4spn   s0, sp, 528
                  c.xor        a4, a5
                  xor          s8, a6, a3
                  c.and        a5, a5
                  div          sp, zero, a5
                  remu         s0, s3, a5
                  c.xor        s0, a2
                  c.and        a0, s0
                  sra          a1, gp, zero
                  c.or         a5, s0
                  and          t3, t2, s8
                  rem          s0, s8, gp
                  add          t3, s8, s9
                  sra          t0, a1, gp
                  c.or         s0, s0
                  c.addi16sp   sp, -16
                  or           a2, t4, s7
                  lui          t3, 441166
                  srl          gp, gp, t2
                  c.srai       s0, 29
                  sra          t0, sp, a1
                  or           t3, s2, s1
                  mul          a3, s10, t2
                  slt          s11, a3, a1
                  div          a2, s11, s4
                  nop
                  c.slli       a5, 14
                  c.add        s2, s3
                  c.nop
                  c.or         s0, a3
                  mul          a4, s10, s6
                  sub          s2, s4, s8
                  or           s8, ra, s6
                  slt          t4, t3, t5
                  andi         a5, t0, -1974
                  c.srai       a4, 27
                  srai         s11, s9, 3
                  mulhu        t2, t3, a7
                  c.nop
                  nop
                  srli         s4, a6, 7
                  c.add        a4, ra
                  div          s2, a7, s7
                  andi         t4, t6, -823
                  mulhsu       a3, t1, s3
                  addi         ra, s5, -1076
                  nop
                  c.add        a4, a1
                  auipc        a1, 517041
                  mulhu        s2, s1, a3
                  mulhsu       a3, t5, s5
                  mulhsu       t0, s3, ra
                  sra          s11, s4, a2
                  c.or         a3, a4
                  c.nop
                  sltu         s6, s6, s11
                  xor          s5, t6, a2
                  mulhu        a1, s7, a1
                  srai         t2, s0, 30
                  c.lui        s11, 1
                  c.andi       a5, 17
                  and          a3, s5, a3
                  c.srai       a1, 28
                  or           a0, t4, ra
                  sltiu        zero, t3, 958
                  lui          tp, 684150
                  c.nop
                  slti         t2, a6, 1418
                  c.slli       s4, 8
                  c.lui        a1, 6
                  mul          s0, s9, t6
                  slti         s4, s6, -760
                  slli         a0, a3, 6
                  c.or         a4, a0
                  c.andi       a4, 27
                  sltu         a4, a4, a2
                  c.addi4spn   a3, sp, 80
                  c.and        a2, a0
                  c.slli       a0, 28
                  c.mv         t0, a7
                  or           s3, t0, s2
                  mulhu        t0, gp, a2
                  and          t0, t5, tp
                  auipc        a2, 218738
                  c.xor        a0, a0
                  c.add        ra, s2
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           sp, 0x80000000
                  li           s5, 0x27e15aac
                  li           t1, 0x5c247d17
                  li           t6, 0x0
                  li           s4, 0xffffffff
                  li           gp, 0xffffffff
                  li           s7, 0xffffffff
                  li           s8, 0x80000000
                  li           a3, 0x471dd63b
                  divu         s4, gp, t6
                  div          s0, s5, t1
                  lui          t1, 85243
                  sub          sp, s5, s7
                  sub          s8, s5, s7
                  nop
                  mulhsu       s7, t1, s0
                  remu         s8, s7, t6
                  lui          s8, 910395
                  mul          t1, t1, t6
                  mulhsu       t6, s8, gp
                  auipc        s4, 349015
                  divu         a3, s8, sp
                  sub          s7, s0, s0
                  mulh         s8, s7, sp
                  remu         s8, gp, s8
                  mulh         gp, t6, s7
                  div          gp, gp, t6
                  sub          t1, s0, t1
                  mulhu        gp, s4, t1
                  addi         gp, s5, -36
                  addi         t6, a3, -1702
                  sub          s0, t6, t6 #end riscv_int_numeric_corner_stream_15
                  nop
                  c.lui        tp, 27
                  c.addi       a7, 26
                  nop
                  srl          zero, s2, t6
                  nop
                  divu         a4, t3, t2
                  c.add        s2, t1
                  sltu         s5, t6, s3
                  mul          s7, t2, a3
                  div          zero, t4, t1
                  divu         t3, t3, s8
                  c.mv         t5, t0
                  div          sp, a3, a0
                  divu         a4, tp, sp
                  slli         s6, s9, 31
                  auipc        s3, 668901
                  c.addi       gp, -1
                  add          tp, t2, s2
                  sltiu        tp, ra, 569
                  sll          s7, s5, a3
                  sltiu        s3, t6, -1542
                  sub          s0, zero, zero
                  srl          a5, t6, s1
                  andi         t4, t4, 523
                  slti         t3, t2, 1993
                  slli         t6, t6, 18
                  mulh         t1, t0, s8
                  srli         s7, s0, 19
                  sll          s0, sp, a1
                  c.addi16sp   sp, -16
                  remu         s11, s5, t3
                  c.and        s0, a3
                  c.or         a4, a3
                  c.slli       s2, 2
                  srai         ra, a2, 5
                  c.srai       a3, 22
                  slt          a3, a4, sp
                  slli         s10, a4, 26
                  c.srai       a1, 28
                  c.addi4spn   a3, sp, 400
                  and          ra, t6, s11
                  lui          s8, 909401
                  c.nop
                  addi         a3, s5, 125
                  c.mv         ra, s6
                  c.slli       t3, 27
                  c.and        a0, a0
                  xori         a1, sp, -677
                  slli         t6, sp, 18
                  sltu         t5, a2, s0
                  sltu         s5, s5, t4
                  addi         s4, a6, -1684
                  c.lui        s8, 24
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a0, 0xc6c29070
                  li           sp, 0x0
                  li           gp, 0x0
                  li           ra, 0xd7afbb5e
                  li           s8, 0x5b7b29b6
                  li           s10, 0x4d259694
                  li           a3, 0x0
                  li           s3, 0x0
                  li           a7, 0x5675b215
                  mulhsu       ra, a7, sp
                  lui          a0, 50445
                  rem          a3, s8, s3
                  div          a7, gp, t0
                  divu         sp, a7, a3
                  mulh         a3, sp, s8
                  remu         sp, s3, a0
                  auipc        s3, 255369
                  rem          t0, a3, s10
                  sub          a3, a3, sp
                  lui          a3, 920948
                  div          gp, s3, s10
                  nop
                  mul          a0, a7, s8
                  mul          ra, t0, t0
                  nop
                  addi         ra, t0, 314
                  lui          a3, 804158
                  rem          t0, a3, s3
                  div          sp, s8, ra
                  mulhu        sp, s10, ra
                  mul          s10, s8, gp
                  divu         a7, a7, a0
                  lui          sp, 477117
                  auipc        gp, 71810
                  nop #end riscv_int_numeric_corner_stream_17
                  c.mv         t5, s2
                  and          s8, ra, a2
                  c.addi16sp   sp, -16
                  div          t3, a4, a6
                  c.andi       a1, -1
                  c.mv         gp, s6
                  lui          gp, 921051
                  sll          s10, t6, t3
                  auipc        s0, 14640
                  sra          s11, t5, a2
                  c.and        a0, a4
                  slli         gp, s8, 16
                  sll          s6, t4, a1
                  mul          t2, a1, s6
                  sra          zero, s4, s7
                  slti         s6, a0, 1293
                  auipc        a1, 828480
                  srai         t5, t1, 15
                  ori          s8, a6, -2018
                  xori         s0, s3, 1301
                  or           s10, s1, t2
                  sra          s2, a3, t3
                  or           ra, t4, gp
                  mulhsu       s8, a3, s7
                  c.addi       s0, 16
                  srli         s8, s6, 18
                  slti         gp, s6, 1081
                  sub          a0, s2, t2
                  add          s6, a6, s2
                  c.xor        a0, a2
                  c.lui        s5, 24
                  sub          t6, s1, s3
                  c.lui        a1, 18
                  slt          t4, s9, s0
                  c.sub        s0, s1
                  c.nop
                  andi         s4, s0, 988
                  or           a3, s3, s0
                  c.slli       a7, 26
                  c.slli       ra, 6
                  c.addi16sp   sp, -16
                  andi         s4, t0, 303
                  c.add        t4, ra
                  c.srai       a2, 30
                  c.sub        s0, s0
                  c.addi16sp   sp, -16
                  srli         a3, a0, 3
                  sltiu        s0, s3, 1687
                  srl          a0, s9, ra
                  c.and        a3, a5
                  slli         s5, s0, 23
                  srai         t0, s1, 21
                  srl          s10, a2, t3
                  c.srli       a4, 1
                  c.srli       a0, 8
                  add          a3, s7, t3
                  nop
                  c.addi       s5, -1
                  c.and        s0, a1
                  mul          s6, t6, t6
                  addi         a3, a6, -1292
                  slt          s3, t2, a1
                  rem          gp, t3, s7
                  c.sub        a3, a4
                  c.addi4spn   a1, sp, 432
                  mulhsu       s11, t4, a5
                  c.srai       a0, 4
                  xori         t4, sp, -76
                  c.add        s3, t2
                  c.addi4spn   a1, sp, 48
                  mulh         a0, t2, s5
                  c.srli       s0, 7
                  srli         s8, t2, 22
                  sltu         t1, sp, a5
                  div          a7, t2, s4
                  c.li         t4, 21
                  c.slli       a5, 11
                  c.andi       a2, -1
                  srli         a2, s8, 7
                  srli         gp, a4, 21
                  or           s11, a4, s7
                  add          a5, t2, s8
                  srl          a7, sp, t4
                  mulhsu       a4, gp, s3
                  c.li         a3, -1
                  addi         a5, s8, 409
                  xor          t3, a6, t0
                  c.add        ra, a1
                  srl          t4, a0, t1
                  slli         t5, a2, 31
                  c.addi4spn   a5, sp, 112
                  c.srli       a3, 22
                  sll          a7, s3, t1
                  remu         t3, s7, tp
                  add          sp, s0, sp
                  remu         t3, t1, s11
                  sltiu        s0, t2, 1905
                  or           s4, t6, a0
                  c.and        a5, a0
                  srl          gp, s10, a4
                  sltu         s2, t6, s7
                  c.nop
                  and          t6, t6, a0
                  c.addi4spn   a0, sp, 1008
                  and          zero, gp, t1
                  c.and        a1, a3
                  lui          t5, 43101
                  remu         tp, s9, s6
                  c.srli       a4, 6
                  and          s0, a6, t4
                  mulhsu       s8, t5, sp
                  rem          t0, s9, a7
                  xor          gp, sp, a7
                  c.lui        s2, 9
                  sll          s3, s1, a5
                  and          s11, a3, tp
                  srl          gp, s5, a5
                  c.slli       t2, 8
                  xor          s5, t6, ra
                  or           s7, t6, s2
                  c.slli       s3, 3
                  div          zero, a4, t0
                  c.li         t1, 15
                  xor          s5, t6, a5
                  c.andi       a2, 13
                  addi         s0, s4, 2031
                  c.lui        a0, 1
                  sra          a4, a6, s1
                  ori          ra, s3, 1450
                  c.andi       a3, 3
                  c.andi       a5, 24
                  slt          s11, s8, s3
                  c.nop
                  mul          ra, a1, s3
                  c.srli       a5, 24
                  c.lui        s10, 13
                  c.andi       a1, 11
                  c.and        a2, s0
                  slt          s6, tp, t2
                  nop
                  and          t3, a1, a0
                  slti         zero, s7, -787
                  div          gp, s10, s1
                  c.xor        a0, s0
                  xori         s6, s5, -1901
                  addi         s2, s2, -1716
                  mulhu        sp, t0, s2
                  slli         zero, a4, 20
                  sra          a4, s2, gp
                  c.andi       a5, -1
                  c.xor        a4, a2
                  c.sub        a4, a5
                  c.mv         a0, ra
                  auipc        s5, 274791
                  c.addi16sp   sp, 256
                  mul          gp, t4, a3
                  c.lui        a5, 28
                  xori         zero, s10, 857
                  sll          a1, s3, t3
                  sltu         s2, s11, sp
                  c.xor        s0, a4
                  c.srai       a1, 15
                  mul          a3, s3, a0
                  slli         t3, t2, 30
                  srl          t2, t5, a4
                  c.nop
                  c.mv         s8, sp
                  c.addi16sp   sp, -16
                  ori          a7, s10, 1255
                  slti         t5, tp, 1034
                  rem          a2, s11, s3
                  mulhu        a7, sp, a3
                  c.addi       ra, 20
                  auipc        ra, 823231
                  c.add        s4, a6
                  c.srli       a5, 24
                  rem          gp, t3, a1
                  c.li         a3, -1
                  c.or         a0, a3
                  c.slli       t3, 27
                  remu         gp, s5, t0
                  lui          t6, 73807
                  mul          s7, zero, ra
                  sltiu        tp, tp, 70
                  lui          s2, 300239
                  auipc        s10, 391763
                  srai         t2, s1, 27
                  sltu         t1, a7, a2
                  divu         t5, s8, s0
                  srli         a1, t6, 24
                  c.addi       sp, -1
                  slti         s10, s9, 1885
                  c.mv         t4, a3
                  auipc        sp, 931379
                  c.slli       t6, 14
                  rem          s0, a2, s10
                  c.srli       a4, 29
                  sra          zero, s8, ra
                  c.srai       a2, 13
                  mulhsu       t5, a4, s11
                  sltiu        s8, s1, -1113
                  lui          s11, 192904
                  mulhsu       s2, a5, s9
                  c.srli       a0, 1
                  c.sub        a5, s1
                  c.addi4spn   a1, sp, 432
                  c.mv         t5, s4
                  rem          a3, a3, a7
                  auipc        s3, 20620
                  ori          a0, s2, 647
                  xori         s4, t1, -746
                  sll          t0, t6, s11
                  c.sub        a1, a0
                  c.addi16sp   sp, 400
                  srl          tp, s5, a4
                  mulh         a5, s0, s2
                  mulhu        s3, s10, zero
                  ori          s6, s9, -1004
                  mul          t3, a0, s8
                  sltiu        t4, t0, -645
                  divu         t4, t5, t3
                  sll          a0, a3, t6
                  or           a4, s3, s10
                  slli         s8, s7, 2
                  c.li         a4, -1
                  rem          s5, a5, s4
                  li           t1, 0xe8d2b9db #start riscv_int_numeric_corner_stream_28
                  li           a3, 0xffffffff
                  li           a1, 0x80000000
                  li           t2, 0xffffffff
                  li           a5, 0x80000000
                  li           t6, 0x0
                  li           s11, 0x0
                  li           s6, 0x0
                  li           s3, 0x80000000
                  li           a2, 0xdd7114b4
                  sub          t6, a3, s11
                  sub          a3, a2, a1
                  divu         s11, a1, t2
                  nop
                  add          a3, t6, s6
                  divu         a1, s11, s3
                  mulhu        a5, s3, a5
                  auipc        s3, 6625
                  remu         s3, a2, s3
                  mulhu        s3, a5, s3
                  lui          a2, 955503
                  mulh         a3, t2, a3
                  div          t1, s3, a2
                  rem          a5, s6, a5
                  rem          t6, a3, s3
                  mulhsu       a3, s6, t1 #end riscv_int_numeric_corner_stream_28
                  rem          s5, a4, sp
                  sll          s6, a6, s0
                  c.srli       a3, 9
                  auipc        t6, 818643
                  c.slli       t6, 16
                  ori          tp, s2, -55
                  c.li         a7, -1
                  c.addi       a7, -1
                  c.srai       a0, 12
                  srai         s11, a5, 19
                  mulh         s3, t6, s7
                  c.srli       s0, 2
                  srai         s8, t4, 22
                  mulh         t0, a3, s8
                  nop
                  c.or         s0, a1
                  mulhsu       a4, t1, s9
                  slt          s4, a5, t0
                  nop
                  nop
                  ori          a7, t4, 459
                  auipc        a0, 321933
                  remu         sp, s3, s3
                  mulh         a3, s7, s4
                  c.lui        tp, 25
                  div          t4, a3, a2
                  c.lui        a1, 13
                  nop
                  c.and        a4, a2
                  c.sub        a4, s1
                  mul          t6, a3, a4
                  add          s6, a2, s11
                  c.sub        a0, a0
                  c.slli       sp, 5
                  slt          s11, s3, s7
                  xori         a2, s10, 495
                  xor          a4, zero, ra
                  c.srli       a2, 31
                  div          t2, s0, t2
                  slli         a0, s4, 9
                  auipc        t4, 36041
                  c.mv         s0, a7
                  srli         s4, a7, 6
                  addi         s6, a0, 672
                  xori         sp, t4, 660
                  c.lui        s2, 21
                  mulhu        a7, tp, a2
                  srl          s8, t6, zero
                  and          a2, a1, ra
                  ori          a3, t0, 541
                  slt          t2, s5, s0
                  sltu         a1, s3, s2
                  nop
                  andi         t5, t0, 1055
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           gp, 0x97264c82
                  li           a7, 0x0
                  li           t4, 0xe7afe561
                  li           sp, 0x80000000
                  li           t6, 0xffffffff
                  li           s2, 0x80000000
                  li           t2, 0x1d8b1d72
                  li           s11, 0x80000000
                  li           t3, 0xffffffff
                  sub          t6, sp, s11
                  mulh         a7, t3, gp
                  sub          t2, t1, s11
                  sub          t1, sp, t1
                  divu         t4, s2, s11
                  sub          t4, sp, sp
                  mulhu        a7, sp, t6
                  addi         t4, t2, -944
                  rem          a7, t2, t3
                  add          t2, t4, t4
                  lui          t3, 1014790
                  add          t2, t1, t4
                  auipc        t3, 451583
                  sub          t2, s11, t6
                  sub          t1, t4, t6
                  mulhu        t3, s2, t3 #end riscv_int_numeric_corner_stream_24
                  div          t0, t5, a2
                  sub          tp, a0, a7
                  c.or         s0, a0
                  xori         a5, t4, 597
                  sltiu        a3, s8, 1730
                  slti         s0, a3, -1355
                  sltiu        s0, s11, -822
                  rem          gp, tp, a3
                  sltu         t6, s5, s2
                  c.or         a3, a0
                  remu         s6, s10, s11
                  c.add        a4, t5
                  slt          s8, a6, s7
                  remu         t3, s11, s9
                  c.sub        s0, a5
                  sltiu        s8, a7, 1953
                  c.slli       s5, 4
                  lui          t2, 216388
                  or           zero, t3, t6
                  rem          a4, gp, t0
                  c.and        a1, a3
                  c.addi16sp   sp, -16
                  c.addi       a7, 3
                  add          s7, s1, t5
                  addi         a5, a2, 462
                  mulh         s3, a4, s5
                  addi         s8, s2, 1106
                  ori          gp, s11, 1919
                  mul          zero, s4, a7
                  mulhsu       a5, a2, s9
                  c.sub        a5, a0
                  c.xor        a5, s0
                  c.and        a1, a1
                  slli         a5, t4, 29
                  srai         a5, a7, 14
                  c.slli       s8, 23
                  c.addi4spn   a3, sp, 32
                  xor          tp, s4, gp
                  sra          s5, s7, s7
                  c.addi       a3, -1
                  xori         a5, t4, -1010
                  remu         s6, t4, a2
                  addi         s5, gp, -1201
                  c.and        a2, a5
                  c.and        a4, a5
                  c.add        a7, s3
                  srai         gp, s2, 30
                  sub          a1, a7, t4
                  sra          s5, t5, a3
                  c.srli       a0, 25
                  c.and        a5, a0
                  c.srli       s0, 2
                  auipc        sp, 407856
                  c.addi       s7, 25
                  c.addi4spn   a4, sp, 400
                  xor          ra, ra, t0
                  slli         a3, t4, 10
                  c.addi16sp   sp, 336
                  nop
                  slti         t3, s3, -1036
                  xor          t3, t2, s8
                  mul          t0, t0, s9
                  sltu         a3, a4, s0
                  mulhsu       s8, s2, a3
                  mulhu        s6, a5, t2
                  rem          s6, t5, a0
                  slti         s7, s10, -1482
                  lui          s10, 698019
                  addi         t1, s5, -1462
                  mulh         ra, s3, s11
                  xor          a1, t4, a0
                  srl          t2, a7, t6
                  c.and        a1, a2
                  addi         t6, a2, 345
                  div          t2, ra, t6
                  c.or         a3, s0
                  sra          ra, t5, t3
                  div          tp, s2, s6
                  sltu         a1, ra, t6
                  srl          s6, a2, s7
                  nop
                  lui          t4, 312377
                  c.addi       a5, -1
                  mul          s0, s8, gp
                  addi         s3, a7, 59
                  add          a5, t0, s8
                  xor          s0, a5, t1
                  xor          a1, s6, gp
                  sltiu        a3, s11, -1933
                  c.addi16sp   sp, 320
                  sltiu        s4, ra, -964
                  xor          s5, t3, t6
                  srai         t0, sp, 15
                  sltu         t6, a6, t6
                  div          a2, a0, s11
                  c.xor        a2, a0
                  srl          s6, ra, a5
                  srai         s0, s4, 6
                  srl          s4, s5, a2
                  lui          a0, 201557
                  c.slli       a4, 17
                  c.or         a0, s1
                  nop
                  andi         s7, s8, 1154
                  sub          a3, s6, a6
                  c.srai       a3, 9
                  slti         s11, a4, 1493
                  srl          t4, t3, a1
                  mulhu        t1, a6, t0
                  addi         t6, s6, 1810
                  c.and        s0, a0
                  srai         t1, t6, 3
                  c.addi16sp   sp, -16
                  auipc        t4, 804193
                  divu         t5, s5, s1
                  andi         s6, zero, 1946
                  c.srai       a5, 16
                  c.addi       a0, -1
                  c.addi16sp   sp, -16
                  add          s3, a7, a0
                  c.lui        a4, 5
                  sra          tp, s7, s9
                  rem          t1, zero, ra
                  mul          s10, s0, t6
                  rem          s6, t6, s0
                  c.lui        a0, 7
                  rem          s0, a7, s2
                  c.mv         t3, a3
                  c.and        s0, s1
                  c.addi       a5, -1
                  srai         a4, ra, 23
                  c.nop
                  auipc        a2, 715596
                  lui          s5, 764042
                  nop
                  mulh         t6, ra, s4
                  xor          s8, s1, t3
                  lui          a7, 812219
                  slli         tp, t3, 15
                  c.sub        a0, a5
                  sltu         a5, t3, a1
                  xori         s3, s3, 712
                  slt          s0, t6, s0
                  c.nop
                  div          a1, a3, s2
                  rem          s3, s9, s5
                  mulh         s4, a6, a7
                  c.srli       a4, 3
                  c.srai       a0, 19
                  xor          t1, ra, t3
                  addi         s0, a5, 1321
                  c.addi4spn   a1, sp, 864
                  xor          tp, s9, a6
                  c.or         a5, s0
                  c.lui        t2, 13
                  c.slli       s2, 7
                  xor          s0, t3, t2
                  c.li         a4, 16
                  mul          zero, t4, s1
                  c.and        a1, a3
                  divu         t4, a6, t4
                  c.srai       a1, 10
                  sra          a3, t2, a2
                  c.srli       s0, 16
                  mul          s8, t6, a2
                  c.or         a5, s1
                  mulhsu       ra, s11, a7
                  srl          s0, s1, s10
                  rem          gp, s2, s0
                  add          s0, s9, a7
                  sub          a7, s9, t6
                  srli         t4, t4, 15
                  c.mv         a4, t2
                  c.li         t5, -1
                  c.and        a1, a2
                  sub          a7, s2, s2
                  sra          s2, s2, a3
                  c.lui        t6, 29
                  ori          a1, a6, -354
                  sub          a2, sp, s2
                  rem          a7, a2, gp
                  sra          t4, a7, a0
                  addi         t6, s7, -254
                  sll          a7, s10, t4
                  divu         s4, t6, s10
                  div          a1, zero, zero
                  mulhsu       t2, t5, tp
                  div          t2, t3, s10
                  c.slli       a7, 6
                  c.addi4spn   s0, sp, 80
                  or           t1, a4, a1
                  c.sub        a3, a1
                  c.srli       a2, 20
                  c.li         s11, 12
                  c.addi4spn   a1, sp, 624
                  c.slli       a0, 25
                  rem          t5, s6, a5
                  sll          a7, t5, sp
                  sub          a2, s10, t2
                  divu         s4, t3, s0
                  or           a1, s3, t4
                  c.srai       a3, 25
                  andi         s8, zero, 88
                  remu         a5, t5, a6
                  c.lui        s0, 30
                  andi         t1, a3, -1671
                  sll          s0, t3, s7
                  slli         s3, tp, 2
                  c.add        a7, a6
                  ori          s8, sp, -555
                  sltu         s3, t1, s5
                  sll          s4, t2, t6
                  auipc        s10, 875636
                  mulh         tp, sp, t2
                  c.srli       a5, 21
                  c.xor        a4, s0
                  c.and        a4, s1
                  sub          s5, sp, a3
                  lui          a5, 436115
                  andi         t1, a2, -204
                  rem          s5, t5, t5
                  c.slli       t6, 21
                  addi         ra, t6, 1766
                  c.addi       ra, -1
                  sll          a2, a0, a0
                  xor          t4, a7, a2
                  add          t1, a5, s4
                  mulhu        t4, a1, t5
                  c.addi4spn   a5, sp, 576
                  c.nop
                  slti         s0, t6, 439
                  c.srai       s0, 31
                  mul          a3, s6, s5
                  c.lui        s10, 19
                  ori          s3, t4, 47
                  xori         zero, s0, 1237
                  c.lui        a1, 24
                  mulhsu       s6, a1, t4
                  div          t6, a4, s9
                  ori          zero, zero, -172
                  and          a0, s4, s2
                  mulhsu       a7, s0, a4
                  mul          s5, t2, a3
                  mulhsu       s8, s6, s4
                  c.sub        a2, a0
                  sltiu        s11, sp, 1401
                  c.lui        a1, 4
                  sltu         s11, s2, s3
                  c.lui        t5, 23
                  slti         s5, zero, 864
                  c.andi       a3, 25
                  mulhsu       s0, ra, s2
                  c.andi       a2, -1
                  c.li         t4, 21
                  ori          s8, t4, 1449
                  c.slli       t1, 16
                  c.srli       a0, 27
                  nop
                  mul          s4, a3, t6
                  remu         s6, t1, a3
                  mul          zero, t2, a4
                  add          zero, s3, a3
                  addi         t5, a3, -900
                  nop
                  slt          s3, a1, t6
                  auipc        a3, 512814
                  c.and        a0, a4
                  c.and        a3, a3
                  c.andi       s0, 27
                  ori          a7, a4, 755
                  c.addi       sp, 8
                  c.srli       s0, 11
                  slli         a0, a2, 30
                  remu         sp, gp, s4
                  c.and        a3, a3
                  c.srli       a0, 12
                  ori          s7, s1, 1294
                  srli         tp, zero, 25
                  div          a0, t5, a1
                  slt          a2, s9, ra
                  add          zero, t2, t4
                  c.add        s3, a3
                  mulhu        a1, s3, s3
                  srai         ra, s2, 16
                  sltiu        a3, ra, 1551
                  ori          t2, s2, 854
                  c.andi       a4, -1
                  sltiu        s0, a7, 1859
                  c.or         a1, s0
                  srai         s2, t2, 8
                  rem          s11, s1, s6
                  c.srai       a4, 14
                  c.or         a5, a2
                  srli         a2, zero, 19
                  mulh         s5, sp, s6
                  addi         a1, s0, 488
                  andi         zero, s0, -1883
                  c.sub        a1, a5
                  nop
                  c.xor        s0, a5
                  sltu         s3, t1, s9
                  add          s7, sp, t4
                  c.addi16sp   sp, 256
                  andi         a2, s10, 223
                  rem          a4, zero, t5
                  mulhu        ra, a3, t3
                  c.lui        s3, 5
                  mulh         s8, s9, tp
                  andi         s4, s6, 1972
                  div          a0, a6, a0
                  rem          a0, a5, tp
                  c.addi4spn   a1, sp, 880
                  c.andi       a4, 18
                  and          a1, zero, sp
                  mulhu        gp, ra, a7
                  sra          s8, tp, t2
                  srli         t1, a2, 13
                  slli         t4, ra, 12
                  c.andi       a4, 8
                  slt          s4, t6, a3
                  c.mv         sp, a1
                  nop
                  sub          sp, a7, s3
                  c.srli       a0, 8
                  slt          s0, s7, a1
                  c.or         a1, a0
                  divu         t2, a5, s0
                  c.mv         t3, ra
                  slli         t6, s11, 22
                  sub          a3, s6, s4
                  div          a4, s1, ra
                  sltiu        a2, s6, -1495
                  addi         a1, t0, 164
                  c.lui        s6, 21
                  nop
                  c.xor        a2, a4
                  c.srli       a2, 20
                  sltiu        zero, s4, -1103
                  sub          a7, s4, gp
                  srai         s8, sp, 25
                  ori          a7, tp, -45
                  c.lui        s2, 16
                  andi         t4, s5, 1495
                  xori         t0, s7, -517
                  c.addi4spn   a2, sp, 48
                  c.addi16sp   sp, 208
                  c.mv         s2, ra
                  mulhu        a7, s1, a2
                  ori          s0, t3, 1609
                  and          a5, s10, s9
                  c.addi       t1, -1
                  c.srai       a5, 18
                  rem          a3, a0, s7
                  c.or         a4, a0
                  mul          s2, s10, a0
                  add          s5, s3, a4
                  rem          s8, t3, t4
                  mulhsu       tp, s2, a2
                  c.andi       a2, -1
                  rem          ra, s4, a0
                  sub          s7, t4, t3
                  c.mv         a4, a5
                  sltu         t0, a7, a1
                  slli         s3, s0, 3
                  addi         t1, ra, -1796
                  c.addi       t1, -1
                  c.slli       t4, 23
                  c.li         s10, -1
                  c.add        s3, s10
                  sub          s4, s0, a4
                  c.sub        a2, a5
                  nop
                  or           zero, s0, t2
                  xori         tp, gp, -1786
                  mulhu        s0, s6, s6
                  slti         a2, a6, -1254
                  xori         s4, tp, 1373
                  srai         s6, a5, 19
                  mulhsu       a5, t4, s9
                  mul          s10, a2, t0
                  c.slli       t0, 19
                  c.andi       a4, -1
                  mulhu        a5, t5, a6
                  add          s2, t4, s7
                  c.srai       a5, 24
                  c.and        a2, s0
                  sltiu        a5, s8, -1666
                  mulhu        s4, s6, s11
                  auipc        ra, 524787
                  xor          a7, s4, zero
                  c.and        a5, a0
                  slti         a5, a3, 1754
                  mulhsu       a0, s9, t1
                  sltu         t3, s7, s4
                  sra          s5, s2, s1
                  c.addi4spn   a5, sp, 224
                  c.srai       a2, 15
                  srli         a1, s9, 16
                  c.srai       a4, 28
                  xori         zero, s1, -2041
                  remu         t4, t4, t0
                  srl          t5, s0, a4
                  c.srli       a3, 5
                  addi         s4, a5, 1882
                  slli         t3, s10, 21
                  c.addi16sp   sp, -16
                  c.mv         a2, t4
                  xor          a0, s7, s2
                  srai         a7, s0, 5
                  nop
                  sra          s8, a1, s11
                  c.xor        a2, s0
                  srai         s2, s2, 1
                  c.andi       a2, -1
                  remu         a1, s0, a4
                  c.or         a2, a2
                  auipc        t1, 183522
                  slt          t4, t2, s2
                  nop
                  divu         a7, t5, t5
                  srli         s3, s2, 18
                  sltiu        a3, s2, 933
                  lui          s2, 958560
                  c.sub        s0, s0
                  nop
                  c.sub        a5, s1
                  nop
                  mulhu        zero, a6, sp
                  c.sub        a1, a2
                  addi         a4, s0, -1437
                  c.or         s0, a1
                  srli         gp, a0, 12
                  ori          s2, s7, -381
                  mulhsu       a7, s0, tp
                  auipc        a5, 435687
                  sll          a2, t1, tp
                  divu         s11, s7, a6
                  c.nop
                  andi         s4, t5, -809
                  lui          s0, 536550
                  rem          t4, a0, t0
                  mul          a1, t0, t3
                  c.andi       a4, 7
                  rem          t4, s4, s9
                  divu         gp, s3, t2
                  or           a4, ra, a6
                  remu         t4, t3, a1
                  add          tp, t1, s5
                  sltiu        s3, s5, 967
                  sll          a5, a3, a4
                  c.addi       t1, 27
                  mul          a7, t5, gp
                  c.nop
                  c.addi4spn   a1, sp, 560
                  mulh         s0, s7, sp
                  mulh         gp, t5, a2
                  nop
                  xori         t4, s7, -1434
                  div          t3, t0, t1
                  lui          s10, 783079
                  xori         s8, s0, 1182
                  rem          t2, t6, s3
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s7, 0xffffffff
                  li           t0, 0x80000000
                  li           a0, 0x80000000
                  li           a4, 0x0
                  li           s0, 0x80000000
                  li           tp, 0xffffffff
                  li           s8, 0x80000000
                  li           t2, 0xffffffff
                  li           a5, 0x80000000
                  rem          t0, s8, s8
                  auipc        a7, 917359
                  lui          s7, 88450
                  mulh         s7, tp, a7
                  divu         tp, s0, a5
                  mulhsu       s8, s7, tp
                  nop
                  addi         a7, a0, 625
                  rem          a0, s8, tp
                  auipc        t0, 631603
                  mulhu        a4, a7, a7
                  add          a7, tp, a4
                  div          t2, s0, a5
                  rem          tp, s7, tp
                  divu         s8, t0, a7
                  remu         a4, s7, t2
                  mulhu        a5, tp, a5
                  add          tp, a0, a0
                  lui          a5, 768253
                  div          tp, s8, t2
                  mulhu        a7, a5, t2
                  auipc        a5, 987703
                  remu         a5, s8, s0
                  sub          t2, a0, s7
                  lui          s8, 113775
                  nop
                  lui          a5, 174319 #end riscv_int_numeric_corner_stream_12
                  c.li         a1, -1
                  slli         s8, a1, 2
                  addi         a4, t4, 494
                  c.add        s5, a7
                  c.srai       a2, 16
                  sltu         s8, t0, s0
                  c.srli       a0, 28
                  auipc        a1, 468021
                  auipc        s4, 272390
                  remu         t1, a4, t5
                  srai         s11, t0, 2
                  sltu         t1, a7, s10
                  xor          tp, s2, s7
                  auipc        a7, 442807
                  slt          t3, tp, t4
                  c.xor        a3, a3
                  c.mv         a7, ra
                  c.lui        t6, 5
                  sub          t3, a2, t6
                  c.nop
                  c.addi       s3, 29
                  sll          s4, a3, s11
                  slli         s6, ra, 25
                  xori         a2, s6, 883
                  sra          a3, a2, a0
                  sub          t0, s8, s9
                  slti         gp, s7, 360
                  mulh         sp, s8, a5
                  c.nop
                  srli         s6, a3, 4
                  srli         s2, a0, 16
                  c.slli       gp, 16
                  slli         s4, sp, 2
                  c.and        a4, a3
                  xori         a2, s0, -1230
                  or           s11, s7, s2
                  srli         s8, t3, 20
                  add          t3, t1, t6
                  c.srli       s0, 7
                  slli         a1, s3, 29
                  c.lui        a7, 27
                  c.srai       a1, 8
                  c.srai       a3, 13
                  srl          t3, s8, gp
                  c.addi16sp   sp, 80
                  xori         gp, a3, 1933
                  xori         t3, s8, -1057
                  mulh         gp, s4, a1
                  c.xor        a2, s0
                  or           s6, t4, zero
                  slli         t4, ra, 19
                  c.add        s11, a2
                  sra          t6, t1, t1
                  c.nop
                  xor          s6, s5, t2
                  divu         s8, s4, s10
                  mul          a7, s6, a1
                  c.xor        a1, s0
                  and          a2, sp, s3
                  c.addi16sp   sp, -16
                  c.mv         a7, a5
                  divu         ra, ra, ra
                  c.add        t5, tp
                  srai         s6, a3, 23
                  xori         ra, s11, 900
                  or           gp, a1, s5
                  mulhsu       a3, s0, zero
                  sra          s7, s10, s7
                  and          s5, t5, t1
                  auipc        s7, 110454
                  div          t5, a6, t1
                  c.addi16sp   sp, 288
                  c.addi4spn   a5, sp, 864
                  srai         zero, t2, 5
                  mulhu        t2, a3, sp
                  mulhsu       a5, a2, s5
                  addi         t4, s9, 530
                  sll          a2, gp, t3
                  auipc        s8, 302084
                  or           a4, s0, a7
                  c.mv         s2, s11
                  c.addi16sp   sp, 496
                  c.addi       s8, -1
                  addi         t6, s8, -2020
                  c.and        a4, a4
                  sub          s8, zero, t4
                  c.nop
                  mul          t5, a6, a4
                  sltu         s11, zero, s2
                  and          a4, a4, zero
                  sltiu        s6, s9, 710
                  mul          a7, s5, t3
                  auipc        a4, 521032
                  c.add        sp, s10
                  lui          t6, 304339
                  slti         a1, a1, -1840
                  xori         s8, a1, 764
                  c.li         s10, -1
                  mulhu        a4, t5, t3
                  mulh         a3, t1, tp
                  mul          t0, t0, a4
                  addi         s4, a4, 322
                  slli         s0, a5, 27
                  sll          a0, s5, s8
                  ori          ra, a7, 1139
                  sub          t4, s11, s9
                  c.lui        s7, 27
                  c.addi       s7, 2
                  c.srai       s0, 18
                  slli         zero, s2, 21
                  c.sub        a0, a0
                  or           s10, s1, s7
                  srl          a1, t5, a1
                  rem          t6, a4, s11
                  srl          t4, t5, s3
                  c.srai       a2, 16
                  divu         a2, sp, s6
                  slli         tp, s2, 17
                  c.addi       s10, 24
                  c.mv         ra, s11
                  sra          t3, zero, s4
                  c.slli       s7, 14
                  c.li         a5, -1
                  remu         ra, a5, s10
                  ori          a1, t2, 1502
                  mul          t0, s9, t1
                  c.add        s11, t5
                  xor          t4, s11, gp
                  c.sub        a2, s0
                  c.xor        a4, s0
                  c.addi16sp   sp, 208
                  c.nop
                  nop
                  c.nop
                  c.and        a1, s1
                  mulhsu       t6, sp, s5
                  c.srai       a0, 20
                  mul          t0, a4, gp
                  and          a7, a2, t4
                  srl          a0, t6, s6
                  srli         s0, t4, 5
                  ori          tp, sp, 905
                  mulhsu       a2, s6, s2
                  auipc        s0, 101727
                  slti         t2, s5, 509
                  xor          a7, s6, s8
                  c.lui        s8, 11
                  c.addi4spn   a5, sp, 336
                  srl          ra, a0, a5
                  srli         s8, s4, 1
                  srli         s2, s1, 1
                  nop
                  slti         a3, t4, -1202
                  sub          t0, s3, s5
                  srli         s8, s0, 21
                  and          t3, a0, a7
                  and          t6, zero, s7
                  xor          gp, s10, s6
                  c.addi16sp   sp, 208
                  xor          s2, t2, s6
                  xor          a7, a7, s3
                  c.srai       s0, 25
                  div          t4, tp, a3
                  c.nop
                  add          t6, tp, s2
                  srai         t5, t3, 24
                  srli         tp, s0, 14
                  srli         s8, ra, 7
                  andi         t4, tp, 1053
                  c.or         s0, a3
                  nop
                  c.lui        s7, 31
                  c.and        a5, a1
                  srli         a1, t1, 24
                  c.li         s8, -1
                  srl          t2, a3, t6
                  rem          a5, a4, a7
                  c.sub        a2, s1
                  xori         zero, s6, -1225
                  c.or         s0, a1
                  sll          s6, tp, t0
                  c.lui        a0, 3
                  c.or         a3, s1
                  sltiu        zero, zero, -1690
                  c.nop
                  andi         gp, tp, 13
                  srli         zero, zero, 9
                  srai         s4, t4, 1
                  rem          t3, tp, tp
                  andi         sp, s4, 1116
                  sltu         a3, s10, t1
                  addi         a5, t6, 1262
                  srli         t0, t5, 1
                  andi         gp, t2, 368
                  addi         gp, a7, -487
                  mulh         s5, s5, a4
                  c.mv         t6, t5
                  c.andi       a3, 17
                  mulh         t0, s11, t0
                  lui          a5, 677187
                  c.mv         sp, a2
                  slt          s2, s0, ra
                  c.mv         t0, a2
                  divu         tp, gp, s9
                  add          a5, gp, s10
                  addi         s11, s11, 1977
                  c.add        t6, s7
                  c.addi16sp   sp, 192
                  c.mv         t0, t6
                  slti         s7, sp, 1030
                  c.andi       s0, -1
                  c.slli       t6, 20
                  rem          tp, s8, a2
                  sltiu        a3, s9, 1050
                  or           t2, t0, a5
                  c.andi       a4, -1
                  and          s7, t2, a2
                  c.addi4spn   a4, sp, 752
                  rem          s10, a6, s6
                  and          t3, a6, s3
                  srai         t5, ra, 30
                  c.mv         t5, s0
                  mulhsu       s2, s9, s11
                  andi         t1, s1, -132
                  c.or         a2, a4
                  c.nop
                  sll          s11, s11, s6
                  c.srli       a1, 11
                  c.add        t4, gp
                  c.addi16sp   sp, 32
                  c.andi       a4, 24
                  or           s8, s10, s3
                  sltu         a3, s2, sp
                  c.and        a5, a0
                  c.li         s11, -1
                  sltu         a2, a0, a6
                  c.or         a3, a5
                  addi         t6, s11, -1320
                  xori         t3, s3, -878
                  sltu         t5, ra, a1
                  slli         t1, a6, 20
                  mulhsu       t2, t1, ra
                  sra          sp, t1, t1
                  c.xor        s0, a3
                  addi         s3, a7, -192
                  divu         ra, s10, zero
                  div          a7, zero, sp
                  sltiu        s5, s4, -1012
                  and          ra, s6, a4
                  xor          a7, t2, s1
                  rem          a0, s5, a2
                  c.nop
                  nop
                  nop
                  andi         t3, s8, 956
                  sltiu        s8, a7, -1839
                  mulhu        s4, s6, t0
                  or           s8, gp, s4
                  c.sub        a1, a4
                  c.xor        a1, a4
                  remu         s10, a4, s5
                  c.or         a3, a1
                  mulhsu       t4, a2, t4
                  nop
                  c.srli       a2, 9
                  mul          a7, zero, t3
                  sll          s10, a6, s7
                  c.addi4spn   a3, sp, 352
                  c.and        s0, a1
                  divu         ra, a2, a3
                  sra          a5, t4, ra
                  c.and        a2, a0
                  ori          tp, a4, -1853
                  c.addi4spn   a2, sp, 896
                  div          t6, a1, s6
                  c.nop
                  lui          a4, 249370
                  divu         s6, s2, t4
                  divu         s10, a6, sp
                  c.and        a2, a1
                  nop
                  sll          s11, s4, t1
                  mulhu        t6, t4, s8
                  srl          ra, t2, s7
                  mul          t6, s1, a1
                  auipc        a3, 1003763
                  c.addi16sp   sp, 368
                  xori         s7, t5, 158
                  mul          t3, sp, s7
                  ori          s7, gp, -1502
                  mulhu        s5, a4, a3
                  and          s11, a0, tp
                  srl          s10, sp, s7
                  mulhu        t1, s0, s10
                  c.and        a5, a1
                  sltu         a3, a1, a3
                  remu         s3, a6, s10
                  c.slli       t5, 1
                  mulhu        s6, t4, s11
                  c.srai       a4, 14
                  c.xor        s0, s1
                  and          s8, t5, s8
                  c.and        a2, s1
                  sltu         s2, t5, s2
                  c.li         s6, 9
                  c.sub        a5, a0
                  mul          s3, a7, zero
                  c.or         a4, a3
                  srli         s5, t0, 10
                  mulh         s6, a5, zero
                  c.addi4spn   a4, sp, 192
                  slli         t6, t0, 15
                  slli         t1, s9, 12
                  lui          ra, 136864
                  c.andi       a4, -1
                  remu         a2, t4, s4
                  c.li         t2, 26
                  mulhu        s11, t5, s2
                  or           t2, a5, tp
                  srai         a4, t6, 27
                  slt          zero, t0, s9
                  sltu         s0, tp, t6
                  c.sub        a5, a1
                  c.add        a7, a1
                  mul          t0, a2, a4
                  and          s10, t1, ra
                  add          t1, a1, a1
                  xori         s11, t0, -84
                  c.sub        a3, a3
                  c.sub        a2, a5
                  slli         a3, s1, 9
                  sll          a4, s2, t6
                  c.sub        a3, s1
                  c.or         a1, a5
                  c.addi4spn   s0, sp, 272
                  srl          tp, a6, tp
                  c.andi       a1, 3
                  or           s10, a1, gp
                  c.slli       a4, 2
                  c.srli       a1, 27
                  auipc        t2, 305679
                  c.nop
                  addi         t4, a3, -210
                  lui          zero, 145106
                  or           t5, t0, gp
                  nop
                  c.mv         t6, s2
                  c.srai       a5, 25
                  xor          a2, a5, tp
                  mul          a1, a5, a6
                  c.xor        a0, a2
                  c.slli       a0, 12
                  add          a3, ra, zero
                  xor          a4, s1, a6
                  addi         a3, s9, 1091
                  c.li         t3, -1
                  slti         s6, t0, -1449
                  c.xor        s0, a5
                  mulh         s6, a6, a0
                  srli         a0, a3, 27
                  sra          a3, s6, s5
                  c.slli       s4, 1
                  c.sub        a1, a4
                  sub          a3, a0, a0
                  divu         t5, a3, ra
                  c.nop
                  c.xor        s0, a5
                  nop
                  c.lui        t1, 11
                  sltiu        ra, s7, 1180
                  sll          t4, s7, a2
                  c.addi4spn   a4, sp, 784
                  c.slli       s0, 11
                  c.or         a1, a1
                  addi         s11, tp, 980
                  c.srai       a5, 25
                  c.li         sp, -1
                  xor          s0, tp, a3
                  c.or         a2, a0
                  mulhsu       t0, a7, s9
                  c.srai       a4, 10
                  c.srli       a2, 27
                  c.add        t6, s0
                  remu         zero, gp, s9
                  ori          s4, t1, 1976
                  c.srai       a5, 31
                  sltiu        t1, a4, 864
                  slli         a1, s6, 0
                  div          tp, a5, a4
                  mul          ra, a6, sp
                  srai         s6, s7, 10
                  c.slli       s11, 2
                  xor          s8, s11, t2
                  c.nop
                  c.srli       a5, 14
                  andi         s7, s10, -752
                  c.or         a2, a2
                  c.xor        a4, a3
                  mulh         t2, t5, ra
                  or           t3, s2, s8
                  mulhu        s11, gp, s11
                  andi         s3, t4, 26
                  or           a0, s4, a4
                  c.addi4spn   a4, sp, 304
                  c.srli       a2, 29
                  c.li         tp, 20
                  c.srai       a1, 5
                  lui          t1, 716786
                  mulhu        gp, a4, zero
                  sub          t2, s11, t0
                  and          t5, s11, t0
                  add          s10, zero, a6
                  auipc        tp, 553380
                  divu         s4, s9, t2
                  c.add        t1, s7
                  remu         a5, a3, s3
                  c.addi4spn   s0, sp, 352
                  sltu         t4, s5, t6
                  c.srai       a1, 12
                  sltu         a2, t1, a3
                  auipc        s8, 945044
                  sll          s2, tp, s8
                  c.srai       a4, 3
                  srai         a1, zero, 18
                  div          a3, s4, s8
                  lui          s4, 16310
                  andi         t6, s5, -1158
                  mul          a2, a1, s1
                  c.and        a2, a4
                  c.li         s4, -1
                  slti         a3, s10, 172
                  slt          a1, s6, a7
                  rem          t2, a4, s6
                  xori         s4, s0, 1119
                  c.or         a5, a5
                  slli         a3, a5, 21
                  auipc        s5, 836740
                  add          gp, t2, s2
                  c.addi       s11, -1
                  sub          ra, s2, a7
                  rem          a0, s3, t4
                  c.or         a3, a3
                  srli         a2, s5, 3
                  slt          ra, s6, a1
                  c.or         a2, a3
                  div          s2, s4, zero
                  andi         zero, t5, 12
                  c.and        a1, s0
                  mulhu        a5, zero, s9
                  c.xor        a2, a3
                  srli         s8, a0, 16
                  c.xor        a4, s0
                  c.add        s2, a7
                  slti         a0, s11, 1902
                  c.addi       s2, 17
                  addi         s11, s5, -1307
                  srai         s10, tp, 5
                  c.srai       a4, 5
                  c.andi       s0, -1
                  c.andi       a4, 8
                  c.andi       a3, 1
                  divu         s11, a4, a2
                  slti         s3, s5, -1063
                  mul          s3, s0, s0
                  c.addi16sp   sp, 80
                  srl          sp, t3, a5
                  c.sub        s0, a4
                  div          a7, s0, s2
                  mulhsu       t6, t0, a1
                  ori          t5, t6, 843
                  slt          s10, s3, t4
                  srl          s7, t2, s5
                  slli         ra, s4, 19
                  c.xor        a0, a2
                  add          a7, zero, t5
                  divu         gp, a6, s1
                  mul          s3, s2, s5
                  or           t5, s1, gp
                  addi         a1, s5, -801
                  c.add        s3, a4
                  xori         t2, a5, -1647
                  addi         s6, s3, -1670
                  rem          t4, t5, t6
                  div          s8, a6, t2
                  c.xor        a3, a2
                  c.xor        a1, a0
                  sltu         a3, a0, zero
                  sltu         s11, t3, sp
                  ori          t0, a5, 722
                  addi         t6, t3, 771
                  sll          a7, s9, a6
                  sltu         s10, s8, s2
                  nop
                  c.andi       a0, 11
                  addi         sp, s2, -1030
                  c.nop
                  c.slli       s8, 21
                  slli         s11, ra, 17
                  sltu         s2, t5, t0
                  divu         a1, t2, t1
                  divu         s0, a2, s4
                  c.addi16sp   sp, -16
                  slt          a1, s11, ra
                  slt          s8, s8, a5
                  rem          s8, s4, s1
                  xor          t5, s11, tp
                  c.addi       s7, -1
                  c.mv         s4, s9
                  auipc        t3, 636847
                  c.andi       a5, -1
                  sll          a3, tp, s9
                  xor          sp, a4, s8
                  divu         t6, sp, s0
                  mulhsu       t1, s10, t0
                  sll          s10, s11, s6
                  slti         a5, s2, -122
                  and          sp, t6, t5
                  and          t0, s11, s9
                  sub          t1, s5, a7
                  c.slli       a3, 3
                  c.add        t3, t4
                  rem          t5, a7, s11
                  sub          s10, s3, a4
                  div          s3, s6, sp
                  div          t2, s1, t5
                  remu         a0, s9, s11
                  addi         a5, s7, -6
                  c.xor        a3, a4
                  sub          s2, a5, gp
                  mul          s0, s1, gp
                  xor          s4, a5, s11
                  sub          t3, a5, t3
                  srl          a2, s7, a0
                  c.lui        s0, 8
                  srl          zero, a2, s5
                  c.or         a3, a0
                  sub          s11, s10, a3
                  c.addi16sp   sp, -16
                  sll          s5, s8, zero
                  mulhu        a7, s4, gp
                  remu         t4, s4, a2
                  mulhsu       t2, s5, s9
                  c.li         t6, 26
                  c.addi4spn   a5, sp, 448
                  lui          s0, 713236
                  sub          s10, s10, a7
                  auipc        s6, 456590
                  slli         a7, ra, 26
                  mulhsu       a7, t4, s5
                  and          a7, s3, t2
                  auipc        t0, 68884
                  divu         gp, s10, ra
                  c.srli       a3, 9
                  srl          a2, s6, t0
                  c.sub        a3, a3
                  xori         s7, s3, -1281
                  c.addi4spn   a0, sp, 672
                  ori          zero, a7, -329
                  andi         s6, t5, -14
                  slt          gp, a7, a3
                  c.addi16sp   sp, -16
                  ori          s10, s9, -2037
                  div          s11, s3, s1
                  c.addi16sp   sp, -16
                  c.or         a5, a5
                  c.addi16sp   sp, -16
                  c.and        a1, s1
                  c.addi4spn   s0, sp, 192
                  srl          a3, s11, gp
                  mulhu        t6, a5, t5
                  mulhsu       t4, s9, a0
                  c.addi       s4, -1
                  div          s7, a7, s7
                  or           zero, t4, sp
                  c.addi4spn   a2, sp, 432
                  add          s6, ra, a1
                  c.srli       a3, 17
                  xor          t5, sp, t3
                  srli         a0, a1, 2
                  ori          a0, t3, 1535
                  nop
                  sltiu        t1, t2, -1769
                  c.lui        s0, 19
                  slli         s5, a2, 29
                  c.li         s5, 6
                  ori          a0, a4, -468
                  mulhu        a2, s2, a4
                  nop
                  mul          a7, t5, t3
                  remu         gp, ra, s5
                  sll          ra, s1, gp
                  auipc        gp, 400404
                  auipc        a3, 11368
                  c.nop
                  c.srai       a2, 21
                  nop
                  lui          zero, 482060
                  mulh         tp, tp, a4
                  c.xor        a2, a4
                  auipc        a0, 767830
                  c.lui        a3, 25
                  xor          tp, a0, ra
                  sra          s5, t2, t2
                  xori         sp, a6, 1558
                  andi         s6, s0, -1121
                  sltu         t6, s10, s10
                  addi         t3, s6, 17
                  c.sub        a4, a3
                  sll          gp, t6, s6
                  remu         s11, gp, a2
                  add          a4, s2, s3
                  c.addi16sp   sp, 240
                  c.slli       t3, 28
                  sub          s6, t0, a4
                  srl          s0, a1, t2
                  c.xor        s0, a4
                  divu         a0, t4, t4
                  addi         s5, s6, 1368
                  c.slli       s11, 7
                  c.add        s0, a3
                  slli         a2, t4, 20
                  lui          s2, 908873
                  srai         s10, s8, 18
                  sll          t5, a1, a5
                  c.srli       a0, 28
                  remu         zero, s1, t6
                  slti         a1, t6, -205
                  slt          t1, t6, a7
                  nop
                  and          t4, tp, a5
                  rem          s3, s2, t2
                  srli         a7, t2, 28
                  c.sub        a1, a5
                  rem          s6, s7, s2
                  add          t5, zero, s0
                  c.addi       t5, -1
                  c.addi4spn   a2, sp, 480
                  mulhu        s10, s11, a5
                  c.sub        a4, s1
                  sub          sp, s7, a4
                  div          zero, t3, a2
                  c.andi       a3, 7
                  c.li         sp, -1
                  divu         s6, t1, a3
                  mulhu        zero, a2, t4
                  srai         t6, gp, 19
                  c.addi4spn   s0, sp, 48
                  c.addi       s0, 19
                  div          s11, s9, a4
                  c.andi       a1, 29
                  and          a1, s1, s6
                  sll          a1, zero, s8
                  slli         s7, t3, 17
                  and          s10, gp, a1
                  slt          sp, t1, s2
                  sll          s7, a3, t3
                  xor          a3, t5, sp
                  c.srai       a2, 17
                  mulhu        a3, t0, t0
                  mulhu        a2, s4, s4
                  nop
                  c.or         a4, a1
                  c.slli       t2, 23
                  c.mv         t2, s11
                  srl          s2, a5, s6
                  c.addi       t3, -1
                  sltu         t1, s4, s8
                  c.addi16sp   sp, -16
                  srai         ra, s8, 10
                  sll          ra, s9, tp
                  c.xor        a1, s0
                  addi         s4, a1, 1826
                  lui          a5, 677129
                  srli         t1, s1, 10
                  c.srai       s0, 13
                  xori         a7, s8, 630
                  sub          t2, a5, tp
                  mulhu        s8, a3, a2
                  c.addi       s6, 17
                  mul          a4, a0, t2
                  auipc        t1, 259041
                  sltu         a0, s5, s11
                  nop
                  and          s2, s8, ra
                  c.srai       a2, 18
                  c.and        a4, a5
                  c.addi16sp   sp, 464
                  slt          s11, s4, t2
                  lui          a1, 738879
                  c.lui        a1, 15
                  sltu         a3, s1, t3
                  c.and        a3, a5
                  auipc        a5, 710131
                  c.addi       a0, 7
                  remu         s11, s3, t1
                  mulhsu       s7, s1, s4
                  srli         a7, s11, 24
                  mulhu        t1, t3, t5
                  c.nop
                  add          sp, t5, s9
                  c.slli       gp, 31
                  c.li         s0, -1
                  andi         s4, tp, -1876
                  c.addi16sp   sp, 48
                  srai         s10, a5, 16
                  srl          a2, s4, t3
                  c.srli       a1, 28
                  srl          t0, s8, s5
                  srli         ra, a1, 4
                  c.lui        s2, 17
                  c.andi       a3, 19
                  auipc        s3, 257729
                  xori         a1, s5, 501
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0x0
                  li           gp, 0x80000000
                  li           a2, 0x80000000
                  li           a5, 0x0
                  li           a4, 0xffffffff
                  li           t5, 0x80000000
                  li           a3, 0x80000000
                  li           t0, 0x209c687d
                  li           s5, 0xffffffff
                  sub          a4, gp, s6
                  sub          s5, s6, a2
                  add          gp, t5, s5
                  mul          t6, s5, s5
                  auipc        s5, 189063
                  divu         gp, gp, s5
                  auipc        gp, 465664
                  div          s6, t6, s6
                  sub          a3, a4, t5
                  auipc        t6, 710454
                  mulhsu       a4, gp, s5
                  mulh         s6, a3, gp
                  mulhu        a2, s5, s5
                  div          t0, a2, a5
                  div          t5, t0, gp
                  sub          t6, s6, t0
                  auipc        t6, 765718
                  rem          gp, s6, t0 #end riscv_int_numeric_corner_stream_19
                  divu         t4, gp, s10
                  slt          t3, s7, t1
                  srai         t3, s11, 25
                  c.mv         sp, t6
                  c.addi4spn   a0, sp, 48
                  c.srli       a2, 29
                  ori          a7, t6, 544
                  sra          a1, t1, s9
                  rem          zero, s0, gp
                  c.xor        a1, s1
                  c.slli       s4, 6
                  c.or         a0, a3
                  c.andi       a2, -1
                  c.andi       a1, -1
                  sub          a4, s6, zero
                  c.mv         t3, s9
                  xori         a0, a4, -1876
                  slli         t2, s1, 29
                  srli         zero, t0, 31
                  sltu         sp, a6, a1
                  sltiu        s4, s3, 1508
                  c.addi       a0, -1
                  c.addi4spn   a0, sp, 944
                  lui          a4, 519026
                  c.xor        s0, a0
                  auipc        t2, 753623
                  or           t4, a7, s11
                  c.sub        a2, a2
                  slt          s4, t0, s2
                  c.srai       s0, 9
                  and          a3, t0, zero
                  and          s4, s0, t0
                  sub          s8, s8, a3
                  sub          t6, a2, s11
                  c.or         s0, a2
                  sltu         s6, s1, t2
                  sub          zero, s1, a0
                  div          t6, t2, s0
                  div          s10, s5, gp
                  and          tp, t3, t1
                  auipc        s6, 474593
                  c.or         a5, a5
                  mulhu        s11, tp, s1
                  slt          t5, s5, a4
                  and          tp, t1, a4
                  c.mv         t4, t3
                  srl          a2, a2, a7
                  sra          s8, a4, tp
                  div          a1, a6, s0
                  c.andi       a5, 30
                  c.srli       s0, 7
                  slt          s10, t5, a5
                  c.xor        a0, a2
                  slt          s8, s10, a7
                  remu         a7, s6, s3
                  c.addi4spn   a2, sp, 928
                  c.or         a5, s1
                  slti         a2, t4, 1843
                  mulhu        t3, t2, s3
                  slti         s8, sp, 34
                  and          zero, s8, ra
                  c.srli       a1, 22
                  mulhu        s11, a0, tp
                  c.sub        a2, a0
                  slti         sp, s2, 736
                  slli         a0, t2, 0
                  sub          tp, t2, s9
                  sra          t2, s1, s7
                  mulhsu       a2, gp, a4
                  c.add        a4, s8
                  mul          a3, ra, a6
                  c.slli       s11, 22
                  sra          s8, a0, t1
                  c.nop
                  sra          s7, t2, a5
                  srli         t3, s2, 2
                  c.sub        a4, a1
                  nop
                  c.srai       a1, 19
                  c.or         a3, a5
                  c.andi       a2, -1
                  sub          zero, s0, s2
                  c.andi       a4, 24
                  slti         tp, a1, 1512
                  c.addi       a4, -1
                  addi         a7, s0, -1840
                  c.srai       a0, 31
                  div          t2, s9, s7
                  c.sub        a1, s0
                  c.addi4spn   a5, sp, 720
                  slti         t4, a6, -1162
                  c.nop
                  c.addi16sp   sp, -16
                  divu         a5, a4, t5
                  sltiu        t4, a5, 265
                  sub          t1, a7, a5
                  sltu         a3, s10, a3
                  c.srli       a1, 8
                  add          a1, s4, t2
                  nop
                  c.addi       t4, -1
                  c.addi       a2, 14
                  c.and        a1, a5
                  andi         s8, t6, -1714
                  c.slli       t2, 25
                  c.sub        s0, a5
                  sub          t4, s0, a7
                  c.addi4spn   a1, sp, 1008
                  mulhu        s8, zero, a6
                  addi         a2, s3, -1930
                  c.li         a1, -1
                  mulhu        t0, s6, s11
                  c.addi4spn   a2, sp, 560
                  ori          gp, s11, 312
                  add          s3, s10, sp
                  srl          t1, zero, a0
                  xori         t2, zero, 646
                  sra          a5, a7, t2
                  add          s5, s1, s1
                  slli         s4, s4, 16
                  auipc        s6, 688332
                  c.and        s0, a0
                  and          ra, sp, t5
                  c.addi       ra, 27
                  c.add        t1, a7
                  xori         a4, s10, -1379
                  sll          a3, t3, a2
                  sra          t4, sp, ra
                  divu         s11, sp, a7
                  c.xor        a2, a3
                  c.mv         a5, s10
                  c.slli       sp, 31
                  slli         zero, s3, 7
                  add          ra, t3, s7
                  andi         s8, s11, 1200
                  c.sub        a4, a5
                  nop
                  andi         s2, s5, 1410
                  mul          t6, s9, t4
                  c.add        s8, t1
                  mulhu        t1, ra, s10
                  c.andi       a3, -1
                  slt          s2, s7, s7
                  auipc        ra, 865227
                  add          s8, a1, a7
                  xori         a5, s8, 2038
                  remu         t1, zero, s2
                  slli         s7, zero, 17
                  c.mv         s11, a4
                  ori          s0, a5, 1920
                  xor          s11, a1, s2
                  sltiu        gp, t1, 522
                  andi         a5, s9, 942
                  c.andi       a4, 28
                  sltiu        ra, s7, 876
                  c.and        a3, a1
                  c.lui        t4, 20
                  c.li         s11, -1
                  srl          s6, s1, a4
                  remu         sp, s5, s8
                  c.li         s5, 16
                  c.mv         s0, t6
                  lui          s6, 388329
                  ori          t0, s1, -841
                  c.lui        t2, 6
                  c.addi       a4, -1
                  c.add        a2, a1
                  c.li         s8, -1
                  sra          t4, a6, a2
                  slti         tp, ra, -1960
                  sll          a3, a0, s0
                  c.mv         sp, s5
                  c.xor        a0, s1
                  divu         a5, t5, s1
                  and          t6, s8, t0
                  srl          ra, s4, a1
                  mul          gp, t4, ra
                  srai         t6, a0, 14
                  c.addi       s10, 2
                  c.addi16sp   sp, -16
                  lui          a4, 735683
                  or           t5, a6, zero
                  or           ra, a0, s11
                  c.addi       s10, 29
                  slti         a7, a1, -1415
                  ori          t4, s0, 1388
                  c.lui        a1, 5
                  srl          s4, a7, t6
                  c.or         a1, s0
                  c.lui        a1, 11
                  slli         a7, s1, 24
                  c.and        a1, a3
                  c.xor        a1, a2
                  c.srai       a1, 20
                  c.mv         s11, t4
                  addi         s0, t0, 769
                  c.nop
                  c.addi4spn   a3, sp, 464
                  c.lui        a5, 27
                  c.or         a2, a5
                  sll          s8, t5, a2
                  c.nop
                  xor          s4, a5, s2
                  divu         ra, t5, s11
                  sll          a7, s4, a2
                  mulhu        a2, a3, a6
                  c.srai       a0, 27
                  or           s4, zero, a3
                  srl          a5, gp, s5
                  c.andi       a3, 30
                  add          s4, s7, a7
                  srl          s8, s6, t0
                  xor          s3, gp, s1
                  div          s7, s11, sp
                  c.add        a3, s8
                  c.add        sp, a2
                  mulhu        s5, s7, s0
                  xor          a0, s1, s11
                  rem          a5, a5, s1
                  sub          ra, t5, a3
                  srl          s3, sp, s8
                  mulhu        s8, s11, sp
                  divu         s10, t3, a4
                  slt          s11, tp, a0
                  addi         s3, a2, -140
                  mulh         a2, t0, s6
                  c.sub        a2, a1
                  remu         t4, tp, s11
                  c.srai       a0, 6
                  and          t5, s9, a2
                  xori         a5, a1, 437
                  c.addi       t6, -1
                  mulhsu       t1, t0, t6
                  mul          gp, a0, s2
                  sll          sp, s4, t0
                  slti         a3, a2, -520
                  divu         t6, s0, gp
                  sll          tp, t4, t1
                  andi         a3, a3, 550
                  addi         a3, t3, -926
                  mulh         a3, a3, s2
                  nop
                  c.li         t3, 30
                  c.srai       a3, 4
                  addi         t4, s4, 533
                  sub          t3, s3, t4
                  or           a3, s4, t1
                  c.andi       a4, 9
                  c.addi       t3, 31
                  c.or         a5, a0
                  c.nop
                  c.li         s11, 30
                  c.and        a4, s0
                  c.lui        t1, 15
                  andi         t3, s10, 429
                  mulhu        t4, s8, zero
                  c.xor        a5, a5
                  mul          t0, t3, a0
                  c.mv         a0, t3
                  remu         s6, t0, sp
                  remu         s0, t0, s7
                  c.sub        a0, a4
                  add          s0, t4, t4
                  sll          a7, t4, s10
                  srl          s4, s8, a5
                  c.or         a3, a2
                  sll          t2, t3, t6
                  xor          s10, s9, zero
                  nop
                  andi         s8, s0, -2004
                  slt          a0, t3, s6
                  remu         tp, s11, t0
                  c.srli       a3, 23
                  slli         s0, s10, 2
                  c.srai       a1, 11
                  or           a7, s10, t6
                  c.srli       a2, 25
                  c.addi       t4, -1
                  c.xor        a4, a1
                  c.srai       s0, 12
                  c.addi       s5, 15
                  c.add        t1, s11
                  and          s4, t2, s4
                  andi         a7, s7, 502
                  slt          a7, a2, t5
                  xori         tp, ra, 524
                  c.or         s0, a4
                  srai         s5, t5, 24
                  sra          s2, tp, a2
                  c.addi       t1, 16
                  lui          s11, 325246
                  c.nop
                  c.add        a1, a3
                  c.addi       t2, -1
                  xor          t6, a4, s11
                  xori         tp, s2, 545
                  sll          t5, a1, zero
                  srl          s2, sp, a1
                  nop
                  c.addi16sp   sp, -16
                  c.slli       ra, 17
                  andi         gp, t0, -1382
                  slti         t3, s3, 282
                  c.sub        a2, a4
                  or           s4, s6, a4
                  xori         s11, s6, 1317
                  andi         s11, a5, 735
                  mul          a4, ra, a4
                  divu         t1, a6, t1
                  andi         s2, a0, -843
                  c.add        s4, a0
                  mulhsu       sp, s3, s7
                  mulh         a0, s2, t6
                  c.addi4spn   a5, sp, 752
                  c.andi       a4, 22
                  c.mv         s3, gp
                  sltu         t3, a1, s0
                  add          t0, t3, s7
                  c.li         s8, 0
                  c.andi       a1, -1
                  or           s8, s9, a4
                  c.li         t3, 0
                  xori         a7, s4, 480
                  c.andi       a2, -1
                  auipc        s8, 1038049
                  c.add        s11, s5
                  c.andi       a4, 1
                  c.slli       s10, 10
                  c.and        s0, a0
                  divu         zero, s2, s10
                  c.nop
                  or           a7, t6, a1
                  c.addi       s2, 29
                  mulhsu       t5, t6, a1
                  mul          gp, a0, a0
                  slti         t2, sp, -729
                  sltiu        s8, t1, -592
                  mulh         t3, s0, gp
                  sltiu        t6, a4, -1906
                  c.addi4spn   a2, sp, 784
                  xor          t4, s7, s4
                  srli         zero, s0, 18
                  lui          s10, 334315
                  and          ra, s6, zero
                  or           a3, s10, a4
                  c.addi       t6, 3
                  c.srli       a3, 22
                  c.andi       a2, -1
                  andi         a3, t4, -1612
                  c.andi       a0, 29
                  srai         s8, t4, 13
                  c.andi       a3, 11
                  c.and        a1, a1
                  addi         s0, t5, 761
                  div          a5, t6, t5
                  sra          zero, ra, s8
                  sub          t3, a6, s10
                  c.addi16sp   sp, -16
                  mul          zero, a3, t3
                  c.and        a3, a0
                  srai         s8, s10, 19
                  c.slli       s11, 28
                  c.addi16sp   sp, 416
                  c.nop
                  c.and        a3, s1
                  c.or         s0, s0
                  c.add        tp, t5
                  ori          s0, sp, -171
                  c.addi16sp   sp, 352
                  lui          a3, 215282
                  addi         ra, sp, -1342
                  mulh         s7, s0, s11
                  c.slli       s10, 8
                  sltiu        a1, t1, -2032
                  c.lui        t2, 19
                  mulhu        gp, ra, t2
                  mulhu        s4, s7, a0
                  c.addi16sp   sp, 320
                  c.addi       s2, -1
                  and          ra, sp, s7
                  sll          t5, s8, a3
                  slti         t4, tp, 1376
                  divu         s0, t5, a7
                  c.srai       s0, 18
                  and          t4, s7, sp
                  ori          s4, a2, 694
                  c.mv         t2, a5
                  slli         a7, a2, 6
                  rem          s0, s5, a2
                  mulhsu       s8, s5, s8
                  lui          t2, 588191
                  c.xor        s0, a4
                  ori          s10, s6, 1178
                  add          s4, s2, a1
                  andi         t1, a3, 1966
                  div          a3, t5, s1
                  c.xor        a4, s1
                  c.addi4spn   a4, sp, 752
                  sltu         s5, t3, s10
                  remu         s10, a3, sp
                  c.and        a5, a1
                  xori         t2, gp, -1892
                  sra          s3, s0, s2
                  mul          s10, a5, t0
                  mulhu        s4, a7, t2
                  c.lui        t1, 25
                  auipc        t5, 791289
                  xori         a4, s11, -1814
                  c.lui        a4, 5
                  auipc        a3, 786247
                  addi         s10, s0, -2005
                  c.and        a3, a5
                  and          s2, s6, a7
                  slli         s2, sp, 14
                  mulh         tp, s10, s4
                  sra          s7, a7, s0
                  c.srli       a0, 2
                  add          tp, t3, t0
                  rem          a2, t1, a2
                  mulh         a5, s8, t5
                  sltu         t6, s0, ra
                  c.lui        s3, 14
                  c.mv         s10, t3
                  c.mv         t4, t5
                  sltiu        zero, a3, 1216
                  mulhu        a0, a1, t0
                  mulhu        a7, a4, s5
                  slli         t5, s4, 18
                  sll          tp, t6, a3
                  c.addi4spn   a2, sp, 544
                  sll          a3, a1, ra
                  and          s2, s3, a1
                  divu         s6, s2, s1
                  c.li         s7, -1
                  c.and        a0, a3
                  lui          ra, 398129
                  c.lui        t4, 21
                  c.addi4spn   a2, sp, 928
                  c.addi       s8, -1
                  c.or         a3, a5
                  c.addi       sp, 5
                  xor          s6, gp, t2
                  sltu         s2, t6, s9
                  sub          t2, a0, zero
                  c.and        a2, a1
                  c.lui        a0, 20
                  c.slli       t2, 22
                  srai         s0, s11, 17
                  and          a0, s3, s10
                  remu         t6, a5, t6
                  srli         ra, a1, 11
                  mulhu        s5, a4, a1
                  c.addi       ra, -1
                  sub          s8, s1, s10
                  sltu         t3, a0, s8
                  remu         a4, a3, s6
                  c.addi       s8, 19
                  slli         t6, s11, 26
                  c.slli       tp, 17
                  nop
                  auipc        gp, 728711
                  c.srli       s0, 18
                  mulhsu       a5, s8, a2
                  mul          s3, a7, a2
                  srli         a2, zero, 7
                  c.add        s8, a5
                  slti         s0, a5, -297
                  c.srli       a3, 27
                  c.addi       t5, -1
                  xori         t6, s2, 45
                  auipc        t0, 128651
                  xori         a2, s4, -1487
                  c.srli       a2, 6
                  sub          s11, s8, s0
                  xor          a4, t4, s1
                  srli         t1, s9, 22
                  add          s7, s7, s11
                  c.srli       a3, 16
                  sltiu        s11, a1, -302
                  rem          a2, s4, s10
                  sll          s8, s11, s5
                  c.srli       a5, 25
                  sub          a1, zero, t6
                  xori         ra, t6, -456
                  div          s0, s3, s8
                  sltu         zero, t5, zero
                  ori          s10, t3, 1991
                  auipc        t6, 939645
                  srl          t5, a2, s11
                  auipc        s3, 901655
                  sra          a1, a6, s11
                  sll          s6, a3, s8
                  srli         s3, t4, 25
                  c.addi16sp   sp, 336
                  sltu         s2, t2, a4
                  c.and        s0, a1
                  and          zero, s11, a2
                  lui          s6, 283947
                  mulhsu       s10, gp, s6
                  c.mv         t6, s1
                  c.addi       a5, 30
                  ori          s3, zero, 1619
                  c.srli       a2, 15
                  c.li         a1, 20
                  auipc        a5, 314273
                  c.li         t4, -1
                  c.srai       s0, 30
                  srli         t4, s11, 19
                  slti         gp, s2, -1021
                  srl          s10, s10, s11
                  mul          t0, ra, gp
                  slt          s5, s5, s1
                  divu         t4, s11, t2
                  add          a0, a1, s10
                  c.slli       s11, 28
                  lui          t0, 468090
                  rem          s10, a7, s3
                  c.nop
                  c.addi       ra, -1
                  add          s11, a0, s4
                  srai         s0, s6, 17
                  sltu         a7, a4, s11
                  c.add        s2, t2
                  c.xor        a5, a4
                  add          t0, s5, s4
                  slli         a0, zero, 16
                  xori         s5, gp, 1292
                  mulh         a0, a6, s6
                  lui          s6, 915749
                  c.addi16sp   sp, 288
                  mulhu        zero, t6, s10
                  c.addi16sp   sp, 288
                  divu         s10, s6, a1
                  c.addi16sp   sp, -16
                  sub          a1, sp, ra
                  mulhu        a1, zero, s9
                  mul          a7, a6, gp
                  sll          a3, t1, t2
                  srai         sp, t2, 30
                  sll          a2, s7, s1
                  slti         tp, t3, -1292
                  c.and        a3, a5
                  ori          t2, gp, 934
                  addi         a7, s8, 1890
                  andi         t1, s9, -1758
                  c.srli       a1, 10
                  c.li         ra, 13
                  auipc        t1, 752836
                  srai         a4, a2, 3
                  c.and        s0, a0
                  add          s11, zero, zero
                  c.nop
                  c.sub        a0, s0
                  slti         t0, zero, -1980
                  xori         a3, s4, -1624
                  c.srli       a5, 30
                  xor          s3, t6, s8
                  c.mv         a2, a4
                  sltu         s8, t1, s1
                  andi         t4, s6, 1445
                  c.and        a3, s0
                  mulhu        ra, a6, sp
                  srai         t3, s10, 23
                  c.srai       a1, 4
                  c.add        t0, sp
                  ori          s0, a5, -920
                  c.xor        a0, a4
                  c.or         s0, a1
                  c.andi       a1, -1
                  srl          a7, t5, t3
                  and          a3, a0, t3
                  xor          t1, t1, t4
                  mulhsu       s0, s9, s1
                  sltu         s2, s4, s7
                  c.srai       a3, 30
                  sra          t6, t3, gp
                  srl          t5, s2, t3
                  auipc        s5, 306832
                  c.slli       gp, 3
                  mulhsu       s5, t4, sp
                  sll          t1, s2, s11
                  c.addi16sp   sp, 208
                  slt          s5, s10, t1
                  sra          s2, t4, tp
                  or           s6, s0, s1
                  mulhsu       a7, ra, s11
                  c.addi16sp   sp, -16
                  auipc        t6, 61460
                  div          s0, s5, s3
                  c.lui        s4, 14
                  slt          s7, a1, s9
                  c.slli       t1, 18
                  slt          a7, a1, a1
                  c.li         t4, 15
                  sub          sp, gp, t4
                  slli         ra, t2, 26
                  sra          s10, t6, a5
                  c.srai       a0, 9
                  lui          s11, 841323
                  c.slli       a4, 5
                  c.xor        a3, a2
                  c.sub        s0, s1
                  lui          zero, 425342
                  c.sub        a5, a4
                  mulhu        t3, s11, s3
                  ori          ra, s4, -1574
                  mul          a1, s11, sp
                  c.addi4spn   a0, sp, 448
                  slti         s3, s10, 582
                  sub          s8, s5, t2
                  andi         t4, t6, -1448
                  xori         s7, a4, -675
                  srai         a0, a5, 4
                  lui          sp, 772443
                  and          zero, s11, a2
                  c.andi       a4, -1
                  mulhsu       t1, zero, s10
                  remu         s8, s8, t3
                  slli         s2, gp, 5
                  add          sp, s3, a7
                  srl          a5, a4, a6
                  sll          s8, t6, sp
                  div          a5, t3, s10
                  c.or         a3, a5
                  c.nop
                  sra          a3, a2, tp
                  srli         s4, s9, 12
                  slli         s3, s3, 23
                  nop
                  nop
                  c.xor        a5, a2
                  sra          a1, s0, tp
                  mulhsu       t0, t2, a6
                  mulh         s3, a1, ra
                  div          a0, s4, s8
                  sltiu        a0, s3, -312
                  lui          s11, 719917
                  c.li         s8, -1
                  c.add        s11, a6
                  rem          a0, t6, t1
                  c.and        a0, a2
                  sub          a1, tp, s10
                  c.xor        a5, a4
                  c.lui        a7, 12
                  slt          tp, a1, ra
                  ori          a4, a5, 169
                  c.slli       a3, 10
                  xori         t6, ra, 700
                  sltu         s11, t4, a6
                  srai         sp, t1, 19
                  sra          a3, gp, s2
                  sub          a2, t0, t4
                  and          tp, a0, a6
                  c.srai       a2, 5
                  c.andi       s0, 13
                  c.slli       sp, 12
                  c.nop
                  div          t4, a2, t4
                  sra          t1, s7, a1
                  c.addi       s11, -1
                  sub          t6, a1, a4
                  c.srli       a1, 12
                  c.addi       t5, -1
                  c.srli       a0, 28
                  c.srli       a2, 29
                  andi         a7, tp, 1830
                  srai         tp, ra, 11
                  sltu         s3, t0, t5
                  srli         a4, s2, 11
                  or           a3, ra, t2
                  c.slli       s5, 9
                  srl          a1, s7, t4
                  srl          s4, s9, a7
                  mulhu        s6, s1, t0
                  srli         s2, tp, 26
                  andi         t6, s9, 1806
                  mulhsu       a3, t0, t5
                  c.addi16sp   sp, 464
                  c.lui        s8, 23
                  lui          t6, 155552
                  sltu         a3, a1, s1
                  c.nop
                  c.addi       s11, -1
                  lui          s0, 757553
                  c.li         a2, -1
                  slli         sp, gp, 11
                  mulh         s3, s0, s10
                  c.li         a7, -1
                  c.andi       a0, -1
                  srai         s8, t2, 17
                  addi         a1, t6, 1614
                  lui          a2, 325000
                  c.mv         s3, tp
                  sll          s11, s5, a1
                  sll          a5, s1, s5
                  addi         t6, a3, 1904
                  c.add        s6, sp
                  slli         a0, t0, 24
                  c.slli       s11, 15
                  and          s0, s4, s3
                  c.srai       a3, 28
                  c.xor        a2, a4
                  c.sub        a1, s0
                  c.add        s8, s5
                  xor          s4, s5, a4
                  srl          sp, zero, s2
                  andi         ra, a3, -1646
                  add          a1, s0, a3
                  mulhu        t0, s2, s6
                  c.add        ra, s7
                  andi         s10, sp, 1520
                  divu         s2, t0, s6
                  c.sub        a1, a5
                  c.mv         sp, s6
                  lui          s0, 575092
                  andi         a0, t0, 105
                  mulhsu       sp, s8, sp
                  c.nop
                  or           a3, t3, a6
                  c.addi       s8, -1
                  mulhu        s10, s9, t1
                  and          ra, s5, t6
                  sra          s11, s1, gp
                  srli         t3, t0, 15
                  remu         t6, a3, t4
                  slli         s7, s0, 8
                  c.li         sp, 23
                  sra          sp, a7, s8
                  nop
                  srli         s5, s6, 15
                  auipc        a1, 776257
                  nop
                  slti         s0, t6, -352
                  srli         s10, s6, 16
                  mulhu        ra, t4, s3
                  c.li         s8, 5
                  c.addi       a7, 24
                  slli         s10, a3, 28
                  mulhsu       t2, ra, sp
                  c.sub        a4, a2
                  xori         tp, a5, -1229
                  mulhsu       s5, sp, t3
                  c.addi16sp   sp, -16
                  srl          t6, t0, a6
                  and          s2, t5, gp
                  sltu         a1, s4, a5
                  c.addi16sp   sp, -16
                  c.addi4spn   a2, sp, 576
                  mulhsu       s11, ra, t5
                  sub          a4, gp, s11
                  c.mv         s8, s10
                  or           a3, a6, s11
                  c.andi       a1, 0
                  xori         t0, t1, 907
                  sub          s2, sp, tp
                  divu         t2, s7, a2
                  c.addi4spn   a0, sp, 992
                  mulh         tp, s3, t5
                  c.slli       ra, 2
                  sltu         a7, a3, a1
                  auipc        s8, 321441
                  c.addi4spn   a5, sp, 528
                  srl          a5, a0, s4
                  sub          a3, s5, s1
                  xori         t0, s3, 619
                  c.nop
                  c.addi16sp   sp, 256
                  lui          t6, 478577
                  nop
                  srai         t5, t6, 8
                  auipc        zero, 693264
                  c.sub        a5, s1
                  remu         t5, s9, a5
                  c.mv         tp, tp
                  srl          s8, s0, t2
                  c.addi4spn   a2, sp, 464
                  mulhu        t1, t6, sp
                  c.addi4spn   a3, sp, 224
                  rem          a5, zero, s3
                  slt          s4, ra, t2
                  andi         t3, a2, -1325
                  c.and        a0, a1
                  sll          s11, t1, a0
                  srl          ra, gp, s4
                  slt          a4, t1, s11
                  srli         t4, a1, 21
                  nop
                  c.srai       a1, 25
                  sltiu        t0, s10, -1121
                  slt          a4, s11, s9
                  mulh         zero, a3, s10
                  andi         a1, a6, -191
                  mulh         s10, s11, tp
                  or           a7, s4, t5
                  sll          t5, t2, s0
                  mulhu        zero, a7, t2
                  c.and        a3, a4
                  srl          ra, t3, t6
                  c.and        a3, s1
                  auipc        a4, 911339
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           a0, 0x80000000
                  li           a1, 0xffffffff
                  li           s11, 0x0
                  li           s3, 0xa37a12b9
                  li           a3, 0x0
                  li           tp, 0x80000000
                  li           t0, 0x80000000
                  li           ra, 0xffffffff
                  li           s7, 0x0
                  mulhu        a0, a1, t0
                  sub          tp, t3, ra
                  mul          a0, a0, s11
                  auipc        a1, 807700
                  mulhu        a3, a0, a3
                  mulhu        a1, s11, s3
                  auipc        tp, 779684
                  addi         a1, s7, 1387
                  mulhu        a1, s3, s11
                  div          t0, a0, a1
                  mulhsu       a3, t3, t0
                  lui          a1, 147080
                  mulh         s7, a0, ra
                  sub          tp, tp, a0
                  mulhu        a3, s11, ra
                  lui          a3, 1027682
                  mulhu        a0, s11, a1
                  remu         t3, tp, a3 #end riscv_int_numeric_corner_stream_23
                  sub          s0, t2, a7
                  mulhsu       a4, sp, s6
                  remu         a3, sp, s8
                  mulhu        a1, t1, s3
                  rem          a7, t4, gp
                  or           tp, s9, s4
                  c.addi       gp, 17
                  c.li         a4, 22
                  sltiu        a0, sp, -389
                  xori         zero, t5, 147
                  c.srai       a4, 20
                  divu         t0, t5, tp
                  c.mv         s2, a1
                  c.addi16sp   sp, 224
                  c.or         s0, a2
                  mul          ra, s4, gp
                  c.xor        a3, s0
                  sub          t1, s11, t2
                  c.addi16sp   sp, 256
                  add          s0, a7, a7
                  c.li         a5, -1
                  auipc        s8, 67204
                  c.mv         s2, s10
                  c.andi       a2, 28
                  mulhu        t1, s4, t4
                  srli         zero, gp, 3
                  c.and        a3, a1
                  c.srli       a4, 26
                  srli         s3, a6, 22
                  c.lui        a7, 24
                  or           s7, zero, s8
                  sub          ra, s4, s0
                  sltiu        s6, t1, -291
                  mul          a3, t4, sp
                  nop
                  c.li         s8, 0
                  sltu         t4, tp, s10
                  xori         a5, a5, 1567
                  sub          s4, t2, s7
                  and          sp, s2, ra
                  c.andi       a3, -1
                  and          a4, t6, t0
                  mulh         a7, s4, s1
                  sra          a0, s1, tp
                  mul          s2, s1, t0
                  nop
                  c.lui        ra, 25
                  remu         s2, a1, s0
                  sltiu        a7, a4, -387
                  auipc        s0, 493566
                  divu         t6, s3, gp
                  addi         ra, a7, 1834
                  c.add        s11, s10
                  slt          t6, zero, ra
                  ori          zero, zero, 514
                  mulh         gp, ra, t3
                  c.and        a2, a1
                  srl          s7, a4, s1
                  c.nop
                  c.xor        a5, a2
                  c.lui        a3, 12
                  divu         s5, a0, s11
                  mul          t0, s7, t1
                  c.slli       s0, 4
                  sll          t4, a1, t1
                  c.li         t3, 14
                  xor          tp, s8, s9
                  c.and        a3, s1
                  c.or         s0, a4
                  xori         t2, sp, -589
                  slti         s5, t4, 622
                  mulhsu       a0, s4, a5
                  addi         s8, sp, -1230
                  or           s11, a3, a5
                  c.srli       a3, 20
                  srli         a7, t5, 1
                  sra          t1, a0, gp
                  c.srai       a1, 5
                  mulhsu       t0, a4, tp
                  xori         s3, s7, 531
                  c.and        a1, a4
                  or           a2, a6, tp
                  lui          t3, 510903
                  c.and        s0, s0
                  c.srli       a3, 24
                  c.addi4spn   a1, sp, 864
                  c.addi16sp   sp, 128
                  slli         gp, t5, 24
                  c.slli       t2, 25
                  c.li         t5, 13
                  srli         s2, zero, 30
                  or           ra, t0, t6
                  c.srli       a5, 15
                  c.and        s0, s0
                  nop
                  c.andi       a1, 17
                  or           s0, a0, s10
                  c.or         s0, a1
                  c.xor        a2, a1
                  andi         s2, s6, 1432
                  c.addi       s2, -1
                  c.sub        a3, a5
                  lui          s4, 585567
                  slli         tp, zero, 28
                  c.srai       a1, 29
                  mulhu        tp, s8, t2
                  slli         s8, s10, 5
                  srl          s0, t5, a6
                  nop
                  c.srli       a5, 23
                  srl          t6, a3, s11
                  c.srli       a2, 23
                  c.nop
                  lui          t4, 954003
                  srai         t4, s5, 13
                  div          sp, a0, a7
                  mulhu        gp, a0, a4
                  xori         s11, t4, 1581
                  addi         t4, tp, -1365
                  sll          t4, gp, s5
                  mulhu        s0, s10, s7
                  andi         t5, a5, -636
                  slti         zero, s0, -1182
                  slli         s8, gp, 11
                  nop
                  auipc        s5, 312116
                  sra          s2, t4, a7
                  addi         a1, s3, 1616
                  rem          t2, s11, a5
                  mul          s3, t5, a0
                  rem          a4, s0, s9
                  c.nop
                  c.xor        a3, a4
                  andi         a4, s4, -1283
                  srli         t6, s6, 1
                  srl          s5, a0, s11
                  mulh         s2, s9, a6
                  srai         sp, s10, 7
                  sltu         s11, t6, s5
                  srai         a7, s10, 17
                  mul          tp, s7, s9
                  auipc        sp, 910312
                  addi         a5, a1, -1866
                  c.srai       a5, 13
                  c.sub        a4, a4
                  c.and        a0, a2
                  srl          s10, s9, tp
                  mulh         s5, a6, s11
                  mulhu        s0, s9, s0
                  and          a3, t3, a0
                  slt          t5, s2, s4
                  remu         s11, a4, gp
                  div          a2, t6, zero
                  ori          tp, t4, 2030
                  xor          t5, a2, s3
                  rem          s6, s4, t6
                  andi         t5, a4, -1061
                  c.add        ra, t3
                  c.or         a1, s0
                  c.addi16sp   sp, 80
                  xor          s10, t6, a4
                  sub          t2, s3, a2
                  div          a7, a3, s7
                  c.nop
                  mulhsu       zero, t4, s3
                  c.and        a3, a5
                  remu         s6, a2, s9
                  c.li         s6, -1
                  mulhsu       s5, zero, zero
                  slti         s3, t3, -1400
                  mulhsu       zero, t2, s10
                  c.li         a1, -1
                  c.addi16sp   sp, 192
                  mulhsu       s8, a1, a5
                  srli         a4, a2, 18
                  c.slli       t1, 20
                  addi         s4, a2, 286
                  c.addi16sp   sp, 64
                  mulhsu       tp, ra, t1
                  c.lui        s3, 21
                  c.mv         t0, a5
                  c.add        t4, s6
                  c.slli       a3, 12
                  andi         a1, t4, 1659
                  sltu         s11, s8, a4
                  nop
                  mulhu        s10, s8, s2
                  slt          tp, t3, a0
                  c.srai       a2, 17
                  mulhu        zero, t5, a7
                  mulh         ra, s11, s7
                  slli         s3, t2, 7
                  c.nop
                  addi         s10, a3, 1514
                  remu         s5, s4, s7
                  srai         a0, s11, 2
                  srl          s3, zero, s6
                  mul          a0, a2, s6
                  c.andi       a3, 22
                  sltu         ra, a3, a5
                  c.lui        s11, 29
                  sltiu        s11, t2, -888
                  slli         a7, s6, 3
                  srai         t1, t3, 8
                  c.li         ra, -1
                  c.lui        s7, 25
                  sub          a0, t6, t0
                  ori          s10, a6, -1314
                  remu         t3, a5, s1
                  sra          t5, sp, s6
                  c.or         a0, a4
                  mulhsu       zero, s11, a7
                  lui          s8, 994764
                  rem          ra, t5, a0
                  remu         s8, t6, a5
                  slli         gp, a6, 30
                  c.sub        a5, s0
                  srli         t0, a3, 1
                  srai         zero, s1, 4
                  c.srli       a5, 7
                  sub          a1, a1, sp
                  c.mv         a4, s4
                  srli         t4, t4, 25
                  sltiu        a7, t2, -1812
                  remu         t3, a4, zero
                  slli         s6, a2, 18
                  mul          s0, a2, t4
                  c.addi4spn   a3, sp, 944
                  c.lui        ra, 5
                  and          s0, a2, s7
                  remu         s2, t1, a6
                  c.lui        a5, 15
                  c.slli       s3, 7
                  andi         s7, t5, -1415
                  srl          t3, t4, t0
                  c.and        s0, a0
                  or           s11, s2, ra
                  xor          a2, s10, s10
                  c.lui        t0, 21
                  rem          s3, s5, a1
                  remu         gp, t2, s3
                  c.nop
                  divu         gp, s8, t5
                  mul          t4, ra, s11
                  c.add        s8, ra
                  srli         s0, s4, 23
                  c.sub        a2, a1
                  sltu         gp, s9, s4
                  c.sub        a2, a3
                  sra          a1, a6, s9
                  divu         s3, t1, a7
                  c.li         t2, -1
                  sltu         a0, tp, s0
                  c.lui        gp, 26
                  sltu         t6, s5, s5
                  or           s10, sp, zero
                  xor          a7, s2, t1
                  c.lui        s5, 15
                  c.li         s11, 8
                  sll          t3, ra, gp
                  srli         s11, a2, 22
                  c.addi16sp   sp, -16
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_32
                  li           s8, 0x3f115c2d
                  li           a3, 0x0
                  li           a7, 0x6b697f7c
                  li           s0, 0xacfb4d30
                  li           s6, 0x80000000
                  li           s2, 0x80000000
                  li           s11, 0x3f1a4b01
                  li           gp, 0x0
                  li           s10, 0xffffffff
                  rem          a3, gp, s6
                  lui          a3, 355040
                  auipc        a3, 549711
                  remu         s11, s0, s11
                  sub          s2, gp, a7
                  mulhsu       a3, s11, s11
                  nop
                  mulhu        s0, s0, s8
                  div          a3, s11, s2
                  lui          t5, 656756
                  lui          s11, 937252
                  rem          gp, a3, s8
                  divu         s6, s8, s6
                  mulhu        s8, s6, a7
                  lui          s0, 646332
                  mulhu        a7, a3, s11
                  mulh         s0, s0, a7
                  sub          gp, gp, s0
                  divu         s10, a7, s10
                  mul          s6, s2, t5
                  sub          s8, s6, s2
                  lui          s2, 347903
                  div          gp, s0, s6
                  auipc        s6, 1504
                  addi         s8, s0, 1759 #end riscv_int_numeric_corner_stream_32
                  sll          s2, a1, s5
                  c.srli       a5, 16
                  srl          s8, t6, ra
                  andi         zero, s3, 1992
                  add          a1, t4, s8
                  sub          s10, s5, t4
                  c.xor        a5, s1
                  c.or         a1, a2
                  c.srli       a1, 16
                  c.srai       a1, 27
                  ori          s10, t0, -1755
                  c.add        a3, tp
                  c.and        a5, a4
                  divu         s2, a4, sp
                  c.slli       a2, 25
                  c.li         a7, 7
                  c.li         s8, 19
                  srai         a5, t5, 14
                  sra          s4, gp, a3
                  c.sub        s0, a5
                  c.mv         s8, t3
                  c.addi       tp, 8
                  srli         a1, s7, 10
                  div          a3, a1, s3
                  srai         a2, t2, 24
                  sra          s0, s7, t5
                  mulhsu       s7, a4, t5
                  lui          t6, 113940
                  c.add        a1, s10
                  c.srai       a1, 24
                  srli         s8, s7, 8
                  mulhsu       zero, t2, s0
                  mul          s5, t4, ra
                  srai         a7, s4, 16
                  srl          a7, a1, s2
                  srli         zero, s9, 5
                  c.addi16sp   sp, -16
                  sub          ra, t0, t1
                  mulh         t0, a6, a0
                  and          a1, t1, t4
                  or           a1, a4, a3
                  c.nop
                  sltiu        t6, a2, 83
                  c.add        s5, t4
                  sltu         t5, t5, a1
                  srai         s3, a5, 4
                  divu         tp, t5, a5
                  xor          s0, ra, sp
                  mulh         tp, s2, s7
                  c.srli       a2, 13
                  slt          a3, s4, a6
                  addi         zero, ra, 618
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           t2, 0x80000000
                  li           sp, 0x0
                  li           a2, 0xffffffff
                  li           s6, 0x0
                  li           s4, 0xad7f811d
                  li           t1, 0x0
                  li           t3, 0xe29b2ed1
                  li           gp, 0xffffffff
                  li           s10, 0x80000000
                  mulhsu       sp, gp, t3
                  sub          s10, gp, gp
                  divu         gp, sp, s10
                  mulhsu       a0, s4, a0
                  rem          s4, sp, s6
                  sub          s4, gp, a0
                  divu         s10, s10, a0
                  mulhsu       t3, gp, t2
                  addi         t2, sp, 1303
                  addi         a2, s6, -1792
                  remu         a2, gp, t3
                  nop
                  auipc        gp, 769775
                  div          t3, gp, s10
                  mulh         a0, t3, s10
                  addi         t3, s4, 984
                  sub          gp, a2, gp
                  div          a2, a2, t1
                  div          t1, a2, s6
                  mulhu        s4, a0, t1
                  mul          s6, a0, s10
                  div          s10, t3, s10
                  mulhsu       s10, gp, t2
                  nop
                  auipc        s10, 241096
                  remu         gp, t2, a2 #end riscv_int_numeric_corner_stream_5
                  c.srai       s0, 28
                  mulh         a5, a6, t3
                  mulhsu       s10, gp, a2
                  add          t4, t5, a7
                  c.mv         t4, s5
                  c.mv         t2, s1
                  rem          a5, a0, s1
                  mulhsu       t5, a0, t2
                  srl          t4, s8, a4
                  c.addi       a1, -1
                  c.andi       a0, 18
                  mulhu        a0, a6, tp
                  auipc        sp, 385921
                  nop
                  ori          sp, s10, -790
                  divu         s2, t1, s4
                  c.addi       s11, -1
                  or           t4, a7, t6
                  sltu         a4, t2, a6
                  rem          ra, gp, s1
                  srl          a4, a7, t3
                  sltu         gp, s2, a7
                  addi         s7, a0, -1178
                  c.addi4spn   a5, sp, 992
                  mul          s10, s2, s1
                  c.andi       a3, -1
                  xori         s4, s1, -768
                  c.or         a1, s0
                  mul          s4, s1, a6
                  c.andi       a4, 11
                  slti         a7, a0, 1364
                  rem          s8, s8, gp
                  slt          a2, t4, tp
                  sra          t2, gp, ra
                  slti         s3, s10, -461
                  nop
                  sltiu        a3, s10, -1881
                  srl          zero, s1, s6
                  c.addi       s8, 29
                  or           a0, a3, s9
                  lui          t6, 669593
                  nop
                  auipc        a1, 661957
                  mulhsu       a3, s5, a6
                  c.or         a4, a5
                  c.addi16sp   sp, 288
                  mul          s11, s7, s3
                  c.sub        a5, s0
                  slli         s2, s0, 0
                  c.sub        a0, a3
                  div          t0, a5, s1
                  ori          s6, s4, 1577
                  sub          t0, t5, s6
                  c.srai       a3, 9
                  sltu         t4, s5, t2
                  nop
                  c.addi4spn   a3, sp, 352
                  c.andi       a2, -1
                  xor          s4, a6, s4
                  c.addi16sp   sp, -16
                  sltiu        s7, s9, -882
                  nop
                  divu         t5, zero, a5
                  remu         t2, s7, a2
                  div          a4, s2, a0
                  andi         sp, s7, -261
                  c.nop
                  c.sub        a5, a2
                  ori          s4, s7, 1612
                  div          sp, s0, a3
                  nop
                  mulhu        s7, s10, s1
                  nop
                  slli         sp, s3, 2
                  remu         s4, a1, a0
                  rem          s4, s11, a4
                  c.addi16sp   sp, 160
                  sll          a4, t2, s7
                  sll          t3, t1, s2
                  c.andi       a0, 18
                  mul          s2, a5, tp
                  mulh         zero, a3, s4
                  rem          a1, sp, zero
                  rem          ra, s10, s3
                  add          zero, t2, tp
                  divu         a0, s2, s8
                  and          zero, s7, tp
                  mulhsu       s11, a2, s2
                  srli         a4, s8, 26
                  c.addi4spn   a3, sp, 400
                  slti         s4, gp, 108
                  srai         a0, s9, 14
                  or           a3, t0, gp
                  mulhsu       t4, a5, a2
                  c.xor        a2, a2
                  addi         s5, s1, -1635
                  sub          t2, a1, s7
                  sll          s4, t4, a2
                  c.nop
                  mul          sp, t1, ra
                  c.addi4spn   a1, sp, 448
                  c.li         s5, -1
                  c.or         a3, s0
                  mulhu        s11, sp, t2
                  c.addi16sp   sp, 144
                  divu         t1, s1, a3
                  remu         t3, s10, s2
                  nop
                  andi         s5, t6, -327
                  c.sub        a1, a5
                  c.or         a4, a2
                  c.srai       a0, 28
                  sub          tp, t4, a1
                  c.addi       a0, 30
                  slti         s11, s4, -1008
                  c.addi       a2, -1
                  c.lui        ra, 25
                  srl          t4, s2, a4
                  c.nop
                  add          a3, a0, t1
                  nop
                  c.lui        s4, 17
                  srl          s10, s9, a1
                  sltiu        t4, t1, 1516
                  c.nop
                  mulhsu       a1, a7, gp
                  auipc        s8, 907514
                  divu         s4, s6, s11
                  and          t1, a1, t3
                  or           a4, t5, a5
                  slli         ra, t6, 26
                  c.addi       s11, -1
                  mulhu        a7, ra, s11
                  c.add        s2, t4
                  c.addi16sp   sp, -16
                  lui          tp, 1031783
                  c.srai       s0, 5
                  and          s6, s6, sp
                  c.mv         t1, t6
                  sra          t1, t6, s4
                  sll          t5, a4, t4
                  xori         ra, s0, 1733
                  c.addi4spn   s0, sp, 816
                  mulhsu       a5, s3, t5
                  sltu         a2, s8, s4
                  c.addi4spn   a3, sp, 304
                  c.sub        a1, a2
                  andi         a7, s8, 607
                  remu         s8, t0, a1
                  c.li         a1, -1
                  c.andi       a1, -1
                  andi         a4, a0, -771
                  c.add        s2, t3
                  addi         a1, a6, 1728
                  c.nop
                  mulhu        a3, s4, s8
                  c.lui        s7, 21
                  mulhsu       s8, a2, zero
                  rem          s10, tp, t1
                  div          a0, s11, ra
                  c.lui        s10, 27
                  mulhu        a4, a1, gp
                  or           sp, a0, t3
                  sub          s4, t5, a3
                  addi         s0, s8, -566
                  sltiu        t6, t6, 1200
                  srai         s2, t5, 31
                  rem          a0, zero, a0
                  sll          t2, s2, sp
                  c.nop
                  c.and        a4, s1
                  remu         t6, tp, s1
                  nop
                  mul          t6, a6, t6
                  remu         s5, s5, a2
                  srli         a4, s1, 21
                  sll          t6, t6, t6
                  rem          a0, s11, s9
                  remu         zero, s9, sp
                  slti         s3, t5, -1964
                  c.or         a5, a3
                  mul          s7, a3, a3
                  c.andi       a2, -1
                  c.xor        a4, s1
                  mulh         t3, sp, s9
                  slti         gp, t5, 1644
                  c.nop
                  srai         s4, t2, 13
                  c.add        s10, t1
                  sltiu        s10, a7, -1645
                  auipc        a3, 216305
                  mulhsu       t5, t5, a2
                  xori         t6, s0, -355
                  nop
                  lui          s4, 150127
                  xori         tp, a4, 96
                  c.addi       t1, 27
                  andi         a7, t0, -10
                  add          a4, tp, a4
                  sll          a2, t3, a6
                  nop
                  slli         s8, a1, 13
                  andi         t2, a4, 398
                  c.li         a2, 21
                  rem          sp, s5, tp
                  auipc        a1, 918668
                  c.srli       a5, 26
                  mulh         t2, a2, a7
                  c.addi       a7, -1
                  c.addi4spn   a0, sp, 304
                  rem          t4, zero, a2
                  c.and        a3, a1
                  mul          s8, s4, a3
                  sll          s8, s7, s9
                  c.addi       s10, 26
                  c.andi       a1, -1
                  c.lui        t1, 21
                  c.addi       t0, -1
                  c.sub        a1, a0
                  slli         tp, a3, 23
                  c.srai       a0, 11
                  nop
                  srli         s4, t0, 16
                  c.slli       a5, 2
                  c.lui        t6, 1
                  or           t5, a7, a3
                  divu         t2, a7, t6
                  xor          a7, t0, s10
                  divu         s11, a7, t4
                  rem          t3, s7, a4
                  divu         s4, a2, s0
                  c.srai       a3, 9
                  xor          zero, s8, s0
                  slli         a4, s5, 20
                  addi         a2, t2, 143
                  c.and        a3, a1
                  c.nop
                  c.add        s8, s11
                  c.sub        a4, a4
                  mulh         s7, gp, a0
                  and          s4, t4, a6
                  c.li         ra, -1
                  c.addi       t3, -1
                  div          s11, s3, s9
                  sra          s4, a2, s0
                  c.addi       a7, 2
                  srai         t4, tp, 30
                  c.slli       t1, 7
                  divu         gp, t6, s6
                  auipc        gp, 277790
                  c.addi16sp   sp, 304
                  c.xor        a3, s1
                  c.mv         s0, a3
                  mul          s7, a7, a1
                  c.srli       a2, 1
                  div          s11, t3, t3
                  c.srai       a0, 16
                  sltiu        s4, zero, -1389
                  c.andi       a0, -1
                  c.li         a7, 19
                  and          a0, a5, a5
                  xori         a0, s9, -1687
                  c.srli       a1, 27
                  srai         s10, s9, 9
                  addi         s3, sp, -1244
                  mulhsu       a0, a4, a1
                  slli         a5, a7, 7
                  c.sub        a3, a2
                  sub          zero, zero, t5
                  remu         gp, t3, a6
                  c.andi       a3, -1
                  andi         s8, s5, -321
                  andi         s7, zero, -1628
                  mulhu        a0, s0, sp
                  andi         a4, t4, 2039
                  sub          sp, a7, gp
                  c.srai       a5, 4
                  c.li         t3, -1
                  c.andi       a3, -1
                  c.sub        a1, a2
                  sltiu        t2, s0, 855
                  c.lui        s11, 18
                  sra          s10, t4, tp
                  xori         zero, ra, -170
                  xori         s8, t6, -465
                  divu         t5, t3, t5
                  c.sub        a1, a2
                  divu         t1, s8, s10
                  andi         s11, a3, -926
                  andi         s11, t6, 1717
                  c.mv         s4, t5
                  srai         s7, t4, 30
                  c.srli       a2, 17
                  sll          a0, a0, tp
                  c.slli       a4, 24
                  mulh         a4, ra, s4
                  remu         s3, s2, t5
                  srl          gp, ra, t1
                  c.srli       a0, 8
                  nop
                  andi         s4, a3, -1382
                  auipc        a7, 526860
                  c.addi       a0, -1
                  slli         t4, t2, 28
                  c.mv         s2, a6
                  c.nop
                  auipc        gp, 100238
                  add          t5, a6, a6
                  srli         zero, s0, 3
                  sll          gp, s11, t2
                  c.mv         a1, t0
                  srl          tp, a2, a6
                  srai         gp, a5, 8
                  c.addi16sp   sp, 464
                  rem          s7, s1, s7
                  srl          t0, tp, s7
                  c.slli       t5, 21
                  c.nop
                  mulh         a7, a3, a2
                  mul          a3, s3, sp
                  srl          gp, zero, zero
                  slli         t4, a4, 2
                  addi         s2, a1, -1757
                  add          s3, s5, t6
                  c.lui        t3, 24
                  mulhsu       t4, s5, zero
                  ori          a7, sp, -76
                  c.and        a3, s0
                  c.srli       a3, 12
                  c.addi4spn   a1, sp, 896
                  mul          s2, sp, t3
                  slli         s10, a0, 16
                  ori          tp, a1, 1513
                  sltu         a4, t4, s4
                  lui          s4, 149891
                  mul          gp, t2, s4
                  c.srai       a4, 26
                  sltiu        t1, t3, -275
                  srai         zero, zero, 28
                  sll          a7, a5, a5
                  srli         a3, gp, 28
                  lui          t5, 82238
                  remu         t4, a1, gp
                  and          ra, t1, s0
                  c.sub        a5, a4
                  rem          tp, s4, s1
                  sub          a1, s11, t6
                  sll          gp, t3, s3
                  sra          t3, s3, a0
                  andi         t6, t3, 396
                  srli         a3, s4, 25
                  c.and        s0, a5
                  mul          a2, zero, a7
                  divu         t5, t1, s5
                  sll          a3, t4, t0
                  c.slli       s4, 26
                  sll          s4, tp, s9
                  rem          s3, s10, a1
                  c.slli       a1, 15
                  andi         s4, t6, 719
                  or           s8, s8, s3
                  mulh         t0, a1, s9
                  c.andi       a3, 31
                  addi         t4, s3, 309
                  srl          s2, s3, t3
                  rem          s0, zero, s8
                  c.slli       s11, 4
                  c.add        s0, gp
                  remu         t1, a1, tp
                  c.addi       s2, 20
                  divu         tp, t1, s11
                  div          s8, t1, s5
                  sll          s7, t5, s6
                  srl          a7, s4, t5
                  xori         s8, s0, 1679
                  lui          t6, 816744
                  divu         tp, tp, tp
                  c.or         a5, a4
                  c.or         a5, a3
                  c.slli       a0, 29
                  c.sub        a3, a4
                  c.xor        a1, a0
                  sll          t6, t4, a5
                  ori          s3, s4, -1170
                  srai         s2, t6, 21
                  c.lui        a4, 15
                  c.addi16sp   sp, 64
                  xor          t6, a1, a7
                  sll          t6, s10, s2
                  mul          tp, t2, t0
                  sub          gp, s10, s8
                  c.slli       a1, 30
                  sltiu        s0, s2, 1815
                  xori         t5, a6, 1701
                  div          t4, s4, s1
                  sll          tp, a7, t2
                  c.andi       a1, -1
                  srli         t2, a7, 23
                  c.lui        s11, 1
                  c.sub        a4, a2
                  srl          s6, zero, zero
                  c.nop
                  c.mv         a2, s7
                  sll          t6, a6, a4
                  or           t4, s9, s0
                  srai         a0, tp, 8
                  slti         t4, t2, 1495
                  slti         s10, s10, -1773
                  addi         ra, t0, 1176
                  c.xor        a3, a0
                  srli         ra, t5, 3
                  divu         a5, a3, tp
                  srl          t1, a6, t6
                  slti         s0, t6, -1571
                  or           gp, t1, tp
                  srli         a0, s4, 15
                  add          s10, s10, s5
                  c.or         a2, a5
                  auipc        t5, 389711
                  slt          tp, s0, t6
                  or           s3, a0, s11
                  sll          s2, s1, t1
                  sll          s10, a5, t5
                  ori          s10, s4, 1188
                  slli         s5, s7, 6
                  slli         a0, sp, 8
                  div          t5, s11, a7
                  sltu         t0, a6, t5
                  sra          s3, t1, s10
                  c.addi16sp   sp, -16
                  mulh         a3, s7, a6
                  c.mv         s6, s11
                  sltu         s0, a7, s6
                  remu         t6, a2, t2
                  c.or         a3, a4
                  c.add        a1, s4
                  rem          s4, t6, t3
                  remu         tp, a5, a0
                  sll          s5, t2, s11
                  c.andi       a5, -1
                  c.mv         s7, s10
                  andi         a3, t5, 560
                  srl          t5, s5, s3
                  mulh         s4, s7, s2
                  slli         s3, a3, 12
                  div          s4, a0, a1
                  auipc        a5, 369225
                  c.or         a1, a0
                  div          a1, t6, t5
                  c.addi       a7, -1
                  c.sub        a4, a5
                  ori          a0, t1, 56
                  sra          tp, ra, tp
                  slti         t6, s6, 169
                  c.andi       a3, -1
                  c.srai       a2, 15
                  mul          s0, ra, t3
                  srli         a7, a5, 18
                  ori          a7, s4, 700
                  slli         tp, ra, 11
                  sub          s10, s7, s8
                  c.add        gp, t6
                  c.srli       a2, 4
                  c.andi       a4, -1
                  c.addi16sp   sp, 144
                  c.and        a2, a2
                  c.addi       a1, 2
                  c.and        s0, a0
                  srai         s8, t6, 30
                  c.or         s0, s1
                  mulh         a7, s7, t4
                  sra          s8, s4, t5
                  lui          t5, 211291
                  sub          t6, gp, s4
                  sltiu        tp, s2, 1399
                  slti         a5, a4, 39
                  srai         t1, s5, 12
                  remu         s7, t1, sp
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           a7, 0x7b29c4ef
                  li           t4, 0x80000000
                  li           s5, 0xffffffff
                  li           a4, 0x80000000
                  li           s4, 0x0
                  li           a3, 0x80000000
                  li           s2, 0x0
                  li           s8, 0x80000000
                  li           t5, 0x80000000
                  auipc        a0, 103138
                  lui          s4, 901930
                  mulh         s8, s5, a0
                  rem          a3, s5, a4
                  divu         a7, s4, s4
                  lui          a4, 317851
                  add          s4, a4, a7
                  add          a0, a7, s2
                  nop
                  mulhu        s4, a7, a4
                  mulhsu       a7, a0, t4
                  rem          s8, t4, a7
                  sub          t4, s8, a3
                  addi         s4, a7, -256
                  rem          a0, s5, a4
                  lui          a4, 954177
                  sub          a4, a3, s4
                  mulhsu       s4, s8, a3
                  auipc        s8, 268340
                  divu         a4, s4, s8
                  addi         t4, s4, 2033
                  remu         t5, s5, a3
                  rem          s8, s2, s5
                  div          s8, a3, a3
                  auipc        a3, 261884
                  div          a3, s2, s2
                  addi         s5, t4, 1335
                  sub          s4, s4, s5
                  remu         t4, a4, s4
                  mulhsu       s8, a3, s4 #end riscv_int_numeric_corner_stream_6
                  auipc        s2, 783364
                  slli         a1, s11, 20
                  mul          a5, tp, ra
                  ori          zero, a6, 431
                  mul          s10, s6, s3
                  slt          a1, a2, s8
                  c.addi16sp   sp, 176
                  c.srli       a2, 18
                  auipc        s5, 626188
                  rem          zero, s8, t4
                  lui          sp, 646672
                  sltiu        s0, a6, -776
                  ori          a2, a7, -1087
                  c.addi16sp   sp, -16
                  slti         s3, s8, -1263
                  divu         t3, s3, s6
                  remu         a2, s3, a0
                  srl          t1, a0, t6
                  c.sub        s0, a0
                  ori          t0, s1, 22
                  slti         s4, a5, -341
                  rem          t5, s6, s7
                  c.srai       a4, 5
                  c.or         a2, a5
                  sub          a2, a0, s0
                  sra          a5, t4, s7
                  mulhu        s10, t6, t5
                  c.addi16sp   sp, 208
                  srai         sp, s4, 12
                  c.addi16sp   sp, -16
                  sra          a4, s3, t2
                  xor          a3, a7, s7
                  divu         gp, s0, a7
                  c.and        a3, s0
                  sub          a4, s9, t5
                  divu         sp, s3, s0
                  slli         gp, s5, 14
                  c.addi16sp   sp, -16
                  mulhsu       ra, s9, s5
                  c.slli       s5, 20
                  c.srli       a5, 10
                  c.and        a3, a5
                  and          s4, s11, s4
                  add          a5, gp, s7
                  div          t0, t5, s7
                  c.add        a3, a6
                  c.mv         s2, t5
                  c.nop
                  c.nop
                  slli         t6, s5, 10
                  mulh         a7, a7, a5
                  c.sub        a3, a3
                  c.addi4spn   a2, sp, 304
                  slt          t6, s1, a4
                  sra          zero, a5, ra
                  lui          a0, 923798
                  ori          ra, s2, -1713
                  div          t0, t4, s0
                  c.sub        a3, a1
                  slli         a4, s8, 20
                  div          t1, a6, ra
                  nop
                  lui          zero, 208677
                  c.mv         s6, t4
                  mulh         s11, a1, s10
                  xor          gp, t6, s8
                  slt          tp, s11, t0
                  c.addi4spn   a0, sp, 656
                  mul          a0, s5, a1
                  rem          a4, s5, t1
                  divu         s11, a7, s7
                  c.addi16sp   sp, 208
                  and          a3, s1, t2
                  c.or         a4, a5
                  auipc        s8, 757229
                  c.or         a3, a4
                  nop
                  ori          t5, ra, -1143
                  mulh         a7, s7, t6
                  andi         t4, t1, 989
                  c.andi       s0, -1
                  slti         s4, s0, -226
                  remu         t3, t4, t2
                  sra          gp, tp, s1
                  li           s11, 0xb5c821fb #start riscv_int_numeric_corner_stream_3
                  li           a5, 0x7f672dbd
                  li           s8, 0x0
                  li           t5, 0x80000000
                  li           tp, 0xffffffff
                  li           t1, 0x80000000
                  li           a1, 0xffffffff
                  li           a2, 0x80000000
                  li           gp, 0x80000000
                  li           s2, 0xffffffff
                  mulhsu       s8, s8, a1
                  mulhsu       s11, s8, s2
                  add          s2, s2, t5
                  addi         a5, a5, -208
                  mul          a5, a1, a2
                  mul          t5, tp, s2
                  sub          s2, s2, a2
                  add          t5, a1, a2
                  mulhsu       t1, t1, a1
                  mul          t5, a2, gp
                  mulhu        gp, s11, a1
                  div          gp, t5, a1
                  lui          t1, 881829
                  mulh         tp, s2, s8
                  div          s11, s8, s2
                  lui          t5, 29467
                  mulhu        gp, a2, gp
                  mulhsu       a2, gp, tp
                  divu         s8, a5, t1
                  nop
                  div          s8, a5, s11
                  sub          t5, a1, s8
                  mulhsu       a1, s11, a1
                  remu         gp, t1, a5 #end riscv_int_numeric_corner_stream_3
                  andi         s3, zero, 1939
                  srli         s3, s4, 24
                  c.xor        a1, a3
                  c.add        t6, t0
                  ori          s11, s2, -1946
                  c.xor        a3, a0
                  lui          s2, 834067
                  divu         gp, tp, a2
                  c.li         s3, -1
                  c.li         s8, -1
                  c.addi       s11, -1
                  slli         s5, s2, 10
                  c.slli       a3, 26
                  c.addi16sp   sp, -16
                  c.addi4spn   a5, sp, 976
                  c.sub        a0, s0
                  srai         tp, a1, 1
                  remu         a7, a1, s1
                  sub          t3, t0, t3
                  slt          s11, t0, t2
                  andi         s0, tp, 377
                  c.srli       a1, 21
                  c.addi4spn   s0, sp, 864
                  slli         s2, tp, 12
                  divu         t6, sp, s10
                  xori         a1, s1, -456
                  sra          a4, sp, s3
                  c.sub        a2, a0
                  c.andi       a3, -1
                  c.or         s0, a2
                  srli         a5, a6, 2
                  c.sub        a3, a5
                  c.srli       a0, 13
                  mul          s11, s8, s4
                  sll          a0, s8, a4
                  addi         s2, t1, -614
                  ori          s8, tp, -1574
                  c.addi       a0, 6
                  mulhu        t1, s8, s3
                  slli         a1, a4, 16
                  c.addi16sp   sp, 48
                  lui          s4, 691604
                  rem          a7, a6, t6
                  mulhu        t3, a7, s1
                  slli         a3, s2, 4
                  sltu         s8, t3, a1
                  div          s2, s4, s10
                  mulhsu       t5, a6, s5
                  slt          t6, t6, s10
                  c.addi       s8, 8
                  c.srai       a3, 18
                  srl          t0, t5, ra
                  ori          a7, a0, -1448
                  c.sub        a4, a3
                  c.sub        a1, a5
                  addi         s0, s2, 587
                  rem          s11, t6, a6
                  sltu         s4, s2, t5
                  srl          t0, zero, a4
                  c.and        a4, a4
                  mulhsu       zero, gp, s10
                  ori          s0, s9, 578
                  c.addi       a7, -1
                  mul          a0, a0, t6
                  auipc        a3, 950470
                  mulhu        zero, s1, a3
                  srai         s3, a2, 17
                  sltu         a1, s11, t2
                  divu         a4, a0, a3
                  xori         gp, a0, -52
                  mulh         a1, t4, t0
                  addi         s7, a1, 929
                  srl          t4, s2, s11
                  xori         s10, s8, 1512
                  c.li         a0, 1
                  slt          a7, s9, a0
                  c.sub        a0, a4
                  rem          s2, t1, t0
                  c.nop
                  lui          t3, 512730
                  c.or         a0, a0
                  mulhu        s8, s11, s11
                  sltiu        zero, t6, 259
                  and          ra, a5, t2
                  c.xor        a2, a5
                  rem          zero, s4, s3
                  mulhu        t0, s6, t1
                  c.li         a7, 12
                  c.addi4spn   a5, sp, 992
                  c.addi4spn   a0, sp, 96
                  c.nop
                  or           a4, s5, t6
                  sltiu        a5, s0, 241
                  slt          a4, tp, s6
                  c.xor        a2, s0
                  mulhu        t4, t2, t6
                  c.add        tp, s7
                  c.or         a3, a3
                  xor          s4, s7, a3
                  srai         s7, a6, 20
                  c.andi       s0, 31
                  slti         ra, sp, -1049
                  c.srai       a2, 4
                  srai         s8, s9, 26
                  sub          a4, t5, tp
                  sltiu        s3, a0, -1004
                  c.addi4spn   a3, sp, 912
                  rem          tp, tp, t0
                  xori         t6, s8, -1886
                  c.srai       a1, 30
                  c.add        t0, t1
                  mulh         a3, s1, s11
                  c.nop
                  slt          s2, t2, a1
                  addi         s0, gp, -1262
                  c.srli       a3, 3
                  c.addi16sp   sp, 240
                  srl          a7, a2, gp
                  xori         t6, a0, -177
                  auipc        t0, 250157
                  add          s10, ra, a0
                  c.mv         tp, a5
                  divu         sp, t5, t2
                  srl          sp, a0, s9
                  c.xor        a3, a3
                  c.and        a2, a0
                  mulhu        t0, tp, s1
                  or           s11, a2, t5
                  srai         ra, a2, 25
                  nop
                  slti         s0, t6, 451
                  ori          t6, sp, -993
                  addi         a7, s9, -601
                  slt          s11, t3, a0
                  c.andi       a4, 3
                  c.sub        a1, a1
                  c.and        a0, a3
                  sub          a7, s10, s0
                  auipc        a3, 867236
                  add          t5, a4, s4
                  c.add        t5, t5
                  slti         a5, a4, 1147
                  c.slli       t4, 25
                  slli         a2, s0, 13
                  nop
                  sltu         s2, a5, s4
                  sub          t4, a4, a4
                  srl          a3, a6, a2
                  c.li         a5, 18
                  c.srli       a5, 7
                  lui          a7, 148165
                  slt          s0, s1, s1
                  slli         zero, t6, 29
                  add          ra, t1, s6
                  srl          a7, a3, s4
                  auipc        t3, 619273
                  c.srai       a3, 20
                  c.addi       s2, -1
                  c.and        a4, a4
                  sub          a3, s8, t1
                  sra          s5, a4, a7
                  addi         a1, zero, 682
                  and          s4, a5, s8
                  mulhu        s7, s3, a0
                  add          ra, t2, a5
                  c.andi       a4, 27
                  sub          tp, a0, a6
                  c.lui        gp, 11
                  lui          sp, 97259
                  c.lui        a2, 25
                  or           a7, s2, t4
                  mul          a4, sp, a0
                  andi         s11, s10, -1139
                  div          a5, s10, a7
                  div          t4, a1, s4
                  c.srli       a5, 6
                  ori          t2, a5, -1078
                  sub          gp, s1, s7
                  sltu         tp, a1, zero
                  slti         s11, t6, 1529
                  or           s5, s10, s5
                  remu         a5, s8, sp
                  c.li         a3, 17
                  xor          s10, t3, s7
                  c.addi       s0, 29
                  xori         tp, s7, -622
                  c.li         a5, 1
                  auipc        s8, 214770
                  andi         a7, t2, 1319
                  c.addi16sp   sp, 304
                  c.li         s0, 18
                  c.sub        a5, a2
                  c.sub        s0, a3
                  lui          a7, 846688
                  divu         zero, t0, s1
                  c.addi       a3, -1
                  andi         s6, ra, 1993
                  andi         t4, t0, 1480
                  mulhu        a3, s3, t5
                  slti         a3, tp, 814
                  sltu         s8, a5, a4
                  auipc        t0, 97038
                  mulhsu       t2, t4, s1
                  addi         s2, a6, -1062
                  sltu         a5, a5, t4
                  slli         s10, t4, 27
                  sll          zero, s10, t3
                  c.sub        a5, a2
                  slt          tp, a3, t4
                  c.add        t5, s9
                  sltiu        sp, t3, -1241
                  c.or         a5, s1
                  c.addi16sp   sp, -16
                  lui          sp, 113182
                  mul          a7, sp, t0
                  srli         ra, a3, 13
                  c.srai       a5, 28
                  c.andi       a5, -1
                  c.or         a1, a1
                  ori          ra, t1, 1721
                  nop
                  c.li         ra, 16
                  slti         gp, tp, 311
                  sub          s5, t5, t0
                  nop
                  andi         t4, s5, 1170
                  c.addi4spn   a3, sp, 784
                  andi         a1, a3, 418
                  sltiu        t0, s4, -439
                  lui          t6, 309948
                  slti         t5, a4, 549
                  slti         a1, ra, 494
                  c.add        s11, a1
                  slli         t1, tp, 19
                  divu         a7, a4, s5
                  auipc        t5, 932923
                  c.slli       a4, 19
                  andi         sp, a7, 183
                  c.slli       t3, 7
                  c.slli       a7, 14
                  sll          a0, t4, s11
                  c.xor        a3, a3
                  div          t5, t4, t3
                  mulhsu       sp, zero, a7
                  remu         s4, a5, s7
                  c.nop
                  slli         a5, a3, 15
                  c.addi4spn   a4, sp, 432
                  and          gp, sp, zero
                  sltiu        s7, sp, -266
                  nop
                  slt          t1, t4, s7
                  sub          sp, tp, t0
                  c.mv         a4, a0
                  srl          s0, zero, t4
                  ori          sp, a4, -1725
                  sll          s6, s11, a0
                  mulhsu       s5, s4, s1
                  mul          s5, sp, a6
                  xor          a1, a2, tp
                  sub          a0, s6, s0
                  slti         t5, a6, 2019
                  c.addi16sp   sp, 416
                  add          gp, s6, a5
                  sra          gp, sp, a5
                  addi         a3, s3, 59
                  c.li         s7, 22
                  srai         ra, s0, 10
                  slli         zero, s2, 2
                  c.addi4spn   a4, sp, 96
                  auipc        t2, 509712
                  mulhu        a4, tp, gp
                  c.srai       a4, 2
                  c.sub        a2, a4
                  mul          s8, t3, t6
                  slt          a7, t4, t2
                  div          s8, t3, a2
                  divu         t2, a6, s1
                  sltu         tp, t3, zero
                  mul          s7, s1, s3
                  c.and        a4, a1
                  c.xor        a3, a1
                  addi         s2, zero, -1104
                  and          gp, s8, a1
                  slli         s4, t6, 20
                  or           ra, a6, t3
                  remu         t6, s9, s8
                  c.slli       s0, 3
                  xor          t2, s2, a4
                  c.li         s7, 25
                  slt          a3, a2, t0
                  mulhu        s6, a5, a1
                  c.addi16sp   sp, 224
                  and          s7, s9, t1
                  sltiu        t6, s9, 304
                  slli         s3, t0, 1
                  and          a4, a2, s2
                  andi         t3, s11, -1060
                  divu         t4, a3, a0
                  c.srli       a3, 28
                  c.andi       a5, 23
                  c.andi       a0, -1
                  c.srai       a0, 6
                  ori          a7, tp, 1649
                  mulhu        ra, a7, tp
                  c.nop
                  sub          t6, s10, s3
                  addi         t4, t3, 546
                  c.li         s0, -1
                  mulh         a4, a5, s4
                  c.sub        a3, a0
                  sltiu        s6, s9, -1447
                  div          t4, a2, a6
                  c.xor        a1, s1
                  sub          s7, t1, a5
                  andi         s2, s9, -1932
                  remu         zero, sp, a2
                  c.nop
                  sltu         a3, s5, s2
                  xor          t5, s8, s0
                  mul          s4, t2, a3
                  xor          t1, a7, zero
                  srai         ra, a6, 28
                  c.lui        t4, 10
                  c.and        a1, a5
                  srai         zero, t4, 5
                  c.sub        a0, a5
                  c.addi       a0, 1
                  xor          s5, sp, sp
                  and          a7, sp, s8
                  srai         s5, t6, 11
                  c.addi4spn   a4, sp, 496
                  c.and        s0, a2
                  slli         ra, a2, 0
                  add          s8, s2, a6
                  div          t3, s2, s8
                  slli         a0, s5, 16
                  xor          s0, zero, a7
                  c.lui        s2, 2
                  sltiu        s7, s8, -433
                  mulhsu       t2, a0, t4
                  mulhu        s8, t0, a0
                  c.srli       a3, 31
                  c.srai       a2, 1
                  slti         a0, t2, 1837
                  andi         s4, gp, 1676
                  c.slli       tp, 18
                  and          t0, s10, ra
                  c.sub        a1, a4
                  xor          tp, s9, s2
                  c.or         a2, s1
                  remu         s8, t2, s10
                  andi         t6, a6, -1345
                  c.addi4spn   a5, sp, 896
                  sltu         a5, a0, a0
                  mulhsu       a3, t4, s2
                  c.mv         a1, t5
                  srl          a5, a4, a5
                  sltu         s11, sp, s9
                  c.lui        t6, 4
                  c.addi       a5, -1
                  c.slli       s7, 8
                  divu         a3, a4, s2
                  and          a0, s5, s11
                  auipc        t1, 706668
                  srl          s4, s4, t6
                  mul          a4, s5, s3
                  xori         t1, a3, -1343
                  auipc        s10, 528795
                  c.addi16sp   sp, 304
                  c.srai       a2, 12
                  slti         s5, s7, 1510
                  c.add        s10, a1
                  c.and        a2, s0
                  xori         s10, zero, -1898
                  lui          zero, 912827
                  divu         s4, ra, s11
                  andi         s6, a1, -587
                  c.or         a2, s0
                  ori          gp, t5, -459
                  srai         a1, a5, 23
                  c.srli       a3, 18
                  c.or         a5, s1
                  c.srai       a4, 14
                  srai         s0, a6, 9
                  c.srai       a3, 30
                  and          s2, a3, t6
                  c.and        a4, a4
                  divu         s5, t4, a0
                  c.addi       t4, -1
                  c.addi4spn   a4, sp, 976
                  mul          s0, sp, a4
                  lui          s6, 162959
                  sra          a7, s8, s10
                  slti         s7, s3, 165
                  addi         a4, t2, -1256
                  c.sub        a5, a0
                  c.andi       a5, 13
                  c.addi4spn   a1, sp, 112
                  c.li         t5, -1
                  mulh         a3, s6, s1
                  or           s7, t6, a7
                  c.sub        a2, a3
                  c.srli       a2, 3
                  rem          t0, a6, a5
                  mulh         ra, t5, t5
                  divu         ra, s2, sp
                  c.sub        a1, a2
                  c.add        ra, a3
                  c.mv         a7, t1
                  rem          a7, tp, a4
                  andi         s8, a7, 1472
                  addi         t1, t6, 42
                  ori          gp, zero, -1350
                  sra          t4, t1, s11
                  remu         t0, t0, t1
                  nop
                  lui          a1, 1048492
                  lui          t2, 730291
                  mulhu        t1, ra, a7
                  nop
                  add          sp, t5, ra
                  divu         s8, s7, s0
                  auipc        a0, 778086
                  divu         s6, s4, t5
                  mulh         a5, s10, t2
                  c.and        a4, a5
                  c.nop
                  c.add        sp, s9
                  andi         s10, s0, -1778
                  div          t2, t5, t3
                  c.andi       a1, -1
                  andi         t0, a7, -435
                  srl          gp, sp, s2
                  add          ra, a2, s11
                  c.mv         gp, s6
                  c.slli       s10, 13
                  c.addi4spn   a0, sp, 896
                  mulh         s11, a4, t2
                  add          a7, s5, t5
                  c.nop
                  c.mv         s5, s0
                  lui          s7, 893322
                  and          t6, t4, s8
                  rem          t4, s7, tp
                  sra          s11, s5, a5
                  c.srai       a3, 24
                  srli         s2, a7, 7
                  c.mv         s2, a1
                  slli         tp, a3, 25
                  c.li         a7, -1
                  sub          a7, tp, t4
                  c.addi4spn   s0, sp, 880
                  div          s8, s8, s11
                  srli         a7, ra, 15
                  sll          t6, s9, t4
                  divu         s4, gp, a7
                  sra          t5, s7, s0
                  sltu         gp, s11, s1
                  c.lui        ra, 18
                  or           a1, t0, s11
                  srai         a1, a3, 11
                  srl          zero, s1, tp
                  mul          s8, t2, a5
                  xor          s0, a3, s11
                  sra          s5, s3, s0
                  srai         a1, ra, 21
                  c.sub        a1, s0
                  divu         t6, t4, a0
                  mul          zero, s2, s4
                  mulhsu       s11, a4, a5
                  rem          a7, sp, s6
                  sub          a5, t6, t1
                  divu         s0, t1, t0
                  c.li         a1, -1
                  div          t5, gp, t1
                  xor          a0, s7, s4
                  c.add        t4, s2
                  slli         t1, t2, 26
                  auipc        s6, 475414
                  auipc        t4, 1005508
                  slli         s2, s3, 13
                  slti         s0, zero, 290
                  srli         s11, a1, 22
                  c.addi16sp   sp, -16
                  mul          s0, s3, s2
                  div          s4, t1, gp
                  srl          s2, sp, t6
                  slti         t2, t6, -1779
                  sra          sp, t1, zero
                  slt          sp, s0, s6
                  srli         t5, t4, 21
                  c.slli       t2, 24
                  ori          t6, s8, -1677
                  sltiu        s3, t0, 954
                  c.sub        a3, a1
                  slti         a3, ra, -681
                  c.addi       a1, -1
                  c.mv         a2, t3
                  mulh         s4, s6, t2
                  addi         a7, tp, -902
                  srai         a4, s8, 31
                  mulhsu       t1, s7, t1
                  or           a5, gp, s8
                  xori         a0, zero, -192
                  add          s11, s3, s5
                  sra          t5, s3, a3
                  xori         s11, ra, 513
                  sltu         s2, s5, t6
                  rem          s8, a3, a7
                  srai         s7, s10, 7
                  nop
                  addi         a1, a5, -795
                  c.addi16sp   sp, -16
                  srli         a1, zero, 23
                  c.slli       ra, 22
                  mulhsu       a3, a1, s0
                  c.addi16sp   sp, 272
                  xori         s6, s10, -1119
                  c.andi       s0, 19
                  lui          a1, 832595
                  c.addi       t2, -1
                  or           t6, s10, s2
                  c.nop
                  c.xor        a0, a1
                  rem          s5, t3, t4
                  c.andi       a0, 4
                  c.srai       a5, 22
                  c.mv         a7, s4
                  sltiu        s6, t6, -903
                  nop
                  auipc        a7, 451456
                  c.andi       a4, -1
                  c.srli       a4, 9
                  c.srli       a5, 25
                  add          s0, zero, t4
                  andi         t6, a0, -1557
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_33
                  li           a2, 0x80000000
                  li           s8, 0x80000000
                  li           ra, 0x0
                  li           t4, 0x80000000
                  li           t1, 0x52c91350
                  li           gp, 0x80000000
                  li           a3, 0x0
                  li           t5, 0x9085b4
                  li           tp, 0x0
                  mul          gp, a3, a2
                  mul          a3, a3, t5
                  mulh         gp, ra, s8
                  nop
                  nop
                  addi         ra, s8, 597
                  sub          t6, s8, a2
                  mulhu        tp, t5, tp
                  remu         a2, a3, t4
                  nop
                  mulh         t1, s8, ra
                  mulhu        t5, t1, a2
                  mulhu        t1, t6, a2
                  mulhu        s8, t5, t1
                  mulhsu       t4, ra, t6
                  mul          t4, a2, ra
                  div          a3, a3, t1
                  nop
                  div          gp, t6, t5
                  sub          ra, t4, t4
                  addi         gp, s8, -327
                  rem          t1, s8, t6
                  sub          t1, t5, t5
                  mulhu        t5, t6, a2
                  div          tp, t1, t4
                  mul          t6, s8, a3 #end riscv_int_numeric_corner_stream_33
                  or           t2, s11, a5
                  xori         t0, a4, 8
                  mulhsu       s7, ra, s1
                  or           s7, s6, a7
                  mulh         s8, gp, t4
                  srl          a7, s8, t2
                  divu         a2, s10, s0
                  slli         a2, s6, 5
                  sll          s2, a5, zero
                  addi         s6, t1, -1553
                  remu         t4, s11, zero
                  srl          t3, t6, a7
                  sltu         s11, a3, t4
                  c.andi       a2, -1
                  auipc        s8, 329488
                  srl          t6, s0, t2
                  srai         t3, t5, 26
                  c.lui        s2, 11
                  and          a2, sp, a7
                  c.sub        a5, a1
                  xori         t6, a1, -1965
                  sll          t2, s11, gp
                  addi         a3, a4, 1135
                  remu         a2, s8, gp
                  sltiu        tp, sp, -1947
                  sll          a0, s2, s3
                  ori          t2, tp, 354
                  xor          s0, a0, a3
                  auipc        s4, 410423
                  mulh         t1, s4, s0
                  auipc        t1, 745886
                  and          s7, a2, t2
                  c.slli       gp, 12
                  add          t5, s10, t5
                  or           s3, a4, gp
                  c.lui        s3, 31
                  c.xor        s0, s0
                  div          s3, a3, t5
                  c.mv         t5, a4
                  and          t1, s0, a2
                  c.andi       s0, -1
                  c.add        a2, a0
                  ori          sp, s5, 571
                  c.slli       s8, 30
                  c.lui        s11, 22
                  andi         t6, gp, 720
                  c.addi4spn   a1, sp, 48
                  sltu         t5, s8, a1
                  and          tp, sp, sp
                  c.add        t3, tp
                  mul          s6, a0, s5
                  slli         s5, s5, 27
                  c.mv         a7, a1
                  mulh         a7, s2, t0
                  sll          t2, t2, s6
                  srli         t5, s0, 30
                  c.srai       a1, 2
                  c.li         ra, -1
                  c.addi4spn   a1, sp, 400
                  c.and        a0, a3
                  sub          gp, s3, t5
                  c.add        a0, s3
                  mulh         t6, s6, a2
                  xor          a0, sp, ra
                  sll          a3, s3, gp
                  slti         s7, a3, -27
                  c.and        a0, a5
                  c.add        s2, a0
                  sub          tp, s5, tp
                  c.nop
                  ori          t6, t2, 1085
                  sltu         s2, a0, s5
                  auipc        s7, 909075
                  slli         a1, s7, 11
                  and          sp, a2, ra
                  mulhsu       s3, zero, t6
                  ori          zero, s3, 945
                  sub          sp, s2, t2
                  mulh         s2, sp, tp
                  c.andi       a3, 31
                  rem          s5, a4, s11
                  divu         a7, zero, zero
                  xor          t3, a7, s4
                  rem          a7, a0, a0
                  c.srai       a1, 3
                  and          s3, t4, sp
                  c.nop
                  c.and        a2, s1
                  c.srli       a4, 24
                  sll          s2, a4, a6
                  add          a4, a0, t6
                  mulhsu       s4, t4, a5
                  divu         t5, ra, s7
                  c.lui        s3, 26
                  andi         s6, t1, -1180
                  sll          s8, a3, t6
                  c.mv         s4, s8
                  sltu         a2, a5, t2
                  add          a0, gp, s7
                  slli         s10, a1, 22
                  c.add        tp, s7
                  sltiu        a7, a5, -1596
                  div          tp, t4, t0
                  sltiu        a4, s7, -963
                  c.li         t1, -1
                  c.nop
                  xor          ra, s4, tp
                  ori          s0, a0, 459
                  c.xor        a1, a2
                  auipc        t3, 1044233
                  ori          s5, t6, 1542
                  sll          a3, s1, a1
                  c.srai       a1, 20
                  c.sub        a2, a2
                  lui          t5, 293419
                  c.srli       a4, 21
                  slti         gp, s7, 1797
                  slli         t4, ra, 5
                  slt          s6, a2, a1
                  or           s10, s1, a0
                  rem          s4, s7, s2
                  c.add        a3, a5
                  and          a1, s3, ra
                  c.add        t5, a1
                  sll          s10, a5, t2
                  c.mv         t5, ra
                  or           a7, t4, s1
                  ori          zero, a3, 690
                  rem          ra, a2, ra
                  slti         zero, tp, -408
                  srai         zero, s7, 15
                  remu         s0, tp, a5
                  ori          s2, gp, 505
                  xor          s3, t2, a2
                  sub          a2, s1, a5
                  c.srli       a1, 17
                  srl          tp, a7, t1
                  or           t5, a3, a1
                  andi         s0, s5, 1983
                  c.addi16sp   sp, -16
                  andi         s10, s11, 1017
                  lui          gp, 1042070
                  sltu         t3, s9, gp
                  andi         t5, s3, -1822
                  remu         t3, a2, a2
                  slt          a1, s5, s10
                  mulhsu       a2, s1, s10
                  srai         ra, a4, 30
                  add          s0, s2, sp
                  c.and        a4, a4
                  c.add        tp, s6
                  mulhu        t3, a5, t5
                  c.add        s0, s6
                  sltiu        s8, t1, 1630
                  sra          s8, s3, a1
                  rem          zero, ra, a2
                  c.andi       a5, 4
                  c.slli       gp, 31
                  add          a4, s3, tp
                  sub          s7, t3, ra
                  c.add        a4, s4
                  mulhu        s8, ra, a4
                  srli         sp, s5, 31
                  ori          a7, a1, -1682
                  sltu         a3, a7, zero
                  srai         s10, a2, 15
                  or           a2, s10, t6
                  sll          s8, a0, s11
                  c.slli       s0, 6
                  srai         s0, a1, 25
                  sltu         t4, a5, t6
                  c.addi16sp   sp, -16
                  div          t5, s8, tp
                  c.xor        a4, a4
                  c.andi       s0, -1
                  divu         t1, s7, t1
                  c.li         t4, -1
                  remu         sp, a4, t3
                  c.lui        s11, 28
                  sltiu        s6, s7, 1323
                  mulh         a1, t4, s3
                  c.and        a5, a3
                  mulhsu       s8, s7, s6
                  c.addi4spn   a3, sp, 64
                  add          ra, s11, s2
                  add          tp, s8, a0
                  lui          a7, 640198
                  c.or         a5, a4
                  c.li         t4, 29
                  c.addi       a5, 23
                  mulh         t4, t4, s5
                  c.xor        a1, a2
                  and          a3, s11, tp
                  auipc        s4, 435201
                  c.sub        a3, a1
                  c.srai       a3, 4
                  c.nop
                  c.slli       t5, 27
                  auipc        t3, 1032668
                  sub          ra, a3, a5
                  srai         tp, tp, 8
                  slti         t3, a7, 1711
                  c.andi       a3, 25
                  c.add        s3, t0
                  srai         s4, a1, 4
                  c.nop
                  mulh         s5, s9, a1
                  addi         s10, a7, 617
                  sltiu        sp, s6, 787
                  mul          s7, t5, a3
                  c.xor        s0, a0
                  div          gp, s10, ra
                  sltu         a3, s9, t5
                  and          s3, s3, s5
                  c.sub        a1, a0
                  sltiu        a3, s7, 781
                  and          s5, tp, a1
                  c.add        s0, a4
                  add          a4, t4, s2
                  c.slli       t5, 21
                  mul          s3, t5, t0
                  slti         a7, a4, 1880
                  c.addi       t2, 21
                  srai         s8, s2, 13
                  srli         s3, s7, 7
                  mulhu        s8, s2, a6
                  xor          ra, t5, s4
                  sltu         s0, ra, t4
                  andi         a4, a4, -258
                  c.and        a3, s1
                  xori         t6, s9, 454
                  mulhsu       s2, t1, a2
                  slt          s2, a3, a7
                  remu         gp, s4, s2
                  andi         a7, t2, 1145
                  srl          s8, t1, s9
                  c.srli       s0, 8
                  c.srli       a1, 20
                  sltu         s7, a4, a3
                  c.xor        a0, s0
                  c.nop
                  c.andi       a5, 17
                  c.add        s6, tp
                  c.andi       a1, -1
                  andi         ra, a0, -739
                  c.xor        a3, a0
                  c.nop
                  c.addi       a0, 19
                  xor          t2, s0, a2
                  and          s8, t3, a2
                  c.addi       s3, -1
                  srai         a5, s4, 11
                  remu         gp, zero, s0
                  c.addi       s3, 24
                  c.mv         t3, a6
                  sll          a4, s1, s4
                  and          a4, s0, a2
                  srai         s11, a0, 4
                  sra          t1, s8, s0
                  addi         a4, sp, -1336
                  c.and        a5, a3
                  divu         a7, t4, s4
                  addi         t5, s5, -642
                  sltiu        a4, t1, 1909
                  c.slli       t5, 29
                  c.addi4spn   a2, sp, 16
                  sub          s8, t1, a4
                  mulh         s0, s2, gp
                  mulh         a0, a0, a5
                  c.sub        a2, a5
                  remu         sp, t2, t6
                  divu         s6, s5, a1
                  mulhsu       t0, tp, ra
                  remu         s7, a4, s10
                  lui          s7, 11007
                  mulh         ra, t0, a7
                  slt          sp, a0, t4
                  andi         sp, a0, 340
                  or           t3, sp, s3
                  addi         a5, s8, -1143
                  c.mv         t2, a5
                  srli         s4, t5, 10
                  mulhu        a7, t0, zero
                  div          ra, a7, a1
                  c.lui        t0, 11
                  mulhu        a4, a4, s7
                  slti         s0, s6, -128
                  c.add        t0, s0
                  addi         s3, a2, -1675
                  c.addi16sp   sp, -16
                  c.or         a2, a5
                  andi         s5, t1, -1120
                  c.li         s2, -1
                  mulhu        a5, s1, a1
                  andi         gp, a0, 1491
                  ori          a2, s6, 1426
                  slti         ra, a4, -1945
                  divu         t3, s4, s3
                  c.slli       s6, 13
                  mul          sp, a6, s7
                  c.mv         a0, a3
                  mulhsu       gp, t1, s2
                  srli         a1, s9, 22
                  and          s6, zero, a0
                  srli         a4, ra, 1
                  sltiu        t2, s2, 938
                  addi         a1, t2, -17
                  sltu         a3, t3, s11
                  xori         s11, a3, -1556
                  c.addi       s4, -1
                  slt          tp, t3, s7
                  sltu         a2, a6, s11
                  c.and        a2, a3
                  mulhu        s3, s5, t2
                  mul          s6, a7, a3
                  remu         t6, a1, a4
                  div          a2, s0, s2
                  c.addi16sp   sp, -16
                  sltiu        s0, ra, -826
                  sll          s2, tp, s1
                  c.andi       a1, 5
                  div          ra, a3, s2
                  c.or         a5, a3
                  c.srli       a3, 20
                  c.or         a0, a0
                  c.andi       a2, -1
                  sltiu        t6, sp, 210
                  mulhu        a0, a7, t4
                  mulhsu       t1, s5, s0
                  mulhsu       gp, s6, a3
                  c.slli       a4, 28
                  srl          a5, a6, t6
                  c.srli       a2, 30
                  c.mv         s4, s6
                  srl          s0, s11, zero
                  auipc        s4, 750025
                  c.srli       s0, 26
                  sll          s0, s10, a7
                  c.srai       s0, 1
                  divu         a0, ra, ra
                  xori         zero, s6, 1192
                  xori         t0, a7, -170
                  c.srli       a3, 9
                  xor          s11, s5, t1
                  slt          s6, t6, a1
                  c.lui        s0, 8
                  slt          s0, a3, a1
                  or           s10, s7, sp
                  srli         s2, s8, 24
                  sltiu        s0, t4, -1140
                  c.mv         s10, gp
                  c.srai       a5, 18
                  c.lui        a7, 2
                  nop
                  c.li         a0, 10
                  or           a3, a0, s2
                  xor          s0, a4, t1
                  auipc        s4, 59368
                  mulhsu       s4, ra, s7
                  or           ra, a4, s0
                  xor          t2, ra, s8
                  sra          a7, t1, t5
                  c.slli       t1, 8
                  sra          a0, t4, a5
                  addi         s2, t5, 1266
                  c.addi       s2, 16
                  c.lui        a0, 31
                  c.li         s2, -1
                  xor          t0, s0, a0
                  c.or         a4, a1
                  sltiu        t2, s3, 1260
                  nop
                  remu         t0, t0, s4
                  auipc        s8, 114745
                  sll          s7, t6, t0
                  c.nop
                  sub          t0, sp, ra
                  slt          tp, gp, a1
                  slt          s3, s11, a1
                  c.srai       a1, 2
                  c.add        tp, s7
                  mulh         s3, tp, ra
                  nop
                  sub          s3, t4, s0
                  slli         zero, a4, 27
                  srai         zero, t4, 8
                  slti         gp, a7, 1884
                  sltiu        s8, t6, -1137
                  c.or         s0, a1
                  div          a2, s6, sp
                  c.addi       sp, -1
                  xori         s4, a4, 292
                  addi         t5, t5, 957
                  sra          tp, s4, a5
                  auipc        s6, 566756
                  srl          s5, s7, gp
                  c.lui        t6, 27
                  c.srli       a4, 9
                  xori         zero, t3, -1316
                  c.slli       gp, 9
                  mul          s3, s11, t4
                  c.li         s8, 23
                  c.slli       ra, 19
                  sltiu        a7, t3, -52
                  mul          t4, a6, t6
                  div          a0, t3, a4
                  mulhsu       t4, s8, s4
                  xor          s6, s4, a2
                  nop
                  c.lui        ra, 12
                  c.srai       a2, 10
                  ori          a7, t0, -674
                  or           ra, s7, s1
                  c.lui        s5, 15
                  c.sub        a1, a4
                  mulhu        gp, s4, s0
                  srl          sp, a1, s2
                  xori         s8, t1, 952
                  c.nop
                  c.addi16sp   sp, -16
                  c.li         a3, 31
                  xor          a1, s3, sp
                  ori          s11, s9, -930
                  sltu         a3, t4, t5
                  slli         s0, t2, 4
                  c.addi4spn   s0, sp, 144
                  div          s11, s8, zero
                  srai         gp, a4, 7
                  sll          s7, sp, t6
                  mulhu        zero, s2, s9
                  srai         s8, s5, 26
                  sll          zero, sp, s1
                  c.xor        a5, a0
                  rem          s11, s6, a2
                  srl          s7, a3, s2
                  c.addi4spn   a2, sp, 416
                  auipc        a3, 190318
                  srai         t1, ra, 25
                  c.addi16sp   sp, 48
                  lui          tp, 714905
                  div          zero, s7, a2
                  c.srai       a4, 28
                  rem          s11, t3, a0
                  c.or         s0, a3
                  lui          s4, 863514
                  mul          s11, s6, gp
                  c.li         t2, -1
                  slti         t4, t6, -932
                  add          ra, s8, s10
                  rem          s8, a1, t4
                  sll          a7, s3, tp
                  c.addi4spn   a5, sp, 736
                  c.and        s0, a5
                  sltu         s11, s3, gp
                  srl          a4, s4, s5
                  c.lui        ra, 22
                  c.srai       a0, 28
                  sll          s11, a1, a4
                  slt          s5, t0, a7
                  nop
                  andi         t1, s0, -2026
                  addi         a2, t3, 1882
                  c.li         a0, -1
                  ori          zero, a1, -1853
                  or           t6, s0, s2
                  sra          a1, tp, s2
                  c.addi4spn   a0, sp, 64
                  slti         t5, gp, 195
                  c.xor        a0, s0
                  mulh         a2, t5, a5
                  sltu         s11, a3, a4
                  c.slli       t5, 8
                  slli         t4, a2, 6
                  srai         s3, s10, 19
                  sltiu        s0, s9, -1511
                  mul          s11, s0, s2
                  and          t4, a5, gp
                  c.slli       ra, 2
                  c.addi       t3, -1
                  slti         a3, gp, 302
                  c.addi4spn   a1, sp, 320
                  c.add        t4, s7
                  slt          t4, s9, t6
                  nop
                  xor          s7, a0, tp
                  lui          t1, 728904
                  c.nop
                  rem          s8, s8, s9
                  c.xor        a2, a2
                  sub          s4, a3, a7
                  auipc        s0, 720013
                  rem          zero, ra, ra
                  sltiu        s2, s3, 67
                  rem          s3, s6, s1
                  c.addi4spn   s0, sp, 416
                  c.srai       a5, 30
                  srai         s7, a1, 10
                  auipc        a3, 770445
                  c.xor        a0, s0
                  slt          a7, a3, t4
                  c.nop
                  c.and        s0, s1
                  and          s6, s0, t6
                  sltiu        sp, ra, 1390
                  divu         tp, s9, t1
                  mulh         s6, t4, s3
                  xori         a3, sp, 546
                  c.srli       a1, 13
                  c.xor        a4, a4
                  xori         t2, t2, 450
                  add          s2, s4, s2
                  slti         t4, s7, 483
                  addi         t1, sp, 554
                  c.xor        a5, a3
                  c.andi       a1, 7
                  divu         t2, a1, a3
                  ori          a4, gp, -1855
                  srai         tp, s11, 0
                  mulhsu       s4, t2, zero
                  c.mv         s5, s9
                  lui          s5, 702419
                  nop
                  c.mv         t5, t0
                  div          t4, t5, ra
                  add          s4, t1, a1
                  c.andi       a5, 22
                  c.sub        a5, a2
                  slt          s8, sp, t4
                  srai         s8, a3, 31
                  c.add        a3, gp
                  c.srli       a2, 5
                  c.slli       s8, 18
                  slti         s0, sp, 1426
                  ori          tp, a2, -665
                  c.srai       s0, 19
                  andi         s5, a5, 832
                  srl          s2, s3, t1
                  xor          t4, gp, a5
                  slli         a4, tp, 21
                  c.li         s3, -1
                  andi         s8, sp, -1070
                  nop
                  c.andi       s0, 4
                  srli         a0, s6, 18
                  mulhsu       s7, t6, t2
                  xor          s4, s9, t5
                  or           sp, t6, t4
                  srli         t6, zero, 7
                  srai         s8, s1, 18
                  remu         a1, s2, a0
                  sltiu        s2, s5, 172
                  c.srli       a4, 12
                  mul          t4, s6, s2
                  sltiu        s3, zero, 1421
                  or           sp, zero, s7
                  mulhu        s10, a5, s3
                  remu         t3, s1, s3
                  slli         a7, ra, 21
                  c.or         a5, s1
                  sub          s2, a1, t6
                  andi         t6, a2, 221
                  remu         s2, t6, s4
                  srli         t5, s5, 25
                  c.or         a5, a4
                  rem          sp, s4, a5
                  mul          s7, s7, s3
                  c.and        a0, a4
                  sltiu        s6, s7, -641
                  sub          s5, s0, t0
                  xori         a7, s0, -1948
                  auipc        gp, 781837
                  c.slli       a3, 29
                  c.srli       a0, 23
                  mulhu        s6, t6, a2
                  xori         a7, a5, -1454
                  slti         gp, tp, -269
                  nop
                  add          a5, a7, s7
                  c.addi       s4, 13
                  sra          s2, s5, t4
                  and          a2, s8, t5
                  slti         a7, a2, 1088
                  sltiu        a0, a7, -1972
                  srl          t4, s11, zero
                  sub          s3, a3, s9
                  c.nop
                  sub          t2, a3, s6
                  c.and        a2, a1
                  c.add        ra, s2
                  c.addi16sp   sp, -16
                  c.add        s8, s8
                  or           s3, t1, a2
                  c.addi4spn   a1, sp, 448
                  c.and        a3, s0
                  or           s8, s0, tp
                  addi         a7, s11, 930
                  sltu         s3, a5, t5
                  c.li         s2, 19
                  c.or         a5, s0
                  slti         a2, s11, -952
                  mulh         a4, a6, t1
                  addi         s0, s11, -1809
                  c.andi       s0, 3
                  slt          a1, a5, s0
                  sltu         t0, a7, s6
                  add          a0, a7, t6
                  xori         t4, t0, -1139
                  and          a5, t5, a6
                  sltiu        s3, s0, 1957
                  div          t4, a6, s2
                  mulh         a7, a2, a6
                  rem          a4, s5, a6
                  or           t1, s11, zero
                  auipc        s10, 273721
                  c.xor        a5, s0
                  c.add        a4, a3
                  c.srli       a5, 16
                  c.nop
                  slt          a7, a0, s9
                  ori          a2, a2, -1228
                  srli         tp, ra, 23
                  srli         s4, a7, 8
                  andi         t6, a0, 1045
                  xori         t1, tp, -108
                  lui          t3, 1030832
                  sub          a7, tp, zero
                  add          t1, s6, s4
                  c.slli       ra, 6
                  c.xor        a5, a1
                  xori         a7, s9, 240
                  c.nop
                  sll          s8, s0, gp
                  c.sub        a2, a4
                  c.srli       a2, 16
                  mulhsu       a7, a7, t2
                  sll          s3, s7, s11
                  mulhsu       s2, t6, t3
                  c.srli       a2, 13
                  sltu         s8, gp, t3
                  div          a7, gp, s3
                  c.mv         ra, s0
                  div          a0, ra, s9
                  lui          a2, 402908
                  c.mv         s10, a5
                  rem          sp, a0, t1
                  c.mv         t1, t4
                  srli         s6, a5, 5
                  srli         t4, t3, 23
                  sltu         s10, s1, s3
                  xor          s4, s3, a0
                  c.add        a0, s11
                  slt          t2, a2, t4
                  sra          s11, a6, a0
                  and          ra, gp, a0
                  lui          s11, 770495
                  or           s11, a3, t6
                  lui          a1, 770368
                  auipc        a3, 791121
                  sltiu        t2, s8, -845
                  div          s0, s10, s1
                  addi         s11, t2, -1949
                  c.addi       a4, 21
                  c.andi       a2, -1
                  slti         t1, s11, 1202
                  mulhsu       a7, a6, tp
                  xor          s10, zero, t2
                  c.addi16sp   sp, 336
                  slli         t6, a4, 15
                  xori         a4, tp, 98
                  c.srli       a0, 18
                  sll          zero, a0, a3
                  sll          t6, s7, a2
                  addi         sp, t3, -351
                  xori         t5, s10, -160
                  c.addi16sp   sp, 288
                  srai         ra, s5, 22
                  srl          s0, s3, s1
                  c.xor        a3, a1
                  c.sub        a2, a2
                  div          s0, a6, s9
                  and          s6, t2, s11
                  divu         a2, s8, a2
                  mulhu        s0, s1, s3
                  slli         ra, ra, 29
                  c.nop
                  add          tp, t6, a0
                  remu         s10, t3, t6
                  div          t2, s10, tp
                  mulh         t3, s5, a1
                  rem          s0, t3, s1
                  c.or         a3, a3
                  c.addi       s3, 30
                  slt          a1, a5, s8
                  c.srli       a2, 14
                  xori         s3, t3, 500
                  sltiu        t2, t4, -32
                  c.and        a2, a4
                  add          a4, zero, s5
                  lui          zero, 107552
                  c.li         t0, -1
                  c.addi16sp   sp, -16
                  mulh         t4, s4, a0
                  c.or         a0, s0
                  c.addi16sp   sp, 128
                  sra          s6, a1, s6
                  and          s8, s0, tp
                  c.sub        a1, s1
                  c.or         a0, a3
                  c.add        t3, a3
                  sltu         t5, s5, s0
                  c.nop
                  c.slli       t2, 1
                  c.add        s4, t3
                  c.and        a1, a0
                  add          t0, s3, t6
                  c.li         s5, 30
                  c.add        s5, a2
                  c.nop
                  divu         a0, t3, a5
                  mulhu        s8, a7, s4
                  sltu         t2, a1, a1
                  c.xor        a4, s0
                  and          s5, t6, a6
                  or           zero, a3, a6
                  c.mv         a1, s9
                  c.srli       a0, 26
                  c.addi       sp, 19
                  ori          s6, t3, 780
                  divu         ra, t0, s1
                  mulh         t0, a1, s5
                  lui          t1, 209046
                  or           t2, s4, a6
                  and          a7, s3, ra
                  andi         s5, t1, -343
                  c.sub        a2, a1
                  mulh         t5, t0, a1
                  srai         t3, t4, 23
                  c.addi4spn   a1, sp, 816
                  srl          sp, ra, s2
                  sll          s7, t4, s7
                  c.xor        a1, a0
                  c.li         a7, 24
                  sra          s2, s8, a5
                  c.sub        a0, a3
                  c.li         s6, 28
                  sltu         t2, a1, a1
                  rem          tp, s1, a0
                  c.li         a4, 18
                  sub          t6, s8, s3
                  addi         s2, s0, -916
                  addi         a2, sp, -514
                  c.slli       gp, 5
                  c.and        a3, s0
                  c.addi       s4, -1
                  srli         zero, a5, 6
                  mul          ra, s6, s10
                  c.addi16sp   sp, 336
                  remu         s8, s4, t0
                  mulh         sp, s2, zero
                  c.or         a5, a4
                  addi         a3, t1, 1611
                  c.addi4spn   a1, sp, 48
                  c.addi16sp   sp, -16
                  sra          ra, a3, gp
                  c.addi       s2, -1
                  auipc        t5, 852588
                  sltiu        sp, t1, 1100
                  mul          t4, t4, s6
                  mulhsu       t2, s8, t6
                  c.nop
                  mulh         t2, zero, s0
                  div          s6, a3, s1
                  c.srli       s0, 13
                  c.addi4spn   a1, sp, 992
                  c.nop
                  sra          s4, sp, t5
                  rem          t3, s1, s8
                  c.slli       a1, 19
                  mulh         s8, t0, s9
                  mulh         ra, a0, ra
                  sltu         ra, a2, s8
                  srl          t2, s6, t5
                  div          s11, t6, a2
                  xori         a4, a2, -1678
                  div          a1, a4, t2
                  xori         ra, t2, 305
                  div          s3, a3, a2
                  srl          s2, s8, t2
                  c.xor        a5, a4
                  c.lui        tp, 19
                  c.srai       a4, 27
                  srai         a5, sp, 31
                  c.lui        s0, 21
                  and          a3, s8, s0
                  div          a1, zero, a5
                  auipc        s8, 409098
                  sltu         ra, s9, sp
                  c.add        s7, t4
                  or           t2, a6, t4
                  slli         t2, s3, 7
                  c.or         a1, s0
                  divu         t3, s1, a6
                  mulh         a5, s4, t1
                  c.addi4spn   a1, sp, 528
                  xori         s6, t1, 471
                  auipc        a5, 597094
                  sltu         s5, s6, a3
                  sra          t3, gp, s9
                  mulh         gp, t5, t5
                  ori          s0, s0, 1540
                  mul          s8, t1, s6
                  remu         s7, a1, a0
                  divu         s10, a1, ra
                  addi         t6, t1, -151
                  c.or         a5, a4
                  remu         s2, s6, a4
                  nop
                  c.andi       s0, -1
                  c.addi       s0, -1
                  or           s4, a3, t0
                  add          s11, a5, s2
                  mul          t1, zero, a1
                  xori         s5, t2, -1716
                  sltu         s6, zero, a5
                  c.mv         tp, ra
                  srli         s4, zero, 24
                  slli         s4, t6, 24
                  sll          a4, t3, a6
                  andi         a4, a0, 813
                  andi         s11, a3, 748
                  c.addi4spn   a0, sp, 368
                  mulhsu       t1, sp, s7
                  c.andi       a1, 0
                  srli         t5, t1, 9
                  xori         s11, a0, -1295
                  c.add        tp, t2
                  divu         a2, a6, a4
                  remu         t1, s8, a3
                  c.li         a1, 4
                  sra          t6, s11, s9
                  auipc        t1, 416256
                  rem          t1, s9, a2
                  slt          t1, s7, a3
                  c.andi       a3, -1
                  c.addi16sp   sp, -16
                  c.add        t3, t0
                  c.xor        a3, a3
                  c.addi16sp   sp, -16
                  c.xor        a3, a5
                  rem          a7, t4, t3
                  rem          a2, s0, t5
                  slti         s5, a7, 1650
                  mul          a5, a1, t0
                  slti         s4, tp, -1547
                  c.nop
                  mulhsu       a3, a2, a6
                  c.mv         a7, a1
                  c.sub        a5, a4
                  c.nop
                  slt          ra, s1, s2
                  c.sub        a5, a3
                  c.slli       s11, 7
                  xor          gp, t0, t0
                  sll          t1, t6, a3
                  slli         t5, t0, 20
                  c.or         a0, a2
                  c.addi       s7, 18
                  sll          t4, s0, a5
                  srli         a2, t4, 21
                  c.addi       s11, 6
                  c.add        gp, t3
                  c.lui        s5, 15
                  sltu         a4, sp, t5
                  c.and        a3, a5
                  c.or         a4, s1
                  c.lui        s5, 3
                  c.addi4spn   a2, sp, 432
                  auipc        s8, 699304
                  slli         t6, s8, 27
                  c.lui        s0, 23
                  and          a0, a0, t0
                  mulhu        a7, a6, a2
                  sltu         zero, s3, s0
                  and          a1, ra, a5
                  mulh         t4, gp, a4
                  srli         a5, s3, 22
                  c.lui        a2, 25
                  sll          s5, a2, t0
                  andi         t5, a0, -611
                  c.nop
                  c.or         a5, a2
                  div          t1, s3, t2
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  c.sub        a2, a0
                  c.srai       a0, 28
                  c.sub        a0, a5
                  c.lui        tp, 17
                  c.nop
                  c.nop
                  and          sp, t1, s4
                  sltu         t3, s6, a0
                  c.li         sp, 23
                  c.slli       s0, 8
                  c.addi16sp   sp, -16
                  sub          t5, t0, t6
                  c.xor        a3, a3
                  auipc        zero, 1015985
                  c.mv         sp, s10
                  xor          t4, t5, s7
                  add          zero, s11, s1
                  c.add        s2, a7
                  mulhsu       t3, s11, s5
                  c.li         a5, -1
                  divu         tp, t4, s1
                  c.li         t1, 11
                  sub          t3, s6, sp
                  or           a7, a7, a5
                  c.andi       a1, 28
                  slti         a7, s6, 1170
                  c.srli       a4, 8
                  srai         a4, t6, 8
                  c.slli       a3, 31
                  mulh         t5, s0, sp
                  c.or         a3, s0
                  mulhu        t4, t2, gp
                  remu         tp, s6, s10
                  mulh         s7, a3, s10
                  divu         s6, gp, s4
                  sltiu        a1, t3, -13
                  c.addi       tp, 1
                  add          a0, zero, a3
                  slti         s8, a6, 302
                  c.and        a5, a5
                  sub          s11, t5, t3
                  rem          t6, zero, s10
                  c.and        a3, a5
                  rem          zero, t4, s9
                  ori          a5, a3, 1292
                  remu         s10, a3, a3
                  c.addi16sp   sp, 96
                  slli         t2, s7, 31
                  sltu         a0, zero, s10
                  remu         t6, t3, t5
                  nop
                  srli         t5, s4, 9
                  or           s2, s8, a1
                  sll          t6, s1, t4
                  c.and        a3, s0
                  xori         s11, a6, 184
                  c.mv         s7, a1
                  or           gp, t3, s8
                  sltu         s0, a1, a4
                  c.srai       a2, 7
                  addi         s11, a0, 1652
                  slti         s11, t4, 733
                  sltu         a7, t5, s5
                  c.srli       a5, 19
                  srl          a5, t4, tp
                  c.xor        a3, s0
                  c.mv         a1, t0
                  c.xor        a0, a0
                  srl          a4, s6, t2
                  mulh         a1, s7, tp
                  addi         gp, tp, -961
                  andi         sp, t3, 310
                  xor          s0, a2, s8
                  c.srli       s0, 4
                  c.or         a3, a2
                  slli         s10, s4, 15
                  c.addi4spn   a0, sp, 208
                  divu         sp, s10, a5
                  c.srai       a0, 11
                  c.addi16sp   sp, -16
                  c.or         s0, a0
                  mul          s5, s4, t6
                  c.andi       a2, -1
                  c.srli       s0, 19
                  c.addi16sp   sp, -16
                  srai         a1, t3, 23
                  c.mv         t3, a6
                  ori          a3, s6, -720
                  sll          t5, s1, ra
                  c.mv         s7, a1
                  mulhu        t4, tp, gp
                  c.srai       a0, 12
                  c.xor        a4, a2
                  c.lui        t4, 13
                  c.add        s0, a7
                  c.srli       a1, 29
                  c.sub        s0, s0
                  divu         a1, s9, t0
                  sltiu        a4, a0, 195
                  remu         gp, s7, s7
                  slli         s2, a4, 13
                  nop
                  nop
                  rem          t1, t5, ra
                  xor          a3, s0, s2
                  c.or         a5, a0
                  mulhsu       s4, a7, s11
                  c.srli       a3, 1
                  sub          t2, ra, a2
                  rem          s4, a6, s10
                  remu         a0, a1, s11
                  srai         a4, s10, 22
                  sltu         tp, s1, t5
                  slt          a1, s6, a6
                  c.addi16sp   sp, 432
                  nop
                  slli         sp, s9, 21
                  slli         t0, s8, 20
                  ori          s6, t0, 636
                  c.slli       s7, 30
                  sra          a1, tp, t1
                  divu         tp, sp, a0
                  c.addi4spn   a5, sp, 48
                  c.xor        a1, a0
                  slti         a7, s6, -998
                  sra          tp, s5, s2
                  and          s4, t3, a7
                  c.nop
                  remu         s11, s5, t4
                  div          s5, tp, s10
                  c.addi       a7, -1
                  sll          a4, a5, s3
                  remu         t2, ra, a5
                  sub          t1, s0, s10
                  remu         t4, zero, t4
                  mulhsu       s4, s6, t5
                  slti         zero, a2, -1932
                  remu         a5, s8, t1
                  addi         s0, t3, -1275
                  andi         s11, s11, 403
                  auipc        t6, 158448
                  lui          s11, 85947
                  c.xor        a4, a1
                  slti         t4, s10, -1101
                  xori         s11, t6, 597
                  xori         ra, sp, 1640
                  xor          t2, s9, a5
                  c.slli       ra, 13
                  c.xor        a2, a1
                  lui          zero, 244021
                  srl          a0, t3, s9
                  slti         a0, t1, 480
                  c.sub        a4, a4
                  addi         s2, s2, -456
                  divu         t4, s1, ra
                  ori          t3, ra, -182
                  div          ra, s2, t6
                  c.addi       a7, -1
                  c.mv         s2, t6
                  sltu         t0, t3, t1
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           t5, 0xffffffff
                  li           s11, 0xaf9f5a47
                  li           sp, 0xffffffff
                  li           gp, 0x0
                  li           a4, 0xffffffff
                  li           a3, 0x80000000
                  li           s7, 0x80000000
                  li           tp, 0xffffffff
                  li           a1, 0x80000000
                  divu         a4, s7, s7
                  divu         s8, s8, a4
                  auipc        tp, 294693
                  nop
                  mul          s7, s7, t5
                  add          gp, a4, s7
                  mulh         a1, a3, gp
                  mul          a4, s11, a4
                  div          s8, a3, s8
                  nop
                  lui          s7, 925346
                  mul          t5, s11, a4
                  mulhsu       a3, tp, s11
                  divu         a3, a3, a1
                  nop
                  mulhu        a3, tp, s11
                  div          t5, s7, s11
                  divu         sp, t5, a3
                  mul          s11, sp, s7
                  nop
                  div          a1, s7, t5
                  mulh         tp, a1, s11
                  rem          tp, sp, tp
                  sub          gp, a3, a1
                  nop
                  add          s7, s8, s11 #end riscv_int_numeric_corner_stream_10
                  c.lui        ra, 14
                  c.mv         s0, s0
                  sll          a3, a0, t3
                  c.srli       a5, 2
                  mulhu        s2, s10, a0
                  lui          s8, 91377
                  and          s8, a2, s9
                  c.slli       gp, 21
                  ori          s7, t2, -1868
                  ori          s2, t5, -201
                  mulh         s5, a5, s1
                  mulhsu       s5, a1, s11
                  c.nop
                  c.sub        a5, a3
                  c.andi       s0, -1
                  c.sub        a1, a5
                  c.andi       a3, 6
                  rem          s8, s0, a7
                  srli         sp, t5, 31
                  c.li         t4, -1
                  c.addi       a3, 10
                  andi         a3, s1, -666
                  div          s4, s10, s5
                  srl          a1, a4, t0
                  c.slli       a0, 16
                  c.srli       s0, 21
                  sub          t1, a1, s7
                  slti         t6, s8, -2024
                  remu         t5, t1, a2
                  auipc        t0, 696441
                  c.addi16sp   sp, -16
                  c.srli       a1, 3
                  sra          s3, s8, s5
                  c.addi4spn   a1, sp, 640
                  xori         t0, a4, -1797
                  addi         a7, ra, 1998
                  c.srai       a1, 30
                  c.andi       a2, 27
                  sll          ra, a7, t1
                  srl          t4, s4, t3
                  c.li         s11, 23
                  c.addi4spn   s0, sp, 624
                  c.addi       t4, -1
                  sub          s2, t1, s9
                  slli         zero, sp, 13
                  slt          ra, t2, zero
                  lui          sp, 441931
                  rem          gp, ra, a5
                  remu         a1, a2, t6
                  c.add        s5, a7
                  c.addi       s11, -1
                  mulh         a1, sp, a3
                  slli         ra, s11, 23
                  c.li         s3, -1
                  srl          t2, s1, tp
                  mulh         s8, ra, gp
                  mulhu        gp, tp, s5
                  addi         s0, s2, 536
                  sra          s6, t6, a7
                  addi         sp, s1, -1692
                  mul          t4, zero, gp
                  c.andi       s0, -1
                  addi         s0, s5, 1597
                  auipc        zero, 276342
                  c.mv         a7, s10
                  sltu         s4, s5, s11
                  sll          s4, tp, a1
                  addi         t1, a0, -1192
                  c.or         a5, a0
                  c.nop
                  or           s2, s11, ra
                  xori         s7, sp, 2016
                  c.sub        a3, a0
                  xori         t4, gp, -60
                  c.sub        a1, s0
                  mulhsu       t5, t1, a4
                  or           gp, a0, s11
                  or           a1, s11, a6
                  sltu         s2, a1, t1
                  andi         s8, t1, 144
                  c.slli       tp, 20
                  add          a5, a7, a2
                  c.or         s0, s1
                  andi         a0, ra, 665
                  sltiu        a0, a3, 1878
                  add          s10, s7, s4
                  add          s7, a1, s0
                  xor          s11, s1, a5
                  c.add        t0, s2
                  ori          s10, zero, 779
                  sltu         a7, t0, t6
                  auipc        s3, 225607
                  sub          s4, a6, ra
                  sub          t2, a6, zero
                  c.li         s2, 2
                  c.slli       t4, 29
                  srai         sp, s4, 25
                  c.lui        t4, 1
                  sub          a5, gp, s7
                  sra          a3, s3, t0
                  c.srai       a5, 2
                  sra          a1, s6, a5
                  auipc        sp, 514222
                  slli         t3, a3, 6
                  slt          s0, s6, sp
                  addi         t0, s2, -190
                  mulhsu       a4, a2, s6
                  addi         t6, s7, -1865
                  c.sub        a0, s0
                  slti         s6, t1, 870
                  divu         s11, a2, s8
                  c.lui        tp, 9
                  ori          t0, s3, 675
                  c.andi       a2, -1
                  lui          a0, 1003557
                  sll          a0, t5, s10
                  c.addi       t0, 7
                  mulhu        a7, t5, s7
                  and          s3, s4, t6
                  or           ra, tp, a1
                  lui          t5, 761618
                  and          gp, a3, a4
                  sltiu        s7, s4, -1436
                  slli         s10, t0, 31
                  xor          t1, ra, tp
                  c.or         s0, s1
                  c.lui        t0, 10
                  sltiu        t6, s0, 798
                  c.mv         s10, a4
                  mul          ra, s5, ra
                  slt          t4, t6, t1
                  slt          s6, a0, s5
                  mul          gp, s9, t2
                  addi         a1, s5, 1349
                  mulhsu       a0, s4, s3
                  divu         s2, a5, s10
                  c.li         s7, 24
                  c.srai       a3, 23
                  c.sub        a2, a5
                  c.srli       a0, 19
                  addi         a3, s10, 1071
                  c.addi       t3, -1
                  srai         a3, a0, 9
                  c.srai       a3, 19
                  mulhsu       t1, t0, s7
                  mulhu        s3, s11, s2
                  srl          t3, a7, s6
                  xor          a3, s3, s11
                  c.lui        s11, 30
                  auipc        s0, 548442
                  mul          s5, gp, s5
                  nop
                  sra          s0, a5, sp
                  or           s2, t4, t3
                  slli         t3, zero, 20
                  divu         ra, t1, s11
                  mulhsu       s5, s10, s7
                  srl          s8, t3, s10
                  xor          s8, s11, a1
                  sub          s0, s0, zero
                  srai         s3, t3, 11
                  c.andi       a3, -1
                  c.slli       s0, 16
                  c.srai       a1, 9
                  add          s11, a7, a1
                  sltu         s11, t4, tp
                  slt          a4, a4, s2
                  c.xor        a0, a4
                  c.srai       a2, 24
                  remu         a2, s1, s11
                  sra          s7, a6, t0
                  slt          gp, t1, t3
                  c.li         a0, 10
                  srai         s7, s4, 0
                  c.addi       ra, -1
                  divu         t6, s5, t0
                  c.add        a5, gp
                  c.lui        t1, 25
                  c.mv         s10, sp
                  c.addi       t6, -1
                  c.sub        a5, s1
                  or           a1, s3, ra
                  lui          a0, 989597
                  c.add        a2, s1
                  div          t6, s0, s2
                  slt          sp, a5, a1
                  lui          tp, 58462
                  srli         s0, s0, 22
                  xori         s0, s10, -1406
                  and          t3, t3, s0
                  c.mv         ra, t0
                  slt          s11, s9, s9
                  nop
                  auipc        s11, 434155
                  c.addi       s10, 18
                  c.srli       a1, 30
                  remu         s3, t4, t0
                  srl          t5, t3, t4
                  rem          t0, s0, a4
                  c.li         a3, -1
                  rem          t4, s7, s7
                  nop
                  c.sub        a5, s0
                  mul          t6, s1, t0
                  remu         a5, a2, a3
                  lui          t4, 159976
                  c.andi       s0, 7
                  mulhu        s4, tp, t3
                  c.li         t5, 2
                  c.addi16sp   sp, -16
                  mulhsu       ra, s6, gp
                  c.srai       a4, 17
                  c.sub        a4, a1
                  slli         s11, sp, 10
                  rem          t0, gp, t5
                  c.addi16sp   sp, 192
                  slti         s7, a3, 1101
                  c.nop
                  c.li         s2, -1
                  slt          t4, a4, t5
                  c.addi16sp   sp, 48
                  c.srli       a3, 29
                  srai         t0, a0, 13
                  c.mv         s10, a3
                  ori          s0, a6, -1293
                  lui          t3, 853246
                  srli         tp, zero, 18
                  c.sub        s0, a3
                  srai         a7, s11, 16
                  srai         a5, t5, 26
                  srai         t0, ra, 0
                  lui          s8, 20114
                  sltiu        a0, s9, 1173
                  xor          a5, s10, gp
                  c.or         a3, a5
                  c.addi4spn   a4, sp, 480
                  srl          a1, t0, t5
                  srli         s11, zero, 4
                  c.slli       a2, 21
                  c.and        s0, a1
                  sub          s8, s10, s6
                  srai         s8, a1, 30
                  mulhu        s4, s2, s6
                  c.mv         sp, t4
                  sub          s8, a2, s9
                  c.li         sp, 3
                  slt          t1, ra, s3
                  auipc        a0, 71524
                  nop
                  mulhsu       s10, a5, s7
                  slli         t1, s2, 18
                  srl          a5, t6, t3
                  c.andi       a0, 22
                  c.addi4spn   a1, sp, 640
                  srli         a5, sp, 25
                  c.xor        a5, s1
                  sll          t4, zero, s6
                  sltu         a1, gp, s1
                  add          s11, s10, s7
                  mulhu        t5, ra, gp
                  xori         s6, a1, -1686
                  auipc        ra, 891991
                  c.nop
                  sltiu        t3, t5, 302
                  slt          t3, s6, s10
                  srli         t1, t6, 8
                  c.sub        a1, a1
                  divu         a0, a6, t6
                  c.lui        a0, 21
                  c.or         a2, a4
                  sltu         s0, t1, tp
                  xori         zero, a2, 1330
                  c.addi16sp   sp, -16
                  sub          ra, s7, tp
                  lui          s11, 83270
                  c.slli       s7, 10
                  c.xor        a1, s0
                  c.andi       a5, -1
                  auipc        a4, 653796
                  c.slli       gp, 16
                  c.srai       a1, 16
                  c.addi4spn   a0, sp, 672
                  c.addi       sp, -1
                  sltiu        a7, a7, -332
                  remu         s7, t3, s3
                  c.nop
                  c.and        a4, a3
                  c.srai       a1, 25
                  mulhsu       s6, tp, s7
                  mulh         t2, t0, s9
                  addi         s0, gp, -1237
                  c.addi4spn   a1, sp, 544
                  xor          s0, t2, s5
                  xori         s0, sp, 1383
                  sltu         t3, s4, s6
                  mul          t5, a1, a5
                  and          s2, sp, s8
                  mulh         a0, s5, t5
                  c.addi       s5, 18
                  ori          a2, s0, 2016
                  addi         t2, s0, 2020
                  mul          t5, s4, t6
                  c.or         a5, a1
                  c.addi16sp   sp, -16
                  mulhsu       s6, s3, tp
                  sra          ra, t4, s7
                  and          s3, a7, s2
                  sra          t1, a4, s2
                  addi         s2, s10, -549
                  c.slli       s8, 15
                  c.addi       s3, 15
                  divu         tp, s4, t0
                  c.xor        a0, s0
                  c.li         t0, 4
                  srl          t4, s8, s2
                  xori         t6, t2, -609
                  c.lui        a3, 20
                  c.mv         s7, gp
                  c.srai       a2, 17
                  sltiu        s11, s7, -884
                  sra          t3, s7, a4
                  c.add        s5, s5
                  remu         a0, s7, s11
                  srl          a4, s9, t2
                  c.slli       a1, 7
                  mulhsu       s5, a4, a7
                  mulhu        a2, s7, a0
                  nop
                  c.addi4spn   a2, sp, 16
                  sltu         s11, a6, t4
                  nop
                  c.add        s7, s11
                  rem          s7, t1, a0
                  mulh         t0, s8, s0
                  and          t3, a5, a6
                  srl          tp, a7, s4
                  sll          a1, s0, s0
                  c.andi       a3, 11
                  andi         s3, a4, 913
                  sltiu        gp, t0, -1624
                  slti         a3, a0, -2043
                  c.sub        a5, a2
                  c.and        a4, a0
                  rem          s7, zero, s11
                  c.add        t1, s0
                  sll          a7, t5, s9
                  c.mv         a0, s8
                  add          s0, a6, t4
                  mulhu        gp, a6, s3
                  andi         t4, s6, -1139
                  c.lui        gp, 17
                  c.addi16sp   sp, -16
                  srai         a1, tp, 18
                  andi         a4, sp, -1115
                  sltiu        s6, s6, 859
                  c.li         gp, 26
                  remu         a3, s8, t4
                  slli         t3, s7, 7
                  srli         s8, s5, 14
                  sub          tp, a7, s11
                  srai         t6, t6, 14
                  add          s10, gp, a5
                  c.add        gp, t2
                  lui          a2, 555744
                  xor          tp, a0, s2
                  c.srai       a2, 28
                  c.xor        a3, a2
                  c.xor        s0, a2
                  mulhu        s3, s11, s1
                  mulhsu       gp, s6, a0
                  sltu         ra, a5, s1
                  mulh         s3, gp, s1
                  sltu         t3, s2, t1
                  slli         a3, ra, 22
                  srl          s11, a1, s8
                  srai         s5, a5, 13
                  ori          zero, t6, 242
                  c.nop
                  srai         s2, gp, 20
                  c.slli       s11, 8
                  lui          t4, 245930
                  c.lui        t2, 4
                  lui          t2, 614523
                  nop
                  mulh         s11, zero, t4
                  sll          t3, t5, s5
                  c.srai       a4, 28
                  mulhsu       t1, t6, s5
                  c.andi       a0, 15
                  srai         s11, s1, 24
                  andi         zero, s10, 1892
                  srai         s0, tp, 0
                  auipc        s4, 647813
                  c.lui        t2, 1
                  addi         a3, a1, -411
                  sltu         s11, s2, s11
                  xor          a2, sp, sp
                  addi         a4, s11, -323
                  div          s10, t6, s10
                  mul          a1, s11, s0
                  div          s6, t2, s5
                  c.slli       s2, 3
                  sltu         zero, s6, t4
                  auipc        tp, 1022812
                  c.srai       a0, 5
                  slli         s8, s11, 27
                  c.lui        a1, 4
                  c.addi       t6, 31
                  slli         t2, s8, 12
                  slli         gp, s4, 6
                  sub          a7, a3, a4
                  c.sub        a3, a5
                  div          gp, a5, a6
                  srl          s7, s6, s2
                  auipc        s3, 887433
                  mul          t1, s8, t0
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  srai         s4, sp, 22
                  addi         t6, t2, 1532
                  slli         sp, a5, 25
                  c.andi       a1, -1
                  c.srai       a0, 6
                  c.xor        a4, a2
                  xori         zero, s11, -1430
                  mul          s8, a3, tp
                  c.nop
                  sub          t6, s7, t2
                  c.slli       gp, 12
                  divu         ra, s6, tp
                  sll          t1, a1, s5
                  c.and        a2, a4
                  c.lui        s7, 1
                  auipc        t0, 762109
                  ori          s0, t6, 422
                  c.addi16sp   sp, -16
                  andi         a3, a5, 22
                  sll          s8, s8, s4
                  c.sub        a4, a0
                  c.addi       t0, 9
                  mulhu        a4, gp, s6
                  xor          s8, t4, s5
                  c.slli       a0, 3
                  remu         s0, t5, a2
                  c.addi16sp   sp, 176
                  remu         a3, s3, s11
                  srl          s10, s8, a1
                  andi         s11, s9, -456
                  c.addi       s10, 24
                  or           t5, s1, s7
                  srl          tp, sp, s2
                  sll          t6, t5, s8
                  mul          a4, s6, t0
                  rem          a5, s8, t6
                  c.sub        a0, s1
                  mul          s5, s8, s5
                  slli         a2, s11, 19
                  sltu         a0, s11, a5
                  c.sub        a5, a3
                  srl          s8, t1, s4
                  c.xor        a5, a5
                  c.or         a1, a1
                  c.nop
                  c.and        a1, s1
                  andi         a3, sp, -1509
                  sll          s11, s11, ra
                  c.mv         gp, s4
                  c.lui        s0, 15
                  c.nop
                  rem          s5, s7, s10
                  sra          a4, ra, a2
                  auipc        a3, 700154
                  c.addi16sp   sp, 352
                  c.add        a1, a2
                  c.add        t5, a3
                  mulh         t3, t2, s7
                  mulh         s3, s3, gp
                  add          s0, t5, s10
                  c.addi4spn   a1, sp, 576
                  c.sub        a4, a4
                  rem          a7, t0, sp
                  xor          a7, sp, sp
                  lui          t2, 850623
                  c.xor        a5, s0
                  c.andi       a4, -1
                  c.andi       a4, 3
                  c.srai       a4, 19
                  c.addi16sp   sp, 32
                  c.addi       t4, 26
                  srai         s11, t5, 5
                  c.add        a3, a2
                  srai         sp, a0, 28
                  andi         s5, a5, 1109
                  slti         a2, t6, 1144
                  add          s7, s4, tp
                  c.addi16sp   sp, 400
                  slli         a3, a0, 31
                  and          s7, t2, s6
                  c.mv         a2, s2
                  c.add        a4, t6
                  remu         s10, a5, sp
                  c.slli       s8, 18
                  xor          s7, a2, zero
                  sra          gp, t2, s1
                  sra          t2, a3, zero
                  c.addi4spn   a4, sp, 880
                  c.addi       s5, -1
                  rem          s6, s6, s7
                  rem          t2, s4, s7
                  addi         t3, s9, -694
                  divu         a0, ra, s7
                  c.xor        s0, a4
                  slli         s5, s1, 25
                  sra          a0, zero, a4
                  or           s7, gp, tp
                  c.andi       a5, 13
                  srl          s8, s1, s9
                  c.sub        a0, s0
                  c.sub        a0, s1
                  srai         s0, a7, 9
                  c.addi       t5, 16
                  srl          tp, s9, a5
                  divu         a5, a7, a4
                  rem          a4, t2, gp
                  c.and        a0, a4
                  nop
                  c.srai       a4, 9
                  sll          t3, s5, s5
                  c.and        a1, s0
                  srai         a5, t3, 24
                  c.srli       a4, 13
                  mul          s2, a3, t0
                  mul          s5, gp, s3
                  sra          zero, a2, s4
                  slli         s8, s3, 14
                  c.srai       a4, 1
                  div          s0, s11, s11
                  sra          gp, s8, a2
                  c.nop
                  c.add        s4, t2
                  or           a7, sp, s2
                  c.addi4spn   s0, sp, 32
                  srli         s6, s3, 5
                  mulhsu       s10, a4, ra
                  srl          t1, a1, s2
                  sltu         s5, gp, t0
                  xor          s3, zero, t4
                  mulh         s0, t6, a4
                  nop
                  nop
                  c.addi       s11, -1
                  ori          ra, t2, 1116
                  srl          a5, a2, s11
                  xori         s11, a2, -1403
                  c.addi4spn   a1, sp, 624
                  mul          a7, t1, t1
                  rem          s0, a3, s3
                  srli         t1, sp, 20
                  c.and        s0, s0
                  c.addi4spn   s0, sp, 752
                  mul          s2, t3, t5
                  slt          t1, t3, a3
                  srai         a4, ra, 15
                  nop
                  slt          t2, tp, t3
                  c.or         s0, a1
                  sltu         a3, a2, t0
                  andi         t3, s2, 756
                  and          a1, tp, t1
                  mulhsu       a2, t3, t4
                  c.and        s0, a5
                  c.addi16sp   sp, 352
                  sub          a2, s8, s6
                  rem          s4, ra, s10
                  xori         s6, gp, -901
                  sltiu        sp, t1, -1705
                  slli         gp, tp, 3
                  sra          a1, a7, zero
                  c.addi       t5, 6
                  sltu         t2, s4, zero
                  sub          gp, a4, t4
                  lui          t4, 564666
                  c.srai       a1, 11
                  slti         tp, s11, 282
                  c.slli       s10, 16
                  c.li         s11, -1
                  div          a4, t5, zero
                  nop
                  andi         sp, s7, 34
                  mulhsu       s5, s11, ra
                  addi         a3, tp, -1938
                  c.or         a2, a3
                  c.addi       a7, -1
                  nop
                  ori          a7, s3, -1068
                  c.addi4spn   a1, sp, 48
                  andi         t0, a5, -227
                  slti         a7, sp, -1231
                  c.sub        a3, a4
                  c.nop
                  mulhu        a1, s11, s5
                  lui          a3, 192348
                  srli         s10, t4, 31
                  div          s8, s1, t0
                  srli         ra, gp, 29
                  c.andi       a4, -1
                  sll          t2, t3, tp
                  sub          s10, t0, s6
                  rem          s0, a0, t2
                  ori          t5, t4, 502
                  slti         a2, t1, -1436
                  remu         a7, t0, s3
                  rem          zero, s9, a4
                  mulhu        zero, gp, t1
                  c.addi4spn   s0, sp, 112
                  mulhsu       s2, s7, ra
                  c.mv         s3, a5
                  mul          a3, ra, tp
                  or           a2, s1, t6
                  ori          t4, a3, 464
                  sra          s0, s10, a5
                  slt          s8, s3, ra
                  lui          sp, 498369
                  srl          t6, a2, ra
                  sll          s10, tp, sp
                  mulh         s5, sp, t4
                  srli         s11, t4, 6
                  sltu         s7, a2, ra
                  c.mv         gp, a6
                  rem          zero, t0, t3
                  remu         t2, sp, s0
                  c.slli       a3, 22
                  auipc        a2, 602892
                  c.lui        t3, 20
                  c.andi       a5, -1
                  c.srli       a5, 21
                  addi         sp, s3, 362
                  c.lui        s10, 1
                  slli         s3, s2, 12
                  sll          a7, t0, t5
                  remu         t4, ra, a2
                  c.sub        a5, s0
                  nop
                  xori         gp, s4, 1103
                  c.andi       a4, 26
                  xor          s5, s10, tp
                  mulh         s5, t6, a3
                  sub          t1, t1, a7
                  sra          s5, zero, gp
                  or           tp, t4, a1
                  srl          s7, zero, a5
                  c.lui        s6, 16
                  sll          t0, s6, sp
                  c.nop
                  slli         t4, s10, 21
                  srli         tp, t4, 25
                  slt          s6, s10, t3
                  c.and        a1, a3
                  nop
                  sltiu        tp, s1, -685
                  addi         t0, tp, -2037
                  c.addi       ra, -1
                  sltu         a2, a7, t2
                  c.and        a2, s0
                  sra          t2, s6, s7
                  c.addi       s11, -1
                  sra          s0, gp, a1
                  sub          tp, s4, t2
                  c.slli       ra, 28
                  srli         t4, a7, 3
                  c.mv         a2, t4
                  c.andi       a3, 11
                  div          s4, a7, t2
                  c.srli       a3, 15
                  c.li         s3, 19
                  andi         t1, a5, -480
                  sll          s10, s11, s2
                  sltu         t0, s2, a7
                  c.srli       a5, 16
                  sub          a5, t4, t0
                  c.slli       t4, 27
                  ori          s7, s9, 985
                  c.and        a4, a1
                  c.addi16sp   sp, 240
                  auipc        t1, 687463
                  xori         t2, t3, 411
                  c.srli       a3, 27
                  rem          t2, s0, s9
                  c.addi4spn   s0, sp, 784
                  mul          a5, a2, t0
                  div          a0, t3, s0
                  c.andi       a3, -1
                  xor          a5, t6, gp
                  slt          t6, ra, t5
                  lui          s5, 727755
                  c.and        s0, a2
                  and          s4, t0, a7
                  sra          s3, s4, t0
                  c.mv         s4, gp
                  c.srli       a5, 14
                  sub          s2, a4, a5
                  ori          a1, a6, -550
                  sub          s8, a3, a7
                  srl          s2, a5, s3
                  sll          gp, s2, gp
                  c.srai       a1, 14
                  sltiu        tp, a5, 863
                  and          s3, t5, s2
                  mulhu        t1, s10, s7
                  c.addi4spn   a3, sp, 272
                  sll          a3, t2, s8
                  mulhsu       s2, s0, a4
                  addi         s8, s10, 1655
                  slt          ra, s4, gp
                  c.nop
                  srli         a0, t6, 5
                  addi         s6, s5, -318
                  c.addi       a7, -1
                  nop
                  srl          s6, s9, tp
                  mulhsu       zero, a4, s6
                  c.li         ra, -1
                  c.add        s6, a2
                  c.slli       t6, 3
                  slt          a4, tp, t6
                  mulhsu       t5, s9, s4
                  sltiu        s11, t6, -835
                  c.add        s6, t6
                  c.or         s0, a5
                  divu         s2, t6, s4
                  c.srai       a1, 12
                  c.mv         a7, sp
                  srai         a3, s0, 3
                  c.addi16sp   sp, -16
                  c.li         s7, -1
                  lui          a3, 1025747
                  c.addi       a4, -1
                  c.srai       s0, 20
                  nop
                  mulh         t5, s4, gp
                  c.nop
                  c.mv         s2, a7
                  sra          s3, s5, s5
                  srli         s0, t1, 15
                  c.li         a2, -1
                  mulhu        a3, s7, t3
                  sltiu        s11, s6, 376
                  sltiu        s8, s1, -464
                  slli         s7, a1, 19
                  slti         s4, a3, -1229
                  divu         a7, a7, zero
                  c.addi4spn   a3, sp, 224
                  c.sub        a3, a5
                  srli         a3, s8, 2
                  and          gp, a4, a0
                  or           t5, s11, gp
                  sub          s11, s10, t6
                  lui          a0, 830929
                  and          s10, a6, s7
                  sra          a0, a7, a2
                  or           s10, s6, zero
                  c.nop
                  mulhsu       s11, a6, s3
                  mulhu        t3, a0, t1
                  sra          a2, a3, sp
                  xor          zero, t5, s6
                  lui          a2, 952304
                  c.addi       s3, 9
                  addi         t5, t5, 1036
                  srl          t2, s0, a2
                  slti         s5, s1, -533
                  slt          a7, zero, t4
                  mulhu        a4, tp, a1
                  div          t5, s7, t5
                  slt          t5, a3, t2
                  srl          tp, a1, a6
                  lui          s6, 521538
                  slt          t3, a7, t3
                  c.srli       a3, 26
                  srai         t4, sp, 12
                  div          a0, a1, s1
                  sltu         t0, t4, t5
                  ori          a7, t2, -659
                  sub          a7, t3, s8
                  c.sub        s0, a4
                  xor          zero, s11, zero
                  c.slli       ra, 31
                  c.addi       a0, 9
                  xor          s2, s5, t1
                  c.mv         a5, tp
                  sll          zero, s10, s6
                  c.addi16sp   sp, -16
                  and          a5, s11, zero
                  srai         s10, s10, 18
                  srli         s0, a4, 10
                  c.add        a7, s11
                  auipc        s4, 456693
                  xor          s2, t5, s2
                  mul          s0, gp, s8
                  mul          t3, gp, a5
                  srai         t4, a6, 1
                  remu         s0, gp, tp
                  c.addi16sp   sp, -16
                  mulh         t0, s7, s3
                  c.sub        a4, a0
                  ori          a0, a6, 1553
                  slli         ra, a5, 25
                  c.xor        a1, s0
                  auipc        tp, 237333
                  c.mv         s2, a1
                  xor          a5, a0, a5
                  c.nop
                  c.addi4spn   a1, sp, 496
                  srl          t2, ra, a7
                  c.addi16sp   sp, -16
                  c.xor        a5, s0
                  c.srai       a0, 21
                  nop
                  c.addi       s6, -1
                  c.addi       t2, 12
                  sltu         a5, t6, t3
                  xori         s8, s9, 1045
                  xor          t2, gp, a5
                  and          t1, t6, s4
                  sra          t6, t6, s2
                  xor          s6, s2, a2
                  c.andi       s0, -1
                  mulhu        gp, s8, s9
                  lui          a4, 973081
                  mulhsu       a3, t2, s1
                  c.srai       a5, 22
                  andi         ra, t3, -1727
                  c.srai       a5, 15
                  divu         s3, s11, s6
                  c.addi       tp, 21
                  remu         s11, t1, s10
                  slli         t6, a3, 19
                  addi         t2, ra, 303
                  mulhu        s8, s4, t2
                  sll          s10, a5, t1
                  div          s3, a3, sp
                  divu         s7, s10, a4
                  add          s6, s5, sp
                  c.and        a1, s0
                  rem          s8, t0, t5
                  slti         tp, t3, 404
                  c.mv         t0, a3
                  c.sub        a2, s0
                  nop
                  or           a7, a6, t5
                  srl          t6, t1, tp
                  srai         a1, ra, 6
                  auipc        s8, 907231
                  auipc        s3, 388394
                  c.add        t4, a6
                  sltu         gp, s2, t1
                  ori          s8, t2, 171
                  c.srai       a1, 3
                  rem          ra, s2, t6
                  auipc        gp, 223670
                  slli         a0, s3, 29
                  c.sub        a4, s1
                  addi         ra, s8, -1903
                  c.and        a4, a5
                  srl          s10, t1, gp
                  c.addi16sp   sp, 32
                  c.addi4spn   s0, sp, 416
                  rem          t4, t1, a0
                  c.or         a2, a1
                  mulhu        ra, t3, s2
                  slli         s6, tp, 19
                  c.andi       a2, -1
                  c.addi4spn   s0, sp, 704
                  remu         tp, sp, t3
                  srli         s3, s8, 19
                  mulhsu       t5, tp, s6
                  remu         s11, t4, tp
                  div          zero, t6, s7
                  xor          a7, t3, a4
                  c.or         s0, a4
                  c.lui        t1, 13
                  c.andi       a3, -1
                  c.mv         s2, s0
                  c.addi4spn   s0, sp, 576
                  nop
                  or           a1, a4, tp
                  add          s11, s6, s9
                  ori          a1, tp, -2041
                  c.addi4spn   a0, sp, 896
                  c.addi16sp   sp, 304
                  c.addi16sp   sp, -16
                  divu         a1, t6, a0
                  ori          a2, zero, -1602
                  slti         a2, a2, 1319
                  mul          s11, s3, a1
                  and          s6, a4, zero
                  xor          s11, s5, s11
                  srli         a4, a1, 24
                  xor          s3, t6, a4
                  c.addi       s6, -1
                  c.srli       a3, 10
                  divu         t4, t3, t0
                  remu         s3, s10, a4
                  andi         t6, a0, 1793
                  srli         t2, s8, 14
                  c.andi       a2, -1
                  c.addi4spn   a0, sp, 336
                  c.addi       s0, 2
                  slli         t0, t3, 27
                  c.or         a3, a5
                  sra          s6, t3, s3
                  c.or         a1, a2
                  c.andi       a2, 24
                  c.mv         s4, a1
                  mulhsu       t1, t1, s7
                  c.addi4spn   a1, sp, 976
                  xori         t4, t2, 1032
                  c.andi       s0, 4
                  and          t3, s2, t6
                  slli         a3, a7, 17
                  auipc        ra, 404348
                  mulhu        gp, s1, t3
                  c.andi       s0, -1
                  sltu         s6, s11, t1
                  c.addi4spn   a3, sp, 224
                  c.and        a5, a2
                  mulh         s11, a7, s2
                  mulhsu       s5, s5, s6
                  rem          a7, s2, sp
                  c.addi16sp   sp, 80
                  slli         ra, a7, 24
                  c.srai       a1, 13
                  sub          s7, gp, ra
                  rem          a5, a6, sp
                  c.slli       s8, 25
                  andi         t1, a1, -1920
                  div          ra, t4, s1
                  xori         t4, a7, 1159
                  srai         a7, a1, 28
                  mulhsu       s8, s2, t2
                  rem          a0, s7, t5
                  c.xor        a1, a4
                  slli         t4, s10, 10
                  ori          sp, t3, -736
                  lui          gp, 501670
                  sltiu        t5, a7, -211
                  slli         a3, a6, 16
                  c.or         a0, a5
                  remu         s6, s4, a5
                  c.addi4spn   a4, sp, 720
                  addi         s5, t0, -922
                  nop
                  rem          t0, s5, a1
                  sll          t6, t3, s4
                  c.and        a5, a0
                  c.addi       s11, -1
                  c.mv         t5, a1
                  c.li         s2, -1
                  c.lui        gp, 13
                  c.addi4spn   a1, sp, 896
                  xor          s0, tp, ra
                  divu         s5, sp, s4
                  div          t6, a5, tp
                  sltiu        t4, s1, 66
                  rem          t4, s2, a1
                  sub          ra, t5, t6
                  c.srai       a2, 11
                  add          zero, t5, s7
                  slt          s4, s10, s7
                  sub          gp, a5, s10
                  srl          s8, s4, s7
                  c.add        sp, a4
                  rem          tp, a6, a6
                  auipc        a4, 144911
                  srli         s8, t2, 25
                  c.li         t4, -1
                  sub          t4, t2, t5
                  srli         t2, a7, 1
                  ori          t4, s4, 740
                  c.addi       t1, 8
                  mul          s0, a6, t5
                  c.xor        a5, a2
                  nop
                  remu         s3, s7, t3
                  c.add        a7, s5
                  srl          t6, a1, a1
                  mulh         sp, gp, a7
                  mulh         s6, tp, s11
                  c.addi4spn   s0, sp, 176
                  sra          a7, a4, a0
                  rem          s6, s9, s10
                  slt          tp, t2, a6
                  c.nop
                  divu         s11, t5, s9
                  xori         s4, s0, 1875
                  xori         a3, s5, 354
                  mulhu        ra, tp, t2
                  c.li         s4, -1
                  addi         s0, a3, -1963
                  c.srli       s0, 16
                  andi         s8, a7, -752
                  c.xor        a5, a4
                  sltu         s11, s8, s6
                  andi         s0, t1, -2029
                  c.nop
                  srl          t4, sp, t2
                  slli         s6, gp, 27
                  sub          t1, t0, t6
                  sltu         tp, a0, zero
                  xor          s8, s2, s9
                  lui          s2, 403551
                  c.addi16sp   sp, -16
                  c.addi       s3, -1
                  c.mv         t0, t6
                  div          a1, s3, a7
                  and          zero, s11, s4
                  c.srai       a3, 13
                  slli         s2, s7, 14
                  c.andi       a5, -1
                  rem          t4, s8, sp
                  c.mv         s5, ra
                  c.srai       a0, 5
                  c.mv         gp, t4
                  divu         a5, t0, s9
                  c.addi16sp   sp, -16
                  slt          s11, sp, s11
                  slli         s11, s1, 7
                  mulh         s0, a7, t3
                  div          sp, s9, a7
                  ori          s4, ra, -1423
                  slli         s8, t4, 20
                  c.lui        s2, 20
                  c.andi       a5, 13
                  xori         s8, a7, -1139
                  srai         s4, a0, 17
                  ori          a0, sp, -1154
                  sltiu        gp, a3, 1415
                  sltu         sp, s0, t1
                  slt          t3, t0, s10
                  c.or         s0, a3
                  c.addi16sp   sp, -16
                  c.addi4spn   a5, sp, 656
                  c.lui        a0, 29
                  mulh         t4, s4, s4
                  sltiu        zero, s4, 459
                  rem          a4, s9, s6
                  ori          s5, s11, -214
                  srli         s10, t3, 7
                  sra          s5, t6, t3
                  mulh         a3, s9, t4
                  sltiu        t4, t4, 43
                  remu         s2, s3, s3
                  c.sub        a4, a5
                  c.addi       s0, -1
                  srai         a0, s8, 31
                  c.lui        s11, 10
                  sra          ra, t5, s11
                  c.and        s0, a2
                  sltu         t3, a3, t2
                  sll          s4, s3, s5
                  rem          s10, a1, s5
                  srli         a2, t3, 19
                  xori         a1, gp, -864
                  sub          tp, a4, s6
                  srli         s0, a0, 19
                  lui          s6, 793336
                  c.add        s8, s1
                  mul          t3, t4, tp
                  c.slli       s4, 6
                  c.sub        a1, a0
                  auipc        ra, 793016
                  c.slli       a3, 30
                  c.add        s5, sp
                  lui          s2, 981753
                  c.li         t3, 21
                  nop
                  sra          t3, s11, s3
                  ori          t0, zero, -1438
                  c.slli       s10, 26
                  auipc        s4, 732694
                  c.addi16sp   sp, 224
                  and          a4, t0, s10
                  auipc        sp, 745841
                  andi         a2, a1, 302
                  c.srai       a1, 3
                  mulhu        gp, s9, s1
                  c.or         a4, a0
                  sltiu        sp, s7, -1241
                  mulh         s5, t0, s4
                  c.nop
                  or           s8, s2, a0
                  c.srli       a3, 19
                  c.srli       a0, 21
                  c.addi       s8, 11
                  mulhu        s8, t0, ra
                  mul          t1, s4, gp
                  srai         gp, a5, 8
                  ori          t2, s4, -1287
                  sra          t1, a5, t5
                  slt          s8, s0, ra
                  mulhsu       s2, tp, s2
                  srli         gp, s10, 9
                  sub          s5, t1, a5
                  slti         a4, a2, 1310
                  add          s11, s10, zero
                  nop
                  lui          s6, 575014
                  sll          t6, t6, t2
                  c.srai       a0, 14
                  c.sub        a2, a4
                  mulhu        ra, s2, s7
                  slt          s11, s3, t6
                  div          s5, s8, a7
                  srli         t5, a1, 4
                  addi         a0, t2, -266
                  addi         s8, ra, 215
                  c.srli       a2, 13
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 0x1f
                  beqz x2, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15
                  .option rvc;

mmode_exception_handler:
                  addi x16, x16, -4
                  sw  x9, (x16)
                  add x9, x16, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x16, x9, zero
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x2, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x2, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x2, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x2, x18, ecall_handler
                  li x18, 0x1
                  beq x2, x18, instr_fault_handler
                  li x18, 0x5
                  beq x2, x18, load_fault_handler
                  li x18, 0x7
                  beq x2, x18, store_fault_handler
                  li x18, 0xc
                  beq x2, x18, pt_fault_handler
                  li x18, 0xd
                  beq x2, x18, pt_fault_handler
                  li x18, 0xf
                  beq x2, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

load_fault_handler:
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

store_fault_handler:
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x9, x16, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x16, x9, zero
                  lw  x9, (x16)
                  addi x16, x16, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
