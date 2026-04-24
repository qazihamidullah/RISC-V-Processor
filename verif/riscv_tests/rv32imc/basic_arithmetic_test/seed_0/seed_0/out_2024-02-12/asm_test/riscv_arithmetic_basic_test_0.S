.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x28, 0x40001104
                  csrw 0x301, x28
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  li x28, 0x0
                  csrw 0x304, x28 # MIE
                  mret
init:             
                  li x0, 0xc790328
                  li x1, 0xb
                  li x3, 0xf769aaee
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xf34fb1a6
                  li x9, 0xb
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xe
                  li x13, 0xbcbf4689
                  li x14, 0xc
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x5
                  li x20, 0x1
                  li x21, 0xf1bb8863
                  li x22, 0x97f9d43f
                  li x23, 0x0
                  li x25, 0x80000000
                  li x26, 0x6f5393ee
                  li x27, 0xfc17bef8
                  li x28, 0x7
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x4ed510
                  la x24, user_stack_end
main:             li           a3, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           t6, 0x80000000
                  li           s7, 0x0
                  li           a5, 0xab469d42
                  li           a4, 0x0
                  li           t3, 0x891f2a4f
                  li           s11, 0x80000000
                  li           s4, 0x5bb3f0da
                  li           a1, 0xc41b8db5
                  li           t4, 0xe3709b05
                  auipc        s11, 667262
                  lui          a3, 826954
                  rem          a4, a3, a3
                  add          t6, a1, t3
                  divu         s11, t6, s11
                  divu         s11, s11, t3
                  rem          t3, a3, a3
                  lui          a4, 467226
                  lui          a3, 840345
                  auipc        a5, 876619
                  mulhu        a3, s7, s11
                  nop
                  mulhsu       a3, s4, s11
                  sub          s4, t3, a4
                  nop
                  nop
                  mulh         s7, a5, s11
                  remu         s7, t3, t4
                  sub          a4, a3, a5
                  add          s7, a4, s7
                  auipc        a5, 445610
                  auipc        s4, 519964
                  mulhsu       t4, s11, s11
                  mulhsu       t4, s11, a1
                  divu         s11, a1, a5
                  mulhu        s11, a3, a5
                  nop
                  lui          s7, 863166 #end riscv_int_numeric_corner_stream_36
                  li           s1, 0x7f2c02a9 #start riscv_int_numeric_corner_stream_31
                  li           s6, 0x9db753e0
                  li           t0, 0xffffffff
                  li           tp, 0xb09f82f8
                  li           gp, 0x1577ab8
                  li           s5, 0x254ae0a7
                  li           s10, 0xffffffff
                  li           a6, 0xc3cff0a1
                  li           a1, 0x73cd05e5
                  li           s4, 0xffabe3d7
                  rem          s6, s5, tp
                  mulhsu       s4, s5, s10
                  rem          tp, a1, gp
                  mul          a1, s1, s4
                  lui          a1, 354852
                  mulh         t0, s10, t0
                  add          a1, s10, s6
                  mulhu        a6, s5, a1
                  addi         s1, s5, 1225
                  mulh         a1, t0, a6
                  auipc        s6, 420501
                  mul          s10, s10, tp
                  mulhsu       a1, s10, s4
                  auipc        s5, 576236
                  rem          s10, t0, gp
                  mulhu        s1, s10, s6
                  mulhu        s1, tp, s6
                  mulh         tp, s5, a6
                  lui          gp, 79142
                  add          a6, a6, s4
                  add          s1, a6, s5
                  div          a6, t0, s10
                  nop
                  lui          s6, 394456
                  rem          a1, s1, a1
                  auipc        tp, 503122
                  mulhu        s5, s5, s4
                  add          t0, a6, tp
                  nop #end riscv_int_numeric_corner_stream_31
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s5, 0xffffffff
                  li           a4, 0x80000000
                  li           tp, 0x0
                  li           s11, 0xffffffff
                  li           s7, 0x0
                  li           t4, 0x80000000
                  li           t2, 0x0
                  li           a3, 0xffffffff
                  li           a1, 0x0
                  div          s11, t4, a1
                  add          a3, a3, s11
                  rem          s11, s11, a4
                  lui          s5, 951826
                  lui          s11, 856405
                  addi         a4, s5, -466
                  add          a4, a1, t4
                  sub          tp, a3, s7
                  lui          tp, 105705
                  rem          a1, s11, a1
                  mulh         a3, a1, a4
                  mulhsu       a6, s11, t4
                  lui          s11, 439654
                  lui          a6, 164616
                  mulhsu       a1, a3, t4
                  remu         a3, s11, a4
                  lui          a6, 449383
                  mulhsu       s11, a6, a1
                  addi         s5, a1, 149 #end riscv_int_numeric_corner_stream_11
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t4, 0xffffffff
                  li           s7, 0x0
                  li           s1, 0xffffffff
                  li           t6, 0xffffffff
                  li           s4, 0x80000000
                  li           a7, 0x51b5e2cf
                  li           s9, 0xffffffff
                  li           a0, 0x80000000
                  li           t1, 0x0
                  mulh         s9, t1, t4
                  remu         s1, t4, t1
                  sub          s4, s4, s1
                  rem          s4, s1, t6
                  mulhu        t1, s4, t4
                  rem          t4, a7, t4
                  auipc        t4, 878154
                  divu         s9, s7, s1
                  remu         a0, s4, s7
                  lui          a0, 47452
                  sub          s4, a0, s1
                  mulhsu       t6, s1, t2
                  addi         a0, t4, 1280
                  sub          t4, s1, t6
                  mulhsu       a7, a0, s4
                  auipc        s9, 260332
                  mulhu        a0, s9, t4 #end riscv_int_numeric_corner_stream_4
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           a4, 0x80000000
                  li           s9, 0xffffffff
                  li           ra, 0xffffffff
                  li           t1, 0x80000000
                  li           s1, 0xffffffff
                  li           s2, 0xeb77c095
                  li           t2, 0xda1edfc
                  li           tp, 0x0
                  li           s10, 0xa1def99c
                  mul          t1, a4, tp
                  mulhsu       s9, s1, a4
                  auipc        s9, 628047
                  auipc        s10, 57865
                  mulhsu       s1, s9, s10
                  mulhu        s9, tp, s10
                  mulh         a4, t2, a4
                  mul          ra, s6, s10
                  rem          s9, a4, ra
                  mulhu        s1, s9, a4
                  rem          s10, s6, s1
                  mulhu        t2, tp, s1
                  lui          s6, 545415
                  mulhu        s6, t1, s2
                  mulhsu       s1, s10, s2
                  mulh         s10, tp, t1
                  mulh         s9, a4, a4
                  mulhu        tp, a4, s10
                  auipc        s2, 636596
                  mulhu        a4, ra, t2
                  mul          s9, tp, s6
                  sub          t2, s9, ra
                  mul          s1, tp, s2
                  divu         tp, s2, s6
                  divu         s9, s1, s9
                  div          s9, s10, s1 #end riscv_int_numeric_corner_stream_16
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           a4, 0x53ee8aca
                  li           s1, 0xffffffff
                  li           s10, 0xa61a48a1
                  li           tp, 0xffffffff
                  li           s0, 0xffffffff
                  li           a6, 0x0
                  li           s5, 0xffffffff
                  li           s6, 0xffffffff
                  li           a7, 0xffffffff
                  mulhsu       a1, a1, s10
                  divu         a4, tp, a7
                  mul          tp, s0, s6
                  mulhsu       a7, s10, a6
                  mulhu        tp, s6, a4
                  nop
                  addi         s6, s5, 222
                  addi         s1, a4, 284
                  rem          s1, s1, tp
                  nop
                  nop
                  addi         a7, a6, 166
                  divu         s5, a1, a4
                  div          a7, a4, s0
                  mulhu        s1, s0, s1
                  divu         s6, a1, s1
                  auipc        s10, 525280
                  auipc        a4, 41691
                  mulhsu       tp, s6, s6
                  mulhsu       a1, a1, a6
                  mul          a7, a7, s1
                  sub          a6, s1, a4
                  mulh         a7, s1, s1
                  div          a4, s10, a4
                  mulhu        s1, s0, a4
                  rem          a4, a6, a4
                  nop
                  sub          a4, s5, s1
                  mulh         s1, tp, s5
                  mul          s5, a1, a4 #end riscv_int_numeric_corner_stream_8
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           tp, 0x80000000
                  li           ra, 0xffffffff
                  li           s11, 0x80000000
                  li           gp, 0xffffffff
                  li           a3, 0x66066953
                  li           a2, 0xffffffff
                  li           t2, 0x80000000
                  li           s5, 0x80000000
                  li           a5, 0x0
                  rem          ra, ra, t2
                  nop
                  add          s5, s6, a5
                  mulh         s6, ra, a2
                  rem          a5, s6, t2
                  addi         a5, s6, 781
                  auipc        s6, 1001301
                  mulh         tp, a2, s6
                  sub          s5, ra, s6
                  mulh         gp, s6, a3
                  rem          tp, s11, a5
                  lui          a5, 829032
                  rem          s5, s5, tp
                  div          ra, s11, gp
                  add          tp, a2, a2
                  mul          s11, gp, gp
                  mulhu        tp, a5, s11
                  div          a3, a2, a5
                  mulhu        s11, s6, t2
                  mul          a2, s11, s6
                  addi         tp, s5, -250
                  mulhsu       a5, s5, t2
                  mulhsu       a3, s5, a3
                  nop
                  div          a2, s5, a2
                  divu         s11, ra, gp
                  nop #end riscv_int_numeric_corner_stream_15
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_21
                  li           a5, 0xa7645a69
                  li           s4, 0xffffffff
                  li           t1, 0x80000000
                  li           a3, 0x290043b0
                  li           t2, 0x80000000
                  li           s0, 0xf094496d
                  li           s5, 0x80000000
                  li           t6, 0xffffffff
                  li           t0, 0x0
                  nop
                  addi         s4, t2, 1057
                  mulh         a3, a3, s4
                  rem          t2, t2, s0
                  mul          t2, a3, a5
                  add          a5, s0, t6
                  sub          t6, s0, s0
                  mulhu        t1, t6, t0
                  rem          t0, s5, t6
                  auipc        s5, 281194
                  mul          t1, t6, t6
                  nop
                  mul          s5, t2, s0
                  remu         t2, t1, tp
                  auipc        t1, 613932
                  lui          t6, 598643
                  addi         a5, a3, 1925
                  mulh         s5, tp, s0
                  remu         s0, t2, s5
                  mulhsu       t2, t6, t2
                  mul          t2, s0, t2
                  lui          tp, 385947
                  mulhsu       tp, a5, t0
                  auipc        s5, 467387
                  remu         tp, s5, t1
                  add          a3, s0, a3
                  mulhsu       t2, s5, t0
                  mulhsu       s4, t6, t1
                  nop #end riscv_int_numeric_corner_stream_21
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s7, 0x0
                  li           s1, 0x80000000
                  li           t2, 0x0
                  li           a6, 0x913df632
                  li           a4, 0xffffffff
                  li           s11, 0x80000000
                  li           s6, 0x80000000
                  li           a7, 0xffffffff
                  li           ra, 0x0
                  remu         s11, a6, s6
                  remu         a4, s11, a7
                  auipc        a6, 51296
                  sub          s7, t2, ra
                  mulh         a4, t2, s1
                  divu         s1, a4, s11
                  lui          ra, 300517
                  nop
                  remu         ra, s1, s6
                  sub          s11, s11, s1
                  nop
                  mulhu        s7, s1, s2
                  auipc        t2, 55641
                  lui          t2, 287968
                  addi         s11, t2, 1939
                  div          a4, t2, s11 #end riscv_int_numeric_corner_stream_1
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           ra, 0xffffffff
                  li           tp, 0x773c972a
                  li           s1, 0xffffffff
                  li           s9, 0xf07e3966
                  li           s4, 0x80000000
                  li           a3, 0x80000000
                  li           t0, 0xffffffff
                  li           s6, 0xffffffff
                  li           a4, 0xe71b6d46
                  mul          a0, a4, ra
                  add          a4, s6, s1
                  sub          s9, ra, t0
                  sub          ra, a4, s6
                  mulhsu       s6, tp, a4
                  divu         t0, t0, a0
                  mulhsu       t0, a0, tp
                  add          a4, t0, a4
                  auipc        t0, 409993
                  add          t0, ra, tp
                  mulhu        ra, s6, s4
                  nop
                  mulh         tp, a0, a4
                  lui          tp, 436192
                  mulhu        s4, t0, t0
                  mulh         s4, a0, ra
                  add          a3, s6, s4
                  div          ra, s9, tp
                  mulhu        s9, a4, s6
                  div          a0, s6, a3
                  add          a4, s6, ra
                  remu         t0, a0, s9
                  divu         s9, a0, s1
                  lui          a3, 263547
                  nop
                  nop
                  mulhu        s4, t0, tp
                  mulhu        s6, s6, tp #end riscv_int_numeric_corner_stream_3
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_35
                  li           s7, 0xffffffff
                  li           t2, 0xffffffff
                  li           a4, 0x0
                  li           s4, 0x80000000
                  li           t4, 0x0
                  li           gp, 0x6d258db0
                  li           t0, 0x59ce2875
                  li           s10, 0x0
                  li           s1, 0xffffffff
                  add          gp, t4, t4
                  remu         a4, s10, t2
                  addi         t0, a4, -1144
                  rem          s4, t4, s10
                  mulh         a0, t0, s4
                  rem          s10, s4, a4
                  remu         s4, s1, s1
                  mulh         t0, t0, t2
                  divu         s1, t4, s4
                  rem          s4, t0, t0
                  mulhu        t0, t4, t0
                  mulh         a4, s1, a0
                  addi         s10, a4, 1560
                  divu         a0, t0, t4
                  divu         s4, t4, s1
                  auipc        t4, 913996 #end riscv_int_numeric_corner_stream_35
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t2, 0x80000000
                  li           a4, 0x0
                  li           s4, 0x80000000
                  li           a2, 0xffffffff
                  li           s1, 0x80000000
                  li           a1, 0x0
                  li           t1, 0x0
                  li           t6, 0x1403dcbf
                  li           s0, 0x0
                  auipc        s4, 496863
                  mulhsu       s4, t6, a2
                  mul          a1, a0, a4
                  divu         s0, t6, a0
                  mulhsu       a2, s4, s0
                  mulhu        s4, s4, a0
                  divu         t6, a2, a1
                  div          s4, s4, s1
                  auipc        t1, 281536
                  sub          s4, t6, s1
                  remu         t2, a2, t6
                  mulhsu       s1, s4, t2
                  addi         s1, t1, 1634
                  remu         s4, a2, s4
                  divu         s1, a0, s0
                  rem          s0, s1, s1
                  nop
                  rem          s1, t6, a1
                  addi         t6, a4, 1498
                  lui          s4, 802481
                  mulhu        t2, t6, t2
                  sub          s4, a0, s0
                  divu         t2, s1, a2
                  add          t6, t6, t2
                  sub          a2, t1, t6 #end riscv_int_numeric_corner_stream_10
                  li           a6, 0x452b4b21 #start riscv_int_numeric_corner_stream_27
                  li           t3, 0xffffffff
                  li           t0, 0xffffffff
                  li           ra, 0x10c64630
                  li           a5, 0x0
                  li           t4, 0xffffffff
                  li           a0, 0x80000000
                  li           t6, 0xbd8ad3a6
                  li           s5, 0xffffffff
                  li           s7, 0x80000000
                  addi         a6, t3, 195
                  rem          s7, ra, s7
                  mul          ra, a0, t4
                  remu         a0, s7, a0
                  remu         a0, s7, t0
                  auipc        a6, 369384
                  auipc        t0, 542755
                  addi         t3, a6, 1445
                  lui          a5, 887329
                  mul          t3, a0, t0
                  addi         a6, t6, -310
                  addi         a0, t6, 1645
                  mulhsu       a6, t3, a0
                  mul          a6, t3, s5
                  lui          a6, 455119
                  divu         s7, ra, t6
                  mulhu        a0, a6, t6
                  rem          t6, a6, s7
                  addi         a6, s5, -793 #end riscv_int_numeric_corner_stream_27
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           gp, 0x956f141e
                  li           a1, 0x80000000
                  li           t5, 0x0
                  li           tp, 0x0
                  li           a3, 0xffffffff
                  li           t1, 0x0
                  li           s5, 0x4e78c4dd
                  li           t0, 0x0
                  li           a7, 0x0
                  div          a3, a7, t0
                  lui          t5, 1034130
                  auipc        t1, 692313
                  sub          a7, tp, t0
                  mulh         a3, a7, s5
                  remu         t5, a7, gp
                  mulhu        t0, tp, tp
                  sub          a1, t1, t0
                  mulhu        a1, t5, t5
                  mulhu        a7, a7, tp
                  rem          t5, t5, gp
                  add          a1, t1, a3
                  divu         gp, tp, gp
                  nop
                  remu         t5, a3, gp
                  add          a3, a7, a1
                  lui          t0, 359373
                  divu         tp, s5, a7
                  mulh         a7, a3, t5
                  divu         a7, a7, tp #end riscv_int_numeric_corner_stream_13
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_37
                  li           t5, 0xffffffff
                  li           gp, 0xffffffff
                  li           t6, 0x80000000
                  li           ra, 0x38542129
                  li           t0, 0x0
                  li           a4, 0x80000000
                  li           s7, 0x0
                  li           s4, 0x80000000
                  li           s11, 0xffffffff
                  mulh         ra, s7, gp
                  mulh         s11, t6, t6
                  auipc        t6, 51235
                  nop
                  divu         a3, s7, gp
                  divu         t5, a3, gp
                  addi         gp, ra, 355
                  rem          gp, s4, a4
                  divu         a3, s7, s4
                  rem          s7, gp, t0
                  divu         a3, s4, a3
                  mulhu        t0, s11, s7
                  divu         gp, t0, ra
                  lui          s7, 729966
                  auipc        t6, 78882
                  auipc        t5, 875672 #end riscv_int_numeric_corner_stream_37
                  li           s11, 0xd42a8dfc #start riscv_int_numeric_corner_stream_28
                  li           t1, 0x0
                  li           s4, 0x80000000
                  li           tp, 0x80000000
                  li           a5, 0x0
                  li           a3, 0x0
                  li           s9, 0xffffffff
                  li           s2, 0xb03aae22
                  li           s10, 0x4543d319
                  li           s6, 0x20860fed
                  auipc        s9, 926922
                  mulhu        s2, t1, s6
                  sub          tp, s9, tp
                  add          t1, s11, s10
                  remu         s9, s6, s6
                  auipc        s10, 892900
                  auipc        s9, 510219
                  auipc        s4, 140472
                  mulh         s2, tp, a3
                  lui          s10, 961370
                  sub          s4, s4, t1
                  mul          s10, s10, a5
                  sub          tp, s9, s6
                  mulh         a3, s9, s4
                  remu         s6, s10, s11 #end riscv_int_numeric_corner_stream_28
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_30
                  li           a6, 0x80000000
                  li           s10, 0xffffffff
                  li           t5, 0x80000000
                  li           a5, 0x552e7b74
                  li           a0, 0xffffffff
                  li           t1, 0x0
                  li           s4, 0x80000000
                  li           s11, 0x0
                  li           t2, 0xffffffff
                  mulhu        t2, a6, a0
                  mul          a6, s11, s4
                  lui          t2, 450100
                  rem          s10, t5, t1
                  add          s4, a6, s11
                  divu         s10, a5, t1
                  rem          a6, a6, s10
                  sub          t5, a0, s11
                  mulh         s4, tp, tp
                  sub          t1, s4, a5
                  add          t5, a5, a0
                  remu         t2, a0, s4
                  mulhu        a6, tp, t5
                  mul          s11, t2, t2
                  auipc        s4, 543188
                  mulh         s10, tp, s4
                  lui          t2, 899059
                  rem          t1, t2, s10
                  mulh         a5, tp, t5
                  mulh         a6, tp, t1
                  nop
                  lui          a6, 766976
                  mul          t2, t2, a6
                  remu         tp, a0, s10 #end riscv_int_numeric_corner_stream_30
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           t5, 0xffffffff
                  li           t1, 0x8281c9fd
                  li           ra, 0x5d690281
                  li           t6, 0x280b2017
                  li           t3, 0xffffffff
                  li           a3, 0xffffffff
                  li           s9, 0x0
                  li           s6, 0x80000000
                  li           s1, 0x0
                  sub          s6, t1, a5
                  auipc        t3, 427392
                  div          s1, t5, t6
                  mulh         s9, s1, s6
                  mulhsu       s9, s1, s1
                  rem          a3, ra, a5
                  rem          t5, a3, t3
                  mulh         ra, t1, a3
                  auipc        s6, 225674
                  div          s1, t5, a5
                  auipc        a3, 821119
                  addi         t3, ra, 1822
                  mulhu        t3, s1, a3
                  rem          t5, t1, t3
                  remu         ra, t6, t3
                  add          ra, t1, t6
                  remu         ra, s1, a5
                  lui          s9, 574805
                  lui          s9, 762451
                  remu         t1, ra, s9
                  mulh         ra, t1, t6
                  lui          s9, 653990
                  rem          a3, t1, t5
                  auipc        ra, 769924
                  mulhu        s9, a3, a3
                  rem          a3, s9, ra #end riscv_int_numeric_corner_stream_5
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_20
                  li           a2, 0xffffffff
                  li           ra, 0x7f80da6b
                  li           s1, 0xffffffff
                  li           t2, 0x80000000
                  li           t6, 0xffffffff
                  li           a7, 0x80000000
                  li           t0, 0x0
                  li           s2, 0x50e41da4
                  li           gp, 0x0
                  add          t2, s1, a7
                  divu         a2, a2, s1
                  addi         a7, s2, -1439
                  mul          t6, a7, t0
                  remu         a7, a2, t6
                  mul          t2, gp, a2
                  auipc        s1, 158425
                  sub          a7, ra, t0
                  divu         t6, s1, gp
                  mulhsu       t6, s1, t0
                  remu         t6, t0, ra
                  add          s2, s2, a7
                  nop
                  mulhsu       a7, s5, s5
                  mulh         s2, s5, a7
                  mulhu        a2, t2, s5
                  mulhu        a2, s1, ra
                  mul          t6, t6, s5
                  mul          a7, s2, s1
                  mulhsu       gp, t2, ra
                  auipc        s2, 1012507
                  sub          s1, s2, s1 #end riscv_int_numeric_corner_stream_20
                  c.addi       a5, 26
                  sltu         a2, s6, a0
                  c.andi       s1, -1
                  divu         s2, gp, s2
                  mulh         t5, s8, s9
                  c.xor        a1, a1
                  sra          a3, a0, gp
                  sltu         a7, s1, t2
                  slti         a6, s11, 965
                  add          gp, zero, s9
                  c.or         a3, a5
                  andi         t6, t4, 944
                  lui          t6, 181986
                  c.or         a1, s1
                  c.lui        gp, 9
                  c.slli       t6, 10
                  div          t4, s8, t3
                  lui          a4, 9944
                  div          gp, s9, t5
                  sltu         s0, a0, s7
                  mulhsu       ra, s11, sp
                  c.srli       s0, 22
                  sll          t4, ra, t3
                  slti         s6, s8, -601
                  andi         zero, t6, -1188
                  or           a3, s10, zero
                  c.sub        a2, a2
                  sltiu        a4, a0, -125
                  c.srli       a1, 25
                  c.slli       a1, 17
                  andi         s1, s2, -933
                  c.addi       t2, 24
                  slti         tp, a3, -703
                  ori          a4, s5, -1829
                  auipc        a1, 932478
                  mul          s2, s5, s8
                  ori          s10, s5, 1111
                  mulh         a3, t6, s2
                  slli         t5, s0, 22
                  c.sub        a1, a2
                  c.and        a0, a0
                  c.sub        s1, s0
                  xor          a5, t2, t1
                  c.srai       s1, 17
                  c.slli       s0, 26
                  c.li         s11, -1
                  sub          a3, s3, a1
                  srli         a0, s10, 11
                  slli         a7, a5, 27
                  mulhsu       s9, a1, s0
                  sub          s2, ra, a2
                  c.xor        a2, a5
                  or           t5, t2, s3
                  srai         t6, s3, 31
                  c.mv         t5, sp
                  c.li         a5, 4
                  srai         t4, s9, 6
                  srli         s0, s6, 30
                  sub          a7, a1, a7
                  c.addi       a5, 30
                  c.add        a1, t3
                  xori         t4, zero, 494
                  c.or         a2, a4
                  c.srli       a3, 20
                  xori         a5, a1, 1275
                  or           a0, s8, s1
                  sltiu        t0, s8, 1766
                  add          t5, s5, s11
                  c.mv         a3, sp
                  nop
                  nop
                  c.lui        s6, 12
                  c.lui        t6, 12
                  add          s10, s10, a4
                  sll          s0, a4, a5
                  c.andi       a1, 13
                  c.srai       a2, 11
                  add          a2, s10, s11
                  sra          t0, t1, a0
                  addi         s6, zero, 596
                  mulh         a6, s8, s5
                  c.andi       a3, 2
                  c.slli       a2, 7
                  slt          t0, t0, a1
                  rem          tp, tp, t2
                  div          s5, a3, tp
                  auipc        s11, 437898
                  c.and        s1, s1
                  nop
                  andi         s7, s4, -1692
                  c.srai       a0, 28
                  slt          t3, s8, s1
                  and          s4, s2, a3
                  srli         s9, s7, 29
                  c.lui        a4, 6
                  srli         t0, a0, 1
                  c.lui        a6, 5
                  c.sub        s1, a2
                  c.or         s0, a3
                  c.srli       a5, 30
                  andi         a3, s4, -102
                  divu         s0, a7, a3
                  c.sub        a4, s1
                  div          t4, t1, gp
                  xori         t0, s3, 1294
                  addi         t3, a7, 807
                  div          s9, t6, t3
                  c.nop
                  add          tp, a5, a1
                  c.xor        a2, a3
                  mulhu        s4, zero, s10
                  c.mv         a3, a5
                  xor          s1, t1, s1
                  sltiu        zero, a7, -1487
                  c.sub        a4, s1
                  xori         a5, sp, -321
                  mulhsu       s2, t0, t1
                  or           s4, s11, sp
                  sltu         s2, s1, tp
                  mulh         a4, t3, s11
                  or           t3, a2, a1
                  nop
                  divu         s9, a4, a6
                  c.mv         a5, a7
                  c.nop
                  c.addi       s10, -1
                  c.li         t1, 11
                  slt          s7, s11, t1
                  c.mv         t6, a7
                  srai         ra, t3, 6
                  mul          s0, s8, s8
                  rem          a7, t3, s0
                  c.or         s1, a4
                  slli         s5, a1, 1
                  c.slli       t2, 3
                  sra          s4, t3, a7
                  c.srai       s1, 16
                  c.andi       a2, -1
                  divu         gp, zero, tp
                  c.slli       s11, 21
                  c.nop
                  srl          t4, t4, t2
                  c.sub        a0, a2
                  c.and        a3, a4
                  div          s2, tp, s10
                  srai         s7, s9, 9
                  srli         s4, a5, 12
                  lui          zero, 111869
                  c.lui        t3, 17
                  sll          a3, t5, s5
                  divu         s1, s2, sp
                  slti         s10, s4, 1744
                  c.mv         t2, s10
                  c.and        s1, a1
                  c.mv         gp, s2
                  c.sub        a4, a4
                  sll          a6, ra, zero
                  c.sub        a3, a2
                  auipc        a3, 889062
                  c.nop
                  mul          a5, a2, a2
                  divu         a4, a0, t3
                  slli         gp, t3, 31
                  rem          t6, sp, t6
                  ori          a5, t2, -802
                  remu         t1, t4, a2
                  mulhu        t6, a4, t1
                  c.xor        a2, a0
                  c.srli       a0, 5
                  or           a3, sp, t5
                  sll          s6, ra, s5
                  c.srai       a1, 18
                  slti         s9, s11, -389
                  xori         s9, a1, 1790
                  rem          t1, s11, ra
                  remu         s1, t6, s10
                  nop
                  xori         zero, t0, 979
                  sra          a3, a7, s6
                  c.addi       s0, -1
                  c.li         s4, -1
                  sll          s11, a4, a7
                  rem          s4, a7, s0
                  sub          s0, s0, t0
                  srai         t5, s1, 30
                  c.add        a3, s6
                  c.add        a1, s0
                  sll          zero, a2, t1
                  andi         gp, s11, -1691
                  sra          a1, s2, a7
                  slti         s0, t6, 406
                  auipc        t3, 123063
                  c.nop
                  c.andi       a2, -1
                  c.and        s1, a5
                  c.mv         s5, ra
                  c.mv         t1, sp
                  c.lui        t1, 23
                  xori         s0, a1, -1953
                  c.or         s0, a4
                  or           s10, t4, s11
                  mul          a0, a6, t5
                  rem          t1, tp, s2
                  sltu         t4, s5, ra
                  remu         t3, a3, sp
                  sltu         t5, zero, t2
                  slt          a4, s8, s6
                  srli         t5, a4, 15
                  rem          t5, gp, a4
                  c.srai       a4, 8
                  sltu         a6, s6, s2
                  sltu         a0, a7, s7
                  sltiu        a0, a5, 1010
                  c.sub        a3, a2
                  srl          ra, s2, s9
                  add          t3, t0, t5
                  c.add        t0, s2
                  c.nop
                  c.xor        a5, a1
                  c.or         a4, a0
                  div          t1, sp, t5
                  c.lui        s11, 4
                  c.and        a0, a2
                  xori         t2, s5, -91
                  c.li         s9, -1
                  sll          a7, tp, a6
                  srai         zero, tp, 22
                  rem          s4, s8, s9
                  c.nop
                  xor          t3, t0, s10
                  c.addi       s4, 17
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_33
                  li           gp, 0x0
                  li           s4, 0x80000000
                  li           a1, 0xffffffff
                  li           s9, 0x0
                  li           s1, 0x0
                  li           a2, 0xffffffff
                  li           a4, 0x82af1a02
                  li           s6, 0x80000000
                  li           ra, 0x0
                  rem          gp, a2, gp
                  auipc        gp, 830114
                  sub          ra, s1, s1
                  remu         ra, gp, ra
                  nop
                  mul          a4, s1, s1
                  mulhsu       s9, tp, ra
                  addi         ra, s6, 723
                  sub          s6, s9, s1
                  add          a1, gp, a2
                  nop
                  lui          gp, 895683
                  lui          gp, 995400
                  auipc        a4, 924302
                  remu         a1, a2, s4
                  add          s9, gp, a4
                  mulhu        tp, a2, s4
                  div          gp, s6, a4 #end riscv_int_numeric_corner_stream_33
                  sltu         s6, t6, t4
                  xor          a2, a0, s1
                  add          a2, t1, t4
                  andi         s0, zero, -1026
                  auipc        s7, 964624
                  c.mv         s9, a7
                  c.or         a3, a0
                  auipc        t0, 653220
                  c.lui        s4, 12
                  c.mv         gp, s7
                  and          a7, t0, s1
                  c.sub        s0, a3
                  c.or         a5, a5
                  c.andi       s1, 18
                  sltu         t1, s0, a2
                  slti         gp, a3, -295
                  addi         gp, s4, 64
                  remu         t0, s6, s6
                  srai         a7, tp, 14
                  sltiu        a7, a0, -423
                  c.mv         a5, a5
                  andi         a0, s4, -1217
                  div          a4, s10, a1
                  mulhsu       a6, t0, s2
                  divu         ra, s10, t6
                  divu         a7, s2, a2
                  mul          a3, gp, a4
                  c.xor        a0, a1
                  nop
                  xor          ra, s6, s7
                  div          ra, s2, s11
                  srli         ra, t2, 4
                  c.addi       t3, 17
                  sltu         s10, s6, t6
                  slli         s2, s9, 5
                  c.li         a0, 4
                  c.addi       a2, -1
                  nop
                  div          s1, t4, a4
                  c.or         s1, a0
                  c.slli       t3, 29
                  sltu         t1, s2, a6
                  c.li         s0, -1
                  c.mv         a7, a2
                  mul          t0, ra, t2
                  add          a1, tp, s9
                  slti         a0, s6, 1725
                  mulhsu       s9, a5, a7
                  ori          s4, s4, 32
                  c.srli       s0, 13
                  rem          a4, s4, a5
                  slli         t1, s5, 5
                  div          a7, s5, zero
                  sltu         a5, s1, s6
                  slti         a7, s9, -1177
                  c.xor        a0, a2
                  lui          s10, 471369
                  sltiu        a7, t6, -1480
                  srai         s10, s7, 22
                  c.mv         t4, t5
                  c.lui        s9, 23
                  srl          t1, a5, a4
                  sra          t2, a6, a4
                  slti         s11, t2, -1908
                  c.add        s0, a0
                  auipc        s2, 90424
                  sltu         gp, ra, s8
                  rem          s0, t0, s4
                  c.srai       a3, 27
                  c.lui        t1, 18
                  c.slli       a0, 11
                  sra          s10, a2, a6
                  xori         s0, tp, -592
                  addi         t5, zero, 797
                  lui          t0, 362898
                  c.lui        a4, 9
                  srl          ra, a7, s8
                  sll          t1, a6, s10
                  c.addi       a4, 18
                  c.li         a2, -1
                  c.mv         t5, s10
                  c.lui        t0, 26
                  c.lui        gp, 15
                  c.slli       s7, 20
                  or           ra, a2, a5
                  or           s0, a4, s8
                  c.mv         s6, t4
                  remu         a2, a3, s5
                  remu         s6, a3, a5
                  lui          t5, 676311
                  srl          tp, tp, a0
                  slt          t0, s0, t2
                  c.srli       a5, 14
                  rem          t0, t0, ra
                  c.srli       a2, 28
                  c.andi       s1, 5
                  srai         t6, t1, 25
                  xor          t2, sp, a7
                  c.nop
                  remu         gp, ra, s1
                  mul          a1, s6, a7
                  sll          s2, s9, a6
                  auipc        s0, 453177
                  c.xor        s0, a0
                  remu         s0, a0, gp
                  slt          a3, a5, a6
                  sub          a6, s7, t0
                  c.slli       a4, 5
                  auipc        a0, 164877
                  sll          a0, a4, tp
                  div          zero, t5, s9
                  c.add        a2, t4
                  andi         t1, a6, 504
                  c.slli       t2, 31
                  xori         s5, s2, -892
                  srl          s7, t6, s7
                  rem          a6, a3, t2
                  c.mv         ra, s11
                  srli         t1, s7, 1
                  sll          a3, sp, a5
                  sra          s11, tp, t3
                  remu         t6, s7, s3
                  c.addi       s10, -1
                  c.addi       t0, -1
                  xor          t2, tp, t4
                  c.mv         a4, s11
                  c.and        a0, s1
                  c.and        a0, a4
                  mul          t1, s7, t6
                  srl          t3, s1, t1
                  slti         s6, s2, -1403
                  ori          ra, a1, -1494
                  slli         t3, s0, 12
                  c.slli       s2, 5
                  srli         s7, tp, 18
                  mulh         t5, t5, s7
                  div          ra, s1, s1
                  mulhsu       s7, s10, s8
                  divu         a1, t2, s9
                  srai         t2, sp, 16
                  c.mv         s11, a2
                  divu         s5, t3, a1
                  mul          a0, s6, s9
                  c.srli       a1, 2
                  add          t4, t0, a7
                  slli         t2, s10, 27
                  sub          t3, tp, zero
                  c.li         s9, 23
                  c.lui        a1, 27
                  sub          t3, s9, a1
                  c.nop
                  nop
                  srl          a3, t0, a5
                  c.and        s0, a0
                  and          t2, s11, t3
                  sra          t2, s4, s1
                  c.xor        a3, s1
                  c.addi       s7, 22
                  srai         t2, zero, 7
                  srai         a5, s9, 23
                  c.srai       s0, 1
                  slli         a7, tp, 20
                  c.mv         a1, s5
                  remu         t0, t5, s6
                  c.and        a3, a0
                  mulh         s5, ra, a2
                  add          a1, s0, s6
                  c.andi       a3, 9
                  c.andi       a5, -1
                  sra          a4, t1, s2
                  mulh         s10, s0, t1
                  c.srli       a5, 3
                  lui          t5, 941524
                  sll          t3, s3, t3
                  xor          zero, a6, s7
                  slti         gp, tp, 385
                  c.addi       t2, 12
                  auipc        s1, 56411
                  srl          ra, t0, sp
                  nop
                  remu         gp, t1, a4
                  c.lui        t0, 18
                  sltu         t0, t6, a5
                  sltiu        s4, tp, -1178
                  mulhsu       s0, tp, s2
                  srl          s10, s7, zero
                  c.slli       a4, 25
                  srli         t2, sp, 28
                  sra          a5, a7, zero
                  andi         zero, s8, 73
                  andi         a2, t6, -83
                  remu         a6, s0, a6
                  or           a6, tp, s1
                  sll          a6, s9, s8
                  mulhu        s6, a2, tp
                  c.or         a1, a4
                  c.sub        a4, a3
                  sltu         t3, s5, t4
                  ori          a2, s4, 1146
                  srli         gp, s6, 27
                  li           tp, 0x1a26593d #start riscv_int_numeric_corner_stream_22
                  li           a5, 0xffffffff
                  li           a3, 0xffffffff
                  li           a4, 0xffffffff
                  li           s7, 0xffffffff
                  li           t3, 0xffffffff
                  li           t2, 0xffffffff
                  li           a0, 0xffffffff
                  li           a6, 0xffffffff
                  li           ra, 0xffffffff
                  sub          a3, t3, t3
                  remu         a0, t3, a5
                  nop
                  div          ra, a0, ra
                  addi         tp, s7, -1815
                  nop
                  nop
                  sub          a6, tp, a3
                  auipc        a6, 198851
                  mulhu        t3, tp, ra
                  remu         a5, s7, a5
                  rem          ra, t3, a5
                  remu         s7, s7, a6
                  mul          tp, t2, t3
                  mulhsu       ra, a5, a6
                  mulh         ra, a0, a3
                  mulh         a3, a3, a3
                  add          tp, a4, tp
                  mulhu        a3, t3, t2
                  add          tp, a3, a6
                  divu         s7, s7, a3 #end riscv_int_numeric_corner_stream_22
                  lui          a5, 516947
                  mulhsu       t5, s4, t4
                  sltu         s10, s3, s11
                  c.lui        s0, 28
                  addi         zero, s2, -1847
                  addi         s10, s1, 1571
                  slt          a4, a0, t2
                  divu         gp, s9, s3
                  slli         gp, a2, 27
                  c.nop
                  lui          a4, 301507
                  remu         s10, a0, s2
                  xor          a4, a3, s4
                  c.mv         t3, t3
                  divu         ra, s2, zero
                  c.xor        s0, s1
                  ori          a6, s6, 1688
                  sltu         a0, a1, a2
                  c.sub        a5, s1
                  xori         a6, t1, -1440
                  mul          zero, t6, a6
                  and          t6, tp, a7
                  addi         a4, a7, -1439
                  xori         t4, a0, -1499
                  lui          a5, 263490
                  xori         a6, s9, 601
                  div          a2, t6, sp
                  srai         s2, s2, 18
                  mulhsu       s2, s4, t3
                  srli         s2, s0, 21
                  xor          s7, t4, sp
                  mulhu        t1, s6, s10
                  sll          a3, a0, s11
                  mul          s5, gp, gp
                  sub          tp, s5, s6
                  c.add        a6, s8
                  lui          tp, 236513
                  c.slli       t6, 6
                  srli         s11, a1, 5
                  ori          s5, a1, -1808
                  ori          t6, s9, 1222
                  auipc        t2, 295285
                  c.slli       a0, 5
                  or           a4, s0, s4
                  c.andi       a4, -1
                  remu         t0, a2, gp
                  c.lui        t3, 25
                  lui          t4, 503396
                  divu         s2, zero, s4
                  mul          s2, a4, a5
                  slli         t4, s8, 31
                  addi         a5, a6, 475
                  c.or         s1, a5
                  mulhsu       s11, s6, tp
                  sltiu        tp, t2, -820
                  c.li         s7, -1
                  c.xor        s0, a5
                  c.mv         t3, s2
                  c.srai       s1, 28
                  remu         s2, ra, s10
                  srl          t5, s4, s1
                  andi         s7, s2, 708
                  sra          a0, t3, sp
                  or           t2, s9, t0
                  c.andi       a1, -1
                  c.xor        a0, a2
                  c.andi       a3, 14
                  c.xor        a4, a2
                  addi         s4, s2, -951
                  sub          gp, a0, t6
                  mulhu        a4, gp, ra
                  srai         s4, s9, 13
                  srli         zero, a0, 6
                  addi         tp, t2, -1810
                  sll          a4, t6, s9
                  divu         a5, t3, s2
                  mulh         s9, a0, a4
                  remu         s7, s9, ra
                  div          gp, s11, s7
                  mulhsu       s10, tp, s6
                  c.add        gp, t3
                  mulh         t2, t0, s3
                  addi         s6, s7, 1682
                  c.andi       s1, 18
                  slt          s10, tp, s4
                  srli         s10, s6, 2
                  mulhu        s7, s0, s9
                  c.sub        a4, a0
                  c.sub        a1, s0
                  c.sub        a3, s0
                  and          s1, a2, t0
                  srl          a1, t0, s11
                  sltu         s9, s3, s11
                  xor          a4, s1, gp
                  mulhu        zero, a4, t5
                  sra          zero, s9, a7
                  rem          s2, t1, s8
                  c.srai       s1, 2
                  ori          s11, a7, -81
                  srl          a2, a3, s8
                  srl          a3, a6, sp
                  remu         a6, a1, s9
                  c.add        a2, s3
                  c.addi       s5, -1
                  sltu         t2, a1, s11
                  srl          s7, sp, s8
                  c.li         s5, 27
                  sub          t1, s8, sp
                  srli         ra, a3, 21
                  c.sub        a0, a0
                  c.li         s2, -1
                  ori          a7, tp, 502
                  mul          t6, a0, t0
                  c.slli       s4, 25
                  mulhsu       s7, t0, a5
                  lui          tp, 1043882
                  div          t6, a7, gp
                  div          s6, ra, a7
                  mulh         s9, a4, t4
                  sub          a0, a0, t6
                  c.li         a4, -1
                  c.and        a4, s0
                  mulhsu       s0, t1, a1
                  srai         a2, s10, 8
                  c.add        a1, s2
                  mulh         a1, s5, s8
                  srli         t6, s3, 8
                  c.nop
                  and          s10, a7, sp
                  lui          zero, 75730
                  lui          t2, 613511
                  xor          s0, s8, t0
                  xor          ra, a0, gp
                  c.addi       gp, 30
                  xori         s9, t4, 178
                  c.sub        a4, a1
                  slti         s11, s8, -1005
                  c.or         a4, a3
                  mulhu        s4, a0, s11
                  xor          gp, ra, s6
                  c.and        a5, a3
                  addi         t5, a7, 70
                  c.addi       t0, 15
                  or           ra, a1, ra
                  c.lui        s7, 9
                  mulhsu       a5, s1, s0
                  sra          a7, a5, t1
                  c.or         a2, a1
                  div          s7, a1, s7
                  c.and        a3, s1
                  c.srai       a1, 5
                  srai         t1, s10, 2
                  c.sub        a3, s1
                  c.sub        a2, a4
                  slti         a4, s5, -1921
                  sra          t0, s10, a5
                  srl          t4, sp, t4
                  sll          t5, s0, tp
                  ori          t6, a2, 1555
                  slli         a1, s7, 18
                  c.sub        s0, s1
                  c.xor        s0, a5
                  mulh         ra, sp, a1
                  sltu         zero, a4, a5
                  c.or         a3, a3
                  sll          t3, t0, a3
                  sra          t0, s11, t5
                  c.add        s4, s2
                  mulhu        s10, s7, a2
                  nop
                  andi         t0, a2, -386
                  or           s4, gp, a2
                  c.mv         s9, a0
                  sub          a7, ra, t0
                  mulhu        t2, t0, a4
                  lui          a6, 71456
                  c.andi       a0, 10
                  c.sub        a3, a3
                  c.slli       s9, 5
                  mulh         a6, a5, a0
                  nop
                  sub          s6, s3, a0
                  or           t1, s6, a7
                  remu         t0, t1, t1
                  c.sub        a0, a4
                  rem          gp, a2, s11
                  divu         s6, a2, s5
                  mulhsu       t5, s10, a6
                  mulh         s2, t6, a6
                  remu         t0, s2, t4
                  c.slli       t5, 19
                  slli         a6, s6, 30
                  c.sub        s0, a0
                  mulh         a2, a0, t0
                  slli         t3, a5, 24
                  mulhu        gp, s10, tp
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0xffffffff
                  li           t0, 0xffffffff
                  li           s7, 0x0
                  li           a5, 0xffffffff
                  li           s1, 0xffffffff
                  li           t5, 0x80000000
                  li           ra, 0xffffffff
                  li           t3, 0x0
                  li           s2, 0x0
                  mulh         s1, a5, s4
                  mulhu        s1, ra, a5
                  nop
                  rem          ra, s7, t3
                  lui          a5, 442047
                  nop
                  mulh         t5, s7, a5
                  mul          a7, a7, s4
                  mulhsu       s2, t5, s7
                  auipc        s1, 124342
                  divu         a5, a7, s1
                  add          t0, t5, t5
                  add          a7, s2, ra
                  remu         s1, a5, s2
                  div          t5, a5, t5
                  divu         a7, s2, s4
                  div          ra, a5, a7
                  add          s2, s2, a7 #end riscv_int_numeric_corner_stream_17
                  sll          t0, a0, t0
                  c.and        a0, a4
                  slti         gp, a1, -1975
                  sub          s0, s6, s5
                  c.li         a1, 26
                  c.andi       a0, 1
                  c.andi       a2, 6
                  srli         a4, a7, 9
                  sltiu        gp, zero, 451
                  sll          a4, t6, a7
                  auipc        a6, 89919
                  c.xor        a5, a0
                  lui          s9, 440230
                  addi         s11, t4, 1821
                  rem          t1, t5, a0
                  sltu         a1, t5, t2
                  sra          a2, a3, s6
                  c.li         s11, -1
                  divu         s9, s6, s5
                  slti         a6, a7, 1545
                  c.addi       s7, -1
                  c.xor        a4, a5
                  c.sub        a4, a2
                  andi         s2, s7, -1764
                  auipc        t1, 708806
                  or           tp, ra, a6
                  remu         s1, t4, t5
                  nop
                  c.or         a3, a3
                  slli         a5, a0, 13
                  add          s11, s6, a7
                  div          a5, a3, a5
                  c.slli       a6, 18
                  srli         t1, s5, 5
                  c.nop
                  c.or         a0, s0
                  mulh         a7, s8, a3
                  mulh         a1, s5, zero
                  sra          s0, zero, s4
                  srai         s2, t5, 23
                  srai         tp, s7, 22
                  c.andi       s1, -1
                  sll          ra, s0, a4
                  c.and        a2, a4
                  c.nop
                  c.srli       a2, 5
                  sra          tp, t6, s3
                  c.sub        s1, a3
                  c.add        a3, t3
                  divu         a1, s9, sp
                  sub          a2, a1, t5
                  c.mv         a5, s11
                  c.sub        a4, a4
                  divu         a4, zero, ra
                  addi         s10, a6, 1738
                  sll          s2, a6, tp
                  c.mv         a7, s8
                  sltiu        a4, s4, -1071
                  divu         s4, s6, s6
                  c.xor        a3, s0
                  remu         t0, s6, t3
                  srli         t4, a0, 17
                  c.srai       s0, 19
                  srl          t3, t3, a1
                  slt          a7, a6, t4
                  sll          a0, a3, s11
                  divu         t1, s5, a6
                  c.sub        a5, a3
                  c.sub        s1, a1
                  c.add        t2, s7
                  addi         s7, s5, 1152
                  mul          a0, s5, sp
                  ori          s9, tp, 89
                  srl          s4, s3, s9
                  auipc        a6, 69961
                  slli         a2, t0, 17
                  c.srai       a4, 14
                  sra          s7, ra, t6
                  mulh         t3, t0, zero
                  add          a6, a0, a6
                  ori          tp, ra, -101
                  xor          a7, s11, s3
                  auipc        t0, 43076
                  or           t1, a5, s8
                  srl          a3, a6, a0
                  add          zero, s7, a6
                  c.or         a4, s0
                  c.and        a3, s1
                  divu         t1, t3, s10
                  c.add        s9, a4
                  sltu         t2, a2, t3
                  or           s5, a0, a3
                  sra          s2, t2, t4
                  ori          s9, t2, 1951
                  c.srai       a5, 6
                  slli         s10, t0, 6
                  or           t4, a3, t0
                  add          zero, a7, a3
                  add          t4, t4, t6
                  sltu         s4, sp, s2
                  slt          t2, s10, t3
                  slli         s7, s11, 14
                  ori          s0, s7, -1536
                  remu         s0, s0, t4
                  nop
                  sub          t3, s1, s1
                  c.xor        a2, a4
                  nop
                  c.xor        a5, a4
                  srai         a0, s3, 13
                  c.slli       t2, 19
                  c.nop
                  nop
                  c.sub        a4, a1
                  c.li         a4, -1
                  c.srli       a3, 1
                  mulh         s4, a1, s4
                  mulh         tp, zero, sp
                  addi         tp, s7, -2010
                  add          s2, s6, s6
                  slti         s2, t6, -1497
                  nop
                  c.srli       a2, 20
                  c.or         a0, a2
                  andi         ra, t2, 396
                  c.andi       a4, 13
                  sltiu        ra, a1, 814
                  c.add        s0, tp
                  sll          gp, zero, t0
                  c.andi       a5, 5
                  c.xor        a5, a2
                  c.sub        s1, a2
                  ori          t2, t4, 1494
                  nop
                  c.add        a1, s9
                  lui          a7, 975183
                  lui          s10, 340737
                  sra          t0, t6, a1
                  c.nop
                  mulhu        zero, sp, a3
                  rem          t2, a7, t3
                  c.mv         t3, a6
                  c.nop
                  div          t5, s3, t1
                  sll          t2, s9, s9
                  lui          s4, 237310
                  lui          zero, 807914
                  andi         s11, a2, -1139
                  c.or         a2, a3
                  nop
                  slti         t5, a4, -209
                  ori          t2, gp, 274
                  rem          gp, s8, t4
                  mulhsu       a1, a4, s3
                  sltiu        s6, a0, -2029
                  c.andi       a2, -1
                  andi         s2, s10, -1112
                  mul          a7, s1, ra
                  c.mv         s11, s11
                  c.li         s4, 3
                  rem          zero, s10, a0
                  slti         a3, t2, -1296
                  rem          s11, ra, t2
                  div          a4, s0, a6
                  c.srli       s0, 14
                  c.li         tp, 11
                  c.srli       s0, 4
                  and          s11, gp, s7
                  div          a1, a0, s3
                  nop
                  addi         t5, a5, 340
                  xori         s9, a0, -1001
                  srli         a5, s0, 3
                  sltiu        a6, t5, -1207
                  divu         t4, tp, s9
                  addi         ra, gp, 751
                  or           s5, sp, s1
                  srai         s2, s9, 20
                  c.slli       a7, 6
                  c.li         tp, 25
                  lui          a0, 137017
                  c.li         a3, -1
                  c.lui        t2, 25
                  andi         a5, a7, 721
                  c.xor        a1, a3
                  sltiu        gp, s8, -481
                  c.srli       a4, 18
                  lui          s1, 447340
                  sub          ra, a7, t3
                  mulh         a1, a6, t0
                  andi         s2, s6, -1549
                  srli         s4, s9, 0
                  c.srai       a2, 19
                  slti         s9, a6, 684
                  mul          s4, s11, t2
                  slti         s0, t4, 690
                  sub          gp, zero, s10
                  mulhu        a3, s6, a2
                  lui          t1, 461554
                  c.andi       a2, -1
                  c.mv         s9, sp
                  add          s6, a2, t3
                  rem          a1, s1, gp
                  or           t4, a5, s0
                  slli         s7, s9, 9
                  divu         s6, s11, t0
                  mulhu        a1, s0, gp
                  mul          t2, s5, a7
                  c.add        a5, t2
                  nop
                  lui          t5, 801559
                  c.and        a0, a2
                  sll          s4, s4, ra
                  sub          a4, s7, a4
                  slt          t3, a1, t5
                  c.lui        gp, 9
                  c.mv         t2, a2
                  mulhu        s2, t6, s3
                  sltu         a6, a4, a1
                  c.li         t6, 15
                  sra          a2, a0, t2
                  sll          t4, a5, a0
                  sltiu        t4, s6, -552
                  c.andi       s0, 6
                  rem          s9, zero, a2
                  addi         a7, a3, -812
                  sll          t2, sp, a6
                  lui          t3, 601061
                  nop
                  add          zero, a0, ra
                  c.mv         s2, s4
                  c.srli       a4, 26
                  remu         a5, t3, t0
                  andi         a5, s4, -193
                  sll          a7, t3, s9
                  srli         s6, t1, 6
                  xori         tp, gp, 263
                  sltu         t2, sp, t3
                  sll          gp, t3, s1
                  slti         a2, s11, 1483
                  nop
                  remu         a0, a2, zero
                  div          a3, t1, sp
                  c.srai       a0, 8
                  mulhsu       a0, s0, s1
                  c.lui        s2, 7
                  c.add        s4, s6
                  andi         s7, a4, 1960
                  c.slli       ra, 29
                  sub          a1, s10, s10
                  srli         a2, t2, 15
                  mulhsu       a6, a2, s8
                  lui          ra, 366995
                  and          s6, t4, s9
                  ori          s11, s11, 276
                  add          t1, a6, s9
                  c.srai       s1, 4
                  sltu         a5, s0, t3
                  c.sub        a3, s0
                  c.mv         a0, tp
                  div          a5, a0, sp
                  c.sub        a4, a2
                  srl          zero, s1, t3
                  ori          zero, a3, -1705
                  srl          t1, a0, s9
                  addi         zero, s5, 761
                  c.lui        a7, 9
                  mul          s9, s8, s1
                  c.xor        a2, a5
                  mulh         s6, s4, a1
                  c.sub        a5, a3
                  c.or         a2, a3
                  c.slli       a5, 12
                  div          a0, s8, s5
                  nop
                  c.andi       a5, 25
                  ori          tp, t5, -1694
                  remu         a4, s0, a2
                  and          s10, gp, a2
                  xori         t4, t6, -266
                  c.nop
                  sll          s11, a3, t6
                  nop
                  srl          a0, a3, t1
                  slli         a7, sp, 27
                  mulh         s0, s5, a6
                  c.srli       a5, 24
                  mulhu        zero, gp, s5
                  c.addi       s10, 23
                  mul          a0, s11, s11
                  c.or         a4, a5
                  div          a7, gp, t0
                  c.li         s1, 21
                  xor          s0, gp, a7
                  andi         a7, s10, 421
                  srli         a3, tp, 4
                  or           t0, a2, a6
                  srl          t5, t3, s1
                  c.sub        a4, a2
                  xori         s7, s10, 1198
                  c.add        t3, t3
                  nop
                  sltiu        s1, t0, -535
                  rem          t2, t4, s2
                  sll          a3, a2, t5
                  c.sub        s0, a1
                  mulhsu       a2, t1, s8
                  sltiu        t2, a2, -108
                  mulh         s2, s9, s4
                  sra          a6, tp, s2
                  srai         tp, ra, 25
                  sub          t3, s6, t2
                  c.li         t1, -1
                  nop
                  c.andi       s1, 11
                  c.and        a2, s1
                  c.add        s1, s11
                  xori         t2, zero, 422
                  c.srli       s1, 31
                  mulh         a5, s6, s8
                  xori         s1, a7, 318
                  c.addi       ra, 17
                  mulhu        s0, s3, t0
                  c.slli       s1, 4
                  addi         a3, tp, 318
                  xor          s10, s4, s2
                  addi         a4, tp, 1398
                  sll          a6, t4, s6
                  c.or         a4, a5
                  ori          s10, zero, 1925
                  c.xor        a3, a5
                  add          s6, s5, t3
                  c.lui        s0, 6
                  srai         t4, s9, 15
                  auipc        t5, 9028
                  ori          gp, gp, -539
                  sltiu        a4, s9, -843
                  c.and        a4, a5
                  sltu         tp, tp, a7
                  srai         s2, a1, 6
                  slli         zero, s4, 10
                  slti         s5, s11, 898
                  c.srai       s1, 22
                  ori          s11, tp, -1350
                  c.srli       s0, 4
                  rem          t0, a4, tp
                  c.li         t6, 9
                  lui          s0, 392117
                  srai         s0, s8, 26
                  ori          a3, a5, 356
                  andi         t2, t5, -330
                  xori         t4, s4, 1899
                  rem          a4, tp, a0
                  addi         a7, a1, -1990
                  c.andi       a4, -1
                  add          a2, s0, a6
                  add          zero, s5, tp
                  andi         s5, tp, -639
                  remu         a6, t3, s2
                  nop
                  c.li         s11, 3
                  c.li         tp, -1
                  add          a2, s4, s8
                  remu         a1, a4, t1
                  c.li         a4, -1
                  add          a2, s5, t1
                  auipc        a5, 718579
                  c.andi       a1, 14
                  c.add        a2, s10
                  div          t4, a6, a5
                  add          ra, s5, t1
                  c.slli       a7, 9
                  c.addi       a3, 24
                  c.srli       a3, 30
                  c.add        tp, s3
                  slli         t4, zero, 15
                  or           gp, sp, t2
                  xor          zero, a0, t2
                  sltu         t2, a1, a4
                  addi         a2, s3, -1891
                  c.andi       a3, 4
                  slti         zero, s7, -449
                  c.lui        s0, 4
                  and          s4, s6, s0
                  slt          gp, a1, a0
                  or           tp, t3, s10
                  srl          s6, s10, a2
                  c.and        a0, a4
                  c.xor        a4, a5
                  c.lui        a2, 24
                  andi         s6, s11, -2035
                  divu         gp, s9, a3
                  mul          a2, a1, t4
                  sltu         s0, s4, a4
                  divu         s2, s9, s10
                  remu         tp, a7, t3
                  lui          s9, 421721
                  sll          s6, ra, s0
                  divu         t2, s3, a5
                  rem          t3, t5, s1
                  sltu         s5, a2, zero
                  c.li         gp, -1
                  divu         s10, zero, s1
                  c.and        a5, a4
                  sltu         s10, s4, s11
                  srli         s4, a5, 18
                  c.sub        a5, a2
                  c.nop
                  xor          s11, t4, zero
                  srl          t1, s2, a6
                  c.sub        a0, a0
                  sltu         a7, s3, s5
                  srai         s7, s8, 25
                  c.or         a5, a4
                  addi         zero, s0, -1466
                  srai         a0, s2, 10
                  and          s7, t0, s5
                  sra          t6, a0, s10
                  c.mv         a1, a5
                  c.addi       s0, 7
                  divu         t2, t5, gp
                  add          s2, t4, t5
                  sra          a7, sp, t5
                  c.nop
                  slt          s10, a7, t1
                  c.and        a0, s0
                  sltu         a2, a3, s9
                  sll          s6, gp, s10
                  xor          zero, a0, s5
                  slli         t4, a0, 19
                  sll          s5, a6, a1
                  rem          a0, s9, t5
                  ori          s9, s3, -469
                  xor          a6, t4, t3
                  sltu         t2, t2, s0
                  c.andi       s0, -1
                  addi         t5, s9, -1251
                  srli         t6, t4, 10
                  xor          s1, t4, a5
                  div          a7, t4, a0
                  sra          s11, ra, gp
                  slti         t4, s8, 650
                  c.andi       s1, 12
                  c.srai       a4, 31
                  c.li         t6, 20
                  auipc        t0, 42800
                  sra          s4, s9, a3
                  c.addi       s10, -1
                  slt          s9, a5, s0
                  c.lui        s9, 16
                  srli         tp, a6, 26
                  sra          s11, t3, t0
                  c.li         a2, 4
                  xor          a2, s8, a6
                  c.srai       a1, 3
                  c.nop
                  add          s1, s6, ra
                  mulhsu       t1, a1, tp
                  divu         s7, s2, a3
                  or           s10, s4, s0
                  slt          a6, s1, s10
                  c.mv         t0, s8
                  slt          t4, s3, a1
                  sll          s11, gp, s4
                  sll          s5, t0, s8
                  mulhu        a5, gp, t3
                  or           t3, zero, s2
                  addi         t5, s10, 19
                  xor          s9, gp, a0
                  mul          ra, s0, s10
                  lui          a1, 652978
                  c.srai       a2, 31
                  c.and        a1, a4
                  sub          s7, s5, s3
                  add          t3, t3, a1
                  div          s0, t4, tp
                  and          a2, a5, a2
                  sub          s11, zero, s8
                  xori         t1, a6, 1421
                  divu         zero, a7, tp
                  mulhu        t4, s7, t5
                  sll          s4, t6, zero
                  mulhsu       t6, s0, t6
                  auipc        s0, 319716
                  auipc        t5, 815221
                  c.or         s0, a1
                  sltiu        s0, a6, 965
                  remu         a6, a0, a2
                  c.li         t2, -1
                  srl          s11, a7, s7
                  remu         a7, a2, a3
                  c.li         s4, -1
                  c.srli       a0, 31
                  c.or         a0, a0
                  xori         t4, sp, 1832
                  div          t1, a5, t6
                  xori         zero, a3, 1024
                  mulhu        s5, gp, a5
                  lui          a4, 695033
                  sub          s10, s3, sp
                  c.sub        a2, a0
                  c.mv         s4, gp
                  auipc        t1, 796463
                  mul          s6, s7, s9
                  lui          s0, 829003
                  mulhu        s11, s3, a7
                  divu         a0, t3, s11
                  c.mv         s1, s2
                  sll          tp, t2, s4
                  c.sub        s1, a2
                  c.nop
                  auipc        t3, 499108
                  c.nop
                  c.li         t5, -1
                  mulh         t3, t0, s5
                  addi         t5, a3, 1713
                  sltiu        a7, a2, -547
                  srli         s1, s10, 12
                  ori          s11, t2, 1357
                  c.li         gp, 6
                  sra          gp, s2, s1
                  div          a5, t6, t4
                  c.mv         t3, a6
                  auipc        a1, 741473
                  div          gp, s8, a2
                  c.srli       s0, 18
                  divu         a0, s8, a6
                  slt          a7, s8, a1
                  slli         t1, s3, 31
                  nop
                  c.srai       a1, 24
                  mulhsu       t5, s7, t2
                  c.srai       a5, 17
                  slt          s2, s3, t4
                  c.addi       s5, -1
                  add          a3, s2, s0
                  or           s10, a6, gp
                  c.and        a4, a4
                  sltiu        t4, t5, 1909
                  sltu         s0, s9, a4
                  remu         gp, sp, a0
                  rem          s0, zero, sp
                  c.slli       t6, 19
                  add          a4, t4, s3
                  c.xor        a5, a1
                  sll          s7, s5, t6
                  srli         a3, s3, 20
                  ori          s11, s1, 604
                  andi         a1, tp, -1944
                  srl          a2, s5, s10
                  srli         a0, t4, 17
                  c.xor        a0, a0
                  c.add        ra, s3
                  mul          gp, a0, s6
                  and          a5, tp, zero
                  or           a4, t5, a4
                  c.lui        a2, 21
                  c.lui        a5, 4
                  c.add        s0, a6
                  c.or         a1, a4
                  srai         tp, s9, 20
                  mul          a5, a5, t0
                  c.xor        a3, a1
                  c.andi       a1, 5
                  add          s9, zero, s0
                  nop
                  add          t3, a7, a4
                  rem          a4, t2, a5
                  mul          a3, a0, a1
                  c.xor        a0, a3
                  auipc        s7, 994398
                  slti         a6, t6, 727
                  div          t3, sp, s9
                  sub          t4, tp, s4
                  srl          a6, s2, s3
                  c.andi       a0, -1
                  andi         a0, sp, 115
                  c.li         s6, 1
                  srai         t4, s2, 5
                  c.or         a1, a2
                  c.add        ra, t1
                  sltu         ra, a1, zero
                  c.add        s0, a1
                  mul          s10, t0, t0
                  sltu         gp, t0, s0
                  mulhsu       t1, zero, s10
                  c.and        a0, a4
                  rem          s10, a3, s3
                  c.or         a1, a4
                  and          ra, s11, s7
                  rem          tp, a5, a1
                  lui          s9, 447527
                  andi         a6, s7, -122
                  slt          s9, a5, a7
                  addi         a1, a3, -58
                  c.add        t1, t4
                  c.srai       a5, 18
                  c.sub        s0, a5
                  c.li         s10, 2
                  sll          a6, a6, t3
                  c.add        a0, t6
                  auipc        t1, 724002
                  andi         a0, s2, -1063
                  slt          s11, s8, a4
                  c.or         a3, s1
                  srl          a5, a0, s8
                  c.or         a0, s1
                  xor          s1, tp, s9
                  auipc        a4, 387148
                  c.xor        a5, a5
                  remu         s6, tp, s8
                  divu         a0, t0, a5
                  remu         t5, t4, s9
                  remu         s1, a7, s6
                  mulh         t3, a6, tp
                  add          s4, a5, s9
                  sll          t3, s4, s7
                  mulh         s2, s0, a6
                  addi         t5, a3, 146
                  sub          t2, t4, s10
                  div          s6, a2, s10
                  c.li         gp, 20
                  c.add        a2, t0
                  c.li         a5, 26
                  slt          a3, t2, s8
                  mulhsu       s0, s7, t2
                  andi         a3, a7, 1524
                  c.srli       a0, 5
                  mul          t2, a2, s2
                  addi         t2, t3, -1191
                  mulhsu       a6, s4, s7
                  c.lui        t1, 26
                  mul          t5, a6, s10
                  sll          s0, s6, t6
                  nop
                  mulhu        s7, t5, ra
                  mul          gp, s6, t3
                  auipc        a6, 450968
                  auipc        ra, 774151
                  slti         s4, s3, 1231
                  c.nop
                  c.and        a3, a2
                  c.lui        tp, 2
                  mulhu        s4, a7, t2
                  or           t2, s2, s1
                  xor          t2, a3, s5
                  and          a1, s0, a6
                  c.srai       a1, 21
                  nop
                  sub          s0, t5, t0
                  sltu         t3, s9, s5
                  c.slli       s0, 14
                  slli         gp, s7, 5
                  divu         s5, t1, a3
                  srli         s9, t0, 12
                  or           s2, s8, s8
                  or           s10, s9, a1
                  c.srai       a4, 18
                  slti         gp, s0, 952
                  and          tp, sp, t3
                  auipc        a6, 392482
                  auipc        a3, 693691
                  c.or         a1, s0
                  remu         a1, a1, s2
                  lui          s0, 1979
                  c.or         a1, a2
                  rem          a6, t5, s5
                  xor          zero, t5, s1
                  c.andi       s1, 10
                  addi         t3, a4, 1367
                  sub          a0, t5, s6
                  add          t4, t3, a6
                  slt          t1, s11, s5
                  c.slli       a2, 15
                  c.or         a5, a0
                  and          ra, s2, s8
                  c.add        a0, t3
                  c.srli       a0, 14
                  slli         t2, s7, 13
                  c.and        a2, a1
                  addi         a2, a4, 606
                  c.srai       a3, 24
                  c.srai       a1, 1
                  srl          a6, gp, t4
                  ori          a1, gp, -1280
                  sll          t1, s7, zero
                  rem          zero, a2, t5
                  lui          t5, 672684
                  ori          t3, s8, 1155
                  xori         gp, t2, 1222
                  c.and        s0, a4
                  addi         gp, s8, -507
                  sra          t2, s2, t3
                  c.srai       s1, 6
                  srai         a2, s4, 30
                  lui          s5, 215115
                  addi         a0, t5, -623
                  sltiu        a0, s9, -1683
                  xor          s6, tp, ra
                  or           s9, tp, s10
                  add          a6, t6, t0
                  c.slli       a4, 18
                  nop
                  andi         t0, s5, 931
                  c.addi       a5, 27
                  srai         t5, t2, 28
                  addi         t6, s8, -170
                  xor          tp, gp, s7
                  c.nop
                  mul          a4, t4, a1
                  c.add        s7, s6
                  and          t5, t5, s6
                  c.srli       a4, 30
                  sll          s4, s1, s5
                  remu         s1, a2, s1
                  c.srai       a4, 17
                  auipc        gp, 182727
                  divu         s6, s6, t3
                  div          s0, s9, s10
                  c.sub        a4, s0
                  rem          s1, tp, gp
                  div          t1, s0, s7
                  mulhsu       a7, t3, tp
                  c.nop
                  slt          t2, s6, s7
                  andi         a5, t2, -1851
                  c.lui        a3, 8
                  add          t1, t3, a6
                  add          gp, s2, s9
                  andi         a3, a4, 1638
                  sub          s9, s4, s4
                  c.mv         s10, t0
                  mulhsu       t4, a4, zero
                  c.sub        a1, s1
                  lui          t0, 589373
                  remu         t3, tp, t6
                  c.slli       a4, 11
                  rem          t3, s11, sp
                  mul          t4, tp, a1
                  srl          s11, a7, s1
                  auipc        s7, 755452
                  slti         a6, a2, 1931
                  or           t3, s9, s10
                  srai         s10, a7, 5
                  sltiu        s9, tp, 1782
                  nop
                  c.nop
                  slt          t5, ra, s11
                  or           t0, tp, zero
                  rem          a3, s9, s5
                  c.srai       a5, 18
                  c.li         a5, -1
                  andi         a3, a2, 425
                  andi         t5, t0, 931
                  div          s2, sp, s9
                  srai         s1, s11, 2
                  c.mv         t2, a5
                  remu         s10, t3, a2
                  sra          s10, s9, s9
                  mulhsu       t0, s9, t0
                  srl          t0, a4, s6
                  mulhu        t2, s7, s3
                  srl          s1, s8, a6
                  slli         t2, t1, 12
                  c.xor        s0, a0
                  sltiu        gp, a3, -1712
                  div          gp, s11, t3
                  srl          t5, s5, t2
                  c.sub        a4, a0
                  srli         s7, a2, 25
                  addi         s10, tp, 2
                  mulh         t4, a2, sp
                  slli         tp, ra, 15
                  sll          tp, t3, s2
                  div          a0, a2, s11
                  mulh         t0, s3, t4
                  srl          s7, t5, ra
                  c.sub        a3, a0
                  c.lui        a0, 24
                  nop
                  mulh         a5, zero, s10
                  auipc        t6, 382705
                  c.addi       s7, -1
                  lui          s5, 921815
                  lui          a1, 657415
                  c.srai       a1, 12
                  c.or         a1, a5
                  c.slli       tp, 8
                  c.srli       a5, 3
                  srai         s1, ra, 20
                  c.nop
                  sltiu        t3, a2, -1445
                  mulhu        t0, tp, s7
                  c.srai       a4, 26
                  c.mv         t6, s5
                  sub          a6, a1, a5
                  c.lui        tp, 25
                  xori         s6, a1, 433
                  andi         tp, a2, -1405
                  c.mv         t2, a6
                  rem          a1, tp, a1
                  add          t4, s4, a7
                  div          s9, s6, s2
                  andi         a7, s1, -822
                  xori         s7, t4, -1799
                  nop
                  sub          gp, sp, t5
                  srai         t2, a3, 18
                  remu         t1, zero, s2
                  c.and        s0, a3
                  c.or         a3, a4
                  srli         a3, s0, 12
                  slli         s4, s0, 29
                  c.srai       a4, 13
                  c.andi       a0, -1
                  sra          s4, s9, s11
                  add          t0, s8, s7
                  c.andi       s1, -1
                  xor          s6, s9, a4
                  or           t5, s1, s7
                  c.li         a6, -1
                  c.and        a1, s0
                  c.slli       t0, 24
                  mul          t3, a0, t5
                  remu         s4, t3, a3
                  c.xor        s1, a5
                  slli         t3, s10, 7
                  lui          s7, 162509
                  and          t4, t5, sp
                  sra          a0, sp, t3
                  c.srli       s1, 4
                  andi         a6, a4, -856
                  mulh         s1, a6, s7
                  srl          t1, s1, a6
                  c.xor        s0, a2
                  rem          t3, s8, ra
                  xor          s1, t5, t1
                  sltu         s2, s9, t2
                  c.mv         s7, s6
                  srai         gp, s1, 18
                  mulhsu       s9, s10, t4
                  auipc        t1, 555555
                  xor          a0, a0, t2
                  srli         tp, s0, 2
                  slti         s1, a5, 794
                  xori         s6, t1, -751
                  slt          a7, s8, t3
                  slli         t5, s8, 12
                  mulhsu       t5, a3, s5
                  c.nop
                  c.or         s1, s0
                  rem          a1, s11, a5
                  ori          s6, s6, -1010
                  or           t1, a7, s10
                  c.mv         tp, s9
                  xor          gp, zero, s10
                  mulhu        s9, t2, t4
                  auipc        gp, 965192
                  c.or         a4, a5
                  andi         gp, zero, 1739
                  c.srai       a5, 30
                  auipc        s1, 713808
                  srli         a2, zero, 12
                  xor          a7, tp, a7
                  sll          zero, t4, s11
                  mul          t3, s3, a5
                  slt          s11, a6, zero
                  mul          tp, a4, t3
                  c.add        s5, s9
                  mulh         s10, s3, t4
                  auipc        s11, 647830
                  rem          s11, sp, s3
                  c.nop
                  slli         s0, s7, 28
                  c.srai       a1, 24
                  srli         t1, a4, 3
                  srl          t5, a0, a3
                  c.li         s10, -1
                  c.and        a2, s0
                  c.xor        a4, s0
                  lui          t2, 9316
                  c.andi       s0, -1
                  srli         t3, a4, 21
                  c.slli       gp, 12
                  xor          zero, a3, t6
                  rem          t0, a2, gp
                  rem          s9, t5, tp
                  srl          s6, s5, s3
                  c.sub        a1, a0
                  slt          s5, t6, a0
                  add          t3, a0, t0
                  rem          t1, s9, a2
                  c.and        a4, a2
                  mulhsu       t6, s0, t5
                  auipc        ra, 839993
                  c.nop
                  addi         t2, s7, -1062
                  srai         s0, t5, 9
                  xor          s5, a0, a2
                  c.lui        s2, 14
                  andi         s4, a7, -1274
                  sll          s4, tp, s10
                  div          t6, s3, a6
                  slt          t5, s3, zero
                  c.sub        a3, a2
                  srl          a6, s8, ra
                  slt          a4, tp, s8
                  srli         a0, a4, 14
                  sltiu        s10, s2, -1906
                  div          s10, sp, t4
                  sub          a1, s3, s9
                  c.or         a3, a1
                  divu         a7, a7, s4
                  srl          a7, a5, s6
                  srli         s11, s9, 13
                  c.and        a0, a1
                  c.li         s2, -1
                  sub          ra, a5, s2
                  xor          s10, t0, a5
                  c.srai       a2, 8
                  c.lui        s6, 18
                  mulh         s2, t2, sp
                  ori          zero, s2, -511
                  sltiu        a3, a2, 1690
                  c.mv         s2, a1
                  c.nop
                  rem          a0, s6, sp
                  slt          s11, s2, t0
                  srli         s4, a6, 17
                  srai         a0, a4, 6
                  sll          s1, s8, s4
                  c.add        a4, s2
                  mulhsu       s4, sp, t5
                  mulhsu       s10, a6, gp
                  sub          a0, t0, t3
                  remu         s9, t3, t1
                  c.sub        a4, a4
                  xor          tp, s10, a7
                  div          a6, a6, gp
                  sltiu        a1, s2, -531
                  mul          t5, ra, t3
                  c.srai       a2, 20
                  slt          a1, s8, gp
                  xor          gp, s9, s2
                  srl          tp, a7, zero
                  c.nop
                  c.nop
                  and          a7, a7, a2
                  c.nop
                  c.srli       a1, 26
                  remu         a7, s3, t2
                  divu         t6, t5, s5
                  sra          s2, t1, a6
                  sltu         s2, t5, s5
                  mul          t6, s2, gp
                  div          t1, s6, t6
                  c.srai       a0, 3
                  divu         s1, a6, s4
                  c.add        s5, ra
                  c.nop
                  add          a2, ra, t3
                  c.lui        s11, 24
                  c.xor        a4, a3
                  sltu         a7, s2, zero
                  c.xor        a1, s1
                  slli         s11, s5, 22
                  c.slli       a2, 9
                  or           t2, s8, a4
                  sll          s11, a2, s9
                  auipc        a3, 462656
                  remu         s0, ra, s8
                  mulh         s2, s7, s2
                  mulh         s0, a5, s3
                  c.slli       t1, 16
                  c.lui        a1, 10
                  andi         t2, a5, -1427
                  auipc        s1, 276690
                  srli         s10, t3, 15
                  c.srli       a0, 12
                  div          gp, t3, s11
                  c.add        a7, tp
                  lui          t0, 790627
                  sltiu        a3, s10, 639
                  c.addi       a7, -1
                  c.sub        a3, a5
                  c.nop
                  slti         zero, s0, 1119
                  add          s2, a6, a6
                  sll          zero, s7, a5
                  nop
                  c.add        s1, t1
                  sub          t3, s6, s9
                  addi         a0, tp, -167
                  div          t5, t5, zero
                  c.or         a0, s0
                  sltiu        s10, a4, -975
                  remu         tp, ra, s2
                  c.sub        a3, a5
                  c.and        a0, s1
                  c.nop
                  sltu         a6, t2, s4
                  c.slli       t3, 21
                  ori          t5, s3, -1778
                  ori          a4, t2, 1221
                  c.and        s1, a2
                  or           s0, t3, t5
                  srai         a4, t0, 26
                  sra          s5, t2, s7
                  mulhu        t1, s3, s6
                  mul          s6, a6, s1
                  srl          t4, a0, s0
                  c.mv         s0, s3
                  c.and        a1, s0
                  and          t3, t3, a6
                  srai         tp, s11, 3
                  mul          s9, s1, a7
                  c.mv         a5, s11
                  nop
                  c.add        a7, t6
                  srl          t0, sp, ra
                  srl          a0, a1, s7
                  div          a4, s4, gp
                  srai         s2, s7, 27
                  lui          t4, 276857
                  divu         t6, a5, s9
                  xori         a0, a0, 716
                  sub          tp, t0, t6
                  mulhsu       s10, a3, ra
                  nop
                  c.add        s4, a0
                  c.nop
                  xor          gp, t4, a1
                  c.xor        s0, a4
                  addi         t4, s8, 1176
                  c.slli       s10, 21
                  addi         a3, sp, -592
                  srai         t6, s0, 27
                  or           t4, a3, s5
                  lui          s11, 385865
                  rem          gp, s3, s1
                  c.add        a2, s7
                  sra          t2, a0, gp
                  c.and        s0, a5
                  addi         a3, a5, -1915
                  slt          t5, s9, t0
                  slti         a4, gp, -294
                  srl          a1, a5, t1
                  slli         a1, gp, 16
                  addi         a2, a1, -1787
                  remu         t6, s9, ra
                  c.slli       a5, 23
                  nop
                  xor          a6, sp, t3
                  nop
                  c.lui        s2, 14
                  sra          tp, t5, s0
                  divu         s0, s6, a2
                  c.xor        a0, a0
                  nop
                  divu         s9, t1, s6
                  mulhsu       t6, s10, tp
                  div          t6, s9, s11
                  c.or         a0, a0
                  c.lui        gp, 3
                  slti         zero, s1, -921
                  mulhsu       t0, t4, a0
                  mulhsu       a2, a6, a3
                  xor          s2, zero, s5
                  c.li         a6, 19
                  add          t2, a4, zero
                  c.sub        a3, s0
                  mulhsu       s9, gp, a6
                  c.nop
                  or           t5, a7, t5
                  c.srai       a0, 31
                  sll          gp, s0, s0
                  or           s0, s7, s3
                  srli         s10, s5, 30
                  auipc        tp, 543653
                  or           a5, t0, s2
                  sltu         t4, sp, s3
                  slli         s9, s8, 11
                  mulh         s4, tp, a7
                  mul          zero, t3, t5
                  c.srai       a5, 28
                  slli         a6, a6, 10
                  c.sub        s0, s1
                  slti         ra, s10, 1030
                  slt          a5, a4, s4
                  c.nop
                  c.li         s10, -1
                  c.mv         t0, t2
                  slti         a2, t3, -1094
                  ori          t5, a2, -813
                  sltiu        gp, gp, 1294
                  slti         s1, ra, -58
                  c.nop
                  xor          t6, t5, s11
                  c.srli       a3, 29
                  remu         s2, s4, s7
                  c.nop
                  c.slli       s4, 22
                  lui          s4, 781286
                  c.li         s0, 27
                  c.srli       a2, 30
                  c.xor        a3, a5
                  mul          a7, s2, t5
                  slti         gp, s7, -987
                  lui          a6, 444183
                  mulhu        gp, gp, s9
                  sll          s10, s6, s3
                  c.add        t6, t2
                  sub          s5, gp, t1
                  sra          s4, s1, a5
                  c.slli       s1, 21
                  addi         s10, a0, -928
                  auipc        a2, 1018024
                  rem          t5, s3, gp
                  add          s0, s0, zero
                  c.andi       a4, -1
                  and          a2, a6, t2
                  c.mv         gp, s4
                  srli         a0, a3, 28
                  c.xor        s0, a5
                  lui          ra, 585000
                  andi         zero, t4, -1207
                  c.mv         a6, s0
                  mulhsu       t4, t2, ra
                  sltiu        a5, a3, -1556
                  sub          a0, s10, s4
                  c.slli       s9, 16
                  mulhsu       t3, s3, s6
                  ori          t6, gp, 271
                  c.srai       a5, 26
                  remu         s6, zero, ra
                  lui          t1, 233078
                  div          tp, a3, s3
                  c.and        a2, a0
                  add          gp, t0, s6
                  c.lui        tp, 20
                  rem          s6, zero, a7
                  add          a1, t0, t3
                  xori         s2, s10, 1167
                  div          gp, ra, s4
                  c.slli       s9, 22
                  c.lui        s9, 28
                  div          a1, ra, s7
                  and          s10, s2, t3
                  slt          s6, sp, s7
                  sltu         t4, sp, sp
                  or           t0, a3, a2
                  c.nop
                  c.srai       a0, 8
                  mulhu        t6, t1, s0
                  c.slli       t4, 15
                  mulhsu       s11, s2, t0
                  c.srai       a1, 12
                  sltiu        t2, t0, 775
                  add          a7, a1, t4
                  nop
                  sll          s7, s7, s6
                  c.lui        a7, 6
                  c.add        t5, s2
                  sub          s2, ra, s3
                  srai         t1, gp, 3
                  divu         s5, gp, t0
                  c.or         a3, a3
                  divu         a1, s4, gp
                  c.nop
                  slli         t6, s3, 21
                  mul          s9, s1, s9
                  c.mv         a1, a4
                  sra          a1, gp, s5
                  remu         zero, sp, sp
                  slli         a4, t1, 28
                  addi         ra, s10, -1625
                  c.mv         a7, s0
                  mulhsu       s6, s8, a5
                  srli         a0, t5, 22
                  c.srli       a4, 15
                  c.slli       s6, 22
                  c.addi       s1, -1
                  mul          t3, s4, a4
                  ori          t4, a5, -1148
                  srli         t6, a7, 19
                  divu         t5, t3, s5
                  c.andi       a1, 4
                  and          a6, sp, t1
                  c.mv         a6, gp
                  srl          gp, s0, t4
                  c.addi       a1, -1
                  slli         s2, s7, 5
                  sll          s0, a7, s0
                  c.srli       a0, 20
                  andi         a1, t3, -1616
                  xori         t6, s8, 113
                  divu         a6, a0, s5
                  c.li         s10, 23
                  or           s2, tp, t6
                  mulhsu       s4, gp, a1
                  add          tp, s7, t6
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           tp, 0xffffffff
                  li           s5, 0x80000000
                  li           s0, 0x80000000
                  li           a6, 0xffffffff
                  li           t1, 0x80000000
                  li           a7, 0xd91c6694
                  li           gp, 0x80000000
                  li           t2, 0x80000000
                  li           a4, 0x0
                  nop
                  mulhu        a4, s5, a4
                  mulhu        a7, s5, a4
                  mulhu        t2, a7, gp
                  auipc        tp, 496943
                  auipc        tp, 833764
                  rem          a6, a7, a7
                  remu         a7, a6, s5
                  rem          tp, a6, a6
                  addi         a6, tp, 1847
                  mulhsu       gp, s0, t1
                  nop
                  sub          s0, t2, t1
                  rem          s5, t1, t2
                  remu         s10, tp, s0
                  auipc        gp, 87151 #end riscv_int_numeric_corner_stream_6
                  auipc        t5, 918536
                  slt          s9, s0, a2
                  mulh         s1, t0, a7
                  c.add        s7, tp
                  sll          s1, t1, s2
                  c.or         s1, a0
                  c.xor        a5, a1
                  c.slli       s11, 4
                  sll          a3, sp, s10
                  c.mv         a7, a7
                  sltiu        t3, s2, 149
                  c.mv         s5, s10
                  c.srli       s0, 4
                  divu         t4, a0, gp
                  sltiu        s1, s2, 1222
                  mul          a7, a6, s4
                  mulhu        a1, s5, s8
                  c.addi       t0, 23
                  sub          t0, tp, s4
                  xori         s2, t1, 1062
                  mulhu        t6, tp, a7
                  sll          s9, a7, tp
                  sra          ra, s5, tp
                  auipc        tp, 449425
                  lui          a0, 239678
                  sltu         s2, s3, t0
                  slt          s0, gp, s11
                  sll          zero, a0, zero
                  or           a2, a2, a7
                  ori          ra, t6, 1651
                  sll          a4, a3, s8
                  c.or         a0, a1
                  rem          t6, sp, t5
                  c.lui        t4, 19
                  addi         s2, s0, -1482
                  or           t1, s8, s7
                  nop
                  c.nop
                  divu         s7, gp, a5
                  mulhu        s10, a6, a6
                  c.sub        a0, s0
                  and          s0, a3, t2
                  c.lui        s7, 19
                  c.addi       t6, 20
                  or           s1, t3, tp
                  lui          s6, 337712
                  c.or         a4, a0
                  c.lui        s5, 13
                  addi         a2, s7, 1448
                  divu         s0, t4, zero
                  and          a3, a7, a6
                  mulhsu       s9, a1, s6
                  lui          s1, 889264
                  c.add        a0, t0
                  and          a3, t2, s5
                  rem          t3, s10, t1
                  srli         gp, zero, 13
                  slli         zero, t3, 21
                  c.srai       a0, 22
                  c.addi       s2, -1
                  c.and        a0, a2
                  c.nop
                  nop
                  ori          s9, s8, 651
                  srl          gp, tp, s9
                  slti         a4, t5, 1910
                  c.srli       a2, 31
                  c.and        s0, a3
                  mulhsu       s4, t1, ra
                  c.srli       a1, 31
                  c.sub        a1, a5
                  mul          a6, ra, s0
                  mulh         s6, a6, tp
                  slti         s4, gp, -1504
                  mul          a5, gp, t4
                  rem          a3, s5, s4
                  sltiu        zero, a3, 1830
                  slt          a3, a3, a2
                  slli         a5, t1, 10
                  andi         s6, a2, 393
                  mul          a0, a5, t5
                  c.andi       a0, -1
                  ori          a4, t4, 698
                  lui          gp, 303806
                  c.add        s10, t6
                  rem          a1, s9, t1
                  sub          a6, t4, a2
                  mulh         a1, s8, t1
                  sltu         s10, a3, a1
                  c.lui        s5, 2
                  auipc        s10, 926692
                  xor          a3, t1, s4
                  slt          a0, s8, s1
                  c.srli       a2, 30
                  andi         a6, a3, 1337
                  mulhsu       a1, s5, t1
                  slli         a3, s5, 4
                  nop
                  sub          gp, t2, a4
                  sltu         a6, t4, a7
                  rem          zero, s4, t5
                  mulhu        t6, s9, gp
                  c.mv         t4, a3
                  sltu         a3, s4, zero
                  slt          a1, a7, s8
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li           s11, 0x80000000
                  li           a3, 0xffffffff
                  li           t0, 0xffffffff
                  li           t1, 0xc71dd9ad
                  li           s7, 0x0
                  li           a7, 0xffffffff
                  li           a6, 0x41e6d8df
                  li           t5, 0xffffffff
                  li           t6, 0x0
                  remu         s11, s11, a7
                  mulhsu       a7, a6, t0
                  sub          a7, a2, t6
                  nop
                  lui          s11, 87961
                  remu         a6, s11, a2
                  mul          a6, a6, s7
                  remu         t0, a6, a2
                  mulh         s11, a3, t0
                  div          t5, t5, s7
                  add          t0, a3, a7
                  div          a7, a7, s11
                  rem          s11, s11, t6
                  auipc        t6, 1025842
                  rem          s7, t5, t6
                  mulhu        a3, a2, t1
                  add          a6, t6, a2
                  nop
                  mulhu        a2, t0, a6
                  lui          a3, 304725 #end riscv_int_numeric_corner_stream_32
                  mulh         s10, s0, t2
                  slti         a7, ra, -1383
                  andi         t3, s7, 316
                  c.or         a4, s0
                  sub          a6, t4, gp
                  mulhsu       s7, a7, t2
                  sll          a6, s0, tp
                  ori          s7, s3, -1759
                  auipc        zero, 197270
                  mulhu        t1, gp, a7
                  sra          a7, a3, sp
                  div          t4, a2, t4
                  andi         t1, s0, -1411
                  lui          gp, 245365
                  sll          s0, s8, s4
                  andi         s9, s9, 1954
                  ori          s9, ra, 1283
                  srl          t4, a2, t4
                  c.xor        s1, a5
                  srl          s0, ra, a4
                  srl          a7, a6, gp
                  divu         s7, s3, t6
                  sra          tp, t5, sp
                  divu         zero, a2, a5
                  sltu         t4, t2, t0
                  sub          t0, s3, s2
                  slli         gp, s1, 17
                  mulhsu       a6, ra, ra
                  or           a4, s2, t5
                  auipc        a6, 271550
                  c.nop
                  divu         a0, s1, s4
                  c.slli       s4, 31
                  and          s1, t3, a3
                  lui          tp, 162018
                  srl          gp, t3, gp
                  sra          a4, s4, t3
                  srl          s1, s4, a1
                  c.xor        a0, a4
                  add          t2, t4, s5
                  mul          t0, a7, a6
                  slt          a2, a3, s7
                  c.mv         a3, gp
                  and          ra, s1, t3
                  add          s6, s3, a0
                  c.and        a0, a4
                  rem          t4, a5, a2
                  nop
                  c.srli       a0, 12
                  slli         a0, s10, 31
                  remu         s9, s1, a6
                  mulhu        s11, a1, s8
                  div          a7, s10, t6
                  sll          s1, s11, a3
                  c.or         a5, a5
                  addi         gp, sp, 1548
                  c.sub        a0, a3
                  mulh         s6, s0, sp
                  sra          zero, t3, s2
                  mul          zero, s8, zero
                  c.mv         s2, t4
                  andi         s2, s5, -1116
                  xori         tp, t3, 206
                  c.srai       a2, 19
                  rem          s9, s5, t6
                  c.srai       a2, 24
                  rem          s0, t5, a6
                  remu         s2, a7, s4
                  slti         a0, s5, 1749
                  mulhu        s2, zero, s0
                  sltu         t6, s9, a3
                  sltu         s7, t2, sp
                  or           a4, s7, t5
                  auipc        a0, 30757
                  c.mv         s6, a1
                  c.mv         a2, s2
                  nop
                  c.lui        a5, 2
                  c.slli       s4, 2
                  and          gp, s11, a7
                  c.xor        s0, a0
                  srl          t4, s7, t4
                  sll          zero, s1, s1
                  c.add        a3, s4
                  remu         s0, s2, t0
                  srai         t0, a0, 6
                  c.li         s4, -1
                  srai         s0, s7, 20
                  c.and        a3, a1
                  c.li         tp, -1
                  mulhsu       tp, t2, zero
                  c.srli       s0, 20
                  lui          a6, 865609
                  c.nop
                  srai         a3, a1, 9
                  c.srai       a3, 1
                  c.mv         s2, tp
                  mul          a7, t6, t3
                  c.add        tp, a6
                  c.sub        a1, a2
                  c.lui        a0, 4
                  c.add        a5, a7
                  remu         gp, s10, gp
                  lui          zero, 283851
                  xori         t4, a7, 45
                  div          t5, s9, s6
                  c.mv         a6, sp
                  or           t4, s2, a6
                  nop
                  c.li         a6, -1
                  nop
                  nop
                  mul          s4, t0, a0
                  c.lui        t6, 21
                  c.lui        a4, 4
                  sltiu        t3, ra, -1224
                  c.srli       a0, 25
                  xor          a6, a5, a2
                  auipc        a4, 630852
                  slli         t5, t4, 18
                  sltu         s2, s4, s10
                  slt          s0, t2, s7
                  xor          s2, a2, s5
                  ori          t3, a5, -1172
                  c.addi       a5, 29
                  c.slli       a7, 15
                  mulhu        t5, a1, s7
                  c.lui        s1, 7
                  rem          s0, a2, a3
                  remu         s7, a1, t3
                  or           a2, t6, t5
                  nop
                  c.slli       s9, 26
                  rem          t3, t3, a2
                  sll          s0, t5, t2
                  sll          a2, s8, t0
                  c.nop
                  auipc        a0, 808001
                  c.mv         t2, a0
                  sltiu        t2, a3, -718
                  c.mv         s6, t6
                  ori          ra, sp, 790
                  mulh         a1, t4, t5
                  mulh         gp, gp, s2
                  xori         t1, s11, 1331
                  mulhsu       s6, a1, zero
                  auipc        tp, 565946
                  c.sub        a2, a5
                  c.srai       s0, 22
                  c.xor        s0, a0
                  sltiu        s7, a2, -24
                  ori          t6, t1, 1647
                  c.srli       s1, 1
                  c.addi       ra, -1
                  mulh         s6, a2, s1
                  c.slli       t2, 23
                  slli         zero, a5, 23
                  ori          a6, s9, -1335
                  lui          a2, 208749
                  c.mv         s9, t3
                  srli         s11, s0, 0
                  c.lui        s5, 31
                  or           a0, s1, gp
                  div          t5, t6, t6
                  xori         zero, t2, 285
                  mulhu        a0, t3, t6
                  ori          s11, s2, -1594
                  slt          a4, tp, sp
                  mul          s6, zero, a7
                  addi         s9, a7, 527
                  auipc        s2, 778021
                  divu         a6, t3, a3
                  c.and        s1, s1
                  c.add        s5, a1
                  c.mv         tp, s1
                  sltiu        a0, gp, 1935
                  c.andi       a1, -1
                  srl          a1, sp, a4
                  c.andi       a4, -1
                  sltu         s6, t3, s1
                  and          a4, a6, s4
                  slli         a7, a6, 12
                  add          s2, a0, s4
                  auipc        s1, 877009
                  c.addi       gp, 1
                  c.li         s4, 19
                  c.li         t2, 29
                  c.add        s6, a0
                  andi         s6, t5, -408
                  xor          s4, s1, s6
                  c.lui        ra, 15
                  andi         a7, t4, -406
                  sltu         s1, s9, s2
                  c.li         s11, -1
                  c.or         a1, a0
                  lui          s6, 230287
                  mulhsu       t2, s3, t5
                  sltiu        s9, s4, -544
                  mul          t1, t1, s7
                  sra          s11, s6, t3
                  c.srai       s0, 31
                  sub          a1, a2, a6
                  c.sub        a2, a0
                  sltu         a6, s5, s3
                  c.and        a0, s1
                  rem          t3, t5, a0
                  mulh         s2, sp, s5
                  sra          t4, sp, a3
                  mulhu        s5, a7, s2
                  c.slli       a6, 2
                  ori          s5, s1, 599
                  divu         t4, t3, s8
                  and          t5, a1, a6
                  c.li         s10, 0
                  xori         s11, t6, 1354
                  c.addi       s5, 18
                  ori          t4, s11, 1133
                  add          a7, s7, s2
                  c.andi       s0, 15
                  divu         t4, ra, a1
                  divu         s10, a4, s10
                  div          s0, s0, s0
                  remu         s7, s8, t0
                  xori         t5, s7, 1691
                  c.nop
                  slli         t4, gp, 8
                  mulhu        s5, t4, a6
                  srl          a2, s3, s11
                  c.li         a1, -1
                  or           a1, s8, t1
                  sra          gp, s5, s6
                  addi         a6, s3, 767
                  c.sub        a4, a5
                  nop
                  xori         t4, tp, -385
                  c.srai       a3, 20
                  sub          s11, t0, a1
                  addi         s2, t1, 220
                  slti         gp, s6, 1896
                  xori         a4, a2, -1491
                  or           t1, a2, s11
                  nop
                  auipc        zero, 213639
                  lui          t4, 115719
                  srai         a3, s6, 17
                  rem          s9, s3, s5
                  andi         s7, gp, -126
                  auipc        a3, 703206
                  c.mv         t5, s7
                  sltu         t3, a3, s3
                  or           t2, tp, s11
                  slti         a3, a7, 44
                  c.lui        a5, 7
                  divu         t4, a6, s11
                  divu         a6, s0, a3
                  c.slli       a4, 18
                  xori         tp, a3, 374
                  c.mv         s7, tp
                  c.nop
                  sltiu        tp, a2, 289
                  sll          t2, a0, t0
                  rem          s10, gp, a3
                  sltiu        t5, t2, 1076
                  c.sub        a4, s0
                  remu         s10, a2, s8
                  c.slli       t0, 27
                  or           s4, s2, ra
                  c.and        a2, a1
                  sub          a3, a7, s2
                  c.lui        a4, 7
                  c.or         s1, a3
                  slli         tp, t6, 5
                  mulh         t2, t2, tp
                  lui          t3, 687871
                  or           a0, a6, s7
                  or           s11, s9, s0
                  sub          a7, s10, s5
                  sra          s1, a0, t6
                  slti         a4, a2, -1649
                  nop
                  c.add        s4, a7
                  rem          s2, gp, a2
                  c.andi       a2, -1
                  slt          s4, s0, a6
                  or           tp, s8, t1
                  divu         zero, s1, a4
                  c.and        s0, s0
                  slli         a7, s5, 29
                  mulh         s1, s5, t2
                  c.srli       a3, 19
                  remu         s2, t5, s4
                  slli         s10, t2, 29
                  xori         s0, s10, 346
                  srai         s7, s6, 28
                  xori         s9, s2, -1596
                  div          t1, t2, a5
                  mulhsu       gp, s11, t2
                  c.add        gp, a3
                  nop
                  mulh         tp, a6, sp
                  rem          t4, s11, tp
                  sra          a2, zero, a7
                  sltu         a5, t1, s11
                  nop
                  sra          s0, t5, a2
                  srl          s4, zero, a7
                  nop
                  andi         s11, a7, -441
                  srai         t5, s8, 4
                  rem          t0, a1, a4
                  andi         s6, t2, 1382
                  mulhu        a4, gp, s7
                  slti         t3, a3, 202
                  rem          a3, a2, s0
                  mul          a0, s0, t4
                  and          t6, s10, s3
                  mulhsu       t2, ra, s10
                  c.mv         a6, sp
                  sltu         t0, a6, s0
                  srai         tp, ra, 7
                  nop
                  sltu         t4, s8, s10
                  mul          s5, a2, s4
                  addi         a2, a0, 177
                  sltu         s6, a4, a7
                  srl          t4, tp, s5
                  ori          gp, a3, -1805
                  c.and        a3, a5
                  sra          s10, t5, a1
                  c.li         s5, 16
                  c.sub        a3, a2
                  ori          ra, s6, -1918
                  addi         s4, ra, -738
                  div          zero, a2, a2
                  add          ra, s10, a2
                  addi         t5, s11, -1386
                  remu         a7, s10, s2
                  srli         t1, ra, 25
                  andi         a1, s5, -173
                  c.and        a0, a5
                  sltu         a4, a2, t0
                  or           s9, sp, s9
                  c.slli       s10, 27
                  remu         a5, s10, s2
                  srl          gp, a2, a2
                  c.sub        a5, s0
                  sub          s4, t1, a6
                  c.nop
                  c.add        s9, s5
                  slti         gp, s5, 590
                  mulh         s1, tp, a4
                  c.addi       a2, 19
                  c.lui        s10, 8
                  c.li         s11, 16
                  sub          t5, s0, s2
                  auipc        gp, 416543
                  mulhsu       gp, s1, a0
                  xori         a5, sp, -1048
                  auipc        a2, 252323
                  sub          a0, t3, sp
                  c.slli       s1, 15
                  c.slli       s2, 13
                  c.srai       a0, 31
                  c.slli       s2, 30
                  mulhsu       gp, s11, s11
                  sra          gp, t4, s6
                  mulh         s9, s6, s4
                  nop
                  c.addi       s2, -1
                  sltu         t5, t5, s3
                  c.addi       a0, 14
                  c.or         a0, a2
                  sra          a3, s2, a4
                  sll          s7, s3, s11
                  mulh         a2, zero, a5
                  slti         s0, t6, 379
                  xor          ra, a0, t3
                  mul          t5, s2, s7
                  c.sub        a4, a0
                  andi         s7, a2, 1029
                  c.lui        a7, 2
                  slti         gp, zero, 659
                  c.xor        s1, a1
                  sra          s1, s6, t2
                  mulh         zero, t1, t3
                  c.slli       t2, 5
                  xori         t2, t1, 595
                  slt          a4, s11, a1
                  xor          a1, s6, t6
                  and          zero, a2, gp
                  srl          a5, s11, s1
                  c.srai       a0, 18
                  mulhu        tp, s6, s8
                  lui          a0, 632479
                  c.and        a0, a3
                  mulh         tp, a7, t0
                  lui          a3, 341046
                  xori         tp, s11, 1759
                  srai         a6, s4, 30
                  mulhsu       a0, ra, t6
                  c.srai       a1, 26
                  sltu         s9, t1, ra
                  divu         s9, a0, s11
                  c.and        a4, s1
                  c.or         a4, a1
                  remu         t1, a1, s10
                  c.add        t2, a6
                  remu         a5, a5, s8
                  srli         a5, gp, 2
                  slli         a4, t3, 30
                  andi         s5, a7, 1145
                  divu         s4, sp, s3
                  c.and        a3, a2
                  c.slli       s0, 29
                  lui          s7, 733326
                  slti         a6, t5, -379
                  c.nop
                  c.lui        gp, 4
                  sra          a5, a2, t1
                  slt          t6, s1, t1
                  mulh         t0, zero, s8
                  srli         a4, s11, 8
                  add          s6, gp, s6
                  mulhu        s4, s8, t0
                  c.nop
                  sltu         t0, s7, t0
                  nop
                  c.andi       a0, 18
                  nop
                  sltu         s9, sp, s0
                  c.srli       a4, 8
                  c.and        s1, a4
                  xori         tp, t3, -782
                  c.and        a4, a5
                  c.sub        a4, s0
                  mulhsu       a2, s10, s4
                  or           a5, t3, t5
                  mul          s0, a4, s5
                  sltiu        a3, sp, -753
                  andi         s4, a4, -991
                  andi         a3, a1, -1038
                  remu         ra, a0, s6
                  rem          a5, s11, a4
                  xori         gp, s2, 1374
                  divu         s9, t3, a3
                  c.srai       s1, 25
                  c.and        a2, a4
                  add          s9, a2, sp
                  sra          t2, s2, s9
                  c.add        t5, s0
                  c.slli       a5, 14
                  remu         a7, t3, t3
                  rem          s9, t2, a7
                  auipc        s10, 404341
                  lui          s1, 129909
                  c.sub        a4, s0
                  c.mv         s5, sp
                  and          gp, gp, s10
                  c.and        a4, a0
                  divu         a6, t0, tp
                  c.srli       a0, 18
                  add          t0, tp, a1
                  srli         a6, a4, 26
                  and          a5, s4, t2
                  c.li         s11, -1
                  c.addi       a7, -1
                  slti         a3, s6, 602
                  slt          s10, s8, s2
                  mul          a4, s4, a1
                  sltu         t5, s6, zero
                  c.slli       s4, 6
                  mul          a5, s1, s2
                  sub          s10, gp, a0
                  rem          t3, t3, t6
                  srai         t1, s10, 31
                  c.addi       tp, 1
                  srli         s5, a4, 11
                  mulh         tp, s5, s2
                  c.or         a1, a5
                  c.addi       s9, -1
                  lui          t1, 913267
                  c.li         s5, -1
                  sra          gp, t4, s9
                  add          t0, s0, t4
                  c.li         a0, -1
                  and          s11, ra, gp
                  c.mv         t5, s10
                  xor          s6, sp, a0
                  c.addi       a2, 30
                  sra          s1, s6, s9
                  slti         a0, a7, 845
                  slli         s2, a7, 8
                  mulhu        s9, s2, a2
                  c.li         a6, -1
                  c.mv         a4, sp
                  c.lui        gp, 29
                  xori         s2, tp, 857
                  srli         a5, t6, 2
                  c.or         a2, a0
                  c.mv         a1, a0
                  srai         s7, a4, 14
                  c.xor        s1, s0
                  or           a4, a1, s7
                  slt          s0, t5, t2
                  mulhu        s0, t2, a6
                  srli         ra, t6, 3
                  c.addi       a1, 8
                  c.mv         gp, a4
                  c.srai       a0, 9
                  xor          a3, s11, a4
                  rem          a1, a5, t3
                  c.slli       s10, 1
                  slti         s2, s6, 2015
                  c.addi       a5, -1
                  slt          ra, s1, s11
                  c.lui        s5, 2
                  c.and        a3, s1
                  sub          a5, s5, s10
                  c.addi       a1, 31
                  lui          s9, 339652
                  div          a6, t5, s2
                  c.addi       ra, 5
                  c.srai       a0, 28
                  rem          s1, s9, gp
                  div          t4, zero, gp
                  lui          t3, 951025
                  remu         gp, t3, t1
                  mulhu        gp, a1, a5
                  c.srli       s0, 28
                  sub          s4, s3, a6
                  sltiu        s0, sp, 955
                  xori         a0, s11, 1554
                  xori         a1, s9, -166
                  ori          t2, s1, -372
                  c.xor        a5, s0
                  rem          s9, s7, s11
                  c.nop
                  or           s10, t6, t1
                  auipc        s7, 444667
                  sltu         s7, s4, tp
                  c.add        s1, t0
                  divu         s5, tp, s4
                  rem          t6, s2, a1
                  c.mv         t5, gp
                  remu         s6, t1, zero
                  xor          a6, a4, s1
                  srai         s1, s5, 25
                  c.and        a0, a4
                  c.or         a4, a3
                  c.nop
                  sltu         tp, a6, s11
                  or           a0, a6, a7
                  sra          ra, zero, s3
                  sra          a0, ra, a3
                  sll          t1, s9, a7
                  sltu         s10, s0, a3
                  c.mv         a3, ra
                  xor          t3, t6, a2
                  nop
                  mulhu        a2, a0, a5
                  auipc        a6, 371099
                  c.andi       a0, -1
                  add          s9, s5, tp
                  slli         t4, s2, 0
                  mulhu        t0, s5, t1
                  rem          s7, t3, s3
                  c.add        a1, a7
                  div          zero, t1, a1
                  ori          tp, gp, 1008
                  ori          a0, s0, -373
                  divu         t0, s5, zero
                  sltu         a4, s8, a4
                  nop
                  c.lui        s2, 14
                  c.add        s6, a0
                  c.and        a4, a5
                  xor          t0, s10, s2
                  c.srli       s1, 12
                  mulhsu       s11, a6, t1
                  xor          s0, t5, t2
                  c.mv         s10, t2
                  c.sub        a4, s0
                  c.sub        a4, s1
                  c.or         a1, a1
                  srl          s1, t5, sp
                  sll          s0, gp, t4
                  ori          ra, a0, 748
                  sltiu        t5, gp, 432
                  sltu         t1, a1, t0
                  c.srai       a5, 14
                  c.andi       a5, -1
                  remu         t5, a2, s4
                  c.srai       s0, 27
                  srai         tp, ra, 0
                  c.mv         s7, ra
                  divu         t4, s3, t3
                  c.srai       a3, 7
                  add          s4, a0, t1
                  sltiu        a6, s4, -72
                  div          s5, s4, s9
                  c.lui        t6, 11
                  srli         t5, s0, 5
                  mulhsu       a0, a6, s0
                  rem          tp, s0, a5
                  rem          s6, a0, s7
                  andi         a5, zero, 1741
                  or           a3, t6, a3
                  sub          t5, a2, zero
                  div          a1, s8, a6
                  c.lui        t3, 6
                  c.xor        s0, a2
                  xori         a7, t4, 553
                  addi         s7, t3, 212
                  sll          t3, ra, s4
                  auipc        s2, 792218
                  mulhsu       s10, t6, a7
                  c.addi       a6, -1
                  c.srai       s0, 27
                  c.srai       s0, 26
                  c.add        t4, s4
                  c.xor        s1, s1
                  andi         gp, t4, -333
                  c.slli       t1, 20
                  c.li         a2, -1
                  div          s5, s8, s3
                  c.andi       a3, -1
                  slt          t0, s0, s4
                  mulh         zero, a2, a7
                  mulhu        s7, s9, s0
                  srli         t6, t6, 22
                  nop
                  c.lui        t3, 12
                  div          s5, tp, a7
                  c.srai       a2, 25
                  sltiu        s5, a5, 1552
                  lui          a3, 872238
                  auipc        s4, 37329
                  xor          zero, s2, t1
                  andi         s4, s11, 1265
                  c.or         s0, a4
                  or           t5, a2, s10
                  sra          s11, s0, a4
                  xori         s1, a7, 1455
                  mulhsu       t5, t5, s4
                  rem          t1, s0, a3
                  mulhu        t3, zero, a5
                  slti         s2, zero, -999
                  sub          a7, a2, s7
                  c.mv         s10, s7
                  mulhu        a2, t5, t6
                  c.srai       a4, 16
                  c.xor        a1, s0
                  sra          s11, s6, gp
                  sltu         a0, a1, ra
                  c.slli       a5, 21
                  srl          s7, s10, a0
                  c.add        s10, s3
                  c.and        a5, s1
                  c.lui        s9, 17
                  c.and        a1, s0
                  c.andi       s1, 5
                  srli         s0, t3, 0
                  mulh         s5, s3, s5
                  xori         tp, t3, -2004
                  slli         a6, zero, 13
                  sra          s5, a1, t6
                  c.slli       a4, 29
                  rem          s11, s1, s8
                  sub          a4, a3, s10
                  c.nop
                  remu         a3, a1, a5
                  c.nop
                  add          ra, s10, t1
                  remu         t3, s10, a7
                  c.lui        s5, 30
                  slt          a5, s8, a3
                  c.or         a0, a0
                  c.and        a5, a4
                  lui          t3, 618847
                  sub          zero, a7, s9
                  mulhu        s9, tp, s1
                  mul          s7, a0, s8
                  c.sub        a2, a4
                  nop
                  c.xor        a2, a3
                  remu         t5, s10, gp
                  sub          s6, t2, a6
                  c.andi       s0, -1
                  rem          a1, t1, t4
                  mulhu        gp, s7, t1
                  c.andi       a2, 21
                  c.xor        a3, a2
                  nop
                  sltu         gp, a1, s4
                  c.and        a5, a0
                  c.nop
                  srli         zero, s10, 21
                  c.mv         a5, sp
                  addi         t2, a4, 743
                  c.slli       t5, 24
                  add          s11, s11, s9
                  c.addi       tp, 23
                  add          a1, a4, s4
                  or           ra, s5, s10
                  c.srai       s1, 24
                  or           a0, s0, t3
                  nop
                  div          t4, s6, s11
                  c.add        s11, a3
                  xori         t1, tp, 230
                  or           t1, s1, s0
                  sll          tp, zero, s9
                  div          s2, s8, s11
                  c.or         a1, a3
                  srai         s6, a1, 20
                  c.mv         s5, a7
                  divu         a1, sp, s1
                  c.srli       a3, 21
                  c.add        s1, t6
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           t1, 0x80000000
                  li           t0, 0x80000000
                  li           ra, 0xffffffff
                  li           s11, 0x80000000
                  li           gp, 0x0
                  li           a2, 0x80000000
                  li           s4, 0x73205725
                  li           s7, 0x0
                  li           tp, 0x3602ff5
                  div          s4, tp, t0
                  div          s5, ra, t1
                  mulhu        t1, s5, gp
                  rem          s7, s11, ra
                  rem          t0, s11, s5
                  div          gp, ra, t0
                  mulh         s7, ra, s5
                  mulhsu       s11, t1, s7
                  lui          a2, 770262
                  mulhsu       s4, s4, s7
                  lui          s11, 709732
                  divu         s7, ra, s5
                  rem          gp, ra, t1
                  mul          t0, s11, t1
                  auipc        gp, 4434 #end riscv_int_numeric_corner_stream_29
                  c.xor        a2, a3
                  c.mv         a5, t0
                  c.sub        a3, s1
                  c.or         s0, a5
                  xor          s7, s4, t5
                  addi         s0, s0, 171
                  or           zero, t2, a2
                  c.add        s11, a3
                  srli         s6, t2, 7
                  c.mv         s5, t6
                  divu         gp, t1, a2
                  and          s4, s8, s4
                  divu         s11, a2, s3
                  and          s7, t2, ra
                  slti         a2, a5, -590
                  c.addi       t4, -1
                  c.srli       a3, 5
                  slt          t3, t1, tp
                  divu         s5, s11, a2
                  addi         a7, tp, 226
                  c.mv         s2, sp
                  c.xor        a5, a3
                  c.add        s5, t2
                  c.or         s1, a1
                  srai         s5, s10, 21
                  c.srli       a5, 14
                  srli         s11, t3, 16
                  c.srli       s1, 19
                  mul          s6, t0, s0
                  mulh         s7, t6, s1
                  c.addi       s10, -1
                  mulhsu       a0, t6, a4
                  c.addi       gp, -1
                  auipc        s10, 295548
                  addi         s10, a2, -1125
                  c.add        s4, a0
                  addi         a6, t5, -1589
                  sll          t3, tp, a4
                  rem          s10, s5, s11
                  mulhu        t3, t2, a4
                  c.li         ra, -1
                  rem          gp, a3, a4
                  c.xor        a2, s1
                  mulhsu       s1, s3, a0
                  andi         ra, a7, 431
                  c.andi       a1, 24
                  srai         a5, s0, 29
                  mulh         s0, s11, a2
                  lui          s2, 625622
                  xori         t3, t1, -1194
                  slli         s7, zero, 30
                  c.mv         s0, t3
                  slt          s5, s4, s8
                  sltu         t0, sp, a2
                  xori         a4, t2, 462
                  sll          a3, s5, s2
                  sltiu        s9, a1, 1826
                  srl          a0, s3, s6
                  c.add        t6, t5
                  xor          s9, s9, zero
                  div          s0, a1, s7
                  sra          t2, s10, zero
                  c.andi       a0, -1
                  slt          t6, s7, a4
                  ori          tp, zero, 1007
                  nop
                  c.slli       s5, 22
                  addi         s9, s1, -1394
                  c.and        a5, a2
                  slli         a0, zero, 17
                  c.and        a4, a3
                  c.andi       a5, 20
                  lui          zero, 480064
                  mulhsu       a7, tp, t5
                  c.mv         a5, s9
                  and          a2, tp, s4
                  sub          a6, t1, a0
                  mulhu        a0, a7, t6
                  c.mv         a5, s6
                  slt          zero, t4, tp
                  rem          t3, s7, a0
                  auipc        a7, 397377
                  divu         a2, s8, t0
                  c.or         s1, a5
                  mulh         s11, t4, a2
                  c.and        a2, a2
                  c.srli       a4, 8
                  slli         tp, s1, 21
                  c.mv         s9, s5
                  c.lui        s10, 13
                  c.and        a0, s1
                  c.sub        s1, a3
                  sll          s2, a6, t1
                  div          t3, s9, t4
                  remu         s11, t2, t4
                  c.lui        s7, 16
                  sltu         a3, zero, a3
                  c.addi       gp, -1
                  remu         t0, s2, s7
                  c.xor        a1, s0
                  slti         s10, sp, -668
                  sub          a4, a3, a1
                  srli         s6, a1, 12
                  c.xor        s1, s0
                  c.or         s1, a4
                  and          t5, t6, s4
                  remu         t2, s4, s0
                  c.addi       t4, -1
                  add          s11, a0, ra
                  c.xor        a0, a4
                  sra          t6, s2, s5
                  mul          s2, a7, s7
                  c.srai       s0, 14
                  slt          s10, s7, s1
                  sub          s7, s5, t0
                  srli         t2, s11, 8
                  mul          s9, sp, t2
                  xori         s7, s9, 160
                  divu         t2, tp, t0
                  auipc        s9, 966285
                  andi         s7, a5, -371
                  c.lui        a3, 29
                  sll          ra, zero, a4
                  c.srai       a5, 19
                  xori         s6, ra, -919
                  addi         gp, a5, -1032
                  srli         a6, t2, 4
                  remu         t1, s2, a0
                  addi         t2, t3, -1041
                  c.slli       s6, 18
                  mulhsu       t3, t3, s5
                  auipc        s2, 308012
                  slli         s11, a0, 21
                  c.xor        a1, a5
                  c.addi       a7, 14
                  c.or         a5, a5
                  mulhu        a6, s5, sp
                  xor          t0, a2, s8
                  c.nop
                  srai         t0, sp, 10
                  lui          a5, 619464
                  sub          a0, t6, s0
                  addi         a1, tp, -272
                  lui          t6, 532156
                  c.nop
                  c.lui        a4, 1
                  remu         s1, t3, s7
                  rem          s10, t1, s5
                  slti         a4, s7, 1356
                  srai         s5, t1, 8
                  c.lui        s4, 5
                  c.addi       tp, 19
                  sltu         s4, s3, a4
                  sll          tp, tp, tp
                  c.and        a5, a0
                  c.srli       a0, 13
                  c.or         a0, a2
                  srl          a3, s11, s10
                  add          a1, s2, s4
                  addi         s7, s7, 1802
                  rem          a4, a2, s11
                  sltiu        s5, a1, -1376
                  andi         a1, t1, -1845
                  div          ra, a2, t6
                  mulh         a6, s4, gp
                  nop
                  mulhu        t3, t3, s9
                  c.andi       s1, -1
                  sra          a6, a4, s4
                  c.nop
                  mul          s4, a3, t6
                  srai         s0, zero, 11
                  xor          a7, s4, s8
                  c.slli       s10, 13
                  lui          t6, 888995
                  xori         a1, tp, 5
                  xor          t6, t2, t6
                  c.srai       a3, 17
                  srai         ra, ra, 20
                  srl          s10, gp, t2
                  mulhu        a5, s1, s10
                  sll          s7, s0, s3
                  remu         s11, t2, t3
                  c.sub        a4, a0
                  c.add        s7, t1
                  remu         s7, t4, s10
                  or           a7, s0, t4
                  div          t2, t1, zero
                  addi         s1, ra, 1594
                  or           gp, t3, ra
                  c.addi       s1, 24
                  or           t0, s8, a3
                  c.sub        a0, a4
                  c.xor        a4, a1
                  c.sub        s0, a2
                  xori         a1, a7, 323
                  c.sub        s1, a1
                  sll          ra, s8, tp
                  addi         a3, s2, 1071
                  rem          s7, zero, a4
                  lui          s4, 946578
                  slti         s10, s2, -472
                  xor          t6, a5, a5
                  addi         s11, a7, 1244
                  sll          a4, gp, s3
                  c.srli       a5, 31
                  c.li         a2, -1
                  mul          a3, s0, t0
                  c.mv         t4, a3
                  and          ra, s7, tp
                  sltiu        zero, a7, 1603
                  nop
                  xori         s1, s9, -1255
                  c.slli       a1, 7
                  auipc        a7, 465069
                  slli         s10, s6, 30
                  and          t2, s0, gp
                  c.mv         tp, t0
                  mulh         s2, s5, s9
                  c.nop
                  mulhsu       t1, a1, zero
                  c.sub        a3, a3
                  c.mv         a2, s6
                  auipc        s1, 196163
                  lui          s9, 748685
                  slt          zero, a7, a4
                  slli         s5, s4, 15
                  addi         t1, s3, 1117
                  sll          ra, a7, zero
                  mul          t1, a0, a3
                  c.and        a3, s1
                  add          a3, s10, t5
                  c.andi       a2, 31
                  lui          a1, 340800
                  mulhu        tp, a5, t4
                  c.addi       s5, 12
                  rem          s9, sp, s2
                  srli         a6, s9, 16
                  c.li         s10, 22
                  sltu         t4, zero, s10
                  divu         s9, a6, s9
                  remu         s7, t3, t1
                  auipc        t1, 314840
                  c.lui        t3, 19
                  c.or         s0, s0
                  c.and        a1, a0
                  srl          s9, t3, t5
                  c.xor        a2, a4
                  c.srli       s0, 14
                  ori          s4, a4, 905
                  xori         s5, s5, 986
                  mulh         t0, s8, t5
                  lui          t6, 165505
                  rem          s1, s3, a2
                  sll          s10, a1, s7
                  mulhu        a1, zero, a3
                  c.slli       s0, 25
                  mulhsu       s7, t1, t5
                  ori          s1, s6, -45
                  nop
                  xor          s2, a3, s11
                  nop
                  slti         t1, a5, 558
                  mulhsu       s9, s11, zero
                  srai         s4, s0, 31
                  mulhsu       a3, t5, a0
                  sltu         t6, s0, a6
                  c.addi       s11, 28
                  c.li         s11, -1
                  sltiu        s11, s9, -1690
                  srai         gp, ra, 17
                  c.or         a1, a3
                  slti         s1, gp, 485
                  slti         s1, s9, 2011
                  c.and        a2, a1
                  nop
                  addi         a3, a7, -1260
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x80000000
                  li           a4, 0x80000000
                  li           t5, 0x80000000
                  li           s7, 0xffffffff
                  li           s4, 0xffffffff
                  li           gp, 0x210624a0
                  li           s10, 0x110da050
                  li           a6, 0x80000000
                  li           s0, 0x0
                  add          t1, gp, s4
                  mul          gp, s7, s4
                  lui          s7, 6524
                  lui          s4, 726305
                  mulhu        s0, s0, a6
                  addi         t1, s9, 1913
                  mulhsu       s10, s4, s7
                  mul          s4, s0, s10
                  sub          s9, s7, s9
                  divu         s4, t5, a6
                  add          a4, s9, a6
                  add          s7, s0, s4
                  addi         gp, s10, 1443
                  mul          a6, t5, a4
                  divu         s9, s0, s9
                  auipc        a4, 114398
                  mulhsu       s7, gp, t5
                  nop
                  divu         s9, gp, s10
                  mulhsu       s4, s7, s0
                  nop
                  mulh         gp, a6, s0
                  mulhsu       s7, s7, s10
                  add          s10, s4, s0
                  mulh         s10, t1, t1
                  auipc        a4, 62936
                  mulh         s7, t1, s0
                  mulh         s7, a6, a6 #end riscv_int_numeric_corner_stream_9
                  slli         s7, a0, 15
                  c.slli       t2, 22
                  sltiu        s6, s0, -667
                  sltiu        t3, t5, 1261
                  mulh         t0, a7, a4
                  srai         t6, a7, 10
                  c.mv         t1, a6
                  c.xor        a2, a1
                  c.mv         s5, gp
                  c.lui        a0, 4
                  or           a7, s6, s9
                  c.xor        a5, a2
                  ori          a2, t6, 1387
                  xor          t1, s0, gp
                  c.or         a1, s1
                  and          s5, t0, s11
                  lui          s11, 635334
                  andi         t1, s6, 979
                  div          s1, t2, s9
                  c.add        gp, a7
                  sll          t5, s10, sp
                  c.srai       s1, 7
                  mulhu        t4, a6, a3
                  c.nop
                  c.xor        a4, a2
                  c.sub        s0, a1
                  sltiu        s2, a3, -801
                  lui          s1, 1044819
                  sra          a2, a1, a1
                  mulh         s4, s5, s3
                  c.addi       a5, 17
                  mul          a6, tp, s7
                  c.and        a4, a0
                  nop
                  srai         a7, s4, 12
                  slt          s7, gp, s9
                  mulh         t1, s3, a6
                  remu         s2, s5, ra
                  slli         s6, a0, 28
                  lui          a6, 471304
                  srai         t2, s6, 3
                  srli         s11, s1, 8
                  c.xor        a5, a1
                  rem          ra, t1, t5
                  c.or         s0, a5
                  srai         s4, t0, 12
                  slli         ra, a3, 28
                  srl          s10, s6, a7
                  c.andi       a5, 5
                  lui          s0, 124747
                  c.sub        a5, s0
                  mulh         a5, s2, tp
                  sll          a0, t6, a0
                  c.li         s0, 16
                  c.slli       tp, 26
                  auipc        a3, 4907
                  mulh         s0, a4, ra
                  c.srli       a0, 25
                  c.li         t1, -1
                  c.or         s1, a2
                  c.mv         s0, a0
                  addi         s11, s11, -746
                  c.srai       a2, 25
                  div          a0, a7, t4
                  remu         s7, t3, t6
                  c.mv         tp, s3
                  ori          s2, t6, -1916
                  slt          t2, t6, a3
                  slli         a7, a3, 4
                  auipc        a3, 682606
                  andi         s4, gp, -1227
                  nop
                  sltu         a2, a0, gp
                  mulh         a7, s0, s7
                  mulhsu       t3, a2, t6
                  xori         s7, t1, -798
                  remu         s7, s9, s0
                  c.li         gp, -1
                  c.srai       s0, 22
                  sll          t6, t2, ra
                  remu         t5, t0, s10
                  slli         s5, a2, 19
                  mul          gp, s9, s9
                  sra          a7, s11, a0
                  c.li         a6, -1
                  slti         tp, s11, 9
                  div          s1, t6, t1
                  c.mv         tp, a7
                  mulh         a3, t6, t2
                  c.srli       a5, 27
                  sltu         s7, a5, gp
                  xor          s9, gp, s8
                  c.addi       ra, 24
                  c.srai       a1, 11
                  srl          ra, s3, ra
                  remu         a7, gp, t2
                  c.nop
                  sltu         ra, a6, gp
                  srl          a2, s5, s9
                  c.or         a0, a5
                  c.or         a3, a4
                  c.addi       a4, -1
                  sll          t2, s2, s7
                  sltu         gp, t1, a7
                  mulhu        s1, s8, s7
                  mulhu        a6, t2, tp
                  andi         tp, a4, 335
                  xori         t1, t4, 513
                  lui          s4, 100754
                  slli         gp, t4, 24
                  c.lui        t3, 7
                  c.nop
                  c.andi       s1, 6
                  c.mv         t0, a1
                  sltiu        t1, t0, 493
                  c.addi       s6, -1
                  add          ra, a5, t4
                  c.addi       s4, 30
                  c.slli       t0, 24
                  mulhu        s4, s8, gp
                  c.or         a4, a2
                  c.li         gp, -1
                  auipc        a5, 849760
                  mulhu        s7, t1, t4
                  mulhu        gp, a0, s0
                  add          a7, t4, t2
                  div          gp, tp, a7
                  srli         s0, tp, 16
                  c.and        s0, a5
                  remu         gp, t3, s7
                  div          a1, s3, t1
                  c.xor        a3, a5
                  slt          gp, s8, gp
                  srli         s6, s6, 9
                  andi         s9, a0, 225
                  srl          ra, s8, s3
                  c.srli       s0, 8
                  srl          t1, s3, a2
                  andi         gp, tp, -823
                  c.srli       a3, 9
                  andi         s11, a0, 1022
                  c.sub        a2, a2
                  c.srli       a5, 31
                  xor          t0, t2, a4
                  c.xor        a0, a0
                  remu         s2, s3, a2
                  srli         gp, t3, 9
                  srai         a0, a6, 3
                  sltu         a0, s3, t2
                  c.li         a2, -1
                  c.srli       a2, 8
                  c.srai       s1, 27
                  c.addi       t6, -1
                  c.and        a0, s1
                  c.add        s9, s0
                  slli         s0, a2, 5
                  mul          gp, t5, ra
                  slt          t2, s0, s7
                  c.or         a0, a2
                  c.srli       a4, 15
                  c.slli       tp, 11
                  c.addi       a7, -1
                  slt          a7, a7, gp
                  rem          zero, s6, t0
                  andi         t1, t6, 1281
                  c.xor        a3, s0
                  div          t2, t6, t0
                  div          t5, t6, gp
                  nop
                  rem          a5, a1, s10
                  c.xor        a0, a1
                  c.srai       a2, 4
                  mulhu        t5, s4, s3
                  and          t5, s9, t4
                  and          ra, t2, s0
                  divu         a6, t3, t6
                  c.srai       a2, 9
                  mulhsu       t4, s7, a3
                  div          s10, s8, s10
                  c.sub        a4, a1
                  add          s11, s0, s5
                  xori         a7, zero, 272
                  addi         t6, s4, -869
                  mulh         s7, s7, a3
                  sltiu        a0, s0, -1332
                  c.and        s1, a2
                  sll          s1, sp, t6
                  srai         a6, a0, 2
                  slli         a4, s1, 0
                  rem          s6, s8, t0
                  sltu         s9, s3, gp
                  add          t0, t2, tp
                  c.xor        s0, a3
                  sltiu        s11, s6, -1599
                  xori         a4, t4, -1585
                  andi         s11, s2, 803
                  mulhu        t5, a2, a0
                  xor          a5, s10, a1
                  sltu         a0, s0, ra
                  c.srli       s1, 15
                  c.mv         s9, s6
                  c.sub        s0, a1
                  c.lui        s2, 27
                  divu         s7, t5, tp
                  nop
                  xor          s6, gp, a5
                  srli         ra, gp, 13
                  c.or         a3, a4
                  add          s1, s5, t6
                  mulh         t3, t6, sp
                  or           s2, a6, s9
                  slli         a3, t1, 21
                  remu         t2, t6, s8
                  mulhsu       s9, gp, s11
                  xor          s2, s9, s4
                  auipc        a0, 577985
                  mulh         a7, a4, t1
                  c.li         t2, -1
                  srai         t0, t5, 17
                  sltiu        s1, s8, -1993
                  slli         a5, t0, 17
                  and          gp, t6, s2
                  c.xor        a2, a1
                  slt          s2, s3, t6
                  ori          a6, t4, -111
                  slti         s2, ra, 1779
                  srli         s4, zero, 26
                  c.or         a0, a5
                  addi         a3, t2, 663
                  auipc        t4, 320874
                  mulhu        s5, a4, sp
                  sll          a7, t2, s6
                  auipc        s0, 447835
                  c.srai       a0, 17
                  lui          s10, 706269
                  c.addi       a1, 8
                  c.xor        a5, a3
                  xori         t5, s6, -1886
                  c.xor        a4, a2
                  sltiu        s2, a0, -301
                  c.mv         t1, a7
                  c.mv         t3, a6
                  srai         s4, t2, 27
                  xor          t6, t0, a2
                  sltiu        zero, a6, 1260
                  c.li         s0, 15
                  c.andi       s1, 29
                  c.andi       a1, 3
                  lui          t5, 900733
                  divu         a4, a2, ra
                  nop
                  mulhu        t0, a1, zero
                  sub          t0, s4, t0
                  divu         a2, a0, t1
                  sltiu        s1, s9, 238
                  sltiu        s9, s9, 1314
                  sub          a7, s6, ra
                  sltu         a3, s4, a4
                  slti         a1, a4, -832
                  addi         s1, a1, -14
                  c.andi       a3, -1
                  c.addi       tp, -1
                  srli         t4, t5, 28
                  c.addi       s9, 21
                  c.slli       s7, 31
                  c.sub        a4, a4
                  andi         s11, a5, -1539
                  sra          s10, a2, s3
                  andi         t4, a6, -138
                  div          s7, a3, a3
                  xor          t4, s1, s5
                  divu         t2, zero, s8
                  xori         a1, ra, -1305
                  mul          a2, t3, t6
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           t5, 0xcd70fb2a
                  li           a5, 0xabec802c
                  li           t4, 0xffffffff
                  li           s2, 0x0
                  li           t0, 0x3d8e3298
                  li           a7, 0xffffffff
                  li           s7, 0x0
                  li           a2, 0x0
                  li           a3, 0xffffffff
                  addi         a2, a7, -1222
                  divu         t4, a5, a7
                  sub          s2, a2, t0
                  divu         t5, a7, a7
                  divu         a2, a5, a5
                  addi         a3, a2, -840
                  add          a7, s2, a5
                  div          t5, s7, t5
                  mulhsu       t0, t5, t5
                  divu         s2, a5, a5
                  mul          a3, s2, t4
                  remu         t3, t0, a7
                  sub          a2, a3, t4
                  mulhu        s2, a3, a5
                  mulhu        t5, t0, t0
                  nop #end riscv_int_numeric_corner_stream_34
                  c.or         a2, s1
                  c.or         s1, a0
                  c.or         a1, a3
                  auipc        t1, 329994
                  slt          s11, s11, s8
                  mulhu        a7, s2, ra
                  sub          a6, s9, sp
                  xor          t3, s9, s11
                  auipc        s9, 263166
                  c.nop
                  sra          s5, s10, s9
                  divu         t3, t5, a5
                  c.nop
                  c.add        s7, s2
                  andi         a3, tp, 1426
                  andi         t4, a2, 1144
                  sra          a4, a5, sp
                  slli         s2, gp, 0
                  srli         ra, ra, 15
                  sra          s6, ra, s5
                  sra          a0, s2, a0
                  c.or         a5, a1
                  srai         t6, gp, 7
                  c.mv         t0, s2
                  c.mv         t6, s9
                  c.sub        a0, a5
                  c.slli       a7, 17
                  c.or         a4, a3
                  sra          gp, t3, a4
                  mul          a6, t6, a1
                  nop
                  c.nop
                  mulhu        t0, a1, zero
                  rem          s9, a6, sp
                  xor          s4, zero, a1
                  slt          s11, t6, t6
                  c.nop
                  c.mv         ra, s6
                  addi         t1, s0, -848
                  c.srli       a4, 26
                  c.slli       t1, 25
                  sub          a0, s2, sp
                  c.li         t1, -1
                  sltu         a4, a3, s4
                  sra          s0, t5, a5
                  ori          t1, s11, 1406
                  c.srai       a2, 25
                  c.mv         s0, s0
                  mulh         a2, t2, ra
                  sub          zero, t2, gp
                  slt          a0, s9, s5
                  c.srli       a0, 31
                  auipc        a5, 865463
                  sll          t4, sp, a1
                  c.mv         t6, s4
                  sltiu        gp, a3, -1159
                  c.lui        a7, 15
                  c.srai       a4, 20
                  mulhu        s2, a5, s10
                  xori         t6, s3, 1317
                  or           s1, sp, a7
                  c.or         a4, s1
                  srli         t6, s10, 5
                  srl          s6, t5, tp
                  rem          t6, t6, t5
                  slt          s6, s7, s6
                  div          a3, a4, s2
                  remu         gp, a0, t4
                  remu         zero, s3, s2
                  sltiu        a1, a5, 851
                  slt          t3, a6, zero
                  mulh         s11, s5, s10
                  srl          ra, a2, zero
                  sub          s1, s6, s9
                  c.lui        t3, 30
                  div          t0, s10, s2
                  sltiu        ra, a1, 459
                  ori          gp, s1, -1710
                  auipc        s1, 518930
                  xor          s4, a5, t5
                  c.slli       s11, 5
                  mul          t3, s2, a5
                  c.sub        s1, s0
                  srli         s7, s2, 23
                  srl          t3, ra, a1
                  slli         t3, s3, 10
                  add          s11, a5, a5
                  c.and        a0, s1
                  mulhsu       a5, gp, s7
                  and          t5, a3, a7
                  sll          t4, a1, s3
                  sltu         a5, s2, t2
                  slli         gp, s3, 28
                  sra          a7, t6, a7
                  addi         a5, a5, 1610
                  c.or         a5, a1
                  c.slli       a4, 21
                  and          a0, t4, s7
                  c.add        t0, s11
                  sltiu        tp, s2, -1557
                  c.mv         a7, s4
                  c.and        s0, a5
                  auipc        tp, 123645
                  c.xor        s1, s0
                  rem          zero, a5, ra
                  nop
                  c.li         s6, -1
                  c.mv         ra, s1
                  c.srli       a0, 10
                  slli         s9, tp, 11
                  andi         a5, a7, 494
                  or           t3, gp, t5
                  c.nop
                  c.li         s11, -1
                  c.andi       s0, 29
                  c.slli       s5, 6
                  slti         t3, t4, 609
                  c.srai       a5, 11
                  c.nop
                  lui          a6, 900897
                  c.xor        a5, s0
                  xori         zero, a6, -1711
                  c.srli       a0, 24
                  c.or         a1, a0
                  add          s5, s1, s9
                  sltiu        s0, a0, -1178
                  srl          s4, ra, t2
                  mulhu        a6, s5, tp
                  divu         a5, a4, s0
                  add          s9, tp, s11
                  auipc        s11, 102310
                  slt          s6, zero, t0
                  mulh         a6, s0, s9
                  sub          t2, s7, t4
                  mulhsu       s0, tp, t4
                  srl          gp, a5, t5
                  c.or         a4, a2
                  c.slli       a6, 6
                  rem          s1, s7, t6
                  add          gp, t1, t3
                  rem          a7, a0, ra
                  div          s4, s2, s5
                  remu         a2, a0, ra
                  xor          s9, s9, s5
                  slti         zero, a2, 1907
                  sra          t3, s5, s9
                  sltiu        s11, t4, -1267
                  lui          a6, 585041
                  srai         s9, s10, 28
                  add          gp, a3, s4
                  auipc        s5, 1043309
                  rem          s9, s9, ra
                  c.sub        a4, a4
                  slli         t1, s6, 5
                  mulhsu       t5, ra, s11
                  divu         s5, t6, a7
                  mul          t5, s4, a2
                  mul          a0, t3, a2
                  nop
                  addi         s5, s3, 1232
                  lui          gp, 52954
                  c.andi       a4, -1
                  c.slli       a6, 24
                  sltiu        t4, t0, -1296
                  sll          a3, s11, s2
                  xori         a1, s4, 1604
                  xor          s9, s4, zero
                  remu         a1, t0, s9
                  div          a6, t5, a3
                  c.andi       s1, 19
                  lui          s10, 469657
                  and          s9, s7, t6
                  rem          s1, sp, s2
                  andi         a6, zero, -1830
                  div          a3, s7, a5
                  c.nop
                  rem          t6, t4, a2
                  divu         a0, s6, s10
                  mulhu        s2, s1, s1
                  srli         tp, a1, 19
                  and          s6, s2, s10
                  mulhu        a7, s10, s4
                  slli         s6, t1, 11
                  add          t0, a4, t2
                  auipc        a1, 635063
                  c.sub        a1, a4
                  auipc        gp, 489538
                  sll          s10, t3, t3
                  mulh         t4, t4, t3
                  c.addi       t3, 31
                  divu         s4, s5, s2
                  andi         a7, a2, 1992
                  ori          s6, s8, -148
                  c.or         a5, a2
                  srai         t6, t6, 2
                  mulhu        tp, zero, s5
                  sltiu        zero, t4, -1776
                  c.mv         s10, s2
                  lui          s10, 821064
                  addi         s0, t6, -254
                  mulhsu       s11, s7, a2
                  sra          t6, tp, s11
                  xori         t0, sp, -754
                  remu         t0, zero, s3
                  mulhu        t0, t0, s9
                  and          s0, gp, gp
                  c.lui        t0, 24
                  mul          tp, zero, zero
                  mul          a3, s8, zero
                  c.or         a2, s0
                  mulh         a3, a6, ra
                  c.or         a0, a5
                  and          s1, t0, s0
                  or           t5, s8, a6
                  sub          t2, t5, s2
                  auipc        a3, 990656
                  slli         a6, tp, 0
                  sltiu        t1, s10, -1710
                  remu         s9, s9, t4
                  or           t1, t5, t0
                  c.or         s1, s1
                  c.addi       a2, -1
                  slt          s5, s6, t4
                  ori          s4, t0, -531
                  sub          a4, ra, a2
                  mulhu        s9, s5, t3
                  div          s0, t2, t0
                  add          gp, s2, s5
                  srl          a0, a4, t6
                  mulhsu       a2, s9, s8
                  c.slli       a1, 19
                  c.xor        a1, a4
                  rem          s0, a2, s1
                  c.or         s1, a5
                  c.and        a4, a2
                  slli         a1, t1, 28
                  mulh         s7, s5, s7
                  c.and        a5, a2
                  srl          s4, t4, s9
                  c.andi       s0, 21
                  auipc        s2, 244746
                  slli         s4, sp, 13
                  mulhu        s6, s4, t6
                  srl          a6, a4, a3
                  srl          s10, s0, t0
                  divu         s2, s2, a0
                  mulhsu       a6, a0, t1
                  xori         t1, tp, 1105
                  or           s10, s6, t1
                  sll          tp, a3, t6
                  sll          s7, s10, s5
                  c.and        a1, a3
                  sltu         s1, gp, s6
                  slt          a4, a1, a6
                  c.xor        a1, a3
                  mulh         a7, sp, a6
                  mulh         s1, t0, s1
                  ori          s2, zero, 1113
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           t0, 0x80000000
                  li           t3, 0xfd3abf67
                  li           a2, 0x224586c1
                  li           s11, 0x0
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  li           ra, 0xdf025c98
                  li           s1, 0x96ade966
                  li           a0, 0x0
                  mul          t0, ra, s11
                  remu         s0, t3, a6
                  mulhsu       s10, s10, a2
                  mulhu        a6, s11, s1
                  remu         t0, s11, ra
                  auipc        t3, 309223
                  mulhsu       s0, s11, s11
                  mul          s10, s1, t3
                  sub          t0, t0, s11
                  mulhu        a0, s11, s11
                  auipc        s10, 631664
                  mulhsu       a2, a0, t0
                  mulhsu       s1, s0, s10
                  remu         t0, a2, a2
                  mulhu        t0, t0, s0
                  divu         a6, s1, s0
                  add          s0, s11, a2
                  div          s10, s11, s1
                  mulhu        s0, ra, t3
                  mulh         s1, a6, s11
                  remu         s11, a0, s1
                  mul          t3, s11, a0
                  mulhu        a6, a0, s1
                  mulh         s11, t0, s0
                  nop
                  mulh         t3, ra, s11
                  lui          a0, 655272
                  addi         ra, a6, 944
                  sub          s11, a0, a0 #end riscv_int_numeric_corner_stream_12
                  div          s10, zero, t1
                  add          s10, ra, s9
                  sll          ra, s8, a1
                  c.srli       a4, 13
                  c.andi       a4, 10
                  srli         s10, s5, 10
                  c.sub        s0, a4
                  ori          ra, a3, -376
                  srai         t2, s9, 31
                  auipc        a3, 819109
                  andi         a0, t3, 353
                  lui          gp, 637940
                  c.or         a1, s1
                  sll          t2, s4, s7
                  xor          a4, t4, a2
                  c.andi       a1, 22
                  mulhsu       t3, s8, s2
                  sra          a3, t1, a4
                  remu         zero, t3, a1
                  c.addi       s11, 27
                  c.addi       s0, 10
                  divu         t0, t2, gp
                  mulhu        a5, s9, s3
                  c.slli       t2, 10
                  xori         gp, a7, 590
                  sra          s9, a0, ra
                  remu         a2, s7, t4
                  mulhu        t3, s7, tp
                  mulhsu       a2, s8, s9
                  addi         a4, t0, 1803
                  div          tp, ra, a0
                  srli         gp, s11, 3
                  c.nop
                  div          s7, a4, a1
                  nop
                  remu         t5, s0, s8
                  srli         a2, t5, 8
                  sub          t6, a3, s8
                  c.or         a2, a5
                  srli         a1, s5, 8
                  xori         t6, s1, 261
                  slti         a7, t2, 686
                  mulh         t6, a2, s0
                  ori          t3, s0, 548
                  srai         s0, t1, 28
                  c.li         s2, -1
                  c.add        a1, t5
                  mulhsu       s5, s11, s9
                  addi         a5, a6, -171
                  c.li         s11, 1
                  c.srli       s1, 8
                  c.lui        s7, 3
                  remu         t4, a5, tp
                  divu         s0, a2, t0
                  slti         a3, t5, -867
                  sltiu        a0, s1, 880
                  mulhu        zero, tp, s7
                  nop
                  c.addi       s0, 6
                  slt          a3, zero, s7
                  c.sub        a4, a2
                  mulhsu       t2, ra, s3
                  or           a4, s2, t4
                  slli         zero, a4, 29
                  c.addi       tp, -1
                  mulhu        s1, sp, s0
                  slti         a3, a3, 1894
                  and          t2, tp, a4
                  srli         a7, s6, 12
                  div          s1, a0, s9
                  sltu         zero, s2, s5
                  xori         s2, a5, 1357
                  mulh         a5, s7, s9
                  c.andi       a0, 15
                  andi         t3, s11, -123
                  c.add        s4, s5
                  and          a6, a4, s0
                  ori          tp, t2, -194
                  slti         s6, t4, 258
                  c.li         t5, -1
                  c.slli       t1, 5
                  slti         t0, a1, -457
                  c.and        a3, s1
                  mul          s2, a4, a2
                  slli         gp, ra, 4
                  mul          t6, sp, s8
                  c.srai       a4, 16
                  sub          a1, a5, s7
                  nop
                  sub          t6, s6, t5
                  and          t5, t1, s1
                  xori         s11, a4, 1356
                  and          t2, s5, a2
                  slti         tp, a1, 873
                  c.srli       a2, 17
                  auipc        t4, 701598
                  sll          t2, t6, a1
                  c.srai       a5, 26
                  lui          a2, 419904
                  and          s7, t0, a0
                  nop
                  sub          s7, t6, s7
                  c.and        s1, a5
                  c.or         a5, a5
                  nop
                  auipc        s10, 186822
                  c.and        a3, a0
                  auipc        s10, 837230
                  slt          a6, s6, t3
                  or           t1, t0, s11
                  c.xor        a3, s0
                  mulh         ra, a1, t4
                  slt          s4, t3, a4
                  sub          t6, s8, s8
                  auipc        s11, 433313
                  c.li         s1, -1
                  mulhsu       a6, s6, gp
                  sltu         s5, sp, zero
                  c.and        a3, a3
                  c.slli       a2, 20
                  c.and        a3, a2
                  srai         s5, a2, 22
                  div          s5, s5, gp
                  sll          t3, t1, a6
                  c.add        a1, a1
                  remu         tp, a1, ra
                  c.and        a3, a2
                  mulhsu       s11, gp, a2
                  c.slli       s6, 14
                  xor          t6, s7, t3
                  and          a2, s0, s11
                  sra          a7, t5, s1
                  slli         a2, s8, 16
                  andi         a6, a2, 868
                  sltiu        t0, t5, -1175
                  sltu         t5, s7, a7
                  mulh         a6, a4, s2
                  mulhsu       a2, tp, a7
                  divu         a2, s10, s5
                  add          a7, s5, zero
                  div          zero, s9, a6
                  nop
                  and          a5, t5, a3
                  remu         t1, a1, t6
                  sll          a6, t1, s0
                  c.add        t3, s2
                  sll          t6, s1, s0
                  sltu         s10, tp, t6
                  c.add        t3, t6
                  mul          a6, a5, a5
                  c.srli       a5, 3
                  sltiu        s0, a7, -1483
                  and          a6, s1, s2
                  c.mv         t6, t0
                  sra          t0, s6, a0
                  andi         tp, s3, -74
                  c.xor        s0, a4
                  c.srli       s0, 18
                  sll          s4, a6, s2
                  mulhu        s1, a3, t1
                  xor          s7, a6, t0
                  ori          tp, gp, -1056
                  sltu         a6, a5, t2
                  sltiu        a5, a2, -55
                  sltu         t5, s2, s6
                  c.andi       s1, -1
                  slt          s1, s0, t1
                  sub          s9, t1, a5
                  andi         a4, zero, 1415
                  div          t4, s7, a2
                  div          s4, t5, a2
                  sltiu        s10, s10, 96
                  c.sub        a4, a0
                  divu         t2, a2, a2
                  c.sub        a0, a4
                  c.nop
                  c.add        a4, s4
                  sltu         gp, s5, s4
                  c.andi       s1, -1
                  add          a4, s10, gp
                  c.srli       s0, 5
                  c.srai       a5, 27
                  sltu         tp, s11, s3
                  c.xor        a1, a0
                  srai         s6, s3, 3
                  c.lui        s1, 26
                  and          s2, s0, t3
                  sltu         t3, a0, t4
                  c.and        a4, a2
                  sra          s4, t5, s7
                  srai         t1, s0, 5
                  addi         a6, gp, 2
                  c.add        a4, a2
                  c.mv         t3, s1
                  slt          s10, t5, a1
                  c.and        s1, a5
                  div          s1, a1, s10
                  c.addi       tp, 7
                  xori         s7, ra, -500
                  sltu         tp, t1, s1
                  c.or         a0, s0
                  ori          a5, a5, -1070
                  add          t4, s0, a5
                  srli         zero, sp, 30
                  mulhsu       t2, t2, a4
                  sltiu        t1, a6, 1397
                  lui          t6, 223564
                  sub          s4, t6, t4
                  andi         gp, t0, -430
                  div          s0, a7, s10
                  sltu         t4, a4, s0
                  slli         t0, zero, 18
                  c.srai       a1, 17
                  sltiu        s5, s9, 425
                  c.mv         tp, s1
                  c.andi       a4, 19
                  nop
                  auipc        zero, 19117
                  mulhsu       t1, sp, gp
                  remu         a7, s2, s7
                  add          tp, t4, t1
                  slt          a7, a6, s8
                  slli         a1, t2, 3
                  ori          t4, t1, -1505
                  srl          t1, t6, ra
                  c.or         a3, s1
                  divu         a7, s9, a3
                  c.mv         s11, a0
                  sltu         a3, s8, s11
                  c.lui        a5, 26
                  ori          s9, s8, 1985
                  c.srli       s0, 28
                  div          t1, s1, a3
                  c.nop
                  ori          tp, s6, 1748
                  slt          t3, a1, s3
                  c.srai       a2, 20
                  c.sub        a3, a0
                  c.slli       a1, 26
                  srai         a6, s1, 21
                  c.srai       a0, 7
                  c.xor        s0, a1
                  addi         s6, gp, 1512
                  remu         t1, t1, t5
                  slli         gp, s6, 31
                  srai         a1, s7, 23
                  c.lui        s10, 6
                  xori         t5, ra, -1606
                  c.addi       a1, 13
                  sra          s6, t4, ra
                  c.srli       s1, 22
                  c.li         t5, -1
                  mulh         a0, a0, s9
                  div          a0, sp, s10
                  c.lui        s2, 14
                  c.slli       a2, 3
                  slli         tp, a4, 21
                  c.addi       s11, 20
                  slt          a4, a7, a4
                  ori          a3, a3, 771
                  addi         a1, a7, 1609
                  sltiu        tp, zero, -1061
                  c.or         s0, s1
                  sltiu        s2, a4, -560
                  or           t0, ra, a7
                  srai         s6, a6, 17
                  mulhsu       s1, a0, sp
                  c.andi       a2, -1
                  sltiu        t5, t2, -983
                  add          s4, s2, a3
                  and          s9, s10, t5
                  xori         a0, s5, 1834
                  mul          s0, s6, sp
                  c.srai       s0, 13
                  c.xor        a3, a3
                  sltiu        a1, s11, 886
                  c.sub        a1, s0
                  lui          s1, 717085
                  auipc        s5, 885471
                  c.li         s6, -1
                  srl          a4, t6, t3
                  remu         s4, t4, a0
                  slt          s6, s1, t2
                  slt          zero, zero, t0
                  sltu         a5, s10, s11
                  slt          s11, s4, a6
                  or           a1, a3, a0
                  divu         a5, t5, a7
                  sltiu        s1, zero, 1033
                  srai         ra, s9, 5
                  or           t6, t1, s5
                  xori         s0, s6, 521
                  sub          a3, t6, tp
                  slti         gp, a5, -365
                  c.slli       s7, 25
                  mulhu        s1, s6, s6
                  andi         s0, zero, -1791
                  slli         gp, t5, 30
                  mulhsu       a0, s7, s5
                  sra          s9, tp, ra
                  lui          s6, 823039
                  srl          s9, a4, ra
                  c.lui        a0, 10
                  c.nop
                  sltiu        a3, a0, -1571
                  c.nop
                  c.addi       a0, -1
                  divu         t2, a0, s3
                  mul          t1, tp, s5
                  c.li         a6, 21
                  add          a6, t6, t3
                  addi         a2, a6, 1285
                  c.li         a3, -1
                  c.srai       s1, 18
                  or           s7, s6, a7
                  c.xor        a0, a3
                  c.and        s1, a4
                  c.sub        a5, a0
                  and          t2, zero, s10
                  c.sub        s1, s1
                  c.li         s2, -1
                  c.sub        a5, a0
                  c.nop
                  remu         t0, a3, s6
                  c.srli       a4, 17
                  and          t1, t0, s6
                  sltiu        s7, s5, -1545
                  rem          s11, s10, a3
                  remu         t2, s7, zero
                  sub          tp, a7, a4
                  c.nop
                  mulhsu       t4, a2, a7
                  andi         s7, s1, -1931
                  mul          a1, t3, s4
                  andi         a4, t3, 1709
                  sltiu        s6, t2, -839
                  sltiu        tp, s1, -487
                  slli         s7, s8, 5
                  mulhsu       a2, s8, gp
                  c.li         t1, -1
                  and          s4, a0, t6
                  ori          s4, t3, -385
                  xori         t3, ra, -1181
                  ori          a6, a2, -1820
                  srl          a2, t3, a5
                  slt          t4, a7, s4
                  c.and        a2, a0
                  and          s5, t6, t4
                  c.slli       t2, 14
                  c.add        ra, t0
                  c.add        t5, s0
                  c.andi       a5, -1
                  sltiu        t2, t2, 1722
                  rem          s10, zero, t2
                  div          t5, a0, s10
                  srl          t5, s6, a5
                  slt          a1, t3, s4
                  xori         t0, s3, -1191
                  c.srli       a5, 12
                  add          t3, t0, sp
                  auipc        a0, 461929
                  c.lui        s0, 15
                  sra          s1, t5, t0
                  srl          a7, t4, a0
                  c.srli       s1, 16
                  c.nop
                  slti         s0, t3, 1999
                  slt          a3, a4, gp
                  slti         a1, a5, -1638
                  mulhu        s5, sp, s6
                  remu         zero, t5, s9
                  srl          s4, zero, s3
                  c.srli       a2, 17
                  srli         ra, a2, 15
                  nop
                  andi         a3, t6, 460
                  c.addi       a7, -1
                  ori          s1, sp, -1317
                  slti         zero, t6, -889
                  sltiu        a0, s3, -502
                  add          ra, tp, s0
                  slli         s5, s2, 5
                  c.addi       s9, -1
                  lui          t4, 848408
                  nop
                  c.add        s0, a6
                  c.or         a3, a5
                  auipc        t2, 1025960
                  addi         a1, a0, 2008
                  slli         a6, s7, 23
                  mulh         s2, s3, a6
                  sltu         a6, t5, s11
                  c.mv         a0, s11
                  c.srai       s0, 6
                  div          a6, s10, a5
                  srl          tp, s1, ra
                  c.or         s0, a1
                  c.nop
                  div          t1, s9, s0
                  mulhsu       s0, a3, gp
                  mulhu        a6, a4, t6
                  srai         a0, ra, 19
                  c.srli       a5, 31
                  auipc        s11, 978427
                  sltiu        s5, s5, -93
                  sltiu        a2, s7, -1589
                  and          s9, a3, gp
                  srl          s11, s5, tp
                  c.srai       a3, 5
                  srl          gp, s0, t4
                  nop
                  srli         s1, a5, 30
                  and          s10, a6, a2
                  and          t4, s8, a0
                  sll          a3, s4, a5
                  sra          s2, a3, a3
                  c.sub        a5, a4
                  c.nop
                  c.lui        t3, 29
                  sll          zero, ra, a7
                  and          s9, s4, tp
                  slti         a1, s3, 322
                  addi         a6, gp, -1323
                  or           t5, sp, ra
                  mulhsu       t6, s6, t2
                  sltiu        a7, s2, -633
                  sub          s0, s1, a6
                  c.mv         tp, s6
                  ori          ra, s8, -859
                  ori          zero, s11, -1564
                  nop
                  add          t2, sp, t4
                  mulhsu       a6, s10, a5
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           s2, 0x0
                  li           s11, 0x0
                  li           tp, 0xad6f742
                  li           t5, 0x80000000
                  li           s9, 0x0
                  li           t3, 0x6271ae2
                  li           ra, 0x80000000
                  li           t4, 0xffffffff
                  li           s6, 0x80000000
                  sub          s2, s2, t5
                  divu         s6, s11, s6
                  mul          t4, t5, t5
                  nop
                  remu         s11, s2, t3
                  div          s9, s0, t5
                  mulh         t4, s11, s6
                  rem          s9, t4, s2
                  auipc        s9, 876949
                  mul          s0, s6, t5
                  mulhsu       s11, s11, ra
                  auipc        s9, 356198
                  lui          tp, 279507
                  remu         s2, s9, t4
                  auipc        ra, 508205
                  mulhsu       t5, t4, t3
                  div          tp, ra, t3
                  mulh         s11, s6, s11
                  rem          tp, t3, t4
                  mulhsu       s11, tp, s6
                  mul          tp, t4, s0
                  mulhu        s0, ra, ra
                  mul          t5, s9, s11
                  rem          t3, ra, ra
                  auipc        s11, 708704
                  divu         t3, s6, s9
                  div          ra, s0, s0
                  mul          tp, ra, s6
                  mul          s2, ra, ra #end riscv_int_numeric_corner_stream_24
                  sltiu        s7, s9, -1896
                  slt          t6, s7, s1
                  div          t4, a3, a0
                  srli         s7, s0, 21
                  mulh         s10, a4, s3
                  sub          s7, a2, a6
                  c.li         a7, -1
                  auipc        a0, 601152
                  auipc        gp, 81956
                  addi         s9, a5, 1478
                  andi         zero, t6, 643
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a2, 0x1f77fc01
                  li           s1, 0x0
                  li           s7, 0x5a1846d
                  li           a0, 0xffffffff
                  li           s11, 0x80000000
                  li           a7, 0x80000000
                  li           s4, 0xffffffff
                  li           a4, 0xffffffff
                  li           t3, 0x80000000
                  rem          t3, s11, a2
                  add          gp, s4, s1
                  div          s1, gp, s7
                  mul          a0, s1, a4
                  div          s11, a2, a7
                  add          a2, s7, a7
                  lui          a7, 311058
                  remu         t3, s11, s4
                  mul          gp, s4, s4
                  addi         a2, a2, 1869
                  nop
                  mulh         a0, s1, a7
                  mulh         gp, a7, s7
                  sub          a7, s11, s1
                  divu         a0, s1, a7
                  add          a4, s1, a7
                  mulhsu       a0, s11, a2
                  remu         s1, gp, a4
                  nop
                  add          a7, s7, s7
                  rem          a2, s11, a0
                  add          a7, s11, t3
                  add          s11, a7, a0
                  remu         a0, gp, t3 #end riscv_int_numeric_corner_stream_19
                  and          s2, t3, t6
                  nop
                  srl          s0, s3, s7
                  sra          a2, tp, s10
                  c.slli       s6, 17
                  sltu         a6, s3, a4
                  c.andi       s0, -1
                  rem          t1, t0, t6
                  sra          s7, sp, a4
                  mulhsu       gp, s7, a3
                  mulhu        s6, gp, s8
                  c.lui        a7, 13
                  lui          a3, 749361
                  divu         s6, tp, s1
                  srai         a6, s4, 18
                  slli         zero, t3, 12
                  ori          a6, ra, 61
                  mul          a0, t5, s6
                  nop
                  rem          s9, a6, s6
                  c.sub        a5, a2
                  c.or         a5, a1
                  mulh         s4, s10, a2
                  c.addi       gp, 16
                  c.xor        a0, a0
                  c.addi       t4, -1
                  sll          a7, s2, a6
                  c.or         a3, a5
                  ori          zero, gp, -737
                  c.and        s1, a2
                  divu         s9, tp, a5
                  sub          t0, a4, a1
                  mul          t2, gp, a7
                  sltiu        s5, a1, 778
                  c.addi       a5, 9
                  c.and        s1, a2
                  mulhsu       t1, s8, s7
                  c.mv         s6, t0
                  ori          t0, a7, -251
                  c.xor        a3, s0
                  mul          s10, t3, s11
                  srl          t0, a2, s10
                  lui          t4, 939092
                  slti         a3, s6, 236
                  mulhsu       s7, sp, t1
                  addi         t4, t0, 1100
                  c.lui        ra, 20
                  divu         t0, s11, t2
                  slli         s6, a2, 19
                  nop
                  addi         s6, a1, 858
                  c.andi       a0, -1
                  lui          t5, 243346
                  c.or         a3, a5
                  slt          t6, t1, s5
                  mulhsu       s11, a4, a6
                  c.nop
                  sll          a6, s5, s2
                  or           gp, s11, s2
                  addi         tp, s0, 525
                  and          a1, t1, t2
                  c.andi       s0, -1
                  lui          t2, 483668
                  mulhsu       t3, s1, a6
                  c.xor        s1, a3
                  c.add        s2, s10
                  xor          s2, s8, s10
                  c.srli       a3, 26
                  srl          ra, a6, s9
                  mul          a3, a7, s5
                  c.srli       a1, 5
                  c.sub        a2, a0
                  divu         s7, t5, ra
                  andi         s7, sp, -898
                  or           a1, s3, t5
                  or           gp, s3, a2
                  c.andi       s1, -1
                  sltu         gp, a3, a2
                  add          zero, tp, s6
                  add          s7, t5, t5
                  c.or         s0, a0
                  xori         t1, s9, -1699
                  c.add        a6, t0
                  and          t6, t3, s6
                  c.srai       a1, 5
                  c.nop
                  slt          a0, s4, tp
                  sltiu        a5, s5, -620
                  slti         t0, s0, 243
                  slti         a1, s5, -932
                  c.andi       a2, 4
                  addi         gp, t2, 1576
                  c.add        s4, s7
                  or           t2, s5, s0
                  auipc        s2, 90726
                  c.mv         s1, a4
                  xori         a7, zero, 1054
                  andi         a5, tp, -1547
                  sra          a2, t4, a4
                  addi         s9, t1, 1024
                  auipc        ra, 676126
                  nop
                  slli         s11, t2, 15
                  c.lui        a5, 30
                  c.addi       s5, -1
                  or           s6, s4, s3
                  c.nop
                  srli         s0, a4, 22
                  mulh         a6, a7, a1
                  mulhu        t5, s2, s11
                  c.andi       a4, -1
                  div          s7, t4, s10
                  mul          t1, gp, a6
                  c.xor        a5, s1
                  c.addi       s0, -1
                  div          s9, s9, a4
                  c.xor        s1, a4
                  auipc        t1, 131436
                  addi         a2, a3, 132
                  sltiu        s9, a3, 322
                  mul          s1, s10, a5
                  sltu         t3, s4, t5
                  div          t5, s1, zero
                  c.srli       a0, 12
                  auipc        t4, 944489
                  or           s4, sp, s7
                  c.xor        a3, a4
                  xor          ra, s5, tp
                  mulhsu       a4, s4, s1
                  c.add        a6, t0
                  ori          s6, t0, -282
                  ori          s5, a6, 961
                  sra          s10, a0, a2
                  c.addi       s6, -1
                  c.addi       s4, 4
                  c.mv         tp, s10
                  c.and        a5, a1
                  nop
                  divu         s6, a1, a1
                  c.addi       a0, 10
                  sll          a1, s9, a0
                  sll          a4, t2, ra
                  c.andi       a4, 17
                  auipc        zero, 21379
                  sra          gp, t2, s9
                  addi         s10, tp, -1263
                  c.srli       a2, 26
                  auipc        a3, 203693
                  remu         t4, a6, t4
                  c.nop
                  c.srai       a1, 5
                  andi         t5, a2, 288
                  sltiu        ra, a4, -715
                  srai         ra, s10, 9
                  srli         t3, a4, 20
                  rem          s2, gp, a6
                  div          s6, s7, sp
                  c.mv         s2, s1
                  addi         zero, s4, -88
                  slt          a7, s9, a2
                  lui          s7, 952765
                  slli         a6, s1, 19
                  sub          t5, ra, a5
                  c.or         s1, a2
                  add          t1, a0, s6
                  xor          s6, s4, t1
                  divu         a6, zero, s2
                  c.xor        a3, a5
                  c.srai       a0, 15
                  lui          s5, 605971
                  addi         zero, a4, 1885
                  c.mv         t2, s0
                  c.li         a0, -1
                  c.add        s7, t0
                  c.addi       tp, -1
                  xor          a2, t6, a3
                  c.srli       a1, 15
                  sltiu        a7, s8, 649
                  divu         s2, s11, tp
                  and          s9, s3, zero
                  c.xor        s1, s0
                  slt          a3, s6, a2
                  mulh         a5, s6, zero
                  c.add        s7, sp
                  mulhsu       s7, a6, a6
                  mulh         a5, a1, zero
                  and          t0, s11, a3
                  c.srli       s0, 17
                  slt          s6, a5, a0
                  srl          t0, t6, a1
                  add          t5, t2, t2
                  c.add        a7, a6
                  srai         a4, s3, 11
                  c.li         a2, 30
                  lui          a7, 346760
                  div          s9, s5, t5
                  add          tp, s4, s6
                  c.or         a0, a0
                  auipc        t1, 458234
                  c.xor        a2, s0
                  mulhsu       s10, sp, gp
                  mulh         s7, a2, t1
                  c.or         a3, a0
                  nop
                  mul          s2, t1, zero
                  c.addi       s11, 17
                  remu         t2, a6, tp
                  andi         t3, t2, -477
                  c.xor        a0, s1
                  c.or         a3, a0
                  srai         s10, t2, 2
                  c.andi       s0, 26
                  mulhu        s0, s5, s7
                  c.addi       s11, 18
                  mulhsu       s9, t2, a2
                  c.srli       s1, 31
                  sltu         t1, t0, t0
                  xor          s6, s6, gp
                  c.or         a3, s1
                  slli         t4, zero, 3
                  mulhu        s9, tp, s1
                  mul          s2, tp, a2
                  c.slli       t4, 1
                  lui          ra, 1044266
                  srl          s10, t5, s11
                  or           t5, a2, s2
                  rem          a2, s6, s7
                  mul          ra, t5, t4
                  c.slli       a7, 26
                  sltu         s10, a7, s0
                  sll          t0, a2, s0
                  auipc        gp, 745428
                  c.or         s1, s0
                  c.nop
                  sltiu        a7, s9, -1365
                  c.add        t5, t4
                  remu         s7, s6, t6
                  c.and        s1, a5
                  and          a0, s4, t6
                  c.mv         s11, s7
                  sra          t2, s11, s11
                  lui          a6, 941434
                  slti         ra, a7, 1830
                  c.nop
                  nop
                  sub          zero, a5, a4
                  c.slli       a4, 18
                  addi         a3, a0, 975
                  xor          s9, t3, gp
                  slli         a6, a7, 14
                  c.or         s0, s0
                  slti         a1, s5, 1851
                  c.slli       a7, 28
                  srai         t1, s7, 16
                  sltiu        t2, t1, -171
                  c.nop
                  lui          tp, 692393
                  mulh         t2, s1, a7
                  or           a1, a4, ra
                  srli         a7, a1, 24
                  srli         ra, s8, 28
                  div          t4, t5, s1
                  add          t5, t5, tp
                  xori         ra, t3, 1100
                  c.srli       a2, 3
                  c.lui        a0, 26
                  c.lui        a0, 27
                  srli         t5, s0, 6
                  slti         a1, t3, 334
                  or           t3, ra, t4
                  sub          s11, ra, tp
                  add          s7, zero, s1
                  remu         s6, s6, a0
                  c.srli       s1, 18
                  mulh         t4, s6, t3
                  c.slli       a3, 6
                  c.slli       s9, 11
                  nop
                  c.and        a0, a4
                  remu         a2, a1, a2
                  c.mv         t1, gp
                  divu         a4, sp, s6
                  c.slli       s0, 26
                  c.or         s1, a4
                  c.add        s6, a3
                  c.srai       a1, 28
                  and          s4, s0, a7
                  mul          tp, t6, a3
                  c.li         t5, -1
                  ori          a5, t3, 1992
                  sll          s6, s3, zero
                  c.lui        gp, 31
                  c.mv         s6, s9
                  c.slli       s7, 4
                  remu         t3, gp, t1
                  ori          zero, ra, -2027
                  add          a4, t3, a3
                  c.xor        a2, s1
                  c.srli       a1, 9
                  c.addi       s0, 20
                  c.or         a0, a3
                  andi         a0, t3, -1750
                  xor          s0, t4, s10
                  c.srai       s1, 10
                  mulh         a6, s7, a6
                  or           a6, a2, t3
                  and          t2, gp, s4
                  c.sub        a0, a3
                  mulhsu       gp, s7, s0
                  and          a4, a3, t4
                  srl          a5, s1, s5
                  xor          s11, a7, s9
                  sra          gp, a7, t4
                  slt          s5, a0, s1
                  srli         s9, s6, 20
                  add          a5, t4, s2
                  slti         a6, a5, 1937
                  slli         s10, a2, 19
                  c.lui        t3, 11
                  lui          t2, 947979
                  andi         s9, t3, 1673
                  sll          tp, s0, zero
                  div          t1, gp, s2
                  addi         s1, s2, -204
                  xor          t5, t0, sp
                  sltiu        gp, sp, -1211
                  andi         a0, a6, 1527
                  sltu         a5, tp, a5
                  c.li         a7, 13
                  rem          a2, a0, a3
                  sra          zero, a2, t6
                  c.add        a6, a6
                  sltu         a1, t5, a1
                  slt          s6, zero, a4
                  nop
                  nop
                  ori          s0, s1, -764
                  c.slli       s5, 17
                  ori          s7, s3, -1873
                  c.li         a1, -1
                  c.andi       s0, -1
                  srai         zero, a6, 29
                  lui          a3, 793323
                  div          t4, s8, a5
                  c.lui        a5, 17
                  sll          a7, gp, s9
                  c.andi       a2, 4
                  rem          s11, a6, t0
                  c.mv         s2, gp
                  addi         t1, sp, 710
                  ori          t4, s4, 164
                  remu         s0, s7, gp
                  mul          s10, s10, a0
                  c.and        s0, s1
                  add          t4, t3, a6
                  c.and        s0, a3
                  slli         a0, s10, 16
                  addi         tp, a7, 189
                  c.srai       a1, 19
                  sra          s0, a1, s11
                  auipc        a6, 433590
                  sll          a3, s0, zero
                  mulhu        s4, zero, a2
                  andi         t5, sp, -534
                  c.slli       t6, 22
                  c.nop
                  sltu         s1, s1, s2
                  or           s6, a6, a0
                  div          t5, s3, t5
                  sll          a2, s6, s10
                  c.slli       t6, 19
                  mulhu        zero, a2, s2
                  mul          t1, a7, gp
                  auipc        a6, 608492
                  div          gp, zero, sp
                  mulhu        s7, t3, s8
                  addi         s9, t5, -669
                  c.and        a2, s0
                  addi         s6, t5, 670
                  c.and        a3, a2
                  remu         t2, s2, a3
                  lui          t0, 302962
                  c.or         s0, a4
                  lui          a4, 981189
                  c.mv         s0, t3
                  addi         a6, a6, -1405
                  c.andi       s1, -1
                  ori          s5, a7, 286
                  sra          a7, s4, t1
                  slli         a3, t2, 1
                  mulhu        s9, a4, s8
                  div          s11, t6, a1
                  xori         a3, s1, 1955
                  c.xor        s0, a2
                  rem          a6, s8, tp
                  div          s5, t3, t2
                  rem          a1, s3, zero
                  sll          zero, s9, gp
                  sll          s4, s9, t5
                  div          a3, tp, s4
                  nop
                  c.slli       t2, 8
                  and          t0, a3, gp
                  nop
                  slt          s9, t0, s11
                  sltu         gp, gp, sp
                  sll          a6, a4, ra
                  c.srli       a2, 29
                  c.add        a2, a6
                  auipc        gp, 992843
                  mul          t2, zero, t1
                  srai         gp, a2, 19
                  c.nop
                  sra          s9, sp, t5
                  auipc        s6, 602764
                  c.mv         t3, s5
                  mulhu        gp, a5, s8
                  sltu         t4, s8, a0
                  auipc        s1, 909414
                  xor          a6, a6, t1
                  divu         s5, t5, s9
                  sub          tp, a7, s3
                  or           a2, t2, t4
                  c.addi       s4, -1
                  rem          t1, s5, s8
                  c.slli       t0, 20
                  mulhsu       s5, t0, s10
                  or           t5, a1, gp
                  srl          s6, gp, t5
                  and          s0, zero, tp
                  sub          t1, tp, t3
                  sra          t5, s8, t5
                  sltiu        s4, a7, 730
                  mulhu        a2, a4, gp
                  c.lui        a5, 15
                  mulh         a7, a2, a0
                  srai         a0, t1, 23
                  nop
                  c.sub        s1, a2
                  addi         a2, s1, 1933
                  c.andi       a2, -1
                  nop
                  lui          a6, 166816
                  c.lui        s5, 2
                  mulhu        s0, a4, s9
                  c.and        a2, a1
                  mulhu        t0, s5, s7
                  and          s10, t1, s7
                  rem          s10, a1, a0
                  slli         s9, s9, 16
                  divu         t6, t5, ra
                  c.slli       s1, 13
                  srl          t1, s5, a0
                  add          a6, s6, s11
                  c.andi       a1, 13
                  mulhu        a7, gp, t2
                  xor          ra, sp, t5
                  c.add        s10, t1
                  c.slli       t4, 17
                  c.srai       a0, 24
                  mulhsu       tp, zero, a3
                  mul          s7, a1, a5
                  c.nop
                  c.or         a4, a5
                  div          a7, gp, s1
                  c.andi       a3, -1
                  srl          zero, gp, s7
                  c.srli       a5, 23
                  sltu         a7, s3, s3
                  c.nop
                  c.lui        a0, 10
                  and          gp, t3, s2
                  srai         zero, t2, 10
                  ori          tp, gp, -686
                  srli         t1, a7, 11
                  sra          s11, ra, ra
                  c.mv         s2, s8
                  c.nop
                  mulhsu       a0, s4, s0
                  c.sub        a5, a5
                  sltiu        t5, t3, -3
                  srli         ra, t4, 7
                  srl          zero, a3, a4
                  andi         s2, zero, 649
                  slli         a7, tp, 3
                  slli         t2, a2, 0
                  div          t3, s11, a3
                  div          t1, a3, s11
                  nop
                  div          gp, a6, a6
                  rem          a2, t5, t2
                  addi         t6, zero, 855
                  div          t1, s1, s0
                  c.addi       s4, -1
                  lui          s5, 446979
                  andi         a6, s6, 150
                  c.slli       s9, 31
                  sltu         s11, s11, s6
                  mul          tp, s8, s0
                  or           s10, s11, s7
                  ori          s9, a5, -742
                  and          s0, ra, s10
                  nop
                  mulh         t3, a0, a1
                  c.and        a1, a5
                  c.add        t6, s9
                  xor          s2, t1, t5
                  slti         s10, zero, 1292
                  c.or         a5, a3
                  c.nop
                  sub          s5, a7, a4
                  sra          t1, a6, s5
                  addi         zero, a3, 86
                  sltu         s9, a7, s7
                  srli         tp, a1, 3
                  c.addi       t6, -1
                  mulh         tp, t3, s8
                  sub          a1, a5, s7
                  slli         s0, s0, 16
                  c.srai       a2, 26
                  sltu         a1, s2, ra
                  remu         t1, a7, s11
                  srai         a4, a4, 5
                  xor          zero, a5, s3
                  mulh         gp, gp, t2
                  slli         s6, a3, 19
                  c.srli       a5, 7
                  c.and        a5, a5
                  remu         s1, t1, t6
                  addi         a2, tp, 312
                  slti         a1, a0, 1649
                  srl          t0, s3, a1
                  c.and        a5, s1
                  mulh         a2, ra, s8
                  c.sub        a5, a1
                  sltu         s7, s1, s8
                  sll          s7, a4, s2
                  nop
                  srai         a0, a5, 1
                  lui          s0, 751171
                  srl          a1, a2, a2
                  sltu         s9, t4, s3
                  srli         a2, tp, 20
                  mulhu        s4, a6, s3
                  c.lui        a2, 23
                  mulh         t6, s1, t6
                  xori         s7, s7, -903
                  c.li         t3, 19
                  c.addi       a1, 4
                  slt          a1, t3, s0
                  mul          s10, a1, t3
                  xori         s2, s10, -21
                  c.or         a0, a0
                  ori          a7, ra, 973
                  lui          s10, 109540
                  c.lui        a3, 10
                  mul          t1, s1, t2
                  mulhsu       s10, a2, ra
                  c.srai       s0, 11
                  nop
                  mulh         t1, s8, a4
                  auipc        gp, 368129
                  ori          s2, s8, -330
                  sra          gp, s5, s1
                  div          t5, t3, t0
                  srli         a1, t1, 29
                  c.li         gp, -1
                  c.lui        s7, 27
                  c.add        a7, t4
                  ori          a1, t2, 647
                  slli         t0, a2, 28
                  lui          a6, 31493
                  c.mv         s9, s6
                  divu         t6, a7, a4
                  mul          s2, sp, t6
                  ori          ra, ra, -1414
                  lui          s0, 685556
                  c.mv         s2, s6
                  sra          a6, t2, a1
                  add          s5, a6, a2
                  nop
                  mulh         gp, a1, t4
                  lui          t1, 988731
                  c.xor        a2, s1
                  remu         a4, ra, t4
                  sltu         a2, tp, a5
                  c.sub        a5, a5
                  c.xor        a4, s0
                  remu         a4, t0, sp
                  srai         s4, s8, 11
                  srl          s0, a2, a1
                  c.andi       s1, -1
                  sub          s5, a0, a4
                  sub          gp, ra, t2
                  slti         s2, a7, 1429
                  c.li         t3, 26
                  addi         a5, a4, 105
                  add          a2, sp, s0
                  mulhsu       a4, s11, t3
                  c.mv         t5, a3
                  c.slli       s1, 31
                  c.slli       s1, 24
                  add          t1, s3, s2
                  srai         s2, t3, 0
                  nop
                  c.nop
                  xor          s2, s4, s8
                  srli         gp, t2, 8
                  lui          a0, 349724
                  xori         a7, s1, -661
                  mulhu        a3, s1, s8
                  c.li         s4, -1
                  sltiu        a4, s7, -808
                  srli         a2, zero, 9
                  srai         s11, s7, 9
                  or           ra, gp, t0
                  slli         tp, zero, 21
                  c.srli       s0, 31
                  slli         a1, a1, 11
                  xori         gp, sp, 2040
                  sll          t5, tp, a1
                  slt          zero, a2, t6
                  add          a6, s7, t2
                  mulhsu       zero, s5, a7
                  c.srai       a5, 19
                  sltiu        a6, s11, -826
                  xor          t3, t4, s6
                  mulh         s0, sp, a3
                  and          t3, a2, t1
                  sub          t5, a5, s0
                  c.xor        a1, a1
                  srl          zero, sp, s5
                  xori         s7, s6, -948
                  sra          tp, a5, t0
                  slti         a4, s10, -575
                  c.lui        t3, 30
                  slti         s5, a5, 364
                  add          s10, a2, s3
                  mul          t2, zero, s5
                  auipc        s11, 618859
                  c.nop
                  c.xor        s0, a0
                  mul          s7, t0, s9
                  c.addi       t4, -1
                  add          a0, a0, gp
                  rem          s10, a3, a5
                  sub          s9, t3, zero
                  slli         s2, t1, 25
                  c.and        a0, a5
                  divu         s4, a4, t5
                  lui          t5, 371669
                  srl          t4, a0, ra
                  srl          zero, gp, s4
                  srai         s5, a5, 9
                  auipc        s7, 963397
                  auipc        s2, 939401
                  c.srli       a1, 16
                  slti         s1, s5, 1663
                  mulhsu       t1, s9, s5
                  srl          t3, s3, s2
                  c.slli       s0, 8
                  rem          t4, a4, a4
                  c.nop
                  slti         s11, s4, 1269
                  mul          a3, t6, t4
                  mulhsu       t5, tp, t1
                  divu         t4, s8, t5
                  sra          s11, t6, s8
                  addi         s5, zero, 158
                  remu         a1, s4, a1
                  c.nop
                  xor          t2, ra, s9
                  srai         t6, tp, 18
                  sltiu        s7, s2, 741
                  div          t4, s10, a4
                  srli         s9, zero, 22
                  sub          zero, s9, s6
                  c.mv         s11, a1
                  srai         a0, a0, 27
                  c.or         a4, a4
                  srli         t2, a3, 1
                  lui          s2, 762609
                  xori         s1, t5, -1034
                  c.add        t0, s3
                  andi         tp, t3, -1795
                  ori          gp, a4, 1982
                  ori          s4, zero, -725
                  slti         gp, sp, -798
                  or           a0, s2, s4
                  mulh         s2, s10, t1
                  and          t2, a0, s5
                  or           gp, s3, s8
                  c.or         a0, s0
                  rem          t4, t5, t0
                  rem          s1, a2, a5
                  c.xor        a1, a5
                  xori         t4, s2, -708
                  srli         s0, s8, 28
                  slt          a3, a5, s9
                  xor          s7, ra, t6
                  add          zero, a4, a6
                  c.lui        tp, 13
                  andi         a4, a0, -33
                  xori         s9, s1, 2008
                  auipc        zero, 128296
                  c.slli       s10, 18
                  sub          gp, s5, sp
                  c.sub        a1, a5
                  sub          s9, a0, a3
                  and          a1, a5, s3
                  sub          s9, gp, s8
                  c.lui        a4, 9
                  c.xor        a3, a4
                  sra          gp, s1, a1
                  xori         a6, s4, 433
                  remu         a2, s9, zero
                  c.and        a4, a0
                  c.mv         t3, t1
                  c.or         a2, s1
                  div          s10, a7, sp
                  sltu         a0, s5, a4
                  remu         tp, s11, s9
                  nop
                  rem          t2, a5, a0
                  c.sub        a1, s0
                  xori         t6, s6, 529
                  c.xor        a3, a3
                  divu         a0, a1, a3
                  remu         a3, a6, s7
                  addi         s7, a6, -414
                  sltiu        gp, a0, -453
                  mulhu        t3, s10, t5
                  lui          a4, 261621
                  mulhsu       s9, a0, s5
                  slt          t0, t6, a3
                  xori         a7, s1, 5
                  c.srli       a3, 15
                  mulhsu       t3, s11, a7
                  c.lui        ra, 16
                  c.or         a3, s0
                  slt          t1, s4, t5
                  add          a3, s11, s8
                  srai         s10, a7, 3
                  srli         a6, s10, 13
                  ori          s2, t1, 1945
                  slli         gp, s11, 0
                  xor          s5, a5, s4
                  c.srai       a5, 24
                  sll          s5, s10, s4
                  c.add        a3, ra
                  remu         tp, a2, sp
                  c.lui        a3, 27
                  c.nop
                  sltiu        s0, a5, 1020
                  addi         gp, s5, 1870
                  rem          a0, a0, t3
                  slli         t3, ra, 10
                  srli         a5, a3, 21
                  sll          tp, t4, s11
                  andi         t0, a3, 489
                  c.and        a5, a1
                  c.srli       a3, 3
                  sll          t3, s0, t2
                  nop
                  andi         a3, t1, -1621
                  mul          t3, sp, a7
                  c.lui        gp, 2
                  addi         t0, zero, 505
                  rem          s7, s7, a2
                  srl          a7, s10, tp
                  c.lui        s11, 1
                  mulh         s5, s9, ra
                  divu         a5, s11, sp
                  xori         a7, gp, 896
                  c.nop
                  divu         s2, a0, a3
                  srli         a5, t3, 4
                  remu         a1, sp, s9
                  mulhu        a5, ra, s8
                  sub          a3, s9, a5
                  c.srai       a0, 27
                  divu         t0, ra, tp
                  mulhu        t3, s11, t6
                  andi         s6, a1, 1936
                  mulhu        s6, t1, s9
                  or           t4, s6, zero
                  xor          s5, s5, a7
                  addi         tp, s7, -639
                  xori         s9, a2, 909
                  c.xor        a3, s1
                  mulhu        tp, a0, tp
                  add          s9, s8, gp
                  xori         zero, t6, 1052
                  c.srli       s1, 31
                  or           s4, s8, zero
                  div          a6, s11, a5
                  sltu         s1, s9, tp
                  sub          t6, a5, s7
                  c.nop
                  c.mv         ra, a6
                  mulh         s2, t3, s0
                  sra          s4, a5, s3
                  srl          s1, zero, s4
                  or           ra, s5, a2
                  div          t4, s3, s9
                  remu         s11, s4, s11
                  c.srli       a1, 5
                  addi         t6, s3, 217
                  c.srli       a2, 14
                  c.sub        a0, a2
                  mulhu        a6, sp, a5
                  sra          s4, a1, s11
                  c.slli       s5, 3
                  slti         a1, t0, 396
                  slt          t1, tp, ra
                  divu         t5, gp, s2
                  c.srli       a3, 11
                  or           a4, ra, t1
                  sub          a0, s4, s1
                  c.srli       a1, 4
                  auipc        tp, 1021652
                  remu         s0, t4, a2
                  xor          t0, tp, a2
                  slti         t2, a7, -649
                  slli         s6, s9, 1
                  c.addi       a4, -1
                  add          s7, s11, t5
                  slli         s9, s1, 23
                  c.add        s5, a5
                  slt          a4, s0, s8
                  ori          s1, a3, 915
                  slli         gp, a1, 25
                  mulh         t5, a4, s1
                  add          s0, zero, a2
                  c.addi       t5, -1
                  rem          a1, s10, t5
                  lui          s9, 476050
                  or           s2, t4, s5
                  rem          s9, a2, a7
                  slt          s10, s9, s4
                  c.andi       a1, -1
                  ori          gp, t0, -953
                  sll          ra, tp, s9
                  andi         t1, s9, -1770
                  or           s1, s11, zero
                  c.andi       a2, -1
                  addi         a4, s10, 641
                  add          s4, s9, a2
                  ori          s1, tp, -416
                  c.mv         s7, s6
                  srai         ra, s8, 18
                  srai         s4, s10, 20
                  c.li         t0, -1
                  divu         t4, a5, t5
                  xor          a6, s8, t5
                  c.add        gp, t5
                  xori         s2, a5, 993
                  mul          a3, a7, s8
                  slti         a7, s3, -1433
                  add          a5, t2, s9
                  srl          s9, tp, t4
                  c.sub        s0, s0
                  sra          gp, t2, t3
                  slli         s9, s11, 26
                  and          a6, s11, a6
                  and          a0, a5, s5
                  slti         t1, a5, 1371
                  c.nop
                  andi         s11, s7, 507
                  c.xor        a0, s1
                  c.xor        a5, s0
                  mul          t1, a6, tp
                  c.li         a3, -1
                  and          ra, a2, a3
                  slti         a7, t5, -1281
                  sltiu        s10, ra, -1704
                  c.lui        t0, 14
                  c.slli       t2, 19
                  sub          t4, t6, s1
                  sltu         gp, s2, s4
                  andi         s2, s3, -1701
                  c.nop
                  c.mv         tp, t0
                  c.or         a4, a4
                  mulhu        a5, t5, s2
                  srl          tp, a2, a2
                  slti         a3, gp, -1302
                  c.lui        a0, 18
                  auipc        a7, 795088
                  srli         t4, tp, 1
                  c.mv         s11, t4
                  c.srai       a1, 16
                  c.or         a5, s0
                  c.mv         a5, s6
                  lui          t4, 967169
                  rem          s0, a1, tp
                  xor          zero, a2, a0
                  div          s0, a5, s0
                  xor          a3, t6, t4
                  slli         s4, a5, 17
                  srai         t0, a6, 10
                  c.and        a2, a2
                  and          s11, t3, zero
                  c.nop
                  or           s7, zero, s9
                  c.srli       a0, 19
                  c.nop
                  c.srli       s0, 20
                  sltiu        tp, t0, -1950
                  mulh         a6, s2, a3
                  sub          zero, a4, t4
                  xor          s5, a7, a0
                  c.andi       a4, 18
                  c.srli       a5, 30
                  mulhsu       gp, t0, a7
                  divu         t1, s7, t0
                  srli         a5, a4, 20
                  c.srli       s0, 18
                  c.srai       s1, 19
                  mul          t1, s9, s0
                  xori         t1, s0, -1378
                  c.addi       a7, -1
                  c.nop
                  c.add        a4, t4
                  mulhsu       a4, s7, s6
                  xor          tp, s6, zero
                  auipc        a5, 627701
                  add          s1, t0, ra
                  ori          t5, a4, -1295
                  srai         t2, a6, 28
                  c.add        t1, a0
                  divu         s5, s8, t6
                  sltu         t5, zero, t2
                  nop
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           t2, 0xffffffff
                  li           s5, 0x80000000
                  li           a6, 0xe63d3b05
                  li           s2, 0xdf66e737
                  li           s10, 0x31dc443f
                  li           a7, 0xffffffff
                  li           s9, 0xffffffff
                  li           a3, 0xffffffff
                  li           t1, 0xffffffff
                  div          a6, s5, a3
                  mulhu        s5, a3, a3
                  div          s5, a3, t2
                  div          s5, s2, s5
                  rem          s10, a7, s10
                  add          s9, s9, a0
                  mul          s9, s10, a7
                  lui          a7, 135242
                  mul          a0, s9, s9
                  rem          s5, s10, s2
                  divu         a7, s5, s5
                  rem          s9, s9, a3
                  mulhsu       a3, a3, a3
                  sub          a3, t1, a6
                  divu         t2, a0, s5
                  remu         t2, s9, a6
                  mulhu        s9, t1, a6
                  mul          s5, s5, s10
                  div          s5, a7, t1
                  sub          a6, a0, a6
                  lui          t1, 370141
                  div          s2, s5, a0
                  remu         a0, t1, s5
                  mulhu        t1, s9, t1
                  lui          a3, 155713
                  remu         t2, s2, a6
                  remu         a0, t1, s9
                  mul          s2, s5, a6
                  div          s5, t1, s10
                  lui          s10, 623581 #end riscv_int_numeric_corner_stream_25
                  sll          a5, s0, s5
                  slti         ra, a0, -887
                  c.lui        a2, 8
                  mul          s5, s2, a2
                  andi         gp, zero, 1678
                  srai         a5, a2, 30
                  auipc        t3, 270971
                  add          t5, a2, s0
                  or           s5, a2, a2
                  c.and        a5, a1
                  andi         t2, t0, -1528
                  or           t0, tp, ra
                  slli         s2, s8, 31
                  srai         gp, t6, 30
                  or           a4, t6, a4
                  xor          s2, s11, a1
                  nop
                  c.addi       a3, -1
                  lui          t4, 110267
                  c.or         a3, a1
                  sra          s11, s1, ra
                  lui          s2, 722270
                  slti         ra, s11, 887
                  sltu         t5, t5, a4
                  c.add        a2, ra
                  or           s6, s7, a6
                  slt          s4, s10, t6
                  c.srli       a3, 31
                  c.srai       a2, 18
                  c.li         a2, 27
                  c.and        s0, a4
                  remu         t2, a4, t5
                  c.xor        a0, s0
                  mulh         a4, s3, s5
                  c.slli       s4, 4
                  mulhsu       a2, a7, sp
                  sub          ra, a0, s10
                  divu         a5, s9, s7
                  c.addi       t6, -1
                  sltiu        t2, a7, -669
                  c.nop
                  ori          tp, t0, 186
                  c.addi       s11, 26
                  auipc        ra, 595725
                  srli         s9, t1, 7
                  divu         s11, sp, tp
                  c.xor        a4, a0
                  c.srai       a2, 20
                  srli         s6, ra, 21
                  andi         t1, a5, 921
                  addi         a0, s5, -2043
                  add          a2, a6, t4
                  srli         s10, t5, 11
                  c.add        s7, s7
                  add          a1, s2, s8
                  xor          a7, a0, s3
                  srli         s9, t2, 19
                  or           s2, s3, t5
                  sltiu        ra, gp, -959
                  rem          s4, t6, t2
                  and          s1, s5, gp
                  srl          a1, t1, s9
                  remu         a4, s5, s1
                  auipc        zero, 997963
                  div          a3, t4, a7
                  rem          a1, sp, t0
                  c.srli       a5, 8
                  c.lui        a0, 23
                  mulhu        s9, a1, s8
                  slt          t5, s9, a1
                  mul          a0, t2, t0
                  srai         t5, t3, 6
                  c.addi       t0, 1
                  divu         a6, t0, a3
                  xor          s9, s0, t4
                  slli         s9, s11, 25
                  sltiu        s1, s4, -570
                  andi         t2, a2, -2005
                  rem          a1, a6, t3
                  sra          s4, s10, a7
                  sltu         t6, tp, s6
                  xor          gp, s9, s6
                  c.sub        s1, s0
                  sra          s7, s9, t0
                  c.lui        s0, 2
                  remu         s9, s1, t3
                  mul          tp, a6, gp
                  c.sub        a0, a0
                  mulhsu       s4, s0, a4
                  c.xor        a4, a3
                  sub          a6, s4, a2
                  c.or         s0, a0
                  c.sub        a4, a3
                  remu         a0, a1, a3
                  srl          a7, t6, t5
                  xori         ra, s6, 1585
                  xor          a2, a7, a0
                  c.and        s0, a0
                  c.slli       t3, 16
                  c.and        a2, a3
                  andi         s9, a2, 1222
                  c.nop
                  xori         a4, t6, -1724
                  xor          a6, t3, s10
                  div          s6, gp, s2
                  xori         t2, s5, 67
                  c.andi       a5, 20
                  andi         ra, s4, 837
                  xori         gp, s2, 974
                  c.li         s6, -1
                  srli         t2, t2, 28
                  c.srli       a3, 11
                  ori          s0, a2, 1422
                  c.nop
                  c.slli       a4, 10
                  mulhsu       zero, a2, s6
                  and          a3, t6, s8
                  sub          a1, s1, a3
                  addi         tp, a1, -816
                  c.addi       ra, 11
                  c.add        s0, a7
                  c.mv         s9, a2
                  div          tp, s9, s9
                  mulhu        zero, t3, sp
                  c.xor        a1, a4
                  srai         s9, sp, 23
                  addi         s10, s5, 1511
                  c.addi       s0, 25
                  c.slli       t6, 11
                  slli         s6, t1, 11
                  andi         s2, t2, 1670
                  xori         s5, a7, -922
                  c.and        s0, a0
                  remu         ra, a3, s9
                  mulhsu       t4, t2, s2
                  srl          zero, a0, t4
                  c.srli       a0, 10
                  srl          a7, ra, s9
                  c.slli       a1, 30
                  mul          a5, t2, a3
                  srai         t0, s7, 14
                  sltiu        s2, s2, -1947
                  c.or         a2, a5
                  srl          t0, t1, t3
                  xori         a4, a1, -1719
                  c.xor        s1, a1
                  c.xor        a5, a3
                  c.add        a6, a2
                  c.or         a3, a5
                  c.nop
                  addi         t3, a0, -246
                  auipc        s11, 20029
                  ori          t2, s3, -1302
                  and          ra, s5, s2
                  sub          a2, s10, a6
                  add          s2, a7, t1
                  div          s5, tp, a1
                  slli         a6, sp, 3
                  xori         gp, t1, 154
                  c.xor        a0, a3
                  sll          s2, a7, a6
                  sub          a5, t1, tp
                  or           t3, a4, s5
                  sltu         s0, ra, s8
                  slli         s11, a0, 4
                  c.slli       s5, 23
                  srai         s11, sp, 19
                  srai         t6, a6, 29
                  slli         a7, s3, 19
                  c.srai       a3, 4
                  sltiu        s7, s0, -798
                  sub          s11, t2, sp
                  sltiu        s2, zero, -167
                  mul          s1, a4, a5
                  c.mv         t5, t1
                  c.srai       s1, 13
                  mul          s4, t3, a2
                  rem          a0, a4, t5
                  slli         s6, t5, 7
                  xor          zero, a1, s6
                  ori          s9, t6, -724
                  srli         a0, s9, 15
                  divu         t2, gp, a1
                  mulh         s2, s5, s1
                  c.add        t1, s4
                  c.and        s0, a1
                  c.andi       a0, -1
                  sltu         s4, s11, s8
                  c.and        a2, a2
                  c.slli       a7, 22
                  slli         s2, a7, 18
                  c.srli       a3, 20
                  c.xor        a1, s1
                  srai         a0, a5, 5
                  c.slli       gp, 18
                  sltiu        a0, t5, 641
                  xori         t1, zero, 527
                  c.sub        a1, a1
                  c.and        a2, a3
                  or           a4, s2, a0
                  ori          a2, a7, -1462
                  slli         ra, t3, 30
                  c.lui        s2, 17
                  c.addi       a3, 7
                  slt          t4, t2, a5
                  c.srli       a2, 5
                  mulh         s10, s10, a1
                  srli         s4, t2, 13
                  sltiu        a7, s6, -419
                  mulh         a3, s6, a1
                  remu         t1, t6, a7
                  divu         tp, s11, s8
                  c.sub        a0, s1
                  slli         s10, t0, 18
                  c.li         a0, 25
                  c.addi       a2, -1
                  c.xor        a2, a4
                  and          s0, sp, t4
                  srl          s1, t1, a2
                  c.addi       s4, -1
                  and          a3, s10, t3
                  sltu         s11, s1, s1
                  c.xor        a0, a0
                  xor          s1, t1, a6
                  divu         t0, ra, t2
                  sltiu        t4, tp, 948
                  sra          s7, sp, s6
                  c.nop
                  or           t5, t1, s7
                  c.mv         t3, ra
                  c.li         tp, 20
                  mul          t3, ra, t4
                  sltu         a7, gp, sp
                  srai         t3, zero, 9
                  divu         s10, s6, s1
                  sub          t2, t4, s5
                  c.lui        s10, 30
                  mulh         t5, s8, s0
                  mulhsu       s2, sp, sp
                  srl          s6, s6, sp
                  sra          gp, t2, s2
                  add          t5, t4, a4
                  c.addi       t0, -1
                  lui          t5, 85716
                  srli         t3, a1, 2
                  c.li         s4, -1
                  c.li         s5, -1
                  addi         t3, s8, 1446
                  or           s6, a3, s4
                  andi         s9, sp, 1800
                  and          s10, s4, t1
                  c.li         a3, -1
                  lui          s4, 509773
                  sra          a5, t5, a3
                  c.srai       a1, 12
                  mulh         s5, sp, s8
                  auipc        a7, 292271
                  slt          s5, s8, s4
                  mulhsu       a0, a2, s8
                  mul          t4, s2, s7
                  sltiu        s11, t4, -1742
                  mul          s5, t4, gp
                  xor          s6, s8, a1
                  div          t2, t2, gp
                  slti         t5, s8, -865
                  andi         s7, a2, -603
                  mulhu        a2, a2, t6
                  and          tp, s9, a7
                  c.and        a4, a5
                  c.li         s1, 20
                  and          a7, t2, s1
                  lui          t1, 162764
                  slt          a2, s4, zero
                  nop
                  sll          t6, s4, t0
                  andi         gp, s9, -1130
                  srai         a7, t2, 22
                  add          a0, ra, a5
                  mulh         t3, t2, tp
                  c.nop
                  c.sub        a4, s1
                  srli         t4, t4, 19
                  rem          t1, s5, a5
                  c.andi       s0, 30
                  c.xor        a1, a1
                  mulhu        t6, tp, t4
                  c.mv         s0, s4
                  lui          a0, 72738
                  sra          s5, a5, a6
                  sub          a0, t0, sp
                  c.li         s1, -1
                  c.xor        a5, a2
                  sltu         a5, t1, a7
                  auipc        t6, 422776
                  c.xor        a0, a4
                  andi         a7, t4, -692
                  srai         t6, s10, 16
                  slti         s4, a2, -9
                  ori          s11, s1, -292
                  lui          t1, 315479
                  xori         a7, s4, -1076
                  slt          s6, s4, s2
                  rem          t4, s2, s11
                  slt          t5, a4, s1
                  add          s10, a7, tp
                  srai         zero, t1, 18
                  sll          s11, s6, a7
                  andi         s5, ra, -1852
                  andi         tp, tp, 682
                  sltu         a5, s9, t0
                  add          s7, ra, a0
                  c.sub        s1, s1
                  srl          s2, a3, s5
                  c.and        a2, a5
                  c.mv         tp, s1
                  div          s4, t3, gp
                  sll          a3, a4, s1
                  div          gp, a4, ra
                  mulhu        gp, s11, t5
                  sltu         s0, t5, t6
                  c.add        a2, t0
                  addi         zero, s8, -1496
                  ori          a1, s10, 561
                  xor          t3, ra, sp
                  c.mv         s5, a2
                  c.andi       a3, 8
                  sltu         a6, s11, s7
                  mulh         t0, a6, t3
                  slt          a7, a2, s0
                  c.andi       s0, 3
                  c.lui        a1, 16
                  c.srli       a0, 14
                  c.sub        a2, a4
                  c.or         a3, a4
                  xor          a6, t0, t3
                  remu         a4, t6, t3
                  sub          a7, s10, a0
                  c.srli       a0, 25
                  c.nop
                  c.addi       a6, 25
                  srl          a4, a7, gp
                  c.li         s5, 10
                  c.lui        t1, 26
                  xori         t5, t2, 431
                  c.nop
                  slti         zero, gp, -79
                  slli         a0, s2, 18
                  sub          s0, tp, zero
                  rem          a0, s3, s3
                  mul          tp, t5, s7
                  c.add        t0, t3
                  c.addi       a2, -1
                  divu         a0, a3, s5
                  c.xor        a5, a4
                  mul          s0, a2, a5
                  mul          a3, gp, s4
                  c.srli       a3, 24
                  mul          zero, s9, gp
                  div          a2, s10, t5
                  and          a7, a3, s8
                  sub          s5, t0, t6
                  c.or         a3, a4
                  sra          gp, t2, zero
                  rem          s10, s2, t5
                  slli         t3, s9, 16
                  mulh         t4, tp, s7
                  c.xor        a4, s0
                  sub          s4, t0, zero
                  srl          a2, a0, s8
                  c.and        a1, a5
                  c.slli       s4, 24
                  sll          t5, s1, s7
                  andi         t3, t5, 746
                  slli         a2, t2, 12
                  nop
                  c.lui        a5, 12
                  add          s0, tp, t4
                  div          t2, s5, s4
                  ori          s0, t6, -1168
                  c.nop
                  rem          t5, t1, a6
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_39
                  li           a1, 0x0
                  li           a4, 0xada50f53
                  li           s7, 0x80000000
                  li           t3, 0x80000000
                  li           gp, 0x0
                  li           a3, 0x413c17af
                  li           t0, 0x80000000
                  li           s2, 0x80000000
                  li           t5, 0x0
                  sub          s6, t3, t0
                  remu         a4, t3, s2
                  mulhu        gp, t0, gp
                  rem          gp, s2, t5
                  remu         t0, s6, a4
                  nop
                  auipc        s7, 197087
                  mulhsu       t5, t5, s6
                  lui          s7, 976650
                  nop
                  div          gp, t3, a3
                  div          t3, t3, a3
                  mul          a1, a1, s7
                  lui          t5, 948875
                  remu         t3, t3, s2
                  add          t3, t0, s7
                  mulhsu       a1, a3, gp
                  auipc        s2, 193290 #end riscv_int_numeric_corner_stream_39
                  lui          ra, 543815
                  andi         a4, s8, -1609
                  or           s7, a4, s11
                  srai         s2, s10, 1
                  divu         a3, a0, s9
                  mulh         a4, a6, a6
                  c.srai       s1, 12
                  c.sub        a1, a5
                  c.slli       s4, 23
                  xor          a1, a0, s3
                  mulh         a2, sp, s10
                  srli         t0, a6, 2
                  nop
                  or           a6, ra, s10
                  c.add        a1, s9
                  remu         t4, s11, t1
                  c.add        a2, gp
                  c.xor        a3, a2
                  c.mv         a3, s10
                  c.mv         t0, a6
                  c.add        s10, a4
                  or           s4, sp, s0
                  mulhsu       s4, a2, t6
                  div          gp, t4, s2
                  c.slli       gp, 9
                  c.lui        s2, 15
                  slt          a0, t1, zero
                  mulhsu       s6, s2, a3
                  mulhsu       s0, t2, t3
                  c.sub        s1, s1
                  c.xor        a4, a3
                  lui          a2, 549972
                  divu         s9, t6, s10
                  c.nop
                  c.srli       a0, 5
                  c.sub        a0, s1
                  xori         tp, ra, -33
                  sltiu        a4, s7, 2
                  divu         a0, a0, tp
                  ori          s1, sp, -1791
                  mul          t0, s2, t1
                  c.mv         t3, s11
                  sub          s11, s2, tp
                  xor          s2, zero, tp
                  ori          s9, a7, 618
                  or           s10, s3, s4
                  sltiu        zero, a1, 426
                  sll          gp, t2, s3
                  c.add        s9, s4
                  slti         tp, tp, -1235
                  c.add        tp, sp
                  mulh         t1, s2, s2
                  c.andi       a0, 23
                  and          s10, s10, a1
                  c.nop
                  slli         tp, a2, 6
                  c.sub        s1, s0
                  rem          a3, t6, gp
                  mulhsu       s1, t1, s11
                  c.li         ra, 21
                  slli         s1, s2, 13
                  slt          t4, t4, s2
                  mulhsu       s5, a7, a2
                  c.andi       s0, -1
                  rem          a1, zero, s1
                  div          s4, ra, s9
                  c.srli       a1, 10
                  c.nop
                  mul          t5, a3, ra
                  c.mv         t3, s0
                  c.xor        a0, a5
                  and          a7, zero, a3
                  c.slli       a5, 5
                  remu         a5, t5, a0
                  c.slli       gp, 20
                  srl          tp, tp, s2
                  c.andi       a3, -1
                  mul          tp, t0, s1
                  c.sub        a3, a3
                  c.addi       s2, -1
                  lui          s11, 664239
                  mulhu        s6, s4, zero
                  auipc        a7, 496687
                  c.add        gp, a7
                  sll          s7, a3, t4
                  c.and        s0, a4
                  addi         s2, s6, -1366
                  c.slli       s5, 31
                  auipc        a5, 984975
                  mulh         s9, s1, t0
                  srl          t3, t2, s0
                  mulhsu       s0, sp, sp
                  xori         ra, gp, -22
                  sll          a6, t6, s3
                  c.addi       t6, -1
                  add          s11, a1, s10
                  srai         s5, s0, 1
                  addi         s9, s3, 809
                  srl          s10, t2, a4
                  srl          s1, t0, s6
                  remu         s11, a0, ra
                  mulh         a2, s1, t1
                  srli         gp, t1, 7
                  c.slli       s0, 2
                  srai         a0, gp, 12
                  c.sub        a3, s0
                  lui          t0, 582277
                  srli         s6, t3, 5
                  c.xor        a3, a4
                  andi         t5, s9, 165
                  nop
                  sra          zero, a7, sp
                  lui          t4, 364688
                  xori         ra, sp, 687
                  add          s7, t4, t1
                  xori         s4, a4, 86
                  srli         s7, a1, 25
                  c.li         s5, -1
                  c.addi       s7, -1
                  sub          t6, s2, s8
                  c.or         s1, a2
                  rem          s5, a5, s8
                  slt          a0, t4, t1
                  divu         t0, t6, a1
                  addi         t1, s8, 748
                  c.srai       a3, 15
                  sub          a6, s5, sp
                  c.and        s1, a1
                  c.srli       a1, 23
                  srli         t2, t2, 30
                  divu         a5, a0, s7
                  c.andi       a5, -1
                  c.add        a4, a6
                  sltiu        ra, s0, -2028
                  div          t5, t2, s1
                  andi         s10, a2, -423
                  ori          t3, s0, 1270
                  div          a0, s4, zero
                  sra          a3, s4, a1
                  mul          a2, s6, s2
                  div          a0, s10, t4
                  sltiu        a0, s11, 874
                  c.srai       a5, 24
                  add          t0, a4, s9
                  sll          s10, tp, s0
                  or           a7, t5, t4
                  c.andi       a3, -1
                  lui          a1, 849995
                  div          s6, s1, a7
                  slt          ra, tp, t4
                  and          t2, a2, gp
                  auipc        s9, 210594
                  sll          a3, a2, a1
                  remu         s5, a7, s2
                  mul          s7, a2, a3
                  sub          a6, s8, s7
                  lui          s2, 790234
                  rem          s2, t6, s11
                  mulh         t0, ra, a3
                  sltu         gp, s8, a4
                  c.add        a4, a3
                  srl          s0, t2, s0
                  c.addi       t1, 28
                  srai         zero, tp, 5
                  or           a1, s6, s0
                  mulhu        s2, s5, s7
                  mulh         gp, s0, t4
                  sra          a7, a5, tp
                  or           a4, s11, s3
                  andi         s11, s1, 223
                  slli         gp, sp, 1
                  srli         gp, t2, 15
                  remu         a7, a0, a5
                  c.andi       a3, -1
                  add          s5, t1, a7
                  ori          s9, sp, 403
                  sltiu        a7, a0, -1676
                  c.li         s6, 12
                  and          s5, t2, s3
                  mulhsu       a4, s11, t0
                  xori         s0, a3, -1684
                  mulh         t0, a4, a3
                  lui          t2, 452681
                  andi         tp, s2, -119
                  slli         a7, t3, 8
                  rem          a2, a6, s4
                  c.and        a5, a2
                  c.li         t1, 6
                  ori          s0, s7, 1009
                  add          zero, s6, s2
                  slli         zero, sp, 10
                  mulh         a0, s11, t2
                  c.xor        s0, a5
                  c.nop
                  divu         t1, t2, t4
                  slti         t1, gp, 1235
                  srli         t4, tp, 4
                  andi         a2, t5, -465
                  xor          t1, a1, a7
                  auipc        s2, 411656
                  mulhsu       s10, t2, t4
                  add          tp, t6, t6
                  sltiu        t3, a1, 836
                  srl          t4, s0, s0
                  sltiu        t1, zero, -487
                  c.lui        a2, 29
                  c.addi       ra, 5
                  auipc        a4, 495517
                  c.mv         t4, tp
                  mulhsu       s5, a7, s11
                  c.and        a3, s1
                  mulhu        s1, t4, t5
                  addi         a5, zero, 1308
                  rem          ra, t3, s3
                  rem          a1, t5, s7
                  c.mv         t3, s2
                  c.and        a5, a0
                  c.andi       a4, 10
                  xori         t2, a6, -2009
                  sub          t0, a7, s3
                  srli         s10, ra, 27
                  ori          a6, s0, 516
                  ori          a1, tp, 913
                  c.srli       s1, 16
                  c.andi       a2, -1
                  sll          s9, a0, s11
                  andi         t4, s3, 2019
                  sll          gp, a5, a5
                  and          s9, s1, t6
                  c.mv         tp, a2
                  ori          s11, t3, 1254
                  c.addi       s7, -1
                  auipc        a3, 598366
                  slli         s0, t6, 2
                  xor          s9, s1, a5
                  c.andi       a2, -1
                  slt          s0, a6, s5
                  auipc        gp, 645352
                  xor          s7, a6, t4
                  auipc        s4, 187973
                  c.mv         s9, s0
                  c.mv         s4, t2
                  andi         a6, ra, 270
                  addi         a3, t6, -931
                  c.xor        a3, s0
                  add          s6, s2, a6
                  c.li         s1, -1
                  sltiu        a6, t0, 410
                  c.li         a4, 4
                  c.li         a5, 2
                  c.or         a0, a5
                  c.or         a3, a2
                  sltu         gp, s4, sp
                  mulh         tp, s8, s7
                  srai         s5, s7, 22
                  sra          t2, a2, t2
                  slti         ra, a6, -743
                  xor          a3, gp, a4
                  slti         s1, t1, 1239
                  c.add        s10, sp
                  lui          s5, 176092
                  c.addi       s4, -1
                  mul          a0, t0, s3
                  sltiu        a5, t1, -605
                  c.srli       s1, 16
                  sra          gp, a5, a1
                  sra          s11, sp, t5
                  andi         tp, t0, -193
                  rem          t5, a1, t5
                  mul          s5, zero, a4
                  sll          t0, gp, gp
                  mulh         s11, s8, s2
                  slti         a4, t3, 2030
                  divu         a7, a5, t4
                  slt          s11, a6, s11
                  sltiu        a7, a3, -977
                  c.andi       a5, 29
                  andi         s5, s1, -1305
                  add          s6, a0, a6
                  c.srli       a2, 26
                  divu         t4, s7, a5
                  slt          t6, s5, s10
                  mulhu        s11, sp, a4
                  andi         a3, tp, -1916
                  ori          ra, t3, 1785
                  c.li         s7, -1
                  mulhsu       s6, a5, t3
                  c.li         a0, -1
                  c.addi       s5, -1
                  sltu         t1, gp, a6
                  remu         s1, s7, ra
                  sltiu        a6, a2, 1390
                  remu         s7, a4, s9
                  xor          t6, t1, a2
                  c.addi       s11, -1
                  c.nop
                  c.sub        s1, a2
                  slt          s9, t5, t6
                  mulh         s10, t2, ra
                  auipc        a3, 75462
                  remu         s10, t1, t3
                  add          t5, a6, s8
                  mulh         a2, a7, a6
                  slti         s7, ra, 1647
                  or           s10, a4, t1
                  c.andi       a0, 1
                  divu         t0, t6, ra
                  ori          tp, s7, 1420
                  c.add        s10, t4
                  divu         ra, ra, a3
                  auipc        s7, 325612
                  c.srai       a0, 5
                  addi         s7, sp, 654
                  div          ra, t4, t2
                  mulhu        s10, s5, s8
                  c.srai       a3, 22
                  c.xor        a5, a2
                  auipc        s5, 902971
                  mul          a2, t2, a6
                  mul          s1, tp, s5
                  c.nop
                  sll          s7, a0, zero
                  ori          s0, a1, -313
                  c.lui        gp, 10
                  sra          t3, a6, s3
                  c.srli       a4, 26
                  c.or         s1, a4
                  srli         a5, a3, 10
                  c.add        s2, s9
                  rem          s6, s2, a7
                  sltiu        t5, a7, 1763
                  divu         t5, s7, t0
                  c.sub        a1, a4
                  and          zero, t3, a5
                  c.addi       gp, 14
                  rem          a0, s10, a1
                  c.srli       s0, 10
                  c.mv         s4, ra
                  nop
                  xori         s2, s2, -1925
                  c.srli       a3, 12
                  c.sub        a0, a3
                  sltiu        a3, a4, -1101
                  ori          t1, s1, -1717
                  sll          a1, s9, s7
                  mulhu        zero, a0, s3
                  mulh         s9, t1, t2
                  c.xor        s0, a4
                  srli         a3, s10, 17
                  auipc        s11, 413079
                  c.lui        tp, 14
                  divu         gp, t6, t5
                  or           a1, t3, t4
                  sub          s9, ra, s0
                  c.li         gp, -1
                  xor          gp, s9, t4
                  c.add        a0, a1
                  c.andi       a3, 2
                  sltu         t1, a2, t2
                  sub          t4, t5, a0
                  c.nop
                  c.xor        a0, a1
                  sltu         a4, gp, a0
                  slti         s4, ra, -804
                  mul          s0, sp, a2
                  c.or         a4, s1
                  sra          s11, t2, gp
                  auipc        s11, 122065
                  xor          s2, t4, a1
                  srl          zero, t6, zero
                  mulhu        a0, a3, t6
                  mulhsu       s0, a6, a1
                  slli         t5, t4, 6
                  sra          s4, s5, t4
                  sll          t5, a0, s6
                  srli         a0, a7, 18
                  c.lui        s4, 12
                  c.andi       a1, -1
                  or           s11, t2, a5
                  c.srli       a4, 25
                  mulh         t6, t5, s3
                  c.add        s7, s4
                  slti         s1, a2, 865
                  c.xor        a2, a4
                  mulhsu       t4, t5, s9
                  mulhsu       s9, gp, s1
                  c.slli       s2, 20
                  c.nop
                  c.xor        s1, s1
                  div          tp, ra, a7
                  remu         t2, t1, a3
                  c.mv         a0, a7
                  srl          tp, t3, s9
                  srl          s5, a6, t5
                  sll          s7, a0, a5
                  slli         gp, sp, 6
                  xor          s11, zero, s2
                  c.srai       s1, 19
                  c.andi       a1, 15
                  auipc        t1, 58546
                  addi         a4, s7, -803
                  slli         a6, s8, 18
                  slt          s0, zero, s4
                  c.srai       a0, 28
                  c.xor        s0, a1
                  rem          t3, tp, a5
                  sltu         t5, s7, s10
                  srai         a6, a3, 0
                  or           gp, t2, a2
                  mulhu        a0, t4, s8
                  slti         gp, s0, 931
                  c.srli       a1, 9
                  and          ra, ra, s4
                  sltiu        t0, s11, -303
                  c.nop
                  slt          t0, s6, a1
                  remu         t1, tp, s7
                  c.sub        s0, a2
                  srl          s10, tp, s3
                  mulhu        t4, t3, a0
                  slti         s7, a7, -595
                  c.srai       a5, 7
                  srli         s4, t4, 24
                  sltu         a7, zero, s7
                  or           t4, sp, a2
                  sll          tp, ra, a7
                  lui          t6, 250217
                  c.lui        s2, 17
                  mulh         a6, s4, t1
                  add          s10, zero, s10
                  auipc        s6, 651403
                  c.slli       a0, 28
                  slti         s7, a2, -2015
                  andi         a2, gp, -488
                  xor          t1, s5, s1
                  c.srli       a3, 11
                  slt          a5, s1, a4
                  or           s2, a6, t4
                  c.or         a3, a1
                  c.srai       a2, 20
                  lui          s7, 737259
                  mul          s10, a5, t3
                  add          a4, ra, s6
                  srl          a6, s10, a5
                  lui          gp, 339741
                  srli         t4, s2, 13
                  divu         ra, s5, s10
                  c.andi       a4, -1
                  mulhsu       a3, s9, a2
                  c.andi       a0, 15
                  c.add        s6, s8
                  sltu         s10, s6, s5
                  c.add        a5, s7
                  slt          a7, ra, s7
                  mulhu        s4, sp, a1
                  addi         a1, a1, 1269
                  srli         a1, gp, 3
                  and          t3, ra, s8
                  mulh         s0, s9, s2
                  c.add        s2, t3
                  srli         ra, s8, 10
                  sra          s9, s8, a3
                  rem          zero, s0, s8
                  or           t1, s7, gp
                  c.srai       a2, 2
                  c.lui        s4, 27
                  div          t1, s5, gp
                  c.slli       a5, 31
                  sra          zero, sp, s2
                  div          a6, a1, tp
                  c.srai       a4, 9
                  mulh         t4, s2, s7
                  slli         t3, s10, 0
                  c.andi       a1, 5
                  c.andi       a2, 22
                  div          s10, s2, gp
                  remu         s1, s7, a5
                  slt          a0, s8, t3
                  c.lui        gp, 5
                  c.srai       s1, 19
                  ori          t4, a5, -494
                  lui          a4, 807457
                  or           a1, t6, gp
                  andi         ra, s6, -1599
                  c.andi       a3, -1
                  or           s0, t1, s11
                  slt          a7, a1, s9
                  div          t4, s3, s2
                  sra          gp, s11, sp
                  sltiu        t1, a7, -1127
                  rem          s9, t0, a2
                  c.addi       s2, 25
                  srl          s7, ra, s2
                  srl          s2, a6, t1
                  c.andi       a3, 20
                  slt          s11, a4, s10
                  add          t6, a2, t3
                  c.or         s0, s1
                  xor          s7, s8, t5
                  addi         s11, s4, -1836
                  add          ra, s2, gp
                  add          s7, t3, a7
                  c.or         s1, a5
                  sra          a5, a2, s10
                  srl          s4, t4, s6
                  c.nop
                  add          a4, s5, t5
                  and          a1, a4, a5
                  mulhsu       gp, s8, sp
                  slt          a5, a1, a6
                  mulhsu       t5, s11, s6
                  div          s10, t0, t5
                  c.xor        a3, a5
                  xori         a0, s8, -454
                  slti         ra, a7, -905
                  div          s7, zero, s4
                  mul          a7, t6, a3
                  c.addi       a5, 2
                  mulhu        s9, a7, t0
                  add          s0, s5, a5
                  c.or         a2, a1
                  sltu         tp, a3, s0
                  srli         s6, t6, 2
                  lui          t6, 536891
                  andi         gp, s7, 1865
                  c.srai       a1, 29
                  srai         s1, zero, 24
                  xor          s2, t0, s4
                  c.slli       a1, 11
                  c.slli       s0, 7
                  c.slli       t5, 11
                  ori          a7, t5, -1387
                  slt          s2, s8, a3
                  c.lui        a6, 17
                  c.slli       s0, 17
                  divu         a2, t2, zero
                  auipc        gp, 814640
                  c.xor        a2, s1
                  c.nop
                  addi         s10, a3, -657
                  slt          s7, sp, s2
                  c.and        a2, a2
                  addi         gp, a2, 805
                  addi         t5, s0, -824
                  c.srli       s0, 25
                  c.xor        a4, a1
                  srl          a1, a3, s8
                  sll          t2, a5, t6
                  c.sub        a1, a1
                  sra          s0, s6, t2
                  c.nop
                  xor          s11, s10, a6
                  c.srli       s0, 18
                  mulh         s10, s7, a2
                  sltiu        s7, a3, 386
                  c.lui        tp, 24
                  divu         s9, a5, gp
                  srai         a7, s0, 31
                  sll          a3, zero, a0
                  xor          s1, s8, a6
                  mulhsu       gp, s6, s7
                  slti         a2, a1, 995
                  slt          t0, a4, s3
                  remu         s7, s9, s1
                  c.lui        s11, 10
                  divu         a5, zero, s4
                  lui          gp, 214848
                  c.nop
                  add          t0, a7, a4
                  and          s2, a7, t3
                  and          a7, zero, s0
                  sra          a6, s0, a4
                  c.srai       a1, 24
                  divu         tp, t2, s2
                  add          s10, t1, t5
                  c.and        a3, a1
                  div          a3, ra, a4
                  c.add        s5, a4
                  sra          gp, tp, a2
                  divu         a1, a7, s0
                  nop
                  c.or         a2, s0
                  slti         a6, a5, -455
                  auipc        t2, 689573
                  slt          s0, s7, t2
                  nop
                  div          a5, s5, t5
                  c.srli       a2, 13
                  sra          a6, ra, s11
                  mulhsu       t5, s3, zero
                  add          a0, t4, s2
                  and          s10, a6, s6
                  auipc        t2, 603894
                  rem          tp, t6, s3
                  or           a6, t1, s11
                  xori         a3, a1, -131
                  and          s1, zero, s1
                  c.lui        t5, 10
                  add          t2, a0, s9
                  c.andi       s0, 20
                  c.mv         t1, s11
                  c.xor        a5, a1
                  c.add        gp, a5
                  c.slli       t3, 13
                  xor          a7, s5, a5
                  add          s0, s0, a5
                  lui          t1, 100239
                  srl          s0, a4, zero
                  c.srli       s0, 31
                  andi         s1, a7, 142
                  auipc        t6, 829416
                  addi         s0, s1, 1207
                  c.andi       a3, 4
                  c.and        a4, s1
                  mulh         t4, s11, ra
                  auipc        zero, 915721
                  c.lui        s7, 27
                  c.li         a5, -1
                  srai         a6, s3, 0
                  c.nop
                  ori          t0, s8, 1891
                  mulh         s7, t6, t0
                  sll          s11, ra, s0
                  ori          zero, a7, 200
                  c.andi       s1, 15
                  rem          s2, t6, s6
                  slti         a2, s9, -805
                  lui          t1, 209861
                  c.lui        s9, 14
                  mulh         a7, t6, zero
                  mulhu        t6, s5, s4
                  lui          a2, 744461
                  xor          t2, t5, a7
                  srli         t4, t1, 5
                  xori         a4, s10, 1931
                  c.addi       s11, -1
                  c.mv         a2, t5
                  divu         s5, ra, t2
                  auipc        t3, 156220
                  mulhsu       t0, s9, s3
                  c.slli       t2, 4
                  sub          gp, gp, a2
                  mulhsu       t1, t0, a2
                  divu         a0, s0, t1
                  sub          t4, s0, a3
                  rem          s4, s11, t6
                  c.mv         s1, t6
                  addi         gp, s11, -77
                  rem          ra, s7, a1
                  c.xor        a0, a1
                  slti         t2, gp, -1843
                  c.li         ra, -1
                  c.and        a5, s1
                  sll          s7, t6, s8
                  srli         zero, a7, 13
                  c.srai       a1, 17
                  c.xor        a5, a4
                  sub          a5, s2, t5
                  div          gp, a0, s7
                  c.lui        s0, 9
                  xor          a2, sp, a1
                  srai         s4, t2, 27
                  srai         t0, s8, 4
                  xori         ra, s11, -1217
                  div          a1, a4, s6
                  srai         a4, t0, 0
                  div          s6, tp, zero
                  sub          t4, a1, tp
                  c.srai       a0, 1
                  mulhsu       t6, t3, t5
                  slli         s10, zero, 7
                  srli         s5, zero, 4
                  xor          s6, gp, s1
                  sltiu        a4, s5, -1543
                  srai         gp, s7, 3
                  slli         t2, t1, 28
                  c.srai       a4, 8
                  srl          s2, a3, sp
                  and          s2, s4, gp
                  li           a2, 0x43a9ce17 #start riscv_int_numeric_corner_stream_18
                  li           s5, 0x80000000
                  li           s11, 0x80000000
                  li           s0, 0x80000000
                  li           a6, 0x0
                  li           s10, 0x80000000
                  li           s6, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0x0
                  li           a5, 0x80000000
                  mulhu        s5, a6, s10
                  mulhu        a5, t1, a2
                  nop
                  auipc        s5, 315357
                  add          a5, a5, s0
                  add          a5, a2, s5
                  add          s9, a6, s0
                  div          s6, s6, s5
                  mulh         a5, a5, a6
                  auipc        a6, 778975
                  mul          s9, s0, s11
                  rem          t1, a2, s6
                  auipc        s9, 91644
                  divu         s10, s6, s9
                  mulhsu       a6, s11, t1
                  mulhu        s10, s10, s5
                  remu         s0, s9, t1
                  mul          a6, t1, s11 #end riscv_int_numeric_corner_stream_18
                  sub          zero, s1, s10
                  slt          ra, s3, s11
                  add          a3, a6, ra
                  addi         t0, s10, -1406
                  slti         t5, a0, 1644
                  sub          s7, s7, s6
                  c.sub        s0, a4
                  c.andi       a1, -1
                  addi         s9, a6, 1260
                  c.xor        a5, a1
                  c.and        a3, a0
                  sltiu        s6, s9, -1303
                  c.or         s0, a1
                  addi         a5, s9, 1650
                  addi         s4, t4, 1091
                  srli         s2, t0, 22
                  mulhsu       t5, a5, a0
                  xor          a3, t0, s5
                  slti         a3, t5, 1994
                  srai         t3, a6, 8
                  xor          t4, tp, t2
                  xor          zero, t0, s8
                  rem          a6, a5, t6
                  ori          s7, a0, 664
                  rem          s9, t0, a7
                  srai         a0, t5, 18
                  c.srli       a1, 5
                  c.srai       a2, 8
                  div          t5, s9, a2
                  c.nop
                  sltu         a0, tp, t0
                  c.or         a5, a5
                  add          s9, ra, tp
                  c.add        s2, a0
                  and          a2, gp, t5
                  c.sub        a2, a2
                  sub          a5, a1, s10
                  mul          t4, a0, a1
                  mulh         s0, s10, t1
                  slt          s11, s9, s1
                  c.srli       a1, 23
                  div          t1, a3, s7
                  c.or         a0, a4
                  c.lui        s2, 28
                  c.add        ra, s4
                  slti         s6, s2, -1304
                  srli         s2, gp, 4
                  c.li         s10, -1
                  nop
                  div          t0, s10, s9
                  addi         s0, a7, -1014
                  sltiu        a6, s7, -207
                  srli         t3, s2, 26
                  c.sub        a2, a3
                  c.xor        a0, s1
                  c.andi       a0, 8
                  srai         a0, a4, 21
                  c.nop
                  xori         a5, s3, -1384
                  c.nop
                  c.xor        a2, a5
                  div          a4, a2, a2
                  sltiu        s6, a2, 1749
                  mulhsu       s9, a1, a1
                  mulhsu       gp, t5, s9
                  c.and        a0, a0
                  and          gp, tp, s2
                  sltiu        s7, s11, 449
                  c.and        a4, a3
                  remu         s11, a0, a6
                  add          a0, s0, t5
                  c.mv         ra, s10
                  rem          ra, s5, s4
                  div          s0, a4, a2
                  c.andi       a3, -1
                  mul          t0, s11, t5
                  sra          s6, t1, s5
                  lui          a5, 473797
                  remu         s7, s7, s4
                  remu         s11, s9, s3
                  mulhsu       s9, s5, s9
                  xor          t5, s3, s6
                  xori         s6, t2, 2013
                  srli         a3, a7, 29
                  xori         s0, t0, 625
                  mulhu        s10, sp, s8
                  sltiu        s4, s5, 1424
                  c.and        a0, s1
                  c.xor        a2, a2
                  mulhsu       s2, s6, t6
                  div          a1, t6, s4
                  lui          a1, 891779
                  slti         a1, tp, 187
                  srl          a3, a6, a7
                  c.xor        a4, s1
                  srai         s10, ra, 31
                  remu         ra, gp, s11
                  or           a0, s1, s1
                  c.xor        a1, a5
                  auipc        a6, 1031919
                  mulhsu       s0, s1, zero
                  rem          s6, s4, a6
                  c.slli       s0, 24
                  xor          a3, s10, ra
                  slli         s7, a4, 2
                  mulhu        s9, t2, s6
                  sra          a7, a2, t1
                  and          a0, s11, gp
                  addi         s9, s2, 439
                  c.srai       a4, 11
                  slti         s11, a4, -1910
                  and          a1, s4, s10
                  remu         t5, t0, s10
                  divu         a5, s10, t2
                  srai         s10, a0, 7
                  c.xor        a1, a2
                  mulhu        a7, s8, sp
                  remu         t3, s11, t1
                  c.sub        a5, a3
                  c.srli       a5, 21
                  sub          t2, t3, t4
                  c.li         s5, -1
                  addi         gp, a6, 76
                  addi         tp, sp, -444
                  c.sub        a1, a4
                  auipc        t4, 444919
                  nop
                  c.add        t3, s8
                  c.sub        a2, a0
                  c.addi       t1, 11
                  c.and        a2, a2
                  srai         t3, ra, 15
                  c.or         a2, a3
                  sltiu        t4, s9, -1222
                  remu         a3, s5, t1
                  c.srai       a2, 31
                  c.xor        s0, a4
                  srai         s7, t4, 3
                  add          t3, t4, t5
                  slli         s0, s0, 2
                  c.sub        a4, s1
                  addi         s5, t0, -1538
                  ori          s7, tp, -978
                  c.srli       s1, 12
                  c.srai       a0, 10
                  mulhsu       a7, s5, s6
                  slli         a6, a0, 27
                  xor          s2, s3, t5
                  or           a7, t5, a3
                  c.addi       t2, 5
                  andi         ra, zero, 1130
                  sll          tp, tp, s3
                  srli         t0, s11, 14
                  mul          s5, a3, a1
                  mulh         a7, t1, tp
                  auipc        zero, 730772
                  c.srli       s0, 24
                  div          tp, a3, s6
                  mulh         tp, a4, a7
                  c.slli       ra, 5
                  c.lui        s10, 11
                  andi         a6, s6, 1215
                  c.sub        a1, s1
                  add          t1, s0, t5
                  c.and        a0, a4
                  c.add        t1, t1
                  div          t2, s11, a3
                  lui          a6, 369066
                  lui          a6, 654875
                  remu         s0, gp, t2
                  ori          t6, s1, 644
                  add          s10, t0, t1
                  slli         a6, t2, 27
                  andi         t5, a2, 1934
                  mulhu        s1, s8, s6
                  c.add        gp, a7
                  c.lui        a3, 28
                  c.mv         s0, s5
                  c.srai       a5, 11
                  c.slli       s5, 11
                  nop
                  xori         s2, s3, -522
                  xor          s11, a5, s11
                  c.xor        a1, a5
                  slli         s9, t5, 10
                  addi         t1, s6, 128
                  srli         a0, a2, 15
                  rem          s1, tp, s8
                  addi         s2, t6, 572
                  andi         s5, a6, 1392
                  lui          zero, 236350
                  c.srai       s0, 19
                  srai         a5, s10, 4
                  c.xor        a3, a5
                  mulhsu       gp, t1, s8
                  c.sub        s0, a5
                  xori         a6, s5, -241
                  mulhu        s6, s7, t4
                  sll          s4, s3, zero
                  c.or         a3, a3
                  or           a1, t4, a7
                  and          s7, t6, s1
                  c.andi       a5, 17
                  slli         a0, s10, 23
                  c.sub        a2, a1
                  remu         s11, zero, s4
                  remu         t5, t4, t3
                  rem          a1, t2, s0
                  sltiu        t3, s6, 58
                  c.addi       tp, 26
                  sltu         s10, a3, t2
                  sltiu        ra, a6, 1490
                  c.andi       s0, -1
                  c.nop
                  mulh         gp, ra, a5
                  slt          s9, s11, s0
                  xori         ra, tp, -106
                  ori          s2, a2, -1817
                  srai         a5, s6, 26
                  mulhu        a0, t2, a5
                  sltu         ra, a2, s4
                  lui          ra, 485796
                  c.andi       a2, 28
                  c.addi       ra, -1
                  rem          gp, tp, a7
                  srli         t3, t4, 8
                  c.nop
                  sltu         zero, t4, t5
                  xori         s2, s4, -1935
                  addi         s2, s5, -290
                  mulh         a7, a0, sp
                  c.mv         s10, s7
                  c.mv         ra, s4
                  sltiu        t6, s11, 89
                  ori          s0, tp, 399
                  c.srai       a3, 11
                  ori          a6, s3, -1075
                  rem          t4, gp, a1
                  sra          s2, s3, t0
                  c.li         s2, -1
                  c.and        a2, a4
                  remu         a2, t1, s8
                  and          t2, s1, ra
                  rem          s4, s1, tp
                  c.lui        s7, 3
                  srai         a0, zero, 25
                  addi         zero, a6, 1328
                  sra          a0, s10, a3
                  andi         t1, a0, -1356
                  c.slli       s6, 29
                  c.srli       a5, 30
                  sltu         a0, a4, s0
                  c.lui        t1, 13
                  c.slli       s4, 11
                  slt          a1, zero, a1
                  c.and        s1, a3
                  srl          a7, a0, ra
                  c.slli       s1, 21
                  xor          s2, sp, a7
                  ori          gp, s6, -1374
                  xor          s11, a5, zero
                  sub          a0, zero, a3
                  mulhu        a5, a4, t5
                  addi         s7, gp, -752
                  ori          t1, a6, -1916
                  c.srli       a2, 23
                  c.and        a3, s1
                  ori          ra, a3, 1057
                  c.lui        t1, 10
                  xori         t1, a0, 1140
                  c.nop
                  c.sub        s1, a4
                  c.sub        a1, a4
                  c.lui        a4, 29
                  c.andi       s1, 14
                  nop
                  sub          ra, a1, a0
                  slt          t0, s5, a7
                  lui          a6, 959476
                  div          s7, a6, t2
                  div          s9, a2, t3
                  c.addi       a5, 20
                  c.srai       a2, 3
                  slti         s5, s3, 352
                  slli         tp, s2, 7
                  c.lui        s1, 9
                  xori         t6, t0, 889
                  c.slli       t2, 10
                  mulhsu       a1, a5, s7
                  sltiu        a3, s7, 1452
                  c.sub        a1, a1
                  divu         t0, t1, s5
                  srai         a5, a2, 28
                  add          tp, s9, s0
                  addi         s4, a6, -269
                  mulhsu       gp, s2, s8
                  mul          s2, s10, s0
                  auipc        tp, 49608
                  c.srai       a3, 16
                  nop
                  c.srli       a4, 6
                  sll          s6, t1, tp
                  auipc        s10, 270895
                  c.and        a1, a1
                  sltiu        gp, zero, -596
                  addi         s10, t4, 1268
                  c.or         a4, a1
                  mul          s11, s1, s6
                  sltiu        a7, s10, -121
                  c.mv         s10, s3
                  andi         a7, sp, -809
                  mulhsu       a1, s4, a7
                  xori         a0, zero, -58
                  c.lui        t6, 28
                  remu         a6, zero, a4
                  c.mv         t0, s1
                  c.xor        a5, a2
                  c.addi       a3, 17
                  slt          a6, s2, s4
                  srl          t6, a7, t6
                  mul          t0, s6, t3
                  c.lui        a3, 21
                  addi         tp, s4, 1609
                  slli         a5, t4, 24
                  mulh         t1, s10, a1
                  slti         a4, s11, -941
                  c.and        a5, a5
                  c.andi       s0, -1
                  slt          s5, t1, s6
                  and          t3, a5, t6
                  addi         t0, a0, -1161
                  c.or         s0, s1
                  c.and        a5, a3
                  sltiu        s9, s3, 1822
                  xori         t2, zero, 1109
                  divu         zero, s0, a6
                  ori          s5, t4, 517
                  rem          zero, ra, a0
                  c.mv         t0, tp
                  remu         tp, s1, a5
                  sll          t5, a4, zero
                  c.andi       a1, -1
                  c.mv         ra, gp
                  slti         a1, t1, -1388
                  slt          s1, a2, ra
                  remu         a2, tp, sp
                  c.srai       a4, 31
                  c.srai       s0, 1
                  slli         s10, s1, 12
                  xor          a5, sp, gp
                  mul          ra, a4, tp
                  c.andi       a0, 5
                  slt          a3, t4, t0
                  c.mv         a2, a4
                  sltu         s0, a1, t4
                  rem          a1, a3, s7
                  c.nop
                  rem          t0, s5, t6
                  slt          s9, s10, s9
                  c.addi       s2, -1
                  divu         s5, s9, s2
                  srai         t2, s4, 3
                  c.add        t0, t2
                  sltu         t0, t1, t4
                  srli         a0, s7, 20
                  div          s7, a0, s11
                  c.and        s0, a1
                  c.srai       a2, 24
                  c.and        a1, a3
                  c.andi       s0, -1
                  c.lui        s11, 18
                  slli         a5, s2, 9
                  c.xor        a0, a5
                  nop
                  slt          s5, s6, s3
                  c.and        a4, a3
                  c.add        s1, a3
                  c.xor        s1, a3
                  slt          t2, t0, a0
                  addi         s0, t0, 1199
                  div          t1, a1, a4
                  sra          s11, a0, s9
                  c.addi       s2, -1
                  mulhu        tp, t3, t6
                  c.xor        a4, a4
                  or           ra, s0, t1
                  c.or         a3, a1
                  nop
                  mul          s10, s6, a6
                  sll          a1, ra, a7
                  div          a1, t5, a4
                  ori          s2, t2, -1797
                  c.srai       a0, 25
                  and          s0, a2, t1
                  mulhsu       a6, s1, s6
                  slt          t4, a4, s10
                  srl          a6, t1, tp
                  slli         s4, t4, 9
                  sltiu        t6, gp, 358
                  andi         s1, a4, 1191
                  andi         a5, a6, 1026
                  slti         s4, a1, -241
                  srl          ra, s9, a1
                  lui          a5, 298501
                  mulh         s10, s8, a6
                  c.srai       s0, 1
                  c.add        t4, t1
                  c.srai       s0, 30
                  c.andi       a0, 29
                  lui          t0, 585927
                  mul          s2, t2, a5
                  srai         t4, sp, 13
                  div          s11, sp, ra
                  xor          s9, ra, t1
                  ori          a4, t1, -481
                  mulhsu       s6, a1, a3
                  add          t3, t4, zero
                  slt          zero, a1, t5
                  c.srai       s0, 1
                  c.srli       s1, 29
                  and          t2, t3, s10
                  c.sub        a3, a2
                  slti         a7, a7, -714
                  srl          t6, t6, t1
                  slti         s1, t1, -610
                  or           s7, s9, a5
                  mulhu        s2, t2, zero
                  srl          t1, a2, t4
                  add          a0, a4, sp
                  slli         s4, t4, 14
                  divu         s6, t0, s8
                  mulhsu       s11, s6, s6
                  rem          t4, a5, s8
                  or           gp, a2, a6
                  c.sub        a0, a4
                  rem          t1, t5, s9
                  or           a2, t1, s9
                  remu         a7, tp, a2
                  c.nop
                  or           a0, sp, a3
                  slt          zero, tp, zero
                  mulhu        t1, s2, a2
                  c.nop
                  xor          s0, s3, s7
                  ori          t5, tp, 158
                  sltu         t2, a5, s1
                  add          a2, a4, s4
                  c.andi       a2, -1
                  divu         t3, s1, zero
                  remu         t2, t6, a5
                  andi         s1, s8, 1837
                  add          s9, s11, sp
                  c.nop
                  or           s4, s6, a4
                  c.add        ra, s0
                  srai         t3, s8, 5
                  sltiu        t1, t2, -24
                  c.addi       s5, -1
                  c.nop
                  add          s4, t1, s9
                  c.mv         s7, a7
                  c.sub        a5, a0
                  srli         t2, s8, 29
                  rem          t0, s2, t1
                  c.slli       tp, 18
                  lui          s1, 332264
                  or           s10, s11, tp
                  sra          t0, t0, s8
                  slli         a0, s2, 10
                  mulhsu       s0, s11, s8
                  srli         s9, a4, 3
                  c.mv         t4, a0
                  slli         a7, tp, 16
                  nop
                  or           a6, t0, t1
                  c.xor        a3, a4
                  ori          t2, s8, -1492
                  c.srai       a2, 13
                  and          t5, a0, a0
                  xor          s2, sp, zero
                  c.mv         s9, t3
                  or           s9, sp, t1
                  addi         ra, s10, -1109
                  srai         s7, a2, 13
                  c.xor        s1, s1
                  slt          zero, s11, s11
                  c.xor        a3, s0
                  lui          s1, 129804
                  nop
                  rem          a2, t0, a7
                  rem          a1, t4, s6
                  add          a2, s6, s4
                  xor          s4, t0, ra
                  c.or         a3, s1
                  srl          gp, sp, a0
                  srl          s11, s8, s1
                  rem          s9, a7, a2
                  sra          s9, a6, t1
                  mulhu        s0, a2, ra
                  srli         a4, tp, 27
                  c.or         s0, a3
                  lui          a5, 988359
                  mulhu        a1, t5, a2
                  mulhu        s11, gp, t3
                  addi         t0, a1, -1079
                  and          a0, s7, a0
                  mul          a6, s3, s0
                  c.slli       t2, 23
                  slti         s9, s2, -1643
                  addi         s1, t4, -1007
                  c.slli       gp, 30
                  or           s2, s2, t6
                  c.or         a1, a2
                  addi         t0, a5, 1940
                  ori          a7, a2, -1093
                  c.andi       s0, -1
                  c.srli       s0, 27
                  srli         s6, t0, 0
                  auipc        t0, 946037
                  divu         a4, t3, s10
                  c.slli       s0, 4
                  c.nop
                  slti         a2, t2, 1625
                  div          a7, gp, t5
                  c.sub        a3, a0
                  sll          s0, tp, a2
                  mulh         a0, t3, s7
                  andi         s0, zero, -220
                  rem          a0, a3, s5
                  c.sub        a1, s0
                  sll          s0, sp, a3
                  c.or         s0, a5
                  mulhu        a6, s3, t5
                  srl          s1, s3, s8
                  slti         a6, s6, -1609
                  div          a4, gp, t5
                  xor          t0, a6, t0
                  andi         s1, ra, 217
                  c.mv         t0, s7
                  mulh         s10, a2, a4
                  sltiu        s2, s3, -1628
                  c.xor        a3, a1
                  c.srai       a5, 17
                  rem          a3, s6, t5
                  c.and        a1, a2
                  sltu         s2, s5, a4
                  c.lui        s2, 1
                  c.srai       a3, 30
                  srli         ra, s11, 25
                  c.srli       a5, 13
                  lui          a1, 84381
                  mulhsu       t5, a1, t0
                  c.andi       a0, 30
                  c.addi       s11, 30
                  c.li         s0, -1
                  srli         a7, s6, 0
                  and          gp, s0, s8
                  sltiu        zero, t5, -477
                  addi         a4, s7, -1084
                  srl          t6, a7, zero
                  andi         zero, sp, 127
                  add          s2, a2, gp
                  sub          t2, a5, t5
                  c.add        s5, s9
                  xori         t0, a7, 85
                  slt          a3, a5, s6
                  rem          t3, a1, t3
                  mul          t2, a5, t2
                  sub          ra, t0, s0
                  remu         t4, sp, s8
                  c.lui        t1, 17
                  c.and        a0, a3
                  srl          tp, s6, s6
                  slt          s11, a5, a3
                  c.or         a3, a3
                  or           a5, a0, a7
                  c.slli       s6, 11
                  c.addi       tp, -1
                  mul          t3, s7, s4
                  auipc        t6, 741092
                  or           t1, s1, s2
                  c.add        s0, a6
                  srl          a0, a5, s1
                  c.nop
                  sll          s4, s10, a2
                  c.addi       gp, 23
                  c.and        s0, a0
                  ori          ra, ra, -1672
                  ori          zero, t1, -288
                  ori          a0, zero, 319
                  divu         gp, a7, a7
                  divu         a4, a4, a4
                  remu         a4, t5, t3
                  c.mv         s10, s6
                  remu         t5, ra, s0
                  mul          t6, a3, s1
                  remu         zero, a7, s11
                  lui          a4, 739747
                  ori          t1, t2, -1436
                  lui          t6, 443586
                  addi         a6, a2, 130
                  mulh         zero, s0, s1
                  slt          t5, s1, s10
                  sltu         s6, t2, t1
                  remu         t6, s1, t6
                  sltu         a3, a4, s8
                  sra          t4, s11, a3
                  ori          s7, t4, 1271
                  ori          s7, a7, -866
                  slt          a0, s8, a2
                  c.li         a6, -1
                  srli         s10, a0, 5
                  sltiu        s5, s10, 148
                  mulhsu       t2, s4, s1
                  srl          a2, t5, s2
                  srl          a6, t5, s6
                  c.xor        a4, s1
                  c.srli       a2, 11
                  remu         a0, s7, tp
                  c.add        s9, s7
                  or           t5, a3, a0
                  mulhsu       tp, t5, s8
                  sltiu        a0, tp, -1706
                  lui          t0, 227993
                  sub          s10, s10, s2
                  sll          s4, s5, a0
                  or           t2, a0, s10
                  srl          s7, t1, t2
                  c.sub        a0, a0
                  c.srli       a4, 27
                  sltiu        s10, zero, -1363
                  c.addi       s2, -1
                  div          t2, t5, t3
                  c.lui        s4, 10
                  mulhsu       s2, ra, a7
                  lui          t6, 635199
                  and          s2, s2, zero
                  mul          gp, t2, s0
                  c.or         s1, a2
                  sltu         a6, a5, a7
                  lui          t4, 911446
                  c.or         a4, a0
                  sltiu        s2, tp, -748
                  addi         t1, a5, -852
                  div          s0, s4, t3
                  sltu         a3, a3, t0
                  div          s2, s11, a5
                  lui          tp, 940242
                  mulhu        t3, sp, zero
                  mulh         a4, a6, tp
                  c.srai       a5, 28
                  sub          s0, a6, s6
                  div          s11, s0, s6
                  srai         a6, s3, 14
                  mul          s7, a6, s1
                  sll          s6, a3, gp
                  c.lui        s11, 14
                  sra          t0, s8, s0
                  mulh         a7, sp, s9
                  addi         s6, a6, -427
                  srl          ra, t4, s0
                  c.li         a2, -1
                  ori          s0, t3, -210
                  c.srli       a0, 20
                  c.and        a4, a5
                  divu         zero, t2, gp
                  addi         s9, s9, 71
                  addi         t3, t0, -1357
                  addi         a2, a1, -400
                  c.andi       s0, 6
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_26
                  li           s11, 0xffffffff
                  li           a4, 0x0
                  li           t5, 0xffffffff
                  li           a0, 0x80000000
                  li           tp, 0xfeccaf94
                  li           s7, 0xffffffff
                  li           t6, 0x0
                  li           s1, 0x80000000
                  li           s0, 0x0
                  lui          t5, 251518
                  mul          a4, s5, t6
                  lui          s7, 893607
                  remu         tp, s7, a4
                  lui          t5, 84532
                  sub          a0, s7, t6
                  rem          a4, s1, t5
                  div          s1, s1, s5
                  addi         s1, s11, 636
                  auipc        s0, 299660
                  mulhsu       s0, t6, s0
                  mulhsu       s5, s1, s5
                  sub          tp, s11, t6
                  nop
                  remu         s5, s11, s11
                  mul          s5, a4, a4
                  auipc        t5, 683562
                  mul          s0, s0, t6
                  remu         t5, tp, s7
                  mulhu        s1, s11, s5
                  div          s11, tp, t5 #end riscv_int_numeric_corner_stream_26
                  sub          t1, t2, tp
                  c.or         a5, s0
                  c.addi       a4, -1
                  c.addi       s1, -1
                  ori          a6, s0, 50
                  div          gp, tp, zero
                  sra          s10, t6, s0
                  c.xor        a3, s1
                  ori          tp, s3, -114
                  sub          t3, tp, s5
                  srai         a5, gp, 15
                  slti         s0, a7, 1548
                  mul          s2, s2, t1
                  slt          t6, t5, s6
                  divu         s1, t0, tp
                  mulhsu       s10, gp, a6
                  auipc        t0, 1043089
                  srai         a0, s3, 6
                  remu         s10, s3, a0
                  nop
                  remu         t3, sp, a3
                  divu         t3, t1, a1
                  mulhu        a7, a5, s11
                  c.mv         s1, s0
                  sll          s0, s11, t3
                  srli         t3, s9, 25
                  lui          s5, 522900
                  mulhsu       s5, a7, t1
                  slli         t5, s0, 8
                  c.addi       t5, -1
                  c.or         a4, s0
                  nop
                  sltiu        t4, s6, -1001
                  c.slli       ra, 12
                  div          s1, s1, s3
                  c.or         a0, a0
                  sll          gp, t4, s7
                  c.slli       s0, 27
                  c.xor        a1, s0
                  c.mv         t1, a0
                  c.and        a4, a1
                  lui          t6, 931759
                  mulhsu       t4, s0, s5
                  c.add        a5, s6
                  c.slli       s6, 3
                  c.add        s0, t0
                  divu         s11, s2, t5
                  c.srai       a2, 27
                  and          t5, gp, s4
                  c.srli       a2, 20
                  remu         t5, zero, a6
                  sltu         a4, a7, t0
                  mulh         s4, s10, a2
                  slli         a2, t1, 4
                  slt          s10, t4, s0
                  c.srai       a0, 19
                  sra          t4, s10, a3
                  div          t5, s9, gp
                  rem          t3, a7, s7
                  c.add        s2, s1
                  sra          a3, t6, a7
                  c.nop
                  sub          t2, s3, s5
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           t0, 0xffffffff
                  li           a3, 0x80000000
                  li           ra, 0xffffffff
                  li           s9, 0xffffffff
                  li           s5, 0x80000000
                  li           s11, 0xa3691988
                  li           s10, 0x0
                  li           s4, 0xcc7407b5
                  li           t6, 0x0
                  sub          s10, s5, s4
                  lui          t6, 251974
                  auipc        t6, 53101
                  mul          a3, t6, s5
                  remu         s9, a3, ra
                  div          s10, s5, t0
                  lui          s9, 328662
                  sub          ra, ra, t6
                  nop
                  mulh         t0, a3, a3
                  mulhsu       s11, ra, t0
                  nop
                  nop
                  nop
                  mulh         s10, a3, s9
                  mul          a3, a1, s9
                  mulh         s11, a3, s11
                  rem          s10, a1, t6
                  rem          s9, t6, s4
                  lui          t0, 692917
                  lui          t6, 260987
                  remu         t6, s10, t0 #end riscv_int_numeric_corner_stream_23
                  srai         a3, s10, 28
                  lui          t2, 75876
                  sll          s4, gp, s4
                  c.mv         t5, s11
                  c.xor        a0, a5
                  xor          a7, a2, s10
                  xor          a2, gp, gp
                  c.add        ra, a5
                  divu         t6, t2, a7
                  c.slli       t2, 7
                  lui          a7, 294464
                  divu         s7, a3, s7
                  div          t1, s9, s0
                  srl          t4, s10, t3
                  ori          t3, s3, -1566
                  mulhu        s9, s4, t1
                  and          a0, t4, zero
                  add          a7, a3, s9
                  or           s5, a6, a3
                  c.or         a5, a1
                  rem          ra, a5, ra
                  divu         s4, s1, s9
                  c.slli       a4, 11
                  remu         t3, t5, a5
                  and          tp, a0, a1
                  rem          t2, a5, a4
                  c.or         a2, a4
                  c.addi       s1, -1
                  xor          a0, a5, tp
                  mulh         tp, s9, ra
                  srl          s7, a6, s11
                  or           t3, a6, s1
                  xor          s7, t4, a7
                  slli         zero, s5, 22
                  c.add        t0, sp
                  xor          t4, a5, a3
                  slti         s11, a3, -1817
                  c.xor        a5, a1
                  c.srai       a2, 1
                  c.andi       a0, 1
                  xor          a0, tp, t3
                  srl          ra, t0, gp
                  rem          s4, sp, a0
                  mulh         s9, zero, a6
                  mulhsu       ra, a6, t1
                  divu         s6, s0, s3
                  srli         t2, t6, 1
                  mulh         s7, a1, s0
                  mulhsu       t0, ra, s6
                  c.andi       s0, -1
                  sra          t1, t4, s9
                  c.sub        s1, a1
                  sltiu        ra, s4, 1543
                  sub          a3, tp, s0
                  c.li         ra, -1
                  rem          a5, a7, s0
                  remu         ra, s8, a4
                  sltiu        t5, a3, -1341
                  lui          t3, 780788
                  c.and        a4, s1
                  add          s0, gp, s7
                  or           a3, a1, a2
                  c.sub        a4, s1
                  c.srai       a0, 15
                  divu         t5, t0, s11
                  c.addi       s6, 15
                  nop
                  c.andi       s0, -1
                  remu         t4, a3, s0
                  c.addi       t4, -1
                  sub          a4, s7, sp
                  c.sub        s0, s0
                  c.slli       t3, 22
                  srai         t2, a1, 3
                  srli         t5, s7, 4
                  c.xor        s1, s1
                  c.andi       a0, -1
                  c.srai       a5, 3
                  xor          s10, gp, gp
                  div          a4, t5, t2
                  srl          a4, ra, gp
                  sub          s7, zero, a2
                  remu         t1, a1, s10
                  c.slli       s11, 21
                  sll          s2, t4, s0
                  sll          a2, s9, s5
                  lui          s10, 142442
                  addi         gp, s7, -646
                  c.li         a3, 27
                  lui          t0, 574149
                  c.or         a4, a5
                  divu         t3, t4, t0
                  addi         a3, a2, 1075
                  mulhu        s7, tp, a3
                  c.sub        a2, a5
                  c.lui        s0, 23
                  sltiu        a7, t2, -1777
                  c.srai       a0, 22
                  andi         a5, gp, -152
                  slti         a5, a4, -1555
                  xori         a7, a5, -273
                  c.lui        a2, 18
                  srli         t3, a2, 12
                  c.nop
                  slli         a0, t1, 26
                  auipc        s1, 941066
                  sltiu        a2, a0, -843
                  c.and        s1, a4
                  auipc        s1, 665802
                  c.nop
                  nop
                  srai         s2, a7, 2
                  c.addi       a6, -1
                  remu         t6, s0, a2
                  c.addi       t6, -1
                  c.andi       s0, -1
                  nop
                  c.andi       a4, 29
                  c.sub        a1, a3
                  c.add        t1, a2
                  ori          s4, s6, -1372
                  c.srli       s0, 6
                  sltu         s7, a3, a5
                  slti         s11, t4, -1379
                  c.add        a6, s11
                  c.and        a0, s1
                  slti         a5, tp, -1382
                  c.andi       s0, -1
                  and          a5, s1, t6
                  divu         t6, s0, s6
                  lui          t2, 364205
                  andi         a5, s5, 770
                  mulh         s0, a4, s10
                  divu         gp, a7, a3
                  c.or         a1, a4
                  nop
                  mul          ra, t5, t3
                  mulh         t5, s5, s10
                  mul          s2, s1, t1
                  slti         t1, zero, -1964
                  srai         gp, s8, 7
                  ori          a4, s1, -835
                  srli         s9, s4, 19
                  lui          t3, 646245
                  sra          s7, s10, zero
                  slti         a7, a1, 1321
                  remu         s9, a5, ra
                  slt          t6, a6, s2
                  c.xor        a4, a1
                  srl          s0, t6, t3
                  srl          a5, a3, s3
                  sll          s6, t2, a3
                  c.lui        s9, 16
                  add          a7, gp, t2
                  rem          a1, a4, tp
                  auipc        t3, 206412
                  mulh         zero, t0, gp
                  rem          a6, tp, t2
                  c.slli       a0, 27
                  ori          s5, sp, 618
                  sltu         a2, s11, sp
                  lui          s1, 254227
                  mulhsu       s2, a0, s3
                  c.slli       t1, 21
                  c.xor        s0, a2
                  c.srli       a4, 6
                  slli         t2, s6, 10
                  c.sub        a5, a1
                  c.lui        tp, 2
                  c.xor        a3, a0
                  rem          a1, t4, gp
                  srai         s11, a4, 22
                  c.nop
                  andi         s2, s7, 513
                  c.li         tp, 11
                  slt          a3, a5, s7
                  srli         a1, t0, 20
                  c.addi       t3, 18
                  ori          a4, s4, 198
                  xor          s0, sp, a5
                  srli         t0, t4, 29
                  c.add        a5, s9
                  div          ra, gp, a3
                  srli         t6, s5, 28
                  c.andi       a0, 25
                  c.andi       a1, 1
                  c.xor        a2, a4
                  c.andi       s0, -1
                  c.nop
                  div          s4, a2, s2
                  ori          a1, a3, 145
                  mulhsu       s11, s6, s5
                  lui          t5, 878005
                  c.addi       t6, -1
                  addi         s4, t3, 1213
                  c.or         s0, a0
                  lui          s6, 534686
                  sltu         s7, a0, s5
                  mulhu        s11, s0, s11
                  slti         a4, gp, 296
                  sra          ra, tp, a0
                  srli         zero, s4, 17
                  c.li         t2, 24
                  xori         a0, s9, -624
                  c.xor        a3, a1
                  c.sub        a4, s1
                  c.nop
                  or           tp, zero, sp
                  srli         t1, s6, 22
                  divu         t5, a5, s11
                  mulh         a3, s11, t3
                  c.mv         a5, s4
                  addi         t1, t1, 579
                  c.mv         a2, s8
                  sltu         t1, s11, a4
                  add          a2, s10, a5
                  addi         a3, s2, 1148
                  c.xor        a3, a1
                  sll          a3, s4, s8
                  c.andi       s0, 3
                  add          t2, a4, s5
                  mul          s7, zero, s5
                  c.and        a0, s1
                  c.slli       a7, 28
                  mul          s2, a4, a1
                  divu         s7, s0, a2
                  sub          s5, s8, a2
                  srai         t6, ra, 19
                  slti         t6, sp, -1650
                  c.nop
                  c.srli       a5, 30
                  c.li         s7, -1
                  rem          s1, t4, s10
                  sra          s0, s8, s1
                  ori          s5, s9, 167
                  c.li         s1, 8
                  rem          s5, sp, s8
                  mulhu        a0, zero, s0
                  addi         s5, a7, 609
                  mul          t0, t0, zero
                  mulhu        gp, tp, zero
                  c.nop
                  rem          tp, t5, zero
                  addi         a3, a1, -702
                  or           s9, a0, a7
                  c.add        s9, s4
                  mulhsu       s6, t1, t1
                  add          s11, a1, t2
                  sub          a7, s11, a5
                  addi         t6, a0, 779
                  sltu         zero, gp, t1
                  c.nop
                  nop
                  c.and        a2, a1
                  mulh         zero, t4, a1
                  remu         s2, a2, t4
                  and          a5, t1, s2
                  c.li         s0, -1
                  xori         s0, gp, -274
                  c.srai       s1, 1
                  c.li         s7, -1
                  c.addi       s9, -1
                  c.srai       a4, 22
                  c.and        a3, a0
                  or           ra, s6, t3
                  or           t2, s7, t6
                  slti         a0, a6, 327
                  sra          a5, t2, s6
                  srli         tp, a1, 8
                  sra          a5, s5, tp
                  srl          a7, a6, t5
                  mulh         s2, t3, a4
                  c.andi       a4, -1
                  sll          s11, a6, zero
                  slli         s7, s3, 20
                  mul          t6, a0, s11
                  lui          a5, 614702
                  andi         t3, s6, -1404
                  srli         a6, s9, 19
                  xor          gp, t1, sp
                  srai         gp, tp, 10
                  c.srli       a5, 20
                  mulh         s9, a3, s3
                  auipc        t2, 792399
                  c.slli       s2, 6
                  srli         s10, t4, 23
                  sltu         s7, s4, sp
                  c.srli       s0, 9
                  c.srai       s0, 27
                  andi         s6, s6, -1378
                  add          gp, s5, a0
                  c.slli       tp, 29
                  c.sub        a5, a1
                  c.sub        a4, a4
                  slt          zero, t1, a7
                  slti         a6, a2, -1002
                  c.and        a0, a5
                  xori         ra, a4, 712
                  sll          s0, s11, zero
                  slli         s7, s9, 11
                  c.addi       gp, 3
                  mulhu        s5, s0, a1
                  or           t5, s1, s1
                  c.xor        a1, s1
                  c.andi       s0, -1
                  c.srli       a0, 31
                  c.lui        a1, 13
                  xori         a1, a7, -1496
                  c.slli       a6, 11
                  div          s2, a6, s9
                  slti         t3, tp, 638
                  c.addi       t4, -1
                  c.nop
                  sltiu        a3, s2, -1030
                  remu         tp, a2, s7
                  srai         s5, s7, 12
                  addi         t3, gp, -59
                  rem          tp, s1, a4
                  c.nop
                  sra          gp, t5, ra
                  c.li         gp, -1
                  c.li         ra, -1
                  or           s5, s10, sp
                  div          a3, a4, a1
                  auipc        s0, 627669
                  srl          a6, s0, a1
                  sltiu        t0, gp, 124
                  slt          zero, s5, t4
                  auipc        a1, 488719
                  c.or         a5, a2
                  c.lui        s5, 25
                  addi         a2, zero, 856
                  c.srli       s0, 17
                  c.xor        a1, a3
                  mulhu        a2, t1, a3
                  mulhsu       t5, t4, s9
                  srai         s10, t5, 11
                  c.or         a0, a1
                  mulhsu       a0, s8, s11
                  sub          a5, a1, a0
                  mulhu        a0, t1, a0
                  andi         t6, a6, 378
                  sub          t5, s6, ra
                  xori         tp, t6, -1353
                  or           a4, t0, s3
                  c.srai       a1, 21
                  andi         a3, s11, 948
                  srli         tp, a2, 5
                  auipc        t1, 585093
                  sra          s10, s9, a6
                  sll          a4, sp, s7
                  sub          t3, s5, tp
                  c.sub        a3, s1
                  c.add        a5, ra
                  mul          a6, s10, t6
                  and          a0, a5, tp
                  c.addi       a5, -1
                  c.srli       s0, 1
                  sltu         t6, t6, a2
                  lui          t6, 783496
                  c.mv         a4, gp
                  sltu         t4, t0, s8
                  auipc        t0, 754793
                  mulhsu       t4, s7, s6
                  sra          tp, s11, a4
                  sub          s4, s7, t3
                  sltiu        a7, t1, 1126
                  mulh         t3, zero, s10
                  xori         s5, t0, 1841
                  sra          s0, a5, t6
                  c.sub        a5, a0
                  nop
                  c.srli       a2, 29
                  divu         s6, s0, s6
                  and          s2, s9, t6
                  sub          a4, t3, t6
                  mulh         s4, t6, a2
                  sll          tp, s7, s5
                  c.or         a5, a3
                  divu         s11, a5, s6
                  c.sub        a3, a0
                  or           a2, s0, a3
                  auipc        s0, 175917
                  c.li         s10, -1
                  slli         a5, s0, 6
                  c.srai       s1, 26
                  c.li         a7, -1
                  rem          a4, a1, s3
                  c.nop
                  mulhsu       t1, t2, a4
                  c.add        a3, s8
                  c.and        a5, a2
                  sub          a6, s4, t4
                  sll          a1, s8, s4
                  mul          a7, s8, s8
                  mul          s6, a5, t5
                  slt          t0, s3, a0
                  slt          a6, s3, a3
                  c.or         a1, a0
                  srai         s7, s2, 10
                  rem          a6, t3, a5
                  mulh         s2, a1, zero
                  c.add        s2, ra
                  and          a5, t4, s8
                  mulh         s0, a4, zero
                  divu         s11, t4, a2
                  c.and        a1, a5
                  slli         s10, s7, 6
                  c.srli       a4, 4
                  c.srai       a0, 25
                  andi         t6, s10, -1109
                  mulhsu       t2, a5, a0
                  c.xor        a5, a0
                  c.andi       a5, 2
                  c.li         s6, -1
                  c.li         s5, 5
                  and          zero, s4, gp
                  c.srli       a5, 29
                  c.lui        tp, 10
                  div          a2, t2, a4
                  c.srai       a3, 15
                  sra          s6, t1, t2
                  sltiu        s9, s11, 1413
                  c.and        a5, a2
                  sra          s10, t6, s0
                  rem          t4, s7, t3
                  c.add        a3, gp
                  srli         gp, a2, 17
                  addi         a2, t4, -603
                  srai         a3, s2, 25
                  auipc        t1, 11861
                  sltu         s10, a7, ra
                  divu         a5, s4, a0
                  xori         s7, t2, -1501
                  c.srai       a1, 26
                  add          s0, s6, t4
                  remu         gp, s3, tp
                  div          a7, s7, a1
                  remu         s0, tp, a4
                  sll          s9, s8, t6
                  auipc        s2, 408590
                  add          s9, s1, t2
                  slti         s7, t0, -1351
                  div          gp, a5, s1
                  and          zero, a5, zero
                  ori          t1, s9, 1701
                  c.or         s0, a0
                  slti         s0, zero, -109
                  c.xor        s0, a3
                  mul          s9, t2, t3
                  sll          s0, t3, s1
                  srai         gp, t0, 2
                  c.nop
                  sub          tp, a3, sp
                  ori          t5, t3, 356
                  c.addi       a4, 19
                  auipc        t4, 368783
                  nop
                  auipc        s1, 89410
                  mulhsu       a1, t4, tp
                  xori         s10, a7, 1060
                  c.or         a4, a1
                  divu         zero, s5, t5
                  c.srai       a2, 20
                  c.add        s2, t1
                  slti         t0, a1, 568
                  lui          a6, 242457
                  c.mv         s0, a7
                  mul          a6, s9, t4
                  c.li         s1, -1
                  remu         a7, s8, a6
                  c.srli       a3, 1
                  andi         s4, sp, 1037
                  mulhu        s0, a7, s3
                  or           s10, gp, s3
                  ori          tp, t6, -1890
                  c.sub        a4, s1
                  c.nop
                  c.mv         t4, s0
                  slt          a5, ra, t1
                  c.mv         s11, t2
                  slli         s2, s11, 14
                  rem          t3, s7, a2
                  c.lui        s4, 22
                  mul          a1, t6, s6
                  slti         s1, a0, -1675
                  c.lui        s7, 3
                  c.or         a1, a2
                  slli         t1, t6, 8
                  xori         t2, t2, 699
                  rem          s9, t5, a1
                  divu         s7, zero, a7
                  and          a5, a7, s6
                  c.srli       a2, 1
                  add          s7, t2, t6
                  divu         s7, zero, s4
                  srai         t3, a1, 31
                  or           t5, s6, s3
                  sra          a3, tp, s4
                  slli         s9, sp, 13
                  lui          a5, 813933
                  mulhu        s6, s11, a4
                  srli         s9, t2, 3
                  srli         t3, zero, 21
                  slli         s10, s8, 26
                  lui          zero, 466392
                  srli         t1, a4, 20
                  nop
                  c.srai       a1, 27
                  c.sub        a1, a2
                  c.nop
                  lui          zero, 19274
                  lui          s10, 775252
                  mulhsu       s0, t3, t0
                  sltiu        a7, a1, 523
                  or           t3, a4, t2
                  c.add        s0, s11
                  sltu         s7, s9, s1
                  srai         s2, t4, 21
                  nop
                  srai         ra, s0, 3
                  sltiu        s10, s8, 731
                  slti         a5, tp, -677
                  xori         s11, a2, 394
                  xor          a3, s5, s7
                  srai         s1, s5, 20
                  c.or         a2, a1
                  c.li         a1, 31
                  mulh         s6, s9, s1
                  divu         s10, a3, gp
                  c.add        t1, s1
                  slt          ra, a4, t4
                  c.nop
                  c.srli       a3, 14
                  add          t4, s11, t0
                  xori         ra, a2, -1056
                  mulhu        s9, s1, t2
                  auipc        t2, 275114
                  sll          s1, sp, s0
                  c.addi       s7, 29
                  lui          a0, 637009
                  c.add        tp, s9
                  ori          s1, s2, -1768
                  c.li         s11, 10
                  ori          t3, a5, 21
                  sltu         a2, s0, ra
                  remu         t1, s10, s2
                  nop
                  slt          s9, t1, a5
                  ori          s6, a6, -1342
                  ori          s10, s7, -2033
                  c.lui        s7, 1
                  c.xor        a4, a5
                  srl          s4, s10, s1
                  c.and        a3, s1
                  divu         a0, a6, gp
                  addi         s1, a4, -1478
                  sltiu        s0, t4, -349
                  xori         s0, t5, 1433
                  c.andi       a0, -1
                  sltiu        zero, a0, -141
                  lui          t3, 854386
                  c.and        a1, s0
                  add          a2, t5, t0
                  c.li         t5, -1
                  auipc        gp, 613830
                  slt          t2, t4, t3
                  divu         a5, a1, s10
                  c.lui        s1, 6
                  rem          a4, s1, a5
                  c.addi       s4, 2
                  c.mv         t3, a0
                  c.lui        t4, 20
                  xor          zero, s4, zero
                  sltu         a6, a2, t1
                  srl          a7, t4, a4
                  srli         tp, a3, 9
                  auipc        a1, 247931
                  rem          zero, a6, s8
                  xor          s11, a7, s8
                  c.sub        a2, a1
                  lui          a3, 105569
                  c.mv         s10, s4
                  sll          s9, t3, a3
                  srl          s6, s3, zero
                  c.srai       s0, 17
                  and          s11, ra, a5
                  c.or         a3, s1
                  c.nop
                  remu         s2, t3, s8
                  remu         s9, gp, a4
                  c.xor        s1, s1
                  c.add        s7, a2
                  xori         a4, zero, -1317
                  c.addi       t0, -1
                  sll          a4, s1, sp
                  mulhu        s9, t3, a7
                  c.sub        s1, a5
                  and          s4, t2, s6
                  srai         zero, a1, 22
                  nop
                  andi         gp, s1, 1787
                  c.add        s5, s8
                  sll          a6, s7, s7
                  c.or         a1, a0
                  slt          t5, a3, s4
                  xori         s6, s1, 1172
                  slli         t6, t1, 22
                  mulhu        s2, a1, t1
                  sll          zero, ra, zero
                  c.srli       a2, 20
                  rem          t5, s11, t6
                  sltiu        a3, t6, -61
                  c.mv         s1, t2
                  c.li         s7, 12
                  c.srli       s1, 30
                  rem          s4, s7, t2
                  c.srai       a0, 31
                  c.xor        a1, a2
                  c.slli       a3, 18
                  xor          ra, s2, a5
                  c.li         s0, -1
                  mulhu        s5, tp, s9
                  c.srli       s1, 14
                  c.or         a3, a4
                  c.add        gp, s5
                  slt          s1, s6, s3
                  slti         t2, s9, -1139
                  c.or         a1, a5
                  srli         s7, s9, 22
                  sra          s4, s11, a6
                  c.addi       a6, 21
                  divu         s10, t3, s2
                  addi         gp, a7, -1478
                  c.srli       a5, 3
                  c.sub        s0, a4
                  add          t2, s1, t4
                  mul          t5, a0, s2
                  add          gp, s8, gp
                  mulh         s1, a4, a7
                  slli         s10, ra, 26
                  srli         t0, a1, 26
                  div          t1, s0, t1
                  slt          s2, s6, s7
                  mulh         s11, a1, s6
                  c.and        s1, a4
                  and          s2, a1, a1
                  sltu         t6, s2, s6
                  auipc        a6, 861980
                  c.or         a1, a0
                  c.nop
                  c.andi       a5, -1
                  or           zero, s5, t3
                  mul          a5, s0, s5
                  and          t5, s10, t6
                  nop
                  c.addi       a4, 10
                  mul          a2, t1, t2
                  c.srai       a3, 10
                  andi         ra, s11, 143
                  c.mv         t5, t6
                  xor          t3, s9, s8
                  and          s2, s6, s8
                  sltu         t1, s8, s7
                  c.li         s0, -1
                  xori         a5, s9, -601
                  slti         t6, t5, -877
                  mul          ra, a1, t6
                  remu         t4, t5, a7
                  sltiu        s1, s9, -989
                  c.andi       s0, -1
                  addi         zero, s8, -2044
                  addi         s7, t0, -1922
                  c.li         s7, 25
                  addi         t5, s7, -1569
                  mul          a5, gp, a3
                  ori          s4, sp, 1582
                  divu         s10, s0, a4
                  rem          t2, t6, s2
                  sra          t2, s9, s1
                  mulhu        s11, s3, t1
                  c.srli       a5, 2
                  c.andi       a4, 0
                  or           s7, a0, a7
                  nop
                  c.and        s1, a0
                  xor          a5, s10, s7
                  auipc        t1, 670170
                  xor          t6, a4, s3
                  srai         s2, t0, 15
                  sra          t1, a1, s6
                  slli         ra, a1, 27
                  rem          a7, s5, s3
                  remu         s7, t0, s1
                  divu         t4, a6, s5
                  mul          t1, s8, s9
                  mul          a4, t5, s11
                  sra          s10, s7, ra
                  mulhu        ra, a6, a4
                  mulhu        a5, t3, a2
                  srai         t3, s6, 8
                  mulh         zero, a3, t2
                  c.or         s0, a5
                  nop
                  c.or         s1, a3
                  mul          s9, s11, a0
                  c.slli       s4, 6
                  srai         s0, t4, 17
                  mulhu        a0, s8, ra
                  div          a4, s0, t4
                  div          s2, t6, s3
                  divu         a7, t5, a3
                  c.or         a5, a2
                  c.lui        a5, 26
                  mulhu        t1, a7, a4
                  c.sub        a4, a4
                  c.addi       s10, 16
                  sra          t5, a6, tp
                  mul          s10, s7, s8
                  srai         s6, sp, 29
                  c.li         s6, -1
                  c.xor        a0, a4
                  mulhsu       t2, gp, t0
                  rem          ra, t0, s6
                  ori          s1, a3, 1172
                  addi         zero, t5, -607
                  andi         a6, s8, -1781
                  mulhu        t3, t0, s4
                  srai         a6, a3, 0
                  div          a1, t5, a6
                  rem          a4, s7, s6
                  div          t5, s8, t0
                  xor          s6, t4, s5
                  xori         ra, t3, 1176
                  c.addi       t5, -1
                  mulh         s11, t6, s7
                  c.addi       t5, -1
                  slli         a5, t3, 28
                  c.addi       a0, -1
                  and          a3, t0, a1
                  nop
                  xor          s9, a7, s0
                  xori         a1, t5, -966
                  add          s11, a2, s3
                  mul          s11, a0, t0
                  sub          a6, s5, a5
                  srai         s11, s2, 2
                  c.andi       a0, -1
                  c.srai       a1, 19
                  nop
                  addi         s4, s8, -742
                  c.addi       s9, 2
                  c.or         a5, a3
                  ori          s4, s10, -1906
                  c.mv         t4, t3
                  xori         zero, t3, -885
                  srl          t3, a1, t1
                  c.andi       a5, 19
                  c.and        a1, a0
                  slti         s11, t3, -1517
                  srai         s9, s4, 21
                  lui          s0, 176843
                  c.srli       a2, 2
                  ori          t0, a1, 295
                  ori          zero, s11, -1185
                  sub          a5, s6, s11
                  c.mv         tp, a5
                  mulhsu       ra, s10, s9
                  addi         s0, s11, -1824
                  c.add        tp, s0
                  nop
                  lui          s1, 1014002
                  c.slli       a0, 1
                  c.nop
                  remu         tp, tp, a1
                  divu         t2, zero, s0
                  c.lui        s9, 8
                  sll          s7, s10, a6
                  c.sub        a0, s1
                  srai         t6, t5, 13
                  c.nop
                  ori          s7, a1, -94
                  add          t4, s7, gp
                  auipc        tp, 935165
                  slti         s0, a6, -858
                  c.slli       a5, 17
                  mulh         a1, s5, s0
                  rem          s9, s3, s2
                  c.mv         s4, s0
                  ori          zero, s1, -661
                  slli         s6, ra, 15
                  sltu         ra, t0, t0
                  srai         t3, t1, 17
                  c.mv         a0, a4
                  c.addi       a2, 28
                  srli         t5, sp, 8
                  nop
                  c.or         s0, a1
                  and          a2, gp, a3
                  mul          t3, t2, a6
                  mulhsu       a3, gp, a1
                  ori          t1, tp, 1427
                  remu         ra, a5, s10
                  c.mv         a7, s4
                  mulh         gp, a1, t1
                  sll          s6, a7, s11
                  mulhsu       s6, a5, t2
                  and          s7, zero, s5
                  sll          a4, sp, s8
                  c.li         ra, -1
                  div          s2, t4, s9
                  sub          s2, a4, s0
                  remu         s7, s11, s0
                  mulhsu       zero, t4, s9
                  xori         t4, s4, 62
                  c.mv         s9, a2
                  sub          s2, s11, a2
                  and          s6, a7, t5
                  remu         a6, a2, t0
                  c.srai       a1, 30
                  lui          a4, 548244
                  rem          t5, s6, s3
                  sltu         s1, s8, gp
                  c.andi       a2, 16
                  xori         t1, t5, 1322
                  div          s10, t5, s6
                  rem          t0, s10, s10
                  c.srai       s1, 4
                  srli         s10, t4, 28
                  c.srai       a5, 30
                  addi         a4, s11, 1526
                  ori          t2, s7, -889
                  srai         a0, ra, 26
                  c.li         a0, 25
                  add          s11, t1, s7
                  c.add        s0, s2
                  c.slli       a2, 1
                  c.mv         t6, t6
                  slti         tp, zero, -541
                  c.xor        a3, a0
                  rem          gp, gp, t4
                  c.addi       tp, 26
                  c.or         a3, a3
                  c.lui        a1, 6
                  or           s4, tp, s10
                  nop
                  nop
                  c.srli       a1, 30
                  addi         s7, ra, -332
                  sltu         ra, s5, s4
                  sub          s4, s2, s2
                  sub          s2, t0, t4
                  srli         s9, s0, 1
                  mulhu        s7, t5, zero
                  c.xor        a3, a3
                  and          zero, a2, t4
                  c.lui        t0, 23
                  c.mv         tp, s1
                  c.srli       s1, 20
                  sltu         s0, a7, t6
                  c.srli       a0, 3
                  add          s6, t0, s8
                  srai         a5, s9, 3
                  auipc        s6, 239530
                  c.nop
                  addi         a1, sp, 999
                  c.or         a3, s1
                  nop
                  c.add        tp, a6
                  xori         t2, s2, 383
                  c.andi       a4, 3
                  sra          t3, a1, a5
                  c.and        s1, a3
                  slti         a2, s1, 1821
                  c.andi       a4, 18
                  c.and        a1, s0
                  addi         zero, t1, 787
                  and          a6, a5, s3
                  or           a0, s0, s5
                  mulhsu       s6, a2, s11
                  slt          s1, s10, a1
                  and          s10, t3, a2
                  div          s7, s6, s5
                  c.add        t0, a0
                  srli         a2, t5, 26
                  srai         t3, t4, 12
                  sltu         zero, zero, t6
                  or           s9, t3, t0
                  remu         a1, s5, s3
                  nop
                  and          a6, s1, t2
                  ori          s2, s10, -149
                  remu         t2, a6, t1
                  addi         a7, s2, 87
                  xor          s11, s0, sp
                  add          gp, s4, a7
                  srai         a6, sp, 10
                  c.and        a1, a2
                  add          a5, s5, a7
                  c.nop
                  or           s7, s7, s9
                  xori         t6, t5, -907
                  c.nop
                  c.srli       a2, 28
                  c.srli       a2, 3
                  sra          s11, ra, s7
                  c.xor        s0, a3
                  c.srli       a0, 26
                  remu         s5, s0, s4
                  c.andi       a2, 29
                  c.or         a2, s0
                  c.xor        a0, a4
                  srli         s4, s7, 29
                  sra          s6, a4, sp
                  srl          zero, a7, a4
                  c.srai       a3, 26
                  andi         s9, a7, 618
                  slti         a4, s8, -1116
                  ori          gp, a6, 1714
                  srai         a5, s4, 20
                  auipc        t5, 32512
                  nop
                  sll          s10, t6, s6
                  srli         t1, t4, 10
                  slti         s5, s5, 320
                  xor          s10, s11, s8
                  c.and        s0, a2
                  ori          t3, s11, 44
                  slli         zero, s6, 4
                  c.srai       s0, 23
                  c.srai       a4, 25
                  sll          a3, s1, a1
                  c.and        a0, a1
                  c.or         a4, a1
                  nop
                  ori          a0, sp, 67
                  or           ra, s5, s8
                  slti         a7, a3, -395
                  slt          t2, t1, t5
                  c.srai       s0, 13
                  xor          gp, t2, s8
                  rem          s7, s9, s1
                  and          s2, s4, s2
                  xori         gp, s0, -1878
                  sub          t3, sp, a7
                  sra          a0, s7, s4
                  sub          a0, s1, s6
                  c.mv         t3, t6
                  slt          s4, s8, gp
                  ori          ra, s4, 1252
                  c.li         a0, -1
                  slt          a5, gp, a7
                  srai         s6, s3, 19
                  c.srai       a2, 31
                  auipc        s7, 521971
                  divu         gp, a3, s2
                  c.or         a5, a3
                  addi         a1, a0, 899
                  srl          a4, s3, ra
                  c.lui        ra, 21
                  sltu         t6, s0, a4
                  auipc        zero, 320290
                  c.slli       s11, 19
                  c.srai       s0, 18
                  c.xor        a1, a1
                  div          a3, a3, s7
                  lui          a7, 382059
                  rem          s9, a7, s0
                  rem          gp, t1, s10
                  sll          t2, a6, a3
                  c.or         a5, a1
                  sltiu        t4, tp, 741
                  srl          s5, s6, tp
                  sub          a0, a2, a2
                  srai         s9, a5, 4
                  ori          ra, s0, -149
                  c.or         a2, s0
                  c.slli       t1, 30
                  sub          tp, ra, sp
                  divu         a7, s11, s11
                  c.srai       s1, 25
                  divu         a0, s11, t1
                  c.nop
                  sltiu        a7, t5, -939
                  ori          t1, tp, 920
                  andi         t6, s9, -1481
                  c.and        s0, s1
                  xori         zero, s0, -182
                  sltiu        s6, s8, 335
                  c.srli       a3, 26
                  c.nop
                  slti         t5, s5, 1484
                  slt          s6, a1, s11
                  or           a3, t2, s6
                  c.slli       t5, 31
                  c.lui        t0, 6
                  and          t3, s3, s10
                  c.and        a1, a2
                  c.andi       a4, 9
                  c.srli       a2, 31
                  c.li         s9, 11
                  c.mv         t4, s5
                  c.lui        t4, 13
                  sll          t5, t6, ra
                  sra          a1, s1, a3
                  mulh         s2, s0, a7
                  c.lui        tp, 22
                  xor          a1, t6, a6
                  auipc        s10, 637081
                  c.lui        t1, 23
                  c.srli       a4, 22
                  auipc        tp, 466980
                  mul          gp, sp, t4
                  remu         tp, tp, s7
                  slt          a2, s3, a3
                  c.addi       a1, 9
                  slti         t4, a5, 137
                  sll          s5, s1, t1
                  c.nop
                  slti         gp, a3, -485
                  add          t1, sp, s10
                  c.mv         s11, t3
                  srai         a5, ra, 4
                  srl          a7, ra, a5
                  c.nop
                  c.and        a1, a5
                  c.srli       a2, 19
                  and          t4, t3, s7
                  c.and        a1, a1
                  mulh         a1, t3, a6
                  mul          gp, a5, s7
                  mulh         t5, s4, sp
                  srli         t3, zero, 8
                  div          a6, zero, s6
                  c.addi       s1, 21
                  nop
                  c.sub        a5, s1
                  or           a1, s8, s7
                  sra          s10, s11, a2
                  c.andi       s0, -1
                  slti         s6, t4, -866
                  nop
                  add          t0, s1, s5
                  ori          t6, t4, -851
                  sra          s1, s4, s11
                  add          tp, t0, a7
                  ori          gp, sp, -640
                  sltu         a4, a4, a2
                  c.add        s2, s9
                  add          a1, s5, a7
                  add          a2, a1, t0
                  sll          zero, s5, ra
                  c.andi       s1, -1
                  mul          t2, a2, a3
                  srl          a5, s10, a2
                  c.srai       s0, 9
                  mulh         t2, a0, t2
                  or           ra, a0, t5
                  auipc        s1, 405720
                  remu         t0, sp, s4
                  slti         s9, s2, 1006
                  sll          s7, s3, a7
                  mulhsu       t0, s8, s10
                  c.lui        s2, 15
                  div          s11, t5, sp
                  slti         s7, t1, 1373
                  andi         t1, s1, 224
                  addi         s1, s0, 1511
                  c.andi       a5, 24
                  sltiu        s9, s7, 1625
                  nop
                  srai         a0, s5, 3
                  or           t0, t6, a1
                  xori         s10, t4, -997
                  c.sub        a5, s1
                  c.slli       t6, 29
                  c.xor        a1, s1
                  c.mv         t2, s2
                  sll          a0, sp, s1
                  c.xor        a2, a4
                  ori          gp, t2, -1397
                  ori          a0, s7, 1711
                  c.and        a2, a0
                  and          s11, s4, a5
                  add          s0, t0, s4
                  rem          a4, t5, t0
                  mulh         a3, t2, t2
                  mul          s6, gp, a4
                  and          s7, sp, t2
                  mulhu        s7, gp, s6
                  mulh         zero, zero, t2
                  c.srai       a2, 1
                  remu         s9, a2, a4
                  c.and        a0, a2
                  remu         t1, tp, s5
                  mul          t1, tp, zero
                  c.srli       a5, 7
                  srl          s4, a4, s8
                  c.sub        a4, s0
                  mul          t6, s8, s1
                  divu         a1, zero, a6
                  mulh         s1, zero, a4
                  lui          t6, 895139
                  c.sub        a5, a2
                  mulhsu       t0, t4, ra
                  slt          a5, s7, s3
                  nop
                  xori         a7, s4, -298
                  c.srli       s0, 6
                  add          t6, gp, a0
                  c.sub        a4, a1
                  c.li         a3, 30
                  sltiu        tp, a4, -1413
                  rem          t3, s4, s5
                  sra          t0, s9, s2
                  sltu         s11, a4, t0
                  sltu         tp, s0, t1
                  lui          s11, 624175
                  mulh         a4, sp, t3
                  mulh         a6, s6, a3
                  c.sub        a4, a0
                  slt          t5, ra, gp
                  mulh         a6, a4, s0
                  srl          s1, tp, t6
                  xor          t3, t2, s10
                  sra          s1, s11, s5
                  c.sub        a2, a1
                  c.srli       a2, 15
                  c.mv         s9, a7
                  mulhsu       gp, s8, s5
                  c.addi       s5, -1
                  c.add        s10, s3
                  c.andi       a2, 19
                  c.li         s7, -1
                  nop
                  mulh         s6, s9, s1
                  addi         a5, s3, -310
                  slli         a5, t2, 6
                  mulhsu       a7, sp, s2
                  c.srli       a3, 25
                  sub          s1, t3, t4
                  c.lui        s11, 11
                  sll          tp, s4, a2
                  nop
                  mulhsu       t0, a7, s0
                  remu         t6, ra, s10
                  c.srai       a3, 4
                  sra          ra, t4, s1
                  c.mv         t1, s4
                  srai         a6, a1, 17
                  srli         t2, s6, 26
                  nop
                  c.mv         a2, s1
                  xori         a2, a5, -441
                  srli         t2, a2, 12
                  or           t4, a1, s0
                  auipc        t2, 779894
                  slt          s5, s9, a1
                  mulh         zero, tp, sp
                  mulhsu       s6, a4, t0
                  or           s9, a5, s10
                  nop
                  sub          t5, s3, a0
                  or           gp, s4, t0
                  mulh         a4, t2, t0
                  nop
                  c.li         s4, 0
                  add          ra, t2, t3
                  remu         t1, s3, sp
                  xor          s9, s9, a7
                  srli         t6, s0, 12
                  remu         zero, sp, a1
                  sra          zero, s5, a6
                  sra          s1, a7, a3
                  srai         a4, s11, 11
                  c.slli       ra, 15
                  slti         a1, tp, 807
                  nop
                  xor          t6, ra, t4
                  c.mv         s4, a5
                  c.srli       a3, 23
                  c.xor        a5, a0
                  mulhu        a4, s7, s9
                  mul          s9, ra, s10
                  sltu         t0, a7, t3
                  sub          s6, s5, t1
                  divu         s1, s7, s4
                  mulhsu       a5, s9, a4
                  sltu         s2, t0, s5
                  ori          s2, zero, 851
                  xor          s9, ra, ra
                  mulhu        t3, a5, s9
                  lui          t3, 122718
                  c.mv         a5, s6
                  slt          a1, a0, s1
                  c.xor        a1, a3
                  mulhsu       s1, t6, t5
                  mulh         s9, s8, t5
                  sll          ra, a6, s11
                  c.lui        s5, 3
                  slti         t2, s4, 1028
                  mulhu        t0, s1, s1
                  or           t6, a5, t3
                  and          a5, t4, t5
                  c.andi       a5, -1
                  sltu         s6, t3, s9
                  sra          a5, s8, a5
                  remu         tp, s3, s4
                  xori         gp, t5, 1733
                  c.or         s1, s0
                  srl          t3, a2, t4
                  or           s5, s10, s2
                  sltu         a6, t4, s2
                  or           t5, a6, a3
                  sltiu        a4, s11, -504
                  lui          s6, 714359
                  sll          t4, a2, tp
                  srl          s7, a0, t4
                  srl          t5, s9, t4
                  srli         a7, a5, 20
                  mul          s0, t5, s10
                  sub          a4, a7, t2
                  c.andi       a4, 19
                  c.lui        s6, 25
                  sra          s11, t2, a3
                  c.addi       s7, 26
                  mulhu        t2, s3, s1
                  remu         a4, t1, s5
                  lui          t3, 897273
                  xor          s9, s4, zero
                  and          a1, s11, a7
                  mulhsu       tp, s9, t3
                  mul          ra, sp, s9
                  ori          a4, a6, 1716
                  mulhu        s7, s11, s9
                  mulhu        s10, a6, gp
                  slti         s11, gp, 228
                  mul          a4, a6, a7
                  and          t1, a0, s11
                  sltiu        s5, ra, 1903
                  srli         s0, t4, 14
                  xori         a4, s7, 340
                  addi         t0, s2, 1558
                  c.addi       s6, -1
                  c.addi       a5, 4
                  srli         gp, t5, 19
                  c.and        s1, a4
                  c.or         s0, a4
                  c.andi       a5, -1
                  xor          a2, gp, ra
                  c.sub        a3, s1
                  srli         t0, tp, 11
                  c.add        t0, a7
                  and          s0, s10, t5
                  and          a3, tp, t4
                  c.li         a2, 11
                  mul          tp, tp, t5
                  c.nop
                  xor          tp, zero, t4
                  c.nop
                  xor          tp, a7, s9
                  remu         s2, sp, a3
                  sll          a6, tp, t0
                  c.andi       a5, 10
                  c.mv         ra, tp
                  c.srli       a2, 27
                  mulh         t4, s6, t4
                  rem          s1, s3, s7
                  or           zero, s9, t2
                  slli         a3, s8, 11
                  c.addi       a7, -1
                  srli         s7, s2, 20
                  c.srai       a1, 16
                  srl          a4, a4, s10
                  auipc        gp, 88762
                  c.li         t2, 23
                  remu         s1, s9, a0
                  c.and        s1, s0
                  sltu         ra, s1, s6
                  srli         s0, a7, 13
                  ori          a7, s6, -336
                  and          tp, s3, t4
                  mulhu        zero, s0, s9
                  c.addi       a4, 4
                  c.srli       a4, 31
                  div          a3, a5, a5
                  c.and        a5, a3
                  nop
                  or           t0, tp, ra
                  sll          zero, t0, s3
                  nop
                  and          tp, zero, t0
                  mulh         s5, s0, sp
                  div          s0, a7, a2
                  mulhu        tp, a2, a7
                  c.lui        a4, 7
                  c.addi       t5, -1
                  xor          t0, zero, sp
                  slti         a4, sp, 516
                  c.or         s0, a5
                  sra          a5, s6, t1
                  divu         s9, ra, t2
                  xor          a2, s1, t1
                  remu         a6, t1, sp
                  add          t5, s2, zero
                  slti         ra, a0, -673
                  slt          t6, s6, a5
                  mul          a3, a2, t4
                  xori         t4, zero, -1181
                  c.lui        ra, 16
                  srai         s2, a3, 19
                  and          s0, gp, t0
                  c.andi       a2, 17
                  mulhu        gp, s6, t2
                  addi         t1, zero, -41
                  slt          s0, t6, t5
                  nop
                  addi         t0, t2, -453
                  c.add        s2, t3
                  nop
                  andi         tp, ra, 1177
                  c.nop
                  ori          s0, a5, 1979
                  rem          ra, s11, s11
                  sll          gp, a2, s10
                  c.slli       s11, 8
                  addi         t0, s10, 1120
                  nop
                  slli         t1, s6, 7
                  c.mv         s11, s3
                  srai         s2, s0, 16
                  add          t0, a3, s1
                  c.nop
                  sltu         t3, s11, t3
                  sll          a7, a3, s8
                  c.srli       a5, 30
                  divu         zero, a1, a2
                  slti         a7, gp, 70
                  c.andi       a4, 4
                  srl          s5, a6, s8
                  sub          s7, t2, t2
                  add          a7, s2, gp
                  slt          a0, a1, a2
                  mul          s10, s4, a1
                  c.sub        a3, s0
                  xori         t1, s9, -1899
                  and          a0, s0, a2
                  div          ra, ra, s4
                  srli         s2, s0, 5
                  xori         s6, t6, 630
                  xori         zero, s9, 1935
                  mul          t0, t6, sp
                  c.andi       a5, -1
                  c.slli       s9, 18
                  nop
                  slt          a6, s8, t1
                  sll          a2, a5, s10
                  nop
                  c.addi       s2, 1
                  or           ra, s4, s2
                  mulhsu       ra, tp, s1
                  srli         ra, s6, 7
                  sltu         a7, t5, a5
                  c.add        ra, tp
                  c.andi       a5, -1
                  div          s4, a4, a5
                  sra          s2, a2, s0
                  divu         s11, a7, s9
                  andi         ra, a4, 589
                  srai         s9, t3, 23
                  sra          a5, t5, a3
                  and          a3, t4, s1
                  sltiu        t2, s6, -2048
                  c.nop
                  mulhu        zero, t2, a0
                  mulhsu       t1, t0, t4
                  and          a3, t3, s5
                  c.srli       a1, 24
                  mulhu        a2, s9, s11
                  srai         a6, s8, 20
                  auipc        t0, 127100
                  slt          a7, s4, t5
                  rem          ra, s9, t5
                  srai         s1, s7, 7
                  remu         a7, t4, s7
                  srai         a4, a7, 20
                  srai         s9, s9, 1
                  c.or         a4, a0
                  div          t1, s11, s4
                  xori         s4, s5, 528
                  nop
                  lui          t1, 92986
                  c.andi       s1, 25
                  c.xor        a1, a3
                  c.sub        a3, a0
                  slt          zero, t0, a1
                  sra          t6, s7, gp
                  or           s2, s0, zero
                  auipc        s10, 699973
                  c.srai       a1, 30
                  slli         s5, t5, 30
                  sra          a2, t3, s3
                  sltiu        t0, s0, 751
                  ori          s7, t6, 706
                  c.xor        a1, s1
                  sltiu        a5, a7, -1311
                  c.slli       s6, 11
                  div          a7, sp, s11
                  xor          s11, a7, s1
                  lui          tp, 514487
                  xori         s6, a1, 235
                  rem          tp, a5, zero
                  auipc        a4, 269023
                  c.or         s1, a4
                  c.xor        a4, a4
                  xori         s7, s5, -1235
                  c.mv         a4, t1
                  nop
                  sub          t6, a6, a2
                  mulh         s11, a0, t3
                  auipc        gp, 746723
                  add          ra, s1, a1
                  srli         s6, t2, 8
                  c.lui        a5, 4
                  add          gp, t6, tp
                  c.mv         a4, t6
                  xor          s11, a4, a3
                  c.sub        s0, a2
                  andi         t1, a1, 1364
                  remu         s0, a1, s2
                  lui          t2, 668209
                  srli         s4, s9, 30
                  srai         s9, s6, 11
                  rem          t1, t0, t1
                  c.or         a1, a0
                  sra          a6, s1, t6
                  c.andi       a1, 31
                  add          t4, s10, s9
                  c.sub        a3, a0
                  c.mv         s0, s8
                  slt          s7, sp, s7
                  c.andi       a4, 17
                  c.add        t3, t5
                  slt          t4, a0, s7
                  c.lui        s1, 21
                  srl          a1, t6, s4
                  c.srli       a1, 4
                  slti         s4, t6, 1866
                  and          ra, a1, sp
                  c.srai       a5, 4
                  c.li         t6, 31
                  sltu         a5, s4, ra
                  slti         s5, s2, 624
                  slt          a7, gp, t5
                  slti         s5, a6, 1445
                  mulh         a4, t5, a4
                  srli         t1, t5, 31
                  slt          a7, a7, tp
                  srl          t0, ra, s11
                  c.xor        a4, s0
                  c.mv         s10, s1
                  andi         t5, t1, 1197
                  slli         s10, t1, 28
                  c.xor        a3, a2
                  c.and        a2, a2
                  c.xor        a5, s1
                  c.and        a0, s1
                  nop
                  sltiu        t6, s0, 532
                  and          tp, s9, s5
                  mulhsu       s4, s3, t5
                  c.lui        t2, 6
                  add          t6, s8, a4
                  div          t4, tp, s8
                  auipc        t5, 488050
                  or           s11, s6, a5
                  sll          s1, zero, sp
                  rem          s0, a5, a6
                  sra          a4, t6, s5
                  c.lui        gp, 4
                  xori         s2, t5, -2027
                  srai         t3, t0, 12
                  divu         t3, gp, a6
                  srai         a4, s6, 18
                  sltiu        zero, tp, 1832
                  xori         s9, a6, -281
                  andi         a7, s2, -1446
                  slt          s11, t3, sp
                  andi         a6, t0, 2011
                  or           a5, s2, a4
                  c.srli       a1, 30
                  srl          s10, s1, s3
                  slt          a5, s5, s4
                  and          s10, sp, ra
                  sltiu        a6, a0, -2006
                  sltu         t3, s11, ra
                  c.and        a1, a4
                  mulh         zero, sp, t2
                  rem          s6, s6, t1
                  c.add        t1, s11
                  c.add        a0, sp
                  mulhu        a4, t2, zero
                  c.or         a1, a5
                  slli         t4, t3, 31
                  srl          t5, ra, s6
                  c.srli       a4, 14
                  c.mv         ra, a5
                  nop
                  sll          t0, a2, t4
                  slti         t4, t1, -1684
                  c.slli       a3, 11
                  mulhsu       t0, gp, t2
                  andi         t1, s5, -1337
                  sltiu        s7, s4, -1063
                  c.addi       ra, 5
                  mulhsu       t4, a2, s3
                  mulhsu       s4, gp, gp
                  lui          gp, 412003
                  slt          s4, zero, a5
                  xori         gp, a2, 149
                  mul          s4, a6, a2
                  c.srai       a2, 9
                  sltu         a2, ra, a0
                  sltiu        t6, t4, -5
                  mulhsu       s6, ra, a6
                  mul          t0, t6, s7
                  sll          t3, t6, s9
                  sltiu        a1, s0, 1052
                  andi         s10, t2, 1904
                  c.lui        s10, 10
                  c.or         a0, a5
                  c.mv         a0, t6
                  c.or         s1, a1
                  slti         a0, sp, -1484
                  andi         t5, t1, 1570
                  andi         t5, zero, -1542
                  sll          a5, t5, t5
                  sll          t5, s0, tp
                  c.mv         a3, a0
                  c.mv         t4, ra
                  mulhu        t5, a6, s7
                  c.nop
                  andi         s11, a6, -598
                  c.addi       t3, -1
                  c.xor        a2, a3
                  sltu         a7, s2, a0
                  lui          a4, 469216
                  addi         a7, t5, 1426
                  slt          t3, a4, t4
                  srli         a0, s6, 29
                  ori          s6, s7, -853
                  or           t4, s7, t3
                  remu         t2, a0, s5
                  c.add        a5, t5
                  or           s11, s7, a0
                  mulhu        s9, a3, s5
                  mulhu        s0, gp, gp
                  c.nop
                  add          t0, s7, s11
                  sltiu        s0, s4, 194
                  sra          ra, a1, t0
                  remu         a4, s2, s3
                  auipc        t0, 114020
                  slti         a6, s11, -2033
                  addi         s11, sp, -526
                  c.or         s0, s0
                  mulh         zero, s1, t5
                  mul          t0, ra, s4
                  div          a2, t5, a1
                  slti         s2, s0, -1967
                  c.add        s6, s5
                  mul          t2, s2, s6
                  and          s2, t4, a2
                  andi         t0, t5, 691
                  auipc        a3, 654340
                  c.and        s1, s1
                  srli         s2, s4, 27
                  c.andi       s0, -1
                  srai         s5, a2, 1
                  slli         s5, s7, 5
                  c.or         a3, s0
                  mulh         s4, t4, s0
                  sra          s6, t0, zero
                  slti         a4, gp, 1258
                  sub          t5, t3, a0
                  rem          zero, t4, ra
                  c.addi       a7, -1
                  sltu         s10, zero, s4
                  c.and        a0, a5
                  or           gp, t6, ra
                  ori          t3, s6, 1566
                  c.lui        s0, 11
                  sub          a6, ra, gp
                  div          a0, a7, sp
                  xori         a4, t2, 969
                  c.xor        a4, s1
                  lui          tp, 952120
                  rem          s0, s0, s7
                  or           gp, a0, t3
                  c.li         s11, -1
                  ori          ra, a1, -1570
                  c.or         a0, s1
                  mulhsu       s10, a2, s2
                  c.xor        a5, s0
                  c.slli       s4, 22
                  c.nop
                  c.or         a3, a4
                  xori         zero, s4, -122
                  c.xor        a1, s0
                  or           a3, a2, s1
                  srl          t5, s3, s11
                  mul          gp, a2, gp
                  c.srai       s1, 23
                  sltiu        t1, s3, 153
                  add          zero, s6, s0
                  c.andi       a3, -1
                  c.andi       a3, -1
                  c.addi       t6, 20
                  or           a3, s1, a7
                  auipc        zero, 743138
                  mul          gp, gp, sp
                  sub          zero, s0, a0
                  andi         s4, a5, -1092
                  addi         s0, s4, -43
                  mulhu        s11, s5, s8
                  c.srli       s0, 30
                  c.srli       a2, 13
                  mulhsu       tp, t4, ra
                  add          a6, t4, s0
                  sra          a4, a2, t0
                  auipc        s5, 868963
                  slt          s11, t4, t5
                  sltu         t6, a6, t0
                  mul          tp, t6, t0
                  divu         s10, a2, t1
                  auipc        s5, 919780
                  xori         s2, s8, -1388
                  c.andi       s1, 10
                  c.andi       a1, 11
                  rem          t2, s2, s2
                  c.or         a3, a5
                  c.li         s2, 20
                  c.srai       a1, 22
                  c.nop
                  or           s4, gp, s3
                  slt          t5, t1, zero
                  sub          ra, a4, s2
                  mulhsu       a4, a0, s9
                  srl          s9, a6, s6
                  nop
                  srli         a3, s1, 23
                  rem          s7, a5, t4
                  rem          t1, t3, t5
                  c.srai       a0, 11
                  c.xor        a5, s0
                  sub          a4, t0, a6
                  addi         s2, gp, -1243
                  auipc        s5, 942908
                  add          s4, s1, s6
                  remu         s10, a5, s4
                  addi         s9, a6, -835
                  xori         s10, ra, -1488
                  or           a2, t4, t0
                  c.add        s10, sp
                  c.slli       tp, 26
                  c.andi       s1, 10
                  mulhu        t1, t0, a5
                  sltiu        t3, s3, -909
                  and          s2, t3, a7
                  nop
                  c.add        s2, s7
                  sub          t1, ra, t5
                  srl          a1, t5, ra
                  c.sub        a0, s1
                  c.li         t2, 5
                  slti         s0, t5, -940
                  nop
                  srl          s0, s10, s7
                  c.add        a3, a7
                  c.li         t0, 27
                  sltiu        a3, a3, 1258
                  or           a4, a6, s3
                  c.addi       a0, -1
                  mul          a2, s10, s4
                  slt          a0, s6, t0
                  lui          t4, 807106
                  remu         s5, ra, tp
                  xor          s10, s10, s6
                  c.nop
                  nop
                  add          tp, t4, zero
                  mul          a6, zero, a2
                  c.and        a1, a5
                  c.addi       s4, 23
                  srli         s2, gp, 7
                  div          s6, sp, s6
                  andi         ra, ra, 154
                  c.sub        a3, s0
                  ori          t5, s10, -244
                  c.slli       a7, 14
                  sub          a2, s6, zero
                  xori         t4, a7, 1951
                  c.srai       a0, 23
                  divu         a0, s7, s0
                  sra          s5, tp, t6
                  slli         a5, a5, 23
                  c.or         a3, a0
                  sub          t5, s10, s11
                  c.nop
                  add          zero, t6, t3
                  slti         gp, a1, -1580
                  mulh         s7, a5, t1
                  auipc        t1, 337199
                  nop
                  auipc        t2, 1045371
                  andi         s0, s6, 1368
                  addi         s7, a6, 546
                  sltiu        a3, s4, -1404
                  divu         s1, a2, s0
                  c.srli       s1, 10
                  mulh         zero, t5, a7
                  lui          s1, 201863
                  rem          a7, ra, s0
                  slt          s1, gp, s8
                  remu         a4, s4, s1
                  or           t6, a7, tp
                  sub          s0, a4, s11
                  slti         t6, a3, 1924
                  slt          a5, s2, gp
                  div          gp, s3, tp
                  srai         a3, s11, 26
                  slt          ra, t1, t1
                  addi         s11, t3, -792
                  lui          t1, 598083
                  slt          s4, a0, a0
                  c.srai       s0, 19
                  c.nop
                  srai         t2, s1, 12
                  lui          t0, 934327
                  c.and        a3, a5
                  ori          s2, tp, 221
                  srli         t1, ra, 18
                  c.srai       a5, 14
                  c.addi       tp, -1
                  c.slli       t4, 7
                  sll          a3, s2, t6
                  c.srli       a4, 12
                  remu         a0, zero, t1
                  auipc        s10, 499080
                  c.or         s0, a2
                  andi         s7, ra, -1449
                  rem          t5, a3, a7
                  xor          a1, s1, zero
                  c.xor        a1, a2
                  mulhsu       a1, a1, sp
                  slti         a5, gp, 587
                  sra          t3, tp, a1
                  c.mv         s10, a3
                  c.slli       a5, 12
                  c.or         a4, a2
                  sltu         gp, a6, s8
                  divu         a1, a6, t3
                  slti         s11, a3, -33
                  andi         a0, a2, -1655
                  mulhu        gp, a0, t5
                  mulhu        ra, s5, s4
                  c.lui        s0, 2
                  slti         gp, a1, 1514
                  rem          t1, a1, t3
                  c.li         t2, 15
                  nop
                  mulhsu       t6, t1, s5
                  srai         t5, a0, 18
                  or           zero, a1, s2
                  divu         t4, a3, a5
                  auipc        s2, 435885
                  sltu         a6, s6, ra
                  remu         t1, s2, s10
                  sll          gp, a1, t6
                  sltu         a6, tp, zero
                  rem          s10, zero, t1
                  c.lui        a5, 27
                  nop
                  c.addi       a1, 2
                  c.srli       a0, 2
                  slli         a6, s7, 24
                  sub          t2, s4, a6
                  andi         gp, a4, -403
                  mulhu        s11, s2, t0
                  c.srli       a2, 2
                  c.addi       a2, -1
                  divu         t3, s0, a5
                  and          a4, a1, s1
                  rem          t0, sp, zero
                  andi         s10, ra, 550
                  andi         gp, t0, -1970
                  sll          s7, s0, s2
                  lui          t5, 579569
                  sltiu        s11, s8, -131
                  sub          s7, s11, s3
                  divu         s1, t4, s10
                  mulhu        a6, s0, t1
                  mulh         t4, t3, t4
                  sltu         s6, s10, a6
                  c.or         a1, s0
                  c.srli       a5, 8
                  c.slli       s5, 1
                  xor          t0, s11, t3
                  or           t4, a4, s11
                  sub          ra, s5, a5
                  c.slli       s9, 16
                  c.or         s1, a5
                  nop
                  rem          t0, s5, ra
                  srli         a0, t6, 14
                  c.addi       gp, -1
                  xori         s5, t3, 816
                  ori          t5, sp, 1903
                  c.srai       s1, 24
                  c.li         a5, 0
                  rem          a4, t2, t5
                  xor          zero, a3, a6
                  c.lui        s11, 15
                  slt          s4, a7, gp
                  sll          s1, s7, s6
                  sltu         s6, t5, t4
                  srli         zero, t1, 19
                  div          zero, t4, t2
                  mulhsu       a0, t4, t1
                  c.and        a5, a5
                  rem          s0, t0, tp
                  and          a1, s2, t6
                  mulhsu       t5, s11, s9
                  c.xor        s1, a0
                  sll          a7, s10, gp
                  c.andi       a0, -1
                  mul          s11, a7, a3
                  c.srli       a4, 18
                  mulh         a0, t6, gp
                  c.slli       a4, 3
                  remu         s0, t5, t4
                  divu         s10, s0, a2
                  c.addi       s2, -1
                  c.andi       a0, 10
                  and          s4, a6, a4
                  c.sub        a2, s0
                  c.mv         t4, s9
                  sltu         s1, a5, s9
                  c.mv         a2, s0
                  c.and        a0, a5
                  c.srli       a5, 17
                  remu         t3, s4, s3
                  c.andi       a3, -1
                  add          a0, s3, ra
                  sra          ra, tp, s9
                  c.li         t5, -1
                  xori         a4, zero, 694
                  addi         a4, s1, 254
                  mulhsu       t1, s5, s4
                  c.nop
                  srl          t5, t0, s9
                  c.sub        a0, a0
                  slti         t1, t3, 1699
                  slli         gp, ra, 6
                  div          a3, ra, s6
                  andi         s4, ra, 566
                  srli         s9, s5, 8
                  sll          t3, gp, s1
                  srli         a1, ra, 19
                  c.mv         t3, gp
                  divu         a5, s0, zero
                  divu         tp, gp, s1
                  c.xor        a0, a1
                  divu         a2, s11, s8
                  auipc        s6, 1034429
                  c.lui        gp, 24
                  c.li         s10, 3
                  div          s11, sp, a7
                  c.sub        a2, s0
                  andi         t0, t4, 1387
                  sra          s5, zero, t3
                  div          s2, t2, tp
                  slli         s6, ra, 18
                  mulhsu       gp, s9, tp
                  c.mv         a1, s10
                  slt          a7, t3, a0
                  slt          s2, s1, s10
                  xor          s6, t5, t5
                  ori          t3, s0, 634
                  auipc        s2, 855145
                  c.or         a3, a4
                  or           t0, s3, tp
                  slt          s7, zero, s6
                  sra          a1, t1, sp
                  sub          s9, a6, a0
                  mul          a2, s1, tp
                  slli         t4, ra, 25
                  c.xor        s0, s0
                  c.mv         t0, t4
                  c.li         t3, -1
                  nop
                  remu         s11, t0, a7
                  sll          t2, zero, t1
                  xori         tp, a7, -826
                  c.srli       a5, 12
                  ori          a1, s6, -870
                  mulhsu       s2, tp, a5
                  c.andi       a2, -1
                  sll          s11, sp, a6
                  srli         tp, s4, 15
                  slli         gp, s7, 14
                  mulh         s9, gp, s4
                  c.mv         a4, sp
                  addi         a5, t5, -191
                  sub          s9, s2, a7
                  mulhsu       s2, ra, a4
                  slli         s4, a3, 11
                  c.srai       a5, 25
                  c.srai       a2, 21
                  remu         t6, s0, s2
                  sub          gp, a6, s5
                  c.mv         s7, t2
                  mulhsu       s10, a5, t1
                  c.srai       a4, 18
                  c.li         s2, -1
                  c.srai       s1, 6
                  sra          s7, a1, s6
                  remu         s1, s0, s0
                  mulhu        t6, a7, t4
                  c.sub        a3, a5
                  c.sub        a3, a5
                  slt          t2, a3, a6
                  c.or         s0, a5
                  mulhsu       a2, s3, a3
                  auipc        t0, 199627
                  andi         t6, a3, -1418
                  c.xor        s1, a3
                  xori         tp, a6, -1376
                  c.mv         s2, t6
                  auipc        a7, 1017948
                  auipc        zero, 362156
                  c.mv         s5, tp
                  remu         zero, a6, s8
                  srli         a3, t4, 22
                  c.lui        t0, 16
                  c.addi       tp, 17
                  andi         a7, a5, -211
                  ori          s0, t3, 1864
                  srl          s9, s7, a2
                  c.or         s1, a0
                  c.xor        a5, a0
                  slli         t6, zero, 17
                  c.xor        s1, a1
                  c.mv         t6, t6
                  c.add        s10, s9
                  and          s9, s11, s0
                  c.li         s6, -1
                  auipc        a1, 647447
                  c.srli       a0, 12
                  srai         t2, a5, 7
                  ori          t3, s6, 737
                  mulhsu       a0, gp, s8
                  ori          s2, s0, 1598
                  c.lui        a2, 7
                  c.addi       t4, -1
                  sra          s11, s11, s2
                  c.addi       t0, 16
                  or           zero, t6, t3
                  c.srli       a2, 13
                  xori         s11, a6, -1700
                  sltu         s11, t0, s11
                  srai         t5, gp, 4
                  c.srai       a1, 28
                  slti         s0, a4, -1591
                  rem          a6, s2, s4
                  auipc        t4, 221524
                  slt          t3, gp, a7
                  sltu         s10, a1, a4
                  c.add        s9, s6
                  mul          ra, s4, a6
                  c.nop
                  mulhu        s11, t0, a4
                  c.srai       s1, 23
                  srl          s11, s10, s9
                  sra          ra, s7, s1
                  xor          tp, s0, s11
                  c.addi       a7, -1
                  c.nop
                  slti         s10, s10, -317
                  sra          s4, a3, s2
                  auipc        s6, 539671
                  c.srai       s0, 14
                  c.or         a2, a1
                  remu         ra, a6, s0
                  remu         s2, s7, s9
                  remu         zero, s1, s4
                  c.xor        a5, s0
                  mulh         gp, t3, s1
                  slt          t0, s9, sp
                  slti         s7, sp, 1067
                  nop
                  lui          t1, 495062
                  xori         a2, s7, -1969
                  slli         s1, t5, 23
                  addi         tp, t3, -1290
                  ori          gp, a2, -1702
                  divu         t5, t0, a4
                  mulhsu       gp, s1, t1
                  c.andi       a0, 23
                  slti         s1, ra, 1469
                  srai         s7, a1, 16
                  rem          a2, sp, sp
                  and          tp, s7, t1
                  c.add        s2, s5
                  c.nop
                  rem          t5, t0, s3
                  nop
                  ori          a6, sp, -1130
                  divu         s6, t0, s5
                  lui          s5, 385393
                  c.srai       a1, 13
                  c.add        gp, s1
                  c.lui        a2, 16
                  sltu         t5, s1, s1
                  srai         gp, s0, 12
                  c.add        a0, t3
                  sll          a0, s5, ra
                  andi         t3, a4, 2023
                  c.sub        a1, a5
                  sll          s7, ra, s1
                  slt          t4, ra, t3
                  c.addi       s0, -1
                  andi         tp, s1, 1086
                  srl          s0, a2, t3
                  c.sub        a0, a3
                  addi         t5, s9, 861
                  or           t5, s11, t2
                  c.add        ra, s3
                  div          s11, s4, s10
                  c.srai       a0, 31
                  c.nop
                  sub          gp, sp, a4
                  andi         t0, a2, -1071
                  div          a5, t0, t0
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s10, 0xffffffff
                  li           t0, 0x80000000
                  li           t2, 0x0
                  li           a0, 0x0
                  li           s5, 0x0
                  li           t5, 0x0
                  li           a4, 0x59f87bc3
                  li           s2, 0xffffffff
                  li           t4, 0x9f3226c7
                  mul          t4, a4, t2
                  div          t2, t2, t2
                  div          t4, s0, t0
                  remu         s5, t4, s0
                  auipc        s0, 304081
                  addi         a0, t0, -669
                  addi         s10, s2, -970
                  mulh         s0, s2, a0
                  addi         t2, t4, -1859
                  add          t0, t5, t5
                  divu         t2, s2, t4
                  mul          s0, s2, t2
                  mul          t4, a0, t2
                  lui          a0, 375731
                  nop
                  mul          t2, t4, t2
                  mul          a0, s5, a4
                  sub          s0, t5, s5
                  auipc        t2, 206931
                  mul          t2, s2, t0
                  remu         a0, t4, t2
                  mulh         t2, t2, s2
                  divu         t4, a4, t5
                  sub          t2, a4, t2
                  mulhsu       t5, s0, t4 #end riscv_int_numeric_corner_stream_2
                  mulhsu       t6, s3, s0
                  nop
                  nop
                  sra          t5, gp, a2
                  sub          t2, s7, s0
                  or           s10, s6, t2
                  c.sub        a4, a3
                  remu         a1, a5, a2
                  auipc        gp, 924396
                  mulhsu       zero, a2, s8
                  c.lui        s2, 30
                  or           a1, a3, s4
                  c.xor        a0, a5
                  sra          s10, tp, ra
                  addi         s6, t2, 2043
                  ori          a6, t2, -1293
                  auipc        gp, 16966
                  rem          gp, s0, ra
                  srai         a1, zero, 16
                  mul          a6, s0, s9
                  ori          a2, t4, 1726
                  add          t6, t3, s1
                  mul          s4, s2, a1
                  c.andi       a3, 24
                  c.andi       a1, -1
                  c.and        a3, a3
                  mulhu        s1, a4, s7
                  rem          t3, t1, s8
                  c.and        s0, a2
                  c.add        s2, t5
                  c.srli       a5, 18
                  ori          s2, zero, 298
                  rem          s10, t3, s7
                  slti         t3, t5, 928
                  xor          s1, a7, zero
                  mulh         s11, a1, s0
                  c.xor        s1, a2
                  div          t3, a6, tp
                  c.nop
                  srai         t6, s9, 5
                  c.sub        s1, a2
                  c.and        a2, a0
                  add          s6, s4, a6
                  srli         zero, s6, 12
                  addi         a1, a7, 1968
                  sub          s6, a1, zero
                  or           t6, zero, t0
                  slti         a1, s6, -1945
                  mulhu        t0, zero, s6
                  mul          s9, t1, t5
                  div          t3, s8, sp
                  and          s1, a0, a7
                  add          s10, t4, ra
                  auipc        s4, 813958
                  mulhsu       s11, sp, t2
                  andi         s11, s3, -1416
                  slli         a0, a0, 27
                  sub          t4, s4, a6
                  srl          ra, a3, t6
                  rem          t0, s1, a2
                  sub          a1, t1, a4
                  xori         t1, s2, -1487
                  c.sub        a3, a0
                  xori         t2, a0, 1042
                  srl          a5, s4, s1
                  c.nop
                  rem          s2, a1, t3
                  c.and        a4, a1
                  c.nop
                  c.srli       a2, 3
                  c.addi       s11, -1
                  add          gp, ra, ra
                  srl          zero, zero, t5
                  c.addi       t5, -1
                  mulh         gp, s9, s5
                  c.lui        a1, 12
                  add          s4, a2, t3
                  divu         t1, s8, s7
                  xori         a6, s5, -657
                  xori         t0, a0, -1921
                  c.or         s0, a5
                  sltu         a4, s0, s3
                  c.lui        gp, 20
                  slti         s2, a6, 826
                  c.li         s11, 20
                  or           a0, t4, a5
                  auipc        a5, 43652
                  remu         t0, s3, t6
                  sll          s0, t0, t5
                  slt          a0, s6, s1
                  sltiu        s7, s8, -349
                  sra          s2, s5, t1
                  c.li         s7, -1
                  xor          t3, s11, s1
                  c.and        s0, a2
                  sltiu        a7, ra, 286
                  nop
                  andi         a0, a3, 1279
                  c.xor        a2, s0
                  slt          t1, zero, t3
                  c.srli       a1, 9
                  srai         s11, s3, 4
                  nop
                  mulhsu       a2, t1, s4
                  slti         a3, t5, -1518
                  divu         a4, sp, t6
                  nop
                  xor          s10, a3, ra
                  c.and        a1, a2
                  ori          s5, t0, 1320
                  mulhu        s2, t0, a6
                  srai         ra, t6, 1
                  and          a1, t2, a2
                  ori          s6, a0, -431
                  c.or         s1, a5
                  remu         s6, ra, t0
                  xori         t1, a1, -1511
                  c.srli       s1, 6
                  remu         s5, a2, t2
                  andi         t5, t0, 1103
                  c.andi       s1, -1
                  c.add        t2, s11
                  c.addi       t3, 7
                  c.srai       a3, 19
                  lui          s7, 860741
                  xori         t2, s2, -850
                  mulhu        s2, sp, a4
                  sltu         t5, s0, s0
                  andi         s10, a5, -1680
                  sltu         t3, s10, s8
                  remu         t1, s3, a6
                  c.slli       t1, 16
                  addi         s2, a1, -1171
                  sra          s9, a7, a5
                  c.li         t0, -1
                  or           t3, zero, s9
                  sltu         zero, tp, s1
                  srai         t6, s5, 7
                  remu         s2, a1, s11
                  c.sub        a4, a3
                  sltiu        t6, zero, -297
                  sub          a5, t4, s6
                  slli         s10, s8, 14
                  slli         s10, s7, 25
                  or           s2, s2, tp
                  andi         a2, s5, 774
                  sub          s11, gp, s1
                  rem          tp, gp, s6
                  sub          gp, t2, a0
                  divu         a7, t1, t3
                  sll          a7, a5, s6
                  sll          ra, zero, s2
                  mulh         s6, s1, a2
                  and          s5, gp, s11
                  c.srai       a5, 30
                  c.add        s6, t2
                  c.lui        tp, 19
                  addi         s0, t2, -1371
                  or           s9, a5, t0
                  and          a0, ra, a6
                  lui          a0, 27275
                  andi         s2, t1, -1701
                  div          t6, tp, s7
                  auipc        a5, 404232
                  c.sub        a4, a4
                  c.xor        s1, a3
                  c.and        a4, a5
                  sra          ra, gp, t6
                  sra          t4, s0, s4
                  sltu         a1, a7, t4
                  slti         s10, gp, -1180
                  slli         t5, gp, 28
                  sltiu        a6, s11, 1446
                  add          s1, s7, t3
                  mulhsu       ra, t3, a5
                  slti         s6, s7, 511
                  add          a0, t1, s4
                  c.sub        a2, s1
                  and          gp, a2, t2
                  remu         s4, s5, ra
                  xori         t3, a0, 600
                  mulhsu       a3, a3, t2
                  xori         zero, a3, 13
                  c.addi       tp, 28
                  andi         t2, a2, 1144
                  slt          s7, s9, gp
                  xor          t1, t3, s4
                  lui          zero, 437812
                  c.andi       a3, -1
                  c.add        t1, a1
                  c.or         s1, a3
                  srai         s9, zero, 5
                  slli         tp, t2, 16
                  xori         t0, s6, 503
                  mulh         t1, a2, t4
                  c.xor        s0, a2
                  srli         a0, a4, 21
                  div          a7, a0, t1
                  mulhsu       a1, t2, a5
                  sll          a5, s7, zero
                  slti         s10, t4, -497
                  slli         s1, a3, 5
                  addi         a5, t2, 387
                  or           s10, zero, a7
                  c.add        t5, t5
                  sltu         s1, s3, t3
                  slli         a3, sp, 8
                  xor          a5, s5, s11
                  andi         s0, a1, 49
                  lui          s4, 3031
                  mul          a6, a6, ra
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s10, 0xffffffff
                  li           s4, 0x80000000
                  li           t3, 0xffffffff
                  li           s5, 0x0
                  li           a3, 0xffffffff
                  li           t4, 0xd3d0a6cc
                  li           t1, 0x0
                  li           a7, 0x0
                  li           s1, 0xff259f4
                  divu         a3, s10, t4
                  add          t6, s4, a3
                  add          t6, t6, s10
                  div          a3, t6, t6
                  mul          s10, s1, t4
                  div          s5, t1, t1
                  auipc        t3, 127364
                  div          s10, t3, a7
                  div          s4, t6, t1
                  lui          a3, 868743
                  mulh         s1, a7, t6
                  auipc        s1, 267010
                  auipc        t1, 874700
                  divu         s4, t6, t6
                  mulh         s4, t3, a3
                  mulhu        s10, t6, s10
                  auipc        t6, 564399
                  divu         t3, t3, s1
                  sub          s10, t1, t6
                  mul          s1, t1, s4
                  nop
                  add          a3, t1, a7
                  rem          a7, t3, a7
                  auipc        s10, 104208
                  mulhu        t6, t1, a3
                  mulhsu       t3, s10, s5
                  mul          s10, t1, t4 #end riscv_int_numeric_corner_stream_14
                  nop
                  c.lui        a4, 28
                  rem          s2, t5, s10
                  c.andi       s1, -1
                  c.nop
                  lui          gp, 148154
                  c.andi       a4, 7
                  c.addi       t2, -1
                  mul          s1, sp, gp
                  c.andi       a4, -1
                  div          s11, t1, t1
                  and          t0, sp, gp
                  c.sub        s1, a3
                  nop
                  c.xor        a5, a2
                  c.mv         a7, a0
                  add          a3, s6, a1
                  c.sub        a3, a5
                  mulhu        a6, s7, gp
                  rem          s4, a5, tp
                  c.sub        a5, a2
                  mulhsu       a5, ra, sp
                  sll          t3, a7, s5
                  c.mv         tp, s9
                  rem          s0, gp, t2
                  c.nop
                  auipc        s11, 311931
                  and          ra, s10, tp
                  ori          zero, a7, -169
                  sll          t5, a0, a4
                  mul          a6, t4, a2
                  rem          t2, s4, s9
                  mulhu        s2, s11, a3
                  mul          a3, t0, s3
                  srai         t0, t4, 19
                  div          gp, a3, s2
                  xor          a1, sp, t0
                  c.li         t1, -1
                  slli         s1, s8, 4
                  slti         s10, sp, 1769
                  andi         s1, t6, 628
                  andi         a5, a5, 641
                  mul          s11, a5, a0
                  addi         a6, s9, -596
                  addi         t6, s10, -898
                  or           s11, a4, s2
                  c.add        a0, s3
                  remu         t1, sp, s0
                  divu         s11, t3, s7
                  auipc        s2, 865768
                  sub          t1, t2, s6
                  c.and        a3, s1
                  mulh         a6, s8, t5
                  sub          s7, t0, s1
                  c.mv         s7, a3
                  mulhu        s9, s9, ra
                  divu         a0, tp, s5
                  and          s9, zero, s5
                  sltu         t2, s5, s5
                  xor          t0, s1, zero
                  c.slli       a3, 2
                  rem          a1, tp, a1
                  c.xor        a1, s1
                  c.lui        t4, 10
                  sll          s10, t5, tp
                  slti         s2, s11, 899
                  auipc        zero, 607876
                  mul          gp, t3, zero
                  nop
                  auipc        zero, 1031729
                  c.add        s2, a6
                  div          a0, a7, t5
                  c.add        t1, a7
                  xori         s0, a6, 406
                  rem          s1, t5, t1
                  c.srai       a2, 15
                  sltu         a7, s2, t4
                  andi         t0, t4, -88
                  c.srli       a5, 7
                  remu         s10, t5, tp
                  xor          s6, a5, s8
                  c.mv         s2, tp
                  srl          a0, tp, s6
                  mul          s1, s4, tp
                  c.srai       a3, 12
                  rem          t4, t1, t0
                  auipc        a4, 963950
                  c.mv         a6, a4
                  auipc        a0, 131862
                  mulhsu       a1, t4, a0
                  rem          a0, a3, a7
                  sub          t4, t2, s2
                  c.sub        a3, s1
                  addi         a6, tp, 1649
                  c.nop
                  c.srai       a0, 10
                  mulh         s6, s7, a6
                  xori         zero, tp, -1033
                  ori          a6, t4, 1480
                  c.nop
                  srai         t3, ra, 23
                  add          s4, gp, s2
                  mulhu        a3, sp, a4
                  c.srai       s0, 4
                  sll          t3, s4, t2
                  c.srli       s0, 7
                  c.lui        gp, 21
                  lui          t1, 529507
                  mulhsu       s7, s6, s11
                  c.and        a2, s0
                  c.or         a0, a0
                  or           s2, s10, s3
                  c.sub        a3, s1
                  slt          ra, s0, s10
                  remu         s5, a1, s11
                  nop
                  lui          s11, 292715
                  slt          s6, zero, s9
                  sll          s2, a3, t1
                  mulh         a2, tp, t1
                  lui          gp, 438869
                  divu         a7, s8, a3
                  c.sub        a5, a0
                  srli         s9, a3, 16
                  sll          ra, ra, s11
                  srai         s7, t5, 31
                  xori         s10, t6, -946
                  srai         gp, t3, 17
                  slli         s9, t1, 2
                  lui          s11, 305681
                  lui          s2, 757654
                  add          t5, s3, s10
                  c.sub        a2, s1
                  remu         a0, s10, gp
                  c.li         a5, -1
                  mulhsu       t1, t3, s4
                  slt          zero, s5, a6
                  srai         a7, s0, 17
                  c.addi       s1, -1
                  mulh         s0, zero, a3
                  divu         a0, s11, t6
                  slli         t4, t1, 31
                  c.nop
                  divu         t1, t6, s6
                  c.srai       a1, 9
                  c.mv         s6, t6
                  c.nop
                  sub          ra, sp, s1
                  mulhu        zero, t1, a0
                  c.srai       a5, 30
                  c.lui        s2, 20
                  c.slli       ra, 28
                  c.xor        a4, a3
                  srl          s0, s2, s11
                  divu         s6, s9, zero
                  and          a0, a5, s7
                  div          s2, a4, ra
                  c.nop
                  nop
                  nop
                  srl          t5, t1, s8
                  slti         s0, zero, 1861
                  slli         s11, s6, 26
                  c.andi       a5, -1
                  c.and        a4, a2
                  srai         s2, a5, 20
                  xor          gp, s10, t5
                  sub          zero, t2, tp
                  and          s6, a4, tp
                  c.lui        s2, 28
                  div          t5, a6, t3
                  add          a6, t5, t4
                  addi         t6, s3, -11
                  c.li         s11, 23
                  c.andi       s0, 11
                  c.addi       ra, -1
                  c.nop
                  c.nop
                  div          a2, a4, t3
                  c.slli       gp, 30
                  c.sub        s0, a3
                  divu         t1, s3, t0
                  srai         tp, a4, 25
                  slt          a7, t3, a0
                  sub          s9, tp, a2
                  c.srai       s1, 27
                  divu         zero, a7, s4
                  c.xor        a2, a2
                  srai         t2, a3, 8
                  mulhsu       t1, t4, gp
                  divu         s9, t1, a5
                  c.andi       a1, 26
                  srl          s1, s10, s3
                  sub          a6, s6, s0
                  xor          s1, zero, t6
                  slli         s10, a2, 4
                  slli         s7, s5, 6
                  slt          gp, a4, a2
                  auipc        s4, 719223
                  srai         s0, s1, 18
                  c.add        a5, s6
                  ori          s4, s8, 144
                  addi         s7, a6, 133
                  srl          s7, t2, t2
                  c.lui        a6, 7
                  mul          a1, a5, t1
                  rem          s9, s0, gp
                  sra          t4, s7, t0
                  nop
                  c.lui        s11, 21
                  nop
                  c.mv         ra, s3
                  rem          a7, a5, t3
                  c.andi       a5, -1
                  ori          a4, t5, -1241
                  srli         s2, s2, 11
                  mulh         s0, s2, gp
                  sltu         a7, a0, a5
                  srl          t0, s0, a2
                  or           s6, a7, t0
                  slti         t2, a5, -800
                  c.slli       a6, 16
                  mulh         a2, a3, a7
                  mulhsu       t0, s0, a1
                  mulhu        s0, a3, a3
                  mulh         t1, s3, a0
                  slt          s4, s0, t6
                  or           t2, tp, s0
                  sll          s5, t2, s4
                  lui          s10, 958003
                  sub          t1, sp, t0
                  divu         t3, s10, s0
                  remu         s1, a7, t5
                  c.andi       a2, 29
                  sltu         zero, s11, s5
                  c.mv         t4, s0
                  c.or         a0, a2
                  srl          s11, gp, t1
                  mulhsu       s6, a4, t4
                  mulhu        ra, a6, s10
                  andi         gp, s8, -461
                  rem          a4, t2, t1
                  c.and        a2, a5
                  nop
                  divu         a1, a5, t1
                  xor          s11, gp, s4
                  c.mv         ra, gp
                  c.andi       a3, 25
                  or           t2, s0, s10
                  srli         a4, t4, 0
                  sltiu        a0, t0, -17
                  c.and        a3, s1
                  andi         a2, s8, -1717
                  slt          t2, a4, a6
                  c.add        ra, s1
                  slli         t6, s7, 30
                  slli         t2, s8, 11
                  c.srai       a0, 27
                  remu         s2, a5, ra
                  andi         s10, a3, -1490
                  c.and        a0, a3
                  slt          a7, s5, s2
                  srli         s9, gp, 17
                  c.lui        a3, 20
                  c.addi       s1, 19
                  sra          s7, a3, s10
                  div          t3, sp, t2
                  auipc        s10, 22399
                  c.sub        a1, a1
                  sltu         t3, a2, s1
                  mulh         t0, a3, sp
                  srai         s6, s2, 17
                  c.li         t5, -1
                  srai         t6, t4, 10
                  or           t5, t0, t2
                  rem          s5, s9, a3
                  mulhu        t5, s5, s11
                  nop
                  mulh         zero, a3, a4
                  xori         s2, s7, -861
                  c.xor        a4, a0
                  mul          a4, s7, a2
                  c.and        a3, s0
                  div          a0, t4, s2
                  andi         t5, s4, -1387
                  c.mv         s1, s8
                  c.srai       a3, 3
                  auipc        a6, 456477
                  c.addi       a0, 1
                  sub          gp, t6, zero
                  srli         a4, tp, 30
                  srli         s9, a5, 15
                  and          a6, t1, gp
                  srli         s10, s8, 19
                  nop
                  c.srli       a2, 26
                  remu         t0, s3, a3
                  c.srli       a2, 17
                  sltiu        s0, sp, -1405
                  c.add        s1, s1
                  slt          s4, t0, zero
                  remu         t6, s8, a0
                  c.mv         t5, tp
                  rem          t3, t3, t3
                  mul          a4, s7, gp
                  xor          a0, a5, a6
                  add          t6, a0, a6
                  sub          a1, t0, t2
                  c.srai       s1, 31
                  sra          t6, s2, a3
                  sll          a2, a7, ra
                  slti         s4, s8, 1698
                  slti         a7, a2, 852
                  c.andi       a0, -1
                  mulhsu       s0, a3, s10
                  slli         s7, s5, 14
                  c.srli       s1, 26
                  mulhu        a0, a1, s2
                  c.xor        a3, a0
                  c.addi       a4, -1
                  c.addi       s7, -1
                  sltiu        a1, a1, 886
                  sub          a1, a0, s3
                  and          a6, t2, gp
                  andi         a0, t6, -1272
                  lui          gp, 387374
                  divu         t1, a5, s10
                  sra          t4, s5, s7
                  sll          s9, t4, s6
                  srli         a7, s7, 7
                  xor          t1, s11, s0
                  sltu         t3, s3, t0
                  c.add        s9, a2
                  c.and        a1, a3
                  mulh         a3, s10, s9
                  slti         a6, a4, 927
                  or           t6, s10, s7
                  c.sub        a2, a5
                  mulhsu       a6, t1, a4
                  c.slli       tp, 28
                  c.li         a7, 4
                  and          s0, a7, s9
                  mulh         tp, s11, s6
                  xori         t2, a1, 617
                  c.add        a6, a1
                  remu         gp, s3, s0
                  c.or         a3, a5
                  c.xor        a3, s1
                  divu         s4, s10, a1
                  srl          s11, s1, a7
                  c.add        t1, a5
                  c.srli       a5, 7
                  sub          tp, tp, t5
                  rem          s10, s1, gp
                  auipc        t3, 280394
                  li           a0, 0x70bccb6a #start riscv_int_numeric_corner_stream_38
                  li           ra, 0xffffffff
                  li           s0, 0x80000000
                  li           t2, 0xffffffff
                  li           a6, 0xffffffff
                  li           a5, 0x80000000
                  li           t0, 0xffffffff
                  li           tp, 0x80000000
                  li           a4, 0x80000000
                  li           s1, 0x0
                  lui          tp, 538092
                  div          ra, tp, tp
                  add          tp, tp, t0
                  mulh         a6, tp, ra
                  mulh         a6, ra, a0
                  divu         a4, a4, a6
                  add          s1, s0, a4
                  rem          tp, a6, s1
                  remu         a5, s0, s0
                  mulhsu       s1, t2, a5
                  mul          a0, a0, tp
                  divu         a0, tp, a5
                  lui          t2, 203707
                  div          s0, s1, a4
                  mul          s1, s0, a5
                  mul          a0, a6, ra
                  lui          a6, 507418
                  mulhu        s1, a5, s1
                  auipc        a6, 284173
                  add          t2, t2, a4 #end riscv_int_numeric_corner_stream_38
                  addi         t1, ra, 497
                  c.srli       a3, 5
                  c.srai       a4, 14
                  and          t0, t2, a0
                  lui          s6, 881886
                  rem          s7, a0, s10
                  srli         a0, s5, 2
                  remu         tp, zero, a6
                  div          t5, a0, s10
                  srli         a7, s9, 25
                  addi         s2, s3, -817
                  mulhsu       s4, t4, a0
                  c.add        a6, a1
                  c.mv         t2, gp
                  mulhsu       t6, a6, sp
                  and          s2, a7, zero
                  c.add        a7, s10
                  sltiu        tp, s7, 605
                  mul          s11, t0, a6
                  c.slli       a6, 28
                  slt          s4, t2, a2
                  remu         a3, a4, a0
                  slt          t4, t4, s9
                  c.srai       s1, 26
                  c.srai       a4, 24
                  slti         a7, t0, 1351
                  c.li         s5, -1
                  sltu         s6, t0, sp
                  c.and        a3, a5
                  nop
                  c.andi       a3, -1
                  c.srli       a1, 12
                  mul          a0, a4, s7
                  slti         s11, a2, -650
                  or           s6, gp, tp
                  mul          gp, a7, zero
                  auipc        s0, 790752
                  c.lui        s10, 5
                  c.addi       s10, -1
                  lui          s2, 487397
                  nop
                  or           a2, a3, gp
                  div          a7, s7, a2
                  slli         a3, t6, 1
                  c.slli       s4, 15
                  slt          s2, tp, a4
                  slli         s2, t1, 26
                  sltu         t6, s2, s3
                  ori          s0, s7, 487
                  sltiu        a2, a1, 120
                  addi         s9, s4, 683
                  c.mv         tp, a1
                  add          s6, zero, t5
                  and          s4, s3, tp
                  addi         a4, a1, 1484
                  nop
                  lui          s2, 410384
                  sltu         t4, t6, a7
                  divu         a2, s8, s3
                  c.nop
                  c.li         t1, -1
                  divu         s9, s11, t2
                  srli         s10, t1, 13
                  sltiu        t2, t3, 735
                  c.srai       a5, 14
                  c.xor        a2, a4
                  srai         s5, a1, 10
                  xor          s1, a3, a1
                  divu         t2, a0, a1
                  auipc        a7, 232303
                  slt          a7, t2, a6
                  lui          s7, 1027642
                  sra          s4, zero, t4
                  or           s10, s3, s2
                  andi         t0, a1, -548
                  slti         s0, t3, 76
                  sra          ra, s8, t4
                  mul          a0, s8, gp
                  c.add        t3, t1
                  sll          s7, gp, t6
                  c.sub        a2, a4
                  c.andi       a0, 10
                  sra          a4, s11, a3
                  lui          t0, 389152
                  c.nop
                  xori         t3, t1, -966
                  c.srai       a3, 31
                  c.andi       a1, -1
                  c.nop
                  mulh         t0, s0, a6
                  sll          a6, s8, a7
                  c.and        a1, s0
                  slt          s6, s6, gp
                  c.andi       a3, 20
                  mulhu        gp, s3, t4
                  slli         a4, tp, 5
                  mulh         s4, a7, a4
                  mulh         s7, s8, a7
                  sltiu        t5, a0, -1993
                  sub          t1, s1, s2
                  xori         a0, tp, 1298
                  c.lui        s11, 27
                  div          t2, a3, s10
                  c.lui        t4, 20
                  c.srli       a5, 2
                  add          zero, a1, t5
                  slti         t4, ra, -762
                  sra          a0, t5, s5
                  c.andi       a3, -1
                  slli         s7, s4, 24
                  c.srli       a0, 10
                  auipc        s11, 998902
                  sltu         s11, a7, a4
                  xor          a5, a6, s10
                  andi         a6, ra, 1686
                  slli         ra, s4, 26
                  and          a4, a2, a7
                  slli         s10, t1, 8
                  c.add        ra, t0
                  or           a4, t6, t5
                  ori          tp, s0, 1750
                  auipc        s7, 560858
                  auipc        s0, 275615
                  xori         s10, tp, -1517
                  sll          t1, s10, s8
                  slli         a7, s2, 3
                  c.addi       a5, -1
                  srli         a0, t6, 7
                  c.or         s0, a2
                  nop
                  mulh         t1, a0, a3
                  mulh         s4, t6, a7
                  mulh         a6, s7, a4
                  divu         s11, a7, s6
                  mul          a2, s0, a5
                  addi         ra, s8, 1563
                  c.lui        t1, 24
                  c.srli       a3, 30
                  rem          a0, t3, s6
                  c.andi       s0, -1
                  c.add        s7, a6
                  c.srli       a4, 29
                  sra          s7, s2, a0
                  addi         zero, s5, -1595
                  c.srli       s1, 26
                  srai         zero, t2, 15
                  c.srli       s1, 16
                  xori         s2, s5, -1326
                  rem          s2, s2, sp
                  ori          s11, t3, 1647
                  div          zero, s0, a7
                  c.add        t3, gp
                  c.or         a2, a4
                  remu         s7, t5, s1
                  mulhu        t4, s7, zero
                  lui          a6, 389155
                  c.and        a1, a0
                  divu         s9, t0, a4
                  addi         s1, ra, 797
                  add          t0, a0, t2
                  sltu         s5, s2, s2
                  mulhsu       tp, s11, gp
                  c.nop
                  andi         s6, a5, -715
                  or           s7, gp, t6
                  mulhsu       t6, s6, tp
                  c.mv         t2, ra
                  mulhsu       s2, s0, s5
                  add          tp, a1, s10
                  c.mv         s9, s2
                  nop
                  c.andi       a1, 0
                  sub          t0, zero, s8
                  c.add        s11, gp
                  nop
                  nop
                  andi         a2, a7, -1781
                  mul          s5, a7, s6
                  lui          s9, 353196
                  mulhu        t0, s4, a6
                  c.srai       s1, 4
                  c.sub        s1, s0
                  mulh         s4, gp, t6
                  divu         t3, a6, t5
                  c.and        a4, a1
                  c.or         a2, a2
                  addi         s10, t5, 1059
                  sra          s4, gp, t3
                  sltu         t1, ra, sp
                  mulhsu       s5, t5, s0
                  slli         t6, a0, 12
                  mul          a0, s0, s2
                  mulh         a6, t3, a3
                  c.and        a4, s0
                  xor          a3, a1, a3
                  sra          a7, sp, s7
                  c.li         a1, 20
                  nop
                  c.addi       s7, -1
                  and          ra, s6, t1
                  c.or         a3, a5
                  c.li         t2, 3
                  c.li         a7, -1
                  xor          gp, s3, a5
                  addi         a4, a3, -14
                  c.sub        a0, a1
                  xor          s9, t4, t1
                  c.srai       a3, 16
                  slli         zero, a5, 23
                  mul          t0, a5, gp
                  c.and        a3, a3
                  c.add        t4, a7
                  rem          s0, s3, a3
                  mulh         t5, zero, t3
                  c.srai       a5, 26
                  or           t3, s11, a4
                  addi         s2, t0, -1494
                  c.nop
                  xori         a2, a0, -432
                  slti         s7, s3, 1256
                  and          zero, s9, s4
                  c.nop
                  c.xor        a0, a1
                  c.srai       a3, 22
                  mul          t0, t1, t0
                  mulh         a1, sp, a0
                  ori          a1, zero, -496
                  addi         s7, s1, -803
                  mulhu        s10, s5, s7
                  c.mv         a4, t6
                  and          a7, gp, zero
                  sll          gp, sp, s6
                  remu         t2, t3, a6
                  sra          ra, t0, a7
                  and          s0, a3, s8
                  mulhu        t1, t1, a3
                  ori          t2, a0, 795
                  c.xor        a0, a2
                  c.lui        s1, 16
                  lui          a1, 1048510
                  slt          a2, s0, s8
                  add          t0, t1, t6
                  c.or         s0, s1
                  xor          s7, s8, tp
                  div          s10, ra, s8
                  ori          s9, s3, 1865
                  andi         s1, t0, 1221
                  c.andi       a4, 9
                  mulh         t2, sp, s1
                  addi         t2, s7, -390
                  mulhsu       zero, gp, s5
                  slti         t1, s4, -1897
                  divu         t1, ra, ra
                  c.slli       t4, 17
                  xor          s7, a6, a1
                  c.li         s5, -1
                  c.sub        s1, a1
                  divu         t4, s0, s1
                  c.addi       t2, -1
                  div          a4, ra, tp
                  xor          s11, a3, a4
                  addi         s10, a4, -1348
                  remu         s5, s1, a0
                  and          s2, s3, zero
                  sltiu        t4, t4, 1395
                  sll          s7, ra, a6
                  xor          t1, a1, s9
                  c.addi       t1, 17
                  mulhu        s1, sp, s11
                  mulhsu       t1, t4, t5
                  mul          gp, s6, a3
                  add          a7, a7, s11
                  c.xor        s0, a4
                  nop
                  sltu         s10, t2, gp
                  c.srai       a2, 4
                  nop
                  mulh         s10, a1, s10
                  c.li         a2, -1
                  c.andi       a0, 13
                  div          s10, s8, s8
                  srli         gp, s1, 3
                  and          s4, a3, a6
                  sll          a6, t5, gp
                  srl          t2, s10, a4
                  sll          t1, zero, a4
                  slti         s1, t6, -1608
                  c.addi       a2, -1
                  ori          a4, s6, -711
                  sltu         s11, t6, s10
                  c.addi       a6, -1
                  c.sub        a5, a0
                  li           a1, 0xf9308dc #start riscv_int_numeric_corner_stream_7
                  li           s11, 0x0
                  li           s5, 0x80000000
                  li           a2, 0x73c9eb6d
                  li           ra, 0xc431744e
                  li           a6, 0xffffffff
                  li           t6, 0x23db0362
                  li           s9, 0x0
                  li           s6, 0x80000000
                  li           t5, 0x777656fd
                  mulhu        s5, s9, a2
                  add          a2, s9, s9
                  auipc        s6, 434443
                  auipc        a1, 68189
                  sub          a6, ra, s9
                  add          a1, t6, a2
                  mulhu        a2, ra, ra
                  mul          t6, s9, s9
                  div          s5, s9, t5
                  auipc        t5, 499976
                  mulh         s6, s11, t5
                  lui          t6, 470552
                  add          t5, s6, a2
                  auipc        t6, 492587
                  divu         a6, a6, a2
                  divu         s9, ra, a6
                  rem          a6, s11, a2
                  nop
                  auipc        s5, 202767
                  mulh         a1, t5, a1
                  mul          s9, s5, a6
                  auipc        t5, 609615
                  mulhsu       s11, a6, a1
                  lui          s5, 986683
                  sub          t6, s5, s6
                  auipc        s11, 414099
                  div          s11, a1, a6
                  mul          s11, ra, s5
                  addi         a6, s5, -1669
                  rem          ra, t5, s6 #end riscv_int_numeric_corner_stream_7
                  slti         gp, t0, 625
                  c.srai       a0, 8
                  nop
                  remu         a5, s5, t5
                  mul          t5, a7, gp
                  and          s0, s1, s0
                  remu         tp, ra, s10
                  xor          t0, a2, ra
                  xor          zero, a5, t2
                  c.srli       s0, 21
                  c.srli       a0, 19
                  lui          gp, 667741
                  c.xor        a0, a4
                  div          s5, a0, t0
                  c.and        s1, a3
                  c.xor        s1, a3
                  c.nop
                  addi         gp, s1, 1889
                  sll          a4, sp, tp
                  sltu         s9, a5, s1
                  or           t3, s11, a7
                  div          s9, s2, t6
                  nop
                  c.add        s6, sp
                  sll          a2, ra, t5
                  c.srai       a0, 16
                  c.srli       a0, 30
                  c.add        t3, a5
                  nop
                  slli         s10, a2, 14
                  slti         a0, s11, -858
                  add          s6, tp, a4
                  mulhu        a0, a5, t6
                  c.xor        a4, a1
                  slt          a0, s8, a7
                  srli         t0, gp, 31
                  rem          s6, s4, s7
                  xor          gp, t0, t1
                  c.add        a2, s4
                  slli         a0, a4, 24
                  slli         a4, s2, 9
                  div          gp, s8, tp
                  c.add        t1, a4
                  addi         s7, s5, 1258
                  c.li         ra, -1
                  slti         t3, s3, -1219
                  sltiu        s5, a6, 1397
                  c.andi       a3, 24
                  mulh         t0, s1, a4
                  addi         s2, s6, -509
                  mulhsu       a3, gp, ra
                  addi         s2, s0, -1392
                  div          s11, s11, t6
                  li           ra, 0xf5f8b079 #start riscv_int_numeric_corner_stream_0
                  li           t0, 0xc56eca6b
                  li           s10, 0x80000000
                  li           t3, 0x0
                  li           s1, 0x1f397854
                  li           a2, 0x0
                  li           s0, 0xffffffff
                  li           t4, 0x76738e94
                  li           s7, 0x0
                  li           s5, 0x566d21c7
                  add          t0, s10, t3
                  div          s1, s10, s5
                  addi         s7, t4, -1773
                  div          t4, t4, t3
                  mul          a2, t3, s0
                  rem          s7, s10, s10
                  sub          t3, s7, ra
                  mulh         t4, t0, t0
                  addi         a2, s10, -1236
                  rem          s1, t4, a2
                  nop
                  mul          s5, s10, s10
                  mulh         t0, ra, t3
                  sub          t4, s10, s10
                  sub          a2, t4, a2
                  addi         s7, s1, -1503
                  remu         s0, a2, s10 #end riscv_int_numeric_corner_stream_0
                  mul          t5, tp, s4
                  c.and        a0, a0
                  c.mv         a3, a6
                  lui          t5, 438389
                  or           s9, tp, a5
                  c.srli       a3, 27
                  mulhu        s11, s2, s8
                  c.srai       a4, 10
                  auipc        s10, 787677
                  andi         s11, a0, 1754
                  c.or         a1, a0
                  c.mv         a2, tp
                  xori         ra, s7, -2035
                  mulh         s6, t0, ra
                  addi         tp, t2, 984
                  divu         a7, t5, gp
                  srl          a0, a1, ra
                  slti         zero, t4, -886
                  c.srli       s1, 24
                  c.add        s4, s11
                  sll          s5, s5, t3
                  xor          t0, ra, a3
                  sltu         s10, t6, s7
                  slli         ra, t3, 6
                  add          a7, s11, s7
                  slti         s7, a2, 121
                  c.addi       s11, -1
                  sltu         t1, t4, a4
                  srai         t1, s6, 16
                  c.mv         ra, a6
                  c.and        a1, a5
                  mulhu        t2, a7, t6
                  slt          s9, s3, sp
                  c.srli       s1, 15
                  or           s0, gp, t0
                  addi         ra, t5, -1661
                  c.li         t4, -1
                  c.mv         t2, s2
                  slt          s4, a5, s8
                  divu         t0, s6, t6
                  ori          a3, a4, -517
                  mulhu        t2, tp, a6
                  slli         a5, s5, 13
                  c.slli       a6, 23
                  lui          s11, 443441
                  sub          ra, s6, t5
                  andi         a4, s10, 1738
                  srai         a6, gp, 18
                  xor          t5, s7, a1
                  c.li         s2, -1
                  slti         s9, tp, 1208
                  ori          tp, sp, 1606
                  sltu         a7, a7, a7
                  slli         s6, a6, 9
                  xori         s7, t0, -148
                  rem          a1, s2, s5
                  mul          gp, a0, s10
                  remu         a3, a3, s11
                  xori         t1, a1, 1746
                  c.and        a0, a3
                  c.slli       tp, 24
                  c.and        a3, a0
                  lui          a0, 1026244
                  or           s2, s0, zero
                  xor          s6, s8, a6
                  mulhu        s5, s11, s1
                  sra          t0, s1, t6
                  remu         a7, a7, a1
                  mul          s6, t6, t6
                  slti         a6, a5, -1934
                  mul          t1, s7, s3
                  c.lui        s5, 1
                  divu         t4, gp, s9
                  c.srai       a4, 1
                  xor          s2, t4, s6
                  and          tp, s9, s0
                  c.addi       s10, -1
                  c.addi       a0, -1
                  slt          s2, a7, a2
                  mulh         t3, tp, a1
                  c.and        a5, s0
                  rem          a4, s3, a0
                  andi         t1, tp, -1423
                  srli         a7, s7, 17
                  c.mv         t2, s7
                  ori          s7, t0, 1525
                  srai         s1, s7, 14
                  slli         a6, s3, 5
                  div          s9, t4, a4
                  mulh         s5, s0, t1
                  c.sub        s0, s0
                  slli         t6, a6, 9
                  mulhu        s0, s2, s3
                  mulhsu       zero, s6, s2
                  c.nop
                  sra          t2, t2, s7
                  ori          gp, s0, 583
                  c.srli       a0, 21
                  c.li         s2, -1
                  c.sub        a5, s1
                  srli         s9, s0, 23
                  c.and        a1, a2
                  c.xor        a2, s0
                  srl          tp, a4, a5
                  div          t4, a0, s9
                  c.mv         t6, s4
                  sra          tp, zero, s6
                  sra          s11, t3, tp
                  mulhu        t0, a3, t1
                  mul          s1, s0, s3
                  nop
                  slli         a0, s3, 13
                  c.nop
                  c.and        a0, s1
                  rem          t4, t1, s10
                  or           a7, a4, s4
                  c.or         s0, a2
                  rem          s1, s1, s1
                  slt          s2, tp, s10
                  mulhsu       s7, s0, a1
                  mul          a7, s2, a5
                  c.or         a0, s1
                  sltiu        a7, s3, 1015
                  slt          a2, a5, t0
                  rem          t2, s6, s2
                  c.andi       a3, 22
                  andi         s10, tp, -81
                  srai         a6, zero, 10
                  sltiu        s0, s10, 172
                  sltu         a3, s8, a4
                  add          s7, t0, s0
                  ori          t0, a2, 1414
                  c.lui        a6, 23
                  addi         s9, t3, 82
                  auipc        a5, 316680
                  mulhsu       s11, t2, s10
                  mulhsu       t1, a0, s1
                  mulhu        s9, s7, a0
                  mul          s2, s5, s0
                  slti         s1, s11, 1417
                  sub          s6, a7, s1
                  ori          s1, s8, 1380
                  mul          t1, zero, s0
                  c.srli       a1, 18
                  remu         a1, sp, sp
                  c.add        t5, a4
                  c.slli       s2, 22
                  slti         s9, t4, -1737
                  slli         s1, a0, 20
                  c.addi       gp, -1
                  sltu         a4, s11, a7
                  mulh         a3, s3, a1
                  mulh         s6, tp, t2
                  rem          zero, sp, s1
                  srai         gp, t6, 0
                  or           a3, s4, s0
                  mulh         s7, a5, a7
                  mulh         a5, s3, t6
                  and          t5, s1, a7
                  sra          t3, s3, ra
                  sll          t6, a5, s11
                  and          s5, t2, s3
                  auipc        a2, 188412
                  srl          t6, sp, s8
                  auipc        s10, 805043
                  c.xor        a3, a3
                  xori         s11, t3, -175
                  c.srai       a2, 20
                  c.addi       t1, -1
                  c.srli       a5, 3
                  ori          s7, t5, 1771
                  sltu         a2, s5, s3
                  lui          s1, 696847
                  slt          t3, s4, s3
                  c.sub        a4, a1
                  srli         t3, t0, 5
                  slt          a4, a0, s10
                  c.li         a1, -1
                  c.srai       a1, 21
                  xor          ra, s4, s7
                  slli         t5, s0, 0
                  add          a4, zero, t0
                  c.srli       a0, 3
                  slti         t4, a7, -1992
                  c.sub        s1, s1
                  c.srli       s1, 6
                  mulh         s1, sp, t5
                  sll          a0, t5, t4
                  ori          s6, s6, 975
                  c.srli       a2, 16
                  auipc        a1, 324312
                  ori          t0, a0, -142
                  nop
                  slli         ra, s4, 5
                  mulhsu       s2, a1, tp
                  sltiu        s11, a7, -563
                  sll          a0, a6, s1
                  sra          ra, t2, a6
                  c.nop
                  xor          a7, s7, t4
                  add          s11, t0, a6
                  c.and        a3, a1
                  ori          s2, s6, -430
                  and          s2, t0, s10
                  lui          s11, 450522
                  slti         s6, t5, -944
                  c.and        a3, a2
                  c.xor        a1, a1
                  c.slli       a6, 11
                  xori         s9, a1, 1071
                  xori         s11, s6, 1639
                  mulh         t5, a7, t6
                  mul          gp, a0, t3
                  c.and        s0, a4
                  auipc        s5, 992688
                  auipc        s6, 79815
                  slli         a7, t0, 28
                  slt          gp, tp, s10
                  ori          s6, gp, -1662
                  srai         t1, s2, 10
                  and          tp, s0, t3
                  srai         t4, s1, 6
                  slti         zero, a2, 638
                  c.andi       a2, 31
                  and          s11, a5, ra
                  sltu         s6, a2, a2
                  auipc        t4, 898919
                  xori         s1, gp, -242
                  c.sub        a4, s1
                  c.sub        a4, a1
                  sltiu        t1, s9, -1419
                  mulhsu       t1, a6, s7
                  srli         ra, a3, 3
                  and          s7, a4, s4
                  ori          a2, t1, -2037
                  c.add        s10, gp
                  auipc        tp, 495581
                  sll          t6, s8, a3
                  c.sub        a1, a4
                  mulh         a6, t3, s1
                  c.lui        s11, 8
                  c.and        a5, a2
                  sltiu        s7, s11, -1965
                  add          a3, s3, s7
                  xor          t2, s10, a6
                  slti         a4, a6, 601
                  ori          s6, s8, 985
                  and          s2, t5, gp
                  c.srai       s0, 23
                  andi         a3, a7, 672
                  sll          s1, t4, a3
                  c.srai       a3, 13
                  auipc        t1, 407210
                  nop
                  addi         s7, ra, 664
                  c.addi       s5, -1
                  remu         a3, a2, a2
                  xori         t3, s5, -1447
                  c.mv         s2, t4
                  or           s11, a1, s5
                  c.slli       s10, 21
                  c.add        s6, a2
                  srl          t2, a0, sp
                  ori          s0, a0, -586
                  c.slli       s2, 20
                  mulhsu       a2, a2, s10
                  c.andi       s0, 19
                  c.add        s1, s4
                  c.and        s0, a1
                  xori         a0, s10, -1310
                  c.li         s2, -1
                  slt          a2, s8, t0
                  c.addi       t0, -1
                  nop
                  add          s10, s5, sp
                  c.srli       a1, 10
                  divu         t3, ra, tp
                  mulh         a0, a0, ra
                  xor          a2, a3, s11
                  mulhu        s10, zero, gp
                  mulhsu       s0, s0, t6
                  c.li         t6, 6
                  c.lui        a7, 30
                  rem          a7, a3, s11
                  c.srai       a5, 10
                  c.srli       a1, 7
                  c.add        a6, s9
                  and          a3, a0, a1
                  divu         s0, s9, a5
                  c.or         a5, a4
                  sltu         a0, s4, a0
                  and          s10, s3, t1
                  c.addi       t1, 1
                  slti         s5, t1, 1064
                  c.addi       gp, -1
                  or           t6, s9, a3
                  andi         s10, s10, 503
                  remu         t3, tp, s7
                  mulhu        zero, s10, a1
                  c.mv         a1, tp
                  c.srai       a5, 13
                  nop
                  srli         s11, s0, 1
                  lui          s11, 781704
                  mulh         a5, tp, t1
                  c.mv         a3, t1
                  slti         s10, t5, -513
                  c.li         s6, 30
                  ori          s10, t3, -1600
                  or           ra, zero, a3
                  and          tp, t6, s2
                  slti         a1, tp, -485
                  xor          a3, s0, s1
                  srai         a1, t3, 15
                  auipc        t2, 218949
                  c.srli       a0, 21
                  srl          t2, t0, t4
                  slli         a0, zero, 18
                  remu         tp, t6, a1
                  c.add        ra, ra
                  mulh         a1, a5, s0
                  sltu         t5, a3, zero
                  add          s2, t2, a0
                  c.slli       t5, 21
                  c.lui        gp, 6
                  c.lui        s2, 23
                  c.nop
                  c.nop
                  c.nop
                  xori         zero, ra, -1125
                  or           a3, t1, s11
                  ori          s7, s8, 495
                  c.nop
                  or           a7, zero, s8
                  srli         a0, s7, 11
                  or           t2, s6, s7
                  nop
                  slti         a3, sp, 816
                  divu         t5, s0, a7
                  nop
                  auipc        t0, 229542
                  c.xor        a3, a4
                  sub          t2, s1, a0
                  or           a4, t5, s10
                  auipc        s7, 79739
                  c.sub        a5, a1
                  sra          t6, sp, a6
                  sltu         a7, s5, s9
                  auipc        s5, 585223
                  divu         t2, t1, a4
                  rem          t4, sp, s0
                  c.srai       a4, 27
                  c.andi       a2, -1
                  c.lui        a4, 5
                  mulh         t6, a4, s10
                  slti         t1, s4, 316
                  c.sub        a1, a1
                  or           t1, a3, t0
                  mulhsu       ra, s10, ra
                  and          s10, s6, s4
                  srai         zero, a3, 5
                  mulh         zero, s0, s11
                  sub          s10, s0, t0
                  xori         s7, t5, 296
                  sra          s7, t0, ra
                  c.li         tp, -1
                  and          a6, a6, t4
                  or           a7, gp, a7
                  slt          s5, t2, a0
                  sltiu        ra, t0, 1352
                  c.nop
                  div          a5, s11, a7
                  lui          t4, 729103
                  c.mv         s7, gp
                  ori          s10, a3, -287
                  slt          s5, a7, s9
                  srli         s0, a0, 28
                  c.srli       a1, 26
                  rem          a0, a5, a2
                  c.srli       a0, 10
                  c.mv         s4, s8
                  slt          s10, t4, zero
                  c.srai       a0, 21
                  remu         zero, s6, s2
                  mul          a3, t5, t0
                  rem          t6, t5, gp
                  mulhsu       a4, t0, s11
                  divu         a5, s2, s10
                  c.add        a3, a7
                  lui          a3, 21009
                  c.and        s0, a2
                  c.add        a2, a7
                  mulh         t5, s10, a0
                  slli         s10, t5, 18
                  mulhu        gp, a1, t0
                  remu         t0, s8, a0
                  c.lui        a6, 11
                  c.srli       a5, 30
                  c.sub        s1, a1
                  add          a5, tp, gp
                  srai         a7, s9, 6
                  add          a2, a5, s6
                  c.nop
                  c.lui        a0, 2
                  sra          s1, tp, s7
                  mulhu        t5, a5, zero
                  mulhu        s2, s9, s4
                  ori          s1, a0, -208
                  c.andi       a0, -1
                  c.and        a3, a3
                  remu         a1, a1, t1
                  divu         a4, s10, t5
                  c.li         ra, -1
                  la x19, test_done
                  jalr x0, x19, 0
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
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x2, x2, -4
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  sw  x24, (x2)
                  add x24, x2, zero
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x2, x24, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x28, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x28, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x28, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x28, x17, ecall_handler
                  li x17, 0x1
                  beq x28, x17, instr_fault_handler
                  li x17, 0x5
                  beq x28, x17, load_fault_handler
                  li x17, 0x7
                  beq x28, x17, store_fault_handler
                  li x17, 0xc
                  beq x28, x17, pt_fault_handler
                  li x17, 0xd
                  beq x28, x17, pt_fault_handler
                  li x17, 0xf
                  beq x28, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x24, x2, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  add x2, x24, zero
                  lw  x24, (x2)
                  addi x2, x2, 4
                  mret

load_fault_handler:
                  add x24, x2, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  add x2, x24, zero
                  lw  x24, (x2)
                  addi x2, x2, 4
                  mret

store_fault_handler:
                  add x24, x2, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  add x2, x24, zero
                  lw  x24, (x2)
                  addi x2, x2, 4
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x24, x2, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  add x2, x24, zero
                  lw  x24, (x2)
                  addi x2, x2, 4
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x24, x2, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  add x2, x24, zero
                  lw  x24, (x2)
                  addi x2, x2, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x24, x2, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  add x2, x24, zero
                  lw  x24, (x2)
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
