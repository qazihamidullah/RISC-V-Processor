.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x26, 0x40001104
                  csrw 0x301, x26
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  li x26, 0x0
                  csrw 0x304, x26 # MIE
                  mret
init:             
                  li x0, 0xd
                  li x1, 0xf5c0bd4b
                  li x3, 0xe795c8df
                  li x4, 0xd251ecb4
                  li x5, 0x26c0ef5d
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0xf97c89b2
                  li x10, 0x685373e0
                  li x11, 0xf69db3ed
                  li x12, 0x1
                  li x13, 0x0
                  li x15, 0xa27d3c54
                  li x16, 0xf
                  li x17, 0x3
                  li x18, 0x0
                  li x19, 0x5ff819cf
                  li x20, 0x634ebfd6
                  li x21, 0x0
                  li x22, 0xc
                  li x23, 0x7
                  li x24, 0x4
                  li x25, 0x1c0f9348
                  li x26, 0xfb4d71d6
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0xff3a17fe
                  li x31, 0x0
                  la x14, user_stack_end
main:             li           s4, 0xf856e721 #start riscv_int_numeric_corner_stream_39
                  li           t0, 0x80000000
                  li           s8, 0x0
                  li           a0, 0xffffffff
                  li           a3, 0x0
                  li           t5, 0xffffffff
                  li           a2, 0x0
                  li           tp, 0x80000000
                  li           ra, 0xffffffff
                  li           s5, 0x80000000
                  lui          s5, 293095
                  auipc        ra, 186821
                  mulh         a3, a0, s5
                  mulh         a2, a3, s5
                  rem          t5, s4, s8
                  remu         ra, t5, tp
                  rem          s8, t5, a3
                  mul          t5, t0, t5
                  div          t0, s8, a3
                  lui          ra, 849587
                  divu         t5, t5, t5
                  addi         ra, ra, -166
                  auipc        s8, 35942
                  sub          t5, t5, t5
                  divu         a0, t5, t0
                  add          t5, s8, t0
                  mulhsu       s5, t0, tp #end riscv_int_numeric_corner_stream_39
                  li           t0, 0x17ade8c #start riscv_int_numeric_corner_stream_28
                  li           s0, 0xffffffff
                  li           a1, 0xffffffff
                  li           a7, 0xffffffff
                  li           t4, 0xecd60289
                  li           t2, 0x80000000
                  li           s5, 0x80000000
                  li           t1, 0xef69367c
                  li           t3, 0x80000000
                  li           t6, 0xffffffff
                  sub          s5, a7, t1
                  auipc        t6, 52902
                  addi         t3, s0, -1823
                  sub          a7, t0, t2
                  addi         a7, s0, 1678
                  add          t2, t0, t0
                  lui          s0, 121524
                  sub          a1, t4, s0
                  sub          s5, t1, t4
                  addi         t6, a1, 369
                  sub          a7, t3, t0
                  rem          a1, a7, a1
                  divu         t6, s5, t6
                  auipc        t2, 988868
                  addi         a1, t4, -217
                  remu         t3, t4, t0
                  rem          t4, a7, t0 #end riscv_int_numeric_corner_stream_28
                  li           s9, 0x88a4a13e #start riscv_int_numeric_corner_stream_17
                  li           a1, 0x0
                  li           s6, 0x0
                  li           gp, 0x0
                  li           t5, 0x80000000
                  li           s2, 0x80000000
                  li           t4, 0xc9261330
                  li           s3, 0xffffffff
                  li           t3, 0xf72f0a1b
                  li           a2, 0xffffffff
                  div          s3, s9, s9
                  add          s9, s3, t5
                  divu         s6, s6, a1
                  remu         t5, s2, gp
                  auipc        a1, 891653
                  lui          s6, 453996
                  remu         s9, s9, s3
                  div          s9, t4, s6
                  lui          t5, 908193
                  rem          s9, t4, a1
                  mulh         t3, gp, t5
                  mulh         t3, a2, a2
                  mulhsu       s9, a2, t5
                  nop
                  nop
                  add          a2, s3, a1
                  auipc        s6, 893843
                  divu         s9, a2, s9
                  sub          t5, a1, a1
                  rem          s6, a2, a2
                  div          s3, s9, s3
                  mul          s2, a2, gp
                  nop
                  auipc        s3, 851824
                  mulhsu       s6, a2, s6 #end riscv_int_numeric_corner_stream_17
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_37
                  li           a2, 0xffffffff
                  li           t6, 0xffffffff
                  li           tp, 0xffffffff
                  li           a5, 0xb6e259a7
                  li           a3, 0xffffffff
                  li           s9, 0x80000000
                  li           s10, 0x848beb50
                  li           s3, 0x80000000
                  li           a0, 0x80000000
                  lui          t6, 460567
                  rem          tp, tp, gp
                  rem          a3, s10, gp
                  mulhsu       tp, tp, s9
                  remu         s9, a3, a3
                  auipc        s9, 268309
                  divu         s10, tp, a5
                  lui          a3, 636753
                  div          a3, a0, s3
                  add          t6, s9, t6
                  sub          s3, tp, tp
                  auipc        tp, 369039
                  mul          tp, tp, a0
                  rem          s10, a3, a0
                  lui          t6, 40331
                  auipc        t6, 978188
                  divu         s10, s10, s3
                  mulhsu       tp, tp, s3
                  addi         a5, tp, 1274 #end riscv_int_numeric_corner_stream_37
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           ra, 0x4519fa22
                  li           t4, 0xffffffff
                  li           s10, 0x0
                  li           t0, 0x80000000
                  li           s0, 0x31765584
                  li           t3, 0x80000000
                  li           s7, 0xfe7d33eb
                  li           a3, 0x80000000
                  li           t5, 0x80000000
                  mul          a6, t3, s10
                  mulhsu       a6, t5, t3
                  lui          t0, 111239
                  addi         t4, t0, 1233
                  auipc        s7, 696680
                  div          s10, s0, t5
                  add          s0, t4, t3
                  divu         s10, s10, a6
                  mul          s10, t5, s10
                  mulhsu       t5, s10, s7
                  add          a6, s7, s10
                  mulhsu       a6, a3, t3
                  remu         s10, s7, a6
                  mul          ra, s10, a6
                  auipc        s0, 478823
                  auipc        t0, 293218
                  addi         s7, s7, -1812
                  remu         s7, s7, t4
                  mulhsu       s7, s0, t4
                  add          ra, a6, t0
                  auipc        t4, 56678
                  mulhu        t0, s10, t0
                  addi         s10, s0, 702
                  rem          t4, s10, a6
                  divu         s10, s10, s0
                  mulhsu       t3, a6, t0
                  mulhsu       t5, s0, ra
                  mulhsu       ra, t3, s10
                  add          a6, s7, t3
                  remu         s10, s7, t0 #end riscv_int_numeric_corner_stream_9
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           tp, 0x0
                  li           a6, 0x0
                  li           s1, 0x80000000
                  li           gp, 0xffffffff
                  li           s2, 0x35402b60
                  li           a1, 0xffffffff
                  li           a7, 0x0
                  li           s0, 0x0
                  li           t4, 0xffffffff
                  div          a1, a6, tp
                  mulhu        s0, s9, tp
                  add          s1, t4, a7
                  divu         gp, gp, a7
                  div          a6, gp, tp
                  addi         tp, t4, -529
                  sub          s9, gp, s2
                  divu         t4, gp, a6
                  auipc        gp, 281382
                  mulhu        s9, s2, s9
                  lui          a7, 1045117
                  add          s0, s2, s0
                  mulh         gp, s9, a7
                  addi         a1, s1, -2010
                  divu         a6, s1, s1
                  auipc        s0, 338740
                  div          a7, s2, a7
                  divu         t4, s0, tp
                  nop
                  mulhsu       a7, a1, a6
                  mul          s2, t4, a6
                  mul          s0, s0, gp
                  remu         s0, s0, a6
                  mulh         a6, s0, tp
                  mul          gp, a1, a1
                  mulhu        gp, s2, a6
                  mul          gp, s2, s2
                  add          s2, s0, t4
                  auipc        s2, 128754
                  mul          s9, s0, s9 #end riscv_int_numeric_corner_stream_35
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t3, 0xa2bdd13
                  li           s9, 0xe10f433f
                  li           t2, 0x0
                  li           s2, 0x80000000
                  li           s5, 0xffffffff
                  li           s7, 0x3dc56545
                  li           s4, 0xffffffff
                  li           gp, 0xffffffff
                  li           s1, 0xcf926a2
                  addi         t3, s5, 1133
                  nop
                  auipc        s6, 19262
                  addi         s1, s1, -164
                  lui          s5, 328327
                  sub          s4, s4, t3
                  sub          s5, s1, s2
                  mul          t2, t3, s7
                  nop
                  auipc        s4, 605311
                  mulh         s1, s9, t3
                  rem          t3, s9, t3
                  mul          s2, s1, s9
                  auipc        s1, 1000332
                  div          s6, s9, t2
                  mulhu        s4, s1, s5
                  mulhsu       gp, s9, t2
                  add          t3, s2, t2
                  lui          s6, 309432
                  add          s6, gp, s9
                  nop
                  rem          s6, s5, s9
                  rem          gp, s2, s2
                  mulhsu       s9, s7, t2 #end riscv_int_numeric_corner_stream_12
                  li           s8, 0x7a67ce94 #start riscv_int_numeric_corner_stream_26
                  li           tp, 0x0
                  li           t4, 0x1181f407
                  li           s10, 0xffffffff
                  li           s7, 0xffffffff
                  li           a2, 0xffffffff
                  li           ra, 0xc66e8b87
                  li           a5, 0x0
                  li           a3, 0x0
                  li           t1, 0x80000000
                  mulhu        s7, a3, a5
                  mulhu        t1, s10, s10
                  divu         s7, ra, tp
                  divu         s8, t4, s7
                  sub          s8, a3, a5
                  divu         a2, a5, a2
                  add          t4, t4, t4
                  addi         s8, s7, 898
                  divu         a3, t1, a5
                  lui          tp, 796204
                  remu         a3, s10, s8
                  mulh         s8, a5, s8
                  div          a3, t1, a2
                  nop
                  nop
                  mulh         s10, t1, ra
                  div          s7, tp, t1
                  div          s7, tp, a5
                  rem          a3, s10, s8
                  rem          a3, ra, a5
                  auipc        ra, 388436
                  remu         s10, s7, s10
                  div          s8, s10, a3
                  add          a5, s10, ra
                  mulhu        s7, a5, tp #end riscv_int_numeric_corner_stream_26
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a3, 0x2150d107
                  li           t6, 0xffffffff
                  li           t0, 0x86cb4b5b
                  li           gp, 0x80000000
                  li           tp, 0x0
                  li           a5, 0x0
                  li           t2, 0x0
                  li           s5, 0x0
                  li           a6, 0x80000000
                  div          gp, s8, gp
                  div          s5, t6, s8
                  nop
                  remu         t2, a6, t0
                  mulh         tp, tp, tp
                  lui          s5, 27165
                  mulh         tp, t2, s5
                  auipc        s5, 655277
                  remu         tp, gp, gp
                  mulhsu       t6, a6, a6
                  remu         a6, gp, t0
                  mulh         a3, t6, s8
                  addi         a6, a5, 1022
                  addi         s8, t0, 1210
                  mul          s8, a5, s8
                  mulhsu       gp, s5, t2 #end riscv_int_numeric_corner_stream_18
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x80000000
                  li           t4, 0xffffffff
                  li           s2, 0x1fb3a5ca
                  li           s6, 0xffffffff
                  li           s4, 0x0
                  li           a7, 0x91ec140f
                  li           a6, 0x80000000
                  li           t6, 0x0
                  li           t1, 0xd1137b0a
                  mulhu        t6, t2, t2
                  auipc        t1, 405348
                  addi         a7, s9, -1054
                  remu         s4, t4, s2
                  mul          t2, s4, s4
                  remu         t6, t2, t1
                  add          s4, a7, s6
                  remu         s9, s9, a7
                  remu         t6, s2, s4
                  lui          s9, 285499
                  addi         s4, t6, -511
                  remu         t2, s9, t1
                  lui          t4, 35940
                  remu         s6, t4, a7
                  mulhsu       s2, t1, t2
                  mulh         t6, s6, t4
                  nop
                  remu         a7, t6, t4
                  remu         t6, s4, s4
                  mulh         s9, s9, a7
                  add          t2, t1, s6
                  add          s2, t4, t6
                  addi         s6, t1, 1121
                  addi         a6, t6, -230
                  mulhsu       s9, t4, a7
                  mulhu        s9, t2, t6
                  divu         s9, t4, a7
                  remu         a6, t6, t2
                  mulh         s6, t1, t1 #end riscv_int_numeric_corner_stream_2
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_38
                  li           s8, 0x80000000
                  li           ra, 0xffffffff
                  li           a1, 0x80000000
                  li           t1, 0x6926f072
                  li           a5, 0xffffffff
                  li           a6, 0x0
                  li           s3, 0x80000000
                  li           s0, 0xffffffff
                  li           t5, 0x80000000
                  rem          s8, t0, s8
                  auipc        a5, 439277
                  sub          a5, ra, ra
                  mulh         a6, s3, t0
                  addi         t0, t0, 95
                  mulhu        ra, t5, a6
                  div          s8, s0, s8
                  divu         t5, t5, t5
                  remu         ra, t1, s0
                  mulh         t0, s8, ra
                  mul          s0, s0, ra
                  mulhu        a5, t5, t1
                  nop
                  mulhu        a5, s3, t1
                  add          a6, a6, a1
                  lui          t5, 509456
                  remu         s0, ra, t5
                  lui          a6, 907878
                  mulhsu       t0, a6, t1
                  mulh         s0, t0, s8
                  mulh         s0, ra, a5
                  sub          t5, a5, ra
                  auipc        s8, 415404
                  lui          ra, 788872
                  rem          ra, s8, a5 #end riscv_int_numeric_corner_stream_38
                  li           t0, 0x42712041 #start riscv_int_numeric_corner_stream_23
                  li           s8, 0x0
                  li           t3, 0xffffffff
                  li           s6, 0x886a7b11
                  li           t6, 0x0
                  li           a5, 0x69f6f134
                  li           a6, 0xd83000a0
                  li           s1, 0xa8163bc4
                  li           s2, 0x80000000
                  li           s4, 0x1f7882a9
                  mulhu        a5, s8, a5
                  div          s6, t0, s6
                  lui          s1, 944335
                  mulhu        t0, t6, s2
                  div          s1, s4, t0
                  add          t6, s4, t3
                  mulhsu       s1, a6, t0
                  mulhsu       t0, s8, a6
                  mulhsu       s1, s1, s4
                  mulh         s8, a5, s4
                  sub          t6, t6, t3
                  nop
                  mul          t0, s4, t3
                  mulhsu       t0, s6, t6
                  mulhsu       a6, s1, t0
                  mulh         t3, a6, s2
                  mulh         a5, s2, a6
                  nop
                  mulhu        t6, t6, t3
                  mulhu        s8, s1, s4
                  sub          s8, s4, s8
                  addi         a5, s1, -592
                  div          s2, s1, t0
                  divu         s8, t0, t0 #end riscv_int_numeric_corner_stream_23
                  li           gp, 0xe602a4a6 #start riscv_int_numeric_corner_stream_10
                  li           t1, 0x80000000
                  li           s4, 0xffffffff
                  li           ra, 0x0
                  li           s8, 0xe9e1ed8c
                  li           s7, 0x0
                  li           t4, 0x0
                  li           s0, 0x80000000
                  li           a5, 0x80000000
                  li           t5, 0xffffffff
                  mulhsu       s8, t1, gp
                  add          s0, s4, t4
                  mulh         s8, t5, t4
                  addi         s0, s7, 1710
                  rem          s0, s7, a5
                  divu         t5, t1, s0
                  nop
                  mulh         t1, s0, t5
                  div          t1, gp, gp
                  add          s0, s4, s8
                  rem          t1, t4, s0
                  mulh         s0, gp, a5
                  mulhu        ra, s8, s4
                  divu         t5, ra, t5
                  divu         s7, s4, s7
                  mulh         t1, ra, a5
                  mulhsu       a5, gp, t4
                  rem          ra, gp, t1
                  mulh         a5, s0, ra
                  sub          s8, s4, t5
                  lui          s0, 850541
                  auipc        s7, 11754
                  lui          s0, 795954
                  nop
                  mul          s7, gp, gp
                  auipc        a5, 807553
                  mulhsu       ra, s8, ra
                  div          s0, s8, s7
                  remu         s7, a5, t5
                  mul          ra, a5, s7 #end riscv_int_numeric_corner_stream_10
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s1, 0xe34f615e
                  li           t2, 0x0
                  li           a7, 0x0
                  li           s2, 0x0
                  li           ra, 0x0
                  li           s4, 0x80000000
                  li           t0, 0xffffffff
                  li           t6, 0x0
                  li           t5, 0x0
                  div          t2, t6, t6
                  add          t2, s2, t6
                  mulh         t6, a7, s4
                  remu         s2, t2, t2
                  lui          t6, 269672
                  mul          t0, t5, s2
                  mulh         s1, t5, ra
                  lui          t5, 51527
                  mul          s2, s2, t6
                  mulhsu       gp, s2, gp
                  add          t5, t2, t2
                  mul          s1, ra, t5
                  mulhu        a7, t5, a7
                  div          s1, t6, t2
                  rem          t5, a7, t2
                  rem          t0, t0, s4
                  sub          t5, t6, t6
                  mulh         t0, t6, t0
                  rem          a7, s4, s1
                  remu         a7, a7, ra
                  mul          t5, t6, s2
                  remu         s2, s1, t5
                  addi         s4, s4, 1850
                  rem          s1, t2, t0
                  mul          s1, s4, s4
                  auipc        s2, 416348
                  sub          t2, s2, s4
                  auipc        t6, 195915
                  sub          gp, t0, s1 #end riscv_int_numeric_corner_stream_11
                  c.slli       t3, 22
                  xor          s8, s9, s0
                  srai         zero, s6, 29
                  sra          t6, s6, ra
                  and          gp, tp, s10
                  add          s3, t6, t6
                  c.xor        s1, a0
                  divu         s1, zero, ra
                  rem          s1, a3, zero
                  sltiu        s9, a7, -1459
                  rem          zero, s8, s0
                  c.li         a7, -1
                  sll          a1, tp, gp
                  srli         a6, t0, 30
                  rem          s3, zero, s8
                  c.sub        a2, a1
                  slli         a0, t4, 2
                  nop
                  srl          t0, s11, a4
                  c.and        s0, s0
                  c.addi       t5, 11
                  srl          tp, a2, a3
                  sll          a0, s5, tp
                  xor          s3, gp, t5
                  xori         s5, s0, -438
                  auipc        t5, 45259
                  c.srai       s0, 21
                  andi         gp, s2, 856
                  c.li         s2, -1
                  ori          a2, sp, 592
                  srl          t4, s6, s3
                  c.lui        s10, 4
                  srai         t5, s8, 10
                  add          s1, t6, a2
                  c.xor        a1, a5
                  c.and        a1, a3
                  lui          a0, 803516
                  srai         s0, s1, 22
                  c.xor        a3, a5
                  nop
                  slti         a5, t3, 794
                  slt          a2, t0, t5
                  lui          s6, 292173
                  andi         s0, t4, -1549
                  divu         gp, t6, s7
                  c.xor        s1, a4
                  divu         t5, t4, s11
                  sll          s4, a7, t1
                  c.slli       a1, 10
                  srl          t5, a2, s1
                  xor          a7, s5, s2
                  ori          s4, t6, 1261
                  c.slli       a7, 24
                  div          tp, t0, s11
                  xor          t6, gp, s7
                  srl          t3, s0, a6
                  c.lui        t6, 24
                  c.slli       s3, 30
                  c.srli       s1, 20
                  c.mv         a0, tp
                  or           ra, gp, s7
                  mulhsu       t1, s4, a0
                  and          a1, t0, a7
                  addi         a5, a7, -1811
                  c.sub        a5, s0
                  slli         a0, gp, 3
                  c.and        a5, a1
                  sltiu        s3, s7, -1655
                  c.slli       s8, 24
                  c.addi       t5, -1
                  lui          a0, 313218
                  addi         s2, a6, 512
                  c.addi       ra, -1
                  slt          t6, t2, s4
                  mulhsu       a7, t6, a4
                  mul          t2, a1, ra
                  lui          a7, 957557
                  mulhu        s9, a1, s10
                  sltiu        s2, t2, 819
                  srli         t5, gp, 17
                  c.mv         t2, s8
                  sub          t2, s5, s4
                  auipc        a2, 679198
                  c.xor        a1, s0
                  mul          a5, t3, s4
                  ori          s5, a4, -729
                  sltu         s2, t1, s1
                  c.slli       ra, 11
                  slt          t1, a3, zero
                  mul          s4, a6, t2
                  rem          s7, zero, s7
                  andi         s0, tp, 891
                  slti         a5, a4, -1554
                  slt          t0, a1, s1
                  andi         t6, s10, 1263
                  c.li         a1, 14
                  auipc        a5, 629324
                  slti         t4, s7, -802
                  andi         tp, s7, 608
                  c.li         t0, 0
                  srli         t2, a4, 25
                  mulhsu       zero, t2, t3
                  c.sub        a2, a1
                  sra          a0, s6, s0
                  c.add        gp, t6
                  mulh         t2, ra, s6
                  sltu         s3, a3, s4
                  sra          a5, sp, a6
                  div          zero, tp, sp
                  sltu         ra, t3, a0
                  c.addi       a2, 1
                  remu         a5, t3, s4
                  c.slli       s0, 8
                  sltiu        s5, a5, -751
                  mulhsu       a5, a7, s1
                  slt          zero, t5, s5
                  c.addi       t1, 18
                  addi         t4, s1, -599
                  rem          a3, t0, a4
                  srl          a0, s5, zero
                  sra          s2, a2, t0
                  c.addi       a1, 5
                  c.li         s5, -1
                  c.sub        a5, a3
                  nop
                  c.li         t4, 21
                  srli         s10, t1, 14
                  remu         gp, tp, t5
                  xor          s0, zero, t6
                  c.andi       s0, 18
                  c.srli       a0, 23
                  or           zero, t1, s2
                  sra          a3, t5, a7
                  c.addi       ra, -1
                  c.slli       t5, 30
                  sll          s4, s10, s3
                  c.or         a5, a4
                  sra          ra, s1, a2
                  rem          a0, a6, s11
                  sra          s8, s5, a7
                  sub          t1, tp, a3
                  sub          ra, a4, sp
                  c.mv         a0, t1
                  c.and        s1, a3
                  c.add        gp, a7
                  slt          s0, s11, s7
                  srai         a3, s10, 0
                  c.li         gp, -1
                  div          t1, s7, s3
                  sra          s7, tp, a0
                  c.xor        a1, a2
                  addi         a2, a6, -526
                  sll          t3, a6, t2
                  ori          s7, t4, 1254
                  mul          t3, s4, s10
                  c.andi       a5, 12
                  slti         t3, t1, 232
                  slli         a0, s8, 3
                  c.mv         s5, s7
                  lui          a0, 755489
                  srl          tp, s8, s0
                  mul          gp, s4, tp
                  c.and        a2, a5
                  remu         a5, s9, zero
                  c.or         a3, a3
                  c.add        s4, sp
                  c.nop
                  c.li         s5, -1
                  c.mv         a3, s1
                  c.or         a2, s1
                  c.nop
                  rem          zero, gp, s7
                  addi         a2, a0, -1850
                  c.nop
                  c.and        a1, s1
                  or           s5, t1, t2
                  xor          t2, t1, t4
                  c.li         s4, -1
                  c.xor        a0, a3
                  c.nop
                  c.add        s7, gp
                  c.or         a3, a1
                  slli         a2, a2, 30
                  c.nop
                  sra          a3, t5, s10
                  nop
                  sltu         t5, a3, a7
                  div          gp, a2, a5
                  c.xor        a5, s0
                  slt          t4, a2, zero
                  sra          t0, s8, s1
                  c.nop
                  c.sub        a5, a0
                  c.addi       a2, -1
                  ori          a6, a5, 276
                  c.srai       s0, 19
                  c.slli       s7, 5
                  sltiu        s1, t0, -764
                  c.andi       a1, -1
                  c.li         t0, 24
                  c.li         s5, -1
                  ori          s2, ra, 319
                  srl          a2, a6, a5
                  auipc        t6, 270198
                  rem          t5, a0, a0
                  slli         zero, sp, 23
                  sll          t0, zero, s10
                  sltiu        a3, a1, -479
                  srl          a5, s7, a1
                  remu         s0, zero, t5
                  mul          s2, s10, tp
                  divu         a5, s10, s4
                  add          s2, s2, zero
                  c.andi       a3, -1
                  ori          a5, a1, -1726
                  add          s9, s11, s2
                  c.xor        s0, a0
                  remu         t6, a1, t0
                  c.xor        a0, a0
                  xor          s8, gp, gp
                  c.nop
                  slli         s1, gp, 23
                  c.srli       s1, 27
                  c.add        s1, s5
                  mulh         ra, a2, a5
                  and          t0, t0, t5
                  c.addi       s4, -1
                  mulh         t1, s7, a6
                  andi         s1, s4, 1279
                  rem          s2, t4, a2
                  xor          a2, s5, t1
                  sltiu        t4, a5, 1117
                  c.andi       a2, 9
                  xori         s3, s0, -1133
                  add          s1, ra, a1
                  div          a2, tp, a3
                  c.andi       a2, -1
                  c.slli       s9, 7
                  slli         s4, s3, 0
                  c.srli       s1, 4
                  c.sub        a0, a0
                  remu         a7, s7, t0
                  c.srli       a0, 24
                  sub          s1, t1, s11
                  c.slli       t1, 31
                  c.sub        a0, a2
                  c.srai       a2, 25
                  auipc        gp, 295907
                  c.and        a2, a2
                  xor          s10, s11, a3
                  addi         t2, ra, -142
                  c.or         a3, a1
                  slli         a6, t5, 27
                  div          ra, s7, t0
                  rem          s0, a0, s1
                  c.and        a0, s1
                  c.nop
                  slt          t3, a7, s3
                  slti         s4, tp, 1536
                  div          ra, a0, t1
                  c.addi       gp, 5
                  c.lui        a3, 8
                  nop
                  add          zero, t0, s5
                  slt          s10, t2, ra
                  or           s0, t1, s3
                  mulhu        t4, s7, t2
                  andi         t2, a5, -413
                  c.li         t0, -1
                  c.mv         t4, a2
                  c.or         a3, s0
                  xori         s10, t5, 439
                  c.and        s0, a5
                  rem          s1, s8, t2
                  c.or         a5, a0
                  mul          s7, t2, a2
                  mulhsu       t0, a0, tp
                  rem          a0, gp, t1
                  and          ra, a2, s2
                  c.srai       a2, 12
                  c.lui        t2, 17
                  mulhu        s2, t6, ra
                  xori         a2, s7, 20
                  ori          t1, a6, -1499
                  slt          a0, s5, s10
                  sltu         s2, a1, s4
                  add          tp, a4, a1
                  ori          t0, zero, 80
                  slti         a3, s0, 1566
                  srai         t1, tp, 10
                  sltiu        t5, t0, -1649
                  sub          s3, a0, a5
                  c.mv         t3, s6
                  sra          s3, s3, s0
                  srai         s8, s4, 30
                  slt          s4, s2, a7
                  divu         tp, a0, s0
                  addi         tp, s0, -1572
                  sltiu        t2, zero, -1976
                  mulhu        t0, s2, gp
                  add          a3, s10, s3
                  c.mv         s1, a0
                  auipc        tp, 312152
                  mul          s4, t4, t2
                  add          a2, s11, s11
                  addi         gp, t5, 1089
                  or           s9, a1, s1
                  slli         t6, s8, 21
                  sltiu        s9, s10, 1554
                  addi         a1, s1, -406
                  c.nop
                  auipc        s6, 973286
                  xor          a3, s0, a4
                  slti         t5, t1, 932
                  sra          s5, a6, s4
                  c.and        a5, a4
                  rem          t3, s7, a4
                  sll          a7, a4, a7
                  divu         a7, s8, t3
                  c.addi       s5, -1
                  add          a6, s3, s3
                  or           t6, a5, s4
                  div          t3, t5, s10
                  auipc        gp, 602073
                  mul          s9, a0, sp
                  add          gp, s11, s6
                  c.sub        a1, a1
                  xor          s9, tp, t3
                  mulhu        a7, s6, s10
                  c.sub        a0, a3
                  c.xor        a5, a2
                  xor          s0, s11, s2
                  slti         a6, s1, 278
                  xor          a7, t5, a0
                  srai         t1, t2, 21
                  xor          t1, s5, t1
                  srl          s7, a2, sp
                  sltiu        s9, a7, 76
                  addi         a7, s10, -111
                  c.andi       s0, 2
                  ori          s8, a5, 92
                  nop
                  c.andi       a3, 24
                  divu         s6, s6, s10
                  xori         s3, a4, 886
                  sub          s0, t6, t1
                  divu         a1, a6, a4
                  c.and        a2, a0
                  slli         a5, s5, 8
                  slti         t1, s11, -552
                  divu         t3, a2, t2
                  addi         t0, s4, 1200
                  c.and        s0, a5
                  auipc        s2, 550671
                  sltiu        tp, s1, 1345
                  andi         zero, a3, 1163
                  c.addi       s1, -1
                  sltu         t6, s11, s1
                  sltu         t5, s9, sp
                  c.mv         t1, s6
                  c.lui        t1, 23
                  srl          a7, a5, s11
                  mulh         ra, a6, tp
                  ori          t2, s6, 235
                  sub          s6, s6, s6
                  c.or         s0, a2
                  c.slli       s8, 15
                  slti         t0, s4, -1097
                  c.or         a2, s1
                  andi         s9, s6, -652
                  srli         gp, s7, 27
                  c.xor        a5, a5
                  slli         a7, s4, 29
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           s9, 0x80000000
                  li           gp, 0x0
                  li           a2, 0xffffffff
                  li           t1, 0xb9448c9a
                  li           tp, 0xc6106a6d
                  li           a7, 0x80000000
                  li           a6, 0x80000000
                  li           s7, 0x0
                  li           s5, 0xffffffff
                  rem          tp, tp, s5
                  remu         s9, a6, tp
                  nop
                  nop
                  auipc        gp, 430412
                  divu         a2, t1, a7
                  add          tp, t1, a6
                  mulh         a2, a6, s9
                  mul          s7, tp, s9
                  mulhu        a6, a2, s7
                  nop
                  mulhsu       tp, a7, s5
                  addi         s5, a2, -457
                  nop
                  mul          t1, gp, s9
                  nop
                  lui          s5, 135398
                  auipc        t1, 355469
                  sub          t1, s7, s7
                  auipc        a2, 383106
                  mulh         s5, s9, s9
                  divu         a6, a2, a2
                  div          s9, s9, a7
                  divu         s9, a6, a7
                  auipc        t1, 566943
                  remu         gp, s5, t1
                  mulhu        t0, s7, tp #end riscv_int_numeric_corner_stream_30
                  addi         s4, a3, -15
                  c.xor        s0, s0
                  sll          a7, sp, sp
                  sltiu        t1, ra, 16
                  mulhsu       a6, s8, s0
                  mulhsu       s9, a7, a0
                  add          zero, a1, s1
                  c.srli       a5, 18
                  c.lui        s8, 26
                  c.sub        a5, a1
                  sltu         t0, s7, tp
                  c.lui        a1, 11
                  c.slli       ra, 20
                  div          s1, s9, sp
                  c.mv         gp, a5
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           s9, 0xffffffff
                  li           gp, 0x80000000
                  li           a6, 0x80000000
                  li           t0, 0xffffffff
                  li           s6, 0x0
                  li           ra, 0xffffffff
                  li           a0, 0x0
                  li           s8, 0x80000000
                  li           s0, 0x0
                  sub          t0, s9, s0
                  mul          s8, a0, s0
                  lui          s6, 97611
                  nop
                  rem          s6, a6, s1
                  addi         a6, s8, 1860
                  rem          ra, a0, gp
                  mulhsu       gp, t0, a0
                  div          s8, s9, s8
                  addi         a6, t0, -762
                  mulhu        gp, a6, s8
                  sub          s0, ra, s0
                  remu         t0, ra, s8
                  mulh         s9, s6, s0
                  auipc        t0, 777544
                  add          s9, gp, gp
                  auipc        s9, 536149
                  addi         t0, s9, -1780
                  nop
                  addi         a6, a6, -1778
                  auipc        a0, 260531
                  rem          s9, s6, s8
                  auipc        s8, 316230
                  mulhu        a0, ra, s6
                  divu         s1, s9, ra
                  mul          a6, s6, s8
                  addi         a0, ra, 403
                  add          t0, a0, s9
                  add          s0, s8, a0
                  mulhsu       s9, a0, s0 #end riscv_int_numeric_corner_stream_32
                  c.mv         t2, sp
                  mulhu        ra, t6, a4
                  divu         s8, s5, s4
                  slli         t1, a0, 9
                  c.sub        a0, a5
                  c.or         s1, s1
                  c.add        a5, s5
                  rem          tp, t0, a4
                  mulh         s10, a0, a4
                  c.xor        a0, s0
                  c.li         a6, 30
                  xori         s7, t3, -1729
                  mul          s10, s9, s5
                  or           s0, sp, s8
                  sub          gp, sp, t0
                  andi         t3, zero, -1738
                  sll          a0, a2, a6
                  andi         tp, t6, 1257
                  slli         t0, a2, 5
                  mulhu        t5, a0, t3
                  auipc        a1, 699095
                  srai         a5, s6, 5
                  div          ra, s11, s5
                  sll          t5, zero, a3
                  andi         a6, zero, 475
                  c.add        s1, t4
                  c.sub        s1, s0
                  divu         s0, a6, t2
                  add          s5, a0, zero
                  sra          a0, t4, s7
                  sll          s10, a0, s11
                  xor          s10, gp, gp
                  xor          t3, s10, s5
                  andi         a1, t5, -564
                  divu         a0, a6, a5
                  srli         t2, s11, 9
                  c.srai       a2, 21
                  slti         t2, s1, 1191
                  c.addi       s5, 10
                  auipc        s4, 754011
                  srai         s0, t6, 7
                  sltu         s5, sp, s9
                  and          s3, t2, t6
                  div          s9, zero, s4
                  mul          a7, t0, t3
                  and          t3, t0, t5
                  slti         s10, a4, 1769
                  c.srli       a5, 27
                  sra          t5, s6, s8
                  or           s5, s8, s1
                  c.lui        s8, 23
                  mulhu        t6, a7, s3
                  c.lui        a6, 3
                  xor          s10, t5, t5
                  c.andi       a5, -1
                  sltiu        tp, t0, -363
                  andi         a2, a1, -1891
                  sll          s3, ra, a1
                  srli         s0, zero, 7
                  srai         a1, a3, 5
                  slli         t1, s7, 5
                  andi         t2, zero, -1116
                  divu         s0, gp, t3
                  c.andi       a3, -1
                  lui          s7, 525772
                  and          t2, a2, a3
                  sra          gp, ra, a3
                  c.sub        a2, a1
                  c.lui        a7, 25
                  and          a2, s3, s6
                  rem          s6, t1, a4
                  mulhu        t5, s2, a7
                  c.mv         t4, ra
                  srli         s4, a7, 30
                  xor          gp, sp, t2
                  mulhu        t4, a7, s5
                  c.sub        a0, a5
                  xor          t3, t2, s4
                  c.sub        a2, a3
                  c.addi       a3, -1
                  c.add        s8, a2
                  xor          a7, a0, s8
                  mul          s4, s3, sp
                  c.or         s1, s0
                  c.or         a0, a3
                  nop
                  slti         s9, t0, 1631
                  sltiu        s7, s7, 780
                  c.add        s10, a2
                  slti         s7, gp, 1140
                  rem          t5, gp, a4
                  and          t0, a4, t6
                  sltu         zero, sp, s7
                  or           a1, s2, a0
                  sra          a0, s2, s6
                  sra          a0, a5, s2
                  add          t4, gp, s2
                  mul          ra, t3, ra
                  slt          zero, t3, a6
                  divu         t6, s7, s9
                  slt          t6, t6, gp
                  slti         s1, t3, -680
                  lui          gp, 276115
                  addi         t5, t4, -580
                  c.xor        a5, s0
                  ori          t5, a7, 160
                  mulhu        s4, t3, s2
                  nop
                  c.xor        a3, a0
                  sll          s4, t6, a1
                  c.mv         a0, sp
                  c.nop
                  lui          t2, 839196
                  srai         a7, a6, 7
                  sra          gp, a6, a1
                  sra          a0, s8, t6
                  add          s7, t4, s5
                  c.nop
                  mulhu        t6, zero, s8
                  c.or         a2, a2
                  mulhsu       s5, t5, t6
                  slt          t5, a3, a3
                  c.lui        t5, 14
                  c.add        s3, s7
                  sltu         s4, t3, a4
                  add          s4, a3, s10
                  c.li         a5, 21
                  c.add        s9, s11
                  addi         a7, t4, 1608
                  sub          s3, s6, gp
                  nop
                  sub          s5, t2, s10
                  nop
                  c.andi       a0, 3
                  xor          ra, a1, t4
                  sltiu        a6, tp, 1457
                  remu         s4, t6, s11
                  srai         s9, a4, 6
                  add          t4, a6, s6
                  c.andi       a0, 0
                  c.xor        a1, a2
                  lui          tp, 915191
                  sub          a5, s0, s11
                  mulhsu       s3, t3, s5
                  mulhsu       a1, a5, a6
                  auipc        a0, 652596
                  lui          a1, 1035160
                  c.nop
                  add          s3, a1, s0
                  ori          t0, s6, -972
                  slti         a6, s1, 219
                  c.nop
                  andi         s3, ra, -1038
                  mul          s1, s0, t3
                  c.sub        a2, s0
                  c.lui        s1, 4
                  sll          a0, s2, s2
                  mulhu        t1, t1, t4
                  c.sub        a5, a3
                  nop
                  xori         s5, s0, -1077
                  auipc        ra, 737273
                  mulhsu       gp, s8, a3
                  c.mv         t4, s2
                  srai         t6, tp, 24
                  ori          s2, a7, 1099
                  c.nop
                  addi         a2, t5, 525
                  c.srli       a5, 19
                  c.srai       a5, 23
                  addi         t3, t1, -1915
                  andi         a2, s5, 1123
                  sub          s4, s0, s11
                  or           zero, t6, t4
                  nop
                  sltu         s10, a6, t0
                  c.addi       s6, -1
                  c.li         t4, 13
                  c.xor        a2, s0
                  nop
                  lui          s3, 238506
                  srl          t2, s2, t2
                  c.and        s0, a1
                  auipc        a3, 56255
                  c.srai       s1, 24
                  c.lui        t3, 29
                  mulh         a7, a1, t5
                  mulhu        a7, s4, t4
                  slti         s4, t1, -1347
                  c.sub        a2, a3
                  slti         s8, sp, 356
                  c.mv         t0, tp
                  srl          tp, s5, gp
                  c.srli       a2, 14
                  ori          a2, s8, 1775
                  c.add        a0, s3
                  remu         t1, a1, a6
                  sub          gp, s5, s10
                  mulhsu       s2, s3, s10
                  c.add        a5, s8
                  slti         ra, zero, -578
                  srl          a2, a7, tp
                  c.andi       s0, 23
                  sll          zero, s6, s4
                  add          t5, gp, s1
                  divu         t0, s2, s5
                  or           s0, a3, a2
                  divu         a1, s3, t3
                  c.li         t6, 17
                  nop
                  c.nop
                  ori          ra, t5, 20
                  c.mv         s7, s5
                  srli         t6, s5, 8
                  c.mv         s2, t5
                  mul          a7, s8, s10
                  c.mv         s4, t0
                  c.slli       a6, 16
                  slli         t0, t3, 26
                  addi         a0, tp, 874
                  rem          gp, t1, a1
                  c.slli       t5, 26
                  or           t0, a5, a4
                  srl          t5, s2, t5
                  sll          t4, a4, a3
                  srl          t1, s1, t3
                  c.nop
                  srli         s7, a6, 11
                  mulhsu       s4, s7, a7
                  and          s4, a7, a5
                  c.srai       a5, 19
                  div          a5, a4, a0
                  c.or         a0, a0
                  remu         a1, s2, t6
                  c.and        a2, s1
                  remu         t6, ra, a7
                  c.xor        a1, a5
                  c.or         a2, a2
                  sltu         t0, s8, a6
                  slt          s5, s0, ra
                  c.mv         s3, a1
                  lui          ra, 361119
                  and          s9, s7, s10
                  andi         a0, s6, -790
                  c.andi       a2, -1
                  auipc        t2, 747978
                  c.add        a0, a5
                  slti         a5, s2, 385
                  add          a2, ra, s1
                  c.srai       a5, 6
                  mulhu        s8, tp, a1
                  sra          a1, t6, sp
                  auipc        s3, 124974
                  slti         ra, a5, 547
                  mul          a5, t1, a5
                  mulhsu       a7, t3, a4
                  slli         s4, t5, 25
                  mul          s6, t0, s0
                  c.nop
                  c.and        a0, a4
                  c.slli       t1, 3
                  sub          t3, a1, t3
                  remu         s2, s4, s10
                  c.andi       s1, -1
                  c.xor        a2, s0
                  c.or         a2, a0
                  divu         t6, tp, s10
                  c.and        a3, s0
                  ori          s7, a1, 1007
                  c.li         s5, -1
                  auipc        a2, 627422
                  c.xor        a2, s0
                  slt          s1, s1, a3
                  c.slli       a1, 23
                  rem          t3, s8, gp
                  srai         s7, a6, 30
                  c.sub        s0, a0
                  slti         a1, s6, 881
                  c.lui        gp, 30
                  c.lui        t1, 17
                  c.sub        a5, a4
                  c.sub        a5, a4
                  c.add        s5, t1
                  sub          s10, a1, s10
                  ori          tp, s1, 161
                  c.srai       a0, 15
                  c.and        s0, a4
                  and          t6, t5, a1
                  lui          t1, 875562
                  c.add        a2, t2
                  mulh         s2, a2, s5
                  rem          t1, t3, a4
                  andi         s7, t4, 293
                  c.and        s0, a4
                  c.srai       a0, 27
                  add          a0, t5, t5
                  c.srai       a5, 22
                  xor          s3, t6, s7
                  srli         t3, a2, 22
                  slt          s10, a1, tp
                  c.xor        a5, a1
                  sll          s1, s11, a4
                  sub          s5, a3, s1
                  mulh         a0, t1, s4
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s2, 0x80000000
                  li           s6, 0x0
                  li           s1, 0x0
                  li           t1, 0x80000000
                  li           s3, 0x80000000
                  li           a5, 0x80000000
                  li           s4, 0x0
                  li           ra, 0x9868f013
                  li           a7, 0x73cac33
                  mulhu        t5, a7, s2
                  lui          s4, 794171
                  rem          t5, a5, t1
                  add          s4, a5, ra
                  mulh         s3, s6, t5
                  add          t1, a7, s3
                  mulh         a5, t1, s1
                  sub          a7, s1, s2
                  mulhu        a7, ra, s2
                  addi         a5, s1, -638
                  mulh         s1, a7, a5
                  sub          a7, s1, s3
                  addi         a7, s1, 480
                  mulhsu       s1, s1, s1
                  auipc        t1, 830296
                  mulhu        t1, t1, a7
                  auipc        s2, 226598
                  mulhu        s1, ra, s6
                  mulhsu       ra, s4, s4
                  divu         s3, s3, t1
                  remu         a7, s3, s6
                  addi         ra, a5, 1687
                  divu         t5, a5, s6
                  mulhsu       ra, s4, a5
                  add          s4, t5, a7
                  sub          s4, s4, s4
                  sub          s6, s3, s2
                  mulh         s2, s1, s3
                  divu         s2, s3, a5 #end riscv_int_numeric_corner_stream_14
                  c.mv         a2, s0
                  mulhu        ra, a0, s2
                  auipc        t0, 936694
                  c.mv         s4, s1
                  addi         a1, a2, -576
                  auipc        s3, 582846
                  c.mv         s5, s4
                  xori         s10, ra, -106
                  c.slli       t3, 4
                  c.and        a3, s1
                  srai         a2, s10, 18
                  sltu         tp, gp, a7
                  divu         t6, s2, a1
                  c.srli       a5, 26
                  mul          s10, t6, a7
                  c.slli       a6, 16
                  and          gp, a4, s8
                  mulhsu       gp, t5, a0
                  c.slli       tp, 1
                  and          ra, tp, s0
                  xori         ra, a2, -429
                  c.add        t0, t4
                  c.li         t1, 13
                  xor          a5, ra, t3
                  c.or         a1, a3
                  slti         tp, tp, -14
                  srl          a5, s9, s5
                  srli         s3, a5, 12
                  xori         zero, s1, 586
                  c.andi       a0, 2
                  sltu         a0, t6, a7
                  c.slli       t5, 2
                  c.sub        a2, a3
                  slt          a0, t5, a7
                  xor          t2, s0, a7
                  c.srai       s0, 24
                  add          t3, t3, s10
                  slti         t5, t3, 741
                  c.slli       s9, 20
                  c.mv         a6, ra
                  xor          s9, a7, a2
                  c.srai       a0, 13
                  slti         s9, s7, 1160
                  or           t2, s8, a5
                  c.xor        s1, a5
                  mulhu        t0, a0, s11
                  c.srli       a3, 17
                  slti         a1, s0, -203
                  srli         a3, sp, 30
                  and          t5, tp, s2
                  or           a6, s9, t5
                  srl          s1, s7, a4
                  c.li         gp, -1
                  slt          a0, t1, s11
                  xori         t1, s8, -722
                  c.srli       a5, 8
                  srli         t2, ra, 17
                  c.slli       t0, 10
                  auipc        s5, 304855
                  auipc        s9, 446494
                  c.srai       a2, 28
                  lui          s8, 640257
                  or           s2, s7, s8
                  ori          s10, t1, 1301
                  andi         t1, ra, 1505
                  c.nop
                  xori         s1, a7, 1362
                  divu         ra, s11, t1
                  c.addi       t5, 16
                  auipc        s3, 573172
                  sll          s0, sp, t6
                  divu         t6, s5, t0
                  sltu         s5, s9, s4
                  c.slli       a6, 17
                  lui          ra, 341985
                  xori         t6, s3, -1052
                  mulhsu       s6, s4, t2
                  lui          t2, 1031630
                  and          s3, a2, s1
                  slti         a0, s4, -1527
                  mulhsu       t3, t2, s3
                  c.add        t0, a7
                  ori          t5, s10, -1932
                  sltiu        s5, s2, 1134
                  c.addi       t5, 25
                  slti         s10, s5, -28
                  srai         a5, a2, 20
                  div          a6, a6, s7
                  or           a1, s3, s7
                  divu         a2, s10, sp
                  c.mv         t5, s7
                  c.mv         s1, a7
                  c.or         a2, a4
                  slli         s9, a6, 25
                  sltu         s8, s0, s2
                  mul          a7, t3, s6
                  c.sub        s1, s0
                  c.li         gp, -1
                  rem          t3, s5, gp
                  c.and        s1, a1
                  rem          gp, a6, a3
                  sltiu        t2, s1, 1860
                  or           s2, s0, a7
                  addi         s8, tp, 1144
                  remu         a0, sp, s0
                  c.mv         s0, a6
                  sub          a3, s0, a0
                  sll          s1, s1, s5
                  rem          gp, a6, sp
                  sll          s0, ra, s0
                  srli         s2, t1, 7
                  srli         t0, s5, 8
                  auipc        t5, 105111
                  sra          a7, a3, a5
                  c.sub        s1, a5
                  divu         zero, s11, s2
                  c.sub        a5, a2
                  and          s0, s4, t1
                  xor          ra, a3, s9
                  sll          a0, s2, t5
                  sra          a0, a7, gp
                  c.srai       a1, 18
                  xor          tp, s8, tp
                  slt          s1, s0, sp
                  auipc        a3, 69404
                  slli         t1, sp, 23
                  c.mv         t6, s3
                  sub          t6, a0, sp
                  mulhsu       tp, a0, s8
                  slt          s6, a6, s8
                  c.and        a2, a1
                  mul          s7, a4, s11
                  c.and        s0, s0
                  sub          s8, s0, a0
                  sll          s8, t2, a1
                  c.addi       a6, 5
                  sltiu        t1, a1, -323
                  mulh         a6, t4, s9
                  c.srli       a5, 19
                  slti         a2, s5, 1938
                  divu         s0, t4, s0
                  c.andi       a5, -1
                  srai         t0, sp, 22
                  srl          s2, s9, s5
                  c.mv         s5, t5
                  c.and        a5, s1
                  c.srai       a2, 10
                  c.add        s1, s1
                  mul          s1, t1, ra
                  div          s5, ra, t6
                  srai         gp, a7, 12
                  ori          a3, t5, 1084
                  lui          zero, 304274
                  ori          a6, a5, -932
                  or           t5, t2, t2
                  c.srli       a3, 3
                  xori         s2, s6, -1597
                  srai         t2, s4, 29
                  c.andi       s0, -1
                  c.mv         a2, a0
                  c.slli       s5, 9
                  srl          s7, a6, s5
                  srai         tp, t1, 19
                  lui          s4, 824261
                  mulhu        a1, s2, s7
                  c.addi       s4, -1
                  srai         a5, a2, 21
                  xor          a5, t2, gp
                  mul          t1, t2, s5
                  auipc        a5, 153519
                  c.and        s1, s1
                  lui          t6, 648905
                  c.addi       s3, 15
                  sltiu        t2, tp, 474
                  c.addi       s8, 6
                  c.or         a5, a4
                  or           t4, a7, s10
                  and          t0, a4, t4
                  ori          s9, s1, 525
                  slli         s10, s4, 14
                  andi         s0, s9, -1297
                  c.add        a5, s4
                  nop
                  mulh         a0, s8, a2
                  sltu         a2, t0, t2
                  andi         zero, t2, -761
                  mulh         s4, tp, a4
                  remu         s2, a3, a4
                  c.mv         s4, s3
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s3, 0x80000000
                  li           t4, 0x0
                  li           a2, 0xffffffff
                  li           s6, 0xc94ebc99
                  li           s8, 0xffffffff
                  li           s10, 0xef927930
                  li           t3, 0xffffffff
                  li           s5, 0xe7afe7cf
                  li           a6, 0xffffffff
                  auipc        t3, 877275
                  mulh         a7, a2, s10
                  mul          s10, a7, s10
                  mul          s10, a2, s8
                  auipc        a6, 482581
                  nop
                  mulhu        s10, s5, s8
                  divu         s5, s5, a6
                  mulh         a7, s8, a2
                  mulhsu       t4, a6, t4
                  div          a2, a6, s10
                  auipc        s3, 420147
                  remu         t3, s10, t3
                  nop
                  addi         s5, a2, 211
                  nop
                  nop
                  mulh         s10, a2, t4
                  mul          t3, a2, s3
                  auipc        s8, 584245
                  auipc        a6, 694597
                  nop
                  nop
                  mulhu        t4, a2, t3
                  addi         t3, s6, -361
                  addi         a2, a2, -758 #end riscv_int_numeric_corner_stream_19
                  srl          s0, t3, s7
                  and          zero, t2, t5
                  slt          t6, tp, a5
                  c.and        a2, s1
                  c.srli       s1, 28
                  slt          t0, a5, s7
                  c.lui        t4, 5
                  srli         a6, a4, 22
                  ori          s10, s6, -267
                  c.andi       a1, 26
                  rem          t2, s7, tp
                  div          t6, s11, t3
                  sub          s5, s1, a7
                  c.srai       a5, 21
                  andi         s10, gp, 1297
                  slti         a3, t4, 1142
                  c.sub        a5, s1
                  sltiu        t5, zero, 1469
                  srl          a1, t3, a4
                  sub          a2, a1, t2
                  mulhu        t0, t3, s5
                  mulh         t2, a4, s3
                  c.srai       s1, 13
                  srai         gp, t3, 16
                  srai         gp, s9, 22
                  nop
                  c.li         s3, -1
                  sra          a7, gp, zero
                  c.li         t5, 25
                  lui          a6, 878386
                  c.slli       a7, 12
                  xor          a1, s2, a5
                  auipc        s10, 131105
                  c.li         gp, -1
                  addi         s0, s1, -1797
                  c.sub        a0, a4
                  xor          a1, a1, a5
                  slt          s1, s3, a5
                  mulh         s9, s1, t4
                  auipc        t4, 814455
                  c.srli       a0, 16
                  c.or         s1, a4
                  c.or         a1, s0
                  rem          t1, s2, s8
                  sub          a1, s10, t2
                  c.slli       t2, 23
                  c.and        s0, a5
                  auipc        a5, 125496
                  rem          a1, t1, s0
                  rem          t5, s2, s0
                  sltu         s7, s8, s1
                  rem          t1, s1, ra
                  add          s10, s8, t3
                  slt          s7, t2, s2
                  xori         s1, s11, -1420
                  div          gp, a1, a5
                  xor          s3, t2, s7
                  c.xor        a1, a2
                  c.srai       s1, 20
                  c.addi       s3, -1
                  sll          s9, t2, s6
                  c.and        a3, s0
                  andi         s1, a2, -2048
                  c.or         s1, s0
                  c.xor        a1, a0
                  c.slli       t6, 10
                  divu         s0, t0, t6
                  c.li         ra, 9
                  sra          a3, s1, s6
                  ori          s4, a2, -394
                  or           s4, t6, s2
                  c.srai       s0, 10
                  c.li         a2, 27
                  c.add        s0, a5
                  remu         zero, gp, a3
                  sra          a0, a1, a7
                  add          s3, s10, a7
                  mul          s7, s1, sp
                  c.sub        s0, s1
                  c.lui        t1, 20
                  slti         a2, a4, 541
                  auipc        t5, 999795
                  srai         t3, a2, 15
                  divu         s4, tp, s9
                  c.addi       t3, 25
                  c.sub        a1, a5
                  remu         s2, a1, t2
                  c.andi       s1, 8
                  andi         a6, t2, 1466
                  sltu         t5, a7, s11
                  c.srli       s0, 4
                  mulh         s0, s5, s1
                  and          gp, a7, t2
                  c.addi       s1, -1
                  and          s4, zero, gp
                  c.or         s1, s0
                  c.slli       tp, 10
                  div          s8, gp, a1
                  mulh         t6, a5, gp
                  c.add        t6, a1
                  sra          s0, t2, t5
                  nop
                  srl          s2, t3, zero
                  mulhsu       t5, sp, a0
                  c.srli       s0, 22
                  srli         t1, s3, 16
                  srli         t1, a2, 8
                  ori          t4, t5, 574
                  ori          s7, gp, -150
                  add          s1, s8, tp
                  srai         t2, s0, 7
                  divu         t6, gp, t4
                  c.add        a2, s8
                  sra          ra, t6, tp
                  c.slli       a2, 8
                  srli         t4, a4, 14
                  srl          s2, s9, s5
                  sub          s6, a3, sp
                  sub          t5, t4, s3
                  mulh         t6, a0, s5
                  auipc        a0, 188449
                  sub          a6, a4, t3
                  slt          tp, gp, s2
                  c.li         tp, 4
                  c.addi       t1, -1
                  addi         zero, a3, -2048
                  c.lui        s9, 25
                  sub          t2, a6, a0
                  mulhsu       s2, ra, s5
                  rem          a5, s6, t4
                  c.li         s1, -1
                  c.nop
                  mulhsu       s7, a7, a2
                  divu         a0, t0, a3
                  auipc        t5, 702749
                  ori          t0, tp, -427
                  srli         a0, s11, 7
                  rem          zero, sp, t4
                  sltiu        a6, s0, 253
                  mul          t4, t3, s8
                  c.addi       t1, -1
                  sra          a2, s4, a0
                  srl          tp, s2, sp
                  add          s10, s0, s4
                  c.addi       a1, 8
                  mulh         a5, a4, a6
                  addi         s5, s10, -934
                  mulhsu       a1, t2, ra
                  c.addi       t6, 7
                  div          s2, t5, gp
                  andi         s8, t4, 745
                  c.li         a5, -1
                  andi         s5, t3, 148
                  slti         a3, s1, 1647
                  or           s5, s0, t2
                  c.add        s2, a3
                  nop
                  addi         a6, a3, -1230
                  divu         t4, gp, sp
                  or           a2, sp, s0
                  slti         s7, s5, 426
                  c.mv         a2, s2
                  c.srai       s1, 2
                  sltiu        t0, s8, -2046
                  auipc        zero, 149341
                  add          a3, t0, s9
                  mul          t1, ra, s3
                  slli         s3, gp, 9
                  add          s9, s3, s9
                  divu         s3, a1, tp
                  slti         a2, s2, -951
                  c.addi       s8, -1
                  c.add        s10, s3
                  c.sub        s0, a1
                  c.xor        s0, s0
                  c.andi       a2, 1
                  c.lui        a2, 31
                  c.and        a1, a2
                  add          s1, gp, t2
                  sra          s10, s3, sp
                  c.andi       a1, 18
                  add          t2, s0, ra
                  xor          s3, ra, s7
                  addi         a6, s0, 1279
                  lui          a3, 293553
                  or           a0, t5, a4
                  xor          s10, s4, t2
                  ori          s0, t2, -847
                  c.li         t1, 20
                  c.or         a1, a5
                  mulhsu       t6, s2, gp
                  c.addi       t4, -1
                  mulh         s2, a0, a5
                  addi         t4, a2, -1732
                  c.nop
                  c.srli       a0, 28
                  srl          s9, s4, s1
                  auipc        s0, 956783
                  c.srli       a2, 30
                  mulhu        t1, s9, a5
                  c.srai       a1, 20
                  c.or         a3, a3
                  sll          t3, s1, a5
                  auipc        a1, 404992
                  andi         s0, t1, -1911
                  srli         t0, t2, 1
                  mulhsu       t1, a2, a1
                  sub          t3, s11, s5
                  c.srli       s1, 8
                  addi         t0, ra, 262
                  c.srli       a1, 24
                  c.srli       a5, 9
                  or           s4, t1, zero
                  xor          s3, t4, s7
                  sub          t3, s7, s1
                  sltu         s4, s6, s6
                  div          t1, ra, t1
                  c.mv         a2, s8
                  nop
                  remu         s0, tp, a3
                  addi         s10, t5, -648
                  nop
                  nop
                  xor          a7, a1, a5
                  xori         ra, s10, -663
                  c.li         s9, -1
                  slti         a3, a1, -373
                  c.xor        s0, a5
                  c.slli       ra, 16
                  sub          a5, t4, a7
                  c.li         s6, 0
                  mul          a3, s2, s9
                  slli         t3, s5, 23
                  c.addi       a1, -1
                  sll          s8, t2, s8
                  c.mv         a0, t0
                  c.lui        a3, 6
                  c.andi       a1, 23
                  sub          s4, t3, s10
                  slt          gp, s0, t6
                  srl          t4, a2, a3
                  or           t4, a1, a3
                  sub          s1, ra, tp
                  ori          s5, t0, -2016
                  mulhu        s4, t6, t6
                  divu         a3, t1, a5
                  auipc        zero, 50848
                  mulh         s2, s4, s11
                  srli         s7, s7, 10
                  mulhu        a2, t2, zero
                  c.or         a2, a3
                  sltiu        s1, s1, -1884
                  c.srli       a3, 3
                  c.srli       a3, 26
                  c.slli       s1, 4
                  addi         tp, s0, 850
                  c.or         a3, a5
                  sra          gp, s7, a4
                  sra          s7, a6, sp
                  or           zero, t4, s3
                  divu         t6, s3, s8
                  c.lui        a7, 15
                  c.li         t5, 23
                  auipc        t3, 964054
                  srli         t6, a4, 9
                  slli         a0, t6, 1
                  c.add        s5, t6
                  c.slli       s7, 27
                  divu         s5, t2, tp
                  slli         s10, t3, 26
                  c.srai       a0, 29
                  slli         s10, a3, 22
                  xor          a6, t1, s6
                  c.nop
                  sub          s9, gp, s4
                  c.and        a0, s1
                  add          gp, s1, s8
                  and          s3, s5, a7
                  rem          a7, zero, a6
                  c.lui        a0, 16
                  srai         a7, s7, 8
                  sltiu        a3, sp, -777
                  c.srli       s0, 21
                  mulhsu       s7, t4, a3
                  xori         zero, s9, 643
                  srl          s7, a3, a3
                  c.andi       s0, 27
                  c.xor        a5, a3
                  sll          a3, a0, s2
                  mulhsu       a6, sp, a5
                  srl          s3, s4, t3
                  sltu         t1, s2, gp
                  nop
                  c.andi       a5, 0
                  and          t1, s7, a4
                  mulhu        a2, t2, a7
                  andi         s2, s3, -282
                  and          t1, s5, s2
                  srai         s8, a7, 0
                  sra          t3, t3, s4
                  mulhu        s2, gp, s0
                  c.li         a0, 16
                  mulhsu       s3, a4, a5
                  divu         gp, t3, t1
                  c.xor        a3, a0
                  sll          s5, tp, s4
                  mulhsu       gp, a3, s11
                  c.mv         a3, t4
                  c.nop
                  or           zero, s9, s5
                  rem          t6, s7, a1
                  and          t0, s1, t4
                  c.sub        a3, s0
                  remu         t1, a0, s9
                  divu         a3, t4, s10
                  sub          s3, s5, t4
                  c.nop
                  mul          t2, sp, t2
                  c.lui        t5, 3
                  c.sub        s0, a5
                  c.add        s5, a1
                  srli         gp, t5, 19
                  addi         s9, t6, -1489
                  c.nop
                  slti         tp, zero, 1465
                  c.andi       a5, -1
                  add          s4, zero, s0
                  c.srli       s1, 22
                  li           a6, 0xdb254e4d #start riscv_int_numeric_corner_stream_8
                  li           s6, 0x0
                  li           t3, 0xffffffff
                  li           t0, 0x80000000
                  li           s3, 0x0
                  li           s7, 0x0
                  li           a2, 0xffffffff
                  li           a0, 0xffffffff
                  li           s8, 0xad85ff82
                  li           t6, 0xffffffff
                  nop
                  rem          s3, t6, a0
                  mulhsu       t6, s3, a6
                  remu         a0, t0, s7
                  sub          s8, t0, t0
                  nop
                  mulhsu       t0, t3, s7
                  mulh         s6, s6, s6
                  mulhsu       t0, s7, a6
                  mulh         t6, s8, s7
                  nop
                  divu         t0, s3, a6
                  mulh         s6, s6, a6
                  mul          t6, s3, s8
                  auipc        s7, 565472 #end riscv_int_numeric_corner_stream_8
                  srai         a6, a7, 3
                  slt          a5, s5, a1
                  rem          s6, s4, s5
                  sltiu        a5, a5, 1516
                  sll          gp, t3, s5
                  srl          ra, a4, s9
                  c.mv         s9, s10
                  c.lui        s9, 17
                  remu         s2, s5, s11
                  c.mv         a5, s7
                  c.and        s0, s1
                  rem          a6, s7, t5
                  and          s0, s3, t1
                  addi         t5, s10, 2035
                  ori          s4, tp, 1328
                  rem          s9, s0, gp
                  slt          a1, s3, t3
                  mulhu        a2, s4, a0
                  c.lui        t6, 7
                  slti         ra, a5, 571
                  mulh         s1, t3, s2
                  c.slli       a6, 5
                  c.and        a3, a2
                  divu         s7, s4, t1
                  c.li         a0, -1
                  sltiu        s7, a3, 803
                  c.add        s5, a6
                  c.xor        s0, a4
                  c.srai       s1, 29
                  divu         t1, s7, a6
                  mulh         gp, s9, a6
                  mul          t5, gp, t5
                  c.mv         s2, t6
                  xor          a2, s8, s10
                  c.xor        s0, s0
                  divu         s1, s4, s10
                  c.srli       a1, 19
                  ori          t4, t3, 579
                  slti         s1, s11, 117
                  mulhu        gp, s2, t0
                  c.srai       s1, 24
                  rem          s7, s4, tp
                  c.srai       a0, 8
                  lui          tp, 569193
                  div          t1, a0, tp
                  rem          s9, a5, t6
                  c.xor        a2, a1
                  mulhsu       s10, s5, ra
                  c.xor        a2, s1
                  slli         t0, t3, 16
                  sltu         t3, tp, s10
                  c.mv         s9, t1
                  mulhu        a1, t1, t5
                  mulh         a5, s5, ra
                  c.li         s2, -1
                  auipc        gp, 919758
                  lui          s8, 453599
                  sra          s8, gp, s2
                  c.andi       a0, -1
                  andi         t1, s6, -811
                  c.add        a7, t5
                  sub          a3, s4, a4
                  mul          t5, tp, sp
                  add          s2, a1, t2
                  c.and        a2, a5
                  slt          s10, t5, a5
                  xori         s4, t1, -67
                  xori         t1, a3, -1326
                  divu         a6, a4, s1
                  andi         t0, s1, -669
                  sltu         a7, a6, gp
                  srli         t1, a6, 20
                  lui          t2, 312325
                  c.or         s0, s0
                  c.add        s7, t3
                  remu         tp, s6, a2
                  srai         ra, t6, 21
                  c.and        a0, a5
                  sltu         ra, t1, s0
                  and          s9, t4, tp
                  c.or         a1, s0
                  c.mv         s5, t0
                  mulhu        a6, t1, s10
                  mulh         a6, a1, s10
                  c.nop
                  mulh         s10, gp, s5
                  c.andi       s0, 7
                  c.andi       a1, 9
                  mulh         s2, a7, t2
                  ori          s4, s2, 656
                  remu         s9, t4, s7
                  andi         s10, sp, -1511
                  lui          t4, 349429
                  nop
                  slti         s6, t0, -1303
                  c.add        a2, sp
                  addi         t6, s2, 1597
                  mulhu        t3, a4, a2
                  c.li         s7, 0
                  mulhsu       s1, sp, s8
                  slt          a1, t4, s9
                  xor          a6, t3, t2
                  slt          tp, zero, a6
                  c.addi       t2, 1
                  srl          a6, s2, t4
                  c.srli       a5, 11
                  sltiu        a5, a0, 1439
                  c.addi       tp, 10
                  ori          s5, sp, -547
                  c.srli       a0, 31
                  srai         tp, a6, 30
                  sltiu        t4, s0, 595
                  slti         s1, t4, -643
                  c.add        s0, sp
                  c.add        t6, s11
                  slli         a2, t0, 0
                  slt          tp, s11, s7
                  mulh         s4, a4, t5
                  sll          s3, s4, a2
                  rem          t3, s7, t1
                  c.slli       s10, 19
                  c.srai       s1, 27
                  sra          a0, s0, a5
                  div          gp, s8, s2
                  srli         t3, gp, 28
                  remu         s0, a6, gp
                  mulhsu       s8, t6, a4
                  c.li         t0, 1
                  mulh         s7, t5, t4
                  remu         s9, a5, t2
                  c.slli       t2, 18
                  c.sub        a5, a0
                  slli         s9, gp, 25
                  c.srli       a1, 16
                  c.lui        s3, 10
                  c.li         t4, 23
                  rem          a6, t6, t2
                  c.nop
                  andi         t1, a1, -195
                  c.lui        s5, 5
                  addi         s1, t1, 1439
                  c.xor        a3, a5
                  mul          s4, s8, a7
                  auipc        t2, 997824
                  sltu         t1, s5, a4
                  c.mv         s3, s4
                  c.and        a2, s0
                  remu         t3, s3, t2
                  c.add        s9, t2
                  slti         gp, s6, 1230
                  nop
                  srli         a3, t5, 22
                  c.add        s6, s6
                  c.srli       s0, 30
                  slli         zero, t2, 20
                  c.add        s10, t4
                  c.addi       s1, 18
                  srl          a2, s3, s2
                  c.addi       s4, 17
                  and          t0, t1, s10
                  add          s4, s4, t1
                  c.nop
                  mulh         s9, s9, a1
                  or           t1, a3, s2
                  c.nop
                  mulhsu       a6, t6, tp
                  slt          s10, t0, zero
                  sll          ra, s5, s0
                  or           s2, a0, t4
                  c.or         a5, a0
                  mulhsu       s7, a4, s0
                  divu         gp, zero, s6
                  lui          zero, 463103
                  srli         a6, a4, 26
                  c.xor        s0, a5
                  sub          s9, zero, s3
                  c.add        s8, gp
                  slti         s2, a6, -1448
                  c.or         a5, a1
                  mulhsu       s10, a6, sp
                  ori          tp, s9, -1565
                  ori          s4, s6, -380
                  div          a0, gp, a2
                  mulhu        t4, s4, s5
                  sltu         s6, t5, gp
                  xor          t2, s4, t3
                  c.li         t1, -1
                  xori         a7, t5, 1275
                  slti         s8, a0, 481
                  c.slli       a6, 31
                  slli         s4, t3, 11
                  srli         a6, t5, 12
                  auipc        s1, 58837
                  nop
                  c.addi       a5, 19
                  c.srai       a2, 13
                  slt          t0, t5, s11
                  c.slli       a2, 19
                  sub          a1, t6, s0
                  c.mv         s3, s6
                  rem          s5, s6, a7
                  c.add        a0, s8
                  srl          s1, s2, a0
                  xor          s3, a2, s6
                  c.lui        s8, 27
                  xori         a0, a6, -1244
                  slt          s2, t6, t5
                  sra          t5, t5, t3
                  nop
                  or           ra, s11, a7
                  c.mv         s4, a1
                  auipc        a5, 674899
                  slti         s2, s5, 1155
                  div          t2, s3, s1
                  mul          t6, zero, s6
                  c.nop
                  xor          a0, s4, sp
                  ori          s4, t0, 306
                  addi         a2, s7, 1734
                  srl          t2, a1, s2
                  sub          gp, tp, t3
                  c.lui        a2, 2
                  nop
                  xor          a7, t4, s2
                  c.nop
                  rem          s5, s8, t3
                  c.or         a3, a1
                  mulhsu       a3, t1, s1
                  srai         s1, s7, 7
                  sltu         a6, s4, t5
                  c.srai       a2, 7
                  c.andi       a2, -1
                  auipc        s1, 749443
                  and          t5, t2, t4
                  mul          t4, s1, t4
                  c.slli       t4, 28
                  remu         t3, a4, s5
                  srai         tp, tp, 11
                  slt          a5, a3, s6
                  slt          s7, a1, a4
                  c.li         a6, -1
                  srai         t0, sp, 9
                  mul          a5, s7, tp
                  mulhsu       s9, t0, a7
                  nop
                  or           s6, gp, s10
                  srl          s3, s0, s8
                  remu         s3, t2, a2
                  add          t1, s11, s0
                  srl          s9, t1, a5
                  sltu         s7, s6, s3
                  mul          t5, gp, s8
                  div          s8, s2, t0
                  sltu         a1, t0, ra
                  c.mv         s9, a6
                  xori         s2, a3, 546
                  c.or         s0, a3
                  c.or         s1, s0
                  ori          t3, t4, -742
                  c.srli       a3, 2
                  c.li         s6, 14
                  c.andi       a3, 13
                  mulhu        s8, a7, a0
                  sra          s10, s4, t0
                  c.slli       gp, 23
                  andi         a5, gp, 318
                  c.lui        tp, 6
                  sub          a0, s6, s0
                  c.slli       a6, 18
                  and          s3, t5, t3
                  sra          s0, a2, gp
                  divu         s10, gp, s4
                  c.addi       a6, -1
                  mulhsu       s1, t5, s1
                  lui          s6, 519861
                  c.andi       a1, 23
                  c.slli       s4, 16
                  rem          s7, ra, t1
                  mulh         zero, a4, a2
                  c.or         a1, a2
                  add          tp, t0, a0
                  auipc        t0, 613627
                  c.li         s3, -1
                  divu         a5, s9, t4
                  c.nop
                  mulhu        a2, a4, a0
                  slt          s2, s0, sp
                  auipc        s10, 706400
                  c.srai       a2, 14
                  mulh         t4, s10, a6
                  c.mv         a3, a3
                  mulhu        t3, a7, gp
                  sll          s1, s11, a5
                  c.or         s1, a5
                  divu         s4, t6, a7
                  c.lui        a3, 20
                  slti         a3, s2, 1580
                  c.andi       a2, 1
                  auipc        s5, 439177
                  andi         s1, s6, -1443
                  srli         s5, t4, 26
                  div          tp, s10, gp
                  c.mv         s9, t4
                  rem          s10, s8, a4
                  sub          t4, a1, t3
                  c.srli       a5, 11
                  slti         a5, sp, 1833
                  c.srai       a2, 10
                  slt          s4, s2, sp
                  c.srai       s0, 7
                  sll          t6, s2, sp
                  divu         t0, t1, t2
                  c.li         t3, -1
                  lui          t3, 374926
                  sub          t1, sp, s2
                  srl          t2, a6, t0
                  c.srli       a5, 26
                  sra          a2, s10, s4
                  or           t6, s7, s3
                  andi         s6, t6, -130
                  c.or         a2, a2
                  c.mv         s9, s2
                  mulh         a0, zero, s1
                  xori         s0, zero, 504
                  xori         t5, gp, -1072
                  auipc        t4, 680331
                  andi         a6, t5, 166
                  xori         tp, sp, -184
                  ori          ra, s11, -1848
                  add          gp, s2, zero
                  sltu         s2, a2, sp
                  srai         t2, a0, 12
                  sra          tp, gp, a3
                  c.nop
                  divu         s0, s10, sp
                  lui          a2, 717973
                  sltiu        s10, s5, -1116
                  slli         a7, s2, 19
                  remu         a6, t1, a3
                  add          t0, s5, sp
                  srai         s5, s11, 21
                  divu         a0, s6, s2
                  srli         s5, a1, 7
                  remu         s6, gp, s10
                  c.or         s0, s1
                  mulhsu       tp, a2, sp
                  c.srli       a1, 2
                  slli         s6, s9, 17
                  c.mv         s10, t0
                  sltu         ra, s8, a5
                  mulhu        s7, s7, s3
                  c.andi       a0, -1
                  srli         gp, a0, 20
                  remu         a6, a2, s5
                  sll          t3, t4, a7
                  sra          a2, a7, t0
                  mulhsu       a3, s11, a7
                  slt          a3, tp, a6
                  c.li         s3, 18
                  c.and        a0, a4
                  c.xor        a0, s1
                  mulhu        ra, s3, a1
                  c.andi       a3, 10
                  div          s1, a6, zero
                  rem          s4, a7, ra
                  c.srai       a2, 22
                  srli         t4, a4, 13
                  srli         t0, t5, 29
                  c.lui        t1, 15
                  divu         s10, a4, a2
                  remu         tp, s10, s4
                  c.or         s0, a0
                  srai         a2, t2, 20
                  auipc        t4, 753361
                  c.mv         t0, a1
                  auipc        s8, 648852
                  c.nop
                  srl          t5, a4, a6
                  auipc        tp, 74473
                  c.nop
                  mulhsu       s6, a0, t0
                  or           a3, s6, s4
                  and          s4, s4, zero
                  slt          t1, sp, s5
                  xor          t5, a5, tp
                  c.add        a2, ra
                  and          zero, s1, t2
                  addi         a5, a1, 62
                  sub          a5, s2, gp
                  xori         t0, a6, -1383
                  c.slli       s8, 7
                  mul          a2, s11, ra
                  srl          a2, t3, a6
                  xori         s9, t4, 792
                  or           s9, s5, s9
                  c.mv         s9, ra
                  div          s0, a5, a2
                  div          t1, gp, s8
                  slli         s8, a7, 23
                  xor          s9, t0, s8
                  slti         t1, t6, 949
                  sltiu        s6, a7, 857
                  c.mv         s9, s10
                  add          a2, t6, t1
                  nop
                  ori          s7, zero, 1157
                  sltiu        s9, a5, -339
                  c.addi       s5, 16
                  srl          a5, a7, zero
                  and          a5, a0, s3
                  c.srli       s1, 3
                  c.lui        a5, 16
                  sub          a1, a0, tp
                  mulhu        a6, s5, t5
                  xori         a2, a0, -1362
                  addi         s4, ra, 1442
                  slli         tp, a4, 16
                  c.add        a6, t3
                  mul          s8, t0, s10
                  xor          t4, s9, t2
                  c.slli       gp, 19
                  slli         t1, sp, 2
                  xori         t0, a2, -1260
                  or           s0, a1, a2
                  sra          s3, t2, s11
                  c.andi       a0, 5
                  or           t6, s2, a2
                  mulh         a3, t3, s10
                  c.mv         t4, a0
                  c.slli       a5, 24
                  c.mv         s9, a2
                  rem          a0, s2, sp
                  c.srai       a1, 20
                  lui          a5, 551300
                  mulhsu       a0, s6, s11
                  c.xor        a1, a5
                  ori          s8, a3, -1696
                  c.sub        a5, a0
                  divu         a7, s11, t1
                  and          s2, tp, a4
                  nop
                  c.or         a2, a2
                  mulhsu       a5, s0, a4
                  srai         s5, a4, 25
                  mulhu        zero, s6, ra
                  lui          zero, 847655
                  remu         ra, zero, t1
                  auipc        s5, 707554
                  sltu         a2, a4, sp
                  auipc        a5, 166308
                  c.or         s1, a3
                  c.sub        s0, a2
                  and          a2, s9, s3
                  sub          a1, a3, s5
                  slti         a7, t4, -1708
                  mulh         t0, gp, t2
                  c.or         a2, a3
                  auipc        s6, 655905
                  add          gp, s5, a0
                  addi         a2, a2, 546
                  c.add        s4, ra
                  c.or         a0, a0
                  remu         s5, s10, s10
                  or           t5, s2, s8
                  mul          t4, t4, t4
                  auipc        t0, 115285
                  srai         a2, s7, 25
                  sltu         ra, s10, a4
                  ori          t2, a5, -861
                  mulhu        a5, a5, t0
                  c.or         s1, a0
                  or           s7, a3, zero
                  sra          s3, t3, t2
                  andi         s7, s0, -913
                  sra          a1, a4, ra
                  lui          s3, 632079
                  remu         zero, s2, s10
                  c.mv         gp, t6
                  sra          a7, a2, t1
                  sll          a0, gp, s10
                  c.srai       a1, 11
                  c.srli       s1, 26
                  srli         t4, s4, 27
                  slli         t0, zero, 26
                  srli         s5, t5, 3
                  sll          s9, gp, s0
                  sltu         t2, a5, s0
                  and          a3, tp, a1
                  rem          a3, tp, zero
                  andi         s8, s6, -1572
                  sra          a5, tp, t5
                  sub          a2, t4, sp
                  mulhsu       a3, a3, s4
                  srl          t6, a7, t3
                  c.li         t1, -1
                  sltiu        t6, zero, -1756
                  srl          t1, s9, sp
                  srli         gp, s1, 26
                  c.srli       s1, 1
                  sltiu        t3, s0, -1379
                  auipc        gp, 206870
                  c.or         a5, a3
                  c.add        a6, a3
                  sra          a7, a6, s9
                  auipc        a3, 578113
                  mulhsu       tp, a3, t2
                  or           t1, gp, a6
                  xor          s10, tp, a4
                  c.slli       t1, 4
                  slti         s1, sp, 462
                  sra          s3, a6, s7
                  slt          a0, t2, a5
                  c.and        a2, a5
                  lui          t6, 649954
                  srai         s3, s0, 18
                  rem          zero, a6, s10
                  nop
                  andi         t4, a2, -422
                  xor          s4, tp, a2
                  c.addi       tp, 21
                  xori         gp, s9, 773
                  slli         t5, tp, 24
                  srai         s0, gp, 2
                  andi         ra, sp, -1938
                  mulh         t1, t0, t0
                  or           s3, t4, t4
                  nop
                  c.srli       a0, 17
                  remu         t0, s11, s7
                  c.and        a5, a3
                  slli         a7, s1, 21
                  addi         a1, a6, -1761
                  remu         s9, s5, gp
                  srai         ra, s2, 20
                  or           t0, s11, s7
                  c.li         t2, -1
                  xor          t5, sp, ra
                  c.and        a2, a5
                  andi         s2, a0, 648
                  mulhu        gp, t2, s6
                  sll          gp, s1, s6
                  nop
                  lui          s0, 476722
                  c.li         a3, 15
                  c.addi       s3, -1
                  srli         t1, a5, 18
                  ori          a3, a0, 1061
                  c.slli       s5, 17
                  c.nop
                  nop
                  srai         t6, t6, 25
                  auipc        a6, 134896
                  c.or         a1, a4
                  andi         t4, zero, 935
                  c.nop
                  srl          a7, t5, ra
                  c.mv         s3, s1
                  srai         s6, s9, 29
                  c.slli       gp, 31
                  slli         s2, t4, 18
                  div          a6, t5, a1
                  sltu         s5, s5, sp
                  srli         t4, t0, 25
                  slt          ra, t3, t1
                  c.mv         t6, s6
                  sub          s5, a0, s5
                  sra          s4, s3, s9
                  rem          gp, t6, t6
                  c.srai       a0, 22
                  andi         a2, t4, 1213
                  mul          s6, sp, a3
                  addi         a0, a0, 1260
                  c.sub        s0, s0
                  and          s3, a5, s9
                  nop
                  c.srai       a0, 14
                  c.and        s0, s0
                  c.and        a3, a5
                  sll          s10, t6, a7
                  nop
                  xor          t5, a6, a2
                  xori         a1, t3, 1022
                  auipc        s2, 748281
                  add          a7, s8, s2
                  remu         gp, t6, t3
                  sll          a7, s8, a4
                  ori          a6, s11, -1166
                  srl          s1, s1, t6
                  c.and        s0, a1
                  or           a3, a5, tp
                  c.mv         s1, t2
                  auipc        s6, 902878
                  mulhu        t1, zero, s0
                  c.nop
                  c.addi       s7, 18
                  c.or         a2, a1
                  and          t4, s2, s8
                  andi         s1, t4, -231
                  c.add        s5, a3
                  ori          a1, t6, -892
                  c.slli       ra, 6
                  sub          a1, a0, a7
                  c.srai       a0, 13
                  c.nop
                  add          a2, t0, ra
                  srai         a0, t6, 23
                  andi         zero, t6, -519
                  slli         a2, a4, 24
                  srai         t3, zero, 18
                  and          t2, t6, tp
                  c.xor        s0, a4
                  c.slli       t2, 16
                  sra          a7, s2, gp
                  c.add        s4, a0
                  srli         tp, t3, 25
                  xor          s3, tp, tp
                  c.srai       a2, 2
                  lui          s9, 596037
                  slli         s4, t4, 7
                  c.lui        a6, 10
                  c.li         t3, -1
                  sll          s2, ra, s4
                  c.slli       s1, 7
                  c.li         a0, -1
                  divu         s10, t4, s8
                  srl          t5, a4, t5
                  ori          s6, s9, 531
                  slti         a6, a0, 1131
                  mulh         a3, s1, s9
                  nop
                  c.addi       t0, 3
                  srli         t3, zero, 11
                  xori         s8, tp, -683
                  rem          s5, gp, s3
                  mulhu        s4, s4, sp
                  c.addi       a7, 12
                  c.add        t6, s0
                  c.andi       s0, -1
                  rem          s2, a4, a0
                  addi         t3, a2, -1722
                  xor          t6, a3, s3
                  mulhu        zero, gp, t3
                  or           t5, t6, a1
                  remu         s8, t0, a5
                  c.addi       a0, -1
                  auipc        s9, 537818
                  mul          s8, a0, s8
                  c.mv         t3, t3
                  slt          t2, a6, gp
                  c.or         a2, a4
                  divu         t1, ra, a7
                  c.nop
                  c.lui        t2, 22
                  slt          t0, s11, a1
                  c.addi       s10, -1
                  mulhsu       s2, tp, sp
                  lui          t5, 167392
                  c.or         a1, a2
                  c.srai       s1, 19
                  and          s3, a6, t6
                  c.mv         a1, t5
                  slli         t4, s3, 16
                  srai         t3, s3, 6
                  div          s2, t5, tp
                  c.li         a2, 31
                  c.sub        s0, a0
                  c.sub        a0, a3
                  c.mv         t4, s1
                  sltu         a0, gp, s8
                  c.mv         s8, s8
                  nop
                  srli         s0, a5, 11
                  ori          t3, s3, -280
                  srl          a3, t4, t6
                  c.sub        a1, a0
                  c.li         a2, -1
                  mulhu        t5, gp, zero
                  divu         a0, a4, t5
                  c.or         a5, a2
                  c.srli       a2, 21
                  sltiu        s4, t1, -1141
                  c.add        s2, s2
                  c.mv         t1, t6
                  sll          s6, a2, s10
                  nop
                  ori          a6, s3, 189
                  c.and        s0, a2
                  slt          s2, s3, s11
                  c.lui        gp, 22
                  or           s2, a5, s4
                  andi         t1, a3, -142
                  sll          t0, t3, t4
                  rem          tp, s3, zero
                  xor          s8, tp, t5
                  c.andi       a2, -1
                  ori          s8, s0, -575
                  c.srai       s0, 9
                  mul          s10, t5, t1
                  srl          s6, a2, s10
                  xori         s3, a3, 1796
                  slt          ra, s9, s7
                  sub          s6, a6, t4
                  sltu         t6, a5, s10
                  and          gp, a6, t6
                  sltiu        a2, t6, 1351
                  mul          a6, t6, s4
                  c.lui        s0, 9
                  and          t1, tp, tp
                  or           s8, ra, t2
                  divu         s5, t5, a5
                  ori          a3, sp, -857
                  addi         ra, t1, -1195
                  add          s9, s9, s9
                  div          a2, tp, s10
                  c.and        a3, a1
                  slti         ra, a4, -51
                  lui          s2, 920624
                  sltu         zero, a4, s10
                  c.andi       s0, -1
                  sll          a3, a6, t5
                  slti         tp, a0, 135
                  nop
                  c.li         gp, 19
                  c.sub        a1, a5
                  slli         t2, t4, 3
                  nop
                  slt          s10, a5, t2
                  sltiu        s4, s2, 711
                  c.andi       s0, -1
                  mulhu        s4, t0, s4
                  c.add        s1, s11
                  sltiu        s3, a2, -1087
                  srli         t1, a3, 3
                  c.mv         s10, t2
                  srl          s8, s9, s5
                  c.and        s0, a0
                  lui          a1, 812919
                  c.li         t5, -1
                  addi         s0, s8, 2026
                  or           t4, s3, a0
                  srai         a7, a3, 21
                  c.slli       t3, 20
                  and          t1, s0, ra
                  sltu         t3, t1, s1
                  c.or         a0, s0
                  srl          s8, sp, ra
                  sra          t5, a2, s11
                  ori          gp, s10, 121
                  sub          ra, s9, s0
                  c.nop
                  sltu         ra, s1, s1
                  srli         a7, t1, 7
                  slli         t1, t5, 24
                  c.xor        a1, s0
                  c.li         t2, -1
                  c.andi       a1, -1
                  mul          s4, a7, s7
                  lui          s0, 440196
                  or           s1, s10, tp
                  srli         t0, t4, 17
                  srai         t5, s0, 27
                  nop
                  mul          s5, t3, s3
                  sub          s4, a7, t4
                  c.nop
                  xor          s0, s6, a2
                  c.slli       t1, 1
                  xori         t5, t0, -1136
                  sub          a2, a3, sp
                  sltu         zero, s11, a7
                  srl          s9, t2, a2
                  srli         a0, t4, 26
                  lui          a2, 670481
                  srai         tp, a5, 3
                  mulhu        s0, a0, s3
                  div          gp, s2, a4
                  divu         t6, a5, s8
                  c.sub        s1, a4
                  c.and        a1, s1
                  sll          s7, t2, ra
                  mulhu        t3, a6, a0
                  slli         a3, ra, 2
                  addi         s4, a7, 1861
                  remu         a2, s3, s2
                  c.andi       s1, 0
                  auipc        tp, 996810
                  sltu         s6, a0, s0
                  slt          a3, t1, t3
                  c.slli       t6, 11
                  c.lui        gp, 20
                  slli         t6, ra, 24
                  andi         a5, t5, -1900
                  nop
                  c.andi       a3, 14
                  divu         a5, t2, s6
                  c.nop
                  slt          gp, t1, zero
                  mulhu        tp, s11, t4
                  srai         zero, s5, 19
                  sra          s6, a5, ra
                  c.srli       a5, 30
                  slt          t1, s10, s1
                  andi         t0, s0, -9
                  c.lui        a5, 14
                  xori         s3, sp, -1885
                  c.and        a5, s0
                  c.li         t6, 1
                  sll          a5, t4, s0
                  sltu         a0, t0, t2
                  xor          s9, a5, s4
                  c.mv         s6, s4
                  c.li         s0, -1
                  c.andi       s0, -1
                  or           t3, a1, s1
                  c.lui        t4, 21
                  srai         s10, t2, 5
                  and          t0, gp, a3
                  c.srai       s1, 29
                  c.sub        s0, s1
                  c.or         s0, a5
                  c.add        s5, t6
                  mulhsu       s7, s9, s1
                  and          s9, t1, t0
                  c.lui        tp, 20
                  c.addi       gp, 31
                  nop
                  nop
                  xori         s4, s4, 407
                  c.srai       a5, 14
                  mulhu        s5, t5, a7
                  div          s7, tp, t0
                  c.slli       gp, 27
                  mulhsu       a3, sp, s3
                  mulhu        s6, t3, s7
                  divu         gp, tp, a3
                  c.srli       a0, 22
                  c.or         a3, a3
                  srl          zero, s10, a7
                  c.srai       a0, 11
                  c.li         s5, -1
                  mulhu        s3, sp, gp
                  c.and        a0, a4
                  xori         t0, a7, 1822
                  c.or         s1, a0
                  mulh         s9, a5, t3
                  rem          t1, s2, t1
                  slti         t5, t2, -258
                  nop
                  ori          t2, t5, -1504
                  c.sub        a5, a2
                  srli         a3, sp, 26
                  addi         a6, s7, -336
                  c.sub        a5, s1
                  mulh         a0, zero, ra
                  mulhsu       t1, s6, s10
                  mulh         s9, s1, ra
                  auipc        s8, 25743
                  c.li         t5, -1
                  nop
                  c.and        a2, s0
                  c.sub        a1, a3
                  divu         t6, s4, zero
                  sltiu        a0, s9, 1440
                  c.srli       a5, 4
                  c.slli       a2, 14
                  remu         t4, a7, t2
                  c.addi       a2, -1
                  srl          a3, a3, a7
                  mul          ra, t1, t1
                  ori          t1, ra, -1551
                  c.and        a5, a3
                  sltiu        ra, s10, -858
                  ori          t3, s1, 708
                  ori          s9, s9, -1303
                  ori          s6, t6, -1008
                  c.sub        s1, a4
                  c.lui        s1, 4
                  slt          ra, s4, a7
                  mul          a6, s8, t6
                  sra          s3, t4, a2
                  c.xor        a5, a3
                  mulh         s0, s11, s4
                  divu         t1, t3, s4
                  c.or         a0, a1
                  mulhsu       a6, ra, a0
                  add          s6, a6, ra
                  srli         s9, s3, 20
                  c.add        s3, t3
                  add          t2, a6, t2
                  lui          t5, 870583
                  mulh         s4, t4, a0
                  c.add        s9, s11
                  srl          zero, s0, a5
                  ori          a6, a6, -1051
                  and          a3, t5, s0
                  c.slli       t1, 10
                  slti         a6, a7, -1582
                  mulhsu       a3, t5, a7
                  xor          t5, zero, gp
                  c.and        a2, a2
                  ori          s9, sp, 349
                  srl          a3, s6, t3
                  c.xor        a1, a5
                  srli         s4, a2, 20
                  or           a5, t0, t6
                  div          s9, ra, t4
                  divu         a1, t3, s6
                  c.add        t6, s10
                  srl          t1, t1, s7
                  xori         s7, a5, -1757
                  addi         t4, s11, 1061
                  c.xor        a3, s1
                  sltiu        s8, t5, 710
                  nop
                  xor          gp, s6, a1
                  auipc        t2, 147675
                  mulhsu       gp, s2, t3
                  c.sub        s0, a1
                  slt          tp, a0, t6
                  sltiu        a7, s4, -710
                  mulhsu       tp, a4, t3
                  srli         t3, s10, 27
                  c.add        s9, s6
                  srli         a7, s6, 13
                  mulhsu       a0, s8, tp
                  srli         t1, a7, 22
                  c.sub        a1, a4
                  slti         t4, s7, -385
                  addi         t1, t5, -781
                  slt          t2, s0, t5
                  xori         t0, a7, -437
                  and          a2, a6, s1
                  addi         t6, s0, 1452
                  slti         s8, s10, -242
                  addi         a5, a5, -928
                  c.slli       tp, 4
                  slti         s5, a4, -1627
                  c.lui        t1, 27
                  div          s8, a6, t6
                  c.sub        s1, s0
                  slti         t6, t0, -1054
                  mulhsu       ra, a7, t3
                  or           s1, a1, t5
                  remu         s10, s2, a2
                  c.xor        s1, a3
                  addi         tp, gp, 1842
                  mulhsu       tp, zero, t3
                  sltiu        t1, zero, 1325
                  c.nop
                  mulh         s9, t0, a5
                  mulhu        s5, s8, t0
                  and          s7, a7, s10
                  c.sub        a1, a4
                  c.or         a2, s0
                  c.srai       a0, 24
                  c.add        t6, sp
                  c.srli       s1, 20
                  c.srai       s1, 13
                  c.slli       s3, 12
                  sra          t6, s10, s11
                  ori          ra, a4, -1637
                  c.lui        a5, 11
                  remu         t5, tp, a4
                  sll          ra, a1, a7
                  c.addi       t1, 3
                  ori          t3, ra, 1570
                  c.li         a3, 14
                  divu         gp, s3, s9
                  c.li         gp, -1
                  sltu         a2, a6, ra
                  and          s8, t4, s4
                  andi         s1, s8, 990
                  c.addi       gp, 31
                  c.addi       gp, 8
                  c.xor        a0, a0
                  mulhsu       gp, t4, s0
                  c.srai       s0, 24
                  c.and        a3, a2
                  c.andi       a2, 3
                  slli         s6, s10, 13
                  xor          t3, t2, a1
                  sltu         s6, a6, gp
                  sra          s2, s10, s8
                  c.and        a1, a4
                  srl          s0, a4, s11
                  slt          s7, a4, t4
                  addi         a5, s2, -1847
                  c.and        a5, a3
                  c.srli       s0, 30
                  c.srai       a2, 21
                  c.slli       a5, 24
                  c.nop
                  auipc        s9, 70487
                  c.srli       s1, 24
                  c.or         a1, a1
                  mulh         a3, a5, s8
                  sltu         a7, gp, s7
                  c.sub        s1, a2
                  srl          s1, t1, s5
                  slti         t2, t1, -775
                  auipc        t1, 673059
                  c.sub        a2, a0
                  c.add        a3, s2
                  mulh         t3, a4, s0
                  c.add        s10, ra
                  mulhsu       t5, t3, s0
                  or           t1, a1, zero
                  mulhu        a5, s1, t1
                  c.add        s4, t1
                  c.nop
                  auipc        a5, 756101
                  remu         a0, s1, ra
                  c.or         s0, a4
                  addi         ra, t3, -1038
                  addi         a0, a7, 2044
                  xor          s2, t3, gp
                  c.li         t2, -1
                  c.nop
                  slti         s9, tp, -478
                  sltu         s10, s7, s5
                  sra          ra, zero, s5
                  mul          t1, s0, s10
                  c.sub        a3, a4
                  remu         s1, a5, s1
                  srli         gp, sp, 15
                  ori          zero, a0, 1022
                  mulhu        s10, zero, t6
                  c.add        t6, a1
                  divu         t0, s7, a6
                  mulh         s10, s9, t2
                  xori         s7, a1, -33
                  rem          t6, t1, ra
                  sltiu        t2, s10, 651
                  c.li         ra, 8
                  or           s3, s8, a2
                  c.andi       a1, -1
                  slli         s8, s7, 12
                  c.xor        a2, a4
                  c.xor        a3, a3
                  c.add        s5, t6
                  c.or         a0, a2
                  c.lui        s4, 7
                  c.nop
                  mul          ra, a1, a4
                  c.srai       a3, 3
                  xor          s1, zero, a3
                  slt          s3, s1, s3
                  c.li         a1, 2
                  c.lui        a5, 10
                  xor          a3, s7, t5
                  c.andi       s0, -1
                  auipc        s6, 727351
                  and          t5, s2, s9
                  srai         zero, zero, 6
                  remu         t4, t0, a7
                  mulhsu       s4, t3, s4
                  sra          t1, tp, a5
                  c.add        s5, t2
                  c.li         tp, 22
                  c.addi       s4, -1
                  or           a3, s3, a1
                  auipc        s8, 320404
                  srl          t4, t3, t3
                  srl          t4, sp, s11
                  c.lui        a3, 30
                  c.andi       a2, 4
                  srai         s0, s1, 16
                  slti         t2, s7, 490
                  sll          t5, t0, sp
                  sltiu        t3, s0, 1830
                  remu         t6, s8, s3
                  c.lui        t0, 29
                  srai         s1, s2, 4
                  and          gp, t3, s3
                  mulhsu       s7, s7, s1
                  auipc        a6, 28757
                  add          s8, t1, s0
                  xori         s3, s0, -1979
                  c.or         a5, a2
                  c.addi       s7, -1
                  c.slli       ra, 11
                  and          ra, s5, ra
                  sub          s3, s6, a7
                  c.xor        s0, s0
                  c.or         a5, a1
                  c.andi       s1, 14
                  xor          zero, s9, s7
                  c.addi       t2, -1
                  c.addi       a5, -1
                  rem          s0, t3, t2
                  srl          a2, t3, tp
                  c.or         s0, a3
                  c.andi       s0, -1
                  addi         a1, s4, -1317
                  c.slli       t1, 9
                  mul          ra, ra, t2
                  div          t6, s7, s3
                  c.and        s1, s0
                  or           s1, a4, t3
                  mulhsu       t4, s7, s8
                  c.lui        t3, 8
                  sra          a1, a0, a7
                  addi         s10, s3, -456
                  c.nop
                  addi         a5, zero, -995
                  srai         s3, a0, 10
                  c.addi       s6, 20
                  c.mv         t4, t1
                  c.xor        a0, a5
                  add          a5, a7, t6
                  auipc        t0, 617908
                  c.add        t4, tp
                  sltiu        a5, t0, 1744
                  add          s10, t0, t6
                  slli         ra, ra, 7
                  srli         zero, t4, 3
                  or           t4, t1, tp
                  sltu         t3, a0, s6
                  addi         t3, a7, -1174
                  and          s4, t3, s4
                  and          s2, t1, t0
                  c.srai       a1, 27
                  c.srai       s1, 28
                  mul          zero, a6, a3
                  auipc        gp, 227747
                  srl          gp, s2, t2
                  auipc        gp, 81306
                  c.slli       a5, 1
                  slt          zero, a7, t2
                  c.sub        a3, s1
                  mulhu        s3, gp, s11
                  c.srai       a2, 4
                  c.xor        a3, a0
                  srl          t6, a4, zero
                  mulhu        s3, t3, t1
                  sub          t5, s1, a6
                  c.nop
                  c.andi       s0, 10
                  xori         s5, a1, -1684
                  c.srli       a5, 3
                  c.li         s9, -1
                  add          t6, s2, s5
                  c.mv         a7, a4
                  lui          t3, 609142
                  srai         s5, s6, 24
                  lui          s2, 368538
                  rem          s0, t2, tp
                  slli         s9, a4, 22
                  ori          a5, s8, -377
                  add          a5, s10, a0
                  ori          s10, s2, -1339
                  and          s7, s9, tp
                  c.sub        a5, a0
                  mulh         ra, a3, sp
                  or           s10, a1, t0
                  c.addi       ra, 16
                  c.xor        a0, a5
                  c.andi       a3, 13
                  c.addi       s3, -1
                  slt          s7, s5, t5
                  sltu         t4, s2, ra
                  lui          ra, 833953
                  sltu         s1, s10, t5
                  c.srai       a2, 10
                  slt          s2, a7, t2
                  c.andi       a5, 15
                  c.nop
                  c.add        a5, s0
                  c.lui        a1, 7
                  xori         s3, s3, 633
                  sra          a7, s8, sp
                  c.mv         s5, s0
                  mul          a0, s9, t3
                  c.mv         s9, s9
                  lui          a1, 241426
                  lui          t4, 113685
                  sra          a1, a5, a1
                  mulhsu       a5, zero, s10
                  c.lui        s1, 22
                  auipc        ra, 804547
                  div          tp, s9, a6
                  sra          a0, t2, t6
                  mulhsu       a2, s9, a3
                  mul          s9, t5, s9
                  andi         a3, zero, 1529
                  c.slli       s3, 12
                  mulh         a1, a6, t5
                  c.andi       a0, -1
                  mulhsu       s3, s10, s6
                  slti         a6, t4, 509
                  remu         t1, s3, s8
                  c.nop
                  c.add        s0, a1
                  add          t5, s6, s9
                  slti         t3, t0, -1218
                  c.addi       tp, 7
                  c.sub        a0, a3
                  nop
                  mulh         t6, s10, a1
                  lui          a2, 787441
                  xor          t4, s6, a4
                  srai         s0, s1, 27
                  c.and        a5, a0
                  c.xor        a3, a3
                  c.or         a2, a3
                  div          gp, s8, s1
                  c.add        a1, ra
                  c.sub        a0, a3
                  sltiu        s9, s6, -1613
                  sra          a1, s10, t6
                  xori         a7, ra, -948
                  sra          s2, t5, t6
                  or           s8, a5, t5
                  slti         a3, s0, -1226
                  sltiu        t0, tp, 862
                  sra          t5, gp, s5
                  c.srli       a0, 23
                  c.li         t6, 11
                  c.addi       t4, 26
                  c.xor        a5, a0
                  srli         zero, a0, 8
                  or           s4, sp, a0
                  c.li         t4, -1
                  auipc        t4, 439966
                  sub          t5, s6, s1
                  auipc        a1, 72576
                  or           s7, zero, gp
                  lui          t5, 43102
                  slt          t6, a2, s6
                  divu         s5, s7, zero
                  c.sub        a2, a2
                  c.slli       t0, 15
                  c.or         a2, a2
                  c.addi       t4, 6
                  mulhsu       s3, s0, gp
                  c.xor        s0, a1
                  lui          s8, 333619
                  auipc        t0, 57667
                  sra          t1, s11, t4
                  auipc        t0, 905472
                  or           t2, t3, s7
                  c.srai       a5, 16
                  xor          gp, a7, a0
                  sra          s8, a5, a5
                  sltiu        a3, ra, -1836
                  sra          s2, a4, t3
                  xori         t2, t2, -185
                  sltu         s4, zero, t1
                  c.slli       s2, 14
                  nop
                  xor          tp, t5, t6
                  sra          s9, a6, sp
                  c.sub        a2, s0
                  c.nop
                  nop
                  auipc        s10, 478495
                  andi         a2, a3, -753
                  addi         t6, s0, -93
                  mulhsu       t5, a7, t0
                  c.xor        a1, s0
                  slti         s9, zero, -1822
                  c.sub        a5, a2
                  nop
                  and          a0, t6, zero
                  rem          zero, t5, t3
                  slli         s1, t6, 9
                  mul          t6, s1, a5
                  mulhsu       s7, t1, s7
                  rem          s3, t1, t3
                  c.andi       s0, 8
                  srai         a6, s0, 20
                  sub          tp, t4, t5
                  slt          a1, s6, a0
                  xor          s8, tp, t1
                  lui          tp, 40928
                  mulh         a1, s6, t1
                  sll          t4, sp, a0
                  c.nop
                  xori         ra, a2, 1378
                  mulhsu       s2, t1, a7
                  srl          t2, t4, a6
                  remu         s0, a7, a2
                  c.xor        s1, a3
                  sra          t4, s1, a2
                  mul          t0, s1, a4
                  or           s7, s7, t3
                  c.srli       s1, 6
                  srli         s3, t1, 31
                  addi         ra, s10, -1813
                  c.srli       a1, 26
                  srli         a7, t0, 5
                  mulhsu       tp, a2, s7
                  add          t5, s4, t3
                  and          s6, a3, s10
                  andi         s8, t2, 655
                  slli         s3, s6, 5
                  c.srai       a2, 6
                  slt          a0, sp, s7
                  or           zero, s1, a1
                  c.srli       a3, 13
                  auipc        t5, 55000
                  c.andi       a0, 22
                  mulhu        s6, s3, a1
                  and          a6, t2, s0
                  div          tp, a2, tp
                  nop
                  c.addi       s8, -1
                  div          s10, t6, s6
                  sra          s9, a7, s5
                  c.xor        a0, s0
                  add          a0, t1, s2
                  mulhsu       zero, a0, a0
                  c.li         t1, -1
                  mul          t2, t4, t4
                  rem          s1, s7, a7
                  c.add        a6, t0
                  sub          a0, s8, s4
                  sra          t0, tp, s0
                  and          t2, s5, t3
                  c.nop
                  sltiu        zero, t3, -1400
                  sub          a6, a3, s2
                  or           t5, tp, s11
                  addi         a7, s6, -1141
                  c.andi       a2, 10
                  c.mv         a5, s5
                  slt          s3, a1, t4
                  sltu         t0, gp, a0
                  mulhu        gp, s10, t6
                  srl          s7, s8, t1
                  slli         s8, sp, 10
                  sra          s2, zero, s11
                  ori          s2, a1, -266
                  nop
                  c.or         a0, s0
                  c.li         s2, 7
                  andi         s2, a0, -147
                  ori          t1, t2, 186
                  nop
                  or           s8, sp, s8
                  xori         a7, a3, -2040
                  sltu         gp, s7, s4
                  slti         gp, t5, -1035
                  add          a5, t5, s2
                  sra          s6, s4, s7
                  mulhu        s9, s2, a3
                  remu         s3, ra, s7
                  c.andi       a5, -1
                  c.and        a0, a2
                  xor          t0, t3, tp
                  and          a6, s6, a5
                  c.slli       s8, 1
                  div          a0, gp, s2
                  c.mv         t2, a2
                  c.and        s0, a5
                  mulhsu       t2, a7, s3
                  c.add        s5, s11
                  slli         s0, s11, 18
                  srai         zero, a6, 27
                  c.nop
                  c.li         s7, -1
                  sra          a2, s4, ra
                  divu         a2, s3, t0
                  xori         tp, t6, 679
                  div          t2, s2, a7
                  c.addi       s8, 17
                  andi         a5, a1, 1424
                  srl          ra, s4, t0
                  c.add        s10, s9
                  lui          s6, 962915
                  c.add        s4, t1
                  lui          t3, 511592
                  addi         s3, t1, -251
                  c.mv         a7, a3
                  c.li         s4, -1
                  add          t0, t4, a3
                  mulh         ra, gp, gp
                  c.xor        a0, a0
                  c.add        s1, s2
                  c.mv         ra, s6
                  mulhsu       a1, s9, zero
                  c.add        a2, s2
                  sub          t1, t3, s1
                  c.nop
                  sltu         s1, s4, a1
                  c.addi       a7, -1
                  c.xor        a3, s0
                  andi         ra, s5, -1052
                  slli         a1, t6, 30
                  divu         gp, ra, s11
                  slli         a1, t1, 30
                  add          s6, t6, ra
                  slti         t1, tp, -1193
                  or           s0, a5, s1
                  c.lui        s9, 17
                  mulhsu       s2, s5, s4
                  c.nop
                  andi         s6, s4, 1700
                  c.li         s9, 10
                  c.srli       s1, 15
                  ori          a0, s10, -577
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           s6, 0xffffffff
                  li           s3, 0xffffffff
                  li           s2, 0x64249682
                  li           s5, 0xf6ed8022
                  li           s4, 0x80000000
                  li           s9, 0x80000000
                  li           s7, 0xf275427e
                  li           t3, 0x80000000
                  li           gp, 0xffffffff
                  addi         s3, gp, -553
                  addi         s6, s9, 946
                  divu         a6, gp, t3
                  div          t3, s9, s3
                  div          gp, s9, s5
                  remu         gp, gp, t3
                  addi         s9, s9, -1503
                  mulhu        gp, s4, s6
                  addi         s9, gp, -1400
                  lui          s7, 377003
                  add          a6, a6, a6
                  remu         a6, a6, s3
                  addi         s7, s7, 116
                  addi         t3, s7, 1240
                  mulhu        s4, s9, t3
                  mul          a6, gp, s9
                  sub          t3, t3, gp
                  mul          a6, t3, s7
                  remu         s6, s7, s7
                  auipc        s9, 314568
                  remu         s3, a6, t3
                  rem          s4, s3, s2
                  mul          t3, gp, s6
                  mul          s2, s6, s5
                  mul          s6, t3, s4
                  sub          s4, s2, s9
                  remu         s7, s4, s2 #end riscv_int_numeric_corner_stream_27
                  mulh         ra, s9, t1
                  c.srai       a2, 19
                  div          t0, s8, a1
                  sltiu        tp, s5, -1361
                  mulhsu       a1, a4, t0
                  c.nop
                  slli         s1, s4, 25
                  remu         a2, a3, sp
                  srli         t1, a2, 29
                  c.srai       a2, 10
                  nop
                  c.addi       t5, -1
                  c.sub        a5, a0
                  ori          t2, gp, -876
                  sll          a7, a3, s10
                  srl          s7, s9, a7
                  c.and        a0, a1
                  srl          tp, ra, s9
                  c.mv         a7, a0
                  divu         s4, s8, t4
                  c.nop
                  mulh         t4, a7, s4
                  srli         s0, a3, 22
                  srai         t5, s3, 12
                  mulhu        a6, t4, t3
                  c.srai       a3, 25
                  srli         t0, s2, 9
                  andi         a3, sp, 1976
                  xori         s2, s1, -196
                  c.sub        a5, s1
                  xor          s10, a3, t5
                  mulhsu       s5, s9, s11
                  andi         t4, s8, -1952
                  addi         s0, a6, -197
                  srli         s9, t6, 29
                  srl          t4, s7, s10
                  div          a5, s2, t1
                  sltiu        tp, zero, 1141
                  lui          a3, 768177
                  c.slli       s5, 30
                  mul          s3, t0, sp
                  and          a7, t5, a1
                  srl          s2, t0, gp
                  nop
                  slti         t0, a5, 2032
                  c.srai       a0, 8
                  srli         s6, s9, 30
                  c.and        a1, s1
                  sltu         a1, s0, a6
                  mulhsu       ra, zero, s6
                  srai         t5, a0, 5
                  addi         s7, s5, -977
                  xori         a3, a2, -308
                  c.andi       a2, -1
                  or           s10, a1, t1
                  mulh         a0, t0, a6
                  xori         a3, tp, 2023
                  c.andi       s1, -1
                  ori          a2, s4, -1250
                  sra          a2, s7, gp
                  nop
                  rem          a1, s0, a5
                  rem          s7, t0, a0
                  srai         s5, s6, 3
                  mulh         tp, t4, zero
                  c.addi       tp, 29
                  andi         s6, s0, -1155
                  sltu         a6, s6, a7
                  mulhsu       t0, s6, t2
                  lui          s6, 318607
                  ori          t6, a4, 591
                  c.add        s5, s4
                  mul          s1, a7, s8
                  mul          s3, t1, tp
                  c.andi       s1, -1
                  c.add        a3, s2
                  sltiu        t5, t2, -1169
                  slti         s9, t4, 415
                  mulhu        t4, a0, a2
                  rem          t5, t0, s1
                  addi         s9, a2, 1654
                  srli         t6, a5, 1
                  mul          t1, s10, a2
                  mulhu        t1, a5, tp
                  add          gp, tp, a0
                  mul          ra, t6, s5
                  c.mv         t0, t3
                  ori          s8, a6, 1273
                  c.sub        s1, a3
                  sll          ra, tp, a0
                  c.addi       a0, 13
                  srai         zero, s1, 25
                  srai         a2, s6, 25
                  c.andi       a2, 29
                  c.or         s1, s0
                  remu         t0, s11, s6
                  c.addi       s8, 18
                  mulh         s2, s6, t2
                  sltiu        s8, s8, 1360
                  c.mv         t1, a3
                  srli         s10, t4, 25
                  c.nop
                  srl          t5, gp, ra
                  srl          t3, ra, a5
                  sra          a1, tp, s4
                  nop
                  srai         s6, s7, 2
                  rem          t1, t0, t1
                  auipc        s10, 311559
                  sll          s5, s11, t3
                  srli         a7, a7, 30
                  c.slli       a5, 7
                  c.add        t5, s2
                  sub          s5, tp, s4
                  c.srai       a3, 1
                  nop
                  srli         a6, s8, 17
                  xori         s5, zero, 52
                  c.slli       s0, 24
                  c.add        t1, s9
                  or           t6, gp, a6
                  c.addi       ra, 24
                  auipc        t5, 631346
                  slti         s1, a4, 1913
                  addi         a0, s9, 201
                  addi         t5, a4, 1999
                  c.nop
                  remu         a6, a6, t5
                  c.addi       a1, 7
                  srli         s1, s2, 2
                  divu         a2, a5, s1
                  mul          a2, s10, t6
                  c.and        s0, a5
                  lui          a1, 180405
                  slt          t6, a1, gp
                  slti         s9, s8, 1068
                  sll          t5, t1, a0
                  sltu         zero, t1, zero
                  c.xor        a1, a0
                  slli         s2, a7, 14
                  sltu         a1, t6, t3
                  c.xor        a1, a1
                  c.li         t6, 29
                  xor          s7, s8, t3
                  xor          s7, a1, a7
                  c.slli       s0, 14
                  add          a6, s10, s10
                  xor          s6, sp, s10
                  ori          t2, s6, 1298
                  add          t6, s7, t3
                  c.addi       s0, -1
                  slt          t5, zero, a5
                  mulh         a6, s1, t3
                  sltiu        a7, tp, 1782
                  c.li         t5, -1
                  mul          a7, s2, s5
                  c.or         a1, a4
                  c.nop
                  c.nop
                  mulhu        a0, t3, a6
                  auipc        s5, 376159
                  rem          zero, t2, s0
                  ori          a0, gp, -328
                  or           s3, sp, tp
                  nop
                  c.andi       a1, 30
                  sub          s4, t1, s0
                  xor          a5, s0, s0
                  slt          s10, tp, s6
                  or           t2, ra, a2
                  sll          a6, s3, t4
                  srli         s3, t4, 26
                  add          t0, t3, sp
                  mulhsu       t1, s6, s6
                  divu         s2, gp, zero
                  or           zero, t5, t5
                  c.addi       s8, 23
                  sub          s10, s4, a3
                  c.mv         s7, s3
                  add          s5, ra, s9
                  nop
                  sra          tp, a3, a6
                  xori         a1, a3, 514
                  and          a0, s2, s2
                  sltu         s4, sp, s1
                  mulhu        ra, s1, s5
                  addi         a0, tp, -269
                  lui          t6, 1020002
                  srl          a1, a3, s6
                  c.and        a0, a3
                  c.nop
                  rem          s10, t3, zero
                  slt          gp, s1, s7
                  c.srai       a0, 25
                  slli         a0, s2, 27
                  c.mv         ra, a1
                  srai         s0, sp, 2
                  c.andi       a2, 23
                  c.add        t5, ra
                  c.sub        a2, a1
                  auipc        ra, 1002326
                  ori          a0, a6, -224
                  c.slli       s10, 18
                  nop
                  sltiu        zero, t3, -123
                  sll          ra, s6, a5
                  srai         tp, s10, 21
                  mulhu        t3, t6, s0
                  srl          a7, a2, sp
                  c.li         s0, -1
                  div          t2, t1, s11
                  sll          t2, a2, gp
                  slli         s10, s11, 19
                  ori          gp, s2, 1624
                  sra          s10, t3, s0
                  and          s6, a7, a5
                  c.srai       a5, 2
                  lui          gp, 590194
                  sll          t6, t4, s10
                  c.mv         t6, a2
                  srli         s6, t4, 3
                  remu         gp, t5, s2
                  c.addi       s0, 9
                  andi         ra, s1, 1835
                  srli         a2, a7, 3
                  xor          a3, zero, a5
                  and          s0, t1, ra
                  sll          s7, s0, t0
                  ori          s10, s6, -178
                  srli         s5, zero, 23
                  c.addi       t4, -1
                  xor          a2, s11, gp
                  sub          t2, a5, a0
                  srl          gp, t2, s1
                  xori         s0, t1, 2046
                  c.srli       a5, 21
                  rem          s3, s4, s4
                  lui          t6, 604344
                  c.mv         t3, s8
                  ori          s8, a6, 1934
                  srai         ra, a5, 0
                  c.srai       a0, 20
                  c.srai       a0, 14
                  c.andi       a1, 25
                  divu         t5, tp, s2
                  andi         t4, s11, -28
                  c.or         s0, s1
                  rem          s3, s2, s8
                  c.addi       a6, -1
                  c.or         a1, a1
                  c.or         a2, a0
                  or           s7, a6, t0
                  sltu         s5, s3, t1
                  sll          t3, s6, zero
                  nop
                  c.xor        a5, a0
                  mulh         a3, a1, sp
                  addi         t5, ra, 309
                  mul          a7, t5, t3
                  remu         s1, t1, a5
                  srli         t4, ra, 2
                  addi         t5, s6, -59
                  c.nop
                  andi         a0, s8, 1844
                  c.li         t5, -1
                  and          t6, s7, a7
                  xor          s8, s0, s10
                  addi         a3, t2, 64
                  slti         s10, t5, 810
                  rem          zero, t3, s3
                  sltiu        t2, t3, -426
                  c.srai       a1, 6
                  divu         s6, a3, sp
                  auipc        tp, 839825
                  c.srai       a1, 7
                  srli         a6, s7, 28
                  divu         zero, a7, gp
                  c.srai       s1, 21
                  c.mv         a0, t6
                  c.srai       a1, 31
                  slli         s6, s0, 16
                  xor          gp, a2, t0
                  c.addi       a6, -1
                  div          t1, tp, s11
                  ori          a0, t6, 1986
                  c.sub        s1, a3
                  c.mv         s8, a7
                  c.mv         t0, s3
                  c.mv         a1, t4
                  srl          s4, s9, s10
                  auipc        ra, 98563
                  divu         s8, s0, s10
                  c.add        a6, s8
                  srl          a5, a0, a2
                  divu         t5, a0, t5
                  mulh         t6, t1, a0
                  sra          a0, t6, t3
                  ori          s6, s4, 1813
                  sltu         s5, s9, t1
                  remu         t4, s4, t3
                  and          s8, a0, s1
                  divu         t6, a5, s9
                  xori         s2, t4, 695
                  srli         s9, a7, 8
                  slt          t6, a0, t4
                  srai         a2, ra, 10
                  xori         t4, s2, -1618
                  div          s8, s11, t3
                  and          gp, s9, s6
                  mulh         s5, s11, a4
                  xor          s9, gp, t0
                  srai         s2, s2, 22
                  sltu         a1, s7, tp
                  slli         a1, t5, 25
                  srl          s8, t2, s4
                  srai         a5, t2, 2
                  c.li         t3, -1
                  c.mv         s10, t0
                  c.srai       a0, 24
                  c.add        t0, a7
                  c.nop
                  add          s8, s2, s7
                  divu         s6, s10, t1
                  c.andi       a2, 18
                  mulhu        s0, s3, a5
                  auipc        s8, 776381
                  mulhu        a6, a6, a7
                  addi         s2, t0, 1929
                  andi         a0, s11, -518
                  c.lui        s7, 14
                  c.addi       s1, 14
                  c.li         s5, 24
                  mulhsu       a5, tp, a0
                  sll          t5, s10, s1
                  mul          a7, s8, t6
                  or           s10, gp, a2
                  c.andi       a1, -1
                  mulhsu       gp, s4, a4
                  sra          s0, t2, a2
                  andi         t5, t6, 839
                  xor          t4, s0, s4
                  lui          t0, 160790
                  mulhsu       s2, s5, a2
                  c.srli       a2, 6
                  mulhu        a0, t0, s10
                  div          gp, ra, t3
                  addi         s7, a2, 132
                  c.add        s3, t4
                  c.addi       a3, -1
                  mul          a5, s7, sp
                  ori          s0, a7, 1363
                  sltiu        t5, ra, 1119
                  divu         t4, s7, gp
                  sltiu        a7, zero, -92
                  nop
                  xor          s7, sp, s4
                  c.sub        a5, s0
                  mulhu        s8, s11, s1
                  divu         a3, s4, a4
                  sub          t2, ra, s10
                  c.mv         a2, s1
                  xori         a3, a0, 783
                  sltiu        a1, t3, 1629
                  c.srai       a2, 20
                  c.addi       s5, -1
                  addi         s5, a2, 669
                  addi         s5, s4, 48
                  c.addi       t4, -1
                  div          t1, a5, t5
                  c.andi       a5, 8
                  nop
                  c.addi       s0, 22
                  srli         t0, s11, 15
                  remu         t6, s3, a0
                  c.srli       a2, 30
                  sltu         tp, a2, a7
                  c.mv         s8, a6
                  c.mv         t1, t0
                  add          t1, s0, s7
                  c.andi       s0, 2
                  sltiu        a3, zero, 608
                  c.or         s1, a3
                  rem          t5, s11, t3
                  c.li         t5, -1
                  c.addi       ra, 19
                  nop
                  c.srai       a5, 9
                  srl          gp, a6, s9
                  addi         s0, s0, -1377
                  mulhsu       s5, t4, s1
                  sra          s5, a2, s2
                  c.add        s7, t6
                  c.lui        a2, 17
                  c.srai       s1, 10
                  mul          s9, t4, a0
                  div          s8, s3, s7
                  srli         s8, t6, 5
                  lui          a2, 733015
                  sra          a5, tp, s7
                  c.add        s6, s11
                  remu         t5, s0, s9
                  lui          a3, 152482
                  c.slli       s1, 12
                  div          t0, t2, s3
                  srl          s0, s4, s4
                  c.and        a1, s0
                  c.xor        a5, a0
                  sltiu        s6, t4, 1782
                  c.sub        a2, s0
                  sub          s9, s8, s8
                  srli         t6, s5, 5
                  c.li         t2, 22
                  mulhsu       s3, s2, a3
                  c.xor        s0, s0
                  divu         a1, a0, gp
                  sltiu        s2, s6, -1849
                  c.mv         s1, t1
                  slti         a7, sp, -1886
                  lui          s9, 545260
                  sub          a5, s9, a1
                  mulhu        a3, t5, s9
                  c.and        a2, a3
                  lui          s7, 140515
                  c.nop
                  addi         a0, t3, -38
                  mulhsu       a1, s11, s11
                  mulhsu       s7, a6, t3
                  lui          t3, 926737
                  xori         t2, a1, -1740
                  auipc        s0, 290631
                  mul          s9, s6, t5
                  c.li         ra, -1
                  xor          s10, sp, s6
                  c.xor        a2, s0
                  c.srai       a0, 30
                  slli         s6, s3, 4
                  c.srli       a0, 8
                  c.andi       a0, -1
                  lui          s3, 321238
                  mulhu        gp, a5, s0
                  slli         t5, tp, 11
                  mulh         t6, a7, a6
                  c.li         a2, -1
                  addi         s3, s4, 1213
                  sltiu        a7, a3, 285
                  slt          a0, t0, a7
                  c.srli       a5, 20
                  c.xor        a2, a1
                  c.li         a5, 3
                  sra          zero, t6, a6
                  lui          s9, 94060
                  slti         t4, s0, -1602
                  andi         t2, t1, -1639
                  c.andi       a2, 4
                  ori          s8, t6, -410
                  c.srli       a2, 13
                  sra          s6, t3, s2
                  sltu         s5, s5, t2
                  c.nop
                  sra          t5, s2, sp
                  c.sub        s0, a5
                  divu         s10, s9, a1
                  sltu         t6, t4, a7
                  xor          a1, s5, t2
                  c.srai       a0, 30
                  sll          t2, s3, t0
                  auipc        t2, 654436
                  auipc        t1, 201569
                  andi         a2, s4, 116
                  c.sub        a5, a3
                  nop
                  c.li         s2, -1
                  c.nop
                  or           s0, gp, t1
                  mulhsu       a3, s5, t5
                  c.addi       s6, -1
                  c.addi       a3, -1
                  sub          gp, s6, t0
                  sub          tp, zero, s10
                  c.andi       a0, -1
                  c.andi       a1, 11
                  c.mv         a5, s2
                  c.xor        a3, a4
                  c.srai       a2, 21
                  or           a0, a1, gp
                  slti         ra, t0, -126
                  srli         t0, s0, 22
                  c.slli       ra, 16
                  divu         t6, t6, gp
                  add          t0, s6, s1
                  xori         s7, a3, -708
                  srai         a6, a1, 12
                  sltiu        t5, tp, -624
                  c.add        a0, s10
                  sra          a1, gp, s4
                  addi         t2, s7, 1554
                  sltiu        t6, s1, -1502
                  slli         s5, a6, 22
                  mulhu        a3, a0, t0
                  lui          s9, 357205
                  nop
                  rem          t0, s1, t6
                  c.nop
                  ori          a2, a5, 1396
                  remu         t6, s7, t6
                  sll          s10, t0, s6
                  xori         s4, sp, -1124
                  mulh         s6, a0, a3
                  mulhu        s3, t6, t2
                  c.mv         t0, s6
                  sltiu        a6, s8, -759
                  slt          s7, a4, s11
                  sll          a5, s0, s11
                  sra          a5, s11, t2
                  ori          a2, s1, 1481
                  xori         zero, t2, -1750
                  c.lui        s7, 14
                  c.and        a3, a0
                  slli         t6, s9, 8
                  mulhsu       s10, t4, s4
                  nop
                  c.nop
                  sub          t5, s6, a1
                  c.srli       a2, 19
                  srai         s6, t4, 23
                  sub          t4, s3, t5
                  add          s9, a5, t4
                  andi         s1, t2, -1317
                  xor          a7, a7, t6
                  mul          s6, s8, s3
                  c.sub        a3, a5
                  sub          s6, ra, s11
                  slti         t4, s2, 1766
                  auipc        a5, 298118
                  mulhsu       s1, t5, s3
                  div          a0, gp, a6
                  remu         s8, s3, s0
                  ori          a0, s6, -901
                  slti         ra, s7, 878
                  addi         t2, tp, -281
                  c.and        s1, a5
                  c.addi       t5, 25
                  c.slli       s0, 21
                  c.add        a3, s3
                  sub          t5, s2, s5
                  mul          a2, ra, a7
                  sub          s7, a2, s4
                  sub          a5, s5, a7
                  rem          t5, ra, s8
                  c.add        t0, t1
                  c.li         s1, -1
                  c.sub        a3, a4
                  ori          t6, ra, 2021
                  andi         s8, ra, -1504
                  c.and        s1, a1
                  or           a0, gp, t0
                  add          t6, a0, s7
                  slt          a2, s11, s1
                  c.and        a5, a2
                  sub          a6, gp, a5
                  sltu         gp, s11, t0
                  c.or         s0, a5
                  c.andi       s1, -1
                  srai         tp, s4, 12
                  c.srli       s1, 29
                  mul          s8, sp, t3
                  auipc        a0, 1000765
                  mul          s9, s0, s4
                  sltiu        ra, t0, -4
                  c.srai       a2, 19
                  and          gp, t5, s9
                  mulhsu       s4, a3, s8
                  div          t0, a0, s5
                  c.lui        s9, 11
                  auipc        t1, 80881
                  c.srai       a5, 3
                  c.mv         gp, t3
                  sltiu        a7, a4, 533
                  c.andi       s1, -1
                  c.addi       t5, -1
                  andi         t2, gp, 1545
                  sra          s7, s8, s11
                  c.andi       a0, 4
                  sltu         s3, ra, s6
                  c.slli       s10, 8
                  xori         a3, a7, 1335
                  c.mv         s1, s10
                  slt          s9, s6, sp
                  c.add        a6, t0
                  c.and        a2, s1
                  mulh         a1, s2, s3
                  mul          s1, t0, zero
                  auipc        a7, 331753
                  sltu         t2, s0, gp
                  addi         t5, t1, 1699
                  rem          a0, a1, s1
                  addi         t5, t5, 1025
                  c.andi       a1, 12
                  c.add        s5, t4
                  c.mv         t1, a7
                  remu         a7, t2, tp
                  c.srli       a2, 17
                  sltiu        s7, a3, 1969
                  xor          a0, t2, a7
                  srli         s0, s5, 4
                  add          t0, t3, tp
                  sltu         t1, s0, t0
                  c.srli       a2, 12
                  mulhsu       a6, a4, t3
                  mulhu        t1, zero, s2
                  or           a3, s9, s0
                  srli         gp, s0, 25
                  rem          a1, tp, s3
                  ori          t1, s1, -1063
                  slt          zero, t5, s3
                  slt          s9, gp, s2
                  add          s1, gp, a5
                  slt          t6, s4, s9
                  c.add        t5, s2
                  sra          s0, s3, s0
                  div          s10, s1, a1
                  sub          a6, zero, a6
                  sll          a5, a5, s11
                  and          a0, gp, ra
                  srl          s1, ra, s6
                  remu         gp, a1, t5
                  slt          a1, s10, t4
                  div          t4, s6, t1
                  srl          t1, s6, a3
                  c.li         s10, 1
                  srli         s9, s4, 16
                  c.lui        a6, 25
                  sll          s0, t2, sp
                  mul          t4, a3, s10
                  c.li         s10, 2
                  c.srli       a2, 17
                  c.and        s1, a5
                  sll          s1, s8, s3
                  and          t1, s1, a5
                  xor          gp, s10, s9
                  remu         t5, s11, s10
                  c.and        s0, s1
                  addi         s7, a4, -253
                  c.mv         t2, t5
                  sll          t4, s2, s7
                  slti         t3, a7, -957
                  c.addi       s10, 20
                  c.sub        a0, a4
                  mulh         t6, s7, t4
                  c.srai       a5, 8
                  sra          s2, t1, s8
                  sll          s0, t5, gp
                  add          s10, s4, s10
                  xor          tp, t4, a0
                  c.slli       s5, 6
                  mulh         t5, gp, zero
                  div          a7, s8, s0
                  srli         t6, a4, 7
                  mulhu        ra, t1, s2
                  c.sub        a0, a0
                  sub          s5, s8, s4
                  xor          a0, ra, zero
                  c.xor        s0, a3
                  mulhu        s10, a4, s7
                  addi         t2, a6, 304
                  auipc        t4, 7746
                  c.or         a0, a0
                  c.srai       s0, 1
                  or           s3, s5, s7
                  c.srai       a1, 15
                  sll          gp, s2, t2
                  sltu         gp, t0, s3
                  nop
                  c.and        a5, a1
                  mulh         a6, s1, t2
                  c.srli       a0, 14
                  sra          s3, a4, a0
                  addi         t2, s0, -1563
                  div          s6, a2, s7
                  and          t6, a3, zero
                  auipc        gp, 874470
                  xori         s6, t0, -2028
                  add          t1, tp, s11
                  c.srli       a5, 14
                  divu         a6, zero, a5
                  or           a0, sp, t5
                  andi         a2, a4, -437
                  ori          zero, zero, -862
                  sltiu        s0, s10, -233
                  divu         s5, t6, zero
                  xor          t2, s3, a0
                  nop
                  slli         s9, s11, 25
                  c.lui        a2, 26
                  c.mv         a3, tp
                  slt          zero, a4, t1
                  srai         ra, a5, 30
                  c.andi       a2, 31
                  sll          s6, gp, a1
                  ori          zero, a4, -298
                  addi         s4, s2, -1530
                  xori         gp, s4, -1940
                  srl          s7, sp, s4
                  divu         t1, s2, a2
                  sll          s4, zero, t0
                  c.addi       s1, 19
                  mulhu        t4, tp, s0
                  c.sub        s1, a5
                  div          a1, a4, ra
                  c.mv         t1, a6
                  c.mv         s6, a3
                  mul          s2, t4, sp
                  srl          tp, a3, s0
                  c.xor        a3, a4
                  and          s10, a2, a2
                  srl          t1, a0, sp
                  or           ra, s2, a3
                  or           a2, s0, s4
                  c.mv         a1, a1
                  xor          s8, s8, a3
                  slli         t0, a0, 29
                  srl          tp, ra, s7
                  and          s9, a5, s7
                  sub          a7, a3, t1
                  div          s2, s6, s9
                  slti         s10, s0, -743
                  srli         s7, a2, 27
                  ori          s8, t4, 916
                  mul          t6, sp, t5
                  lui          t6, 992399
                  c.addi       t1, 24
                  slli         zero, s6, 14
                  c.srai       a5, 16
                  addi         t3, a6, 1609
                  slli         t4, s5, 6
                  sll          s5, s2, t0
                  div          s8, s4, a0
                  c.srli       a2, 21
                  c.srli       s1, 20
                  slli         a7, s10, 21
                  nop
                  sltu         a3, a2, s5
                  or           s9, s11, s11
                  divu         s7, s1, s5
                  div          zero, s10, tp
                  auipc        tp, 122748
                  nop
                  srai         t2, s5, 28
                  c.srli       a2, 5
                  c.add        gp, a7
                  sra          a0, t1, a2
                  mulh         s0, t5, s3
                  auipc        a1, 503885
                  c.sub        a2, s0
                  add          a6, s2, s2
                  mul          t1, s8, s1
                  and          s3, ra, s9
                  slt          t1, s8, a7
                  slt          s6, a1, t5
                  c.mv         t0, s7
                  c.sub        s1, a4
                  c.and        a0, a5
                  xor          t5, t4, a4
                  addi         s5, gp, -856
                  andi         s3, t0, 113
                  srli         a5, t6, 19
                  c.mv         a2, s4
                  andi         s4, tp, -935
                  mulhsu       s10, s8, ra
                  nop
                  mul          t3, s4, a2
                  c.mv         a7, s1
                  c.nop
                  xor          s10, s3, a4
                  rem          t1, tp, s6
                  mulh         a2, t6, a7
                  c.sub        a2, a3
                  c.li         ra, 5
                  c.lui        s6, 4
                  mulh         t4, sp, a2
                  c.slli       s2, 25
                  c.li         t3, 10
                  mulh         a5, sp, a4
                  div          zero, a1, s3
                  c.add        s9, ra
                  c.sub        a2, a0
                  and          s9, zero, t0
                  xori         s3, gp, 1095
                  sra          zero, a6, s10
                  lui          s3, 1024797
                  c.li         s4, -1
                  addi         a5, sp, -198
                  sltu         s1, s11, a7
                  remu         a0, zero, gp
                  c.andi       a0, 5
                  addi         t4, s7, 2016
                  mulh         s4, tp, a4
                  slt          gp, a5, s3
                  remu         s2, a4, s7
                  slt          a6, a0, ra
                  c.lui        t4, 23
                  c.li         t0, -1
                  ori          t5, s0, -1038
                  lui          t3, 642157
                  c.add        a2, s10
                  auipc        s3, 786550
                  c.lui        s8, 6
                  srli         s0, gp, 4
                  c.srai       s0, 7
                  sltiu        s5, a2, -690
                  srai         t6, s11, 1
                  sub          t0, s10, t3
                  slti         s2, t0, 1912
                  mulh         ra, t1, a3
                  auipc        s10, 273128
                  c.nop
                  c.addi       a6, 5
                  mul          s7, s10, s6
                  sll          s8, s7, sp
                  c.add        gp, s0
                  sra          tp, t1, s5
                  c.slli       a3, 26
                  or           s4, a0, s10
                  xor          s5, a7, gp
                  c.addi       t6, 23
                  or           s1, s9, s6
                  slt          a5, gp, t1
                  mul          t2, s2, t3
                  srli         a3, s7, 17
                  c.mv         s7, ra
                  sll          t1, s0, t6
                  c.li         t6, 26
                  c.xor        a3, a0
                  mulhu        t3, a7, s9
                  c.sub        s1, a4
                  c.srli       a2, 18
                  sra          t6, s11, s2
                  srai         a6, a6, 2
                  srai         t3, t2, 20
                  remu         a2, t1, a4
                  mulh         a2, zero, s4
                  xori         a2, s7, 376
                  c.and        a5, a3
                  c.and        s1, s1
                  srl          zero, s3, ra
                  c.and        a3, a3
                  c.sub        s0, s0
                  c.andi       a3, -1
                  c.xor        s1, a2
                  mulhu        a2, a7, ra
                  c.or         a1, a3
                  srli         a0, a6, 14
                  mulhsu       tp, s9, ra
                  slt          t2, t0, t2
                  nop
                  c.addi       s3, 18
                  srli         zero, t5, 17
                  c.and        a3, a0
                  sra          t3, a0, a5
                  c.mv         a6, a4
                  sub          s8, a0, t4
                  remu         tp, t1, s8
                  c.nop
                  mulhu        s4, t2, t1
                  and          a3, zero, a2
                  c.srai       a2, 11
                  c.add        s0, a1
                  mul          ra, a1, s2
                  srl          a5, ra, t3
                  mulhsu       a7, s6, s7
                  c.slli       a0, 10
                  slli         a0, t0, 10
                  mulh         tp, s1, t0
                  lui          a6, 345130
                  slti         t5, s5, -853
                  c.li         t4, 3
                  lui          zero, 996114
                  srai         t4, s7, 10
                  sub          a1, t4, s7
                  c.srli       a5, 26
                  auipc        s7, 963514
                  sra          a5, a1, a7
                  c.xor        a0, a5
                  c.srai       a3, 16
                  c.addi       s4, 29
                  sra          a3, gp, t1
                  c.xor        a0, a3
                  srli         tp, a0, 10
                  sub          t1, a1, t4
                  divu         a0, a5, ra
                  xor          t6, t3, s6
                  divu         s7, s3, t5
                  and          s10, a3, ra
                  xor          gp, t4, t2
                  xor          s8, t0, t3
                  c.and        a1, a4
                  rem          t0, a0, s11
                  c.sub        a3, a5
                  ori          gp, t1, 1540
                  c.slli       s8, 28
                  sub          t1, zero, s8
                  auipc        s10, 264443
                  sra          s0, s2, s5
                  nop
                  divu         s2, s3, a7
                  div          zero, s10, s2
                  c.add        s10, s9
                  c.srli       a0, 6
                  sltu         s10, a4, t0
                  mulhu        a5, zero, s2
                  c.srli       a0, 9
                  c.srai       a0, 20
                  andi         a0, zero, -1476
                  c.addi       s5, 11
                  slli         a5, gp, 3
                  sub          t6, t0, a7
                  sra          a2, s3, s9
                  nop
                  c.add        a0, s9
                  sltu         a3, t2, a6
                  slti         t0, a4, -1343
                  mulhu        gp, a5, t3
                  nop
                  slli         a0, gp, 12
                  sub          s7, a1, s8
                  remu         s3, t5, s10
                  add          s4, t6, a6
                  xor          a1, t3, s8
                  xor          a5, s6, a3
                  xori         a1, t5, -547
                  sltu         s5, a1, a6
                  c.andi       s1, -1
                  ori          a5, s9, 1260
                  c.nop
                  c.mv         gp, s7
                  srli         a0, s7, 9
                  mulhsu       s10, a6, a7
                  sll          t1, s10, t1
                  rem          t3, a0, s8
                  slli         t1, s8, 19
                  sltu         s6, s11, s7
                  sub          s10, a4, a2
                  c.xor        s1, a1
                  srli         t2, t1, 25
                  lui          s6, 85878
                  divu         tp, s5, a3
                  mulh         ra, t1, a1
                  c.li         s4, -1
                  remu         a2, t5, a4
                  ori          ra, t6, -417
                  c.srli       a2, 30
                  or           s4, a6, t4
                  c.srli       s1, 24
                  lui          s8, 568930
                  c.addi       s1, 14
                  mul          s0, a4, tp
                  auipc        a2, 939572
                  srai         s9, a5, 28
                  c.andi       a2, 19
                  sub          s6, s10, a0
                  remu         s1, t6, a2
                  ori          s7, s4, 301
                  mulhsu       tp, a7, s11
                  c.and        a1, a3
                  xor          t6, a3, t5
                  c.slli       ra, 14
                  auipc        a6, 433955
                  c.addi       a1, 2
                  xori         s6, t3, 1302
                  c.nop
                  mul          s7, t1, a5
                  andi         s7, t1, 578
                  sltiu        a3, s6, 192
                  c.add        t1, a7
                  c.sub        a3, a4
                  c.addi       t4, -1
                  c.sub        a2, a0
                  c.add        t2, s11
                  andi         a7, s0, 1991
                  ori          t3, tp, -627
                  and          s6, t3, s4
                  c.srli       a2, 27
                  c.xor        a0, a2
                  nop
                  c.andi       a3, 14
                  sltu         t6, a7, s10
                  div          a6, s2, t1
                  xor          s7, s5, s7
                  srai         ra, t0, 4
                  srai         tp, t0, 19
                  slt          s5, a4, a5
                  c.or         a0, s0
                  sltu         t3, a4, s0
                  remu         ra, t0, t2
                  c.srli       a3, 4
                  andi         zero, t4, 1202
                  sub          t3, t2, t3
                  or           a6, ra, a5
                  c.lui        s8, 29
                  sra          s1, a5, s7
                  divu         a5, a0, tp
                  and          t1, a0, t1
                  c.li         a3, 22
                  slti         s0, a5, -1491
                  mulhsu       t5, s11, a4
                  sll          a2, a1, zero
                  mul          t5, s5, s6
                  mulhu        a0, t4, t4
                  mulhu        a5, s11, a2
                  xori         s7, a6, -2026
                  c.xor        s0, a5
                  or           a1, a6, tp
                  slti         a7, a0, -1449
                  mulh         s10, a4, a0
                  nop
                  mulhu        s4, a2, a5
                  rem          zero, s5, gp
                  c.lui        a7, 14
                  div          t5, a6, a2
                  c.srli       a5, 27
                  divu         t3, a4, a2
                  xori         s6, s9, 2004
                  c.add        t5, t4
                  sub          s7, s6, tp
                  srli         s8, a5, 26
                  mulhsu       t0, gp, s7
                  c.add        s0, ra
                  slti         a3, a0, 1567
                  c.addi       s3, 5
                  c.srli       a1, 27
                  xori         a5, t1, 1694
                  sltiu        a6, t0, 1922
                  srl          s5, s9, ra
                  c.sub        a0, a1
                  addi         a5, a2, -1908
                  ori          a3, s10, -935
                  c.srai       a0, 17
                  c.srai       s0, 25
                  slt          a3, sp, t0
                  c.and        a0, a2
                  sltu         a2, a0, t0
                  c.srli       a3, 8
                  c.xor        a2, s0
                  mul          t5, t1, a0
                  addi         gp, s3, 1966
                  slt          a2, s2, tp
                  rem          ra, a1, s0
                  c.nop
                  c.li         s3, -1
                  sll          s8, s11, s11
                  c.and        s0, s0
                  and          s7, s8, s9
                  c.addi       a3, -1
                  or           s2, gp, a7
                  c.add        t2, a4
                  slti         s6, t2, 557
                  srli         zero, a6, 28
                  c.slli       s4, 19
                  c.sub        a5, a5
                  c.nop
                  c.mv         gp, gp
                  sltiu        s3, s10, -1060
                  c.andi       a3, 4
                  c.sub        a1, s1
                  add          s2, a7, a7
                  lui          s10, 212060
                  slli         t6, t1, 20
                  sub          t3, a1, t6
                  add          a7, s11, s9
                  c.slli       s5, 12
                  sub          t0, a2, tp
                  c.addi       s9, 28
                  rem          a2, ra, s5
                  c.mv         a0, s2
                  or           a0, s11, s5
                  sra          s4, t3, s4
                  sltiu        s7, a6, -1516
                  div          t5, s5, t1
                  or           zero, s2, s8
                  remu         a7, a7, s8
                  srl          s10, s10, t4
                  c.nop
                  slti         t5, s8, -597
                  remu         a3, sp, s3
                  slt          s1, s11, t2
                  sub          s9, s10, a0
                  or           a0, t2, t6
                  addi         s9, t3, 1167
                  nop
                  xor          s8, t2, a0
                  mulhsu       t2, t1, s4
                  or           s7, t1, t1
                  sltu         t6, t1, s8
                  lui          a6, 847972
                  xori         t2, a7, -567
                  sll          a3, s0, tp
                  c.or         a5, a2
                  c.addi       a0, 25
                  c.andi       s1, -1
                  c.andi       s1, -1
                  xori         s7, a2, -1728
                  slt          s4, s3, t3
                  xor          ra, s8, ra
                  xor          gp, t1, s4
                  c.sub        a5, a1
                  mulhsu       a0, a0, s0
                  addi         s5, t3, 31
                  srli         s10, a6, 3
                  sll          gp, a2, a2
                  sub          a2, t2, a5
                  c.and        a1, a3
                  ori          s6, s3, 1935
                  or           s9, t4, sp
                  c.li         t4, 17
                  c.xor        s0, a1
                  sltu         t1, a5, zero
                  c.or         a1, a0
                  srai         ra, a2, 18
                  slli         a6, s4, 15
                  lui          s7, 361022
                  nop
                  lui          a0, 143318
                  c.or         a1, a4
                  c.sub        a3, a3
                  addi         tp, a7, -1521
                  mul          s9, a5, s9
                  slti         s9, a4, -345
                  mulhu        zero, t5, gp
                  mulh         s5, s1, tp
                  xori         t5, t2, -1908
                  xori         t5, a4, -1103
                  sra          t4, a3, a4
                  slt          t4, tp, a0
                  remu         a0, a0, a7
                  c.li         s2, -1
                  c.srli       a1, 31
                  or           s6, s8, s10
                  c.xor        a0, a2
                  auipc        ra, 1038883
                  c.addi       a6, 11
                  c.addi       s5, -1
                  mul          a5, s7, gp
                  c.mv         a7, s3
                  remu         gp, a6, a5
                  lui          a1, 835081
                  sub          t1, s4, a5
                  c.mv         t2, t2
                  mulhu        a7, s0, s1
                  c.xor        s0, a3
                  mulhu        a5, t2, gp
                  c.mv         a5, t0
                  mul          s9, t5, s9
                  xori         s2, s9, -1257
                  slt          s6, a5, zero
                  c.and        a0, s1
                  rem          s4, tp, s7
                  xor          s2, s10, t5
                  sra          a3, t0, a2
                  c.addi       t4, -1
                  c.nop
                  c.lui        s0, 2
                  slt          s3, t6, s5
                  sll          s4, t2, s1
                  sra          s10, t5, zero
                  mulhsu       a5, s5, a5
                  c.or         s1, s0
                  srl          t6, s4, t3
                  c.srai       a0, 7
                  srl          zero, tp, s1
                  sra          s3, sp, a5
                  srl          t6, s1, tp
                  c.li         s10, -1
                  ori          s4, a4, 1764
                  div          t5, s9, a6
                  c.addi       s8, 9
                  lui          a3, 6614
                  srl          t6, ra, t5
                  c.li         gp, -1
                  sub          zero, ra, a7
                  srl          t0, s5, s3
                  mul          a3, gp, s6
                  xori         t4, s9, -571
                  xori         s2, t4, 615
                  xor          s5, a4, a0
                  sra          t6, a6, t0
                  c.lui        t5, 9
                  divu         t6, t6, s2
                  rem          t2, t0, a2
                  srl          t1, gp, s5
                  andi         s5, t2, 1660
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           s0, 0xffffffff
                  li           a3, 0x0
                  li           t5, 0xffffffff
                  li           t4, 0x80000000
                  li           a1, 0x80000000
                  li           s7, 0x1f79b5dc
                  li           s2, 0xffffffff
                  li           a0, 0xffffffff
                  li           t1, 0x0
                  auipc        s2, 1031398
                  remu         t1, t1, a1
                  sub          a3, t4, a1
                  mulh         s0, a1, a0
                  mulhu        t1, s7, a0
                  mul          s2, s2, t5
                  remu         t4, s1, a0
                  lui          a1, 501398
                  mulhsu       t1, t1, t5
                  add          t4, a1, a3
                  sub          a3, s2, s2
                  div          s1, s1, s2
                  mulhsu       t5, s0, t1
                  divu         s0, t4, a3
                  auipc        s7, 531459
                  auipc        t1, 372519
                  addi         a1, a0, 861
                  mul          s1, s2, t1
                  sub          s0, a3, s2 #end riscv_int_numeric_corner_stream_33
                  xori         t1, s9, 1935
                  mulh         s7, s6, a1
                  sub          t0, tp, a0
                  rem          tp, t2, t1
                  c.slli       tp, 5
                  c.slli       a6, 20
                  c.and        a1, a0
                  mul          s9, s10, a6
                  sltu         ra, a5, s7
                  slti         s10, a6, 647
                  c.srli       a2, 21
                  sra          a5, a3, a7
                  sub          s7, a1, s10
                  sll          a5, s5, a7
                  rem          s10, gp, zero
                  remu         s4, t2, s0
                  div          s4, sp, s1
                  lui          a0, 769887
                  mul          a6, sp, s1
                  xori         s2, t4, 413
                  xori         t5, t4, -1000
                  xor          s1, a1, a0
                  mulhsu       a7, a5, t1
                  c.lui        t0, 29
                  c.li         a1, 15
                  mulhsu       s6, s10, t1
                  div          t6, zero, t0
                  auipc        t0, 848475
                  xori         a7, ra, 900
                  sra          s0, s3, gp
                  or           gp, s7, s0
                  remu         t2, sp, s1
                  c.mv         s8, ra
                  sra          t2, s0, t0
                  c.lui        gp, 15
                  c.nop
                  srl          t0, t6, s6
                  c.lui        t2, 27
                  auipc        s9, 231259
                  nop
                  nop
                  or           a1, s11, a5
                  slli         t3, a1, 2
                  mul          a2, t6, a7
                  slt          t1, gp, s5
                  c.lui        a3, 4
                  slli         a5, s9, 22
                  xori         t6, s3, -1388
                  or           t5, s3, s1
                  srai         s8, t3, 16
                  c.and        s0, a1
                  add          a1, a3, s5
                  slti         s7, a0, 1034
                  xor          s10, s5, t3
                  srli         s2, s10, 16
                  sub          t2, s8, t1
                  c.sub        a2, a5
                  remu         s6, s3, ra
                  sltiu        t4, a1, -1444
                  add          t2, t6, s9
                  ori          s3, s10, 1602
                  c.nop
                  auipc        s4, 120145
                  addi         s0, zero, -435
                  addi         a1, t1, 1512
                  mul          t1, zero, a3
                  c.sub        a5, a5
                  divu         s10, s6, t4
                  c.srli       s1, 13
                  div          t4, t2, tp
                  c.andi       s1, -1
                  slt          a2, s8, ra
                  c.nop
                  sub          zero, s5, a0
                  c.or         a0, a1
                  srli         a1, sp, 21
                  mulhu        a3, s4, s9
                  c.lui        a6, 3
                  c.andi       a1, 19
                  and          a6, s1, tp
                  sub          gp, s2, s2
                  c.nop
                  mulhsu       a2, zero, t3
                  srli         s3, s6, 0
                  c.nop
                  c.addi       a7, 11
                  and          a6, a2, ra
                  xor          s7, t6, s4
                  and          t6, a4, s7
                  xori         s0, s2, 2006
                  srl          t6, s6, s7
                  c.srli       s0, 8
                  ori          s8, a3, -1469
                  xor          ra, tp, t4
                  auipc        ra, 811680
                  srl          a3, s3, sp
                  c.srli       s1, 9
                  mulhsu       a2, s4, t5
                  or           t3, s9, t0
                  c.srai       a1, 13
                  mulhsu       s8, s7, s3
                  rem          ra, tp, s7
                  c.lui        s8, 15
                  c.slli       s5, 31
                  addi         t4, a0, -1995
                  c.slli       t1, 26
                  xori         s5, s3, -1082
                  c.srai       a3, 12
                  rem          a5, ra, s7
                  c.lui        s6, 21
                  slti         s4, a5, 1723
                  rem          s4, a4, t1
                  add          s2, sp, s0
                  c.addi       a1, -1
                  c.li         s9, 0
                  srli         a5, t2, 28
                  xori         zero, s5, 199
                  slti         s8, s7, -876
                  slt          s8, s6, s4
                  c.srai       a2, 30
                  c.lui        s5, 26
                  c.srai       a0, 29
                  remu         tp, s7, s8
                  sra          t6, ra, s10
                  c.add        a2, s10
                  remu         zero, t6, t1
                  auipc        s2, 770801
                  sra          a3, gp, s6
                  c.andi       a0, -1
                  mulhu        s8, s11, gp
                  c.sub        a5, s0
                  c.and        a1, a3
                  c.andi       a0, 18
                  or           s8, a1, s1
                  ori          s8, zero, -1190
                  auipc        s9, 599047
                  auipc        ra, 963081
                  mul          s7, s7, ra
                  mulh         a1, a1, tp
                  xor          s3, t5, s4
                  c.li         s6, 6
                  sra          s0, t4, t3
                  c.srai       a5, 22
                  slli         a3, s5, 22
                  lui          ra, 349416
                  c.and        a0, s0
                  andi         gp, s1, 109
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a1, 0xffffffff
                  li           s2, 0x5924eeb
                  li           s10, 0x0
                  li           tp, 0x0
                  li           ra, 0xffffffff
                  li           a5, 0x0
                  li           s8, 0xe6eed735
                  li           t0, 0xffffffff
                  li           t2, 0x80000000
                  mulhu        a1, ra, s8
                  remu         t0, tp, s8
                  divu         ra, a1, a1
                  divu         s8, ra, a1
                  nop
                  addi         s8, s10, -1867
                  lui          t2, 190108
                  sub          tp, ra, a5
                  auipc        t4, 356113
                  mulhu        t2, t4, t2
                  mulhsu       s10, t4, tp
                  mulhu        t0, t2, tp
                  mulh         a5, ra, ra
                  mul          t4, s2, ra
                  add          s2, t4, s8
                  rem          s2, s8, s10
                  div          t4, tp, s8
                  mulh         a5, t4, t0
                  addi         a1, a1, -864
                  addi         s8, s8, 1040 #end riscv_int_numeric_corner_stream_16
                  lui          s5, 26364
                  sltu         t3, s7, t1
                  divu         t0, t3, a2
                  sra          ra, a2, a0
                  auipc        s0, 255614
                  and          s7, s9, s4
                  div          gp, s3, s11
                  slli         s1, s5, 2
                  c.srli       a0, 15
                  sll          t6, ra, t6
                  or           s5, s4, s3
                  c.srai       s1, 31
                  slli         gp, s5, 10
                  c.li         a7, 4
                  ori          t2, a4, -509
                  xor          s6, a0, zero
                  c.nop
                  sltu         s10, a1, t2
                  srl          t6, a2, t1
                  slt          s6, a7, t6
                  c.andi       s0, 25
                  slli         s6, t3, 3
                  slti         t1, s3, 78
                  c.addi       a5, 4
                  c.xor        a3, a0
                  or           ra, t6, t1
                  c.add        a1, a1
                  div          zero, s10, s1
                  mulhsu       s9, tp, s8
                  srl          a7, a4, s6
                  mulhsu       a2, a5, t6
                  sll          s7, a3, t5
                  mul          s2, ra, t1
                  srai         a0, a0, 11
                  sltu         s9, s8, s6
                  divu         ra, a1, t5
                  slli         a6, gp, 3
                  c.lui        t5, 24
                  sra          a6, s1, t3
                  ori          zero, a3, -1812
                  andi         a3, a3, 1034
                  divu         t1, gp, s11
                  c.mv         gp, a5
                  slti         a7, s7, -1892
                  srai         t1, t1, 23
                  andi         zero, s9, 2021
                  c.mv         gp, t0
                  srai         t2, a6, 3
                  remu         t4, a4, s7
                  mul          t3, a6, t0
                  mulh         t1, a4, a7
                  div          a0, t2, tp
                  mulh         a7, a5, t6
                  c.li         a1, 1
                  xori         s2, zero, 2034
                  c.or         a3, a5
                  andi         s9, a5, 1388
                  slti         a0, s8, -1244
                  c.and        a2, a0
                  sltu         ra, a6, t6
                  srai         a5, t4, 26
                  sub          t3, a3, ra
                  slt          zero, a4, s7
                  and          t1, s6, sp
                  slli         t2, s1, 28
                  c.li         ra, -1
                  andi         s2, a1, 1895
                  sll          s0, s2, a5
                  c.xor        a3, s1
                  c.xor        s0, a3
                  c.srli       a1, 24
                  slti         s6, ra, -1182
                  divu         s7, a0, a6
                  slli         a2, a3, 1
                  lui          s5, 305259
                  addi         s0, s7, -222
                  c.lui        t6, 3
                  divu         s2, a4, ra
                  sra          s5, s10, t5
                  sll          s3, s8, t4
                  xori         s0, s4, -1603
                  mulhsu       s10, t6, tp
                  add          t5, s6, a5
                  auipc        s8, 994645
                  c.lui        a5, 13
                  c.addi       gp, -1
                  mulh         s5, a5, t2
                  sll          s5, a5, s11
                  addi         s6, sp, -550
                  srl          tp, zero, t1
                  c.srli       a5, 1
                  add          a3, t2, a0
                  divu         a5, gp, s0
                  or           s7, s0, s5
                  andi         ra, t1, 181
                  auipc        t3, 875403
                  lui          s10, 258980
                  auipc        s1, 740823
                  srl          a6, s10, a1
                  sub          a3, tp, zero
                  c.addi       s2, 29
                  lui          t3, 1044485
                  srli         s9, s2, 25
                  andi         t6, a2, 590
                  c.or         a5, s0
                  srai         a7, t3, 11
                  c.srai       a3, 29
                  sltiu        a7, s2, -1766
                  rem          tp, s2, a7
                  mulhsu       t0, t4, t0
                  srai         ra, s10, 14
                  c.li         s7, 7
                  c.li         a6, -1
                  c.srai       a1, 25
                  srai         s6, a0, 16
                  sltu         s3, s3, a3
                  xori         a3, s10, 676
                  mulh         t5, s7, ra
                  mulhu        t3, zero, s4
                  c.or         a1, a4
                  or           s2, t2, t6
                  sra          t1, s9, s11
                  and          s7, s9, ra
                  sra          s4, s3, t3
                  c.li         t2, -1
                  c.and        s1, a1
                  sub          s0, s4, s0
                  c.add        s7, s10
                  auipc        s5, 456744
                  mulhu        a0, sp, s2
                  xori         s3, s9, 461
                  mulhu        a2, s11, a0
                  sub          t1, s2, s4
                  c.xor        a0, a4
                  c.slli       s2, 10
                  or           t5, s10, t1
                  c.and        a5, a5
                  c.and        s1, a4
                  srai         s0, s5, 29
                  c.or         s0, a3
                  c.mv         gp, t0
                  auipc        s7, 960209
                  xori         a1, s5, -711
                  mul          a5, a5, a3
                  divu         s4, s6, a3
                  nop
                  c.slli       s3, 9
                  add          s8, sp, s2
                  c.nop
                  mul          ra, a3, s1
                  c.mv         a2, t3
                  sra          s3, a5, s8
                  or           s1, t4, s4
                  div          a5, t3, t5
                  c.li         t3, 18
                  slli         s1, t3, 0
                  c.nop
                  and          a7, t0, a3
                  ori          s9, t0, 1785
                  c.mv         s10, t4
                  mulhu        t3, s0, ra
                  slt          s6, s1, s4
                  mulhsu       a0, s5, s6
                  divu         s2, s4, s4
                  lui          s7, 593896
                  sub          a0, s5, gp
                  mul          s10, s9, a0
                  nop
                  remu         s3, s10, t3
                  c.lui        s10, 14
                  mulhu        t3, a5, sp
                  c.addi       s7, -1
                  sub          s7, s5, s7
                  sra          t0, t5, s11
                  sub          t4, gp, a1
                  mul          ra, gp, sp
                  c.xor        a5, a5
                  c.and        a5, s1
                  addi         t3, a4, 1077
                  c.li         s10, -1
                  or           t5, t5, s11
                  c.addi       a3, -1
                  c.add        s6, t1
                  sll          t0, s0, t0
                  sll          t6, t4, t6
                  c.or         a2, a2
                  div          a0, t0, t5
                  c.and        s0, a2
                  c.and        a2, a3
                  slti         s5, a0, -1396
                  c.or         s1, a3
                  srli         s1, s11, 25
                  mulhsu       s5, ra, ra
                  sltu         s9, s11, s1
                  srai         t0, s7, 22
                  sltiu        t3, a5, 1702
                  nop
                  c.addi       t5, -1
                  sll          ra, a0, t0
                  c.xor        a5, s1
                  c.add        t4, t5
                  mul          s8, a2, a1
                  srli         t6, s6, 21
                  remu         a0, s2, t2
                  c.sub        a5, a5
                  c.sub        a2, a1
                  and          a6, s2, t4
                  c.lui        a7, 6
                  sltu         s0, t0, s10
                  divu         s1, s3, ra
                  mul          s9, gp, s1
                  c.or         a5, a4
                  c.lui        t5, 6
                  c.nop
                  c.xor        a0, a0
                  c.mv         s5, s1
                  slt          t5, a2, a0
                  c.srli       a3, 8
                  slt          s10, s6, tp
                  add          s0, a7, t3
                  sltiu        a0, a0, -1008
                  sltu         t4, t2, t5
                  sltiu        tp, s2, -630
                  c.slli       s3, 23
                  c.andi       a1, -1
                  slti         s10, zero, 402
                  c.xor        s0, a3
                  div          t3, a6, a0
                  c.li         a6, 7
                  c.andi       a5, 4
                  srl          a6, t5, s1
                  div          s5, a2, t3
                  c.lui        t5, 17
                  and          a7, t2, s6
                  srli         a0, s1, 21
                  c.or         s0, a5
                  sltiu        gp, a5, -921
                  c.lui        s6, 12
                  ori          s10, t4, -1164
                  addi         s10, ra, 108
                  sll          gp, a2, a5
                  c.srai       a3, 11
                  c.xor        a1, s0
                  and          s5, t0, a2
                  div          s5, s3, t2
                  c.add        t3, s9
                  mulhu        s1, a0, a5
                  c.and        s1, a0
                  mul          t0, t3, s9
                  c.andi       s1, 24
                  srli         gp, t3, 27
                  divu         a0, s6, ra
                  mulhsu       s4, s5, tp
                  rem          s1, t3, s5
                  div          s9, a1, a1
                  xor          s1, t0, t3
                  c.lui        s2, 1
                  mul          s1, t3, a6
                  auipc        s8, 366297
                  mulh         t0, t4, t1
                  c.srli       a3, 14
                  mulh         a3, s9, tp
                  c.add        a3, s0
                  c.xor        a2, a4
                  c.srai       a0, 4
                  mulhsu       s6, t4, s10
                  srl          s6, s9, s5
                  srl          tp, s1, t1
                  mulhsu       s10, a2, ra
                  andi         s1, t0, 546
                  slti         s8, gp, 413
                  slti         a7, a0, 319
                  sub          zero, t0, t3
                  sltiu        tp, gp, -223
                  c.andi       s1, 24
                  slli         t4, a7, 19
                  divu         t1, t6, t2
                  divu         s3, s6, t5
                  divu         a0, s2, tp
                  c.sub        a0, s0
                  c.mv         a5, s3
                  slt          s0, s1, s0
                  mul          a6, tp, t4
                  srli         s4, s5, 27
                  c.nop
                  srai         s1, a4, 13
                  xori         s6, s6, -1245
                  and          t5, a3, t5
                  c.andi       a1, -1
                  addi         zero, s4, -19
                  xor          s7, s7, a0
                  c.srli       s0, 25
                  c.and        a5, a2
                  andi         ra, a0, -1070
                  divu         ra, a2, t2
                  mul          s1, a6, gp
                  c.addi       s6, -1
                  nop
                  xori         s8, a7, 1527
                  rem          s5, tp, zero
                  c.andi       a2, 24
                  srai         a3, s7, 13
                  ori          a6, s1, -288
                  srl          a6, t6, t0
                  andi         s8, zero, -2041
                  srli         a1, a2, 9
                  sltu         s9, s2, tp
                  srli         s4, s6, 21
                  c.add        a5, s4
                  andi         s6, tp, 1609
                  slt          s2, s8, t0
                  sll          s6, s4, s7
                  c.li         t1, -1
                  c.addi       gp, 3
                  divu         s0, a0, s6
                  c.xor        a5, a0
                  div          t6, s3, ra
                  andi         t0, a2, -953
                  mulhsu       s5, s11, s6
                  c.andi       s1, 13
                  mul          t3, a1, s7
                  andi         s9, a1, -1639
                  andi         s1, s2, -786
                  rem          a6, a6, t6
                  c.mv         t6, a7
                  c.add        s0, s7
                  mul          a2, s10, a7
                  c.mv         t5, s2
                  c.or         a1, s0
                  slt          t2, t0, s5
                  sll          s3, t3, a7
                  div          s0, a4, ra
                  c.and        a3, a2
                  c.srai       a3, 13
                  sra          a2, s4, a6
                  sll          s7, s10, gp
                  remu         s8, t0, s1
                  sltiu        s3, a3, 1598
                  mulhsu       s6, sp, s2
                  c.sub        s0, a1
                  ori          t1, a4, -948
                  ori          t1, t2, -496
                  sltu         a2, s6, a3
                  c.sub        a3, a2
                  add          ra, a1, t4
                  mulhu        t1, a6, s1
                  sra          t5, t0, t3
                  remu         s8, a3, s11
                  c.andi       s0, -1
                  and          s6, a6, t5
                  nop
                  c.srli       a0, 5
                  c.srai       s0, 25
                  mulhu        zero, a1, sp
                  sltu         t1, t1, t0
                  or           zero, s4, s0
                  xori         t2, a6, -1246
                  c.xor        a0, s0
                  c.slli       s2, 25
                  andi         s4, gp, -1943
                  or           zero, s3, s6
                  lui          a3, 403904
                  slt          s5, a1, a7
                  c.and        a2, a0
                  c.or         a1, a0
                  ori          s7, sp, 1770
                  or           t1, ra, a2
                  addi         s4, s10, 93
                  c.slli       a3, 1
                  mulhu        a1, s2, s7
                  c.addi       t3, 6
                  c.li         a0, 11
                  or           t4, s1, s11
                  mulh         t1, ra, t0
                  c.add        t3, t4
                  c.srai       a5, 18
                  c.nop
                  c.li         a0, 14
                  ori          t5, a0, -1900
                  mul          tp, a2, s5
                  c.or         s1, s0
                  c.or         a1, a1
                  xor          s6, a1, s5
                  slti         tp, a2, -1776
                  slli         t6, sp, 15
                  add          s9, s4, s0
                  mulh         s2, t5, a1
                  add          t5, s4, s2
                  add          s3, s5, a1
                  ori          s9, a2, 1403
                  srai         s5, a3, 9
                  c.lui        t0, 5
                  xori         s8, s8, -1290
                  sll          s2, s10, a3
                  c.srai       a5, 29
                  ori          t4, s4, 101
                  slt          t4, s3, a6
                  xori         zero, s9, -867
                  c.sub        s1, a1
                  c.srai       s0, 30
                  auipc        a1, 526
                  and          a6, zero, t4
                  c.and        a0, a4
                  c.or         s0, s0
                  div          t2, s9, a1
                  c.addi       t2, -1
                  c.nop
                  sltu         zero, s1, t1
                  srli         t1, s3, 27
                  xori         t6, a7, -1196
                  c.srai       s0, 8
                  mulhsu       s0, s9, a2
                  mulh         ra, gp, a6
                  mulhsu       s0, s1, s8
                  and          a1, a4, s7
                  c.xor        a0, s1
                  divu         a6, gp, t4
                  srli         zero, t2, 13
                  and          a3, s8, a0
                  c.lui        a7, 10
                  c.srai       s1, 26
                  slti         s1, t3, 1144
                  andi         t5, s9, 1454
                  sra          a6, t5, s5
                  slli         a6, t2, 1
                  add          s3, a5, t5
                  mulhsu       t5, t5, a2
                  slti         s7, a7, -349
                  c.addi       s2, -1
                  remu         zero, a3, zero
                  c.sub        s1, a3
                  sra          t2, a7, t5
                  c.andi       a3, -1
                  lui          a6, 570641
                  c.or         a2, a2
                  add          t2, s11, t2
                  nop
                  nop
                  nop
                  c.slli       t6, 9
                  remu         a5, a7, ra
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a0, 0xffffffff
                  li           t5, 0x0
                  li           s0, 0xffffffff
                  li           s1, 0x23658aeb
                  li           ra, 0xffffffff
                  li           gp, 0x80000000
                  li           a1, 0xbc45c5c4
                  li           tp, 0x0
                  li           a7, 0x0
                  addi         t5, s0, -1371
                  divu         tp, t5, a0
                  remu         ra, ra, s1
                  mul          gp, gp, s1
                  lui          a0, 935601
                  mulhsu       gp, s0, t5
                  lui          a0, 806411
                  addi         tp, tp, -1772
                  sub          gp, a7, tp
                  mulhsu       t5, a0, tp
                  addi         a7, ra, 376
                  add          a2, a2, a7
                  mulhu        a2, a1, s0
                  divu         a1, a7, gp
                  mulhu        s1, ra, ra
                  mulhsu       t5, a0, t5 #end riscv_int_numeric_corner_stream_3
                  sltiu        t5, t1, -1737
                  c.lui        s9, 8
                  slt          t6, sp, zero
                  slt          t1, a5, a7
                  slli         a3, s1, 20
                  xori         t1, gp, 1639
                  srl          t5, s8, s2
                  mulhu        a1, a6, t3
                  c.add        a6, s9
                  srl          a1, s10, ra
                  rem          a0, t6, a4
                  auipc        t4, 759757
                  remu         t0, sp, s2
                  c.srli       s1, 19
                  mulhu        s0, a1, s10
                  addi         a2, s3, -92
                  c.slli       t3, 25
                  xori         s1, a0, -497
                  ori          s6, t0, -397
                  c.srai       a2, 5
                  xor          s4, a4, a0
                  c.addi       s1, -1
                  and          s2, s3, a1
                  divu         s4, a2, tp
                  or           s9, s8, a5
                  ori          s3, s0, 112
                  c.li         ra, 22
                  c.mv         a0, s7
                  srai         s0, t1, 26
                  srli         t0, t3, 10
                  slt          t1, a0, a7
                  c.addi       s10, -1
                  mul          t6, s9, zero
                  slti         a2, s5, -1473
                  sll          t6, t5, s8
                  c.and        a0, a1
                  c.add        t5, a7
                  c.add        a3, s10
                  c.or         a0, a0
                  srai         s5, t6, 22
                  c.srai       a1, 15
                  c.nop
                  srli         a0, s8, 16
                  c.or         a3, a4
                  mulh         a7, t0, t6
                  slt          t6, a6, ra
                  auipc        s9, 941588
                  c.and        a3, a2
                  xor          s1, s9, a5
                  xor          tp, s10, a2
                  srai         s10, a1, 12
                  lui          t4, 297559
                  c.li         tp, 31
                  sub          a3, s11, t5
                  nop
                  c.slli       ra, 14
                  srli         a5, t2, 17
                  ori          a3, a6, 764
                  c.addi       a6, 3
                  divu         t1, t1, zero
                  c.srli       a0, 7
                  srli         s1, t3, 9
                  srli         tp, s2, 30
                  add          s8, t0, tp
                  c.add        s7, s6
                  ori          s6, s5, -16
                  or           t2, tp, t3
                  slt          t0, s11, a5
                  sub          t2, s4, t5
                  c.andi       a3, -1
                  srl          a1, a6, s5
                  slli         t3, gp, 7
                  slli         s2, s3, 29
                  c.xor        s1, a1
                  c.add        t6, a1
                  sra          a7, t0, s1
                  srli         s9, a0, 30
                  divu         t3, s8, t4
                  xori         s9, s4, -1595
                  c.add        a1, s4
                  or           s6, a6, s1
                  auipc        a7, 634394
                  remu         s2, s8, t1
                  srl          a0, s11, t0
                  srli         a1, t1, 29
                  c.and        a5, a1
                  c.li         a5, -1
                  or           a1, s11, s0
                  c.addi       s3, 25
                  c.mv         s7, a7
                  c.srli       a0, 2
                  c.lui        a6, 26
                  xori         t1, t0, 1781
                  sll          a6, s3, s4
                  c.nop
                  sub          t3, t3, a6
                  slti         t5, a2, 1391
                  divu         a1, s6, s3
                  slti         tp, s4, 1280
                  c.add        s10, ra
                  c.or         s0, s1
                  add          gp, a3, a5
                  c.sub        a0, a0
                  c.sub        s1, a3
                  c.mv         s4, sp
                  mul          a3, s5, s8
                  div          zero, s3, a7
                  or           s7, t1, a0
                  sll          a7, s8, s10
                  c.xor        a1, s1
                  c.srai       a2, 9
                  c.mv         s8, ra
                  c.sub        a3, a3
                  mul          s2, a0, a0
                  sra          t5, gp, t5
                  srai         t0, a6, 8
                  mul          s10, s10, s5
                  c.andi       a2, -1
                  auipc        s8, 849899
                  add          ra, a3, s11
                  slti         t0, t3, -1323
                  mulhsu       s5, a2, a5
                  c.andi       s0, -1
                  srai         s9, t4, 25
                  srl          a7, a7, a2
                  c.sub        a1, a0
                  c.addi       s8, -1
                  slli         t3, a3, 31
                  sll          a7, t1, sp
                  rem          t6, s3, a4
                  c.or         a1, s0
                  mulhu        s3, s7, s1
                  sra          s9, a1, a5
                  sll          ra, s2, s9
                  c.lui        a0, 8
                  c.mv         s9, t2
                  mul          s10, a0, t2
                  srai         s1, zero, 21
                  nop
                  sub          t1, a3, t4
                  sra          tp, s11, t3
                  and          s9, a1, s10
                  mulh         a6, t2, s8
                  c.lui        a0, 22
                  div          a6, t5, sp
                  sll          a7, s1, s3
                  mul          s0, s8, s7
                  c.addi       t5, 15
                  mul          s9, t0, t0
                  andi         a1, s9, 1958
                  c.li         s0, 11
                  rem          a3, t4, s6
                  sll          s3, s2, t6
                  c.srli       a5, 6
                  remu         s5, s6, a1
                  c.xor        s0, a1
                  sltiu        s2, a7, -787
                  c.or         a2, s0
                  c.mv         a7, s8
                  sltiu        s4, s1, 1277
                  sltu         s2, t6, a2
                  c.srli       a0, 6
                  c.nop
                  nop
                  c.sub        s1, a2
                  c.xor        a2, a4
                  c.addi       s9, -1
                  auipc        s7, 331874
                  c.slli       t6, 14
                  c.mv         a1, s2
                  mulhu        gp, gp, tp
                  c.lui        t2, 17
                  sub          s2, ra, t0
                  slt          a1, s4, sp
                  sltu         s2, s10, s5
                  ori          t0, t3, -732
                  c.andi       a5, 9
                  c.and        s0, s0
                  nop
                  mulhsu       a3, s8, s8
                  xor          s5, t2, s3
                  c.xor        a5, s1
                  addi         s4, s11, -1359
                  srl          s1, s8, s11
                  slli         t6, s2, 30
                  slt          s1, t1, s1
                  or           s10, s6, a2
                  sll          s5, s1, a1
                  add          zero, t1, t5
                  c.lui        s4, 18
                  mulh         a0, t0, s6
                  c.li         t5, 26
                  nop
                  ori          a0, t1, 705
                  add          t0, ra, s8
                  srli         gp, s11, 3
                  andi         s2, s7, 1449
                  sltu         t2, t4, s8
                  slti         t1, t2, 113
                  mul          s3, t6, t4
                  c.andi       a5, 13
                  mulh         zero, s10, a3
                  srl          gp, s2, t5
                  slti         t3, a6, 444
                  sltiu        s10, a4, -944
                  c.and        a2, s1
                  remu         t1, ra, sp
                  srai         a6, a5, 31
                  slt          s9, gp, s3
                  c.and        a2, a3
                  c.lui        s10, 17
                  and          a6, t0, t4
                  c.or         s0, s1
                  sltu         t2, zero, s4
                  sub          t4, a6, tp
                  slti         t0, t4, -1109
                  addi         s4, t4, -721
                  c.li         t3, 27
                  c.sub        a3, s0
                  slt          s1, t6, t3
                  slti         gp, s0, 697
                  c.sub        a0, a0
                  slt          s3, t0, t3
                  c.lui        s10, 5
                  c.add        t2, s2
                  lui          s5, 594612
                  slt          t1, s2, a2
                  divu         s9, a5, s2
                  c.slli       ra, 17
                  sltu         t2, a2, a2
                  c.add        ra, s1
                  ori          a3, sp, -1591
                  remu         t3, a6, a0
                  c.addi       t5, -1
                  srl          s4, gp, a2
                  c.mv         a6, a7
                  c.li         gp, -1
                  mul          a7, a3, s9
                  mulhsu       s4, t3, s8
                  sltiu        t6, s0, 112
                  sltu         s8, t5, a1
                  mulhsu       s9, t5, s3
                  c.addi       s7, -1
                  div          tp, a5, t1
                  mulhsu       s10, s3, a0
                  sub          s2, a0, a2
                  xor          t1, s7, t1
                  lui          s1, 902841
                  mul          s1, zero, a2
                  div          t6, t2, a1
                  c.sub        a1, s0
                  slt          s8, a1, s9
                  add          t5, s7, zero
                  sra          s0, s2, a1
                  or           t0, s0, a4
                  xori         s2, t4, -1729
                  c.sub        a0, a2
                  auipc        s5, 900912
                  srai         a0, a3, 26
                  srai         a6, s11, 5
                  or           s3, s8, a2
                  c.lui        s2, 14
                  mulhu        s0, s9, t1
                  c.srli       a5, 1
                  c.addi       a6, -1
                  c.add        a3, t5
                  divu         a1, s11, t4
                  c.li         t0, 30
                  and          s2, t3, s1
                  c.slli       t3, 9
                  c.and        s0, a3
                  auipc        s8, 43225
                  mulh         a1, s10, t1
                  sll          s2, s9, s8
                  sltiu        a3, t3, 482
                  c.lui        a1, 8
                  c.srai       a0, 18
                  mul          tp, a7, a5
                  xor          t6, s0, s3
                  c.slli       t3, 31
                  rem          a7, s5, t3
                  mul          a7, ra, sp
                  mulhu        t0, s1, s10
                  sll          s10, zero, gp
                  sra          a7, s0, ra
                  rem          s3, t5, a6
                  c.xor        s0, a1
                  c.or         a1, a5
                  rem          s2, t2, a5
                  slt          ra, t3, t0
                  c.and        a2, a0
                  sll          a5, a0, t1
                  c.addi       a5, -1
                  c.lui        t3, 18
                  xor          a1, s2, s7
                  ori          t6, t5, -269
                  c.lui        s0, 7
                  sltiu        a1, s2, 288
                  remu         a5, a0, t5
                  c.add        a1, a6
                  mul          a1, s5, s4
                  c.srli       a5, 15
                  nop
                  sra          s8, s4, sp
                  mulhsu       gp, a7, s11
                  sltu         s3, a3, s1
                  slt          t2, sp, ra
                  div          t3, tp, t2
                  ori          t6, t2, 850
                  c.li         s4, -1
                  sltu         s9, ra, a5
                  sra          a2, a1, t4
                  andi         t5, s2, 591
                  div          a6, a1, s7
                  sll          s4, a6, t3
                  c.xor        s0, s0
                  rem          s2, s0, s8
                  mulhu        a1, tp, t2
                  lui          s0, 614960
                  sra          s4, s3, t0
                  c.mv         t3, a0
                  mulh         s0, t0, a1
                  ori          gp, s5, 1966
                  xori         t4, t0, 483
                  sltiu        a0, t4, 1703
                  mulh         t1, s5, s2
                  c.addi       s3, -1
                  c.mv         tp, a6
                  rem          a2, t0, s5
                  ori          s7, s2, -1081
                  c.nop
                  srai         t0, sp, 14
                  srli         s1, a5, 1
                  sll          gp, s5, a7
                  srl          a2, t0, s1
                  srli         a0, a7, 9
                  sra          s4, a7, s11
                  auipc        s4, 957885
                  mul          gp, t4, s2
                  sll          s1, tp, gp
                  c.srli       a5, 13
                  sub          a3, ra, t6
                  sll          t1, t4, s2
                  auipc        t6, 808661
                  ori          s6, s1, -1129
                  slt          a1, a7, s3
                  div          t2, a5, s1
                  div          s4, a5, s6
                  c.or         s0, a1
                  c.or         a2, a0
                  divu         t1, t5, t4
                  addi         s5, t5, 287
                  lui          a5, 1039704
                  sub          a5, s2, ra
                  c.xor        s0, a3
                  c.addi       t0, 17
                  remu         t2, t5, s4
                  or           s5, t2, a1
                  sltiu        t1, a1, -1695
                  c.xor        a1, a2
                  c.mv         tp, s3
                  mulhsu       a5, s9, zero
                  slli         a1, a7, 23
                  andi         t6, s11, -674
                  divu         a5, s5, s11
                  slti         a6, s7, 1808
                  mulhsu       ra, a5, a3
                  remu         s7, t5, s2
                  and          a6, ra, gp
                  c.xor        s1, s1
                  lui          a1, 647396
                  c.add        t0, t3
                  add          a3, a7, s9
                  srli         t1, a2, 26
                  c.li         a1, 7
                  sltu         t2, a2, s0
                  c.lui        t5, 29
                  or           a0, t2, s7
                  slti         a5, t4, 1819
                  c.add        s7, s2
                  srli         s5, t4, 7
                  add          s10, s7, s10
                  lui          s3, 800880
                  sra          a3, t0, s9
                  c.slli       a2, 5
                  srli         s6, zero, 2
                  c.addi       a7, -1
                  c.nop
                  slti         s9, t6, -76
                  c.li         s9, 27
                  c.nop
                  c.add        t4, t5
                  c.lui        a5, 19
                  mul          s8, t3, zero
                  ori          s9, s7, 418
                  slti         t2, a2, -160
                  mulhu        s6, s4, sp
                  c.slli       s2, 30
                  rem          zero, sp, t5
                  div          s3, t3, s1
                  div          ra, gp, s9
                  c.lui        t5, 29
                  srl          t0, s5, a1
                  srai         a2, t4, 20
                  c.and        a5, a2
                  addi         s9, t1, -336
                  nop
                  c.add        t4, sp
                  sra          t4, t3, s1
                  and          a2, s4, a5
                  c.or         s1, a0
                  xori         a5, zero, 1169
                  srli         t2, tp, 16
                  nop
                  c.slli       s3, 12
                  c.addi       a7, 16
                  c.addi       s9, -1
                  c.srai       a5, 20
                  nop
                  andi         s3, s1, -1276
                  c.li         s9, -1
                  or           s7, a1, t1
                  sub          a6, t4, t3
                  add          t6, a4, a0
                  sll          t4, a0, s1
                  rem          s8, a2, s10
                  addi         ra, t6, -693
                  mulhu        s4, a6, a4
                  div          s4, zero, t3
                  c.srai       s1, 6
                  c.lui        s9, 21
                  rem          t4, a7, t1
                  slli         gp, s11, 11
                  xor          a7, s8, t1
                  c.add        s0, ra
                  c.li         gp, 1
                  lui          s5, 872726
                  c.addi       s1, 19
                  add          s1, s10, s0
                  divu         a2, t5, t1
                  ori          a0, a4, 1885
                  mulhsu       s1, a7, t6
                  c.lui        s4, 22
                  slli         s4, a4, 27
                  slti         zero, a3, 1577
                  ori          a2, s4, -147
                  sll          s7, a3, s6
                  mulhu        a7, zero, a1
                  c.slli       a3, 11
                  c.lui        t1, 28
                  c.srli       s1, 11
                  c.srai       s1, 18
                  c.xor        a2, a3
                  addi         s3, t2, -1453
                  c.sub        s0, a3
                  and          a2, a3, s2
                  sra          a1, zero, s11
                  mul          t5, sp, s6
                  c.andi       a2, 13
                  mulhsu       s1, s9, a6
                  c.nop
                  sltu         t0, t0, t6
                  andi         t4, s1, -762
                  c.andi       a3, 23
                  nop
                  slt          a2, a2, s9
                  c.lui        ra, 11
                  rem          s0, s5, sp
                  sll          s5, a0, s4
                  c.mv         a5, a2
                  c.li         s2, 21
                  xor          s2, ra, s5
                  srl          s3, a3, sp
                  c.sub        a5, a3
                  xor          a6, s1, s8
                  c.andi       a3, -1
                  c.slli       s1, 29
                  add          t3, a5, s9
                  sub          s4, s6, s3
                  c.add        t0, t5
                  auipc        s3, 669668
                  c.li         s3, -1
                  srai         s5, a7, 17
                  mulhsu       s2, tp, s4
                  srli         s1, a6, 26
                  c.or         a0, s1
                  slti         s1, a2, -122
                  mulh         t0, a5, a0
                  auipc        s2, 893119
                  div          tp, s8, t0
                  slti         a3, a3, 771
                  c.mv         a0, t3
                  xori         a0, t4, 1959
                  c.lui        a6, 31
                  ori          t0, s6, 1441
                  or           s10, s7, ra
                  xor          gp, tp, s0
                  c.lui        t4, 25
                  c.add        a1, t5
                  ori          gp, s1, 805
                  srli         t6, t1, 9
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_22
                  li           s8, 0x0
                  li           a3, 0x0
                  li           a0, 0x62dfe8f0
                  li           s1, 0x0
                  li           t1, 0xbf781307
                  li           t5, 0x80000000
                  li           s3, 0x80000000
                  li           s2, 0xeee3bdc2
                  li           s5, 0x80000000
                  sub          s3, a3, s5
                  add          t4, t1, a0
                  nop
                  divu         a0, a0, s2
                  divu         s1, s8, s3
                  mul          s8, s1, t5
                  auipc        t1, 22521
                  lui          s8, 1022426
                  addi         s3, s8, 453
                  rem          s3, s5, s5
                  mul          s5, s5, t1
                  auipc        s2, 948476
                  lui          s5, 716215
                  remu         s1, s3, s5
                  div          s5, s5, a0
                  mul          a0, t5, t4
                  div          t1, s3, t5
                  nop
                  nop
                  divu         t1, a0, t4
                  rem          t1, s8, t4
                  mulh         a0, s3, t4 #end riscv_int_numeric_corner_stream_22
                  sra          t5, t0, s6
                  c.addi       s0, -1
                  c.nop
                  c.nop
                  nop
                  add          s6, a7, s4
                  c.add        ra, t2
                  mul          a6, a7, a5
                  c.slli       tp, 21
                  rem          t2, s8, zero
                  rem          t4, ra, a3
                  srai         s7, s10, 2
                  remu         t2, sp, gp
                  slti         s2, s1, 464
                  c.add        a0, s9
                  c.or         a5, s1
                  and          s10, s3, t6
                  rem          t6, s4, t0
                  mulhu        s5, a4, t6
                  c.li         a3, 15
                  add          gp, t2, s11
                  c.add        s2, s4
                  c.nop
                  remu         zero, a7, s9
                  c.addi       tp, -1
                  addi         s3, s7, 1826
                  mul          ra, s10, a3
                  c.lui        t5, 26
                  srl          s0, a3, t2
                  c.srai       a1, 13
                  xor          t1, a3, t3
                  c.xor        s1, a0
                  and          s9, t0, s6
                  slli         a2, s10, 27
                  c.mv         a0, s6
                  andi         a3, a2, -1819
                  c.andi       a3, 30
                  c.addi       s10, 25
                  auipc        t4, 7597
                  srai         a5, a6, 8
                  slt          s0, s5, gp
                  add          s8, s3, a3
                  slli         s10, sp, 1
                  sra          s9, s7, s1
                  srl          t4, a3, s11
                  c.xor        a2, a0
                  andi         t5, gp, 55
                  addi         s0, sp, -1603
                  mul          a0, s10, s0
                  c.srai       a2, 17
                  ori          s2, s10, 692
                  c.mv         t4, s3
                  andi         a3, s5, -1716
                  mulh         tp, sp, t1
                  c.andi       a3, -1
                  sll          t0, t5, t4
                  slti         t3, s6, 1257
                  mulh         t1, ra, zero
                  slti         a5, a4, -367
                  ori          gp, t0, -515
                  c.lui        t6, 12
                  c.mv         s2, s3
                  mulhsu       a1, s3, a5
                  c.addi       t6, -1
                  c.srai       a3, 21
                  sltiu        s10, a0, 1756
                  sll          t1, t5, t5
                  srl          s0, zero, zero
                  c.slli       s9, 31
                  slt          t5, a0, t0
                  c.srai       a1, 30
                  mulh         a2, a3, s11
                  sll          t2, sp, sp
                  xori         a5, tp, 1953
                  sltu         t0, s9, a3
                  c.and        a5, a2
                  div          t5, s6, a4
                  c.or         a5, s1
                  c.nop
                  sltiu        a6, s6, -632
                  addi         a7, t0, -805
                  auipc        s2, 245976
                  c.addi       t5, -1
                  c.mv         s4, s3
                  srli         s4, tp, 2
                  ori          a0, a2, -137
                  c.srli       a3, 27
                  nop
                  c.srli       s1, 18
                  c.andi       a3, -1
                  c.nop
                  remu         a5, gp, s5
                  c.srai       a0, 14
                  srli         gp, a6, 10
                  c.sub        s1, s0
                  and          t1, a1, a3
                  c.andi       s1, -1
                  c.srli       a2, 14
                  c.srai       a0, 9
                  ori          a5, zero, 1793
                  c.and        s0, a0
                  mulh         zero, a6, s8
                  mulhu        a6, s7, ra
                  c.nop
                  c.addi       s4, 5
                  remu         s0, zero, t4
                  rem          t6, a6, zero
                  sll          a3, s11, s7
                  auipc        s8, 809516
                  c.slli       s6, 20
                  c.lui        s7, 14
                  c.mv         t2, t6
                  c.slli       s9, 31
                  c.xor        a5, s1
                  sub          s6, t3, s4
                  c.add        a3, s5
                  mulh         a0, tp, zero
                  c.slli       s10, 19
                  c.mv         s10, a3
                  ori          s0, s2, 1855
                  c.lui        s7, 12
                  addi         s6, s11, 150
                  c.and        a2, s0
                  ori          tp, a2, 77
                  or           t5, s2, s8
                  c.mv         gp, a6
                  add          zero, gp, s2
                  c.sub        a5, s1
                  and          a6, a7, s6
                  c.and        s0, a5
                  sltu         a6, t6, a4
                  nop
                  andi         t6, s0, 246
                  nop
                  xor          s6, s7, gp
                  c.li         s0, -1
                  ori          a5, s0, 1364
                  andi         s2, a1, 961
                  c.addi       t2, -1
                  div          t5, ra, tp
                  slt          s3, s11, a6
                  sub          tp, zero, s0
                  c.nop
                  c.and        a5, a5
                  srai         ra, sp, 9
                  andi         zero, ra, 383
                  slt          s7, a5, a0
                  mulhu        a1, s3, s1
                  or           t6, s3, s4
                  c.srli       a3, 1
                  c.li         s7, -1
                  xor          s10, s8, a6
                  addi         s9, a1, 1971
                  c.addi       t0, 31
                  slti         a2, ra, 310
                  div          s9, s8, t3
                  ori          a6, t5, 1334
                  xor          t6, t0, s0
                  mul          a0, s0, t4
                  c.addi       a2, 23
                  lui          a3, 779443
                  c.srai       s1, 27
                  mulhsu       a0, a1, ra
                  c.sub        a3, a2
                  div          s10, s8, s5
                  c.and        a1, a2
                  sub          ra, t5, a3
                  ori          s8, a5, -1238
                  srli         t1, s6, 27
                  sll          a6, s7, a4
                  slti         a0, s8, -25
                  sll          gp, sp, a7
                  slti         s8, s0, 960
                  sub          gp, s10, s6
                  c.xor        a1, s0
                  ori          t0, t1, -1803
                  slli         t0, a4, 19
                  c.lui        tp, 23
                  c.srli       a0, 19
                  div          s10, a7, a5
                  c.andi       a0, 31
                  c.srai       s1, 8
                  c.and        s0, a0
                  divu         gp, s6, t0
                  c.or         s0, s1
                  divu         tp, a0, a4
                  c.xor        a2, a5
                  ori          a5, t4, 1362
                  ori          a5, s4, 1182
                  c.addi       t1, 15
                  c.and        a2, s0
                  srl          zero, a5, t3
                  slti         tp, a3, -101
                  sll          s10, tp, t3
                  sltiu        t6, s3, 1356
                  c.li         a5, 2
                  c.srai       a5, 20
                  xor          s7, t5, s6
                  xori         s0, t5, -729
                  c.srai       a2, 24
                  div          a5, a7, s6
                  add          zero, s10, t5
                  c.nop
                  sll          s3, tp, t4
                  c.mv         s3, a3
                  lui          s7, 916866
                  mulh         s2, s5, t2
                  addi         s9, tp, 1271
                  or           ra, a7, s0
                  nop
                  srli         zero, s7, 16
                  mul          a0, t3, a5
                  c.nop
                  mul          s2, s1, s0
                  mulhu        t5, s11, a2
                  sra          a2, t0, a6
                  slli         a3, s9, 0
                  c.li         a0, -1
                  sll          tp, s4, a4
                  lui          t4, 892943
                  add          s7, t4, s1
                  sltiu        s5, s8, -559
                  mulhsu       s3, a0, a7
                  c.li         s10, -1
                  c.addi       s0, 28
                  c.mv         s0, t5
                  c.andi       a2, 9
                  ori          s2, a4, 281
                  c.addi       s7, -1
                  addi         a3, sp, -1633
                  mulhsu       a5, ra, s8
                  sltu         gp, s1, a4
                  mulh         a0, s2, ra
                  c.xor        a5, a1
                  srl          t3, s10, t3
                  divu         s7, s9, s6
                  mulhsu       s1, t5, s4
                  c.or         a5, s1
                  mul          zero, tp, a5
                  c.sub        a1, a3
                  c.srli       a0, 13
                  mul          t5, s6, s2
                  sll          t4, t3, s7
                  divu         a5, s5, a4
                  c.and        a5, s0
                  nop
                  c.srli       s0, 23
                  mulhsu       a1, a1, s5
                  lui          s2, 1030641
                  divu         t6, a5, a5
                  lui          a2, 113685
                  mulh         t4, s4, tp
                  c.li         s3, 23
                  c.li         s7, 29
                  c.and        s0, a4
                  sll          a1, a0, s3
                  slli         s9, t0, 24
                  c.add        t0, s11
                  slti         a0, s0, -89
                  mulh         zero, s4, s1
                  mulh         a6, a3, sp
                  rem          t6, t1, gp
                  mulhu        s3, s6, a3
                  addi         a0, t5, 673
                  remu         t3, t3, t1
                  c.slli       s9, 9
                  mul          s0, s11, a4
                  mulhu        a0, a6, s8
                  slt          a1, a4, zero
                  ori          t0, a6, 212
                  c.nop
                  c.and        a2, s1
                  c.addi       a6, 1
                  c.xor        a5, a3
                  slli         s1, s2, 12
                  rem          a0, s11, s0
                  srl          a7, t6, t1
                  srai         s4, sp, 14
                  c.srli       a1, 2
                  c.mv         t6, gp
                  srai         s0, t1, 26
                  c.srai       a2, 4
                  lui          s9, 46893
                  c.addi       s8, -1
                  slti         t6, a1, 1685
                  c.xor        a2, a4
                  slli         s5, t1, 14
                  c.andi       a5, -1
                  rem          s1, a7, s2
                  c.sub        a3, s0
                  mul          s5, s4, a6
                  and          s8, sp, gp
                  c.andi       s1, 8
                  c.add        a1, s3
                  remu         s9, zero, t5
                  c.or         a3, a1
                  and          s10, a1, s0
                  srli         t1, t6, 15
                  sra          a7, s7, a0
                  xori         s3, s4, 140
                  lui          a1, 435752
                  c.addi       s1, 8
                  slli         t0, s1, 4
                  c.li         t5, -1
                  div          t1, zero, s2
                  or           s8, t0, s8
                  c.addi       s7, 10
                  remu         t5, t3, t5
                  c.add        a6, s0
                  c.nop
                  mulhu        t6, a2, s7
                  div          gp, s11, a3
                  auipc        t5, 986762
                  div          t1, sp, s1
                  slli         s5, a1, 27
                  sll          s6, s2, s11
                  c.add        a7, s0
                  sltiu        s6, zero, 806
                  auipc        a0, 936814
                  c.srli       s1, 28
                  lui          s10, 172201
                  c.or         a2, a2
                  c.mv         ra, t0
                  sra          t0, s1, zero
                  sll          a3, ra, a2
                  c.addi       s8, -1
                  mulhsu       a6, s1, t2
                  mulh         s9, ra, t5
                  c.mv         s10, s8
                  ori          s3, t1, -617
                  c.lui        s9, 26
                  c.add        s7, s1
                  c.mv         t5, s6
                  c.sub        a2, s0
                  mulhsu       s7, a2, s7
                  sll          gp, t1, a5
                  lui          s6, 731341
                  mulhu        a0, a7, a4
                  xori         s9, s8, -1285
                  auipc        t1, 965948
                  slti         a2, zero, 801
                  or           t6, s0, a4
                  add          s1, a4, s6
                  or           t5, s2, s6
                  nop
                  lui          a0, 845741
                  c.li         s8, -1
                  srai         t0, tp, 5
                  c.andi       a2, 26
                  c.andi       a3, 20
                  remu         s4, ra, ra
                  sra          t0, a0, a4
                  divu         s4, t1, s9
                  and          t3, s9, gp
                  slt          s7, sp, s11
                  srl          t0, sp, tp
                  xori         s2, a5, -1508
                  c.lui        s10, 8
                  c.sub        s0, a5
                  c.and        a2, a3
                  sltu         s7, s9, zero
                  auipc        s2, 361329
                  xor          t0, s8, t6
                  mul          s10, a3, gp
                  lui          a5, 551241
                  c.andi       a1, 10
                  slti         ra, t4, -1839
                  slli         s8, a3, 27
                  remu         s3, s6, a0
                  slli         ra, s5, 7
                  lui          zero, 201743
                  slti         a6, t2, -484
                  c.lui        t1, 6
                  c.addi       a5, -1
                  xori         t6, a0, 1056
                  mulhu        a0, sp, t6
                  c.slli       s3, 14
                  mulh         t6, t1, a5
                  c.nop
                  c.and        s0, a2
                  div          tp, s3, s5
                  c.addi       s10, 13
                  c.li         t1, -1
                  c.mv         t3, t1
                  c.or         s1, s0
                  andi         s0, t0, 1767
                  c.sub        a0, s0
                  mulhu        tp, tp, t2
                  slli         s2, t5, 0
                  sll          t2, a4, a1
                  slli         a6, a1, 27
                  c.li         s2, 12
                  or           gp, a0, a4
                  addi         a0, s9, -96
                  slli         s0, s3, 13
                  srl          s7, t1, t4
                  slli         a2, a5, 7
                  remu         gp, s7, t1
                  addi         t3, s0, -835
                  c.add        t6, s1
                  sll          a7, t4, tp
                  c.xor        a2, a4
                  slli         s9, s6, 9
                  mulh         a0, s6, s5
                  c.andi       s0, 19
                  sub          s5, tp, ra
                  or           a0, a0, a0
                  div          a1, s0, s0
                  auipc        a5, 97158
                  c.or         a0, a0
                  c.or         a5, a3
                  c.li         t0, 13
                  sra          t3, a4, t5
                  c.andi       s1, -1
                  slt          t1, a6, a3
                  mulh         tp, a0, s9
                  c.addi       s10, -1
                  c.mv         s5, sp
                  slti         s10, a6, 1679
                  lui          a3, 952171
                  sll          zero, a6, s9
                  slt          a1, s11, a3
                  c.andi       a3, -1
                  mul          t3, zero, t4
                  c.slli       t3, 7
                  c.addi       t6, 9
                  sltiu        a2, a3, -490
                  c.xor        a0, a5
                  div          t1, t3, t6
                  nop
                  remu         a2, t1, t4
                  divu         a6, a5, a0
                  c.srli       a2, 20
                  c.mv         ra, a4
                  sltiu        t2, t3, -1933
                  mulhu        s8, s10, s11
                  slti         a2, s4, -969
                  sltu         gp, s9, t3
                  sra          s4, s5, s2
                  c.or         s1, a3
                  remu         s0, s10, s5
                  sra          s8, gp, ra
                  sll          t6, s9, sp
                  c.xor        a2, s1
                  c.andi       a1, 8
                  c.sub        a2, a0
                  sll          ra, a3, s3
                  c.lui        ra, 7
                  or           s3, s4, a2
                  c.lui        t3, 10
                  rem          t5, t1, a3
                  slt          s10, a3, sp
                  c.sub        a1, a5
                  mulhsu       t5, s5, t5
                  c.or         a5, a1
                  mulhu        a0, s3, t1
                  c.xor        a1, a0
                  c.srli       a0, 10
                  xori         s5, a2, -1751
                  xori         t6, t6, 1846
                  sltiu        tp, s11, 1884
                  xori         s2, s11, 775
                  mulhu        a2, t4, s2
                  and          s5, gp, a6
                  c.add        s5, a2
                  lui          a7, 272460
                  c.addi       s1, -1
                  c.xor        s0, s1
                  c.xor        a2, a4
                  c.li         a0, 18
                  c.and        a5, s1
                  ori          gp, s10, -1207
                  c.lui        t3, 5
                  mulhsu       s10, t3, s4
                  add          s5, t5, s9
                  mulhsu       s1, a1, s3
                  c.lui        a1, 19
                  mulhsu       s7, t5, a0
                  ori          t4, a3, -399
                  c.addi       a3, -1
                  slli         tp, a3, 17
                  xor          t6, a0, t1
                  andi         gp, s1, 1646
                  c.mv         s7, a0
                  mulhsu       t2, a1, t5
                  c.add        s7, a2
                  slli         t5, s6, 1
                  div          a5, a0, t4
                  c.lui        t1, 22
                  addi         ra, s2, 1302
                  c.srli       s1, 31
                  rem          t6, a7, t2
                  mul          s10, a0, s7
                  c.add        t1, s1
                  divu         s8, t3, a5
                  slli         s5, t4, 6
                  c.or         s1, a2
                  c.srli       a3, 7
                  srl          t4, a6, t3
                  c.srai       s1, 20
                  srl          a1, t4, s11
                  xori         gp, s6, 2028
                  mulhsu       t1, s1, t4
                  c.lui        s1, 4
                  div          s4, ra, s3
                  c.slli       t5, 19
                  and          tp, a4, a2
                  remu         s7, s9, a6
                  divu         t0, a5, t3
                  srai         t0, zero, 25
                  sltu         t1, a6, s9
                  c.add        s6, t2
                  c.sub        a5, a1
                  sltu         s7, s3, a6
                  srai         s9, s4, 20
                  c.srai       a0, 2
                  sltiu        ra, a4, -923
                  slli         s2, s6, 14
                  sltiu        s3, tp, 1548
                  c.lui        a0, 29
                  slti         t6, s7, 1899
                  c.li         s2, 10
                  c.srai       a5, 6
                  srl          t1, zero, t1
                  auipc        s5, 52243
                  xori         s9, s5, 627
                  auipc        ra, 577109
                  sub          s3, t4, a0
                  div          a1, tp, s6
                  mulhsu       t4, a2, gp
                  xor          a7, a2, a6
                  rem          t3, s8, s11
                  c.andi       a5, 13
                  divu         a1, s7, ra
                  c.mv         a2, gp
                  div          s4, s1, t6
                  divu         s2, t6, s7
                  slli         s6, zero, 16
                  mul          s7, tp, ra
                  c.sub        s1, a2
                  c.mv         t1, s2
                  and          a6, a1, a0
                  lui          a7, 591930
                  c.slli       a7, 30
                  sll          s5, a2, s10
                  mul          t0, a5, s7
                  xor          s6, s9, t6
                  nop
                  sra          t4, s10, s10
                  nop
                  mulh         a3, t5, tp
                  sltiu        s10, a2, 680
                  c.sub        a5, s1
                  srl          s2, s0, s1
                  auipc        ra, 399148
                  slt          s5, a5, t0
                  xori         gp, t4, 411
                  c.mv         s9, t3
                  divu         ra, sp, t2
                  and          s8, a5, s7
                  c.sub        a0, a0
                  xori         s8, a0, 255
                  c.srai       a0, 16
                  c.srli       a0, 27
                  slli         a5, s2, 21
                  xori         a5, a1, 370
                  mulhsu       t3, a3, t5
                  div          s0, s2, gp
                  andi         s10, a0, 296
                  sll          s2, gp, ra
                  c.addi       ra, -1
                  slli         t6, s4, 18
                  sltiu        t3, a0, -1304
                  sub          t2, a6, a5
                  ori          s2, s1, -289
                  srl          t1, a0, s2
                  c.and        a0, a0
                  divu         t0, a5, s2
                  nop
                  c.li         ra, -1
                  c.and        s1, a2
                  c.xor        s0, s0
                  c.mv         t2, s5
                  andi         a6, t3, -1000
                  mul          s2, t0, s9
                  mulhsu       s8, t6, t5
                  c.xor        a0, a0
                  div          zero, a7, a6
                  add          s4, a0, t3
                  slti         a6, s8, 605
                  c.slli       tp, 11
                  sra          zero, t3, t0
                  c.srli       s0, 22
                  and          t1, t5, t2
                  and          ra, a3, s5
                  lui          a2, 42303
                  c.add        a6, a0
                  xori         t4, s0, -1980
                  sra          a3, t2, t3
                  c.srli       a3, 6
                  c.nop
                  sltiu        tp, a2, 1332
                  addi         a6, s0, 571
                  c.or         a1, a1
                  rem          s8, t0, s4
                  or           zero, gp, s3
                  rem          a5, s8, s9
                  and          a3, a3, s4
                  c.sub        a1, a2
                  slli         t1, s9, 31
                  sltiu        s10, t1, -1967
                  c.lui        a3, 10
                  slli         tp, t5, 18
                  add          gp, gp, a5
                  auipc        zero, 59791
                  mulhsu       a3, a7, s3
                  ori          s0, a3, 386
                  sltiu        t5, a7, -1351
                  c.or         a3, a1
                  c.addi       s2, 30
                  sll          t3, ra, s3
                  c.srai       a0, 5
                  andi         s7, a4, -247
                  remu         t2, s11, zero
                  c.and        a0, a1
                  c.slli       t0, 17
                  c.lui        t3, 30
                  c.nop
                  mul          t0, a0, s0
                  mul          s7, s3, s9
                  mulhu        a7, tp, s6
                  lui          a1, 172931
                  remu         a0, s6, t2
                  sltiu        a1, tp, -1266
                  c.srli       a0, 5
                  sll          s3, t1, a6
                  c.mv         t4, s10
                  add          t2, s10, s2
                  c.andi       a3, -1
                  c.andi       a2, -1
                  c.xor        a2, s1
                  c.addi       s6, -1
                  c.andi       s1, 13
                  srai         t1, s11, 14
                  xor          zero, a3, a4
                  div          t1, sp, a6
                  div          s7, s6, a6
                  rem          s8, ra, t5
                  c.or         a5, a0
                  rem          s9, s7, t2
                  mulhu        t4, gp, a5
                  xor          a6, s9, a4
                  srl          a3, a1, a6
                  srl          a5, tp, t1
                  srli         a7, s10, 14
                  xor          t5, s9, sp
                  xori         zero, s6, -1945
                  srai         a0, t3, 2
                  xor          s4, s3, a0
                  rem          a1, t5, a5
                  c.and        a1, a1
                  c.srli       a3, 6
                  slt          zero, a1, s8
                  xori         t2, gp, 1002
                  sra          ra, s1, t4
                  and          s7, sp, a0
                  c.slli       s7, 16
                  mul          t2, a7, t5
                  auipc        t6, 92719
                  c.slli       a0, 30
                  or           t2, s10, a1
                  xori         a7, s4, -29
                  nop
                  ori          a1, a1, 1571
                  mulh         t3, t0, s8
                  mul          zero, t6, s3
                  div          a6, t0, t6
                  c.sub        a0, a4
                  c.nop
                  ori          t1, t5, -556
                  c.lui        s10, 11
                  rem          s3, a0, s5
                  and          t3, s1, tp
                  div          a0, t6, s10
                  c.and        a3, s1
                  c.slli       a7, 16
                  c.add        s2, sp
                  sll          t4, a6, sp
                  lui          t0, 268111
                  addi         s0, s7, 1702
                  sltu         s7, zero, a2
                  srli         t4, a2, 5
                  c.addi       s7, 14
                  sub          a1, a5, t5
                  srl          t0, s5, s1
                  c.and        a3, s1
                  c.srli       a5, 2
                  c.srli       a3, 10
                  xor          t1, t5, ra
                  sub          t1, tp, zero
                  sltu         a5, a4, t6
                  c.li         s5, -1
                  div          a1, a3, s1
                  c.and        a3, a4
                  c.andi       a5, -1
                  mul          s9, t6, s0
                  sra          t3, t6, s7
                  c.slli       a0, 7
                  c.srai       a5, 1
                  c.srai       a2, 29
                  div          zero, t0, s8
                  xor          t6, t6, gp
                  lui          s7, 438689
                  div          t2, t2, a4
                  c.nop
                  mulhsu       a2, s11, a5
                  c.and        a0, s1
                  c.addi       s10, -1
                  mulhsu       tp, s6, t6
                  mul          a1, s4, s5
                  c.mv         a2, t1
                  srai         gp, t4, 23
                  xor          a5, a2, a0
                  srli         tp, s11, 13
                  mulhsu       t5, s11, s2
                  remu         t1, a2, a5
                  srl          s10, a2, a5
                  ori          zero, zero, -2037
                  srai         a2, a3, 27
                  nop
                  c.addi       a3, -1
                  mulhsu       ra, a6, a1
                  c.li         a5, 24
                  divu         a6, a7, t3
                  mulh         s8, a6, s4
                  sltu         s5, s9, a3
                  andi         s7, s3, -3
                  lui          t0, 106820
                  c.xor        a5, a2
                  xor          a2, tp, s2
                  sltu         t5, t0, s7
                  mul          t1, s6, s8
                  xor          s1, s10, a2
                  c.li         a3, 14
                  c.sub        a1, a1
                  c.sub        a1, a5
                  auipc        s8, 40795
                  mulh         a5, a3, t0
                  c.slli       s6, 19
                  sltu         t4, t5, s5
                  c.srli       s1, 30
                  slli         s3, t2, 29
                  sltiu        s10, a3, 371
                  c.srai       s0, 15
                  mulhsu       t0, t6, s7
                  c.srli       s0, 6
                  c.sub        s0, a2
                  sll          t2, ra, t1
                  nop
                  c.andi       a5, 30
                  add          t5, a0, a6
                  c.slli       tp, 7
                  andi         s10, s11, 370
                  c.xor        s0, a0
                  c.xor        a2, a5
                  c.andi       a2, -1
                  c.nop
                  rem          s1, t2, t2
                  remu         s2, a6, sp
                  sll          t3, s10, a0
                  sub          s7, s2, s11
                  slti         a0, a0, 939
                  rem          s0, a1, ra
                  c.and        a5, a4
                  c.and        s0, a0
                  srai         s10, a6, 7
                  sra          t1, gp, s2
                  slti         gp, t6, -856
                  sra          t5, a6, s11
                  c.and        s1, s1
                  c.mv         a6, ra
                  c.nop
                  c.sub        s1, a4
                  xori         a6, t0, 50
                  or           gp, t4, a7
                  xor          ra, a1, s4
                  sltiu        s6, zero, -1127
                  sll          a1, s8, t0
                  c.xor        s0, a2
                  remu         s9, a6, s0
                  srai         s3, s8, 18
                  c.mv         t1, t3
                  sra          s5, a7, a1
                  slti         s9, a2, -847
                  div          a1, s11, t5
                  xor          zero, s2, t4
                  c.addi       s7, 13
                  c.slli       s1, 1
                  c.and        a1, a0
                  c.and        s0, a3
                  nop
                  div          a7, s0, a5
                  remu         a0, a3, tp
                  mul          a2, s6, a1
                  div          a3, s11, a3
                  c.add        s3, s6
                  c.srli       s1, 10
                  lui          t3, 347117
                  mulh         s6, s4, a1
                  andi         ra, s1, 1277
                  c.slli       t5, 28
                  sub          a6, s4, t3
                  mulhu        s0, s5, zero
                  nop
                  mulhu        t1, s5, t3
                  rem          tp, a0, s0
                  xori         s3, s5, -1270
                  div          a1, a0, s10
                  mulhu        a1, a5, a7
                  add          t3, s9, s8
                  sub          s10, zero, s4
                  c.add        a3, s1
                  lui          zero, 459621
                  c.add        s2, s1
                  xor          t5, a4, t6
                  c.xor        a2, s0
                  slti         s3, s3, 330
                  c.xor        s0, s1
                  divu         s0, a1, s6
                  slli         t4, a0, 11
                  srai         t4, a0, 4
                  srai         a5, s11, 16
                  c.and        a5, s0
                  andi         s6, s5, -619
                  c.srli       a2, 15
                  rem          t6, s6, s11
                  mulhu        tp, gp, a5
                  slli         t3, sp, 12
                  sltiu        a0, a6, 676
                  slt          t4, a1, a2
                  div          t3, tp, tp
                  remu         s10, a6, s6
                  c.nop
                  div          zero, t4, sp
                  or           t2, t5, t6
                  c.xor        a1, a2
                  xori         a7, a5, -1506
                  add          s4, s5, a6
                  auipc        a5, 803274
                  c.add        gp, a0
                  c.and        s0, s0
                  slli         s2, s11, 27
                  andi         s9, sp, 642
                  c.andi       s1, -1
                  sll          s3, a4, t2
                  ori          t0, a3, 1485
                  c.add        t2, t5
                  srl          s6, t3, gp
                  lui          s5, 393148
                  c.srli       s0, 17
                  c.and        a1, a2
                  div          s8, s1, s11
                  c.or         a0, a0
                  sra          s2, s6, gp
                  lui          zero, 778042
                  remu         s10, s2, t2
                  sltiu        s9, s3, 145
                  remu         zero, t5, s11
                  slli         tp, s7, 20
                  remu         a3, a6, a4
                  c.mv         s10, s10
                  c.sub        a3, a0
                  addi         s9, a0, -1603
                  mulhsu       t5, a1, s1
                  c.or         s0, a5
                  srai         a3, a2, 14
                  ori          a5, tp, -1186
                  xori         a0, s1, 986
                  ori          a3, a5, 1638
                  sltu         s9, a7, s5
                  slti         s10, gp, -845
                  divu         a2, a0, a6
                  and          t1, t3, a4
                  addi         gp, t4, 1124
                  c.nop
                  c.nop
                  div          gp, a6, a2
                  srl          ra, a2, s7
                  remu         s1, ra, s10
                  c.nop
                  c.add        s5, t4
                  sltiu        a3, s6, -1991
                  srl          s7, zero, s4
                  c.nop
                  xori         a1, s3, -633
                  c.and        a1, s1
                  mul          ra, a3, a3
                  auipc        a3, 872840
                  srl          a6, ra, s6
                  srli         s9, s5, 19
                  rem          t6, a7, gp
                  c.li         a5, -1
                  mulhu        s10, ra, t0
                  sub          s7, a7, t0
                  sll          s8, a0, s2
                  slli         gp, s11, 23
                  mul          zero, a1, s1
                  remu         s10, s9, tp
                  mulhsu       s3, s7, gp
                  c.add        s2, gp
                  c.li         s2, 5
                  add          s3, t4, t6
                  srai         t3, s4, 29
                  mulhu        zero, s6, s4
                  slli         a6, a2, 17
                  c.sub        a1, s1
                  mul          t1, a5, s7
                  c.addi       t0, -1
                  mulhu        t3, t3, s11
                  remu         a2, a2, s10
                  div          t0, s2, a5
                  sltiu        s6, t3, -587
                  slti         t1, a3, -1980
                  sltu         t6, sp, t3
                  or           t5, s10, s7
                  slt          t0, a2, t5
                  or           ra, t2, a7
                  srl          ra, s0, s7
                  sra          a3, s11, s0
                  srl          s9, s8, a6
                  andi         a7, tp, 644
                  ori          tp, s4, 235
                  sltu         s1, ra, a6
                  srai         gp, s1, 11
                  xor          s2, zero, s10
                  sltu         a2, t5, a6
                  nop
                  mulh         a2, t6, s1
                  xor          s0, tp, ra
                  rem          s2, s2, t5
                  xori         t5, a4, 2016
                  c.nop
                  rem          tp, s5, s6
                  c.mv         gp, s3
                  c.add        s9, a7
                  c.li         a1, -1
                  or           s4, s6, t2
                  c.mv         s7, ra
                  c.or         a0, a3
                  c.srai       a1, 1
                  rem          s2, s10, t1
                  c.addi       s9, 5
                  addi         t5, s9, -1478
                  c.xor        a5, a4
                  sltiu        gp, t3, 1676
                  sltu         a1, s2, t0
                  slt          s2, t4, t4
                  slt          s10, s0, a5
                  c.srli       a5, 12
                  c.or         a0, a4
                  auipc        t1, 50366
                  andi         t6, a3, -647
                  sltu         zero, s8, a6
                  mulhsu       a1, zero, s4
                  sll          a0, zero, t6
                  c.li         a0, -1
                  c.or         s1, a2
                  c.srli       s1, 1
                  c.addi       t5, 19
                  auipc        zero, 587855
                  and          s10, s3, a5
                  sll          a3, t2, t5
                  divu         zero, s7, t6
                  mul          s0, s1, t5
                  c.nop
                  c.or         a3, a3
                  c.srli       a3, 10
                  srl          ra, s2, a5
                  mulhsu       t2, a7, s10
                  srai         s9, tp, 4
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a5, 0xffffffff
                  li           a2, 0xeb9e95a
                  li           s8, 0xf4de35e5
                  li           a1, 0x80000000
                  li           t3, 0x80000000
                  li           s0, 0x80000000
                  li           ra, 0x0
                  li           gp, 0xffffffff
                  li           s5, 0x0
                  mul          s8, s0, a5
                  addi         a5, s5, 321
                  mulhsu       s5, s5, s0
                  divu         t3, a2, gp
                  mulhu        s0, a5, a5
                  add          s0, s8, a2
                  nop
                  auipc        gp, 1019079
                  mul          s0, gp, s0
                  mulh         gp, a7, a7
                  auipc        a2, 970970
                  auipc        a1, 680494
                  mulhu        a1, a7, gp
                  addi         gp, s8, -373
                  remu         a1, a2, a7
                  rem          a5, s5, a7
                  add          s8, a5, s0
                  remu         gp, a1, a5
                  auipc        a5, 57741
                  auipc        s5, 844276
                  mulhsu       s5, a1, a5
                  lui          gp, 60915
                  addi         a5, a1, -1882
                  mulh         t3, a5, a2
                  mul          a5, ra, s5 #end riscv_int_numeric_corner_stream_13
                  c.slli       a5, 1
                  andi         s3, s3, 91
                  srl          s5, tp, t6
                  sltu         a5, s10, s3
                  nop
                  or           gp, s5, s7
                  auipc        t0, 293418
                  c.mv         t4, s6
                  addi         tp, a6, 577
                  srli         a0, s11, 3
                  auipc        s10, 914392
                  nop
                  mulhu        s3, a7, t4
                  lui          s4, 108771
                  sra          a1, s7, s11
                  slti         s8, gp, -1230
                  xori         s1, a3, 99
                  c.xor        s1, s1
                  and          s2, s4, s5
                  divu         s0, s8, gp
                  mulhu        s5, t1, sp
                  xori         s0, s11, 1245
                  c.and        s0, a3
                  srl          s8, s2, s9
                  xori         tp, a4, -1672
                  c.mv         s10, a5
                  c.and        a2, a0
                  c.srli       a2, 16
                  divu         t2, s9, ra
                  c.add        s0, t3
                  mul          t3, s1, zero
                  rem          s7, s0, zero
                  srl          s0, s0, t0
                  and          s1, s9, a7
                  mulhsu       t1, ra, tp
                  c.slli       t2, 7
                  c.andi       a0, -1
                  div          a3, a4, t4
                  c.add        s2, a4
                  c.mv         a7, a5
                  mul          a0, s2, a4
                  add          s3, a4, a3
                  c.add        a0, a5
                  remu         s1, gp, t5
                  c.mv         gp, s9
                  nop
                  remu         s7, s10, s9
                  divu         a2, s10, ra
                  lui          tp, 13710
                  sub          s1, s10, t2
                  addi         s4, s9, -338
                  c.mv         a1, s10
                  c.sub        a1, s0
                  or           a6, tp, a1
                  c.addi       ra, -1
                  lui          ra, 1035207
                  c.nop
                  div          t4, s7, s7
                  c.mv         a2, a7
                  srli         t2, t5, 27
                  sra          s5, s2, s8
                  addi         a5, gp, 558
                  c.and        s0, a0
                  ori          s3, a6, 1661
                  rem          a5, ra, a6
                  srl          a0, a6, s2
                  srai         s2, a5, 4
                  andi         s10, a5, 1036
                  srli         ra, t0, 2
                  or           s9, s2, s7
                  srli         s8, s2, 15
                  xor          s2, s0, s9
                  slli         s9, t5, 16
                  mulhu        s6, a4, t4
                  slti         t3, s3, 869
                  ori          t0, a6, 1621
                  xor          s3, tp, s5
                  c.or         a2, a0
                  c.li         gp, -1
                  divu         gp, s8, s4
                  c.andi       a5, -1
                  sra          zero, s7, s5
                  sra          gp, s11, a1
                  sltu         t1, t2, ra
                  add          tp, s10, ra
                  c.sub        a5, a1
                  xor          gp, s10, t1
                  slli         gp, s8, 5
                  lui          t4, 476708
                  add          zero, a3, ra
                  remu         s7, a0, t3
                  remu         t4, s2, t1
                  c.sub        a1, s0
                  slti         a2, a7, -1297
                  srl          s1, gp, t1
                  c.andi       a0, -1
                  c.addi       t0, -1
                  andi         t5, s10, -1964
                  c.srli       a0, 9
                  and          a2, s5, a4
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t2, 0xffffffff
                  li           t0, 0x586ce5e0
                  li           s0, 0x80000000
                  li           tp, 0x0
                  li           t1, 0x80000000
                  li           s7, 0x3bd8c1a4
                  li           gp, 0xae7add30
                  li           s4, 0x80000000
                  li           t3, 0x70aa89
                  addi         t0, t3, 850
                  mulh         t1, s0, tp
                  divu         s7, s0, gp
                  rem          t4, t4, gp
                  mulhu        s0, tp, t0
                  remu         t3, t4, s0
                  mul          s0, gp, t4
                  rem          t3, s4, t3
                  divu         s0, s7, t1
                  add          t1, s0, t4
                  remu         t1, t4, t0
                  mul          s4, s0, t4
                  nop
                  divu         tp, s7, t4
                  mulhu        gp, gp, t1
                  remu         t4, t4, tp #end riscv_int_numeric_corner_stream_15
                  sltu         gp, a5, t3
                  srli         s0, s10, 8
                  c.li         t0, -1
                  c.mv         s9, s1
                  xori         s4, s10, -134
                  c.lui        a7, 30
                  sltiu        a6, s1, -96
                  remu         a5, ra, t6
                  sltiu        t2, s0, -1686
                  div          a2, a2, t1
                  xori         s2, sp, 1104
                  mulh         a6, s6, s4
                  c.or         a0, a1
                  c.srai       s1, 19
                  c.addi       s5, 1
                  sra          t5, t5, tp
                  and          s1, zero, t1
                  c.or         a5, a4
                  and          ra, gp, s9
                  c.srai       a1, 21
                  slli         a5, a6, 23
                  c.add        ra, t3
                  nop
                  c.and        s0, a2
                  and          a3, t4, tp
                  c.and        s0, a2
                  srli         t6, t4, 11
                  remu         s4, sp, a7
                  sltiu        s6, a6, -1941
                  c.lui        a6, 15
                  xori         t1, s3, 27
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_31
                  li           a5, 0x80000000
                  li           t2, 0x80000000
                  li           t5, 0x80000000
                  li           s4, 0x2ea2df38
                  li           s6, 0x0
                  li           s0, 0xffffffff
                  li           s10, 0xae799cfe
                  li           t4, 0x0
                  li           s5, 0xffffffff
                  add          t4, s4, s4
                  mulhsu       t5, s6, s4
                  addi         s0, t5, 1666
                  divu         t4, a5, s4
                  sub          s10, s10, ra
                  nop
                  nop
                  mulhu        s10, ra, ra
                  mul          t5, s6, t5
                  auipc        s4, 281867
                  div          t4, ra, s0
                  mul          s6, t5, s4
                  addi         t2, s0, -114
                  nop
                  add          s6, t4, t5
                  rem          ra, s10, s0
                  mulhu        ra, s0, t5
                  mulhu        ra, s0, ra
                  sub          ra, s10, s10
                  mul          ra, s0, a5
                  mulh         s4, a5, t5
                  lui          s10, 681078
                  mulhsu       s0, a5, s10 #end riscv_int_numeric_corner_stream_31
                  c.addi       t3, 2
                  c.slli       t2, 29
                  auipc        a7, 810336
                  add          s0, t6, zero
                  c.addi       s7, 19
                  sll          a0, s4, s0
                  div          zero, s10, s9
                  sra          a5, t4, s11
                  ori          t0, t2, -1390
                  c.sub        s0, a3
                  c.add        s10, t0
                  sll          s4, s10, a3
                  c.xor        a1, a0
                  c.srai       a1, 12
                  and          a1, t5, a2
                  c.andi       a5, -1
                  auipc        a3, 453184
                  andi         tp, a6, 571
                  addi         ra, tp, -1134
                  c.and        a3, a4
                  or           s9, s10, s3
                  auipc        gp, 851728
                  c.xor        a0, a4
                  or           s9, a0, zero
                  c.or         a0, a2
                  sra          a5, s6, a4
                  sltu         t1, s4, s8
                  lui          s9, 1021013
                  sltu         a2, t1, t6
                  c.li         s4, -1
                  srai         a3, t6, 31
                  c.lui        a2, 11
                  remu         t3, s7, s8
                  and          a7, t4, tp
                  c.slli       t6, 2
                  remu         zero, t0, s10
                  xor          gp, t5, s10
                  sub          a7, a6, t2
                  c.slli       s5, 11
                  c.addi       t4, -1
                  c.li         s2, 30
                  c.nop
                  slt          ra, t4, t6
                  c.addi       s5, 6
                  divu         s10, sp, s0
                  xori         s2, s1, 901
                  auipc        s9, 1009844
                  c.add        a0, a1
                  slli         s9, t5, 13
                  c.li         t3, -1
                  addi         s10, s5, -1690
                  c.or         a5, s1
                  c.andi       a3, 25
                  rem          a3, t2, zero
                  c.slli       t6, 17
                  nop
                  mulhsu       t2, t4, s5
                  mulhsu       s6, zero, s4
                  slli         t2, t3, 23
                  xori         s5, s5, 1690
                  mulhsu       t5, s10, s9
                  div          a0, s2, s10
                  addi         ra, s5, -1029
                  c.mv         s8, s2
                  c.or         a0, a5
                  slt          a7, t0, sp
                  slti         a6, s8, -1770
                  slti         a6, a2, 1284
                  sub          s8, a0, t5
                  c.mv         s4, t5
                  rem          s4, s5, t6
                  sub          s1, tp, s1
                  slli         s0, t1, 17
                  c.andi       a5, 7
                  xori         t5, a0, 792
                  or           a3, a1, s5
                  ori          a6, a6, 367
                  remu         s5, a7, s1
                  c.sub        a2, a0
                  lui          ra, 161712
                  or           a2, zero, s6
                  or           s2, t1, a0
                  c.sub        a0, a5
                  c.nop
                  lui          t3, 623107
                  mulhu        a2, s3, t3
                  sra          a1, a3, sp
                  c.add        t3, ra
                  srai         a7, tp, 16
                  mul          zero, gp, a3
                  sll          s6, ra, zero
                  srai         s10, s11, 15
                  c.nop
                  c.andi       a1, -1
                  mulhsu       t6, s0, s5
                  c.andi       a1, 7
                  slti         s2, a6, 1594
                  xor          t6, a6, s0
                  slli         s10, a1, 3
                  c.and        a0, a1
                  addi         t4, t3, 2002
                  srai         ra, s4, 9
                  add          ra, t0, a1
                  remu         s10, a1, t5
                  c.mv         s9, s6
                  remu         t2, a6, t2
                  c.li         t1, -1
                  add          s3, a6, a7
                  srli         s9, t1, 30
                  srl          s0, a2, t1
                  slt          s10, s10, s2
                  c.add        s5, s10
                  add          t0, s11, s2
                  or           a2, ra, a7
                  sll          s0, s4, a7
                  or           ra, s11, s7
                  c.sub        a2, a2
                  c.andi       s1, 30
                  c.nop
                  srai         t0, t4, 7
                  mulh         zero, t0, t0
                  remu         zero, t4, t4
                  auipc        s10, 358964
                  c.nop
                  nop
                  srl          a7, a2, t2
                  c.li         s3, 25
                  c.sub        a3, a0
                  add          s10, a1, a0
                  sub          t4, a5, t0
                  c.srai       a0, 25
                  sltiu        zero, a0, -522
                  srli         s3, s4, 14
                  ori          a7, sp, 886
                  c.slli       a1, 16
                  c.srli       a2, 23
                  c.mv         s8, tp
                  c.li         t5, 17
                  c.mv         s0, a7
                  c.srai       a1, 3
                  mulhu        t6, t4, a1
                  c.add        s4, t2
                  sub          a1, s10, a2
                  c.andi       a3, -1
                  slti         a5, s11, -126
                  srli         a0, t4, 1
                  sll          a0, s11, s5
                  c.srli       a5, 10
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           s6, 0x0
                  li           ra, 0x80000000
                  li           a3, 0xffffffff
                  li           s5, 0x3196adaa
                  li           s10, 0x80000000
                  li           t3, 0x0
                  li           a1, 0x80000000
                  li           t0, 0x80000000
                  li           s4, 0xffffffff
                  mulhsu       a3, t0, s4
                  remu         s5, s4, s4
                  addi         s6, s5, -1871
                  nop
                  mul          s6, a1, s8
                  auipc        s6, 199595
                  div          a1, ra, s4
                  mulh         ra, ra, a1
                  mul          s5, s4, t0
                  mulh         t0, a3, s6
                  remu         s4, s6, t0
                  mulh         a3, s4, s10
                  lui          s5, 896567
                  lui          a1, 807584
                  mulh         a3, s10, a3
                  sub          s6, s10, a3
                  rem          a3, s8, s5
                  mulh         s6, s5, s6
                  add          t3, a1, t3
                  mul          a1, t3, s5
                  rem          s10, s10, s5
                  mulh         s5, ra, s4
                  divu         a1, s4, t0
                  mulhsu       s10, ra, ra
                  remu         a1, ra, t3
                  divu         ra, s6, s8
                  mulhu        ra, s8, t3 #end riscv_int_numeric_corner_stream_36
                  c.sub        a2, s1
                  c.and        a1, a0
                  srai         gp, a0, 7
                  c.mv         s8, t1
                  c.lui        a1, 31
                  add          a3, sp, a4
                  c.and        a3, a0
                  sra          s9, t6, ra
                  auipc        t2, 759702
                  sub          a5, t3, sp
                  slli         t5, s4, 18
                  c.lui        a3, 20
                  slt          s3, t2, zero
                  rem          t5, a1, t1
                  slt          zero, t6, ra
                  and          gp, t5, s0
                  xori         t5, t1, -14
                  sub          zero, s6, t2
                  divu         s2, t0, t0
                  lui          s0, 301849
                  c.andi       a2, 31
                  slt          s3, tp, s0
                  srai         a6, a0, 17
                  c.nop
                  mulhu        a0, a2, a6
                  c.or         s0, s0
                  andi         s8, a2, 430
                  or           ra, s7, t3
                  divu         s3, t6, a3
                  sltiu        s3, a0, 430
                  c.srli       s1, 8
                  c.nop
                  xor          s8, a4, tp
                  mulhu        ra, a2, s3
                  sltiu        zero, a7, -1137
                  addi         ra, s6, -41
                  auipc        s2, 162391
                  c.add        a6, s0
                  srl          s10, s2, s0
                  sltu         zero, a6, s8
                  nop
                  srai         a5, t6, 0
                  or           s8, a4, s8
                  srli         s8, gp, 6
                  c.andi       s0, 25
                  nop
                  slli         s4, a5, 24
                  slli         s4, a6, 23
                  srli         a5, s5, 27
                  sltiu        zero, s2, 913
                  or           t6, s6, s11
                  sub          s0, s8, a4
                  sltu         tp, a7, a3
                  c.addi       t1, -1
                  c.srli       a2, 13
                  c.mv         s4, a7
                  xor          a5, a0, tp
                  rem          t0, s7, s7
                  nop
                  xori         s9, zero, 656
                  divu         t1, ra, s10
                  ori          t1, ra, 1805
                  c.lui        tp, 20
                  nop
                  c.srai       a5, 23
                  c.li         a0, 1
                  c.addi       a3, -1
                  sub          a6, t3, zero
                  slli         a7, t5, 1
                  c.li         s4, -1
                  srl          s7, s2, a3
                  c.and        s0, a1
                  mulhu        s10, a0, t2
                  c.and        a2, s1
                  c.addi       s0, -1
                  c.andi       a5, -1
                  c.addi       s8, 15
                  divu         s9, sp, t6
                  srl          t1, gp, sp
                  ori          s5, t5, -542
                  c.or         s1, a5
                  srli         t3, sp, 31
                  or           s1, s3, gp
                  auipc        a0, 294395
                  c.or         s0, a0
                  and          a3, a5, s8
                  c.sub        s1, a0
                  mulhu        s10, zero, t1
                  mulhu        t1, t6, a4
                  srl          a5, ra, t4
                  c.slli       s6, 13
                  mulhu        a7, a3, gp
                  srl          a5, a0, t6
                  divu         s1, a1, sp
                  srai         t3, s5, 19
                  lui          a0, 586238
                  add          a2, sp, a7
                  mulhu        a7, s3, a1
                  xor          a7, a5, tp
                  slt          s1, s7, a1
                  xor          a2, s8, gp
                  c.slli       s5, 4
                  c.mv         t5, s5
                  sltu         a7, tp, a0
                  c.nop
                  slt          a6, a7, s8
                  andi         t3, a2, 883
                  c.addi       s2, 30
                  sll          a0, a7, a2
                  lui          a2, 387656
                  divu         a6, s8, t4
                  c.addi       t0, -1
                  c.nop
                  lui          a0, 398510
                  div          s4, t2, s10
                  auipc        tp, 489608
                  c.srai       a3, 25
                  sltiu        t2, sp, 1428
                  sltu         s5, a2, a7
                  sltu         gp, a6, gp
                  c.lui        a7, 28
                  nop
                  c.add        s0, t3
                  remu         ra, s5, gp
                  srli         t1, t5, 31
                  c.sub        a0, a0
                  add          s4, zero, s7
                  slt          t3, t2, s6
                  xor          a1, s0, a3
                  mulhsu       s4, a7, s5
                  addi         a7, s10, -466
                  ori          s5, t2, 1114
                  div          s8, t6, a7
                  div          a5, s1, t3
                  c.xor        a1, s1
                  slti         tp, a3, -1647
                  c.li         s4, -1
                  c.or         a3, s1
                  c.nop
                  srai         a3, s2, 12
                  div          s1, s6, s9
                  or           t0, s10, t6
                  mulh         a2, t5, s6
                  c.sub        a1, a5
                  slt          a7, a5, s3
                  mul          t1, ra, sp
                  and          s8, a3, a3
                  rem          a0, a7, s0
                  c.srli       a0, 29
                  c.srai       a3, 5
                  and          t3, s7, s9
                  srl          s0, s6, a2
                  c.li         s10, -1
                  c.mv         t0, s11
                  c.addi       s2, 6
                  c.or         a2, a4
                  slt          s8, t4, s10
                  c.nop
                  sra          a6, a5, t6
                  nop
                  sltu         s0, t5, s4
                  slt          s6, a5, a2
                  sll          s9, s11, s0
                  c.mv         s10, t2
                  c.addi       s0, -1
                  ori          gp, s0, 1700
                  c.li         s2, 25
                  xor          zero, s4, s7
                  slli         s0, a7, 10
                  c.and        s0, a3
                  srl          s9, a0, a7
                  c.xor        a0, a2
                  c.sub        s1, a3
                  auipc        a5, 130511
                  slt          t1, s1, s1
                  mul          t3, s9, s6
                  c.xor        a2, s0
                  or           zero, t3, a1
                  xor          zero, s2, t5
                  sltu         s4, s2, s9
                  c.srai       a1, 16
                  srl          s7, t2, s4
                  c.add        s4, s4
                  c.lui        s8, 9
                  rem          s7, t4, s0
                  c.and        s1, a2
                  lui          t0, 943811
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           t2, 0xffffffff
                  li           a0, 0x8b987886
                  li           a5, 0x3e4f57b7
                  li           s4, 0x0
                  li           gp, 0x6a02ee89
                  li           a1, 0xffffffff
                  li           s9, 0x408540aa
                  li           ra, 0x0
                  li           s0, 0xffffffff
                  remu         s9, s4, a5
                  sub          gp, t2, gp
                  sub          ra, s9, t3
                  divu         s9, ra, a5
                  mulhu        ra, s9, s4
                  mul          s4, s4, gp
                  mulhsu       a1, a0, t3
                  mulhsu       s0, s9, gp
                  remu         s9, s4, s4
                  rem          s0, s4, t3
                  divu         t3, s4, s4
                  sub          ra, a0, ra
                  mul          s0, s4, ra
                  addi         a0, s4, -13
                  remu         s4, t2, a1
                  lui          t2, 546072
                  auipc        s4, 156811 #end riscv_int_numeric_corner_stream_21
                  div          ra, s6, t3
                  add          t2, t3, a0
                  rem          t6, a0, s10
                  c.or         a5, a5
                  c.xor        a1, a2
                  c.addi       s8, -1
                  mulhu        s3, a6, t0
                  c.lui        s8, 10
                  andi         s6, a4, -1062
                  lui          tp, 463652
                  andi         s10, a1, 678
                  srai         ra, t0, 4
                  mul          s0, gp, a4
                  and          a1, t3, s6
                  addi         ra, t0, -995
                  addi         s9, s3, 1803
                  c.xor        a5, s0
                  sra          s3, a3, a6
                  c.addi       a7, 9
                  slt          t5, s7, s4
                  slti         a0, a0, 1520
                  c.add        tp, a2
                  srl          s0, s11, a7
                  c.lui        tp, 27
                  c.srli       a5, 7
                  c.lui        s3, 26
                  c.or         a2, s0
                  ori          a7, t5, -1071
                  c.sub        a3, s1
                  remu         t2, s6, tp
                  c.or         a3, s0
                  xor          s0, s9, a0
                  mulhu        s6, s5, s7
                  c.li         s4, -1
                  li           t5, 0xe5aefacb #start riscv_int_numeric_corner_stream_29
                  li           s8, 0xffffffff
                  li           s2, 0x0
                  li           s0, 0x2e248783
                  li           a0, 0x80000000
                  li           a5, 0xffffffff
                  li           s1, 0x0
                  li           s7, 0x0
                  li           s5, 0x80000000
                  li           a3, 0xffffffff
                  add          s1, t5, s5
                  nop
                  remu         a5, a0, s8
                  divu         a0, s1, s2
                  add          a0, s2, s1
                  divu         a0, t5, t5
                  rem          s7, s1, a0
                  nop
                  div          s5, s7, s5
                  mulhsu       a3, s5, a5
                  auipc        s1, 257181
                  nop
                  remu         a3, s8, a0
                  lui          s7, 406033
                  divu         a5, a5, s1
                  mulhsu       a0, s8, t5
                  rem          a0, s7, s1
                  mul          s2, t5, a0
                  auipc        s7, 880368
                  mulh         s7, a5, a0 #end riscv_int_numeric_corner_stream_29
                  c.mv         a6, s8
                  c.and        a2, a3
                  srai         s2, s7, 4
                  slti         s10, t1, 1515
                  add          a1, s7, a1
                  c.add        a0, t6
                  lui          a1, 224201
                  xor          a6, s7, a6
                  c.lui        ra, 29
                  c.srai       s0, 10
                  div          s2, t3, s6
                  c.nop
                  divu         s0, s2, a7
                  or           t2, s4, zero
                  sltiu        a0, ra, -1559
                  andi         t1, s8, 899
                  sltu         zero, ra, zero
                  c.slli       a1, 6
                  andi         s2, a3, -1289
                  sub          s9, t5, s5
                  sltu         a2, s1, a1
                  xor          t2, s8, s4
                  andi         t2, s11, -682
                  srai         t1, s1, 12
                  mul          s4, zero, zero
                  slt          gp, s8, s1
                  addi         a0, a4, -860
                  lui          a0, 55561
                  slt          gp, s4, t0
                  xor          t3, a7, a4
                  and          s9, a2, s8
                  sll          t3, ra, sp
                  divu         t2, t0, s2
                  mul          gp, t3, s5
                  mulh         s3, s2, s9
                  sub          s2, a7, a6
                  sltu         t5, tp, t4
                  xor          t4, a5, a1
                  add          s4, a7, a6
                  slli         s3, a2, 15
                  c.or         a5, a5
                  div          a7, sp, sp
                  lui          a2, 1004007
                  c.add        gp, t5
                  add          s0, t1, zero
                  remu         a1, a3, a2
                  div          t1, t4, s2
                  c.mv         tp, a2
                  auipc        t6, 315944
                  lui          t4, 314774
                  auipc        s6, 514266
                  auipc        t4, 943793
                  andi         gp, t2, 334
                  ori          s3, s2, -1232
                  c.or         a5, a0
                  sub          s8, a0, t0
                  sll          t5, a6, s8
                  c.addi       t5, -1
                  sra          s7, tp, s11
                  c.add        a0, s1
                  srai         t4, sp, 17
                  c.sub        s1, a4
                  auipc        a6, 342442
                  sub          t5, s3, s9
                  divu         t2, s10, t0
                  xori         t6, s2, -610
                  mul          ra, zero, a2
                  c.lui        gp, 21
                  sltiu        a0, gp, -1137
                  slti         a2, t4, 530
                  c.or         a0, a0
                  c.and        a2, a4
                  andi         s5, a5, 1382
                  mulh         s4, a4, zero
                  c.and        a3, s1
                  lui          s2, 427561
                  div          s9, ra, a5
                  xori         s3, s10, 1885
                  slti         a5, s1, 472
                  remu         a1, s0, ra
                  c.and        a3, a0
                  xor          ra, s1, s7
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           s8, 0xffffffff
                  li           s0, 0xffffffff
                  li           t4, 0xffffffff
                  li           s9, 0x80000000
                  li           gp, 0xd1873e67
                  li           a1, 0xffffffff
                  li           s6, 0x8a4c0ea4
                  li           ra, 0x0
                  li           a3, 0x68ff2636
                  add          s8, s9, ra
                  lui          s0, 692056
                  lui          t4, 984120
                  div          a3, s9, a3
                  mulh         ra, s9, s9
                  addi         s0, s9, -1270
                  mulh         ra, t4, s8
                  mul          s6, ra, t4
                  mul          a0, s6, s6
                  add          s6, s6, gp
                  mul          s6, a1, ra
                  rem          ra, t4, s8
                  addi         a0, a3, 1015
                  divu         gp, s9, s8
                  div          a1, t4, a0
                  lui          ra, 808604
                  mul          s6, ra, s0
                  nop
                  sub          a1, a1, a0
                  mulhsu       gp, s8, a0
                  divu         gp, s9, s6
                  mulhu        ra, ra, t4
                  divu         gp, t4, s6
                  mulhu        s0, gp, s9
                  mulhsu       s6, s8, ra
                  lui          a1, 571699
                  nop #end riscv_int_numeric_corner_stream_24
                  andi         a3, gp, 1781
                  c.or         a2, a5
                  c.add        s4, t1
                  and          s7, s1, t4
                  or           t6, zero, a1
                  xori         s5, s4, 298
                  c.or         a0, a3
                  ori          a1, s4, -867
                  c.slli       ra, 25
                  mul          s5, a5, t1
                  div          t5, a2, t3
                  xor          s8, t4, s7
                  sltu         t0, s0, a0
                  c.mv         a7, gp
                  c.addi       s8, 7
                  and          s9, t3, a0
                  sltiu        a5, a7, 1338
                  c.sub        s0, a1
                  c.nop
                  c.srai       a5, 26
                  mulhu        a5, a0, a3
                  sltiu        s0, t0, 859
                  c.sub        a2, a2
                  c.li         t6, 29
                  ori          s4, s4, -1591
                  sub          gp, t5, t6
                  slli         tp, s0, 25
                  srli         t6, s5, 14
                  slt          t5, a7, tp
                  mul          s8, s7, t5
                  c.add        t3, a3
                  xori         t1, s1, -143
                  mulhu        ra, t0, s8
                  remu         a3, s1, a2
                  nop
                  c.mv         s5, sp
                  c.lui        a1, 28
                  xori         zero, tp, -1193
                  srli         a6, s7, 7
                  mulh         zero, a4, a1
                  divu         s0, s3, s0
                  c.or         a5, a1
                  remu         a2, a5, s5
                  andi         t2, s10, -331
                  srli         zero, s1, 24
                  mul          zero, t6, s10
                  divu         a1, a1, t5
                  sra          t4, a3, a3
                  divu         t4, a3, s3
                  c.add        s4, t3
                  c.slli       a7, 2
                  slt          t5, s4, s8
                  c.slli       s3, 29
                  rem          a3, a1, t6
                  c.slli       ra, 28
                  sub          s6, t0, tp
                  c.nop
                  andi         s7, a7, 258
                  mulh         s1, s1, gp
                  rem          a0, s2, t5
                  sltu         t1, s1, s2
                  divu         s9, a2, s10
                  auipc        t5, 1027111
                  c.addi       s0, -1
                  sltu         t6, a5, a5
                  c.sub        s0, a5
                  c.lui        t1, 31
                  c.slli       s1, 4
                  c.and        a0, s1
                  sltu         a1, a5, t1
                  sll          t2, t5, s0
                  xori         a0, a3, 516
                  auipc        s4, 712133
                  srl          t3, gp, s8
                  c.li         a2, 28
                  c.srai       a3, 30
                  c.lui        s5, 12
                  c.srai       a3, 27
                  c.xor        a5, a5
                  mulhu        gp, t6, s10
                  c.sub        a2, a5
                  or           s3, a0, gp
                  c.nop
                  xor          t0, s11, s7
                  div          a5, a4, gp
                  slti         s6, t4, -232
                  srli         s10, t4, 17
                  addi         t3, a3, 1954
                  c.add        a0, t6
                  c.addi       t1, 9
                  c.lui        s0, 19
                  li           a5, 0x75fd9a2a #start riscv_int_numeric_corner_stream_1
                  li           s9, 0x71c64120
                  li           s3, 0xffffffff
                  li           gp, 0xffffffff
                  li           a6, 0x0
                  li           a1, 0x35ecda1a
                  li           s10, 0x0
                  li           s2, 0xffffffff
                  li           a3, 0x0
                  li           s7, 0xffffffff
                  mulh         a3, a5, a5
                  divu         gp, s3, s7
                  addi         a3, a5, 753
                  auipc        s9, 591672
                  div          s7, s3, a6
                  auipc        s7, 159644
                  mul          gp, a1, s9
                  div          s9, a1, s9
                  mulh         s2, s9, a6
                  mulhu        s10, a5, gp
                  mulhu        s9, a5, s9
                  divu         s10, a1, a1
                  add          a3, a6, a6
                  rem          s3, s2, s7
                  mulhsu       s7, a1, gp
                  mulhsu       s2, a5, s3
                  divu         a3, a3, s9
                  addi         a3, gp, 452 #end riscv_int_numeric_corner_stream_1
                  or           s10, gp, ra
                  sltu         s1, a6, ra
                  c.xor        s1, a1
                  sll          s10, a3, t3
                  srli         s9, a0, 18
                  srli         t1, t1, 19
                  srl          s9, s8, t0
                  or           a2, t5, t5
                  xori         t2, s5, 105
                  c.or         a1, s1
                  add          s0, s11, s7
                  srl          a1, zero, a2
                  c.lui        t3, 22
                  nop
                  c.andi       a5, -1
                  c.srli       a0, 14
                  srl          a0, s2, s3
                  c.srli       a1, 21
                  xori         t4, gp, -95
                  add          tp, s4, a2
                  mul          gp, t6, s2
                  ori          tp, tp, -1262
                  auipc        a0, 1042181
                  c.or         a5, a4
                  xori         a0, t2, -1625
                  c.li         a5, 31
                  nop
                  sra          t5, s2, s9
                  srai         a7, a3, 31
                  sra          s5, s9, a5
                  c.xor        a3, s1
                  mulhsu       s6, s7, t4
                  sll          ra, s3, s0
                  slt          s6, s11, a5
                  div          gp, t5, s9
                  c.li         a6, -1
                  c.li         s2, -1
                  remu         gp, a6, a4
                  sltu         tp, s4, a5
                  c.mv         t0, t3
                  c.srai       a1, 9
                  c.srai       a2, 15
                  c.or         s0, a1
                  xori         t5, s9, 1355
                  c.addi       a7, 9
                  sub          a6, t1, t6
                  mulh         a0, s3, a3
                  add          s7, a2, s2
                  c.sub        a2, a0
                  mul          t2, a2, t0
                  c.and        s0, a1
                  slli         a2, tp, 14
                  xor          a5, s5, t0
                  c.addi       s5, 7
                  sltu         s7, a4, sp
                  c.sub        s1, a2
                  sll          s10, a5, t0
                  auipc        s2, 418060
                  c.sub        a1, s1
                  sll          zero, ra, ra
                  c.li         t3, -1
                  mulh         t5, s6, t4
                  addi         t2, s4, -1269
                  srl          ra, s7, tp
                  lui          tp, 801929
                  slti         s2, s4, -717
                  add          a2, s11, a4
                  srai         t0, s1, 1
                  c.addi       t1, -1
                  divu         s9, s2, a1
                  xor          s0, sp, a0
                  auipc        a0, 305093
                  c.slli       a6, 15
                  add          s7, a5, t6
                  xor          s8, s6, ra
                  c.nop
                  div          t6, s10, a5
                  c.slli       s8, 5
                  mulh         t4, s2, s7
                  xor          t4, t6, gp
                  c.addi       gp, 10
                  addi         a1, s8, -1553
                  slli         t0, a5, 15
                  or           s9, s1, sp
                  xor          s9, s11, sp
                  c.add        a2, a5
                  remu         ra, sp, t1
                  c.add        s3, t2
                  c.lui        a0, 13
                  lui          t0, 308537
                  div          t4, gp, a7
                  c.add        s0, sp
                  c.add        s3, a6
                  c.add        s0, ra
                  srl          a3, a6, t5
                  srl          s7, a1, a3
                  auipc        s2, 658828
                  c.xor        s0, a5
                  div          t2, a2, t3
                  c.or         a2, s1
                  auipc        t3, 313553
                  mulhu        gp, gp, s4
                  andi         t6, s7, -1126
                  mul          s7, s4, tp
                  c.nop
                  and          t1, s3, t3
                  sll          s10, s3, t2
                  mulhsu       s7, s6, s7
                  xori         a6, a2, 957
                  divu         t1, a4, a0
                  and          t6, s10, ra
                  slli         t4, a3, 16
                  c.andi       s1, 23
                  sll          a5, a5, s5
                  c.slli       s9, 27
                  mul          tp, a6, s0
                  ori          s10, s2, 1449
                  c.li         t3, 27
                  srl          t6, tp, t6
                  srl          s8, s5, s11
                  c.slli       s10, 29
                  divu         t5, s8, s0
                  nop
                  sltiu        t1, s5, -1413
                  xor          a2, t4, s0
                  auipc        t4, 594975
                  slti         a1, a3, -925
                  or           s6, s4, t3
                  c.slli       s0, 4
                  c.andi       s1, -1
                  and          s10, zero, t3
                  addi         s10, s10, -1073
                  slt          a2, s5, a6
                  c.sub        s0, a5
                  sll          s2, tp, zero
                  c.xor        a5, s0
                  mulhsu       ra, t4, s11
                  c.xor        a1, s1
                  ori          s4, gp, 1877
                  srai         a7, ra, 25
                  xori         t1, t2, 492
                  c.lui        a3, 16
                  ori          s7, s11, -1908
                  sub          a3, s3, zero
                  c.lui        t1, 23
                  xori         t2, a6, 1292
                  c.xor        a3, a0
                  srli         s3, s5, 9
                  mulhu        s10, t5, t1
                  or           a0, s0, t6
                  c.xor        s1, a0
                  c.srli       a0, 6
                  c.srai       a0, 15
                  mul          a2, s0, a2
                  c.sub        a2, a0
                  divu         a5, a2, t0
                  auipc        a5, 308337
                  nop
                  c.sub        a3, a3
                  mul          a7, s2, ra
                  and          a1, a4, s8
                  c.add        s6, a4
                  lui          s10, 758885
                  add          a6, t6, a1
                  sltu         s4, t4, s2
                  sub          s3, t5, a2
                  xor          s9, s8, s11
                  c.mv         s4, s8
                  mulhu        s10, a7, t4
                  c.nop
                  mulh         a6, t6, s0
                  c.addi       s1, -1
                  xor          a1, s8, t5
                  auipc        s5, 546121
                  div          a1, s1, t2
                  c.srai       a3, 22
                  srl          t6, s11, a4
                  rem          s8, a2, a2
                  add          s4, t1, a7
                  remu         s0, t5, s3
                  c.mv         t3, t3
                  c.nop
                  rem          s10, t6, gp
                  c.xor        a5, a2
                  c.lui        a2, 24
                  c.srli       a1, 11
                  c.andi       a5, -1
                  mulh         s0, a4, s2
                  c.add        a1, sp
                  slti         t1, a6, 769
                  mul          t6, a2, t3
                  lui          a2, 901213
                  ori          a0, a4, 1810
                  c.sub        a5, a0
                  c.lui        s5, 8
                  c.andi       a0, -1
                  sltu         s0, zero, a0
                  divu         s1, s4, a6
                  and          tp, s11, s5
                  xor          s0, s1, a5
                  sltiu        a2, s5, 1048
                  xor          a1, s7, s4
                  remu         t0, t3, s8
                  div          t4, a1, s0
                  add          t2, s2, tp
                  or           s4, s8, sp
                  c.li         s8, -1
                  add          tp, s0, s4
                  c.slli       s8, 9
                  add          a1, t0, s11
                  remu         s6, s2, t0
                  c.srli       s1, 12
                  remu         s0, gp, s0
                  mulh         t3, t3, sp
                  c.nop
                  c.li         s4, 14
                  auipc        s6, 399152
                  mul          s0, s9, s10
                  c.srli       a0, 15
                  and          s6, s8, s3
                  lui          a7, 123536
                  div          s7, t4, zero
                  srli         s2, s8, 23
                  srai         a0, s2, 8
                  andi         zero, t4, -919
                  slti         ra, s9, 926
                  c.sub        a5, a3
                  c.or         a2, s1
                  divu         s5, t1, t4
                  sltiu        t4, s2, 401
                  c.mv         t3, t2
                  c.andi       a2, 11
                  c.slli       s8, 26
                  c.srai       a2, 11
                  slti         a5, sp, -1623
                  sltu         s8, a0, gp
                  auipc        s8, 555717
                  lui          a5, 764030
                  c.srli       a2, 4
                  c.srai       a1, 1
                  c.slli       t5, 10
                  nop
                  mulhu        t3, gp, a4
                  sltiu        s7, t1, 575
                  xori         gp, t4, 1045
                  c.sub        a0, a1
                  add          t5, t6, s5
                  auipc        s3, 720132
                  c.srai       a1, 20
                  sra          s10, t6, zero
                  or           a1, t6, s10
                  sll          s6, ra, s6
                  addi         zero, s0, -1710
                  addi         a3, s1, -424
                  remu         ra, s9, a0
                  slli         s0, a1, 22
                  slti         t4, a7, -1227
                  srli         a2, a6, 25
                  xori         t2, s7, 930
                  c.add        s8, a7
                  c.li         s6, 23
                  andi         t2, a7, 735
                  c.srai       a5, 28
                  mul          t1, a4, s9
                  auipc        gp, 406312
                  lui          a5, 112231
                  c.addi       a6, -1
                  c.srli       a3, 27
                  slli         s1, s11, 0
                  mulhu        s10, a3, zero
                  sub          t1, s7, s6
                  c.and        a5, a0
                  srl          s4, s5, sp
                  c.srai       a1, 6
                  c.or         s0, a3
                  andi         s1, s6, -876
                  xor          s0, a2, s1
                  c.sub        a0, a2
                  and          t4, s5, gp
                  slt          ra, tp, sp
                  auipc        t6, 209347
                  and          a6, t4, ra
                  c.li         s6, 21
                  lui          t3, 867768
                  or           t2, a0, t1
                  sltiu        a7, s10, 1524
                  sltu         s6, ra, a0
                  slt          a0, a0, a0
                  slti         t1, ra, -910
                  c.mv         a3, s7
                  srl          t5, s4, s3
                  sub          tp, a3, s11
                  mulhsu       a6, s5, a5
                  c.slli       gp, 1
                  sltu         a7, a4, t2
                  c.add        t1, a3
                  andi         s7, t4, -84
                  addi         s6, s10, -883
                  div          a0, t0, a2
                  add          s9, t3, t6
                  c.addi       gp, -1
                  c.or         a5, s1
                  c.li         s5, -1
                  c.mv         a2, t6
                  auipc        s10, 788331
                  xori         tp, a7, 316
                  srai         t6, t3, 13
                  addi         a6, ra, 593
                  divu         s7, s8, sp
                  c.lui        s3, 25
                  rem          t2, s6, sp
                  auipc        t6, 65237
                  sltiu        t0, t1, 1697
                  addi         a3, s4, 510
                  addi         a0, ra, 1459
                  slti         s4, a0, 92
                  divu         s6, tp, s11
                  c.slli       s4, 3
                  c.srli       a3, 29
                  andi         t6, s5, -734
                  srai         gp, t1, 4
                  auipc        s9, 390136
                  c.srli       a1, 15
                  c.xor        a1, s1
                  sll          t3, a1, t0
                  c.or         s0, a5
                  c.srli       a2, 8
                  slti         t2, a2, -631
                  mulh         t5, s4, s8
                  or           t1, a3, s4
                  slt          t5, s7, s3
                  ori          t6, s9, -518
                  mulh         s7, a7, s11
                  sll          s5, a6, t4
                  auipc        a6, 394563
                  divu         t2, a5, a4
                  add          s0, s4, a4
                  sll          a3, s1, sp
                  c.slli       s7, 14
                  c.nop
                  or           a0, s6, a7
                  and          a5, a2, s2
                  c.xor        a0, a1
                  andi         s8, s7, 702
                  c.li         a5, -1
                  c.or         s0, a1
                  c.andi       s0, -1
                  c.sub        a0, s1
                  c.srai       s1, 13
                  lui          zero, 13772
                  mulh         t5, a3, a7
                  rem          s2, a5, a5
                  xor          t2, s9, t4
                  c.addi       a5, -1
                  c.nop
                  add          gp, sp, a4
                  auipc        tp, 675471
                  srai         s8, s9, 23
                  slti         a0, ra, -1747
                  mulh         s3, s5, t1
                  nop
                  c.or         a5, a2
                  mulhu        s7, t1, a0
                  nop
                  rem          a7, s8, t1
                  add          s4, t1, tp
                  addi         s5, s8, -1898
                  remu         s1, s8, s3
                  rem          s7, s6, s8
                  c.and        s0, a0
                  slt          ra, t4, tp
                  rem          a7, a6, t6
                  add          s5, s2, a3
                  xori         s10, s3, -650
                  c.xor        a1, a1
                  nop
                  c.slli       a6, 15
                  slli         s8, t2, 24
                  sll          t5, t3, s2
                  nop
                  sra          t0, s0, t5
                  slti         s10, t6, -11
                  c.addi       s9, 28
                  c.sub        a2, a1
                  c.li         a5, -1
                  sll          a7, t2, t1
                  c.srai       s1, 29
                  addi         s3, t3, 691
                  c.lui        s5, 3
                  srli         a2, t3, 20
                  mulhu        s6, zero, a2
                  andi         s10, a0, -629
                  sub          a0, s9, s11
                  addi         s3, s0, 771
                  c.xor        a5, a5
                  sltiu        gp, tp, 2037
                  mulh         s3, s7, zero
                  c.srli       a2, 29
                  remu         t2, a0, zero
                  sll          a7, s9, t0
                  c.and        a3, a0
                  mulhsu       s3, s0, a0
                  sra          s8, s4, s7
                  or           a0, s4, a5
                  divu         t1, s0, ra
                  ori          s9, s6, -719
                  add          s2, t5, t5
                  lui          s3, 620875
                  c.sub        a0, a1
                  divu         a6, t3, ra
                  divu         s3, a5, s1
                  andi         a0, a0, -1001
                  c.lui        a1, 24
                  lui          t2, 639211
                  andi         a5, t3, -226
                  c.srai       a2, 24
                  and          s3, t2, s5
                  sltiu        s2, s10, -411
                  c.addi       t2, 2
                  slti         s4, ra, -71
                  c.addi       t6, 25
                  srl          a0, s2, s11
                  addi         t1, s8, -879
                  nop
                  c.li         s0, -1
                  c.mv         s3, s7
                  slt          s4, a0, s9
                  srl          s2, s2, t4
                  c.or         s0, a5
                  c.srli       s0, 4
                  sub          t6, t3, s10
                  c.li         a6, 23
                  lui          t4, 849317
                  c.add        s2, s1
                  mul          s9, a7, s10
                  srai         s2, a1, 1
                  c.li         s3, -1
                  add          s2, a6, s3
                  slti         t0, t0, -512
                  sll          s0, a7, zero
                  xori         s9, s1, 1696
                  c.nop
                  srli         tp, a0, 9
                  c.or         s0, a0
                  and          ra, s0, a4
                  c.xor        a0, s0
                  mul          t1, a6, a2
                  c.srai       a3, 8
                  addi         zero, s7, 25
                  andi         a1, tp, 1729
                  c.or         s1, a1
                  c.li         t3, 11
                  lui          a5, 959
                  and          t2, sp, s3
                  or           a0, s0, a5
                  remu         s0, s4, s2
                  srl          s1, t1, a4
                  addi         s10, t2, 951
                  c.srli       s0, 17
                  mulhu        t6, zero, s2
                  c.slli       t1, 10
                  c.li         t6, -1
                  ori          s5, s6, -1714
                  c.and        a2, a2
                  nop
                  addi         s9, a4, 1357
                  c.nop
                  slt          s6, a6, zero
                  lui          a6, 950581
                  c.addi       s6, -1
                  c.addi       t1, -1
                  sra          a5, s8, tp
                  lui          a1, 578381
                  sub          t3, s6, t2
                  srai         t6, a6, 2
                  sub          a2, t0, a1
                  remu         a2, t2, t0
                  add          t5, s3, t3
                  div          s3, s10, s11
                  c.andi       s1, -1
                  mul          gp, a2, zero
                  c.sub        a0, a5
                  srl          a0, s9, a4
                  add          t1, s2, s0
                  slti         t2, s8, -455
                  srli         a3, s11, 27
                  xori         s9, t2, -913
                  auipc        a0, 638371
                  mulhsu       s5, s11, t2
                  sub          a1, gp, t2
                  nop
                  c.mv         s5, s10
                  sll          t3, s2, t3
                  ori          s3, t6, -1500
                  lui          a0, 802272
                  nop
                  c.srai       a2, 26
                  c.nop
                  srai         s3, tp, 25
                  sra          s6, s10, s8
                  sub          t3, s6, gp
                  rem          a2, zero, a7
                  c.li         t2, -1
                  nop
                  mul          a1, a4, s7
                  sll          t6, a0, a3
                  sltu         s2, s6, s3
                  nop
                  srl          ra, s2, s8
                  mul          t6, tp, s4
                  add          s10, s9, a1
                  srl          t4, t2, t6
                  auipc        s8, 404081
                  add          s10, s9, a2
                  divu         s4, tp, s0
                  andi         s8, s11, 1346
                  ori          a0, a6, -107
                  lui          a7, 672773
                  mulhu        a5, s3, tp
                  c.nop
                  c.lui        a7, 3
                  c.or         a0, a2
                  sub          s9, s0, a4
                  c.lui        s1, 7
                  c.srli       a3, 21
                  c.add        s10, s5
                  mulh         s8, t0, s1
                  srai         s2, sp, 24
                  xor          a1, s6, s9
                  mul          t3, a0, tp
                  srai         a0, s6, 31
                  c.li         a0, 16
                  slli         a0, a3, 15
                  c.sub        a5, a5
                  nop
                  c.slli       s0, 11
                  srl          a6, t0, a1
                  slti         t0, ra, 1387
                  auipc        s10, 328238
                  xor          t4, gp, s5
                  c.srai       a5, 29
                  divu         a0, s2, s10
                  c.and        a0, a5
                  or           a7, sp, a3
                  slli         a5, s4, 17
                  c.srai       s1, 1
                  c.slli       t2, 8
                  c.lui        ra, 30
                  mulhu        s4, s7, s2
                  c.sub        s0, a2
                  or           t0, s4, a0
                  div          s9, sp, zero
                  c.or         a0, a5
                  sra          s8, t0, zero
                  mulh         t3, s7, t4
                  c.addi       a2, 10
                  c.addi       tp, -1
                  divu         a2, sp, s1
                  xor          t0, t5, s2
                  c.li         s10, 6
                  rem          s9, s9, sp
                  lui          t3, 602792
                  divu         a7, ra, ra
                  and          s8, s4, s8
                  nop
                  sub          t1, a5, t4
                  c.andi       a0, -1
                  add          t5, t1, t4
                  slti         s10, a5, -1037
                  c.add        gp, s1
                  rem          s10, tp, s1
                  lui          t0, 138523
                  srl          a0, a0, s0
                  c.srai       a2, 19
                  c.add        s1, s4
                  slt          zero, a3, t3
                  mul          s2, t3, s4
                  srl          s4, s7, s4
                  and          s4, t4, t2
                  ori          t3, ra, -1534
                  srai         s7, s1, 25
                  nop
                  remu         a1, a0, t3
                  srli         t6, s4, 1
                  mulhsu       a7, sp, a3
                  srl          s4, s2, s0
                  lui          s10, 629961
                  add          t6, zero, tp
                  c.srai       a0, 20
                  auipc        s6, 862669
                  c.sub        s0, a4
                  c.srai       a1, 19
                  slti         s5, s7, 1549
                  mul          t3, s2, a2
                  andi         s10, s0, 865
                  ori          t5, a7, -502
                  c.srai       a3, 10
                  c.andi       a0, 21
                  c.or         a3, a1
                  c.srai       a5, 21
                  lui          ra, 16603
                  c.srai       a0, 9
                  c.lui        t0, 4
                  c.andi       s1, -1
                  xor          tp, a7, a0
                  rem          s2, s2, t4
                  c.xor        a5, a5
                  remu         t1, s3, a7
                  nop
                  addi         s4, t5, 1135
                  c.srli       a0, 10
                  slt          a3, s5, t6
                  ori          t4, s0, -1839
                  sra          s9, s10, ra
                  and          t5, zero, gp
                  lui          a1, 597726
                  slt          s10, s11, sp
                  mul          a3, s10, s3
                  andi         zero, s9, 1249
                  c.slli       s1, 21
                  add          s0, t6, s0
                  sltiu        a0, s9, 24
                  c.xor        s0, a5
                  srl          tp, a2, a1
                  divu         a2, a6, a6
                  mulh         t3, t1, t2
                  c.or         s1, a3
                  sll          s3, s5, a7
                  ori          ra, s9, 1835
                  mulhsu       t2, a2, t6
                  c.nop
                  c.or         a2, a5
                  lui          t0, 778756
                  ori          t1, s7, -1684
                  slti         s9, t5, -699
                  c.sub        a2, a2
                  sltu         t6, t5, s5
                  c.mv         s1, s3
                  divu         s1, t1, s8
                  c.and        a1, a3
                  c.lui        s10, 10
                  and          s8, s9, a1
                  c.nop
                  div          ra, zero, s10
                  mul          t1, s10, s10
                  c.or         s1, a5
                  andi         a0, s5, -825
                  sra          a5, t4, t4
                  or           s6, ra, a3
                  slli         s9, t1, 11
                  srli         tp, a2, 16
                  slt          s6, s1, s6
                  c.srai       a0, 18
                  c.add        a6, t2
                  xor          s5, s8, a4
                  rem          s3, ra, s6
                  sub          gp, ra, t4
                  mulh         gp, s4, s6
                  sub          t1, s6, t2
                  mulhsu       a2, t6, t1
                  addi         s4, s8, 1464
                  c.sub        a0, s1
                  auipc        ra, 137365
                  add          s9, s7, s11
                  srli         ra, sp, 19
                  mulhu        zero, s6, s9
                  sltu         a6, a1, sp
                  andi         a7, s4, -1185
                  slti         t6, t1, -710
                  c.srai       a0, 8
                  auipc        a1, 897896
                  c.and        a2, a5
                  c.and        s0, a2
                  mul          s2, s9, a7
                  sra          s2, tp, gp
                  slti         a0, t3, 749
                  c.and        a1, a1
                  slt          tp, a0, sp
                  add          t5, t1, t3
                  or           a2, a2, t5
                  sub          t1, ra, s3
                  ori          t6, s3, -461
                  sra          gp, t6, s3
                  c.mv         s4, t5
                  sll          a6, s2, a1
                  sltu         a0, t5, gp
                  mulh         s8, tp, a4
                  c.and        s1, a5
                  add          t0, t1, gp
                  srai         a0, s6, 31
                  c.mv         a6, s9
                  auipc        t2, 1035930
                  sll          s10, a1, t3
                  addi         s0, tp, -1604
                  remu         s0, s6, tp
                  divu         a6, s9, s4
                  mulhu        a1, a3, t6
                  srl          s7, s11, t3
                  sltiu        s9, s8, 505
                  slti         a2, t6, -365
                  addi         s2, tp, 1009
                  sub          s10, s11, t6
                  divu         t0, s2, t0
                  or           s4, tp, t2
                  ori          a0, s2, -1673
                  xori         a6, t1, 816
                  sltu         a0, a4, a4
                  mulhsu       gp, t1, s3
                  rem          t0, t4, s1
                  ori          gp, s1, -1848
                  mulhsu       a6, s2, t4
                  c.srli       a0, 8
                  sltu         s1, sp, s0
                  c.nop
                  c.srli       a1, 6
                  xor          a1, t1, s3
                  sub          s0, gp, sp
                  auipc        s2, 716692
                  or           s8, sp, s6
                  andi         a2, s0, -36
                  rem          s8, a5, s10
                  c.srli       a0, 28
                  c.or         a0, s1
                  c.andi       a2, -1
                  c.xor        a5, s0
                  c.nop
                  slli         t4, a2, 20
                  mulhu        t6, a3, s5
                  slti         t6, t0, 350
                  c.xor        s1, s0
                  c.li         t3, -1
                  mulh         a7, s0, s5
                  mulhsu       t0, a2, t6
                  sltiu        a5, s2, -512
                  andi         t1, s5, 691
                  div          a6, s2, a5
                  c.srli       a5, 29
                  c.xor        a0, a0
                  c.andi       s0, -1
                  auipc        t0, 127033
                  c.nop
                  srai         t3, t1, 31
                  mulh         t5, a2, zero
                  c.xor        a5, a3
                  mulhu        t3, a7, s3
                  mulhsu       gp, a7, s7
                  c.nop
                  mul          s0, s0, t1
                  sltu         s2, t0, a3
                  rem          s8, ra, s9
                  andi         a0, t0, 1984
                  or           s5, gp, s11
                  c.xor        s0, a3
                  sltiu        t3, sp, 1364
                  auipc        t0, 1022352
                  andi         a0, a4, -529
                  addi         t2, tp, -463
                  c.add        s10, t0
                  remu         ra, s10, s7
                  div          s3, t3, a0
                  rem          s2, sp, tp
                  xori         s0, a6, 1769
                  c.sub        a2, a3
                  divu         t2, s11, s8
                  c.nop
                  addi         s6, a5, 1108
                  mulhu        a7, zero, s10
                  or           s7, a2, s9
                  sll          a2, a3, a7
                  sra          s4, ra, s0
                  or           a5, t2, a2
                  nop
                  xor          zero, s0, t5
                  andi         t2, gp, -1977
                  c.or         s0, s1
                  mul          t2, a6, s1
                  c.andi       a5, 17
                  mulhu        s9, t3, t1
                  srli         s8, s8, 13
                  xor          zero, t5, tp
                  c.or         s0, s1
                  ori          t1, s7, 185
                  c.or         s0, a4
                  c.andi       a5, -1
                  c.lui        gp, 6
                  srl          s1, s4, s4
                  c.xor        a3, a0
                  andi         a1, t5, 1876
                  mulhsu       s4, t0, a4
                  c.sub        s1, s0
                  c.andi       a0, -1
                  c.slli       s10, 5
                  c.srli       s1, 31
                  divu         a5, s11, s5
                  nop
                  sll          s5, s2, s8
                  srli         s2, a2, 16
                  c.sub        a1, a3
                  addi         t1, a6, -1011
                  or           t2, sp, zero
                  srli         s8, s11, 15
                  c.slli       ra, 4
                  c.add        s7, a2
                  xori         s4, t1, 709
                  mulh         t2, gp, t0
                  c.srai       a1, 8
                  slti         t5, t6, -974
                  div          zero, s5, s5
                  sub          s10, s1, sp
                  srli         s1, s4, 23
                  c.slli       a6, 6
                  c.slli       a3, 23
                  sll          a6, a0, a0
                  auipc        s2, 644122
                  c.addi       a0, 3
                  c.slli       a2, 27
                  c.sub        a0, s1
                  sltu         t4, gp, a0
                  slt          s8, t0, t2
                  c.nop
                  c.slli       ra, 29
                  xor          t5, a2, a7
                  slti         t5, tp, 1027
                  addi         a5, a2, 377
                  xori         t4, s5, 1598
                  div          s10, t4, t3
                  divu         a2, a7, t4
                  c.nop
                  sub          a2, a0, s9
                  sltiu        a3, a6, 1103
                  sltu         s1, ra, s2
                  srai         s9, t0, 7
                  mulhsu       s0, s2, s7
                  c.lui        tp, 29
                  or           gp, a2, sp
                  c.and        a3, a4
                  and          a1, s9, t6
                  c.sub        a2, a3
                  lui          s10, 789157
                  c.xor        a2, a3
                  sltiu        t5, t2, -175
                  slt          s3, a4, t6
                  sra          t6, ra, a0
                  srl          t1, s9, a6
                  sltu         s0, s7, s8
                  andi         s10, t6, 604
                  auipc        s8, 542951
                  sltiu        t3, s5, 76
                  and          gp, t5, a0
                  c.nop
                  c.lui        t3, 30
                  c.lui        s9, 22
                  mulhsu       a0, s2, a6
                  c.srai       a2, 7
                  ori          a3, s4, 1050
                  c.srai       a0, 18
                  sltu         s1, s6, s6
                  c.slli       t5, 6
                  c.add        t0, s4
                  remu         s0, t4, ra
                  sltu         t1, s5, zero
                  c.sub        s0, a3
                  c.slli       t5, 1
                  sltiu        t3, gp, -1122
                  c.or         a2, a2
                  c.srli       a2, 15
                  slt          gp, a0, s11
                  c.nop
                  remu         a6, t1, a3
                  c.slli       tp, 3
                  div          a6, s3, s0
                  c.or         a2, a4
                  sub          zero, s1, a3
                  c.and        a5, a1
                  or           tp, a3, a2
                  sra          s8, s3, a1
                  slt          s6, t6, ra
                  c.xor        s1, s0
                  and          t1, a1, a4
                  c.srli       a3, 7
                  c.mv         s4, a6
                  c.or         s1, a0
                  sltiu        gp, s3, 2031
                  addi         a2, ra, 1478
                  mulhsu       t3, a2, t0
                  c.and        a0, a1
                  c.slli       s3, 25
                  rem          t1, s3, s7
                  mulhsu       s3, s8, s9
                  ori          a5, a4, 47
                  c.nop
                  slli         s2, s10, 20
                  srli         a5, t2, 4
                  xor          s0, s10, a6
                  remu         s1, s3, s8
                  c.mv         s0, s5
                  and          a3, a1, t3
                  c.li         s4, 5
                  andi         s8, a1, 2019
                  c.slli       s10, 6
                  c.and        s1, s0
                  c.lui        s9, 8
                  sltiu        t1, a4, 1468
                  c.addi       s2, 2
                  srli         a1, s6, 0
                  c.add        t6, a4
                  auipc        s5, 708286
                  c.li         s7, 8
                  mulh         t2, t2, s6
                  c.xor        s0, a1
                  andi         t1, s2, 801
                  add          s5, s8, s8
                  xori         tp, s3, 462
                  srli         t5, s0, 19
                  c.srai       a5, 4
                  slt          tp, s11, s10
                  divu         a6, t4, sp
                  c.xor        s0, a0
                  sll          s4, a6, s1
                  sub          s3, sp, s2
                  sltu         a1, s1, s1
                  slli         tp, t6, 9
                  mul          a3, s6, zero
                  srai         s10, a6, 1
                  mulh         s4, t6, s9
                  c.nop
                  and          s8, s9, sp
                  c.and        s1, a4
                  c.nop
                  div          a5, s5, a6
                  srai         ra, s6, 18
                  mulhsu       t0, s2, s11
                  addi         a1, s11, 1824
                  mulhu        a2, s10, a0
                  add          s9, s0, gp
                  c.andi       a0, -1
                  c.or         a2, a4
                  c.andi       a1, -1
                  xor          s5, s11, t2
                  c.nop
                  lui          s2, 583826
                  c.srai       a2, 16
                  rem          s4, gp, s8
                  c.li         t2, 3
                  ori          a5, gp, 895
                  c.andi       a2, 3
                  ori          s5, tp, -37
                  c.srai       a1, 27
                  c.mv         t5, s7
                  c.or         a1, a4
                  xor          s3, a7, s2
                  sll          s6, ra, s7
                  c.sub        a0, a4
                  sub          s9, sp, a6
                  remu         tp, s5, s1
                  c.and        a1, a1
                  c.sub        a5, a3
                  sltiu        t5, t3, 283
                  lui          a1, 800959
                  c.and        s0, a3
                  xori         t2, s7, 150
                  c.addi       t4, 4
                  rem          t4, a1, a0
                  nop
                  c.srai       a1, 17
                  c.srli       a2, 26
                  addi         t5, a1, 1723
                  c.addi       s8, 4
                  xori         s2, a0, -1415
                  mul          a1, t1, a6
                  sub          a5, s1, a1
                  c.slli       t1, 24
                  rem          s6, s8, a7
                  nop
                  c.andi       a3, 6
                  c.mv         a2, s5
                  mulhsu       s0, s4, a1
                  c.mv         s9, ra
                  div          t1, s0, t0
                  auipc        ra, 450292
                  auipc        t6, 236366
                  c.add        a2, a4
                  or           s6, s8, s8
                  andi         a1, zero, 1012
                  lui          s9, 856951
                  sltiu        s10, t3, 1552
                  c.lui        t0, 12
                  mulh         a6, a6, t4
                  sltiu        a1, s2, -836
                  div          s10, sp, a1
                  sll          s1, t4, s4
                  sub          t0, s1, a7
                  c.srli       a2, 26
                  c.li         t4, 2
                  auipc        s9, 59432
                  sltiu        a1, s2, -1930
                  auipc        s4, 377077
                  c.andi       a2, -1
                  xor          gp, t5, s1
                  c.lui        t5, 13
                  c.lui        gp, 19
                  xor          s3, s4, ra
                  srai         s1, s6, 2
                  or           s9, s4, s9
                  sll          s7, a4, t2
                  xor          gp, a1, a0
                  mulh         a1, s6, ra
                  sra          s1, s0, t6
                  lui          t2, 233059
                  auipc        s3, 733409
                  lui          ra, 147253
                  srli         t4, s0, 14
                  add          t6, t0, s11
                  c.nop
                  mul          s5, s4, s7
                  sll          t1, t4, t0
                  sll          s8, t6, t4
                  srai         s5, a0, 5
                  srli         t0, s8, 11
                  sltiu        s4, t3, -231
                  nop
                  c.or         s1, a5
                  sra          a3, s7, sp
                  sltiu        s4, tp, -1881
                  c.li         s2, -1
                  andi         s1, a4, -961
                  mulhu        s3, s11, tp
                  c.sub        a5, a3
                  add          a1, s11, t4
                  c.andi       a0, 12
                  c.mv         s10, a7
                  div          a3, s7, a0
                  srai         ra, t4, 13
                  c.srai       s1, 28
                  div          s6, s11, sp
                  lui          t1, 611361
                  mulhsu       t0, s2, ra
                  remu         t0, s4, a4
                  c.srli       a2, 8
                  c.xor        a3, s1
                  c.addi       t5, -1
                  and          a5, a3, a3
                  c.xor        a0, a0
                  rem          t1, zero, s6
                  rem          zero, a4, a7
                  c.slli       s8, 18
                  addi         s4, s2, 641
                  auipc        s4, 713654
                  nop
                  add          s0, t2, s11
                  c.andi       a1, 15
                  remu         gp, s11, a5
                  xor          a7, sp, t1
                  andi         t6, t4, -1909
                  nop
                  c.sub        a2, s1
                  remu         t1, a6, a1
                  c.srli       a5, 17
                  c.mv         s5, s9
                  mulhu        a3, ra, s0
                  c.addi       s3, -1
                  c.and        a3, a5
                  add          s8, a2, t4
                  srl          a3, s11, s2
                  srai         t1, gp, 7
                  c.mv         s9, s9
                  mulh         s1, s6, t5
                  divu         s7, s8, t5
                  srl          s9, gp, zero
                  or           t6, s10, ra
                  add          s1, s9, s1
                  or           t5, s8, t3
                  slli         gp, s5, 18
                  or           s6, t3, s10
                  slt          t6, a0, s5
                  mulhu        t3, a1, t3
                  c.slli       tp, 19
                  divu         s2, s11, ra
                  sub          tp, ra, a1
                  c.nop
                  andi         a2, t3, 1592
                  lui          t2, 368139
                  c.addi       s10, -1
                  add          s8, s11, t4
                  xori         zero, s1, -1001
                  slli         ra, s11, 12
                  srl          t1, s11, t1
                  c.slli       s7, 30
                  mulhsu       a5, s1, t6
                  ori          t6, s7, 1510
                  div          s5, t6, tp
                  c.slli       t1, 26
                  rem          ra, a2, s3
                  c.srai       a5, 6
                  mulh         a7, ra, s7
                  slli         s2, t0, 16
                  c.li         s4, 30
                  c.mv         s1, t0
                  mulh         zero, tp, s9
                  c.or         s1, a3
                  c.xor        a3, a2
                  divu         s8, t0, a2
                  divu         t4, a3, t1
                  mul          s7, a6, zero
                  auipc        t5, 177511
                  c.lui        s10, 26
                  mulhu        t0, s9, sp
                  addi         gp, s9, 1115
                  mulhsu       t0, s1, tp
                  sltu         tp, t6, t2
                  divu         t5, s11, s6
                  c.lui        s1, 26
                  slli         t4, zero, 13
                  add          gp, t1, a5
                  mul          t6, s7, gp
                  rem          s3, s2, a5
                  or           a1, a4, t2
                  sll          a3, a4, zero
                  srl          a0, a3, a0
                  andi         a5, t2, 1113
                  slti         tp, s6, 1383
                  mulhsu       s4, t4, s0
                  mulh         s8, t2, s0
                  c.li         gp, 26
                  or           a1, t6, t6
                  div          zero, a3, s9
                  c.slli       t1, 24
                  srli         s9, t2, 7
                  mulhu        t4, s11, s10
                  c.andi       a0, 21
                  c.sub        a1, s1
                  c.mv         s1, tp
                  mulh         t1, a6, a0
                  c.lui        a1, 21
                  c.srai       a5, 29
                  mulh         a2, s1, t1
                  sltu         s4, t3, gp
                  lui          tp, 1003232
                  c.andi       a2, -1
                  c.srai       s1, 29
                  mul          a7, a4, a5
                  c.or         a3, a0
                  c.nop
                  xori         s3, s3, 340
                  sltu         t2, s0, zero
                  rem          s5, t0, ra
                  andi         s10, tp, -834
                  xori         s9, a3, 1196
                  srli         gp, ra, 14
                  and          a0, zero, s7
                  c.xor        a0, a3
                  add          t5, a5, a1
                  or           a1, a3, t3
                  divu         gp, s8, t2
                  and          s9, s1, gp
                  add          a5, sp, s8
                  rem          s5, a7, s0
                  c.xor        a3, a2
                  c.srli       a3, 1
                  xor          s3, a2, gp
                  srai         a1, t4, 29
                  c.or         a3, a2
                  c.andi       a2, 31
                  and          s5, s10, s9
                  mulh         s6, a5, ra
                  nop
                  c.or         a1, a3
                  c.srai       s0, 27
                  c.add        a6, s5
                  slti         a0, zero, -1434
                  rem          t3, a3, s3
                  c.andi       a5, 30
                  div          t0, s3, a4
                  auipc        s9, 262186
                  xor          s2, a0, t0
                  slti         a2, a7, 1489
                  c.and        a1, a1
                  c.or         a5, a2
                  srai         s3, s8, 11
                  lui          s8, 615334
                  addi         a7, s0, -363
                  remu         t0, s1, a2
                  slli         t4, s9, 24
                  remu         t2, a7, a1
                  sra          a0, s6, s10
                  slti         a2, gp, 610
                  c.mv         s8, sp
                  rem          a7, s3, s11
                  rem          a0, a2, gp
                  srl          s10, a6, s2
                  sll          s3, s4, s10
                  srai         t5, t0, 2
                  divu         t2, s7, a3
                  and          zero, tp, s6
                  xor          t1, s6, a3
                  divu         t1, t0, t3
                  c.lui        s1, 11
                  srai         t5, s2, 9
                  sltu         t3, t6, t4
                  remu         t6, a5, s7
                  andi         t1, a5, -527
                  mulhsu       a1, s8, t2
                  mulhu        s9, zero, gp
                  nop
                  c.sub        a5, a2
                  auipc        t2, 194504
                  c.add        gp, t3
                  sltiu        a3, t6, 268
                  c.srai       a0, 8
                  and          s0, a0, a1
                  auipc        a6, 47438
                  slti         gp, sp, 415
                  mulh         s8, s9, t4
                  xori         gp, s5, -1954
                  mul          ra, t5, s11
                  c.andi       a0, 24
                  c.or         a0, a1
                  c.mv         ra, s0
                  c.xor        a0, a0
                  srai         s8, s9, 14
                  c.nop
                  and          s10, t0, s4
                  srli         a1, a5, 6
                  slti         tp, tp, -2010
                  mulhu        t1, s4, a3
                  srli         t3, a5, 0
                  c.andi       s0, -1
                  c.and        a3, a0
                  nop
                  c.srai       a0, 4
                  srl          s7, s3, tp
                  c.lui        s3, 6
                  andi         gp, a0, -1092
                  slti         s10, s3, -1776
                  addi         a6, a3, 359
                  lui          t6, 741381
                  sltiu        gp, s5, 621
                  c.lui        s2, 18
                  c.srli       a0, 15
                  srli         s3, t1, 11
                  srai         zero, s8, 21
                  sub          s2, a7, t0
                  and          t3, s5, t3
                  srli         s3, t4, 5
                  slti         t5, s1, -849
                  lui          zero, 831142
                  nop
                  srai         tp, t4, 16
                  remu         a2, a7, s7
                  mulhu        s10, a5, s5
                  lui          s0, 676919
                  c.add        s6, a5
                  c.add        s5, tp
                  add          s9, a2, a3
                  c.andi       s0, -1
                  mulhsu       s5, a0, t0
                  addi         t1, a5, -1862
                  c.addi       s0, 17
                  ori          gp, s2, -721
                  srl          ra, a4, t1
                  srai         t4, s2, 14
                  mulhu        a6, s6, s4
                  xori         a1, s4, 435
                  ori          s9, s4, 1211
                  slli         a7, s3, 6
                  div          a0, s1, s3
                  sub          zero, t0, tp
                  auipc        t5, 251423
                  mulh         a0, t4, a4
                  mul          s4, s3, s0
                  c.mv         s4, a3
                  mulh         s2, s4, s8
                  slti         s9, a0, -996
                  srl          s4, sp, t5
                  sltu         a7, zero, s2
                  c.mv         s3, t2
                  addi         ra, a2, 1537
                  c.srli       a3, 26
                  lui          gp, 337076
                  c.srli       s0, 1
                  mulh         s9, a7, s2
                  c.mv         s3, s3
                  mulh         s8, s8, t6
                  nop
                  slt          zero, s6, t4
                  rem          t1, a2, a4
                  remu         s7, a0, s8
                  nop
                  addi         t0, s0, 209
                  slli         t1, s2, 14
                  mul          s2, a5, a1
                  mulh         a0, s4, s10
                  c.and        a3, a1
                  rem          s3, a5, s8
                  xori         s8, t3, -1076
                  lui          gp, 1035250
                  add          t3, s0, s11
                  c.mv         t6, s8
                  remu         s10, s0, ra
                  divu         s7, a6, s11
                  slt          s1, s0, t5
                  sll          s1, s1, s10
                  sll          s1, s7, s9
                  mul          s10, s2, s7
                  c.srli       s1, 31
                  c.srli       s1, 22
                  c.nop
                  c.andi       a3, -1
                  div          s9, s4, t0
                  c.li         tp, -1
                  c.and        a1, s0
                  mulhsu       s1, t1, tp
                  add          s4, s9, a7
                  c.lui        s10, 23
                  xori         s0, ra, -641
                  c.or         a2, a1
                  c.add        s6, a5
                  slli         a6, a4, 8
                  c.or         s0, s0
                  c.xor        a2, a1
                  remu         s3, s5, a4
                  lui          s1, 177457
                  srli         a0, gp, 6
                  divu         s8, s9, a3
                  slti         t5, a3, -616
                  mul          gp, a1, a3
                  mulh         t5, a7, ra
                  nop
                  c.mv         tp, a3
                  ori          s6, s6, -279
                  and          gp, tp, s1
                  ori          a3, s11, -1889
                  add          tp, s3, a1
                  sltiu        a0, t0, 2004
                  c.nop
                  srli         zero, t4, 13
                  c.li         s2, -1
                  div          a5, sp, s3
                  mul          t4, s10, s4
                  slti         zero, s10, 791
                  c.slli       s10, 21
                  c.slli       ra, 1
                  c.add        t3, s3
                  c.or         s1, a5
                  srli         s7, a6, 11
                  c.srai       a3, 27
                  c.nop
                  div          t3, t6, t2
                  mulhsu       t6, gp, t3
                  slli         a6, a2, 24
                  c.lui        s7, 6
                  or           s7, sp, tp
                  c.mv         a0, s0
                  slli         ra, sp, 23
                  addi         t1, s10, -122
                  c.li         a6, -1
                  c.li         s10, -1
                  mulh         s7, s2, s7
                  lui          s10, 154464
                  c.and        s0, a3
                  c.sub        s1, a4
                  c.srli       a0, 31
                  or           s2, a0, t0
                  c.add        s1, a1
                  add          t1, ra, sp
                  c.mv         a6, s4
                  remu         a0, tp, a3
                  slt          s0, tp, s11
                  xor          a2, a3, s6
                  mul          ra, t5, a2
                  c.lui        s1, 25
                  xor          t0, s1, t3
                  mulhu        ra, a4, a7
                  xor          zero, a3, tp
                  lui          s9, 185807
                  auipc        s2, 56383
                  c.andi       a1, 7
                  sll          s5, s11, tp
                  sltu         ra, a6, s6
                  andi         a6, tp, -1899
                  remu         zero, t5, a0
                  auipc        tp, 630949
                  c.mv         t0, t4
                  add          ra, a4, t4
                  mulhsu       a0, a6, t5
                  c.xor        a2, s1
                  c.li         a7, 6
                  mulhsu       tp, gp, s8
                  c.add        gp, s11
                  sra          a5, a7, s6
                  c.li         s8, -1
                  sltiu        a0, a7, -1972
                  divu         gp, a3, tp
                  c.lui        s9, 2
                  add          s10, tp, t4
                  xor          s4, t4, a2
                  addi         s7, a0, -2014
                  slt          s9, s3, a7
                  nop
                  c.mv         t4, s1
                  divu         s6, tp, s10
                  sltu         a0, t1, t6
                  rem          s9, t1, t6
                  div          t1, zero, a7
                  and          s3, t2, a3
                  xor          s2, a7, a5
                  andi         a2, s6, -1048
                  ori          s0, a3, -1198
                  or           t4, s4, a5
                  c.or         a1, s1
                  and          a7, a2, a2
                  or           a5, s7, s8
                  mulhsu       s10, a5, s4
                  c.slli       gp, 26
                  sltiu        ra, s11, 1088
                  c.add        a3, s7
                  slti         s8, s1, 1335
                  c.andi       a0, -1
                  c.li         s10, 23
                  mul          a0, gp, a5
                  c.slli       a5, 11
                  c.srli       a5, 13
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a5, 0xadf0fb99
                  li           ra, 0x0
                  li           s2, 0xffffffff
                  li           s9, 0x80000000
                  li           s10, 0xd4f7a2d4
                  li           s7, 0x0
                  li           s0, 0x8e1b0857
                  li           gp, 0x1ddd5fd6
                  li           a3, 0x80000000
                  mulhsu       s2, s0, gp
                  auipc        a1, 689042
                  div          a5, s9, ra
                  add          a1, gp, s0
                  addi         a3, s0, -60
                  sub          a1, s0, gp
                  mulhsu       s9, gp, a3
                  add          s9, ra, ra
                  mulh         s10, s10, s9
                  rem          s2, s9, gp
                  divu         s0, a3, a3
                  remu         s9, a3, s9
                  mul          s10, s0, gp
                  mulhsu       s7, s9, gp
                  lui          s10, 275350
                  nop
                  div          s0, s0, s10 #end riscv_int_numeric_corner_stream_5
                  mulhsu       s2, t6, a0
                  sltiu        t1, t3, -286
                  or           t4, a4, s1
                  c.addi       t1, -1
                  sub          t0, a2, t0
                  c.li         s7, 10
                  sub          t0, ra, t3
                  slli         a6, s6, 3
                  c.andi       a5, -1
                  addi         s8, s6, -2031
                  c.mv         s6, t1
                  remu         s0, s6, zero
                  xor          s4, tp, s8
                  add          tp, a0, a7
                  srai         s9, s4, 4
                  add          t1, a3, a7
                  sltiu        t0, s2, -865
                  lui          s8, 798963
                  divu         gp, ra, s8
                  div          s8, s3, a0
                  c.sub        a1, s0
                  slt          a3, a5, a1
                  sra          s2, s8, s11
                  mulhu        s2, s1, a3
                  srai         t2, s1, 20
                  c.li         a2, -1
                  srli         t1, a6, 21
                  mulhsu       t4, s6, a0
                  c.mv         s2, s1
                  remu         a3, t4, s1
                  andi         a2, a3, -999
                  mulhu        s6, a7, s5
                  srl          a0, a3, s0
                  c.andi       a1, 29
                  or           t5, s3, a2
                  sltu         a1, s3, s6
                  mulhsu       s8, t1, s9
                  c.li         t1, 21
                  sltiu        a0, s8, -1503
                  sub          a0, a6, s1
                  auipc        s2, 605636
                  srl          a0, zero, t3
                  slli         t0, a0, 4
                  remu         a0, s6, a2
                  mulh         s7, ra, a4
                  mulhu        tp, s0, s7
                  xori         ra, a0, 504
                  or           a3, sp, a5
                  sra          t4, s1, a7
                  srl          t3, ra, t2
                  nop
                  mulhu        t0, t3, t1
                  c.srai       a1, 18
                  sltiu        a7, a4, -1806
                  c.andi       a2, -1
                  sltiu        a7, gp, 1951
                  c.nop
                  lui          t4, 82456
                  sltu         gp, tp, a1
                  sub          a6, a1, zero
                  mulh         zero, s4, sp
                  c.srli       a2, 15
                  c.lui        a7, 15
                  andi         t1, a0, 429
                  xor          s2, a1, s2
                  xori         t3, s11, 1162
                  or           a2, s1, s2
                  c.addi       s5, -1
                  mulh         s9, a2, s3
                  c.srai       a0, 10
                  remu         t1, tp, a4
                  c.slli       a0, 13
                  div          s7, t4, s7
                  div          s4, t3, t5
                  c.andi       a5, -1
                  slti         s5, s4, 823
                  rem          a5, a3, t4
                  mul          ra, ra, ra
                  rem          s4, a7, t6
                  c.srai       a1, 3
                  slt          zero, a3, zero
                  sll          a7, s6, tp
                  addi         t2, s7, 43
                  c.andi       a0, 8
                  andi         s4, zero, -1619
                  ori          s7, s4, -2014
                  c.srai       a3, 30
                  c.srli       s1, 18
                  c.mv         s8, s6
                  xor          s7, gp, t5
                  ori          s1, s1, 1327
                  and          s6, s7, zero
                  c.sub        a3, a0
                  srl          t3, t4, t4
                  c.mv         t1, sp
                  c.or         s1, s0
                  c.mv         t2, a2
                  c.sub        a2, a2
                  c.li         s7, 26
                  mulhu        a0, s2, sp
                  c.and        a2, a2
                  sub          s10, tp, a5
                  srai         ra, gp, 7
                  c.add        s0, s3
                  mulhu        t5, s11, ra
                  c.li         t1, -1
                  mul          a1, s2, zero
                  srli         s8, s1, 11
                  srai         s9, tp, 22
                  sltiu        a5, t1, 1315
                  c.slli       t0, 21
                  c.sub        a1, a2
                  sltu         a2, s3, a0
                  c.and        s0, a3
                  sra          s1, s3, s2
                  c.li         gp, 14
                  c.srai       a5, 30
                  mulhu        zero, t2, t5
                  sub          a5, a3, s2
                  sra          t4, zero, a6
                  c.nop
                  and          s8, gp, s9
                  sll          s4, a6, a3
                  remu         a5, t3, a4
                  or           s1, s9, s8
                  c.mv         a2, s7
                  slt          t5, zero, t3
                  sub          s2, s7, t6
                  c.lui        s3, 22
                  c.add        t5, a4
                  c.lui        t0, 18
                  c.or         a2, a4
                  c.add        s8, a5
                  mul          gp, s6, t2
                  c.li         s4, 5
                  lui          t0, 161280
                  mul          tp, a1, t5
                  and          s3, a6, s2
                  mulhu        a7, a6, a7
                  ori          tp, s8, -259
                  c.sub        a1, s1
                  xor          t0, s8, t4
                  c.srli       a5, 23
                  c.add        s4, s2
                  c.andi       s0, -1
                  c.sub        a2, a4
                  rem          t6, s11, t5
                  slli         tp, s3, 17
                  div          a1, t5, s8
                  slt          a6, t4, a7
                  sltiu        s10, t2, -1484
                  xori         s5, t5, 1578
                  slt          a7, s2, a2
                  c.xor        a2, s1
                  mulhsu       s3, t3, t3
                  xori         t3, a7, -941
                  c.srai       a2, 25
                  remu         s10, t5, a0
                  sltu         a1, t5, t1
                  slti         t2, a5, -1853
                  slli         s2, s9, 20
                  li           t5, 0xbc2722eb #start riscv_int_numeric_corner_stream_0
                  li           a7, 0xffffffff
                  li           a5, 0x80000000
                  li           t2, 0x80000000
                  li           a0, 0x0
                  li           s7, 0x80000000
                  li           s4, 0x0
                  li           t1, 0xffffffff
                  li           t4, 0xffffffff
                  li           t6, 0xffffffff
                  rem          a5, s7, s7
                  mulhu        t4, a5, t5
                  mulhu        t1, t6, t2
                  mulh         t2, t4, t6
                  mulhsu       t5, a0, t6
                  auipc        a5, 184985
                  auipc        a7, 564875
                  addi         t5, a7, 1686
                  div          a7, t2, a7
                  mul          a0, t4, s4
                  div          a5, a5, t4
                  mulhu        a7, t6, t5
                  add          a0, t4, s7
                  lui          a0, 983222
                  nop
                  lui          a7, 232384 #end riscv_int_numeric_corner_stream_0
                  mulhu        s7, zero, a1
                  srli         s3, s11, 30
                  slli         t1, s4, 4
                  slt          tp, s6, s5
                  andi         s5, t0, 1850
                  remu         t5, a1, a6
                  sll          t2, zero, gp
                  c.lui        ra, 2
                  c.andi       s1, -1
                  and          s1, s11, a3
                  div          t5, a3, t1
                  xori         s2, gp, 628
                  c.and        a3, s1
                  divu         s3, s10, s5
                  remu         zero, a2, t2
                  sltu         s10, ra, s8
                  c.addi       a7, 30
                  c.addi       s4, 29
                  auipc        a5, 286567
                  slti         s4, t4, 1887
                  and          a7, gp, s8
                  xori         zero, a6, 649
                  nop
                  sltu         zero, t6, sp
                  c.srli       a3, 21
                  sll          s8, s9, a7
                  sub          s3, t4, t5
                  c.sub        s0, s0
                  slti         t5, s11, 256
                  c.and        a2, a3
                  sra          a7, t4, s4
                  c.srai       a2, 13
                  c.add        a6, tp
                  and          tp, t3, a3
                  c.addi       s7, -1
                  slli         s6, gp, 25
                  nop
                  srai         s5, a1, 8
                  remu         s0, a0, t2
                  rem          s7, zero, s11
                  auipc        a6, 176431
                  c.slli       tp, 5
                  xor          s4, a2, t1
                  nop
                  or           s2, s10, s7
                  mulhsu       t1, a2, s7
                  c.lui        t6, 7
                  srl          gp, a3, sp
                  c.slli       gp, 7
                  slt          a0, s9, s11
                  mul          s9, a1, t2
                  sra          t2, sp, a5
                  sub          a7, s6, t3
                  add          s9, a7, s9
                  c.andi       a2, 0
                  srli         s9, t5, 30
                  div          s6, t3, s2
                  mul          t3, s9, sp
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s9, 0xffffffff
                  li           s8, 0x0
                  li           s2, 0xffffffff
                  li           s1, 0x80000000
                  li           s10, 0x0
                  li           a7, 0x1c9f323c
                  li           t0, 0x80000000
                  li           a3, 0x0
                  li           t1, 0xffffffff
                  divu         s7, t1, a3
                  addi         t0, s9, 479
                  divu         a3, s9, s1
                  mul          a7, s7, s7
                  mulhu        t1, t0, s10
                  div          s2, s9, s1
                  remu         t0, a3, t1
                  remu         s7, s8, s7
                  remu         t0, s8, a7
                  mulh         t0, s10, t1
                  mulhu        s8, s8, s10
                  mulh         t1, s7, s9
                  rem          t1, s9, t1
                  mul          s10, a7, s7
                  auipc        s9, 535765
                  mulhu        s8, s10, t0
                  mulhu        a3, a7, a7
                  divu         s8, a7, s1 #end riscv_int_numeric_corner_stream_4
                  srai         t4, t5, 2
                  srai         s2, s2, 2
                  c.srai       s0, 30
                  c.lui        t3, 7
                  slt          s4, gp, s5
                  c.srai       a1, 21
                  addi         s1, s10, -172
                  nop
                  slt          t4, s2, tp
                  c.lui        t4, 5
                  nop
                  nop
                  nop
                  auipc        s2, 270203
                  slli         s3, zero, 16
                  c.li         a7, 7
                  andi         a6, ra, 346
                  divu         t3, s6, t6
                  add          s7, t6, a6
                  c.andi       a2, 0
                  c.lui        s6, 4
                  rem          t3, s6, ra
                  nop
                  c.add        ra, s3
                  xori         t1, s11, 1048
                  c.sub        a3, a1
                  srai         t6, s1, 28
                  mul          s0, a0, a6
                  mul          a0, t2, s1
                  xori         s9, a4, -920
                  remu         s8, a3, s11
                  remu         t3, t4, a1
                  c.and        s1, a3
                  c.and        a5, a5
                  nop
                  ori          s0, sp, 1892
                  addi         gp, s1, 2005
                  andi         tp, t6, 516
                  c.sub        s0, a5
                  slt          a2, t1, s1
                  lui          ra, 877335
                  sltiu        s6, t1, -124
                  c.nop
                  c.and        a5, a3
                  c.mv         t6, s4
                  div          s1, sp, ra
                  c.lui        a2, 15
                  slli         a1, t6, 4
                  c.andi       a2, 9
                  auipc        s8, 939510
                  slt          a7, a3, a1
                  sra          a5, s9, t2
                  ori          s4, s8, -718
                  slt          a1, zero, a6
                  slti         s6, s11, 1492
                  and          a3, zero, s4
                  or           s3, tp, gp
                  c.srai       a0, 29
                  auipc        ra, 193570
                  andi         t4, t0, -1286
                  c.xor        a2, a2
                  c.srli       a5, 16
                  rem          s9, gp, gp
                  c.and        a3, a1
                  xor          a6, t6, t1
                  sltu         t2, s2, s9
                  andi         t1, t6, -1925
                  sra          s5, gp, tp
                  sll          s6, s5, s9
                  srli         t5, t5, 26
                  add          zero, zero, s0
                  sra          t1, s3, s3
                  addi         s0, t4, 314
                  sra          s7, s4, zero
                  add          t4, a0, tp
                  c.nop
                  nop
                  addi         ra, s2, 676
                  sub          t2, a7, s7
                  c.xor        a5, a1
                  mulhsu       s3, s4, ra
                  nop
                  div          t1, gp, s6
                  mulhu        a6, s6, s2
                  srl          t5, s0, s6
                  c.nop
                  lui          s8, 215066
                  c.srai       a0, 28
                  c.or         s0, a2
                  mulhu        a5, s1, s2
                  auipc        tp, 154070
                  and          t4, s6, ra
                  srl          t0, t4, s2
                  or           zero, s0, t1
                  c.srli       a5, 4
                  srl          s6, s3, t4
                  andi         s6, t4, 40
                  c.nop
                  mul          s3, t2, t2
                  and          s0, sp, zero
                  c.and        a0, a5
                  sltiu        a7, a0, 1546
                  srai         s0, a4, 2
                  mulhsu       s5, t0, t3
                  slti         ra, a0, -679
                  lui          a7, 679117
                  nop
                  addi         t3, s0, 1514
                  mul          zero, zero, t4
                  c.and        s0, a1
                  c.li         a1, -1
                  c.xor        a5, a4
                  c.mv         ra, a5
                  sltiu        a3, a0, 880
                  addi         t6, t6, -1827
                  c.nop
                  xor          s9, t0, s9
                  c.li         s6, -1
                  sltu         a6, s9, a5
                  mulhu        t3, s6, a5
                  mulh         s2, s1, t2
                  slli         t0, s2, 12
                  sub          s5, a1, t4
                  nop
                  auipc        gp, 267452
                  c.srai       a0, 20
                  xor          gp, t2, a1
                  div          t5, s8, t4
                  srl          a1, t1, gp
                  xor          gp, s3, sp
                  slli         a2, a6, 15
                  c.sub        s1, a5
                  c.xor        a3, a4
                  srai         s0, t6, 12
                  slt          s5, a7, a6
                  c.slli       t2, 28
                  xor          ra, t0, tp
                  mulh         a1, s2, t1
                  rem          s10, s4, sp
                  c.xor        a2, a3
                  c.add        s0, s2
                  nop
                  c.slli       a0, 9
                  andi         ra, a2, 1281
                  c.srli       a5, 11
                  auipc        t4, 140181
                  lui          t2, 944889
                  srli         s10, s0, 28
                  c.mv         s6, t4
                  mulhsu       t6, s8, s5
                  c.and        a1, a1
                  c.add        s0, s0
                  and          s6, s4, s4
                  addi         a3, sp, -1149
                  c.mv         t0, s4
                  mulhsu       t4, ra, s4
                  c.slli       ra, 26
                  mulhu        a1, s4, a2
                  remu         s1, a1, a0
                  srli         ra, t5, 28
                  auipc        s0, 862800
                  c.sub        a3, s0
                  c.srai       a5, 9
                  div          s2, tp, gp
                  addi         s7, s4, -1376
                  c.sub        s1, a4
                  nop
                  nop
                  slt          a6, s8, s8
                  lui          a5, 418239
                  nop
                  or           a2, a1, s3
                  mulhsu       t0, s0, s8
                  srli         gp, s9, 25
                  c.nop
                  sltu         s7, s6, s8
                  addi         a6, a3, -574
                  c.or         a0, a0
                  c.srli       a3, 19
                  c.sub        a0, a2
                  mulh         a5, t2, t6
                  slti         a2, a3, 1476
                  srai         s9, a7, 28
                  srli         s7, zero, 6
                  c.andi       a3, -1
                  sll          s7, s0, s6
                  sltu         s3, a0, s6
                  c.or         a2, s1
                  sra          s7, t1, a4
                  slli         zero, s1, 26
                  c.srli       a3, 5
                  addi         a5, s5, -811
                  c.and        a3, s0
                  srli         a3, tp, 9
                  sltiu        s9, s11, -703
                  mul          s1, a6, s9
                  c.and        a0, s0
                  c.slli       ra, 18
                  c.lui        s4, 31
                  slti         s9, t1, 419
                  sltu         s1, s6, s10
                  xori         s3, s2, -1796
                  mulh         a1, a1, tp
                  mulh         s6, s8, ra
                  c.or         a1, a2
                  sub          t1, gp, a6
                  add          s8, gp, a1
                  add          s0, t3, sp
                  div          a3, a2, t6
                  c.li         s8, -1
                  sra          s5, a1, s4
                  sltu         s4, a1, t2
                  lui          a5, 28778
                  remu         s9, a6, s5
                  c.lui        t6, 15
                  c.andi       s1, -1
                  mulhsu       s10, s6, zero
                  c.srli       s1, 22
                  sltu         zero, a1, s6
                  mulhu        s7, s5, t4
                  c.srai       a0, 27
                  c.slli       s9, 14
                  and          s6, a6, a1
                  c.srai       a2, 7
                  lui          t5, 468214
                  c.addi       t2, -1
                  c.addi       s6, 27
                  c.andi       a1, 23
                  sltu         a2, t2, s6
                  slti         a6, t4, -1164
                  remu         gp, zero, a5
                  c.and        a1, a3
                  c.srli       a0, 10
                  c.slli       gp, 19
                  slli         a6, a7, 22
                  c.srai       s0, 27
                  slti         a5, t4, -902
                  slti         s0, s0, -1210
                  slli         a6, ra, 14
                  c.srli       a2, 27
                  c.add        ra, t3
                  slt          a5, a7, a1
                  c.srli       a1, 19
                  slt          s10, s2, a5
                  addi         t1, s11, -1166
                  c.andi       a0, -1
                  sll          t4, t2, gp
                  addi         a1, gp, -1131
                  slti         s2, s2, -1589
                  c.addi       t4, 9
                  div          a6, s7, a6
                  and          a2, t3, sp
                  slti         a7, t3, -1584
                  srl          s1, t2, s8
                  srli         s3, a6, 4
                  srl          s1, t2, a3
                  c.nop
                  andi         s3, a5, 1456
                  rem          s7, a5, a5
                  add          s3, s0, a2
                  c.or         s0, s0
                  xori         tp, s4, 412
                  c.lui        s4, 9
                  srl          s1, s0, a4
                  sltu         a5, t3, t3
                  div          gp, a5, s11
                  mulh         a6, s1, a3
                  sltiu        a5, s1, -1203
                  sra          t2, zero, gp
                  c.li         t0, -1
                  divu         s2, gp, s8
                  c.or         a5, a4
                  divu         s4, s10, a6
                  c.srli       a0, 1
                  c.slli       ra, 17
                  sub          a2, sp, s3
                  slti         tp, ra, -2024
                  c.li         ra, 30
                  c.sub        a3, a0
                  c.slli       t2, 6
                  c.nop
                  c.sub        a1, a4
                  sra          zero, a6, a0
                  c.add        ra, s6
                  sltu         s3, a0, a3
                  mulhu        gp, t0, tp
                  srl          zero, s9, a5
                  c.nop
                  mul          t1, a2, t6
                  c.li         t6, -1
                  and          tp, t3, s10
                  sll          a5, a4, s10
                  c.and        a2, a1
                  xor          ra, sp, a4
                  mul          ra, a7, a2
                  rem          s0, t5, a6
                  sltu         s5, sp, a5
                  or           s3, ra, t3
                  mulhu        t2, gp, a0
                  mul          t2, s0, a1
                  c.srai       a2, 12
                  xor          t2, s10, a5
                  c.addi       t4, 22
                  srl          s6, t6, a1
                  c.srli       a3, 23
                  slti         t3, a3, -581
                  slt          s7, zero, t5
                  sra          s9, ra, a3
                  mulh         zero, a2, tp
                  xor          tp, sp, a5
                  ori          s9, a6, 669
                  c.lui        a1, 22
                  slt          s3, s8, a2
                  mulhu        s5, a2, zero
                  c.or         s1, s0
                  xori         t3, s2, -670
                  ori          a5, a4, -301
                  nop
                  andi         s4, t0, -631
                  andi         s7, a7, 1752
                  slli         gp, ra, 24
                  addi         zero, s6, 1686
                  c.nop
                  sub          t0, zero, a4
                  mul          s8, s3, a1
                  sll          s6, s11, a2
                  and          a1, t5, t6
                  mul          a3, s3, a3
                  c.srli       a2, 11
                  addi         s7, sp, -554
                  sll          a5, t4, a2
                  remu         s3, s11, s0
                  slli         t5, t1, 27
                  c.addi       a5, -1
                  sll          s8, s6, s8
                  and          s0, a1, s2
                  c.srli       a0, 11
                  c.add        s1, s9
                  remu         s7, ra, zero
                  mul          t3, s6, s3
                  srli         a3, a2, 10
                  mulhu        t2, a5, s6
                  srai         s0, sp, 21
                  mulhsu       s4, s6, a4
                  c.lui        a1, 4
                  sltiu        s0, s10, -907
                  div          a0, t3, a4
                  srai         gp, t1, 9
                  or           a7, sp, s1
                  slli         gp, a6, 1
                  add          t4, s9, t2
                  c.and        a2, a0
                  c.sub        s0, a4
                  c.sub        a3, a3
                  and          a5, s8, a0
                  sltiu        a7, s1, 1864
                  lui          a6, 465190
                  slli         gp, t4, 5
                  sra          a7, s9, a0
                  or           a5, a5, a5
                  mul          a0, t1, t6
                  sub          s9, a5, s10
                  c.mv         t1, s11
                  sub          t0, s8, s1
                  mulhu        a3, s9, t4
                  slt          tp, s10, t0
                  nop
                  nop
                  c.srli       s0, 26
                  c.mv         s0, a2
                  mulh         s3, s5, a6
                  c.add        s4, t5
                  rem          a7, t0, s2
                  sub          gp, s6, a0
                  c.lui        tp, 2
                  c.lui        s6, 9
                  srl          s6, s1, s5
                  addi         zero, s8, -754
                  slli         t0, gp, 13
                  c.add        s3, s11
                  add          ra, t4, a5
                  c.slli       a3, 2
                  sub          a6, s9, sp
                  addi         t4, s3, 1261
                  mulhsu       a1, s7, t2
                  slli         a1, a5, 6
                  mulh         t5, t0, t3
                  slli         s7, s10, 1
                  sll          t3, s5, t2
                  c.add        tp, a3
                  mulh         t0, a3, a0
                  auipc        t1, 429876
                  mulh         a3, t0, t0
                  mulh         a7, s2, a4
                  addi         t5, sp, 126
                  mulhsu       a0, a6, s0
                  c.xor        a2, a4
                  c.slli       s10, 8
                  srai         s7, tp, 19
                  sra          tp, ra, s10
                  ori          a2, s11, -655
                  srai         a2, t2, 19
                  c.slli       s9, 13
                  rem          gp, ra, t6
                  sra          tp, zero, a2
                  xor          s10, a5, gp
                  c.lui        s10, 22
                  remu         a1, gp, t2
                  sub          t6, t3, a3
                  srl          s9, s10, t4
                  andi         s1, a2, -1719
                  sra          s10, s2, s2
                  c.srai       a1, 2
                  sltu         t3, s6, s3
                  c.slli       t0, 2
                  xori         s0, s2, 1218
                  ori          zero, t4, -163
                  xori         a1, a4, -1970
                  c.addi       s5, 9
                  mulhsu       t0, t4, s11
                  c.addi       t5, 29
                  c.srai       a1, 29
                  lui          t0, 941377
                  c.add        s8, s10
                  ori          s1, s6, 1074
                  and          t3, s3, s9
                  and          a0, t3, t2
                  c.li         t3, 11
                  nop
                  slt          t1, a6, tp
                  sra          s2, a4, t2
                  auipc        s10, 172148
                  xori         t1, zero, 1475
                  ori          a5, s2, -13
                  and          s0, s10, zero
                  mul          s4, s7, t2
                  div          t2, sp, t4
                  c.slli       t2, 31
                  nop
                  srai         a2, t3, 15
                  rem          a6, tp, s5
                  divu         t6, s1, s10
                  c.slli       t3, 29
                  slti         t1, a1, 1166
                  srai         zero, a7, 22
                  c.and        s0, a3
                  sltiu        s10, t2, -348
                  srl          s3, t4, zero
                  c.slli       a7, 20
                  srli         s3, s3, 27
                  c.li         a6, -1
                  c.or         a1, a1
                  c.mv         a2, t1
                  c.add        t2, a5
                  slli         a7, s5, 19
                  c.mv         s2, t2
                  addi         s2, s9, -296
                  c.or         s1, a4
                  srai         s9, a3, 30
                  addi         a3, a1, 737
                  c.add        ra, a2
                  remu         a6, t1, a2
                  remu         a6, a5, s1
                  c.mv         s1, s11
                  rem          s4, a5, s7
                  or           a5, s1, a7
                  add          a1, s0, t0
                  or           s5, t5, s11
                  slti         t5, a7, -499
                  c.sub        a5, a2
                  or           s3, s9, zero
                  c.addi       a5, 20
                  mulh         t0, s0, s0
                  slti         s10, sp, 1419
                  sltu         s7, a2, t2
                  sltiu        a1, a5, -641
                  c.li         s1, -1
                  c.lui        a5, 18
                  rem          s5, zero, a5
                  c.lui        t6, 21
                  ori          t0, a3, 1993
                  c.sub        s0, a4
                  sltiu        s6, s2, -1439
                  c.mv         s7, a0
                  c.srli       s0, 20
                  add          s3, a2, s10
                  xori         ra, ra, 606
                  addi         s3, s8, 1261
                  xor          t6, a1, s11
                  c.srli       s0, 27
                  mulh         a5, t2, t0
                  or           gp, s9, gp
                  c.or         a2, s1
                  c.srli       s0, 4
                  c.mv         ra, a4
                  xor          tp, a6, s3
                  c.mv         s5, s4
                  c.addi       s9, 4
                  c.and        s1, a2
                  srl          s6, s6, s1
                  and          t1, s8, t4
                  div          s6, s3, t6
                  mulhu        t5, s11, sp
                  addi         t6, a4, -1408
                  c.lui        s0, 12
                  auipc        zero, 186605
                  remu         s0, s10, s7
                  slt          s6, s8, a1
                  c.andi       a5, -1
                  mulhsu       ra, t1, t3
                  sra          a0, s10, s2
                  c.lui        s7, 26
                  slli         s4, zero, 11
                  mul          a2, gp, a1
                  slli         s3, s0, 28
                  mulhsu       s2, sp, t6
                  srli         s1, t2, 10
                  sltu         s2, s6, a5
                  mul          s8, s11, s10
                  slt          ra, s8, a6
                  c.lui        s8, 25
                  sltu         a3, t4, t4
                  c.addi       s3, -1
                  sltiu        s4, a3, -1175
                  srli         a6, a0, 16
                  mul          t2, tp, t4
                  srli         a6, tp, 29
                  and          t6, tp, s0
                  mulhu        s5, t3, s0
                  sra          a5, a5, s9
                  mul          s3, s8, s2
                  sub          t0, a2, a2
                  c.nop
                  c.srli       s0, 9
                  sltiu        t1, s4, 95
                  mul          t5, ra, s5
                  rem          a3, s3, s9
                  c.and        a0, a1
                  c.add        t1, t2
                  remu         zero, a4, s1
                  slti         t0, s8, -1375
                  c.srli       s0, 26
                  and          a1, s8, s5
                  mul          t4, t2, s4
                  slli         t6, zero, 14
                  sltu         t6, a5, zero
                  c.mv         a0, t0
                  c.xor        s0, a5
                  srl          a6, a1, s0
                  sltiu        a2, t5, -297
                  c.xor        s0, s0
                  xor          zero, sp, s9
                  ori          s5, t2, 954
                  lui          s3, 887784
                  c.li         tp, -1
                  c.mv         t1, s11
                  c.addi       s1, 17
                  mulhu        s0, ra, s8
                  xor          tp, s4, a1
                  ori          s10, sp, -187
                  mulhu        t1, s6, s6
                  mulhu        t6, sp, a6
                  divu         t5, t0, t3
                  sltu         a1, t0, t6
                  sra          s3, s0, a2
                  addi         gp, t0, -1305
                  remu         a1, gp, t5
                  c.andi       a1, -1
                  div          t5, t3, s5
                  divu         a5, s7, a1
                  rem          a7, a7, t1
                  ori          s7, a3, 1330
                  c.mv         gp, s8
                  sra          a1, s11, s1
                  c.or         s1, a4
                  add          s10, zero, t5
                  c.and        a5, a0
                  c.addi       gp, -1
                  mulhsu       s9, s0, t0
                  or           s6, t4, s2
                  lui          t3, 289882
                  slt          gp, s10, a6
                  c.mv         t5, s3
                  slli         s10, t1, 21
                  c.andi       a0, -1
                  c.lui        s2, 4
                  sltiu        a3, s7, 469
                  c.lui        a5, 12
                  slti         zero, t5, 1972
                  remu         gp, a5, tp
                  c.li         s5, 14
                  c.or         a1, a0
                  slti         s3, ra, -960
                  c.or         s0, a1
                  c.mv         gp, s6
                  sra          s1, t1, s0
                  mulhu        s6, t0, s11
                  srai         a0, s3, 28
                  sra          t4, zero, s8
                  c.add        s2, a4
                  nop
                  lui          s2, 696651
                  slli         a6, s8, 31
                  xor          t4, s0, t5
                  c.sub        a1, s0
                  c.sub        a2, a0
                  remu         a6, s6, s1
                  c.or         a5, a3
                  sra          s8, s0, a3
                  or           a3, t4, gp
                  srl          s7, a5, s1
                  xor          a3, a5, t2
                  c.add        t6, s3
                  c.sub        a3, s1
                  remu         s8, s6, a6
                  c.andi       a5, 20
                  mulh         s2, s6, t1
                  srli         t1, s11, 16
                  rem          a0, a3, a6
                  mulhu        s3, ra, s6
                  c.li         a5, -1
                  slt          s2, zero, t6
                  divu         t5, s7, t1
                  mulhu        a0, s4, s1
                  c.srli       s0, 8
                  sltiu        gp, a1, 1670
                  sltu         a7, t6, t0
                  slti         t6, s4, 421
                  auipc        t2, 909309
                  sltiu        s6, s8, 728
                  c.add        t2, ra
                  c.mv         s0, a2
                  or           s0, s2, s2
                  c.add        t6, a2
                  c.or         a0, a2
                  c.li         s7, -1
                  auipc        s8, 135326
                  c.srai       a5, 15
                  sra          ra, s6, t0
                  xor          tp, t1, t1
                  c.andi       s0, 29
                  c.li         a2, 18
                  c.sub        a5, a1
                  srl          t5, s7, ra
                  c.srli       s0, 5
                  div          gp, zero, a4
                  c.sub        s0, a0
                  mulhsu       a5, a1, ra
                  srli         tp, s4, 28
                  c.addi       tp, 3
                  xor          a3, a6, sp
                  slt          t2, ra, t4
                  ori          t6, s4, -1612
                  ori          t5, a1, -1349
                  srli         a0, s11, 28
                  c.sub        s1, a5
                  mulhsu       s4, a4, s8
                  addi         t0, t3, 796
                  nop
                  c.and        a0, a2
                  sltu         a1, t0, a5
                  divu         s1, a1, s2
                  sltiu        a5, s9, -574
                  sra          t5, sp, s4
                  and          s10, s8, ra
                  and          s2, a0, sp
                  remu         s5, t0, t2
                  sub          zero, a6, s8
                  c.slli       t1, 4
                  sll          s2, tp, s7
                  xor          gp, t5, s9
                  rem          s5, s2, s1
                  c.sub        a1, a0
                  c.and        a3, a1
                  sra          s4, a3, s4
                  c.andi       s0, -1
                  xori         a0, s7, 249
                  srli         s7, t3, 12
                  mulh         zero, a0, t1
                  mulhsu       s8, a0, s11
                  c.sub        a5, a3
                  c.sub        a3, a4
                  add          t3, t3, s1
                  c.nop
                  slti         a2, s6, 1115
                  c.li         s8, 4
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a5, 0x0
                  li           a0, 0x80000000
                  li           t0, 0xffffffff
                  li           a7, 0x80000000
                  li           s1, 0xec570d24
                  li           s0, 0x0
                  li           t2, 0x0
                  li           t5, 0x0
                  li           tp, 0xffffffff
                  mulhsu       s2, tp, t2
                  mul          a7, a5, a0
                  addi         a7, t5, 1945
                  lui          t5, 569325
                  addi         s0, a5, 1547
                  rem          t5, a5, s1
                  mulh         a7, a0, s2
                  auipc        tp, 546235
                  div          t0, t2, a0
                  mulhu        s1, t0, a5
                  mul          tp, s0, a0
                  addi         a0, a7, 1
                  auipc        tp, 996958
                  lui          t2, 223482
                  divu         t0, s2, a7
                  nop
                  div          tp, s0, a5
                  addi         tp, tp, -214
                  div          t5, s2, tp
                  remu         s0, a7, s1
                  div          t0, a7, a7
                  divu         s1, t5, s1
                  sub          s2, a0, t2
                  nop
                  addi         a0, s1, 1381
                  remu         s1, tp, s0
                  auipc        t0, 708714 #end riscv_int_numeric_corner_stream_7
                  c.sub        a5, a1
                  c.lui        s10, 19
                  slt          t0, sp, t4
                  c.nop
                  nop
                  remu         s2, t3, s8
                  lui          t0, 266924
                  sltiu        ra, a0, -39
                  and          s3, t3, a5
                  c.sub        s1, a4
                  c.nop
                  c.slli       tp, 6
                  remu         a1, t3, a0
                  divu         s8, a4, s4
                  div          a0, ra, a1
                  mulh         t0, s5, sp
                  and          t0, s1, s8
                  divu         tp, t1, t2
                  xor          zero, a3, s3
                  remu         s9, zero, t3
                  srai         s4, t6, 28
                  mulhsu       s0, s10, t3
                  divu         a0, sp, a5
                  auipc        t2, 874658
                  sra          a0, a7, s5
                  auipc        s1, 451631
                  sltiu        s7, a7, -1147
                  remu         a5, t3, s1
                  c.sub        s0, a3
                  c.nop
                  rem          a3, s8, s6
                  xori         t6, s11, 741
                  sll          a7, a3, s0
                  slt          t6, s1, t2
                  srl          s9, t2, a0
                  c.xor        s0, a2
                  slti         a7, s8, -1458
                  c.srli       a0, 12
                  mul          s6, t1, a4
                  c.xor        s0, a2
                  c.srai       a5, 23
                  sltu         s6, s8, t3
                  remu         ra, s10, s10
                  xor          s3, s11, a6
                  c.and        a2, a5
                  xor          s3, t6, a7
                  sub          s3, s0, ra
                  andi         t4, s9, 31
                  c.addi       a1, -1
                  xori         gp, s0, -1267
                  c.srli       a5, 1
                  xori         s9, t4, 2029
                  slti         s7, s9, -1435
                  c.nop
                  auipc        t1, 139698
                  lui          a6, 114462
                  mulhsu       a6, a7, a3
                  lui          a7, 326221
                  c.li         a2, 9
                  addi         s5, s5, -613
                  c.add        a0, a0
                  rem          s8, a3, t2
                  c.addi       ra, 22
                  mulhu        s8, a5, t1
                  c.srai       a3, 26
                  and          s0, s4, zero
                  sll          s10, a1, s6
                  sltu         a2, s9, a6
                  lui          s7, 870731
                  div          ra, t4, t0
                  sltu         t6, s0, a3
                  xori         s9, tp, 1914
                  sll          t1, s9, s6
                  ori          a7, s1, 1204
                  xor          s3, sp, s5
                  sltu         s7, s11, s3
                  and          s7, ra, s8
                  slt          s8, s2, s2
                  div          ra, a0, a4
                  auipc        s7, 789502
                  xor          t4, t0, ra
                  c.li         a6, 2
                  remu         a0, t3, s2
                  xor          a6, gp, tp
                  mulh         ra, ra, zero
                  addi         t0, a1, -67
                  c.and        a1, a5
                  addi         s1, s4, 190
                  c.xor        a0, a1
                  mulh         a3, gp, zero
                  c.nop
                  mulhsu       a2, t4, a3
                  mulh         s3, a6, s10
                  ori          a1, s10, -1898
                  div          s3, a2, sp
                  auipc        ra, 261319
                  mul          t3, a4, s3
                  ori          s9, a7, 1541
                  c.mv         t0, tp
                  mulh         a2, tp, t2
                  sra          s10, tp, t2
                  add          s10, t4, s1
                  div          t6, t4, t0
                  sltiu        t6, t5, -1575
                  mul          t5, s7, s3
                  sltu         a5, t2, s6
                  c.sub        a5, s0
                  rem          s4, s0, s4
                  sltiu        s2, a1, -209
                  c.srai       a0, 16
                  sltu         gp, s6, a3
                  slli         s7, s5, 25
                  slt          s1, a7, t0
                  and          zero, a7, t1
                  nop
                  ori          s6, s2, -380
                  slt          tp, zero, t6
                  sltiu        s5, t1, -1107
                  srai         s0, s3, 31
                  srai         ra, a2, 5
                  ori          s10, a2, -983
                  slli         s9, s7, 20
                  xor          s2, s4, tp
                  c.sub        a3, s0
                  c.lui        t4, 22
                  slli         a0, s6, 17
                  nop
                  addi         s3, s10, 742
                  mulhu        t2, a2, t2
                  or           s7, zero, a6
                  c.or         a5, s1
                  xori         t3, t6, -101
                  c.srli       s0, 24
                  slti         t3, s3, 1511
                  addi         a5, a7, 1137
                  c.slli       s4, 31
                  sra          t4, s4, a7
                  c.andi       a3, -1
                  c.add        s9, s11
                  sll          s9, a3, t4
                  or           a6, s5, t0
                  mulhsu       a7, s0, t3
                  slt          ra, gp, s6
                  c.lui        s5, 11
                  ori          t0, t4, 703
                  xor          gp, gp, a6
                  and          s3, ra, s2
                  nop
                  mulhu        s7, ra, s0
                  c.xor        a1, a3
                  c.lui        s9, 4
                  c.sub        a0, a3
                  add          tp, sp, ra
                  sltiu        a2, gp, 309
                  or           s3, s7, s11
                  addi         a6, gp, 1594
                  sub          a6, t0, t0
                  c.add        t2, t0
                  sll          t6, t3, s9
                  auipc        zero, 65137
                  c.sub        a2, a5
                  lui          s7, 834029
                  srl          a5, t4, a6
                  c.or         a5, s0
                  srai         t2, s11, 1
                  or           s6, t5, t5
                  nop
                  c.nop
                  c.nop
                  sltu         t0, s5, sp
                  xori         s7, t6, -1252
                  xor          s4, a5, t0
                  c.nop
                  c.slli       s5, 21
                  srli         s9, sp, 16
                  slti         t3, t6, 271
                  slli         a7, a3, 24
                  sub          s7, a3, a3
                  nop
                  srli         s5, t3, 10
                  lui          a6, 501509
                  mulhu        s10, s3, s3
                  c.andi       a5, -1
                  mul          a5, s8, s8
                  c.or         a0, a5
                  c.lui        s4, 15
                  remu         t4, t2, t0
                  divu         t0, a5, a1
                  c.lui        a2, 15
                  remu         a6, s7, t2
                  sub          s10, s9, s7
                  srai         s0, s1, 7
                  c.sub        a5, a0
                  c.srai       a2, 5
                  c.nop
                  sra          s5, t1, s4
                  add          t6, s9, s6
                  sub          zero, gp, s7
                  sll          a7, t4, s5
                  mul          a0, t4, s1
                  nop
                  and          t6, t4, a2
                  c.slli       s4, 8
                  andi         s1, a0, -963
                  c.lui        t1, 13
                  sltiu        a5, s1, -1021
                  divu         gp, s9, t5
                  slti         a6, a2, 1445
                  xor          a1, a1, a4
                  c.sub        s0, a4
                  and          s2, sp, t3
                  addi         s1, t4, 1708
                  srl          s5, a6, t3
                  sltiu        a2, sp, -145
                  remu         t4, tp, s4
                  add          t2, a5, gp
                  c.sub        s1, a2
                  sltiu        s5, s5, -1366
                  xor          s5, s4, s8
                  sra          t2, s1, sp
                  c.sub        s1, a0
                  andi         s10, s0, 1794
                  c.nop
                  sra          a1, s11, a2
                  c.add        t3, t2
                  sltiu        a2, tp, 1028
                  slti         a0, s0, 868
                  c.addi       s1, -1
                  mulh         s7, gp, zero
                  div          s2, s11, s7
                  srai         t6, s0, 27
                  mulhsu       t3, t5, a2
                  andi         s7, a2, -1059
                  sra          s9, gp, s3
                  add          a6, a4, t4
                  nop
                  mulh         s5, tp, a4
                  c.slli       tp, 19
                  sub          t2, gp, s6
                  srl          t5, s4, s8
                  c.addi       s7, -1
                  div          t4, a2, t1
                  slt          a6, s11, s1
                  slt          s6, s1, s6
                  c.addi       s2, 21
                  slti         t2, a2, -401
                  c.xor        a2, s0
                  c.xor        a0, a4
                  divu         t2, s5, a0
                  c.sub        a0, a4
                  c.add        s9, s10
                  ori          s2, a6, -1758
                  divu         t5, a5, t0
                  c.slli       gp, 17
                  lui          s5, 202367
                  mulhu        a0, ra, tp
                  divu         s0, a4, t4
                  divu         t4, zero, a4
                  addi         s10, s0, -1663
                  c.slli       tp, 10
                  c.li         t2, -1
                  slti         t1, tp, -408
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_34
                  li           t0, 0x69032c06
                  li           a6, 0x0
                  li           s8, 0xafc1a725
                  li           s10, 0xffffffff
                  li           s3, 0x3b7c3798
                  li           s0, 0xc0348562
                  li           t5, 0xab88f23e
                  li           t6, 0x80000000
                  li           s5, 0x0
                  div          s8, t0, s0
                  mulh         s5, s10, s0
                  divu         t5, t0, s0
                  nop
                  nop
                  mulhsu       s3, s0, tp
                  mulh         s3, s10, a6
                  remu         t0, s0, s0
                  mulhsu       a6, s0, s0
                  add          s3, s10, tp
                  divu         t0, t0, t6
                  mulhu        s5, t6, t6
                  mul          s10, s3, s0
                  divu         s8, s8, s0
                  auipc        t5, 408034
                  mulhu        t6, s10, s5
                  add          t0, t5, s10
                  mulh         tp, t6, a6
                  nop
                  remu         t6, t5, s10
                  rem          s3, t0, s0
                  addi         s3, a6, -977
                  addi         a6, a6, -2000 #end riscv_int_numeric_corner_stream_34
                  sll          a1, s9, s7
                  nop
                  nop
                  or           s8, s9, t3
                  sub          gp, s10, a6
                  c.add        t4, s3
                  mulhu        t5, a4, a6
                  srli         t0, t4, 10
                  c.and        a5, s1
                  srli         a0, gp, 12
                  srai         s6, gp, 27
                  c.li         a0, -1
                  or           t1, t3, t3
                  xori         a6, a7, 773
                  srli         t0, tp, 27
                  div          s7, t0, a3
                  slti         s5, t2, 694
                  mul          t2, s11, t2
                  c.addi       ra, 29
                  add          t4, s3, t1
                  rem          t3, t5, s7
                  c.srai       s0, 30
                  slli         zero, t6, 7
                  slt          s2, zero, t2
                  mulhu        t1, a0, a1
                  xori         a0, s8, 1660
                  slti         s2, s11, -943
                  c.addi       t5, -1
                  auipc        a3, 856817
                  c.and        a3, s0
                  c.add        s0, a7
                  auipc        s1, 765001
                  c.sub        a0, a1
                  c.andi       a3, -1
                  c.addi       s9, -1
                  c.xor        a5, a1
                  addi         s10, sp, -856
                  nop
                  srai         s4, s8, 17
                  div          t1, ra, gp
                  xori         s1, a7, 1077
                  srli         a2, ra, 1
                  c.or         a5, a0
                  c.srai       a0, 9
                  c.add        t4, tp
                  sub          s7, s8, t1
                  c.addi       a0, 16
                  c.slli       a6, 16
                  addi         a2, s1, -1021
                  c.add        a6, s1
                  divu         a1, s5, zero
                  addi         t6, s5, -1708
                  mul          a7, a3, a4
                  c.add        t5, s10
                  slti         t1, a5, -1356
                  add          t5, a3, a6
                  c.add        s10, sp
                  addi         s9, t3, 1885
                  mulh         s2, t2, s7
                  and          t2, s7, s1
                  slli         t6, a3, 4
                  ori          a1, s10, 1505
                  mulhu        a5, t4, s11
                  c.mv         ra, s9
                  c.and        a2, a2
                  srai         s1, s4, 8
                  add          zero, s5, t4
                  ori          tp, a3, 1309
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_25
                  li           t4, 0x32c76d0b
                  li           t1, 0x0
                  li           a2, 0x80000000
                  li           s4, 0x80000000
                  li           s2, 0x80000000
                  li           a6, 0xffffffff
                  li           s9, 0xffffffff
                  li           s0, 0xffffffff
                  li           gp, 0x0
                  add          t1, gp, t6
                  remu         t6, gp, t4
                  mulhsu       s9, a2, a2
                  mul          gp, t6, t1
                  nop
                  addi         s4, s2, 1621
                  sub          s0, t6, s4
                  mulhsu       t6, t4, s2
                  addi         gp, t1, -1899
                  mulhu        t6, a6, a6
                  lui          gp, 737071
                  mulhsu       s4, t6, a2
                  mulhu        s2, s2, a2
                  div          t4, t1, s4
                  nop
                  mul          s0, t6, gp
                  nop
                  mulhsu       t4, t1, s0
                  nop
                  remu         t6, s2, t1 #end riscv_int_numeric_corner_stream_25
                  rem          s4, a4, s6
                  c.add        t0, t3
                  andi         t5, a1, -642
                  c.addi       a1, 4
                  c.andi       a0, 8
                  sll          s6, t5, t0
                  c.or         s1, a4
                  c.addi       gp, 10
                  c.slli       t0, 31
                  c.or         s0, a5
                  c.add        tp, s8
                  c.xor        s0, s0
                  c.slli       ra, 5
                  divu         s6, t2, t0
                  c.andi       a1, -1
                  srli         a5, tp, 20
                  mulh         a2, tp, s6
                  nop
                  mul          s2, s6, a2
                  slli         zero, zero, 25
                  c.li         s3, -1
                  mulh         ra, t6, s5
                  srl          tp, ra, s7
                  divu         a2, gp, ra
                  rem          a0, s2, s5
                  c.nop
                  c.xor        a5, a1
                  xori         zero, s10, -1605
                  ori          s5, s7, -480
                  c.add        s5, t6
                  sll          s10, t6, a2
                  c.andi       a3, 19
                  srli         s9, gp, 25
                  xori         a6, t5, -442
                  divu         zero, s8, t2
                  c.addi       a2, 27
                  c.slli       a7, 13
                  xor          s6, s9, s10
                  c.andi       a0, -1
                  div          zero, s4, s5
                  slt          a1, t0, a6
                  xor          a0, s3, a3
                  sra          a3, s11, s2
                  or           gp, s9, s8
                  rem          tp, s1, t5
                  sltiu        t5, s11, 1785
                  c.andi       a3, -1
                  c.or         a5, s0
                  srl          a0, a4, a0
                  nop
                  c.andi       a1, -1
                  c.andi       a0, -1
                  ori          t6, s1, 174
                  srli         s10, s5, 25
                  slli         a1, a0, 26
                  c.srli       a2, 7
                  sra          a5, a4, a5
                  srai         a1, a5, 22
                  mulh         a6, t5, s2
                  lui          a0, 1558
                  srli         a6, a0, 22
                  c.nop
                  addi         s4, t1, -686
                  c.or         a2, a0
                  lui          t6, 647514
                  sltu         zero, s11, s4
                  mulhu        t0, a7, a4
                  rem          t0, s6, t6
                  ori          t1, a5, 435
                  sltiu        a1, s0, -511
                  c.xor        s1, a1
                  srai         t4, s3, 30
                  c.or         a3, a4
                  slti         s3, tp, 262
                  c.or         a2, s0
                  c.nop
                  sltiu        t0, s3, 844
                  remu         t6, s3, a0
                  xori         a2, s9, -482
                  sltiu        a7, s6, 1682
                  c.lui        s7, 13
                  mulh         s8, t1, a5
                  c.addi       t2, -1
                  mulh         ra, tp, s9
                  c.mv         s9, s9
                  slt          t6, s8, zero
                  sra          a1, a4, s4
                  nop
                  rem          gp, t0, a3
                  sll          zero, a5, s2
                  c.li         t5, 8
                  c.li         t5, -1
                  mulhsu       a7, t6, s7
                  mul          t1, t6, a7
                  and          t1, t1, a0
                  c.sub        a3, a0
                  mulh         t5, a6, s10
                  remu         a1, gp, s7
                  slti         t5, s4, 1913
                  c.nop
                  xori         s3, s10, -1612
                  auipc        s8, 958447
                  c.mv         s3, sp
                  c.slli       t3, 21
                  addi         a7, s0, -1951
                  sll          s3, gp, s1
                  lui          a1, 725945
                  c.andi       a0, 16
                  xor          s6, s6, s2
                  c.mv         t1, t6
                  lui          a3, 24506
                  sub          s5, ra, a7
                  sll          t3, a4, s5
                  sub          s3, s7, s0
                  mulhu        a0, a4, t5
                  sltiu        s9, s5, -354
                  srl          tp, t5, s7
                  rem          a5, t2, a7
                  c.lui        a6, 12
                  sltiu        t5, s5, -794
                  c.srli       a2, 27
                  mulhu        t0, a4, gp
                  c.xor        s0, a3
                  srai         gp, sp, 19
                  c.nop
                  sll          t5, t3, t2
                  c.lui        t4, 25
                  xori         s10, a5, -1243
                  divu         s3, a3, ra
                  c.nop
                  c.srli       a1, 7
                  ori          t2, t4, -2015
                  slt          gp, s9, a0
                  add          s9, a3, s11
                  c.addi       tp, 3
                  slti         s0, t1, 975
                  c.slli       ra, 14
                  nop
                  andi         a6, a6, 1822
                  xori         ra, s9, 1023
                  sub          a2, ra, t3
                  divu         t0, s3, a5
                  srl          s6, a4, gp
                  xori         s5, s9, 1825
                  mulhu        s10, t2, a3
                  c.sub        a1, a5
                  mulhsu       s4, s10, s8
                  lui          s10, 432031
                  slli         s10, s10, 11
                  rem          t1, ra, s7
                  andi         a6, s11, 1421
                  srl          s9, tp, t3
                  c.mv         s1, a1
                  mulhsu       t1, sp, a3
                  slli         s10, s2, 24
                  c.li         tp, 24
                  addi         t1, s7, -614
                  srai         s7, a7, 0
                  addi         a2, t5, -571
                  c.slli       t1, 25
                  andi         gp, a1, -1922
                  c.li         s4, -1
                  slli         s10, s11, 27
                  srai         a1, gp, 18
                  srai         s1, s9, 10
                  and          s3, s3, s1
                  c.sub        a1, a1
                  c.nop
                  srl          t6, a6, zero
                  sll          t6, s4, t3
                  add          t6, s9, s5
                  addi         s10, a4, -1980
                  ori          tp, s8, 1676
                  srl          s8, gp, s0
                  c.slli       t1, 25
                  c.addi       s2, 6
                  divu         a3, tp, a4
                  andi         tp, a5, -1456
                  divu         a3, s1, t4
                  slt          gp, t5, s2
                  c.srli       a0, 4
                  sll          s9, a6, a4
                  nop
                  srli         a6, zero, 6
                  add          a2, t1, gp
                  slti         s8, s5, 272
                  nop
                  lui          s3, 21181
                  andi         s10, a2, -1390
                  c.addi       s0, -1
                  remu         t6, a7, s5
                  sub          t3, s9, t0
                  srl          gp, s10, ra
                  mulhsu       gp, s1, s4
                  ori          s2, gp, 1726
                  lui          t2, 68815
                  c.lui        s2, 19
                  c.mv         a1, gp
                  or           s10, s8, t5
                  c.srai       s0, 29
                  add          a1, a1, a6
                  sra          a3, t2, s3
                  andi         s1, a5, -2024
                  srli         t1, s7, 28
                  add          s2, s4, a4
                  sub          s0, a5, tp
                  c.srai       a5, 29
                  slli         gp, s5, 4
                  c.sub        a2, a2
                  sltiu        a5, s2, 108
                  divu         a3, s9, tp
                  srli         a3, s7, 14
                  c.addi       a6, 16
                  mulhsu       s10, a5, a6
                  mulhu        s3, ra, s3
                  addi         s5, a2, 914
                  sltu         s5, s0, s2
                  nop
                  c.sub        a0, a2
                  srl          t6, a1, t3
                  c.srli       a0, 1
                  mul          s3, t0, sp
                  c.add        s7, sp
                  sub          a5, t5, s4
                  c.mv         gp, t2
                  srai         a5, t6, 28
                  mulh         s7, zero, s11
                  xori         zero, a3, -709
                  srai         t1, ra, 0
                  c.nop
                  nop
                  remu         s9, a4, s5
                  mulhsu       s2, a1, t1
                  nop
                  mulh         a2, a7, s7
                  slt          s3, zero, t3
                  or           a1, a6, a1
                  sltu         tp, zero, s10
                  xori         a3, zero, -1201
                  andi         s6, s4, 192
                  srai         s2, a5, 15
                  srl          t4, t6, t1
                  sll          ra, s0, s10
                  mulh         s2, a0, s5
                  c.srli       a3, 17
                  c.mv         a3, s4
                  or           s0, s6, a4
                  c.srai       a2, 14
                  c.li         t1, -1
                  slti         s0, s8, -942
                  c.xor        a3, a1
                  xori         gp, a3, 225
                  sll          zero, a7, s2
                  rem          t2, s5, a5
                  c.lui        t2, 17
                  c.srai       a2, 25
                  mulhu        s5, s8, s10
                  xor          s10, a5, a2
                  rem          s2, sp, t0
                  slli         t4, t6, 4
                  sll          ra, t4, s9
                  c.xor        a2, a1
                  slli         a7, t5, 0
                  slli         s6, a3, 14
                  auipc        s1, 842250
                  and          t4, a4, s7
                  andi         t3, t1, 54
                  srli         s7, s11, 23
                  sll          s10, zero, zero
                  srli         s1, a3, 4
                  divu         s2, s10, s6
                  add          s9, a0, t4
                  c.slli       a7, 11
                  addi         a5, sp, -1726
                  c.xor        a2, a4
                  slt          s1, a0, sp
                  c.lui        t5, 18
                  slti         gp, a3, -756
                  divu         s1, zero, s4
                  c.xor        a3, a1
                  c.or         a2, a0
                  c.xor        a0, a5
                  c.sub        a2, a0
                  srai         t4, s1, 29
                  c.add        s8, s4
                  sll          a2, tp, s1
                  c.and        a0, a5
                  c.slli       s10, 23
                  and          s3, t4, a2
                  c.mv         t2, s9
                  sra          s10, sp, t3
                  sub          gp, t5, t4
                  addi         gp, zero, 1996
                  sltiu        tp, s3, -1286
                  c.lui        tp, 12
                  sra          a5, a4, s10
                  mulhu        a5, t4, t0
                  auipc        s1, 1006862
                  c.srai       s0, 7
                  mulhu        a1, tp, t0
                  slli         s0, s6, 1
                  ori          s7, t6, 1806
                  c.srli       a3, 6
                  sub          t6, t0, s4
                  and          s1, a0, a0
                  slt          t5, sp, s1
                  c.li         a7, -1
                  c.add        a0, s8
                  c.or         a5, a0
                  c.xor        a3, a5
                  or           t1, a1, a1
                  c.addi       a6, -1
                  srai         t6, a7, 30
                  slti         s5, t6, -391
                  sll          s10, a1, s7
                  c.or         s1, a2
                  auipc        t3, 978383
                  slli         t2, t4, 25
                  sll          t5, t2, s6
                  remu         t4, a6, s4
                  c.and        a2, a4
                  slt          s6, s7, t3
                  lui          a6, 883272
                  mulhu        tp, a4, s11
                  nop
                  sub          s5, a7, a0
                  addi         s4, gp, -1079
                  slt          ra, sp, tp
                  mulhsu       t5, s9, a2
                  mulh         s4, s9, zero
                  c.srai       a0, 2
                  c.srli       s0, 14
                  c.addi       a6, 16
                  c.sub        a0, a5
                  srai         s7, s7, 21
                  addi         s0, a7, -919
                  c.srai       a5, 14
                  andi         s8, s8, 375
                  rem          a2, t5, s5
                  slti         s1, s8, -1005
                  c.mv         a6, a3
                  c.lui        a5, 13
                  c.srli       s1, 25
                  remu         s4, s3, t4
                  c.sub        s0, a2
                  divu         ra, s5, s10
                  add          t2, s11, gp
                  sltiu        t3, t6, -1855
                  mulhsu       s2, t5, t4
                  c.srli       a5, 19
                  and          t3, gp, s4
                  c.nop
                  sll          s0, a4, a4
                  lui          t0, 546812
                  c.srli       a1, 14
                  srl          a3, a6, s5
                  sltu         s6, a3, s1
                  c.sub        a5, a2
                  sub          a0, tp, s2
                  xori         s0, s4, 278
                  and          t2, s3, s9
                  slt          t6, ra, s3
                  divu         a7, sp, a7
                  sltu         s6, t3, t5
                  xori         gp, t6, -211
                  mulhsu       gp, s3, zero
                  slli         s6, t5, 18
                  lui          s4, 640098
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           s1, 0x5c142fdd
                  li           t3, 0xffffffff
                  li           a1, 0x0
                  li           s8, 0x0
                  li           s6, 0x0
                  li           t1, 0x3c81c6a1
                  li           tp, 0xffffffff
                  li           a6, 0x923cbb12
                  li           s9, 0x0
                  mul          a1, s6, t3
                  mulh         t3, s6, tp
                  div          s8, t3, a1
                  mulh         a1, tp, s1
                  sub          s1, tp, a1
                  sub          s6, s0, tp
                  mul          a1, a1, a1
                  mulh         a6, s1, s0
                  divu         s6, s6, s0
                  addi         s0, s9, -104
                  mulh         a6, tp, s0
                  div          a6, tp, t3
                  add          s9, tp, s9
                  addi         tp, a6, 1088
                  nop
                  auipc        a6, 232334
                  nop
                  divu         t3, s9, t1
                  div          s1, s6, tp
                  nop
                  auipc        tp, 331009
                  divu         t1, s9, t3
                  mulh         s8, s0, s0
                  add          a1, s0, tp
                  divu         a6, a6, a1
                  rem          s6, s6, s1
                  sub          tp, s9, tp
                  auipc        s6, 250165
                  remu         s6, s8, s6
                  remu         s0, a1, t3 #end riscv_int_numeric_corner_stream_6
                  slti         s3, a2, -547
                  c.nop
                  mulhu        zero, s10, a1
                  slt          a1, s3, a7
                  c.andi       a3, 13
                  sra          s10, a3, t3
                  c.nop
                  srai         t5, a0, 22
                  c.slli       a6, 3
                  remu         a6, s4, s4
                  c.srli       a3, 12
                  slti         a0, zero, -511
                  c.srai       a5, 4
                  and          s9, a6, s3
                  c.andi       a5, 20
                  sub          t4, a3, t5
                  sub          s5, t6, s0
                  div          s4, a0, a0
                  c.sub        s1, s0
                  auipc        s9, 516488
                  xor          a1, s3, a6
                  c.lui        a6, 11
                  sra          gp, zero, t0
                  auipc        s3, 271972
                  sub          s1, t1, sp
                  or           a1, s5, a3
                  c.sub        a5, a1
                  xor          s0, s4, s10
                  c.li         t6, -1
                  srai         s0, a1, 7
                  mulh         t1, s1, t1
                  remu         s7, s9, t0
                  c.srli       a5, 16
                  c.slli       a3, 8
                  ori          s9, gp, 1690
                  c.slli       a7, 19
                  c.and        a2, a2
                  or           t0, t6, s2
                  addi         s9, sp, 1663
                  div          a3, a7, s10
                  c.nop
                  c.mv         a5, t0
                  remu         s0, a0, a6
                  mul          t3, t5, t1
                  c.sub        a5, s1
                  c.sub        s0, a4
                  c.xor        a2, a0
                  sll          a6, t4, s8
                  ori          s6, a2, -893
                  c.srli       s0, 7
                  c.lui        a1, 29
                  c.slli       s2, 31
                  c.and        a2, a0
                  c.nop
                  add          zero, s4, zero
                  c.and        a2, a1
                  or           t0, s0, s8
                  c.add        gp, t0
                  rem          a7, s0, t1
                  slt          t3, t6, a1
                  mul          t6, s2, tp
                  slt          a6, tp, s4
                  xori         s10, s10, 480
                  or           zero, s10, s4
                  mul          ra, zero, a7
                  xor          s5, s1, s11
                  add          a5, a0, a7
                  sll          ra, s6, t5
                  divu         s6, tp, s0
                  srl          tp, gp, s4
                  srl          gp, s2, s10
                  sll          s4, s10, s1
                  mulhsu       t4, s11, t1
                  c.or         a0, a1
                  sub          s7, a2, a7
                  c.addi       t5, -1
                  c.nop
                  sltu         a2, a6, a5
                  sub          s9, t3, t0
                  c.mv         t1, a0
                  slt          s5, s8, a2
                  or           s9, s3, t5
                  slti         a2, s9, -88
                  div          tp, s0, t3
                  c.nop
                  remu         s3, s8, s6
                  sra          a3, s3, a7
                  mul          s8, s4, tp
                  c.slli       t4, 27
                  srli         t6, a3, 19
                  c.mv         s6, s2
                  srl          a0, a0, s6
                  sra          a0, s4, gp
                  remu         a7, a7, gp
                  mulhsu       s7, a6, a4
                  xori         s7, ra, -944
                  auipc        t2, 859513
                  sltiu        t3, s11, -75
                  nop
                  addi         t5, a7, -107
                  srl          t5, s1, a4
                  c.srai       a2, 29
                  xor          s6, s5, a6
                  slli         s5, a6, 23
                  and          s8, t4, t6
                  c.andi       a1, -1
                  ori          a2, a6, -254
                  addi         s10, s8, 315
                  srl          s0, s2, a2
                  add          t5, s5, a7
                  c.slli       t1, 14
                  srai         t4, s6, 29
                  srai         t0, t1, 13
                  mulhsu       a3, t1, sp
                  div          a0, s6, s3
                  or           s10, a5, a4
                  xori         t6, a4, 1561
                  c.addi       t5, 2
                  sra          a7, t2, tp
                  c.slli       t4, 31
                  addi         a0, t2, -1492
                  c.li         a3, 22
                  xor          a3, a7, a7
                  sub          a3, a3, zero
                  xori         a1, s5, -1512
                  slt          t5, a6, t3
                  srai         t5, t5, 9
                  auipc        s4, 541860
                  add          a2, a1, a2
                  rem          a0, t5, t0
                  divu         s5, s4, a1
                  c.lui        a0, 21
                  add          s1, s10, s0
                  mulh         s7, s8, s10
                  or           s7, a0, s2
                  slt          a5, s2, s9
                  andi         t1, s10, 2008
                  remu         s7, tp, a4
                  auipc        gp, 86588
                  or           tp, t3, ra
                  sub          t1, s1, s7
                  slli         a6, t0, 23
                  c.andi       a5, 0
                  c.srli       a2, 31
                  mul          a6, s7, zero
                  rem          a3, s6, a1
                  sra          gp, s5, a7
                  add          s8, s11, s8
                  div          s4, sp, zero
                  c.li         s10, 31
                  sltu         t5, s9, tp
                  sltu         gp, s1, s10
                  lui          s0, 272268
                  c.addi       s4, -1
                  c.srli       a3, 20
                  mulhsu       s6, sp, zero
                  nop
                  mulhu        t1, t1, t6
                  c.sub        a5, a1
                  c.add        gp, s5
                  mulhsu       s7, s10, s9
                  mul          s8, a3, a0
                  c.addi       s0, -1
                  nop
                  c.or         s0, a5
                  rem          t6, gp, t2
                  mulhsu       s6, a7, tp
                  lui          t4, 870828
                  c.add        a0, a7
                  mulh         t1, s1, t6
                  remu         zero, a1, s7
                  mulhsu       t3, s9, s6
                  andi         tp, ra, -494
                  srli         a0, t3, 1
                  slli         s4, a4, 20
                  c.addi       t2, -1
                  add          s4, a6, a6
                  slti         s6, s9, -201
                  slli         s7, t1, 27
                  sll          a2, s9, s10
                  remu         zero, s1, zero
                  sltiu        t2, s1, 1330
                  addi         t1, s9, -1621
                  c.sub        a2, a0
                  or           t5, t5, s11
                  srli         s10, a6, 2
                  sra          t1, t4, a4
                  remu         t5, t3, a7
                  c.srli       s1, 5
                  srl          s2, zero, a6
                  rem          s2, s2, a7
                  c.andi       a5, -1
                  mulh         zero, a6, s5
                  srl          t4, t5, s4
                  remu         a5, t4, s0
                  mulhsu       a1, a7, t6
                  div          s2, a7, a4
                  addi         a2, t1, 210
                  and          t6, s0, zero
                  c.slli       s0, 10
                  slt          a3, tp, s9
                  mul          s9, ra, s0
                  c.xor        a5, a2
                  addi         t2, s3, 2008
                  c.lui        s7, 22
                  sra          s1, tp, t5
                  slti         s5, tp, 183
                  mulhu        ra, t6, ra
                  sltu         gp, s9, t6
                  sltu         zero, t2, s2
                  mulhsu       s4, s4, a3
                  c.add        t6, s11
                  c.andi       a1, -1
                  sra          s8, s7, gp
                  srl          s7, s9, s3
                  xor          zero, s8, a2
                  sltu         a5, a6, t6
                  rem          zero, tp, a0
                  sltu         zero, ra, s6
                  div          zero, t3, s6
                  c.xor        s0, a1
                  auipc        t4, 909002
                  nop
                  c.srai       s1, 24
                  auipc        t6, 166622
                  xor          s2, s2, a7
                  sub          s9, s6, a0
                  nop
                  c.slli       t6, 9
                  mul          s5, a3, a6
                  c.srai       a0, 28
                  xori         t4, s3, 542
                  sltiu        s2, a0, -1882
                  auipc        a7, 494653
                  xor          t3, gp, sp
                  mulh         s9, a4, t2
                  mulhsu       s1, a1, t6
                  slt          t6, zero, t4
                  mulh         s1, s3, zero
                  c.li         s6, -1
                  c.nop
                  nop
                  remu         tp, s8, t5
                  sll          s10, t4, gp
                  xori         s3, s11, 102
                  div          tp, t4, a5
                  c.andi       s0, 16
                  div          s7, s9, s2
                  sub          a0, s11, t5
                  c.slli       s8, 13
                  sltiu        s1, s1, 1247
                  c.li         a1, 19
                  divu         s1, sp, zero
                  c.mv         s3, a7
                  addi         s2, t0, -864
                  auipc        a6, 977729
                  andi         s9, s11, 82
                  c.mv         s10, s7
                  mulhsu       s6, s4, ra
                  xori         a1, tp, -76
                  srl          s6, a7, gp
                  xor          s3, t1, t3
                  c.addi       s10, -1
                  mulhu        t1, s10, a5
                  mulhu        s1, s0, a6
                  c.addi       s3, 26
                  c.andi       a5, 7
                  and          t6, t1, ra
                  remu         s10, s2, s3
                  c.srli       s0, 7
                  mulh         gp, tp, s6
                  add          t3, t3, a3
                  add          s1, a2, a1
                  mul          s9, s2, t0
                  div          a1, t2, t4
                  c.lui        t2, 25
                  rem          s9, a6, a0
                  c.srli       a2, 25
                  rem          a1, s1, s11
                  nop
                  slti         s0, t2, -354
                  c.add        s1, t2
                  andi         zero, a3, -183
                  c.mv         gp, s1
                  srl          s1, s9, s3
                  c.andi       s1, 24
                  srli         a0, s11, 26
                  or           a3, a6, t2
                  c.add        a0, s4
                  nop
                  add          t1, s9, a2
                  or           a5, zero, gp
                  c.xor        a2, a1
                  nop
                  c.add        s3, s11
                  sra          s5, t0, sp
                  c.or         a3, s0
                  sra          a2, a4, t3
                  sll          s8, s8, s11
                  mulhsu       s7, s8, tp
                  c.andi       s0, -1
                  sltiu        t1, a5, 1526
                  andi         a3, s5, 1657
                  c.nop
                  div          s9, zero, gp
                  lui          t6, 323120
                  c.xor        a3, s1
                  c.lui        s1, 23
                  c.slli       s8, 29
                  c.mv         s4, s1
                  sltu         s4, a3, s3
                  c.xor        a5, s1
                  c.add        a5, ra
                  srli         t0, s0, 2
                  c.srli       s1, 13
                  c.add        t6, s3
                  ori          s1, s9, -643
                  c.sub        a5, s1
                  or           a2, s10, a6
                  c.srli       a0, 25
                  srl          zero, t4, a1
                  rem          a7, t5, gp
                  mulh         a0, ra, a1
                  c.slli       a3, 25
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_20
                  li           t0, 0x6a49af19
                  li           s4, 0x14450b22
                  li           s9, 0xffffffff
                  li           t4, 0x2db8780e
                  li           gp, 0x80000000
                  li           a1, 0xffffffff
                  li           t5, 0x80000000
                  li           s2, 0x80000000
                  li           a3, 0x80000000
                  divu         s2, a1, s2
                  divu         t5, t0, s4
                  divu         t0, gp, s2
                  rem          s4, t0, s4
                  lui          t0, 661816
                  mulhu        a3, a1, gp
                  nop
                  lui          a3, 989721
                  mulhu        t5, s4, gp
                  divu         t5, gp, t4
                  mulhsu       t4, ra, a1
                  divu         s2, s2, s9
                  remu         a3, s2, ra
                  mulhsu       s2, a1, t0
                  sub          gp, a1, s9
                  mulh         a3, s9, a1
                  mulh         a1, s9, a1
                  mulhu        s2, a1, s4
                  remu         s4, gp, t4
                  add          a1, s4, s9
                  nop
                  div          a3, s4, s4
                  mulh         s2, t0, a3
                  mulhsu       t4, s4, gp
                  mulhsu       t5, s4, gp
                  add          t5, s4, s9
                  mulh         a3, s4, t4
                  addi         a3, a3, 497
                  auipc        a1, 48867
                  mulh         t4, t5, t0 #end riscv_int_numeric_corner_stream_20
                  xor          a6, a4, zero
                  c.and        s0, a5
                  lui          t6, 996899
                  slt          s9, a2, sp
                  sltu         t2, a1, t6
                  xor          s5, a5, t0
                  mulh         s6, tp, s10
                  addi         s7, s5, -1456
                  c.srli       a3, 22
                  c.lui        s10, 7
                  c.and        a2, s0
                  sltu         a6, s7, s4
                  srl          a7, t6, a5
                  srl          s9, a0, s10
                  auipc        a1, 428626
                  srai         t2, a1, 20
                  addi         a2, s3, 645
                  mulh         s6, s7, t1
                  mul          s10, a4, s7
                  sltiu        s7, t0, 319
                  slt          s5, s1, s0
                  c.add        s3, t2
                  c.andi       a0, -1
                  sltiu        zero, s10, 92
                  mulhsu       s4, t3, t3
                  c.sub        a2, a3
                  srai         zero, a6, 27
                  divu         t1, a2, a2
                  xori         a5, s6, -451
                  c.add        a7, t0
                  slli         s5, t2, 24
                  c.slli       s6, 30
                  ori          t2, a1, 818
                  or           s4, gp, t0
                  add          t6, sp, gp
                  srai         a0, s10, 1
                  nop
                  c.xor        a5, a1
                  c.nop
                  lui          s8, 531715
                  nop
                  xori         a7, s6, -252
                  or           t5, a5, t1
                  ori          a1, zero, 1066
                  c.slli       a7, 28
                  mulhu        t2, a7, s8
                  auipc        a5, 1028928
                  c.or         a3, a5
                  c.li         s0, -1
                  div          s8, t3, s9
                  c.nop
                  c.and        s0, a4
                  nop
                  c.lui        s9, 21
                  sll          s5, sp, s6
                  mulh         a3, tp, s5
                  c.xor        a5, a3
                  c.nop
                  srai         tp, a1, 3
                  c.li         a7, 28
                  c.slli       tp, 26
                  nop
                  slti         t6, a6, -1451
                  srai         a1, t3, 14
                  c.or         s0, a5
                  c.xor        a1, s1
                  auipc        gp, 762344
                  ori          a3, t1, 1391
                  sltu         gp, s1, t1
                  xor          s2, a4, t5
                  divu         s5, s7, s8
                  xor          s9, a7, s4
                  sra          s10, s8, t2
                  srai         a0, t6, 8
                  srai         s6, a5, 14
                  lui          t2, 907379
                  divu         t6, zero, a0
                  auipc        s5, 460236
                  ori          a7, a2, 1372
                  c.lui        s6, 21
                  c.srli       a3, 8
                  sltiu        zero, a1, 1862
                  srli         s6, s0, 20
                  mulh         a3, zero, t0
                  c.mv         s6, a5
                  c.add        a7, a1
                  sra          s7, a1, t4
                  sltu         s1, s1, gp
                  sra          s5, t2, a0
                  andi         s3, sp, -1439
                  sub          t6, a3, s11
                  addi         s3, s7, 35
                  add          ra, a2, s8
                  remu         t5, t0, t2
                  mulhsu       a3, a6, s4
                  c.xor        s0, a3
                  c.srli       s1, 1
                  rem          s3, t0, a7
                  div          s4, a7, t5
                  mulh         gp, a5, s11
                  xor          s10, t0, a2
                  addi         s6, ra, 456
                  addi         s8, t4, -1806
                  c.xor        s0, a0
                  c.sub        a5, s1
                  sltiu        s1, a3, 1627
                  div          a3, ra, a0
                  div          a0, s1, ra
                  lui          s2, 246059
                  la x27, test_done
                  jalr x0, x27, 0
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
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
                  addi x2, x2, -4
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  sw  x14, (x2)
                  add x14, x2, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x2, x14, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x26, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x26, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x26, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x26, x25, ecall_handler
                  li x25, 0x1
                  beq x26, x25, instr_fault_handler
                  li x25, 0x5
                  beq x26, x25, load_fault_handler
                  li x25, 0x7
                  beq x26, x25, store_fault_handler
                  li x25, 0xc
                  beq x26, x25, pt_fault_handler
                  li x25, 0xd
                  beq x26, x25, pt_fault_handler
                  li x25, 0xf
                  beq x26, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x14, x2, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x2, x14, zero
                  lw  x14, (x2)
                  addi x2, x2, 4
                  mret

load_fault_handler:
                  add x14, x2, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x2, x14, zero
                  lw  x14, (x2)
                  addi x2, x2, 4
                  mret

store_fault_handler:
                  add x14, x2, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x2, x14, zero
                  lw  x14, (x2)
                  addi x2, x2, 4
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x14, x2, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x2, x14, zero
                  lw  x14, (x2)
                  addi x2, x2, 4
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x14, x2, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x2, x14, zero
                  lw  x14, (x2)
                  addi x2, x2, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x14, x2, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x2, x14, zero
                  lw  x14, (x2)
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
