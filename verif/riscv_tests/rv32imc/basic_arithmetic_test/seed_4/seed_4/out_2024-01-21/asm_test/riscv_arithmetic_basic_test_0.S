.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x22, 0x40001104
                  csrw 0x301, x22
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  li x22, 0x0
                  csrw 0x304, x22 # MIE
                  mret
init:             
                  li x0, 0x33326176
                  li x1, 0xf
                  li x3, 0x80000000
                  li x4, 0xf730670e
                  li x5, 0x7
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x2
                  li x9, 0x0
                  li x10, 0xf36653c6
                  li x11, 0x80000000
                  li x12, 0xc433ee98
                  li x13, 0xf276a304
                  li x14, 0xa
                  li x15, 0xfbfb4c77
                  li x16, 0xc
                  li x17, 0x3
                  li x18, 0x6b94ebe7
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0xf2d528e5
                  li x22, 0x0
                  li x23, 0x7e2ada0c
                  li x24, 0x58c8bbc1
                  li x25, 0x80000000
                  li x27, 0xfdb70b9b
                  li x28, 0x80000000
                  li x29, 0x2d81b05
                  li x30, 0x0
                  li x31, 0xf2eb1dc5
                  la x26, user_stack_end
main:             li           s3, 0x421a25b9 #start riscv_int_numeric_corner_stream_25
                  li           s5, 0xb74d7791
                  li           a3, 0x0
                  li           t0, 0x0
                  li           a0, 0xffffffff
                  li           s8, 0x80000000
                  li           ra, 0xffffffff
                  li           t5, 0x0
                  li           tp, 0x88f2d799
                  li           t3, 0x80000000
                  divu         tp, s5, t3
                  mulh         s3, s5, a0
                  div          s5, t5, t0
                  auipc        t3, 792856
                  auipc        t5, 921108
                  auipc        a3, 995925
                  divu         t5, t5, a0
                  lui          ra, 978018
                  mulhu        s3, ra, tp
                  auipc        t5, 779425
                  mul          s8, s3, a3
                  nop
                  addi         s3, t5, 833
                  lui          t5, 418343
                  divu         tp, a3, s3
                  mulh         tp, t5, a3
                  divu         a3, t3, s8
                  mulhu        ra, s3, tp
                  auipc        a3, 198045
                  rem          tp, s5, s3
                  rem          a3, ra, t0
                  nop
                  divu         s5, t3, t3
                  lui          s8, 453806
                  mulhu        ra, t0, s8
                  lui          s3, 85989
                  add          tp, s5, t3
                  mul          a0, s3, a3
                  rem          tp, s5, t3 #end riscv_int_numeric_corner_stream_25
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_29
                  li           s6, 0xffffffff
                  li           t6, 0x80000000
                  li           a2, 0x0
                  li           a7, 0x0
                  li           t4, 0xbd302fda
                  li           s11, 0x20ecff40
                  li           s9, 0x53d1b9a4
                  li           s7, 0xffffffff
                  li           s0, 0x2bc0302b
                  add          s0, t4, t6
                  mulhu        s0, a4, t4
                  add          a2, s6, s7
                  divu         t4, s0, s6
                  mulhu        s6, t4, s9
                  remu         a2, t4, a2
                  div          a4, s6, s9
                  mulh         a4, s11, a4
                  add          a2, s0, s11
                  rem          a4, t6, s7
                  mulh         s0, s0, s0
                  mulh         a4, t6, a7
                  addi         s6, s0, 774
                  lui          s11, 85842
                  addi         t4, s6, 839
                  nop
                  mulhu        a7, a7, a2 #end riscv_int_numeric_corner_stream_29
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s0, 0x0
                  li           a7, 0x0
                  li           ra, 0x0
                  li           t5, 0x3f19e883
                  li           s8, 0x80000000
                  li           a2, 0x80000000
                  li           s1, 0xffffffff
                  li           s3, 0x167c1119
                  li           t4, 0x0
                  rem          t5, a2, s11
                  div          a7, s8, a7
                  mul          a7, s0, t4
                  sub          t5, s1, s11
                  auipc        s11, 291530
                  mul          t5, s0, t5
                  auipc        ra, 722567
                  divu         ra, a2, t5
                  remu         a7, a7, t4
                  sub          a7, ra, a7
                  mulhu        s3, s11, t4
                  mulh         s1, s0, t4
                  remu         ra, t5, a2
                  add          t5, t5, t4
                  rem          t5, t5, s3
                  remu         t5, a2, s8
                  nop
                  lui          t5, 900208
                  mulh         t5, s1, s3
                  mulhu        ra, s3, a7
                  sub          s3, s11, s3 #end riscv_int_numeric_corner_stream_11
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s6, 0x511a4c4b
                  li           s0, 0x80000000
                  li           gp, 0x0
                  li           s5, 0x59b0d596
                  li           s3, 0xffffffff
                  li           a6, 0x80000000
                  li           a3, 0x0
                  li           ra, 0x80000000
                  li           t6, 0x0
                  sub          s5, s0, s6
                  mulh         a6, a7, a6
                  rem          t6, s3, a6
                  add          t6, s3, gp
                  lui          s6, 327653
                  mulhu        t6, a7, a7
                  nop
                  sub          s0, s3, a3
                  addi         ra, a3, 1926
                  sub          gp, gp, a6
                  nop
                  mulh         a3, s0, a6
                  add          s0, t6, s6
                  add          s0, s3, a3
                  nop
                  lui          s0, 71547
                  mul          s3, s6, a7
                  rem          t6, t6, s6
                  addi         s5, s0, 332
                  mulhsu       a7, ra, s0
                  remu         ra, a7, gp #end riscv_int_numeric_corner_stream_15
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s9, 0x9137d814
                  li           s11, 0x0
                  li           ra, 0x80000000
                  li           a3, 0x0
                  li           s7, 0x87d6a46b
                  li           t5, 0x34dc5107
                  li           gp, 0x80000000
                  li           s4, 0x0
                  li           t1, 0x73da8854
                  mulhsu       s11, s9, t1
                  mul          t1, s9, s4
                  sub          s7, t1, t2
                  mulh         s4, s9, t2
                  mulhsu       s4, s11, t2
                  remu         t5, t2, ra
                  divu         t1, a3, s4
                  mulhu        gp, t2, s4
                  nop
                  lui          s11, 61673
                  lui          gp, 688530
                  sub          t5, t1, t1
                  rem          ra, gp, a3
                  sub          ra, a3, s7
                  mulhsu       s4, gp, a3
                  auipc        t5, 347091
                  lui          s11, 9095
                  sub          ra, gp, t5
                  auipc        s7, 592755
                  mulhsu       t1, s7, s9 #end riscv_int_numeric_corner_stream_12
                  li           a6, 0xaaeecc5c #start riscv_int_numeric_corner_stream_13
                  li           a1, 0xffffffff
                  li           a5, 0x80000000
                  li           s0, 0x0
                  li           s3, 0xffffffff
                  li           t4, 0x80000000
                  li           t0, 0x0
                  li           s8, 0xffffffff
                  li           s5, 0x80000000
                  li           ra, 0xcfd3c409
                  add          a6, s5, t4
                  rem          ra, a1, s3
                  addi         a5, s8, -982
                  mul          s0, a6, t4
                  add          s8, s5, s0
                  auipc        s3, 385237
                  div          s8, t0, ra
                  sub          t4, a1, a1
                  rem          s8, s8, t4
                  mul          s0, s8, s3
                  sub          s3, t0, a1
                  div          t4, a5, s3
                  remu         a5, s3, t0
                  rem          a1, a6, a6
                  sub          t4, a5, s3
                  rem          a1, s8, s5
                  nop #end riscv_int_numeric_corner_stream_13
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           a3, 0xffffffff
                  li           t5, 0xdb312c80
                  li           s5, 0xc8f2faf6
                  li           gp, 0xffffffff
                  li           s8, 0x80000000
                  li           a6, 0xffffffff
                  li           s0, 0x80000000
                  li           s6, 0xffffffff
                  li           s7, 0xffffffff
                  div          t5, s7, s7
                  div          s5, gp, s7
                  mulhsu       ra, s6, ra
                  lui          s8, 950718
                  mulhsu       gp, s7, s6
                  add          t5, a6, s7
                  mulh         s0, s0, s6
                  add          s6, gp, a6
                  addi         a6, a6, 827
                  remu         t5, s7, t5
                  mulhsu       t5, s7, s6
                  lui          s5, 213875
                  mulhu        ra, gp, s5
                  sub          s8, a3, a6
                  sub          a6, gp, ra
                  sub          s5, s0, s7
                  mulhsu       s7, s6, ra #end riscv_int_numeric_corner_stream_23
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           t3, 0x80000000
                  li           tp, 0x80000000
                  li           a0, 0xffffffff
                  li           s9, 0x0
                  li           a7, 0x0
                  li           a2, 0x80000000
                  li           s6, 0x80000000
                  li           a4, 0x80000000
                  li           s0, 0xffffffff
                  divu         s9, s3, s9
                  add          s3, tp, s6
                  lui          s6, 1047796
                  rem          tp, s6, a2
                  lui          a0, 95672
                  divu         s9, s6, s3
                  mulhu        a2, s6, tp
                  lui          s0, 646532
                  mulhu        t3, a4, a0
                  mul          s3, s9, a7
                  auipc        s0, 590238
                  divu         a2, t3, tp
                  auipc        s9, 582593
                  mulh         s3, t3, s6
                  divu         t3, s6, a4 #end riscv_int_numeric_corner_stream_1
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           ra, 0xffffffff
                  li           a0, 0x0
                  li           s3, 0xffffffff
                  li           a4, 0x0
                  li           a6, 0x80000000
                  li           s9, 0x0
                  li           s0, 0xffffffff
                  li           s5, 0xffffffff
                  li           t4, 0x80000000
                  mul          a4, s5, a0
                  div          a4, s0, s7
                  div          a6, t4, a6
                  add          a0, s3, s7
                  add          s3, ra, a0
                  divu         a4, s9, s9
                  mulhu        s3, t4, s7
                  mulh         ra, s3, s5
                  mulhsu       ra, a4, a4
                  auipc        t4, 535626
                  auipc        a4, 547791
                  nop
                  mul          s5, a6, t4
                  mul          a4, s3, ra
                  add          t4, a6, s7
                  div          a4, s9, ra
                  nop
                  auipc        a6, 202862 #end riscv_int_numeric_corner_stream_9
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_21
                  li           t1, 0x0
                  li           t5, 0xffffffff
                  li           s9, 0xb20f24ba
                  li           gp, 0x0
                  li           a6, 0x72d680a7
                  li           a1, 0xffffffff
                  li           s6, 0x80000000
                  li           ra, 0x80000000
                  li           t3, 0xffffffff
                  remu         s6, a6, s9
                  rem          gp, a6, ra
                  sub          ra, t1, ra
                  mulh         s6, t1, s9
                  rem          a6, ra, a5
                  nop
                  mulhu        t3, gp, gp
                  auipc        a1, 618081
                  lui          a5, 512062
                  addi         s9, s9, 1555
                  mul          ra, t3, a1
                  divu         a5, gp, s6
                  nop
                  mulhsu       s6, t1, gp
                  nop #end riscv_int_numeric_corner_stream_21
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           t4, 0x80000000
                  li           t1, 0x80000000
                  li           s0, 0xe080e5b0
                  li           a3, 0x80000000
                  li           s11, 0xffffffff
                  li           s4, 0x80000000
                  li           a4, 0xffffffff
                  li           gp, 0x0
                  li           s5, 0x0
                  nop
                  mulhu        gp, s4, t4
                  auipc        s0, 906586
                  remu         s11, t1, t4
                  div          t1, s4, s4
                  remu         s11, t2, gp
                  auipc        t4, 920450
                  sub          a4, s11, s4
                  sub          a3, gp, t1
                  addi         t4, s5, 1796
                  mulhu        t4, s0, a3
                  nop
                  remu         t4, a3, s4
                  auipc        s11, 355122
                  rem          s0, s0, t1
                  mulh         t2, t4, s4
                  divu         s0, s0, s11
                  lui          t2, 497818 #end riscv_int_numeric_corner_stream_0
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           s3, 0x80000000
                  li           s9, 0x0
                  li           a6, 0x80000000
                  li           tp, 0x80000000
                  li           a1, 0x80000000
                  li           t4, 0xffffffff
                  li           s5, 0x72ae19bc
                  li           a4, 0xffffffff
                  li           s1, 0xffffffff
                  mulhsu       a4, s3, a6
                  mulh         a6, a4, s9
                  lui          a6, 755711
                  mulhsu       s1, a4, s1
                  mulhu        s3, t4, tp
                  addi         t4, tp, 739
                  remu         tp, t4, a4
                  sub          s1, s9, a6
                  mulhu        a4, s9, s5
                  mulh         s9, a6, s5
                  rem          t5, a1, t4
                  mul          s1, s1, a4
                  div          a6, s1, a4
                  mulh         a4, tp, t5
                  divu         tp, s1, a1
                  sub          s5, tp, a4
                  mulhsu       s5, t5, a1 #end riscv_int_numeric_corner_stream_30
                  li           a0, 0x4d76ecb0 #start riscv_int_numeric_corner_stream_31
                  li           s6, 0x50ee9554
                  li           ra, 0x0
                  li           s4, 0x0
                  li           a2, 0x87fb7855
                  li           tp, 0x9e9129da
                  li           t0, 0x983a39ef
                  li           gp, 0xffffffff
                  li           s0, 0x80000000
                  li           s9, 0xffffffff
                  div          s9, s9, ra
                  mulhsu       gp, s9, s6
                  addi         s0, s9, -453
                  mulhu        s4, s9, a0
                  divu         s0, s9, ra
                  mulhu        s4, tp, t0
                  mulhu        s6, ra, tp
                  sub          a0, s0, s9
                  rem          s9, gp, s6
                  add          gp, a2, a2
                  remu         a2, a0, s9
                  nop
                  divu         s4, gp, s9
                  add          s6, t0, tp
                  addi         t0, t0, -565
                  nop
                  add          s6, a0, ra
                  sub          gp, s9, s4 #end riscv_int_numeric_corner_stream_31
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s5, 0x8e8d58de
                  li           s4, 0x80000000
                  li           t0, 0x80000000
                  li           t4, 0x644ec40a
                  li           s6, 0x45800fec
                  li           s1, 0xb6a6de5f
                  li           tp, 0xd663b39a
                  li           t5, 0x0
                  li           a7, 0x80000000
                  remu         a7, s1, s4
                  sub          s1, t0, s5
                  nop
                  add          tp, s1, s6
                  rem          t5, s5, t5
                  remu         s1, t4, a7
                  mul          t5, s5, s5
                  mulh         s1, s6, ra
                  add          s6, a7, s4
                  divu         s1, s1, ra
                  mulh         t5, s6, s4
                  mulh         tp, s1, a7
                  addi         t0, s1, -1899
                  nop
                  mulh         tp, s4, s4 #end riscv_int_numeric_corner_stream_8
                  li           s0, 0xa37d71eb #start riscv_int_numeric_corner_stream_22
                  li           s8, 0x80000000
                  li           t0, 0xffffffff
                  li           a0, 0x7f965ab8
                  li           s7, 0x0
                  li           s3, 0x0
                  li           a7, 0x80000000
                  li           t1, 0x0
                  li           t4, 0x80000000
                  li           s11, 0xffffffff
                  mulhu        t4, a7, a7
                  div          a0, s0, s7
                  nop
                  add          s8, t0, a7
                  nop
                  div          t0, t1, t4
                  div          t0, s3, t1
                  sub          a7, s3, s0
                  mulhsu       s11, s0, s7
                  mulhu        t1, s3, t1
                  mulh         s7, s8, s11
                  addi         t1, s11, 1526
                  divu         s11, s3, t1
                  addi         s11, s3, -718
                  mul          t0, s8, t4
                  divu         s7, t0, a0
                  remu         t4, s3, s3
                  mulhsu       t4, s8, s7
                  remu         s7, a0, s0 #end riscv_int_numeric_corner_stream_22
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_32
                  li           a3, 0xffffffff
                  li           a5, 0x80000000
                  li           t6, 0x2985b208
                  li           t2, 0xffffffff
                  li           t3, 0x53748b21
                  li           s0, 0x80000000
                  li           a4, 0x80000000
                  li           s3, 0xffffffff
                  li           tp, 0x0
                  mulhsu       t2, a3, tp
                  lui          s5, 413371
                  mul          s0, s3, s3
                  lui          s0, 627807
                  div          t2, a4, t6
                  rem          s3, s3, t2
                  div          t6, t3, a4
                  sub          s3, a4, s3
                  div          s3, tp, tp
                  nop
                  div          s3, t6, s0
                  addi         tp, t2, -1119
                  addi         s0, t2, -1524
                  mul          t2, s3, t6
                  nop
                  auipc        s0, 92071
                  addi         tp, tp, -804
                  mulhu        s3, s3, s5
                  nop
                  add          tp, tp, tp
                  mulh         t3, tp, t2
                  mul          s0, s0, tp
                  mul          t2, s0, s3
                  remu         t3, s3, a5
                  mulhu        t2, t6, s5
                  addi         t3, a3, 1767
                  mul          s0, tp, t3 #end riscv_int_numeric_corner_stream_32
                  li           t3, 0x84310ff2 #start riscv_int_numeric_corner_stream_3
                  li           t0, 0xffffffff
                  li           t4, 0x0
                  li           gp, 0xffffffff
                  li           t6, 0xf52c923b
                  li           ra, 0x1579ef97
                  li           tp, 0xe72d690e
                  li           t5, 0xffffffff
                  li           s5, 0x80000000
                  li           t1, 0xffffffff
                  addi         s5, t1, -42
                  mul          t4, t1, ra
                  lui          t6, 328925
                  add          t1, gp, t6
                  mul          t6, s5, s5
                  mulh         t1, t6, t3
                  nop
                  sub          tp, t5, t0
                  addi         gp, t3, 680
                  mulh         t1, s5, t3
                  lui          ra, 290877
                  sub          tp, t5, t0
                  add          tp, t6, t1
                  mulhsu       t1, t5, t5
                  lui          t6, 264362
                  add          t5, tp, t3 #end riscv_int_numeric_corner_stream_3
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a5, 0x0
                  li           t3, 0xffffffff
                  li           tp, 0x0
                  li           a2, 0xa1869a60
                  li           ra, 0xffffffff
                  li           t1, 0x0
                  li           t0, 0x80000000
                  li           s6, 0xffffffff
                  li           t2, 0xffffffff
                  rem          t3, ra, a2
                  add          a0, s6, t3
                  sub          a0, a5, s6
                  mul          a5, s6, t3
                  mulh         ra, a0, s6
                  rem          t2, ra, a2
                  mulhu        t0, a0, s6
                  add          s6, a5, a2
                  auipc        a5, 234318
                  mulhsu       a0, s6, tp
                  lui          t3, 985866
                  auipc        ra, 633317
                  addi         t0, a2, 92
                  mulhsu       tp, ra, a0
                  divu         a5, a0, t2
                  nop
                  sub          s6, a0, a5
                  nop
                  rem          ra, t3, s6
                  divu         s6, t2, t0
                  sub          a5, t0, a5
                  mul          t3, a0, ra
                  div          tp, a5, t1
                  nop
                  mulh         tp, tp, ra
                  mulhu        s6, a0, s6 #end riscv_int_numeric_corner_stream_18
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           tp, 0x0
                  li           a3, 0xffffffff
                  li           a4, 0x0
                  li           a2, 0x1b3b07a6
                  li           a0, 0x80000000
                  li           t3, 0xc8a11506
                  li           ra, 0xaa635b97
                  li           t4, 0x768f3e3a
                  li           t6, 0x80000000
                  add          ra, a3, s5
                  div          t6, a0, s5
                  mulh         a3, a0, t3
                  sub          a0, t4, s5
                  rem          a2, tp, t4
                  mulhu        t6, a0, t6
                  lui          tp, 422657
                  lui          ra, 902949
                  remu         tp, a2, s5
                  addi         a3, ra, -1261
                  divu         t4, s5, a3
                  nop
                  mulhu        ra, a0, a0
                  addi         ra, t3, 1238
                  rem          a3, t6, a2
                  auipc        a4, 238981
                  div          t3, a2, a4
                  add          a4, a4, a2
                  mulhu        a3, t4, t6
                  nop
                  rem          ra, a4, t3 #end riscv_int_numeric_corner_stream_20
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s6, 0x0
                  li           ra, 0x0
                  li           a0, 0x80000000
                  li           s7, 0x2318e172
                  li           tp, 0x3e7151d4
                  li           a5, 0x0
                  li           t3, 0x80000000
                  li           t6, 0x80000000
                  li           a6, 0xffffffff
                  mulhu        t6, s7, t6
                  divu         a5, ra, s6
                  nop
                  addi         s6, s7, -935
                  add          s7, a0, tp
                  nop
                  nop
                  sub          a5, a0, t3
                  mulh         s6, s7, t3
                  auipc        ra, 611787
                  mulh         ra, tp, ra
                  mulh         a1, t6, a6
                  remu         t3, ra, a6
                  divu         a6, s7, a5
                  mulhsu       a0, s7, s7 #end riscv_int_numeric_corner_stream_10
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_37
                  li           s0, 0xffffffff
                  li           ra, 0xffffffff
                  li           tp, 0x80000000
                  li           t3, 0xffffffff
                  li           a5, 0xffffffff
                  li           s9, 0x80000000
                  li           a6, 0xbe3d19b5
                  li           t2, 0x80000000
                  li           s3, 0xbafb7585
                  addi         a6, s3, 877
                  nop
                  sub          s0, a6, s3
                  mulhu        s0, ra, t3
                  mulhsu       s3, s3, t2
                  nop
                  auipc        s9, 776306
                  div          s0, t3, t3
                  sub          a5, s0, a5
                  add          s0, t2, s3
                  div          s0, ra, s0
                  rem          a5, tp, s0
                  nop
                  div          a5, s3, s0
                  auipc        s3, 388180
                  mulh         t2, tp, s4 #end riscv_int_numeric_corner_stream_37
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           a5, 0x0
                  li           t0, 0x80000000
                  li           s5, 0x0
                  li           a4, 0x0
                  li           t2, 0x0
                  li           t3, 0xb288aff3
                  li           a7, 0x44f8f9a4
                  li           tp, 0x80000000
                  li           s11, 0x0
                  auipc        s5, 987716
                  addi         a4, a7, 797
                  div          t3, s5, a7
                  sub          a4, s5, s11
                  sub          tp, t2, a5
                  rem          s5, t0, s11
                  mul          tp, a7, t2
                  remu         t0, t0, a7
                  divu         a4, a7, t3
                  divu         t3, s11, tp
                  div          tp, tp, a4
                  auipc        s5, 847776
                  nop
                  sub          s11, tp, t3
                  auipc        t3, 269368
                  mulhu        s11, a7, t2
                  rem          a4, s11, a4
                  divu         t3, a4, s11 #end riscv_int_numeric_corner_stream_17
                  and          a5, a4, a0
                  c.li         t4, -1
                  c.nop
                  remu         t0, s5, a7
                  c.srli       a5, 23
                  sll          t0, s1, s4
                  rem          s5, t1, s7
                  c.slli       gp, 17
                  add          a1, t2, s2
                  rem          a2, a2, ra
                  or           a4, s11, s5
                  srl          a0, t5, s0
                  mul          s3, a3, a6
                  add          zero, t6, ra
                  sra          a0, s4, a1
                  and          s1, a5, t2
                  c.addi       s8, 20
                  c.mv         gp, t4
                  ori          s5, s10, -360
                  div          s5, a0, s8
                  lui          tp, 179503
                  c.sub        a5, a0
                  rem          t5, tp, t5
                  lui          s8, 140941
                  srl          t2, s1, s0
                  c.or         a0, a5
                  c.lui        t3, 2
                  auipc        t5, 661725
                  c.li         s7, 21
                  sltu         gp, s0, s8
                  c.mv         a3, a2
                  c.slli       a3, 29
                  or           s7, a6, s6
                  add          a5, t6, a5
                  sub          tp, ra, t2
                  srli         a2, s11, 6
                  sltu         t1, a1, s8
                  c.addi       s11, -1
                  divu         s6, t4, a0
                  sra          t6, gp, tp
                  remu         a0, s3, s0
                  mul          s4, tp, ra
                  sra          t2, a1, s7
                  xori         gp, gp, 594
                  c.srli       a4, 6
                  c.xor        a4, a0
                  remu         a7, t6, t3
                  or           t6, a2, s6
                  lui          a1, 806432
                  c.or         s1, a2
                  slt          t3, s1, t2
                  divu         a6, s4, s7
                  srli         a1, s7, 14
                  srl          a7, s3, s3
                  addi         s0, a4, 1795
                  addi         a5, sp, 575
                  mulhsu       s8, s3, a5
                  c.add        s0, s7
                  ori          s9, s0, 1817
                  c.mv         ra, t4
                  xor          a5, s6, a2
                  c.xor        s1, a5
                  mulh         s11, t4, t3
                  c.and        a5, a0
                  lui          a5, 26752
                  add          zero, s5, t0
                  c.sub        a1, s0
                  andi         ra, t6, 1349
                  c.and        s1, a4
                  auipc        t5, 478421
                  c.addi       t0, 18
                  or           s3, zero, s10
                  c.nop
                  andi         a0, s0, -710
                  slt          s11, zero, s2
                  xori         a2, t5, 1675
                  divu         t3, s9, a1
                  c.slli       t5, 4
                  c.add        s8, s4
                  mulhu        a4, s11, s1
                  rem          t1, t6, s5
                  srai         s6, s7, 11
                  and          a0, sp, a1
                  ori          s3, t3, -1366
                  c.sub        a1, s1
                  mul          s6, t3, sp
                  c.lui        ra, 4
                  c.lui        a5, 27
                  c.slli       t1, 31
                  sub          s6, sp, sp
                  ori          s0, a3, 1477
                  c.li         s5, -1
                  mulhsu       gp, a0, t3
                  xori         a6, a6, 1395
                  slli         t1, s11, 4
                  xor          s7, sp, tp
                  sub          s1, a6, sp
                  slti         t0, t0, 1946
                  c.slli       s1, 22
                  div          a6, s1, a1
                  sll          a0, s0, a7
                  rem          s0, a2, a2
                  c.or         s1, a1
                  ori          a0, s8, -453
                  c.andi       s1, 16
                  rem          s5, t0, t3
                  c.srli       a3, 23
                  c.add        tp, sp
                  c.and        a2, a1
                  and          a3, a0, a7
                  c.xor        a5, a0
                  c.srai       s1, 29
                  add          s6, a4, s1
                  srl          s6, a3, a2
                  sltiu        tp, s4, 1997
                  slt          t0, t1, s11
                  sltiu        s8, a2, -1709
                  c.slli       t0, 2
                  ori          a3, a3, -292
                  c.xor        a1, s0
                  c.add        a2, sp
                  c.or         a0, a3
                  nop
                  slli         s6, a7, 25
                  sll          zero, s10, s6
                  remu         s7, a5, t4
                  c.or         a1, a1
                  c.mv         t6, a2
                  sll          s0, s6, s11
                  srl          ra, ra, s1
                  c.slli       s11, 15
                  mulhsu       a7, s0, s3
                  srli         ra, a3, 24
                  divu         s11, s6, s0
                  slt          a2, t6, s11
                  c.srai       a5, 17
                  c.mv         a3, t0
                  sltu         a1, s6, s7
                  and          a0, zero, a5
                  mulh         a3, s3, tp
                  mulhsu       a5, t5, t6
                  c.nop
                  mulhu        s6, s5, t4
                  lui          t2, 451804
                  c.addi       t0, -1
                  c.addi       s8, -1
                  c.xor        s1, s0
                  mulhsu       a6, s1, s6
                  mulhu        s8, s5, a7
                  sra          s3, ra, gp
                  c.srli       a5, 6
                  add          s3, s6, t5
                  c.li         s1, 17
                  lui          t4, 10685
                  mulh         zero, zero, a0
                  mulhu        t3, t6, s6
                  auipc        t3, 789090
                  remu         gp, a5, s3
                  nop
                  c.slli       tp, 1
                  c.li         s11, 31
                  c.and        a1, a3
                  c.slli       a2, 10
                  c.srai       s0, 8
                  sll          tp, a0, t1
                  xor          t2, s9, sp
                  sra          t5, s1, t2
                  c.srai       s1, 3
                  nop
                  andi         t1, s8, -751
                  slt          a4, a6, a0
                  andi         s0, t2, -316
                  andi         a4, s3, -1742
                  mulhu        s6, a1, t4
                  slti         a7, s2, 1225
                  srl          s6, a0, sp
                  c.add        s0, s3
                  xori         s11, a6, -1100
                  nop
                  c.li         t1, -1
                  sltu         a5, a4, t1
                  c.nop
                  c.and        a2, a0
                  c.mv         s11, ra
                  c.andi       a2, 6
                  c.srai       a3, 8
                  c.or         s0, a0
                  rem          gp, a5, s10
                  slti         a7, t6, -346
                  mul          t6, a4, tp
                  c.or         a1, a2
                  sra          ra, s4, sp
                  rem          t4, tp, tp
                  c.sub        a0, a5
                  and          a6, a7, zero
                  srl          t5, t6, t0
                  slti         a5, t3, -995
                  c.srai       a4, 1
                  c.sub        a2, a1
                  c.or         a0, a2
                  c.or         s0, a0
                  auipc        s0, 12724
                  c.nop
                  c.andi       a5, -1
                  c.slli       ra, 18
                  or           t1, t0, s9
                  srai         s8, s3, 3
                  and          s4, s8, t0
                  ori          s1, a0, 1938
                  c.addi       s7, -1
                  c.andi       s1, 6
                  auipc        s11, 129894
                  rem          ra, s0, t2
                  c.li         a7, 2
                  sub          a0, s9, s8
                  auipc        a7, 615849
                  or           s8, a6, t2
                  c.li         t1, 20
                  remu         t1, s3, s10
                  addi         t6, s2, 732
                  c.mv         s4, s1
                  sra          t5, s7, t5
                  c.and        s1, s1
                  c.sub        a4, a2
                  sub          s3, s7, s8
                  mulh         s4, t5, sp
                  c.addi       a2, -1
                  sltiu        ra, s11, -1941
                  c.nop
                  xor          t4, tp, a3
                  mulhsu       a3, s1, t4
                  srai         t0, t5, 29
                  c.srai       a5, 6
                  c.li         a0, -1
                  c.xor        a4, a4
                  c.and        a2, s1
                  c.srai       a3, 25
                  sltu         t1, s3, s7
                  xori         s5, t3, -555
                  lui          s8, 549562
                  sra          s1, zero, t4
                  lui          a4, 267938
                  mul          t1, a1, a4
                  c.lui        s0, 28
                  c.xor        a5, a5
                  auipc        s7, 91307
                  mulhu        s7, s10, t6
                  rem          t3, a3, s5
                  slli         s9, t5, 3
                  sll          t2, a4, t1
                  xor          s1, s5, zero
                  sra          a1, a7, t1
                  div          s7, t4, t1
                  c.addi       gp, 10
                  sub          t3, s2, s5
                  mul          s6, a0, gp
                  c.mv         a5, s1
                  xor          s8, s0, t5
                  c.srai       s0, 31
                  slti         a0, t5, 1777
                  c.and        a4, a0
                  c.or         a3, s1
                  andi         a0, s10, 534
                  c.or         a3, s1
                  mulhu        s9, s5, a6
                  mulhsu       s4, a3, a3
                  c.nop
                  srai         a7, s11, 12
                  srai         gp, s6, 6
                  addi         gp, a2, 1601
                  nop
                  c.andi       s1, -1
                  xori         t1, a2, -1091
                  ori          t0, a6, -1408
                  and          t1, t4, s6
                  remu         ra, s9, zero
                  ori          s3, s11, 269
                  srl          s4, s6, t5
                  xor          s7, ra, s8
                  addi         t1, s8, -947
                  mulhu        zero, s0, ra
                  c.mv         s5, s0
                  mulhu        ra, a2, t5
                  c.srai       a1, 3
                  and          t4, s6, s5
                  c.srli       a1, 12
                  or           t3, a6, s2
                  sub          a3, ra, a5
                  mulhu        s4, s11, t1
                  mulhsu       s0, ra, a3
                  xori         t1, a1, 245
                  divu         s6, zero, ra
                  mulh         s0, s2, s7
                  sltu         zero, zero, s5
                  rem          t5, a3, ra
                  sll          a0, s5, a5
                  c.nop
                  c.xor        a5, a3
                  sub          t3, t2, s2
                  addi         s7, s2, -368
                  c.srai       a0, 2
                  remu         s0, t0, s10
                  c.andi       a2, 14
                  sra          gp, a6, ra
                  c.and        a2, a5
                  and          s9, a4, a6
                  c.srli       a1, 2
                  c.li         a2, 11
                  srai         ra, sp, 24
                  mulhu        a4, s5, t6
                  c.mv         gp, s0
                  slti         t2, s9, 1037
                  c.add        t5, s5
                  remu         s8, t3, t5
                  c.andi       a0, -1
                  c.xor        s0, a4
                  mulhu        s0, sp, s1
                  lui          gp, 942229
                  c.or         a5, a4
                  sltu         zero, a7, s8
                  nop
                  andi         t4, s7, -839
                  c.or         a3, a4
                  srai         a0, t3, 2
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s7, 0x0
                  li           t1, 0x69d86170
                  li           a1, 0x80000000
                  li           ra, 0x80000000
                  li           a0, 0x80000000
                  li           a7, 0x586a78ef
                  li           t5, 0x0
                  li           t2, 0x0
                  li           s3, 0xffffffff
                  divu         s3, s7, t1
                  nop
                  div          t1, t1, a7
                  rem          t2, ra, a7
                  nop
                  rem          t5, t2, a7
                  mulhu        t5, t5, a0
                  divu         t5, a7, s3
                  add          ra, s7, t5
                  auipc        a0, 193771
                  sub          a0, s7, ra
                  mul          t6, ra, ra
                  auipc        a7, 84156
                  add          a0, a0, a0
                  addi         s3, t2, -837
                  mulhsu       a7, t1, a7
                  nop
                  divu         s7, t1, a7
                  auipc        t2, 770566
                  nop
                  mul          t1, t2, s7
                  remu         ra, ra, s3
                  mul          t5, a7, a0
                  add          a7, a0, a7
                  addi         t5, t1, 1499
                  div          s7, ra, t1
                  mulhsu       t6, t5, a1
                  auipc        t5, 75563
                  add          t5, t2, t2 #end riscv_int_numeric_corner_stream_2
                  sra          a1, s1, a7
                  c.slli       t3, 3
                  addi         s4, s11, 1154
                  c.and        a2, s0
                  slt          s9, t4, t4
                  div          s7, s9, s10
                  slli         a3, s2, 18
                  mulh         s11, a2, a3
                  srl          s5, zero, t5
                  div          t2, a7, gp
                  xori         gp, a7, 702
                  sll          a5, s6, s11
                  c.addi       s6, -1
                  sll          s4, zero, t6
                  sll          s3, a0, t6
                  c.add        s4, s2
                  srai         gp, s3, 24
                  auipc        a6, 899477
                  xor          t4, t4, t0
                  sll          a1, zero, t0
                  xor          t4, t0, a6
                  mulhu        s3, s2, s7
                  srai         t0, s3, 1
                  c.and        a4, s1
                  sltiu        s0, s3, 2012
                  lui          s9, 476691
                  mulh         s3, sp, t3
                  srl          ra, a4, a4
                  c.and        a0, a4
                  srli         t1, a3, 28
                  c.slli       s11, 20
                  nop
                  c.slli       tp, 17
                  c.addi       a0, -1
                  xor          a2, a6, t4
                  c.srli       a2, 4
                  sra          t0, a4, t5
                  mulh         t4, a3, ra
                  c.srai       a5, 2
                  c.or         a2, a2
                  slti         a6, t1, 454
                  c.addi       t4, 12
                  mul          s4, t3, a5
                  c.andi       s1, 23
                  c.slli       t0, 12
                  and          s5, s8, a5
                  c.slli       s3, 18
                  sltu         zero, t2, a6
                  or           zero, a0, zero
                  addi         ra, s0, 29
                  nop
                  c.slli       s5, 4
                  c.sub        s0, a4
                  sra          a2, a5, a3
                  ori          a0, tp, -371
                  srl          s1, s6, s1
                  c.sub        a4, a1
                  xor          t1, t0, t3
                  sll          s9, s1, ra
                  divu         s4, s1, t4
                  c.nop
                  mul          a7, t6, s0
                  andi         s1, s1, -588
                  lui          s0, 751624
                  nop
                  andi         s6, s5, -709
                  c.lui        ra, 9
                  mul          ra, a6, t6
                  c.xor        a5, s1
                  c.addi       a2, -1
                  c.andi       s1, -1
                  srl          a5, s5, t3
                  addi         s1, s4, -1641
                  c.and        a0, a0
                  c.srli       a0, 22
                  c.lui        t1, 13
                  andi         ra, t1, 1254
                  c.nop
                  add          t3, t3, t6
                  sltiu        a6, a0, -1625
                  c.and        a5, s0
                  lui          tp, 921138
                  c.andi       a4, 7
                  c.slli       s5, 17
                  xori         t6, a4, 1904
                  c.andi       a4, 31
                  xori         t1, s1, 1880
                  nop
                  c.slli       a1, 14
                  sra          a2, t0, s7
                  c.sub        a5, a3
                  div          t3, a7, s6
                  ori          s1, a4, -760
                  c.add        s9, s2
                  c.and        a1, a2
                  mulh         s6, s5, a2
                  ori          a1, zero, -1077
                  c.or         s1, a0
                  c.li         a7, -1
                  slti         t2, ra, -1286
                  c.sub        s0, s0
                  c.mv         tp, t1
                  sltu         s4, a0, a6
                  sltiu        s8, a2, -403
                  and          t4, a0, t4
                  and          s0, sp, s1
                  slt          s11, s7, t2
                  sra          s5, t3, s1
                  c.nop
                  div          t6, t2, ra
                  or           s3, s0, t6
                  xori         a1, s4, -1441
                  sub          tp, s8, ra
                  c.srai       a2, 29
                  sra          t2, s1, s1
                  xori         s3, t0, 737
                  mulh         s1, a3, a4
                  andi         a4, zero, 1730
                  and          t6, gp, s1
                  c.or         a4, a1
                  sra          t6, s4, tp
                  rem          s4, t3, tp
                  srl          s3, t3, s11
                  slti         s7, a4, -1048
                  ori          s4, s7, 1212
                  c.and        s1, a5
                  c.nop
                  divu         a7, t3, t4
                  mul          a6, s2, s10
                  slt          a7, a2, zero
                  c.addi       s6, -1
                  andi         a2, s8, 1562
                  mulhsu       zero, t3, a0
                  xor          s3, a4, a3
                  slti         a3, s3, 606
                  c.and        a5, s0
                  sub          gp, s10, a4
                  slti         zero, t2, 1707
                  c.lui        a7, 14
                  c.xor        a1, a2
                  div          a0, s0, s0
                  c.mv         gp, gp
                  c.and        a4, s0
                  c.srai       a1, 31
                  mulhsu       t6, s8, t1
                  remu         s4, t3, tp
                  c.srai       s0, 4
                  sra          tp, t0, t2
                  divu         a2, s11, ra
                  mulh         t6, t0, s6
                  c.addi       a2, 13
                  and          s11, a4, a3
                  srai         a6, a5, 13
                  sub          t3, t5, s8
                  c.srai       a0, 26
                  ori          t3, a6, 685
                  c.lui        s6, 24
                  andi         t3, zero, 1105
                  lui          a2, 108364
                  c.nop
                  c.lui        s9, 2
                  c.andi       s0, 2
                  slt          gp, t3, t6
                  ori          t2, t3, 94
                  addi         s5, a5, 736
                  nop
                  sltu         t4, t1, s0
                  srai         a3, a2, 30
                  c.mv         gp, s4
                  sra          a2, s6, tp
                  mulhsu       a0, sp, a7
                  xori         t3, t4, 1584
                  andi         a5, t1, -1452
                  lui          gp, 242810
                  c.addi       tp, -1
                  c.slli       s7, 13
                  xor          s6, a2, s1
                  div          t2, s8, s8
                  remu         zero, s4, t4
                  srai         a2, sp, 28
                  c.add        a3, t6
                  mulh         s5, a6, t2
                  sub          s6, ra, ra
                  c.andi       a4, -1
                  sra          t0, s10, sp
                  sltiu        zero, s4, 1782
                  rem          t1, s8, a2
                  auipc        a4, 450975
                  rem          a5, s2, ra
                  ori          t2, t5, -1932
                  c.addi       s11, 17
                  sll          t0, s1, t2
                  c.slli       s11, 25
                  divu         t6, a2, s5
                  ori          s8, t0, 721
                  addi         s4, s2, 135
                  xori         a6, s3, -1900
                  div          s5, s6, gp
                  sll          gp, s3, s11
                  sub          tp, zero, ra
                  divu         a3, a4, s4
                  xori         zero, s11, 2019
                  sub          a7, s5, t4
                  div          zero, t3, t6
                  lui          t0, 727084
                  sltu         t6, s11, s0
                  c.srai       a1, 5
                  sra          t3, tp, a4
                  c.mv         t6, t3
                  sltiu        ra, s1, -812
                  mul          a6, t0, a6
                  c.nop
                  sltu         a6, gp, a5
                  or           s8, t3, ra
                  divu         gp, t0, a0
                  mulhu        t2, s7, t6
                  c.or         s1, a0
                  c.add        a0, tp
                  c.andi       s1, 4
                  c.srli       a2, 31
                  sll          a1, s11, t3
                  ori          s11, a0, -1179
                  c.add        s6, a3
                  mulhsu       gp, a2, t3
                  c.xor        a0, a4
                  lui          s7, 1000265
                  lui          a0, 820309
                  c.andi       a2, 6
                  sltiu        a6, t5, -1444
                  c.lui        s11, 31
                  xor          t4, a7, zero
                  sra          s0, s9, a0
                  mulh         s9, s5, s5
                  c.or         a1, a3
                  c.slli       s0, 14
                  slti         a5, a1, -796
                  sltiu        t5, t5, -1533
                  sra          a1, t5, t3
                  or           a6, ra, s7
                  c.add        s6, a5
                  lui          t3, 155890
                  mulh         t4, a1, a1
                  c.srai       a1, 12
                  addi         t1, a7, -454
                  srai         s1, t2, 22
                  slli         s5, s0, 6
                  slti         ra, t0, -551
                  c.add        s8, s2
                  divu         s9, s1, t4
                  c.sub        a0, a0
                  sub          a6, a7, tp
                  xori         ra, s1, 816
                  addi         t3, zero, 1225
                  mulh         a0, s9, s2
                  remu         a1, gp, t2
                  slt          gp, t1, zero
                  auipc        t5, 627911
                  srli         s8, a1, 29
                  c.lui        s3, 26
                  c.add        a6, s5
                  slt          zero, s11, a5
                  sll          t5, s8, t3
                  c.or         a3, a1
                  lui          a5, 921785
                  div          a5, s0, a4
                  divu         a2, s4, s7
                  mulh         s8, sp, sp
                  c.addi       ra, -1
                  slt          t5, s4, a7
                  ori          a4, a4, 1130
                  div          s3, t4, s1
                  xor          t0, s8, t3
                  sll          t3, t5, zero
                  c.add        s1, s9
                  remu         s7, ra, a3
                  ori          a4, gp, 1712
                  addi         t2, t2, -472
                  remu         a0, ra, s3
                  c.sub        a3, a3
                  slli         a4, t5, 24
                  c.srai       a5, 3
                  c.nop
                  mul          t2, s10, s5
                  mulh         a0, t5, ra
                  srl          zero, zero, a5
                  add          zero, s5, t4
                  ori          t0, s2, 93
                  c.slli       tp, 20
                  slli         t1, s5, 13
                  slli         s6, a7, 22
                  srl          t4, s11, tp
                  slli         a3, t2, 11
                  mulhsu       s1, s1, gp
                  ori          s11, a4, -1822
                  c.li         s6, -1
                  mulhsu       s6, gp, t1
                  sra          a7, s4, s6
                  sra          s4, a5, a7
                  c.li         a6, 12
                  xori         a4, a5, -169
                  srai         s4, s9, 20
                  rem          s3, ra, zero
                  slli         s5, s1, 23
                  or           gp, a0, t6
                  slt          s5, tp, s4
                  or           s11, s4, a4
                  mulhu        a3, a6, gp
                  slti         a1, s5, -1866
                  slli         gp, s11, 14
                  c.xor        a2, a1
                  lui          t3, 356616
                  c.srli       a0, 6
                  sll          a0, s1, sp
                  slt          a6, a1, s11
                  c.lui        t2, 23
                  div          t5, t5, zero
                  andi         a3, t1, -1677
                  sra          t3, t4, s0
                  mulh         s3, tp, t0
                  auipc        a7, 926178
                  c.andi       a1, 23
                  rem          a4, a2, a4
                  slli         a1, s1, 16
                  div          s1, s5, s11
                  sltiu        s6, zero, 203
                  remu         zero, t3, s11
                  mulh         s11, t0, a1
                  sltu         a4, sp, a3
                  srl          t6, s5, s7
                  c.slli       t0, 8
                  nop
                  sltu         t6, s0, s1
                  lui          ra, 10582
                  c.slli       s5, 1
                  c.lui        s4, 3
                  c.xor        a1, a3
                  c.srli       s1, 16
                  c.lui        t2, 20
                  mulh         s5, t2, a1
                  c.slli       s8, 15
                  sll          a4, t1, sp
                  mulh         t2, s2, s1
                  mulh         zero, a5, t3
                  c.addi       t4, 27
                  c.and        a2, a2
                  auipc        a0, 852073
                  c.add        s11, s8
                  xor          a3, a4, t1
                  c.addi       a0, 10
                  sll          gp, s9, s4
                  sll          t1, tp, gp
                  c.add        a6, a5
                  c.li         s1, -1
                  c.nop
                  andi         a6, s11, 725
                  sub          ra, s11, a0
                  sltiu        t1, tp, 1180
                  c.srai       a3, 27
                  ori          a2, a4, 1772
                  addi         t3, t0, -600
                  andi         t2, s0, -1362
                  rem          zero, s4, t6
                  c.xor        s0, a1
                  c.add        a6, a1
                  c.slli       a6, 7
                  c.slli       s9, 24
                  ori          a6, s8, -755
                  c.addi       s4, -1
                  andi         a0, t4, -865
                  divu         s8, zero, s1
                  sll          t3, s9, a0
                  sub          t1, a2, s9
                  divu         a6, s10, zero
                  sra          t5, a1, a1
                  srai         s1, a2, 25
                  slli         tp, a7, 9
                  xor          t1, s4, a7
                  slti         a7, s4, 1113
                  c.and        a4, a4
                  mulhsu       a3, s4, t6
                  sra          ra, t3, s8
                  c.li         s11, 27
                  lui          t0, 532726
                  sltiu        t5, a3, 1073
                  sltu         s1, a6, a3
                  andi         a0, zero, -1694
                  li           s7, 0x741b5ae8 #start riscv_int_numeric_corner_stream_6
                  li           s0, 0xe0bc4001
                  li           t6, 0xde0cab67
                  li           s6, 0x700b563
                  li           s11, 0x80000000
                  li           a0, 0xf7defd45
                  li           t3, 0xfadf68ad
                  li           s5, 0x80000000
                  li           a5, 0xe5d6ecd
                  li           s4, 0x80000000
                  mulh         s5, s6, s11
                  nop
                  divu         s5, s5, s4
                  divu         s0, s7, s5
                  add          s6, a5, s11
                  div          s5, s11, s6
                  add          s0, s5, t6
                  mulhu        a5, t6, s7
                  sub          a0, s6, a0
                  divu         a0, s0, s7
                  auipc        a0, 867648
                  addi         t3, a0, 756
                  mulhsu       s6, s0, s6
                  rem          s6, s7, t6
                  auipc        a0, 189707
                  rem          s6, s11, s11
                  divu         s5, a5, s11
                  mul          s4, a0, t6
                  rem          t3, a0, s5
                  nop
                  lui          s6, 896614
                  divu         s0, s5, s6
                  div          a0, s0, a5
                  div          s4, s0, a5
                  div          t3, a5, s0 #end riscv_int_numeric_corner_stream_6
                  c.lui        a6, 24
                  divu         s7, s1, a7
                  c.addi       t4, -1
                  srl          t4, t6, a2
                  and          a6, s6, sp
                  and          a5, s4, gp
                  srl          s3, a5, a2
                  lui          a3, 677301
                  srl          t3, gp, s2
                  c.srli       s1, 16
                  sltiu        s3, a1, -92
                  lui          ra, 24813
                  and          t5, a7, t0
                  srli         ra, t5, 12
                  divu         s0, s3, s5
                  remu         a0, s3, s6
                  sltu         t4, a1, a1
                  mulh         ra, a7, t0
                  c.addi       gp, -1
                  c.slli       a0, 26
                  add          s4, sp, gp
                  srli         a2, a7, 6
                  divu         a4, s9, a3
                  sub          zero, s11, s10
                  nop
                  rem          a2, s2, s9
                  c.srli       a5, 3
                  c.nop
                  slt          tp, t3, s8
                  c.srli       s0, 22
                  xori         t5, s7, -557
                  c.xor        a1, s1
                  andi         a5, t3, -1698
                  or           t2, t6, t2
                  c.mv         s9, tp
                  c.and        s1, a4
                  addi         t5, a7, -563
                  and          ra, a3, s7
                  xor          a2, s1, s7
                  ori          s1, a0, -1950
                  nop
                  ori          s7, t5, 1378
                  c.xor        a4, a1
                  slli         a5, t5, 3
                  mulh         s3, a0, s0
                  srai         a6, s1, 4
                  slti         gp, s1, -164
                  c.nop
                  nop
                  slti         a3, s8, 1113
                  c.sub        a4, a4
                  div          s7, s0, t1
                  c.srli       a1, 15
                  srl          s4, a0, a5
                  c.li         t4, 4
                  srli         zero, s10, 23
                  sub          s3, t0, a5
                  slt          s4, s1, s10
                  ori          t6, a7, -1361
                  c.nop
                  c.slli       s7, 4
                  srai         s7, a2, 13
                  andi         t6, s5, 910
                  mulhsu       s8, a2, t4
                  sra          s9, a3, t4
                  c.or         a1, s1
                  slt          t5, zero, t4
                  sub          s5, a4, t1
                  sub          s5, zero, zero
                  and          a3, t1, gp
                  ori          gp, zero, 847
                  div          tp, s0, s10
                  slti         t0, a6, -820
                  slli         t0, t2, 12
                  slt          s8, t6, s0
                  c.nop
                  c.add        t1, tp
                  and          a0, t0, a1
                  srl          s6, ra, a3
                  mul          t6, a7, s11
                  sra          t5, s2, gp
                  sll          s6, zero, s6
                  auipc        a5, 836939
                  and          t4, a2, s1
                  sra          a0, s4, t1
                  sll          gp, s10, t3
                  and          s11, t2, zero
                  rem          t3, s6, a1
                  srli         ra, t0, 6
                  divu         a1, s9, a6
                  mulhu        s4, s11, a2
                  slt          t5, t5, a4
                  mulh         ra, a3, a4
                  mulhsu       t1, t3, sp
                  ori          s6, s0, -1457
                  lui          s5, 560626
                  c.sub        a0, s0
                  or           a7, s9, t2
                  c.srli       a3, 25
                  lui          a5, 767706
                  sll          t1, a7, a6
                  mulhsu       t1, a6, zero
                  addi         t1, a4, 547
                  c.or         a2, s1
                  srli         a1, a5, 22
                  div          a7, s6, sp
                  c.or         a4, a5
                  c.addi       t5, 5
                  xori         t0, s7, 1047
                  mulh         s5, gp, s2
                  mulhsu       a4, t4, t2
                  c.nop
                  sra          s4, t0, t0
                  nop
                  divu         s11, s3, s1
                  c.and        a4, s1
                  rem          s3, a2, s5
                  xori         a6, s10, 1415
                  c.add        tp, s10
                  remu         t2, s6, sp
                  c.addi       a7, -1
                  slt          a0, ra, s6
                  c.slli       t3, 23
                  nop
                  lui          s5, 260752
                  xori         t1, t6, -1587
                  srli         zero, s1, 6
                  div          t3, s1, t4
                  div          zero, a6, ra
                  c.srai       s1, 2
                  div          a1, s2, t3
                  c.lui        a1, 14
                  sub          a6, s6, s5
                  mulhsu       s11, t0, s4
                  sltu         t5, s4, t0
                  sub          s5, t4, s1
                  c.srli       s0, 22
                  sltiu        a0, s9, -1190
                  c.or         a1, a1
                  c.and        a2, a2
                  rem          t1, a0, a1
                  c.srli       a0, 14
                  sltu         s6, t6, s11
                  div          t4, a3, s2
                  sltiu        a2, s5, -960
                  lui          a0, 628285
                  or           s4, t2, s2
                  c.srli       a1, 12
                  ori          a0, a7, -1722
                  andi         t1, a2, -213
                  and          t6, s11, tp
                  sub          t6, t3, s2
                  srli         t1, a2, 4
                  c.li         a5, -1
                  srai         s7, a0, 14
                  c.li         a1, -1
                  c.or         a0, a2
                  c.or         a3, s1
                  c.or         a0, a0
                  xor          a5, zero, s1
                  mulhu        s1, tp, s9
                  mulhu        a6, a3, a0
                  remu         s3, s4, s1
                  andi         zero, s8, 1137
                  or           t6, s1, tp
                  lui          a6, 416012
                  c.xor        a3, a3
                  c.and        s0, a2
                  mulhu        a0, s7, a3
                  c.sub        a4, a0
                  sll          ra, ra, sp
                  add          s3, a0, s10
                  mul          a0, s7, s11
                  sll          a3, s11, gp
                  srl          a4, s9, t5
                  sub          a0, a3, t5
                  c.mv         a4, s5
                  c.srai       a5, 3
                  c.and        a4, a4
                  and          ra, s7, s6
                  sll          t6, s2, tp
                  addi         t0, s4, -982
                  nop
                  slti         s1, a2, -926
                  sltiu        a2, a7, 1357
                  divu         s5, s11, s10
                  mulhsu       s5, s5, s5
                  slt          gp, s7, ra
                  or           tp, a1, s10
                  and          tp, gp, a2
                  li           a1, 0x449cc333 #start riscv_int_numeric_corner_stream_35
                  li           gp, 0x80000000
                  li           t4, 0x0
                  li           s1, 0x0
                  li           s4, 0x0
                  li           s8, 0x80000000
                  li           s5, 0x37b38a1f
                  li           s7, 0x80000000
                  li           s6, 0x0
                  li           s9, 0x10ff9d5c
                  div          s8, s8, s6
                  divu         a1, s7, a1
                  sub          s9, s1, s9
                  div          gp, t4, s8
                  mulh         s8, a1, t4
                  nop
                  add          s1, s9, s7
                  remu         s8, s6, s5
                  mulhsu       s8, gp, gp
                  div          s8, t4, s7
                  remu         a1, s8, s9
                  rem          s8, s1, a1
                  nop
                  divu         t4, s7, s9
                  auipc        s5, 846541
                  add          s5, s8, s8
                  nop
                  div          gp, gp, gp
                  sub          a1, s8, s6
                  nop #end riscv_int_numeric_corner_stream_35
                  srli         s8, s2, 16
                  mul          a5, a5, t2
                  sub          a3, s4, s2
                  sltu         zero, s0, a2
                  c.or         a0, a5
                  auipc        t4, 1012001
                  slli         t1, t3, 30
                  srli         t0, s1, 9
                  nop
                  c.xor        a3, a1
                  addi         t5, t5, 26
                  c.or         s0, s0
                  sltu         a1, a2, a5
                  div          t5, s8, t1
                  srl          zero, t5, a6
                  xor          t1, s5, tp
                  sltu         a1, t3, s2
                  auipc        s6, 63642
                  div          a5, zero, t4
                  xor          a2, a1, s1
                  srl          s11, a2, a1
                  sltu         t6, t5, s7
                  c.lui        t1, 20
                  nop
                  ori          gp, gp, 170
                  sra          a4, t6, a2
                  sltiu        s5, a1, -1100
                  or           a6, s10, t0
                  mulhsu       a0, a5, s0
                  xori         s9, ra, 1038
                  c.andi       a5, 3
                  auipc        s4, 200795
                  mulh         a2, a0, t5
                  c.andi       a3, 26
                  sll          t6, tp, a5
                  nop
                  div          t1, s0, tp
                  nop
                  c.lui        t2, 21
                  nop
                  sltiu        s5, s1, -537
                  c.slli       s7, 22
                  andi         t1, s0, -1989
                  andi         t3, t1, -617
                  c.andi       s1, -1
                  or           a3, a5, t6
                  nop
                  c.or         s1, a2
                  andi         tp, s6, 114
                  nop
                  srl          s8, s8, s7
                  srli         ra, s7, 24
                  srl          t2, s0, gp
                  srl          ra, a7, a5
                  c.xor        a3, a4
                  nop
                  xori         a2, tp, 1269
                  c.nop
                  c.add        a1, s6
                  mulh         gp, s5, s10
                  c.srli       s1, 9
                  sltiu        zero, ra, -1887
                  div          gp, s11, s5
                  xori         zero, t3, 1620
                  slli         a0, s3, 7
                  nop
                  lui          t4, 497530
                  or           s8, s6, s6
                  nop
                  slt          s0, zero, s8
                  andi         a5, a5, -78
                  andi         gp, a2, -246
                  ori          s7, gp, 1817
                  remu         a7, s3, t6
                  srai         a2, s4, 3
                  addi         s11, s4, -1484
                  c.lui        t3, 4
                  srli         s11, s5, 31
                  c.andi       a4, -1
                  c.or         a5, a2
                  c.and        a2, a3
                  c.addi       t1, 28
                  c.mv         s11, t5
                  sltu         a4, a7, a0
                  mulhu        s6, t5, s2
                  auipc        s11, 860193
                  remu         t1, s4, a4
                  c.and        s1, a4
                  sra          s8, a0, t5
                  slli         a0, t5, 17
                  mulhu        a2, s8, a2
                  slti         a0, s8, 691
                  ori          s3, s2, -1184
                  srai         zero, s6, 10
                  srli         a1, s0, 17
                  rem          t4, s2, s8
                  slli         t2, s3, 2
                  sll          a1, s6, a5
                  c.addi       s5, 10
                  divu         t6, t2, s11
                  srai         s6, t0, 13
                  c.li         a5, 31
                  c.xor        a1, s0
                  c.add        t3, a1
                  c.slli       a6, 4
                  sub          a2, t2, tp
                  c.sub        a3, s0
                  c.li         t0, 11
                  xor          s11, s3, s2
                  auipc        a0, 172969
                  lui          t2, 854526
                  slt          a5, zero, s1
                  sltu         a1, s1, s11
                  c.add        ra, gp
                  c.srai       a5, 4
                  c.xor        s0, a5
                  sll          a4, s2, t5
                  mulh         a7, s1, a0
                  xori         a4, s2, 1726
                  srl          t4, t1, a1
                  c.srai       s1, 17
                  mulhu        a6, t4, s0
                  nop
                  lui          t1, 157585
                  slt          t3, a3, a5
                  andi         s3, t0, -748
                  sltiu        t2, a3, -970
                  sll          s6, tp, s3
                  srli         s1, t5, 15
                  c.add        a2, s6
                  c.andi       a5, 28
                  sra          s7, s10, t0
                  srl          s7, s9, s4
                  srli         s7, s1, 29
                  divu         s7, t0, a4
                  c.xor        s1, s0
                  nop
                  srl          ra, s4, t2
                  srl          a4, t3, a5
                  srai         t3, t1, 5
                  c.or         a3, a2
                  c.li         a4, -1
                  xori         t0, s3, 419
                  c.and        a2, a3
                  slti         t5, a5, 414
                  c.andi       a1, 2
                  remu         zero, s10, s6
                  mulh         s6, s4, a3
                  sll          t1, a0, a5
                  or           t2, t3, s3
                  sltiu        a0, a6, 1858
                  c.or         a0, a4
                  andi         t2, a5, 576
                  remu         s5, t3, a5
                  add          s3, s2, s5
                  sub          a0, s4, a2
                  srl          s3, a7, a2
                  c.andi       a3, -1
                  srai         s6, s1, 7
                  lui          a3, 73811
                  add          s7, s11, s5
                  c.nop
                  div          t3, tp, t2
                  slli         t3, a0, 23
                  xor          gp, s2, zero
                  ori          zero, t0, -1891
                  slti         gp, s10, -1686
                  ori          a0, tp, 306
                  addi         a4, gp, -246
                  remu         a2, s5, s0
                  sltiu        a6, s6, 1018
                  c.addi       t5, -1
                  mulh         a3, a7, a1
                  c.lui        a0, 30
                  slti         a6, a5, -533
                  xori         a6, t4, 321
                  andi         a2, s2, -1580
                  sltu         t3, a5, s6
                  slli         a2, tp, 24
                  ori          t3, s11, -1488
                  slt          a5, tp, s0
                  c.sub        a4, a0
                  c.li         s4, 29
                  remu         s7, s4, s5
                  c.srli       a0, 22
                  div          s1, tp, t0
                  or           a3, s10, a0
                  c.mv         a3, s7
                  xori         s11, s6, 1576
                  c.nop
                  and          s5, a7, tp
                  sub          a7, s3, t2
                  divu         t4, s6, tp
                  remu         t4, t0, t3
                  nop
                  slti         s6, a0, -922
                  c.addi       s7, -1
                  and          s6, s3, t5
                  c.slli       tp, 13
                  c.sub        a0, a0
                  and          a3, s2, t1
                  xori         ra, tp, 1200
                  c.or         a5, a5
                  remu         s3, gp, s1
                  c.or         a5, a2
                  sub          s1, t1, a3
                  sub          a1, a6, a0
                  slti         s6, s5, 970
                  c.lui        a7, 27
                  c.or         a4, s0
                  divu         ra, a3, t1
                  c.sub        a5, a3
                  c.nop
                  mulhu        tp, sp, t5
                  c.srai       a3, 18
                  andi         s4, s0, -614
                  slti         a1, a5, -1553
                  c.srli       a5, 3
                  c.add        t3, tp
                  c.mv         t3, s11
                  slt          s5, s1, s4
                  c.or         a2, s0
                  div          a0, s8, t0
                  sll          s8, s5, t1
                  lui          tp, 293971
                  mul          s9, a6, s2
                  ori          tp, s11, -1585
                  c.addi       ra, -1
                  c.srli       a0, 28
                  c.li         a0, -1
                  divu         s11, s7, a1
                  div          t0, s10, a6
                  or           a1, a3, s11
                  srai         t3, s5, 19
                  c.srli       a0, 13
                  lui          s6, 727986
                  auipc        t2, 449267
                  c.or         a5, s0
                  lui          s3, 840738
                  mul          s7, sp, a0
                  c.nop
                  xori         t0, s8, -1592
                  srli         s6, zero, 17
                  c.li         a1, 17
                  divu         a0, a6, tp
                  slti         gp, a4, 1944
                  c.srai       s0, 19
                  xori         gp, s3, -1381
                  c.andi       s0, -1
                  mulhsu       s8, t4, gp
                  slt          t6, t2, t6
                  srli         s8, s0, 29
                  c.and        s0, a1
                  sltu         t5, a4, a7
                  slti         a3, s5, 1113
                  srli         a6, gp, 27
                  sub          gp, s10, s8
                  c.xor        a0, a4
                  c.lui        s8, 26
                  or           s11, gp, t0
                  c.xor        a5, a4
                  c.or         a2, a3
                  c.lui        a4, 29
                  div          s5, s2, s3
                  mul          s8, s11, s7
                  c.xor        a3, a3
                  c.sub        s0, a2
                  lui          s3, 137248
                  c.and        a3, s0
                  rem          tp, tp, s6
                  c.xor        s0, a5
                  sltu         zero, s2, s4
                  ori          a4, s1, -298
                  slli         s5, s2, 20
                  c.addi       t3, -1
                  c.slli       s9, 6
                  divu         a1, a3, a3
                  mul          s6, s8, tp
                  mulhsu       a7, s4, s3
                  rem          a0, a4, s10
                  mulh         zero, a0, s0
                  slt          s1, ra, a1
                  c.srli       a0, 26
                  slt          ra, t5, s8
                  srli         t4, s0, 13
                  divu         a1, ra, a7
                  slli         tp, t0, 4
                  c.li         s1, 12
                  mul          a7, a5, s9
                  slt          s6, s1, zero
                  rem          ra, t4, gp
                  mulh         a0, t5, s1
                  andi         t1, ra, -2002
                  slt          a4, a0, s7
                  addi         t3, t4, 1524
                  c.and        a1, a3
                  c.xor        s0, a3
                  sltiu        a5, s3, 1343
                  and          zero, a1, s9
                  c.sub        a4, a0
                  c.slli       gp, 25
                  c.sub        a0, a0
                  c.sub        s0, a1
                  div          a4, s5, s2
                  slli         s3, s2, 17
                  c.lui        t6, 30
                  c.nop
                  sltu         a7, a4, a2
                  c.sub        s0, a1
                  xori         zero, t0, -1245
                  srai         tp, t2, 1
                  sra          gp, s7, zero
                  div          t0, t1, tp
                  slt          t6, s7, a5
                  c.xor        a1, a4
                  c.slli       a3, 4
                  sra          s1, t6, a2
                  xori         s11, t3, -1910
                  mul          t6, t2, a4
                  div          zero, t1, a5
                  slti         s1, a7, 1449
                  sltu         a0, s10, s8
                  divu         s1, t4, ra
                  sub          zero, a0, a4
                  sll          s3, a5, t0
                  srli         s6, s1, 21
                  srli         s3, s10, 5
                  c.addi       s6, 5
                  c.or         a1, a2
                  c.nop
                  c.addi       a3, 30
                  mulhu        a7, a4, s11
                  rem          s3, gp, a4
                  div          t3, a7, s3
                  c.mv         gp, s5
                  or           gp, zero, s8
                  mulhu        s5, a4, s7
                  div          zero, s2, a4
                  or           a4, gp, t6
                  c.sub        a3, a0
                  lui          s5, 834605
                  c.add        t1, tp
                  or           s4, s8, s5
                  div          t4, s1, t5
                  xor          s7, a3, t0
                  add          a0, s5, t1
                  c.sub        a3, s0
                  c.addi       s5, -1
                  c.and        s0, s0
                  remu         a5, t3, t5
                  div          t2, a3, t2
                  auipc        s0, 173261
                  add          t4, s8, tp
                  srli         ra, a0, 13
                  add          a4, s10, t5
                  and          s8, a6, a3
                  mul          t5, s4, a5
                  lui          a5, 540404
                  divu         t5, t1, zero
                  xor          gp, t6, a2
                  c.sub        s1, a0
                  nop
                  slti         tp, s11, 1444
                  mulh         s3, s3, a3
                  mulh         s9, s1, t4
                  c.slli       s3, 3
                  addi         t5, s8, -1738
                  c.li         a3, 15
                  ori          s3, a1, 1683
                  sltu         gp, a2, s7
                  mul          a5, t3, t4
                  and          a4, a2, t5
                  sltu         s5, s8, a4
                  c.li         a2, 11
                  add          gp, a2, t0
                  mulhsu       t1, s5, s6
                  slt          a7, s11, s7
                  sra          s3, s1, a7
                  slt          s4, s1, t3
                  c.li         a0, -1
                  c.add        a4, gp
                  slti         a4, a1, -1052
                  xor          a0, t3, s8
                  sltu         a6, t4, a4
                  c.sub        a4, a4
                  slli         ra, s9, 12
                  ori          t6, t1, -899
                  addi         s4, t0, -1142
                  srai         a6, a5, 6
                  c.addi       a6, 8
                  c.andi       a0, -1
                  c.and        a4, s1
                  or           a2, sp, a3
                  ori          s8, s0, 1137
                  and          s7, sp, a6
                  slli         t1, s11, 0
                  nop
                  c.mv         a3, s11
                  mulhsu       s4, zero, s6
                  lui          t4, 416511
                  sra          s8, s2, a3
                  add          s3, s8, s8
                  lui          t5, 522670
                  srai         s7, s7, 5
                  rem          a2, s6, s1
                  sltiu        a1, s4, -732
                  sra          t5, a0, a6
                  sra          tp, gp, t2
                  c.andi       a4, 30
                  addi         a4, s2, -500
                  sll          s9, zero, a2
                  div          t5, sp, s10
                  c.srai       a5, 25
                  sub          t3, t4, t5
                  or           a3, s7, s9
                  c.lui        a5, 22
                  c.addi       ra, -1
                  c.srli       a1, 7
                  mulh         s1, t2, s8
                  addi         t3, a6, -721
                  c.addi       a1, -1
                  c.nop
                  c.or         a2, a5
                  xor          a2, s11, a7
                  or           s1, a3, s7
                  mulhu        s0, s8, s2
                  or           t2, tp, s6
                  c.slli       s11, 31
                  slli         s9, t3, 28
                  c.li         a2, -1
                  divu         s8, a4, gp
                  slt          a7, s5, t0
                  lui          s6, 568320
                  ori          t2, ra, 671
                  c.or         a3, a4
                  c.xor        a1, s1
                  c.nop
                  c.srli       s0, 29
                  add          a4, ra, zero
                  srl          t6, s4, sp
                  sltu         zero, a2, s6
                  divu         a2, a2, ra
                  c.mv         a5, t4
                  sltu         a7, t0, s2
                  c.or         a1, a4
                  and          gp, s3, a1
                  rem          a7, s4, s7
                  c.addi       s8, -1
                  div          t1, s10, ra
                  c.slli       t2, 28
                  sra          t2, s8, a0
                  c.srli       a3, 30
                  c.srai       s0, 13
                  add          a0, s0, sp
                  mulh         a7, a3, s7
                  c.lui        gp, 4
                  xor          a5, a1, t3
                  slti         t5, t4, 412
                  c.srli       a2, 22
                  slti         a2, a7, 374
                  c.li         s1, -1
                  mul          t1, t2, sp
                  mulh         a3, t3, gp
                  c.mv         s9, s8
                  c.or         a2, a5
                  remu         s3, s6, a4
                  xor          gp, s7, a2
                  mul          t1, t6, a4
                  c.sub        s1, a1
                  rem          a5, ra, t3
                  sltiu        t6, s8, -1966
                  c.add        t6, sp
                  c.slli       tp, 13
                  c.and        a5, a3
                  rem          s0, t6, s2
                  c.srai       a1, 16
                  c.li         a3, -1
                  c.lui        a1, 11
                  srli         a5, a6, 0
                  mul          zero, sp, sp
                  xori         t4, s7, 1495
                  sub          s6, a4, s7
                  and          tp, s2, a5
                  c.mv         a3, a7
                  or           s0, s3, s10
                  nop
                  xori         t5, a5, -1163
                  slt          a6, ra, s7
                  mulhsu       a7, tp, a7
                  slti         t0, a6, 2046
                  c.mv         s1, a7
                  c.sub        s1, a5
                  and          gp, t3, s1
                  divu         s9, t5, a6
                  xor          s11, t4, a1
                  srl          t4, gp, sp
                  c.lui        t5, 28
                  mulh         s6, s0, s9
                  mulhsu       a7, s0, s6
                  and          a0, a2, s10
                  mul          a7, t4, gp
                  slti         a7, t3, -1755
                  divu         s1, sp, a7
                  xor          t5, t6, s6
                  addi         s5, s6, 1845
                  sltiu        a2, s8, -109
                  mulh         s5, a2, a7
                  c.slli       a1, 1
                  and          t4, a5, tp
                  remu         s9, sp, t4
                  c.andi       a0, 18
                  div          a7, a2, s4
                  divu         t4, a6, gp
                  xori         a4, s3, -1132
                  and          t5, a0, a7
                  divu         t4, a2, s8
                  c.slli       s3, 25
                  srli         ra, s8, 5
                  xor          s4, t0, tp
                  mulhsu       s8, a4, t3
                  mulhsu       a2, a7, s4
                  add          a6, a4, a4
                  ori          a3, a4, 1458
                  sra          s7, a1, s7
                  srli         tp, zero, 3
                  mul          s6, s6, t0
                  sltu         a5, t3, a5
                  mul          t0, zero, a5
                  mul          t3, s6, ra
                  srai         s7, a0, 1
                  xor          a3, t2, s0
                  slt          ra, s1, t1
                  rem          s11, s8, s2
                  or           s5, t3, sp
                  c.srai       a4, 31
                  srli         a0, s8, 28
                  srai         a3, a5, 17
                  remu         s6, s4, a7
                  slli         t4, s10, 25
                  mul          t1, tp, t6
                  sltu         a3, s9, s8
                  srl          t3, a7, s0
                  c.addi       a0, -1
                  slt          t6, s1, s3
                  auipc        a2, 742758
                  sra          a1, t2, sp
                  slti         a1, s4, 735
                  mulhsu       t2, a0, a5
                  remu         a6, t4, zero
                  div          ra, t3, a5
                  srli         a7, t1, 26
                  c.add        tp, t6
                  c.srai       s0, 3
                  c.li         s0, 14
                  sltu         a6, s4, s0
                  add          s6, a1, a2
                  sub          s11, sp, a1
                  sltiu        a2, s5, -2015
                  mulh         t4, ra, t4
                  c.mv         a4, s10
                  xor          tp, s2, s5
                  div          zero, a2, t0
                  c.addi       s0, 9
                  c.or         a1, a2
                  srli         s0, s5, 15
                  sll          t5, s11, t0
                  c.addi       s3, 24
                  mulh         zero, t1, s0
                  c.lui        ra, 16
                  srli         gp, t2, 13
                  c.sub        a3, a5
                  c.addi       a1, -1
                  sub          a0, sp, t5
                  c.and        a0, a2
                  sltiu        s11, gp, 1827
                  slt          a0, s10, s5
                  c.srai       a4, 27
                  slti         t3, sp, -1151
                  slti         a6, t3, 80
                  c.lui        a0, 22
                  slli         a5, gp, 12
                  divu         s0, t5, a1
                  nop
                  c.or         a3, a0
                  c.srli       a3, 10
                  c.nop
                  mul          a4, s5, gp
                  add          s6, t3, t2
                  sll          s11, t3, t1
                  div          a5, s1, sp
                  sltu         s3, s9, s4
                  c.li         t4, 3
                  xori         s0, s3, -416
                  rem          t3, s2, s5
                  sltu         t1, s5, t4
                  c.sub        s0, s1
                  srli         s4, t4, 5
                  mulhsu       a2, sp, tp
                  c.and        a2, a2
                  c.or         a5, a5
                  slti         t1, s3, 1520
                  c.andi       a5, 27
                  srai         a1, a4, 0
                  addi         s6, t4, -747
                  slli         a5, sp, 2
                  rem          t4, s8, s8
                  srl          gp, s6, a4
                  c.slli       t0, 28
                  c.sub        a2, a3
                  c.slli       t3, 3
                  remu         t5, s3, a6
                  srl          a5, gp, s8
                  srai         s3, s5, 5
                  c.or         a1, a1
                  or           s9, s6, s9
                  c.mv         a4, s11
                  c.mv         s8, s0
                  c.lui        a7, 12
                  srli         s3, a7, 21
                  c.and        s1, a4
                  c.sub        a5, s1
                  mulh         s7, t3, s2
                  c.and        s0, a4
                  andi         s11, a2, -2019
                  slli         s8, a7, 28
                  slti         a2, a6, 1348
                  sll          a6, sp, s8
                  c.srai       a1, 23
                  c.srli       a0, 24
                  c.srli       a3, 22
                  c.mv         a6, a6
                  slt          t3, s2, s11
                  andi         s11, a7, 234
                  slt          a3, ra, t4
                  srai         t0, t3, 19
                  ori          zero, t3, 1650
                  c.andi       a0, -1
                  add          t3, s3, ra
                  srl          s5, s10, t4
                  divu         s8, s9, ra
                  xori         s5, ra, 67
                  add          s1, s11, sp
                  or           s11, t4, sp
                  mulhu        s7, t4, s4
                  or           s1, a7, sp
                  andi         t4, t6, 954
                  c.mv         a6, t5
                  c.mv         tp, s1
                  c.add        s11, s4
                  and          s9, a7, a6
                  c.srai       s0, 17
                  slt          s11, zero, s4
                  sub          tp, s1, a7
                  or           t1, a2, s10
                  addi         s1, t2, 184
                  sub          t0, t3, s10
                  c.li         t5, 6
                  slti         s4, a3, 1170
                  xori         t5, s7, -1837
                  c.mv         t1, s7
                  c.sub        a3, a3
                  c.or         a4, a4
                  lui          s8, 593407
                  slt          s1, s8, zero
                  rem          s4, s0, s10
                  xori         t1, t0, -231
                  c.srai       s0, 30
                  c.slli       t1, 1
                  lui          a6, 753398
                  srai         a7, a2, 25
                  mul          a0, t2, s9
                  mulhsu       s5, t0, a2
                  c.sub        a4, a2
                  c.or         s1, s1
                  mulhu        s4, t4, s9
                  addi         s5, s0, 629
                  xor          a6, s11, tp
                  mulh         ra, sp, s8
                  c.add        a7, s9
                  xori         a4, a7, 1397
                  ori          t0, t5, -1098
                  auipc        s1, 906244
                  srai         zero, sp, 30
                  lui          tp, 32687
                  div          s6, s9, zero
                  c.mv         t1, a2
                  xori         a6, t5, 550
                  or           zero, a7, a5
                  mulhsu       t1, s6, t4
                  add          zero, a4, sp
                  rem          s0, gp, a4
                  c.lui        a2, 19
                  div          s3, s5, s3
                  c.or         s1, a4
                  div          gp, ra, t3
                  add          t1, s11, s11
                  c.lui        gp, 1
                  sra          gp, s1, s9
                  c.andi       s0, -1
                  sltu         t4, t2, s4
                  remu         s11, zero, s8
                  c.srli       a2, 6
                  sltu         s9, t4, tp
                  andi         t1, s8, -237
                  srai         t2, sp, 21
                  mulh         s8, s7, s3
                  c.addi       s5, -1
                  or           a0, a0, a0
                  c.lui        gp, 19
                  andi         s11, t2, -959
                  c.andi       s1, -1
                  xori         t1, s10, 1839
                  srl          ra, s0, a5
                  ori          s8, a7, 36
                  mul          s4, s7, s4
                  andi         a1, t0, -1152
                  c.lui        a6, 14
                  c.srli       a3, 1
                  div          gp, s7, a6
                  c.lui        s0, 21
                  xori         a3, s9, 707
                  add          a6, a2, t5
                  c.and        a3, a5
                  and          t6, t4, a1
                  auipc        a3, 303101
                  xori         a0, s10, -129
                  c.nop
                  mul          zero, s4, t2
                  auipc        t6, 895501
                  srai         a6, s7, 27
                  sltu         s4, a1, t0
                  c.srai       a4, 9
                  c.and        a0, s0
                  addi         s11, t6, 392
                  add          t3, a3, s7
                  c.srai       a1, 25
                  mulhu        s6, s5, t4
                  sra          a3, s4, a7
                  mulhu        s8, gp, a5
                  xor          s1, t5, s3
                  srai         s6, sp, 18
                  c.srli       a0, 2
                  c.and        a2, s1
                  c.lui        tp, 16
                  nop
                  srl          s11, ra, s0
                  c.add        a6, t3
                  c.sub        a1, a5
                  sltu         a0, tp, s2
                  c.add        ra, t4
                  c.srai       a3, 11
                  remu         zero, s0, ra
                  sra          a7, s1, a2
                  c.xor        a5, a4
                  c.xor        s0, a5
                  sra          s0, a6, a0
                  slti         s8, a5, 396
                  mulh         t3, zero, a0
                  c.lui        a4, 30
                  slt          s3, s10, a1
                  lui          a2, 303648
                  divu         a1, tp, tp
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           a4, 0x0
                  li           ra, 0x80000000
                  li           t1, 0x88eec449
                  li           s3, 0xffffffff
                  li           s7, 0x80000000
                  li           tp, 0x80000000
                  li           a2, 0x0
                  li           a0, 0xeeeb4674
                  li           t3, 0xefd71083
                  div          a2, a0, t4
                  mulhu        a4, a2, a0
                  nop
                  add          s3, a0, tp
                  remu         ra, t3, ra
                  mulhsu       t4, s7, s3
                  mul          s7, s7, tp
                  sub          s7, a2, s7
                  lui          t3, 382440
                  rem          t3, a0, s3
                  nop
                  lui          ra, 183863
                  nop
                  add          ra, a4, a2
                  div          a4, t4, s7
                  addi         a2, t4, 1203
                  lui          a0, 573841
                  mulh         t4, s3, a2
                  auipc        tp, 949587
                  addi         t4, s7, -1982
                  mulhsu       a4, t1, s7
                  lui          a4, 505428
                  add          a2, tp, t3
                  rem          tp, a2, a0 #end riscv_int_numeric_corner_stream_7
                  add          ra, a7, s4
                  c.nop
                  ori          s4, t0, -724
                  nop
                  c.andi       a0, -1
                  c.nop
                  c.slli       a0, 20
                  sltiu        a3, ra, 1345
                  rem          a4, t2, a4
                  c.sub        a3, a5
                  c.slli       a5, 23
                  and          s0, s10, t2
                  sltu         t3, s7, a6
                  sra          a4, gp, a7
                  c.srli       a1, 24
                  c.addi       a6, -1
                  c.nop
                  srl          t1, s7, s4
                  c.andi       a3, -1
                  c.andi       a3, 1
                  c.lui        a3, 26
                  add          s7, gp, ra
                  or           a6, s5, s4
                  lui          gp, 81234
                  slt          s1, a3, a1
                  mulhu        t1, s7, s5
                  sltu         s8, gp, a3
                  div          t2, a5, a4
                  slti         t3, tp, -269
                  c.srai       a3, 2
                  or           a4, s8, s4
                  lui          a0, 469266
                  divu         a0, sp, s10
                  c.nop
                  addi         zero, tp, 163
                  sra          s4, a3, t5
                  c.li         s0, 12
                  addi         a6, zero, -434
                  remu         a1, t4, sp
                  srai         a6, tp, 13
                  and          t6, s4, s3
                  add          s5, t3, t6
                  lui          a1, 924825
                  mulhu        t6, a2, s10
                  divu         a3, a7, a7
                  xor          a5, t0, a4
                  c.srai       a1, 1
                  c.and        a1, s0
                  auipc        s8, 763192
                  rem          zero, t3, s6
                  sltiu        s6, s11, -1650
                  and          a0, t4, s5
                  xori         a4, s1, -12
                  c.lui        t2, 18
                  auipc        t1, 511348
                  andi         t6, ra, 1125
                  xor          s5, a3, s4
                  mulhsu       ra, t2, t0
                  xori         zero, t0, 344
                  ori          zero, s11, -1988
                  c.lui        gp, 27
                  rem          t2, s11, s11
                  c.andi       s0, 2
                  xor          t5, s6, a5
                  lui          a5, 242663
                  c.lui        a4, 5
                  sll          zero, s10, s8
                  div          s5, a6, ra
                  or           a3, s10, a6
                  c.addi       t2, 17
                  sll          zero, s9, gp
                  addi         s8, s11, -1090
                  divu         t1, t6, s8
                  nop
                  c.lui        a4, 11
                  sub          zero, a0, t5
                  add          gp, t6, t4
                  c.add        a7, a3
                  slli         s0, s0, 4
                  slt          s0, t1, a4
                  c.add        s11, a6
                  add          a3, t3, s11
                  c.xor        a5, a0
                  addi         t1, a7, 505
                  auipc        t5, 412992
                  rem          t1, s7, t6
                  c.srai       s0, 12
                  c.sub        a3, a5
                  mul          a0, a6, s9
                  ori          ra, s7, 1872
                  c.and        a5, a5
                  mulhu        t0, s5, s1
                  mul          s3, t0, s0
                  mulh         a0, a3, a4
                  c.lui        t6, 30
                  srli         t1, s1, 0
                  slli         gp, s7, 19
                  mulhu        t5, a5, sp
                  addi         a0, sp, -1725
                  lui          a1, 479820
                  mulhsu       a5, s11, t4
                  c.srli       a2, 24
                  c.lui        s5, 7
                  auipc        ra, 966224
                  c.xor        a0, s0
                  remu         a7, tp, t5
                  rem          s3, a7, a4
                  ori          tp, s1, 1378
                  c.srli       s0, 18
                  auipc        s0, 645908
                  c.andi       a2, -1
                  add          a5, t2, a4
                  rem          a3, s2, a1
                  srl          s7, s3, t1
                  c.add        a7, tp
                  add          a5, a4, ra
                  rem          s5, s1, t4
                  c.sub        a0, a1
                  c.addi       a0, 17
                  rem          s11, s0, t0
                  sltu         s0, tp, t3
                  srl          s11, s2, a2
                  and          a0, t5, a5
                  or           t2, t2, t6
                  c.slli       t0, 3
                  slt          t3, s0, tp
                  c.xor        s1, s1
                  sra          a1, s9, a1
                  c.and        a5, s1
                  add          zero, s3, a6
                  xori         ra, a4, -1706
                  addi         s6, t3, -855
                  sub          s9, s0, s0
                  div          s4, s8, s9
                  srli         t4, t2, 28
                  srl          a2, s2, s8
                  c.li         s3, 19
                  c.mv         t2, tp
                  sra          t3, t0, s0
                  c.nop
                  c.or         a1, s1
                  slt          a4, s11, s6
                  c.lui        s7, 22
                  mul          a5, s8, s1
                  c.or         a3, a4
                  sltu         t3, t3, t4
                  mulhu        s1, tp, s2
                  add          a3, t4, t0
                  c.mv         s0, a5
                  mul          t6, s7, zero
                  srli         s11, tp, 12
                  slti         s7, s5, -1153
                  c.add        gp, s0
                  c.and        a3, a2
                  c.or         a0, a4
                  xori         ra, s5, 368
                  mul          gp, t4, a5
                  nop
                  srai         s7, s4, 25
                  andi         s4, s1, 830
                  srl          gp, tp, s10
                  c.sub        a1, a1
                  or           s11, t5, a2
                  c.lui        s1, 19
                  auipc        t4, 88357
                  nop
                  c.nop
                  sll          ra, t6, t2
                  lui          s9, 652968
                  add          t0, a2, a6
                  andi         a0, a2, 1277
                  c.andi       s0, 19
                  c.sub        s1, s1
                  srl          s3, ra, t4
                  c.addi       a1, -1
                  lui          a2, 447937
                  xor          a7, ra, s11
                  c.add        t6, t6
                  c.add        a4, s0
                  c.slli       a0, 1
                  c.and        a3, a4
                  c.addi       a3, -1
                  c.xor        a4, a3
                  c.srai       s0, 1
                  c.mv         s0, s2
                  sra          a4, a3, t4
                  div          t2, s1, a2
                  c.andi       a2, -1
                  mulhu        t0, s0, a3
                  andi         t5, s1, 1375
                  c.addi       gp, -1
                  rem          s6, t6, s1
                  slli         t2, s3, 19
                  auipc        t1, 879350
                  andi         a5, a6, 1532
                  slli         ra, s11, 4
                  srli         tp, t6, 13
                  slli         a6, t4, 15
                  andi         tp, t6, -584
                  mul          t5, s8, t6
                  div          t3, s10, t3
                  c.addi       a1, 16
                  c.srli       s0, 22
                  sra          gp, a7, t4
                  mulhu        t0, t3, t1
                  sra          t2, a7, zero
                  ori          a2, s5, -782
                  sltu         s3, s4, a0
                  and          t3, zero, s8
                  divu         t3, s2, s10
                  c.slli       s11, 11
                  sra          tp, t1, s10
                  ori          t5, a0, 463
                  remu         a2, t3, t5
                  add          s5, s8, t5
                  remu         s4, s7, a2
                  c.sub        a3, a4
                  c.or         a1, a1
                  xor          a5, s5, s6
                  srai         s6, t0, 15
                  c.slli       t5, 5
                  addi         a3, t0, -1394
                  slt          s1, a1, t6
                  xor          t4, a1, a6
                  sra          s4, s8, s1
                  c.srli       a2, 28
                  c.mv         a5, s7
                  srai         a2, a4, 31
                  c.or         s0, a4
                  c.lui        s6, 13
                  c.xor        a3, s1
                  and          s11, a7, gp
                  c.nop
                  slt          s4, t4, a1
                  mulhu        t5, s1, s6
                  mulhu        s3, s5, s8
                  add          s5, s10, s10
                  sltiu        s7, gp, 1988
                  mulhsu       s5, s8, zero
                  nop
                  div          tp, a6, s4
                  slli         s0, s7, 0
                  auipc        a0, 848579
                  c.mv         t0, ra
                  mulhu        ra, t4, s1
                  xor          s11, s1, zero
                  addi         t3, s4, -1238
                  div          a6, a6, s7
                  slt          zero, s7, a5
                  c.andi       a2, 18
                  slli         t4, a5, 2
                  rem          gp, t2, s4
                  c.andi       a3, -1
                  auipc        gp, 114699
                  c.srli       a2, 9
                  sra          t4, a6, tp
                  addi         s6, s9, -1911
                  mulh         t1, gp, a3
                  srli         t6, t1, 8
                  c.srai       a2, 6
                  c.or         a2, s0
                  xor          s11, s0, s7
                  sra          t1, t2, a5
                  c.or         s1, a1
                  srli         t0, a3, 20
                  sub          zero, s1, t6
                  mulhsu       s1, s3, s1
                  sltiu        a0, t4, 1702
                  slti         zero, s8, 998
                  c.mv         t4, t5
                  sub          s4, t4, a5
                  add          a1, zero, s7
                  mulh         t2, a7, t6
                  c.slli       a2, 29
                  sub          s5, t3, s6
                  c.nop
                  c.xor        s0, a2
                  sra          s6, t6, s11
                  c.srai       a1, 30
                  c.sub        a0, a1
                  srli         a2, t5, 13
                  or           s9, s2, s10
                  c.add        t1, s0
                  mul          gp, sp, s7
                  xor          a3, a4, t4
                  remu         tp, a6, tp
                  c.and        a2, a2
                  slli         s6, ra, 1
                  c.lui        t4, 6
                  divu         a7, t6, gp
                  c.lui        s11, 31
                  ori          a3, t2, 1085
                  xori         a5, s7, 428
                  sltiu        a7, a5, 1250
                  sll          tp, zero, zero
                  mul          t6, s1, s11
                  mulh         ra, a5, sp
                  mulhu        a2, t1, s3
                  rem          a2, a0, t0
                  c.addi       s3, -1
                  c.and        s1, a4
                  c.addi       tp, -1
                  lui          t2, 661896
                  c.addi       s7, -1
                  andi         t1, t2, -1237
                  c.srli       a5, 18
                  c.and        a0, s0
                  remu         s3, t0, a2
                  sltu         a0, t5, a1
                  c.add        s5, s0
                  c.sub        a3, a5
                  sra          t4, a5, s6
                  or           s5, t3, a2
                  ori          s3, s9, -1177
                  c.srai       s1, 17
                  xor          s8, a3, s11
                  sltu         a0, s2, a6
                  mulhu        t2, s10, s4
                  c.xor        a0, a1
                  div          a1, t4, t4
                  c.or         a4, a1
                  and          a3, a0, s7
                  sltu         ra, a5, s3
                  xor          t5, s11, t4
                  lui          s1, 604523
                  sra          s4, gp, a3
                  mul          t5, ra, t1
                  slti         s4, a5, 1387
                  c.and        s1, a1
                  c.nop
                  slti         t0, s9, -913
                  c.xor        a1, s1
                  srai         t5, s6, 16
                  slt          t4, t1, s2
                  remu         s6, a7, zero
                  addi         t2, s5, 783
                  auipc        t0, 192137
                  sltiu        s3, a0, 304
                  c.srli       a0, 26
                  c.srli       a4, 5
                  and          a1, a2, s7
                  c.srai       a0, 5
                  c.add        a5, t5
                  c.srai       a4, 18
                  xor          zero, t3, t4
                  mulh         a3, a2, a2
                  c.srli       a2, 17
                  and          a5, s5, gp
                  andi         t3, sp, 1631
                  slti         t3, s0, 1167
                  rem          s9, s5, s5
                  slli         a6, t1, 19
                  c.and        s0, s0
                  mulhsu       t2, t6, s8
                  c.add        s1, a2
                  remu         a2, a4, s0
                  nop
                  mulhsu       a5, a7, a5
                  remu         a0, s4, t6
                  c.srai       a4, 1
                  c.or         a3, a1
                  mulh         s4, a1, ra
                  c.sub        a5, s1
                  srl          a3, s4, a5
                  divu         s0, s3, s9
                  mulhu        a4, s11, a4
                  mulhsu       ra, s0, sp
                  slti         s8, t4, 759
                  c.andi       s0, -1
                  c.add        t3, s2
                  slli         s0, a5, 12
                  c.addi       t3, 27
                  ori          a0, t1, -1861
                  addi         a2, s4, -26
                  c.andi       a2, 18
                  rem          a3, a1, a4
                  sltu         s4, s4, s4
                  sltiu        a0, s10, -289
                  divu         a5, s6, s8
                  c.li         t1, 0
                  c.srli       a4, 28
                  c.sub        a1, a1
                  xor          s7, s4, a0
                  ori          gp, zero, -1070
                  sltiu        t6, s9, 955
                  ori          a4, s5, 1296
                  c.or         a5, a0
                  c.slli       t6, 13
                  add          t3, zero, s11
                  mul          s4, s5, t0
                  and          a3, s5, t5
                  c.slli       s3, 13
                  c.andi       a5, 20
                  c.lui        s11, 17
                  c.or         a2, a0
                  mulhu        s5, s3, s9
                  c.mv         s1, s2
                  remu         t2, s3, s9
                  sltiu        a6, a3, -1590
                  sub          s4, t4, a0
                  mul          a5, s6, a0
                  c.add        s5, a5
                  remu         a0, a4, s7
                  c.sub        a5, s0
                  sltiu        s9, t0, -1852
                  c.or         a3, s0
                  mulhu        s1, a1, s7
                  sra          t2, t6, a4
                  c.slli       a5, 1
                  c.and        a5, a1
                  c.addi       s8, -1
                  c.and        s1, a1
                  nop
                  c.andi       s0, -1
                  c.mv         gp, t3
                  slt          s6, s9, a0
                  slti         a4, s1, 1797
                  c.andi       a0, -1
                  c.nop
                  xor          a0, t3, s7
                  sub          a5, s1, a0
                  slli         ra, s9, 31
                  c.andi       a1, 10
                  c.sub        a3, a3
                  srli         t5, a2, 26
                  andi         a3, zero, -1333
                  mul          t2, a0, s3
                  c.lui        s9, 30
                  c.lui        a1, 2
                  sra          a3, zero, t6
                  srai         t1, a0, 19
                  srli         a0, a3, 9
                  sra          s0, s9, s6
                  slli         s5, a1, 1
                  c.or         a1, a2
                  nop
                  mulh         a5, a7, s5
                  c.slli       a7, 5
                  slt          t2, s2, t0
                  c.nop
                  xor          s8, t6, t6
                  div          a0, t5, a7
                  c.and        a3, s1
                  remu         s8, s7, t0
                  lui          ra, 924595
                  auipc        s4, 456499
                  slli         s8, a0, 31
                  mulhsu       s8, s6, a0
                  mulh         ra, ra, s9
                  xori         a3, t0, -1337
                  or           a5, tp, s5
                  div          a2, s9, t2
                  xor          t1, sp, s10
                  sll          t0, s9, sp
                  c.mv         tp, s5
                  ori          s7, a6, -223
                  mulhu        ra, s4, t3
                  lui          s6, 410560
                  sub          s11, a5, t3
                  sltiu        s11, s4, -1605
                  slli         a2, t1, 26
                  c.lui        a2, 15
                  c.or         a5, a2
                  c.andi       a1, -1
                  xori         a5, s11, 772
                  c.srli       a4, 23
                  add          t5, zero, gp
                  divu         t4, s0, s3
                  rem          a0, s0, t1
                  sra          s5, tp, t6
                  slli         s3, a1, 30
                  c.nop
                  divu         s5, s6, s11
                  sltu         t0, s8, t0
                  c.add        gp, a7
                  sltu         s1, s6, zero
                  c.xor        a5, a0
                  sltiu        s3, t0, -1822
                  mulh         a3, sp, s7
                  c.mv         a1, s3
                  lui          t1, 732431
                  mulhu        s0, s6, s11
                  xor          s8, s2, a1
                  c.srli       a1, 16
                  slt          a7, s10, s5
                  sltu         a5, t1, sp
                  sra          a0, ra, ra
                  xori         s11, a4, -1151
                  slli         a0, sp, 23
                  c.xor        a5, a0
                  srli         a6, s10, 22
                  c.li         s6, -1
                  mul          a7, s1, tp
                  c.addi       t2, -1
                  mulhsu       ra, s1, s8
                  addi         t3, t3, -611
                  c.slli       a5, 8
                  c.and        a5, a1
                  sll          s6, t5, t6
                  c.addi       gp, 2
                  divu         t1, s5, a2
                  srai         s3, s0, 20
                  c.add        a0, s5
                  slt          t6, s7, s5
                  sra          t6, t6, a5
                  c.mv         gp, a5
                  div          ra, sp, a4
                  sltu         t5, a4, t3
                  ori          a7, s7, 1298
                  andi         a5, zero, 1207
                  sra          s8, a6, a1
                  c.sub        a1, s0
                  c.nop
                  srai         a1, s1, 24
                  mul          s6, t3, sp
                  c.mv         t3, ra
                  remu         t1, s3, s9
                  c.nop
                  sltiu        s7, t1, 1132
                  sltiu        s6, s4, -709
                  c.add        a2, s8
                  mulh         a2, s9, a2
                  c.or         a1, a4
                  srai         zero, s1, 25
                  c.srai       a4, 18
                  xori         t3, a1, -1463
                  xor          a2, zero, t3
                  srli         s8, s6, 8
                  mulh         a6, a2, t3
                  xori         s8, s7, 1571
                  slti         a3, gp, -26
                  slt          s1, a5, a6
                  andi         s4, s0, 694
                  lui          a2, 900229
                  andi         s11, s3, -1785
                  c.and        a3, a5
                  c.xor        a1, a5
                  srl          t5, s2, s0
                  c.srai       a2, 7
                  div          s5, s5, a2
                  rem          gp, zero, t1
                  divu         s0, s10, a6
                  sra          a6, a5, s8
                  mul          a1, t1, t3
                  slt          t1, zero, s8
                  srl          t5, s4, s6
                  mulhsu       s8, a6, a1
                  mulh         s3, t4, gp
                  c.xor        a5, a4
                  c.and        a5, s0
                  auipc        t0, 948955
                  sltu         s0, a7, a5
                  srli         t1, s11, 21
                  c.addi       t6, -1
                  c.or         a0, a4
                  c.add        gp, a4
                  auipc        ra, 182570
                  sra          a5, tp, t4
                  div          t0, a0, s0
                  or           t3, t5, s2
                  c.nop
                  addi         a5, t1, -486
                  div          a2, tp, t4
                  c.srai       a3, 6
                  c.srli       a0, 17
                  add          s1, s9, a4
                  and          a4, sp, a7
                  srl          s5, s3, s3
                  addi         t6, s2, -1863
                  nop
                  andi         s6, s3, -26
                  slti         s1, s6, 1699
                  sub          s6, s7, s2
                  c.srai       a4, 26
                  xori         t4, a5, -1286
                  mul          s8, t3, s5
                  slli         zero, s2, 5
                  c.lui        a0, 18
                  and          t2, a2, t1
                  srli         a3, t6, 23
                  c.srai       s1, 21
                  c.xor        a1, a5
                  c.xor        a4, a4
                  sltiu        zero, t6, 898
                  add          t6, s7, zero
                  auipc        a6, 213368
                  lui          s1, 700114
                  mulhu        a2, a0, tp
                  srl          a7, s4, t2
                  c.add        s3, s9
                  lui          t3, 182696
                  remu         t3, ra, s5
                  divu         s7, s11, a1
                  c.nop
                  mulhsu       a4, a7, t3
                  mulhu        s6, t2, t4
                  c.nop
                  divu         t4, s7, s10
                  srli         s9, a3, 1
                  lui          t1, 1044222
                  mulhu        t0, t5, s0
                  c.sub        a5, s1
                  add          a7, a4, a3
                  addi         s7, s1, -1596
                  c.nop
                  c.srai       a3, 27
                  sll          a0, t6, a2
                  addi         a1, s0, -1104
                  remu         s1, zero, t3
                  c.slli       a0, 4
                  c.srli       a0, 14
                  c.li         s1, -1
                  div          s9, s9, s10
                  c.srli       a1, 12
                  sub          a1, s5, t0
                  c.slli       a6, 20
                  sub          s11, a3, a1
                  sll          a0, zero, ra
                  srl          s7, s0, t0
                  c.and        a5, a1
                  srli         zero, t3, 13
                  sra          t2, t2, t5
                  sltu         a4, s10, s3
                  mul          s5, t1, a1
                  divu         a2, s1, s4
                  c.lui        s6, 4
                  sra          t2, a7, a5
                  mul          s8, t6, ra
                  c.sub        s0, a0
                  remu         a4, s10, a7
                  c.lui        s11, 19
                  sra          t4, t4, s11
                  sltiu        t3, t0, 433
                  mul          a0, ra, a2
                  c.srli       s0, 4
                  c.andi       s1, -1
                  c.srai       a1, 15
                  c.xor        a3, a5
                  srli         s8, s11, 20
                  c.andi       a1, 2
                  xor          a7, a0, s6
                  or           a1, t3, a0
                  xor          s9, t0, t5
                  auipc        tp, 837121
                  remu         s9, sp, zero
                  c.or         a1, a3
                  add          a4, t5, t0
                  c.nop
                  and          s8, s5, tp
                  sll          gp, s9, sp
                  c.lui        a7, 12
                  mulhsu       t5, t5, sp
                  srai         t4, s3, 15
                  c.mv         t1, tp
                  c.and        a4, a4
                  slt          s6, s10, s6
                  auipc        zero, 923933
                  c.addi       t5, 14
                  c.addi       s9, 18
                  and          a2, s5, gp
                  remu         a0, ra, s6
                  c.and        s1, a5
                  slli         s6, zero, 22
                  xor          s7, t5, a4
                  c.lui        s4, 14
                  add          t5, s6, a1
                  xor          s0, s7, a7
                  srli         ra, t1, 0
                  slli         s9, s6, 21
                  srli         a1, s5, 6
                  xor          t3, s2, a1
                  nop
                  c.slli       t2, 5
                  c.and        a4, a0
                  srl          a7, t2, a5
                  or           t6, t0, s3
                  slti         t4, s3, -1892
                  sltu         s3, t4, a7
                  mulhsu       ra, a3, s11
                  div          a3, s8, s4
                  sltu         t2, ra, a1
                  slli         s1, a0, 2
                  srl          a0, s2, a1
                  c.or         s0, s0
                  slli         s11, t5, 0
                  c.addi       a5, 27
                  andi         ra, s0, -1552
                  c.xor        a0, a2
                  c.nop
                  c.and        a5, a0
                  c.nop
                  c.srli       a1, 6
                  nop
                  andi         t0, gp, 376
                  srli         t6, zero, 4
                  c.slli       a6, 20
                  srl          t6, zero, a1
                  rem          a1, s5, a7
                  c.lui        t2, 4
                  xor          a1, s1, s8
                  c.li         s6, 26
                  auipc        t4, 253215
                  sra          a2, s8, s11
                  mulhu        s8, s3, s8
                  c.andi       a2, 24
                  srli         ra, s1, 31
                  or           s5, s8, a0
                  mul          t6, a7, t4
                  slt          t3, ra, s4
                  addi         a7, a7, 653
                  remu         s6, s2, t3
                  c.srli       a1, 23
                  mulhu        a4, s5, a1
                  c.lui        gp, 29
                  div          s4, t3, s4
                  srai         t2, a5, 31
                  xori         s4, a1, -991
                  c.li         a0, -1
                  divu         t4, gp, a1
                  slt          s8, a2, s0
                  sub          gp, s4, a1
                  rem          s3, t0, t5
                  srai         a7, s1, 14
                  sll          a0, t0, s1
                  sltu         t5, a0, t1
                  sra          gp, s2, a2
                  remu         a6, a3, a6
                  nop
                  div          s1, sp, a1
                  sra          s8, s1, a5
                  sub          s3, a0, t0
                  c.slli       t5, 20
                  c.andi       s1, 10
                  c.nop
                  addi         tp, a3, -1015
                  slt          t2, t2, s6
                  c.sub        a1, a4
                  nop
                  remu         t5, t0, t5
                  c.xor        s0, s0
                  auipc        s7, 310963
                  xori         t2, t5, -1213
                  c.nop
                  c.lui        gp, 27
                  and          a0, a4, t4
                  remu         t4, a0, t5
                  c.nop
                  auipc        zero, 809957
                  c.xor        s0, s1
                  c.addi       s11, -1
                  xor          s11, a6, a2
                  c.and        a1, a1
                  srai         s5, s0, 25
                  ori          t1, zero, -818
                  or           s4, a2, a7
                  auipc        s6, 645295
                  c.nop
                  xori         t1, a5, -395
                  c.srai       s0, 13
                  c.lui        a5, 16
                  sra          a0, s10, s0
                  ori          s5, t2, 1760
                  c.add        s7, t2
                  mulhsu       t4, t5, gp
                  sra          a2, s10, a3
                  lui          t3, 1020006
                  c.srli       a4, 6
                  andi         a1, s10, -589
                  auipc        t2, 160760
                  sltiu        s0, s11, 135
                  and          s11, s5, s6
                  auipc        s1, 104266
                  c.andi       a1, -1
                  mul          s4, s3, a7
                  c.and        a3, a2
                  c.srli       a0, 28
                  xori         t0, a6, 1875
                  andi         a0, a5, 136
                  c.andi       a2, 4
                  c.addi       a6, 3
                  c.or         s1, a1
                  c.li         s4, 22
                  c.add        a2, a7
                  ori          t1, t4, -1081
                  lui          a4, 317834
                  mul          gp, t0, a2
                  c.srli       a1, 24
                  mul          a3, s9, tp
                  c.sub        a0, a1
                  rem          a7, a0, a4
                  c.addi       s5, 8
                  sub          zero, s0, a7
                  nop
                  ori          t4, s6, -5
                  c.slli       a4, 8
                  mulhu        s6, a3, s8
                  c.nop
                  auipc        s4, 793150
                  div          s7, t0, a7
                  xor          a6, t4, s1
                  c.sub        a1, s0
                  divu         t5, zero, t0
                  auipc        t5, 184574
                  c.srai       a5, 2
                  c.lui        a6, 12
                  slti         t6, s0, 1069
                  c.mv         tp, t1
                  srai         t4, t3, 29
                  srl          ra, s6, a3
                  or           t4, t4, t6
                  rem          a6, t3, t1
                  mulhu        gp, a3, s0
                  sltiu        a4, s8, 281
                  c.nop
                  c.or         a0, a3
                  mul          t1, gp, s2
                  c.li         a5, -1
                  or           s9, s0, s3
                  c.xor        s0, s1
                  c.slli       s0, 15
                  c.and        a5, s0
                  sub          s3, a3, a3
                  mul          zero, t3, tp
                  c.sub        s1, a0
                  sltu         ra, s11, ra
                  sll          s3, ra, t3
                  auipc        t2, 270837
                  c.slli       tp, 30
                  c.srli       a3, 6
                  addi         a5, t4, -42
                  nop
                  sltu         a4, s0, t4
                  c.add        t1, s8
                  addi         a2, a5, -1662
                  srl          t4, s5, tp
                  xori         s3, s6, -1997
                  slt          t2, s6, s3
                  divu         s1, a7, s6
                  addi         s11, a0, 979
                  srai         a5, s4, 9
                  srl          s5, sp, s7
                  mulhsu       s9, a6, a1
                  c.sub        s1, a4
                  sll          t1, tp, tp
                  add          t1, t0, a1
                  mul          t6, s5, a7
                  srai         s1, a7, 20
                  c.srai       s0, 24
                  c.and        s0, a4
                  sltiu        zero, s7, 3
                  c.nop
                  srai         t0, s1, 11
                  c.add        s5, gp
                  mulhsu       t6, s2, a2
                  srli         a6, a0, 31
                  nop
                  c.mv         t1, s11
                  mulhu        t0, a1, s4
                  c.srli       a4, 1
                  sltiu        zero, t6, -1847
                  and          t5, a5, zero
                  mulhsu       s7, ra, s4
                  srai         s9, s0, 9
                  c.srli       a3, 5
                  mulhsu       a0, t6, t0
                  c.addi       s3, -1
                  sub          t4, a5, a0
                  auipc        ra, 836708
                  c.nop
                  div          t4, s3, a0
                  div          t6, t1, a4
                  c.add        a5, a6
                  mulhsu       gp, a4, s1
                  auipc        a6, 778566
                  c.lui        t0, 7
                  c.andi       a1, -1
                  c.srai       a4, 3
                  c.srai       a0, 11
                  c.nop
                  c.and        a3, a3
                  c.srli       a1, 8
                  c.srli       a4, 8
                  sra          a1, s7, a2
                  srl          t3, s7, s1
                  srai         gp, s11, 29
                  c.sub        a3, a0
                  addi         s0, a5, -900
                  and          s1, s5, s7
                  c.or         a2, s1
                  xori         s4, ra, 2035
                  c.xor        a2, a2
                  c.lui        t5, 2
                  xor          t3, s7, a2
                  and          a2, a4, s2
                  c.mv         a0, s0
                  c.srli       a4, 1
                  sra          t0, a1, a4
                  divu         s8, s10, a7
                  c.li         s8, -1
                  c.mv         a1, s5
                  c.andi       a2, -1
                  ori          a7, a6, 999
                  c.sub        a3, a2
                  slti         t3, a2, 1794
                  slli         a5, t6, 24
                  andi         a4, t2, 732
                  c.and        s1, a2
                  sltiu        t5, a1, 259
                  c.sub        a5, a0
                  c.add        t5, a2
                  c.and        s1, a0
                  c.add        t2, t3
                  sll          s3, a3, s9
                  c.li         a7, 13
                  and          ra, s1, sp
                  div          a3, a7, a1
                  c.add        gp, s10
                  c.xor        a3, a1
                  addi         t6, a7, 1788
                  slt          t4, s0, sp
                  c.srli       a0, 2
                  rem          t2, s11, s8
                  sltiu        t4, s2, 322
                  c.slli       t4, 5
                  and          zero, s5, t4
                  sltiu        tp, s10, 464
                  sll          a3, s4, t1
                  nop
                  c.sub        a4, s0
                  slli         tp, s2, 4
                  srl          a7, t0, s0
                  sra          a4, s0, s2
                  slt          s7, s1, t2
                  remu         a3, t1, s10
                  sltu         t0, s8, a0
                  c.mv         t4, a1
                  xor          t3, s2, tp
                  sub          s4, t5, tp
                  srli         a3, gp, 13
                  c.add        s1, tp
                  remu         s6, a1, t5
                  srl          a6, s9, a6
                  auipc        s11, 307234
                  slt          a3, s8, s6
                  c.li         s0, 7
                  addi         s8, s7, 1740
                  rem          tp, t6, a2
                  c.li         a1, 4
                  slli         gp, s6, 26
                  addi         a4, s10, -1872
                  xor          t2, t0, a5
                  rem          a1, s11, t1
                  remu         t5, s0, gp
                  rem          a6, s11, t3
                  c.lui        a6, 22
                  c.xor        a4, s1
                  nop
                  xor          s1, s2, t3
                  rem          s3, sp, a2
                  sra          s6, t1, s3
                  mulh         tp, a4, s3
                  mulh         a1, s0, a5
                  c.or         a4, a4
                  rem          a6, a6, s9
                  c.sub        a0, s0
                  mul          t5, t0, t6
                  rem          a4, t0, a6
                  sltiu        t1, s0, 2031
                  sll          a7, s4, s7
                  mulhu        s9, s4, t6
                  mulhsu       t6, zero, a2
                  c.or         a0, a2
                  c.add        s3, tp
                  c.addi       a7, -1
                  div          t2, s10, t1
                  c.sub        a5, a3
                  and          a0, a7, a7
                  slt          a0, a1, ra
                  c.add        gp, s8
                  c.nop
                  sltiu        a1, s3, -1783
                  sltu         a2, a5, a0
                  slti         tp, a1, 863
                  c.mv         a0, a5
                  or           t6, zero, tp
                  mulhsu       a1, a6, sp
                  divu         s0, a1, a1
                  c.addi       s0, -1
                  auipc        tp, 445535
                  lui          a7, 90438
                  c.xor        a1, a0
                  c.sub        a3, a2
                  add          s6, t0, a1
                  sub          s11, t4, s6
                  slti         zero, s4, -1296
                  c.sub        s0, a1
                  ori          t3, ra, -1234
                  mulhu        a6, t4, t6
                  c.srli       s0, 28
                  add          s6, t0, sp
                  mul          gp, s2, s4
                  slt          t2, a7, a2
                  slti         s0, a3, -1101
                  div          gp, a5, s3
                  sra          gp, s2, t4
                  xori         s5, t2, -1820
                  remu         s8, a1, s0
                  xor          s5, sp, s9
                  sra          s0, a1, t6
                  srli         tp, a5, 10
                  addi         s1, a1, -1734
                  srli         gp, t0, 15
                  c.xor        a5, s1
                  mul          a2, t6, tp
                  divu         zero, a5, a7
                  divu         t2, tp, s5
                  c.srli       a5, 20
                  c.sub        a1, a3
                  c.li         s6, -1
                  mul          a0, a3, t4
                  c.addi       s6, -1
                  mulh         a2, tp, s1
                  div          t3, t1, t3
                  sub          s4, zero, a0
                  srai         a2, t2, 28
                  c.and        a4, a4
                  srl          a0, a0, t5
                  c.nop
                  c.slli       a0, 11
                  remu         t0, s9, t0
                  c.nop
                  slti         t0, s3, -1181
                  slti         a1, zero, 358
                  nop
                  slli         a7, t6, 11
                  lui          t5, 617094
                  sra          t4, a6, t1
                  lui          t2, 356953
                  mulhu        s1, a1, s4
                  rem          s9, a2, tp
                  sub          t3, s10, a1
                  sltu         s9, a3, s3
                  mulhu        s7, s4, tp
                  srai         a7, t3, 0
                  slti         t1, s4, 781
                  c.sub        a5, s0
                  nop
                  ori          a0, a2, 1970
                  c.nop
                  c.xor        a4, a0
                  c.add        gp, a3
                  xori         a5, a6, -1365
                  c.li         s8, -1
                  c.and        a3, a1
                  slt          a2, tp, a5
                  addi         s1, a2, -575
                  addi         t6, t1, 1476
                  c.nop
                  andi         s0, s2, -1801
                  sub          s8, t4, s7
                  ori          a2, t6, -363
                  c.lui        s5, 14
                  div          a0, a6, s5
                  c.or         s1, s1
                  mulhsu       s3, s11, t2
                  c.and        s0, a5
                  srl          s11, a7, s8
                  c.lui        s9, 8
                  slt          a7, a0, t4
                  sra          a7, s9, a7
                  srli         zero, s5, 31
                  add          s0, a2, s2
                  rem          t5, s0, t0
                  c.lui        gp, 3
                  c.nop
                  xori         t6, a2, 453
                  c.and        a5, a5
                  c.nop
                  or           a0, a3, a2
                  srli         t6, t1, 20
                  slti         s4, a3, -18
                  srl          t2, s7, a5
                  add          t1, a5, tp
                  c.addi       t4, -1
                  mulhu        t3, s5, t2
                  slti         t3, a1, -710
                  sltiu        a2, a1, -412
                  mul          s5, s8, gp
                  srl          s9, a0, t4
                  mulhu        zero, a5, a3
                  c.and        a3, a2
                  auipc        a3, 674861
                  xori         a5, t6, -2012
                  c.addi       a7, -1
                  c.nop
                  lui          ra, 300695
                  c.or         a2, s0
                  c.xor        s0, s1
                  c.slli       t6, 22
                  auipc        s4, 15822
                  c.li         s0, -1
                  srl          zero, a3, a7
                  addi         tp, t6, 285
                  nop
                  c.nop
                  c.add        s9, s10
                  srai         zero, t6, 12
                  mulh         t3, a1, t1
                  c.or         a4, a1
                  c.and        a0, a4
                  nop
                  sltiu        a7, s2, -946
                  andi         zero, s0, -1148
                  c.or         a4, a5
                  c.srli       s0, 11
                  sll          s4, a1, zero
                  sra          tp, a4, a1
                  remu         gp, tp, s2
                  c.sub        a2, s1
                  addi         a4, t5, -1466
                  divu         t0, s0, s1
                  c.or         a4, a2
                  mulh         t4, t5, a6
                  sll          s0, s2, s0
                  c.addi       t4, -1
                  sltiu        s7, s11, 385
                  c.srli       a5, 4
                  c.sub        a2, s0
                  c.or         a0, a1
                  or           s11, zero, ra
                  sra          s3, a2, tp
                  andi         a1, a0, -144
                  sltu         s4, s2, t5
                  mulh         gp, s7, a3
                  andi         s9, s9, 113
                  mul          a4, s10, s8
                  xori         a6, t6, 1450
                  addi         t1, s0, -1126
                  c.andi       a4, -1
                  mulhu        s4, t1, zero
                  c.or         a0, s1
                  c.mv         a5, a0
                  remu         a2, s3, s1
                  or           a2, s10, a3
                  mulhu        t2, t1, a0
                  addi         a1, a3, 198
                  srli         a7, ra, 24
                  div          t4, s2, s10
                  sra          a6, gp, t3
                  c.mv         ra, t0
                  addi         a2, a1, -1661
                  sra          s0, s8, a0
                  slli         t0, t0, 16
                  divu         t1, s4, t3
                  mulh         t0, s8, t3
                  mulh         s3, a6, s10
                  sltu         a4, a0, s4
                  c.nop
                  divu         a0, t4, tp
                  c.andi       s1, -1
                  lui          a1, 447190
                  c.nop
                  c.li         t3, -1
                  c.lui        s8, 6
                  srai         t0, ra, 21
                  c.lui        gp, 19
                  mulh         s7, s2, t0
                  c.slli       t5, 28
                  sll          s7, s2, t0
                  or           zero, a0, s3
                  c.sub        s1, s1
                  c.lui        tp, 27
                  c.sub        s0, a3
                  ori          s5, s5, -468
                  c.mv         s8, s6
                  ori          a5, s1, 49
                  mulh         s0, s0, s2
                  c.or         a1, s1
                  and          a1, sp, a0
                  c.and        a3, a2
                  c.lui        t1, 23
                  c.srai       a3, 4
                  mul          a1, gp, a6
                  sltiu        t5, a2, 1639
                  c.addi       a4, 20
                  srl          t4, s11, zero
                  c.mv         a3, t4
                  c.mv         a1, sp
                  remu         tp, s1, a3
                  andi         t2, tp, 641
                  c.addi       s8, 3
                  c.andi       a0, -1
                  slt          s3, zero, a7
                  addi         s11, s11, 738
                  sltiu        s6, a0, 23
                  nop
                  c.or         a3, s1
                  slli         a5, t0, 19
                  c.nop
                  srai         t1, s9, 13
                  rem          gp, s10, a2
                  slt          t6, a7, a3
                  c.mv         t1, s7
                  remu         t0, tp, s7
                  divu         a3, zero, a0
                  divu         s1, t4, a2
                  c.mv         s3, t2
                  remu         s11, t4, s11
                  srli         t0, t6, 30
                  c.sub        a0, a0
                  c.lui        s6, 23
                  c.add        a3, t0
                  c.srai       s0, 8
                  c.addi       tp, 26
                  c.andi       a5, 15
                  sra          s1, s5, a7
                  c.addi       s5, -1
                  srl          s0, s5, t2
                  c.sub        a2, s0
                  xor          t6, a4, a4
                  remu         ra, s7, zero
                  c.li         s1, -1
                  rem          s1, s11, ra
                  c.sub        s0, s1
                  srai         t6, a6, 11
                  div          t1, tp, sp
                  or           s3, s10, s10
                  rem          t1, t4, t3
                  div          s5, s3, sp
                  c.mv         a3, tp
                  auipc        s0, 583054
                  sltiu        t6, gp, -222
                  sltiu        t0, s10, 996
                  c.srli       a4, 10
                  mulhu        ra, t1, a0
                  c.srai       a0, 22
                  and          a5, sp, s2
                  c.lui        s5, 28
                  remu         a6, tp, s8
                  rem          a2, s8, s2
                  slt          a0, t1, sp
                  srli         a7, a1, 18
                  slt          s3, a6, t3
                  srl          s1, a5, s3
                  c.or         a4, a1
                  c.and        a4, a4
                  c.xor        a0, a0
                  c.li         t3, 1
                  c.xor        a1, s1
                  div          s6, zero, t2
                  c.or         a2, a3
                  sra          t1, t0, s8
                  sltu         s6, a5, a0
                  c.xor        a0, s1
                  xor          s7, ra, s3
                  lui          s5, 668759
                  slti         t2, s9, -1154
                  c.addi       t4, -1
                  slli         a0, s6, 20
                  srai         gp, a1, 28
                  srli         t5, s0, 23
                  xori         a4, t4, 623
                  addi         tp, s4, -216
                  c.li         t1, 25
                  mulh         a4, a1, gp
                  rem          tp, s9, a0
                  c.slli       t1, 20
                  mulh         s9, t3, ra
                  c.andi       a0, -1
                  div          a0, t1, t4
                  c.lui        s9, 6
                  c.and        a3, a1
                  xori         a1, a1, 1487
                  srai         a2, s10, 26
                  c.xor        a4, a4
                  c.srli       s1, 28
                  c.srli       a3, 21
                  c.sub        a0, a2
                  c.slli       gp, 11
                  andi         t5, zero, -996
                  andi         a0, s1, 1760
                  mulhu        s4, s0, t5
                  mul          tp, s9, t2
                  add          s7, s0, a0
                  mulh         s6, t6, t4
                  c.xor        a4, a3
                  sltiu        ra, s0, -529
                  c.add        t5, t6
                  nop
                  c.sub        a2, a2
                  remu         t5, t4, a5
                  addi         a3, s11, -1990
                  xori         s4, s5, 424
                  xori         s5, s3, 109
                  c.add        s3, s0
                  c.li         ra, -1
                  c.li         t1, 1
                  xor          t5, gp, t6
                  addi         a2, s8, -1179
                  c.li         s3, 10
                  srai         s0, s7, 4
                  addi         t5, a6, 1457
                  c.srai       a0, 7
                  div          t1, a2, ra
                  mulh         t4, t1, s3
                  c.or         a0, a0
                  slti         t2, a5, 1913
                  divu         t2, sp, sp
                  sltu         s11, t4, s5
                  nop
                  mulh         a4, s11, t0
                  divu         a0, t6, s10
                  slti         a5, s9, -1615
                  xor          s9, t5, t0
                  srai         t3, s2, 6
                  c.xor        s0, a4
                  or           s6, s5, t3
                  remu         s11, a0, s5
                  mulhsu       a3, s3, a7
                  c.slli       s3, 9
                  lui          s3, 783835
                  remu         t5, a2, t0
                  mulhsu       zero, sp, t1
                  c.slli       s6, 11
                  nop
                  srl          s11, a5, t1
                  addi         a7, a7, -1148
                  sub          s4, t1, ra
                  sll          a3, a4, t4
                  c.lui        s3, 9
                  and          s9, t1, a4
                  c.xor        a4, s1
                  c.srai       a5, 28
                  xori         t6, zero, -1811
                  c.addi       t6, -1
                  c.xor        s1, s1
                  sltiu        s6, a5, 549
                  and          s7, t3, t0
                  srli         a2, s8, 6
                  sltiu        t1, a4, -274
                  c.mv         a7, s6
                  c.li         s7, 15
                  c.addi       t5, -1
                  andi         zero, t6, -1579
                  div          a7, a4, a2
                  nop
                  ori          a0, sp, 1407
                  sub          a2, t2, s6
                  lui          t0, 332006
                  c.mv         t2, t3
                  c.sub        a4, a3
                  auipc        a0, 28989
                  sltiu        t0, a7, 830
                  sltu         a2, gp, tp
                  xor          t1, a5, t3
                  xor          a5, s6, t6
                  c.sub        s1, s0
                  c.xor        a1, a2
                  add          t1, t6, gp
                  xori         s6, a4, -512
                  c.andi       a3, -1
                  add          a5, sp, a2
                  div          s7, t6, s2
                  xori         s1, t4, -433
                  srai         t6, a1, 5
                  slti         tp, sp, 1995
                  lui          zero, 926468
                  nop
                  slt          s8, a2, t4
                  andi         a6, s10, -783
                  div          a3, gp, t5
                  addi         s8, t1, 1528
                  div          a5, s2, gp
                  nop
                  slli         s4, a6, 28
                  rem          t3, t3, s10
                  or           a2, s6, s7
                  c.srli       a3, 22
                  slti         a1, t2, -1846
                  mulhu        s1, s7, s5
                  sltu         t5, s11, a2
                  sll          a3, s2, t4
                  slti         t2, s6, -1140
                  c.srai       a0, 31
                  c.nop
                  c.addi       t1, 9
                  c.xor        a3, a3
                  remu         a0, s8, a4
                  auipc        t5, 322915
                  slt          a4, t5, s2
                  sltiu        ra, zero, -1593
                  c.nop
                  c.or         a0, a3
                  srl          s4, s1, s7
                  sltu         t6, t6, gp
                  c.lui        ra, 2
                  mulh         t5, s5, tp
                  add          t0, a1, a0
                  and          a0, ra, t3
                  lui          s7, 39606
                  slli         t4, t0, 4
                  srli         s0, ra, 8
                  mulh         ra, s8, a7
                  c.and        a1, a3
                  srli         t1, s8, 21
                  xor          zero, t0, s0
                  mulhu        s11, s0, a7
                  c.srai       a3, 8
                  or           tp, gp, s4
                  auipc        s7, 212734
                  srli         s4, gp, 17
                  rem          a3, a1, t1
                  or           a6, ra, a5
                  andi         s9, ra, 85
                  auipc        gp, 373160
                  xori         a1, sp, -1272
                  c.srai       a5, 23
                  mulh         a6, t3, s7
                  sltu         s3, a3, t5
                  sra          t5, s10, t0
                  ori          a3, t1, -1145
                  divu         s7, s0, a0
                  auipc        t1, 160758
                  ori          s11, a0, -1723
                  nop
                  div          a7, s6, s9
                  andi         s11, s6, 1974
                  c.andi       s1, -1
                  c.mv         s11, s2
                  srl          s11, t0, a4
                  ori          s8, s8, 1324
                  sub          a2, ra, s9
                  xori         t1, t2, 253
                  sltiu        t2, s10, -1455
                  mul          s9, t3, a4
                  c.srai       s1, 8
                  mul          gp, s7, s6
                  ori          s11, t1, 798
                  c.srli       a4, 23
                  srai         t5, a7, 28
                  auipc        t2, 437756
                  sltu         s3, s5, tp
                  rem          t6, t5, t1
                  c.sub        a3, a2
                  auipc        a4, 667213
                  xor          ra, s3, s4
                  c.srli       a1, 21
                  xori         a4, s0, -1114
                  c.xor        a4, a2
                  sra          s0, s5, tp
                  srli         t1, s9, 2
                  slt          s7, zero, s8
                  xori         s6, s7, 967
                  slli         gp, a5, 17
                  add          t5, a1, zero
                  c.srai       s0, 2
                  andi         a1, t4, 332
                  c.li         t6, 29
                  slti         s11, s5, -728
                  c.mv         s7, t2
                  c.and        s0, s0
                  sub          tp, t5, t6
                  remu         tp, s5, s3
                  slli         s4, s6, 10
                  slti         zero, s9, 1191
                  c.lui        a1, 14
                  mulhu        a7, a0, sp
                  auipc        a3, 648788
                  remu         t0, s4, a7
                  sltiu        s1, t3, 1852
                  srli         s4, a1, 23
                  xori         a7, ra, 681
                  c.lui        a6, 20
                  remu         gp, s11, t6
                  and          a0, s1, s7
                  or           s3, gp, t6
                  or           s1, s0, s9
                  add          t2, a4, a0
                  sltu         t0, s3, t2
                  c.lui        t5, 28
                  srli         gp, t0, 20
                  sra          ra, tp, a7
                  mulhsu       a2, t5, s9
                  c.xor        a5, a5
                  c.addi       a1, 6
                  c.li         a4, 5
                  xor          s11, tp, s5
                  c.slli       tp, 31
                  div          s8, a7, s7
                  slt          s1, s5, t5
                  sub          a4, ra, t1
                  div          gp, s4, sp
                  auipc        ra, 917986
                  c.srai       s1, 6
                  andi         s3, t3, 1043
                  c.lui        s11, 31
                  sltu         s7, s3, zero
                  andi         s11, t1, -264
                  or           zero, s1, s9
                  c.mv         t6, t2
                  remu         s6, zero, s0
                  sltiu        s6, t0, 260
                  c.li         t3, 5
                  mulhu        a0, tp, s1
                  add          s8, a0, s10
                  and          s11, s5, a2
                  slti         a7, sp, -142
                  c.or         a5, a0
                  mulhu        s7, s5, t3
                  rem          s11, t1, a4
                  srai         t5, t3, 14
                  c.slli       s0, 2
                  slti         t6, t2, 853
                  mulhu        a6, s5, s5
                  c.slli       gp, 11
                  c.mv         a6, a1
                  add          t6, a0, sp
                  mulhsu       s4, s10, s10
                  c.nop
                  srl          a3, s0, s9
                  sub          t2, s3, t2
                  mulhsu       t3, s6, t0
                  srl          t1, zero, s11
                  c.addi       a1, -1
                  c.nop
                  c.addi       s7, -1
                  mulhu        s0, s10, t3
                  c.xor        s0, s1
                  slt          zero, s0, zero
                  c.andi       a5, 5
                  nop
                  c.lui        s8, 21
                  add          gp, t0, s3
                  c.or         a0, a2
                  xor          t2, s0, s1
                  xori         a7, a1, -1015
                  xor          s0, t3, t6
                  xori         t0, s2, -665
                  c.srli       a5, 10
                  lui          t0, 739789
                  c.addi       ra, -1
                  c.lui        s3, 7
                  c.nop
                  sltu         s4, a5, s10
                  xori         a1, s4, -783
                  c.xor        a2, s1
                  c.srai       s0, 3
                  addi         a6, s6, 531
                  c.sub        a2, a3
                  sltiu        s8, t6, 133
                  c.xor        a1, a4
                  c.nop
                  ori          a0, s4, 1361
                  c.addi       t1, -1
                  sltiu        s11, s4, -1894
                  sll          t0, t0, s3
                  srai         zero, a1, 16
                  c.and        s1, a3
                  c.and        s1, a0
                  auipc        s6, 490189
                  c.srli       a5, 20
                  divu         s4, a5, t2
                  slli         s7, sp, 8
                  sra          a6, s1, s0
                  srli         s1, s4, 16
                  c.mv         t1, ra
                  sub          s9, s8, a6
                  div          s8, s7, t0
                  or           a5, s3, s2
                  lui          t1, 43755
                  remu         a5, t0, t0
                  c.srli       a2, 6
                  divu         t6, a1, s4
                  rem          s11, s3, a6
                  sra          a0, t1, s3
                  mulhsu       zero, a0, t0
                  c.srai       a1, 11
                  remu         s6, gp, tp
                  slli         s4, t5, 7
                  c.and        a0, s1
                  sltu         a2, t6, a1
                  slli         zero, tp, 29
                  c.mv         t0, s3
                  slt          t5, s2, s4
                  rem          s6, zero, t4
                  srl          a5, s10, ra
                  auipc        gp, 370193
                  addi         tp, t1, -72
                  add          a1, sp, a4
                  c.mv         s7, s9
                  c.add        a2, s8
                  srl          s4, a2, t0
                  sltiu        s4, a1, 2045
                  div          tp, t2, s10
                  c.srai       a1, 2
                  divu         t5, s4, s2
                  c.andi       a5, -1
                  c.li         tp, 0
                  sub          t2, s9, s5
                  c.srai       s0, 8
                  c.and        a4, a5
                  lui          a4, 42105
                  c.mv         gp, s10
                  add          t4, a3, t4
                  andi         gp, tp, 188
                  xori         a7, sp, 933
                  or           gp, s3, t1
                  slt          s1, s1, t0
                  mulhu        s5, s8, a0
                  xor          a3, s4, s5
                  c.mv         s3, sp
                  srli         s0, sp, 31
                  srl          a4, s3, s2
                  c.sub        a2, a5
                  c.li         a2, 17
                  sll          t4, t1, s6
                  c.xor        s0, s0
                  slti         a7, s7, -260
                  c.srai       a3, 1
                  sll          s5, s3, a3
                  remu         a0, a5, s2
                  addi         s6, s9, -910
                  and          t3, t1, t1
                  c.or         a5, s0
                  c.srai       a5, 18
                  add          s3, t5, t5
                  sra          a4, s7, t5
                  c.slli       s6, 20
                  divu         a3, t2, t0
                  auipc        s0, 1670
                  mulh         s1, s1, a5
                  mulh         t0, s7, t0
                  srli         s9, t1, 17
                  c.li         t1, -1
                  srai         t0, a5, 17
                  andi         s7, s3, -1740
                  mulhsu       a0, zero, s5
                  c.slli       t2, 6
                  c.add        a3, t5
                  sltu         t1, t4, sp
                  c.slli       a2, 28
                  andi         ra, a2, -1333
                  remu         ra, a6, a1
                  sltiu        ra, tp, -790
                  div          zero, s9, s6
                  srai         s6, s11, 19
                  mulhu        a2, s0, s3
                  c.or         a4, a1
                  c.andi       a3, -1
                  sub          t0, a2, s8
                  sltu         s11, s11, s1
                  sll          t1, t1, t0
                  remu         s6, s9, a7
                  c.or         s0, s1
                  auipc        s0, 41785
                  c.xor        a1, a2
                  rem          gp, t4, s2
                  or           t4, a3, a6
                  xori         s11, gp, -1981
                  c.and        a3, s0
                  c.srli       a0, 14
                  c.srai       a4, 16
                  auipc        a2, 635664
                  auipc        s7, 267329
                  slt          s7, s1, s1
                  sltu         t5, t6, ra
                  auipc        a0, 889991
                  sll          t1, s0, ra
                  c.slli       a7, 29
                  slli         s0, s11, 7
                  slli         gp, s10, 25
                  c.srli       s0, 2
                  xori         s8, gp, -2030
                  c.or         a1, a2
                  c.nop
                  slli         t4, a2, 7
                  div          s4, t0, a0
                  sra          a0, ra, a1
                  mul          s6, t6, t6
                  c.srai       a2, 1
                  c.srai       s0, 18
                  remu         gp, a5, s0
                  mulhu        s5, t6, s10
                  auipc        s3, 1028590
                  auipc        s11, 343892
                  ori          s0, zero, 370
                  c.lui        s11, 30
                  c.andi       a5, 5
                  mulhsu       zero, t1, t1
                  andi         a1, s11, -581
                  sra          gp, ra, ra
                  divu         t4, a0, s3
                  sll          a7, ra, a6
                  andi         t1, t4, -1145
                  nop
                  andi         zero, a3, 546
                  auipc        t0, 615321
                  mul          a6, s2, t5
                  c.srai       a5, 20
                  c.add        a5, t2
                  addi         ra, a7, 1094
                  rem          ra, a3, a6
                  xori         t5, s2, 388
                  c.srai       a2, 6
                  xori         s8, t3, 1934
                  remu         a4, t6, t0
                  c.srli       a1, 10
                  c.nop
                  sll          ra, t0, s3
                  c.mv         gp, a7
                  or           t1, s11, t5
                  sll          a0, sp, s2
                  c.li         a0, 4
                  li           a0, 0xc8093ba0 #start riscv_int_numeric_corner_stream_27
                  li           a4, 0x80000000
                  li           gp, 0x80000000
                  li           s0, 0xffffffff
                  li           t3, 0xd10fdd9d
                  li           t5, 0xde418a54
                  li           t1, 0xffffffff
                  li           a1, 0xffffffff
                  li           a2, 0x80000000
                  li           t0, 0x80000000
                  nop
                  mulh         t1, gp, t3
                  nop
                  divu         s0, t3, a0
                  auipc        gp, 401928
                  remu         t5, a0, gp
                  nop
                  addi         t5, a1, 576
                  divu         t5, t1, a4
                  nop
                  auipc        t5, 646973
                  divu         a0, gp, s0
                  add          t0, a0, a0
                  mulhu        gp, t1, t3
                  addi         t0, s0, 1554
                  div          a4, t0, t5
                  mulh         t0, a1, t5
                  lui          t1, 914770
                  rem          t0, a1, a2
                  mulhu        t5, t0, t1
                  addi         t1, t3, 670
                  mulhu        t0, a1, a2
                  divu         t1, t3, a0
                  sub          s0, t1, a1
                  addi         t3, s0, -4
                  nop
                  mulh         a1, gp, t0 #end riscv_int_numeric_corner_stream_27
                  srai         s8, t5, 19
                  addi         a0, a4, 108
                  c.addi       s11, -1
                  slli         a0, t3, 30
                  add          s5, s9, t6
                  auipc        a3, 627218
                  c.li         a6, 0
                  lui          a0, 927806
                  andi         t5, a3, 1923
                  srl          a7, t2, s10
                  remu         a4, a6, s8
                  slt          a2, t1, a5
                  sll          s0, s7, t2
                  xor          t6, t1, zero
                  sltu         a7, t5, t3
                  xor          s11, s10, ra
                  slti         a6, s3, -568
                  sltiu        s5, t6, -1006
                  mul          a4, a7, tp
                  srli         s11, s10, 6
                  slli         a0, t5, 14
                  srli         tp, t6, 29
                  remu         a0, t2, s3
                  slt          a7, a3, a2
                  c.addi       t2, 12
                  mulh         a1, s5, s9
                  c.lui        a2, 13
                  c.add        t2, s7
                  slli         s4, a5, 14
                  slli         s6, t3, 4
                  sll          s9, zero, t2
                  c.add        s11, s2
                  mulhsu       a3, t5, t5
                  mulh         a4, s0, a2
                  mulhu        a6, tp, s3
                  c.li         s4, -1
                  slli         a7, t1, 30
                  mul          t4, sp, t1
                  sltu         gp, t4, t5
                  sltu         a0, gp, s6
                  sltu         a0, ra, s3
                  sltu         s8, a1, a6
                  c.li         gp, 18
                  or           t0, s9, a4
                  sra          s5, zero, a0
                  addi         gp, a3, -1364
                  sra          t2, t6, gp
                  remu         gp, s8, t4
                  sltiu        s4, t0, -1758
                  srl          s7, t3, t0
                  mulh         s0, t6, t3
                  c.srai       a5, 10
                  or           t2, s4, t5
                  auipc        a1, 300457
                  c.li         a7, 25
                  auipc        t6, 887647
                  srai         t2, s5, 5
                  mul          a5, sp, t1
                  addi         s11, s3, 1485
                  mulhsu       t5, s9, a5
                  mul          t4, gp, a1
                  c.li         a6, -1
                  c.slli       a4, 2
                  lui          tp, 238751
                  c.and        a2, a5
                  slt          a6, a6, s7
                  srai         gp, a1, 10
                  c.xor        a0, s0
                  add          s8, gp, a7
                  sub          t5, a7, s3
                  xori         t1, s7, -1223
                  addi         s9, a6, -635
                  slli         a1, gp, 1
                  srai         s11, a6, 20
                  rem          s8, a1, a5
                  xor          s6, s5, s8
                  nop
                  c.slli       s6, 20
                  c.andi       s0, -1
                  slt          a5, a5, t1
                  sll          ra, s11, s3
                  c.srli       s1, 25
                  c.slli       s1, 2
                  c.sub        s1, s0
                  c.addi       s0, -1
                  add          s6, t2, a5
                  srli         s8, s1, 8
                  and          a7, a2, a1
                  divu         t6, s0, a3
                  c.srli       a0, 10
                  xor          s6, s6, a2
                  sra          s0, a2, t0
                  mulhu        a6, a3, s1
                  xori         t5, s8, -140
                  lui          t6, 400717
                  c.or         s0, s1
                  c.li         t3, -1
                  lui          t1, 647128
                  nop
                  auipc        a6, 777446
                  c.srli       s0, 30
                  sltiu        s7, s7, -1431
                  slli         a0, s4, 30
                  c.slli       a3, 23
                  srli         s4, s7, 31
                  and          t6, a3, t1
                  add          t0, t5, a1
                  divu         s8, a4, s11
                  div          ra, ra, s0
                  c.nop
                  add          t5, t1, s10
                  c.slli       s4, 20
                  addi         a6, s6, -1131
                  addi         s0, s1, 1830
                  divu         zero, s8, t2
                  mulhu        t4, a1, zero
                  c.xor        s0, a5
                  sll          a5, s0, s5
                  auipc        s11, 254441
                  sltu         t6, a6, t4
                  srli         t4, t6, 2
                  sra          a1, s8, s3
                  andi         t5, s8, -1046
                  divu         zero, a5, s7
                  mulhu        s9, s1, t2
                  sltu         t6, t0, s11
                  andi         s3, a3, -1093
                  c.srai       a0, 10
                  c.slli       t1, 25
                  sltu         t6, t0, a3
                  slli         a5, t0, 1
                  remu         s3, t6, zero
                  c.add        t6, s6
                  slt          t6, a3, s8
                  andi         s9, s11, -1806
                  xor          zero, t2, sp
                  ori          s1, ra, 190
                  ori          s11, tp, 1346
                  c.slli       s1, 15
                  xori         gp, t2, -1455
                  andi         s9, t4, 1554
                  remu         t5, a5, a3
                  c.nop
                  addi         s6, t3, 1481
                  srai         t6, a3, 2
                  lui          t6, 478713
                  c.nop
                  srl          s1, ra, sp
                  srli         t1, s9, 9
                  lui          s5, 531495
                  srai         s7, tp, 24
                  c.or         a3, a3
                  add          a2, s11, gp
                  c.andi       a3, 26
                  mulhu        a7, s6, a0
                  and          s5, zero, s4
                  c.or         a2, a0
                  add          t6, s4, s8
                  c.or         s1, a1
                  and          s3, ra, t1
                  c.addi       a6, 18
                  c.slli       t1, 21
                  sll          a4, s6, a1
                  xori         a6, t1, 1552
                  xori         t6, sp, 1280
                  c.and        a5, a0
                  slli         s8, s5, 18
                  sltu         a2, s8, s2
                  c.add        a2, a6
                  srli         zero, s2, 13
                  xor          s6, t2, a4
                  rem          a0, s0, t5
                  srli         t2, s3, 2
                  c.srli       s1, 14
                  c.srli       a5, 3
                  lui          s1, 97985
                  c.addi       s5, 30
                  c.slli       s6, 18
                  sll          a3, a3, s4
                  slti         t0, s10, 959
                  div          a4, s7, t2
                  xor          a4, s5, s6
                  c.or         a5, a4
                  sltiu        tp, a4, -174
                  mulhu        s6, s10, s10
                  c.and        a4, a2
                  mulhu        a6, a7, s8
                  div          t3, s0, a1
                  div          s7, t5, t6
                  mulhu        tp, a0, a0
                  c.xor        a3, a0
                  c.mv         a0, t1
                  sra          s6, s3, t5
                  ori          gp, a0, -1344
                  xor          ra, s0, s6
                  or           t5, t6, s0
                  div          s9, t4, a2
                  mulhu        s0, t6, a3
                  srai         s1, s0, 8
                  xor          a6, s0, s1
                  xor          t5, s2, a7
                  srli         a2, a1, 16
                  add          t5, s3, a5
                  srl          t4, a3, s11
                  c.srli       s1, 8
                  sltu         t1, s0, s0
                  andi         s5, a4, -1520
                  c.mv         s1, a0
                  add          a1, sp, t5
                  c.andi       a3, 10
                  sltu         a3, t6, s1
                  sltiu        t0, s11, 762
                  mulhu        a6, s1, t6
                  slli         a0, s4, 17
                  c.or         a2, s0
                  remu         a6, tp, s1
                  xori         t5, s7, -727
                  remu         t4, gp, t2
                  mulhu        a1, tp, a4
                  sra          t0, sp, s8
                  c.srai       a2, 13
                  nop
                  c.li         a0, 31
                  c.li         t3, 11
                  div          a1, a2, t1
                  slti         t3, gp, -1000
                  c.and        a5, s1
                  rem          gp, zero, s2
                  c.and        a5, a0
                  divu         s0, s3, a4
                  c.addi       a0, 18
                  mulhsu       a3, s9, t3
                  c.and        s0, a0
                  sll          ra, t3, s4
                  add          a6, a4, t4
                  c.add        t6, gp
                  divu         zero, a5, a2
                  addi         a4, a4, -1558
                  and          s8, a3, a2
                  and          t2, zero, t2
                  c.and        a5, a3
                  c.srai       a4, 20
                  c.mv         s3, t3
                  sltu         s8, s7, t5
                  c.addi       tp, 24
                  divu         t6, s10, s9
                  srli         s1, t5, 8
                  auipc        t4, 830901
                  nop
                  sra          s4, a2, a1
                  c.and        s1, a5
                  c.lui        a1, 13
                  auipc        s3, 803422
                  c.sub        a2, s0
                  mulh         s6, t1, t5
                  lui          t4, 648455
                  div          t3, s10, t6
                  sub          s3, s7, tp
                  c.and        s1, a3
                  mul          a5, a7, s11
                  sltu         a2, a3, tp
                  c.add        s7, s2
                  c.xor        a3, a5
                  c.li         a6, -1
                  divu         a3, t6, tp
                  c.srli       s1, 24
                  sltu         s9, s3, t2
                  or           s7, s5, s1
                  c.or         a0, a1
                  xor          tp, gp, gp
                  slli         s1, t4, 24
                  srai         s7, t2, 9
                  xor          s8, t4, s3
                  srai         s9, s0, 3
                  slli         t0, sp, 11
                  c.li         s0, 27
                  c.or         a5, a2
                  c.mv         t0, a7
                  c.addi       ra, 19
                  c.nop
                  ori          t2, a2, -921
                  sltu         t0, s6, s2
                  c.srli       s0, 27
                  c.add        a6, a6
                  c.srai       a2, 15
                  andi         t3, s5, 1972
                  c.andi       a3, 22
                  srli         s9, a6, 22
                  sltu         a6, t6, gp
                  divu         s5, s8, s0
                  slti         s0, a2, 1353
                  nop
                  xori         t6, t3, 2032
                  andi         a7, a3, -1692
                  ori          s11, a5, -378
                  auipc        t6, 295777
                  srli         a3, s2, 16
                  c.xor        s1, a0
                  c.and        a2, s0
                  c.mv         a7, a7
                  c.li         t3, 4
                  sltiu        t6, t4, -1296
                  c.sub        a3, s0
                  slli         s11, s1, 30
                  c.xor        a4, s1
                  sub          a0, a0, s3
                  sub          s11, s8, s1
                  c.lui        t0, 2
                  srai         s11, a0, 21
                  slt          t1, a4, t1
                  sra          a0, t4, s11
                  mulhsu       s8, s3, s3
                  sltu         a5, a0, a4
                  c.andi       s1, -1
                  auipc        s0, 882256
                  srl          a0, s6, a2
                  c.and        s1, a3
                  mulhu        a7, s7, s1
                  rem          s5, s8, a6
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a0, 0xb3917d6f
                  li           a7, 0xfa7ab76a
                  li           s9, 0xffffffff
                  li           a5, 0x0
                  li           ra, 0xffffffff
                  li           s7, 0xffffffff
                  li           gp, 0xffffffff
                  li           s6, 0x0
                  li           a4, 0x0
                  mulhsu       gp, s9, s6
                  add          s7, a7, s6
                  mulhsu       a5, a4, a0
                  div          a5, ra, ra
                  rem          a1, ra, a0
                  mul          s9, a1, a1
                  mulhu        s9, s6, ra
                  divu         s9, s6, ra
                  nop
                  auipc        s6, 627432
                  div          a5, gp, gp
                  mulh         s6, a5, s6
                  rem          s6, a0, a7
                  nop
                  div          a1, ra, a7
                  mulhsu       a7, a4, ra
                  addi         s6, s9, 1979
                  remu         s7, ra, s6 #end riscv_int_numeric_corner_stream_4
                  c.and        a5, a0
                  srl          s11, a4, a2
                  c.addi       t6, -1
                  sltiu        t2, a2, -1615
                  addi         a3, a6, 1558
                  nop
                  and          t6, t6, s3
                  or           a5, s0, t3
                  sltu         t6, t6, a2
                  remu         s11, ra, a6
                  sra          a5, s11, s0
                  srli         a5, zero, 30
                  sra          t3, tp, a7
                  c.srai       s1, 4
                  lui          s11, 448954
                  c.and        a3, s1
                  mulhsu       a5, a1, a2
                  c.lui        s7, 19
                  sub          zero, s2, a1
                  srai         t5, t1, 19
                  remu         s3, t3, t0
                  sltiu        a0, s6, 1542
                  rem          s3, sp, a5
                  or           a1, s6, s3
                  or           t0, a2, s1
                  remu         zero, s5, t0
                  nop
                  andi         s5, a5, -840
                  c.or         s1, a2
                  c.slli       a5, 10
                  c.add        a0, t5
                  and          a3, s7, s10
                  addi         s5, gp, 321
                  sltu         tp, s7, t2
                  sub          a3, a1, t4
                  srl          t5, a4, s4
                  srai         t3, s9, 7
                  c.mv         s9, t1
                  c.addi       s0, 15
                  c.sub        a4, a0
                  slli         s7, a2, 16
                  c.sub        a5, a5
                  remu         a4, a5, ra
                  sltiu        t2, a4, 663
                  c.addi       s1, 23
                  xor          zero, s1, t1
                  c.or         a0, s1
                  c.or         a4, a2
                  c.slli       s3, 30
                  c.add        a1, sp
                  div          zero, a7, a4
                  c.lui        a0, 19
                  mul          a2, s8, s2
                  c.sub        a3, a4
                  mulhu        tp, t6, s3
                  mulhsu       t3, ra, t3
                  xor          t0, s0, ra
                  c.lui        t2, 21
                  addi         s9, s10, -1534
                  slti         a7, s6, -1779
                  andi         t3, a6, -47
                  mulh         a5, t2, t3
                  and          s5, s9, tp
                  auipc        t6, 590751
                  sltiu        zero, sp, -278
                  and          s5, t5, t4
                  sub          a7, zero, a3
                  rem          a3, a5, a6
                  auipc        a3, 967898
                  c.addi       a2, 12
                  or           t5, a0, a3
                  divu         a4, s9, a6
                  remu         t0, s1, t2
                  auipc        a0, 93636
                  remu         t1, t5, s2
                  c.addi       s6, -1
                  andi         a6, s10, 662
                  sra          s0, s5, s10
                  addi         zero, t6, 221
                  nop
                  rem          zero, tp, t3
                  srai         s8, s3, 16
                  c.xor        a5, a3
                  c.srli       a3, 28
                  c.add        a1, s8
                  divu         s3, s5, a3
                  add          s3, a5, s1
                  c.mv         s1, t2
                  div          t6, s4, s3
                  c.add        s0, t4
                  srli         a0, zero, 28
                  auipc        a2, 776002
                  c.and        a4, s1
                  sll          zero, ra, s8
                  c.add        t5, a2
                  c.andi       a5, 15
                  c.srai       a4, 14
                  lui          t2, 197274
                  srli         a0, a0, 22
                  slti         a1, s6, 78
                  c.li         t5, 18
                  mulh         s8, t6, a1
                  srl          a6, s6, sp
                  c.lui        ra, 7
                  c.or         a0, s0
                  remu         s6, s4, a0
                  c.xor        a2, s1
                  c.mv         a2, t0
                  sra          s11, a7, gp
                  slti         t2, t3, -352
                  sltu         t4, t3, a3
                  c.or         s1, a3
                  mulhsu       t1, a3, s0
                  and          s9, s9, t1
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_34
                  li           ra, 0xeb816f0
                  li           s5, 0xa96cfe1
                  li           a2, 0xa5f4f925
                  li           s4, 0xffffffff
                  li           t2, 0x0
                  li           a6, 0x71c1eea6
                  li           t0, 0xffffffff
                  li           a0, 0xffffffff
                  li           a7, 0x80000000
                  add          a6, ra, t0
                  mulh         a7, a6, s4
                  remu         s5, s4, s5
                  mulhu        a5, a7, a2
                  div          s4, a0, s4
                  add          a5, a6, a6
                  div          s5, t2, a6
                  rem          a5, a5, ra
                  remu         a0, s5, a2
                  sub          a2, s4, s5
                  nop
                  remu         a6, a6, t0
                  lui          s5, 388171
                  rem          a7, a5, a2
                  addi         a2, a7, -592
                  mulhsu       t0, a5, ra
                  rem          a2, a2, t0
                  add          s5, s4, a5
                  mulhu        ra, a2, t2 #end riscv_int_numeric_corner_stream_34
                  xor          s1, s2, gp
                  slti         a6, t3, 358
                  slli         s11, a5, 20
                  srli         s0, a0, 19
                  or           zero, a1, s11
                  and          t2, t5, zero
                  rem          a0, s3, s11
                  c.lui        s9, 8
                  mul          t6, s3, s8
                  c.addi       a6, 2
                  c.sub        s0, a0
                  c.nop
                  slli         t5, s8, 26
                  c.nop
                  andi         s7, s8, -1776
                  mulhsu       s8, zero, a7
                  c.mv         s0, a0
                  xor          a6, s10, s4
                  auipc        s6, 460299
                  slli         s11, gp, 6
                  mul          s6, s6, s5
                  mulhsu       tp, t4, a2
                  srl          t2, a7, gp
                  sra          s3, s9, sp
                  c.add        s1, ra
                  lui          t3, 924411
                  div          a4, a6, t2
                  sra          a6, a5, t1
                  ori          t0, s8, -171
                  c.lui        s11, 3
                  mulhu        t1, s7, zero
                  c.sub        a4, a1
                  c.xor        s0, a3
                  c.slli       a4, 28
                  c.lui        a2, 9
                  slti         s11, t6, -563
                  sltiu        t1, a2, 62
                  c.addi       s0, 13
                  sra          a2, s9, s2
                  c.andi       a3, -1
                  xor          a0, t2, t4
                  add          t2, tp, a0
                  divu         s11, t2, a5
                  nop
                  c.add        a0, s6
                  divu         zero, t3, t2
                  xor          a3, t4, t1
                  srli         a3, s10, 25
                  slli         s8, s7, 14
                  slt          s5, t3, s11
                  div          t0, a3, a3
                  mulhsu       a3, s0, a0
                  add          gp, s11, a4
                  xori         t0, a5, 419
                  c.li         ra, 21
                  or           a6, t6, s0
                  rem          zero, gp, a5
                  mulhu        a6, a3, t2
                  divu         s1, a6, s0
                  rem          t1, sp, t5
                  c.xor        s1, a4
                  sra          zero, ra, t3
                  divu         s11, t4, s11
                  slli         a7, tp, 24
                  srli         t5, a3, 15
                  remu         s9, gp, t5
                  srli         s11, t4, 16
                  c.add        s1, t3
                  srli         t5, s6, 14
                  slli         t6, t5, 16
                  add          ra, ra, t0
                  nop
                  sltu         s4, s2, s5
                  c.nop
                  remu         t5, a5, s3
                  slti         gp, a7, 1155
                  ori          s0, s5, 1011
                  add          ra, t0, tp
                  xori         gp, a2, -2001
                  sltiu        zero, gp, -1164
                  c.or         a2, a3
                  li           s6, 0xcd17d90a #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x37b11c85
                  li           s9, 0x80000000
                  li           t1, 0xffffffff
                  li           t3, 0x80000000
                  li           s11, 0x0
                  li           t2, 0x80000000
                  li           s4, 0x49e4ca4d
                  li           t4, 0xc2ab8e3e
                  li           t6, 0xffffffff
                  div          t3, t3, t2
                  lui          s9, 849736
                  div          t1, a6, s9
                  lui          s9, 433630
                  mulhu        s9, t4, s4
                  sub          s11, t6, t3
                  mulhu        s6, t4, s11
                  auipc        s11, 447080
                  div          t1, t2, s9
                  remu         s11, t1, s11
                  sub          s9, t3, t1
                  lui          s11, 109312
                  add          a6, s6, t4
                  rem          s4, t1, t6
                  divu         t4, t6, s9
                  auipc        t3, 476943
                  mulhsu       s4, s4, s6
                  mulh         s4, t2, t3
                  addi         t2, s11, -1602
                  sub          s11, t2, s9
                  rem          s6, t2, t1
                  mulhsu       t3, s9, s11
                  addi         t3, t4, 1423
                  div          s4, a6, t4
                  mulhsu       t6, t4, t2
                  addi         s11, s4, -1211
                  mulh         t4, s11, t3
                  mul          a6, t1, s9
                  mulhu        a6, t4, t3 #end riscv_int_numeric_corner_stream_14
                  sltiu        s6, tp, -1496
                  sub          t6, s10, a3
                  c.li         a3, -1
                  sll          a4, t4, s5
                  sra          t3, s2, t6
                  nop
                  or           s8, zero, s6
                  srli         a5, tp, 0
                  c.nop
                  c.nop
                  c.li         t4, 30
                  srl          s7, zero, a7
                  slli         t4, t0, 12
                  andi         t0, s11, 1084
                  c.and        a2, a5
                  mulh         ra, s1, ra
                  rem          s8, ra, s11
                  c.srai       a3, 25
                  xor          a3, s4, s8
                  addi         a1, s3, 1742
                  c.xor        a2, s1
                  or           t1, a1, t1
                  sll          s5, a0, a5
                  c.andi       a2, -1
                  c.or         s1, a0
                  slli         t0, t6, 4
                  c.xor        a2, a1
                  mul          t1, a0, a4
                  sra          gp, t1, s4
                  c.li         t3, 27
                  c.srli       a2, 4
                  lui          s11, 274468
                  c.lui        gp, 5
                  c.srai       a1, 25
                  c.or         a2, a3
                  c.li         a7, 25
                  c.srli       a5, 23
                  srl          s8, gp, s0
                  rem          s3, t6, a1
                  auipc        a1, 131217
                  or           a0, zero, t1
                  c.andi       a1, 26
                  divu         s4, s5, ra
                  lui          s6, 579284
                  slli         t3, t1, 12
                  c.srai       a1, 2
                  mulh         s5, a2, a2
                  or           s6, t0, s9
                  srl          t6, s11, s6
                  sll          s5, a0, a6
                  slti         ra, s1, -1476
                  mul          a1, ra, s0
                  and          a5, s10, t2
                  c.srli       a2, 6
                  xor          s4, s8, zero
                  div          a3, a2, s6
                  c.mv         a2, s11
                  addi         a6, t6, -1878
                  c.nop
                  ori          zero, s1, 327
                  c.xor        a0, a4
                  slt          s8, ra, t1
                  slti         t5, a1, -807
                  c.xor        a4, a1
                  sub          t0, s11, s11
                  c.addi       gp, -1
                  andi         a6, t6, 435
                  c.li         s8, -1
                  slli         a0, t1, 25
                  sub          s11, a2, a6
                  srl          a1, a0, gp
                  c.mv         t0, a4
                  lui          gp, 514060
                  srli         t0, a2, 18
                  c.slli       t0, 1
                  c.or         a3, a5
                  mulhu        t0, a7, t4
                  nop
                  lui          zero, 313593
                  slti         t1, a6, 805
                  c.srai       s0, 19
                  c.or         s1, a4
                  sub          t4, t0, s1
                  xori         t2, s6, 1129
                  and          a6, a3, s10
                  c.mv         s3, a3
                  sltu         s4, zero, s9
                  lui          ra, 351542
                  and          tp, a1, a2
                  c.addi       s6, 24
                  lui          s11, 78271
                  mulh         s9, ra, s3
                  srai         a0, s9, 5
                  nop
                  c.slli       a3, 19
                  and          s0, t3, s10
                  c.xor        a0, a0
                  sra          s3, a7, a4
                  lui          s0, 652068
                  add          s5, s4, gp
                  srai         s0, s0, 2
                  c.slli       a5, 12
                  c.slli       t3, 6
                  mul          a4, zero, s3
                  sra          t2, t0, a1
                  nop
                  nop
                  sra          a5, zero, a3
                  mulh         t4, zero, a3
                  c.or         a2, s0
                  c.or         a4, a4
                  lui          a1, 117282
                  addi         a2, s6, -982
                  nop
                  auipc        t1, 326271
                  mulh         t5, t5, a0
                  sltiu        a1, s4, -1688
                  c.nop
                  lui          s5, 250887
                  mulh         t3, a2, zero
                  mul          s0, s10, a4
                  nop
                  c.srli       a5, 21
                  c.or         s0, a1
                  mulhsu       s3, a4, t3
                  or           t1, s11, s1
                  mulh         gp, a6, s2
                  nop
                  c.sub        a5, s1
                  ori          a0, a0, -986
                  or           s3, t3, a2
                  c.li         a5, 7
                  mulhsu       a6, t0, s4
                  rem          a0, a4, a4
                  or           a7, s3, a6
                  c.lui        s6, 10
                  sub          a3, a2, zero
                  c.srai       s0, 28
                  c.mv         a0, t6
                  mul          s6, s11, s9
                  c.srli       s0, 27
                  div          t2, a5, t3
                  remu         s6, s6, s1
                  c.lui        s3, 9
                  sll          t4, t0, s7
                  nop
                  mulh         s4, s5, a0
                  mulhsu       a7, a5, t1
                  xori         s8, t2, -1347
                  add          t2, zero, a6
                  remu         s3, s3, s9
                  divu         a6, tp, a1
                  sub          s1, s0, s0
                  srai         t6, a1, 23
                  c.add        s0, s0
                  mulhsu       s8, s8, s11
                  c.sub        a5, a0
                  and          s11, a3, t4
                  nop
                  lui          ra, 381072
                  c.mv         t5, s10
                  c.add        s11, s4
                  c.lui        a1, 21
                  sltu         a6, t6, t6
                  remu         s9, a2, s4
                  slti         zero, s11, -244
                  c.xor        a5, a4
                  sra          t0, a1, s10
                  mulh         a0, a6, sp
                  div          a0, s8, a1
                  c.andi       a2, -1
                  c.add        t1, s7
                  sll          t5, s6, s7
                  c.sub        a5, s1
                  mul          t1, sp, t0
                  sltiu        s8, s11, -390
                  add          s3, s6, s11
                  or           a0, a6, s1
                  c.and        a2, a1
                  or           a5, s7, t3
                  c.and        s0, a4
                  div          a2, t5, t6
                  mulhsu       s9, ra, a5
                  sra          tp, t2, a6
                  c.mv         a3, a0
                  c.slli       s8, 29
                  mulhsu       s6, a7, s10
                  c.slli       s8, 22
                  remu         a0, s11, t0
                  mulh         a6, s4, t0
                  mulhsu       a4, a4, s10
                  divu         t0, ra, s6
                  mul          t2, s5, s4
                  mulhsu       a3, a6, a5
                  c.srli       a1, 11
                  c.srli       s0, 13
                  or           t1, s4, t6
                  c.nop
                  c.lui        s3, 17
                  xori         a6, t2, -1886
                  c.mv         a7, a7
                  srai         t1, a5, 19
                  rem          s11, tp, s0
                  c.add        a2, s6
                  c.li         a7, -1
                  c.lui        ra, 16
                  mulhu        s1, a6, s7
                  divu         s8, a5, a2
                  slt          s6, ra, a1
                  sub          t5, tp, a4
                  slt          t5, a4, s7
                  c.sub        a2, a2
                  c.slli       s0, 10
                  srai         t1, a7, 7
                  c.andi       a5, 23
                  c.and        a4, a1
                  div          t5, s10, a1
                  c.nop
                  sltiu        s0, s8, 33
                  sltiu        gp, t3, -733
                  addi         s6, a2, -1048
                  c.nop
                  rem          a6, s3, t3
                  mulh         a6, a1, t1
                  mulhu        gp, s8, s4
                  sra          s7, a2, a6
                  xor          s3, a0, a6
                  rem          a3, t1, a4
                  srl          s3, t0, s9
                  c.sub        s1, a0
                  remu         t0, a7, t0
                  mul          gp, s3, a3
                  sltu         s7, a6, a7
                  c.xor        a3, a4
                  add          s9, tp, zero
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_28
                  li           tp, 0x0
                  li           s8, 0x0
                  li           t2, 0xe3b17689
                  li           a6, 0x80000000
                  li           s0, 0x0
                  li           t4, 0x80000000
                  li           ra, 0x11606f6b
                  li           s3, 0x80000000
                  li           a5, 0xffffffff
                  divu         t4, tp, a5
                  add          s0, a6, s0
                  remu         t4, s0, s6
                  sub          s6, s6, s6
                  mul          s0, ra, a5
                  mulhu        t4, s8, t2
                  div          a5, t4, s6
                  auipc        s6, 890829
                  lui          s6, 812948
                  remu         s8, tp, a6
                  add          a6, s3, t4
                  mulh         a6, a5, ra
                  lui          s8, 122824
                  remu         t4, s8, t2
                  add          s3, a5, s0
                  div          t2, tp, tp
                  remu         s3, ra, a5
                  lui          a6, 734539
                  auipc        s3, 973078
                  sub          a5, ra, s8
                  nop
                  mul          s3, tp, s8
                  mulh         s3, tp, tp
                  div          ra, s6, ra
                  mulhsu       ra, s6, s0
                  div          s6, s0, s6
                  mulh         s3, t4, t2
                  lui          ra, 605514 #end riscv_int_numeric_corner_stream_28
                  remu         tp, a5, a1
                  c.lui        t1, 19
                  c.andi       s1, 3
                  c.li         t4, -1
                  addi         t2, t1, -205
                  sra          t5, ra, a0
                  c.sub        a1, a2
                  slli         t5, a7, 9
                  addi         a5, zero, 1850
                  slt          a4, a4, a6
                  slli         s7, s8, 24
                  mulh         s4, s5, a7
                  c.slli       tp, 10
                  rem          a2, t3, sp
                  slti         t0, t4, -1340
                  c.add        ra, s7
                  xori         gp, s5, -769
                  andi         s7, s9, 2024
                  ori          s3, a2, -1514
                  c.slli       t2, 16
                  divu         t1, a0, a0
                  mulh         a5, s11, s6
                  mulhu        a1, a2, t3
                  add          t4, t5, a0
                  mulh         s3, s1, s11
                  c.sub        s1, a3
                  c.and        s0, a5
                  srai         t0, a4, 17
                  ori          t3, a5, 1751
                  slti         s8, s10, 1803
                  sltiu        a4, s8, 456
                  c.srli       a0, 19
                  or           t3, a4, s7
                  c.li         ra, -1
                  sltu         zero, zero, zero
                  mulhsu       a3, a6, t2
                  slti         s5, t3, -1887
                  c.xor        a2, s0
                  lui          a1, 1012607
                  srai         t1, t3, 21
                  sra          t5, s4, t5
                  and          t4, s7, s5
                  c.or         a5, s1
                  sltiu        t4, s2, 384
                  remu         s0, a7, zero
                  srai         s0, sp, 14
                  mul          s6, zero, s2
                  sub          t0, s11, tp
                  c.mv         s7, s2
                  xor          t0, a7, t1
                  rem          s5, sp, s7
                  rem          t5, s3, s0
                  mulhsu       s11, s0, t0
                  c.li         s0, -1
                  slt          ra, a1, s8
                  c.lui        s8, 29
                  andi         s4, s3, 1556
                  sra          t2, s9, ra
                  xori         gp, s1, 1043
                  sub          t5, s11, gp
                  c.andi       s0, -1
                  auipc        zero, 758982
                  srl          s11, a3, s11
                  sra          s5, s8, s0
                  sltiu        t3, s2, -967
                  c.sub        a4, a3
                  c.mv         s5, a2
                  c.li         a0, -1
                  sra          s3, s3, s3
                  mulhu        t1, t2, t3
                  srli         s4, a0, 8
                  andi         s8, t4, 891
                  mul          a3, gp, s7
                  or           a6, a7, s1
                  slt          t1, tp, a6
                  c.lui        a6, 5
                  c.addi       s1, 8
                  c.add        s5, t1
                  c.srli       a2, 25
                  slt          a0, s4, a4
                  mulh         t6, t2, s5
                  rem          a1, a1, a3
                  slt          a4, a6, s11
                  sltu         t5, s10, a5
                  srli         a3, s7, 22
                  divu         s5, s10, a1
                  c.andi       s0, -1
                  c.add        s7, a2
                  srl          s7, a1, s0
                  c.nop
                  srli         t5, t6, 20
                  c.lui        t0, 7
                  andi         s9, a5, -580
                  mul          ra, s6, s3
                  mul          gp, t0, a6
                  sll          t3, t5, s5
                  sltu         a1, s6, zero
                  mulh         s7, s0, a7
                  mulhu        a5, a0, t3
                  sltiu        s3, t2, -2035
                  c.and        a2, a1
                  or           tp, tp, s3
                  c.or         s1, a4
                  c.lui        t6, 21
                  sltiu        s6, t3, 2004
                  addi         a2, s11, 486
                  nop
                  andi         a5, s3, 904
                  auipc        s1, 996629
                  xori         s7, t6, -710
                  slt          s4, s11, a4
                  sub          s9, s1, s8
                  xor          s9, a6, a6
                  c.srli       s0, 17
                  sra          a6, gp, t4
                  andi         s5, s11, -1683
                  ori          zero, s1, 1462
                  div          a1, a5, s9
                  lui          t1, 725611
                  and          a4, t0, t3
                  sll          a0, a1, s11
                  or           t6, a2, sp
                  c.li         s11, -1
                  and          t1, s4, ra
                  lui          a7, 96952
                  c.li         s1, 2
                  auipc        t4, 70724
                  sltiu        a7, zero, -71
                  srai         s7, s6, 23
                  c.nop
                  remu         s1, s6, gp
                  sra          s6, a7, s6
                  c.or         s0, a2
                  c.sub        a0, s1
                  and          t4, s6, a5
                  mul          s1, a0, a2
                  sra          s4, s3, s9
                  srai         s8, s9, 18
                  nop
                  c.add        t5, t1
                  andi         t6, t3, 88
                  c.andi       a4, 11
                  andi         a3, a3, -392
                  c.add        t4, t3
                  c.srai       a3, 26
                  c.mv         a6, a3
                  remu         s3, t0, a0
                  c.and        a3, a5
                  c.mv         s1, s2
                  slli         t4, t5, 31
                  ori          s9, t0, 172
                  c.xor        a1, s0
                  c.slli       s9, 7
                  slli         a0, a4, 23
                  c.slli       t2, 16
                  mul          t1, sp, s6
                  xori         s11, sp, 705
                  mulh         a7, s1, a7
                  c.slli       s11, 28
                  c.sub        a0, s0
                  addi         t0, s7, 1783
                  c.and        a1, a4
                  c.mv         s6, t4
                  add          t1, t6, a0
                  lui          a6, 597167
                  add          t2, s4, s4
                  add          ra, s11, s4
                  sra          s0, t1, tp
                  mulhu        a5, a6, t5
                  sltu         a6, a6, zero
                  slti         tp, a4, 986
                  and          t6, ra, t4
                  c.mv         s1, t0
                  and          s7, tp, t4
                  div          t4, gp, s5
                  c.add        a1, a1
                  sltiu        s4, s1, 1013
                  c.lui        s6, 21
                  sra          t2, s2, a6
                  c.srli       a3, 24
                  divu         a5, a7, t5
                  c.li         a0, 16
                  c.andi       a4, -1
                  mul          t2, s4, a1
                  ori          t0, t5, -2019
                  xor          s6, s6, s8
                  lui          s0, 693274
                  sltu         s8, a7, t4
                  c.andi       s1, 15
                  c.addi       a2, 3
                  c.nop
                  sll          s1, s10, t5
                  and          s8, t4, t1
                  srai         s1, s5, 15
                  srai         s4, t4, 22
                  or           gp, a0, t5
                  rem          a1, t6, t0
                  c.addi       a0, 27
                  nop
                  c.nop
                  c.andi       s1, -1
                  nop
                  mulhu        t0, ra, s4
                  c.addi       s0, -1
                  sub          zero, ra, zero
                  slli         t2, a2, 27
                  add          t4, t2, t3
                  divu         gp, a3, t3
                  c.and        a1, s1
                  xori         a0, s5, 1198
                  srli         tp, s0, 17
                  div          s9, a3, s2
                  slti         tp, a6, -677
                  sll          ra, t6, a6
                  c.li         a4, 0
                  nop
                  slti         t4, s10, -248
                  c.add        t1, a3
                  rem          gp, s6, a0
                  srl          s0, a3, s0
                  mulh         s8, s4, s0
                  addi         s1, a1, 939
                  c.lui        t2, 15
                  c.or         a5, a0
                  div          s0, a3, s0
                  ori          s6, s11, -1554
                  c.addi       gp, -1
                  nop
                  mulhu        ra, s7, ra
                  rem          s11, s10, s4
                  and          a4, s11, t0
                  and          s3, ra, s5
                  srl          s0, t6, a1
                  div          t6, s4, a7
                  andi         zero, s2, 539
                  sltu         s0, tp, t5
                  nop
                  ori          t6, s5, -956
                  c.xor        a1, a5
                  and          t5, t4, s0
                  c.addi       s8, -1
                  mul          a3, a0, a6
                  addi         gp, a5, -679
                  srai         a1, sp, 1
                  sll          a7, s10, t2
                  slti         a7, s10, 1472
                  andi         s8, gp, -1780
                  rem          zero, gp, zero
                  c.add        t4, s3
                  c.add        gp, a1
                  c.add        a1, s10
                  c.add        a6, t6
                  xori         t1, s1, -389
                  div          zero, t6, s10
                  c.li         a0, -1
                  slt          a2, a6, s10
                  divu         s7, s10, ra
                  nop
                  mulh         s11, s3, s4
                  sra          t3, s2, a5
                  c.srai       s1, 5
                  srai         a6, a3, 21
                  slli         a0, s2, 2
                  sll          s1, a2, tp
                  mulhsu       t6, s4, s5
                  slti         ra, zero, 1418
                  nop
                  mulhsu       a3, s0, t6
                  rem          a0, sp, a2
                  c.mv         a0, tp
                  addi         t6, a4, 2027
                  div          s1, t3, a5
                  div          a7, sp, zero
                  mulh         s1, a6, a0
                  slli         s5, s2, 27
                  srai         s3, t3, 0
                  lui          a3, 552786
                  mulhsu       ra, a3, a1
                  andi         s5, a4, -518
                  divu         s3, s9, t3
                  c.lui        s6, 6
                  c.addi       a0, -1
                  mul          a6, s3, a5
                  and          ra, s10, s8
                  ori          zero, t4, -1254
                  sub          a0, s10, s11
                  c.lui        s9, 25
                  remu         ra, s0, t2
                  c.addi       gp, -1
                  c.addi       a0, -1
                  c.nop
                  sll          t6, s9, a5
                  mulhu        zero, t0, s11
                  c.li         s4, -1
                  sll          a3, gp, s0
                  srli         s3, a0, 6
                  c.xor        a3, a1
                  c.mv         a6, a5
                  addi         a0, s5, 1413
                  addi         zero, s10, -964
                  or           s6, t2, s8
                  sub          t1, sp, ra
                  remu         t1, s7, s10
                  ori          ra, sp, -244
                  c.li         t5, -1
                  auipc        ra, 351381
                  c.addi       s1, -1
                  c.and        s0, a5
                  slti         s8, t0, 1356
                  c.srai       a3, 10
                  addi         t4, zero, 455
                  c.slli       ra, 23
                  c.lui        s11, 16
                  sltiu        s7, zero, 278
                  divu         t5, a5, a7
                  mulhu        s5, t3, s1
                  rem          s7, t0, a7
                  rem          s3, sp, t3
                  remu         a3, a3, gp
                  srai         gp, s5, 4
                  c.nop
                  mulh         t6, s9, s6
                  sub          a5, t1, s1
                  mulh         s5, t0, s4
                  sltu         t3, a1, a1
                  sra          t5, a0, s2
                  sub          zero, a1, s1
                  c.and        a4, a2
                  mul          t3, a4, s3
                  mulh         t3, t4, tp
                  mulh         ra, t0, s6
                  c.sub        a1, a5
                  addi         s11, t1, 1969
                  c.slli       gp, 22
                  sub          s6, a6, zero
                  divu         t3, a4, t3
                  xori         t5, ra, 1827
                  rem          s0, s1, s4
                  slti         a0, s7, -861
                  c.sub        a1, a4
                  mul          s8, s7, t2
                  c.add        t1, s10
                  srai         s8, t0, 24
                  c.and        a1, a1
                  auipc        t0, 421209
                  c.or         a2, a3
                  mulh         gp, t3, a6
                  rem          s6, s10, t1
                  rem          s11, s3, gp
                  or           t4, s8, sp
                  slti         a1, a0, -1438
                  sltu         tp, t3, s10
                  and          s1, gp, s8
                  or           a6, tp, a5
                  c.lui        s7, 25
                  c.srli       s1, 7
                  add          a6, s11, a2
                  slli         a0, s9, 28
                  remu         a4, gp, t3
                  or           a5, t3, t3
                  c.lui        s9, 13
                  rem          zero, ra, zero
                  and          a6, gp, a5
                  divu         s7, t3, a1
                  div          a7, s11, gp
                  c.mv         s3, t5
                  c.addi       t5, 19
                  srl          t4, a7, s8
                  c.lui        t1, 1
                  c.add        s1, s6
                  mulhsu       s7, t6, t5
                  slt          zero, a1, s9
                  and          t1, a7, a5
                  mulhsu       s5, s6, s7
                  rem          s0, zero, t6
                  nop
                  slli         t2, a3, 12
                  sltu         s0, gp, zero
                  srl          s3, t4, t3
                  c.slli       s4, 29
                  lui          t3, 710582
                  slti         s1, s9, -125
                  c.addi       a0, -1
                  mul          s3, gp, gp
                  ori          a0, ra, -768
                  slti         a3, a4, 1090
                  mulhu        s3, a4, t1
                  srai         zero, s6, 0
                  nop
                  c.mv         a5, gp
                  mulhu        s8, a0, tp
                  xori         gp, a6, -2040
                  xori         s6, s4, 1900
                  div          t6, sp, s9
                  c.sub        s1, a3
                  lui          s9, 319122
                  c.mv         s5, a7
                  sll          a5, t3, t0
                  remu         s3, s0, s9
                  xori         tp, zero, -1404
                  c.li         gp, 7
                  slt          s1, s7, s8
                  sll          t1, a6, s0
                  divu         a6, s4, s10
                  divu         s3, s9, zero
                  sub          s9, t5, t0
                  sltu         t5, a2, a7
                  slti         s3, a2, 239
                  c.srai       a4, 6
                  c.nop
                  slt          gp, s1, s6
                  sll          t4, a0, t0
                  srl          t3, a4, s3
                  c.or         a0, a4
                  c.nop
                  c.add        a6, s6
                  divu         a3, s3, s11
                  sltu         a5, a3, s3
                  xor          t2, tp, s0
                  sll          a4, ra, a3
                  mulh         a6, a5, s0
                  sltiu        a6, s3, 695
                  c.or         a4, a1
                  c.nop
                  c.and        s0, a0
                  andi         a2, t3, -396
                  mul          s1, s3, s7
                  slti         a6, t3, 309
                  c.slli       tp, 24
                  auipc        a1, 51267
                  c.mv         a4, t6
                  srl          t3, s9, s10
                  andi         a3, t0, 2011
                  c.or         s1, s0
                  slli         s9, ra, 28
                  srai         gp, s6, 16
                  add          s9, a7, a7
                  c.or         a1, a4
                  and          s7, t1, sp
                  rem          t5, s0, ra
                  div          s1, s3, a1
                  mulh         t4, s0, a7
                  c.add        a4, s3
                  add          s9, t1, s5
                  srli         zero, s10, 21
                  nop
                  mul          a2, a2, s10
                  mul          t4, t2, a1
                  sub          s6, s9, s5
                  xori         gp, ra, -718
                  auipc        t1, 731827
                  c.nop
                  rem          gp, a3, s11
                  sra          s11, s9, s6
                  c.add        s1, a7
                  sltu         a3, gp, t2
                  c.sub        a4, a4
                  c.add        ra, a0
                  c.sub        a0, s0
                  xori         t6, s11, 905
                  c.srai       a4, 5
                  rem          t1, a2, s6
                  ori          a5, t1, -808
                  sra          s1, s8, tp
                  srli         s1, t5, 10
                  mulhsu       s7, a1, t0
                  andi         a0, a5, -998
                  c.li         s3, -1
                  divu         s5, a1, s4
                  sra          ra, s2, s3
                  sra          s7, gp, sp
                  div          t1, tp, t4
                  divu         a0, s4, s5
                  auipc        t2, 930421
                  andi         gp, a4, 351
                  slli         t2, s2, 19
                  c.xor        a2, a1
                  add          t2, s2, a2
                  c.sub        a0, a3
                  srli         s8, a0, 27
                  ori          t5, s3, -716
                  sltiu        s6, s5, 136
                  andi         gp, t2, 1479
                  addi         s3, a6, -1296
                  sltiu        zero, s5, 1840
                  c.xor        s0, a4
                  c.add        s6, s0
                  c.and        a1, a0
                  nop
                  c.lui        s0, 27
                  c.srli       a3, 20
                  rem          a6, t6, a4
                  divu         a1, s1, s1
                  nop
                  c.li         t0, 10
                  c.sub        a0, s0
                  andi         t1, t2, 1332
                  c.li         s7, -1
                  srli         a0, s9, 7
                  remu         s8, t0, t2
                  xor          ra, tp, s2
                  c.mv         gp, s1
                  slti         t4, s1, -1114
                  xor          tp, a6, t1
                  slli         a2, t0, 19
                  auipc        s4, 353322
                  nop
                  auipc        s9, 157154
                  mulhu        s6, t6, sp
                  srai         s6, a6, 30
                  c.lui        s5, 3
                  slli         t1, s5, 23
                  c.srli       s1, 24
                  slti         t1, zero, 1526
                  srli         s0, s1, 28
                  c.mv         t0, a5
                  sll          gp, s7, zero
                  c.srli       a3, 30
                  and          a2, s11, t4
                  rem          t0, zero, t3
                  rem          s9, tp, s8
                  c.slli       s11, 18
                  div          s3, s0, a7
                  c.slli       t1, 17
                  or           a3, sp, a4
                  c.xor        a0, a3
                  slli         s1, a6, 22
                  c.add        s7, a5
                  and          s8, sp, s9
                  srai         s11, t1, 13
                  c.andi       a5, 2
                  sra          a0, a0, s2
                  or           t6, a6, t6
                  rem          s3, s7, tp
                  ori          s8, s3, -867
                  xor          a0, t6, a3
                  lui          zero, 270271
                  c.xor        a2, a5
                  c.nop
                  c.li         s9, 21
                  c.mv         s5, tp
                  c.or         a2, a2
                  sra          tp, s0, a5
                  sltu         a3, s6, a5
                  divu         s7, sp, a2
                  c.nop
                  sll          s8, s8, a6
                  div          s11, a1, t0
                  auipc        a2, 982582
                  sra          a2, s5, t1
                  slli         s9, s1, 12
                  srl          t2, s10, s8
                  mul          a6, t0, s2
                  auipc        s6, 704724
                  or           s3, t4, gp
                  lui          a5, 486891
                  or           s9, t0, ra
                  c.srai       a5, 12
                  sll          s6, a1, t3
                  mulhsu       s11, s5, ra
                  c.andi       a1, -1
                  slt          s8, a1, s7
                  sra          a6, s1, t4
                  lui          tp, 163849
                  slt          s11, t1, s6
                  c.srai       a5, 17
                  slti         t2, s3, 1961
                  c.slli       s9, 6
                  c.sub        a5, a4
                  sub          t5, t0, s1
                  c.slli       tp, 13
                  sra          s3, t3, tp
                  sra          a5, t0, ra
                  xor          s1, sp, t5
                  sltiu        ra, ra, 716
                  c.srli       a3, 21
                  c.srli       s1, 25
                  slli         a0, a0, 18
                  xori         a7, s4, -112
                  sll          a3, s6, ra
                  slti         s11, ra, 161
                  sltiu        s6, s9, 1880
                  c.mv         s4, s4
                  slli         a4, s6, 6
                  sra          t5, s0, t0
                  c.addi       a7, 19
                  c.or         a0, a2
                  c.srli       s0, 18
                  andi         t5, a4, -1092
                  mul          s7, s11, t3
                  slti         t5, a4, 1507
                  slli         a4, s6, 13
                  c.srli       s0, 2
                  sub          t0, tp, s6
                  c.andi       a4, -1
                  divu         t1, a7, t1
                  ori          s3, t4, -1582
                  c.mv         a7, s5
                  or           s5, s1, a6
                  remu         a4, zero, s0
                  c.xor        a2, s1
                  auipc        s1, 1019305
                  andi         a4, s8, 1014
                  c.nop
                  c.add        a7, gp
                  c.xor        a3, s0
                  c.li         s7, -1
                  c.addi       s7, -1
                  slti         gp, s1, -544
                  nop
                  srai         s7, a4, 9
                  sll          s3, t1, tp
                  nop
                  mulh         s8, t3, a4
                  slti         a4, a7, 1021
                  c.srai       a0, 7
                  c.slli       s11, 1
                  sub          t2, s1, s10
                  auipc        a2, 554708
                  c.and        a1, a1
                  divu         s9, ra, a3
                  c.or         a3, a3
                  xor          t2, s2, a7
                  slli         gp, t6, 22
                  div          a2, s11, gp
                  rem          a7, s9, s2
                  mul          t0, s8, s0
                  addi         a1, ra, -421
                  c.sub        s1, s1
                  and          s1, a7, s9
                  nop
                  andi         t5, s7, 872
                  c.li         s5, -1
                  nop
                  or           s4, a3, a0
                  rem          t1, gp, tp
                  c.li         t1, 19
                  c.lui        t4, 25
                  or           t4, zero, t3
                  sltu         s1, s8, s3
                  c.andi       a3, -1
                  mulhsu       a1, s1, s4
                  slli         s3, s1, 18
                  c.srli       a2, 8
                  mulhsu       t1, s3, tp
                  c.srai       a2, 19
                  and          t4, t3, s8
                  c.mv         t4, a5
                  c.lui        a4, 30
                  c.srli       a0, 25
                  xori         t4, s11, 1091
                  c.add        s8, s2
                  remu         t3, t0, a7
                  or           a5, s8, s2
                  c.mv         s0, a1
                  c.srli       s0, 18
                  andi         s8, a1, -551
                  c.addi       s8, -1
                  c.xor        a3, a3
                  c.andi       a4, 25
                  add          a5, a2, t2
                  c.xor        a2, a5
                  mulhu        s8, s0, tp
                  c.mv         s8, t4
                  sra          gp, t5, t5
                  srai         t4, a0, 12
                  sltiu        t6, t2, 1909
                  xor          gp, s3, s4
                  mulhu        s0, s1, ra
                  auipc        a0, 40362
                  or           s7, t6, t0
                  sltiu        a7, ra, 1870
                  c.add        tp, s3
                  c.lui        a0, 9
                  c.sub        a3, a1
                  ori          a1, s6, 132
                  c.li         s7, 15
                  c.lui        s8, 21
                  nop
                  xori         a0, s2, 650
                  slli         a6, s9, 6
                  sra          t1, s5, t2
                  sltu         t4, s1, s5
                  or           s7, t2, s2
                  or           ra, a3, t1
                  c.nop
                  or           a6, s10, zero
                  divu         t6, s1, zero
                  addi         tp, t0, -718
                  ori          gp, a1, -133
                  c.sub        a1, a0
                  c.add        s11, a5
                  c.nop
                  mulhsu       a1, a6, ra
                  auipc        tp, 251882
                  and          a2, s6, a7
                  c.slli       a0, 23
                  sra          s11, a2, t6
                  mulhu        gp, a2, a4
                  slt          a6, a3, gp
                  c.mv         s0, s11
                  lui          s8, 386578
                  rem          s4, a2, a0
                  lui          a0, 334932
                  lui          a7, 742817
                  and          a6, a4, t6
                  addi         t2, a5, 47
                  mul          t5, s8, s2
                  c.slli       t1, 29
                  andi         a4, a1, -72
                  div          t1, s0, a4
                  add          s9, zero, s3
                  c.andi       a5, -1
                  c.nop
                  c.add        tp, t3
                  c.srai       a2, 12
                  divu         s3, a4, s0
                  srl          s9, sp, s2
                  sra          s7, t0, gp
                  rem          s7, t2, s9
                  c.lui        a5, 24
                  sra          zero, t5, t6
                  sll          zero, a5, s1
                  and          s6, s7, s3
                  c.li         s5, -1
                  auipc        a5, 574643
                  mulh         t0, t1, t0
                  addi         s11, a3, 166
                  c.add        s3, a3
                  c.andi       a1, -1
                  c.nop
                  rem          t2, s6, s0
                  mulh         s9, s5, s0
                  sub          a6, t3, t2
                  and          t4, t6, a6
                  c.or         a5, a5
                  slt          zero, s7, tp
                  nop
                  div          s4, t6, s7
                  c.srli       a4, 2
                  xori         a1, s7, -1435
                  c.add        s1, a4
                  slti         t5, t0, 234
                  lui          gp, 676085
                  c.andi       a4, -1
                  c.srli       a2, 17
                  c.mv         s8, t3
                  sll          a6, a1, s4
                  c.slli       a6, 24
                  c.srli       a4, 1
                  c.addi       a3, -1
                  or           t3, s8, t2
                  add          a5, a7, a0
                  slt          s5, s6, s4
                  c.lui        t5, 14
                  auipc        tp, 689465
                  c.mv         t1, sp
                  slli         s8, a3, 22
                  c.and        a0, s0
                  mulhsu       gp, t0, a7
                  slli         a0, t4, 28
                  divu         gp, sp, a5
                  slli         s1, s3, 11
                  sra          s3, t1, a7
                  c.li         t5, -1
                  div          s8, a7, a7
                  c.nop
                  c.xor        a2, a0
                  nop
                  c.sub        a4, a3
                  auipc        s6, 409940
                  rem          ra, a5, a3
                  xor          t6, t0, t3
                  slti         t2, a0, 1281
                  sltiu        tp, s8, 1967
                  c.lui        s9, 1
                  andi         a7, t3, -1415
                  mulh         t0, a3, s4
                  mulhu        a0, t5, s7
                  divu         t0, a2, s11
                  c.andi       a2, 28
                  c.add        a6, t4
                  c.andi       a0, 5
                  mulh         zero, a1, gp
                  mulh         s9, s10, a4
                  slt          t5, t5, s7
                  srli         a1, ra, 28
                  c.and        a2, a3
                  slti         t3, ra, 421
                  andi         ra, s7, 1183
                  srai         a7, t3, 22
                  slt          a5, s3, a6
                  srai         a6, gp, 24
                  divu         a3, t4, tp
                  auipc        a5, 1005733
                  slt          a7, t3, ra
                  c.lui        s8, 13
                  and          s6, s7, s8
                  xor          a1, a4, s2
                  addi         t0, a3, -916
                  c.li         t0, -1
                  xori         a2, t5, -1583
                  srl          a0, gp, zero
                  xor          s9, a2, s11
                  sll          a5, t0, a3
                  sltiu        t6, s2, 715
                  sra          a7, t0, t0
                  c.addi       a7, -1
                  add          s7, t3, s4
                  c.lui        t5, 16
                  sltu         s8, zero, t6
                  slt          a3, s11, t0
                  andi         a4, t0, -1859
                  c.xor        s0, a0
                  c.sub        s1, a0
                  andi         a7, s10, -915
                  c.and        a2, s0
                  addi         a5, s7, 1068
                  addi         t3, s2, -1359
                  sub          s5, s5, a0
                  srli         a6, a7, 27
                  slli         t0, t2, 14
                  c.andi       a1, 29
                  add          gp, t5, a6
                  c.lui        s1, 26
                  srli         s7, sp, 23
                  srai         a4, t0, 14
                  remu         t5, a3, a3
                  remu         t2, s6, s9
                  nop
                  remu         t3, s4, s0
                  ori          t1, a2, -729
                  and          gp, t6, gp
                  andi         a3, s5, -47
                  rem          t4, s0, gp
                  c.srli       s1, 11
                  srl          tp, t3, zero
                  c.or         a5, s0
                  c.mv         s3, a7
                  xori         a7, zero, -53
                  xor          t0, s7, t0
                  rem          a0, t1, t5
                  mul          s6, ra, t1
                  xor          a0, s1, t3
                  c.addi       s3, 22
                  slti         t6, a0, -1885
                  mulhu        s1, s9, s9
                  sltiu        tp, t3, -1800
                  c.srli       a1, 14
                  and          ra, zero, s6
                  auipc        a2, 98919
                  c.xor        a3, a0
                  nop
                  divu         s11, ra, s9
                  c.lui        tp, 26
                  slt          s11, s9, a2
                  remu         a5, t3, t0
                  rem          s8, s3, a5
                  rem          gp, s7, a4
                  mul          s6, t2, a7
                  c.li         a0, 13
                  slli         a6, a2, 11
                  slti         a4, a0, 1148
                  c.xor        a5, s1
                  sub          s4, a1, a7
                  c.srai       a5, 30
                  c.addi       a2, 13
                  c.mv         t1, a7
                  c.addi       a1, 3
                  c.mv         s6, tp
                  sra          s3, s4, s11
                  nop
                  c.addi       s7, 15
                  ori          s1, t6, -1415
                  sra          s6, a3, s5
                  c.sub        a2, s0
                  mul          t6, gp, s9
                  slli         s5, a7, 18
                  slli         a2, sp, 10
                  c.sub        a3, a5
                  sll          t3, gp, a2
                  rem          a1, a4, s11
                  c.slli       s1, 20
                  sltiu        a1, t0, -1321
                  c.and        a4, a2
                  ori          s8, s8, 280
                  c.andi       a2, -1
                  and          a0, s6, s0
                  slti         t1, a0, -506
                  xor          zero, t0, t1
                  c.lui        t4, 26
                  srai         t5, t3, 16
                  srai         tp, t6, 0
                  sll          t4, s6, tp
                  slti         s9, tp, 551
                  c.nop
                  c.xor        a0, s0
                  mulh         s11, zero, t3
                  c.andi       a1, 12
                  srai         t4, sp, 15
                  remu         s9, a2, s5
                  slt          gp, ra, s10
                  mul          s7, s7, t5
                  ori          s8, s4, 165
                  sub          gp, a3, a7
                  c.nop
                  divu         t3, a7, a6
                  sra          a6, t0, a4
                  rem          a0, t1, sp
                  c.sub        a1, s1
                  mulhu        s3, t3, t6
                  sltu         a7, s7, a1
                  srli         t0, a5, 0
                  c.li         a6, 24
                  add          t1, tp, tp
                  andi         s8, sp, -1311
                  xor          zero, ra, zero
                  mulhu        s9, ra, s9
                  c.mv         s11, s11
                  c.xor        a3, a3
                  c.srli       a3, 10
                  andi         s11, t2, -53
                  remu         s3, s10, zero
                  nop
                  c.xor        a1, s1
                  auipc        s7, 834507
                  mulhsu       a7, a6, s5
                  mulhu        s0, s5, gp
                  c.nop
                  and          t3, s11, t2
                  srli         s3, t6, 12
                  c.or         s1, s0
                  addi         a7, s8, 1321
                  addi         s11, a2, 434
                  lui          t6, 783055
                  c.mv         t5, s2
                  c.addi       s4, 17
                  remu         s4, a5, s3
                  xori         a4, a1, -1030
                  c.srli       a1, 19
                  c.andi       a1, 13
                  c.xor        a2, a3
                  srai         t5, s7, 20
                  srli         t5, t5, 0
                  c.addi       a7, -1
                  remu         t3, ra, s6
                  andi         s3, a2, 910
                  nop
                  andi         a7, s3, -1710
                  div          t2, t5, s2
                  sub          t6, ra, t4
                  xori         s1, s10, 1946
                  and          s6, s5, t5
                  c.nop
                  c.li         a0, 2
                  xori         s9, s10, 384
                  lui          t1, 641155
                  c.slli       s1, 5
                  c.slli       t6, 29
                  lui          a6, 185551
                  c.srai       a1, 7
                  divu         a0, t4, gp
                  c.srli       a3, 31
                  c.andi       a0, -1
                  sra          t5, s1, t5
                  sub          s11, a3, ra
                  slti         s5, sp, 395
                  c.li         ra, -1
                  c.addi       t5, 6
                  lui          t2, 690808
                  ori          s5, a6, 1469
                  sltu         s8, s4, s3
                  auipc        s9, 913235
                  c.xor        a5, a2
                  mul          s7, s1, t1
                  sltu         s1, s8, a0
                  c.sub        a4, a2
                  addi         a5, t1, 31
                  lui          a2, 243854
                  sltiu        a6, s1, 1509
                  c.andi       a1, 31
                  c.sub        a2, a4
                  auipc        s5, 347569
                  mulh         s11, s2, t0
                  srl          s5, t1, s0
                  c.or         a5, a4
                  or           s11, s5, sp
                  c.sub        s0, s1
                  srl          a5, t3, a2
                  c.xor        a2, a5
                  c.srli       s1, 2
                  mulhu        s9, s4, s1
                  slt          zero, a5, s2
                  mul          ra, a6, s4
                  mulhu        s3, s8, s8
                  div          s4, s2, a2
                  c.slli       s6, 19
                  c.add        t6, a1
                  c.mv         gp, s6
                  srl          s6, s0, a0
                  mulhsu       zero, tp, s10
                  remu         zero, s11, s9
                  c.srai       a0, 24
                  mulhsu       tp, a5, a5
                  addi         s4, ra, 345
                  mul          a5, ra, s5
                  addi         a5, t2, -1499
                  divu         s0, a6, s7
                  addi         ra, t2, 1578
                  lui          a3, 436826
                  slti         s3, s9, -35
                  srai         s4, s5, 7
                  c.and        a2, a3
                  sltu         t1, ra, a7
                  mulhu        t4, a2, s2
                  c.srli       a5, 23
                  mulhu        t1, zero, t3
                  sltiu        a3, a7, 47
                  mulhsu       s3, t5, s7
                  sub          t1, t3, t3
                  slt          s1, s11, ra
                  slli         t3, ra, 10
                  mulh         a3, a6, s2
                  and          s7, a2, gp
                  sltu         a1, s1, a4
                  lui          a3, 32675
                  c.or         s1, a2
                  or           zero, t4, s1
                  sll          s9, a2, gp
                  c.mv         t4, a6
                  mul          s8, gp, tp
                  sltu         s4, t5, s7
                  lui          t4, 446246
                  add          tp, gp, a5
                  xori         t5, s4, -13
                  sub          t6, t6, a5
                  c.slli       a7, 11
                  mulhu        t1, t0, zero
                  c.add        s6, t2
                  c.mv         s0, t5
                  mulhu        s6, sp, sp
                  auipc        tp, 300256
                  c.and        s0, a4
                  sll          s7, s2, a3
                  c.sub        a4, a5
                  mul          zero, a5, s3
                  c.lui        s9, 11
                  c.andi       a5, 19
                  div          ra, s3, t1
                  or           s4, s5, s9
                  c.addi       t0, 12
                  c.srli       a2, 27
                  c.slli       s7, 10
                  c.and        a0, a3
                  andi         t0, s1, 1765
                  divu         a1, s0, s3
                  sra          a6, a3, sp
                  sltu         t4, s4, t1
                  nop
                  mulh         ra, t1, s2
                  c.andi       a4, -1
                  sll          s6, t4, t1
                  nop
                  srl          a6, s4, t0
                  xor          s7, sp, s7
                  slti         s9, s5, 1576
                  c.add        ra, a3
                  srli         s9, a6, 0
                  c.nop
                  or           s1, t1, a2
                  c.or         a5, s1
                  andi         t6, s2, -1561
                  add          a2, s6, s7
                  c.slli       a1, 5
                  c.mv         a5, a1
                  add          zero, a0, s11
                  ori          a6, t1, 974
                  c.slli       s7, 28
                  and          ra, tp, s7
                  sltu         gp, t1, s3
                  auipc        s5, 774188
                  c.and        a5, a3
                  c.mv         t6, s2
                  c.mv         s1, t5
                  andi         a3, gp, 563
                  auipc        t3, 123694
                  mulhu        a5, t6, sp
                  slti         t4, a6, 1134
                  c.srai       a4, 14
                  mulh         ra, s5, t4
                  c.sub        a2, a1
                  mulhsu       t5, s11, t5
                  div          ra, t4, s5
                  rem          s6, s4, a6
                  addi         a1, s11, 1393
                  add          s1, s5, a0
                  xor          tp, s3, ra
                  remu         t5, sp, s2
                  mulhu        t3, s10, s3
                  srl          tp, a5, ra
                  slti         t6, s1, 143
                  div          a0, a7, s7
                  c.lui        s3, 22
                  c.srai       a5, 18
                  mul          s6, s5, a1
                  or           s3, s8, sp
                  c.xor        a4, a4
                  mulhu        t3, zero, s7
                  mul          tp, s3, ra
                  c.srai       a3, 5
                  sll          a6, s10, t2
                  sub          a1, a3, t5
                  rem          ra, a3, a0
                  slti         a4, s2, 1355
                  slt          t4, s10, a5
                  c.slli       s11, 31
                  andi         s1, s5, 2015
                  mul          t3, s10, sp
                  c.lui        s9, 29
                  c.xor        s1, a1
                  srai         s11, s5, 1
                  srai         s6, t1, 11
                  c.srli       a3, 1
                  mulhu        t1, tp, s11
                  or           a4, t0, a3
                  sub          s4, a4, t6
                  c.addi       s4, -1
                  addi         gp, tp, 484
                  xor          a4, zero, t1
                  and          s1, a1, a7
                  c.andi       a2, 31
                  add          s3, a1, t5
                  c.mv         a7, s9
                  srai         a1, tp, 18
                  c.or         s1, a5
                  sll          s6, s7, t3
                  srl          s8, sp, gp
                  lui          s0, 687268
                  srai         a2, a5, 24
                  c.add        t0, a0
                  remu         zero, tp, s0
                  c.srli       a1, 13
                  div          a2, a6, a5
                  xor          zero, s10, ra
                  c.add        gp, ra
                  mulhsu       t1, t5, a6
                  c.addi       s3, 9
                  mulhu        s3, a5, s6
                  sra          a7, a2, t5
                  c.add        s5, a5
                  addi         t4, s8, 1087
                  or           s3, a7, a5
                  slli         zero, s5, 25
                  c.lui        s11, 16
                  c.andi       s0, -1
                  nop
                  c.srai       s0, 29
                  remu         zero, s10, s8
                  c.andi       s0, -1
                  mulhu        s7, a0, a5
                  sltiu        t2, a3, 1067
                  mulhu        t6, gp, s5
                  sltiu        s4, tp, 1102
                  auipc        tp, 518061
                  srai         a2, t3, 4
                  c.addi       s9, -1
                  c.lui        t5, 14
                  sltiu        a4, a6, -238
                  c.sub        a2, a1
                  c.andi       a4, 26
                  c.or         a4, a3
                  divu         zero, s0, a6
                  sltu         t0, sp, s2
                  slli         t0, s10, 17
                  ori          a7, s0, -917
                  add          a4, s1, s7
                  c.sub        a3, a1
                  srai         s8, a4, 18
                  c.add        a2, a7
                  c.nop
                  xori         s9, t2, 1306
                  srli         t5, s9, 8
                  c.lui        s7, 8
                  div          tp, t5, t6
                  xor          t6, tp, s9
                  c.lui        t6, 9
                  sll          s0, a1, s3
                  sll          s8, s0, a0
                  srli         t1, s2, 27
                  c.lui        gp, 6
                  srai         s6, s0, 16
                  c.mv         s5, s5
                  c.srli       s1, 29
                  mulh         ra, a2, t3
                  auipc        s4, 843918
                  div          s0, tp, t1
                  divu         a5, s6, s9
                  c.mv         gp, t2
                  c.xor        s1, s1
                  c.lui        s6, 19
                  divu         a3, s6, s11
                  slti         a1, s5, 84
                  c.li         s6, 15
                  and          a6, gp, zero
                  srai         zero, t4, 10
                  nop
                  div          s7, s6, t5
                  sub          s6, s6, gp
                  slti         s1, s8, -375
                  div          s11, s8, ra
                  c.li         a5, -1
                  c.nop
                  c.sub        a5, a3
                  or           a1, a4, s4
                  srl          a5, s6, tp
                  divu         a7, s9, s9
                  c.andi       s1, 21
                  sub          s3, zero, s2
                  srai         a6, t3, 28
                  c.xor        a1, a3
                  auipc        t2, 632696
                  c.or         a5, a0
                  srli         a6, t1, 23
                  c.xor        a1, a1
                  c.xor        a5, a4
                  c.slli       ra, 25
                  mulh         tp, t3, s6
                  c.lui        s1, 6
                  auipc        t0, 990436
                  mul          s0, t4, t1
                  c.li         a0, -1
                  mulh         a1, s7, a7
                  rem          a4, a5, t1
                  c.slli       t5, 19
                  c.xor        s1, a2
                  c.or         a5, a5
                  rem          t0, s5, s4
                  c.xor        a2, a5
                  nop
                  remu         t3, s11, a3
                  or           t1, s11, s5
                  and          a6, a1, s7
                  ori          s7, a0, -1329
                  sra          s11, s9, s3
                  c.addi       s3, 17
                  andi         a4, a5, 1112
                  c.addi       a0, -1
                  ori          t5, s4, -1706
                  c.add        s11, ra
                  xori         t1, sp, 1836
                  c.sub        a2, a5
                  xor          t2, s8, a7
                  slt          s3, a1, s3
                  c.nop
                  xor          a2, ra, a7
                  c.or         a1, a0
                  auipc        a1, 210844
                  c.srli       s1, 1
                  c.sub        a1, a0
                  nop
                  srai         a6, ra, 12
                  div          s6, ra, s8
                  rem          s1, t5, s6
                  slli         s6, s2, 0
                  srl          gp, s11, s9
                  rem          s4, a4, a3
                  c.mv         t0, s8
                  rem          s3, zero, s1
                  addi         a3, gp, -1251
                  sltiu        s6, s3, 610
                  sll          t3, ra, sp
                  c.srli       a4, 6
                  mulhu        s0, s0, ra
                  sltiu        t6, t1, 1322
                  srl          s11, a6, t3
                  mulhu        t6, a5, s9
                  xor          s8, s6, s7
                  xor          t3, a1, s9
                  div          a4, s7, t2
                  c.lui        a4, 30
                  c.nop
                  and          a4, t3, s2
                  c.or         a1, a4
                  c.slli       a6, 27
                  c.nop
                  addi         t1, s5, 664
                  mulhu        tp, t0, a4
                  c.lui        s4, 6
                  c.add        a1, t1
                  divu         t2, a3, s6
                  c.mv         a5, sp
                  xor          a3, t0, s8
                  sltiu        s5, a6, -399
                  srl          t6, ra, gp
                  mulhsu       a0, t6, a0
                  rem          t3, s10, s1
                  nop
                  sll          t4, a5, s4
                  rem          s8, t3, a4
                  c.slli       s3, 8
                  c.or         a5, s1
                  mulhsu       zero, a5, tp
                  sltu         a2, a2, a1
                  and          s1, a0, a6
                  andi         s9, a1, 1197
                  and          s1, s3, t4
                  srli         t2, s9, 5
                  div          t5, t5, s4
                  sra          s6, gp, s6
                  li           t0, 0x507d5f40 #start riscv_int_numeric_corner_stream_16
                  li           a7, 0x0
                  li           a2, 0x0
                  li           t4, 0x80000000
                  li           s8, 0xbdc0c941
                  li           a0, 0x0
                  li           t5, 0x80000000
                  li           tp, 0x0
                  li           gp, 0x1e485180
                  li           a6, 0x80000000
                  add          gp, gp, a0
                  mul          a2, gp, s8
                  auipc        t0, 198473
                  div          t5, a7, a2
                  lui          t5, 811760
                  nop
                  lui          t5, 804286
                  mulh         a2, t5, a6
                  add          a7, tp, s8
                  mul          gp, t4, t4
                  addi         t4, t0, 1593
                  divu         a6, tp, a2
                  mulhu        a7, t0, a6
                  lui          t5, 247990
                  div          t5, t4, a0 #end riscv_int_numeric_corner_stream_16
                  c.xor        s1, a1
                  mulh         a6, a2, t5
                  or           s3, s6, s3
                  auipc        a1, 831541
                  slt          s1, t1, s0
                  mulhsu       s5, s9, s7
                  c.sub        a2, a2
                  mulhsu       t1, t1, a5
                  nop
                  remu         s8, s1, a6
                  xori         t3, gp, 1484
                  remu         s3, sp, zero
                  lui          zero, 535265
                  c.and        s0, a0
                  c.addi       s6, 24
                  c.slli       tp, 5
                  srli         s4, t2, 18
                  add          a6, s7, ra
                  c.mv         a1, a6
                  c.addi       a1, 15
                  sra          t5, t4, t3
                  add          a0, a6, s10
                  c.add        t5, s9
                  c.addi       t4, 11
                  xor          a0, t3, s9
                  srai         a6, ra, 10
                  c.lui        tp, 16
                  auipc        s7, 438179
                  sll          t0, ra, t6
                  addi         a5, t1, 566
                  c.addi       a5, -1
                  c.mv         s7, a0
                  c.addi       s6, -1
                  c.or         a3, s1
                  rem          t5, a3, gp
                  and          a7, s2, s9
                  nop
                  mulhu        t1, t0, gp
                  srai         s6, t6, 29
                  c.sub        a5, a0
                  sll          s0, a1, a3
                  c.sub        a1, s0
                  slt          s1, a7, gp
                  c.nop
                  c.sub        a1, a4
                  and          a3, a4, s3
                  mulh         s3, t0, s4
                  andi         t2, t6, -571
                  c.srai       a0, 26
                  c.addi       t6, 3
                  c.or         a1, s0
                  c.li         a2, 13
                  ori          s11, t1, 718
                  xor          s4, t3, s10
                  c.lui        t1, 9
                  c.add        t5, a4
                  xor          a4, t3, a3
                  ori          s11, ra, -1169
                  srli         t1, t0, 31
                  slti         t4, s4, -1445
                  srli         a5, a2, 19
                  srl          zero, a5, s9
                  c.xor        a1, s1
                  rem          s6, t4, ra
                  slt          s9, s9, t2
                  c.li         a1, -1
                  remu         s0, ra, s0
                  div          zero, s10, s10
                  c.nop
                  c.li         a5, -1
                  c.and        s1, s1
                  mulhsu       gp, s1, s9
                  c.srai       a3, 26
                  c.sub        s1, s1
                  xor          t1, s4, s1
                  c.add        a6, gp
                  divu         t5, tp, s5
                  c.addi       s1, -1
                  c.nop
                  srl          s1, t1, sp
                  or           t2, t4, s1
                  c.srai       a3, 13
                  andi         a0, t6, 1819
                  c.li         s7, -1
                  mulhsu       t1, t1, sp
                  mulhsu       t0, s11, t1
                  auipc        a1, 846868
                  c.and        a4, a4
                  nop
                  addi         t0, t4, 1343
                  andi         t0, s1, -672
                  sltu         s5, zero, a1
                  c.slli       gp, 20
                  xori         a3, gp, 1921
                  remu         s6, zero, a3
                  xori         a7, tp, 1289
                  mulh         a0, s5, s6
                  remu         a3, a5, s9
                  mulhsu       t1, a2, s3
                  c.lui        a4, 26
                  add          s8, t2, s10
                  c.or         a5, a3
                  remu         s8, s0, s1
                  sub          t2, t1, t1
                  mulhsu       gp, zero, ra
                  c.andi       a0, -1
                  c.add        t0, s5
                  or           s5, s2, s3
                  rem          zero, sp, t6
                  sra          a5, a7, t2
                  slli         t1, a5, 22
                  srli         zero, a7, 22
                  c.lui        a6, 19
                  c.slli       a1, 23
                  c.addi       a5, -1
                  c.add        s6, s10
                  c.srai       a3, 10
                  c.mv         gp, a6
                  andi         t4, tp, -200
                  slli         t0, t5, 4
                  slti         s11, s3, -1684
                  srai         t1, t1, 7
                  mulh         tp, t4, t6
                  sltiu        a5, t0, -222
                  remu         tp, a1, gp
                  addi         t4, s7, -2032
                  addi         tp, s9, -664
                  andi         a0, s10, 486
                  or           ra, s5, t2
                  srai         a3, a1, 13
                  mul          s6, tp, t4
                  addi         a1, a3, -1702
                  c.add        a0, s11
                  mulhu        a0, a4, s1
                  c.and        a1, a4
                  divu         s4, zero, s4
                  and          t5, a7, a0
                  c.srli       a5, 19
                  remu         t3, s5, ra
                  xori         s4, t0, -390
                  addi         a6, a5, 818
                  xor          a1, s8, t6
                  slli         t2, s3, 25
                  c.nop
                  c.mv         a6, s5
                  mulhu        s9, a0, s2
                  c.slli       s7, 31
                  c.add        s8, a0
                  c.mv         s11, s9
                  c.andi       a5, 19
                  xori         zero, s0, 717
                  srai         t2, s3, 30
                  ori          a2, s3, 1763
                  div          s3, a2, s3
                  div          s6, t3, a0
                  slli         a7, s3, 4
                  srl          s7, zero, s3
                  c.slli       tp, 20
                  c.mv         t6, t3
                  c.srai       a4, 17
                  sub          t5, t1, a7
                  srai         a3, t0, 13
                  rem          t0, tp, s1
                  c.andi       a3, -1
                  mulh         s5, s8, a6
                  c.nop
                  slti         t0, s1, -331
                  mulh         t3, s6, t2
                  lui          a4, 981007
                  c.and        a0, a3
                  srli         s5, s0, 31
                  divu         s9, a4, zero
                  div          t5, t6, zero
                  c.xor        a1, a4
                  c.or         a4, a3
                  add          a0, s0, a3
                  sll          s8, t6, s0
                  mulhsu       a1, a3, a2
                  sltiu        s1, a7, 536
                  srai         s6, t2, 17
                  xor          s6, a0, s6
                  c.mv         a2, s10
                  add          ra, s10, s6
                  ori          t2, s8, 1890
                  c.lui        gp, 28
                  sltu         s4, t2, tp
                  sll          a0, s0, a3
                  c.add        a0, a3
                  sub          s8, s7, zero
                  xor          t0, sp, s4
                  c.li         s11, 10
                  srli         s4, sp, 6
                  c.slli       a6, 17
                  mulhsu       a0, s5, t3
                  c.sub        s1, a3
                  c.nop
                  c.mv         s7, gp
                  c.addi       s11, 22
                  sltu         s8, s2, t3
                  c.li         a5, 9
                  c.sub        s0, a3
                  xor          a6, s10, s7
                  sub          a5, ra, gp
                  or           s9, s11, sp
                  c.add        a1, a3
                  c.li         s11, -1
                  xori         a2, t1, 1689
                  add          a6, s9, t6
                  c.addi       a3, 14
                  srli         s11, a2, 29
                  slt          a6, s1, a5
                  c.li         ra, -1
                  c.andi       a0, -1
                  slli         a4, s9, 15
                  sltiu        s3, t6, -1481
                  auipc        a3, 567972
                  srli         a2, gp, 8
                  c.sub        a4, a5
                  c.slli       s5, 26
                  sub          a4, t5, a2
                  c.or         a3, a4
                  nop
                  c.lui        t5, 18
                  div          t0, gp, t6
                  sra          a6, a1, s11
                  c.addi       a3, 16
                  mulhsu       t0, s9, t4
                  c.and        s1, a4
                  sll          s0, s8, s1
                  sltu         s6, s10, t4
                  mulhsu       a3, s1, t2
                  mulhsu       s1, a5, s3
                  srai         s6, s7, 21
                  c.add        s7, sp
                  add          a6, s10, s7
                  xori         t5, s10, -1496
                  or           s7, sp, s7
                  auipc        s7, 804352
                  c.mv         s3, t5
                  mul          t5, zero, t0
                  mulh         a6, a4, a6
                  mul          a1, s0, s2
                  mul          t1, t4, s4
                  sltu         s5, s5, s8
                  c.andi       s0, 12
                  c.srai       a1, 7
                  c.srai       a2, 16
                  c.srai       a3, 11
                  sltu         s9, zero, s5
                  addi         t2, t4, 1233
                  c.srli       s0, 30
                  remu         t5, s5, t2
                  c.li         t5, 21
                  ori          s9, sp, -298
                  add          s4, t4, s8
                  divu         s3, s1, a6
                  divu         t1, t2, s7
                  add          zero, t4, s9
                  divu         tp, a1, tp
                  c.srai       s1, 12
                  andi         s5, s7, -1226
                  sra          a2, s1, s8
                  ori          s5, a7, 1104
                  c.or         a0, a2
                  xor          s11, s8, t1
                  addi         a3, ra, -1348
                  mulhu        a5, a0, t1
                  mul          a0, a6, a4
                  slt          s7, s0, zero
                  c.nop
                  add          a3, a6, t0
                  sltu         a0, sp, s5
                  mulhsu       s11, a4, s5
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s0, 0x0
                  li           t3, 0xfe9e4892
                  li           t5, 0xffffffff
                  li           t1, 0x5c13f0f3
                  li           t2, 0x80000000
                  li           s8, 0x159203e6
                  li           s3, 0xffffffff
                  li           t4, 0x2895b01c
                  li           a3, 0x80000000
                  nop
                  div          t2, s3, s3
                  remu         s8, t5, s3
                  rem          s0, a3, a5
                  lui          s3, 381030
                  add          s3, t1, t1
                  mulhsu       t1, t2, s0
                  add          s3, s8, t4
                  div          a3, s0, t4
                  auipc        a5, 608997
                  rem          t5, t2, a5
                  add          t2, t5, t4
                  mul          t4, s0, t5
                  mulh         t4, s0, t1
                  divu         a3, t2, t3
                  mulh         t1, s3, t1
                  div          s0, s8, a3
                  rem          s0, t1, s0
                  mul          s0, s3, t5
                  nop
                  divu         t5, s3, t2
                  mulh         s3, t4, a5
                  remu         s3, s8, s3
                  rem          s8, t1, a3
                  mulhu        t5, s3, a3
                  divu         t3, t1, s3
                  mulhsu       a5, t4, s3
                  mulhu        t5, a3, a5
                  nop #end riscv_int_numeric_corner_stream_5
                  addi         zero, t4, -693
                  c.slli       s6, 1
                  mulhu        s5, s11, tp
                  c.mv         s1, t2
                  srl          a1, t1, t4
                  addi         a5, a0, 1062
                  slt          t4, a1, s0
                  or           t3, t2, s8
                  c.mv         s6, t0
                  remu         t1, a5, a0
                  xor          a0, a0, s0
                  add          t0, a0, t3
                  slti         a0, gp, -102
                  mulhu        a4, a5, a2
                  sra          t5, s9, s2
                  div          t6, tp, s1
                  c.xor        a3, a5
                  c.li         t2, 17
                  slli         zero, s6, 0
                  nop
                  ori          t4, t3, 673
                  mulh         s7, t4, a1
                  or           a5, ra, t2
                  sltu         t1, a7, s5
                  c.add        t2, ra
                  c.mv         t1, a1
                  sltu         a0, t2, tp
                  lui          s1, 555386
                  mulhsu       s9, t2, t0
                  rem          ra, t0, a1
                  nop
                  srai         a2, s9, 26
                  mulh         t4, a4, t0
                  c.nop
                  sub          a0, s10, t1
                  srai         a6, zero, 17
                  c.xor        a0, a2
                  slt          s11, zero, a4
                  c.add        t1, a7
                  c.nop
                  sll          a3, zero, s1
                  auipc        a3, 636677
                  c.add        s7, t6
                  srai         t4, a3, 1
                  nop
                  c.andi       s0, -1
                  mulhsu       a2, s4, a7
                  remu         s8, s2, a1
                  srl          s4, t1, a4
                  div          a7, zero, zero
                  c.andi       a0, 4
                  div          tp, s3, s11
                  c.lui        a0, 27
                  srl          s4, a6, t0
                  lui          s0, 162147
                  divu         t5, sp, a7
                  sltu         t1, s4, t2
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           s11, 0x0
                  li           tp, 0xffffffff
                  li           t0, 0xffffffff
                  li           s6, 0x0
                  li           t6, 0x69906593
                  li           s3, 0x80000000
                  li           a0, 0xcd32d557
                  li           s8, 0xb186d30f
                  li           a7, 0x0
                  remu         t0, a1, a0
                  sub          t0, a0, a0
                  lui          s8, 277029
                  mulh         s11, s11, s8
                  mulh         a7, t0, tp
                  rem          s6, t0, s6
                  addi         a0, s8, 1999
                  nop
                  add          a0, a0, a1
                  add          s8, s11, t6
                  lui          t0, 496573
                  remu         t0, s8, a0
                  rem          s8, t0, a7
                  div          s6, a1, s11
                  remu         s8, t0, a7
                  divu         s8, s8, t6
                  sub          tp, s6, a0
                  mulh         s6, tp, a7
                  div          s6, s6, s3
                  remu         tp, s3, s11 #end riscv_int_numeric_corner_stream_36
                  c.andi       a4, -1
                  c.andi       a5, 26
                  slt          t2, sp, t5
                  div          a6, t5, a2
                  remu         t5, a1, t3
                  nop
                  auipc        gp, 27041
                  andi         s1, s7, -558
                  c.xor        a0, a0
                  mulhu        a5, t2, t2
                  c.andi       a4, 21
                  mulhsu       t2, s7, a0
                  sll          a1, s8, s9
                  xor          s9, s2, s7
                  c.andi       a4, 5
                  lui          zero, 306133
                  divu         s4, s8, s4
                  divu         t5, s3, t2
                  andi         a2, s4, 869
                  mulh         s7, gp, s9
                  sub          zero, s6, s7
                  xor          t1, a4, tp
                  mulhsu       t6, t5, a2
                  c.add        s9, a3
                  c.and        s0, a4
                  slli         s9, zero, 17
                  remu         a7, s11, s1
                  c.or         a3, s1
                  c.mv         a5, a3
                  mulhu        s7, t3, a5
                  mulh         a4, t4, t1
                  slli         s0, tp, 8
                  div          t3, a2, s11
                  xor          a5, s1, s2
                  or           s8, s4, t3
                  c.sub        s0, a1
                  c.xor        s1, s0
                  c.mv         t0, s6
                  c.srai       a4, 4
                  c.and        a4, a0
                  ori          zero, s8, -502
                  or           t5, a0, s3
                  c.slli       tp, 30
                  c.or         s1, a5
                  sll          a5, zero, t5
                  c.slli       s0, 4
                  add          t2, t2, a7
                  ori          a1, zero, 991
                  c.andi       a3, 26
                  sll          a7, t0, s9
                  ori          s3, t3, 403
                  c.and        a4, a1
                  xor          s5, s1, a5
                  mulhu        a6, t6, s8
                  c.addi       a6, 30
                  sltu         gp, s3, s4
                  c.and        a2, a1
                  mulhu        t4, t0, gp
                  mulh         t5, s3, s8
                  sltiu        a2, a4, 1040
                  c.addi       t6, 22
                  rem          t6, a4, a2
                  sltiu        t1, t4, -108
                  rem          s9, ra, a0
                  c.li         s4, -1
                  auipc        s3, 969695
                  sra          a1, t5, s2
                  c.addi       t0, -1
                  nop
                  remu         ra, s7, s6
                  ori          t4, s6, -505
                  c.srli       a2, 4
                  li           s7, 0x5c79638 #start riscv_int_numeric_corner_stream_19
                  li           s0, 0xffffffff
                  li           a5, 0x6db8b551
                  li           a2, 0xffffffff
                  li           s4, 0xffffffff
                  li           a0, 0x80000000
                  li           ra, 0x0
                  li           t4, 0xffffffff
                  li           a7, 0x80000000
                  li           t5, 0xffffffff
                  mulh         s4, a0, a0
                  lui          a7, 918693
                  addi         ra, t4, -741
                  mul          a5, s4, a5
                  auipc        a2, 1041477
                  addi         s0, t4, -580
                  mulh         a5, t4, a0
                  divu         a7, a5, a2
                  sub          a5, a2, a5
                  addi         s4, s7, -2008
                  rem          t4, s7, a5
                  auipc        ra, 104794
                  mulh         t5, t5, s0
                  mul          ra, t5, a5
                  mulhsu       a7, a0, t5
                  nop
                  divu         ra, a2, ra
                  remu         s7, s4, a5
                  mulh         t5, s4, t5
                  auipc        t4, 36512 #end riscv_int_numeric_corner_stream_19
                  c.lui        t1, 19
                  c.lui        s6, 17
                  c.nop
                  c.and        s0, s1
                  addi         a6, t3, -1248
                  c.or         a1, a5
                  srl          t0, s2, a6
                  srai         t2, t4, 5
                  c.xor        a3, a1
                  mul          s11, a1, tp
                  slli         s5, s6, 31
                  sltu         a7, s11, s9
                  slti         s1, zero, 6
                  add          tp, s9, s1
                  c.andi       a5, 1
                  c.add        a3, s7
                  mulhu        a0, a6, t4
                  or           a7, a6, s7
                  sltiu        s8, t1, -500
                  c.and        a2, a5
                  c.slli       s3, 27
                  nop
                  c.slli       s0, 10
                  and          s6, ra, s4
                  srl          a6, s0, tp
                  c.srai       a5, 5
                  c.slli       s1, 14
                  sll          s11, a4, a7
                  mulh         s6, a1, t0
                  and          a6, a6, t2
                  c.and        a5, a3
                  xor          a4, t2, t3
                  c.slli       s5, 12
                  c.addi       s11, -1
                  xor          gp, a3, a7
                  sltu         zero, s9, s2
                  sltiu        s5, gp, -1012
                  c.slli       a7, 21
                  mulhu        zero, t6, a7
                  andi         t1, gp, 1926
                  mulhsu       zero, t6, t5
                  divu         s3, gp, a4
                  lui          t0, 889201
                  c.andi       a4, 30
                  mulhsu       s7, a3, sp
                  c.srai       a5, 16
                  c.xor        s1, a2
                  auipc        s5, 485932
                  srli         a4, t3, 22
                  c.sub        s1, a1
                  slli         a0, a1, 6
                  ori          gp, a3, 613
                  xor          t3, s6, a1
                  srli         a3, a4, 8
                  c.srai       a5, 1
                  nop
                  slt          a4, t6, s5
                  srl          tp, a3, t5
                  xor          s3, a3, tp
                  c.or         a1, a1
                  c.sub        s0, a5
                  slli         a7, s0, 16
                  mul          s5, zero, s3
                  c.slli       t0, 27
                  srl          a6, tp, s8
                  divu         zero, sp, s7
                  c.addi       s11, 14
                  mul          a1, ra, s10
                  sub          s9, a6, s7
                  addi         a7, sp, 142
                  rem          t5, gp, t6
                  ori          s0, a0, -787
                  c.mv         s1, ra
                  sltu         s11, a6, t2
                  sra          s5, s8, s6
                  sltu         tp, a3, t5
                  divu         s9, a3, a5
                  ori          t5, s10, -1345
                  c.srai       s0, 16
                  c.li         a0, 5
                  addi         a2, s3, 1003
                  c.andi       a5, -1
                  addi         s1, a6, 1355
                  or           a2, t3, tp
                  ori          ra, s10, 1194
                  c.addi       t6, -1
                  srl          t0, s10, a5
                  divu         a5, t6, a4
                  and          a3, a6, a0
                  c.or         a4, s0
                  mul          s4, t2, ra
                  srl          a7, s8, s5
                  and          a3, s2, a5
                  mul          a3, sp, a3
                  sltiu        tp, t1, -262
                  slli         gp, s9, 20
                  srli         t1, s5, 24
                  c.srli       a2, 4
                  lui          a0, 925882
                  srli         a7, zero, 31
                  srai         ra, a4, 25
                  xori         a4, gp, -2021
                  sltiu        a3, a3, -1169
                  c.srli       a0, 4
                  mulhu        ra, t5, a1
                  sltu         s3, t0, t3
                  mul          a6, a2, ra
                  srli         gp, a4, 4
                  c.li         s3, 27
                  mulh         s5, s5, s4
                  c.andi       a3, 6
                  sltu         t0, s9, t0
                  remu         gp, s11, s9
                  add          s3, s8, s5
                  c.add        t1, s7
                  sub          a7, s6, s9
                  sltiu        s11, t1, -1594
                  slli         gp, t4, 8
                  c.srli       a1, 6
                  c.lui        a6, 2
                  add          s3, s7, a5
                  add          t6, t5, t3
                  c.sub        s0, a4
                  addi         ra, a7, -68
                  mulhsu       a3, a4, zero
                  c.add        t2, a4
                  sltiu        a5, a3, -1242
                  sra          s8, a2, s10
                  slti         tp, s0, 0
                  srli         s0, t1, 16
                  c.or         a0, s0
                  andi         t5, a7, 1869
                  mulh         a1, s1, a5
                  divu         s6, a4, tp
                  c.add        s8, a7
                  add          s3, s0, s10
                  lui          zero, 168193
                  mul          t5, t2, gp
                  c.xor        a1, s0
                  c.li         a4, 5
                  slt          s0, s6, t5
                  remu         zero, gp, s1
                  add          a6, a5, s0
                  c.xor        a4, s1
                  srai         t1, s10, 30
                  sltiu        a4, t5, -1942
                  srai         t6, t0, 2
                  mulhu        a4, s10, s10
                  xor          zero, s5, t0
                  sll          a4, t1, zero
                  c.or         s0, a4
                  nop
                  add          s8, t6, s0
                  sub          a6, a7, zero
                  c.srli       s0, 15
                  c.sub        s0, s1
                  remu         a4, gp, s0
                  add          s6, t0, a4
                  c.addi       a4, 14
                  slti         ra, t2, 471
                  mul          a1, s8, ra
                  andi         s0, t0, -834
                  c.sub        a0, a1
                  ori          a4, s3, 2046
                  andi         a4, gp, -448
                  andi         t2, tp, 1766
                  sltiu        t5, t3, -1308
                  ori          s11, s10, 746
                  sltiu        s7, s1, 1484
                  sltu         s8, s3, ra
                  sll          s9, s8, a3
                  c.slli       a6, 15
                  c.sub        a3, a3
                  andi         gp, s0, 322
                  mul          s8, t6, a2
                  srl          a0, s2, s8
                  rem          s11, sp, ra
                  lui          s4, 740618
                  mulh         s3, a6, s10
                  c.xor        a4, a4
                  c.nop
                  sll          s6, a1, s7
                  srli         a3, a2, 2
                  auipc        a5, 270404
                  c.sub        a1, a4
                  mulhu        gp, a1, tp
                  c.mv         a3, a1
                  srai         s7, s4, 23
                  sub          a6, tp, a6
                  c.lui        t4, 27
                  srl          ra, a0, t0
                  mul          s4, a0, s3
                  mulhsu       a2, s9, gp
                  c.nop
                  sra          a0, ra, a0
                  sub          a2, s10, t2
                  sra          a0, s4, t2
                  auipc        tp, 693157
                  add          a4, s8, a1
                  srli         t5, s6, 5
                  mulhsu       s7, s10, s8
                  xori         s11, t2, -89
                  xor          t2, ra, tp
                  srli         s11, s4, 17
                  addi         t6, s7, -1174
                  mulh         s3, s11, a0
                  or           a6, t6, s4
                  mulhu        gp, s4, s0
                  srai         t1, ra, 26
                  xor          s8, s10, s10
                  sra          s0, a3, s3
                  addi         s6, s8, -959
                  srai         zero, s0, 27
                  ori          a0, s7, -1583
                  add          s7, t0, a6
                  sll          t2, s7, t0
                  rem          s7, tp, a3
                  lui          s4, 836601
                  nop
                  c.xor        a2, a4
                  add          s6, t2, t4
                  c.andi       a0, -1
                  srli         zero, a3, 12
                  xor          t3, t0, s6
                  andi         t5, a7, -1999
                  c.nop
                  c.addi       a6, -1
                  ori          a0, ra, -770
                  ori          t2, s7, 1473
                  c.srai       a3, 27
                  div          s6, s1, s11
                  rem          a4, tp, tp
                  c.srai       a3, 18
                  add          a4, t6, tp
                  mul          a2, a6, t1
                  c.add        t5, s10
                  sra          a0, t1, s6
                  c.lui        s3, 11
                  or           t0, s7, t0
                  sra          s11, t5, t2
                  and          t3, sp, a3
                  slt          t4, a5, t2
                  c.srai       a5, 25
                  c.srli       s1, 22
                  c.mv         a0, t0
                  add          s6, sp, s0
                  remu         s6, s8, s0
                  c.sub        s1, s1
                  c.and        s0, a2
                  sltu         a6, a4, s6
                  addi         t1, a4, 1337
                  slt          a6, s2, s2
                  auipc        t2, 96233
                  mulhu        s8, s11, t3
                  c.slli       s4, 25
                  and          s5, t3, t1
                  div          s8, t5, s5
                  add          gp, s11, a4
                  c.li         t2, 17
                  slt          a6, gp, zero
                  c.sub        a2, a5
                  auipc        t5, 13573
                  sltu         a6, a2, s10
                  mul          s6, t3, s3
                  add          a1, zero, s4
                  and          s5, a2, s4
                  c.lui        t3, 14
                  c.xor        a1, s1
                  c.srli       a3, 7
                  c.and        s0, a4
                  xor          a0, t5, s1
                  remu         t3, s7, t4
                  slt          s3, s0, t6
                  c.li         s6, -1
                  c.xor        a2, a3
                  c.slli       t6, 23
                  c.add        a7, s5
                  remu         a0, t0, s10
                  c.srli       a0, 25
                  c.srli       a5, 2
                  mulh         a2, s0, ra
                  mul          s8, s1, s8
                  add          a3, t4, a4
                  auipc        t1, 229935
                  rem          ra, s8, ra
                  mul          a1, s3, t2
                  c.xor        s1, a2
                  c.nop
                  c.lui        s4, 10
                  c.andi       s0, 24
                  rem          t1, a1, sp
                  mul          t6, s4, t4
                  sltiu        t6, t3, 1846
                  sltiu        a3, a7, -2009
                  c.srai       a5, 6
                  lui          a6, 38538
                  addi         gp, t2, -442
                  c.xor        a0, a2
                  addi         s9, s0, 622
                  slli         t6, a6, 20
                  andi         s5, tp, 1914
                  sll          s9, a5, gp
                  c.addi       t5, 6
                  srai         s4, sp, 12
                  c.srli       a5, 2
                  slli         a0, s1, 24
                  div          gp, zero, s9
                  c.xor        a5, a3
                  c.li         t2, 8
                  slti         t5, t2, 1623
                  srai         s4, s3, 23
                  ori          a6, s7, 2017
                  c.addi       t2, 10
                  c.li         s7, -1
                  xori         t3, s8, -961
                  slli         ra, s11, 23
                  c.srai       a4, 9
                  c.or         s0, a1
                  or           s8, t6, s6
                  div          a6, gp, gp
                  c.xor        s0, a0
                  c.srai       s0, 10
                  srli         s3, s3, 16
                  c.or         s1, a4
                  addi         a6, a3, 945
                  c.li         t1, 15
                  sub          s1, a2, s8
                  remu         a0, t4, s5
                  sltu         t1, t0, s9
                  mul          t5, a3, s5
                  srl          s5, s7, gp
                  addi         ra, s6, -1845
                  c.slli       ra, 16
                  mul          t0, a3, tp
                  sra          s4, ra, s5
                  rem          a0, a0, t2
                  c.and        a0, s1
                  sub          a4, a7, t3
                  slli         a6, s1, 19
                  mulhsu       s5, s2, s0
                  c.srai       a0, 17
                  mulhu        s3, s4, ra
                  c.nop
                  addi         a5, s8, 774
                  remu         a0, a7, s5
                  srai         s7, t3, 8
                  c.nop
                  sltu         a1, s5, t0
                  c.slli       t1, 3
                  sll          zero, zero, s0
                  srai         a5, s11, 29
                  c.srli       s1, 21
                  andi         a0, tp, -187
                  c.lui        t5, 31
                  sltiu        a4, s3, -1652
                  addi         a0, sp, 605
                  sra          a0, t0, a0
                  addi         t5, a1, 204
                  srli         t2, s1, 5
                  slli         s5, tp, 5
                  slt          a5, a5, s8
                  remu         t4, s2, s10
                  lui          a1, 101270
                  c.srai       a2, 27
                  sltu         zero, a4, s5
                  mulh         gp, a0, a6
                  rem          s5, a7, t3
                  c.xor        a5, a3
                  c.lui        s7, 15
                  remu         a1, s9, a3
                  slt          a0, gp, a4
                  c.sub        a1, s1
                  mulh         s0, gp, s8
                  c.lui        t4, 5
                  sll          t5, zero, s1
                  c.nop
                  sltiu        s8, a3, 950
                  sll          s6, s2, a2
                  c.li         a7, 18
                  srli         a3, s7, 29
                  nop
                  c.or         a1, a4
                  lui          a3, 344767
                  sll          t4, gp, sp
                  mulhsu       a0, s3, t2
                  mulh         s3, sp, t4
                  rem          s9, zero, s10
                  slti         a0, a6, 52
                  c.slli       t2, 25
                  c.lui        t5, 22
                  xori         a6, a6, -2028
                  c.andi       s0, -1
                  c.nop
                  c.or         a3, a3
                  c.andi       s0, 13
                  mulhu        tp, t6, t3
                  andi         t6, s4, 547
                  sltu         gp, t6, s0
                  c.nop
                  srai         s1, gp, 26
                  srl          a1, a2, gp
                  slli         ra, t2, 24
                  lui          s4, 746
                  xor          s6, a7, tp
                  divu         s4, s6, t4
                  c.nop
                  or           t3, s5, tp
                  xor          s6, s11, s4
                  c.xor        a0, s1
                  mulh         t6, a6, a0
                  addi         s4, a4, 1777
                  mulhsu       tp, gp, sp
                  rem          tp, s9, s6
                  sltiu        zero, s11, 562
                  mulh         s3, s6, a6
                  add          t0, t2, a3
                  c.or         a1, a2
                  auipc        a2, 617353
                  c.srli       a4, 1
                  div          s5, s9, s10
                  and          ra, gp, s10
                  srl          a3, s2, s11
                  srli         t0, gp, 13
                  c.srli       a5, 31
                  slli         a3, t4, 3
                  c.slli       a5, 20
                  c.sub        a0, a2
                  c.srli       s1, 14
                  mulhsu       zero, t2, a2
                  and          s5, s2, t2
                  addi         a4, s3, 227
                  c.lui        gp, 20
                  sltiu        s4, t1, 471
                  add          t0, s10, a1
                  mulh         a0, t4, t2
                  mulhu        a2, s10, t1
                  divu         s3, s6, ra
                  srl          a0, t2, t6
                  sltiu        zero, a2, 1526
                  c.mv         a0, t6
                  divu         s5, s2, a1
                  remu         s8, s5, ra
                  c.slli       t1, 11
                  mulhu        a4, s9, s6
                  c.addi       a7, -1
                  ori          s9, a3, 1401
                  srl          s9, a7, a4
                  c.and        s0, a3
                  sll          zero, s6, a0
                  nop
                  xor          a6, t1, s3
                  div          s6, s7, a0
                  sub          zero, ra, a0
                  c.addi       s8, 16
                  c.nop
                  mulhsu       a1, a0, t0
                  xor          s4, a5, s9
                  ori          s7, t4, -1170
                  add          t5, s10, a3
                  addi         a5, tp, 1237
                  c.add        s7, ra
                  ori          s8, s10, -62
                  c.addi       s0, -1
                  c.nop
                  srl          t0, a7, a4
                  mulhu        tp, a7, s11
                  auipc        s6, 807509
                  nop
                  auipc        a2, 992337
                  srl          t0, s10, s4
                  c.andi       s1, 17
                  c.srli       s1, 13
                  mul          a5, s7, t5
                  c.nop
                  or           s6, s4, t0
                  add          a4, s4, s11
                  addi         s11, t0, 1971
                  addi         s1, a5, -1503
                  c.lui        s3, 21
                  c.srai       s0, 12
                  c.xor        s1, s0
                  xori         t4, a3, -1454
                  mulh         s5, t0, a2
                  nop
                  sra          a2, s0, s11
                  addi         s11, t1, -140
                  slli         a4, a1, 16
                  srli         t5, t4, 9
                  addi         s6, s0, 1120
                  c.addi       s0, -1
                  c.srli       a1, 27
                  addi         s5, s0, 1433
                  srai         ra, s6, 1
                  sub          t0, s3, s6
                  auipc        s8, 906898
                  c.nop
                  nop
                  c.andi       a3, -1
                  lui          a1, 175602
                  c.srli       a3, 14
                  mulh         a4, a4, a5
                  sltiu        a2, s7, 1857
                  sltiu        a3, s5, -170
                  mulhu        a0, s8, s9
                  xori         a1, t6, 1230
                  div          t1, s0, a4
                  mul          t6, tp, zero
                  mulhsu       s1, t0, a1
                  slli         s6, t5, 2
                  sra          a0, zero, a0
                  srai         s0, s1, 1
                  c.addi       s7, 22
                  mulhsu       s6, a5, sp
                  ori          s4, gp, 1392
                  nop
                  slli         s11, gp, 22
                  c.andi       a0, 6
                  slli         zero, zero, 31
                  remu         a2, a7, t0
                  add          s0, ra, s10
                  c.nop
                  or           s6, s10, s7
                  c.slli       s5, 2
                  andi         ra, a0, 1554
                  slti         s11, s0, 715
                  lui          t5, 383157
                  srai         a1, s0, 6
                  c.li         s3, -1
                  c.mv         tp, a6
                  c.srli       a0, 19
                  or           s1, a4, t6
                  c.sub        a2, a5
                  c.srli       a5, 15
                  c.nop
                  c.sub        a0, s1
                  c.xor        s1, a0
                  xori         s8, ra, -1513
                  c.addi       t0, -1
                  slti         tp, a5, 1837
                  xor          a1, t5, a1
                  c.xor        a3, a0
                  c.srai       a1, 1
                  srli         a1, tp, 20
                  rem          a2, s2, tp
                  slli         s5, a7, 22
                  c.add        ra, t2
                  sll          a6, a5, zero
                  c.and        a2, a4
                  mulhsu       s9, tp, a0
                  xori         zero, a6, 182
                  c.and        a1, a0
                  c.add        a0, a3
                  mulhu        s7, t3, s8
                  mulhsu       a2, gp, ra
                  addi         s1, a0, 425
                  lui          s3, 89015
                  divu         t0, t2, s10
                  mul          t3, s7, s1
                  mulh         t2, ra, a2
                  sub          s7, a4, a5
                  c.mv         t5, s11
                  mulh         a2, t1, s6
                  c.srli       a0, 1
                  c.srai       a2, 26
                  c.andi       a4, -1
                  c.add        ra, s2
                  c.and        s0, a0
                  slli         s5, a3, 3
                  xori         a2, a6, -1598
                  c.srli       s1, 1
                  sltu         s4, s4, s8
                  srl          t4, tp, s8
                  add          s6, a0, ra
                  mulh         a7, a2, t6
                  addi         t6, t0, 1656
                  srai         s7, s10, 19
                  srai         ra, t4, 6
                  c.li         t1, 22
                  sll          a5, s11, t4
                  c.xor        a3, a3
                  c.mv         a6, s8
                  c.slli       a5, 7
                  lui          a5, 873294
                  c.and        s0, a4
                  c.and        a4, a4
                  andi         a4, s11, 1830
                  and          a5, a0, a0
                  auipc        s6, 507498
                  slti         s9, tp, -236
                  add          t0, t6, a2
                  c.xor        a3, s1
                  slli         t6, a0, 30
                  auipc        a7, 518588
                  c.add        s3, s6
                  xori         a1, s11, 1599
                  slti         s4, s5, 1208
                  c.lui        a3, 29
                  c.addi       t2, 5
                  divu         a4, a5, a1
                  ori          s1, s5, 98
                  c.srli       a0, 3
                  srli         a3, a5, 25
                  mulhsu       a0, s4, t5
                  c.sub        a0, a5
                  or           a3, t1, t3
                  c.srli       a4, 9
                  sub          t3, s2, s0
                  add          a5, gp, ra
                  mulhsu       zero, a7, s9
                  divu         t1, s3, a4
                  andi         a2, a6, -1703
                  c.andi       a1, -1
                  slli         s6, s5, 17
                  mulhu        a0, s0, s1
                  ori          a1, a1, 945
                  sra          s9, sp, s8
                  add          s3, a1, zero
                  c.xor        a0, a3
                  srli         s8, t5, 23
                  sra          a6, s10, s0
                  c.add        t5, s7
                  c.or         a4, a0
                  xori         a0, s11, 1109
                  srai         s0, t2, 25
                  xor          tp, t3, t3
                  divu         t2, tp, a4
                  c.andi       a0, -1
                  c.srli       a5, 4
                  ori          t2, t0, 1864
                  sub          t2, s1, gp
                  lui          s3, 225217
                  xor          s0, t3, s8
                  add          a4, s5, gp
                  nop
                  srl          t1, s0, a4
                  c.and        a2, a1
                  srli         s5, a6, 12
                  andi         zero, zero, 1854
                  c.or         a0, a3
                  lui          t0, 437464
                  remu         a5, t4, a6
                  slt          t2, a0, s11
                  c.srai       a5, 1
                  nop
                  c.nop
                  nop
                  mulhu        ra, s3, t1
                  srl          s8, gp, a5
                  rem          t4, s6, a2
                  addi         t1, s10, -332
                  sltiu        a4, a6, 895
                  c.lui        s6, 15
                  c.or         a0, a1
                  c.srli       s1, 9
                  mulhsu       s7, t6, a1
                  c.srli       s0, 26
                  xor          t1, zero, s2
                  srli         zero, a2, 7
                  mulh         s4, a1, a2
                  sll          a7, s8, a5
                  xori         t4, s7, 703
                  c.li         s4, 16
                  addi         t6, a3, -636
                  c.srai       a0, 4
                  add          gp, s4, s4
                  lui          zero, 843095
                  c.or         a3, s1
                  c.lui        s1, 29
                  mul          s9, a0, t2
                  c.addi       t4, 8
                  andi         t3, t3, 805
                  sltiu        zero, s11, 1894
                  mul          a6, t3, sp
                  sltiu        ra, s4, 548
                  c.xor        a4, s0
                  xor          t2, a3, a7
                  c.xor        a3, a4
                  c.li         t5, -1
                  xori         a0, t0, -168
                  lui          tp, 874934
                  mulh         s7, s4, t5
                  srli         a0, a1, 27
                  c.srai       a2, 12
                  c.srai       s1, 24
                  sltiu        a7, s0, 1318
                  c.sub        s0, s1
                  sltu         t6, t4, a6
                  rem          s1, s10, t5
                  slli         s9, sp, 30
                  xori         t6, s1, -1025
                  c.mv         s0, s1
                  c.or         a5, a1
                  c.andi       a5, 24
                  sub          t5, t3, gp
                  xori         t4, s6, 76
                  c.srai       a1, 21
                  auipc        t0, 97987
                  sltiu        s0, gp, 199
                  c.srli       a5, 21
                  remu         s11, s1, a3
                  c.add        a1, t4
                  slli         a6, s7, 27
                  div          s7, s0, tp
                  mul          s7, a5, s1
                  c.li         a1, 17
                  slt          t4, t2, zero
                  sra          t4, t1, s6
                  sltiu        s8, s11, 1102
                  rem          s11, s11, a0
                  srai         s9, tp, 10
                  c.andi       a1, -1
                  lui          t4, 640989
                  c.srli       a4, 8
                  divu         t3, sp, sp
                  andi         a1, zero, 1723
                  srai         t1, a2, 15
                  remu         t0, t1, ra
                  rem          s3, s1, s1
                  c.srai       s1, 25
                  mul          a6, a5, s4
                  xor          a1, s3, s0
                  c.nop
                  slli         a6, t3, 30
                  c.andi       a1, 23
                  c.li         tp, -1
                  sltu         a4, t1, s8
                  slti         a7, tp, 2033
                  c.nop
                  srli         s0, s11, 4
                  c.nop
                  sra          s11, t1, t2
                  c.xor        a4, a1
                  div          s1, s5, s2
                  sll          t1, t1, sp
                  c.andi       a5, 8
                  c.andi       s1, -1
                  and          t6, s4, s11
                  or           s8, zero, s11
                  mul          s0, a3, s5
                  or           s11, ra, s8
                  mulhsu       a2, a1, t6
                  divu         zero, tp, s3
                  c.lui        a1, 10
                  c.srli       s1, 29
                  rem          s11, t2, s5
                  c.add        a6, s5
                  remu         t6, s11, s7
                  srai         t4, a1, 6
                  or           a5, s11, a2
                  slt          gp, a0, t5
                  slt          ra, a5, t0
                  slti         a5, ra, 1185
                  mulhu        a4, sp, ra
                  slli         ra, s3, 2
                  slti         a2, a7, -1118
                  ori          ra, s5, 504
                  c.slli       t4, 14
                  mulhsu       s4, s11, s1
                  mulhu        a5, a3, s5
                  nop
                  mulhsu       ra, t4, s1
                  slli         s5, a4, 28
                  mul          a4, s2, a0
                  nop
                  c.andi       a4, 26
                  rem          a0, a1, a3
                  srl          t0, s8, a3
                  c.or         a2, s1
                  rem          s0, s10, s2
                  slt          s5, s9, s10
                  c.sub        a1, a1
                  c.li         t6, 8
                  c.andi       a4, 18
                  c.mv         t6, s1
                  andi         s3, t0, 1758
                  c.srli       a1, 16
                  c.li         t5, -1
                  xori         s6, a6, 1418
                  or           t4, s1, s11
                  c.srli       a5, 19
                  c.srai       s1, 17
                  lui          s7, 471516
                  divu         ra, s0, s3
                  c.xor        a2, a1
                  c.xor        a2, s0
                  c.xor        a2, s1
                  c.xor        a4, a2
                  srli         s3, sp, 7
                  div          s6, a3, a5
                  or           t5, t0, t1
                  div          t3, s1, a7
                  ori          tp, a7, 2031
                  c.srli       a2, 27
                  ori          s4, ra, -1590
                  and          a0, s2, s2
                  rem          t4, sp, s8
                  srai         a7, s7, 19
                  mulhu        s4, t1, a2
                  sub          s3, s10, ra
                  c.slli       t2, 1
                  c.srli       s1, 7
                  slli         s6, s9, 30
                  c.addi       s11, -1
                  or           a4, t5, t0
                  mulhu        s11, s1, s11
                  auipc        s0, 371113
                  xori         t0, s3, -427
                  c.or         s1, s1
                  andi         s6, ra, 1159
                  or           t0, t5, s4
                  lui          s0, 368580
                  c.addi       t4, 5
                  c.slli       s3, 12
                  mulhsu       s11, s0, s4
                  div          a6, t6, t1
                  addi         s5, zero, 760
                  c.li         gp, 20
                  mulh         s11, a7, a6
                  srl          a3, s2, a3
                  srl          s0, s3, t1
                  add          gp, a4, a7
                  sll          s9, s2, a2
                  srl          s3, tp, sp
                  sltiu        s3, a1, -799
                  c.and        a1, a4
                  c.srli       a3, 6
                  xor          gp, s7, a6
                  mul          a5, zero, a6
                  c.or         a0, a4
                  c.lui        ra, 25
                  c.andi       a0, -1
                  c.addi       s3, -1
                  ori          a0, a1, -693
                  c.li         gp, -1
                  divu         s1, a5, a3
                  c.lui        a0, 11
                  c.add        s6, t1
                  and          tp, a6, s2
                  sll          s8, s4, t4
                  c.addi       ra, -1
                  andi         s7, t5, -1704
                  xori         a7, tp, -700
                  andi         a4, s11, -1762
                  sltiu        ra, t3, 1907
                  and          a0, s8, a1
                  c.addi       a4, -1
                  sltiu        s1, s5, -1833
                  c.lui        a2, 20
                  sltu         ra, s6, a4
                  mulh         a5, a0, s0
                  mulh         t4, sp, a1
                  xor          s9, t5, s5
                  c.lui        ra, 4
                  slti         t0, s2, -590
                  ori          t6, s11, -588
                  c.srli       a2, 1
                  sltu         s0, t0, t4
                  c.or         a5, a0
                  slti         zero, s1, 172
                  and          s5, zero, a4
                  slt          t1, tp, a1
                  c.sub        a5, s0
                  slt          s1, t1, s10
                  div          s11, s5, a2
                  remu         a6, s6, a6
                  xor          s7, s5, gp
                  divu         ra, a2, t3
                  mulhsu       s6, t4, t5
                  add          s9, s7, s2
                  mulhsu       a0, t6, gp
                  divu         s8, sp, gp
                  c.srli       s0, 23
                  or           s8, s0, s5
                  xor          s8, a7, t4
                  c.and        a5, a4
                  nop
                  srai         s11, s10, 5
                  slti         t4, s1, 1215
                  divu         t1, t0, s3
                  mulhu        s1, a4, s8
                  sra          s7, a0, t6
                  slt          s6, a1, s11
                  remu         a0, s11, a4
                  c.or         s0, a3
                  lui          tp, 789169
                  add          a4, s1, t2
                  c.nop
                  srli         s8, gp, 4
                  sub          a7, t2, ra
                  sltu         s0, t2, a6
                  and          s7, s1, a0
                  c.xor        a5, a2
                  add          s7, t2, t6
                  mul          t0, a0, t5
                  andi         t1, s5, 1292
                  ori          t5, zero, 795
                  sra          gp, s9, a3
                  c.add        a2, s9
                  sltu         a7, t1, a4
                  c.or         s1, a3
                  or           t6, a7, s3
                  remu         s8, s2, ra
                  srl          t1, a6, s2
                  xori         s4, tp, 342
                  c.lui        a5, 19
                  c.xor        a4, a2
                  mulhsu       tp, a3, a2
                  slt          t2, tp, a4
                  c.add        a3, ra
                  sltiu        s3, tp, -1391
                  sub          t6, t2, s5
                  divu         s7, zero, s3
                  mulhu        a0, a0, a7
                  lui          tp, 963484
                  c.xor        a1, s1
                  c.xor        s1, a0
                  sra          ra, gp, a2
                  xor          a1, s11, a2
                  c.add        t3, t1
                  remu         a3, s6, t2
                  c.sub        a1, a0
                  c.mv         a6, s9
                  mulh         s3, t0, s9
                  sll          tp, zero, s11
                  c.or         s0, a4
                  mulhsu       a6, zero, s4
                  c.xor        a3, a4
                  c.lui        s1, 9
                  sltu         t3, t4, a7
                  sltu         t4, s6, s8
                  slti         s11, ra, 1890
                  auipc        s4, 251423
                  mulh         a2, gp, t5
                  divu         s3, t4, t0
                  srli         a7, t1, 20
                  sltiu        s3, t1, 1699
                  ori          s0, s2, 338
                  divu         ra, a2, ra
                  remu         t4, s8, a3
                  sra          s0, s2, a4
                  auipc        a5, 515097
                  c.add        a7, s8
                  slti         s11, tp, 113
                  ori          a5, a5, 470
                  xori         gp, t3, 1864
                  c.li         s3, -1
                  sll          s1, s10, tp
                  c.slli       a4, 22
                  ori          a0, gp, 282
                  c.srai       a2, 30
                  sltu         t5, a3, t4
                  c.lui        s3, 16
                  mulhsu       t1, a2, a7
                  c.li         t3, -1
                  auipc        s3, 349259
                  srli         a5, s4, 11
                  xor          s6, s4, a0
                  c.sub        a0, a2
                  c.slli       gp, 13
                  c.srli       a4, 20
                  sra          s9, gp, s5
                  xori         a1, a4, 1043
                  srai         t0, t1, 24
                  c.add        t2, s11
                  sub          t4, a0, s2
                  c.lui        a1, 28
                  c.mv         gp, a0
                  c.nop
                  rem          t3, a3, a1
                  c.nop
                  c.srli       a4, 30
                  c.li         ra, 5
                  sltiu        t6, s5, -681
                  ori          ra, s1, 1534
                  c.addi       t5, 23
                  c.addi       ra, 25
                  mul          t6, a7, s8
                  andi         tp, a4, -2010
                  srai         s3, t6, 18
                  sltiu        a5, a0, 67
                  slli         a4, s9, 11
                  slti         t2, a5, -929
                  srai         s4, s5, 26
                  sll          t5, s10, s3
                  sub          tp, a5, a4
                  srli         s3, s9, 21
                  rem          t6, t2, t2
                  nop
                  c.mv         a5, s0
                  slt          s0, a4, gp
                  sll          s9, a0, s0
                  and          s0, a4, s3
                  sub          s6, sp, s7
                  c.and        s1, a5
                  slti         a0, s3, -115
                  xori         t3, t4, -522
                  c.srli       a3, 28
                  nop
                  srl          s5, s9, gp
                  c.addi       a4, 11
                  div          ra, zero, s1
                  ori          s3, a0, 783
                  c.srai       s0, 28
                  c.mv         a6, gp
                  auipc        s5, 178867
                  slti         gp, a4, 1575
                  nop
                  remu         a5, ra, s1
                  mul          s0, s0, t2
                  addi         a0, t0, -418
                  sra          a1, a4, gp
                  c.lui        s5, 25
                  c.lui        t1, 29
                  slli         a0, s8, 26
                  auipc        zero, 824363
                  sub          a7, a2, t6
                  sltiu        tp, a4, -618
                  nop
                  slti         s7, t5, 773
                  c.slli       s6, 26
                  mulhsu       s5, s11, a6
                  c.srai       a3, 30
                  c.add        tp, s11
                  c.sub        a2, s1
                  c.and        a1, s0
                  c.add        t3, a0
                  lui          a7, 272693
                  c.xor        a2, a3
                  c.srai       a5, 9
                  c.srai       a2, 27
                  auipc        s3, 748586
                  lui          s8, 377418
                  c.addi       t3, -1
                  c.sub        a3, s1
                  slti         s6, a2, 1008
                  c.li         a6, 13
                  c.addi       t4, -1
                  remu         a0, s4, a6
                  c.andi       a3, 21
                  c.nop
                  c.nop
                  sra          a2, t3, s5
                  c.add        gp, s11
                  c.nop
                  srli         s3, sp, 30
                  mulhsu       a0, s7, t0
                  srai         a5, s8, 29
                  c.mv         a1, s7
                  srli         a6, s6, 12
                  c.srai       a3, 5
                  c.li         s8, 17
                  c.srli       s0, 16
                  remu         t5, a2, s5
                  c.add        a1, s0
                  or           s6, s3, a7
                  mul          s4, t5, s1
                  slt          s0, s0, s0
                  c.li         t5, 1
                  c.andi       a3, 14
                  srli         s5, zero, 22
                  lui          t1, 558513
                  c.srli       s1, 20
                  c.addi       s11, 16
                  add          t6, a3, t0
                  c.sub        a3, a5
                  rem          t5, a5, a2
                  srl          t4, t4, s3
                  c.lui        s7, 26
                  c.or         a2, a3
                  c.andi       a3, 16
                  or           a6, a5, s5
                  div          s4, a5, s0
                  c.xor        s1, a2
                  andi         a3, s1, -975
                  c.addi       t1, 3
                  c.nop
                  remu         a1, s11, s5
                  nop
                  sub          a7, ra, a4
                  divu         t2, s2, a7
                  slti         s8, a0, -129
                  auipc        s3, 229636
                  c.lui        s11, 11
                  c.srai       a4, 20
                  sltu         a3, a7, a3
                  c.and        s1, a0
                  xori         a5, t3, 955
                  mulh         t3, tp, t5
                  slli         zero, ra, 6
                  c.li         t0, 6
                  c.add        s9, s1
                  c.srai       a3, 23
                  mul          s0, sp, a7
                  srl          t3, t6, sp
                  slli         s6, a2, 0
                  or           a0, a2, s11
                  c.and        a0, s1
                  c.lui        t5, 13
                  srl          s0, ra, a1
                  c.sub        a1, a3
                  ori          s7, sp, -2024
                  xori         a0, t4, 782
                  srl          t3, s3, ra
                  c.add        tp, a0
                  mulh         t1, a6, t1
                  and          t0, a5, s6
                  and          a3, zero, a3
                  remu         s4, s1, s2
                  sll          a1, s2, tp
                  xor          tp, s7, a5
                  addi         gp, s7, 1361
                  srai         s11, s1, 14
                  c.slli       a6, 9
                  sub          s0, a5, t4
                  mul          a3, a6, s8
                  c.slli       tp, 9
                  nop
                  sra          a3, a1, t4
                  remu         s8, a5, t6
                  c.addi       a1, -1
                  lui          s11, 712021
                  slti         a4, zero, 514
                  c.srai       s1, 4
                  lui          a1, 81291
                  mulhsu       a1, s11, s7
                  xori         s4, s11, 951
                  ori          s3, s3, 1397
                  c.sub        s1, a3
                  c.addi       s5, -1
                  and          s3, a7, s1
                  rem          s3, s8, s3
                  c.nop
                  c.sub        s1, a3
                  c.add        a2, a4
                  mulhu        zero, s8, a3
                  andi         a1, a4, 732
                  c.nop
                  mulhu        s4, s9, t3
                  mulh         t2, s2, s6
                  mulhu        a5, a4, t5
                  c.li         ra, -1
                  sll          zero, t5, s9
                  c.addi       s1, -1
                  xor          s3, t3, a4
                  c.mv         s7, s8
                  srl          s7, s7, s1
                  sltu         t4, a3, a6
                  c.nop
                  c.add        gp, tp
                  div          t1, t4, zero
                  sltu         a5, t1, t6
                  sra          s1, s10, a7
                  ori          a1, t3, 600
                  c.andi       a5, 6
                  c.andi       s1, -1
                  rem          t0, t0, a6
                  c.xor        s0, s0
                  mulhu        zero, a6, a3
                  c.andi       s0, 15
                  c.nop
                  srl          t2, s4, a0
                  or           t2, s5, s0
                  sll          a5, s2, sp
                  c.srli       a5, 4
                  and          t1, s10, a2
                  sltiu        s0, t4, 1029
                  auipc        s11, 298882
                  sll          a7, s7, s11
                  mulhu        gp, tp, a0
                  mulhu        t1, a4, a5
                  div          s4, a5, s4
                  sll          s8, s6, a3
                  sll          s0, zero, s9
                  sll          a6, ra, s4
                  remu         a5, s1, s3
                  c.xor        a5, a5
                  c.srli       s1, 29
                  xori         t2, t0, 1520
                  slt          s8, s7, a6
                  srli         ra, a4, 2
                  andi         t2, s9, 664
                  c.sub        a5, s0
                  c.lui        t0, 8
                  sltu         a2, s3, s11
                  c.or         a2, a0
                  xor          s9, a2, a0
                  sub          gp, t5, a0
                  c.add        t2, s1
                  slli         a7, s6, 0
                  lui          a1, 88868
                  divu         s1, s4, a4
                  sltu         s5, tp, ra
                  c.andi       a2, 4
                  mulh         t0, tp, t0
                  slt          a6, s11, s11
                  div          a3, a7, s5
                  or           s1, sp, s0
                  mul          t1, t3, a6
                  ori          a5, a3, 361
                  div          t0, a2, t0
                  c.or         s0, a3
                  srai         t2, s9, 9
                  c.add        s6, a6
                  ori          s1, t3, -757
                  c.addi       gp, 23
                  or           t4, sp, s9
                  xori         a2, t2, 127
                  c.xor        s1, a2
                  srl          t3, gp, a6
                  mulhu        s5, t1, a7
                  sra          t0, t0, t2
                  mulhu        gp, tp, gp
                  c.lui        s8, 16
                  c.xor        a4, a4
                  c.and        a5, s1
                  slli         s1, s1, 9
                  and          s4, a1, t4
                  c.sub        s0, s1
                  xori         s7, zero, -236
                  c.add        s3, tp
                  sltiu        t1, t0, -172
                  nop
                  mulhsu       s6, a2, t2
                  c.mv         ra, s8
                  c.srli       a1, 22
                  sltiu        gp, gp, -401
                  sltu         t1, s8, a7
                  sub          ra, s3, sp
                  sll          ra, s11, a4
                  c.add        a5, a5
                  or           s8, a3, a0
                  auipc        zero, 1011086
                  srli         a6, s10, 23
                  sra          zero, t1, sp
                  c.addi       s11, 13
                  c.srai       a5, 10
                  div          gp, a4, s1
                  xor          t0, s10, a5
                  srl          t1, a5, s5
                  c.xor        s1, a0
                  srli         a5, tp, 3
                  slt          zero, t4, tp
                  c.or         a3, a1
                  c.srli       s1, 12
                  c.or         a5, s0
                  c.sub        s0, a1
                  c.slli       a4, 14
                  sll          zero, s2, s7
                  or           a6, t2, a2
                  sub          t0, a0, s8
                  c.or         s0, a1
                  div          s8, a6, s1
                  or           a5, a4, s10
                  sll          a1, s9, a1
                  mul          s11, s6, s1
                  sra          a1, s4, s10
                  c.lui        t0, 24
                  c.addi       a0, -1
                  sltu         t5, gp, t5
                  c.lui        tp, 6
                  c.nop
                  c.srai       a0, 31
                  slt          s6, s11, a5
                  c.sub        s1, s0
                  nop
                  c.lui        t0, 22
                  srl          s8, s0, s6
                  ori          a6, zero, -184
                  slt          s8, a1, s5
                  remu         a1, s10, s1
                  addi         a1, sp, -1220
                  or           s1, t5, t5
                  auipc        a5, 394270
                  rem          ra, t4, s5
                  c.nop
                  mulhu        a6, s10, s9
                  ori          s3, t2, 666
                  xor          s11, a7, s9
                  xori         a2, a2, 858
                  remu         a1, zero, t6
                  sltiu        a5, a1, -1385
                  xor          t4, sp, ra
                  remu         a4, a6, a7
                  remu         a6, s4, s0
                  c.sub        a1, a2
                  srli         a0, s5, 22
                  addi         t6, tp, -1742
                  slli         t4, a7, 22
                  sltiu        a0, s0, -1714
                  c.nop
                  slt          t3, s4, t4
                  lui          s6, 984034
                  mulh         s7, s1, t5
                  mulhsu       t1, t0, s11
                  add          s1, gp, s7
                  sltu         t5, a0, s4
                  c.slli       tp, 30
                  c.srai       a5, 8
                  mulhu        tp, a6, s5
                  addi         a3, a1, 1313
                  mul          t6, t2, s2
                  mulhu        gp, s9, s8
                  andi         s0, t1, 132
                  xori         tp, s2, -1231
                  c.xor        s0, a5
                  slli         a1, s5, 13
                  mulhu        a4, a1, a4
                  c.addi       a0, -1
                  or           a5, a7, s0
                  c.srli       s1, 9
                  rem          t1, s1, t1
                  ori          t1, a0, -198
                  srl          t2, t3, zero
                  mulhu        t6, a4, s2
                  ori          t0, s4, 1292
                  auipc        s9, 179683
                  c.and        a1, a0
                  sll          s0, sp, s1
                  c.xor        a5, s1
                  c.nop
                  c.lui        t4, 24
                  c.andi       a0, -1
                  c.xor        a1, a0
                  div          zero, s11, t6
                  c.and        a2, s0
                  c.srli       s0, 18
                  srl          a7, s0, s1
                  srl          s11, tp, s9
                  srai         s5, a0, 14
                  mulhu        s11, t6, a3
                  c.srai       a5, 15
                  mulhu        t2, s4, s6
                  div          t5, a7, ra
                  addi         t0, s9, -620
                  c.srai       a0, 15
                  c.and        a2, a5
                  srli         t3, a1, 9
                  mulhsu       a2, zero, s11
                  or           s8, ra, s5
                  remu         t0, t5, a2
                  and          s4, a6, t2
                  c.andi       a1, 18
                  c.and        a2, a5
                  sub          t2, s11, a3
                  lui          t2, 830982
                  mulh         s6, sp, s6
                  sub          a4, sp, s6
                  ori          s4, zero, 1886
                  lui          t2, 472922
                  mulhu        s11, a3, s11
                  rem          a2, s5, a0
                  and          a1, s9, tp
                  nop
                  auipc        s4, 882462
                  sltiu        s7, s11, -942
                  auipc        s5, 740900
                  andi         t6, s7, 1435
                  addi         s7, a5, -1242
                  c.or         s1, s0
                  mulh         a7, a5, s3
                  div          s6, s3, ra
                  remu         t3, s2, zero
                  slli         s6, t0, 4
                  mulhsu       zero, s3, t3
                  mulhu        a3, t5, a2
                  c.lui        s6, 22
                  rem          s6, s10, s2
                  or           zero, s7, tp
                  c.srai       s0, 19
                  sltiu        a7, t4, -1637
                  auipc        s5, 984498
                  slli         a0, t0, 7
                  nop
                  nop
                  add          s9, s0, s3
                  ori          s8, a3, -1248
                  slt          t6, s1, a3
                  sll          s3, gp, s5
                  c.lui        a5, 30
                  auipc        t5, 229422
                  srai         s5, s9, 2
                  c.srai       a3, 31
                  srli         ra, a7, 23
                  remu         s4, ra, t5
                  c.or         s0, s0
                  rem          s6, t5, t2
                  xor          a5, t3, s9
                  and          t0, tp, a1
                  c.li         a0, 8
                  c.xor        a3, s0
                  sll          t0, s2, a2
                  lui          s11, 551710
                  c.lui        t5, 5
                  c.addi       a3, 13
                  mul          s0, t5, t2
                  srli         s8, t4, 2
                  mulhsu       s11, a0, s3
                  mulh         a5, t5, zero
                  c.xor        a3, a0
                  srl          s0, t0, a5
                  slt          s7, t3, a1
                  c.li         a6, 28
                  or           a7, tp, sp
                  sltiu        tp, t6, -443
                  addi         t5, a6, 1157
                  srli         s4, a6, 11
                  nop
                  srli         s8, t6, 14
                  c.andi       s0, 23
                  xori         s9, zero, 685
                  c.sub        a2, a1
                  andi         s3, s7, -732
                  c.add        s3, a0
                  c.addi       t0, 5
                  andi         a3, t5, 1206
                  c.andi       a0, -1
                  srli         a7, s1, 0
                  c.addi       t5, -1
                  rem          s3, s8, s6
                  sltu         a5, ra, t0
                  c.xor        a5, a4
                  c.lui        s3, 13
                  mulh         a1, a1, t5
                  mulh         a5, s4, zero
                  c.or         a0, a0
                  add          t5, a5, t0
                  or           t5, s6, s5
                  xori         a0, t5, -1821
                  mulh         s8, s9, a3
                  xori         s5, t5, -1599
                  mulh         a1, s2, t1
                  auipc        s11, 461978
                  and          s6, s5, a1
                  auipc        gp, 116732
                  nop
                  c.xor        s1, s1
                  sltiu        a1, s1, -189
                  remu         tp, s7, a3
                  c.addi       a4, -1
                  c.nop
                  sltu         s11, t0, s5
                  mul          t6, a1, s8
                  mulhsu       s11, t6, s0
                  divu         t5, s6, t2
                  srl          s11, zero, zero
                  nop
                  sltiu        zero, s6, 327
                  xori         s6, s9, -1200
                  c.lui        s3, 21
                  c.andi       s1, -1
                  addi         zero, s6, 942
                  c.slli       a0, 18
                  srai         s11, t0, 6
                  mulhsu       s3, t4, gp
                  add          s5, tp, s10
                  rem          s9, zero, s7
                  mulh         s3, s3, s1
                  c.or         a1, a3
                  c.andi       a4, -1
                  auipc        a4, 361827
                  srai         t4, s11, 6
                  c.xor        a0, a2
                  div          t4, a5, t6
                  and          t4, a6, s3
                  or           a1, s10, a6
                  srl          t2, s7, s1
                  or           t2, s5, a1
                  c.srli       a0, 26
                  c.andi       s0, -1
                  sub          t6, a2, sp
                  c.sub        a0, a4
                  sltu         s5, t2, gp
                  c.or         s1, a1
                  sltiu        tp, t1, 239
                  slli         zero, t6, 29
                  c.nop
                  c.add        t5, a5
                  mulhu        a7, s10, t1
                  c.srai       s0, 16
                  c.and        a1, a5
                  lui          s0, 275179
                  add          s5, a6, a2
                  srai         s8, s4, 16
                  divu         a4, s4, s10
                  sra          a0, a2, a1
                  auipc        a5, 1010890
                  ori          t0, t2, 1899
                  addi         a7, s5, 776
                  add          s7, a1, t3
                  c.nop
                  c.lui        s8, 8
                  slli         s0, s9, 23
                  c.slli       t2, 9
                  remu         t0, t1, a4
                  c.andi       a5, -1
                  c.nop
                  ori          t5, t2, 505
                  mul          s7, a2, s2
                  c.xor        a1, a0
                  mul          a1, tp, t2
                  and          s3, t6, s7
                  c.srli       s1, 31
                  sll          t2, s4, s2
                  sll          s4, s6, s3
                  div          a0, s7, t2
                  xor          s1, s10, s8
                  c.or         s0, a2
                  slt          a0, s9, s5
                  mulh         gp, gp, t4
                  andi         s4, s5, -1806
                  slli         s9, s5, 28
                  c.srli       a1, 18
                  c.lui        s6, 31
                  c.xor        a5, a4
                  remu         t2, s1, tp
                  c.and        a3, a5
                  slti         s7, t6, 61
                  or           a0, a1, tp
                  srl          s6, t2, s4
                  slt          a7, a3, a7
                  xori         a3, t2, 821
                  mulhsu       s9, s10, a5
                  sll          t5, zero, s4
                  c.mv         s8, t4
                  c.sub        a4, a2
                  srai         s3, ra, 8
                  sll          t3, t2, s3
                  c.srai       a0, 1
                  c.slli       t0, 17
                  remu         a5, zero, s11
                  c.lui        s7, 4
                  rem          a4, ra, s2
                  mulh         t4, s5, a5
                  c.add        a0, t2
                  mul          t2, a0, a7
                  or           s6, a0, s5
                  sltu         t0, a1, a6
                  c.and        a5, a4
                  mul          s1, s1, s6
                  add          s11, t2, s9
                  xori         s4, t2, 1991
                  c.mv         a4, s4
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           t2, 0xffffffff
                  li           t1, 0xffffffff
                  li           s4, 0x0
                  li           a7, 0x0
                  li           t3, 0x0
                  li           a2, 0xffffffff
                  li           t6, 0x80000000
                  li           s9, 0x0
                  li           gp, 0x80000000
                  div          s4, t1, a0
                  rem          gp, a7, t6
                  div          t2, t6, gp
                  nop
                  auipc        gp, 527122
                  mul          t6, t2, t1
                  divu         t3, t1, t2
                  mulh         a2, t2, gp
                  mulhsu       t2, a7, t3
                  div          a2, s4, t3
                  auipc        t6, 695896
                  mulh         t2, t3, a2
                  sub          gp, a2, a0
                  nop
                  mulh         s9, s9, a0
                  auipc        gp, 647223
                  remu         gp, gp, t6 #end riscv_int_numeric_corner_stream_24
                  div          s7, s10, t1
                  xori         s9, a6, -1270
                  sra          s8, s1, zero
                  srl          a3, s11, a4
                  c.sub        a3, a3
                  add          a3, t6, t5
                  mulhu        s11, gp, s7
                  c.nop
                  sltu         t1, t3, s7
                  c.srai       a4, 31
                  srl          a5, s1, a4
                  c.li         a0, 3
                  mulhu        s6, a6, t3
                  mulh         a1, a2, s5
                  c.add        s11, t3
                  add          s1, s7, s8
                  mulh         s6, s4, a3
                  lui          t0, 836576
                  or           t4, a7, s5
                  c.lui        t2, 16
                  c.or         s1, a2
                  mul          s1, s7, a6
                  slli         gp, a7, 31
                  auipc        tp, 496759
                  c.addi       a6, 24
                  ori          s6, a4, -2034
                  or           a5, t6, t2
                  c.srai       s0, 10
                  srli         a3, s6, 26
                  srl          a6, s8, a5
                  slt          a0, s0, s1
                  lui          ra, 874516
                  c.addi       t2, -1
                  sltu         t5, s8, sp
                  sub          zero, s10, t1
                  c.sub        a1, a3
                  mul          a6, s0, zero
                  addi         s7, a2, 1101
                  c.mv         s8, ra
                  xor          s6, a0, t2
                  or           s6, a0, ra
                  c.or         a5, a3
                  c.lui        a7, 8
                  andi         s11, s2, 1363
                  sltiu        t4, s10, 951
                  sll          a0, s4, sp
                  remu         s3, s8, tp
                  srl          t3, s1, s2
                  c.li         s11, -1
                  c.addi       s0, -1
                  c.srli       s1, 24
                  c.slli       a6, 30
                  slti         t6, s11, 1449
                  c.srai       a0, 26
                  mulh         gp, sp, s8
                  rem          a7, s5, tp
                  c.andi       a5, -1
                  c.li         s8, 3
                  lui          zero, 366336
                  add          s0, gp, s2
                  c.srli       a2, 13
                  c.nop
                  c.xor        a4, a0
                  c.mv         s9, a6
                  c.li         s5, 4
                  nop
                  sra          s8, a2, a4
                  c.addi       a2, -1
                  c.xor        a2, s0
                  and          s1, ra, ra
                  c.and        a4, a3
                  c.xor        a2, a5
                  lui          t5, 273545
                  andi         s1, gp, 1954
                  nop
                  c.srli       s0, 23
                  slli         tp, a2, 4
                  c.li         t2, -1
                  mulhu        a2, s1, s8
                  sll          t0, t2, t3
                  c.sub        a3, a0
                  addi         t0, a0, 1582
                  lui          gp, 451788
                  c.andi       s0, -1
                  slli         a2, t5, 13
                  sra          zero, a4, s8
                  c.slli       s5, 28
                  c.lui        t1, 14
                  nop
                  or           a1, a0, a5
                  c.addi       a0, -1
                  add          t3, s3, a2
                  divu         a1, t3, a0
                  c.lui        s5, 1
                  nop
                  div          s1, s2, s10
                  sll          s6, t0, t2
                  nop
                  sll          s3, s3, a5
                  slti         s5, t2, 1888
                  sub          zero, s7, gp
                  addi         zero, ra, 1873
                  andi         t4, s11, 495
                  sll          a0, s0, s9
                  sll          s8, ra, s2
                  sub          t6, s4, a1
                  c.or         s1, a3
                  sltu         a3, t6, t6
                  c.slli       s11, 28
                  c.li         a6, -1
                  slt          a2, t5, s2
                  sll          s8, s8, a1
                  sll          a2, t0, s0
                  sltiu        gp, t5, 165
                  xor          t0, s9, a1
                  mulh         a6, s2, t4
                  xori         s9, s0, 1917
                  mulh         t0, t1, s1
                  sub          s6, s8, ra
                  mulh         ra, t0, s7
                  slt          s4, sp, t0
                  addi         a6, t0, 867
                  sra          s3, s2, s6
                  slt          a3, s8, t5
                  xor          s1, a2, gp
                  srai         s5, ra, 25
                  sltu         s3, s3, a2
                  xor          a7, a0, sp
                  xor          zero, a5, s9
                  srl          t1, s5, s0
                  mulh         s6, s4, s8
                  auipc        zero, 346456
                  srl          a2, gp, ra
                  xori         a0, s9, -1857
                  c.andi       a1, 3
                  mulh         a7, a1, s10
                  or           s11, s10, s4
                  srai         s11, a2, 19
                  ori          a0, zero, 158
                  auipc        s3, 998008
                  mulhsu       gp, s2, a4
                  c.or         a5, s1
                  div          zero, sp, sp
                  c.mv         a1, a5
                  srl          a0, s3, zero
                  srl          t4, ra, s9
                  andi         zero, t2, -1387
                  remu         zero, s6, s4
                  c.sub        a4, a1
                  mulhsu       t1, zero, a1
                  slti         a4, ra, 1523
                  mulhsu       a0, t2, a2
                  mulh         t1, s8, s8
                  mulh         ra, a6, a4
                  slli         t4, t4, 31
                  c.or         a0, a1
                  add          gp, a7, s3
                  c.li         s9, 19
                  c.li         a3, 2
                  remu         t2, s2, tp
                  slli         zero, s0, 24
                  c.xor        a3, a4
                  sltiu        t0, zero, 1737
                  sltiu        a4, t0, 923
                  rem          zero, s4, s0
                  srli         s8, s1, 30
                  c.or         a1, a2
                  c.xor        s1, a1
                  xor          a1, s9, a3
                  srli         t5, s2, 20
                  addi         s0, a7, -677
                  remu         t2, gp, s2
                  c.slli       s7, 6
                  c.or         a5, a1
                  slti         s7, sp, -1452
                  andi         s0, a2, 1110
                  ori          zero, gp, -298
                  c.lui        t2, 11
                  srai         s11, t3, 5
                  auipc        tp, 618072
                  sltu         a4, t6, t0
                  ori          t4, t3, 1430
                  c.or         s0, a0
                  remu         zero, a4, s3
                  lui          a0, 836173
                  mulhsu       t4, sp, gp
                  slt          s8, s5, a7
                  or           s1, s8, a4
                  srl          a0, t2, tp
                  lui          a0, 635924
                  c.mv         gp, t5
                  c.or         a4, s1
                  sltiu        a2, zero, 55
                  auipc        t1, 292236
                  c.srai       a0, 24
                  lui          s8, 839221
                  rem          a6, ra, t3
                  c.srli       s0, 23
                  mulhu        ra, a1, s6
                  mulhsu       s9, s10, t0
                  mul          s3, t2, a4
                  sltiu        gp, s5, 403
                  ori          s3, s4, 316
                  srl          tp, sp, s3
                  divu         a6, t2, a3
                  mulhu        t0, s11, s0
                  lui          a7, 165649
                  sll          s11, zero, s8
                  sltu         s4, a0, t1
                  c.mv         a1, s5
                  c.li         s8, -1
                  and          s8, s7, gp
                  sub          t6, s7, s7
                  c.li         t1, 12
                  c.srai       a0, 27
                  rem          t2, s2, t5
                  c.srai       a4, 21
                  mulh         s5, zero, a6
                  srli         t1, tp, 24
                  add          s0, t2, a4
                  mulh         t1, t6, a0
                  and          a0, s6, t5
                  andi         s3, s10, 1330
                  remu         s8, a0, t5
                  c.srai       a4, 10
                  c.and        a1, s0
                  sra          ra, t5, s5
                  andi         t1, t6, 1912
                  auipc        a0, 578607
                  srai         s8, s4, 27
                  c.srai       a3, 22
                  sub          gp, s10, t0
                  c.lui        a0, 19
                  c.andi       a3, 24
                  xori         t3, a0, -598
                  mulhu        a0, a3, s8
                  c.and        a1, a0
                  c.or         s0, a1
                  xor          s4, s1, gp
                  slli         s4, sp, 10
                  c.sub        s0, a3
                  slti         a6, a7, -1018
                  ori          a4, s5, 1756
                  sll          t5, a7, t1
                  sra          s11, s7, s6
                  andi         s7, s1, 569
                  slli         s6, sp, 19
                  ori          s3, tp, 929
                  xor          a2, tp, s1
                  nop
                  sltiu        gp, s6, 723
                  addi         s9, s2, -930
                  mulhsu       s9, a2, a0
                  mul          s5, t3, s0
                  rem          s11, s4, t5
                  srl          s6, s7, s1
                  lui          s3, 943565
                  srl          gp, s1, t1
                  c.andi       a3, -1
                  mul          a7, s5, tp
                  rem          a7, a6, tp
                  sub          a2, a6, ra
                  c.xor        a4, a2
                  div          s3, s6, t3
                  lui          s8, 70863
                  nop
                  xor          t3, s0, a0
                  divu         a0, s8, a7
                  c.and        s1, s1
                  sll          s4, gp, a1
                  c.slli       t0, 2
                  c.xor        a4, a2
                  slt          s6, t2, s2
                  xor          ra, s5, s2
                  slt          s7, s0, s11
                  sra          a6, a6, s1
                  sltiu        tp, a5, 1668
                  c.or         a0, a3
                  sub          t1, a2, a0
                  rem          a5, t5, s11
                  c.lui        s9, 14
                  lui          tp, 815433
                  sub          s8, a1, t3
                  andi         a6, s1, -1749
                  mulhu        t6, a2, t4
                  slt          s0, s3, sp
                  c.and        a0, a1
                  and          s4, ra, s5
                  c.xor        a1, s0
                  c.lui        gp, 28
                  c.andi       a5, -1
                  c.or         a3, a2
                  srli         zero, s9, 8
                  add          s0, zero, s0
                  mulhsu       s0, a5, zero
                  sub          a6, t1, s3
                  c.nop
                  div          t2, tp, ra
                  and          s6, s0, t0
                  sltu         s4, a6, s9
                  srai         zero, s7, 31
                  c.or         a4, a1
                  divu         a1, t0, s1
                  srl          t2, s0, s7
                  c.slli       s0, 6
                  andi         s11, s10, -544
                  c.lui        a7, 2
                  mulhsu       a0, t1, zero
                  ori          s1, s1, -1252
                  mulh         a6, t4, s10
                  slli         s11, t4, 17
                  sltiu        s3, s7, 1059
                  c.srli       a5, 16
                  xori         s1, s5, -962
                  c.slli       s1, 10
                  addi         s5, a5, 608
                  mulhsu       s0, s10, ra
                  sub          a0, s0, a6
                  sll          a3, t2, s1
                  add          s3, s2, a7
                  c.lui        s5, 23
                  c.srai       a2, 8
                  srli         a3, a4, 20
                  mulhsu       zero, s1, a4
                  addi         ra, t0, -501
                  sltu         s1, s1, a0
                  sltiu        s5, t6, 1122
                  andi         t1, a1, -130
                  c.nop
                  c.sub        s0, a4
                  c.add        t2, a3
                  c.or         a4, a1
                  or           s3, a1, s6
                  srli         a4, a2, 14
                  sltu         a6, t3, s2
                  c.sub        a4, a4
                  xori         s11, gp, -361
                  c.srli       a3, 26
                  lui          s9, 859429
                  c.and        a2, a0
                  lui          s11, 399736
                  remu         s6, t6, s0
                  c.or         a1, a4
                  rem          s7, a4, s3
                  sltu         t5, t4, t0
                  sra          a6, a7, tp
                  srai         s8, a5, 21
                  c.slli       s8, 17
                  mulh         s7, s1, s2
                  and          ra, a3, s5
                  divu         s3, t3, t1
                  c.nop
                  c.or         s0, s0
                  c.addi       a6, 4
                  rem          s3, t3, ra
                  c.or         s0, a0
                  srl          t3, a2, s3
                  slli         a6, a2, 4
                  c.addi       a4, 10
                  srl          t3, s3, sp
                  add          gp, s5, s4
                  c.srli       s1, 20
                  c.lui        a6, 31
                  div          s9, a2, t4
                  srl          t1, s3, a7
                  c.nop
                  rem          t2, s7, a0
                  and          s9, s7, s5
                  slli         tp, t5, 3
                  c.add        s0, a1
                  c.srai       a3, 19
                  sub          s9, s7, sp
                  c.li         s8, -1
                  xori         s1, a5, -328
                  c.srli       a0, 27
                  slli         s8, s4, 14
                  sra          gp, t2, s6
                  c.add        s6, t2
                  auipc        a7, 424776
                  lui          ra, 129483
                  c.srai       a4, 4
                  sub          t1, t3, s1
                  c.xor        a0, a5
                  and          s11, t0, t3
                  auipc        t6, 213673
                  add          gp, s1, a2
                  nop
                  add          a4, a2, s1
                  mulh         s9, s0, s7
                  or           s4, s11, s11
                  srli         s5, ra, 5
                  mulhsu       t5, s8, tp
                  slli         s6, a7, 9
                  lui          t5, 557087
                  rem          t6, s5, s0
                  sltiu        t1, s1, -276
                  add          t5, s11, t2
                  c.mv         ra, a7
                  sll          a6, s5, s7
                  c.and        s0, a4
                  mulhu        a7, sp, s10
                  ori          tp, a7, 60
                  auipc        a1, 199582
                  c.srli       a4, 9
                  sltu         t0, t1, tp
                  c.srli       s0, 28
                  sltu         t4, tp, s5
                  c.add        a3, gp
                  c.xor        a0, a1
                  nop
                  c.srli       s1, 8
                  ori          t1, s9, 1193
                  sltiu        t4, s3, 1985
                  sltiu        s9, gp, -1445
                  c.mv         s7, a7
                  sra          a7, a0, t6
                  c.lui        t3, 30
                  c.addi       a7, 12
                  sra          a0, zero, t0
                  xor          a3, s5, ra
                  sltu         a4, s10, a2
                  slt          t4, t6, t6
                  slli         s4, t0, 31
                  c.xor        s1, a5
                  sll          a2, zero, s4
                  ori          ra, t5, -23
                  c.li         s5, 22
                  xori         a7, s5, 230
                  c.and        a1, a5
                  srai         t3, a7, 10
                  div          zero, a3, t6
                  mulhsu       s8, t6, t0
                  auipc        s1, 57990
                  andi         t0, s9, 246
                  rem          t0, t5, s3
                  c.andi       a5, -1
                  sll          ra, t3, a0
                  sltiu        s6, s11, -1995
                  remu         t4, a1, a2
                  xori         a6, s10, -267
                  c.lui        gp, 17
                  c.andi       s0, -1
                  mulh         a2, a7, s3
                  mulhsu       s8, a3, t1
                  or           gp, s0, zero
                  remu         t3, sp, s8
                  and          t1, a3, a7
                  c.lui        s5, 24
                  srl          t4, s1, t0
                  sltu         t4, a7, a6
                  sll          t3, s2, s10
                  srl          t0, sp, ra
                  c.nop
                  div          s11, t1, t1
                  mulhu        ra, s8, t6
                  c.slli       s1, 12
                  remu         ra, ra, s0
                  auipc        t4, 257201
                  xori         t5, s7, 121
                  sub          t3, s6, ra
                  srl          s3, t4, t1
                  andi         gp, s9, 1654
                  addi         t5, t5, -1715
                  mulhu        tp, s11, s6
                  addi         gp, s2, -894
                  xori         s7, a1, -209
                  c.mv         a5, t5
                  mulhu        a3, a0, t6
                  srli         a3, s5, 17
                  sltu         t3, s7, s0
                  sub          ra, t5, s7
                  c.xor        a1, a5
                  xor          t2, s7, a5
                  c.addi       a3, 29
                  c.slli       s9, 10
                  add          gp, t2, s1
                  rem          s6, t4, t6
                  c.lui        tp, 22
                  c.and        a3, s1
                  andi         s5, s11, 1311
                  xor          a0, t4, s1
                  andi         gp, sp, -1901
                  c.or         a5, s0
                  xori         a0, ra, -893
                  c.andi       a1, -1
                  c.slli       a2, 10
                  c.and        a5, a4
                  srai         t2, sp, 19
                  c.lui        s8, 15
                  c.addi       a1, 19
                  mul          t1, s5, a7
                  nop
                  slti         a0, s1, 701
                  or           s5, s6, s7
                  rem          t1, s11, s11
                  addi         gp, s2, 118
                  mulhsu       t3, t3, a4
                  remu         zero, s8, t0
                  c.lui        a0, 24
                  srl          a2, t6, s4
                  sub          tp, s7, ra
                  add          ra, s7, tp
                  c.add        a1, s11
                  sub          a6, t0, t5
                  lui          s9, 63197
                  sll          zero, t0, s4
                  lui          tp, 259679
                  divu         s9, s11, s5
                  c.xor        s0, s0
                  c.mv         a2, a3
                  mul          ra, s9, gp
                  c.and        a2, a2
                  sltiu        s11, t6, 105
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_39
                  li           t3, 0x80000000
                  li           s11, 0x0
                  li           s8, 0x0
                  li           s3, 0x80000000
                  li           s0, 0xffffffff
                  li           t2, 0xffffffff
                  li           a4, 0x0
                  li           a1, 0x4bbd0595
                  li           s6, 0x788c5c5f
                  nop
                  addi         s8, t2, 1260
                  addi         s11, a0, -228
                  sub          t2, a4, s3
                  remu         s11, t2, s6
                  addi         s3, t3, -620
                  mulh         t2, s0, s0
                  mulhsu       s0, t2, a1
                  mul          a1, s8, s6
                  mulhsu       a4, a0, t2
                  mulhu        a4, s11, t2
                  mul          s3, a0, a1
                  divu         s6, a1, s8
                  mulhsu       a0, a1, t2
                  sub          a0, a4, t2
                  add          a4, a4, s6
                  sub          a1, s3, t2
                  add          s11, t2, s3
                  auipc        s8, 225967
                  mulhu        s6, s6, t3
                  add          a1, s11, a0
                  divu         s8, a0, s3
                  mulhu        s8, t3, t2
                  remu         s3, s8, a1
                  rem          a1, s6, t3
                  lui          s8, 292289 #end riscv_int_numeric_corner_stream_39
                  srli         a0, t0, 3
                  or           a0, t2, a0
                  auipc        t1, 522865
                  and          s0, s0, s8
                  c.xor        a4, a4
                  mulhsu       s0, gp, sp
                  xori         t0, s2, 1830
                  c.li         tp, 28
                  sltiu        a2, t0, -1479
                  and          s6, a3, s7
                  mulh         s5, a5, s1
                  divu         tp, s9, s7
                  ori          s1, sp, 379
                  slti         gp, a5, -529
                  addi         gp, s7, 67
                  c.mv         s0, s6
                  c.srli       a0, 25
                  c.lui        a6, 6
                  c.nop
                  divu         t5, a7, a2
                  c.and        a2, a0
                  remu         ra, s3, t3
                  c.addi       s5, 12
                  c.lui        gp, 27
                  c.add        s1, a6
                  sll          s3, s10, a6
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_38
                  li           t6, 0x9cfbbf22
                  li           t1, 0x0
                  li           s6, 0x2f747ff5
                  li           a2, 0x0
                  li           a4, 0xffffffff
                  li           a3, 0xd411091d
                  li           s9, 0x80000000
                  li           t2, 0x0
                  li           t0, 0x118a11dd
                  mul          s9, t1, t1
                  mulhu        a0, s6, t2
                  addi         a0, t6, -1415
                  add          t6, a4, s9
                  mulhsu       s6, s6, t2
                  div          t2, s9, t6
                  sub          a0, s9, t2
                  lui          s9, 968660
                  divu         t0, s6, s6
                  lui          t0, 964663
                  addi         s9, t2, -493
                  div          s6, t0, a2
                  nop
                  div          t1, a0, s6
                  div          s9, a2, t6
                  add          s9, a0, a4
                  auipc        s9, 696273
                  divu         t6, a0, s9
                  auipc        s9, 517616
                  add          s6, a3, s9
                  rem          a0, t6, t0
                  addi         a0, s6, -814
                  mulh         a4, s6, a2 #end riscv_int_numeric_corner_stream_38
                  ori          tp, t0, -195
                  divu         t0, sp, s2
                  xori         t5, s4, 607
                  c.lui        tp, 30
                  c.add        a0, t5
                  sltu         s9, t1, gp
                  slli         s6, s9, 7
                  c.slli       s0, 5
                  rem          a6, t6, s8
                  c.nop
                  srl          t5, s11, t3
                  addi         a7, s1, -1059
                  auipc        t6, 571736
                  c.addi       s7, -1
                  sub          s7, t4, s2
                  c.addi       s7, 5
                  srl          s0, a6, s11
                  c.sub        a2, a4
                  sll          s5, s10, s3
                  c.srli       a4, 29
                  c.andi       a3, -1
                  slt          t5, sp, s10
                  sra          a1, s0, zero
                  srai         ra, s1, 11
                  c.li         a5, 5
                  xor          ra, s11, a2
                  c.sub        a4, a2
                  mulhsu       s6, s7, a4
                  remu         t2, t1, t2
                  mulh         s6, s5, t2
                  mul          ra, s7, a7
                  slt          zero, a0, t5
                  c.sub        s1, a5
                  sltu         t4, s1, a6
                  c.xor        a1, a1
                  slt          t2, a5, t5
                  c.nop
                  mul          t5, s7, a6
                  mul          a0, s8, sp
                  auipc        a2, 29028
                  c.srai       s0, 28
                  c.lui        t6, 23
                  remu         ra, s11, a4
                  c.srli       s0, 29
                  c.li         s11, 14
                  rem          s11, sp, ra
                  mulhu        s6, s5, gp
                  xori         t3, a5, -1684
                  auipc        a2, 703024
                  c.nop
                  c.nop
                  c.xor        a4, a1
                  sll          ra, s2, zero
                  remu         a6, s4, t2
                  c.li         a1, 25
                  c.addi       t2, 8
                  c.addi       t2, 20
                  srai         s9, gp, 8
                  slti         ra, s5, -588
                  sltu         s11, t0, s5
                  c.nop
                  c.srai       s1, 28
                  slli         t2, t0, 9
                  xor          a2, ra, s4
                  sub          t3, a1, s10
                  c.and        a5, a2
                  auipc        s8, 629803
                  xor          a3, s7, t0
                  xori         t1, s10, 1827
                  srli         a3, a6, 3
                  rem          a2, a2, t3
                  divu         a1, zero, t1
                  c.add        a6, a4
                  remu         ra, gp, s11
                  or           a1, s0, s1
                  c.nop
                  lui          s4, 807874
                  srli         a3, s11, 6
                  sub          a1, a4, ra
                  mul          s9, ra, s10
                  sltu         a2, s1, zero
                  c.srai       s0, 16
                  lui          a2, 610082
                  sub          t3, s4, a1
                  sltiu        a7, tp, -1689
                  add          t3, s6, s2
                  mul          t1, s6, a0
                  auipc        s11, 511122
                  add          a2, t0, tp
                  remu         s3, s6, ra
                  nop
                  sltu         a5, t0, t5
                  srli         zero, s1, 29
                  xori         a0, s9, 1760
                  c.and        a0, a4
                  slt          s7, a6, s11
                  ori          zero, s10, -1518
                  sltu         tp, s0, a0
                  div          a7, s0, gp
                  c.nop
                  c.srli       a3, 4
                  auipc        a2, 566301
                  auipc        s4, 1600
                  c.add        a2, s8
                  c.mv         s11, t3
                  and          t6, a7, a3
                  mulhu        gp, s10, a6
                  c.addi       ra, -1
                  lui          gp, 661196
                  or           t5, a6, gp
                  mulhu        t4, a7, a5
                  c.or         a5, a3
                  sub          tp, tp, s1
                  c.or         s1, s1
                  slli         s5, s1, 12
                  c.mv         t1, t5
                  sltu         a2, s10, t2
                  or           a7, a5, a6
                  srai         a6, t5, 29
                  c.add        s0, a6
                  srl          s4, a4, zero
                  xori         a4, t0, 77
                  sll          t4, s6, a3
                  rem          gp, s6, ra
                  sra          t6, s5, t6
                  c.andi       a1, -1
                  sub          a7, s10, s0
                  sltu         t2, a5, a4
                  or           t1, s4, s5
                  slli         s3, ra, 17
                  lui          s1, 76643
                  c.sub        s0, a1
                  rem          a0, a5, s1
                  andi         a2, a4, -1281
                  rem          s7, s3, zero
                  lui          t4, 198840
                  srli         t0, t2, 14
                  c.srli       a2, 3
                  addi         s6, s8, 324
                  div          a1, a2, t6
                  and          t5, s11, zero
                  lui          a1, 14161
                  slli         a4, t0, 3
                  c.srai       s1, 1
                  remu         a2, ra, t2
                  srai         a0, zero, 24
                  srl          gp, zero, t6
                  ori          t3, t4, -1153
                  c.xor        a1, a3
                  nop
                  or           t2, s5, s1
                  c.lui        a0, 30
                  c.or         a1, s0
                  c.nop
                  sra          a5, s4, zero
                  c.nop
                  auipc        tp, 894451
                  c.or         a1, s1
                  c.mv         s9, s5
                  c.add        s5, a0
                  c.mv         t5, s5
                  rem          gp, a5, a1
                  sll          s8, tp, a7
                  c.xor        a4, a4
                  c.xor        a1, s1
                  mulhsu       s8, t2, a4
                  c.sub        a1, a5
                  c.and        a4, s1
                  sll          zero, t3, s4
                  sub          ra, s10, s7
                  slti         t4, a5, -1601
                  sltiu        a0, s10, 1683
                  divu         t1, s8, s2
                  sra          t6, t3, a5
                  sra          tp, s6, t6
                  mul          t3, t2, s7
                  c.sub        a1, s1
                  andi         a5, a0, 1295
                  sub          a0, s3, s10
                  c.srai       a4, 26
                  or           s6, gp, s9
                  slti         a3, t5, 470
                  mulhu        t6, s6, s9
                  and          s8, s3, s9
                  xor          s7, a2, s7
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_26
                  li           s6, 0x1ffe539d
                  li           s9, 0x80000000
                  li           s3, 0xffffffff
                  li           a4, 0x0
                  li           t0, 0xd974e4ed
                  li           a7, 0xffffffff
                  li           s1, 0xffffffff
                  li           s0, 0x92919a33
                  li           s11, 0xffffffff
                  mulh         s1, a4, s3
                  mulhu        s3, s0, t0
                  sub          t0, s3, t0
                  divu         s6, s0, s3
                  add          a6, s9, a7
                  sub          a6, t0, a7
                  lui          t0, 905602
                  mulhu        s6, t0, s1
                  mulhu        s11, s6, a6
                  add          s0, a4, s1
                  mulhu        a6, t0, s0
                  divu         s11, t0, s6
                  mul          t0, a4, a4
                  lui          t0, 120561
                  add          s1, t0, a6
                  mulh         t0, a4, s11
                  nop
                  mul          s0, a4, s3
                  mulh         s1, t0, s0
                  div          t0, s3, s9
                  auipc        a4, 99175
                  divu         a4, a4, a7
                  add          t0, t0, a4
                  auipc        s0, 792177
                  auipc        t0, 33690
                  mulh         s0, t0, a7 #end riscv_int_numeric_corner_stream_26
                  lui          t1, 561756
                  and          s5, a1, a7
                  c.slli       t2, 10
                  sra          zero, s10, tp
                  c.addi       a0, 14
                  srl          ra, a0, s9
                  and          t5, a6, a1
                  c.srai       a3, 3
                  mulhu        gp, s9, t6
                  c.andi       a3, -1
                  c.slli       t1, 4
                  c.srai       a0, 21
                  sll          s7, t2, s0
                  mulhsu       zero, a4, s7
                  c.mv         t6, s1
                  slt          s11, t3, t5
                  ori          t5, s1, -1235
                  srli         s1, a3, 21
                  auipc        a2, 350288
                  c.mv         t5, s10
                  lui          gp, 362434
                  remu         a3, s2, a4
                  sra          a7, s4, s3
                  srl          a4, t1, s0
                  slt          s8, a1, t1
                  c.or         a1, a0
                  div          tp, t1, s1
                  c.andi       s0, -1
                  add          s11, gp, t3
                  c.or         a3, a3
                  divu         s11, t6, s6
                  c.nop
                  c.addi       t1, 8
                  remu         t1, s6, a2
                  mulhu        t0, s4, s6
                  nop
                  sltu         s9, s8, a5
                  c.sub        a0, a1
                  xor          s9, gp, gp
                  c.mv         t3, ra
                  mulhsu       a1, t2, a0
                  c.sub        a2, a4
                  c.srai       s1, 21
                  c.add        s6, s9
                  sub          s5, zero, gp
                  c.nop
                  mul          t4, t3, ra
                  c.nop
                  and          s1, s2, ra
                  ori          a2, s0, -1470
                  rem          tp, a1, gp
                  mulhu        a5, t4, gp
                  srli         s7, gp, 30
                  slti         t0, zero, -1527
                  remu         zero, t1, sp
                  c.srai       s0, 17
                  nop
                  lui          s7, 801835
                  andi         s3, s5, -953
                  rem          s7, ra, zero
                  c.or         a5, a0
                  c.xor        a1, s0
                  c.mv         t6, a7
                  c.xor        a3, a4
                  c.slli       s11, 10
                  srli         s8, s2, 23
                  addi         a7, zero, -1047
                  c.nop
                  srl          a5, s0, a6
                  c.li         s9, -1
                  c.xor        s1, a1
                  sub          s9, sp, s9
                  c.lui        s0, 6
                  c.lui        ra, 18
                  slti         a3, t6, -1995
                  srl          tp, t2, s9
                  srai         s3, gp, 10
                  xori         a1, ra, -1941
                  auipc        a0, 502369
                  andi         s0, s7, 1920
                  sltu         a7, a0, t6
                  slti         t2, t6, 1583
                  c.slli       ra, 10
                  slti         a4, a4, -1937
                  or           s4, a7, t0
                  add          a2, s6, t1
                  c.srli       a1, 4
                  mulhu        a6, s8, a6
                  c.nop
                  or           s5, ra, s4
                  slt          s8, s5, sp
                  c.nop
                  c.mv         tp, a4
                  c.addi       s7, 5
                  divu         s5, s3, t3
                  mulhu        s11, a7, s9
                  auipc        s7, 560190
                  c.slli       s11, 29
                  c.srli       a2, 31
                  rem          tp, s1, s9
                  sll          s1, s8, s11
                  c.and        s1, s0
                  c.sub        a3, a1
                  remu         s9, t3, a1
                  divu         s3, s3, s6
                  div          s11, a4, a5
                  rem          s7, t2, t6
                  c.nop
                  xor          s7, t3, s9
                  div          s3, s2, t4
                  srl          t4, t1, a6
                  and          s4, ra, s7
                  c.and        a0, a5
                  sra          zero, s0, s0
                  mulhu        zero, t5, t5
                  div          gp, t4, s2
                  c.addi       s0, 17
                  and          s1, s0, t4
                  c.li         s6, -1
                  mulhu        a2, t3, gp
                  slli         a3, a3, 28
                  c.addi       t5, -1
                  remu         s3, a1, a6
                  addi         gp, s8, 291
                  c.lui        a6, 5
                  srl          t6, t1, zero
                  xori         t5, t3, 23
                  mulhu        a1, t2, t6
                  andi         a1, s5, 421
                  andi         s6, sp, 178
                  slli         s11, s9, 4
                  c.mv         s0, s8
                  c.and        a1, s0
                  divu         t2, a3, s2
                  c.srai       a4, 19
                  remu         s3, s3, ra
                  c.sub        s1, a5
                  c.nop
                  c.slli       s6, 15
                  srli         s8, s2, 29
                  addi         t4, t5, -552
                  c.li         s6, -1
                  mulh         gp, s10, s0
                  rem          a6, s2, t1
                  andi         a2, s10, 754
                  c.and        a5, a4
                  slli         a0, s1, 15
                  c.and        a3, s0
                  sll          a5, a3, s6
                  rem          gp, ra, a3
                  c.add        ra, s0
                  mul          s11, s9, a1
                  mul          t2, a7, a1
                  c.andi       s1, -1
                  xori         a3, s6, 542
                  xori         s1, a1, 794
                  andi         s0, ra, -1949
                  rem          a3, s9, a4
                  or           a4, t5, s11
                  c.add        a7, s2
                  mul          t6, a7, s8
                  mul          a6, a2, s9
                  ori          s3, s3, -66
                  rem          s7, t0, ra
                  lui          tp, 787261
                  slt          gp, tp, a1
                  c.lui        a7, 4
                  srli         gp, s0, 18
                  mulh         a0, t0, t6
                  mulhu        s6, a3, zero
                  c.lui        s7, 16
                  c.srai       s1, 7
                  mulhu        a0, tp, a1
                  srl          t1, a2, zero
                  srli         s7, s10, 16
                  rem          s8, a3, t5
                  xor          ra, s9, zero
                  rem          zero, t1, s0
                  srai         a6, zero, 19
                  ori          a0, s1, -928
                  srli         zero, s11, 11
                  slti         a2, s9, -188
                  c.xor        s1, a1
                  sltiu        s8, s3, -1915
                  c.lui        a0, 3
                  srl          s6, sp, a1
                  srli         a6, s8, 15
                  srli         a6, a7, 21
                  nop
                  and          t0, a4, a1
                  xori         a3, a2, 283
                  andi         t4, s11, 1763
                  add          s3, s9, s0
                  sll          zero, s4, t0
                  xor          ra, s6, s10
                  and          gp, a5, s7
                  slti         s8, tp, 1531
                  mul          a0, s2, gp
                  div          a3, a7, zero
                  srli         s9, s9, 18
                  mulh         a3, a6, a5
                  srai         s6, zero, 29
                  c.andi       a3, 3
                  slt          a1, a2, a1
                  remu         gp, s4, a2
                  ori          s4, a0, 741
                  srai         s6, a5, 20
                  andi         a1, t5, -1952
                  c.nop
                  addi         s6, ra, 1298
                  or           a5, a2, a6
                  c.add        a2, s11
                  c.add        a1, t3
                  sra          a0, s2, t1
                  sltiu        s11, t4, -775
                  auipc        s7, 423409
                  mulhsu       s6, a5, s2
                  c.mv         s4, s8
                  mulhsu       s9, gp, a2
                  add          s3, s0, s8
                  c.xor        a5, a4
                  sll          a0, s3, s2
                  c.xor        a0, a0
                  sltiu        t5, a0, -1189
                  c.xor        a3, a4
                  rem          t2, ra, s0
                  or           s5, s3, t3
                  rem          s0, s10, ra
                  slt          s3, s9, a4
                  c.nop
                  mul          gp, a3, s7
                  c.srai       a1, 10
                  c.sub        a5, a2
                  mulh         s3, tp, a2
                  remu         t4, t1, s7
                  srl          t6, sp, s1
                  c.or         a0, a5
                  slli         t3, t0, 3
                  c.nop
                  div          a3, s0, s0
                  rem          t2, a3, a6
                  xor          a4, t5, t2
                  c.and        a5, a4
                  rem          ra, s4, s4
                  sltiu        t1, t1, -646
                  lui          tp, 21665
                  xor          a7, s2, a7
                  addi         tp, t4, -1651
                  c.addi       t4, 6
                  nop
                  sub          s8, t4, s8
                  c.lui        a0, 15
                  c.li         s5, -1
                  c.li         t6, -1
                  sra          s8, s3, t3
                  c.nop
                  sltu         s11, t3, tp
                  c.or         a1, a4
                  c.andi       s0, -1
                  remu         ra, s2, zero
                  remu         s6, a3, s8
                  slti         t1, s3, -512
                  c.srli       a2, 13
                  mulhu        t4, s2, t3
                  andi         t4, a7, 1078
                  ori          a6, t0, 2009
                  or           t4, a2, gp
                  c.or         a5, a2
                  srai         ra, s5, 16
                  c.xor        a3, a5
                  addi         s9, a6, -1309
                  addi         t3, s6, 1665
                  c.slli       s4, 12
                  slli         ra, s10, 18
                  c.add        a0, a5
                  or           a7, zero, s0
                  remu         s9, s11, t5
                  mulh         t1, a0, s6
                  mulhu        s8, s10, t5
                  remu         tp, a7, a7
                  and          t1, s4, a6
                  sltu         t0, s11, tp
                  sub          a2, a3, a1
                  nop
                  lui          s8, 994774
                  c.nop
                  c.sub        a1, a3
                  srai         a7, a7, 29
                  slt          s9, gp, tp
                  andi         s0, a2, -833
                  sltiu        a7, s9, 569
                  sltiu        s4, s8, 1373
                  mulhsu       s8, sp, s4
                  addi         a7, s10, -629
                  lui          t2, 1003651
                  xori         s7, ra, 1363
                  slt          gp, gp, a2
                  c.add        a2, a3
                  auipc        s3, 744933
                  sll          gp, ra, t3
                  remu         s1, ra, t5
                  xori         tp, t4, -1882
                  srl          t5, ra, s1
                  remu         t1, sp, sp
                  lui          s11, 436449
                  sra          s9, sp, s11
                  c.li         t4, 19
                  c.sub        a1, a0
                  srai         s6, a3, 23
                  sll          tp, s10, t6
                  mulhsu       s5, ra, gp
                  slli         a4, s2, 12
                  sub          zero, s9, ra
                  sra          t1, t5, a0
                  add          s9, s1, s5
                  c.sub        a2, a1
                  sltu         t5, a0, s1
                  sltu         t1, a7, s5
                  mulh         s6, s11, zero
                  c.srai       a3, 22
                  sll          t0, s4, s5
                  sub          t3, s1, s0
                  c.srai       a2, 24
                  mulhu        s11, a1, t6
                  c.add        tp, s9
                  div          t6, sp, a6
                  c.or         a4, a2
                  c.mv         s8, sp
                  srl          s5, a3, t5
                  sub          t0, s8, s5
                  c.andi       a1, -1
                  c.or         a0, a2
                  c.sub        a0, a3
                  addi         t6, s0, 976
                  add          a2, s5, a7
                  slli         a2, s7, 10
                  divu         s4, t2, s11
                  ori          tp, s3, 1196
                  c.xor        a0, a5
                  divu         t1, a0, a5
                  c.srli       a1, 3
                  slti         t1, s6, 1483
                  addi         s1, a6, -366
                  c.andi       s0, -1
                  add          tp, s0, s10
                  c.sub        s1, a2
                  nop
                  lui          a1, 989275
                  c.srai       a2, 6
                  and          a6, a0, a6
                  c.or         a4, a0
                  sra          t5, t4, t2
                  c.nop
                  sub          a3, zero, a2
                  c.nop
                  c.nop
                  srl          zero, a6, t3
                  sub          gp, t6, ra
                  c.andi       a0, -1
                  auipc        t4, 413495
                  c.srai       a5, 22
                  srai         a6, zero, 30
                  auipc        a2, 874982
                  xori         a3, tp, -306
                  mulhu        t3, t3, a1
                  c.slli       a6, 17
                  and          a7, t3, ra
                  c.and        a2, s0
                  sra          tp, zero, t1
                  c.and        a2, a1
                  sll          s4, a1, s7
                  slti         t4, a7, -2028
                  xor          a5, s6, t5
                  mulhsu       gp, s4, t1
                  c.li         a5, 11
                  c.nop
                  c.add        t1, a6
                  c.srai       a0, 8
                  c.nop
                  ori          s3, s0, 1764
                  add          s8, a0, a1
                  mulhsu       t1, a4, a1
                  xor          s7, s2, s0
                  c.xor        a3, s1
                  lui          a1, 652341
                  ori          t5, a2, -1458
                  c.addi       a4, 13
                  c.or         a0, s1
                  add          t4, t2, s2
                  sltu         s1, a5, s3
                  mulhsu       s9, tp, s10
                  c.and        a4, s1
                  c.or         s1, s0
                  andi         a0, t0, -672
                  or           a2, s10, s1
                  c.xor        a1, a5
                  sub          s4, gp, s4
                  c.lui        a7, 12
                  sltu         a7, t5, t6
                  div          a0, a3, s8
                  div          t5, t5, a0
                  srai         t1, ra, 18
                  c.lui        s8, 8
                  slli         s6, t3, 21
                  mul          t2, s8, s11
                  c.add        s0, tp
                  c.addi       s8, 13
                  c.andi       a4, -1
                  c.mv         t1, a4
                  c.and        a4, a3
                  c.and        a1, a4
                  c.nop
                  xor          s3, s2, sp
                  addi         a7, a4, -1653
                  sra          s0, sp, a0
                  lui          a0, 573418
                  sra          a2, s1, s3
                  divu         s8, s9, s11
                  nop
                  c.andi       a1, -1
                  sltiu        t1, s0, 941
                  slt          t4, a2, a0
                  c.addi       s6, -1
                  srai         a0, zero, 31
                  c.xor        a0, a1
                  c.or         s1, s1
                  xori         a1, gp, 718
                  xor          s9, t4, s10
                  and          s5, ra, t5
                  c.addi       t2, -1
                  and          s7, t2, t3
                  remu         a5, t2, s7
                  srl          t3, t2, gp
                  c.mv         t4, ra
                  rem          a5, s9, gp
                  slli         t4, t2, 28
                  mulh         t5, s3, s10
                  mul          a1, a0, a4
                  slti         t2, a2, -396
                  ori          t2, a0, 156
                  c.nop
                  lui          s9, 119500
                  srli         t4, s0, 17
                  mul          t1, a0, a7
                  addi         t4, a1, 1342
                  add          s5, s1, s3
                  slli         gp, tp, 21
                  ori          a4, s1, -730
                  sll          a6, s9, s9
                  sltiu        s3, t5, -1570
                  xori         s7, s7, -1920
                  and          a6, a6, a7
                  or           t1, a6, t2
                  div          ra, s11, ra
                  c.slli       s0, 30
                  srli         a5, a3, 12
                  auipc        t5, 126677
                  slti         tp, t0, 1691
                  sll          s5, s0, s7
                  c.li         t0, 18
                  c.li         s6, -1
                  c.nop
                  c.add        tp, a4
                  c.xor        s1, a4
                  auipc        a6, 624501
                  sltu         s3, a0, zero
                  c.or         a2, a0
                  addi         gp, s6, -1126
                  xor          a3, zero, tp
                  sltiu        s9, a4, 1351
                  lui          s3, 920632
                  slt          gp, s7, t6
                  or           ra, a7, s9
                  c.srli       s0, 13
                  c.and        a4, a2
                  srli         s8, s4, 25
                  sltiu        s9, t5, -853
                  sra          a6, t6, t5
                  c.sub        a2, a5
                  sll          s7, t6, t3
                  xori         s0, s0, -712
                  c.addi       t4, -1
                  rem          t3, t0, a6
                  rem          s3, t2, s4
                  lui          t0, 35267
                  and          s7, ra, a5
                  slli         a2, a7, 25
                  sub          a6, s0, a4
                  mulh         a7, s9, s3
                  srli         s4, sp, 14
                  xori         t2, s0, 685
                  sltu         s7, a6, a5
                  c.li         tp, -1
                  remu         tp, s6, s1
                  xor          s6, s4, t5
                  slti         a6, a5, 1336
                  sub          a6, s4, a6
                  c.add        a1, t2
                  and          s1, a1, t3
                  mulh         s5, s6, zero
                  c.mv         s8, s9
                  sub          a0, a3, a6
                  xor          s0, t2, tp
                  sub          s6, a1, t0
                  c.srli       a0, 4
                  sltu         a7, a5, s8
                  addi         a6, a1, 16
                  remu         s7, s11, s6
                  c.andi       a4, -1
                  c.xor        a0, a3
                  srl          a5, t4, s10
                  srli         t3, s3, 23
                  c.or         a3, a2
                  and          t2, s10, s9
                  c.xor        a0, a5
                  c.and        s0, a1
                  c.srai       a0, 13
                  or           a6, zero, a0
                  c.lui        t5, 10
                  srl          a7, zero, a0
                  c.or         s1, a5
                  c.lui        t6, 13
                  c.sub        a1, a3
                  div          a1, s0, t4
                  mul          zero, s1, t1
                  mulhu        s11, s4, a4
                  c.andi       a2, -1
                  slt          s5, t4, s9
                  c.andi       a3, 17
                  c.addi       ra, -1
                  mulh         tp, a0, a0
                  c.mv         s1, gp
                  srli         s6, s4, 22
                  sltu         a7, a6, a1
                  c.li         a5, 30
                  add          a0, s5, a7
                  andi         t6, t2, 1903
                  div          s7, a4, s2
                  c.xor        a4, a0
                  c.andi       a4, -1
                  srli         s3, s7, 3
                  mulh         s5, s8, s3
                  remu         t0, sp, a0
                  sltiu        t2, t3, -651
                  c.andi       a5, -1
                  c.and        a3, a3
                  sltiu        a5, a4, -663
                  slti         tp, t0, 1777
                  add          ra, zero, gp
                  sltiu        ra, a0, -1811
                  mulhsu       s5, s3, a7
                  mulh         t1, t4, s9
                  c.srai       a3, 19
                  c.lui        s0, 12
                  c.srai       a5, 28
                  and          zero, s10, a3
                  auipc        s0, 1023967
                  auipc        s1, 605788
                  andi         a0, gp, 1047
                  c.andi       a4, 18
                  c.slli       s1, 18
                  slti         s11, gp, 467
                  c.xor        a4, a4
                  srli         a0, s3, 17
                  c.andi       a1, -1
                  c.mv         s3, a1
                  c.srli       a1, 7
                  c.mv         a5, t5
                  andi         s6, s9, 717
                  c.mv         a0, a5
                  or           s6, t3, a3
                  c.li         s0, -1
                  andi         a6, s3, 1780
                  slli         a7, t2, 1
                  xor          s11, t1, t1
                  lui          s1, 639271
                  addi         t1, t5, 1973
                  auipc        s7, 53247
                  c.sub        s0, a3
                  c.nop
                  mulhsu       s11, s3, a7
                  srl          s5, zero, t1
                  sll          s0, ra, t3
                  add          a6, a0, t2
                  sltiu        gp, a5, -1711
                  c.srai       a2, 5
                  ori          t5, a4, 1316
                  sll          a2, a2, sp
                  or           a0, s11, t1
                  sra          tp, sp, a1
                  mulhsu       zero, s7, tp
                  c.srli       a4, 28
                  mulhsu       t0, s3, s7
                  sra          ra, sp, zero
                  sra          a4, s7, a2
                  sra          t1, s1, a6
                  srl          a1, a5, s7
                  c.slli       t0, 17
                  c.addi       a5, -1
                  srl          a4, t3, t2
                  c.srai       a2, 4
                  slti         ra, a0, 1333
                  c.and        a2, a1
                  c.mv         s6, s6
                  c.slli       s6, 29
                  c.add        s7, sp
                  sltiu        t1, s5, 300
                  add          s7, gp, t6
                  c.lui        s9, 8
                  div          tp, s10, t5
                  and          s4, a5, t0
                  ori          s0, gp, -593
                  c.slli       t2, 2
                  mulh         gp, t0, s4
                  sra          t6, s1, s3
                  srai         s7, s7, 31
                  remu         s5, a5, t0
                  c.nop
                  c.addi       s9, -1
                  c.srai       a2, 1
                  c.addi       s8, -1
                  div          s0, t3, a2
                  lui          s6, 991423
                  ori          t6, a3, 1108
                  sra          t5, t0, t4
                  sll          s9, a0, t0
                  sub          t3, t1, t0
                  c.xor        a1, a4
                  c.li         s7, 25
                  slli         s0, s4, 5
                  srli         a3, a5, 12
                  c.and        a5, a3
                  mulhsu       zero, a1, t5
                  ori          s4, a7, -1645
                  c.slli       s7, 7
                  nop
                  c.addi       t1, 4
                  div          t6, a5, s0
                  ori          s8, t1, 130
                  sltu         s0, s10, t6
                  rem          a5, t3, a2
                  srai         a1, a3, 22
                  ori          t5, t0, -376
                  mulhu        gp, s9, a5
                  mulhu        s11, s3, s7
                  ori          ra, s2, -1887
                  nop
                  xori         t2, t1, -1314
                  andi         s11, t5, -562
                  mulhu        a5, s8, t5
                  add          t4, s1, s6
                  c.li         a2, -1
                  nop
                  sra          t5, a2, t5
                  c.xor        a4, a4
                  c.add        t3, s2
                  xori         s0, s4, -9
                  c.sub        s0, s0
                  c.mv         a3, tp
                  srli         s9, a2, 24
                  mulhu        s0, s8, t5
                  c.sub        a1, a4
                  c.add        a6, a3
                  c.andi       a5, 7
                  c.lui        t1, 27
                  and          s11, t4, s10
                  c.mv         t2, gp
                  and          a0, s0, a0
                  c.nop
                  sll          a7, a3, a7
                  div          s4, tp, s3
                  srl          s0, t0, t6
                  c.slli       tp, 10
                  xor          a6, a1, a5
                  sll          zero, a2, t5
                  srai         zero, ra, 21
                  c.srai       a5, 30
                  c.add        a2, s10
                  slli         s11, t0, 14
                  auipc        s1, 1000201
                  andi         s5, s7, -903
                  c.and        a5, s0
                  andi         a7, a5, -2007
                  c.xor        s0, a0
                  c.mv         t0, s5
                  rem          t6, a7, tp
                  mul          tp, gp, s5
                  c.xor        s0, a3
                  mulhu        a2, a5, t6
                  div          a0, sp, t6
                  c.and        a2, s1
                  c.slli       a5, 8
                  c.srai       a3, 3
                  c.mv         s8, a3
                  or           a7, s8, ra
                  div          ra, s6, a2
                  sltu         t4, a1, s8
                  c.srli       a3, 1
                  mulh         t4, t1, s9
                  auipc        a7, 813588
                  divu         a5, a4, t3
                  c.or         a0, a0
                  mul          s4, s3, t1
                  mulhu        t3, s4, a7
                  div          a4, a7, a0
                  sra          a7, t5, s9
                  c.sub        s1, a5
                  nop
                  xori         s1, s11, -252
                  xor          gp, t1, a6
                  andi         t5, a6, -230
                  xor          s9, s8, t4
                  c.li         s0, -1
                  c.or         a0, a4
                  c.add        ra, s8
                  lui          t1, 716122
                  mulhu        gp, s1, a5
                  auipc        a2, 273428
                  c.sub        a2, a2
                  addi         a1, a2, 80
                  addi         a5, sp, -1503
                  xor          s5, s11, s0
                  mul          s0, s8, s3
                  xor          s1, s8, t2
                  mul          s9, s6, t3
                  srli         gp, t4, 25
                  c.or         s1, a3
                  c.addi       a2, 21
                  sltiu        a1, s3, -1411
                  add          s9, t0, a3
                  mulhu        ra, zero, s8
                  c.li         a0, 26
                  c.lui        s5, 30
                  remu         t5, s10, s4
                  auipc        a5, 53883
                  c.sub        a5, a5
                  addi         a6, t6, 1181
                  sll          t3, s6, s6
                  slti         s4, s6, -1492
                  div          a2, s4, t4
                  c.xor        a2, a0
                  remu         a0, t5, s3
                  c.sub        a1, a5
                  sltu         s11, s8, a3
                  lui          a1, 8615
                  c.add        a1, s10
                  c.and        a5, a5
                  sltu         a1, a6, a5
                  auipc        t6, 714788
                  mulhu        gp, t2, s5
                  and          ra, t2, t4
                  c.xor        a3, a3
                  c.mv         s4, ra
                  c.or         s0, s0
                  c.slli       ra, 5
                  srli         a6, t2, 3
                  c.andi       a4, 9
                  auipc        t5, 368521
                  or           t2, t3, t4
                  c.and        a1, a4
                  mulhu        s7, s5, a2
                  xor          gp, t4, s1
                  divu         t2, s3, t0
                  lui          s3, 577742
                  sll          a2, a4, s8
                  xori         a0, s6, -599
                  auipc        s3, 906266
                  mulhu        s0, a6, s10
                  lui          a7, 378644
                  c.sub        a2, a5
                  sra          a5, a3, a4
                  c.add        t2, a1
                  c.nop
                  c.li         a0, -1
                  mul          s8, s7, s8
                  slt          a0, t2, s0
                  srli         t1, t4, 30
                  add          a6, s11, t1
                  c.sub        a5, a2
                  c.li         t5, 26
                  mulh         s6, a5, s3
                  c.li         s0, -1
                  slt          a2, zero, a5
                  and          t4, gp, a1
                  addi         t5, t0, 555
                  andi         t3, t4, -995
                  auipc        a5, 496548
                  mulh         a1, a4, t4
                  c.xor        a5, a2
                  c.lui        s8, 23
                  sra          s1, a2, s6
                  sub          s4, tp, s5
                  slli         a4, zero, 14
                  ori          zero, a6, 1111
                  add          s7, a3, t0
                  c.li         tp, -1
                  slt          a7, a7, a6
                  sltiu        gp, s6, 1479
                  c.or         a4, s1
                  srl          s3, s4, t4
                  remu         a6, a3, t3
                  c.xor        s1, a4
                  c.li         t6, 3
                  sra          a3, t0, sp
                  and          t3, a2, a1
                  c.or         s1, s1
                  sll          a2, s1, t1
                  c.andi       a0, -1
                  srli         a1, s2, 24
                  sub          s0, s0, t1
                  c.and        a0, s1
                  andi         a1, s4, 1034
                  auipc        s8, 1013853
                  div          t1, s7, s11
                  c.andi       a3, 15
                  c.nop
                  addi         t6, t5, -1791
                  sub          s8, a4, zero
                  addi         a0, tp, 1955
                  slti         t4, a4, -359
                  c.slli       s11, 6
                  divu         t5, s4, sp
                  nop
                  c.lui        s6, 24
                  c.lui        a2, 13
                  xor          zero, s9, t5
                  mulhu        a7, t2, s2
                  sll          s1, a1, t0
                  slli         tp, gp, 6
                  srai         a6, s5, 19
                  sra          a4, s3, s11
                  auipc        s6, 14032
                  c.addi       a6, -1
                  c.srai       a4, 9
                  remu         t6, s11, t6
                  auipc        ra, 702797
                  c.andi       a5, 15
                  mulh         t2, s1, s7
                  slt          s3, s8, t2
                  lui          s6, 2529
                  sltiu        a1, s3, -698
                  srli         zero, a2, 28
                  slti         s1, zero, -1186
                  c.li         a4, 19
                  sra          a5, a1, a4
                  srli         s3, s0, 5
                  c.slli       s6, 5
                  mulhu        t5, s6, sp
                  c.nop
                  c.andi       a5, 20
                  auipc        s0, 12132
                  rem          s3, t5, s6
                  c.sub        s0, a0
                  c.slli       a2, 28
                  sra          a6, ra, s1
                  sll          a7, a5, t4
                  c.lui        t2, 24
                  c.slli       t3, 11
                  auipc        t4, 359364
                  addi         s8, a5, -34
                  remu         s9, t3, s7
                  and          t3, a1, s10
                  srli         s0, sp, 11
                  c.xor        s1, a0
                  c.slli       a2, 18
                  sra          a2, s3, gp
                  xori         a0, sp, -1671
                  c.mv         s8, s5
                  c.andi       a4, -1
                  sll          s8, s3, a6
                  add          gp, s2, t1
                  c.add        t0, t3
                  c.li         a1, -1
                  mulh         t6, a3, s5
                  srli         t6, s2, 12
                  c.sub        a2, s0
                  xori         ra, s2, -727
                  and          a2, s2, a5
                  xor          a7, a7, s1
                  c.xor        a3, a3
                  mulhu        t3, s9, tp
                  sub          tp, s4, s9
                  or           t1, t4, ra
                  auipc        t4, 747699
                  or           zero, sp, s11
                  slti         a0, a4, 520
                  c.nop
                  c.sub        a2, a2
                  c.sub        a0, a0
                  slt          gp, gp, s8
                  c.andi       a1, -1
                  srl          a2, s3, s9
                  xori         s9, t2, -1463
                  c.srai       a3, 10
                  mulhu        s5, s3, t1
                  c.xor        s1, s0
                  or           s0, s10, t2
                  mulhsu       s0, t3, s3
                  ori          a3, s6, 1229
                  c.sub        a0, a1
                  c.xor        a4, a4
                  c.or         a5, s1
                  c.mv         a1, a7
                  slli         t3, a6, 20
                  sltiu        s0, t3, 227
                  c.and        a1, a1
                  c.li         s6, -1
                  and          gp, s2, ra
                  c.li         ra, 17
                  sltiu        s7, t3, 47
                  srl          s4, a4, s3
                  sra          a2, a2, a7
                  ori          t1, ra, 1603
                  and          s8, t2, a0
                  c.li         tp, 29
                  c.srai       s1, 20
                  c.slli       a5, 20
                  ori          a4, s4, -543
                  and          s6, s0, s11
                  slt          tp, s0, a6
                  auipc        s5, 976884
                  srl          t0, s8, s5
                  c.addi       t6, -1
                  addi         t2, t6, 1869
                  div          s3, a0, a0
                  nop
                  add          a1, a7, t1
                  c.nop
                  c.addi       tp, -1
                  mulhu        gp, t6, s2
                  remu         t2, a0, s1
                  c.nop
                  c.slli       s6, 19
                  nop
                  slti         s3, s0, -258
                  c.xor        a0, a0
                  mulh         a7, s8, s0
                  addi         t1, s11, -992
                  c.xor        a5, a3
                  c.sub        a0, s0
                  c.add        t0, t1
                  mulh         a4, s10, ra
                  xor          s3, a6, t2
                  c.add        a0, gp
                  remu         s9, a1, a7
                  mulh         s8, t4, s7
                  sll          a7, t2, tp
                  mul          a6, a5, a1
                  mulhsu       s9, a5, s1
                  or           s9, a4, a0
                  c.and        s0, a1
                  mulh         a3, a2, a5
                  add          a4, s9, s3
                  c.add        s8, s1
                  c.addi       t5, 29
                  rem          s3, s4, t5
                  srai         gp, t2, 16
                  c.and        a3, a1
                  add          a3, s4, s11
                  lui          t5, 824965
                  or           a0, s11, a3
                  or           a6, t2, a2
                  sll          t4, zero, a6
                  andi         s6, t0, -1072
                  lui          a4, 1020377
                  sub          a5, t6, a3
                  sltu         s6, s4, s6
                  nop
                  c.li         s3, 16
                  slt          s4, s1, a6
                  sra          s1, a4, s3
                  c.or         a0, a3
                  or           t3, s7, s3
                  slli         a0, zero, 27
                  nop
                  mulhsu       t2, a4, tp
                  mulhsu       s11, s9, t0
                  slt          zero, a2, s2
                  sub          s6, ra, a6
                  remu         gp, s8, tp
                  mulh         t2, a2, s4
                  c.li         s7, -1
                  c.and        a3, a2
                  c.addi       s5, -1
                  c.slli       a2, 5
                  slt          s6, s7, tp
                  c.nop
                  mulhu        s11, a7, s4
                  andi         a6, t0, -1749
                  add          s4, a5, t3
                  c.or         s0, s1
                  srl          s11, t2, s3
                  mulh         ra, tp, a0
                  slli         a4, s5, 28
                  mulh         tp, a5, s9
                  slt          a4, sp, s5
                  sltiu        a2, a2, 1291
                  nop
                  mul          s3, a7, s2
                  nop
                  c.add        s7, s3
                  sll          gp, sp, s6
                  auipc        s5, 538552
                  sltiu        t5, a6, -919
                  xor          t4, t4, t4
                  add          s3, s8, s0
                  lui          gp, 542062
                  c.srai       s0, 15
                  c.andi       a1, -1
                  c.add        t5, a1
                  and          s3, t6, t0
                  c.lui        a0, 17
                  c.addi       t2, -1
                  mul          s5, a0, t0
                  nop
                  c.sub        s1, s1
                  and          zero, s7, s9
                  c.mv         s4, s6
                  c.or         a1, a0
                  c.lui        gp, 26
                  addi         a0, t3, 414
                  c.srli       a1, 26
                  lui          s6, 703641
                  c.nop
                  ori          t6, s11, -31
                  rem          gp, ra, gp
                  srli         a5, a5, 22
                  c.srli       a1, 12
                  nop
                  c.or         a3, a5
                  div          s6, t4, sp
                  c.srli       a5, 26
                  lui          t1, 317285
                  andi         gp, s8, -420
                  c.slli       a6, 17
                  c.add        a7, s8
                  c.andi       s0, -1
                  add          gp, t5, a7
                  srai         t4, a2, 13
                  rem          a4, s8, sp
                  c.srai       a3, 11
                  sll          a1, s11, a3
                  ori          t6, a7, 64
                  sltu         t6, s9, a4
                  xor          a2, s2, s10
                  sltu         s9, s11, t4
                  or           s9, zero, ra
                  c.add        a6, a0
                  mulh         a5, t4, s5
                  xori         s7, tp, 287
                  sra          s11, t4, a0
                  remu         s7, t3, s2
                  mul          s5, t2, s9
                  c.or         a1, s0
                  div          s6, s11, t1
                  sltiu        t4, gp, 913
                  slt          t4, sp, a2
                  c.xor        s1, a4
                  andi         t2, a3, 1786
                  c.srli       a4, 26
                  c.xor        a4, a1
                  c.and        a4, s0
                  div          s3, t4, a0
                  c.srli       s1, 7
                  sra          ra, t5, a4
                  divu         s3, a7, gp
                  andi         t5, s1, -2019
                  and          s0, s5, s9
                  slt          s3, a6, zero
                  mulh         t2, gp, a5
                  sll          gp, s0, s10
                  c.slli       t2, 28
                  mulhu        a2, sp, a6
                  mulhsu       a3, a7, t3
                  and          a3, t2, a5
                  rem          t6, t3, s8
                  c.srai       a2, 25
                  c.srai       s1, 31
                  sra          a2, s5, s11
                  mul          t6, s0, tp
                  lui          zero, 662046
                  c.or         a1, a5
                  mul          a1, t0, s4
                  c.slli       a1, 15
                  c.srli       a4, 13
                  mulh         gp, t0, s2
                  nop
                  ori          a4, a2, 98
                  c.lui        a2, 28
                  c.mv         t2, a3
                  slli         t6, a7, 14
                  c.addi       t0, 10
                  xori         a7, gp, -941
                  or           s4, a3, tp
                  c.xor        s0, a1
                  c.or         a3, a3
                  srli         s0, s7, 24
                  srai         gp, s5, 17
                  divu         t5, t2, t2
                  c.add        t4, s7
                  ori          t5, t5, 801
                  addi         s7, s1, -872
                  c.andi       a2, 18
                  ori          s4, a1, -1103
                  add          t4, a5, a7
                  nop
                  andi         gp, sp, -624
                  c.andi       a4, -1
                  or           a3, a5, sp
                  sltiu        a3, t2, 956
                  srai         t2, s0, 22
                  addi         s1, a6, -601
                  c.srli       a4, 11
                  mulhsu       tp, s5, t4
                  divu         t0, sp, a4
                  remu         t1, a4, a3
                  divu         s9, a2, s4
                  slli         tp, s5, 28
                  c.nop
                  mulhsu       gp, a4, ra
                  mul          s0, s4, s5
                  andi         a4, s11, 445
                  c.mv         t6, a4
                  sltu         s11, s0, s2
                  slli         s8, t0, 16
                  c.andi       s1, 8
                  c.sub        a0, s1
                  rem          a7, t6, a4
                  sra          t3, s4, gp
                  c.nop
                  remu         gp, a6, a7
                  slli         s8, s10, 16
                  c.srli       s1, 28
                  c.slli       s8, 18
                  c.andi       a5, -1
                  mul          s5, sp, a2
                  srli         a0, tp, 7
                  c.slli       s6, 14
                  andi         s4, s5, 1796
                  addi         s3, s1, 1959
                  c.li         a6, -1
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           a6, 0xffffffff
                  li           s5, 0xffffffff
                  li           s11, 0x80000000
                  li           s7, 0x80000000
                  li           a4, 0x67e2f29d
                  li           s8, 0xffffffff
                  li           t3, 0x80000000
                  li           s6, 0x0
                  li           s0, 0x9ee0dbd8
                  lui          s0, 152134
                  mulhsu       s8, s0, a6
                  mul          s11, s11, s7
                  addi         s11, a6, 339
                  mulhsu       a6, s6, t3
                  sub          s11, s0, s8
                  nop
                  div          s11, a4, a6
                  addi         s7, s11, 79
                  lui          a4, 425188
                  mulh         s8, s0, a6
                  auipc        a6, 310742
                  auipc        a6, 501636
                  sub          s5, s5, s0
                  add          t3, a4, s11 #end riscv_int_numeric_corner_stream_33
                  c.nop
                  c.slli       s0, 7
                  or           s11, gp, s6
                  and          s0, t1, s4
                  sltu         s11, a1, a0
                  slt          gp, s4, t0
                  divu         a0, t4, s11
                  add          a2, s5, t5
                  c.xor        a0, a4
                  addi         s4, sp, -1574
                  sltiu        tp, s5, 614
                  rem          s0, a4, zero
                  addi         s8, s5, -634
                  ori          a0, t2, -1503
                  div          a5, s3, a6
                  c.slli       t0, 4
                  sra          t4, t4, s7
                  divu         s0, s4, a4
                  c.xor        a2, a5
                  slti         tp, a2, -287
                  sub          t3, s6, s0
                  sltiu        a3, sp, 276
                  c.sub        a5, a0
                  srl          a0, t2, a4
                  sll          s11, a2, zero
                  srai         t4, t3, 19
                  slt          t5, a7, t3
                  c.and        a2, a2
                  srai         s5, a5, 13
                  srai         a0, s2, 19
                  c.lui        s3, 15
                  and          s6, a0, a2
                  c.and        a0, a2
                  ori          ra, a4, 1860
                  xor          s5, tp, a6
                  c.srli       a2, 4
                  c.and        s1, a4
                  mulhsu       t2, s7, zero
                  c.add        a6, gp
                  lui          t2, 149892
                  xori         t6, a5, 993
                  c.addi       s11, -1
                  remu         zero, t2, a1
                  andi         zero, s0, -1968
                  addi         a4, a1, 1689
                  ori          t5, t1, 358
                  mulhu        tp, sp, t0
                  lui          t3, 232418
                  ori          t6, zero, 388
                  srai         s7, a1, 3
                  andi         a3, s11, -1325
                  xori         a1, s3, 1627
                  nop
                  c.sub        a1, a4
                  c.addi       ra, 11
                  div          s6, sp, s0
                  sltiu        s7, s4, 1335
                  c.and        a4, a1
                  auipc        s5, 960475
                  nop
                  sra          a7, t3, t2
                  add          s4, s2, t1
                  rem          s9, t5, a4
                  c.srli       a1, 12
                  c.li         t2, 24
                  mulhu        a1, a6, a0
                  srli         a0, s10, 24
                  c.srli       s1, 18
                  add          t6, s3, t2
                  addi         t5, s2, 1127
                  mul          s11, t2, zero
                  c.or         a4, a5
                  sra          s5, a2, t3
                  c.mv         s9, a0
                  slt          ra, s1, s8
                  addi         s0, a0, -1276
                  c.srai       a5, 30
                  mulhu        s1, a6, s10
                  lui          t2, 473705
                  srli         s7, gp, 16
                  sll          zero, t1, s11
                  c.li         a0, -1
                  slli         s11, a2, 13
                  c.and        a1, a3
                  mulhsu       a3, a5, a7
                  div          s5, s2, a1
                  c.slli       t0, 19
                  slt          zero, a6, s0
                  divu         t5, s9, t5
                  and          t0, a5, a4
                  srai         t1, s6, 13
                  c.mv         a0, s6
                  addi         s8, a6, -395
                  srai         s9, t3, 29
                  c.li         t0, 4
                  sra          t3, s7, s3
                  sra          s1, t2, sp
                  c.xor        a2, a1
                  c.mv         s7, a5
                  c.slli       t2, 10
                  c.slli       s5, 15
                  xori         t1, s11, 823
                  c.andi       s0, 21
                  mul          s7, s10, a2
                  c.lui        s9, 13
                  sra          a7, s9, t1
                  sll          t3, t4, zero
                  c.sub        a0, a0
                  mulhu        s6, a1, s11
                  sra          s4, s4, a5
                  divu         tp, t3, t0
                  sll          a4, t6, a5
                  mul          t1, s8, t0
                  c.nop
                  c.xor        a1, s0
                  c.mv         t3, s1
                  slli         zero, t4, 20
                  addi         a6, t0, -1461
                  c.li         s4, 15
                  slli         a7, s5, 12
                  mulhsu       a6, s9, t6
                  c.xor        a4, a1
                  sltiu        a3, s6, 744
                  xor          a4, t2, gp
                  c.sub        a0, a4
                  addi         a6, a3, 24
                  lui          t5, 99238
                  xori         a7, a0, 770
                  srl          a6, a6, s8
                  c.slli       s5, 10
                  nop
                  mul          s11, ra, a4
                  xor          s5, a7, a6
                  mulhu        t2, s9, s0
                  c.nop
                  sll          a2, a0, s5
                  c.li         s11, -1
                  c.srai       a2, 2
                  srl          a2, t3, s1
                  ori          a0, t4, -1734
                  auipc        s5, 319461
                  auipc        a2, 290502
                  sltu         a5, t3, t1
                  srai         s4, ra, 24
                  rem          s0, a6, zero
                  c.nop
                  divu         gp, s5, t2
                  auipc        s7, 809651
                  c.and        a5, a1
                  c.addi       t3, -1
                  remu         t1, s8, t1
                  nop
                  c.or         s0, a1
                  sltu         t5, t5, t2
                  srli         a7, t2, 26
                  c.sub        a3, s1
                  auipc        a1, 879954
                  c.or         s0, a2
                  mulhsu       t4, sp, s2
                  c.srli       a1, 3
                  c.li         s8, -1
                  c.addi       s8, -1
                  mul          t0, t4, t2
                  mulhu        a1, ra, t3
                  c.srai       a5, 16
                  div          a0, s2, s9
                  ori          tp, s1, 1475
                  c.add        t5, s1
                  mulhu        a6, a0, zero
                  slti         s5, s6, 929
                  c.srai       s0, 29
                  xor          s3, t0, s0
                  c.addi       s6, -1
                  c.lui        s8, 12
                  xor          t3, s4, a4
                  xori         gp, a0, -1416
                  div          a6, a6, sp
                  xori         s1, s4, -1436
                  c.lui        a7, 1
                  mulh         s7, t0, s6
                  sra          a2, a6, s11
                  slli         a1, t1, 13
                  xori         t3, t5, -1459
                  sltu         a3, s0, a3
                  mulh         s5, t6, a7
                  addi         t0, sp, 80
                  c.srli       a0, 18
                  c.lui        s0, 12
                  srai         gp, s1, 28
                  c.sub        s0, a3
                  sltu         t1, s4, a1
                  c.li         a3, -1
                  c.and        a4, a3
                  c.mv         s8, gp
                  add          s9, s2, s4
                  c.sub        s1, a4
                  c.addi       a5, 14
                  mul          s8, t3, t2
                  sub          a3, s2, a7
                  c.or         a4, s0
                  div          t5, s9, zero
                  c.mv         t0, s2
                  mulhu        s6, s10, t1
                  srl          a0, s3, s5
                  c.srli       a5, 21
                  mul          a1, s2, s11
                  nop
                  c.and        s1, a4
                  c.srli       s1, 8
                  mulh         s8, a7, a0
                  mul          s7, s8, s2
                  or           s3, ra, gp
                  mulhsu       s6, s4, s8
                  sll          s3, gp, s6
                  sub          ra, a4, t6
                  rem          a1, s11, s8
                  and          a5, tp, s5
                  mulh         s0, s5, s1
                  c.xor        a0, a2
                  c.li         t3, -1
                  mul          a0, s7, gp
                  c.and        s0, a4
                  xori         t1, t0, -413
                  ori          s0, a1, 1494
                  or           a2, a0, a6
                  rem          s7, t4, gp
                  lui          s6, 372320
                  addi         t3, t4, -1697
                  slli         t1, t1, 8
                  sra          a0, zero, a0
                  srl          t2, s7, a1
                  c.srli       a2, 8
                  addi         t2, a4, 232
                  sll          t5, s5, s7
                  c.nop
                  divu         a1, a6, s2
                  c.addi       tp, -1
                  nop
                  c.mv         ra, s10
                  sltiu        t4, gp, 725
                  and          s11, t1, a2
                  divu         s5, s4, a2
                  nop
                  c.li         a7, 17
                  sub          s7, s5, a6
                  srai         s6, a6, 3
                  remu         t4, s10, gp
                  auipc        t0, 977360
                  rem          t1, zero, s8
                  mulh         s0, a4, s8
                  slli         a4, t2, 18
                  mulh         a0, a1, a4
                  c.li         s11, -1
                  c.xor        a3, a1
                  slti         gp, t0, -1027
                  c.or         a1, a1
                  slt          s8, s1, s11
                  c.addi       a5, -1
                  mulhu        t5, a4, t4
                  divu         a1, s9, a2
                  slli         s1, s0, 20
                  c.add        t0, sp
                  c.andi       a3, -1
                  c.mv         s7, a2
                  c.and        s1, a1
                  srai         s5, t3, 31
                  addi         t4, a6, 1709
                  c.srai       a3, 13
                  sltu         t6, zero, ra
                  c.sub        a1, s0
                  c.srai       a0, 27
                  div          s9, a0, s9
                  or           a5, t3, t5
                  rem          t1, gp, s1
                  c.srli       a3, 27
                  c.sub        a4, a4
                  c.xor        a1, a0
                  c.xor        a0, a1
                  mul          s8, s0, t6
                  auipc        s1, 558817
                  divu         a6, t0, s9
                  c.and        s1, s0
                  srai         s9, s10, 23
                  andi         a1, s6, 80
                  slt          s11, s2, t4
                  mulh         t2, a2, t4
                  lui          a6, 83051
                  mul          s7, a6, ra
                  sra          a6, zero, t5
                  and          t3, s3, s9
                  c.srli       a3, 11
                  slli         zero, t0, 16
                  c.sub        a3, a2
                  c.srli       a1, 5
                  c.or         a1, a0
                  sll          a6, a2, ra
                  remu         s0, zero, s0
                  c.li         t6, 15
                  mulhu        a2, a6, t2
                  sltiu        gp, a5, -32
                  auipc        s8, 775417
                  c.slli       t4, 26
                  sltu         s9, a1, a3
                  srl          s3, s7, tp
                  sub          t4, s1, s11
                  and          a2, a4, a2
                  srli         s8, s10, 18
                  sll          a1, t4, a6
                  auipc        a7, 197793
                  c.sub        a1, a1
                  c.addi       tp, 7
                  auipc        s5, 272904
                  slt          gp, t0, a6
                  c.srli       a4, 15
                  c.nop
                  divu         s6, t5, s8
                  slti         a1, s3, -1199
                  c.sub        a5, s0
                  mulhsu       a4, a2, tp
                  c.sub        s1, a3
                  mul          a7, s2, t1
                  slli         t2, a6, 27
                  sub          s11, a7, a6
                  divu         s8, s7, a2
                  andi         t6, s1, 304
                  or           t6, s8, s9
                  nop
                  slli         t1, a3, 9
                  c.srai       a1, 25
                  srai         tp, sp, 23
                  c.slli       s3, 18
                  mulhsu       t0, t4, t0
                  xori         zero, s0, 363
                  mulhu        a7, s9, s9
                  nop
                  c.nop
                  mul          s5, t2, a6
                  mulhu        s6, s8, s6
                  mulhu        a0, s6, s10
                  and          gp, sp, s4
                  mulhsu       s3, s0, gp
                  c.nop
                  divu         s9, a3, s4
                  addi         s1, s6, 29
                  slt          s11, s1, s0
                  divu         t2, t5, t6
                  c.or         a1, s1
                  auipc        gp, 440048
                  divu         tp, zero, s6
                  divu         t6, t6, s5
                  sra          t2, a0, s11
                  c.addi       s11, 24
                  divu         s1, a0, a4
                  srli         a1, t4, 20
                  nop
                  mulhu        a4, a7, s4
                  c.or         s0, a5
                  ori          s3, s7, -1380
                  addi         s1, a6, -1893
                  ori          a0, a3, 988
                  c.lui        a0, 1
                  c.mv         t4, sp
                  sltiu        s1, s8, -196
                  divu         s4, gp, s7
                  c.xor        a3, a2
                  addi         a5, s7, -1162
                  xori         t6, t3, -1138
                  xor          a6, s5, t5
                  c.slli       tp, 19
                  nop
                  xori         s9, t2, 415
                  ori          a5, a3, 557
                  c.add        t4, a2
                  c.sub        a2, a4
                  c.add        s6, tp
                  slli         a7, a6, 13
                  and          a6, t1, t0
                  slt          s1, ra, sp
                  addi         a7, a3, -303
                  c.addi       a0, 22
                  sltu         s4, ra, s0
                  slt          s8, s10, s9
                  slt          tp, t3, sp
                  srai         tp, ra, 16
                  c.srai       a5, 21
                  slti         t5, t6, 280
                  add          s6, s7, a3
                  xori         t1, a1, -1061
                  and          s0, s0, a3
                  c.nop
                  divu         s8, sp, s3
                  c.slli       s4, 15
                  add          a5, s6, s4
                  rem          t5, sp, s7
                  c.mv         s1, t5
                  c.and        s0, a5
                  ori          s8, a6, -597
                  c.and        s1, s1
                  mul          t1, t4, a2
                  c.addi       a0, 27
                  srli         t0, s4, 24
                  c.mv         t5, s11
                  sra          s6, a7, gp
                  auipc        s8, 200276
                  xori         a3, t4, -208
                  c.li         s11, 20
                  slti         ra, s2, -1831
                  auipc        a0, 808479
                  sltiu        s7, s8, -1792
                  slti         s4, t3, 1579
                  sra          a0, a0, ra
                  sub          s1, s3, s0
                  slt          t6, zero, s7
                  c.or         a3, a5
                  and          ra, a6, t5
                  div          a3, s7, t6
                  c.sub        a2, a4
                  lui          ra, 983364
                  slt          t5, tp, s6
                  c.sub        a5, s0
                  slt          t6, tp, t1
                  nop
                  slti         s6, s3, -782
                  c.and        a1, a5
                  divu         t6, s10, a1
                  sltu         s3, s6, a2
                  c.add        a4, s9
                  lui          s1, 453202
                  andi         a7, t0, -1192
                  slli         a3, t5, 24
                  or           gp, s2, ra
                  add          t1, s9, s2
                  ori          s11, a6, -1748
                  sll          t2, t1, s0
                  andi         s6, s1, -1743
                  c.li         a1, -1
                  c.li         s5, 31
                  sub          a0, s9, s2
                  mul          t5, a0, a0
                  c.nop
                  c.nop
                  or           s1, s1, t6
                  rem          tp, a0, a0
                  sra          gp, s2, ra
                  sltiu        a0, zero, -1863
                  c.or         a0, s0
                  and          s7, s3, gp
                  remu         s4, s8, a4
                  sra          a5, t1, a0
                  div          t3, gp, s2
                  slt          s3, ra, t3
                  sub          a1, a0, t4
                  div          gp, gp, s4
                  or           s8, s8, a6
                  div          t5, t2, t2
                  srai         t0, tp, 22
                  andi         t5, s10, -426
                  div          s8, t1, gp
                  sltiu        s6, t5, -1102
                  srl          s4, s4, s6
                  srl          s0, t4, t5
                  sra          s8, t1, zero
                  auipc        s8, 180954
                  c.xor        a1, a4
                  remu         s7, a1, s4
                  sltiu        a2, s6, 70
                  sll          a7, gp, t0
                  c.xor        a4, a5
                  c.li         s0, -1
                  c.xor        a0, a2
                  andi         a2, a7, -64
                  srai         tp, t1, 17
                  c.li         s9, 12
                  c.sub        s0, a5
                  c.addi       a6, -1
                  mul          s11, s3, s9
                  c.li         a3, 0
                  c.addi       t1, -1
                  c.srai       s0, 24
                  c.lui        t5, 6
                  ori          s1, s0, 473
                  c.sub        s0, s0
                  sub          ra, t4, a0
                  rem          t1, s1, t4
                  or           a2, s7, a2
                  c.nop
                  c.lui        s8, 27
                  c.li         s0, 24
                  c.srai       a3, 10
                  ori          a5, a1, -864
                  sll          ra, a5, s0
                  c.andi       a3, -1
                  sub          s6, s6, s7
                  xor          ra, s10, s8
                  c.sub        a1, s0
                  c.srli       a0, 1
                  xori         tp, s3, -755
                  slli         s3, a0, 4
                  srai         zero, t3, 7
                  c.sub        a2, s0
                  rem          a1, t6, a1
                  c.addi       s6, 6
                  c.sub        a1, a1
                  or           a1, gp, a7
                  slt          t1, a0, s5
                  c.sub        s1, a2
                  divu         s3, s1, a3
                  xori         t0, zero, 547
                  srli         a1, a4, 12
                  sra          a1, a3, s1
                  c.lui        s8, 15
                  rem          s5, s7, s6
                  lui          t2, 597743
                  sub          t4, t3, t3
                  sra          a4, s11, s10
                  mul          a4, a6, a3
                  sltu         ra, t6, s3
                  mulhu        a1, t4, t5
                  andi         a3, s5, 1731
                  or           t4, a4, s5
                  srl          s3, a1, ra
                  c.lui        t5, 22
                  mulh         a2, a1, s2
                  slli         s8, a1, 19
                  divu         s9, a6, tp
                  c.srli       a3, 25
                  nop
                  auipc        t4, 223490
                  c.and        a1, a5
                  c.add        tp, t6
                  divu         a0, zero, a5
                  slt          s5, a2, a6
                  c.srli       a5, 3
                  c.or         a5, s0
                  mulhu        t4, s4, sp
                  c.lui        a4, 21
                  mulh         a3, a2, ra
                  c.li         a3, 1
                  srl          a5, s10, a6
                  c.andi       a1, -1
                  slli         s3, s7, 24
                  c.add        t2, t0
                  c.andi       a4, 14
                  xor          s0, s1, a4
                  mul          s3, s8, t0
                  mulh         a3, tp, gp
                  xori         s4, s10, -1602
                  c.and        s1, a2
                  sltu         t2, t1, t1
                  xori         s7, t6, 702
                  mul          t4, gp, t2
                  and          s1, s8, a7
                  c.srai       a0, 30
                  and          s6, t2, t1
                  srai         s11, s8, 25
                  auipc        a4, 482914
                  c.addi       s4, -1
                  c.xor        a3, s1
                  slti         t0, s7, -446
                  sll          t5, a4, s7
                  c.add        a6, s4
                  c.or         s0, a2
                  div          s3, a7, t0
                  c.slli       a5, 18
                  add          ra, s9, s9
                  c.srli       a3, 15
                  sltu         a2, a5, t5
                  div          a4, s9, s9
                  c.add        a0, s5
                  c.xor        a0, s0
                  add          tp, s2, tp
                  mul          s11, a7, a6
                  or           s3, s7, t1
                  mulh         t6, s5, ra
                  c.andi       a3, 10
                  mulh         a2, a6, s3
                  mulhu        t0, s0, t1
                  c.li         a3, -1
                  c.srai       s1, 21
                  div          s8, a3, sp
                  slti         s5, a5, 316
                  c.mv         s5, s1
                  add          s3, a2, s9
                  divu         a0, a2, s10
                  remu         s1, a7, a7
                  mul          s1, t6, s7
                  addi         s3, t2, -1714
                  addi         s7, s11, 41
                  sltiu        zero, s8, -1187
                  addi         t5, t4, 1138
                  srli         a1, a3, 21
                  c.li         tp, -1
                  rem          a4, s7, a0
                  ori          a6, a0, 572
                  xori         t6, s0, 447
                  ori          s0, a1, -1333
                  c.srai       a1, 11
                  or           gp, gp, zero
                  sll          t3, s4, t1
                  c.sub        a4, a1
                  c.srli       s0, 17
                  xori         s0, t6, -177
                  c.slli       gp, 28
                  c.sub        a3, s1
                  sub          s1, gp, a6
                  srli         s1, zero, 4
                  c.and        a3, s0
                  nop
                  sub          s6, s6, sp
                  sra          s0, t5, ra
                  or           a7, a2, a7
                  sll          s8, a2, a4
                  mul          t5, s2, s0
                  slti         a3, t6, 33
                  slli         s8, s5, 7
                  c.andi       a2, 17
                  slt          a5, tp, a5
                  c.add        a1, t1
                  ori          t6, s9, -857
                  srl          t6, ra, a0
                  slti         a2, a6, -64
                  slt          t3, zero, s5
                  rem          t0, gp, s0
                  c.srli       a1, 17
                  lui          a0, 252178
                  c.sub        a3, a1
                  c.andi       a2, -1
                  andi         s5, a4, 1164
                  andi         tp, a2, 1486
                  divu         t1, s6, a6
                  rem          a3, t0, t6
                  xori         t0, t3, -15
                  auipc        t4, 451269
                  sltu         a3, s6, sp
                  srai         s8, s4, 10
                  div          a3, s3, ra
                  c.andi       a5, -1
                  slli         zero, sp, 15
                  slli         s6, s8, 17
                  mulhu        gp, s8, sp
                  sub          s0, tp, t6
                  sra          a1, a2, sp
                  c.mv         s3, s10
                  c.slli       gp, 2
                  add          gp, a3, s5
                  c.srai       s1, 21
                  c.addi       s3, 4
                  slt          s3, s7, t0
                  c.sub        s1, a3
                  c.srli       a1, 31
                  lui          s1, 555889
                  or           a3, t4, s8
                  c.andi       a2, 27
                  c.and        a0, s1
                  c.srai       s0, 9
                  slt          a1, s1, a0
                  c.xor        a4, a3
                  srli         a4, t3, 26
                  sll          t2, t6, t2
                  mulhsu       a5, t4, s7
                  mulh         t5, a7, s9
                  nop
                  sltu         t2, zero, t1
                  xori         a5, s0, 1374
                  sltu         t3, t1, s3
                  rem          s3, t0, ra
                  sll          tp, t0, s7
                  c.nop
                  c.andi       a5, -1
                  sra          t3, ra, tp
                  xori         a2, s9, -729
                  add          s6, s1, t0
                  srai         t5, t5, 11
                  div          t0, s5, s5
                  slli         s7, s10, 8
                  addi         s6, s0, -1575
                  mulhsu       a1, t6, tp
                  mulh         a0, a7, a6
                  mulhsu       s7, t0, a6
                  lui          a0, 402754
                  sra          s9, t3, ra
                  mul          t5, a6, a3
                  c.slli       gp, 23
                  c.xor        a5, a2
                  and          zero, a7, s1
                  c.or         a0, a3
                  rem          a7, a7, s10
                  c.mv         s7, ra
                  and          a2, s2, s10
                  remu         t2, tp, t0
                  remu         s11, t4, s2
                  srl          s3, s10, a6
                  xor          a0, tp, sp
                  nop
                  sll          s3, s8, a3
                  c.srli       a1, 29
                  sltu         s4, a1, t1
                  c.lui        a6, 11
                  and          s5, s9, s0
                  srli         s3, s10, 30
                  c.andi       a1, -1
                  c.addi       s5, 24
                  remu         a0, a2, t1
                  rem          s0, s6, s5
                  c.xor        a0, a1
                  c.addi       t2, 25
                  c.sub        a3, s1
                  srli         a4, gp, 12
                  sra          a6, tp, s3
                  c.add        t4, t1
                  c.or         a2, a5
                  xori         s7, a1, 1928
                  sltu         s3, a2, s6
                  mulhu        t5, a4, a3
                  c.srai       a1, 6
                  andi         a5, a3, -2020
                  auipc        a2, 557024
                  and          t2, a0, s9
                  mulhsu       gp, s11, s0
                  mulhu        t1, a7, gp
                  nop
                  or           gp, t4, t0
                  c.add        ra, a4
                  slti         a2, gp, 1646
                  c.srli       a3, 30
                  mulhsu       s5, t6, zero
                  andi         t2, a7, -66
                  mul          s7, s3, tp
                  c.xor        s0, s1
                  div          a5, zero, t6
                  sltu         a6, s0, t5
                  c.addi       s11, -1
                  or           t5, s6, a0
                  ori          s1, t5, -578
                  c.slli       a6, 26
                  lui          t3, 2683
                  ori          s5, a5, -232
                  add          a1, t3, s11
                  mulhu        a1, t1, a0
                  srai         t3, s0, 0
                  xori         s11, ra, 698
                  sltu         t2, s4, a2
                  srai         t5, s6, 25
                  mulhu        s6, t5, s11
                  sra          a3, a7, zero
                  ori          ra, s6, 1518
                  srl          s1, t3, t5
                  c.xor        s0, s0
                  c.xor        a5, a5
                  sll          s8, s8, t1
                  c.srai       a4, 26
                  c.or         a1, a4
                  sltiu        s8, s11, -1312
                  sra          s0, s11, s5
                  c.nop
                  lui          t4, 278736
                  sll          t0, s0, t5
                  c.addi       t2, -1
                  la x18, test_done
                  jalr x0, x18, 0
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
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  addi x2, x2, -4
                  sw  x26, (x2)
                  add x26, x2, zero
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x2, x26, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x22, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x22, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x22, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x22, x20, ecall_handler
                  li x20, 0x1
                  beq x22, x20, instr_fault_handler
                  li x20, 0x5
                  beq x22, x20, load_fault_handler
                  li x20, 0x7
                  beq x22, x20, store_fault_handler
                  li x20, 0xc
                  beq x22, x20, pt_fault_handler
                  li x20, 0xd
                  beq x22, x20, pt_fault_handler
                  li x20, 0xf
                  beq x22, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x26, x2, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  add x2, x26, zero
                  lw  x26, (x2)
                  addi x2, x2, 4
                  mret

load_fault_handler:
                  add x26, x2, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  add x2, x26, zero
                  lw  x26, (x2)
                  addi x2, x2, 4
                  mret

store_fault_handler:
                  add x26, x2, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  add x2, x26, zero
                  lw  x26, (x2)
                  addi x2, x2, 4
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x26, x2, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  add x2, x26, zero
                  lw  x26, (x2)
                  addi x2, x2, 4
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x26, x2, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  add x2, x26, zero
                  lw  x26, (x2)
                  addi x2, x2, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x26, x2, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  add x2, x26, zero
                  lw  x26, (x2)
                  addi x2, x2, 4
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
