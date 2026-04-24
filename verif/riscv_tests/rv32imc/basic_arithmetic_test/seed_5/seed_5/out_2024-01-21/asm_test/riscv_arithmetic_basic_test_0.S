.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x20, 0x40001104
                  csrw 0x301, x20
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  li x20, 0x0
                  csrw 0x304, x20 # MIE
                  mret
init:             
                  li x0, 0x5325f9b6
                  li x1, 0x216b0152
                  li x2, 0x9
                  li x3, 0xc
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xf67eb80c
                  li x9, 0x0
                  li x10, 0x948c9439
                  li x11, 0x1
                  li x14, 0xe8a63ce1
                  li x15, 0x8
                  li x16, 0xf620eecc
                  li x17, 0xa
                  li x18, 0x0
                  li x19, 0x3
                  li x20, 0xff18057e
                  li x21, 0x80000000
                  li x22, 0x7297ddf5
                  li x23, 0x7
                  li x24, 0xf2515884
                  li x25, 0x3
                  li x26, 0x0
                  li x27, 0x13c77537
                  li x28, 0x2
                  li x29, 0x80000000
                  li x30, 0xe
                  li x31, 0x80000000
                  la x13, user_stack_end
main:             li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_29
                  li           s6, 0x37de454a
                  li           s3, 0x0
                  li           a5, 0x80000000
                  li           s7, 0xffffffff
                  li           t1, 0xedd32604
                  li           t0, 0x80000000
                  li           tp, 0xffffffff
                  li           s11, 0xffffffff
                  li           a0, 0xffffffff
                  addi         tp, s0, -960
                  mul          s3, a0, t0
                  auipc        a5, 384500
                  div          s3, s11, s6
                  mulh         t0, a5, t1
                  nop
                  mul          t1, s6, a5
                  mulhu        s7, s6, s11
                  addi         s7, tp, 1128
                  divu         s3, t0, s3
                  divu         a0, s0, s7
                  rem          s7, s7, t1
                  sub          s0, t1, s6
                  mul          t1, tp, s6
                  remu         s7, s0, t1
                  lui          a5, 78295
                  mulhsu       s3, s7, s7
                  nop
                  remu         s11, a5, s6
                  mulhsu       s11, s6, s11
                  auipc        s6, 410139
                  remu         s7, s7, s0
                  lui          s3, 376738
                  add          s7, s11, s0
                  auipc        tp, 232423
                  div          t1, s3, s3 #end riscv_int_numeric_corner_stream_29
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_36
                  li           s9, 0xffffffff
                  li           a6, 0xffffffff
                  li           t3, 0x80000000
                  li           a7, 0x0
                  li           a0, 0x80000000
                  li           s0, 0x80000000
                  li           t1, 0xb0d248ac
                  li           s11, 0xffffffff
                  li           s7, 0x80000000
                  lui          s7, 97900
                  lui          a0, 649560
                  mulhu        s0, t3, s0
                  divu         s11, t3, s9
                  mulh         s9, s9, s7
                  sub          t3, a7, a7
                  div          a7, a7, s0
                  nop
                  divu         t3, s0, t3
                  div          s7, t1, t1
                  add          s0, a6, s7
                  mul          s0, tp, s11
                  auipc        a0, 951227
                  addi         s9, s9, -1023
                  mulh         s7, s0, a0
                  div          t1, a6, t1
                  lui          a0, 323311
                  addi         s11, s7, -754
                  mulh         t3, s11, s11
                  auipc        s11, 285807
                  divu         s7, s9, s9
                  mul          s7, s7, s7 #end riscv_int_numeric_corner_stream_36
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           sp, 0xffffffff
                  li           ra, 0xffffffff
                  li           t4, 0x0
                  li           a5, 0x15257249
                  li           s11, 0x80000000
                  li           s3, 0x0
                  li           a4, 0x80000000
                  li           t0, 0xffffffff
                  li           a0, 0x0
                  divu         s11, t3, t3
                  mul          s11, t0, a0
                  mulhsu       t0, t0, t0
                  mulh         t0, s3, sp
                  lui          ra, 368566
                  mulhu        s11, a0, a4
                  mulhu        t4, a0, a0
                  add          t3, a4, t0
                  remu         s11, t0, a4
                  mulh         ra, a0, t4
                  mulh         t0, t3, s3
                  auipc        t4, 539406
                  rem          a4, a5, t4
                  mulh         s3, s11, a4
                  add          t0, ra, s11
                  mulhu        s3, t3, t3
                  auipc        t0, 359750
                  mul          a4, s11, t3
                  mulhu        a5, a5, s3
                  addi         t0, sp, 1602
                  sub          t3, sp, a0
                  add          a0, sp, a4
                  sub          s3, t4, a0
                  add          a5, ra, t0 #end riscv_int_numeric_corner_stream_2
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_33
                  li           s4, 0xffffffff
                  li           s11, 0x80000000
                  li           s3, 0xffffffff
                  li           s7, 0x973fca6e
                  li           t2, 0xffffffff
                  li           a4, 0xffffffff
                  li           t3, 0x80000000
                  li           t6, 0xf28ea28a
                  li           a6, 0x0
                  divu         t3, s4, s7
                  mulhu        s3, a4, a4
                  addi         a4, a4, 1611
                  divu         s3, s6, t2
                  mul          s3, a4, s6
                  sub          t3, s3, s7
                  nop
                  mul          t3, a6, s6
                  mulh         t2, t2, s3
                  mulhu        t3, s4, s4
                  divu         s11, a4, s6
                  nop
                  addi         a4, s7, 68
                  mulhsu       s7, s6, s3
                  addi         t6, s7, 467 #end riscv_int_numeric_corner_stream_33
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_21
                  li           a5, 0xffffffff
                  li           s4, 0x80000000
                  li           sp, 0x80000000
                  li           s10, 0x80000000
                  li           ra, 0xffffffff
                  li           s11, 0x80000000
                  li           s5, 0xffffffff
                  li           s3, 0x0
                  li           s7, 0x80000000
                  auipc        s7, 626100
                  lui          s3, 36828
                  mulhsu       s3, s3, s4
                  sub          s3, a5, s11
                  remu         s5, sp, s5
                  rem          s7, s7, s11
                  mulhu        s4, s4, s5
                  mulhsu       s11, ra, s11
                  lui          s10, 398113
                  divu         s11, s10, s10
                  sub          s4, ra, s7
                  mulhsu       s11, s7, sp
                  mulh         s10, sp, s3
                  rem          sp, s10, s3
                  mulhu        s10, sp, s3 #end riscv_int_numeric_corner_stream_21
                  li           t4, 0x3bb01e32 #start riscv_int_numeric_corner_stream_30
                  li           a6, 0xffffffff
                  li           s9, 0xa57d682a
                  li           s4, 0x80000000
                  li           s1, 0x0
                  li           a4, 0xffffffff
                  li           s2, 0x2aa148ee
                  li           t0, 0xfd4b66ae
                  li           t1, 0xffffffff
                  li           ra, 0xffffffff
                  mulhsu       s4, s2, a4
                  mulhsu       t4, a4, ra
                  mulh         s2, s4, s4
                  divu         t0, t4, s4
                  rem          t1, t1, t0
                  rem          t4, s4, a6
                  sub          t1, t0, t4
                  mulh         t1, s9, s1
                  divu         s9, t1, t4
                  addi         t1, s2, -842
                  divu         t1, s2, ra
                  mulhu        s2, t4, a6
                  auipc        ra, 849588
                  remu         a4, ra, ra
                  nop #end riscv_int_numeric_corner_stream_30
                  li           s2, 0x9414ff24 #start riscv_int_numeric_corner_stream_11
                  li           t1, 0x1125a81f
                  li           t6, 0x2cbf0e66
                  li           s1, 0x80000000
                  li           t2, 0x0
                  li           a1, 0x85b5f7fb
                  li           ra, 0xe8e297d9
                  li           s5, 0x2e96d5c1
                  li           s8, 0xffffffff
                  li           t4, 0x9b144f7d
                  sub          a1, s1, s2
                  divu         t6, t6, s8
                  rem          ra, a1, s1
                  remu         s8, s1, t2
                  addi         t6, t6, -1275
                  divu         t1, t1, a1
                  nop
                  mulh         a1, t4, s8
                  remu         s8, s2, s2
                  mulhu        t2, s2, s5
                  sub          t1, s8, t2
                  mul          s1, s8, s2
                  nop
                  div          s5, s5, t6
                  nop
                  sub          s8, t4, s1
                  div          a1, a1, ra
                  rem          t2, t6, a1
                  remu         t1, ra, s2
                  nop
                  rem          t1, s2, ra
                  add          s1, t2, s2
                  divu         ra, t6, t4
                  mul          ra, s8, t1
                  mulhsu       ra, t6, s1
                  divu         t2, t6, t1 #end riscv_int_numeric_corner_stream_11
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           gp, 0xcf8a405c
                  li           a1, 0x80000000
                  li           a0, 0xc233fdb8
                  li           s8, 0x80000000
                  li           s5, 0x80000000
                  li           ra, 0x7d277851
                  li           t4, 0x0
                  li           s10, 0x80000000
                  li           tp, 0xffffffff
                  divu         a0, a1, tp
                  auipc        t4, 888622
                  divu         ra, s5, gp
                  div          s8, tp, s10
                  addi         a1, tp, 1916
                  rem          s10, s11, a0
                  addi         a0, a0, -1822
                  remu         tp, s5, tp
                  addi         a1, s5, 312
                  auipc        ra, 563596
                  remu         ra, gp, s5
                  addi         t4, t4, -1405
                  mulhsu       a1, ra, t4
                  auipc        s11, 886810
                  add          s5, tp, gp
                  addi         a1, a1, -111
                  addi         t4, s11, 1310
                  div          s11, s5, ra
                  divu         a1, tp, s10
                  divu         s8, s5, s5
                  sub          gp, ra, s8
                  add          a0, a0, s10
                  div          s10, s11, s8
                  mul          s8, t4, s10
                  auipc        s5, 809617
                  div          gp, t4, tp
                  add          s8, s8, ra #end riscv_int_numeric_corner_stream_34
                  li           t1, 0xb1859d76 #start riscv_int_numeric_corner_stream_24
                  li           s1, 0x80000000
                  li           t4, 0x0
                  li           tp, 0x0
                  li           t2, 0x5747bf6d
                  li           s11, 0x4ab2ee61
                  li           t6, 0x0
                  li           ra, 0x80000000
                  li           a5, 0x8b663eae
                  li           s4, 0x0
                  lui          s11, 583015
                  auipc        tp, 722406
                  sub          s11, t4, t4
                  mulhu        t1, a5, s11
                  auipc        a5, 291446
                  sub          s11, tp, ra
                  rem          s11, ra, a5
                  addi         s11, tp, 1612
                  sub          tp, s11, t6
                  auipc        t2, 328222
                  remu         s11, t6, s11
                  addi         s11, s11, -1796
                  mulhu        s1, tp, a5
                  mulhu        t1, tp, t6
                  mulh         t4, s11, t2
                  mulhu        s11, a5, a5
                  nop
                  auipc        s1, 762985
                  addi         t2, a5, -747
                  auipc        ra, 548875
                  mulhsu       tp, tp, a5
                  addi         ra, t2, 1106
                  mulhu        s1, t4, t6
                  auipc        s11, 276197
                  add          ra, s11, t6 #end riscv_int_numeric_corner_stream_24
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s5, 0x80000000
                  li           tp, 0x0
                  li           s8, 0xcaba5c4f
                  li           a5, 0xffffffff
                  li           t2, 0x7cb99819
                  li           a0, 0xcdd30a2f
                  li           s10, 0x80000000
                  li           s1, 0x80000000
                  li           s6, 0x88e5b93e
                  auipc        s6, 223834
                  divu         a0, t2, s8
                  mulh         s10, a0, s5
                  rem          gp, t2, t2
                  mul          t2, s5, a5
                  mulhsu       gp, tp, a5
                  sub          s8, tp, a0
                  div          s8, s5, t2
                  addi         a0, s1, 1302
                  sub          s6, a5, s1
                  remu         s10, s8, s8
                  remu         tp, t2, t2
                  lui          s10, 780857
                  mulhsu       s6, s10, t2
                  mulhu        a5, tp, s10
                  addi         gp, s6, 648
                  auipc        s5, 15385
                  divu         s5, tp, s5
                  mulh         gp, s8, s6
                  div          a5, a0, a5 #end riscv_int_numeric_corner_stream_1
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           tp, 0x80000000
                  li           a5, 0x80000000
                  li           s7, 0x68f777a6
                  li           s11, 0x0
                  li           a7, 0x80000000
                  li           s8, 0x0
                  li           t2, 0x1511d3bc
                  li           t6, 0x823955c8
                  li           a6, 0x80000000
                  remu         t6, s3, t2
                  add          tp, a7, tp
                  mul          tp, t2, t6
                  mulhsu       s11, s11, tp
                  rem          a5, tp, s8
                  sub          a5, s8, a7
                  remu         a7, t6, s11
                  sub          s8, s8, s3
                  rem          tp, a7, t6
                  mulhu        t6, a5, t6
                  sub          s8, tp, a5
                  sub          a5, a6, s11
                  addi         a5, a7, 129
                  mulh         tp, t6, s11
                  sub          tp, a7, a7
                  auipc        a7, 842550 #end riscv_int_numeric_corner_stream_27
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           tp, 0x80000000
                  li           ra, 0x0
                  li           s0, 0x60076cab
                  li           s4, 0x80000000
                  li           t0, 0x0
                  li           t3, 0x80000000
                  li           t4, 0x80000000
                  li           a5, 0x33ae2ff
                  li           s9, 0x80000000
                  auipc        s0, 666560
                  div          s4, s4, t3
                  mulh         tp, ra, t3
                  lui          t3, 286553
                  nop
                  mul          s9, ra, tp
                  mul          tp, t4, ra
                  div          a5, a5, tp
                  divu         t3, s0, t0
                  mulh         s0, t3, sp
                  add          ra, s4, ra
                  mulh         t0, s9, t3
                  mulh         t3, sp, s4
                  rem          t0, tp, t3
                  mulh         t3, ra, s9
                  mul          s4, s0, t3
                  mulhu        t4, t4, s9
                  add          t3, t4, s9
                  addi         t4, s0, -276
                  remu         t4, t4, t0
                  add          t4, a5, a5
                  remu         s4, sp, sp
                  mulh         s9, a5, s4
                  lui          a5, 485009
                  mul          a5, s9, t3
                  auipc        t4, 905821
                  addi         s4, s4, 60
                  auipc        sp, 1037918 #end riscv_int_numeric_corner_stream_16
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           t6, 0x80000000
                  li           gp, 0x80000000
                  li           t4, 0xcb9ab86d
                  li           a5, 0x80000000
                  li           a4, 0x80000000
                  li           a1, 0x80000000
                  li           s7, 0x80000000
                  li           s3, 0xc1944c75
                  li           t2, 0x0
                  nop
                  mulhu        gp, a4, s11
                  add          t4, s11, a4
                  mulhu        t6, a4, s7
                  divu         a4, gp, a1
                  divu         t4, s7, s7
                  remu         gp, s7, s7
                  mul          a4, a4, a4
                  nop
                  auipc        t4, 478898
                  sub          a4, s7, s11
                  add          s7, s11, t6
                  addi         s7, t2, -43
                  mulh         s11, t4, t6
                  sub          t4, t4, a1
                  div          t4, a4, t2
                  remu         a4, s11, a4
                  addi         a1, t4, 1407
                  mulhsu       s3, a1, t2
                  rem          gp, a4, s3
                  add          a4, t2, s3
                  remu         t2, s3, t2
                  divu         s7, a4, s11
                  sub          gp, gp, gp
                  mulhu        s3, a5, a4
                  lui          s3, 397675 #end riscv_int_numeric_corner_stream_35
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s4, 0x357bc1bd
                  li           a6, 0x726b19d5
                  li           t3, 0x0
                  li           s7, 0xffffffff
                  li           a7, 0x0
                  li           s9, 0x0
                  li           s5, 0x523bcafc
                  li           s6, 0xffffffff
                  li           s3, 0x0
                  add          s6, s6, s5
                  add          t3, a6, s8
                  remu         a7, s6, s9
                  mul          s6, s5, a7
                  auipc        a7, 675579
                  mul          s8, s3, s3
                  nop
                  div          s5, s7, s8
                  mulhu        s4, a6, t3
                  div          s9, s6, a7
                  auipc        s6, 753028
                  auipc        a6, 1008935
                  add          s3, t3, s7
                  mulhsu       s8, s9, t3
                  rem          s3, s9, s3
                  mul          s3, a7, a7
                  addi         s6, s8, 771
                  rem          s8, s9, s3
                  div          s7, a7, s7
                  remu         s3, s6, s6
                  mulhu        s8, s9, s9
                  nop
                  addi         s3, t3, -1507
                  div          s5, s4, s3
                  sub          a6, s4, s6
                  remu         s3, s3, a7
                  nop #end riscv_int_numeric_corner_stream_6
                  li           tp, 0x5c98d935 #start riscv_int_numeric_corner_stream_26
                  li           a7, 0xffffffff
                  li           s0, 0x0
                  li           s10, 0xdcdd2a58
                  li           ra, 0x0
                  li           s5, 0x0
                  li           sp, 0x70d8e86c
                  li           a1, 0x0
                  li           t1, 0x0
                  li           a6, 0xffffffff
                  rem          s10, s0, t1
                  div          s5, a7, s10
                  mulhsu       a1, a1, tp
                  auipc        s5, 657060
                  rem          tp, s10, t1
                  add          tp, s0, sp
                  rem          a6, s5, a6
                  div          a1, ra, sp
                  mulhu        a6, a6, a6
                  addi         a1, s0, 11
                  divu         ra, a6, t1
                  addi         tp, tp, -410
                  mulh         ra, s10, tp
                  div          t1, tp, sp
                  lui          t1, 38595
                  lui          s10, 962369
                  sub          sp, s0, a7
                  mulhu        t1, sp, s0
                  lui          s0, 383119
                  mulh         s5, ra, s10
                  remu         t1, s5, sp
                  mulh         a6, a6, ra
                  auipc        s10, 1046262
                  div          a7, s10, a6
                  auipc        a1, 1014303 #end riscv_int_numeric_corner_stream_26
                  li           sp, 0x15d2ff21 #start riscv_int_numeric_corner_stream_20
                  li           tp, 0x0
                  li           s3, 0x80000000
                  li           a4, 0xffffffff
                  li           s11, 0xffffffff
                  li           gp, 0x80000000
                  li           t6, 0xffffffff
                  li           a7, 0x7f68d2b5
                  li           t3, 0x0
                  li           s2, 0x5bb6ee86
                  mulhu        tp, a4, tp
                  auipc        s2, 273969
                  mulh         a7, a4, sp
                  add          a7, a7, s11
                  lui          tp, 100043
                  divu         gp, gp, a7
                  mulh         t6, t6, t6
                  mulhu        a4, t3, s11
                  sub          tp, s11, sp
                  divu         t3, t6, sp
                  mulhsu       s2, t3, a4
                  mulhsu       t6, a7, s11
                  remu         a7, gp, t6
                  add          a4, tp, s11
                  sub          a7, s11, a7
                  divu         t3, a7, t3
                  lui          a7, 866653
                  addi         s2, a4, 732
                  addi         t3, tp, 1271
                  remu         t3, tp, a7
                  mulhsu       a7, s11, t3
                  div          t3, t3, s2 #end riscv_int_numeric_corner_stream_20
                  slt          s2, s7, s2
                  c.addi       a6, -1
                  or           tp, t4, s4
                  c.andi       a5, 26
                  sll          s11, t6, t6
                  and          t4, t6, tp
                  li           t1, 0xd78998b8 #start riscv_int_numeric_corner_stream_38
                  li           gp, 0x0
                  li           a0, 0xffffffff
                  li           s5, 0xffffffff
                  li           t0, 0x4bf9f4c5
                  li           s6, 0x80000000
                  li           s11, 0x0
                  li           s9, 0xffffffff
                  li           s0, 0xf3c25f81
                  li           t4, 0x98e5fa25
                  addi         gp, t4, 586
                  add          gp, gp, a0
                  div          t0, s11, t1
                  lui          t0, 292155
                  addi         s11, s6, -1786
                  add          gp, t1, t1
                  auipc        t4, 222971
                  div          s6, s11, t0
                  addi         t1, t1, 1275
                  addi         a0, s6, 1574
                  nop
                  mulhu        s6, s11, t4
                  mulhsu       t4, s6, gp
                  divu         t4, t4, t0
                  mul          t1, a0, t1
                  div          s0, s11, t0
                  div          s6, gp, s11
                  remu         s0, t4, t0 #end riscv_int_numeric_corner_stream_38
                  ori          s6, s1, 212
                  slli         a0, s11, 20
                  mul          a0, s6, ra
                  sll          s4, a0, t6
                  add          s5, zero, s0
                  sub          a1, t2, s7
                  sltiu        t4, s0, 1353
                  mulhu        zero, s1, zero
                  slli         s8, t6, 19
                  addi         s10, tp, 75
                  and          t4, s5, t3
                  c.srai       s0, 1
                  remu         s6, sp, t2
                  addi         sp, s3, -1153
                  auipc        t2, 626598
                  sltiu        zero, ra, 1507
                  c.srli       a5, 4
                  nop
                  sll          t0, gp, a2
                  remu         a1, s4, s7
                  c.lui        t3, 12
                  c.li         s4, 15
                  sra          s6, t5, a0
                  c.srli       a5, 4
                  c.xor        a5, a1
                  c.addi       sp, -1
                  divu         t6, a3, s2
                  c.add        s3, s2
                  auipc        t3, 138604
                  srai         a0, a5, 27
                  c.srli       s0, 1
                  c.srli       a5, 3
                  c.sub        s1, a1
                  c.mv         tp, a7
                  remu         s3, s8, a2
                  c.add        gp, gp
                  slti         s2, s2, -138
                  mul          s3, gp, gp
                  lui          t4, 485861
                  c.xor        a4, a3
                  c.lui        a4, 29
                  c.add        s9, s3
                  slt          s3, a3, tp
                  rem          s3, t3, t5
                  c.lui        s6, 23
                  lui          t1, 345864
                  srli         t3, t5, 26
                  remu         a1, t2, s0
                  c.andi       s1, 11
                  remu         s1, a0, zero
                  c.srli       s0, 27
                  xor          s10, t4, a3
                  and          s9, s6, tp
                  c.andi       a1, -1
                  srai         a4, s1, 17
                  slt          s3, s6, sp
                  nop
                  slli         s3, a5, 29
                  ori          a0, t6, -1792
                  slli         s8, t4, 10
                  srai         a4, a7, 5
                  c.mv         a4, t3
                  c.nop
                  sltiu        s6, s8, 2040
                  slti         a7, t0, -1509
                  lui          zero, 874702
                  sra          s7, s5, s0
                  remu         s2, s9, s2
                  sltiu        t1, s11, -412
                  xori         s8, s7, -402
                  srli         a4, s5, 24
                  ori          t2, t0, 1761
                  mulhsu       t2, s5, s8
                  c.li         ra, 13
                  sll          s10, a0, sp
                  xor          t3, t0, gp
                  mul          t0, s4, s0
                  srai         s0, a6, 15
                  c.srai       a4, 16
                  divu         t3, s0, a3
                  slli         t3, a5, 17
                  c.li         a5, 3
                  sltiu        sp, s10, -123
                  sra          t3, s11, t2
                  mulh         s2, tp, a2
                  remu         s11, t1, a0
                  c.add        a7, s6
                  div          s1, a3, s6
                  c.add        t4, a0
                  remu         a5, s11, a7
                  c.srli       a4, 29
                  mul          a1, t3, s7
                  c.li         s0, -1
                  addi         s5, zero, -1351
                  xori         s5, tp, 57
                  c.andi       a0, -1
                  mulh         t2, s5, t5
                  addi         s10, t4, 16
                  nop
                  c.li         a0, 20
                  xori         ra, t2, 1302
                  lui          s2, 22951
                  c.addi       t6, 7
                  mulh         s3, a0, s6
                  slt          s10, s3, s2
                  xori         s2, ra, -999
                  c.nop
                  divu         a5, t5, t0
                  andi         s8, zero, 810
                  c.xor        a1, a4
                  rem          gp, t5, a0
                  c.srli       s0, 9
                  or           s1, s10, a4
                  c.lui        a4, 6
                  srli         s5, s7, 31
                  mulhsu       a7, gp, t3
                  c.mv         t1, s10
                  sltiu        gp, a4, -254
                  c.srli       a0, 9
                  c.and        a1, s0
                  lui          t3, 848679
                  rem          a6, a5, s6
                  sltiu        t3, a3, -2031
                  srai         s11, t3, 13
                  srai         t2, zero, 2
                  and          a6, s6, a0
                  mulhu        s5, s8, a1
                  mulh         s10, a1, t6
                  slt          t6, s2, t3
                  slti         a1, s9, 89
                  c.add        a6, s7
                  sltu         s4, s2, a6
                  sra          a7, sp, gp
                  mulhsu       t0, a7, s3
                  c.addi16sp   sp, -16
                  c.lui        s10, 20
                  and          t1, s1, a1
                  c.and        a5, a2
                  nop
                  rem          s10, a5, s8
                  srli         gp, t5, 20
                  sltiu        t6, a4, -273
                  srli         t6, a5, 1
                  or           s1, a6, s11
                  c.nop
                  add          t6, s7, ra
                  remu         s9, a5, gp
                  c.li         s1, -1
                  c.add        s2, a5
                  div          tp, a1, a3
                  divu         t1, tp, s2
                  c.srai       a0, 27
                  sll          a6, s10, a0
                  c.li         t6, -1
                  mulh         t2, s10, a0
                  sub          t6, t2, s6
                  srli         s4, a1, 0
                  c.li         s0, -1
                  addi         gp, t6, -98
                  sltiu        ra, s3, 363
                  lui          ra, 1278
                  c.or         a4, a5
                  auipc        s7, 993938
                  c.srli       s1, 19
                  andi         tp, a0, 1133
                  c.mv         t6, s8
                  c.nop
                  c.add        s6, s3
                  sub          a7, a6, sp
                  slli         tp, t4, 20
                  divu         s7, a1, t1
                  c.li         s2, -1
                  divu         s3, s3, a5
                  sltiu        s10, t2, 696
                  c.slli       s1, 16
                  c.lui        gp, 7
                  c.li         s8, -1
                  xor          t6, a4, s6
                  c.or         s0, a2
                  xor          a7, a1, a6
                  srli         t2, s7, 8
                  sltiu        t3, a4, 1865
                  nop
                  div          t6, s6, t2
                  sub          t2, s4, t1
                  mulhsu       s2, a2, s4
                  c.add        t6, t3
                  xor          a0, s4, s8
                  srai         s3, a4, 11
                  srli         s7, s4, 24
                  slt          s1, a6, a6
                  slt          sp, a4, t2
                  c.xor        s0, a3
                  mul          gp, s9, t1
                  c.li         sp, 10
                  rem          a1, a0, s5
                  andi         s5, s10, -1637
                  sra          s8, s1, s9
                  auipc        s1, 285741
                  auipc        s2, 471707
                  c.addi16sp   sp, -16
                  sltiu        t4, t1, -1310
                  c.addi16sp   sp, -16
                  srli         ra, t2, 1
                  mul          tp, a1, ra
                  and          s11, zero, t0
                  c.addi4spn   a4, sp, 912
                  c.sub        a5, a1
                  c.sub        s1, a2
                  and          t3, s2, s2
                  addi         t6, s4, 1951
                  mulhsu       a0, s2, s2
                  slt          t0, t2, s6
                  mul          a7, t1, s3
                  c.srli       a4, 22
                  sub          s4, s5, t2
                  ori          a1, t3, -1492
                  c.add        a1, ra
                  sll          t2, tp, s1
                  slt          a7, s5, a7
                  xor          a0, s1, s8
                  srai         s4, a5, 12
                  div          a1, s5, t2
                  c.nop
                  srai         t0, s8, 27
                  slli         a4, s1, 0
                  c.nop
                  xori         t6, s10, -474
                  c.and        a4, a3
                  or           t6, a3, zero
                  auipc        t6, 723502
                  mulh         t1, a2, a6
                  xori         a5, sp, 16
                  c.nop
                  c.srai       s1, 26
                  sltiu        a0, s10, -712
                  lui          t3, 957470
                  xor          a4, s11, s5
                  xor          s1, s9, a1
                  c.andi       s1, 7
                  div          zero, gp, a7
                  xori         a0, t0, -1600
                  srl          sp, t4, a6
                  c.or         a0, a5
                  add          s4, a4, zero
                  auipc        t0, 19435
                  srl          s0, t4, s11
                  or           a5, ra, a7
                  sra          gp, s4, s0
                  sll          t4, t4, s4
                  or           s1, zero, s2
                  sltu         ra, a1, s4
                  srli         gp, a3, 16
                  xor          a6, s11, a5
                  c.andi       s0, 10
                  mulh         a4, a3, a6
                  nop
                  add          s6, ra, a7
                  sra          a4, a6, a2
                  c.mv         a7, t2
                  c.li         t0, -1
                  divu         s0, a3, t5
                  rem          t4, t3, s0
                  c.lui        t1, 23
                  c.lui        a0, 6
                  auipc        a4, 299265
                  c.add        s2, s5
                  sltu         t3, t5, ra
                  c.mv         s9, s0
                  nop
                  slli         s1, t2, 4
                  lui          s5, 232364
                  sltiu        s1, t0, -1612
                  addi         tp, a7, 149
                  rem          a5, s7, t5
                  sltu         t6, s2, s8
                  mulhsu       zero, s9, s4
                  sltu         s2, s10, t6
                  sll          a0, s4, ra
                  divu         ra, s5, a7
                  srai         zero, a1, 7
                  divu         ra, s3, a0
                  srli         zero, s10, 26
                  c.sub        a5, s0
                  xori         a1, s6, 2006
                  c.lui        s9, 7
                  c.li         gp, -1
                  srl          tp, s9, s11
                  c.addi4spn   a4, sp, 560
                  slti         a7, t0, 97
                  c.or         a5, s0
                  nop
                  andi         tp, a6, 1739
                  c.sub        a4, a0
                  rem          t0, t2, t4
                  c.andi       a5, 21
                  slli         s9, s11, 0
                  c.lui        a6, 14
                  c.addi       s6, 7
                  c.addi4spn   s1, sp, 576
                  mulhsu       a0, sp, t0
                  sub          s9, s5, s7
                  rem          a5, s4, s4
                  c.li         a1, -1
                  rem          s3, t1, s11
                  c.andi       a5, -1
                  c.andi       a0, 13
                  c.addi4spn   a5, sp, 480
                  mulhsu       s2, tp, s0
                  c.xor        a4, s0
                  andi         t0, s10, -60
                  sll          t2, s6, s3
                  slt          s1, t0, s10
                  c.addi16sp   sp, 304
                  sltiu        t4, s3, -366
                  sub          s4, s11, s8
                  or           s3, t1, t0
                  addi         a0, s8, -1176
                  addi         t3, zero, 1396
                  sltiu        t3, s2, -92
                  c.xor        s0, a3
                  mulhsu       a4, a5, t1
                  divu         s2, t1, a1
                  c.and        a4, s1
                  srai         t0, t0, 19
                  c.add        s1, s2
                  rem          a1, s6, s10
                  div          s1, s10, s5
                  c.lui        t1, 18
                  slti         s1, a3, -881
                  c.srli       s1, 2
                  c.lui        t4, 5
                  lui          t0, 58732
                  c.andi       s1, -1
                  c.nop
                  c.mv         s10, s11
                  c.mv         s10, t5
                  mulh         tp, gp, a5
                  c.slli       t4, 12
                  rem          s5, s7, t2
                  c.or         s0, a0
                  c.xor        a5, a2
                  divu         zero, t3, t3
                  srli         t0, s4, 12
                  c.slli       s8, 1
                  mul          a6, a6, s6
                  ori          s3, a0, 1547
                  c.srai       a5, 7
                  div          t3, s11, s3
                  ori          t6, a2, 677
                  andi         tp, s6, 1579
                  slti         a7, t0, -751
                  sltiu        t0, s8, -470
                  c.addi16sp   sp, 384
                  or           s6, sp, sp
                  xor          a7, s4, s1
                  c.nop
                  andi         s6, t1, -1905
                  rem          t1, a0, t4
                  c.srli       a5, 8
                  c.andi       a0, -1
                  nop
                  sltiu        gp, t0, 1767
                  slti         t4, s11, 871
                  srli         s10, s1, 10
                  mul          ra, sp, s9
                  mul          s4, tp, s10
                  c.srai       s0, 11
                  remu         gp, s5, a0
                  nop
                  sltu         s6, s5, t2
                  srl          gp, t1, t5
                  c.slli       t0, 31
                  andi         s6, sp, -1824
                  add          sp, a7, s10
                  srai         a1, a2, 4
                  c.xor        s0, a3
                  c.mv         t4, s5
                  remu         t1, s1, a0
                  srli         t1, s4, 2
                  and          s8, tp, a7
                  mulhsu       s3, gp, s9
                  c.srai       s1, 3
                  c.or         a1, a0
                  ori          a4, t6, 98
                  slli         t3, s3, 2
                  mulhsu       s6, s5, s6
                  rem          ra, t5, gp
                  divu         a7, t1, zero
                  and          gp, gp, t0
                  c.slli       t6, 24
                  lui          a1, 371295
                  srai         s7, a7, 10
                  sltu         a7, a1, a1
                  sub          t6, t6, gp
                  c.and        a5, a3
                  slti         t1, a1, -1035
                  c.addi4spn   s0, sp, 304
                  divu         t4, a4, s3
                  ori          t2, s0, 157
                  mulhsu       s6, s2, a5
                  ori          s3, s9, -1232
                  c.slli       a6, 15
                  ori          a1, sp, 102
                  sra          ra, t2, s0
                  c.srai       a4, 23
                  sll          t3, t1, a3
                  add          t1, a1, t4
                  srli         tp, tp, 28
                  rem          s2, a5, ra
                  mulhsu       a4, s0, zero
                  mulh         a5, s5, s0
                  mul          s7, a3, t6
                  and          s5, s10, t5
                  c.andi       a4, -1
                  c.add        s9, t2
                  c.addi4spn   a5, sp, 896
                  andi         s11, s0, -1720
                  sra          s10, s9, s10
                  c.add        a6, s6
                  xor          s10, gp, a0
                  c.mv         t0, a0
                  sll          a1, a5, s2
                  c.slli       t4, 21
                  remu         s10, ra, s6
                  c.slli       s6, 14
                  c.lui        s6, 9
                  c.addi16sp   sp, 240
                  slli         a5, s3, 26
                  mulhsu       s7, s7, s8
                  c.srai       s0, 1
                  c.or         a1, s1
                  srli         s10, t2, 27
                  c.srli       s0, 7
                  c.slli       a5, 30
                  slti         sp, s11, -1737
                  lui          t3, 539306
                  rem          s11, s8, t0
                  div          a6, tp, s1
                  addi         zero, tp, -1356
                  c.addi16sp   sp, -16
                  c.andi       a1, 13
                  c.addi4spn   a4, sp, 928
                  add          tp, s1, ra
                  mulhsu       tp, t6, sp
                  c.and        a1, a3
                  nop
                  slli         s4, a2, 8
                  sltiu        s4, t5, -857
                  mul          gp, s7, tp
                  rem          s6, ra, a4
                  auipc        a6, 543783
                  ori          s3, a3, -146
                  ori          a0, s9, 585
                  sub          a6, zero, t0
                  c.srli       a5, 9
                  c.slli       t2, 16
                  c.slli       gp, 10
                  c.slli       s1, 16
                  c.nop
                  c.addi       a5, 1
                  auipc        s4, 319280
                  slt          s6, t5, s4
                  sll          s8, t0, zero
                  c.addi16sp   sp, 352
                  c.add        a1, a1
                  sltiu        s6, a5, -652
                  mulhsu       ra, a4, s7
                  c.addi4spn   a4, sp, 416
                  c.and        a4, a3
                  c.sub        s1, a0
                  slli         t2, t5, 12
                  addi         t6, s6, 75
                  xor          s11, tp, t1
                  sltu         a6, tp, t0
                  c.sub        s0, a3
                  c.li         s10, 30
                  c.and        s1, a5
                  div          sp, t4, s2
                  c.lui        s2, 31
                  srli         a6, a5, 4
                  slti         a0, t1, -1059
                  mul          s1, t0, sp
                  addi         s3, a2, -986
                  c.and        s0, a3
                  divu         s11, t4, gp
                  and          t3, ra, a1
                  c.addi       s9, -1
                  sll          a4, a1, s5
                  nop
                  mulhu        s0, a2, s5
                  c.sub        a0, s1
                  c.or         a4, a5
                  c.nop
                  remu         s2, t6, t6
                  c.add        t6, s3
                  divu         s6, zero, t6
                  slt          s7, zero, s2
                  c.xor        s1, s0
                  slt          s9, t3, s1
                  andi         s4, s5, -1699
                  mulhu        t0, sp, t2
                  xori         s9, t3, 16
                  slt          a1, s6, tp
                  c.add        a5, a4
                  mulhu        gp, ra, a3
                  c.or         a0, s0
                  c.or         a5, a1
                  c.addi4spn   s1, sp, 944
                  add          s8, s1, t4
                  c.slli       tp, 5
                  sltu         t0, a5, s11
                  lui          s2, 615437
                  lui          s5, 838856
                  sll          s9, a3, s11
                  c.and        a4, a1
                  c.sub        a5, a0
                  slti         ra, s2, -826
                  addi         t6, zero, -1925
                  addi         t2, t2, 538
                  sltiu        zero, a6, 922
                  slt          a0, t6, a2
                  c.lui        t0, 20
                  divu         a1, gp, a4
                  remu         s6, a4, tp
                  c.mv         gp, t5
                  c.mv         s3, a1
                  slt          a5, tp, s11
                  divu         a5, zero, t3
                  auipc        gp, 614645
                  xor          s7, t4, s5
                  andi         t3, a2, 1483
                  lui          t3, 852064
                  or           sp, t0, t6
                  divu         gp, a3, t3
                  slt          s10, s3, tp
                  addi         s4, a1, 1650
                  c.or         a5, a5
                  sub          a6, gp, gp
                  c.slli       ra, 4
                  slli         s10, a5, 5
                  c.andi       a1, 8
                  c.xor        a1, a4
                  ori          a1, s10, 617
                  c.slli       s4, 28
                  mulhsu       s0, s6, s2
                  c.sub        a4, a1
                  c.lui        s0, 7
                  c.nop
                  srl          s5, t4, a5
                  srli         s6, s8, 29
                  c.li         s11, -1
                  divu         t2, s9, a2
                  c.li         s11, 29
                  srai         a6, s2, 20
                  slti         s8, s11, -743
                  sltiu        s7, s6, 1582
                  sub          a0, a2, t0
                  c.li         t6, -1
                  c.slli       s9, 14
                  andi         a5, s0, 553
                  auipc        s7, 379554
                  srl          a0, gp, a5
                  slt          a7, s7, a3
                  c.andi       a1, 18
                  c.add        a4, a0
                  mulhsu       s5, t1, s9
                  add          gp, a0, s0
                  mulh         s8, s2, t0
                  mulhu        a5, s3, s7
                  auipc        t3, 278419
                  mulhu        gp, gp, zero
                  slt          a4, a0, s3
                  c.add        a5, s10
                  slt          t4, t4, tp
                  lui          s9, 119521
                  srai         s10, s11, 20
                  auipc        s11, 525887
                  sub          a7, a3, a2
                  c.and        s0, s0
                  c.lui        s5, 19
                  xori         t1, t6, -514
                  addi         t1, a6, -1111
                  auipc        s11, 469614
                  srai         a4, a5, 27
                  c.li         ra, 1
                  srl          t4, t3, s0
                  rem          t3, s8, t0
                  sltiu        a5, t2, -1290
                  c.srli       a5, 24
                  c.mv         s1, s0
                  remu         ra, t6, s10
                  c.and        a4, a0
                  addi         ra, t2, 62
                  c.add        tp, s1
                  slli         s0, t3, 11
                  c.srai       a5, 11
                  mulh         t6, t4, t6
                  xori         gp, a2, 1364
                  c.addi       sp, 20
                  c.srai       a5, 4
                  auipc        tp, 789441
                  xor          t1, a6, ra
                  slli         s7, s3, 24
                  mul          ra, s6, t4
                  c.slli       a5, 15
                  addi         t2, a2, -428
                  or           zero, s10, s9
                  sub          t3, s0, t1
                  srl          a1, s6, a5
                  sltiu        s10, t4, -1006
                  c.addi       t0, 26
                  divu         gp, t6, s4
                  addi         a4, t4, -765
                  or           s1, gp, t0
                  mulh         a4, gp, s1
                  c.srai       s0, 17
                  rem          tp, a3, s7
                  sltu         s6, a4, t5
                  c.srai       s0, 4
                  sub          t4, s3, a3
                  slt          tp, t3, t2
                  rem          sp, s1, t1
                  slti         a6, s7, -1548
                  xor          a4, s11, t0
                  sra          t1, sp, s1
                  c.andi       a4, 31
                  div          zero, t6, a0
                  nop
                  sll          s8, s10, s6
                  div          t2, a3, s0
                  c.and        a0, s1
                  ori          s10, tp, -446
                  c.sub        s1, a3
                  slti         s8, t6, -1710
                  lui          gp, 330315
                  auipc        s1, 831661
                  srai         t1, gp, 10
                  c.add        t3, t1
                  xor          t0, a0, a4
                  xori         ra, t3, 428
                  and          t6, s8, a4
                  slti         tp, s10, -100
                  mulhu        t0, s9, s2
                  c.and        a5, a4
                  srl          s3, t0, t4
                  auipc        ra, 1016067
                  c.li         s5, 23
                  sltu         s3, s9, sp
                  c.and        s0, a3
                  sltu         t4, sp, s0
                  xor          s6, t6, t2
                  c.and        s1, a3
                  c.xor        s0, a2
                  c.or         a1, a3
                  rem          s3, sp, a7
                  c.mv         s10, t0
                  add          sp, a2, t6
                  div          s3, s11, s3
                  sltu         s11, t6, s10
                  srli         s5, a4, 30
                  or           s5, sp, a3
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s6, 0xffffffff
                  li           ra, 0xe94f51f7
                  li           s7, 0xffffffff
                  li           t6, 0x33d50339
                  li           s2, 0x0
                  li           sp, 0xffffffff
                  li           s10, 0x0
                  li           gp, 0xe4361b60
                  li           t1, 0x4c319fec
                  nop
                  mulh         s10, s7, s6
                  mul          t6, s9, gp
                  divu         ra, t1, s2
                  mul          s9, t6, s6
                  divu         gp, s7, s6
                  rem          t6, gp, s9
                  remu         ra, ra, gp
                  mulh         s9, s7, gp
                  addi         sp, t1, -514
                  mulhsu       t6, s10, t1
                  lui          ra, 79129
                  divu         t6, s6, s6
                  divu         s10, s9, s6
                  mulhsu       s6, s10, s10
                  rem          ra, s9, s10
                  mul          s9, s9, ra
                  add          s7, t1, gp
                  addi         s10, s10, 633
                  mul          s10, s6, gp
                  addi         s2, s6, -923
                  mulhsu       ra, t6, s2
                  rem          ra, t1, gp #end riscv_int_numeric_corner_stream_9
                  addi         s1, s3, 88
                  c.or         a4, a4
                  slti         s9, a3, -1150
                  sltiu        gp, t1, 1390
                  c.nop
                  and          s0, t1, s8
                  c.or         s1, s0
                  sub          s0, s9, s4
                  divu         t2, a0, a0
                  mul          t3, s5, s1
                  c.addi4spn   a5, sp, 848
                  and          s10, t5, a4
                  srli         s10, a1, 22
                  c.lui        a4, 6
                  nop
                  mulh         s1, s10, sp
                  c.and        a4, a5
                  xor          s3, gp, tp
                  c.lui        a1, 10
                  div          a4, t4, s1
                  mulh         s0, zero, sp
                  ori          ra, gp, 1795
                  xor          s10, s8, s10
                  auipc        t0, 409385
                  sltiu        t3, t0, 227
                  srli         t2, t2, 25
                  sll          zero, ra, s1
                  c.lui        t6, 27
                  ori          zero, t0, 1647
                  c.lui        a5, 4
                  c.add        s6, s3
                  sub          s8, a5, t4
                  c.mv         a6, t4
                  div          zero, t4, a4
                  c.addi       a0, -1
                  c.addi16sp   sp, -16
                  srai         s10, s0, 4
                  mulhsu       a1, t3, a2
                  c.lui        t6, 9
                  c.srli       s1, 14
                  sltu         a1, a2, s11
                  c.lui        s6, 24
                  c.slli       t4, 28
                  srai         t6, s7, 13
                  c.li         s5, -1
                  mulh         s5, s2, s11
                  c.addi       tp, -1
                  sltiu        t2, s7, -330
                  c.xor        a5, s1
                  divu         t4, s0, a6
                  sltiu        a5, s11, -1589
                  ori          t6, sp, 858
                  mul          t3, s10, ra
                  c.srli       s0, 17
                  srli         ra, a2, 13
                  xori         s0, a2, -863
                  slli         a7, a3, 9
                  rem          s11, s0, a0
                  sll          s6, t1, s0
                  c.lui        t3, 25
                  c.addi       gp, 2
                  nop
                  lui          s4, 83752
                  sra          a4, a5, t5
                  andi         s6, a3, -1437
                  slti         t2, t1, 627
                  c.srai       s1, 11
                  sltiu        gp, s0, -320
                  slli         s5, gp, 26
                  srai         sp, s11, 30
                  and          s5, t0, gp
                  auipc        s11, 623904
                  srli         gp, a4, 27
                  c.lui        a5, 10
                  c.nop
                  srai         a1, t4, 12
                  nop
                  srl          s0, s10, s6
                  sra          s10, s5, s6
                  c.addi16sp   sp, 224
                  slti         sp, gp, -1629
                  div          t3, s5, t5
                  and          a5, a6, t5
                  c.addi4spn   a4, sp, 832
                  srl          t4, t5, a0
                  or           s8, t3, t1
                  slti         s1, tp, -561
                  nop
                  c.addi16sp   sp, -16
                  remu         s3, ra, t6
                  slt          s5, s8, a0
                  nop
                  c.srli       a4, 3
                  divu         t0, s11, s0
                  auipc        s3, 89364
                  c.add        t6, s8
                  remu         s5, s8, a7
                  c.srli       s0, 25
                  sub          t0, gp, t1
                  c.li         a7, 4
                  c.addi4spn   a0, sp, 288
                  andi         a6, t1, 537
                  srai         t6, s6, 13
                  mulhsu       s3, a7, gp
                  div          t1, s5, ra
                  sub          s1, zero, ra
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_22
                  li           a5, 0x0
                  li           s1, 0x80000000
                  li           a6, 0xffffffff
                  li           s2, 0xffffffff
                  li           t6, 0xec2dafc1
                  li           s11, 0x0
                  li           gp, 0x80000000
                  li           s4, 0x2d29a57b
                  li           s0, 0x0
                  mulh         s11, s0, gp
                  remu         s6, s0, t6
                  mul          a5, a6, s2
                  rem          s0, s2, a6
                  add          s0, gp, a5
                  rem          s2, a6, s11
                  sub          a5, s0, s6
                  divu         s2, gp, a5
                  nop
                  addi         s0, a5, 901
                  auipc        s1, 591801
                  mulhsu       a6, a5, gp
                  mul          s2, a5, s0
                  mulhsu       gp, s11, s4
                  nop #end riscv_int_numeric_corner_stream_22
                  auipc        s5, 777633
                  c.xor        s0, a5
                  c.li         s5, -1
                  div          s10, s11, s8
                  lui          a7, 81401
                  xor          ra, s7, a2
                  c.sub        s0, s0
                  slti         t0, s10, -1293
                  c.and        a1, s0
                  c.addi       a4, -1
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           s4, 0x0
                  li           t6, 0x48d3f8d5
                  li           gp, 0x80000000
                  li           s7, 0xbd439221
                  li           a4, 0xffffffff
                  li           t2, 0x0
                  li           s9, 0x0
                  li           t4, 0xffffffff
                  li           a1, 0xffffffff
                  mulh         a4, gp, s7
                  mulhu        a1, a4, t4
                  addi         s4, s4, -1207
                  rem          s4, t2, s1
                  rem          s4, s4, t6
                  div          a4, a1, s1
                  mulhsu       t4, s7, a4
                  mul          s1, s4, s7
                  addi         t4, a1, 275
                  lui          s4, 792157
                  div          s9, gp, t4
                  rem          a4, a1, t6
                  mulhsu       s1, s7, s1
                  divu         s7, s9, t2
                  nop
                  divu         t6, a4, s9
                  lui          s7, 42636
                  add          s1, s9, s1
                  add          s4, a1, a4
                  mulh         s4, s7, s1 #end riscv_int_numeric_corner_stream_32
                  c.and        s0, a4
                  srl          s0, t5, gp
                  or           t1, s11, a4
                  sub          s0, zero, a0
                  divu         s3, t4, s9
                  or           s1, t4, s7
                  div          s10, s3, a0
                  mul          zero, a4, tp
                  add          s3, t2, t5
                  mulhsu       t2, a0, tp
                  c.and        a5, a5
                  srai         tp, s4, 17
                  c.addi       s0, -1
                  nop
                  add          s9, t1, s2
                  c.and        a1, a5
                  remu         sp, s9, s5
                  sltiu        s5, zero, 1439
                  slli         s0, s0, 2
                  and          ra, s2, s1
                  mulh         a7, s2, zero
                  c.addi16sp   sp, 160
                  divu         t0, t1, a7
                  sll          tp, a1, a0
                  slli         sp, a4, 10
                  sll          t6, t6, tp
                  c.addi4spn   s1, sp, 288
                  c.andi       a5, -1
                  lui          a6, 40840
                  c.mv         t6, s2
                  c.nop
                  c.lui        tp, 7
                  c.and        a1, a0
                  auipc        t3, 141557
                  srl          t2, s7, a5
                  addi         a0, a1, -974
                  c.sub        a4, a4
                  slt          t0, s11, sp
                  c.addi4spn   a4, sp, 16
                  andi         t4, t4, 1641
                  auipc        gp, 448588
                  ori          s2, a1, -45
                  slli         a6, s10, 2
                  add          a1, a7, a6
                  addi         t4, a7, 1564
                  sll          s10, s11, a4
                  sub          a0, s11, a7
                  c.addi16sp   sp, 272
                  c.and        s1, s0
                  c.or         a4, a4
                  mulhu        zero, s4, t5
                  sltu         s8, gp, s10
                  c.slli       s0, 9
                  addi         a5, s7, -1651
                  mul          t0, s2, a7
                  c.andi       s1, 16
                  slt          t4, gp, t2
                  srli         s5, a1, 18
                  mulhu        s2, a6, tp
                  c.or         a5, a3
                  c.nop
                  c.add        a1, t2
                  c.li         tp, -1
                  c.addi4spn   s0, sp, 320
                  add          t3, a3, t1
                  slti         tp, a7, -1688
                  mulhu        a6, zero, t4
                  srli         a1, t5, 17
                  mulh         s4, s9, s7
                  c.li         s9, 19
                  c.lui        gp, 1
                  addi         t4, s6, 1001
                  c.nop
                  add          t4, a0, ra
                  sltu         t2, s9, s4
                  sll          a5, s6, s3
                  xor          tp, s0, a4
                  rem          a1, t6, t2
                  divu         s6, sp, a7
                  lui          t3, 781650
                  c.sub        s1, a3
                  divu         t4, tp, a1
                  srl          s6, ra, s5
                  c.add        s5, t2
                  c.addi       s2, -1
                  srli         t0, s0, 15
                  c.slli       s8, 31
                  c.xor        a0, s1
                  srl          sp, s11, t1
                  mulhsu       a1, a3, t3
                  and          ra, s10, a5
                  or           s2, s2, s3
                  or           a7, s7, a1
                  c.addi       s1, -1
                  xor          s3, s3, s11
                  auipc        t2, 954116
                  c.srai       s1, 17
                  c.nop
                  mulh         a7, sp, ra
                  c.andi       a5, 3
                  sra          t0, t1, a4
                  sltiu        a0, s11, 888
                  remu         s6, a1, a2
                  srai         zero, s9, 12
                  c.or         a4, a1
                  sltiu        a5, ra, 608
                  c.andi       s1, -1
                  slli         s5, ra, 13
                  slti         s1, a1, 1482
                  slli         s1, ra, 14
                  c.lui        s9, 23
                  divu         a5, s9, s2
                  c.addi16sp   sp, 496
                  c.srai       a5, 23
                  srl          a5, tp, t3
                  c.and        a5, a1
                  addi         zero, s8, 1400
                  c.lui        ra, 28
                  ori          s6, a2, 737
                  mulh         a6, a5, tp
                  c.sub        a0, a2
                  mulhsu       t0, tp, s1
                  mul          a4, gp, ra
                  sub          s9, t5, a2
                  sltu         t0, s10, s5
                  c.slli       s4, 9
                  mulhu        a1, a0, s5
                  c.add        sp, s10
                  ori          t3, s8, -841
                  c.mv         s0, t4
                  xor          t6, s5, s2
                  sll          s5, t2, a6
                  c.mv         t4, s5
                  c.addi       s0, 24
                  sub          s6, t6, s0
                  slti         t2, t0, 1099
                  c.addi4spn   a4, sp, 496
                  c.or         a4, a4
                  c.slli       ra, 19
                  div          sp, s8, t4
                  nop
                  c.addi16sp   sp, -16
                  c.addi       t0, -1
                  srli         t1, a7, 17
                  c.sub        s0, a3
                  addi         s6, t4, -892
                  remu         t1, a4, s6
                  srai         s6, t3, 0
                  mulhu        a4, s3, ra
                  c.addi4spn   a5, sp, 432
                  slli         tp, a7, 16
                  c.srai       a0, 31
                  addi         s6, ra, -1787
                  c.addi4spn   s0, sp, 448
                  c.srli       a1, 23
                  c.or         a4, a5
                  remu         t6, t0, s8
                  sltu         s1, t0, t0
                  div          t4, zero, s10
                  or           s9, s6, t5
                  srl          t1, s10, a7
                  c.addi16sp   sp, 368
                  c.addi       ra, 11
                  c.li         s1, -1
                  c.xor        a5, s1
                  c.lui        s3, 12
                  remu         s0, s5, sp
                  c.slli       s6, 23
                  xor          a4, a0, s8
                  mul          t4, s0, gp
                  addi         s9, t2, -246
                  remu         t1, s6, t6
                  add          t4, t0, t3
                  c.addi4spn   a5, sp, 480
                  slti         s11, a6, -2005
                  c.nop
                  c.add        sp, t0
                  c.mv         s1, s6
                  rem          s11, t4, a6
                  and          s6, s9, s1
                  mul          tp, t2, gp
                  addi         s1, s4, -1847
                  divu         t0, a0, t4
                  c.li         t3, -1
                  c.srli       s1, 15
                  mulhu        t1, s10, t4
                  srli         t0, t4, 7
                  c.xor        a5, a1
                  addi         a7, a1, -1557
                  xori         s5, s8, 1603
                  c.mv         s3, a3
                  c.add        s10, s9
                  mul          s4, t3, tp
                  sltu         s2, sp, t3
                  c.sub        a1, s1
                  sub          a5, t1, s10
                  slt          t6, ra, a2
                  mul          tp, s9, t4
                  slti         s5, a3, -425
                  c.nop
                  sub          gp, s6, sp
                  or           sp, ra, a7
                  c.or         a0, s0
                  srl          sp, a1, t1
                  and          s4, a4, s9
                  c.addi       s11, 21
                  addi         s9, t6, 532
                  add          a6, t0, ra
                  c.addi4spn   a1, sp, 752
                  c.xor        a4, a2
                  nop
                  sra          s2, gp, s2
                  c.li         t1, 7
                  auipc        t0, 90170
                  or           a6, s11, t0
                  rem          a5, gp, gp
                  sltiu        s8, s3, -362
                  and          tp, s4, a1
                  mulh         s10, s8, s6
                  sub          s11, s4, s0
                  c.and        a5, a3
                  c.li         s7, -1
                  ori          s6, a2, 1173
                  mulh         s7, a4, s10
                  c.lui        s4, 11
                  srai         t0, ra, 25
                  c.slli       gp, 16
                  c.add        t3, s11
                  mulhsu       s1, s11, zero
                  c.xor        s1, s1
                  and          a1, t4, a1
                  c.andi       a5, -1
                  add          zero, s0, t0
                  c.and        s0, s1
                  c.addi4spn   a4, sp, 128
                  srli         s1, s7, 19
                  xor          s8, s7, s7
                  c.andi       a0, -1
                  c.andi       s1, 17
                  c.addi16sp   sp, 112
                  slli         t4, s1, 11
                  c.srai       a4, 8
                  rem          zero, a5, t3
                  lui          s5, 340098
                  c.and        a5, a3
                  or           t0, s3, t2
                  c.slli       a1, 13
                  nop
                  and          a5, t1, a7
                  andi         sp, ra, 867
                  c.srai       a0, 26
                  sll          a7, t4, s2
                  c.or         s0, a5
                  c.slli       t2, 23
                  addi         tp, s0, 2016
                  sltu         s5, a5, s5
                  c.and        a4, s1
                  c.li         s10, -1
                  mulhu        a0, t4, gp
                  mul          a0, t6, s6
                  andi         a0, zero, -1683
                  addi         t4, s10, -1870
                  xori         t3, s10, 1761
                  c.lui        gp, 20
                  sub          s4, s11, t6
                  div          s2, s2, a6
                  addi         gp, s9, 1284
                  and          t0, s5, s8
                  c.mv         t1, a4
                  slli         t2, zero, 9
                  sltiu        t1, s10, 769
                  c.addi16sp   sp, -16
                  sltu         sp, t4, s7
                  divu         t0, t0, s11
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x0
                  li           s10, 0xffffffff
                  li           s6, 0x0
                  li           t1, 0x80000000
                  li           tp, 0xafe68fae
                  li           ra, 0xffffffff
                  li           s11, 0x5855fa72
                  li           a0, 0x0
                  li           t6, 0x80000000
                  mulhsu       a0, ra, s6
                  nop
                  mul          t6, s11, a7
                  divu         t6, a6, a0
                  divu         t6, a6, a7
                  nop
                  auipc        t1, 866538
                  divu         a7, s6, t6
                  lui          tp, 627503
                  mulh         s6, t6, s11
                  nop
                  mul          a7, a0, s6
                  mulhu        t1, s10, a7
                  rem          s10, s10, s11
                  remu         a0, t1, tp
                  mulhu        ra, a7, ra
                  mul          t6, a7, t1
                  mul          a7, t6, a6
                  rem          ra, a6, ra
                  mul          tp, s6, s10
                  rem          tp, a6, ra
                  remu         a7, ra, s11
                  lui          t6, 548467
                  addi         ra, tp, 1889
                  rem          t1, a0, t6 #end riscv_int_numeric_corner_stream_12
                  rem          zero, t0, s7
                  c.mv         a1, a6
                  mulh         s5, s11, s3
                  lui          t6, 249638
                  c.srli       a0, 14
                  sll          t4, s9, a7
                  mulhsu       s5, a6, a3
                  mul          tp, a2, s10
                  srai         sp, ra, 27
                  c.and        a0, a5
                  nop
                  c.sub        s1, a1
                  c.li         s3, -1
                  xor          s0, s0, s8
                  mul          t2, a5, t0
                  sltu         a1, s5, t3
                  c.mv         tp, s11
                  auipc        a6, 169677
                  sltiu        s1, s11, -1357
                  rem          s6, t6, s4
                  c.addi       s9, 19
                  divu         a4, s2, s4
                  c.addi       s9, 9
                  mulh         t6, t4, s10
                  xori         s10, a2, -1449
                  or           s10, a1, a7
                  xori         ra, s5, -1862
                  sll          s0, s5, s0
                  c.sub        s1, a2
                  c.srai       a0, 14
                  addi         s1, s5, 877
                  nop
                  c.and        a5, a0
                  add          s0, s10, s8
                  lui          s5, 536142
                  c.add        a6, s10
                  remu         a5, t1, s1
                  addi         t2, zero, 521
                  xor          t0, sp, a0
                  c.or         a4, s0
                  add          s11, s3, t5
                  add          a1, s7, t5
                  sll          s4, s10, t3
                  mulh         s0, gp, s10
                  slti         s2, s1, -944
                  c.and        s1, a1
                  slt          a1, tp, s11
                  c.li         s11, -1
                  mul          a5, t4, a4
                  c.addi16sp   sp, 464
                  c.srli       s0, 18
                  mulhsu       a7, a3, a1
                  c.li         a6, -1
                  divu         t4, gp, t1
                  c.li         t4, -1
                  c.xor        s0, a5
                  lui          s2, 244023
                  sll          zero, gp, s6
                  sltiu        sp, a6, 1276
                  div          a0, t5, ra
                  or           a0, s7, a3
                  mulh         t1, s2, s11
                  c.addi16sp   sp, 320
                  sltu         a4, s8, s6
                  c.li         s11, 29
                  auipc        t2, 497988
                  c.and        a1, a4
                  auipc        s5, 81197
                  divu         t1, a7, t2
                  sltiu        s3, s8, 1926
                  c.addi       s6, -1
                  c.xor        s1, s0
                  c.sub        s1, a0
                  div          s11, s0, s5
                  or           t6, s0, s2
                  add          s9, s3, zero
                  divu         a4, s0, a1
                  c.mv         t0, a2
                  or           s8, a6, s9
                  sll          s0, s3, tp
                  slli         tp, s2, 2
                  slt          s3, t6, s3
                  c.mv         t2, t2
                  and          s10, t1, s6
                  div          s11, s7, s7
                  c.slli       a5, 22
                  divu         s1, sp, s1
                  auipc        t3, 960413
                  c.lui        s5, 14
                  c.lui        a6, 11
                  sll          t0, a3, a4
                  slt          a0, a5, a1
                  add          s0, s11, gp
                  lui          s8, 145391
                  andi         tp, ra, -1561
                  div          a5, a4, s2
                  add          zero, s8, a2
                  sltiu        a5, tp, -1075
                  lui          a4, 122537
                  sltiu        s5, tp, -1727
                  c.lui        s7, 24
                  andi         sp, a1, -509
                  or           t3, s5, s0
                  slt          s5, s11, a6
                  c.li         tp, -1
                  rem          sp, a4, gp
                  and          s2, sp, t2
                  xori         s11, s8, 1080
                  c.srli       a5, 21
                  mul          a4, a5, sp
                  c.andi       s1, -1
                  srli         s4, a5, 5
                  mul          s11, s3, t4
                  lui          s1, 490675
                  srai         a4, s8, 30
                  c.addi       a1, -1
                  c.srai       s1, 22
                  and          gp, a4, s6
                  or           gp, s2, a2
                  slt          s2, t2, gp
                  div          s5, t1, a0
                  srl          ra, t1, s11
                  c.li         s0, 0
                  slti         ra, t3, 1602
                  xori         t4, s3, -1160
                  or           a6, ra, sp
                  remu         s8, s1, a2
                  lui          s2, 624009
                  sltu         a0, zero, s5
                  c.slli       s4, 5
                  srli         gp, t5, 16
                  andi         a1, t6, 848
                  c.andi       s0, 31
                  c.andi       a4, -1
                  srl          s4, ra, s10
                  slt          s4, s5, s8
                  sra          t4, a1, sp
                  add          t4, t0, s0
                  c.slli       s5, 28
                  mulhsu       t2, s3, s10
                  or           a1, t1, t6
                  nop
                  sll          s9, t6, s1
                  c.add        a6, a1
                  sll          tp, t5, s6
                  div          t0, s4, s3
                  lui          gp, 378475
                  c.srli       a1, 4
                  srl          s7, a4, t1
                  slli         s9, zero, 20
                  c.add        s1, s7
                  ori          s0, t1, -488
                  andi         a0, s2, 1773
                  sll          s9, t2, t5
                  c.sub        a0, a0
                  srai         s5, a1, 27
                  c.lui        a4, 6
                  addi         ra, s1, 1370
                  c.lui        s0, 3
                  c.sub        s1, a5
                  and          s0, t5, s9
                  slt          a4, a4, a6
                  c.lui        ra, 10
                  c.li         ra, 2
                  remu         t6, sp, t0
                  c.and        a1, a2
                  c.addi4spn   s1, sp, 32
                  slti         s0, s1, 49
                  sltu         tp, t5, t6
                  remu         s1, t3, a2
                  ori          a4, a2, 965
                  divu         a7, a0, a5
                  srl          a5, tp, t2
                  slli         s0, t3, 11
                  c.addi       a6, -1
                  or           a4, s5, t6
                  sra          t3, a3, a1
                  srai         gp, s2, 23
                  c.srli       a5, 6
                  addi         s5, a2, -1962
                  sltiu        s1, ra, -1852
                  slli         s4, s1, 9
                  c.addi16sp   sp, -16
                  mulh         a0, s4, s10
                  nop
                  c.or         a5, a0
                  c.srai       s1, 15
                  divu         a1, a2, s3
                  mul          s6, t1, a0
                  andi         t6, t1, -1310
                  andi         gp, a5, 1110
                  c.li         a4, -1
                  c.and        s0, s1
                  c.sub        a5, a3
                  mul          t3, t4, s6
                  sll          ra, a3, a7
                  c.srai       s1, 29
                  addi         s2, a1, 525
                  c.addi       t4, -1
                  slt          s4, s10, s9
                  div          s7, zero, t4
                  c.sub        s0, a1
                  srli         s5, a3, 15
                  c.addi4spn   a5, sp, 816
                  c.mv         s6, a7
                  c.or         a4, s0
                  c.srai       a4, 29
                  sltiu        s11, t2, 273
                  divu         s0, s3, s8
                  c.andi       a0, -1
                  c.slli       a1, 13
                  mulhsu       t6, a7, a7
                  and          s7, s7, sp
                  c.lui        t4, 3
                  c.addi16sp   sp, -16
                  c.or         s0, a5
                  divu         tp, s11, s1
                  c.lui        s0, 20
                  c.xor        a0, a2
                  c.add        a4, t2
                  sra          a4, s2, a3
                  c.addi16sp   sp, 16
                  c.nop
                  c.nop
                  c.addi16sp   sp, -16
                  xor          zero, s1, a6
                  c.and        s1, a0
                  srl          a1, s1, s4
                  c.and        s1, a1
                  c.mv         a7, sp
                  lui          a4, 688990
                  divu         a0, s9, s1
                  nop
                  c.or         a0, a0
                  nop
                  c.addi16sp   sp, -16
                  and          a5, s4, zero
                  mulhu        a5, t2, a4
                  slti         a4, s3, 637
                  nop
                  c.srli       a4, 27
                  and          s1, s10, s4
                  c.andi       s0, 24
                  c.and        s1, a4
                  sra          s8, s3, s5
                  srl          t2, s1, a6
                  c.srai       a4, 20
                  div          sp, a6, t0
                  sll          s11, a1, t3
                  c.srai       a4, 27
                  srl          gp, t0, gp
                  c.add        t3, s1
                  srai         s8, t6, 9
                  sltiu        a4, s6, -18
                  sll          t0, t2, t6
                  addi         s10, ra, 524
                  lui          zero, 568385
                  mul          a4, s4, t1
                  c.slli       s0, 2
                  lui          s1, 547276
                  srai         t4, t6, 28
                  div          a0, t4, a5
                  srai         t0, gp, 11
                  c.and        a4, s0
                  c.srli       a4, 28
                  mulh         t2, t2, sp
                  c.mv         s8, a3
                  srai         t0, tp, 11
                  c.xor        a4, a1
                  c.srai       a0, 22
                  xori         a0, a7, -724
                  or           s7, s7, a4
                  mulhu        s4, t3, s3
                  add          s8, a7, a5
                  c.or         a1, s0
                  lui          a4, 940320
                  c.mv         s1, gp
                  mulhsu       s8, s0, a0
                  mul          tp, tp, t1
                  mulhu        s6, s6, t5
                  ori          s4, s11, -754
                  addi         s4, t0, 104
                  srli         t3, s10, 23
                  and          s6, s2, a6
                  srl          a6, a2, a2
                  lui          s9, 68767
                  c.lui        s7, 9
                  auipc        sp, 325663
                  sub          s9, s1, a7
                  c.li         gp, 31
                  mul          s0, t5, s6
                  sltu         s1, a6, a6
                  mulh         a5, s3, s2
                  c.addi       ra, -1
                  slli         s2, s10, 9
                  sltu         a5, a4, a1
                  slli         t3, t0, 6
                  slti         s1, a5, 816
                  andi         a5, t4, 1300
                  and          s4, a5, t3
                  sltiu        t3, t2, 1528
                  andi         s1, ra, 904
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a4, 0xffffffff
                  li           s1, 0x52513e17
                  li           a0, 0x80000000
                  li           s4, 0xffffffff
                  li           t2, 0x57876ef1
                  li           t3, 0xffffffff
                  li           t6, 0x80000000
                  li           s10, 0xf542ae2b
                  li           a6, 0x0
                  mulhsu       s4, t2, s10
                  divu         s4, a0, s3
                  add          a6, t6, a0
                  remu         a4, a6, t3
                  remu         s10, s4, t6
                  remu         t3, s1, s10
                  remu         s1, a0, t2
                  mulhu        a0, s1, a4
                  divu         a6, a4, a6
                  addi         t6, a6, 1750
                  add          s3, s10, s10
                  auipc        s3, 458665
                  rem          t2, a4, t6
                  mulhsu       a0, a6, s4
                  add          a0, t2, t6
                  mul          t3, s4, t6
                  div          a0, a6, t6
                  mulhu        t2, s4, t6
                  mul          s1, t2, a4
                  nop
                  nop
                  nop
                  add          a6, t2, s3
                  lui          t3, 629962
                  remu         s1, s10, s1
                  lui          a6, 437177
                  mul          s1, s1, a4
                  lui          t2, 248234 #end riscv_int_numeric_corner_stream_17
                  remu         zero, t2, tp
                  c.and        a5, a2
                  c.addi16sp   sp, -16
                  c.andi       s0, -1
                  sub          s10, t0, a6
                  c.li         a7, -1
                  c.addi16sp   sp, -16
                  c.or         a1, a0
                  c.li         sp, -1
                  sub          a7, s10, s4
                  c.addi16sp   sp, -16
                  mulhu        s8, zero, sp
                  c.addi       tp, -1
                  sltiu        t4, a3, 285
                  srai         s1, s7, 10
                  ori          t2, a5, -316
                  sltiu        s0, s3, 1567
                  addi         t0, s5, -1408
                  remu         tp, a5, s6
                  sltiu        t2, s7, -530
                  c.nop
                  c.and        s1, a3
                  c.and        a0, s1
                  mulhu        t4, t2, t2
                  c.lui        s11, 26
                  c.addi16sp   sp, -16
                  c.mv         sp, s5
                  lui          s9, 362589
                  sra          t1, t0, tp
                  srl          s10, tp, s0
                  srli         s9, a3, 27
                  or           s11, s5, t1
                  c.srai       a5, 19
                  c.xor        a4, a3
                  sll          zero, s7, a5
                  divu         t0, a5, s0
                  nop
                  srl          s9, s3, t3
                  div          tp, t4, s5
                  c.addi16sp   sp, -16
                  and          t0, s11, a0
                  or           s4, ra, s3
                  mulhu        a6, s10, s4
                  c.and        a5, s1
                  c.srai       a0, 5
                  sub          s3, t5, s0
                  c.lui        s11, 23
                  slti         a4, t4, -779
                  andi         t3, sp, 329
                  c.lui        t3, 3
                  c.addi4spn   a4, sp, 896
                  sub          a6, s6, ra
                  c.andi       s1, 30
                  mul          s2, t2, s2
                  sra          tp, sp, t0
                  slli         s0, s5, 15
                  andi         ra, t6, 21
                  c.nop
                  mul          t0, s0, a2
                  c.nop
                  slt          s7, a6, t4
                  c.mv         s7, s6
                  sltu         s10, s8, a6
                  sltu         t6, a5, s6
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 192
                  div          a6, s4, s6
                  sub          t0, t0, s2
                  div          s7, s10, a5
                  sltu         a1, t1, a4
                  srai         sp, a0, 3
                  sltiu        a7, a7, -1703
                  c.li         s11, 16
                  or           s5, ra, s9
                  c.addi       s3, -1
                  c.or         a0, a4
                  nop
                  remu         t4, zero, s4
                  auipc        gp, 16132
                  add          tp, t3, a3
                  c.sub        s1, s1
                  addi         t3, t2, -799
                  c.slli       a6, 13
                  ori          gp, s8, 1040
                  c.mv         s6, a0
                  c.mv         s7, a7
                  or           s10, t0, t0
                  c.and        s0, a1
                  c.and        a4, a2
                  c.li         t2, -1
                  slli         t4, s10, 26
                  c.addi16sp   sp, 464
                  addi         s2, t5, -859
                  c.addi4spn   s1, sp, 592
                  remu         a5, s10, t6
                  srl          s7, a3, a7
                  c.add        t3, s0
                  c.li         t1, -1
                  addi         t1, tp, -1403
                  c.and        s1, a1
                  sub          a1, s7, t1
                  auipc        zero, 203600
                  c.nop
                  srl          s3, a6, a0
                  xori         t3, s1, -234
                  nop
                  sltu         a1, a0, a5
                  c.slli       sp, 3
                  slli         t0, a5, 6
                  c.mv         s5, t6
                  mulh         t1, a5, s0
                  sub          t2, s4, s2
                  lui          s4, 126122
                  c.xor        a0, a3
                  rem          s10, s10, a1
                  c.add        tp, gp
                  c.srai       a5, 19
                  srai         sp, gp, 31
                  c.srli       a5, 25
                  c.srai       s0, 17
                  slt          s5, t5, t6
                  c.addi4spn   a4, sp, 784
                  auipc        t2, 815944
                  sltiu        s11, t3, 394
                  c.add        a0, t0
                  add          t1, s0, s11
                  c.srli       s1, 30
                  c.xor        s1, a0
                  auipc        a4, 531877
                  sll          t0, a4, a2
                  mul          t4, s7, a0
                  sll          t0, s11, s11
                  c.xor        a5, a4
                  or           zero, s11, s7
                  sltiu        ra, t0, -1809
                  c.lui        tp, 31
                  c.add        a4, a5
                  c.addi16sp   sp, -16
                  mulh         t6, sp, t2
                  c.addi       s7, -1
                  sll          a0, a6, s3
                  auipc        t3, 303626
                  auipc        a1, 40393
                  c.addi4spn   a0, sp, 848
                  sll          tp, s8, a5
                  andi         t4, a7, -554
                  mulhu        s11, t4, a0
                  and          sp, zero, s1
                  c.nop
                  xori         a0, a5, 281
                  c.mv         s6, s9
                  div          s6, t6, s0
                  mulhu        a6, a2, a3
                  sra          t6, zero, gp
                  sra          t2, s10, t4
                  c.sub        a0, a5
                  c.sub        a4, a5
                  c.xor        a5, s0
                  mulh         tp, t6, s2
                  c.srai       a5, 14
                  c.srai       a4, 15
                  srli         t2, s4, 19
                  c.addi4spn   a4, sp, 928
                  c.and        s0, a3
                  nop
                  c.li         s6, 27
                  andi         a6, a0, -1509
                  c.mv         t3, a0
                  mulh         t3, t0, s11
                  sltiu        t0, t3, 1033
                  and          t4, s7, s1
                  div          s5, t2, s0
                  srai         s4, t1, 26
                  c.srai       s1, 18
                  slti         zero, t6, -1488
                  c.li         gp, -1
                  c.andi       a4, 2
                  c.or         a4, s0
                  c.srai       s0, 17
                  c.srli       s1, 1
                  xor          t3, a7, gp
                  andi         t6, t4, -1877
                  c.slli       a4, 26
                  c.xor        s1, a5
                  srai         s8, t2, 19
                  srl          t6, a3, gp
                  divu         s6, s5, a1
                  addi         s9, a2, 748
                  sub          t1, gp, gp
                  c.nop
                  mulhu        a5, zero, t0
                  c.andi       a5, -1
                  addi         s9, s6, -1607
                  sltu         t2, a5, t1
                  xor          s5, a7, s6
                  or           s9, s0, a4
                  srai         a0, s7, 5
                  nop
                  divu         t1, s2, s11
                  c.and        a4, a4
                  c.srai       a4, 8
                  sltu         ra, t1, a3
                  c.slli       s2, 26
                  sra          gp, s6, a5
                  lui          t1, 551639
                  or           t6, a7, t4
                  divu         a5, a2, a6
                  sll          sp, s6, t5
                  srai         s9, a2, 7
                  slti         s6, zero, 1455
                  srli         gp, t4, 9
                  sltu         zero, tp, t1
                  c.srai       s1, 17
                  sra          t3, s9, s8
                  slli         a6, s3, 3
                  auipc        a5, 218093
                  nop
                  mulh         s6, tp, t4
                  c.addi16sp   sp, 176
                  add          s0, a4, s10
                  c.addi       a4, 31
                  c.addi       t0, -1
                  div          sp, s3, gp
                  c.andi       a5, 4
                  nop
                  c.slli       s5, 13
                  lui          a6, 604568
                  divu         a7, a6, a0
                  xori         sp, a6, -466
                  or           s4, s1, a6
                  c.nop
                  c.mv         s0, s11
                  slti         a5, tp, 1733
                  div          s7, t0, a2
                  c.and        a4, a5
                  andi         t0, t4, -652
                  c.addi16sp   sp, -16
                  c.or         s0, a4
                  c.lui        gp, 15
                  xor          t1, s2, s4
                  add          s2, t1, s2
                  lui          a5, 848791
                  mulhu        t4, s7, s2
                  sltiu        sp, tp, -1440
                  c.or         s1, a4
                  or           a1, t0, a2
                  andi         s6, sp, -1549
                  xor          zero, s4, sp
                  srli         sp, t5, 12
                  slti         zero, zero, -1587
                  rem          a4, s5, s9
                  slti         s11, s4, 1614
                  slli         s5, s4, 6
                  c.sub        a5, a5
                  divu         s1, a6, t2
                  sra          t3, s10, t1
                  c.srai       a1, 25
                  c.addi       s7, -1
                  slt          a6, s8, tp
                  c.xor        a4, a2
                  c.srli       a4, 14
                  c.lui        s11, 26
                  remu         s8, s0, t2
                  c.mv         s9, t6
                  srai         t6, t2, 6
                  c.srai       a0, 25
                  slt          a4, a5, t2
                  c.srli       a4, 5
                  c.xor        a4, a3
                  c.lui        a0, 22
                  srai         a7, a1, 24
                  mulhsu       s5, t1, t6
                  srai         s10, sp, 14
                  andi         s7, s8, -26
                  ori          a6, s3, 1179
                  c.xor        a1, a5
                  c.srai       a5, 15
                  c.sub        a5, a1
                  mul          t6, s7, zero
                  nop
                  c.lui        gp, 22
                  srai         a7, s4, 25
                  xori         t6, s9, -1978
                  lui          a7, 853586
                  sll          s8, a6, t6
                  c.sub        s0, s1
                  nop
                  ori          s1, t0, -81
                  c.addi16sp   sp, 160
                  c.mv         t4, gp
                  mulhsu       s0, s5, t3
                  mul          sp, a6, a6
                  remu         sp, s5, s0
                  mul          s2, t3, a1
                  add          sp, a5, tp
                  add          a4, a1, s1
                  mul          a1, s8, a2
                  addi         t4, t4, 2004
                  srli         tp, s8, 14
                  slli         s9, s7, 15
                  c.li         s2, -1
                  c.addi16sp   sp, -16
                  mulh         ra, t3, s5
                  xori         a5, a6, -1730
                  c.or         a5, a0
                  lui          s11, 644160
                  c.add        sp, s4
                  sltu         t6, s5, s1
                  rem          t2, zero, t6
                  mulh         s5, s7, t3
                  srl          a5, a3, t4
                  auipc        t4, 77680
                  or           t0, s2, s10
                  c.srli       a5, 19
                  c.addi4spn   a1, sp, 160
                  sltu         a1, s0, t6
                  and          a4, t5, t0
                  c.li         gp, -1
                  xor          zero, zero, s6
                  xori         s9, s5, -1636
                  nop
                  xor          s0, t6, a6
                  c.andi       a5, 25
                  div          a5, sp, t2
                  srai         s6, t0, 2
                  remu         s4, sp, t4
                  xor          gp, s9, t4
                  div          a5, s7, t0
                  sra          s11, a5, s0
                  sltiu        s9, a5, 1634
                  mulh         t4, t3, zero
                  and          s11, zero, t1
                  c.xor        a4, a4
                  c.andi       s0, -1
                  slti         t4, s8, 1504
                  c.addi16sp   sp, -16
                  sub          t4, tp, gp
                  sltiu        t4, gp, -1587
                  c.or         s0, a1
                  andi         s0, a3, -374
                  c.addi       t1, 7
                  ori          t3, a2, 85
                  xori         s6, t3, -1474
                  div          t1, a7, a7
                  sltiu        a6, tp, 686
                  xor          a5, s6, t0
                  c.add        t6, s7
                  c.xor        a4, a1
                  srli         gp, s1, 21
                  sltiu        t0, t2, 188
                  mulh         s0, zero, tp
                  c.srai       s1, 27
                  sra          s4, s5, ra
                  c.andi       a4, 17
                  c.xor        a1, a2
                  srai         s9, s6, 9
                  divu         s9, s1, s5
                  div          gp, a2, s1
                  srl          t2, t1, s0
                  c.addi4spn   a4, sp, 832
                  lui          sp, 749355
                  c.add        sp, t2
                  xor          t0, s2, t1
                  and          s7, t5, s6
                  andi         s6, s3, 2009
                  and          s11, s1, a3
                  slli         gp, t6, 19
                  c.or         s1, a4
                  xor          s8, s5, a1
                  slt          a4, t5, t6
                  li           s9, 0x120b1b57 #start riscv_int_numeric_corner_stream_0
                  li           sp, 0x80000000
                  li           s7, 0x80000000
                  li           s8, 0xffffffff
                  li           a6, 0xffffffff
                  li           s10, 0x80000000
                  li           t1, 0xffffffff
                  li           a7, 0xb51c2404
                  li           a1, 0x0
                  li           s0, 0x80000000
                  divu         sp, s9, a6
                  mulhu        a7, s7, sp
                  sub          a1, t1, s8
                  auipc        s10, 485229
                  nop
                  mulh         s8, t1, sp
                  div          s8, s10, s9
                  divu         s7, t1, s0
                  divu         s10, t1, a7
                  lui          a1, 302365
                  mulh         s8, t1, s9
                  mulhsu       a1, a6, sp
                  lui          s9, 366695
                  nop
                  nop
                  sub          s7, a6, a6
                  mulhsu       s10, s9, a7
                  divu         t1, s7, s10
                  add          t1, a6, a7
                  add          a1, s10, s10
                  div          s7, a1, t1
                  addi         s10, s7, 1420
                  addi         s9, a7, 1636
                  mulh         s9, s7, s7
                  auipc        s7, 515484
                  div          s9, s9, s7
                  mulh         s7, s0, a7 #end riscv_int_numeric_corner_stream_0
                  lui          gp, 544612
                  sltu         s1, a3, s1
                  sub          s2, s2, a2
                  nop
                  lui          a1, 64118
                  mulh         a5, a1, a1
                  c.or         a4, a1
                  xori         s3, t3, -745
                  c.addi16sp   sp, -16
                  addi         s10, zero, -1529
                  mul          ra, t0, s9
                  xori         tp, a2, -249
                  c.addi16sp   sp, 384
                  sub          s7, s2, a3
                  ori          s4, s11, 895
                  divu         a0, s8, t5
                  sll          a6, s2, s2
                  mulhsu       s11, a2, t5
                  divu         s10, a3, a6
                  c.addi       gp, 15
                  xori         s8, sp, 1786
                  c.addi       gp, -1
                  c.or         a4, s1
                  sltu         t6, s6, a6
                  xor          a7, a4, s0
                  sra          t2, a3, a2
                  c.or         a0, s0
                  mulhu        s5, tp, t0
                  andi         s10, t5, 742
                  c.addi16sp   sp, -16
                  or           t4, t3, a3
                  slt          s10, ra, a7
                  c.lui        s6, 9
                  andi         ra, s3, -1970
                  c.or         s0, s1
                  c.nop
                  sltu         s5, a3, t6
                  sll          s8, tp, a5
                  c.andi       s1, 31
                  c.andi       s1, 9
                  add          t3, s11, t3
                  mulhsu       a1, a2, t2
                  slli         s7, s8, 0
                  c.srai       a5, 11
                  c.add        s0, a0
                  addi         s4, t6, -1784
                  c.xor        a0, s1
                  c.and        a4, a0
                  auipc        a6, 104245
                  c.or         a0, a5
                  srl          a1, s3, zero
                  slli         s1, t2, 0
                  rem          s5, a3, tp
                  srli         tp, tp, 13
                  slti         s3, t6, -1804
                  c.add        a4, t0
                  div          a4, a1, s10
                  c.li         s11, 23
                  c.nop
                  c.or         a1, a4
                  srl          s1, zero, s0
                  c.sub        a1, a5
                  or           t1, a6, t4
                  nop
                  sll          a1, t2, a4
                  mulhu        t2, s7, a5
                  xor          s9, t2, t2
                  sub          s11, s3, s8
                  c.andi       a4, -1
                  sll          s1, s10, zero
                  c.sub        a1, a0
                  addi         s7, t3, 107
                  mulhsu       t4, a1, t2
                  addi         s6, t4, 195
                  sll          tp, a1, gp
                  sll          s1, s8, t4
                  and          s8, t6, a2
                  mul          t3, a7, a3
                  lui          t0, 892976
                  sra          t6, s11, a6
                  c.srai       s1, 12
                  mul          s1, tp, s1
                  xori         s0, tp, -1012
                  srai         s10, s1, 0
                  c.addi4spn   a5, sp, 544
                  srai         s11, a1, 8
                  c.lui        s11, 20
                  c.mv         s8, s10
                  mulhu        sp, s2, ra
                  or           gp, s0, s8
                  sub          t3, a7, s5
                  slt          t4, t0, s2
                  c.and        s1, a2
                  srli         s1, a4, 22
                  addi         s1, s8, -1518
                  srli         s7, s1, 6
                  or           s3, gp, s2
                  c.add        a4, t2
                  c.addi16sp   sp, 400
                  c.addi4spn   a4, sp, 896
                  c.andi       s0, -1
                  remu         s4, a3, sp
                  remu         s2, s5, s8
                  addi         ra, sp, 1019
                  c.srli       s0, 19
                  xori         tp, s2, 1314
                  sub          a0, a2, a3
                  c.lui        s2, 1
                  srai         a0, s9, 23
                  c.andi       a0, -1
                  rem          t3, t5, a1
                  ori          t4, s4, 592
                  and          t2, s1, t6
                  c.andi       s0, 29
                  andi         s9, a2, -1024
                  andi         a4, s0, -246
                  div          s10, s4, s9
                  addi         s6, t1, 795
                  c.add        s5, t2
                  sltu         a4, a6, s5
                  slli         t2, a0, 29
                  nop
                  c.lui        s5, 4
                  or           sp, zero, s6
                  c.or         s0, a5
                  slti         s2, t5, 631
                  c.addi16sp   sp, 128
                  c.andi       s1, -1
                  slli         t4, a0, 13
                  rem          s1, s9, a7
                  c.srai       a5, 24
                  c.add        t6, ra
                  rem          s4, s2, tp
                  sltu         t1, a3, a0
                  c.srli       a1, 12
                  add          t0, s8, a4
                  div          a5, t0, zero
                  nop
                  c.slli       s1, 30
                  mul          s6, s7, s8
                  addi         t4, a0, 1750
                  srl          s4, s10, s4
                  nop
                  slli         a5, a7, 10
                  add          t0, s0, s4
                  ori          a6, s7, 767
                  slli         a1, ra, 0
                  sra          s3, s10, a3
                  srl          t6, s4, t3
                  xor          s2, sp, a6
                  nop
                  slli         t6, a5, 11
                  c.srli       a5, 6
                  mul          s1, t0, a7
                  auipc        t6, 217962
                  sltiu        s3, a3, -338
                  c.li         a5, 8
                  mulhsu       s3, s1, s5
                  lui          t4, 863303
                  sll          t3, a2, t1
                  srl          a4, t4, t0
                  sll          a5, a1, s9
                  c.add        s4, s1
                  slt          ra, s6, t3
                  c.addi16sp   sp, -16
                  xori         s10, s4, -1340
                  and          s1, s9, s9
                  c.or         s0, s1
                  c.mv         s9, a5
                  remu         t3, t5, ra
                  slt          a5, zero, s3
                  mul          s5, a0, s8
                  sra          s8, a4, t3
                  c.addi4spn   s0, sp, 368
                  mulhsu       s10, ra, a7
                  slt          s4, ra, t5
                  xori         a6, s6, 1258
                  c.nop
                  divu         s10, zero, s2
                  sra          a4, a1, s2
                  or           gp, t5, zero
                  mulhsu       sp, s0, a3
                  sub          t3, a2, tp
                  c.srli       a5, 15
                  mul          t6, a4, a3
                  sltiu        s4, a7, -1428
                  c.addi4spn   s1, sp, 208
                  mulhsu       t4, s2, s9
                  mulhsu       t4, t4, s3
                  c.addi16sp   sp, -16
                  remu         t1, a6, s3
                  c.xor        a1, a5
                  c.addi       s4, 18
                  sll          t3, sp, ra
                  div          s10, a2, s3
                  c.addi16sp   sp, -16
                  mulhsu       s7, a6, s2
                  divu         t1, a0, ra
                  auipc        s7, 252994
                  c.or         a1, a2
                  c.and        a4, s0
                  divu         s1, tp, s4
                  c.sub        a0, s1
                  srli         s0, ra, 9
                  sub          s0, t6, s1
                  c.addi4spn   a4, sp, 816
                  mul          t0, a0, a1
                  lui          t0, 196122
                  mulhsu       a4, s0, s2
                  c.add        t0, t3
                  add          s4, s4, s11
                  c.addi16sp   sp, -16
                  c.srli       s1, 6
                  sub          t1, t3, s2
                  or           a7, a6, zero
                  sltu         a6, s3, a4
                  c.nop
                  slt          a1, s2, a2
                  c.li         s10, -1
                  c.addi4spn   a5, sp, 880
                  c.sub        s0, s1
                  ori          t3, sp, -1029
                  c.andi       s1, 10
                  c.xor        s0, a5
                  c.or         a4, a0
                  mul          a7, s1, t6
                  srli         s0, t3, 1
                  c.addi16sp   sp, -16
                  mulhsu       tp, s11, s8
                  rem          t0, a1, t1
                  c.addi16sp   sp, 448
                  addi         t3, s8, -1449
                  c.or         a4, a1
                  c.slli       s2, 31
                  c.andi       a0, 3
                  add          s6, sp, a6
                  lui          t3, 246970
                  c.sub        s0, a2
                  or           gp, zero, s7
                  srli         t6, t6, 4
                  xori         a1, s6, -658
                  sltiu        s1, a0, 903
                  slt          s1, a1, t6
                  sub          zero, t0, s9
                  sra          s5, a5, t0
                  mul          a6, t5, s10
                  remu         zero, s10, s2
                  mulh         t6, t0, s7
                  slti         sp, a2, -1981
                  sll          t2, zero, t1
                  c.srai       s0, 13
                  c.srli       a1, 2
                  mulhu        t3, t3, ra
                  sra          a1, s11, ra
                  c.mv         s9, a1
                  remu         a4, sp, t3
                  c.or         a0, a3
                  sltu         a4, s11, s8
                  sub          s10, a4, s11
                  slti         ra, s11, -891
                  c.addi       t0, -1
                  c.lui        t2, 14
                  c.addi4spn   s1, sp, 912
                  srai         sp, sp, 9
                  c.andi       s1, -1
                  remu         t3, s2, tp
                  sll          t0, s7, t5
                  mulh         t4, s4, t6
                  c.slli       t3, 21
                  nop
                  mul          tp, s3, s0
                  divu         ra, a7, s2
                  c.srai       a5, 27
                  srai         a1, a0, 19
                  c.srai       a1, 1
                  sltu         a5, a4, s9
                  srl          s6, t1, ra
                  c.or         a4, a1
                  c.addi       s4, -1
                  c.slli       s7, 24
                  div          zero, ra, a1
                  c.nop
                  c.and        a4, s0
                  c.li         t2, -1
                  xori         s9, s5, -1177
                  srli         s11, a0, 14
                  c.slli       sp, 17
                  or           s1, zero, t2
                  nop
                  remu         a4, t5, a5
                  add          tp, sp, t2
                  c.li         s10, 16
                  sll          t1, t1, t1
                  addi         zero, a3, 945
                  c.slli       s1, 11
                  c.add        gp, t1
                  c.nop
                  sltiu        s11, t1, 1828
                  remu         s7, s2, t4
                  slt          tp, s5, s6
                  mulhu        t3, t4, a7
                  auipc        t6, 828900
                  c.lui        t0, 7
                  sll          s4, s2, s8
                  mulhu        a4, s5, s11
                  c.or         s1, a1
                  and          t0, t1, a3
                  addi         t4, s3, -1603
                  andi         s2, a3, -1643
                  c.andi       a1, -1
                  c.lui        s4, 19
                  c.sub        a5, a2
                  sra          s7, t4, a5
                  srai         a4, s10, 31
                  srai         a6, a1, 8
                  mulhu        t1, t2, t3
                  div          a7, s6, s2
                  and          gp, t5, s8
                  c.or         s0, s1
                  c.addi       s0, 8
                  srl          s5, t4, ra
                  c.sub        a5, s1
                  addi         a5, a2, 969
                  nop
                  c.nop
                  mul          zero, t0, s8
                  add          a7, t1, ra
                  rem          t6, a3, t5
                  sltiu        a6, s2, -564
                  sltiu        a1, s6, 25
                  sltu         a0, a0, t3
                  add          gp, a1, a6
                  c.and        a5, a4
                  sltu         t0, s3, s8
                  sra          s2, tp, gp
                  addi         s3, zero, 1337
                  srl          t6, s1, a0
                  c.addi       s1, -1
                  sll          sp, s11, s3
                  c.add        t1, s3
                  c.srli       a4, 9
                  c.mv         s5, s9
                  c.andi       s1, 4
                  slt          a5, t1, a3
                  c.li         tp, 27
                  auipc        s11, 48375
                  c.add        s1, s8
                  xor          s6, t6, ra
                  add          s0, ra, s11
                  c.and        a1, a3
                  sltu         t3, t2, s3
                  sra          s5, zero, t1
                  add          a4, t3, tp
                  mulhu        a6, s5, t5
                  ori          s6, t1, 2021
                  sltiu        a6, s2, 1575
                  nop
                  mul          s11, zero, s3
                  c.or         a0, a4
                  c.srai       a5, 27
                  xori         t1, a7, -535
                  xori         s7, ra, 1500
                  auipc        s11, 341536
                  and          s9, s7, s7
                  c.addi16sp   sp, 16
                  auipc        t6, 368485
                  remu         a6, s3, s11
                  sltu         t2, s1, s4
                  srl          gp, s2, t2
                  remu         tp, s9, s10
                  mul          a1, s8, t5
                  c.add        a4, s5
                  c.nop
                  sub          t0, s6, s3
                  and          t4, s4, t2
                  c.nop
                  c.and        s0, s1
                  slli         sp, a7, 11
                  rem          s11, s8, a2
                  c.srai       s0, 25
                  or           s4, a5, a1
                  ori          t3, a6, -1625
                  c.andi       a5, -1
                  c.sub        a4, s0
                  sltiu        s5, s8, -1913
                  c.slli       a4, 24
                  remu         a6, t6, a0
                  c.srli       a4, 28
                  mul          t2, t1, t1
                  addi         s0, a6, -628
                  c.sub        s0, a1
                  c.li         s0, -1
                  c.nop
                  c.srai       s0, 9
                  c.li         s7, -1
                  c.addi       a5, -1
                  c.srli       s1, 28
                  ori          a7, t1, -893
                  auipc        s5, 530375
                  slti         a0, s6, 1906
                  mulh         ra, t6, s7
                  remu         a4, s4, t2
                  c.slli       s0, 26
                  c.add        a1, a3
                  lui          zero, 1032324
                  mulh         t1, s6, sp
                  c.nop
                  div          ra, s0, s0
                  slt          t0, s9, t3
                  srai         s9, s8, 13
                  sltiu        s10, t4, 104
                  c.li         s11, 5
                  div          s5, s8, s5
                  xor          s8, a6, a1
                  xori         zero, s5, 953
                  or           s1, a7, s4
                  mulhsu       s1, a3, a4
                  c.sub        a5, a3
                  c.addi4spn   a0, sp, 832
                  c.addi4spn   a4, sp, 656
                  divu         s1, s2, a5
                  c.nop
                  c.lui        a7, 17
                  c.lui        t4, 5
                  addi         s5, s9, -2028
                  sra          a4, gp, a0
                  sra          a4, s7, gp
                  c.or         s0, a4
                  add          s0, a7, s7
                  lui          s2, 175852
                  c.or         a1, a3
                  mulhu        s4, s6, tp
                  c.and        a0, a2
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 1008
                  sltu         s8, t0, tp
                  or           s6, a2, a5
                  c.and        s1, s1
                  slli         s8, s7, 1
                  srli         s3, sp, 26
                  srl          gp, a0, a7
                  or           t2, a7, s3
                  mulh         a7, a4, tp
                  addi         s10, s9, -1895
                  rem          a6, s10, s10
                  c.sub        a0, s0
                  c.xor        a5, a2
                  sll          ra, gp, s6
                  slti         t4, a0, -364
                  c.mv         t6, s11
                  slli         t2, s11, 25
                  c.li         s10, -1
                  ori          ra, s2, -1183
                  andi         s11, t5, -982
                  mulhu        s9, s9, s0
                  rem          s10, ra, s3
                  mul          t3, t0, a1
                  c.srli       s1, 13
                  ori          s6, s5, -1468
                  c.sub        a1, s1
                  mulhsu       s11, t5, t3
                  c.addi4spn   s0, sp, 448
                  slt          a5, zero, a3
                  divu         s4, t0, ra
                  c.and        a4, a1
                  sll          t4, a2, zero
                  mulhu        a1, zero, a7
                  c.andi       a4, 30
                  slt          t3, t0, s11
                  c.lui        t6, 6
                  c.or         a0, s1
                  rem          s11, s1, ra
                  mul          a6, zero, t2
                  div          zero, t5, s2
                  c.add        s1, a3
                  sll          s11, s9, t0
                  srl          tp, t5, s4
                  and          s3, s4, a5
                  c.addi16sp   sp, -16
                  c.addi       t3, -1
                  srli         t2, t2, 28
                  c.addi4spn   a5, sp, 48
                  divu         sp, s6, s2
                  ori          a7, t4, -689
                  c.sub        s0, a3
                  srl          t1, s10, t1
                  sll          s2, s5, a4
                  remu         t2, t3, t3
                  rem          tp, a5, s10
                  c.sub        s0, a3
                  slt          a1, a2, ra
                  srli         s3, tp, 14
                  c.andi       a5, 17
                  remu         t0, t6, s11
                  slt          a4, s7, t0
                  andi         a7, a3, -9
                  c.sub        s0, a0
                  c.sub        s0, a2
                  c.srai       s1, 21
                  mulhu        t3, t5, s6
                  c.lui        s9, 26
                  c.sub        a5, s0
                  c.andi       s1, 28
                  slti         t6, a4, -969
                  add          s6, s8, a1
                  slli         s8, ra, 23
                  c.addi       s10, -1
                  lui          s4, 450127
                  sub          s0, t6, t0
                  slli         s8, t4, 7
                  srl          a7, s3, s4
                  slt          t0, ra, t0
                  sub          tp, s11, t5
                  xori         s2, s4, 1536
                  c.addi       s3, -1
                  div          a7, t1, t4
                  c.or         a1, s1
                  sltiu        s1, s3, -1652
                  c.slli       a5, 28
                  c.srai       a5, 20
                  and          a0, s1, s8
                  xori         s10, s11, 1765
                  c.slli       s5, 23
                  andi         s8, a4, 1481
                  c.andi       a4, 20
                  srai         s9, a2, 18
                  mulhsu       ra, s4, ra
                  c.mv         s5, t6
                  div          t0, zero, a3
                  c.srai       a4, 1
                  mulhsu       s4, t0, a2
                  andi         s0, zero, -1431
                  c.or         s1, a4
                  xori         s1, tp, 171
                  sltiu        a1, t6, 1637
                  xori         ra, a1, 1644
                  srl          s8, t6, t1
                  nop
                  div          s0, a1, s0
                  addi         tp, t1, 173
                  slti         t2, s2, -491
                  c.and        a5, s1
                  c.sub        a5, s1
                  or           a4, t1, t3
                  mulhsu       a6, t4, ra
                  srl          ra, s1, s2
                  c.srai       a5, 25
                  c.or         a1, s1
                  c.nop
                  srli         a4, zero, 17
                  andi         s9, s11, 1584
                  c.srai       a5, 21
                  c.slli       a1, 2
                  mulhsu       a0, a7, a6
                  mulhsu       s11, t6, a2
                  c.xor        a4, a3
                  mulhu        a4, sp, t1
                  c.srai       a4, 29
                  c.add        a0, s8
                  c.srli       a0, 7
                  and          s6, a2, s5
                  slti         s11, s6, -751
                  and          ra, a4, tp
                  c.or         a4, s1
                  mulhu        a6, s7, s3
                  sra          t6, s4, s6
                  xori         t0, ra, -973
                  mul          s4, s8, tp
                  c.add        s11, gp
                  slli         t6, a6, 26
                  remu         a0, t0, s11
                  add          t2, t4, t3
                  andi         gp, zero, 453
                  lui          t3, 652814
                  mulhsu       s7, zero, a1
                  c.srli       a4, 16
                  sll          s7, s9, s5
                  and          s5, a5, s3
                  c.addi4spn   a4, sp, 240
                  mulh         s0, s5, zero
                  c.addi       a7, 20
                  xori         t4, t3, -1624
                  sub          s5, a1, t6
                  nop
                  slti         t1, t6, -1434
                  mulhu        tp, s7, s9
                  mulh         a4, s2, s7
                  c.or         a4, a4
                  divu         s7, t0, sp
                  c.andi       s1, 12
                  sub          t2, a7, s11
                  sltu         sp, sp, s0
                  mulhsu       t6, s4, t5
                  div          t2, t5, s11
                  c.addi4spn   a4, sp, 864
                  xori         s2, a6, 1028
                  sra          t3, s6, s1
                  xori         a7, t1, -1689
                  sra          a4, s9, s3
                  c.addi4spn   a0, sp, 480
                  mulhu        gp, s9, t3
                  rem          a5, gp, a0
                  c.sub        a4, s0
                  andi         ra, a3, -411
                  nop
                  ori          s3, s9, -1011
                  c.li         a4, 4
                  xor          t4, s3, s5
                  add          zero, s7, s9
                  add          s9, t0, t3
                  slt          a0, t5, s3
                  sltu         t4, s11, a4
                  add          t3, s7, s5
                  xor          t6, s3, s6
                  and          t0, s4, t5
                  c.add        s0, a1
                  srli         t0, s1, 6
                  mul          s1, a2, s0
                  c.mv         tp, t3
                  ori          a1, ra, 152
                  xor          s11, a3, s10
                  srl          a6, tp, t0
                  c.add        t6, sp
                  c.addi4spn   a4, sp, 288
                  c.andi       a0, 3
                  rem          t4, s0, a3
                  andi         s4, a2, -170
                  srl          s10, s9, t3
                  nop
                  c.andi       a4, -1
                  ori          s3, s8, -1518
                  srli         s6, t6, 13
                  mulhsu       t6, t3, a5
                  slti         t3, t5, -1978
                  divu         t3, zero, a2
                  c.li         s0, 30
                  sra          s0, s10, a7
                  addi         s2, t2, -452
                  mul          a1, ra, s11
                  c.slli       s8, 30
                  slli         a1, s2, 7
                  c.slli       t4, 2
                  c.slli       gp, 19
                  or           ra, t6, s8
                  c.srli       s1, 5
                  c.add        s1, t4
                  and          t3, t3, a0
                  mulh         t0, s4, a0
                  srl          tp, ra, t1
                  c.addi       a6, 2
                  rem          s5, t2, a1
                  xor          a1, zero, a7
                  slt          ra, a0, zero
                  srai         a6, s4, 7
                  auipc        s5, 755702
                  or           ra, zero, t1
                  sltu         a1, a7, s1
                  lui          t2, 273416
                  sltu         s0, a2, t2
                  or           a0, a5, s1
                  c.sub        s0, a5
                  div          t0, s10, ra
                  rem          a1, t4, s1
                  slt          s1, s10, t5
                  lui          a5, 801952
                  mulh         ra, s10, s3
                  mulh         t3, sp, a4
                  sltu         t1, a6, s7
                  divu         s9, a0, t3
                  c.add        s4, t1
                  c.xor        a5, s1
                  rem          s4, t0, a4
                  mulhu        a4, s2, s4
                  c.addi16sp   sp, 80
                  slli         s7, s9, 11
                  xor          t2, a2, s9
                  andi         a4, t0, 714
                  sub          s9, a4, a2
                  addi         t3, s11, -100
                  or           sp, sp, s11
                  mul          s6, gp, a5
                  c.srli       s1, 18
                  and          s1, t4, a1
                  andi         s0, s4, -676
                  c.addi       s9, -1
                  c.or         a4, a4
                  mulhsu       t0, s5, t1
                  c.addi4spn   a0, sp, 992
                  andi         s5, s7, 201
                  srai         gp, t2, 11
                  slli         s9, s4, 19
                  c.addi4spn   a5, sp, 432
                  sll          s7, t3, s2
                  sltiu        s3, a3, 413
                  and          t0, s6, s3
                  remu         a4, s5, t4
                  c.srai       a0, 19
                  c.lui        s4, 28
                  divu         zero, s5, t4
                  xor          gp, s11, t5
                  divu         t6, t2, sp
                  c.or         a5, a1
                  nop
                  div          t4, t2, a1
                  c.add        a1, t1
                  andi         t0, s6, 1718
                  c.addi       a6, 6
                  c.andi       s0, 31
                  slli         t0, s8, 18
                  c.slli       gp, 19
                  c.lui        t6, 13
                  rem          t0, t2, a5
                  c.addi16sp   sp, 96
                  sra          s9, a4, a7
                  divu         s5, a0, t5
                  c.or         a1, a1
                  c.andi       s0, -1
                  ori          t1, t0, -1139
                  c.addi4spn   a0, sp, 16
                  srai         s8, sp, 14
                  c.srai       s1, 4
                  xori         s0, s6, 1022
                  ori          t3, a6, -1279
                  c.andi       s0, 3
                  sll          s3, s0, t2
                  divu         s8, tp, s6
                  ori          t3, t4, -67
                  slt          s8, a4, a6
                  sra          t4, s8, s2
                  auipc        a5, 249785
                  c.addi       t4, -1
                  srl          t1, a3, a2
                  c.slli       s5, 30
                  c.or         s0, a0
                  and          s8, s8, a3
                  c.li         a0, -1
                  sra          t0, s11, a7
                  mul          t1, s8, t1
                  srl          zero, t6, a2
                  xor          s4, s10, tp
                  addi         t6, a5, 1770
                  mulh         t3, t5, t1
                  xor          a1, gp, a6
                  srl          s6, a4, s11
                  auipc        sp, 1001657
                  auipc        tp, 436846
                  andi         a6, tp, -1230
                  xor          a6, t0, s2
                  sll          t6, s11, s11
                  c.andi       s0, 2
                  sltu         gp, t0, a3
                  c.addi4spn   s0, sp, 368
                  mulhsu       a4, t1, a5
                  c.srai       a1, 2
                  mulh         a4, s9, zero
                  sub          s8, a4, s3
                  nop
                  div          s8, s7, t1
                  c.sub        s1, s0
                  sltiu        s5, s1, -1710
                  c.addi16sp   sp, 192
                  c.add        s4, gp
                  lui          a0, 441797
                  c.addi       s2, -1
                  c.addi4spn   a1, sp, 784
                  c.add        t6, s2
                  rem          a6, a0, s5
                  slt          s10, zero, t5
                  auipc        t3, 710263
                  addi         ra, gp, -101
                  add          s4, t5, t0
                  mulh         s1, s11, s8
                  srl          t2, s1, t0
                  div          s1, a5, t0
                  lui          s6, 569572
                  c.addi16sp   sp, -16
                  mulh         t1, t5, s2
                  sltu         a6, t6, a4
                  slt          t4, s8, s2
                  divu         s7, a7, gp
                  sub          a4, t1, a1
                  c.addi       t4, -1
                  c.srai       s1, 14
                  c.addi16sp   sp, 32
                  c.mv         ra, gp
                  xor          s7, t2, a3
                  mulh         tp, s11, a7
                  mulhsu       sp, a2, s10
                  c.and        a4, s1
                  srai         t4, t0, 15
                  div          t4, tp, a1
                  c.srli       a1, 22
                  c.sub        a4, a3
                  sll          t2, zero, s10
                  xor          s2, ra, s6
                  srai         t4, s9, 25
                  lui          s4, 199764
                  sub          s6, zero, t4
                  mulh         s10, s3, s0
                  c.addi4spn   a5, sp, 704
                  c.addi16sp   sp, 304
                  c.add        t6, t6
                  c.andi       s0, -1
                  addi         t0, s2, -912
                  c.sub        s1, a3
                  remu         sp, a7, a6
                  and          t2, a0, t2
                  slti         ra, s10, -950
                  c.addi16sp   sp, -16
                  xor          t6, t2, s11
                  sltu         s11, s1, s6
                  mulhsu       t6, t1, t1
                  div          s9, s4, s1
                  srl          s2, a5, a2
                  mulhu        t1, a1, t5
                  c.add        s3, tp
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a6, 0xffffffff
                  li           tp, 0x50dc1b42
                  li           t1, 0xda8c360b
                  li           gp, 0x91cdc0f6
                  li           t2, 0x80000000
                  li           a7, 0xffffffff
                  li           s5, 0x74b7857b
                  li           a5, 0x0
                  li           a1, 0x0
                  mul          gp, a1, t2
                  divu         t2, a1, a6
                  sub          a6, tp, s5
                  div          a6, gp, a1
                  div          gp, t1, s4
                  auipc        tp, 342826
                  mul          a6, s5, s5
                  mulh         a5, a7, a6
                  lui          t1, 693536
                  sub          t1, t1, t1
                  rem          a1, s5, a5
                  mulh         t1, s5, t2
                  mulhu        t1, a6, s5
                  sub          a6, tp, t1
                  lui          s5, 352024
                  auipc        a1, 254846
                  addi         t1, a7, 1069
                  divu         s5, tp, a7
                  nop
                  mulhu        t1, a7, a6
                  lui          a5, 971667
                  mulh         a6, s4, a7
                  sub          tp, a7, tp
                  remu         a1, gp, tp
                  rem          tp, t1, t1
                  addi         t2, a7, 911
                  remu         s5, a1, gp
                  rem          a7, s5, t2 #end riscv_int_numeric_corner_stream_3
                  nop
                  srl          t4, ra, s0
                  mulhsu       s9, s8, s4
                  div          s6, t6, t5
                  sub          t0, a2, s2
                  sltiu        a5, t3, -1135
                  c.addi       s10, 30
                  mulhu        t2, s3, s10
                  slti         s4, ra, -1194
                  rem          t6, a4, t1
                  add          gp, s10, t6
                  sll          s2, a1, t6
                  c.andi       a4, 16
                  c.or         s0, a3
                  c.sub        a5, s0
                  c.mv         sp, t6
                  xor          a4, zero, t5
                  srl          s11, a0, s3
                  c.xor        a1, a0
                  slli         sp, a2, 1
                  c.slli       s2, 5
                  auipc        a4, 54034
                  sltu         a5, s5, t1
                  mulh         s1, a7, s0
                  c.srli       a1, 15
                  c.nop
                  remu         a0, t0, s6
                  divu         t3, sp, t6
                  add          t0, t2, gp
                  sltiu        s6, s3, 214
                  srli         s11, t0, 25
                  c.xor        s0, a4
                  c.andi       s1, 6
                  srai         a4, s2, 31
                  nop
                  xor          t0, s6, zero
                  sub          a4, s0, a4
                  nop
                  and          s4, s10, s7
                  c.andi       s0, 11
                  and          gp, a4, s7
                  c.lui        a0, 26
                  rem          t6, t2, a4
                  rem          ra, t3, a2
                  c.and        a0, s0
                  c.li         s5, 4
                  add          t3, a4, a2
                  c.li         t2, -1
                  c.mv         t2, a0
                  mul          s11, sp, s3
                  c.lui        a6, 13
                  c.slli       s9, 9
                  c.addi4spn   s1, sp, 352
                  c.or         s1, s1
                  c.lui        a4, 13
                  sub          a1, sp, s5
                  sltiu        t4, t4, 567
                  c.add        sp, a0
                  c.xor        s1, s0
                  sltiu        gp, s6, 1147
                  rem          ra, zero, t3
                  rem          t0, zero, a3
                  mul          zero, a6, s10
                  c.and        a1, a2
                  c.andi       a4, -1
                  c.andi       a1, -1
                  nop
                  c.lui        a4, 26
                  sll          a0, a3, t1
                  slti         s0, s11, 1972
                  c.nop
                  c.sub        a0, s0
                  auipc        ra, 969678
                  srl          t3, sp, s3
                  c.or         s1, a2
                  remu         s2, a6, t0
                  xori         t3, s11, 1754
                  c.addi       s1, 11
                  mulhu        s11, a1, s9
                  srli         t6, s6, 7
                  srli         s1, a3, 19
                  c.addi4spn   s0, sp, 80
                  c.li         t0, -1
                  c.slli       t3, 16
                  ori          a0, t1, 857
                  addi         gp, a2, 1383
                  slli         s2, s4, 13
                  addi         s2, s9, 1165
                  divu         t1, t2, s8
                  remu         t2, a0, t3
                  lui          t2, 282368
                  c.lui        t3, 19
                  c.addi4spn   s0, sp, 608
                  c.slli       s1, 11
                  c.sub        s0, a2
                  c.slli       ra, 7
                  sltu         s0, t3, s7
                  slt          a4, a1, s3
                  andi         s7, a3, -794
                  sll          a5, a7, ra
                  c.slli       a4, 9
                  srai         s1, t1, 17
                  slt          s6, a2, s4
                  c.srai       a5, 2
                  c.nop
                  nop
                  andi         t3, s9, -74
                  or           s4, a6, a7
                  div          a4, a5, t5
                  sll          s8, a4, s9
                  slli         a5, s5, 4
                  c.mv         a4, s2
                  slt          a7, s1, a3
                  sltu         a1, a7, s2
                  rem          t0, a5, a3
                  mulh         t4, gp, a6
                  sub          s6, zero, s3
                  c.lui        t4, 24
                  sll          tp, ra, t5
                  slli         s0, a1, 16
                  ori          t3, a4, -333
                  c.mv         s7, t2
                  div          t1, gp, gp
                  c.li         t3, -1
                  xor          s9, a3, s7
                  c.addi16sp   sp, -16
                  c.slli       s4, 16
                  c.andi       a1, 1
                  sll          t4, a3, t6
                  c.slli       sp, 22
                  auipc        t0, 497572
                  addi         t1, s3, 367
                  remu         t4, t0, t3
                  c.addi16sp   sp, -16
                  sltu         tp, t0, t3
                  srai         tp, s8, 25
                  nop
                  divu         t1, a4, t6
                  srli         s6, s5, 21
                  c.addi4spn   s1, sp, 544
                  sra          s9, a6, a3
                  divu         a6, a3, s11
                  c.srai       s0, 16
                  remu         a0, a0, a3
                  c.addi       t1, -1
                  rem          t3, zero, s10
                  sub          t4, sp, s1
                  sltu         t0, t6, t5
                  slli         s11, t6, 1
                  c.andi       a1, -1
                  c.srli       s0, 4
                  divu         s3, t2, s5
                  rem          s0, s9, s8
                  divu         t1, s6, a5
                  srai         s2, t1, 24
                  mulhsu       t2, s1, sp
                  remu         s8, s4, a4
                  auipc        s4, 544585
                  add          tp, s9, t2
                  c.lui        s9, 25
                  srli         t6, a0, 22
                  c.sub        s1, a0
                  c.addi16sp   sp, -16
                  srl          s10, a7, t5
                  addi         s7, t0, -1827
                  c.xor        a5, a0
                  c.lui        s0, 23
                  srli         s7, a1, 2
                  c.xor        s1, a2
                  rem          a7, s4, t5
                  rem          zero, t3, s10
                  c.srai       a0, 20
                  c.nop
                  sltu         zero, a0, a2
                  c.xor        s0, a5
                  rem          t1, s10, a6
                  sltiu        t4, t1, 1118
                  slti         t0, a7, -2042
                  add          s4, t4, s5
                  add          s7, s2, ra
                  sll          s1, a6, a2
                  mulh         gp, s4, s0
                  slt          a0, s1, s4
                  c.mv         s10, s11
                  slli         sp, t2, 23
                  srai         t2, t1, 30
                  remu         a7, s0, s0
                  sll          sp, a7, tp
                  xori         t2, a1, 690
                  andi         a4, t1, -1556
                  c.srli       a5, 26
                  c.or         s1, s0
                  c.andi       a4, 1
                  c.mv         s5, a7
                  c.or         a0, s0
                  c.li         gp, -1
                  sll          s10, t0, s0
                  and          tp, s2, t6
                  srl          t1, ra, gp
                  sltu         s11, s4, s0
                  c.nop
                  sra          tp, a6, s5
                  remu         a5, t0, t3
                  xori         s11, zero, -75
                  c.and        a5, s1
                  sra          a7, t1, gp
                  srai         a4, a4, 5
                  sll          s3, a0, s0
                  c.addi       s3, -1
                  c.mv         t4, s5
                  c.andi       a5, 6
                  mul          t0, ra, a6
                  slli         s4, s4, 28
                  sra          s8, tp, zero
                  c.and        s1, a4
                  c.andi       a0, 16
                  auipc        s6, 469014
                  mulhsu       ra, tp, s9
                  andi         s8, s6, -504
                  srli         s9, s11, 27
                  mulhsu       s6, s5, s11
                  and          t0, s5, a0
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a1, 0x80000000
                  li           a6, 0x9b7e45ab
                  li           a7, 0x79384f4f
                  li           t4, 0x80000000
                  li           t0, 0x1d3a8e06
                  li           s7, 0xffffffff
                  li           s5, 0xffffffff
                  li           sp, 0x80000000
                  li           s11, 0x80000000
                  sub          sp, s11, sp
                  nop
                  mul          sp, s9, sp
                  rem          t0, t4, a7
                  add          a6, s7, sp
                  divu         s7, s7, a7
                  auipc        s9, 55375
                  mulhu        a6, s11, sp
                  addi         s9, s11, -1331
                  mulh         sp, t0, a6
                  sub          t4, a6, a6
                  remu         t4, s7, a1
                  mulhsu       s11, t4, t4
                  mul          a1, a7, a7
                  addi         s11, sp, 1983
                  nop
                  auipc        a6, 94783
                  addi         s7, sp, 158
                  mulh         a1, sp, s7
                  addi         a7, s5, -1914
                  divu         s11, s7, s11
                  addi         a6, s11, 673 #end riscv_int_numeric_corner_stream_14
                  slli         t1, s9, 19
                  c.andi       a1, 17
                  c.mv         s8, a4
                  slti         s6, s9, -1847
                  divu         gp, t4, a4
                  divu         a5, ra, a6
                  sltiu        a5, s7, 1972
                  sltu         s8, s2, t0
                  add          t3, s5, a5
                  slli         a7, a6, 9
                  xor          s2, a5, t6
                  slli         s0, s5, 0
                  add          s2, a3, t5
                  c.addi4spn   s0, sp, 688
                  mulh         a5, tp, s5
                  addi         s2, s11, 515
                  andi         s0, ra, -202
                  c.addi4spn   a0, sp, 224
                  ori          s10, t1, -1384
                  lui          s3, 329178
                  c.mv         a1, a7
                  c.slli       s10, 29
                  ori          a4, s6, 343
                  c.mv         s5, s0
                  ori          s10, a3, 1896
                  remu         s0, s7, gp
                  c.add        a4, t3
                  c.srli       a4, 17
                  c.mv         s7, s3
                  srl          sp, s2, s11
                  nop
                  srl          a4, a7, a7
                  sra          s1, t0, t3
                  lui          s3, 649572
                  c.nop
                  divu         s0, s3, a5
                  c.andi       a0, 29
                  remu         s3, ra, ra
                  c.srai       a1, 18
                  mulh         a1, s4, s8
                  mulhsu       s11, t1, zero
                  mulhsu       a6, s7, s9
                  c.nop
                  rem          a4, t6, t5
                  andi         t6, a3, 1864
                  mulhsu       s1, a2, a2
                  c.addi       a6, 6
                  c.xor        a5, a1
                  c.and        a4, a3
                  c.mv         s5, s11
                  srai         s8, a3, 9
                  remu         s6, s5, t4
                  c.mv         a4, s3
                  c.andi       s1, -1
                  rem          s3, s1, s4
                  sltu         s5, a2, s11
                  c.nop
                  c.srli       a4, 24
                  div          s6, t0, s10
                  c.andi       s1, 12
                  c.nop
                  c.addi       a4, 18
                  c.slli       s5, 30
                  mulhsu       t0, t3, s6
                  c.mv         a4, s10
                  divu         s11, zero, a3
                  sub          t1, s9, tp
                  c.addi4spn   a4, sp, 48
                  or           s7, t5, s7
                  mulhu        s1, t2, zero
                  divu         s4, gp, t3
                  c.addi       s5, -1
                  auipc        gp, 368495
                  c.addi4spn   s0, sp, 32
                  c.lui        s2, 17
                  c.nop
                  c.li         t3, -1
                  c.addi4spn   s1, sp, 928
                  or           a6, t2, s5
                  rem          t2, a0, t0
                  rem          zero, s8, t3
                  slli         s6, s1, 21
                  c.srai       a4, 8
                  c.nop
                  slti         t4, s1, 840
                  sra          ra, s6, s8
                  c.or         s0, s1
                  andi         t2, t4, -1650
                  c.li         a7, -1
                  c.lui        t0, 13
                  add          a7, a1, tp
                  xor          s10, t3, s0
                  c.slli       s0, 21
                  sltu         s3, s9, t1
                  remu         a0, s6, s10
                  divu         s8, a5, t1
                  or           s3, s2, s11
                  c.nop
                  sltiu        tp, t3, 692
                  c.add        s2, a2
                  mulh         t4, a7, s4
                  andi         s4, t4, -1353
                  and          t6, s8, s8
                  c.mv         s5, s1
                  slli         a6, sp, 18
                  slli         s8, gp, 8
                  sub          a1, ra, s4
                  c.sub        a0, a3
                  sll          t4, a4, s2
                  c.addi       t1, -1
                  mul          s4, ra, t3
                  c.add        t6, t3
                  mul          zero, t4, a1
                  or           a4, t1, t4
                  c.andi       a5, 22
                  auipc        s11, 546550
                  c.and        a5, s1
                  c.or         s0, a4
                  c.and        a5, a3
                  sll          tp, s1, a3
                  c.li         ra, -1
                  or           gp, t6, s9
                  c.li         a1, -1
                  sll          s8, t1, s1
                  srl          t1, tp, a1
                  c.addi16sp   sp, 256
                  c.sub        s0, a5
                  c.srli       a5, 1
                  ori          s0, a4, 1215
                  c.nop
                  c.slli       t4, 2
                  or           sp, s3, s8
                  andi         a4, tp, -826
                  srai         a1, t0, 21
                  c.nop
                  nop
                  remu         a0, a3, t2
                  c.sub        s0, a5
                  auipc        zero, 943622
                  sltu         s2, s1, t3
                  div          sp, s10, s7
                  c.addi       s8, 29
                  c.slli       s6, 17
                  sll          sp, a1, a4
                  rem          s3, s7, t3
                  c.or         s0, a2
                  c.and        s0, a3
                  slti         s4, a0, -512
                  lui          a0, 382693
                  and          a1, a0, ra
                  c.or         s1, a1
                  c.mv         s4, s4
                  mulhu        t1, sp, a2
                  and          s1, a1, a1
                  lui          s1, 791179
                  c.add        s9, s7
                  c.slli       a7, 16
                  c.andi       a1, 4
                  or           t0, s1, s5
                  mulhu        s7, s3, s6
                  c.sub        s1, a1
                  slt          s9, s11, t3
                  xori         s11, s4, 258
                  srli         s6, a5, 8
                  remu         sp, s9, a0
                  andi         s8, a1, 214
                  and          t0, a0, tp
                  and          a5, a6, s10
                  c.or         s0, a1
                  mul          t0, t4, s1
                  mulh         s11, a6, tp
                  mulhu        s2, a5, s9
                  rem          s6, t6, s7
                  sltu         a1, t4, s8
                  sub          tp, gp, a1
                  mulh         a7, t1, s1
                  ori          s5, sp, -2002
                  and          a5, a1, s1
                  mulhu        a6, a2, ra
                  and          s9, s10, t5
                  c.mv         a6, a2
                  c.lui        s2, 3
                  c.addi       t3, -1
                  ori          s9, a1, 548
                  nop
                  sltiu        s3, a5, -906
                  c.andi       a5, 31
                  c.slli       s2, 8
                  slti         s0, t6, -1163
                  c.nop
                  sra          t2, a3, t1
                  sra          t4, a2, a3
                  c.addi16sp   sp, -16
                  c.sub        a5, a0
                  add          s11, ra, s4
                  c.or         a1, a2
                  addi         t4, s10, 1329
                  auipc        s10, 475601
                  mul          s5, t1, ra
                  c.and        a5, a2
                  c.andi       a5, 12
                  auipc        a5, 609990
                  mulh         a1, s2, t4
                  c.srai       s1, 27
                  xor          s3, a3, t2
                  and          tp, a0, s5
                  divu         gp, s6, t3
                  auipc        ra, 12874
                  slli         ra, a6, 18
                  c.andi       a5, -1
                  mulh         tp, t6, t6
                  add          s3, a1, s4
                  nop
                  or           s10, t0, t4
                  c.and        s1, a3
                  srl          s10, a3, a3
                  sltu         a7, a5, s5
                  c.mv         a4, t3
                  c.lui        gp, 26
                  c.slli       tp, 9
                  remu         ra, s6, s1
                  c.addi4spn   a4, sp, 960
                  c.li         s9, -1
                  sub          s0, a1, t2
                  andi         a4, a1, -381
                  divu         a7, a3, s5
                  xor          s0, s9, s7
                  sll          tp, ra, a2
                  slli         s9, a4, 31
                  ori          s5, s6, -842
                  ori          t0, s10, 1344
                  c.xor        s0, a2
                  c.lui        a5, 12
                  c.lui        s2, 8
                  div          t0, a7, s1
                  divu         ra, a3, a6
                  c.add        t0, s0
                  sub          s9, a2, s10
                  auipc        t3, 1005941
                  divu         s6, s1, t6
                  c.slli       t0, 15
                  c.andi       s1, 29
                  slli         s2, ra, 12
                  sltiu        t2, a5, -344
                  c.li         s1, -1
                  c.or         s1, s1
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t6, 0x0
                  li           ra, 0x9f523789
                  li           t3, 0xffffffff
                  li           t1, 0x80000000
                  li           a7, 0x0
                  li           s8, 0xffffffff
                  li           s0, 0x0
                  li           t2, 0x80000000
                  li           s5, 0x80000000
                  mulhu        t1, ra, t1
                  mulhu        ra, s8, s10
                  rem          ra, a7, t1
                  mulhsu       s10, t3, s8
                  mulhsu       s5, s10, a7
                  nop
                  divu         s10, t1, s8
                  div          s10, t2, s0
                  mul          t6, s5, ra
                  mul          s5, s8, a7
                  mulhu        s0, t1, s0
                  mul          t2, s0, ra
                  remu         s10, ra, s5
                  auipc        t1, 28266
                  auipc        t1, 791616
                  sub          s0, s0, t3
                  sub          s10, a7, t1 #end riscv_int_numeric_corner_stream_7
                  mulhsu       t4, a2, s5
                  srl          ra, s8, t6
                  c.lui        ra, 31
                  c.addi       a6, -1
                  add          s1, s6, t5
                  sltiu        s6, t1, -169
                  c.andi       a5, -1
                  sll          s9, a2, s2
                  slti         t1, t1, -1958
                  slt          s0, s9, sp
                  auipc        t3, 120793
                  slt          s1, s3, s8
                  auipc        t4, 199451
                  c.nop
                  sltiu        t0, t1, -1200
                  remu         a4, s8, t0
                  c.andi       a4, -1
                  c.addi16sp   sp, -16
                  and          t4, t1, s9
                  slti         a0, zero, 620
                  mulhu        gp, s2, gp
                  c.slli       t4, 5
                  auipc        t2, 428880
                  lui          t0, 586150
                  c.slli       s1, 14
                  and          s3, s2, a0
                  sll          s5, t0, t5
                  mulhsu       s4, gp, s7
                  c.mv         ra, gp
                  and          zero, a1, s3
                  c.or         a0, a3
                  sub          a4, s11, tp
                  xor          s10, ra, s6
                  c.lui        tp, 7
                  or           s1, s10, s7
                  div          gp, s10, s6
                  addi         a5, s8, 512
                  c.addi16sp   sp, -16
                  c.sub        a0, s1
                  c.addi16sp   sp, -16
                  c.and        s0, a4
                  auipc        s3, 826232
                  srl          gp, t2, a0
                  nop
                  andi         s7, s5, -677
                  sll          t0, zero, ra
                  remu         s3, s1, zero
                  c.sub        a4, s1
                  c.or         a4, a4
                  divu         tp, s0, s8
                  c.lui        s5, 26
                  c.andi       s0, 9
                  andi         a5, ra, -409
                  sra          tp, a3, a2
                  lui          tp, 445494
                  xori         tp, s1, -369
                  c.mv         s4, a6
                  lui          ra, 147001
                  c.li         s5, 0
                  xori         s11, s11, -879
                  c.nop
                  sll          t3, s7, t0
                  sra          tp, sp, gp
                  mulh         tp, s10, s5
                  c.slli       a0, 2
                  srai         s3, a7, 20
                  xori         s10, zero, 986
                  addi         s5, zero, 327
                  c.addi16sp   sp, -16
                  slti         sp, t4, -1913
                  sub          s0, s5, s10
                  c.nop
                  slli         s5, t4, 9
                  lui          s9, 532637
                  rem          t3, gp, a4
                  sub          s10, ra, a2
                  c.addi       a7, -1
                  c.xor        a5, a1
                  addi         s0, s4, -1265
                  c.srai       s1, 20
                  mulhu        a5, t4, s8
                  divu         s0, a4, a0
                  c.mv         s0, a7
                  srl          a7, a1, a2
                  c.addi4spn   a4, sp, 176
                  xor          t0, s3, s0
                  c.srai       a0, 23
                  mulhu        s5, a1, t2
                  c.andi       a4, -1
                  c.addi       t3, 24
                  div          s0, ra, s3
                  xori         gp, a4, 433
                  c.add        s10, s10
                  mul          a6, t1, zero
                  addi         t2, s7, 1296
                  mul          s6, sp, a0
                  c.srli       s0, 12
                  mulhu        gp, sp, s7
                  slt          t2, s7, s8
                  c.slli       s4, 2
                  and          a4, s8, s1
                  xori         a4, zero, -1445
                  sltiu        t3, a3, 1089
                  divu         sp, t3, s8
                  c.mv         t2, a6
                  srai         tp, a4, 19
                  mulhsu       s5, s0, s8
                  div          a0, ra, s3
                  sltiu        t0, s11, -1007
                  slli         s0, a4, 31
                  c.srai       a0, 13
                  srl          s1, a6, s11
                  nop
                  srli         s4, t1, 15
                  srli         s5, t2, 4
                  andi         a7, s0, -1426
                  mulhsu       s0, a7, s0
                  c.addi4spn   a0, sp, 608
                  mul          s10, a5, a0
                  sub          t3, tp, a2
                  c.andi       a1, -1
                  xori         a0, t0, -496
                  remu         t2, gp, s7
                  slt          s5, s3, t5
                  c.slli       t4, 28
                  div          t0, gp, t3
                  c.li         s2, -1
                  div          s3, s5, t4
                  divu         ra, s1, t1
                  lui          s7, 831959
                  xori         t2, t4, -1168
                  c.addi       s5, -1
                  auipc        t1, 321964
                  mulhsu       t3, s0, s6
                  rem          s11, a0, gp
                  sub          s4, s9, t2
                  srai         s0, a7, 9
                  slli         s6, s8, 15
                  c.or         s0, a1
                  c.xor        s0, a5
                  mulhsu       s0, t3, a0
                  xor          a4, a4, s9
                  mul          s10, s10, a5
                  nop
                  slti         a1, t6, 235
                  add          s3, a0, s0
                  mulhsu       a7, t0, s0
                  c.or         a5, a3
                  c.mv         a6, t5
                  divu         s0, s6, t5
                  xori         s3, a6, -1622
                  and          a4, t4, a0
                  c.li         t1, 3
                  andi         t0, t4, 432
                  c.addi4spn   s0, sp, 688
                  andi         zero, gp, 143
                  srli         s4, s0, 6
                  rem          tp, t6, s5
                  c.addi4spn   s0, sp, 112
                  xori         a0, s5, 615
                  mulh         a4, a4, s6
                  c.addi4spn   s1, sp, 1008
                  c.addi       a0, 20
                  xor          s0, s10, s6
                  c.sub        s1, a3
                  add          s1, a6, s11
                  remu         a6, tp, s5
                  c.srai       s0, 25
                  mulhsu       sp, a4, s5
                  mulh         a0, t6, a7
                  sltu         ra, s7, s4
                  divu         t0, s0, zero
                  div          a1, s6, s9
                  c.add        s0, s9
                  srl          s1, t4, t3
                  c.sub        s0, s1
                  c.xor        a5, a0
                  xor          zero, t2, s8
                  andi         a4, s7, 618
                  c.andi       a4, -1
                  c.srli       s0, 3
                  c.addi4spn   a4, sp, 208
                  srli         t0, tp, 27
                  and          zero, a4, t1
                  or           s5, s3, gp
                  c.nop
                  nop
                  sltu         s10, a5, a7
                  srli         s6, ra, 8
                  c.and        a5, s0
                  c.xor        a4, a4
                  lui          a4, 642750
                  div          a6, t4, t5
                  sltiu        s5, t0, 1672
                  remu         a0, a0, t1
                  c.addi       s6, -1
                  rem          s9, s4, s11
                  mulhu        t3, t6, s2
                  nop
                  mulh         a6, t3, t4
                  c.addi16sp   sp, 224
                  mulhu        zero, s11, a1
                  ori          s10, t1, 1599
                  c.nop
                  ori          gp, s5, -136
                  c.li         gp, -1
                  sll          s0, t2, t4
                  andi         zero, t6, 775
                  sra          s6, a7, t3
                  c.add        s9, s7
                  xor          s0, t0, s2
                  sra          a1, s1, s2
                  div          s5, a4, a3
                  mulhu        t2, s5, s3
                  andi         t1, s0, 1022
                  c.lui        gp, 31
                  auipc        t6, 382652
                  c.sub        a4, a1
                  c.lui        s5, 5
                  addi         t1, a1, -1146
                  c.srli       a0, 22
                  remu         a4, t6, s0
                  c.addi4spn   s0, sp, 592
                  c.xor        a5, a2
                  c.li         a1, 7
                  li           a0, 0x9edbd755 #start riscv_int_numeric_corner_stream_10
                  li           s8, 0xffffffff
                  li           s11, 0xffffffff
                  li           gp, 0x6218cc45
                  li           t0, 0x0
                  li           s7, 0x5428b5ec
                  li           a7, 0xffffffff
                  li           s2, 0xffffffff
                  li           s5, 0xffffffff
                  li           sp, 0x80000000
                  lui          a7, 290634
                  remu         t0, a7, a0
                  nop
                  divu         s8, s2, s7
                  mulhu        s2, sp, s5
                  auipc        sp, 1025697
                  sub          a7, sp, a7
                  addi         s2, gp, -792
                  mulh         s11, s11, s8
                  lui          s5, 921959
                  rem          s11, t0, s11
                  mulhsu       gp, s11, t0
                  mul          s5, s11, s11
                  lui          s8, 876765
                  divu         t0, a0, sp
                  remu         a0, a7, a0
                  mulhsu       a0, s5, t0
                  divu         s2, a7, t0 #end riscv_int_numeric_corner_stream_10
                  c.nop
                  c.srli       a0, 14
                  c.nop
                  or           a5, t0, s4
                  c.nop
                  sll          a5, a3, a2
                  c.sub        s1, a2
                  divu         t1, s0, a2
                  remu         s8, tp, s3
                  sra          s4, t1, a1
                  xor          s3, s7, t5
                  srli         s2, a5, 13
                  c.addi16sp   sp, -16
                  srl          t0, s1, s9
                  mulhsu       s0, t6, s1
                  srai         s6, a3, 2
                  c.sub        a0, s1
                  divu         t6, ra, a7
                  mulh         s3, s7, a1
                  c.addi16sp   sp, -16
                  c.nop
                  sll          a4, a0, t2
                  c.andi       a0, -1
                  mul          s4, t6, s10
                  xori         s7, t1, -1282
                  c.srai       a4, 15
                  c.andi       a0, 10
                  rem          a0, a2, tp
                  add          t3, t2, t2
                  ori          gp, t1, -2028
                  c.addi16sp   sp, 112
                  sll          s1, t2, zero
                  div          t2, s6, s5
                  c.addi16sp   sp, 112
                  lui          s7, 562092
                  add          s3, s4, s10
                  xor          s10, s5, a6
                  c.addi       s6, -1
                  srl          s4, zero, a4
                  ori          gp, s6, -1658
                  srai         t0, s0, 22
                  sra          a7, s0, gp
                  c.li         s6, -1
                  auipc        t4, 601548
                  c.srli       a1, 27
                  c.slli       t2, 20
                  sll          s0, s2, s10
                  mulhu        s10, s7, t3
                  c.and        a0, a2
                  mulh         s2, a7, zero
                  div          s9, s10, s0
                  sub          s7, a0, s11
                  c.add        t6, a1
                  slti         a0, s5, 956
                  c.nop
                  c.addi4spn   s0, sp, 784
                  srl          a0, tp, a1
                  c.nop
                  c.add        t2, s2
                  c.srai       a1, 24
                  c.addi       a7, 20
                  c.xor        a5, a2
                  srl          a5, s1, s3
                  c.lui        ra, 14
                  mulhu        sp, a3, sp
                  sub          t4, sp, s6
                  sub          a4, t4, s4
                  c.slli       s11, 10
                  sra          a4, s2, a4
                  sub          a1, a1, s8
                  mulhu        a7, tp, s10
                  slt          gp, sp, t4
                  c.li         a1, -1
                  c.nop
                  c.li         ra, 5
                  mul          gp, t0, s6
                  sltu         s10, a4, a0
                  c.mv         s8, ra
                  mulh         t4, a6, s10
                  auipc        gp, 105031
                  add          s8, s9, a5
                  remu         s0, s3, a7
                  sub          a0, s8, s8
                  sltiu        t4, t0, -1678
                  divu         s5, t2, a5
                  slt          s3, s5, a2
                  c.mv         s1, t6
                  sltu         s6, s7, a4
                  srli         a4, a3, 2
                  c.or         a0, a3
                  mulh         t3, s3, s1
                  c.addi4spn   a4, sp, 560
                  slti         s0, s8, -1597
                  c.mv         t4, s3
                  c.slli       s7, 31
                  c.srai       s0, 15
                  rem          s4, sp, a2
                  mul          s6, s4, t5
                  auipc        t2, 103618
                  mulhsu       s2, s7, t6
                  srli         s10, t5, 2
                  c.addi16sp   sp, -16
                  c.addi4spn   s1, sp, 560
                  c.addi       gp, -1
                  rem          t6, s3, s9
                  or           s0, s9, s11
                  sltu         s4, sp, s3
                  mulhu        tp, s9, t0
                  c.srli       s0, 2
                  srli         s9, sp, 28
                  c.lui        s5, 17
                  slt          a6, zero, s4
                  sll          a4, gp, t0
                  mulhsu       s6, s0, a0
                  c.slli       s8, 20
                  div          t3, s1, a6
                  sltiu        a1, zero, -1905
                  c.sub        a5, a1
                  ori          a4, s1, 1047
                  c.andi       s0, -1
                  or           s1, t6, t5
                  rem          a4, s6, s3
                  lui          zero, 921485
                  sltiu        t1, s11, -1541
                  mulhsu       a6, s11, s11
                  c.and        s1, a1
                  div          a4, s10, t6
                  c.srli       a4, 18
                  slti         zero, a0, -134
                  c.slli       s2, 21
                  c.lui        t1, 26
                  mulhsu       s5, s11, s4
                  c.addi4spn   s0, sp, 480
                  div          t2, zero, gp
                  c.xor        a4, a0
                  ori          a6, s8, -1735
                  mulhsu       a6, sp, a5
                  mulhsu       zero, s9, t5
                  xori         s5, s9, 1865
                  c.mv         t1, s8
                  slti         a0, a7, 1137
                  sll          s6, a2, s10
                  lui          a1, 182636
                  div          t3, t1, zero
                  c.srai       s0, 21
                  srli         a4, t1, 25
                  mulhu        t2, s6, t4
                  nop
                  c.xor        a0, a2
                  slt          a4, a3, a7
                  add          tp, s3, s10
                  slli         s5, s9, 1
                  xori         s7, s11, -1833
                  sra          s1, a2, t0
                  c.srli       a4, 11
                  sltiu        a5, t5, 973
                  sra          a6, gp, a6
                  and          t2, s1, tp
                  mulhu        s4, s5, s3
                  lui          t0, 380167
                  ori          ra, a2, -1981
                  c.andi       a0, -1
                  srli         ra, a7, 7
                  add          t2, s4, s6
                  rem          gp, s6, s1
                  c.lui        t3, 26
                  sub          a1, a2, s1
                  c.nop
                  c.xor        s0, a0
                  mul          s3, s1, t0
                  addi         a1, gp, 1664
                  mulhu        s1, sp, s8
                  sltiu        a5, a3, -334
                  or           gp, gp, a4
                  mulhu        a5, s6, s4
                  andi         a4, sp, 1609
                  slt          tp, zero, a7
                  c.and        a5, a0
                  c.addi4spn   s0, sp, 912
                  ori          t0, a4, 1695
                  ori          tp, a5, -754
                  slti         s0, a3, -1143
                  c.srli       a4, 28
                  nop
                  c.srli       s1, 19
                  remu         s1, gp, t5
                  and          s4, s3, s0
                  c.srli       s1, 9
                  c.mv         ra, t1
                  ori          s8, s2, 436
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 528
                  add          s5, s10, a1
                  xor          s5, t5, zero
                  div          s0, s2, ra
                  xor          a5, a2, sp
                  c.addi       t6, -1
                  c.addi16sp   sp, -16
                  srl          t6, a7, a3
                  mulh         t4, gp, s9
                  c.li         s7, -1
                  c.sub        a5, s0
                  c.andi       a1, -1
                  srai         s9, t3, 3
                  c.srli       a4, 17
                  mulhu        t4, s8, s11
                  mulhsu       t4, t6, a0
                  rem          s6, s3, t6
                  rem          s5, s6, t6
                  slt          s7, s5, s2
                  c.srai       a4, 25
                  rem          t0, s6, s10
                  and          s0, s6, s1
                  sll          gp, a2, s2
                  c.addi       tp, -1
                  div          s0, a3, t1
                  remu         s8, s7, gp
                  lui          s8, 926156
                  c.addi       s6, -1
                  addi         s5, s5, 1093
                  xor          a1, s8, t2
                  addi         s0, t0, 640
                  mulh         s6, s11, s7
                  divu         s7, a4, s8
                  c.addi16sp   sp, 224
                  slti         s10, zero, -1199
                  or           t3, t3, s9
                  c.slli       a6, 19
                  c.srai       a5, 21
                  c.addi16sp   sp, 432
                  sltiu        t2, a3, -1967
                  c.mv         t0, ra
                  c.slli       s1, 3
                  srai         s5, t6, 1
                  mulhsu       t3, t5, s5
                  c.slli       a6, 13
                  ori          t2, a5, 160
                  mulhsu       t0, a6, a0
                  add          ra, t0, a6
                  div          s9, t0, a2
                  c.slli       a5, 18
                  c.add        ra, t2
                  addi         t4, s4, 1951
                  c.or         a1, a4
                  addi         t3, ra, 292
                  andi         t0, s10, -454
                  srl          t4, a6, t2
                  c.or         a4, a4
                  add          tp, a6, a1
                  sltiu        ra, tp, -1297
                  addi         a5, a2, -233
                  sra          t3, ra, s6
                  c.mv         t3, s10
                  lui          tp, 422410
                  sll          t3, s5, a5
                  c.andi       a1, 7
                  c.srai       a4, 4
                  andi         zero, a0, 896
                  mul          a7, s10, s11
                  divu         a5, a6, s9
                  c.lui        s7, 24
                  c.li         s11, 2
                  slt          s7, ra, s10
                  lui          s4, 327426
                  divu         sp, s0, s8
                  c.addi16sp   sp, 448
                  mulhu        s0, t3, gp
                  mulhu        s11, s8, t2
                  c.slli       a4, 4
                  mulhu        s1, s11, zero
                  srl          t3, s10, t2
                  c.and        a0, a1
                  c.srai       a0, 25
                  sltiu        a6, a2, -805
                  and          a4, s6, s9
                  slt          a5, t4, sp
                  slti         a5, t4, -207
                  srli         t0, s8, 29
                  slti         a4, s3, 60
                  srli         ra, t4, 19
                  slt          s7, a4, a5
                  sub          t3, t5, t1
                  c.lui        a5, 14
                  xori         a4, s6, 221
                  c.sub        a4, a2
                  c.add        s1, s0
                  slt          a7, t6, tp
                  c.xor        a1, a0
                  c.srli       a0, 9
                  c.srai       a4, 13
                  divu         s9, s4, s2
                  sll          s6, t4, a2
                  c.or         s1, a4
                  c.slli       a5, 7
                  xori         t1, s2, 1560
                  c.sub        s0, a0
                  c.srai       a1, 3
                  sltu         ra, t0, zero
                  c.srli       a1, 30
                  rem          s5, gp, t0
                  mul          a4, s1, s8
                  divu         s7, a2, t6
                  or           t0, s3, a2
                  divu         s7, s4, s4
                  slli         s3, a1, 2
                  lui          s0, 858998
                  srai         s2, t4, 27
                  sub          a7, t0, s8
                  c.addi4spn   a0, sp, 800
                  ori          s5, s5, 1975
                  c.addi4spn   a1, sp, 736
                  c.srai       s1, 21
                  sra          zero, s5, t4
                  c.xor        a1, a1
                  slti         s1, s9, 382
                  srai         s4, s3, 22
                  divu         s3, gp, s3
                  c.and        a4, a0
                  c.slli       t6, 28
                  srli         s6, s2, 26
                  sra          s5, s4, t3
                  c.addi16sp   sp, 208
                  c.mv         t6, t6
                  addi         a0, s1, 1145
                  c.xor        a0, a1
                  c.and        a4, a4
                  srl          t6, s7, t2
                  nop
                  c.srli       s1, 7
                  c.srai       a5, 17
                  c.addi4spn   a0, sp, 320
                  auipc        a0, 75456
                  sub          s10, a7, s8
                  c.mv         s0, gp
                  add          s4, a0, s6
                  srli         gp, s3, 15
                  c.or         s0, a1
                  mulh         zero, s6, a5
                  mulh         s1, t3, s4
                  sll          s5, gp, a0
                  c.addi       tp, 20
                  mulh         s8, a4, s3
                  xor          zero, t1, t4
                  mulh         s4, s4, t6
                  mulh         t3, a3, a2
                  lui          a1, 988778
                  c.slli       s1, 25
                  mul          a7, a7, s2
                  srl          a6, s8, s5
                  remu         s5, a6, a5
                  c.andi       s1, -1
                  lui          s2, 812312
                  sub          t3, a2, t4
                  c.and        a5, s0
                  c.add        s0, s0
                  xori         s6, t5, -689
                  c.slli       t3, 30
                  c.or         a0, a4
                  c.addi4spn   s0, sp, 448
                  c.lui        tp, 3
                  add          t0, s11, a6
                  sltiu        s2, s2, -338
                  srai         t1, t0, 3
                  c.nop
                  divu         s6, tp, zero
                  mulhu        s6, sp, s5
                  nop
                  slt          tp, s3, a0
                  remu         s10, sp, t3
                  xor          a6, t1, s9
                  sub          s2, s3, s1
                  c.srli       a4, 19
                  addi         a1, a5, -1071
                  auipc        s3, 131443
                  srli         a4, s5, 2
                  c.lui        s2, 31
                  nop
                  slti         s2, a3, -1850
                  sll          s0, a5, sp
                  and          tp, s11, t5
                  c.or         a0, a2
                  c.slli       s1, 13
                  c.and        s1, a1
                  c.add        t2, a1
                  mulhsu       t3, a3, gp
                  remu         t0, s5, s11
                  mulhsu       a6, t1, s4
                  or           a4, s10, s2
                  sub          a5, a2, a0
                  slt          gp, a7, tp
                  or           sp, t2, s11
                  c.addi16sp   sp, -16
                  rem          s5, a1, s11
                  srl          gp, a5, a1
                  srai         t3, s10, 28
                  c.or         a4, a5
                  remu         s0, t5, s11
                  mulhsu       s1, a3, a2
                  c.mv         a7, t5
                  sltiu        s1, t1, -1175
                  srl          t2, a2, t5
                  mul          a5, gp, s7
                  c.li         s7, 27
                  c.or         s1, a4
                  andi         s6, t6, -794
                  nop
                  srl          t1, t3, t5
                  c.nop
                  ori          t3, s8, -1235
                  c.addi16sp   sp, -16
                  c.or         a5, s0
                  c.or         s0, a3
                  mulhu        s10, t4, s5
                  slli         s3, t0, 22
                  mulh         s3, t3, tp
                  sltu         sp, s11, t3
                  c.add        a6, s11
                  auipc        a5, 486395
                  c.or         a4, s1
                  c.addi       a6, -1
                  mulhsu       t2, a5, s2
                  c.andi       s1, -1
                  c.srli       a1, 29
                  add          s4, s11, s2
                  ori          t3, s6, 1668
                  rem          s7, a2, s2
                  div          t2, s0, tp
                  srli         s5, s7, 3
                  div          zero, s4, s10
                  div          t0, s2, t5
                  c.or         a5, a5
                  sltiu        s11, tp, -1919
                  remu         s3, a2, s2
                  mulhu        t3, t6, s6
                  srai         a1, gp, 30
                  nop
                  c.and        a5, a4
                  mulhsu       s4, a6, a0
                  srl          s5, ra, sp
                  sub          a5, s0, a5
                  sub          s4, t5, s4
                  c.nop
                  c.add        a6, s2
                  srli         a6, t3, 12
                  c.addi       t3, 24
                  c.srai       s0, 3
                  slli         s9, s4, 22
                  c.srli       a5, 7
                  slt          t0, s5, s1
                  div          gp, s4, s7
                  mulhsu       a0, t5, sp
                  rem          t1, t0, s6
                  c.addi4spn   a1, sp, 880
                  and          a0, s1, gp
                  c.slli       a1, 24
                  c.li         s4, -1
                  srai         sp, gp, 3
                  or           s5, a2, s0
                  ori          a0, t6, 108
                  div          s7, a5, s4
                  c.addi       a1, 17
                  c.add        gp, a0
                  c.sub        a0, s1
                  div          sp, a7, sp
                  slli         a0, t3, 15
                  and          a0, t1, s3
                  c.xor        s1, s0
                  sra          t4, t5, t5
                  div          s10, a2, gp
                  c.or         s1, a2
                  c.nop
                  slli         s1, s4, 30
                  c.xor        a5, a0
                  xor          tp, sp, a3
                  srli         a6, s0, 20
                  c.or         s1, s1
                  remu         s11, a4, t3
                  c.srai       a0, 4
                  c.add        s5, a2
                  divu         t3, a7, a7
                  c.mv         gp, s5
                  sltiu        s6, a1, 147
                  add          s9, t5, a2
                  or           a4, s0, gp
                  c.addi4spn   a1, sp, 800
                  slli         s7, t1, 6
                  srli         s7, t5, 3
                  c.srli       a0, 24
                  c.addi4spn   s0, sp, 432
                  c.xor        s0, a0
                  addi         s8, a5, 899
                  remu         a4, s9, t6
                  div          s4, ra, a2
                  div          t0, s6, s2
                  nop
                  sll          a1, t1, s6
                  c.addi       s10, -1
                  c.or         s0, a3
                  auipc        zero, 528723
                  c.addi       s7, -1
                  xor          zero, t0, t4
                  srai         a4, ra, 16
                  c.or         a5, a5
                  lui          tp, 545880
                  lui          t4, 277505
                  mul          t2, t2, a6
                  mulhsu       ra, tp, a1
                  sra          t3, t6, s7
                  andi         s9, s11, -1324
                  c.add        s3, s11
                  sltu         s6, gp, t0
                  c.addi16sp   sp, -16
                  c.lui        s0, 3
                  srl          s6, s3, a0
                  c.srai       a0, 5
                  mul          a6, s0, t3
                  sltu         t3, s2, s2
                  auipc        a4, 394914
                  c.srli       a4, 14
                  c.lui        t3, 27
                  lui          s4, 788761
                  mulhu        t0, a1, a0
                  c.and        s1, a5
                  xori         s2, s8, 1225
                  slt          a4, s11, s2
                  sub          s3, sp, a4
                  mulhu        a4, s7, s8
                  srli         s5, a3, 24
                  c.addi4spn   a0, sp, 576
                  mulhu        t2, gp, a3
                  c.addi       a6, -1
                  mulhu        t2, t4, t3
                  lui          t0, 272953
                  c.andi       a1, -1
                  srl          s5, a1, s5
                  c.srli       s0, 10
                  add          tp, s7, t6
                  c.and        s0, s0
                  xori         gp, a7, 774
                  c.li         sp, 6
                  srl          ra, s4, s0
                  c.add        s2, s7
                  c.sub        a5, a4
                  c.addi16sp   sp, -16
                  nop
                  c.add        s4, a0
                  or           s0, a1, s7
                  remu         a1, t0, s1
                  mulh         s4, sp, t4
                  sll          s6, s2, a4
                  div          t3, t2, s9
                  mulhsu       ra, a3, t6
                  nop
                  c.slli       s2, 11
                  sub          sp, s0, s11
                  xori         a6, a0, 118
                  mul          t0, t4, zero
                  srai         a7, a3, 5
                  c.slli       s7, 3
                  xor          s5, t3, gp
                  sltiu        s11, t5, -450
                  c.nop
                  div          t0, tp, t0
                  c.slli       t4, 6
                  or           a1, t6, a3
                  c.and        a5, a1
                  addi         zero, s1, -497
                  sltiu        s4, s4, -1843
                  sltiu        s10, t3, 1594
                  c.and        s0, a0
                  xori         s0, s8, 487
                  c.srai       s0, 10
                  c.lui        s0, 2
                  nop
                  sra          a4, s2, s2
                  c.andi       s0, -1
                  or           t4, s0, s1
                  slt          zero, s10, s10
                  sll          t3, t4, a7
                  add          t0, s2, t2
                  c.xor        s1, a4
                  and          a5, t0, a4
                  auipc        a5, 861992
                  or           a0, a1, s1
                  srli         tp, s2, 12
                  c.or         a5, a3
                  xori         a5, s1, 1446
                  add          s8, s11, s11
                  srli         a4, s6, 14
                  xor          t0, t1, s2
                  sltiu        s4, a5, 288
                  srl          a4, t4, a1
                  mul          t6, a6, a1
                  c.addi4spn   s1, sp, 336
                  c.lui        s8, 23
                  slt          s1, zero, gp
                  div          tp, t0, s9
                  c.nop
                  c.sub        a5, a0
                  c.lui        s10, 27
                  addi         s3, tp, 1842
                  c.andi       a0, 19
                  andi         t0, s0, 1736
                  slt          s7, a6, t4
                  c.sub        s1, a4
                  slli         a4, s5, 6
                  c.and        a4, a4
                  c.srli       a4, 9
                  c.lui        t4, 6
                  ori          a5, t0, -992
                  srl          s3, s9, t6
                  nop
                  remu         a6, s1, s9
                  remu         t2, a4, s9
                  nop
                  sltu         s4, t2, t4
                  c.mv         a6, s3
                  auipc        gp, 514340
                  srl          tp, s11, a1
                  c.slli       t6, 21
                  or           s4, a1, s11
                  xori         t0, s10, -630
                  c.andi       s1, -1
                  lui          s1, 618979
                  or           a5, ra, a6
                  sra          s9, s5, s9
                  sltu         a6, t3, s4
                  divu         s11, a6, a2
                  ori          ra, t4, -2017
                  sub          t6, s7, ra
                  c.and        a0, a2
                  slti         s9, zero, 1704
                  c.slli       t4, 20
                  srl          t0, s9, s8
                  c.or         s1, s0
                  srl          t6, t3, t4
                  c.or         a4, s1
                  div          s5, ra, s0
                  mulhsu       a7, s8, s2
                  c.li         s2, -1
                  and          s9, s0, a1
                  auipc        t2, 940604
                  sra          t0, s9, a1
                  c.or         s0, a4
                  srai         t6, s1, 14
                  c.or         a1, s1
                  and          s3, s4, a1
                  sltu         a5, tp, a7
                  mulhu        gp, s3, s3
                  c.or         a1, a5
                  sll          zero, s10, t2
                  divu         s7, s5, s8
                  andi         t0, a1, 1260
                  mulhu        a5, t3, t0
                  slt          s10, s2, t1
                  c.add        s7, s10
                  c.and        a5, a2
                  add          t2, a2, a7
                  andi         zero, s8, -1789
                  c.or         a4, a4
                  c.slli       s8, 2
                  c.add        s8, t0
                  add          s10, zero, t0
                  c.add        s9, a3
                  c.andi       a4, -1
                  c.srai       a4, 24
                  andi         s2, s9, 742
                  c.andi       a5, 24
                  nop
                  div          s8, s2, s1
                  c.xor        s1, a5
                  c.lui        t1, 20
                  srl          t1, a5, s5
                  c.slli       s0, 17
                  c.sub        a5, a5
                  or           a0, a7, s0
                  c.slli       a7, 18
                  rem          s9, a1, a7
                  mulhu        zero, s7, s7
                  c.add        a6, s4
                  c.nop
                  c.li         s2, -1
                  sltiu        s4, t4, -1791
                  srl          a0, a7, s10
                  lui          t6, 595804
                  c.addi16sp   sp, 32
                  nop
                  mulh         s4, a0, ra
                  c.or         s1, a4
                  lui          s1, 138304
                  srl          s0, s10, t5
                  auipc        a1, 446536
                  srai         t2, a2, 31
                  mulh         t6, s2, t1
                  add          t3, t1, s6
                  nop
                  nop
                  div          gp, a6, a4
                  and          a1, t6, s2
                  c.li         a0, -1
                  lui          s5, 885167
                  sra          s2, s7, s3
                  c.li         t0, 18
                  srl          a1, s1, s2
                  c.add        a4, t2
                  c.andi       a4, 2
                  c.srai       a1, 6
                  c.addi4spn   a1, sp, 16
                  add          ra, s5, a4
                  rem          s9, a7, s3
                  srli         s0, t6, 16
                  xor          t6, sp, s0
                  c.or         s1, a2
                  c.xor        a4, a4
                  c.add        s0, t1
                  mul          a5, a3, a6
                  c.or         a0, a2
                  auipc        a5, 904761
                  c.xor        a0, a4
                  c.li         a0, -1
                  mulhu        zero, s4, t0
                  c.lui        s10, 24
                  remu         t3, s10, a3
                  sltiu        a1, t4, 186
                  mulhsu       zero, gp, s7
                  xor          s5, t4, s6
                  c.xor        a0, a0
                  mul          s9, s10, a2
                  and          sp, s2, s9
                  sub          a7, t0, t3
                  srai         s9, zero, 31
                  xori         t1, s4, 524
                  sra          s1, t2, s5
                  c.or         a1, a2
                  c.mv         s7, t2
                  auipc        s11, 750846
                  lui          s1, 167417
                  c.or         s1, a5
                  c.addi       s10, -1
                  sra          t4, gp, s5
                  li           s10, 0x870cec56 #start riscv_int_numeric_corner_stream_39
                  li           s7, 0x0
                  li           ra, 0x80000000
                  li           tp, 0xffffffff
                  li           a6, 0x3c8e34a1
                  li           s2, 0x0
                  li           s5, 0x23b1a677
                  li           t2, 0x62b4befb
                  li           sp, 0x0
                  li           t1, 0x55a8fa1b
                  nop
                  rem          sp, tp, tp
                  mulhsu       ra, t2, a6
                  auipc        sp, 796979
                  mulhu        s10, s5, s2
                  mulhsu       ra, a6, sp
                  sub          a6, s5, ra
                  nop
                  remu         a6, ra, sp
                  remu         ra, s10, ra
                  remu         sp, tp, t1
                  mulhsu       s10, t2, s7
                  auipc        s10, 986741
                  auipc        s10, 750945
                  sub          a6, a6, sp
                  remu         t1, t2, ra
                  add          a6, ra, a6
                  rem          s7, ra, t2
                  remu         t2, t1, s7
                  mulhsu       s7, tp, s5
                  mulh         a6, sp, ra #end riscv_int_numeric_corner_stream_39
                  c.addi4spn   a1, sp, 912
                  c.and        s0, a2
                  c.srai       s0, 19
                  c.or         a1, a0
                  div          ra, a3, s8
                  divu         s10, sp, s5
                  c.andi       s0, -1
                  div          a0, t5, s3
                  ori          t0, s9, 323
                  c.addi16sp   sp, -16
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           s6, 0x0
                  li           ra, 0x80000000
                  li           t6, 0x80000000
                  li           a6, 0xa03dc6a6
                  li           s2, 0x263c9527
                  li           tp, 0x27f5f15a
                  li           s9, 0x80000000
                  li           a5, 0x0
                  li           s5, 0x0
                  sub          s8, s8, s6
                  add          s6, a5, t6
                  remu         s2, ra, ra
                  nop
                  lui          s5, 871930
                  auipc        s5, 286226
                  mul          a6, s6, ra
                  sub          s8, s2, tp
                  divu         s9, t6, ra
                  div          s5, a6, s2
                  nop
                  lui          t6, 548174
                  remu         s9, s8, ra
                  remu         s9, a6, tp
                  add          s2, s5, s2 #end riscv_int_numeric_corner_stream_37
                  rem          s0, t4, sp
                  c.xor        s0, s1
                  xor          s3, sp, t4
                  c.nop
                  c.addi16sp   sp, 32
                  lui          sp, 851240
                  slli         t1, a1, 6
                  sltu         a7, s4, t1
                  remu         s1, a4, s4
                  slli         s8, a0, 15
                  c.addi4spn   s0, sp, 160
                  sra          t2, s7, sp
                  auipc        s10, 354224
                  c.and        a0, a1
                  c.and        s0, a3
                  addi         gp, s10, 1410
                  c.srai       a5, 8
                  c.addi16sp   sp, -16
                  srai         s8, s11, 5
                  c.addi4spn   a5, sp, 784
                  xori         t3, a2, -1998
                  sub          t3, a7, s11
                  slti         s10, t5, 1720
                  divu         s11, a6, sp
                  c.nop
                  rem          s7, s5, s3
                  and          a4, a6, a1
                  sltiu        s6, t0, -272
                  c.andi       s1, 5
                  andi         a6, s9, 185
                  slt          a5, s5, t2
                  srli         a1, s4, 20
                  c.or         a5, a1
                  sub          a7, t6, t1
                  or           a4, gp, gp
                  c.srli       a4, 17
                  srl          t0, t0, zero
                  xori         s11, a3, -1202
                  c.lui        t3, 26
                  or           t0, a3, s0
                  slti         t4, a5, -1010
                  divu         s10, zero, ra
                  xori         sp, tp, 1183
                  sub          t3, sp, s3
                  ori          gp, s7, 996
                  c.andi       a5, 14
                  ori          s5, t2, -1071
                  sll          gp, zero, a7
                  sra          t6, s7, s8
                  srli         ra, s2, 1
                  srli         s4, gp, 5
                  div          s7, t6, s5
                  and          ra, s1, s8
                  sub          sp, a7, s1
                  add          t1, gp, s1
                  c.addi4spn   a4, sp, 960
                  c.xor        a5, a3
                  c.xor        a5, a2
                  c.lui        ra, 6
                  sltu         a1, s9, s9
                  c.addi16sp   sp, 272
                  and          s6, s11, s5
                  lui          s1, 1026603
                  nop
                  c.andi       a5, 30
                  c.slli       a7, 25
                  or           gp, s7, s6
                  sra          a1, a7, a6
                  srli         t3, t1, 30
                  or           tp, ra, zero
                  c.addi16sp   sp, 176
                  or           s11, a2, a0
                  rem          s6, s11, s1
                  c.add        t4, s10
                  c.add        a0, a2
                  c.srai       a4, 26
                  c.sub        a5, s1
                  sub          s0, s2, a1
                  srai         s6, a1, 6
                  mulhu        s3, s1, s1
                  divu         t3, a7, t5
                  c.or         a4, a3
                  c.addi       s8, -1
                  ori          a7, a5, -1144
                  srl          s10, zero, a5
                  srai         s7, t4, 12
                  c.srai       a0, 27
                  nop
                  mulhsu       s1, s6, s8
                  c.slli       a0, 5
                  nop
                  sra          a5, sp, t1
                  andi         ra, s4, -885
                  addi         t2, zero, -22
                  addi         t0, tp, 962
                  mulh         s10, s7, s5
                  sltiu        zero, gp, 785
                  auipc        s1, 665218
                  xori         s1, t2, 1924
                  add          t1, s10, s2
                  c.addi       ra, -1
                  div          t2, a5, s6
                  c.slli       t1, 31
                  auipc        t6, 376669
                  xor          t2, t6, s3
                  remu         a5, t6, s7
                  or           t4, a4, t3
                  srai         gp, t5, 3
                  c.sub        a4, a1
                  auipc        s6, 75162
                  c.sub        a5, a5
                  c.addi4spn   a5, sp, 672
                  sltiu        s3, s3, 438
                  andi         s1, s1, -37
                  rem          t4, a5, a0
                  srl          s11, a6, s10
                  sll          t2, t2, ra
                  srai         t2, s7, 27
                  sltu         s2, t5, s7
                  andi         t3, zero, 1883
                  div          a0, sp, a4
                  c.addi       s6, 28
                  c.mv         a1, t6
                  sltiu        t4, a4, -343
                  c.add        t4, a7
                  andi         sp, sp, -84
                  sub          a0, t4, tp
                  add          s7, s4, s6
                  andi         s0, s7, 499
                  c.addi4spn   s1, sp, 976
                  slli         s4, t5, 18
                  andi         t4, a6, 1489
                  c.or         a4, a4
                  c.srai       a4, 9
                  remu         a4, a6, a5
                  c.srai       a1, 9
                  c.and        s0, s0
                  c.add        t4, a2
                  divu         s2, s5, s3
                  sub          s9, a5, sp
                  c.srai       s1, 2
                  c.sub        a5, s1
                  rem          s2, s5, t3
                  slti         t0, a0, 1330
                  mulhu        t3, a0, s6
                  c.sub        s0, a5
                  nop
                  c.add        t0, s1
                  mulhsu       s6, t1, tp
                  div          s8, s3, t1
                  slti         a6, s9, -1087
                  rem          s0, a5, s8
                  c.addi4spn   s0, sp, 720
                  xor          t0, zero, s5
                  auipc        ra, 972722
                  srli         s5, t4, 10
                  nop
                  c.srai       s1, 10
                  xor          s10, sp, s5
                  rem          t6, s1, s2
                  ori          ra, t0, -827
                  div          t4, s1, tp
                  c.mv         a6, ra
                  c.srli       a1, 30
                  c.addi       s8, 23
                  c.slli       s3, 27
                  sub          s11, s11, tp
                  nop
                  mulhu        t6, a2, t0
                  andi         a5, t6, -132
                  srl          sp, a4, a6
                  lui          s4, 919348
                  nop
                  c.mv         ra, t0
                  sltiu        s9, a4, -13
                  mulhu        t4, zero, a2
                  remu         s2, sp, s3
                  c.xor        s0, a0
                  sra          a5, s4, s6
                  srli         tp, s3, 28
                  and          t3, s8, s0
                  c.xor        a1, a3
                  slt          a4, a2, ra
                  or           s11, s1, a4
                  c.sub        a4, s1
                  c.add        s6, s6
                  or           s6, t6, s6
                  c.and        a1, a1
                  mulhsu       t6, a3, s4
                  div          sp, a1, s8
                  mulhu        t3, t2, a7
                  c.li         tp, 5
                  sub          a6, s11, s6
                  andi         s3, t5, 227
                  lui          a7, 453719
                  c.lui        s2, 28
                  c.slli       s9, 14
                  addi         s0, t2, 1132
                  auipc        s5, 214097
                  lui          s11, 70326
                  c.slli       t2, 27
                  c.slli       t3, 13
                  addi         sp, a0, 1584
                  srli         a1, s9, 30
                  c.andi       s1, 30
                  c.addi4spn   a0, sp, 864
                  ori          a4, sp, -1926
                  slti         a0, a6, -343
                  or           s10, s6, t0
                  c.srai       a4, 2
                  div          a0, t3, t2
                  sub          s0, a4, a3
                  mul          gp, s4, s11
                  ori          ra, t0, -19
                  c.or         a4, a1
                  c.and        a1, a1
                  c.srli       a0, 26
                  and          s11, s3, a7
                  sra          s2, s9, s1
                  srl          s11, a1, a0
                  c.slli       s3, 11
                  c.lui        s7, 23
                  add          s0, s11, a1
                  mulhu        s5, a6, tp
                  ori          s2, a5, 1922
                  c.add        a7, s7
                  xor          s1, a7, gp
                  c.add        t4, ra
                  c.sub        a5, a2
                  andi         tp, zero, 1285
                  andi         s0, a4, 1288
                  sll          s3, a5, s9
                  c.sub        a0, a0
                  addi         t3, a3, 1753
                  div          t0, ra, a5
                  sll          t2, s0, a5
                  c.srai       s0, 3
                  c.addi16sp   sp, -16
                  ori          a6, tp, 780
                  xori         s9, s6, 356
                  c.or         s1, a3
                  c.sub        a0, s0
                  mulh         s8, s3, s4
                  srli         a1, t2, 24
                  c.srai       s0, 11
                  slt          s7, s9, s10
                  addi         s1, a0, -1471
                  c.lui        a0, 31
                  c.and        s1, s1
                  c.nop
                  srli         s7, s2, 11
                  c.srli       a5, 11
                  andi         s10, s8, -1334
                  and          s10, t5, t2
                  c.nop
                  srl          t4, t5, s0
                  add          s9, ra, s5
                  c.sub        a1, a5
                  slt          t0, t4, a2
                  div          s3, a5, t1
                  c.xor        s1, a4
                  c.nop
                  srli         gp, s6, 4
                  c.andi       a4, -1
                  remu         t3, s7, t2
                  sra          s6, s1, gp
                  addi         t4, zero, 1375
                  c.addi16sp   sp, -16
                  mulh         a0, a0, t2
                  mul          t1, a7, s1
                  c.slli       s9, 18
                  auipc        s2, 903142
                  c.srai       s0, 10
                  c.mv         t0, t3
                  c.lui        s0, 29
                  nop
                  c.li         a4, -1
                  sra          s10, a1, s3
                  rem          a4, t3, s1
                  rem          t4, t6, t3
                  c.srli       a0, 27
                  c.mv         s3, s11
                  mulhsu       a6, s8, s3
                  c.addi4spn   a5, sp, 608
                  andi         t1, s4, -1093
                  mul          t3, s1, a4
                  add          t1, a0, a2
                  slt          a5, s6, s3
                  srl          s11, s4, a1
                  c.addi4spn   a1, sp, 352
                  slli         s1, t1, 23
                  rem          t0, t3, a3
                  srli         s10, s1, 27
                  c.add        t0, gp
                  c.srai       a5, 11
                  addi         s0, t5, 89
                  sltu         s7, s9, s2
                  xor          a5, tp, s9
                  nop
                  or           sp, a2, t5
                  auipc        s10, 967766
                  mul          t1, a4, a0
                  c.sub        s1, s0
                  c.slli       s6, 25
                  slli         s1, t6, 24
                  srli         t4, t4, 1
                  mul          s3, tp, s4
                  xori         a7, t6, -53
                  srai         a4, a7, 0
                  mul          s0, s8, tp
                  c.add        gp, a4
                  c.andi       a1, 28
                  c.addi       a4, -1
                  c.andi       a1, 15
                  srai         t3, a1, 8
                  xori         s2, s11, -481
                  c.li         tp, -1
                  c.addi16sp   sp, -16
                  sltu         a4, s2, a6
                  c.addi16sp   sp, 16
                  add          t4, s4, s11
                  c.addi       sp, -1
                  c.sub        s0, a2
                  or           a6, s0, ra
                  remu         ra, s3, gp
                  slti         t2, s1, -675
                  c.and        a1, s1
                  c.nop
                  ori          t2, t6, -1377
                  sra          a4, a2, t4
                  nop
                  slti         zero, s4, -1333
                  c.slli       t6, 14
                  add          s8, zero, a7
                  c.or         a5, a3
                  rem          s6, a7, a7
                  ori          s9, s9, -435
                  sltiu        gp, a0, 1252
                  mul          tp, s10, a1
                  lui          s7, 1040835
                  mul          t6, a1, s2
                  mulhu        t3, t3, sp
                  c.andi       a5, -1
                  andi         s0, s4, -768
                  sra          t1, t2, s10
                  mul          t6, a1, s9
                  srai         s2, sp, 1
                  lui          a5, 507251
                  c.srai       s1, 9
                  sltu         s1, t6, s9
                  srai         s4, t5, 4
                  c.nop
                  or           s8, a7, s9
                  add          s5, a1, s7
                  sll          a4, a3, t4
                  sltiu        s6, t0, -1296
                  andi         sp, a3, 1595
                  addi         s9, s0, 1902
                  c.and        a0, s0
                  mul          a1, s1, t6
                  xor          tp, sp, s8
                  c.xor        a0, a3
                  slli         zero, a3, 28
                  auipc        a4, 348543
                  mulh         t6, s11, s10
                  c.and        a0, s0
                  srl          tp, t0, s6
                  add          a5, s1, t2
                  c.addi4spn   a1, sp, 352
                  c.xor        a5, a2
                  slti         s2, t2, 439
                  mulh         s4, a5, t4
                  lui          a5, 206138
                  xori         t3, gp, -13
                  ori          s2, sp, -110
                  slt          s0, s8, a5
                  divu         s9, a3, a7
                  srai         s1, zero, 15
                  mulh         s4, t0, s8
                  div          a6, s2, t2
                  nop
                  c.slli       s10, 6
                  sltu         s4, s10, s10
                  mulh         t1, gp, t1
                  c.lui        a4, 25
                  c.add        t3, s1
                  lui          a1, 840358
                  sltiu        t0, tp, -1575
                  rem          s1, a1, t2
                  sra          s5, s6, t6
                  c.li         a4, 0
                  srl          s7, tp, a1
                  c.addi16sp   sp, -16
                  c.lui        tp, 8
                  c.srai       a4, 8
                  c.andi       a0, -1
                  c.addi4spn   s0, sp, 128
                  c.srai       a0, 27
                  c.nop
                  sltu         s1, gp, sp
                  c.addi4spn   s0, sp, 896
                  c.mv         s11, a4
                  slti         a6, t6, -763
                  c.srai       a1, 22
                  xori         a1, t1, -120
                  auipc        s1, 860876
                  slti         t3, t0, -2013
                  srli         s0, a5, 0
                  mulhu        t3, gp, s6
                  andi         s7, a4, -954
                  slli         s0, s10, 1
                  c.andi       s1, -1
                  mul          s7, t1, a3
                  c.xor        s1, a5
                  c.sub        a1, a5
                  c.xor        a1, a5
                  c.addi       t0, 22
                  slli         t6, s5, 9
                  mulhsu       zero, t1, s6
                  addi         t2, a0, -74
                  c.addi4spn   a5, sp, 288
                  c.li         gp, -1
                  srl          t4, ra, t5
                  c.sub        a5, s0
                  slli         s0, ra, 4
                  xor          a4, t2, t3
                  c.addi16sp   sp, 144
                  sltu         s11, s9, tp
                  sra          a1, a1, a2
                  srai         s8, t1, 5
                  mulh         s2, s9, t0
                  auipc        s7, 497161
                  xor          s2, t1, a5
                  c.li         s3, 1
                  ori          s1, sp, 1569
                  sll          t6, t5, a3
                  slli         ra, a1, 24
                  c.addi16sp   sp, -16
                  andi         a6, s1, 1715
                  c.srai       s1, 11
                  mulhsu       s0, t3, s6
                  sll          ra, a2, t0
                  c.srli       a1, 30
                  c.andi       s0, 26
                  sub          t1, s3, t4
                  and          ra, s6, s4
                  sll          a1, a4, s11
                  c.add        a0, t6
                  mul          s7, s1, zero
                  slt          s9, s8, a1
                  c.addi       s6, -1
                  c.or         s1, a4
                  c.and        a0, s1
                  c.slli       sp, 30
                  remu         s6, s1, s0
                  auipc        gp, 253723
                  div          zero, a5, a5
                  c.nop
                  c.srli       s1, 14
                  or           s4, s5, t4
                  nop
                  c.nop
                  c.srli       s1, 1
                  c.xor        a0, a1
                  add          t2, a1, s7
                  c.srai       s0, 15
                  nop
                  sra          a7, s5, t1
                  remu         t3, s3, t5
                  sltiu        t3, s6, 571
                  mulhsu       s6, t0, s0
                  mulhsu       t4, a1, a7
                  sra          s7, s7, t1
                  remu         t0, s6, s4
                  c.xor        s0, a3
                  c.andi       a5, 18
                  c.and        a4, s1
                  slli         t4, a0, 7
                  andi         s6, tp, 948
                  remu         a1, a1, s8
                  ori          t1, t3, -547
                  c.li         t0, 11
                  c.srli       s1, 20
                  sub          tp, s0, s8
                  and          s3, a6, tp
                  nop
                  c.addi16sp   sp, 464
                  sll          a6, t2, s3
                  c.addi       s9, -1
                  c.addi       t0, -1
                  or           s10, ra, s11
                  div          a4, s10, t0
                  c.and        a5, s1
                  sub          s7, a0, s4
                  mulh         s1, t5, t5
                  sltu         t1, s8, gp
                  slti         a4, a7, 149
                  mulhu        s1, gp, zero
                  c.srli       s0, 13
                  ori          zero, s2, 1604
                  c.nop
                  c.srli       a1, 9
                  xor          tp, t2, t1
                  mulhu        s10, tp, t1
                  c.andi       s0, 14
                  mulh         s4, a2, a7
                  mulh         s1, a5, a5
                  addi         t3, s2, -1101
                  c.addi       ra, -1
                  rem          gp, zero, s6
                  mulh         s6, s4, s8
                  mulh         s5, s9, a0
                  sub          a5, a6, s7
                  c.srli       a5, 5
                  c.slli       s10, 29
                  mulhu        a7, t3, zero
                  c.add        a4, s10
                  and          s6, t1, s5
                  slti         s2, a1, 1233
                  slt          zero, s1, a3
                  rem          t2, a3, sp
                  nop
                  divu         s10, s8, s9
                  srli         s4, s10, 2
                  nop
                  lui          ra, 805464
                  c.sub        s1, a2
                  sltiu        tp, t0, 1734
                  c.addi       t1, 22
                  c.lui        a6, 1
                  add          tp, a7, a0
                  and          s4, s4, a0
                  addi         s5, gp, 785
                  c.sub        a1, a3
                  c.add        a5, s11
                  c.mv         s1, t2
                  sra          s6, a6, a3
                  c.or         s0, a0
                  c.and        s0, a5
                  mulhu        a7, a0, sp
                  addi         s3, a2, 781
                  nop
                  sltiu        a4, s8, -778
                  mulhu        a0, a0, a7
                  c.lui        t0, 15
                  divu         sp, s7, a4
                  add          t3, a0, a5
                  c.nop
                  slti         s8, zero, -542
                  c.srli       s1, 9
                  slt          sp, s7, s7
                  rem          s9, s7, a2
                  and          s0, t6, tp
                  sltiu        ra, a7, -594
                  c.srai       s1, 24
                  c.nop
                  andi         tp, s1, -679
                  c.or         s1, a5
                  or           sp, a2, gp
                  nop
                  c.xor        a4, a2
                  mulhu        a4, s8, s7
                  sub          a0, s10, s0
                  c.andi       a1, -1
                  sra          s0, a2, a7
                  div          s1, s4, a2
                  c.sub        s0, a2
                  mul          s1, a2, s6
                  slli         t2, s3, 18
                  c.srli       a0, 15
                  xor          ra, s0, s2
                  c.nop
                  or           s10, t6, s7
                  or           s11, s8, zero
                  xor          zero, s7, s3
                  srl          s10, s8, ra
                  sll          zero, a2, zero
                  c.addi16sp   sp, -16
                  rem          tp, a5, s8
                  srli         s11, a4, 20
                  mulh         t0, s5, a4
                  mulhu        s6, s1, zero
                  c.xor        s0, a1
                  c.and        a0, a1
                  c.lui        a7, 22
                  c.srli       a4, 15
                  sltu         tp, t4, a3
                  c.addi       t6, -1
                  slt          sp, s1, a7
                  c.or         a1, a3
                  c.srli       a0, 12
                  c.xor        a1, a3
                  c.addi       ra, 8
                  c.andi       a5, 27
                  mul          s1, s5, s3
                  xori         s9, t3, 1781
                  sub          zero, a4, s11
                  c.srai       a4, 22
                  sltiu        s11, t2, -1991
                  mulhsu       s0, s6, t3
                  sltu         a0, t4, sp
                  srli         a0, s5, 5
                  sub          t3, t1, s9
                  divu         tp, gp, s6
                  c.li         s11, 19
                  sub          s3, s2, tp
                  rem          t2, t3, t3
                  sra          t3, t0, a4
                  srl          s7, s1, a7
                  sltu         ra, zero, a7
                  rem          a6, gp, a4
                  c.xor        a1, a0
                  and          s1, t5, s9
                  sub          t0, a7, tp
                  c.sub        s1, a4
                  nop
                  lui          s1, 940353
                  c.addi4spn   a4, sp, 992
                  slli         s10, tp, 29
                  c.sub        a0, a2
                  remu         t4, s1, t1
                  c.andi       a1, -1
                  c.srli       a4, 11
                  c.mv         s1, s5
                  c.slli       s6, 26
                  add          t3, a4, s5
                  srai         s2, s3, 25
                  or           s9, a7, t5
                  slli         s1, s4, 29
                  sra          s10, ra, t5
                  or           t4, s5, sp
                  divu         ra, s6, s0
                  c.and        s1, a0
                  mul          a5, s5, s7
                  c.andi       a4, 13
                  sltu         s0, s8, a1
                  c.lui        a0, 29
                  add          a4, s1, s9
                  sltiu        s5, s10, 1292
                  mul          t1, a1, a1
                  sltiu        s6, a6, -2013
                  c.addi4spn   s0, sp, 80
                  divu         t3, a2, a0
                  srli         zero, s0, 10
                  mulh         t3, a4, s0
                  sra          s11, t0, a5
                  srli         t0, ra, 18
                  rem          t0, s11, t3
                  remu         s5, gp, s11
                  c.addi       t1, -1
                  mulhsu       s6, t2, sp
                  srli         t3, a5, 28
                  remu         s4, t2, s1
                  c.addi16sp   sp, -16
                  c.lui        t4, 30
                  slti         s9, t2, 392
                  sub          s3, gp, s5
                  rem          zero, gp, s7
                  xori         zero, s0, 35
                  sltu         s4, s7, a4
                  c.add        t3, a2
                  c.srli       a1, 16
                  sra          ra, a6, s1
                  c.and        a5, a3
                  sll          a7, zero, sp
                  andi         s8, gp, 676
                  and          tp, s11, t1
                  c.mv         s5, t2
                  c.nop
                  nop
                  mulh         s8, t5, sp
                  c.and        s1, a1
                  c.or         s1, s0
                  add          s8, ra, s9
                  c.srai       a4, 12
                  slti         s6, s0, -335
                  auipc        t6, 564185
                  and          t0, t2, s1
                  c.add        s3, s5
                  c.xor        a1, s1
                  xori         s0, t4, -220
                  c.addi       s4, -1
                  mul          ra, a1, s3
                  c.andi       s0, -1
                  andi         a7, t2, -300
                  slti         t4, s1, -95
                  c.lui        a0, 25
                  auipc        tp, 879273
                  nop
                  c.addi       s0, -1
                  srli         t1, s8, 21
                  c.mv         t3, a3
                  and          ra, a0, a6
                  ori          a0, a3, 1336
                  c.sub        s1, s1
                  c.or         a0, a3
                  addi         t0, a6, -1742
                  ori          s4, s7, 1598
                  andi         s0, t1, 427
                  c.nop
                  auipc        tp, 90616
                  srl          s4, tp, s9
                  addi         a0, s8, 1015
                  lui          tp, 365362
                  srli         s8, s5, 21
                  c.andi       s1, 23
                  slti         s3, zero, -538
                  mulhu        s0, s11, ra
                  or           t3, a7, gp
                  c.or         a5, a5
                  c.and        a1, s0
                  andi         s10, s2, -2042
                  c.li         s1, 29
                  c.nop
                  sll          t3, a4, a4
                  srai         s2, s10, 25
                  and          s5, ra, s7
                  slti         s9, s8, -1429
                  c.addi       s4, -1
                  add          s3, s7, a7
                  c.addi16sp   sp, 480
                  c.and        a5, a0
                  mulhu        s5, t5, a3
                  c.sub        a0, a0
                  c.srai       s0, 19
                  sltiu        t3, t4, 1550
                  c.xor        a4, a5
                  addi         s1, a4, -1069
                  c.addi4spn   a1, sp, 848
                  c.mv         s3, t2
                  sra          s4, s0, a7
                  mulhu        t2, s10, t3
                  mul          ra, sp, ra
                  div          a4, t5, s5
                  mulhsu       s4, s0, a5
                  and          s3, a4, s8
                  divu         s0, a0, sp
                  sll          s2, a3, s3
                  c.addi16sp   sp, 304
                  or           s6, gp, s7
                  c.mv         t0, a2
                  remu         s1, s10, s7
                  slti         s8, s2, 1202
                  srl          s10, s3, s4
                  sra          a7, s7, t2
                  slli         s6, t0, 16
                  slti         t4, s8, 1092
                  c.nop
                  c.andi       a5, -1
                  c.add        s3, t1
                  srl          s2, a0, a7
                  srli         t4, t1, 21
                  mulh         a5, gp, t4
                  div          s3, a4, t1
                  c.mv         s9, t4
                  addi         s7, s10, -756
                  c.add        s1, s7
                  rem          s2, tp, s10
                  c.srli       a5, 14
                  c.sub        s0, a1
                  remu         t2, t3, s11
                  ori          s1, ra, -1497
                  remu         s10, s10, s8
                  sll          a1, s3, t5
                  ori          s6, ra, 1175
                  lui          tp, 991198
                  c.andi       s0, 17
                  c.sub        a1, a2
                  sra          s5, a7, a4
                  addi         t0, a1, 488
                  rem          tp, t3, tp
                  sltiu        a1, s5, -352
                  c.addi       a4, 26
                  mulhsu       s9, s8, zero
                  ori          gp, s5, 929
                  c.mv         a4, a4
                  slt          t3, s7, a2
                  rem          s4, sp, tp
                  lui          a4, 787152
                  or           s5, t4, a5
                  c.nop
                  mul          ra, t4, s2
                  add          t6, s3, t6
                  xori         s11, s11, -1205
                  c.xor        a1, a2
                  addi         s4, s0, 605
                  c.slli       a1, 2
                  nop
                  mulhsu       s2, s4, a7
                  c.mv         gp, t5
                  c.sub        a1, a2
                  sub          t2, a2, t2
                  c.srli       s1, 11
                  srai         s1, s10, 3
                  c.addi4spn   s0, sp, 528
                  sltiu        s5, sp, 1393
                  c.xor        s1, s1
                  divu         tp, sp, s2
                  srli         s10, s7, 6
                  c.mv         a4, ra
                  slt          t4, ra, a5
                  slt          gp, s3, s2
                  c.lui        ra, 8
                  sra          s10, sp, t5
                  mul          t1, s9, sp
                  c.and        s1, a3
                  srai         s10, a0, 1
                  or           s0, t5, s10
                  sltu         t2, a6, a5
                  andi         s10, s8, 1372
                  mul          t4, s3, s4
                  nop
                  c.xor        s0, a1
                  sub          t6, tp, t6
                  mulh         zero, s5, s10
                  xor          s5, s0, t5
                  lui          a5, 514779
                  sltiu        t6, t1, 1831
                  slt          zero, ra, ra
                  c.srai       s1, 15
                  c.addi       a5, 24
                  mul          s1, s8, s8
                  c.srai       a1, 5
                  mul          s9, s4, a1
                  c.or         s1, s0
                  c.addi16sp   sp, -16
                  or           a6, zero, t4
                  auipc        tp, 156078
                  c.andi       a4, -1
                  nop
                  c.sub        s1, a1
                  auipc        t2, 714061
                  or           s9, t3, s1
                  c.slli       s2, 23
                  div          t1, a3, s10
                  c.srai       a0, 31
                  c.srai       a0, 1
                  slli         s7, s11, 14
                  remu         s5, a3, t3
                  xor          a0, s6, a7
                  c.sub        a5, a3
                  c.addi       t3, -1
                  xori         s2, a0, -1602
                  addi         s4, t3, 1815
                  c.li         s10, -1
                  sltiu        s8, tp, -1896
                  c.and        s0, a2
                  c.xor        a5, a4
                  divu         gp, s8, t6
                  mulhsu       ra, t3, s9
                  c.addi       s6, 27
                  c.addi       t2, 18
                  c.addi16sp   sp, 304
                  sra          s1, a3, a5
                  c.addi       sp, 29
                  c.li         s0, -1
                  c.li         s1, 12
                  sll          t4, a4, s11
                  srl          a5, t3, t0
                  c.srai       s1, 24
                  div          t3, s1, s4
                  sltu         t0, a3, t0
                  c.addi16sp   sp, -16
                  slti         s0, s3, -1690
                  mulhsu       sp, t1, s9
                  addi         s9, tp, 1513
                  sltiu        s5, t6, 893
                  sub          sp, gp, t0
                  add          t3, t6, s2
                  nop
                  mulhu        a0, s9, s2
                  rem          a7, t6, s4
                  c.sub        a1, a1
                  add          t4, s11, t6
                  and          t1, a2, t1
                  c.addi16sp   sp, 496
                  c.mv         t3, s1
                  c.andi       s1, -1
                  and          t4, a1, a1
                  slti         s6, ra, 915
                  c.addi4spn   a1, sp, 336
                  c.andi       a5, -1
                  slti         s5, s2, -1203
                  ori          t4, t5, 931
                  sll          gp, s7, t0
                  sll          s9, s4, t1
                  auipc        ra, 414511
                  remu         s10, a5, a5
                  mulhu        a4, s0, a4
                  auipc        t0, 854521
                  sra          s0, s5, a5
                  slti         zero, s6, 717
                  srl          a5, s5, a5
                  c.xor        s0, a1
                  lui          zero, 328423
                  rem          s11, ra, ra
                  mulhsu       t1, s0, s7
                  c.andi       a0, 13
                  or           a4, gp, sp
                  nop
                  srl          zero, s4, t6
                  li           t6, 0x3585d12a #start riscv_int_numeric_corner_stream_31
                  li           s4, 0x9739f0aa
                  li           s2, 0x80000000
                  li           s6, 0x80000000
                  li           s11, 0x9ba1782c
                  li           t3, 0x80000000
                  li           s5, 0x55322ffb
                  li           sp, 0x0
                  li           t1, 0x0
                  li           s10, 0x80000000
                  div          s10, t6, t1
                  lui          s10, 223941
                  lui          s5, 830937
                  rem          t1, s11, s10
                  sub          t1, s5, t3
                  mul          t6, t3, t3
                  sub          s5, s11, s11
                  nop
                  rem          s10, t6, sp
                  mulhsu       t3, s5, s11
                  mulh         s5, sp, t1
                  auipc        s11, 591652
                  mulhu        sp, s11, t3
                  mulhu        s11, t1, s5
                  mulhu        s10, s6, s2
                  divu         s10, s4, s4
                  sub          s2, t3, s5
                  auipc        sp, 805857
                  lui          s5, 319986
                  add          s5, t6, t6
                  mul          t3, t1, s4 #end riscv_int_numeric_corner_stream_31
                  slt          a6, s9, sp
                  slti         a4, s7, -524
                  c.addi       a4, -1
                  lui          gp, 689418
                  nop
                  lui          s1, 186000
                  c.slli       s9, 10
                  c.mv         a5, s10
                  c.sub        a1, a1
                  add          t3, s8, a1
                  sll          gp, a4, ra
                  nop
                  c.and        s0, a5
                  ori          a1, a1, -62
                  remu         t2, t0, t1
                  and          a1, s5, t5
                  slt          s8, a0, t6
                  c.addi16sp   sp, -16
                  mulhsu       s11, t4, t6
                  srl          s1, tp, t6
                  c.li         s2, -1
                  xori         s4, s11, -213
                  ori          t3, zero, -2012
                  sltiu        s9, tp, 1704
                  mulh         gp, a2, gp
                  srai         t6, t2, 27
                  slti         s5, s11, 108
                  mulhu        s7, s6, t4
                  sltu         t0, a6, tp
                  sll          s4, a2, s5
                  rem          s9, a0, t5
                  auipc        s1, 592854
                  xor          a7, sp, s4
                  srai         s2, sp, 6
                  mulh         s8, a6, t0
                  slli         gp, a0, 23
                  c.xor        a5, a1
                  div          tp, s7, s2
                  srai         s2, ra, 12
                  andi         t4, s0, -1779
                  sll          s2, s9, a2
                  ori          s2, a7, 1244
                  xori         s7, tp, -1949
                  c.mv         t4, s7
                  c.lui        t0, 22
                  srl          t0, a4, a7
                  srli         a6, s3, 23
                  andi         zero, t4, 1836
                  c.srli       s0, 28
                  c.mv         ra, t6
                  addi         s7, s3, 229
                  xor          s7, s10, t6
                  mulhu        a5, s3, a3
                  xori         s4, s8, -276
                  ori          s11, s7, 1837
                  xor          t2, a5, s10
                  srli         t2, tp, 8
                  slli         zero, t4, 19
                  c.addi4spn   a0, sp, 608
                  sltiu        s3, t0, -1351
                  sra          zero, zero, zero
                  divu         zero, ra, s4
                  divu         s11, t1, s0
                  div          s5, s0, t0
                  c.srli       a4, 5
                  c.addi       gp, -1
                  srai         t6, t2, 21
                  sra          tp, gp, a1
                  sltiu        s4, s11, -511
                  sra          s3, s4, t3
                  sll          a1, t3, t4
                  li           t1, 0x2d3c19a2 #start riscv_int_numeric_corner_stream_4
                  li           s11, 0x0
                  li           s10, 0x7eb8c5ab
                  li           t3, 0x80000000
                  li           s4, 0xf985336b
                  li           s2, 0x0
                  li           t2, 0xfb235724
                  li           t4, 0x80000000
                  li           a7, 0x7f96eeb
                  li           s6, 0x80000000
                  mul          t2, s6, s4
                  sub          s4, s11, t3
                  lui          s2, 1023265
                  mulh         t2, t2, t4
                  mulhu        a7, s2, t2
                  auipc        a7, 464434
                  mulhu        s6, s2, s10
                  remu         s10, s11, s10
                  auipc        s6, 830648
                  mulhsu       s6, a7, t4
                  rem          t2, s10, t3
                  addi         s4, t1, -127
                  sub          t3, t3, t4
                  mulhsu       a7, t2, s2
                  mulh         s2, s11, t4
                  sub          a7, s4, s2
                  divu         t2, s2, t1 #end riscv_int_numeric_corner_stream_4
                  c.or         a0, s1
                  srli         a0, t3, 24
                  slti         ra, t4, 946
                  divu         tp, t4, t4
                  auipc        gp, 241540
                  lui          s5, 490980
                  ori          t0, s0, 1536
                  sra          tp, a5, s8
                  sltiu        tp, ra, -1373
                  c.li         a4, 26
                  mulh         t4, ra, a5
                  and          a4, s9, a1
                  c.and        s1, a2
                  srai         t3, s2, 22
                  slt          a1, a6, s9
                  srl          ra, gp, s10
                  srai         s0, tp, 16
                  c.sub        s0, a0
                  auipc        a4, 389836
                  c.nop
                  divu         s3, s3, tp
                  sltu         a6, a0, t4
                  c.srli       a1, 21
                  c.addi4spn   a5, sp, 176
                  c.add        t2, s3
                  sll          t4, s11, s9
                  c.or         a0, a0
                  rem          s0, s6, s4
                  sltu         a7, tp, s8
                  c.addi4spn   s1, sp, 944
                  slti         s7, t4, 21
                  c.srai       a4, 10
                  c.li         t4, -1
                  remu         zero, s4, sp
                  sltu         zero, s9, s9
                  sra          s10, s8, a6
                  ori          a4, s10, -789
                  rem          s0, zero, s1
                  c.or         a5, a3
                  slti         a4, s2, -560
                  xori         t3, a7, -271
                  xor          ra, a0, t5
                  divu         t1, s10, gp
                  c.li         a5, -1
                  divu         t6, s1, t6
                  c.addi16sp   sp, -16
                  remu         zero, t6, s7
                  sltiu        a5, a7, 1707
                  slti         s3, s2, -777
                  c.andi       a5, 7
                  c.srai       a0, 2
                  lui          s7, 144940
                  sub          t0, a0, s7
                  andi         t0, s5, 462
                  c.and        s0, a0
                  mul          a5, t6, t6
                  srli         s4, s8, 0
                  lui          t6, 574928
                  c.addi4spn   s0, sp, 112
                  c.slli       s8, 23
                  c.addi       s7, 8
                  mul          a4, s3, gp
                  c.lui        s0, 3
                  c.srai       a1, 6
                  slli         a1, a1, 2
                  c.addi       t1, -1
                  auipc        t0, 712049
                  and          sp, s9, t6
                  xori         s0, t5, 909
                  div          s1, s6, a0
                  mul          s5, a6, t1
                  c.srli       s0, 18
                  rem          a4, zero, t5
                  slt          s2, s0, a0
                  mulh         a5, a3, s5
                  c.nop
                  or           sp, t6, s2
                  sltiu        t6, gp, 1314
                  lui          s10, 349995
                  div          t0, s0, s5
                  c.srai       a1, 12
                  c.lui        s9, 3
                  c.lui        t3, 8
                  slli         s3, tp, 20
                  andi         a6, s6, 799
                  c.andi       a4, 0
                  sll          zero, t1, t0
                  srl          a5, a1, s1
                  and          t2, a0, a5
                  xor          s1, t2, s2
                  c.addi4spn   a0, sp, 832
                  c.li         t2, 16
                  sll          a7, s2, a5
                  srli         tp, s11, 17
                  c.xor        a4, s0
                  sltu         t6, s0, s3
                  c.srli       s1, 13
                  mulh         s9, a7, a5
                  nop
                  c.xor        s0, a3
                  c.mv         s8, t0
                  rem          a4, a7, gp
                  div          s1, s8, a7
                  slt          ra, s3, s9
                  c.or         s1, a3
                  sltiu        t3, s5, -637
                  div          ra, a4, s2
                  c.srli       a5, 31
                  c.nop
                  slt          t4, t2, a7
                  lui          ra, 445473
                  c.sub        a5, s0
                  add          s0, s8, a0
                  c.and        s1, a1
                  c.addi16sp   sp, 208
                  add          s2, s3, a1
                  srli         tp, s8, 26
                  sra          a6, s10, a6
                  c.addi4spn   s1, sp, 240
                  rem          tp, s3, s10
                  c.addi4spn   a5, sp, 720
                  c.lui        t1, 3
                  c.or         a4, a0
                  c.lui        a7, 10
                  mulhsu       s0, a0, s3
                  sra          a1, s7, a1
                  c.li         s5, -1
                  divu         s9, a0, gp
                  remu         s1, t4, s9
                  sub          s9, zero, s1
                  auipc        ra, 433324
                  or           tp, s7, s9
                  sltu         s6, s1, s10
                  mulhsu       s1, t4, s6
                  slli         t0, gp, 5
                  srli         s4, s8, 4
                  ori          t1, s1, -1755
                  sll          s5, a3, a7
                  xori         ra, t4, -857
                  c.addi16sp   sp, 288
                  mulhsu       tp, a3, s0
                  sub          s11, zero, s1
                  c.addi       t0, -1
                  c.mv         t0, a0
                  mulhu        s6, a0, zero
                  c.or         a4, a3
                  divu         t1, s6, a2
                  div          s2, sp, t4
                  auipc        s3, 364181
                  and          gp, a3, gp
                  c.sub        s1, a0
                  c.lui        a4, 13
                  xori         tp, a5, 459
                  c.srai       a5, 26
                  sub          s4, gp, s3
                  sra          a6, sp, ra
                  c.addi16sp   sp, -16
                  sltiu        s2, a4, -763
                  c.addi4spn   s0, sp, 352
                  mulhsu       s4, a0, a2
                  nop
                  xori         t1, s5, -806
                  lui          s10, 965721
                  div          t2, s10, s5
                  srai         a4, s0, 16
                  nop
                  c.addi16sp   sp, 336
                  remu         s3, s2, s10
                  slt          sp, t0, s9
                  mulhu        t6, s0, s7
                  sra          a5, s10, a6
                  mulhu        s5, s0, a0
                  rem          a4, s4, t4
                  c.addi4spn   a5, sp, 272
                  nop
                  c.li         s6, -1
                  mulh         s1, a7, a1
                  ori          s5, s10, 1182
                  c.xor        s1, a5
                  sra          s11, t6, s5
                  divu         t0, t5, a3
                  rem          a5, s4, s3
                  nop
                  sra          t0, a2, zero
                  addi         a1, s7, 1941
                  remu         s6, a5, s0
                  mul          t0, s8, a2
                  c.mv         s1, t1
                  sub          gp, zero, s1
                  ori          s11, s1, 1011
                  c.add        s8, t4
                  c.mv         s6, t0
                  c.addi       t3, -1
                  c.srai       s1, 23
                  xor          t6, s9, a5
                  ori          s11, zero, -1975
                  srl          s2, t4, t4
                  andi         s0, a7, 1930
                  srli         s8, s0, 19
                  slt          a6, t1, ra
                  andi         s0, s7, -1159
                  remu         t0, sp, a1
                  mulh         a4, s10, s10
                  xor          s6, ra, a4
                  slli         tp, a0, 14
                  slt          a0, s2, t3
                  andi         s9, zero, -54
                  div          s5, s8, s9
                  c.nop
                  or           a7, t1, a5
                  xor          s10, s5, ra
                  lui          a7, 752334
                  c.lui        a7, 14
                  sltu         tp, s5, s0
                  c.srai       a5, 16
                  c.slli       t6, 28
                  sll          gp, s11, s2
                  addi         t0, tp, -16
                  mul          s9, a6, s4
                  div          t4, s5, s6
                  c.addi4spn   s0, sp, 816
                  c.addi       s6, 12
                  slti         zero, a3, 430
                  sltu         a4, a3, a0
                  c.nop
                  add          s4, t1, zero
                  or           tp, s5, s1
                  slli         s8, s4, 25
                  nop
                  c.addi       t4, -1
                  slt          t3, ra, sp
                  c.addi16sp   sp, 112
                  mulhsu       t6, t3, a4
                  c.sub        s1, s0
                  c.or         a5, a2
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 672
                  sltiu        t4, t6, -1641
                  srai         gp, s10, 11
                  nop
                  remu         a4, s9, s10
                  remu         zero, t6, a7
                  div          t4, zero, a3
                  c.xor        s0, s0
                  c.sub        a1, s1
                  c.add        a1, s1
                  c.srli       a1, 22
                  mulh         t2, zero, s9
                  mulh         s5, a1, t2
                  xor          s10, s10, sp
                  div          s7, s8, t4
                  divu         s10, a3, t1
                  xori         a5, sp, -929
                  sub          s6, s9, tp
                  sub          t2, a1, t0
                  auipc        zero, 592040
                  sll          s6, a3, ra
                  and          s1, t2, a3
                  div          a4, a5, zero
                  xori         a1, t3, 1961
                  and          s11, s7, a3
                  c.or         s1, a3
                  mulhu        t2, t6, zero
                  slti         t0, s6, 1908
                  mulh         sp, s6, a7
                  c.addi16sp   sp, -16
                  slt          t0, t3, t3
                  mulhsu       t0, t3, s0
                  and          s8, a0, s2
                  c.li         ra, -1
                  remu         a0, a3, a0
                  lui          s1, 666993
                  c.mv         s0, a2
                  mulhu        s1, s2, t4
                  mulh         tp, t6, t1
                  div          s0, a2, t2
                  sub          a7, s6, a6
                  c.srai       s0, 9
                  c.and        a0, a4
                  ori          t0, s8, -1334
                  mulhu        t2, s7, s0
                  c.or         s0, a2
                  c.addi4spn   a1, sp, 176
                  rem          t3, a6, s4
                  c.nop
                  and          a5, t3, a6
                  c.andi       a4, 7
                  c.srli       s1, 7
                  c.lui        a4, 16
                  c.lui        s2, 10
                  srl          t3, s1, ra
                  c.lui        t4, 4
                  c.lui        ra, 9
                  mulh         a1, s7, t0
                  slt          s3, s4, s0
                  sll          t3, a1, s1
                  nop
                  and          t3, s6, a0
                  c.nop
                  c.li         a4, -1
                  add          tp, s3, t4
                  andi         s2, a6, 1329
                  mulhsu       a0, t6, s4
                  c.srai       s0, 10
                  c.add        s2, s7
                  c.srai       s1, 23
                  div          sp, a2, s3
                  rem          a6, a6, s8
                  mulhsu       t3, a6, a2
                  divu         s2, s8, tp
                  c.li         s10, 4
                  c.or         s1, a0
                  xori         s7, a5, -1687
                  sra          s2, s1, tp
                  mul          s7, s3, a0
                  slti         s0, s3, 307
                  xor          t3, a4, s11
                  andi         s11, a3, 1506
                  c.mv         s6, s6
                  remu         s10, s3, s10
                  c.xor        a0, a0
                  c.sub        s1, a4
                  c.addi       t2, -1
                  c.lui        a4, 7
                  c.lui        t3, 15
                  c.and        a1, a1
                  c.andi       s1, -1
                  c.lui        a6, 17
                  srl          a1, ra, s11
                  mulhu        t6, a5, t0
                  sltiu        s7, t3, 1101
                  c.slli       s0, 23
                  c.sub        a4, a2
                  mulh         s5, gp, t6
                  srl          s4, s2, s7
                  c.srai       a4, 28
                  xori         a4, s11, 607
                  c.addi       a5, -1
                  ori          s4, t2, 1346
                  and          s1, a4, zero
                  c.addi4spn   s0, sp, 176
                  c.and        a0, a4
                  or           a4, a3, t5
                  c.or         a4, a4
                  sltiu        s9, t1, -1708
                  c.addi16sp   sp, 464
                  mulhu        s5, s3, t0
                  slli         t4, a5, 16
                  c.mv         s3, t1
                  c.addi16sp   sp, -16
                  c.andi       a1, -1
                  sltu         a5, tp, s6
                  sra          a5, t0, a1
                  slti         a6, t4, -1202
                  or           t6, ra, ra
                  slti         s4, a5, 576
                  ori          s6, s2, -438
                  or           s11, s3, s11
                  xori         t0, s2, 2040
                  c.li         s9, -1
                  xori         s8, t6, -844
                  slli         s0, a7, 12
                  mulhu        gp, s3, s8
                  srai         a0, s7, 23
                  slli         s3, s11, 27
                  sra          a0, a4, t5
                  srli         s8, s9, 29
                  lui          a0, 204911
                  c.mv         s10, tp
                  div          t0, s8, s3
                  xori         t6, s0, 525
                  c.li         t1, -1
                  sub          s10, t1, t6
                  auipc        t2, 165648
                  c.andi       a0, -1
                  add          a6, s4, s5
                  slti         s11, s8, -321
                  slt          s8, s0, gp
                  srai         gp, t3, 9
                  c.nop
                  div          a7, a7, s8
                  xori         s11, a5, -1580
                  c.lui        t2, 22
                  mulhsu       sp, s8, a7
                  mul          a7, ra, a0
                  li           a1, 0xd90f697e #start riscv_int_numeric_corner_stream_28
                  li           s5, 0xffffffff
                  li           t4, 0x80000000
                  li           a0, 0x0
                  li           s7, 0xcadbd739
                  li           sp, 0x80000000
                  li           ra, 0x0
                  li           s11, 0x0
                  li           s4, 0x80000000
                  li           a4, 0x80000000
                  divu         a4, s5, sp
                  mulhsu       a1, ra, s11
                  divu         ra, sp, ra
                  div          a0, t4, s7
                  nop
                  rem          s5, sp, t4
                  addi         t4, t4, 1527
                  mulhu        a4, s4, a0
                  auipc        s4, 277880
                  add          s7, s7, s5
                  remu         s4, ra, ra
                  auipc        a4, 179500
                  rem          s11, s7, a0
                  div          s5, s11, a4
                  lui          t4, 331303
                  auipc        t4, 966340
                  mul          s4, sp, a4
                  add          a1, ra, ra
                  lui          s5, 1039991
                  addi         ra, a1, 862
                  mulhsu       s4, s7, s4
                  rem          s11, s5, sp
                  remu         t4, ra, sp
                  lui          sp, 682340
                  lui          a0, 864347
                  sub          ra, a1, sp #end riscv_int_numeric_corner_stream_28
                  xori         t3, gp, -295
                  c.srai       a4, 29
                  sltu         tp, tp, a1
                  andi         a4, t6, -93
                  c.add        a1, a0
                  c.xor        a0, a2
                  rem          gp, t6, s2
                  sub          s1, zero, zero
                  c.or         a0, a0
                  remu         a0, tp, s5
                  andi         t0, t3, 716
                  srli         s2, s9, 26
                  c.addi4spn   s1, sp, 320
                  c.add        s1, a0
                  auipc        tp, 654365
                  sltu         s1, s0, tp
                  xor          a7, a6, a7
                  sra          s3, t4, zero
                  sltiu        s4, t1, 368
                  lui          a5, 309434
                  c.addi       t0, 30
                  remu         a7, s10, t5
                  srai         a0, a6, 30
                  c.nop
                  c.sub        a5, a5
                  mulhu        s10, t1, s9
                  c.li         s2, -1
                  c.mv         s7, s10
                  mulh         t4, a4, t3
                  c.srai       a4, 6
                  mulhsu       a4, a5, s4
                  sra          a0, s8, t3
                  addi         t2, a3, -1448
                  nop
                  divu         s6, s5, a1
                  mulhsu       s5, s1, t5
                  c.li         sp, -1
                  sll          a5, a5, t5
                  mulh         t0, gp, ra
                  auipc        t4, 133743
                  c.and        s0, a0
                  c.addi4spn   a4, sp, 736
                  c.addi       s6, -1
                  c.nop
                  slli         s10, s3, 9
                  rem          t1, gp, s1
                  lui          t0, 299581
                  slt          s7, s6, t3
                  ori          s1, s9, -1687
                  slt          a7, s3, s3
                  c.li         t3, -1
                  c.nop
                  lui          s9, 244292
                  srl          zero, a7, a4
                  xor          a6, ra, s6
                  mulhsu       zero, a0, a5
                  rem          zero, tp, sp
                  mul          s11, s8, gp
                  sll          s5, a6, a3
                  sub          a5, a1, ra
                  c.lui        a0, 18
                  and          a1, zero, t4
                  c.add        a4, s4
                  ori          s0, tp, -936
                  sltu         s1, a7, s2
                  c.srai       a5, 2
                  lui          sp, 735461
                  add          t0, ra, s8
                  and          t0, a5, s5
                  ori          a7, s2, 273
                  ori          s6, s10, -1566
                  sltu         s3, a5, gp
                  c.li         s7, -1
                  c.addi       t6, 8
                  div          t2, t4, tp
                  mulhu        s9, t5, a3
                  c.andi       s0, -1
                  slli         s11, s1, 29
                  srai         s10, tp, 6
                  div          s3, a3, tp
                  divu         a4, t5, s5
                  c.li         t6, 24
                  srl          s4, t4, s0
                  sll          s11, t3, a6
                  sll          zero, a2, t1
                  remu         ra, s5, s8
                  mulhu        t2, t6, s11
                  mulh         t3, ra, t2
                  sll          a0, s10, a3
                  c.addi16sp   sp, -16
                  mulhsu       s0, s3, s4
                  xor          a7, s6, a5
                  mulhu        s11, t5, t3
                  c.or         s1, a5
                  c.and        s0, a4
                  c.srli       a4, 20
                  mulhsu       zero, s3, t6
                  c.and        s1, a0
                  mulhu        s3, s3, a3
                  sltiu        a4, tp, 257
                  c.slli       ra, 10
                  c.nop
                  c.li         t3, 9
                  sub          t0, tp, s3
                  slt          a6, t1, t1
                  mulhsu       a0, ra, s11
                  c.srai       a0, 28
                  srli         t0, t4, 2
                  c.srai       s1, 23
                  c.or         a1, a3
                  ori          gp, sp, -1278
                  slti         ra, t4, -1268
                  add          gp, t3, a4
                  c.li         s7, -1
                  c.sub        s1, s0
                  c.sub        a5, a2
                  sub          a6, t4, s9
                  srl          s10, s3, a4
                  mulhu        a5, a4, t1
                  c.srai       a0, 4
                  c.addi16sp   sp, 288
                  c.add        a7, t4
                  sub          tp, s11, sp
                  c.andi       s1, 18
                  c.addi16sp   sp, 352
                  xori         t0, t4, 786
                  or           s2, gp, sp
                  slt          gp, a5, a5
                  sll          t4, s7, t0
                  sll          s9, a3, a2
                  mulhsu       t4, a4, s3
                  c.and        a0, a4
                  ori          a1, s1, -192
                  div          t3, t4, a5
                  mul          a0, s7, a4
                  sltu         t1, a3, t4
                  c.andi       s1, -1
                  xori         ra, t1, -1187
                  addi         a0, s3, -992
                  c.andi       s1, 25
                  sltiu        a7, s7, -827
                  andi         t2, t4, -2000
                  srl          ra, zero, t6
                  c.mv         a5, a1
                  c.sub        s1, a3
                  c.andi       a5, -1
                  nop
                  c.li         tp, -1
                  mulhsu       s2, a0, a0
                  slti         s8, s1, -1765
                  xor          s9, s7, a4
                  rem          t2, s6, ra
                  ori          s8, ra, 855
                  c.andi       s1, -1
                  divu         t3, s0, s5
                  xor          gp, t1, t5
                  xor          s1, s2, a0
                  ori          a6, s9, -307
                  slt          s11, s6, a3
                  c.addi       t2, 29
                  or           s1, a7, s8
                  remu         a1, s10, a7
                  andi         ra, s11, -1603
                  c.addi       tp, -1
                  c.and        a5, a4
                  slti         a1, s2, -1388
                  sltu         s3, a4, t0
                  srl          s8, t4, a5
                  rem          s11, s11, a4
                  sltu         zero, a2, s4
                  c.and        a4, a0
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_23
                  li           s10, 0x2be83b67
                  li           s9, 0x80000000
                  li           a4, 0x80000000
                  li           s3, 0x0
                  li           s5, 0x80000000
                  li           a6, 0xffffffff
                  li           ra, 0x80000000
                  li           a0, 0x0
                  li           t3, 0x80000000
                  lui          s9, 176414
                  auipc        t3, 1005733
                  sub          ra, s5, a6
                  mulhu        s9, s5, a0
                  mulh         t3, a4, t3
                  divu         ra, a4, a0
                  addi         s10, s5, -1794
                  mulhu        s9, s10, s9
                  auipc        t3, 520267
                  auipc        s9, 923072
                  auipc        s7, 476964
                  remu         s5, s5, s3
                  mulhsu       t3, a4, t3
                  mul          a0, a6, s3
                  rem          a6, ra, s7
                  add          s10, s9, a6
                  div          a4, s10, s5
                  nop
                  mulhu        s5, ra, s3
                  lui          s7, 890371 #end riscv_int_numeric_corner_stream_23
                  c.addi       a1, -1
                  srli         s2, t1, 6
                  add          tp, s4, zero
                  srai         a6, s1, 19
                  c.addi4spn   a5, sp, 944
                  slli         t1, s1, 12
                  c.mv         t2, t0
                  c.add        tp, tp
                  sltiu        gp, t4, 630
                  c.slli       a5, 29
                  divu         s7, a0, t3
                  sltiu        t1, a0, -1068
                  c.srai       a1, 22
                  c.and        s1, a0
                  addi         t3, t3, 1077
                  c.srai       s0, 3
                  lui          s11, 945258
                  c.addi4spn   a4, sp, 816
                  div          s0, a6, t1
                  srai         t3, tp, 29
                  or           a4, t6, s8
                  mulhsu       a0, t6, t5
                  add          t1, s10, s4
                  mulh         zero, s5, t6
                  c.srli       a4, 4
                  c.addi4spn   a5, sp, 976
                  ori          s8, zero, 717
                  sltu         s9, s7, t5
                  c.andi       a0, -1
                  or           s10, s10, s7
                  rem          a4, t1, s9
                  srai         t2, a1, 28
                  lui          sp, 208193
                  c.srli       a0, 6
                  auipc        t4, 678155
                  c.addi4spn   s0, sp, 400
                  srai         a5, s2, 19
                  srl          a6, a0, sp
                  divu         s10, s4, s8
                  mulh         t6, a1, s10
                  c.andi       s1, -1
                  slt          t6, s4, gp
                  andi         s5, s11, 700
                  c.andi       s1, -1
                  add          ra, s6, s3
                  sra          a4, ra, tp
                  xor          s4, s10, a0
                  c.addi       a6, -1
                  auipc        s6, 452087
                  auipc        sp, 689224
                  sub          s1, t6, s11
                  c.add        s1, s11
                  mulhu        t4, t0, t6
                  xor          a4, s3, a1
                  or           t6, s0, s4
                  addi         s2, a1, -770
                  slli         sp, a0, 7
                  ori          t6, a7, 2037
                  c.and        s0, a3
                  addi         a5, s11, 1762
                  c.addi16sp   sp, 160
                  mulh         t1, a0, s9
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s3, 0x0
                  li           a4, 0x0
                  li           s8, 0xdd53419a
                  li           t1, 0x80000000
                  li           s9, 0x0
                  li           t2, 0x80000000
                  li           sp, 0x0
                  li           a6, 0xffffffff
                  li           a1, 0xffffffff
                  sub          s9, sp, a4
                  divu         s1, a1, t1
                  addi         s9, a1, -119
                  divu         a1, a6, s1
                  mul          s8, a6, s1
                  addi         a4, t1, 578
                  addi         a4, s8, 1628
                  remu         t2, t2, a6
                  mulhsu       t1, a6, t1
                  mulhu        t1, s3, sp
                  mulh         a1, a4, a4
                  mulhsu       t2, t1, a1
                  rem          t1, s3, a1
                  mulh         t2, a4, a1
                  div          a1, a4, t2
                  auipc        sp, 807043
                  nop
                  mulh         a6, s3, a4
                  mulhsu       s1, s3, a6
                  auipc        s9, 998249
                  auipc        t1, 917044 #end riscv_int_numeric_corner_stream_19
                  c.slli       a5, 29
                  div          a7, s11, gp
                  mulhu        t6, a3, s5
                  c.andi       a1, 20
                  mulh         s2, s3, gp
                  add          s2, a7, t3
                  c.addi4spn   a4, sp, 432
                  c.mv         a7, t0
                  srl          t2, sp, a4
                  mulh         s5, sp, s11
                  c.slli       s7, 27
                  nop
                  divu         t3, s11, t4
                  c.and        a4, s1
                  slli         s5, t2, 31
                  slti         t0, t1, 1397
                  srl          s10, t0, s10
                  mul          gp, s9, t6
                  nop
                  srl          s10, s8, s7
                  c.or         a1, a4
                  mulhu        t6, a1, s2
                  c.add        s1, s0
                  srli         sp, t3, 9
                  or           t0, s3, s1
                  xori         a7, sp, 1668
                  sub          tp, a6, s1
                  srli         s6, a6, 10
                  sra          t0, s11, a0
                  c.slli       a4, 23
                  c.or         s1, s1
                  nop
                  slt          a4, a3, s10
                  mulhu        gp, t0, zero
                  sll          s1, a4, a7
                  c.addi       t3, 26
                  c.addi       a4, 2
                  auipc        s9, 614874
                  or           a7, s3, s1
                  remu         a1, s3, a4
                  c.add        t1, ra
                  or           s5, gp, a6
                  c.or         a4, a5
                  c.slli       t4, 9
                  c.nop
                  slli         s7, gp, 19
                  andi         a1, t4, 445
                  c.addi       tp, 3
                  ori          a5, s8, 8
                  c.srli       a5, 19
                  mulhsu       t3, s2, t3
                  sub          a1, t1, s8
                  and          a4, t3, a6
                  c.xor        a5, a2
                  c.addi16sp   sp, -16
                  nop
                  addi         t2, t3, -1430
                  nop
                  srai         t6, a5, 17
                  mulh         a1, a3, ra
                  c.addi4spn   a1, sp, 928
                  c.add        a6, a0
                  div          s1, sp, a7
                  mulhsu       t0, s10, a6
                  remu         s1, a1, s7
                  c.slli       s4, 15
                  c.sub        a4, a4
                  c.addi       t1, -1
                  c.sub        s1, a4
                  c.srai       s1, 30
                  rem          s3, a5, s6
                  c.mv         a6, ra
                  c.li         s1, -1
                  srl          a7, s7, s5
                  c.nop
                  c.or         a5, a5
                  c.srli       a5, 10
                  c.li         a0, 19
                  srli         a7, a2, 2
                  xor          zero, a0, s10
                  slt          a6, s5, s3
                  c.slli       s8, 21
                  and          s11, sp, s11
                  ori          s9, a7, 1326
                  andi         s9, t6, -14
                  c.addi16sp   sp, 176
                  or           s10, a5, s8
                  c.and        a1, a3
                  remu         s0, a4, a3
                  and          s5, s6, a1
                  mul          t0, a4, s11
                  sltiu        a4, ra, -933
                  c.andi       s0, 15
                  sll          s5, a3, s7
                  sra          s6, s1, s8
                  slt          s2, zero, sp
                  c.srli       a5, 9
                  c.sub        s1, s1
                  and          t3, a7, s4
                  slt          s2, t3, t3
                  c.addi       gp, 12
                  slti         t0, s6, -216
                  xor          s6, ra, a6
                  sra          s0, a4, t6
                  remu         t4, gp, s4
                  c.and        s1, s0
                  mulh         s9, s4, s2
                  sll          zero, s3, s0
                  sra          s11, a4, s9
                  mulhu        s5, s8, ra
                  c.sub        s0, a0
                  srli         s11, t0, 2
                  c.andi       s0, 13
                  c.addi4spn   a5, sp, 736
                  nop
                  add          s4, s4, s7
                  mulh         s6, s8, s5
                  c.srai       s1, 12
                  c.mv         t2, t4
                  c.slli       s10, 26
                  srl          a0, a6, t5
                  auipc        a1, 565354
                  srli         zero, s11, 6
                  mulh         s11, s11, a4
                  mulh         s1, t5, a7
                  nop
                  srli         s7, s0, 14
                  srli         a0, t4, 22
                  lui          s11, 756778
                  mulh         s0, s3, tp
                  c.and        s0, s1
                  c.xor        a4, a0
                  addi         s10, s7, -793
                  add          a4, a4, s10
                  c.mv         sp, s3
                  c.srai       a5, 30
                  divu         t0, a7, s9
                  srai         tp, zero, 11
                  c.addi       tp, 14
                  or           t4, s5, a7
                  mulhsu       tp, a7, s5
                  slti         ra, s5, -1875
                  mulhu        s7, a5, s10
                  mulh         s4, s3, s6
                  sub          s2, s5, s10
                  c.xor        a4, s1
                  sra          s0, s5, zero
                  c.li         t3, 6
                  mulhu        a6, s11, sp
                  srl          t4, t3, a5
                  sra          s3, sp, t5
                  c.mv         t4, s8
                  sltiu        t3, a0, -1348
                  xor          a0, s3, a7
                  srli         tp, s0, 17
                  c.addi16sp   sp, -16
                  c.and        a5, s1
                  c.add        s7, t4
                  mulhu        a1, a1, s8
                  c.srli       a4, 28
                  c.add        s5, t2
                  andi         a4, a5, 1230
                  c.addi       s11, 5
                  srli         a0, a1, 15
                  or           tp, tp, a2
                  srli         tp, s0, 19
                  c.mv         t2, ra
                  srai         gp, a6, 0
                  ori          s11, gp, 1197
                  c.nop
                  xor          s4, t3, a5
                  divu         s5, a0, t6
                  add          s0, t4, a1
                  sltiu        sp, gp, -108
                  div          s8, a0, s11
                  mulhu        t4, s2, a2
                  slt          s0, a3, a0
                  c.nop
                  and          t2, s0, s11
                  c.srai       a0, 27
                  c.add        s1, s4
                  sltiu        t0, s0, -901
                  slti         t0, s1, -1811
                  c.and        a1, s1
                  addi         a5, s7, 557
                  slti         a5, a2, 453
                  sll          zero, s0, sp
                  slti         s7, ra, 1798
                  c.andi       a5, -1
                  slli         tp, s2, 29
                  c.sub        a4, s0
                  c.addi4spn   a5, sp, 864
                  mulhsu       s7, t1, s3
                  c.and        s0, s1
                  xor          s1, a3, a4
                  addi         ra, t4, -1241
                  auipc        tp, 956422
                  slti         s2, a1, 1486
                  srli         s4, t6, 18
                  c.slli       s6, 9
                  c.or         a4, a3
                  c.srli       a4, 25
                  c.addi       t1, 9
                  andi         t0, s7, -1048
                  c.nop
                  or           s9, a5, a1
                  sltiu        s2, t1, -1051
                  mulhu        a6, t5, a2
                  mul          s4, ra, s9
                  lui          s8, 982282
                  div          t0, a7, a2
                  rem          gp, s10, a4
                  slli         a6, zero, 19
                  c.slli       a4, 6
                  mulhsu       t0, s7, zero
                  c.mv         gp, s11
                  rem          s11, a1, t5
                  mulhu        t3, ra, s3
                  c.and        s1, s1
                  sll          gp, zero, t1
                  sll          t1, t4, sp
                  c.mv         s2, t2
                  addi         t4, a3, 764
                  slti         s6, s0, 1887
                  slt          s6, t6, t6
                  c.mv         s1, s0
                  sll          s8, t2, t6
                  sll          a5, a3, a2
                  c.add        s8, s9
                  ori          gp, a5, 1833
                  xor          a1, s5, a0
                  srl          s2, s3, tp
                  c.andi       s1, -1
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           ra, 0x0
                  li           s4, 0x0
                  li           s0, 0xacf19475
                  li           s3, 0x0
                  li           a5, 0xb493abf8
                  li           s8, 0x80000000
                  li           s5, 0x0
                  li           s7, 0x0
                  li           gp, 0x3a48f2ba
                  mul          s0, s4, a5
                  auipc        a5, 234074
                  addi         t6, s8, 1290
                  mul          s5, t6, s0
                  div          ra, gp, s4
                  lui          ra, 395433
                  remu         t6, a5, s3
                  mulh         ra, s8, s8
                  mulh         s3, t6, ra
                  add          a5, a5, s8
                  addi         s4, s0, -813
                  div          s5, a5, s7
                  mul          a5, s4, t6
                  rem          s0, ra, ra
                  div          ra, s8, gp
                  mulh         ra, s3, s5
                  nop
                  div          s8, s5, s0
                  remu         s5, s0, gp
                  add          s4, a5, a5
                  mulhsu       s7, s4, a5
                  add          s0, gp, s7
                  remu         s0, s4, s8 #end riscv_int_numeric_corner_stream_15
                  slt          a0, s2, s0
                  addi         t3, a1, -803
                  c.andi       s0, 2
                  srai         t2, t2, 22
                  addi         a0, a5, -1814
                  mulh         t3, zero, a3
                  lui          t3, 147788
                  c.nop
                  mulhsu       t2, s2, a2
                  mulhu        s3, s8, a6
                  andi         s10, s3, -1246
                  nop
                  nop
                  c.addi       a5, -1
                  ori          t1, a4, -201
                  div          a5, t0, a6
                  c.srli       a5, 15
                  sll          s8, a6, t1
                  sll          t6, a3, t2
                  sll          s4, a0, s7
                  mulhsu       s3, s3, sp
                  sll          a6, gp, s10
                  and          t3, a4, s4
                  and          a6, sp, s3
                  c.addi       t3, -1
                  mulhu        a5, t6, gp
                  sltiu        s10, t6, 1314
                  add          a1, a7, s10
                  c.srai       a4, 16
                  rem          s7, s1, s3
                  mulhu        t0, zero, s3
                  xor          s0, t3, t6
                  slli         s11, s4, 2
                  addi         a1, sp, 674
                  c.slli       s1, 16
                  mulhu        a1, a0, a7
                  c.add        gp, s4
                  sub          a6, s3, s7
                  add          s0, s8, s9
                  srl          s1, sp, a1
                  c.or         s1, s0
                  c.sub        s1, a4
                  c.srli       a5, 11
                  remu         t2, s3, t2
                  and          s1, s3, s11
                  srli         a1, gp, 13
                  srai         s7, s11, 1
                  c.srai       s1, 16
                  nop
                  c.slli       tp, 29
                  nop
                  c.andi       s0, 25
                  rem          a5, s7, a1
                  slli         s1, tp, 25
                  c.slli       tp, 12
                  c.slli       a4, 15
                  c.andi       s1, 30
                  srai         s10, t5, 13
                  c.srai       a4, 20
                  addi         s8, t2, -11
                  slti         s4, a7, 464
                  mulh         a6, t4, sp
                  c.xor        s1, s0
                  c.srli       s1, 14
                  add          s0, a3, s1
                  or           t4, ra, a2
                  c.lui        t6, 17
                  lui          tp, 262616
                  andi         s7, t5, -1947
                  divu         a4, zero, t6
                  xori         t2, ra, 966
                  mulhu        a6, s2, ra
                  sra          s3, s1, a3
                  mulh         a7, a6, s1
                  c.addi16sp   sp, 96
                  c.li         t4, -1
                  c.srli       a4, 11
                  add          t4, a5, a7
                  c.add        tp, a3
                  sll          t6, s10, tp
                  mulh         a6, t0, a3
                  c.mv         s6, s8
                  c.li         s2, 3
                  slti         s0, s3, -1801
                  ori          s2, s8, -1795
                  sra          s10, a4, t2
                  c.nop
                  sll          t3, s11, s3
                  c.mv         s0, a0
                  and          a4, t5, t2
                  c.and        a4, a5
                  c.xor        s1, s0
                  xor          s3, s4, a5
                  div          s1, a3, t3
                  add          s10, t6, a1
                  ori          s9, a3, -1140
                  sll          s0, sp, a1
                  slli         s5, t1, 10
                  sub          s3, s9, t1
                  c.addi16sp   sp, 336
                  or           s5, a4, s4
                  and          ra, zero, a5
                  c.srai       a5, 8
                  add          s6, t2, tp
                  add          sp, a5, t2
                  mulh         t1, a2, s3
                  sltiu        t6, s5, -1847
                  c.addi4spn   s1, sp, 944
                  ori          a7, ra, 263
                  sub          t4, zero, t6
                  ori          t0, ra, -687
                  c.andi       a5, -1
                  c.or         s1, a1
                  c.or         s0, s0
                  c.and        a5, a2
                  divu         t1, s2, s4
                  mulh         s8, t3, s3
                  xori         s3, s5, -78
                  c.addi       t2, 9
                  sub          gp, t3, s6
                  c.nop
                  and          s6, s3, t0
                  c.srai       s0, 4
                  mulhsu       s8, s10, t4
                  mul          s9, s2, t1
                  add          s11, s1, s9
                  c.mv         tp, sp
                  c.sub        a1, s1
                  c.and        a1, a4
                  srai         s7, a1, 4
                  xor          a1, t0, a7
                  sra          t6, sp, s3
                  c.li         gp, -1
                  divu         s0, a1, ra
                  sltiu        s7, s5, -541
                  c.slli       t0, 5
                  c.srai       a5, 24
                  andi         zero, s11, 654
                  slti         sp, a6, 167
                  div          a7, s0, a3
                  srli         t1, tp, 1
                  xor          t0, s0, t6
                  remu         s11, s3, s1
                  div          s6, t3, s8
                  xor          t4, s11, s3
                  c.slli       a7, 27
                  c.xor        s0, a3
                  srli         gp, t2, 3
                  sra          s8, tp, t6
                  c.srai       a4, 3
                  c.lui        t2, 17
                  div          s8, s3, s2
                  divu         zero, s0, a4
                  xori         s8, s2, 368
                  c.andi       s1, -1
                  c.slli       t2, 27
                  sub          sp, gp, s3
                  lui          zero, 838505
                  sltu         t1, t2, s4
                  c.slli       tp, 28
                  remu         gp, t3, s4
                  c.and        s0, a2
                  sltu         s2, s3, t4
                  slli         s10, s0, 9
                  auipc        a5, 697776
                  c.sub        a0, s0
                  slt          s0, a3, zero
                  mulhsu       a7, a2, s6
                  rem          s0, t1, s1
                  srl          s1, s6, a3
                  sll          a1, t2, a2
                  divu         s2, s10, a6
                  divu         s0, a3, s8
                  srl          s8, s7, s6
                  mul          s9, s1, s1
                  sll          s3, a6, zero
                  c.srai       a1, 8
                  or           t3, a0, a3
                  auipc        sp, 883918
                  c.or         a5, a5
                  addi         a5, t0, 382
                  c.srli       s1, 30
                  nop
                  slti         s10, t3, -1856
                  lui          s1, 647982
                  rem          s6, a2, t1
                  c.add        s3, s7
                  c.add        s3, s1
                  mul          s8, s6, s2
                  c.srai       s1, 1
                  c.addi4spn   s1, sp, 240
                  sll          s8, a7, t1
                  c.xor        s1, a4
                  c.addi4spn   s1, sp, 432
                  c.srai       a5, 14
                  sltu         s10, a0, sp
                  c.addi16sp   sp, -16
                  or           t1, t4, gp
                  andi         a6, s7, 1426
                  slti         t3, s0, -40
                  c.addi4spn   s0, sp, 864
                  mulh         a5, t6, s10
                  or           s9, s2, s7
                  xori         s8, tp, -1423
                  mulh         s8, s11, a4
                  mul          s6, tp, s8
                  xori         a6, t6, 276
                  mulhu        a7, s7, s5
                  mulhu        s6, s6, s6
                  c.andi       s1, -1
                  auipc        t6, 744218
                  xor          s8, s3, t0
                  divu         a4, a3, s5
                  mulhu        t3, t4, s6
                  xor          tp, s0, s8
                  sltiu        a6, t1, 470
                  c.and        a1, a4
                  c.li         tp, 10
                  lui          s0, 485544
                  add          t1, s5, s9
                  sll          gp, t1, zero
                  and          s9, a5, sp
                  c.addi4spn   s0, sp, 400
                  addi         s6, s4, 1027
                  c.slli       s7, 2
                  ori          a0, a3, -886
                  slt          s1, a4, t2
                  nop
                  andi         t4, t4, 1304
                  c.lui        s6, 28
                  mulhu        a5, a1, sp
                  c.add        s3, s4
                  mulhsu       s5, s5, t1
                  slt          s11, s3, a6
                  mulhu        tp, sp, a5
                  rem          gp, tp, s7
                  c.srai       a4, 8
                  c.slli       s5, 15
                  auipc        a1, 584606
                  auipc        s7, 648578
                  srai         s4, a1, 1
                  mulhu        a1, t0, s1
                  mulhu        s8, t0, ra
                  sltiu        a6, s9, 1298
                  c.or         s0, a5
                  c.and        a5, a2
                  c.sub        a0, a5
                  c.addi4spn   s1, sp, 960
                  addi         s5, s4, -1750
                  c.andi       s0, 3
                  slt          a4, a3, tp
                  divu         t0, t5, t0
                  c.srli       a1, 26
                  divu         s8, t5, s1
                  mul          t4, a4, t0
                  slt          s10, a2, s4
                  sltiu        s6, a7, 637
                  mul          zero, s4, sp
                  mul          s10, s6, s5
                  xor          a1, s8, t6
                  divu         a7, a3, s10
                  or           s6, a7, a6
                  c.mv         sp, s8
                  auipc        s11, 261134
                  c.and        a1, a1
                  ori          s6, s0, -1980
                  sltu         a0, t1, t6
                  sltiu        s2, s2, 1119
                  auipc        s2, 564398
                  srai         a7, s0, 9
                  c.lui        s9, 6
                  ori          s1, s0, -2
                  slti         s5, t2, -1769
                  rem          t3, s7, tp
                  c.add        s0, a5
                  addi         t0, t5, -587
                  auipc        a5, 1016001
                  andi         t4, s5, -257
                  c.slli       ra, 1
                  mulhu        a7, s9, a6
                  c.nop
                  c.lui        t2, 3
                  addi         s0, t2, -1328
                  or           s1, a3, t0
                  c.srli       s0, 13
                  srli         s5, gp, 7
                  c.addi4spn   a4, sp, 640
                  and          s5, s5, s2
                  and          t2, a4, tp
                  srai         a4, a7, 28
                  c.add        s2, s3
                  andi         s11, s0, -998
                  c.andi       a5, -1
                  mul          a1, tp, s10
                  c.andi       s1, -1
                  sll          t1, s5, a1
                  c.mv         s3, a5
                  c.and        s0, a2
                  c.lui        t4, 11
                  remu         s9, t6, t3
                  c.and        s1, a3
                  slli         s9, s11, 27
                  c.lui        s4, 16
                  mul          a1, s6, t4
                  srl          s0, t3, s3
                  sltiu        s4, s9, 1491
                  sub          s5, t1, a2
                  srl          s2, t5, s3
                  c.add        gp, tp
                  addi         a6, t1, -1506
                  mul          s10, s3, a1
                  auipc        s3, 507766
                  mulhsu       t2, tp, a2
                  c.li         t6, 16
                  auipc        s5, 362944
                  c.andi       s0, -1
                  c.nop
                  addi         t6, s1, -355
                  c.add        sp, t5
                  c.sub        a1, a1
                  xori         s7, t2, -879
                  c.addi4spn   a5, sp, 848
                  c.lui        t1, 18
                  c.srli       a1, 24
                  c.lui        s5, 23
                  mulhsu       tp, t0, t3
                  slti         a1, ra, -480
                  div          s3, t4, t0
                  c.xor        a1, s1
                  c.srli       a5, 6
                  srli         tp, zero, 22
                  div          s11, s4, a6
                  c.addi       s9, 25
                  xor          s10, s6, a6
                  c.srli       a1, 22
                  c.andi       s0, -1
                  c.xor        a4, a4
                  xori         a0, tp, -1962
                  slti         s10, s10, 912
                  mulhsu       s1, s4, t1
                  c.andi       a5, 9
                  c.or         a4, a3
                  c.lui        ra, 23
                  mulh         t6, a1, t3
                  auipc        tp, 770949
                  c.andi       a5, 22
                  slti         s5, s8, 702
                  auipc        t3, 55494
                  sub          s8, s3, ra
                  mulhu        ra, t1, tp
                  rem          t6, t3, s2
                  c.li         s5, -1
                  or           t3, s8, a5
                  auipc        gp, 182712
                  addi         s2, t6, -1661
                  mulhu        s10, a5, a3
                  and          s8, ra, t2
                  auipc        t3, 325808
                  rem          t6, a2, s8
                  mulh         t4, s3, ra
                  c.sub        a1, s0
                  c.li         s2, -1
                  srai         zero, sp, 29
                  c.srai       a4, 25
                  mulhu        s0, t0, sp
                  xor          gp, s11, t1
                  add          a4, s11, s10
                  add          a4, gp, s1
                  c.nop
                  remu         tp, t2, t2
                  c.addi       a6, 14
                  c.lui        s8, 25
                  c.xor        a0, a1
                  sub          ra, s7, s2
                  srai         s5, s8, 9
                  sltu         t3, t4, t5
                  c.and        a4, a4
                  slt          t2, t6, a5
                  auipc        a1, 49204
                  c.mv         s6, s2
                  c.lui        s10, 1
                  remu         s3, s7, tp
                  or           t0, t5, a1
                  srli         ra, s0, 9
                  div          s4, t1, gp
                  c.nop
                  slli         a6, t0, 6
                  c.li         t4, 15
                  sra          t0, s9, a4
                  mulh         t6, zero, s0
                  c.mv         a4, a7
                  c.add        s11, s2
                  c.mv         t2, s10
                  c.mv         s6, t5
                  lui          s3, 863852
                  c.srli       a4, 14
                  c.andi       a5, 20
                  sll          s1, a7, t5
                  c.srli       s0, 23
                  slt          a7, a2, t0
                  mulhsu       a7, s7, sp
                  sltiu        s8, s2, 1873
                  remu         s3, s0, gp
                  andi         a0, zero, -1545
                  mul          t6, sp, t4
                  addi         s8, t3, -425
                  rem          s9, gp, t0
                  sra          a1, t1, s10
                  andi         s2, a3, -975
                  slt          tp, a7, a3
                  slti         t0, t2, -216
                  or           t3, a7, s5
                  srl          ra, t0, t3
                  c.slli       a1, 16
                  c.addi16sp   sp, 144
                  and          s4, s11, a6
                  add          a5, a4, s8
                  sub          t1, s11, s8
                  c.nop
                  srl          s3, s1, ra
                  c.mv         s8, s2
                  mulhu        sp, a7, s2
                  lui          a1, 830541
                  slli         a5, s10, 20
                  divu         a0, s11, a2
                  mul          t1, t5, s11
                  slti         gp, s8, 1009
                  c.or         a5, a3
                  c.srli       s0, 20
                  rem          t6, a0, s7
                  sltiu        a6, a1, 210
                  c.addi16sp   sp, 128
                  slti         s2, a5, -779
                  ori          t0, s7, -798
                  c.addi4spn   a1, sp, 832
                  divu         s1, a0, a6
                  mulhsu       a4, a0, a6
                  or           t0, s0, tp
                  c.srli       a5, 2
                  c.addi4spn   a0, sp, 816
                  c.and        a0, a2
                  c.slli       s1, 7
                  c.lui        t6, 8
                  rem          s6, t6, a6
                  mul          a0, s1, s10
                  or           s2, t0, s1
                  c.xor        a0, a1
                  sltiu        s6, a1, 334
                  c.srli       a4, 10
                  mul          tp, zero, s11
                  mulhsu       sp, s6, a2
                  c.srai       a0, 9
                  slt          a4, s10, a1
                  c.slli       sp, 20
                  c.addi16sp   sp, 304
                  or           s10, a0, a6
                  auipc        a5, 1006130
                  slli         s11, t4, 10
                  c.addi4spn   s0, sp, 16
                  slti         s10, a1, -1056
                  c.li         s9, -1
                  nop
                  srai         sp, a1, 11
                  srli         s2, a1, 15
                  c.addi4spn   s1, sp, 288
                  mul          s10, s5, a7
                  c.sub        s1, a1
                  xor          a6, ra, a4
                  c.addi16sp   sp, 448
                  srli         sp, tp, 27
                  srli         s2, t5, 17
                  ori          t3, t0, 1044
                  c.slli       s11, 8
                  rem          zero, s3, s9
                  andi         t0, a5, -1392
                  remu         a6, t1, sp
                  c.andi       a4, 6
                  mulhsu       s3, gp, a3
                  xor          s7, s3, zero
                  xor          t0, s3, a2
                  c.srli       s1, 6
                  sll          t1, a1, t3
                  c.mv         s5, s3
                  mulhsu       s6, s6, s7
                  c.srli       a4, 11
                  c.nop
                  ori          gp, a7, -1022
                  add          t6, t3, s9
                  sltu         s4, s10, s10
                  div          a5, s4, a3
                  sra          s2, s7, a7
                  c.andi       s1, -1
                  mul          t4, s4, a2
                  andi         t1, s9, -206
                  slt          s10, t6, ra
                  c.addi16sp   sp, -16
                  c.sub        a4, a4
                  lui          gp, 224200
                  sub          t4, a7, s5
                  mulhu        t4, s5, a5
                  slt          t3, a2, a0
                  nop
                  xori         a4, s11, 1919
                  c.srai       s0, 14
                  c.slli       t0, 22
                  srli         s0, t1, 8
                  c.add        t4, a1
                  c.nop
                  srl          s2, zero, a0
                  c.lui        s9, 12
                  c.sub        a0, a0
                  c.and        s0, a1
                  c.sub        a1, a5
                  c.add        s0, t5
                  add          s3, gp, s4
                  sltiu        t4, a6, 789
                  ori          t0, a7, 229
                  srl          t0, t2, a2
                  add          t0, t2, a3
                  div          s7, s0, t6
                  mulhu        s7, s2, t3
                  or           gp, sp, s1
                  xor          a1, s8, s10
                  add          t0, t5, t5
                  xor          a0, s0, a6
                  c.li         a6, 26
                  lui          s3, 737810
                  andi         s3, a5, -1660
                  slti         t6, t2, 1938
                  andi         sp, s3, -1757
                  nop
                  c.addi       a6, -1
                  sra          t2, tp, sp
                  c.srli       a5, 30
                  sub          t4, ra, t3
                  slt          s4, s4, sp
                  lui          a1, 78550
                  c.li         s9, 1
                  c.addi16sp   sp, 112
                  sltu         s8, t4, s0
                  c.addi16sp   sp, -16
                  and          t6, a6, s4
                  xor          s5, a3, sp
                  sub          a5, tp, t2
                  sra          s7, a7, a2
                  c.srai       a5, 25
                  c.addi       s0, -1
                  c.addi16sp   sp, -16
                  or           a5, a6, s2
                  ori          s5, a7, -1695
                  div          a1, s11, s9
                  srl          s11, t4, a2
                  c.and        a4, a2
                  ori          s9, s9, 1292
                  sub          t0, s5, t5
                  c.and        s1, a0
                  srli         a4, s11, 0
                  c.srli       a5, 30
                  rem          t1, a6, s0
                  mulhsu       s1, s1, s5
                  mulhsu       zero, tp, t2
                  c.slli       t4, 22
                  and          s8, t2, s0
                  sltiu        a4, a3, -245
                  sll          t1, a3, t5
                  c.slli       s0, 19
                  c.addi16sp   sp, -16
                  sra          t6, a5, s3
                  nop
                  c.srli       a5, 6
                  c.addi4spn   a4, sp, 128
                  mulh         a4, t4, a5
                  andi         t3, s9, -1053
                  srli         t6, s6, 17
                  xori         t3, gp, -1751
                  c.srai       a5, 6
                  div          a5, a1, s4
                  c.lui        a0, 3
                  sltu         gp, t5, t5
                  c.li         t4, 14
                  c.andi       s1, 30
                  srl          gp, a2, a2
                  srli         t3, a3, 5
                  c.and        a1, s0
                  c.add        a4, s5
                  add          s10, s9, s2
                  rem          s2, sp, a4
                  remu         s11, s4, a0
                  mul          zero, t2, t2
                  c.mv         t6, a4
                  c.li         a4, -1
                  c.lui        t6, 19
                  c.srli       a1, 16
                  or           tp, t0, s9
                  sub          t4, t3, s7
                  sltiu        s0, a0, 1027
                  mul          a1, a5, a2
                  sub          t3, t3, t6
                  sltiu        t3, gp, 1624
                  mulhu        t3, s8, s5
                  sub          t1, t1, gp
                  addi         s1, t2, -910
                  mulhu        s7, a3, a5
                  or           a4, t6, s8
                  srl          ra, s6, a1
                  slt          s6, a0, s9
                  srli         sp, a5, 22
                  srai         gp, a5, 13
                  c.li         tp, -1
                  c.or         a0, a0
                  c.addi16sp   sp, 64
                  ori          gp, t5, -488
                  c.and        s0, a1
                  c.or         a4, a2
                  c.addi4spn   s0, sp, 992
                  addi         gp, a6, 2006
                  c.li         a1, 8
                  c.and        s1, a0
                  c.xor        a0, a4
                  xor          s1, tp, t1
                  slti         a5, t2, 317
                  and          a5, a0, a0
                  mulhsu       t3, a7, zero
                  and          s4, gp, s9
                  c.addi16sp   sp, 160
                  c.nop
                  c.add        sp, s0
                  mulh         s2, t1, sp
                  c.and        s0, s0
                  divu         a1, t2, a4
                  mulhsu       gp, zero, sp
                  mulh         t4, s8, s9
                  c.sub        a5, s1
                  c.andi       s0, -1
                  sltu         a5, t1, gp
                  mulh         s3, s7, gp
                  srli         a1, t6, 2
                  sltu         t2, s9, zero
                  div          t3, s10, t3
                  andi         s11, a5, 1087
                  and          t1, t3, s9
                  c.andi       s0, -1
                  c.lui        t3, 15
                  rem          s6, a0, s1
                  divu         s6, s4, t1
                  sltiu        a5, a6, 737
                  c.and        a1, a1
                  mulh         s4, t0, a5
                  addi         t3, t0, -1981
                  c.addi4spn   s0, sp, 928
                  c.and        a0, a3
                  c.addi16sp   sp, 352
                  c.and        a4, a1
                  c.srai       a5, 19
                  c.and        a4, s0
                  xor          a1, a4, t1
                  mulh         t4, s10, s6
                  c.or         s0, a0
                  srl          s11, s4, a1
                  c.lui        t1, 15
                  addi         tp, s2, -473
                  c.xor        a4, a3
                  remu         t4, t1, a0
                  mul          sp, s11, a4
                  c.lui        s3, 16
                  addi         t6, t5, 653
                  slti         a5, a6, 238
                  sra          s9, s6, t5
                  sltu         a1, s7, a2
                  sra          s7, s1, s10
                  ori          gp, s3, -93
                  mulhu        a7, s11, sp
                  c.add        s1, s5
                  add          t2, tp, a0
                  xori         gp, t0, -1760
                  c.nop
                  rem          s1, s4, s1
                  sub          a5, s5, s8
                  c.xor        a0, a0
                  auipc        s3, 935454
                  sll          zero, s9, a7
                  mulhsu       t3, s4, s6
                  sltiu        a6, t2, -1840
                  and          tp, t4, s11
                  remu         t0, a3, a3
                  xor          t3, t2, t5
                  sub          s0, a5, a3
                  divu         t6, gp, t3
                  nop
                  div          a5, s6, t6
                  lui          s4, 194884
                  c.sub        s0, s1
                  mulhsu       t4, a3, zero
                  c.and        a4, a3
                  rem          a0, t1, s8
                  remu         t2, a0, sp
                  c.srai       a5, 14
                  addi         a5, a1, 682
                  xori         a1, gp, 1686
                  addi         a1, s6, -1847
                  mul          a5, s9, t3
                  sra          t3, sp, zero
                  c.andi       a0, -1
                  div          t6, s9, s6
                  c.andi       a5, -1
                  c.andi       a1, -1
                  c.and        a5, a2
                  c.xor        a5, a2
                  div          gp, gp, s3
                  sra          s1, s6, s3
                  c.add        s1, s6
                  c.mv         gp, s8
                  c.srai       a4, 16
                  add          a4, a3, a0
                  sra          a7, t5, t3
                  mulh         ra, a5, a1
                  and          a0, t4, ra
                  divu         gp, a3, s4
                  andi         s8, a5, 1097
                  c.slli       t6, 2
                  c.li         a6, 2
                  c.srai       a5, 21
                  slti         s3, a7, -903
                  c.and        a4, a5
                  andi         s0, t0, 1217
                  sll          t6, s2, tp
                  c.srli       s0, 24
                  or           sp, a5, ra
                  sll          t4, s7, s11
                  srli         s11, a3, 6
                  c.mv         t1, a1
                  slti         t4, s6, -1241
                  c.addi4spn   a5, sp, 240
                  nop
                  and          t0, s5, s10
                  c.addi4spn   a5, sp, 720
                  nop
                  c.srai       s0, 23
                  c.addi16sp   sp, 64
                  slt          t6, ra, a2
                  addi         a0, s11, 489
                  or           t1, t5, t5
                  c.slli       a4, 5
                  auipc        s4, 417725
                  mulh         s0, zero, t3
                  mul          tp, s1, tp
                  rem          t4, s5, t2
                  c.slli       s2, 5
                  slli         tp, gp, 27
                  c.add        a5, a5
                  c.sub        s0, a3
                  c.lui        s5, 5
                  mulhu        tp, s7, t0
                  slti         s7, t5, 1405
                  c.addi16sp   sp, -16
                  remu         t6, a1, s0
                  add          tp, sp, t5
                  srl          t0, a1, s2
                  sltiu        t0, s5, -1778
                  slt          s2, s1, s6
                  xor          t2, t6, ra
                  auipc        s6, 619891
                  sltiu        s1, s11, -1964
                  mulhu        t2, tp, gp
                  c.xor        s0, a1
                  and          s8, t3, s9
                  or           a6, t5, a7
                  xori         a4, t2, 509
                  sub          t2, s7, a5
                  or           a5, a3, t0
                  rem          s1, a7, t0
                  c.mv         ra, tp
                  mulhu        s9, s6, ra
                  c.xor        s1, s1
                  c.or         s0, s1
                  mulh         s1, s5, t6
                  c.slli       a0, 8
                  sra          t3, t4, s3
                  c.xor        s1, a1
                  mul          a1, zero, sp
                  lui          a6, 512654
                  c.addi16sp   sp, -16
                  mulh         tp, sp, a2
                  c.lui        t6, 15
                  divu         s11, t1, s4
                  rem          s9, a6, s6
                  and          a5, a4, a0
                  slt          gp, ra, s4
                  mulhsu       t6, a2, a5
                  c.xor        a1, a4
                  slti         s3, s8, -1942
                  c.addi16sp   sp, -16
                  div          t4, s10, a2
                  c.andi       a5, -1
                  ori          s6, t4, 1484
                  sltiu        ra, s10, 1286
                  andi         sp, t0, 1312
                  mul          t4, s0, t5
                  slli         s9, t6, 21
                  add          t1, s9, t6
                  c.slli       s11, 25
                  c.srli       a0, 6
                  c.mv         t1, a1
                  slti         ra, s6, 323
                  and          tp, a1, a6
                  slli         s0, t6, 20
                  c.xor        s0, s1
                  addi         ra, ra, 301
                  slli         s1, s0, 9
                  c.mv         s7, s8
                  sll          a0, s1, s11
                  c.andi       s1, 15
                  rem          t4, t4, t0
                  slli         s0, a4, 6
                  remu         t3, t4, s5
                  mulhsu       a7, a5, s7
                  rem          s0, s10, sp
                  rem          t1, a4, s10
                  c.add        a0, s0
                  rem          s7, s6, t1
                  sltu         zero, gp, s1
                  mulhsu       s10, s10, s11
                  c.nop
                  slt          a4, s6, s10
                  sltu         s9, t5, s4
                  mulh         a4, s2, s9
                  c.xor        s1, a5
                  c.and        a4, a1
                  c.addi4spn   s1, sp, 192
                  addi         t4, s7, -1264
                  c.andi       a5, 5
                  c.andi       a5, -1
                  c.nop
                  c.mv         tp, t0
                  c.addi16sp   sp, 32
                  c.addi       s9, -1
                  c.andi       a4, 17
                  c.srai       s1, 21
                  c.andi       a4, 22
                  c.or         s1, a1
                  and          s10, t6, a3
                  mul          s6, s11, s11
                  c.nop
                  and          t1, a3, t3
                  c.and        a5, a3
                  div          a0, s6, t3
                  ori          s0, tp, -1722
                  div          ra, a1, s11
                  c.addi4spn   a5, sp, 432
                  remu         s2, s10, s7
                  remu         s9, a2, sp
                  c.add        s9, a1
                  c.addi4spn   s0, sp, 176
                  c.or         a0, s0
                  c.addi4spn   a5, sp, 992
                  add          s3, a3, s6
                  srl          s11, a3, s9
                  c.mv         a7, a0
                  c.srai       s0, 24
                  c.mv         t6, t4
                  rem          a6, t6, a3
                  c.add        s4, s1
                  andi         tp, s1, 1831
                  nop
                  c.nop
                  c.addi       s10, -1
                  srl          s0, a0, s6
                  c.sub        a4, a2
                  mulhsu       a4, s8, a1
                  mul          s4, a2, a3
                  srl          s6, s7, tp
                  srli         a1, s2, 7
                  mulhu        gp, ra, t2
                  slli         s1, a0, 25
                  c.slli       s2, 17
                  mulhsu       s2, s3, t5
                  c.addi16sp   sp, 80
                  sltu         s8, t6, t0
                  and          s6, a5, t4
                  c.addi16sp   sp, -16
                  c.xor        a1, s1
                  srli         s0, s7, 27
                  srai         s0, s2, 16
                  or           t0, t2, s7
                  xor          a7, gp, s1
                  andi         s8, a3, 268
                  add          gp, t3, s2
                  mulhu        ra, ra, s5
                  c.srli       a0, 24
                  sltu         t2, t5, t3
                  add          s2, s8, a4
                  c.addi16sp   sp, 48
                  slt          s0, a3, t3
                  nop
                  nop
                  c.xor        a0, a3
                  mul          a4, a3, s9
                  sll          t3, a3, s9
                  mul          sp, s11, s7
                  sltiu        t1, a1, -613
                  and          s5, a4, t0
                  xor          a0, a3, a4
                  c.li         a5, 8
                  nop
                  sub          a1, t2, s2
                  sltiu        t1, s7, -1158
                  c.xor        a4, a4
                  or           s11, t4, s8
                  c.li         s0, -1
                  c.addi       s0, -1
                  c.mv         s0, s9
                  c.and        s0, a4
                  sltu         a7, a5, s7
                  c.li         t4, -1
                  rem          zero, s10, zero
                  c.mv         t0, s2
                  c.slli       s8, 13
                  c.li         a4, 7
                  divu         zero, tp, t4
                  sra          zero, s10, s0
                  add          gp, s11, a4
                  c.srli       s0, 26
                  c.add        s4, s5
                  auipc        s5, 604736
                  add          s11, s1, s9
                  c.sub        a0, s1
                  addi         a7, s7, 739
                  slli         s10, s1, 4
                  sltu         s6, a7, a3
                  mulhsu       t6, zero, a1
                  c.xor        a4, a5
                  c.andi       a1, -1
                  sltu         t4, a7, s11
                  c.xor        s1, a1
                  xor          s10, s3, a4
                  sll          s3, s3, t3
                  xori         zero, a7, -99
                  and          t3, s7, a5
                  slti         s6, a7, -1568
                  addi         t2, t5, -1556
                  c.andi       s1, 19
                  c.addi16sp   sp, -16
                  c.slli       t3, 26
                  or           a6, s8, s1
                  c.add        t3, s8
                  mulhu        t3, s9, ra
                  c.srli       a5, 7
                  remu         t3, a0, t2
                  c.addi16sp   sp, -16
                  srli         s2, s9, 19
                  sll          a5, s1, sp
                  sltiu        a5, s0, 905
                  nop
                  addi         s1, s5, 649
                  andi         zero, ra, -1124
                  srai         a5, a2, 20
                  c.add        tp, s5
                  c.mv         t3, sp
                  nop
                  c.li         s6, 31
                  add          s2, t2, a4
                  c.li         a0, 10
                  c.addi       s7, -1
                  srl          s3, s4, s6
                  addi         t2, gp, -1445
                  c.slli       t1, 21
                  c.xor        s0, a0
                  c.addi4spn   a1, sp, 560
                  c.mv         s0, a0
                  andi         a6, a2, -2010
                  div          s7, a4, gp
                  sll          s0, a1, s5
                  remu         gp, t6, gp
                  add          t1, s3, s9
                  c.lui        s1, 30
                  sltiu        s10, t5, 930
                  c.andi       s1, 22
                  c.xor        a4, a1
                  slt          t0, t5, sp
                  addi         t3, s6, -1856
                  addi         s10, gp, -19
                  srl          s8, s11, s7
                  c.and        s0, a2
                  lui          a4, 605551
                  c.or         s1, a2
                  c.xor        s0, a0
                  xori         gp, t3, -504
                  c.add        s1, t1
                  mulhu        gp, a5, a1
                  c.slli       a5, 26
                  divu         s0, s1, ra
                  c.li         t0, 22
                  sltu         t6, s4, t2
                  c.addi       s4, -1
                  c.lui        tp, 28
                  c.srli       s0, 29
                  div          tp, a3, t6
                  rem          a1, t3, zero
                  c.addi16sp   sp, 416
                  c.lui        s10, 31
                  xor          s10, s4, s8
                  add          ra, a0, s5
                  auipc        s6, 475294
                  c.lui        a6, 25
                  c.addi4spn   s0, sp, 624
                  remu         t1, ra, s9
                  srli         a4, s11, 13
                  mulh         s2, gp, t5
                  ori          ra, s11, 1106
                  sll          t6, a6, a7
                  srai         t0, t1, 7
                  sub          s1, t2, a5
                  sll          s0, a0, s1
                  and          a4, s6, t2
                  lui          t0, 785406
                  srli         t4, zero, 0
                  sub          tp, a0, s5
                  slt          t6, s11, t5
                  c.mv         s2, s11
                  c.add        a7, s4
                  xor          t4, s5, t2
                  c.add        s6, a2
                  c.mv         a1, t4
                  mulhu        s8, a1, ra
                  addi         sp, a0, -412
                  add          zero, s7, s4
                  xori         gp, s5, 232
                  slti         s9, s1, -1967
                  and          s10, a0, a3
                  c.mv         s2, s3
                  sub          s0, s9, s9
                  srl          s11, t5, a3
                  c.addi16sp   sp, 336
                  sub          s10, s5, t0
                  sra          a7, tp, s6
                  lui          s0, 270248
                  c.xor        a0, s1
                  xori         a4, s9, -1234
                  c.xor        a0, a1
                  sub          s6, a0, s6
                  or           s0, t3, tp
                  auipc        zero, 456386
                  sltu         sp, s10, sp
                  c.sub        a4, a3
                  nop
                  div          t1, a5, tp
                  c.and        s0, a2
                  nop
                  c.mv         a5, s10
                  sltu         s6, s4, a6
                  c.addi4spn   s1, sp, 192
                  xori         s4, t2, 442
                  slt          s9, t3, s4
                  c.srai       a4, 11
                  srli         a6, t3, 8
                  or           s8, ra, a3
                  mulh         s9, t5, t5
                  c.li         a0, -1
                  or           a4, tp, t4
                  c.or         s1, a0
                  c.slli       a0, 6
                  xor          t1, a7, s6
                  sltiu        t0, t3, 1697
                  c.addi16sp   sp, 192
                  auipc        tp, 150630
                  auipc        s11, 775147
                  ori          a1, a2, 1706
                  mul          gp, a2, s3
                  c.li         sp, -1
                  c.srai       s1, 15
                  rem          s1, s6, a7
                  mulh         sp, a2, s0
                  c.add        a5, s7
                  nop
                  c.add        a6, a7
                  xori         s0, s0, -370
                  andi         a5, s1, 1021
                  mulh         a7, s1, s9
                  c.addi4spn   a5, sp, 640
                  and          s11, a5, a1
                  c.nop
                  andi         a6, a1, -39
                  sll          a7, s7, s5
                  c.addi4spn   a0, sp, 720
                  lui          t4, 297200
                  remu         a0, a2, t5
                  c.xor        a5, a5
                  c.nop
                  c.xor        a4, a1
                  c.srai       s0, 20
                  c.slli       a0, 14
                  sll          gp, s6, s2
                  c.xor        a0, a2
                  sra          s4, a6, s5
                  sra          a5, a7, s5
                  div          s8, s6, a6
                  c.add        tp, t0
                  c.or         s1, s0
                  c.addi4spn   a1, sp, 832
                  divu         a1, t5, t0
                  c.addi4spn   a5, sp, 432
                  c.nop
                  divu         s8, gp, a7
                  mulhsu       zero, sp, t3
                  sub          s7, s7, t4
                  nop
                  nop
                  c.sub        a1, a5
                  c.nop
                  lui          a0, 477873
                  c.srai       a1, 16
                  slli         a4, s10, 1
                  slt          t6, t1, a4
                  c.addi       tp, 23
                  slli         sp, s1, 9
                  or           t6, t0, t1
                  ori          s9, s7, -865
                  sll          sp, t0, a6
                  rem          s4, s2, t6
                  mulhsu       tp, a0, s10
                  c.addi4spn   s0, sp, 992
                  andi         t0, s5, 1151
                  c.lui        t1, 8
                  srl          a4, gp, gp
                  c.li         s5, 5
                  sra          t2, zero, t5
                  srli         zero, sp, 12
                  xor          a5, a0, t4
                  remu         t1, a7, a0
                  div          tp, zero, t2
                  c.andi       a5, 15
                  srl          t0, t2, s7
                  xori         zero, s10, -1865
                  c.andi       s0, 22
                  mulhu        t2, sp, tp
                  c.lui        s2, 26
                  and          gp, a1, s2
                  sra          t6, a2, a6
                  c.li         s5, 16
                  sltu         s11, s7, ra
                  c.andi       s0, 1
                  andi         s11, s5, 1488
                  c.lui        t3, 17
                  auipc        s10, 165090
                  xor          s4, gp, s0
                  slt          s0, t6, t6
                  c.andi       a4, -1
                  mulhu        a1, a6, s0
                  c.nop
                  srai         t2, t6, 11
                  nop
                  divu         a5, t2, t3
                  mul          s1, a0, a2
                  sltiu        a4, t4, 830
                  srli         t3, s10, 3
                  srai         s6, a6, 18
                  c.li         gp, -1
                  mulhsu       a6, a1, a2
                  div          s0, a2, t3
                  c.lui        a6, 6
                  srl          tp, s8, zero
                  c.addi4spn   a5, sp, 272
                  c.xor        a5, s1
                  c.andi       a4, 25
                  srai         s1, a3, 17
                  or           tp, s11, s11
                  sra          s9, s1, s4
                  div          s1, t4, s6
                  c.sub        a1, a0
                  c.addi       tp, 23
                  mulhu        a0, s3, t1
                  c.and        a5, a4
                  divu         tp, s0, s4
                  c.and        s0, s0
                  c.srli       a4, 12
                  c.li         s9, 5
                  srl          s4, s3, t5
                  lui          sp, 221010
                  sltiu        s7, a1, 913
                  c.srai       s1, 7
                  addi         s0, t2, -2027
                  lui          tp, 1039712
                  slt          zero, s5, tp
                  ori          s5, a4, -164
                  c.addi16sp   sp, 32
                  lui          s8, 161159
                  sltiu        t3, t0, -235
                  c.lui        t0, 21
                  c.li         t0, -1
                  c.add        s4, s11
                  ori          gp, ra, 1178
                  c.add        s7, a2
                  c.mv         a4, s10
                  lui          zero, 483118
                  c.nop
                  nop
                  remu         gp, s8, s6
                  rem          sp, s8, tp
                  rem          s0, a0, t3
                  c.add        a4, a4
                  sub          s6, a7, s1
                  add          t3, a1, s11
                  c.srai       a5, 20
                  sra          sp, s4, gp
                  auipc        t1, 811262
                  xor          s2, ra, t6
                  and          t6, s8, t1
                  slti         t3, t4, 1019
                  c.mv         t6, t6
                  xori         tp, gp, 356
                  c.addi16sp   sp, -16
                  slt          a5, s7, a7
                  c.lui        tp, 24
                  sltu         t4, s6, tp
                  sll          tp, s9, s6
                  mulhu        t3, tp, t3
                  ori          t2, s5, 1401
                  srli         a0, t3, 7
                  srai         s3, s2, 9
                  sltu         t6, t3, s5
                  or           s11, a0, sp
                  slti         s10, a6, 1450
                  slt          t1, s7, t6
                  remu         a5, t4, ra
                  slti         a0, t6, -444
                  sltu         ra, s4, a2
                  lui          tp, 265776
                  c.srai       s0, 6
                  c.or         s1, a3
                  mulhsu       s8, s1, tp
                  mulhu        s6, t3, t6
                  mulhsu       tp, s7, s11
                  xori         s4, t1, -784
                  sltu         gp, a6, a2
                  c.addi4spn   a1, sp, 608
                  c.andi       s0, -1
                  div          t0, a7, gp
                  c.mv         t0, t1
                  sra          s7, t3, t0
                  srli         tp, a0, 29
                  slti         s11, s10, 1758
                  rem          s5, t3, zero
                  or           t2, tp, t4
                  xor          gp, s5, t2
                  c.andi       a5, 27
                  c.addi       s10, 6
                  divu         a4, a7, a5
                  sltiu        a7, t1, -1574
                  c.addi4spn   a0, sp, 144
                  andi         sp, t2, 1169
                  c.addi       a5, -1
                  slt          a4, t2, s10
                  slt          ra, t2, a4
                  add          s9, s0, a6
                  andi         ra, s5, 1517
                  divu         s0, t2, t1
                  c.addi16sp   sp, -16
                  xor          s2, t6, s5
                  auipc        t4, 1032787
                  sra          zero, a0, s5
                  sra          s11, zero, s11
                  andi         a6, t4, -1739
                  slli         a0, a5, 2
                  c.and        a4, a2
                  slti         gp, a3, -1081
                  addi         s1, t4, 747
                  c.li         ra, 0
                  c.xor        a0, a2
                  xori         sp, a7, -881
                  sltu         s11, a5, s11
                  add          s11, s10, a0
                  mulh         sp, a1, a1
                  sra          ra, a0, t5
                  c.andi       a0, 7
                  c.addi16sp   sp, -16
                  c.li         s1, 17
                  sra          s10, a7, s6
                  c.nop
                  slt          tp, t3, s1
                  srl          t0, a6, tp
                  c.xor        s1, a3
                  c.add        tp, s5
                  and          s11, a7, t1
                  c.andi       s1, -1
                  auipc        s5, 1001208
                  sltu         s11, a5, a0
                  nop
                  xori         a5, s10, -691
                  c.or         a5, s0
                  c.or         a1, a0
                  mul          ra, a4, ra
                  sltiu        a4, t6, 217
                  srai         s3, s6, 26
                  remu         a6, s5, s0
                  c.addi       s10, 19
                  slti         s4, zero, -208
                  add          s10, s8, zero
                  c.li         a0, -1
                  c.add        t4, s2
                  c.addi       s9, 4
                  auipc        a5, 601075
                  div          s8, s9, t0
                  srai         a7, zero, 28
                  auipc        zero, 950590
                  c.srai       a4, 11
                  c.addi16sp   sp, -16
                  ori          s9, a0, -1110
                  mul          a7, s9, t1
                  c.li         t4, 0
                  c.or         a4, a1
                  c.mv         s8, a6
                  sltiu        zero, tp, -1176
                  sltiu        t2, a3, 1416
                  sltiu        t2, t6, 69
                  xor          t4, t4, a6
                  remu         t6, t4, t4
                  add          t0, t3, t1
                  c.addi       a7, 24
                  remu         gp, s1, a0
                  c.srai       a5, 24
                  slti         t3, s2, -1342
                  srai         ra, s4, 16
                  srai         t6, a0, 16
                  divu         a1, s6, tp
                  c.addi16sp   sp, -16
                  c.srai       s0, 3
                  auipc        s9, 162721
                  mulhsu       s3, ra, t5
                  nop
                  nop
                  c.sub        a4, s0
                  ori          s5, ra, 533
                  c.add        a7, a6
                  ori          s3, a0, 1605
                  c.andi       s0, -1
                  xori         s8, a6, 48
                  ori          a5, s2, -88
                  slti         tp, s11, -2033
                  sltiu        t6, s9, 1823
                  auipc        t4, 611358
                  lui          a1, 828855
                  nop
                  c.addi16sp   sp, -16
                  or           s6, ra, sp
                  lui          s2, 684723
                  andi         tp, sp, -768
                  c.sub        s1, a4
                  nop
                  addi         a5, a4, 1272
                  c.li         t3, -1
                  andi         s5, s7, 500
                  c.lui        t0, 7
                  remu         t2, ra, s0
                  rem          a0, s0, tp
                  andi         a6, t1, 1521
                  remu         s11, s6, t2
                  remu         s7, tp, s8
                  slli         t2, s4, 26
                  c.addi       s7, 5
                  c.addi       t6, -1
                  and          s10, s0, t6
                  c.or         a0, s1
                  c.li         gp, -1
                  c.or         a1, a1
                  c.srai       a4, 10
                  c.xor        s0, a4
                  c.add        s0, t0
                  c.nop
                  addi         s10, sp, 1057
                  c.addi4spn   s0, sp, 528
                  xor          a0, s7, a3
                  mulh         a6, zero, s1
                  c.slli       a4, 4
                  xor          s8, s10, s1
                  slt          t0, tp, s9
                  mulh         s4, s0, s7
                  nop
                  sra          a4, t0, s0
                  c.or         a5, a0
                  addi         t1, s11, 1527
                  xor          tp, s2, a6
                  c.andi       s1, -1
                  sra          s5, ra, s6
                  c.addi4spn   a0, sp, 336
                  sll          a4, a3, a3
                  c.nop
                  c.sub        s1, a1
                  sltiu        t3, a7, -96
                  c.sub        a5, a4
                  slti         s3, s6, 439
                  slt          a4, tp, s1
                  sltiu        s0, s6, 286
                  or           t6, s11, s10
                  c.addi4spn   a1, sp, 880
                  sltu         ra, tp, s11
                  slt          s10, a3, t0
                  mulh         s10, s11, a4
                  slli         s1, a1, 11
                  sra          a6, s2, gp
                  c.xor        a0, a4
                  c.andi       s1, 14
                  mulh         a7, tp, t2
                  c.li         tp, -1
                  c.or         a1, s1
                  c.addi4spn   a4, sp, 192
                  andi         sp, t2, 1765
                  lui          s8, 271622
                  c.addi       t6, 9
                  srl          s7, s4, a2
                  slli         t3, t1, 19
                  c.addi4spn   a4, sp, 64
                  and          t2, s4, a2
                  sltu         a7, a0, a4
                  mulh         s3, t1, t2
                  nop
                  add          s1, s10, ra
                  slt          t3, t2, s6
                  andi         s3, a7, -786
                  andi         s10, s2, -632
                  or           s5, zero, ra
                  xor          t3, a6, s10
                  remu         t2, s4, s2
                  c.slli       a5, 27
                  div          s9, t2, s11
                  c.addi       sp, 14
                  mulh         tp, gp, gp
                  ori          a5, t6, -73
                  remu         t0, zero, s0
                  mul          t4, t5, s0
                  divu         s3, a2, zero
                  div          s6, s7, s10
                  xori         s4, t4, 134
                  mulhsu       s0, s10, sp
                  slt          t2, s2, s8
                  c.addi16sp   sp, 272
                  slli         s8, t5, 10
                  add          a6, zero, sp
                  divu         t1, a4, a5
                  c.add        t4, s8
                  c.addi16sp   sp, 288
                  andi         a7, s0, 166
                  nop
                  or           s0, s4, zero
                  srai         t0, s6, 4
                  remu         t6, s9, s4
                  sub          t2, a2, s3
                  c.addi16sp   sp, 208
                  slli         t3, s9, 11
                  c.srai       a0, 20
                  srl          t3, t5, s5
                  srai         tp, zero, 3
                  slli         a5, s8, 10
                  ori          s9, t3, 1054
                  sltu         a7, s10, s1
                  c.and        s0, a4
                  c.srli       s0, 22
                  c.addi4spn   a1, sp, 400
                  c.li         t2, -1
                  srli         s10, a4, 28
                  c.li         t1, 0
                  xori         a6, sp, -257
                  c.mv         ra, a1
                  divu         s11, a3, s7
                  c.addi4spn   s0, sp, 528
                  remu         s5, a5, s3
                  auipc        t0, 389817
                  slt          s9, s2, zero
                  srai         ra, s2, 31
                  rem          zero, s2, s3
                  c.add        t1, s6
                  sltiu        s10, t3, -813
                  srli         t3, s5, 22
                  c.addi16sp   sp, -16
                  c.xor        s1, a2
                  mul          tp, sp, s11
                  c.addi16sp   sp, 224
                  mulh         s7, sp, s10
                  slti         t1, a4, 1950
                  or           t3, t0, s10
                  c.sub        s1, a5
                  mulh         t1, s1, a2
                  c.addi16sp   sp, 64
                  mul          a1, t5, s5
                  c.add        sp, t5
                  add          t1, a6, t6
                  sub          s8, a7, a5
                  slt          t1, t1, s5
                  c.addi4spn   s0, sp, 368
                  div          a0, sp, ra
                  sra          s7, s10, t3
                  div          a0, s10, a3
                  xor          s4, t2, s11
                  c.li         a0, 30
                  sub          t3, t4, ra
                  c.sub        a4, a1
                  mul          a5, s10, s10
                  remu         t0, a1, a1
                  rem          a4, s7, t4
                  c.add        t0, a7
                  sub          a1, s10, s11
                  c.srli       a0, 4
                  sltiu        a6, a4, 34
                  c.add        s5, a5
                  andi         t3, s6, -94
                  c.slli       s10, 14
                  mulhsu       s0, t6, ra
                  c.srai       a4, 23
                  remu         s2, t1, a7
                  c.srai       a5, 12
                  xor          s9, t3, a4
                  remu         sp, ra, t3
                  c.xor        a1, a3
                  srai         s6, t1, 14
                  divu         t1, s9, t2
                  addi         t0, t3, -445
                  and          sp, a1, a6
                  c.srli       s1, 7
                  srai         a4, t3, 5
                  mulhsu       t2, t0, a2
                  nop
                  add          s3, t3, s0
                  sltu         ra, zero, a4
                  c.xor        a4, a1
                  add          a4, t5, a5
                  divu         a5, t1, s0
                  lui          a0, 584461
                  slt          a4, s6, s0
                  sll          s5, a2, a2
                  remu         s4, t4, a6
                  mulhsu       t0, a2, s8
                  c.addi       s9, -1
                  sra          sp, t0, gp
                  addi         s6, s11, 2004
                  divu         a1, t4, sp
                  c.lui        t0, 21
                  c.andi       a0, -1
                  mulhsu       t4, t4, s0
                  c.addi       s6, -1
                  c.sub        s0, s0
                  remu         a7, s3, tp
                  sltu         tp, a5, tp
                  rem          zero, s2, s3
                  andi         s5, t0, 952
                  auipc        s9, 952634
                  div          ra, s1, t3
                  divu         t6, t4, a6
                  nop
                  c.sub        a0, a5
                  srl          s1, a1, s7
                  remu         s8, zero, s0
                  c.slli       s7, 9
                  c.addi       t4, 31
                  lui          a0, 164823
                  srli         s7, s10, 16
                  c.sub        s0, a1
                  or           s10, gp, a5
                  div          t2, s6, t3
                  mulhu        a1, s3, a5
                  c.srai       a0, 28
                  mulhsu       s7, s8, t3
                  sub          s1, a6, s7
                  c.slli       sp, 5
                  auipc        t3, 572649
                  slti         s1, t6, -936
                  and          s8, a6, a4
                  srai         s0, t1, 4
                  c.add        s1, gp
                  andi         s3, s3, 1211
                  addi         a5, s9, 2032
                  c.and        a4, s0
                  divu         a5, t1, a2
                  and          s4, tp, s3
                  mulh         gp, a2, a1
                  c.or         s1, a4
                  nop
                  srai         t6, a5, 21
                  mulhsu       a7, s5, t6
                  c.add        sp, t3
                  c.and        s1, a4
                  add          a4, a4, a0
                  c.xor        a0, a4
                  c.lui        tp, 28
                  c.addi16sp   sp, 448
                  c.addi       gp, -1
                  c.nop
                  srai         s5, tp, 1
                  mulh         t2, s6, sp
                  c.lui        t0, 30
                  srli         tp, a0, 25
                  slli         zero, s3, 29
                  remu         s7, a4, tp
                  ori          s11, ra, -747
                  divu         a4, t4, t2
                  div          s2, s9, t0
                  mul          a4, s9, gp
                  c.srai       a1, 9
                  or           s6, t4, a2
                  add          zero, t1, s11
                  or           zero, s10, s6
                  auipc        s10, 669225
                  srl          sp, s1, a7
                  slt          sp, sp, s9
                  c.nop
                  add          a5, tp, a7
                  sub          a7, a6, a0
                  slli         t3, gp, 8
                  remu         a7, sp, a4
                  divu         tp, s0, a6
                  c.sub        a5, a5
                  c.add        s0, s6
                  lui          s3, 975818
                  slt          t3, a0, t3
                  c.srli       s1, 16
                  sltiu        ra, sp, 1732
                  and          a0, t6, a6
                  sltiu        s6, s2, -1975
                  mulh         t4, s5, a3
                  ori          t0, a1, 1571
                  sll          s11, t0, s1
                  remu         s5, a6, a4
                  add          a0, a1, s9
                  mulhu        t1, ra, t0
                  c.andi       a5, -1
                  mulhsu       a7, t6, zero
                  lui          a5, 228094
                  c.srli       a0, 24
                  auipc        s10, 935799
                  mulh         s0, s2, ra
                  c.srli       a1, 6
                  add          t0, t0, tp
                  srl          zero, s2, s8
                  addi         s3, t2, 1513
                  mulhu        s1, s7, t5
                  c.srai       s0, 15
                  and          zero, t0, a6
                  c.srli       a1, 21
                  nop
                  slli         t3, s8, 13
                  lui          t2, 351394
                  mul          t3, t1, t3
                  c.addi       s5, -1
                  mulhsu       a6, s5, s0
                  mulh         s1, a3, a2
                  slli         ra, t6, 23
                  c.sub        s0, a1
                  and          s6, gp, a3
                  mul          s5, t5, a6
                  c.add        a4, s3
                  srl          a5, a0, t0
                  andi         s1, gp, -377
                  c.srli       a1, 25
                  and          s9, s6, s10
                  c.add        tp, t5
                  sll          s8, a4, gp
                  c.add        tp, s11
                  mulhsu       a4, t2, t4
                  c.mv         s9, gp
                  ori          s9, zero, -1585
                  lui          a4, 39103
                  srai         s0, s1, 24
                  xor          a5, ra, a0
                  sltu         t0, s0, gp
                  or           s5, s6, t4
                  c.slli       s11, 14
                  slt          s8, s11, a7
                  c.andi       a4, 17
                  c.lui        s2, 30
                  mul          t0, s7, t2
                  mulhu        s11, s10, t0
                  add          ra, a4, a7
                  srli         t4, s11, 26
                  mulhu        s9, ra, tp
                  auipc        s8, 141457
                  addi         s1, t2, 352
                  sub          t2, s4, t4
                  xori         t1, s10, 1166
                  sltu         s10, t2, a0
                  lui          s4, 493037
                  c.mv         s11, gp
                  slti         gp, s10, 1670
                  sll          ra, s3, a3
                  c.sub        a4, a3
                  add          a7, a1, a5
                  rem          s10, a5, s8
                  c.slli       s7, 5
                  andi         a0, s7, -35
                  srl          zero, s3, sp
                  c.sub        s0, a4
                  divu         a7, s9, t6
                  srli         a4, s1, 24
                  mulhsu       sp, s1, sp
                  c.andi       a4, 8
                  c.sub        a5, a4
                  c.and        s1, a5
                  c.slli       s9, 6
                  c.sub        s0, a0
                  or           s5, a7, t0
                  addi         s2, s10, 1457
                  lui          ra, 17326
                  add          t0, s11, t4
                  srai         sp, zero, 27
                  add          s1, s1, s4
                  sll          a4, t3, t1
                  c.slli       t4, 6
                  c.sub        s0, a4
                  srai         s0, t4, 9
                  and          tp, s4, t0
                  divu         s7, sp, s0
                  c.and        a1, a0
                  xori         zero, t6, 1560
                  mul          s3, s7, a4
                  addi         s5, s6, 788
                  c.sub        a0, s0
                  c.xor        s0, a3
                  c.addi16sp   sp, -16
                  c.or         a4, a3
                  sub          s2, s6, t6
                  addi         s4, s11, 1306
                  c.andi       s1, 2
                  ori          a7, a6, -1380
                  c.srli       a4, 11
                  mulh         s7, tp, a6
                  xor          s10, s8, s2
                  mulh         a7, a5, s8
                  c.lui        a7, 4
                  add          t2, s3, s8
                  xori         zero, a7, -189
                  c.addi4spn   a5, sp, 624
                  sll          a1, s4, t4
                  c.lui        gp, 31
                  c.srli       s0, 6
                  c.and        s0, a0
                  auipc        s7, 263064
                  ori          a4, t0, -953
                  c.srai       a5, 13
                  slt          s11, s8, a0
                  add          t0, a0, s0
                  srli         t6, s10, 20
                  c.lui        a5, 29
                  c.mv         a7, s2
                  slli         s11, s4, 28
                  c.sub        a5, a4
                  c.srai       s1, 1
                  divu         s5, t4, t5
                  mulh         s10, a5, sp
                  and          a1, a2, gp
                  remu         s1, a2, t5
                  sll          s0, t1, a4
                  slt          tp, a3, t3
                  c.sub        a5, a1
                  c.slli       ra, 7
                  c.slli       t1, 7
                  slti         s4, gp, 154
                  mulh         s9, s7, a4
                  c.srai       a1, 14
                  sub          a6, a0, s3
                  c.lui        t1, 25
                  slt          t4, s6, s0
                  c.and        a0, a3
                  slli         s9, s6, 2
                  sub          s1, s3, t1
                  sltu         s1, t3, gp
                  nop
                  xor          t3, sp, t6
                  mulh         s7, s4, a4
                  c.addi       ra, 28
                  c.sub        a4, a2
                  c.xor        s0, a0
                  c.addi       t6, -1
                  c.andi       s1, 20
                  c.srai       a4, 16
                  andi         sp, a1, 301
                  sltiu        s11, tp, -303
                  slti         s10, s0, -725
                  sltiu        sp, a2, -1938
                  c.sub        s0, a5
                  srl          s1, t3, s5
                  c.xor        a0, a4
                  or           s5, s9, t5
                  c.addi16sp   sp, 144
                  c.mv         t6, s9
                  srai         s4, t2, 10
                  srl          t0, s5, s4
                  c.slli       a6, 6
                  xor          s6, s5, gp
                  c.slli       s0, 27
                  mul          ra, a7, sp
                  div          a4, t1, t3
                  rem          a4, s1, s0
                  c.addi       t2, 7
                  mulh         tp, t5, zero
                  c.nop
                  c.srai       a1, 7
                  rem          s6, t1, s4
                  slti         gp, zero, 599
                  c.and        a1, a0
                  mulhu        s1, a4, ra
                  c.add        ra, ra
                  divu         t1, a3, a7
                  ori          gp, zero, 662
                  remu         ra, s0, a2
                  c.addi       tp, -1
                  c.and        a0, a5
                  sub          s1, t2, s2
                  nop
                  sub          s6, sp, s0
                  c.mv         s11, a5
                  lui          t6, 517219
                  slti         s8, t1, -165
                  lui          a4, 703011
                  c.nop
                  rem          a6, t3, t3
                  addi         a5, a2, -466
                  slti         s3, t2, -454
                  sll          a0, s3, a5
                  c.andi       a0, 26
                  mulh         s1, s9, t5
                  mulh         s0, t1, a4
                  or           t0, t6, sp
                  remu         sp, a0, t0
                  srl          s1, zero, a3
                  auipc        t3, 958978
                  c.and        s1, a1
                  nop
                  c.lui        s0, 27
                  slt          t4, a3, s2
                  c.addi16sp   sp, -16
                  slti         a7, s6, 1488
                  andi         a1, s4, 1667
                  mulhu        a4, s3, s3
                  auipc        ra, 1002962
                  sub          s4, a3, s10
                  c.and        s0, a0
                  c.sub        a5, a1
                  srli         s6, s10, 13
                  c.andi       s1, 2
                  ori          tp, a2, 406
                  sltu         s2, a2, a5
                  sub          s9, a1, a6
                  c.or         a4, a2
                  sra          a4, gp, s7
                  srli         sp, tp, 11
                  c.nop
                  mulhu        s7, ra, t2
                  c.srai       a5, 8
                  or           t3, gp, t5
                  sub          t2, s0, a0
                  slti         s11, zero, -541
                  sra          zero, a5, t1
                  and          t1, a1, s8
                  slli         s1, s7, 21
                  mulh         s0, zero, s10
                  sub          tp, t6, t6
                  slti         a5, a5, 1786
                  mul          s9, a0, tp
                  slli         t4, t6, 0
                  or           t4, t0, s9
                  mulh         sp, t0, a0
                  lui          s4, 566087
                  slli         gp, s10, 28
                  nop
                  srai         s6, t1, 14
                  c.srai       a5, 12
                  srai         a6, a2, 22
                  mulh         s5, s7, a3
                  srli         s10, t2, 6
                  xori         s9, tp, 583
                  sltiu        sp, a5, -244
                  xor          a4, a5, s6
                  srli         t2, s1, 6
                  srl          t0, t3, s10
                  c.add        gp, gp
                  auipc        s11, 183803
                  div          s0, s7, s4
                  c.mv         gp, s3
                  c.addi       s4, 10
                  nop
                  mulhsu       s11, t4, a1
                  c.addi4spn   s1, sp, 528
                  c.srli       s0, 2
                  c.slli       s2, 29
                  slt          s8, t6, sp
                  auipc        s3, 40041
                  c.or         s0, a0
                  slti         t1, s11, 1916
                  c.slli       t4, 4
                  c.mv         a1, a2
                  c.srai       a4, 25
                  sra          t3, a3, gp
                  rem          a4, s11, t2
                  c.srli       a4, 25
                  c.andi       a0, 13
                  remu         s1, sp, a7
                  addi         s11, t4, -644
                  sll          t1, s10, zero
                  add          ra, t5, a1
                  sra          gp, s11, s8
                  sll          tp, s6, s3
                  c.or         s0, a4
                  mul          tp, t3, sp
                  slli         s6, t5, 14
                  sll          s11, s1, t6
                  sub          a1, gp, ra
                  c.andi       a0, -1
                  srli         a7, a4, 22
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s7, 0xd98d2ac8
                  li           a4, 0xffffffff
                  li           s9, 0x0
                  li           t4, 0x0
                  li           gp, 0x80000000
                  li           sp, 0x80000000
                  li           t2, 0xc6f9d64c
                  li           tp, 0x0
                  li           a0, 0x0
                  lui          s9, 57068
                  sub          s7, tp, t2
                  addi         t4, a0, -1739
                  addi         tp, tp, 1544
                  sub          gp, s9, tp
                  add          a0, s7, t2
                  rem          a0, s7, a4
                  nop
                  mulhsu       a4, a4, a0
                  rem          a4, t4, ra
                  mulhsu       sp, tp, a0
                  divu         tp, a4, sp
                  addi         ra, s9, -1795
                  nop
                  nop
                  add          a4, s9, t2
                  div          gp, tp, tp
                  add          ra, ra, t2
                  lui          s9, 1004391
                  div          a4, t4, t4
                  nop
                  add          ra, a0, t4
                  mul          t2, a4, a0 #end riscv_int_numeric_corner_stream_18
                  mulhu        s0, zero, s6
                  c.andi       a4, -1
                  c.addi16sp   sp, -16
                  sll          sp, sp, a6
                  c.li         t6, 8
                  sll          t0, a1, a2
                  c.xor        a5, a3
                  remu         a1, zero, sp
                  c.lui        a1, 5
                  c.sub        a5, a5
                  sltu         s11, a7, a6
                  xor          s6, s11, s2
                  nop
                  slti         gp, s11, 1389
                  remu         t6, t1, zero
                  addi         s2, s3, -1870
                  sltu         t1, t5, s2
                  sll          s10, a7, t5
                  c.add        s11, a0
                  sra          t6, s7, t3
                  c.mv         t6, s0
                  mulhsu       s6, t4, t0
                  srai         gp, s7, 0
                  c.slli       tp, 26
                  c.addi16sp   sp, -16
                  mul          gp, s8, a0
                  c.mv         s8, a5
                  slli         zero, t6, 2
                  rem          tp, s8, sp
                  sub          s11, ra, s2
                  slli         s1, a1, 26
                  c.addi       s6, -1
                  c.xor        s1, a3
                  c.andi       a4, -1
                  c.xor        a0, a3
                  sub          gp, ra, t1
                  mulhsu       sp, t4, s1
                  slt          s0, s4, s6
                  mulhsu       t0, a4, s0
                  c.lui        s4, 31
                  sltiu        s2, zero, -808
                  c.slli       s3, 8
                  c.nop
                  c.sub        s0, s0
                  c.srai       a5, 20
                  mul          s4, a6, a3
                  slt          s0, s10, s6
                  slli         s10, s2, 24
                  c.addi16sp   sp, 112
                  sltu         tp, s9, t4
                  sub          t1, t4, s9
                  c.lui        s2, 19
                  c.slli       tp, 11
                  srl          tp, s4, a2
                  add          s0, tp, a4
                  sub          tp, a0, sp
                  c.add        s5, s1
                  or           t2, s6, s1
                  c.add        s4, s3
                  sub          s5, ra, ra
                  c.srai       s0, 19
                  c.li         s9, -1
                  sll          s1, sp, s3
                  sltiu        gp, gp, -1340
                  c.nop
                  c.sub        a1, a3
                  c.srli       a0, 6
                  nop
                  sra          gp, a5, s6
                  andi         a6, a5, -3
                  c.nop
                  slti         a5, sp, 734
                  c.mv         t0, s9
                  xor          s2, ra, s8
                  sltiu        s3, t6, -464
                  sub          s11, zero, s1
                  mulh         a0, a2, s5
                  auipc        s8, 667314
                  c.or         a5, a2
                  c.li         sp, -1
                  or           t4, t1, a7
                  nop
                  sll          tp, s8, a4
                  ori          s7, t4, 1185
                  slti         s1, a2, -733
                  c.xor        a1, a1
                  c.lui        a0, 14
                  sltiu        t3, t4, -1588
                  sltiu        a4, s2, 1449
                  or           s6, s5, tp
                  c.srai       a5, 3
                  mulhsu       a4, t2, s1
                  c.or         s0, a4
                  ori          a6, s9, -454
                  auipc        s7, 46623
                  xor          s2, t2, a2
                  c.mv         tp, ra
                  c.addi4spn   a1, sp, 912
                  c.andi       s0, 19
                  sltu         a7, a7, a7
                  c.srli       a4, 16
                  c.add        a6, a5
                  c.sub        a5, s1
                  c.addi       t1, -1
                  xor          t3, s6, a6
                  sra          s7, a3, s9
                  c.xor        a1, s1
                  c.addi       s7, 5
                  c.srai       s1, 17
                  sltiu        s10, t4, 183
                  c.andi       a0, -1
                  c.slli       sp, 5
                  c.srli       s1, 29
                  or           ra, a1, t2
                  c.or         a1, a1
                  c.xor        s1, a5
                  srl          a1, ra, s5
                  sltiu        a4, s7, -1055
                  c.addi4spn   a4, sp, 656
                  mul          t2, zero, a6
                  remu         s7, s4, s8
                  ori          a5, a5, 303
                  sltu         a0, a1, a1
                  xor          gp, s7, s11
                  slt          sp, t2, t2
                  remu         t4, a3, t0
                  slti         zero, t0, -578
                  xori         s5, s4, 508
                  div          s3, tp, s9
                  lui          t2, 161377
                  c.andi       s0, 3
                  c.lui        t4, 23
                  srli         gp, a0, 14
                  rem          a4, s0, s1
                  or           s7, t4, s7
                  add          ra, gp, s7
                  or           s3, s11, zero
                  or           s9, s5, t0
                  c.addi       a6, -1
                  sll          t4, t5, s7
                  remu         s0, a6, s7
                  srai         a5, s4, 24
                  xori         a6, s4, -1909
                  c.addi4spn   s0, sp, 864
                  sltu         a1, s10, s8
                  c.addi       s2, -1
                  c.srai       s1, 12
                  xor          s3, s5, a1
                  c.srli       a4, 3
                  c.slli       s3, 24
                  sub          s11, s7, t6
                  mulhu        t1, s8, gp
                  xori         s5, s2, 449
                  c.xor        a5, a1
                  srli         s9, s7, 31
                  sltu         s4, s3, s7
                  div          sp, s9, a5
                  c.nop
                  sltu         t6, t5, sp
                  xori         s10, t6, 230
                  c.add        tp, a3
                  c.nop
                  c.lui        a6, 18
                  sltu         s10, t4, t4
                  c.addi16sp   sp, 256
                  c.lui        t1, 30
                  c.mv         t3, s11
                  c.nop
                  c.mv         s5, a0
                  addi         s10, t4, 2016
                  c.srli       a5, 1
                  c.add        s0, a6
                  sltiu        t0, t5, 166
                  c.srai       s1, 29
                  c.nop
                  sub          t4, s4, a2
                  xori         s9, s1, -178
                  sltu         s1, a6, s10
                  c.or         a0, a5
                  xor          s11, t2, t0
                  c.lui        a6, 27
                  srli         t0, s11, 5
                  sltu         s0, s4, gp
                  c.andi       s0, 27
                  remu         s11, a3, t1
                  nop
                  lui          s7, 347892
                  remu         s8, a4, s11
                  slti         ra, a5, 1120
                  auipc        s8, 1026858
                  rem          a6, t0, a2
                  slti         t6, a3, 691
                  c.or         a5, a0
                  mulhu        s8, a3, sp
                  c.srai       s0, 10
                  mulhu        t4, s11, t3
                  c.mv         s3, gp
                  srai         tp, s3, 8
                  mulhsu       t4, a6, s11
                  sll          tp, a7, gp
                  c.mv         a7, t6
                  or           s8, t5, zero
                  c.xor        a5, a4
                  slli         s7, s1, 14
                  c.andi       a0, -1
                  slli         s9, a3, 3
                  addi         s4, t2, 1435
                  c.mv         t2, gp
                  c.addi4spn   s1, sp, 208
                  sltu         tp, s3, zero
                  c.lui        t3, 23
                  c.mv         s10, t0
                  add          t0, s9, s3
                  c.lui        t0, 14
                  rem          s4, ra, s8
                  srai         ra, s4, 7
                  sra          s1, s3, t0
                  sll          a0, t4, a5
                  c.addi4spn   a1, sp, 624
                  xori         t2, s2, -1140
                  c.or         a5, a3
                  c.slli       t4, 21
                  andi         ra, s9, -936
                  xor          s5, gp, s10
                  c.addi       ra, -1
                  srl          t4, s3, a1
                  srli         s8, a5, 24
                  c.sub        a4, a5
                  mulh         sp, s8, a7
                  remu         a4, a0, a5
                  slli         t4, s4, 6
                  remu         a5, s5, a0
                  c.addi16sp   sp, -16
                  c.li         s3, 2
                  sltu         t1, t5, t0
                  c.andi       s0, -1
                  sll          s4, s3, gp
                  div          t0, s7, t4
                  c.srai       a5, 8
                  xor          a6, a7, t2
                  c.addi16sp   sp, 448
                  ori          s2, t2, -978
                  mulhsu       a4, s6, s0
                  c.sub        s0, a1
                  srai         t6, t3, 18
                  c.li         a5, -1
                  div          t3, t5, s2
                  c.slli       a0, 27
                  mul          t3, ra, a5
                  slt          t0, t5, s6
                  sltu         s8, sp, s0
                  c.srli       s1, 12
                  add          sp, a7, s0
                  c.add        t2, a6
                  c.addi       s11, -1
                  slti         sp, a4, 1686
                  srli         s0, a7, 4
                  c.or         a4, a1
                  mul          a5, s11, a1
                  c.and        a0, s0
                  slt          s3, t0, t4
                  sra          t3, a0, sp
                  mulh         tp, s3, s3
                  c.nop
                  c.addi16sp   sp, 112
                  c.lui        t1, 30
                  xor          t2, t2, a6
                  or           ra, a2, a5
                  sub          s3, t0, t4
                  mulhsu       a6, a7, a0
                  remu         a4, t5, s3
                  auipc        s6, 168988
                  srli         s3, t2, 19
                  xor          a6, zero, s11
                  c.xor        a4, a2
                  rem          t0, t1, t5
                  sll          s3, t0, s9
                  c.slli       gp, 30
                  sub          t3, s11, gp
                  c.srli       a0, 7
                  addi         t2, a7, 869
                  c.nop
                  c.nop
                  c.srai       s0, 19
                  c.xor        s0, a3
                  sltiu        s4, s8, 2007
                  andi         s0, s0, 37
                  auipc        sp, 285057
                  c.add        s9, a0
                  auipc        s10, 252260
                  andi         gp, ra, 1747
                  slt          tp, a6, t1
                  slti         zero, t6, -1442
                  and          t3, sp, t4
                  srli         zero, s3, 31
                  c.srai       a4, 18
                  add          s8, s3, s6
                  andi         s0, t2, 898
                  c.sub        s1, a5
                  c.lui        s0, 15
                  xor          s8, s5, s1
                  sltiu        a5, s0, -769
                  c.sub        s1, a0
                  andi         s3, s7, 652
                  c.or         s1, a3
                  sltu         a0, a7, s3
                  lui          t0, 1010088
                  div          t4, a7, s11
                  c.lui        t1, 6
                  div          s0, tp, tp
                  nop
                  c.addi       t2, -1
                  divu         a5, tp, a3
                  and          t4, a1, s4
                  ori          a0, a5, -935
                  auipc        a5, 814258
                  slt          s7, s4, s2
                  mulhu        t1, sp, a3
                  c.nop
                  and          sp, zero, t2
                  c.add        t3, t2
                  sltu         s1, a5, s5
                  div          s3, s6, gp
                  sll          s6, s5, s6
                  and          s9, a4, sp
                  srli         s1, t2, 16
                  mulhu        s4, s2, t0
                  c.srli       a4, 1
                  c.add        s6, t2
                  or           s0, ra, tp
                  c.or         a5, a0
                  c.xor        a0, a1
                  c.addi4spn   a5, sp, 736
                  add          a4, t4, t3
                  auipc        s0, 610771
                  mul          a1, tp, s3
                  srli         sp, s10, 6
                  c.add        t3, a0
                  sra          s5, s2, a3
                  c.slli       s0, 30
                  srai         s9, s0, 27
                  ori          ra, s2, -140
                  c.addi16sp   sp, 192
                  xori         s6, s8, -608
                  c.or         s0, a5
                  andi         gp, ra, -1263
                  sub          a1, s5, s0
                  xori         t3, s5, -636
                  c.nop
                  c.addi       s11, 26
                  c.and        a4, a5
                  slli         t0, s0, 19
                  c.srai       s1, 29
                  mul          a1, s9, t2
                  sra          s0, s1, t4
                  c.and        a0, a4
                  divu         zero, s2, s2
                  c.andi       a4, -1
                  ori          s9, a0, -824
                  c.sub        s1, a4
                  lui          ra, 1021634
                  sub          s1, a7, t3
                  slli         s6, t3, 17
                  addi         t2, t3, -1586
                  srl          a5, s3, a3
                  c.add        s0, sp
                  addi         t4, s4, 284
                  c.srai       a0, 29
                  mulhsu       s4, s10, gp
                  div          s5, a2, t1
                  c.or         s0, s1
                  slt          s10, a2, gp
                  srai         s1, t4, 14
                  add          a4, t4, s6
                  c.and        s0, s1
                  andi         sp, a1, -774
                  slt          a7, s8, s5
                  or           s1, s8, a2
                  c.addi16sp   sp, -16
                  sltu         s5, zero, t6
                  xori         a5, t0, 1586
                  c.or         s0, a2
                  add          s10, s2, a0
                  divu         t0, s4, a3
                  add          a1, ra, t2
                  c.xor        a4, s0
                  sra          sp, gp, s4
                  c.sub        s0, a3
                  xor          tp, s4, s4
                  c.and        s1, a4
                  sltiu        a7, a2, 1484
                  add          sp, t2, s4
                  xor          t0, a3, s2
                  ori          s1, s9, -695
                  c.addi4spn   a4, sp, 704
                  mulh         s6, a2, a2
                  c.or         a0, s1
                  remu         a5, s7, a6
                  slt          a5, gp, a4
                  xori         s1, ra, -943
                  c.nop
                  addi         gp, zero, 427
                  nop
                  div          a4, s4, a5
                  div          sp, s3, a6
                  xor          ra, s1, tp
                  sltiu        s4, s5, -1070
                  remu         a6, s8, t3
                  c.addi       s6, 23
                  srai         t1, s3, 17
                  c.or         a4, a1
                  divu         a4, s0, s8
                  divu         gp, s6, s9
                  c.srai       a1, 3
                  sltiu        t0, a6, 1074
                  c.or         a4, a5
                  sltiu        s9, a6, 1199
                  div          a4, s8, a6
                  add          s4, s9, t4
                  sltiu        s0, t6, -1096
                  c.or         s1, s0
                  c.addi4spn   a4, sp, 416
                  c.and        s0, s1
                  c.li         ra, -1
                  c.sub        s1, a0
                  mulhu        a6, t5, sp
                  c.or         a5, a2
                  c.andi       a5, -1
                  and          tp, s2, s6
                  add          zero, s11, zero
                  slti         s6, t5, 1753
                  c.add        s0, s11
                  c.nop
                  remu         s8, s0, sp
                  andi         a6, t0, -549
                  ori          s2, s10, -842
                  srl          tp, s1, a4
                  c.addi16sp   sp, 16
                  c.srai       a4, 25
                  divu         t3, s1, a2
                  c.andi       a4, 3
                  c.addi       s4, 28
                  rem          a5, s7, s5
                  div          a0, s8, s0
                  slt          t1, s11, s7
                  c.slli       s11, 28
                  mulh         t2, s7, s10
                  mulhu        s8, a5, zero
                  srl          a5, a3, a4
                  mul          s5, s5, a6
                  sltiu        t4, a4, 2002
                  slli         t6, gp, 19
                  srl          t4, sp, a3
                  c.addi16sp   sp, 432
                  c.srli       s1, 17
                  c.mv         a5, a0
                  remu         t6, a0, s7
                  remu         gp, s2, t0
                  andi         t4, s7, 1207
                  addi         s3, ra, 339
                  c.addi16sp   sp, -16
                  c.sub        a1, a3
                  slt          t0, s5, t0
                  slti         a6, t6, 621
                  slt          ra, t1, t0
                  c.andi       a0, -1
                  sra          s2, s3, s6
                  c.li         gp, -1
                  lui          s11, 7759
                  c.lui        s0, 15
                  xor          t6, a0, a6
                  slt          a1, a1, t1
                  c.addi       t4, 17
                  sll          s4, a1, s3
                  ori          s10, s9, -1820
                  add          s0, s10, t2
                  slli         s10, ra, 31
                  c.or         s0, s0
                  sub          s6, sp, s8
                  sub          sp, zero, s0
                  c.lui        t1, 3
                  auipc        ra, 881608
                  srl          s8, a3, t5
                  rem          t4, s4, a6
                  c.and        s1, a0
                  c.addi16sp   sp, -16
                  srl          a0, t4, gp
                  div          s0, s5, s4
                  c.addi4spn   a5, sp, 80
                  srai         a1, ra, 30
                  xori         sp, t4, 241
                  c.slli       t1, 17
                  rem          s4, tp, a2
                  addi         t4, a1, -98
                  add          a5, s5, sp
                  c.add        tp, t2
                  srl          s0, s3, s1
                  mulhsu       a4, a0, s1
                  c.xor        a1, a5
                  srli         s9, a2, 16
                  srai         s7, s2, 11
                  divu         gp, t3, s4
                  c.andi       s1, -1
                  srli         s0, a2, 12
                  xori         s7, a1, 2043
                  divu         s7, t5, a7
                  srli         a1, t5, 25
                  add          s8, t2, s4
                  slt          t3, s0, s3
                  addi         s11, s2, -1923
                  or           a5, gp, a2
                  srai         tp, t2, 13
                  lui          s8, 939225
                  srl          t6, a4, s10
                  c.srai       a1, 28
                  divu         ra, a6, t3
                  c.and        a5, a3
                  c.mv         t0, tp
                  slti         zero, a0, -1274
                  c.addi16sp   sp, 144
                  lui          s1, 790056
                  sltiu        zero, a7, 461
                  rem          s5, a7, s8
                  c.slli       sp, 29
                  rem          a0, s8, s11
                  sltu         t3, t5, t0
                  add          s3, a0, s4
                  addi         t4, t1, 769
                  c.addi       t2, 14
                  remu         ra, s11, s4
                  sltu         t2, t4, a4
                  andi         s10, s9, 334
                  sra          s6, t0, tp
                  add          zero, s10, s1
                  c.srai       a0, 17
                  div          s4, t4, a6
                  c.or         s1, a3
                  c.srai       s0, 10
                  c.xor        a4, s1
                  xor          s11, t5, s8
                  slti         t4, s5, -822
                  divu         s0, s3, s1
                  c.slli       sp, 24
                  rem          s2, a3, s6
                  c.li         s5, 15
                  addi         a4, zero, -1159
                  c.slli       gp, 26
                  c.li         t1, 10
                  c.and        a0, a1
                  c.addi4spn   s0, sp, 32
                  c.mv         a5, s5
                  div          s8, s1, s5
                  c.li         t2, 23
                  slti         s4, s10, 1566
                  xori         a6, t6, 1925
                  c.andi       a5, -1
                  sub          s4, a3, a6
                  xor          t3, s0, a5
                  xori         s11, s6, 1444
                  nop
                  c.nop
                  sltu         a5, s0, a0
                  srli         a5, s4, 20
                  c.xor        a5, a2
                  srai         t6, s1, 16
                  c.xor        a1, a3
                  mulhu        s7, s11, s3
                  c.sub        s0, a2
                  sltu         t1, t4, t1
                  c.nop
                  c.nop
                  slli         t3, a6, 14
                  c.mv         sp, s10
                  c.nop
                  c.srli       a0, 3
                  remu         a6, ra, s9
                  sub          s5, t3, t2
                  rem          s4, sp, a0
                  andi         s2, a4, -14
                  c.or         a4, a0
                  slti         s6, s2, 1228
                  remu         s6, t3, t4
                  slt          tp, t4, a4
                  sra          s11, t4, zero
                  slt          t6, zero, s2
                  c.mv         s9, a7
                  auipc        s0, 679888
                  c.sub        a0, a2
                  addi         s6, s1, 853
                  c.add        a5, t2
                  c.lui        ra, 9
                  xori         s1, s7, 1463
                  c.xor        s0, a2
                  sltu         a5, t0, t5
                  srl          a1, t2, t2
                  c.and        s1, a4
                  c.add        a4, s8
                  c.addi16sp   sp, -16
                  slt          s8, zero, t1
                  c.xor        a0, a5
                  mulhsu       a6, a7, s10
                  sub          s8, s10, s5
                  sll          a6, s3, gp
                  nop
                  c.li         a5, -1
                  mul          s8, s5, zero
                  c.li         t6, 1
                  mulhsu       t4, zero, t4
                  sltiu        s4, a7, 128
                  andi         s9, s4, 1652
                  slt          s1, sp, t2
                  slli         tp, s6, 18
                  sra          a1, t0, s2
                  c.addi       ra, 26
                  c.addi       a0, -1
                  remu         s5, s6, s3
                  add          s1, s1, s1
                  c.addi       s1, -1
                  c.andi       a5, 23
                  sll          tp, a7, s11
                  mul          a7, a0, a6
                  and          s9, a2, ra
                  mul          ra, s3, a0
                  c.addi       t4, -1
                  sub          s6, s8, s3
                  srli         s0, tp, 31
                  c.andi       a0, -1
                  sltu         s1, gp, a0
                  slt          sp, t0, a6
                  divu         gp, s5, t0
                  srl          a4, s0, s7
                  srl          a0, s10, a2
                  c.xor        a4, a1
                  c.srli       a5, 26
                  c.lui        t0, 9
                  c.and        a4, s0
                  ori          s2, t5, 1517
                  c.or         s1, a5
                  ori          t6, s8, 1140
                  c.addi16sp   sp, -16
                  slti         gp, s3, 1705
                  c.addi16sp   sp, 448
                  remu         a0, s8, t6
                  srli         s7, s0, 25
                  or           t6, s11, sp
                  lui          a4, 410997
                  xori         s8, t6, -1779
                  sra          s11, a0, a7
                  c.nop
                  sltiu        a0, s3, 768
                  mulhu        s9, t4, a7
                  c.nop
                  add          t3, a0, s11
                  rem          s6, tp, s6
                  c.addi4spn   a4, sp, 208
                  sra          t3, t5, a0
                  sra          a5, t3, a2
                  slti         s8, t5, -605
                  div          s9, t4, t6
                  c.add        t3, a6
                  srl          s7, zero, t1
                  srai         s7, a1, 9
                  or           s0, a7, t3
                  srli         s2, gp, 3
                  c.lui        s1, 12
                  addi         s1, s2, 1226
                  c.and        a1, a2
                  slli         sp, t5, 3
                  slt          a6, a1, a1
                  c.or         a5, a3
                  sra          a7, s3, a2
                  xor          tp, s1, s8
                  c.lui        s6, 17
                  xori         t3, tp, 687
                  c.addi       s8, -1
                  rem          sp, s6, ra
                  divu         s9, s5, zero
                  c.add        a1, a1
                  c.sub        a4, s1
                  nop
                  c.xor        a1, s0
                  sll          t3, s10, a5
                  c.andi       a1, 26
                  slt          s4, t0, s4
                  mulhsu       s5, sp, s4
                  srai         a4, s8, 17
                  sll          ra, gp, s11
                  sltu         s1, s2, t5
                  rem          sp, tp, s2
                  slti         s1, a2, -22
                  c.addi16sp   sp, -16
                  sltiu        t1, a2, -9
                  mulhu        a5, gp, s4
                  c.sub        s0, a2
                  c.and        s1, a1
                  srl          s1, s1, a2
                  auipc        s2, 984369
                  remu         ra, sp, gp
                  c.add        a7, gp
                  c.and        a5, s1
                  c.nop
                  sltu         s7, s5, a4
                  c.sub        a0, a5
                  c.or         a5, s0
                  sub          t2, tp, s10
                  nop
                  c.andi       a1, 13
                  mul          a5, s10, a4
                  andi         s3, t3, 2024
                  c.add        t6, t0
                  sub          t0, s1, t2
                  sra          s7, s7, t6
                  slti         s8, s10, 1109
                  sltiu        t4, sp, -480
                  sll          s8, a7, a4
                  mul          a0, a2, a4
                  xori         t0, s1, -56
                  sltu         gp, sp, a6
                  add          s1, s1, s11
                  slt          s1, s4, a6
                  sub          s2, s3, a7
                  c.lui        t3, 18
                  c.lui        a1, 16
                  mulhu        ra, s4, a2
                  mulhu        gp, t4, a2
                  sltu         a7, gp, a0
                  slli         s2, t3, 8
                  divu         s11, s3, zero
                  or           a6, s11, s11
                  c.addi16sp   sp, 96
                  c.sub        a1, a1
                  andi         a5, sp, -1912
                  slli         a0, gp, 1
                  srli         t0, a7, 19
                  mul          s7, sp, t6
                  sll          s11, s9, s9
                  lui          s10, 920268
                  c.or         a1, a1
                  andi         s3, zero, 1453
                  lui          a5, 355974
                  c.addi16sp   sp, 224
                  c.lui        s1, 17
                  div          t2, t3, s10
                  nop
                  mul          t6, a2, t0
                  remu         s9, a1, s1
                  c.srai       s1, 3
                  sub          sp, t1, a3
                  sltiu        a4, ra, -321
                  sltiu        s4, s8, 1373
                  c.addi16sp   sp, -16
                  srl          s7, t3, t2
                  c.addi       s11, -1
                  c.or         a0, a1
                  nop
                  slli         s7, s8, 21
                  andi         t3, sp, -398
                  c.addi16sp   sp, 32
                  c.li         s3, 22
                  sltu         s11, a0, t0
                  andi         s9, gp, -648
                  sra          t2, tp, ra
                  c.addi       s7, 14
                  xor          t3, t6, sp
                  xori         a7, s6, 467
                  c.or         s1, a1
                  c.nop
                  xor          t2, s9, a6
                  rem          s7, tp, a2
                  add          s3, a2, s3
                  srl          s11, a0, s10
                  srli         a7, s6, 1
                  c.and        a0, s0
                  divu         s4, t1, s4
                  c.mv         s5, s7
                  divu         a0, a5, a2
                  srli         zero, a2, 3
                  remu         s6, s8, ra
                  srl          a0, t6, a2
                  add          s2, t3, a7
                  divu         s2, a7, gp
                  c.li         s6, 6
                  c.xor        s0, a0
                  c.lui        t4, 21
                  srai         zero, s1, 4
                  srai         gp, a2, 29
                  srl          a5, s1, s3
                  add          s4, s11, zero
                  nop
                  divu         a0, s0, a4
                  ori          s2, s0, 1446
                  mul          s1, s4, a1
                  slli         a1, s11, 21
                  c.li         s9, 31
                  addi         t3, s5, -444
                  sra          s6, s6, a6
                  addi         s4, t3, 2009
                  c.li         gp, 4
                  mulhu        t4, a1, s2
                  c.addi16sp   sp, 352
                  c.srli       a5, 19
                  andi         t3, t0, 335
                  add          a5, s10, t4
                  mul          ra, sp, a0
                  slti         s10, s9, 1592
                  and          a6, a2, s7
                  addi         zero, t3, 750
                  ori          t6, gp, 748
                  mulhsu       tp, s8, a5
                  c.addi       s11, 10
                  srli         s9, a4, 18
                  c.mv         t1, sp
                  add          s0, a7, a7
                  c.nop
                  auipc        zero, 25890
                  sltu         s3, s9, t1
                  c.addi16sp   sp, -16
                  or           sp, tp, t2
                  c.or         a1, a4
                  c.slli       tp, 31
                  sra          s4, t0, s4
                  auipc        s5, 598709
                  c.li         a1, -1
                  c.and        a0, a0
                  c.xor        s0, a2
                  c.slli       s6, 28
                  c.mv         s8, gp
                  sltu         s6, s2, a0
                  xor          t0, s6, s4
                  lui          a5, 1048220
                  remu         t6, t4, s10
                  mul          sp, a1, s10
                  c.slli       s1, 24
                  c.xor        a1, a3
                  auipc        a6, 286732
                  srai         s9, s6, 6
                  slli         s4, t6, 0
                  slti         a5, s4, -2003
                  divu         s6, a5, s9
                  c.srai       a1, 15
                  c.srli       a5, 13
                  c.srli       a5, 21
                  srai         s3, tp, 30
                  c.xor        a5, s1
                  c.srli       a5, 31
                  auipc        t3, 533137
                  sll          s4, a3, t0
                  slli         zero, s7, 18
                  c.andi       a5, 11
                  sra          a0, s9, t1
                  srl          s6, gp, a3
                  c.slli       a0, 9
                  mulh         tp, s0, s1
                  lui          s1, 530309
                  and          a6, ra, zero
                  ori          t0, s9, 303
                  srli         t1, t2, 22
                  lui          s5, 378183
                  c.lui        s6, 1
                  remu         gp, sp, t0
                  srai         t3, t5, 4
                  slli         a0, s4, 11
                  addi         a4, t6, 683
                  c.slli       a7, 6
                  c.addi4spn   a5, sp, 336
                  c.addi16sp   sp, -16
                  divu         s3, s9, a2
                  c.nop
                  c.nop
                  c.addi16sp   sp, -16
                  c.srai       s0, 19
                  rem          zero, a7, a4
                  c.addi4spn   s1, sp, 448
                  c.mv         t0, s6
                  mulhu        t3, t3, s8
                  sub          a7, s10, zero
                  divu         s6, ra, s5
                  auipc        t1, 199768
                  c.srli       a0, 13
                  c.sub        a1, a4
                  div          s4, a0, s11
                  mulhsu       t0, a4, a2
                  and          a7, a2, s3
                  addi         s11, s0, -2
                  mulhsu       a5, sp, s10
                  auipc        ra, 86018
                  sra          a6, s5, zero
                  xori         s2, t2, -232
                  xori         a4, s1, -812
                  c.lui        s1, 20
                  srl          s4, t3, gp
                  or           a6, s1, gp
                  c.lui        t6, 8
                  mul          zero, s7, t1
                  mul          t3, a4, t3
                  divu         s3, s10, s0
                  sltiu        a4, a5, -1729
                  c.slli       s11, 6
                  sltu         tp, a4, s6
                  sra          s3, a6, a1
                  c.add        t2, a5
                  lui          s4, 1009219
                  sra          s2, tp, a5
                  srl          t0, s11, a0
                  srl          t4, a5, s4
                  add          a5, s0, s8
                  sub          a1, a5, s10
                  mul          s2, s11, a5
                  lui          tp, 483569
                  c.andi       a0, -1
                  div          t4, s7, s4
                  slli         a0, t1, 17
                  c.xor        a1, a5
                  mul          t1, a1, ra
                  c.li         t0, -1
                  or           t1, gp, t6
                  ori          s7, s3, 1476
                  and          tp, s1, s0
                  c.or         a4, s0
                  mulhsu       s1, zero, tp
                  div          a5, a3, s11
                  sub          s11, zero, s3
                  c.slli       t4, 7
                  sltu         s1, t0, s5
                  c.addi4spn   a4, sp, 704
                  c.sub        a1, a2
                  c.sub        s1, a1
                  c.add        a4, t2
                  auipc        a6, 931857
                  mulh         s3, a5, s10
                  div          sp, gp, s1
                  c.andi       a5, 14
                  or           s0, t4, s11
                  c.xor        a5, a0
                  slti         ra, s3, -1548
                  auipc        s9, 332689
                  slti         s2, s6, -676
                  srai         gp, t0, 4
                  srli         a7, t6, 5
                  nop
                  c.slli       a6, 19
                  sub          s1, a5, s10
                  addi         s7, s7, -769
                  c.sub        s0, a4
                  c.sub        a4, a5
                  sll          s1, a6, t0
                  divu         s10, t0, s8
                  ori          a6, t5, 1689
                  sra          t1, gp, t3
                  slli         a6, a2, 7
                  addi         a5, s4, 1854
                  srai         s2, s5, 24
                  lui          s6, 453742
                  slli         zero, s5, 8
                  c.xor        s1, s0
                  c.slli       tp, 11
                  c.sub        a0, a5
                  div          s5, t5, s7
                  nop
                  c.add        s1, sp
                  srli         t2, a5, 24
                  srl          a5, s1, t1
                  c.and        a0, a2
                  c.nop
                  c.srli       s1, 18
                  c.srli       a4, 28
                  c.xor        s1, a2
                  and          sp, a0, t1
                  rem          a1, a6, a1
                  sltiu        s9, tp, 1530
                  slti         t6, a5, 1967
                  c.lui        s1, 6
                  xor          s3, a6, s1
                  sltiu        s1, a5, 50
                  c.slli       tp, 20
                  srl          a1, a1, t4
                  srai         s10, s9, 5
                  srli         zero, s4, 3
                  c.srli       a0, 20
                  rem          t4, a2, a7
                  divu         s11, a2, s0
                  c.li         t6, -1
                  addi         t6, t2, 1035
                  or           t6, s1, t2
                  rem          s3, t5, t6
                  mulh         s0, ra, tp
                  add          a7, s9, zero
                  rem          s1, s10, s10
                  div          t0, t4, t4
                  mulhu        t0, ra, s11
                  sltiu        zero, s1, -1029
                  rem          s11, t4, s11
                  slti         s1, s0, -828
                  c.andi       s1, -1
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s2, 0xf742f2b2
                  li           s10, 0xffffffff
                  li           s7, 0xffffffff
                  li           sp, 0x80000000
                  li           gp, 0x0
                  li           s8, 0x0
                  li           a6, 0x0
                  li           a7, 0x0
                  li           a1, 0xffffffff
                  add          s2, a1, s8
                  mulhsu       s7, s7, a1
                  nop
                  rem          s7, s7, s2
                  mulhu        sp, s7, a6
                  divu         sp, s8, t4
                  addi         t4, a7, -1527
                  nop
                  rem          t4, s7, a1
                  mulh         sp, s10, s7
                  nop
                  div          s10, s7, s10
                  addi         gp, a7, -1856
                  nop
                  sub          s2, a6, a6
                  rem          sp, a1, s2
                  mul          sp, s8, s2
                  remu         s7, t4, s7
                  lui          a6, 416531 #end riscv_int_numeric_corner_stream_8
                  sll          s7, s0, tp
                  sra          a6, zero, s6
                  slti         gp, s10, -699
                  mulh         tp, t3, a3
                  srl          s11, sp, t4
                  rem          t4, s6, a3
                  c.sub        a4, s0
                  ori          t1, ra, 1284
                  mulh         zero, t0, t4
                  remu         a5, s1, s0
                  srai         a6, s5, 6
                  sub          s2, s2, ra
                  c.srai       a4, 24
                  mulhu        sp, s5, a0
                  remu         s6, ra, gp
                  srai         t6, t6, 24
                  and          s8, t6, gp
                  c.or         a5, a2
                  andi         t2, s11, 1016
                  andi         s6, s1, 1233
                  c.add        t0, a5
                  mul          gp, t6, a6
                  srai         s2, s11, 3
                  and          s2, a4, sp
                  c.li         t4, -1
                  c.and        a0, a5
                  sll          a5, s11, s10
                  mulh         s3, t3, zero
                  sub          a7, s1, s9
                  mulh         s1, t1, t1
                  div          t4, zero, t1
                  addi         a4, s11, -1808
                  c.slli       s6, 10
                  slt          a0, a3, sp
                  c.addi       t0, 9
                  mul          s3, s7, s3
                  c.li         t3, -1
                  c.sub        a1, a4
                  c.add        s8, a1
                  srli         s8, a0, 23
                  xor          ra, tp, t0
                  nop
                  andi         s7, a7, -669
                  c.and        s1, a5
                  mulh         sp, t0, s6
                  c.sub        a5, a2
                  c.srli       s0, 8
                  add          zero, s6, s10
                  add          tp, t4, a3
                  mulh         t4, a7, s1
                  add          t1, a2, a1
                  remu         ra, t3, s3
                  sll          s0, t2, s5
                  lui          a0, 412652
                  c.slli       gp, 14
                  c.nop
                  slti         t2, t2, -863
                  c.addi       a1, -1
                  mulhu        t1, s4, tp
                  c.srli       a5, 16
                  divu         a6, a0, a7
                  c.andi       a5, 26
                  sltiu        a1, s5, -1872
                  c.addi4spn   a5, sp, 80
                  slli         a5, s0, 8
                  c.sub        a1, a5
                  c.addi4spn   a4, sp, 240
                  c.addi16sp   sp, -16
                  slt          t2, a4, t1
                  mulh         t2, a3, a3
                  nop
                  mulh         s11, t0, a7
                  c.sub        s0, s0
                  mulhsu       s0, a2, a7
                  nop
                  rem          s11, a4, s5
                  add          s1, a4, t6
                  sra          s0, s6, s9
                  sra          zero, t3, a7
                  addi         s11, s0, 540
                  xor          a5, tp, s11
                  andi         a6, sp, 852
                  mulhsu       a7, a3, s9
                  mul          gp, t4, t6
                  c.xor        s1, a0
                  c.mv         a4, sp
                  c.sub        s1, s1
                  c.srai       a0, 24
                  c.lui        t0, 12
                  div          s10, s2, gp
                  c.and        s1, a4
                  xor          s7, a4, t6
                  or           s6, a1, s0
                  c.mv         s4, t2
                  c.or         s0, a1
                  slli         a7, s1, 20
                  c.or         a0, a2
                  c.and        s1, a5
                  c.sub        a5, a2
                  c.srai       a5, 25
                  c.or         s0, a2
                  c.addi16sp   sp, -16
                  ori          s6, s7, -1295
                  srl          s4, s10, t1
                  div          sp, s5, s5
                  slti         s5, s7, 2023
                  or           t3, a7, s2
                  xor          a4, t4, s6
                  xori         t1, a4, 554
                  c.li         a0, 14
                  c.addi       a6, -1
                  c.andi       s1, -1
                  c.slli       s11, 29
                  mulh         sp, s2, tp
                  c.add        t0, s5
                  div          s3, s4, t0
                  lui          a5, 769887
                  c.sub        a5, a5
                  mulhu        a1, a1, s8
                  sub          zero, a4, a1
                  c.and        a4, a0
                  c.addi16sp   sp, -16
                  xor          tp, t0, s1
                  nop
                  srai         s8, s7, 15
                  andi         sp, zero, 1843
                  remu         s5, s2, sp
                  c.sub        a4, s1
                  c.mv         s3, tp
                  c.slli       t2, 9
                  ori          s1, a5, -1670
                  xor          sp, s9, s0
                  c.sub        a0, a2
                  c.xor        a5, a3
                  remu         s2, t6, s4
                  divu         a7, ra, tp
                  xor          a5, t2, t3
                  add          s7, s10, s7
                  slt          a5, s5, t6
                  ori          s2, s3, -1836
                  andi         s5, s6, 1604
                  xori         a1, s7, 437
                  mul          gp, a2, s9
                  mul          sp, t2, t1
                  c.xor        a5, a4
                  sll          t4, gp, s10
                  c.xor        a4, a0
                  rem          a1, a4, ra
                  sll          s4, s6, s9
                  c.or         a4, a4
                  sll          sp, t3, tp
                  sltu         a6, s9, t3
                  c.srai       s0, 27
                  sltu         t4, s11, a3
                  c.andi       a1, -1
                  srli         t6, t4, 31
                  c.slli       s0, 25
                  mul          zero, s6, s0
                  sltiu        a7, a5, 1822
                  remu         t4, s2, s8
                  xori         s6, tp, 593
                  auipc        zero, 376983
                  sltiu        s5, s10, -960
                  xori         s7, a0, 2019
                  sub          s4, s10, t0
                  c.addi       sp, -1
                  c.li         s7, -1
                  remu         a4, zero, a2
                  addi         tp, a2, 384
                  c.sub        s1, a0
                  add          gp, s0, a1
                  mulhsu       a4, s1, a0
                  xor          gp, a5, a5
                  xori         gp, s8, -1629
                  divu         a6, s10, s5
                  nop
                  xor          a4, s5, s0
                  c.srli       s1, 14
                  c.or         s0, a0
                  c.xor        s0, s0
                  addi         s1, s11, 1431
                  c.andi       s1, -1
                  c.sub        a5, a5
                  sltu         a7, a3, s2
                  andi         ra, s2, 953
                  c.nop
                  c.mv         s8, t5
                  auipc        t4, 113651
                  rem          s1, zero, s9
                  c.and        s1, s0
                  mulhsu       t0, sp, s0
                  c.srai       s0, 2
                  srai         tp, s11, 17
                  mulh         a5, tp, a1
                  c.addi4spn   s0, sp, 448
                  c.or         s1, a4
                  and          t1, s6, tp
                  c.add        ra, a0
                  mulh         a7, s0, t2
                  c.slli       a4, 19
                  c.addi       s0, 18
                  auipc        s0, 494516
                  and          t3, sp, s6
                  and          s3, t5, t3
                  divu         a4, s3, t3
                  c.andi       a4, -1
                  c.nop
                  xor          s11, s6, s4
                  mulhu        s5, s10, s7
                  mulhsu       s4, t3, zero
                  and          a5, s11, t3
                  c.li         s5, -1
                  sub          gp, a7, a2
                  c.add        a6, a4
                  mulh         a5, s8, s10
                  c.and        s1, a3
                  sra          s3, s6, s10
                  c.sub        s0, a1
                  mul          s2, t1, t1
                  nop
                  c.addi4spn   a1, sp, 272
                  sll          s0, t3, s9
                  c.andi       s1, -1
                  c.li         s0, 12
                  c.slli       s11, 15
                  mulhsu       t2, sp, t2
                  c.andi       s0, 16
                  c.andi       a0, -1
                  slti         a4, gp, -1540
                  srli         a7, a3, 11
                  ori          a5, a1, 1682
                  nop
                  mul          zero, s7, t0
                  nop
                  mulhsu       zero, s8, s3
                  sub          s1, a5, tp
                  or           t6, sp, a3
                  c.sub        s0, a5
                  and          s3, s10, s11
                  slli         a5, s7, 19
                  andi         zero, a1, 82
                  sll          t3, sp, a6
                  c.and        s1, a3
                  c.srli       a1, 15
                  c.li         tp, -1
                  nop
                  c.srli       s0, 14
                  addi         t2, s2, -1836
                  andi         s3, t2, 1549
                  ori          s10, zero, 1438
                  and          ra, a1, s11
                  c.xor        a0, a3
                  c.slli       s6, 15
                  xor          s5, t0, t5
                  add          s0, a4, sp
                  c.and        a4, a5
                  c.srli       a1, 28
                  c.addi       a0, 2
                  c.addi       s4, 30
                  c.add        sp, t2
                  sra          sp, s1, s1
                  c.slli       s8, 29
                  slti         t0, a5, 556
                  c.addi       s6, -1
                  mulhsu       ra, s7, gp
                  srai         a1, a5, 24
                  mulhsu       s8, t2, s1
                  c.srli       a5, 22
                  srli         s1, gp, 7
                  c.or         a5, s1
                  c.addi4spn   a5, sp, 928
                  ori          s10, s3, -1483
                  divu         tp, zero, t5
                  slt          s7, t1, s9
                  c.lui        t0, 18
                  xor          a1, t0, a5
                  auipc        a6, 384886
                  mulhu        s3, zero, t5
                  c.srli       a1, 24
                  mul          ra, s9, t2
                  c.srai       a5, 13
                  slli         gp, s4, 17
                  c.sub        s1, s1
                  remu         s0, a4, t1
                  c.mv         t4, sp
                  c.srai       a5, 16
                  c.lui        s7, 19
                  c.andi       a0, -1
                  c.addi       a4, -1
                  c.addi16sp   sp, 144
                  mulh         s3, zero, sp
                  c.srli       a0, 13
                  ori          sp, s2, 1837
                  mulhu        gp, a2, a1
                  c.sub        a5, s0
                  mulhu        a0, s11, t3
                  c.addi4spn   s1, sp, 144
                  c.add        sp, t4
                  slt          gp, t1, a7
                  c.andi       a0, -1
                  or           s5, a7, a6
                  c.addi16sp   sp, 112
                  mulh         t4, s5, t6
                  slt          s5, t5, a2
                  c.addi16sp   sp, -16
                  nop
                  c.addi4spn   a5, sp, 304
                  addi         sp, s0, 1198
                  addi         s6, ra, -447
                  nop
                  slli         t6, s10, 27
                  mulhsu       a1, sp, a0
                  slti         s6, gp, 1240
                  mul          s10, a0, t1
                  slti         s2, t6, 2026
                  sltu         a1, s9, s9
                  mulhsu       a0, t5, s11
                  c.lui        a1, 3
                  c.addi16sp   sp, -16
                  mul          a1, s11, s6
                  c.addi       s2, -1
                  ori          ra, s7, 576
                  addi         s3, t5, 222
                  c.lui        t6, 9
                  c.andi       s1, -1
                  c.add        s1, a7
                  c.and        a4, a2
                  addi         t1, sp, -995
                  c.li         s9, 13
                  nop
                  slti         t1, s5, -1281
                  slti         s0, s1, 1421
                  c.and        s1, a1
                  slli         s7, t6, 2
                  c.or         s1, a2
                  sra          a5, s10, s1
                  and          a1, zero, s3
                  c.andi       a0, -1
                  mulhsu       a6, s7, s1
                  slli         t1, gp, 3
                  mulhsu       s0, s1, s11
                  c.slli       ra, 3
                  and          s10, s0, a4
                  divu         gp, a6, s7
                  c.nop
                  c.add        s0, s9
                  c.sub        a0, a3
                  c.slli       s7, 17
                  c.srli       a5, 4
                  ori          s2, a3, -1534
                  sltiu        s0, a3, 261
                  ori          t3, s3, -218
                  or           s10, zero, s6
                  andi         a1, s6, -1620
                  sub          t1, a2, t6
                  slli         s1, a4, 9
                  mulh         t3, s7, s7
                  xori         t6, t4, -404
                  sub          s8, s1, a2
                  nop
                  mulhu        a0, tp, a7
                  sra          t6, zero, s11
                  ori          sp, s5, -1337
                  srl          zero, gp, t2
                  c.li         a0, -1
                  c.sub        a4, a5
                  c.addi4spn   s1, sp, 928
                  sltu         t0, a4, a1
                  mulhsu       s11, a2, a0
                  andi         s3, s7, -672
                  c.srai       a1, 29
                  srai         t0, s11, 12
                  c.slli       a6, 10
                  c.xor        a5, a1
                  slli         s4, s10, 9
                  div          s6, s11, s5
                  sll          t2, s11, t6
                  c.xor        a5, a3
                  addi         a1, sp, 736
                  srl          s1, t2, s6
                  sltu         a5, s8, t5
                  mulh         s3, a3, s9
                  mulhsu       ra, t5, s2
                  c.nop
                  c.addi16sp   sp, -16
                  c.andi       a4, 4
                  and          a5, s8, t6
                  slti         s8, t6, 1111
                  sltu         s11, t2, a7
                  sltu         a1, s11, a3
                  andi         t2, a7, -1865
                  andi         s9, s4, 720
                  sltu         t0, gp, s5
                  add          a0, a3, t1
                  remu         tp, a2, s0
                  sra          s1, s6, s0
                  c.slli       a5, 8
                  c.srli       s0, 31
                  c.lui        s6, 5
                  c.nop
                  srai         s8, t3, 29
                  andi         t1, a6, -1875
                  slt          a4, s4, tp
                  slt          tp, t2, s0
                  slli         s0, t6, 20
                  slti         t4, s1, 1993
                  c.addi       a1, -1
                  srl          t3, s0, s0
                  c.andi       a5, 25
                  and          t0, t4, s9
                  sll          s7, s4, s11
                  and          ra, t0, t0
                  nop
                  c.lui        s8, 27
                  div          s4, a3, s1
                  sub          a4, a7, t0
                  c.nop
                  c.add        s10, s0
                  lui          a0, 449122
                  c.addi4spn   s1, sp, 112
                  auipc        s9, 2111
                  andi         a0, s2, 1444
                  li           a4, 0x1a7cdac #start riscv_int_numeric_corner_stream_25
                  li           s6, 0x0
                  li           s3, 0xed036531
                  li           t0, 0xffffffff
                  li           s7, 0x1068499c
                  li           s9, 0xffffffff
                  li           t1, 0xffffffff
                  li           gp, 0x80000000
                  li           s1, 0xffffffff
                  li           s2, 0x80000000
                  addi         t0, t0, 308
                  auipc        s9, 900090
                  lui          a4, 797133
                  mulhu        a4, s3, s1
                  remu         s7, a4, s7
                  nop
                  mulhu        s9, t0, t1
                  mul          t0, s1, gp
                  remu         a4, s2, a4
                  nop
                  mulhsu       a4, t0, a4
                  remu         s7, t1, gp
                  mulh         s9, a4, t1
                  auipc        s9, 286878
                  mulhsu       s3, a4, gp
                  nop
                  lui          a4, 495173
                  divu         a4, gp, s9
                  mulhu        t0, a4, s3
                  lui          t0, 207469
                  lui          gp, 507406 #end riscv_int_numeric_corner_stream_25
                  c.mv         s3, a1
                  divu         zero, s5, s6
                  nop
                  c.xor        a4, a3
                  srli         s5, t4, 31
                  c.and        s0, a1
                  c.addi16sp   sp, -16
                  c.addi       s6, 28
                  divu         s8, a6, a0
                  c.add        s3, s5
                  c.srli       s0, 19
                  slli         s0, t5, 22
                  srl          s10, s9, sp
                  srli         sp, s11, 8
                  sltu         s9, a4, s3
                  c.nop
                  xori         s6, s2, 1543
                  sra          a5, s11, s2
                  xori         s9, s2, 1463
                  div          a6, a5, s8
                  slti         s1, s3, 37
                  c.addi4spn   a5, sp, 128
                  andi         t6, a7, 1026
                  xor          t3, t1, a5
                  c.lui        a4, 2
                  slt          a1, t6, tp
                  divu         t4, t4, gp
                  mulhu        a1, sp, t2
                  c.srai       s1, 23
                  c.lui        t1, 14
                  mulhu        s10, a5, tp
                  c.and        s0, s1
                  ori          tp, zero, 326
                  addi         t2, t2, 762
                  div          a4, t4, t2
                  slli         t4, s7, 13
                  c.andi       a5, 26
                  div          a1, a0, s7
                  xor          t0, t5, gp
                  slt          a1, a5, a1
                  addi         a1, s6, 703
                  and          s8, s1, t1
                  c.addi4spn   s1, sp, 672
                  auipc        s8, 844499
                  slli         a6, a3, 5
                  sll          s1, a2, s4
                  srai         s8, s7, 21
                  auipc        s4, 1021253
                  addi         s10, a5, 578
                  sltu         a5, a7, s3
                  c.addi4spn   a0, sp, 128
                  remu         s3, tp, a1
                  div          s2, s0, a7
                  remu         s0, s2, s6
                  add          s5, s0, zero
                  mulhu        s11, a6, zero
                  sub          s5, s0, a5
                  rem          a0, gp, t0
                  ori          ra, s6, -1350
                  xori         t4, s6, -153
                  div          t3, a5, gp
                  c.addi       sp, 6
                  c.li         s10, 18
                  sra          s0, a7, tp
                  addi         s5, s8, -426
                  c.xor        a4, a5
                  mulh         zero, t6, a1
                  and          s8, s6, t3
                  srli         s6, t4, 31
                  and          t6, ra, s0
                  c.srli       s1, 25
                  c.andi       a4, -1
                  c.srli       a4, 23
                  sub          s8, sp, s7
                  c.li         a5, -1
                  c.addi       t4, 10
                  mul          s10, sp, sp
                  c.addi4spn   s0, sp, 704
                  sltu         s4, t4, a2
                  nop
                  mulh         s7, a1, s8
                  srai         a0, a5, 18
                  sra          a5, s2, a5
                  c.xor        a4, s0
                  xor          s6, zero, tp
                  c.slli       a7, 4
                  sra          a4, t4, s1
                  sub          a1, s6, sp
                  c.xor        a4, a5
                  slti         a0, t0, -712
                  sltu         t3, a6, tp
                  andi         sp, tp, -1700
                  slt          s8, t0, t5
                  mulh         gp, a7, a3
                  c.lui        s4, 1
                  or           t3, a1, a3
                  and          t1, tp, s7
                  xor          a1, t0, a5
                  nop
                  nop
                  remu         s10, s7, t6
                  sub          sp, a5, a6
                  nop
                  c.andi       a1, 12
                  c.srai       s1, 18
                  c.nop
                  auipc        s3, 703901
                  c.li         ra, 31
                  c.or         a0, s1
                  divu         t6, a3, gp
                  sub          s7, t0, a6
                  remu         s10, s6, s11
                  c.lui        s10, 28
                  c.addi4spn   a1, sp, 592
                  mulhu        sp, s0, s2
                  mulhsu       a7, s11, t1
                  c.and        a4, s0
                  srl          tp, t2, s9
                  c.andi       s1, -1
                  rem          t1, ra, s3
                  c.li         a7, 8
                  c.andi       a5, 4
                  c.slli       s1, 26
                  c.srli       a0, 28
                  slt          tp, sp, sp
                  c.add        a0, gp
                  auipc        s2, 371488
                  sra          s4, s8, s9
                  rem          s4, s0, s4
                  mulhsu       t1, a5, t0
                  mulhu        s10, t2, a4
                  c.sub        s0, a4
                  c.add        t6, s9
                  c.srai       a4, 3
                  addi         tp, s9, 867
                  c.andi       a0, -1
                  sub          tp, s7, a1
                  slti         t6, s8, -1827
                  srli         tp, s6, 30
                  divu         a1, t4, a0
                  c.lui        s1, 27
                  c.addi       s8, -1
                  nop
                  sltu         a7, s8, t3
                  slli         t3, a5, 29
                  divu         tp, sp, t3
                  mul          a0, a0, s9
                  c.andi       a0, 28
                  mulhsu       sp, a5, s3
                  c.and        s1, a5
                  add          s4, s8, s2
                  c.srai       a0, 13
                  c.li         s1, 9
                  srai         a6, t5, 22
                  c.andi       a4, -1
                  sltu         a4, t1, a1
                  c.nop
                  c.nop
                  c.and        a4, a0
                  c.and        s1, a0
                  xori         s9, s11, -361
                  slt          ra, a7, s10
                  c.or         s0, a3
                  xor          s1, zero, zero
                  ori          s11, t4, -351
                  c.and        a5, a3
                  c.slli       a5, 12
                  slt          a7, s10, s9
                  mulhu        t1, ra, s1
                  add          a4, s11, s3
                  srli         s9, s5, 27
                  xor          tp, a4, s4
                  c.add        a1, a0
                  srai         a0, a1, 30
                  c.slli       t4, 17
                  c.andi       a4, 15
                  slli         a0, zero, 6
                  or           t3, a5, t4
                  c.and        s0, s1
                  slli         a0, t5, 3
                  rem          t4, tp, zero
                  sub          t1, a7, s7
                  c.li         a1, 5
                  c.or         a4, a5
                  sltiu        t2, ra, -2017
                  or           a6, s3, a5
                  slli         t3, gp, 30
                  c.and        s1, a1
                  c.mv         s0, t6
                  add          a5, a0, t1
                  c.and        s1, a1
                  and          zero, t2, s2
                  mulhu        tp, a7, s2
                  c.sub        a5, a2
                  slli         t0, a2, 31
                  andi         s1, sp, -1227
                  c.addi4spn   s0, sp, 176
                  srli         s6, s0, 5
                  c.nop
                  c.li         t0, -1
                  nop
                  mulhsu       s3, s1, s8
                  or           t2, t4, t6
                  c.sub        a1, a2
                  mulhu        t0, a3, a5
                  c.and        s1, a5
                  c.andi       a1, -1
                  ori          s10, t6, 1984
                  rem          t3, a7, a3
                  mulh         s6, a6, t2
                  c.srai       s0, 31
                  c.add        gp, s7
                  sll          s7, s9, s6
                  c.srai       a5, 14
                  c.srai       a4, 14
                  mulh         t4, t2, s7
                  or           s10, s1, t4
                  c.sub        a1, a2
                  mulh         a4, s6, s11
                  sltiu        ra, t3, 623
                  remu         ra, s10, s8
                  c.andi       a4, -1
                  mul          t0, a4, s10
                  c.srai       a5, 2
                  c.and        a4, a1
                  mul          s2, s7, t1
                  sra          s0, a3, tp
                  c.sub        a0, a4
                  c.li         a4, 16
                  auipc        zero, 1481
                  c.li         gp, -1
                  auipc        gp, 582442
                  xor          t4, t6, s6
                  auipc        a1, 555603
                  rem          a4, a6, s11
                  c.lui        s1, 12
                  add          t6, s5, t2
                  c.li         s0, -1
                  slt          tp, s1, sp
                  c.srli       s0, 30
                  c.mv         s1, t0
                  xor          s11, t3, s10
                  c.srai       a5, 12
                  c.lui        a4, 9
                  and          t2, t5, gp
                  rem          t2, a7, s1
                  and          t0, s3, gp
                  c.addi       s0, 16
                  slli         gp, t6, 1
                  divu         ra, sp, a2
                  slli         s0, s6, 13
                  xori         s10, s5, -410
                  srli         t3, s2, 16
                  divu         t3, t0, t6
                  srai         tp, t4, 2
                  srli         t2, t1, 15
                  slti         a5, ra, 671
                  slti         s3, t6, -1926
                  c.li         s11, 17
                  mulhsu       a6, a4, s11
                  srli         t4, t4, 26
                  auipc        t3, 707010
                  sltiu        a1, sp, -1443
                  or           a0, sp, s3
                  divu         a4, a7, s11
                  lui          t6, 874100
                  ori          t2, a5, 364
                  ori          s1, a0, 1252
                  slt          t3, t3, a3
                  c.srli       s1, 26
                  c.srli       a5, 21
                  add          t0, t4, s6
                  addi         a1, tp, -722
                  c.li         a5, -1
                  srl          t4, s7, a2
                  remu         t6, a3, s3
                  sltiu        s1, gp, 1151
                  addi         s0, s6, -421
                  c.addi       s1, 30
                  c.lui        t6, 7
                  rem          s5, s3, a0
                  c.addi16sp   sp, 480
                  c.nop
                  lui          a7, 944904
                  sub          t0, s8, gp
                  xor          a6, s2, s3
                  xori         s11, a0, 337
                  addi         a0, s7, 380
                  c.sub        a4, a0
                  srl          a0, sp, s3
                  ori          t1, zero, 580
                  slt          zero, s9, s1
                  or           t4, t4, zero
                  sltiu        a0, zero, 701
                  sub          t1, a2, a1
                  nop
                  c.or         a1, a4
                  slli         s3, s9, 20
                  c.andi       a4, -1
                  c.addi16sp   sp, 288
                  sub          a5, t1, s4
                  mulh         t3, s9, a4
                  c.mv         s0, s6
                  srai         s7, s1, 18
                  div          a1, t2, a2
                  sll          s8, s1, s3
                  srl          a6, gp, s8
                  sra          t6, a5, t3
                  div          s11, s1, zero
                  ori          a0, s7, -964
                  c.mv         t6, tp
                  slt          zero, s6, sp
                  slt          zero, t4, tp
                  c.add        s4, t2
                  c.mv         tp, s11
                  slli         a1, t5, 4
                  div          s4, s5, s0
                  srai         s9, t1, 28
                  and          s7, a6, s6
                  mul          a7, zero, a1
                  c.lui        ra, 14
                  mulhsu       s4, s2, s7
                  srl          s3, a7, ra
                  mulhu        t4, s10, s4
                  mulh         s5, a0, t3
                  mulh         s4, a7, s3
                  nop
                  sll          t2, s3, s6
                  c.lui        s10, 16
                  ori          s0, s8, -631
                  c.addi16sp   sp, 336
                  c.srai       a5, 19
                  sub          ra, a5, s11
                  c.addi       s3, -1
                  c.lui        t1, 18
                  c.srli       a5, 9
                  c.nop
                  c.addi16sp   sp, -16
                  div          s6, a0, s6
                  c.slli       s0, 15
                  c.andi       a0, 7
                  c.slli       sp, 8
                  or           s8, s10, a4
                  mul          s8, sp, t4
                  auipc        s3, 619786
                  xori         s1, sp, 1557
                  xori         gp, s6, 1379
                  srl          s11, t6, s8
                  xor          s6, s7, t0
                  lui          s7, 624271
                  c.addi16sp   sp, 288
                  c.lui        tp, 27
                  c.andi       a4, 8
                  lui          s1, 932474
                  c.slli       s8, 24
                  c.lui        s9, 30
                  slti         a4, s11, 173
                  c.addi       s3, 5
                  srli         s5, a4, 27
                  c.sub        a4, a0
                  slli         s1, s4, 5
                  xor          t6, t1, s4
                  addi         a1, t6, 1045
                  sltu         a6, zero, ra
                  sra          tp, s2, s11
                  c.sub        a1, a4
                  sltiu        t4, t0, 66
                  slti         s2, a1, 1520
                  sltu         t6, t0, t5
                  sra          tp, a7, t3
                  mulh         a5, s4, a6
                  mulh         t4, s0, t5
                  remu         a5, zero, tp
                  sltu         gp, s8, s2
                  c.and        a4, a3
                  c.addi16sp   sp, -16
                  c.xor        s1, a1
                  sll          a6, tp, t0
                  c.slli       gp, 19
                  slli         t2, s4, 3
                  c.or         s1, s0
                  xori         a7, t2, 889
                  srl          s0, s0, t0
                  srai         s6, a6, 21
                  or           t3, zero, t5
                  and          a4, a0, s1
                  c.addi4spn   s1, sp, 912
                  c.addi4spn   a4, sp, 80
                  mulh         t3, s0, a3
                  xori         a6, s3, 1163
                  or           s11, zero, t1
                  c.nop
                  remu         t1, sp, a7
                  sltu         t4, t5, gp
                  andi         a0, s11, 1334
                  srai         s9, ra, 9
                  sra          a0, a7, a0
                  c.srai       a0, 5
                  mul          s1, t1, t1
                  c.li         s1, -1
                  xor          s0, s2, t0
                  c.nop
                  lui          s11, 1006326
                  mul          s6, t2, t0
                  mul          zero, s6, s4
                  xori         sp, s1, 839
                  c.slli       s6, 28
                  c.andi       a5, -1
                  divu         gp, a4, tp
                  remu         sp, t4, a3
                  slli         s7, t0, 25
                  xori         a0, s7, 458
                  mulhu        a4, a5, s0
                  c.add        s2, s2
                  auipc        s7, 185711
                  divu         a5, t6, t1
                  sub          t0, s5, a7
                  mulh         s6, s2, a4
                  c.nop
                  srai         a1, s1, 19
                  auipc        gp, 961521
                  c.slli       s6, 5
                  c.slli       s9, 2
                  sub          a1, s9, s10
                  addi         t6, a4, -1721
                  remu         a7, t4, a5
                  remu         s11, s2, s8
                  c.xor        a1, a5
                  c.andi       a5, 20
                  sub          s1, tp, s3
                  nop
                  c.and        a5, a4
                  or           tp, a4, s0
                  srai         gp, s9, 2
                  mulh         s5, s6, a1
                  xor          sp, s6, s0
                  sltu         s1, a4, s9
                  c.and        s0, a2
                  c.srli       s1, 23
                  divu         a6, s3, s5
                  divu         a4, s9, a6
                  srai         s9, t0, 12
                  c.mv         sp, s10
                  c.add        t3, t5
                  lui          a7, 211691
                  xor          a7, s3, tp
                  c.sub        a5, a1
                  addi         sp, s7, -1111
                  c.sub        s0, a2
                  c.andi       a0, -1
                  mulhsu       a6, sp, tp
                  c.srli       s1, 7
                  ori          a0, t3, -1243
                  mulhsu       a1, s8, t5
                  c.srli       a4, 26
                  c.add        s11, t4
                  c.addi       s0, 7
                  or           t6, t6, s11
                  divu         t3, zero, s11
                  mul          s6, zero, a1
                  sltiu        s0, zero, -1199
                  or           t4, s5, t3
                  c.slli       ra, 11
                  c.addi16sp   sp, -16
                  sub          t2, t1, a6
                  slti         s3, tp, 381
                  lui          s3, 570845
                  nop
                  xor          t0, t3, s8
                  nop
                  c.sub        a5, a4
                  srli         s3, s3, 31
                  addi         t0, a2, -330
                  c.slli       s3, 2
                  slli         t0, s7, 16
                  c.xor        a0, a5
                  nop
                  mul          s7, ra, zero
                  ori          s7, ra, 243
                  c.nop
                  rem          sp, tp, t6
                  srai         t3, a5, 22
                  addi         a5, a4, -1973
                  c.mv         s4, t3
                  andi         sp, sp, -2006
                  c.andi       a4, -1
                  c.or         s0, a1
                  add          s0, s1, a5
                  divu         s3, t1, t0
                  and          t1, s7, a0
                  sra          s5, ra, gp
                  slti         s0, s5, 1043
                  mul          tp, t6, a2
                  slli         s5, s1, 24
                  srai         t3, s2, 13
                  c.or         a1, a1
                  slt          s7, zero, s4
                  or           t2, a5, t2
                  addi         a4, a1, 464
                  c.lui        s10, 16
                  c.mv         a6, s1
                  and          gp, gp, t4
                  ori          a6, t6, 2040
                  div          s9, gp, a6
                  lui          zero, 695270
                  xori         s1, t0, -1680
                  ori          s4, s1, -929
                  xori         a4, a4, -844
                  sltiu        a4, t4, -1220
                  nop
                  xor          gp, t4, t0
                  xori         tp, s9, 1306
                  slti         a4, gp, 2022
                  xor          s9, t5, s7
                  srli         s2, t2, 15
                  rem          t1, s11, s5
                  c.andi       a5, -1
                  c.slli       a6, 23
                  slti         sp, s5, 27
                  or           tp, t6, a3
                  slt          t0, t2, zero
                  ori          s0, s1, -1842
                  c.lui        gp, 23
                  c.lui        a6, 11
                  srli         s10, a0, 29
                  slt          tp, zero, s1
                  or           s5, s3, a2
                  c.and        s0, s0
                  c.andi       a5, -1
                  srai         s9, t1, 24
                  slt          t6, t3, a5
                  auipc        t4, 54161
                  addi         s3, s3, -1495
                  nop
                  c.andi       a5, 24
                  c.nop
                  c.addi       a4, -1
                  or           s10, ra, a1
                  c.andi       a0, -1
                  c.srli       a5, 30
                  rem          a4, a1, a3
                  auipc        t4, 777394
                  c.andi       a5, -1
                  srli         t6, tp, 1
                  c.addi16sp   sp, -16
                  c.addi4spn   s1, sp, 592
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s1, 0xffffffff
                  li           s11, 0xb7b3ab4e
                  li           a1, 0x80000000
                  li           s3, 0x60cff12e
                  li           sp, 0x80000000
                  li           t6, 0x0
                  li           a0, 0x80000000
                  li           t3, 0xffffffff
                  li           a4, 0x80000000
                  add          s3, t3, s11
                  divu         s11, sp, a4
                  auipc        s3, 118658
                  auipc        s3, 632868
                  add          s1, t3, s11
                  mul          t3, sp, s3
                  sub          sp, s8, t6
                  remu         a1, t3, s8
                  auipc        a4, 667871
                  remu         s1, s3, t6
                  add          s3, a4, t3
                  add          sp, a1, s1
                  auipc        t3, 859332
                  mul          t6, s8, s8
                  auipc        t3, 370312
                  add          a0, s8, t6
                  mul          t6, a1, a4
                  lui          s1, 875483
                  mulh         s8, sp, s8
                  mul          a1, t3, t3 #end riscv_int_numeric_corner_stream_5
                  c.addi       s0, 17
                  div          t1, t3, t4
                  addi         s4, t5, 2030
                  c.slli       a5, 19
                  srli         a0, a6, 12
                  lui          tp, 969332
                  sra          sp, a7, ra
                  c.slli       t6, 28
                  rem          s1, a5, s8
                  andi         s1, t6, -1462
                  auipc        sp, 130318
                  auipc        s7, 892718
                  srl          s10, a4, t3
                  divu         tp, a7, s4
                  divu         a7, t1, s9
                  slt          s5, s4, zero
                  sltiu        zero, t0, -90
                  c.andi       s1, -1
                  c.or         a4, a4
                  c.or         a5, s0
                  xori         ra, a1, -1212
                  sra          s6, t5, a7
                  div          ra, t0, s2
                  sltiu        t1, s0, -1020
                  slt          s2, s7, ra
                  c.addi16sp   sp, -16
                  div          a6, t3, a1
                  auipc        s10, 874418
                  andi         s6, s5, 381
                  srai         s6, s4, 3
                  nop
                  xori         s6, a3, -1004
                  c.lui        a1, 13
                  mulhu        s4, a4, t5
                  c.xor        a4, a5
                  xori         s11, t3, 798
                  mul          s3, s9, a7
                  c.sub        a4, a0
                  ori          s2, s0, 627
                  srl          a1, s3, tp
                  c.or         a0, a1
                  add          sp, a5, t0
                  mul          a7, t2, t4
                  sltu         s8, zero, a0
                  remu         a5, gp, a1
                  sll          t4, s3, t4
                  c.add        s7, t3
                  c.mv         gp, a2
                  andi         t3, a2, 374
                  slt          s1, tp, zero
                  c.addi16sp   sp, 416
                  c.nop
                  sub          a5, t6, s3
                  addi         t2, t6, -68
                  sltiu        s1, a4, -1925
                  srli         a0, s7, 19
                  mul          t2, s9, a6
                  c.or         a5, a1
                  c.addi       s0, 13
                  srai         t3, sp, 25
                  c.srli       s0, 16
                  slti         s6, t1, -1365
                  c.addi16sp   sp, 112
                  c.add        s2, tp
                  srai         s10, zero, 27
                  c.slli       t3, 30
                  addi         a6, a1, 318
                  xori         s1, s6, -1825
                  addi         s1, s10, 81
                  remu         t1, gp, t0
                  c.sub        s1, a1
                  or           s9, t1, ra
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 368
                  c.or         s0, a3
                  sll          t6, s0, sp
                  lui          sp, 334799
                  srli         s0, t5, 13
                  c.or         a5, s1
                  slli         s0, s7, 8
                  sll          s4, s11, sp
                  auipc        s11, 372105
                  sltiu        gp, s2, 1331
                  sltu         tp, a0, a2
                  slti         t2, s3, 1712
                  c.andi       a1, -1
                  srl          s3, a4, a6
                  mul          sp, gp, s3
                  c.sub        a1, a5
                  rem          sp, zero, s0
                  c.nop
                  srl          t6, t5, a0
                  divu         s4, a7, a0
                  c.li         s7, -1
                  c.srli       s1, 18
                  c.addi4spn   a1, sp, 960
                  c.or         a5, s0
                  c.sub        a5, a2
                  c.add        a1, s5
                  add          s10, ra, s1
                  rem          s1, s0, zero
                  div          t6, a3, t1
                  remu         s5, a2, tp
                  sltiu        s8, t4, 1275
                  xor          gp, s1, s10
                  remu         s2, t0, s5
                  c.sub        a0, s1
                  c.and        a4, s1
                  mulhsu       t1, a4, t0
                  nop
                  and          s9, s7, s7
                  slti         s0, t5, 679
                  c.sub        s0, a1
                  c.srli       a4, 14
                  mulh         s10, t6, t6
                  lui          zero, 831269
                  c.srai       a1, 23
                  slti         s6, t5, -1727
                  c.andi       s1, -1
                  divu         s1, a3, a2
                  c.srli       s1, 28
                  c.slli       s3, 7
                  sltiu        s2, t3, 1522
                  nop
                  c.and        s0, a3
                  c.li         tp, -1
                  addi         t3, a4, 886
                  addi         ra, a7, -1243
                  srli         sp, a3, 9
                  remu         s0, s6, t1
                  srli         tp, a5, 18
                  c.lui        t6, 18
                  sltiu        s10, t0, 414
                  nop
                  slli         a5, t4, 4
                  c.addi16sp   sp, 128
                  add          a4, tp, s11
                  div          a7, s9, s0
                  div          a4, a1, a0
                  c.addi4spn   s1, sp, 224
                  c.xor        a5, a5
                  xori         t3, t0, -1743
                  c.nop
                  srai         s8, a5, 23
                  srl          t0, gp, a5
                  addi         t0, zero, -1078
                  or           t1, s0, s5
                  or           t6, s0, t1
                  sltiu        sp, s5, 1907
                  ori          s7, a3, -1940
                  sltu         t1, t3, s10
                  sub          s6, a3, s5
                  c.nop
                  mulh         s4, s9, t5
                  c.addi       t1, 13
                  sub          s8, ra, t2
                  c.li         t1, -1
                  sub          s4, s1, s2
                  c.addi4spn   a4, sp, 352
                  andi         a7, s1, 1615
                  c.addi4spn   a4, sp, 944
                  c.addi16sp   sp, -16
                  slti         s8, s9, 103
                  sltiu        a1, s6, -1333
                  srli         s8, ra, 1
                  addi         a6, s11, 826
                  ori          t4, t3, 627
                  sll          a1, a0, s2
                  div          t3, t0, t6
                  c.srai       a4, 8
                  mulhsu       s11, t4, a3
                  c.addi4spn   a0, sp, 496
                  mul          a5, t3, t5
                  c.nop
                  srl          s3, t1, t6
                  slti         t4, t3, 1112
                  nop
                  srl          a4, tp, s0
                  slti         a4, t4, -1987
                  mulhsu       t6, t5, s2
                  div          s9, sp, t2
                  ori          t1, t6, 957
                  mulh         t3, t3, a5
                  auipc        ra, 860383
                  c.mv         t3, s4
                  c.xor        a5, a4
                  c.xor        a4, s1
                  auipc        a5, 459422
                  lui          t0, 144563
                  c.or         s0, a2
                  slli         s11, s0, 15
                  ori          s10, a6, -1917
                  mulhu        s0, a1, a3
                  c.mv         t3, s0
                  c.sub        a4, s0
                  xor          s10, sp, t3
                  add          s0, t1, a4
                  c.addi16sp   sp, -16
                  sra          s2, s6, a6
                  lui          s7, 774174
                  sra          s9, ra, a1
                  sll          s11, a7, t5
                  ori          a0, a6, -189
                  c.slli       t3, 30
                  sub          zero, s4, t0
                  div          s10, a7, tp
                  srai         s7, a7, 16
                  sltu         s8, s4, tp
                  sra          t1, a0, s8
                  c.srai       a1, 31
                  sra          s3, s11, gp
                  c.add        s6, s11
                  sra          gp, a3, t3
                  c.sub        a1, s0
                  c.lui        s1, 10
                  slti         sp, a2, -981
                  c.and        a1, s1
                  slt          a1, t1, a1
                  c.addi       s2, 28
                  slti         ra, a6, -78
                  remu         tp, t4, a2
                  srl          a1, a0, s3
                  addi         s9, s4, -1653
                  andi         t6, t1, 375
                  and          t3, s7, s6
                  divu         s9, s11, zero
                  srli         gp, s3, 13
                  c.addi16sp   sp, -16
                  c.li         s3, -1
                  c.or         s1, a4
                  c.sub        a1, s0
                  sll          a7, zero, a5
                  or           s11, t6, ra
                  slti         zero, a5, 325
                  c.xor        s1, a2
                  mul          ra, a7, a0
                  sltu         t6, s9, s11
                  c.or         a5, a0
                  srli         a6, a0, 17
                  rem          zero, a2, s6
                  mulhu        s3, t5, s5
                  sltiu        gp, s2, -1433
                  mulhsu       s3, t2, sp
                  rem          a6, s6, a7
                  xor          a4, s9, t3
                  mulh         s8, s6, t3
                  mulhsu       t3, s4, t3
                  div          a6, s11, s5
                  sltiu        ra, t0, -1000
                  remu         s5, s2, t4
                  addi         s0, s11, -1331
                  or           t1, t4, t4
                  and          s9, s11, t2
                  c.li         s11, 2
                  c.srli       a0, 3
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           gp, 0xcd51a322
                  li           a6, 0x80000000
                  li           sp, 0x0
                  li           a5, 0x0
                  li           s8, 0x80000000
                  li           s10, 0x2abe0650
                  li           ra, 0x0
                  li           a0, 0xffffffff
                  li           s1, 0xd1adb2ed
                  rem          s9, a5, a6
                  mulhu        sp, s9, s10
                  sub          a5, a5, s8
                  mulhu        gp, sp, a0
                  divu         s9, sp, s8
                  mulh         a6, a0, a5
                  mul          ra, s8, s10
                  div          sp, a0, a5
                  rem          a0, s8, a5
                  sub          a5, sp, sp
                  addi         s1, a5, 1070
                  div          a0, a5, ra
                  div          s10, gp, a0
                  remu         ra, ra, a0
                  mulh         sp, sp, a0
                  div          s9, a5, sp
                  div          a5, gp, a5 #end riscv_int_numeric_corner_stream_13
                  sub          a6, s6, a7
                  slti         s2, a4, -978
                  c.nop
                  xor          a7, t4, s9
                  slt          t1, t3, t0
                  sll          t1, s8, s4
                  sltiu        s3, s9, -1212
                  c.addi       a7, -1
                  c.srli       a1, 26
                  div          s6, t5, s2
                  srli         ra, s2, 22
                  mulhsu       gp, s0, tp
                  remu         s0, s11, t0
                  remu         t3, s7, s2
                  andi         s4, s4, 1832
                  c.or         a1, a0
                  remu         a1, s8, t5
                  srl          s0, t6, a6
                  sltiu        a0, a6, 1000
                  mulhu        t3, a6, t1
                  ori          s3, s8, 282
                  c.addi4spn   s0, sp, 736
                  sra          tp, a5, a4
                  lui          t3, 835304
                  sra          t3, s2, a4
                  xor          s2, zero, a7
                  xori         t4, t3, -1818
                  slt          gp, s2, gp
                  c.andi       a5, 11
                  div          s10, s6, a5
                  c.addi       t1, -1
                  slli         s10, tp, 5
                  c.mv         t0, s4
                  c.and        a5, a5
                  sra          s11, ra, s9
                  sra          s2, s3, a5
                  xori         t1, t3, 1781
                  nop
                  and          a1, ra, t2
                  sra          a6, ra, a5
                  addi         a6, s6, -690
                  c.li         s0, 0
                  c.slli       tp, 23
                  srli         t0, t5, 4
                  xori         t4, s10, -14
                  c.add        a0, s8
                  div          s3, a0, s3
                  c.and        s0, a4
                  srai         t2, gp, 5
                  c.srai       s0, 25
                  c.addi16sp   sp, 464
                  c.addi       s1, -1
                  remu         t3, a4, a4
                  c.add        t1, s3
                  sub          s2, a5, s6
                  c.li         s11, -1
                  andi         t3, sp, 1702
                  sltiu        t4, a5, -453
                  div          a5, a3, t4
                  xor          s7, a6, s6
                  xori         a5, s10, -727
                  nop
                  sll          t2, t6, a4
                  c.lui        s0, 22
                  slt          s9, tp, a2
                  srli         s6, t0, 2
                  la x30, test_done
                  jalr x0, x30, 0
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
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  addi x12, x12, -4
                  sw  x13, (x12)
                  add x13, x12, zero
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x12, x13, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x20, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x20, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x20, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x20, x10, ecall_handler
                  li x10, 0x1
                  beq x20, x10, instr_fault_handler
                  li x10, 0x5
                  beq x20, x10, load_fault_handler
                  li x10, 0x7
                  beq x20, x10, store_fault_handler
                  li x10, 0xc
                  beq x20, x10, pt_fault_handler
                  li x10, 0xd
                  beq x20, x10, pt_fault_handler
                  li x10, 0xf
                  beq x20, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x13, x12, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  add x12, x13, zero
                  lw  x13, (x12)
                  addi x12, x12, 4
                  mret

load_fault_handler:
                  add x13, x12, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  add x12, x13, zero
                  lw  x13, (x12)
                  addi x12, x12, 4
                  mret

store_fault_handler:
                  add x13, x12, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  add x12, x13, zero
                  lw  x13, (x12)
                  addi x12, x12, 4
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x13, x12, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  add x12, x13, zero
                  lw  x13, (x12)
                  addi x12, x12, 4
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x13, x12, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  add x12, x13, zero
                  lw  x13, (x12)
                  addi x12, x12, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x13, x12, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  add x12, x13, zero
                  lw  x13, (x12)
                  addi x12, x12, 4
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
