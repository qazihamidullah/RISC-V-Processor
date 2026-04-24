.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  li x25, 0x0
                  csrw 0x304, x25 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x877e1c1e
                  li x2, 0xeaf712e5
                  li x3, 0xb
                  li x4, 0x6b529be6
                  li x6, 0xbe691a8c
                  li x8, 0x1
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x5
                  li x16, 0xfa4450b4
                  li x17, 0xf5491b2a
                  li x18, 0xa4212258
                  li x19, 0x0
                  li x20, 0xf7d0a4cf
                  li x21, 0x80000000
                  li x22, 0xf
                  li x23, 0x1
                  li x24, 0x0
                  li x25, 0xfb4cefd6
                  li x26, 0xe
                  li x27, 0x9
                  li x28, 0xfec7da3d
                  li x29, 0x88f4d021
                  li x30, 0xf5ea104b
                  li x31, 0xf2f413e5
                  la x7, user_stack_end
main:             li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_38
                  li           s5, 0x61279d43
                  li           s9, 0x0
                  li           a1, 0x80000000
                  li           s8, 0xffffffff
                  li           a5, 0x1bcc1d3b
                  li           s2, 0xffffffff
                  li           a3, 0x80000000
                  li           t6, 0x0
                  li           s3, 0x43a615ac
                  lui          a1, 456928
                  sub          s8, a1, a1
                  addi         s3, a2, 1767
                  lui          s2, 239663
                  addi         a3, a5, 128
                  auipc        a1, 131735
                  lui          t6, 546842
                  nop
                  auipc        s2, 839348
                  add          s5, a3, s3
                  auipc        a1, 779296
                  auipc        s5, 139454
                  lui          a3, 955550
                  sub          s8, s5, s8
                  auipc        t6, 484307
                  sub          s3, s9, t6
                  auipc        s2, 828892
                  addi         t6, t6, 1441
                  add          a1, s5, a3
                  sub          s5, a5, a3
                  addi         a3, a2, 58
                  add          s9, s3, s2
                  nop
                  auipc        a5, 222594
                  addi         a5, a1, 1212
                  auipc        s5, 450141
                  addi         s8, s3, 24
                  addi         s9, a1, 1549 #end riscv_int_numeric_corner_stream_38
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0xffffffff
                  li           a7, 0xffffffff
                  li           a4, 0x2a29dbbc
                  li           a1, 0xffffffff
                  li           s3, 0xffffffff
                  li           t4, 0x80000000
                  li           s1, 0x92dc0f6e
                  li           tp, 0x5b3b8325
                  li           t1, 0xffffffff
                  add          t4, t4, a1
                  nop
                  add          a7, t4, a7
                  nop
                  add          a7, s1, s3
                  addi         s1, a1, 2008
                  nop
                  auipc        tp, 1031385
                  addi         s3, t4, -386
                  addi         s1, s3, -1653
                  addi         s8, a1, -1755
                  nop
                  nop
                  sub          t4, a1, a4
                  addi         t1, s3, 714
                  add          tp, s8, a7
                  lui          a1, 724363 #end riscv_int_numeric_corner_stream_1
                  li           s11, 0xbae38a4f #start riscv_int_numeric_corner_stream_23
                  li           s10, 0xaa8b20a6
                  li           t1, 0x96cb9a85
                  li           s0, 0x86e4c494
                  li           s2, 0x80000000
                  li           sp, 0x0
                  li           tp, 0x0
                  li           a5, 0xffffffff
                  li           s7, 0x80000000
                  li           gp, 0x0
                  add          gp, s11, tp
                  add          s2, t1, s2
                  add          s11, a5, s2
                  nop
                  lui          s11, 91916
                  nop
                  sub          gp, s10, s0
                  nop
                  sub          t1, s10, t1
                  nop
                  auipc        s10, 1030061
                  add          s0, s7, s7
                  nop
                  nop
                  auipc        s11, 364156 #end riscv_int_numeric_corner_stream_23
                  li           s0, 0x4124a66d #start riscv_int_numeric_corner_stream_10
                  li           t5, 0xffffffff
                  li           s3, 0xffffffff
                  li           s10, 0x80000000
                  li           t6, 0xffffffff
                  li           a5, 0xf884b773
                  li           a2, 0x9cae0998
                  li           s5, 0x2a7c32ff
                  li           a4, 0x0
                  li           a7, 0x0
                  addi         a4, s10, 1577
                  addi         a4, a2, -314
                  sub          s0, a7, s0
                  add          t5, a4, s10
                  nop
                  lui          a2, 607774
                  addi         s3, a2, -706
                  auipc        a2, 520067
                  lui          a7, 454937
                  lui          a5, 781131
                  auipc        a2, 646390
                  nop
                  auipc        s10, 1025511
                  sub          s5, s0, a4
                  add          a7, s10, a5
                  nop
                  nop #end riscv_int_numeric_corner_stream_10
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           t5, 0xffffffff
                  li           ra, 0xc5d20ced
                  li           a2, 0xffffffff
                  li           a4, 0x80000000
                  li           s9, 0x0
                  li           s0, 0xffffffff
                  li           gp, 0x80000000
                  li           s4, 0x80000000
                  li           s1, 0xe0358e32
                  auipc        s0, 568345
                  add          ra, gp, s9
                  addi         ra, s9, -656
                  sub          t5, t5, ra
                  add          a2, a4, a2
                  auipc        gp, 879336
                  nop
                  nop
                  auipc        s4, 977748
                  nop
                  lui          gp, 157440
                  sub          s4, a2, s9
                  add          s0, gp, a4
                  nop
                  nop
                  nop
                  nop
                  auipc        s4, 843683
                  sub          a4, s0, ra
                  auipc        s4, 519569
                  auipc        gp, 514064
                  addi         s8, t5, 626
                  auipc        gp, 97085
                  sub          s8, a2, gp
                  sub          s1, gp, s9
                  add          gp, a4, gp
                  addi         t5, ra, -784 #end riscv_int_numeric_corner_stream_17
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s11, 0xffffffff
                  li           tp, 0x0
                  li           s9, 0x80000000
                  li           a1, 0x0
                  li           s10, 0xffffffff
                  li           t1, 0xffffffff
                  li           a7, 0xffffffff
                  li           s3, 0x3de19313
                  li           t5, 0xffffffff
                  lui          s10, 303265
                  addi         t1, t5, -643
                  auipc        t1, 682056
                  addi         tp, tp, 378
                  auipc        t1, 380470
                  sub          s11, s3, tp
                  addi         tp, t5, -728
                  nop
                  nop
                  sub          s0, t1, s10
                  addi         s0, t1, 1614
                  auipc        t1, 283674
                  auipc        s9, 764322
                  auipc        tp, 1006714
                  lui          a1, 1010957
                  nop
                  lui          a7, 475069
                  nop
                  nop
                  auipc        s3, 108404
                  nop
                  nop
                  nop
                  add          s9, a1, a7
                  addi         s9, tp, 563
                  lui          t5, 49880
                  nop
                  sub          s10, tp, s0
                  lui          t5, 491041
                  nop #end riscv_int_numeric_corner_stream_15
                  li           s6, 0x6f5efd3d #start riscv_int_numeric_corner_stream_2
                  li           s2, 0x9f0789e4
                  li           t5, 0xde952b25
                  li           s8, 0x0
                  li           s0, 0xe9a6fd47
                  li           s5, 0x0
                  li           s4, 0xffffffff
                  li           a3, 0x0
                  li           gp, 0x80000000
                  li           a4, 0x4bee4928
                  lui          s6, 633023
                  auipc        s2, 791354
                  addi         s5, s4, -595
                  add          gp, a3, t5
                  auipc        s8, 962962
                  sub          a4, t5, s6
                  addi         s5, s2, 1817
                  sub          s8, a3, s8
                  lui          s0, 31451
                  lui          s8, 207523
                  lui          s6, 56576
                  lui          s5, 236818
                  auipc        gp, 930839
                  addi         gp, a4, -1009
                  lui          a4, 80387
                  auipc        s2, 589037
                  nop
                  sub          gp, a3, s0
                  addi         t5, s0, 1003
                  lui          a4, 291018
                  nop
                  lui          gp, 412137
                  lui          s8, 194033
                  sub          gp, s8, gp #end riscv_int_numeric_corner_stream_2
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           s3, 0x80000000
                  li           s10, 0x0
                  li           s11, 0x8ac03f9d
                  li           s8, 0xeb170d93
                  li           ra, 0x80000000
                  li           s1, 0xffffffff
                  li           a5, 0x80000000
                  li           s2, 0x80000000
                  li           t1, 0xe61ebebf
                  add          t1, s2, ra
                  lui          ra, 259947
                  add          ra, ra, t1
                  sub          t1, s2, s3
                  lui          s8, 691291
                  lui          s6, 88056
                  lui          s2, 621701
                  add          s1, s11, s2
                  nop
                  addi         s6, s3, -595
                  sub          s8, s11, s1
                  auipc        s1, 963893
                  auipc        ra, 717163
                  addi         s8, s8, -1577
                  add          s6, s8, ra
                  sub          t1, s8, s6
                  lui          ra, 555584
                  add          t1, s6, s10 #end riscv_int_numeric_corner_stream_27
                  li           a5, 0xd0fe957e #start riscv_int_numeric_corner_stream_5
                  li           a0, 0x80000000
                  li           s2, 0xffffffff
                  li           s11, 0xffffffff
                  li           s8, 0xf2b09ffe
                  li           s7, 0x80000000
                  li           s0, 0x0
                  li           s3, 0x80000000
                  li           a4, 0xffffffff
                  li           s5, 0x80000000
                  auipc        s11, 523250
                  sub          s7, s0, s0
                  addi         s2, s3, -108
                  nop
                  lui          s5, 980413
                  addi         a4, a4, -297
                  nop
                  nop
                  add          s11, a4, a5
                  auipc        s11, 615601
                  add          s2, s0, s5
                  add          s8, a4, s0
                  nop
                  add          s3, s0, s7
                  sub          s2, a4, s0
                  nop
                  addi         s5, s11, -2037
                  lui          s11, 353487
                  lui          s2, 718617
                  add          s3, s2, s5
                  add          s11, s11, a5
                  nop #end riscv_int_numeric_corner_stream_5
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           ra, 0x80000000
                  li           t1, 0xffffffff
                  li           a0, 0x80000000
                  li           s2, 0x0
                  li           s8, 0x1aae11c4
                  li           t4, 0x8a3ed289
                  li           sp, 0x8115e8f5
                  li           a7, 0x80000000
                  li           s6, 0x4bc5ebfa
                  lui          a0, 394161
                  nop
                  nop
                  lui          a0, 157099
                  sub          t4, sp, s6
                  lui          ra, 1028485
                  auipc        a3, 115991
                  lui          t4, 500897
                  auipc        ra, 576147
                  nop
                  sub          s8, a7, s6
                  auipc        s8, 896033
                  addi         t1, t4, 386
                  lui          s2, 378460
                  auipc        t4, 522676
                  lui          s8, 838733
                  auipc        ra, 618453 #end riscv_int_numeric_corner_stream_24
                  li           t5, 0xd4e83e5a #start riscv_int_numeric_corner_stream_25
                  li           s10, 0x80000000
                  li           s9, 0x80000000
                  li           t1, 0x74b56bcc
                  li           tp, 0x80000000
                  li           ra, 0x80000000
                  li           gp, 0x7e3e7d6f
                  li           sp, 0x80000000
                  li           s11, 0xf4d7d586
                  li           a2, 0x14602102
                  add          ra, a2, s9
                  nop
                  lui          s11, 580089
                  add          t5, t5, t1
                  add          s9, s10, s10
                  add          a2, a2, t1
                  nop
                  nop
                  add          s11, a2, a2
                  lui          a2, 440264
                  auipc        t1, 688529
                  add          t5, sp, tp
                  lui          a2, 947442
                  nop
                  sub          ra, s9, gp
                  auipc        t1, 459460 #end riscv_int_numeric_corner_stream_25
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           t6, 0x1fd573db
                  li           s7, 0x6e826168
                  li           a0, 0x17e0d1e1
                  li           tp, 0xaf9934ae
                  li           s2, 0x80000000
                  li           s5, 0x80000000
                  li           a5, 0xf028382f
                  li           a1, 0x80000000
                  li           s10, 0xe527266
                  nop
                  add          a1, a5, t3
                  add          tp, tp, s2
                  add          a1, a5, s5
                  nop
                  nop
                  sub          tp, a0, s7
                  addi         s5, s5, -552
                  add          t3, s10, s2
                  nop
                  add          s2, t3, a1
                  sub          s2, s5, a0
                  add          s5, tp, a1
                  addi         tp, s5, -1184
                  auipc        tp, 124810
                  add          tp, a5, tp
                  add          s2, t3, a1
                  lui          s2, 132089
                  sub          s5, s5, s2
                  sub          t3, s2, a1
                  addi         a0, s2, 1575
                  addi         s5, a1, -731
                  add          s2, a1, t6
                  sub          t6, s10, t3
                  nop
                  nop
                  auipc        a5, 214701
                  auipc        a5, 511448 #end riscv_int_numeric_corner_stream_35
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_37
                  li           s0, 0x0
                  li           tp, 0xca3666f
                  li           a1, 0x0
                  li           s1, 0x80000000
                  li           gp, 0xb18ba2e3
                  li           s7, 0xffffffff
                  li           s4, 0xffffffff
                  li           s10, 0x80000000
                  li           sp, 0xd73d4356
                  lui          tp, 695060
                  sub          s0, s7, sp
                  lui          s7, 260827
                  nop
                  addi         sp, s4, 1490
                  sub          s0, s4, a1
                  sub          a1, s11, s0
                  lui          s4, 233076
                  addi         s10, s4, 1549
                  nop
                  lui          s4, 401613
                  sub          s0, s7, s4
                  lui          s0, 470752
                  add          s1, s7, s0
                  sub          s0, a1, s0
                  nop
                  auipc        s10, 195675
                  sub          s4, s1, s1
                  lui          sp, 392467
                  sub          s10, s0, s11
                  nop
                  sub          s7, s4, s11
                  sub          s0, s7, s10
                  addi         a1, tp, 483
                  nop
                  auipc        s4, 151058
                  add          s4, sp, s7
                  lui          a1, 162069 #end riscv_int_numeric_corner_stream_37
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_22
                  li           s8, 0x0
                  li           a4, 0xffffffff
                  li           sp, 0x80000000
                  li           a1, 0xffffffff
                  li           a7, 0x18f516a1
                  li           s4, 0x0
                  li           t3, 0x0
                  li           s1, 0xffffffff
                  li           s9, 0x8c75e378
                  nop
                  auipc        a4, 91045
                  add          t3, sp, s9
                  lui          a7, 576370
                  auipc        t3, 924284
                  lui          s9, 1012422
                  lui          a1, 809130
                  auipc        sp, 946607
                  nop
                  lui          sp, 446606
                  sub          s8, s4, a1
                  lui          sp, 902844
                  addi         a1, a7, 944
                  lui          t3, 246042
                  auipc        a7, 556252
                  lui          s4, 830182
                  add          a7, s4, s1
                  nop
                  lui          a4, 744
                  nop
                  lui          t3, 421400
                  sub          a1, a4, a4
                  sub          s1, a1, s8
                  add          s8, t3, sp
                  sub          sp, s2, s9
                  add          a4, a7, s9
                  addi         a4, s1, 829
                  addi         s1, s4, 923 #end riscv_int_numeric_corner_stream_22
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_39
                  li           s5, 0x0
                  li           s10, 0xb62b5113
                  li           t6, 0x0
                  li           s0, 0xffffffff
                  li           t5, 0x9a7b3a5d
                  li           a0, 0x80000000
                  li           s6, 0xffffffff
                  li           s8, 0x80000000
                  li           s4, 0xe1841cf
                  nop
                  add          s0, s4, s6
                  sub          gp, s6, a0
                  nop
                  auipc        s8, 318117
                  nop
                  auipc        s5, 183565
                  lui          s4, 168703
                  nop
                  lui          s5, 103953
                  nop
                  add          t5, a0, gp
                  addi         s10, gp, -1140
                  lui          s5, 756966
                  addi         a0, gp, -1384
                  nop
                  lui          s6, 26401
                  add          gp, gp, s4
                  lui          a0, 421659
                  add          gp, s5, t6
                  auipc        a0, 209596
                  add          a0, s6, s0
                  lui          a0, 84289
                  nop
                  add          s0, a0, t5
                  nop #end riscv_int_numeric_corner_stream_39
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           ra, 0x80000000
                  li           a0, 0xffffffff
                  li           s7, 0xffffffff
                  li           s1, 0x80000000
                  li           s5, 0xa27886d7
                  li           a2, 0x0
                  li           s3, 0x0
                  li           gp, 0xcfc1f328
                  li           tp, 0xffffffff
                  addi         a2, tp, 775
                  auipc        a0, 192377
                  sub          tp, ra, s1
                  auipc        s5, 835904
                  sub          ra, t6, gp
                  addi         a2, a0, 1178
                  nop
                  add          s1, t6, s5
                  sub          tp, tp, s7
                  addi         s3, s5, 166
                  nop
                  add          a0, a2, gp
                  add          t6, gp, t6
                  addi         s7, ra, -242
                  add          a0, a0, s7
                  auipc        t6, 162586
                  sub          s5, ra, a2
                  nop
                  sub          a0, s3, t6 #end riscv_int_numeric_corner_stream_31
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s11, 0x0
                  li           a7, 0xffffffff
                  li           sp, 0x3a055d3d
                  li           s4, 0x80000000
                  li           a2, 0xffffffff
                  li           a4, 0x8764d9f2
                  li           t4, 0xffffffff
                  li           s7, 0x0
                  li           a3, 0x80000000
                  auipc        s7, 1021906
                  lui          t4, 659227
                  add          s7, s4, a3
                  add          a3, a2, a2
                  sub          a3, sp, s7
                  addi         s11, s11, -346
                  addi         s7, ra, 922
                  add          a3, ra, s11
                  auipc        s11, 419348
                  addi         a7, sp, -1425
                  lui          s7, 771373
                  sub          sp, a4, s7
                  lui          a4, 767190
                  auipc        t4, 602200
                  sub          a4, s4, a4
                  auipc        a7, 496489
                  addi         sp, a4, -624
                  lui          s7, 249160
                  add          a7, s4, sp
                  add          s4, a3, a7
                  sub          a3, a7, a4
                  addi         t4, s11, 623
                  add          sp, a4, a2
                  lui          a3, 432316 #end riscv_int_numeric_corner_stream_14
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s7, 0x888aace6
                  li           sp, 0xffffffff
                  li           a1, 0x0
                  li           ra, 0x80000000
                  li           s3, 0x0
                  li           gp, 0x0
                  li           s1, 0x0
                  li           a2, 0xffffffff
                  li           s5, 0xde493004
                  auipc        s5, 364310
                  add          s7, s7, a0
                  nop
                  auipc        a1, 628994
                  lui          sp, 325162
                  auipc        a2, 956487
                  lui          s3, 784469
                  lui          s5, 163159
                  add          s3, s3, gp
                  auipc        a2, 949406
                  nop
                  auipc        a2, 528995
                  addi         a2, s5, -1127
                  lui          s7, 811814
                  sub          a0, sp, sp
                  add          ra, ra, a2
                  add          s3, a1, s1
                  auipc        s1, 163721
                  add          s3, a1, s7
                  addi         ra, ra, -1757
                  auipc        a2, 152155
                  nop
                  lui          sp, 482848
                  nop
                  add          gp, s3, s5 #end riscv_int_numeric_corner_stream_0
                  li           a3, 0x5a9c97f9 #start riscv_int_numeric_corner_stream_33
                  li           s0, 0xe9415906
                  li           tp, 0xf846dfb5
                  li           a1, 0xffffffff
                  li           a0, 0x80000000
                  li           s1, 0x1414855
                  li           sp, 0xa0099d00
                  li           ra, 0xc0bd3f8
                  li           s8, 0x80000000
                  li           gp, 0x80000000
                  addi         sp, s8, -773
                  auipc        tp, 855596
                  add          a1, sp, a1
                  nop
                  lui          s8, 251050
                  sub          s1, s8, a3
                  sub          a3, gp, a0
                  auipc        sp, 554368
                  lui          s8, 117466
                  lui          s1, 944068
                  nop
                  add          s1, a0, s1
                  addi         s0, gp, -269
                  lui          a3, 599622
                  add          a3, a3, gp #end riscv_int_numeric_corner_stream_33
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_21
                  li           s1, 0x0
                  li           tp, 0x80000000
                  li           sp, 0x8545bf4a
                  li           a7, 0xffffffff
                  li           s10, 0x80000000
                  li           t3, 0x0
                  li           t6, 0x0
                  li           a3, 0x0
                  li           s9, 0x80000000
                  lui          t6, 332715
                  addi         s9, t6, 1353
                  nop
                  addi         s10, t6, 573
                  add          t3, s1, tp
                  lui          s1, 764576
                  auipc        tp, 981734
                  sub          s10, s10, t3
                  addi         t6, sp, 1
                  lui          tp, 340849
                  auipc        s9, 75639
                  nop
                  sub          sp, a7, t6
                  nop
                  sub          t3, t6, t6
                  addi         s10, s1, 498
                  auipc        tp, 611645 #end riscv_int_numeric_corner_stream_21
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           a7, 0xffffffff
                  li           s11, 0x0
                  li           gp, 0x0
                  li           s9, 0x80000000
                  li           s7, 0x80000000
                  li           s6, 0x80000000
                  li           t1, 0x6b4ae827
                  li           sp, 0x80000000
                  li           s0, 0x99656039
                  sub          gp, a7, t1
                  add          gp, sp, s0
                  lui          s2, 726766
                  sub          s2, s9, t1
                  nop
                  addi         gp, s11, 711
                  sub          s0, s0, s11
                  nop
                  add          s7, s0, s6
                  lui          s7, 596037
                  nop
                  sub          t1, s11, gp
                  auipc        s2, 882542
                  nop
                  add          s0, s0, a7
                  lui          a7, 923146
                  addi         s0, gp, 599
                  addi         gp, s11, -2005 #end riscv_int_numeric_corner_stream_29
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li           s11, 0x80000000
                  li           s8, 0x0
                  li           ra, 0x300d46e7
                  li           t1, 0x80000000
                  li           sp, 0xb63d960c
                  li           t3, 0x3ac4ee09
                  li           s0, 0x0
                  li           s7, 0x0
                  li           gp, 0xeb9cf6d7
                  auipc        t3, 538835
                  add          ra, ra, sp
                  add          t1, t3, s11
                  add          s6, s11, s8
                  add          s11, ra, s11
                  lui          s11, 193695
                  add          sp, ra, gp
                  addi         ra, sp, 80
                  auipc        s0, 350517
                  nop
                  add          s0, s11, s0
                  auipc        t3, 677166
                  addi         sp, ra, 803
                  lui          t1, 140723
                  add          ra, s7, gp
                  nop
                  addi         gp, s11, 1479
                  auipc        ra, 879112
                  lui          ra, 154254
                  lui          ra, 427075
                  lui          t3, 514756
                  sub          s7, s0, s0
                  lui          sp, 284986
                  addi         ra, s8, -651
                  lui          sp, 475720
                  auipc        s11, 647037
                  addi         sp, sp, 119
                  sub          s11, gp, ra
                  lui          s0, 463417 #end riscv_int_numeric_corner_stream_32
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_28
                  li           s0, 0x80000000
                  li           a2, 0x6ccc43b
                  li           a4, 0xffffffff
                  li           s4, 0x80000000
                  li           s3, 0xffffffff
                  li           s10, 0x5a6728b1
                  li           ra, 0x80000000
                  li           a1, 0x0
                  li           a0, 0xffffffff
                  sub          a0, a1, ra
                  nop
                  sub          a4, a0, a0
                  lui          s4, 391802
                  addi         a1, s3, -1483
                  nop
                  nop
                  nop
                  auipc        s4, 689570
                  sub          s3, s3, s6
                  auipc        a2, 401375
                  add          a2, a4, ra
                  auipc        s4, 1005330
                  lui          s0, 1026341
                  addi         a4, a1, 1876
                  sub          a1, s6, a1
                  addi         ra, s6, -1814
                  lui          ra, 551192 #end riscv_int_numeric_corner_stream_28
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           s8, 0xeaf5af47
                  li           a5, 0x8465b01b
                  li           a3, 0x0
                  li           s2, 0x0
                  li           sp, 0xffffffff
                  li           a2, 0xffffffff
                  li           t3, 0x0
                  li           a0, 0x80000000
                  li           s9, 0x80000000
                  add          sp, s8, sp
                  lui          s6, 887413
                  lui          a3, 456580
                  sub          a0, a0, s6
                  lui          s6, 953783
                  auipc        s2, 999282
                  addi         s6, a0, -1392
                  add          a2, s6, a3
                  auipc        a0, 28026
                  auipc        a2, 528542
                  addi         a5, a5, -812
                  addi         s9, s2, 582
                  auipc        s2, 290670
                  addi         s8, s8, -1988
                  lui          s8, 826957
                  addi         a3, a3, -290
                  auipc        sp, 137510
                  add          a0, sp, s8
                  sub          s9, a5, a5
                  auipc        a3, 183649
                  add          t3, a5, s9
                  sub          s9, t3, a5 #end riscv_int_numeric_corner_stream_12
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s5, 0xffffffff
                  li           ra, 0xc6b8b677
                  li           t6, 0x80000000
                  li           a1, 0xe897e846
                  li           a3, 0x0
                  li           sp, 0x42263fe1
                  li           t3, 0xffffffff
                  li           s6, 0x0
                  li           tp, 0x0
                  addi         sp, t6, -1863
                  nop
                  addi         a3, a3, 659
                  auipc        ra, 758225
                  add          t3, a3, s6
                  sub          s6, t3, a3
                  auipc        a3, 50159
                  nop
                  add          s5, s5, t3
                  add          t3, ra, tp
                  nop
                  sub          a1, t3, t6
                  nop
                  nop
                  add          t3, a1, t3
                  lui          ra, 427382
                  auipc        a1, 710480
                  sub          s5, sp, a1
                  lui          t3, 774016
                  add          tp, ra, tp
                  nop
                  nop
                  lui          t6, 169054
                  sub          t3, ra, t3
                  add          s7, a3, a1
                  add          sp, s5, a1
                  lui          tp, 223723
                  nop
                  sub          a3, s6, ra #end riscv_int_numeric_corner_stream_18
                  slti         s10, s8, 234
                  addi         gp, t5, -940
                  lui          s2, 932935
                  nop
                  xor          tp, a7, s6
                  sltiu        sp, a5, 2043
                  ori          t1, a7, -1731
                  sltu         ra, t5, s11
                  nop
                  srli         a3, s3, 28
                  andi         s9, a7, -1664
                  srai         s9, tp, 22
                  or           a1, a3, a3
                  srl          sp, a0, t3
                  srli         a1, t3, 14
                  sltu         a1, t1, a7
                  sltu         t3, s3, a3
                  auipc        s5, 663781
                  sltiu        sp, s2, -925
                  ori          gp, a2, -1850
                  and          s3, t6, a1
                  sll          s8, a6, t1
                  add          zero, a6, gp
                  addi         a0, a5, -227
                  addi         s9, a4, -293
                  lui          s2, 454360
                  auipc        s8, 39900
                  slt          s0, t5, s3
                  add          a7, a7, s8
                  srl          a3, t2, a0
                  sltiu        a7, t5, 363
                  sra          tp, s6, a0
                  andi         a5, s6, 1454
                  auipc        a2, 33477
                  lui          s7, 646274
                  nop
                  slt          a0, s7, a4
                  xori         s9, s2, 1596
                  srai         a5, a5, 24
                  srai         s7, s9, 7
                  sltu         tp, tp, s0
                  or           a3, t5, tp
                  sub          s9, t3, a7
                  lui          s3, 110412
                  xori         a1, t4, 1333
                  and          ra, ra, s6
                  slt          t1, t5, a5
                  auipc        tp, 371943
                  xor          a3, s6, a6
                  slti         t3, s5, 747
                  addi         s4, s3, 1797
                  lui          ra, 992581
                  xori         s2, s3, -28
                  sub          a4, tp, a2
                  xor          t3, t5, t2
                  srl          s4, s6, t5
                  xori         zero, tp, -1515
                  slti         s6, s8, 1357
                  sll          ra, s10, s2
                  sub          s11, a0, s7
                  slli         zero, s9, 12
                  slli         zero, zero, 4
                  addi         t3, gp, -1664
                  srli         s7, s7, 20
                  slt          s11, sp, tp
                  andi         s1, s1, 1505
                  add          s4, tp, s11
                  sra          gp, a1, s1
                  sltiu        zero, a7, 73
                  sltu         gp, s0, a7
                  sll          s5, gp, s5
                  ori          s7, a3, -1775
                  srl          s0, ra, t6
                  xor          s1, zero, s11
                  auipc        s7, 248844
                  srai         a0, t0, 16
                  addi         s7, s3, -806
                  sub          gp, s5, s0
                  slt          a4, s5, t1
                  xori         s5, s10, -182
                  nop
                  nop
                  sltiu        a4, ra, -1313
                  sltu         ra, s4, t1
                  nop
                  slli         s4, s6, 5
                  ori          s8, a3, -166
                  srli         t5, s2, 4
                  xor          a1, t2, a4
                  addi         ra, a6, -1358
                  addi         ra, t2, -1103
                  sltiu        a4, a0, -917
                  or           gp, a5, t0
                  auipc        a3, 621462
                  xori         s11, t2, 1132
                  sll          a2, t2, s1
                  srli         t6, a2, 23
                  srai         s5, s2, 20
                  slt          s7, zero, t0
                  sltu         s7, s5, t0
                  slt          s8, s7, s9
                  slli         s8, t5, 13
                  auipc        s6, 646990
                  slt          a5, t1, a4
                  slti         t4, a5, -1211
                  sra          a2, t5, s7
                  xori         t6, zero, -1109
                  lui          s0, 139667
                  srl          a3, tp, s6
                  ori          a2, a0, -1448
                  slti         t5, s6, 1699
                  srai         s6, a0, 24
                  add          tp, s8, a6
                  xor          s3, a7, a0
                  sltiu        a7, s9, 1960
                  xori         a7, s0, 1743
                  auipc        s4, 899681
                  sltiu        s1, t5, 2036
                  srli         ra, t6, 11
                  sltiu        a4, t6, 700
                  sll          s1, tp, s3
                  sll          s9, ra, ra
                  xor          ra, gp, s11
                  xor          s7, a5, s9
                  addi         s10, t0, 1329
                  and          a1, t5, s6
                  xor          s1, a4, a6
                  add          zero, t2, s8
                  slt          t6, s0, t4
                  sll          s8, s1, s7
                  slt          s1, s2, s3
                  xor          a2, s11, t6
                  slti         a0, t3, -741
                  xori         a4, zero, -1420
                  sub          s9, a5, s7
                  or           s5, s10, a3
                  sra          s2, s8, a1
                  and          a7, s0, s2
                  xor          s3, s8, t2
                  sltiu        a2, s6, 871
                  slt          s8, t2, t3
                  or           ra, s10, s8
                  sltiu        s6, s10, 1878
                  and          t1, s8, s3
                  add          gp, a5, t2
                  add          s8, t6, a5
                  ori          s10, t2, 1387
                  xor          s5, t2, zero
                  auipc        s9, 483240
                  sll          tp, gp, s3
                  sltu         s1, s4, s4
                  addi         t3, a7, 645
                  and          s4, sp, s0
                  srl          s8, s9, sp
                  srai         a2, t1, 6
                  slt          s8, t2, t4
                  sub          a7, s9, a2
                  add          s9, t4, a0
                  xori         s2, t4, 759
                  srl          a3, s1, t3
                  auipc        sp, 833142
                  slti         zero, a0, -1264
                  lui          ra, 878301
                  sll          s2, ra, zero
                  and          t5, s9, a0
                  lui          s5, 957235
                  srl          t3, sp, s8
                  nop
                  sub          a4, s3, t1
                  and          s8, s8, gp
                  andi         s3, a3, -1087
                  srli         a1, t1, 5
                  sub          gp, tp, s8
                  sltiu        tp, tp, 771
                  sltiu        a7, s9, -1022
                  sltu         s1, gp, t1
                  or           gp, t5, s2
                  lui          t1, 571796
                  slli         s4, ra, 11
                  xor          s4, s0, s7
                  srai         tp, t3, 15
                  ori          a0, s9, -784
                  add          tp, s1, t3
                  addi         gp, s1, 1264
                  srl          s2, s8, a3
                  sltiu        t4, a2, -2038
                  sltiu        a3, t6, -21
                  xori         s0, t1, 1177
                  ori          a1, s6, -134
                  xor          a0, zero, s0
                  nop
                  auipc        tp, 697702
                  addi         s3, t4, 1484
                  or           a2, a3, a5
                  or           t3, s4, s3
                  slti         a1, s7, -476
                  addi         a7, sp, 606
                  or           s7, s4, s6
                  auipc        s9, 892576
                  and          s8, s5, t5
                  srai         s6, s6, 16
                  sltiu        a2, a5, -802
                  ori          a3, s7, -1108
                  auipc        gp, 955522
                  ori          s8, t4, -1942
                  lui          s7, 89224
                  srl          s11, t5, s3
                  sub          s4, ra, t6
                  and          t4, sp, s1
                  addi         s10, s8, 1139
                  slli         s5, t1, 16
                  xor          a3, t0, s11
                  or           sp, a4, t5
                  sltu         s7, ra, a4
                  sub          s6, t3, s2
                  andi         s11, sp, 409
                  ori          a4, t0, -377
                  andi         a3, a2, 281
                  andi         s7, sp, -145
                  sltu         s8, s5, a7
                  auipc        s1, 33450
                  sra          s4, s0, s5
                  add          s9, sp, a1
                  sll          tp, tp, t1
                  auipc        s1, 521727
                  srai         s11, a7, 7
                  xor          a4, a3, zero
                  slt          t3, s0, a1
                  andi         gp, a5, 764
                  auipc        s8, 175825
                  and          t5, tp, t5
                  slli         s3, t3, 13
                  nop
                  and          s2, s7, t2
                  srai         a4, s5, 0
                  add          s0, s11, a3
                  sltu         s11, ra, a6
                  andi         s0, s8, 627
                  and          a4, a0, a3
                  andi         gp, t4, 1180
                  sll          a1, sp, a5
                  ori          ra, t4, 743
                  sra          tp, s11, s6
                  sub          s2, s7, s4
                  or           s2, t5, t6
                  slt          t3, s2, a5
                  srl          a2, s2, a0
                  sltiu        a0, a2, -1461
                  slli         s8, t5, 10
                  sltu         t5, s8, a6
                  sra          sp, s3, a1
                  and          s4, a1, a1
                  slli         a7, t0, 14
                  lui          a3, 216014
                  or           s5, gp, a6
                  sub          t6, s7, a4
                  nop
                  slti         gp, a0, 1434
                  add          a4, tp, a4
                  addi         s4, s5, -1106
                  srli         s5, a6, 14
                  lui          a1, 850359
                  auipc        t4, 1001176
                  and          sp, t1, s4
                  and          t5, t4, zero
                  sra          t6, s6, zero
                  sltiu        s6, sp, 1992
                  srl          t4, a4, sp
                  sra          s1, a2, s2
                  slli         s5, s10, 22
                  srli         s7, a4, 0
                  sra          a5, a4, zero
                  ori          s4, s4, -391
                  auipc        tp, 816336
                  slli         s7, s1, 20
                  andi         s9, sp, -1163
                  slli         t5, s7, 18
                  and          a3, a5, t2
                  slti         t5, a2, 1853
                  sltiu        a5, s3, -287
                  slli         s1, a5, 15
                  sub          s3, t3, s10
                  slt          a5, t0, a5
                  or           t4, zero, sp
                  sltu         a3, s0, gp
                  srl          sp, s11, s6
                  sub          a3, s8, s5
                  nop
                  ori          t4, s5, 1015
                  addi         sp, s1, 68
                  srli         a1, s10, 5
                  slt          s7, a2, t1
                  sub          a1, s8, a6
                  and          a5, t3, s1
                  slli         s2, a2, 18
                  nop
                  nop
                  lui          sp, 277182
                  slli         s1, t4, 24
                  sltu         s5, s10, s3
                  slt          a3, s11, s5
                  and          a7, a5, s3
                  srli         ra, a3, 27
                  xori         s10, a2, -1683
                  slli         tp, s11, 21
                  xori         zero, s3, 1256
                  andi         a5, t6, 1789
                  sub          s4, a4, gp
                  slti         a7, t2, -160
                  sltu         s8, t5, a4
                  sub          s8, a1, s4
                  lui          t5, 35341
                  slti         t6, ra, -682
                  sltiu        tp, ra, 275
                  srai         tp, s5, 9
                  slt          a2, t5, s6
                  sub          t1, sp, t2
                  sltiu        t3, s4, 507
                  srai         s0, s2, 5
                  sll          t3, gp, a1
                  auipc        s0, 354100
                  slti         t1, zero, 757
                  add          t3, s8, a7
                  slt          s10, s10, gp
                  sll          a3, t1, s11
                  or           s1, t3, t6
                  xor          ra, t3, s10
                  xor          ra, s1, a1
                  sll          sp, s9, t1
                  slt          t1, t2, a0
                  sltiu        s4, a3, 71
                  slli         gp, s7, 18
                  nop
                  or           t1, sp, tp
                  auipc        s3, 374663
                  addi         s7, s9, -1050
                  nop
                  sltu         t4, t5, a6
                  srai         tp, s1, 13
                  slli         a1, t4, 30
                  slli         s6, gp, 18
                  nop
                  sub          gp, t6, s10
                  sltiu        ra, s0, -1096
                  sub          a5, t4, a4
                  srli         a5, ra, 29
                  xori         t5, s3, 957
                  ori          a4, a7, 1681
                  xor          a3, s4, a3
                  sub          s7, s9, s3
                  or           s1, t5, t1
                  xori         s11, s3, -1141
                  andi         tp, s0, 146
                  slti         a4, t0, -1028
                  sll          s5, s0, a1
                  nop
                  slti         sp, a0, -1779
                  slli         t3, sp, 3
                  nop
                  xor          s3, s4, t1
                  andi         t3, a4, -709
                  sra          t3, a3, s3
                  srl          tp, s10, s1
                  slli         s4, s7, 18
                  addi         s9, zero, -1077
                  sltu         a4, a7, s8
                  slli         s0, t4, 8
                  sltu         s9, a7, a5
                  auipc        s3, 663136
                  and          s0, a0, ra
                  srl          t6, zero, t1
                  slli         s1, t5, 4
                  or           s11, gp, s7
                  xori         a0, sp, -1349
                  srai         s7, zero, 21
                  auipc        tp, 537401
                  sub          s1, sp, t5
                  sltu         s2, t2, s7
                  addi         s3, s2, -1125
                  lui          t4, 235842
                  xor          s10, a2, sp
                  xori         s2, a2, -829
                  slli         t3, s5, 20
                  xori         s2, t1, 625
                  ori          s5, a0, -1909
                  or           s3, zero, zero
                  or           gp, s9, s4
                  andi         t3, a0, 1098
                  xor          s2, tp, t6
                  auipc        a4, 630675
                  nop
                  srli         a1, s4, 16
                  or           a0, gp, s0
                  ori          a4, t3, 1921
                  sltiu        a3, t1, 41
                  slt          t1, t1, s6
                  and          a3, s8, sp
                  sltu         t5, s7, t4
                  andi         s1, s10, -268
                  slli         s9, t4, 21
                  slt          t3, s11, t4
                  slti         t1, t5, 653
                  xori         s6, t3, -24
                  sltu         s6, s1, t3
                  ori          s7, s6, 795
                  sltiu        t6, gp, 1251
                  xor          t3, t4, s5
                  sra          a2, s2, t4
                  sra          t4, zero, s4
                  andi         a0, a0, 1959
                  sltu         t5, s1, a5
                  or           t3, a1, t1
                  xori         s4, a4, 1250
                  sltu         s0, gp, t5
                  srai         a0, s6, 18
                  auipc        s0, 963571
                  sub          s4, s8, t5
                  addi         s4, a4, -608
                  add          sp, s4, sp
                  sltiu        gp, a6, 988
                  sra          s2, t1, s10
                  sra          sp, zero, a3
                  and          zero, s8, s8
                  srai         s6, s4, 11
                  sltiu        a2, t1, 70
                  lui          s11, 557918
                  srl          ra, sp, s1
                  or           t5, s5, a6
                  slli         s5, t5, 8
                  xori         tp, t6, -761
                  xori         s0, s0, -115
                  and          gp, s11, t4
                  slt          s3, t6, s8
                  xori         s6, t2, -1156
                  ori          s3, gp, -124
                  sll          a3, a1, t1
                  xori         s1, t2, 702
                  lui          s5, 1027147
                  andi         a2, a3, 1486
                  addi         a4, zero, 1717
                  andi         zero, a6, -878
                  auipc        a7, 477932
                  slt          a7, a6, s0
                  slt          a5, s7, t4
                  sll          s5, s5, tp
                  srai         a1, s3, 28
                  xor          s6, gp, a0
                  ori          t5, a7, 1247
                  or           a0, a7, tp
                  auipc        t3, 634256
                  lui          t3, 955657
                  xori         s10, a5, -1265
                  sub          t6, s11, sp
                  sll          t1, s7, zero
                  sub          a1, s5, a6
                  sra          a0, a3, s7
                  slli         s8, s5, 28
                  slti         t3, s8, -529
                  and          sp, t4, gp
                  slt          ra, s8, t6
                  sll          s4, ra, s6
                  slt          s10, s5, s0
                  addi         s3, s3, 352
                  slt          s1, tp, s0
                  srai         s8, s10, 14
                  srli         t4, s2, 10
                  sub          a2, gp, s9
                  sub          s4, t3, s10
                  sll          s5, t3, t0
                  addi         s10, a4, -1913
                  addi         a5, a1, -44
                  sra          a2, s4, s1
                  add          s5, t4, t2
                  sra          s6, a1, zero
                  sra          ra, t2, s0
                  srli         s8, s6, 22
                  addi         a3, zero, 1784
                  sub          a3, a5, a1
                  srli         t5, a6, 21
                  xori         s2, gp, -785
                  slli         s11, a1, 24
                  xor          zero, t2, t6
                  sll          zero, sp, gp
                  slti         a5, s9, 1427
                  slti         s4, s5, 1046
                  auipc        s4, 384497
                  sltiu        s5, gp, -381
                  slt          t1, s4, a4
                  sltiu        a5, t2, 1394
                  and          s11, a5, s5
                  add          a3, tp, s2
                  sltu         a2, gp, a3
                  addi         t3, a3, 1992
                  ori          zero, t6, 1662
                  sub          s10, t0, zero
                  xor          t5, t5, a0
                  addi         t1, s9, -766
                  srli         s9, a6, 15
                  srl          sp, a0, t1
                  xor          a0, a3, t4
                  sll          t5, a3, s7
                  xori         a4, t4, -1195
                  sub          t4, a5, s9
                  ori          s3, t6, -1348
                  and          a4, t3, tp
                  and          gp, gp, s5
                  srl          t1, s1, s11
                  xori         t3, a4, -487
                  slli         t1, a4, 15
                  srli         t3, s11, 15
                  srli         s2, s3, 16
                  sltiu        a5, t1, -156
                  srli         s2, a4, 22
                  srl          s9, s1, sp
                  xor          a0, t5, s9
                  add          a1, t3, t6
                  srli         gp, s11, 24
                  slt          s8, a0, t4
                  srl          s4, s11, t6
                  add          s1, a4, s9
                  slt          a0, s5, s3
                  sltiu        s11, a7, 213
                  lui          a3, 825755
                  or           s7, tp, a6
                  xori         zero, s1, -1515
                  xori         s7, sp, 1996
                  andi         s9, tp, -112
                  or           t1, s0, s1
                  sltiu        t3, t5, 322
                  or           a3, s11, s5
                  ori          s10, a6, 1597
                  sra          s10, a7, s3
                  slt          a4, s5, t6
                  sll          zero, a3, s3
                  auipc        t3, 862354
                  sltu         a0, s5, a0
                  or           s0, a7, t2
                  add          tp, t0, s9
                  auipc        a7, 750508
                  srl          a4, a0, zero
                  or           ra, zero, s10
                  lui          tp, 692450
                  sltu         t1, s9, tp
                  and          s6, t2, t4
                  slti         zero, s3, 1868
                  srl          a3, t0, s7
                  auipc        s2, 1007281
                  slli         zero, a3, 2
                  sub          s9, t3, gp
                  slt          t5, t6, ra
                  and          ra, gp, a3
                  sll          s9, zero, s2
                  sll          t1, s8, s9
                  sltiu        t5, t6, -941
                  sltiu        a2, s9, 775
                  lui          s6, 1015060
                  or           gp, s10, tp
                  srli         a3, t0, 4
                  lui          s2, 619280
                  sra          s9, a6, s9
                  sltu         s3, a5, a3
                  srai         a2, s8, 31
                  sra          t3, a7, s8
                  sra          a4, tp, a7
                  srai         t3, s1, 24
                  addi         gp, zero, 187
                  andi         zero, zero, 1103
                  sltu         s4, s5, a0
                  slt          gp, tp, a5
                  sltiu        gp, t1, 54
                  nop
                  slti         s5, t2, -489
                  sra          a5, s9, a1
                  and          a5, s7, s7
                  or           s0, s8, t3
                  sltiu        s4, t6, -986
                  nop
                  ori          s7, zero, -1228
                  lui          t1, 769558
                  and          t4, a5, a4
                  or           a1, a7, t5
                  srl          s2, a0, s10
                  slt          zero, t5, t0
                  addi         s11, t3, 885
                  addi         sp, a4, 456
                  or           t1, a3, s1
                  sltiu        s5, a3, -207
                  sltiu        a0, gp, -63
                  andi         t6, s1, -1354
                  xor          a2, tp, s9
                  lui          zero, 668910
                  and          a4, a3, s9
                  slli         a0, a3, 16
                  xori         s7, t6, -1326
                  nop
                  andi         a7, s10, 478
                  sltiu        s9, t4, 143
                  srl          s5, t6, a7
                  sltu         ra, t1, a0
                  sll          a7, ra, t1
                  xor          s1, s7, t5
                  or           s0, s7, gp
                  sltiu        s7, s6, -1811
                  ori          tp, sp, -899
                  sltu         s9, t0, a1
                  andi         s9, t4, -1812
                  sltiu        s4, sp, -1833
                  lui          a4, 983556
                  addi         s3, t4, 50
                  slli         a2, s4, 30
                  andi         s10, s8, -351
                  slti         t4, a2, -657
                  sltiu        a5, t4, -1702
                  sub          s2, a7, t1
                  srai         t1, t6, 7
                  nop
                  slt          s6, t0, s9
                  sub          t4, ra, a2
                  add          gp, a1, s10
                  slli         a4, a3, 19
                  srli         gp, t3, 24
                  nop
                  srl          a7, s9, s6
                  xori         s8, s4, 330
                  or           s3, a5, ra
                  lui          a3, 175309
                  ori          t4, s11, 1118
                  srai         t1, t2, 9
                  and          s1, a2, s5
                  ori          t1, a7, -627
                  srli         ra, t4, 25
                  srai         s9, s9, 3
                  srli         s2, ra, 4
                  sltu         s8, zero, tp
                  sltiu        a2, s6, -1016
                  slt          t3, s11, zero
                  nop
                  auipc        s4, 514708
                  lui          t6, 674522
                  ori          s1, s4, 1173
                  sltiu        s1, t0, -1827
                  xori         s2, s10, 1390
                  srl          s3, a3, ra
                  sltiu        a5, a2, 490
                  nop
                  sra          a7, s8, s10
                  xor          a1, a0, t0
                  slti         s7, s0, -1875
                  sltu         t6, s6, s7
                  srl          s1, s2, s9
                  and          s0, s2, a1
                  nop
                  or           s9, ra, s5
                  slti         s7, gp, -219
                  slli         t4, a3, 13
                  srai         s7, a3, 16
                  slt          a4, a4, t4
                  slli         t4, tp, 1
                  nop
                  sltu         a2, t1, ra
                  and          s11, zero, sp
                  lui          t4, 578795
                  xori         s9, a0, 1687
                  add          t3, a0, s2
                  ori          t1, a4, -1754
                  addi         sp, a6, 2012
                  sra          s1, s9, s7
                  addi         s2, tp, 1263
                  sll          sp, s5, s1
                  xori         s8, sp, 4
                  ori          t6, a3, 1596
                  srli         s2, t5, 29
                  andi         a2, a1, -1010
                  srai         s10, a5, 20
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           a3, 0x80000000
                  li           a0, 0xd8ddc053
                  li           a1, 0xffffffff
                  li           s2, 0x3164133c
                  li           s3, 0xffffffff
                  li           a7, 0xe8110f9
                  li           s6, 0x0
                  li           a4, 0x80000000
                  li           tp, 0xffffffff
                  auipc        s2, 87499
                  nop
                  auipc        a3, 393880
                  sub          a1, s6, tp
                  add          a0, tp, a1
                  add          a7, tp, s2
                  nop
                  add          tp, a1, a0
                  addi         a5, s6, -1627
                  sub          a7, a7, a0
                  sub          a3, s2, a7
                  auipc        a5, 330428
                  lui          s2, 414175
                  addi         a3, a7, 1739
                  addi         a0, s6, 1198
                  add          s6, a5, a1
                  auipc        s6, 754935 #end riscv_int_numeric_corner_stream_30
                  ori          ra, a0, 255
                  add          sp, t3, t5
                  sub          ra, sp, s8
                  srli         a0, s7, 26
                  sra          s1, s11, tp
                  xori         s11, s2, 36
                  sll          s10, s11, t1
                  srl          a0, ra, s3
                  ori          tp, s11, 530
                  lui          s10, 33272
                  srl          s4, a4, tp
                  auipc        s5, 19298
                  lui          a0, 436930
                  ori          s3, t6, 1860
                  nop
                  slli         s3, t2, 8
                  sltu         s7, tp, a4
                  auipc        s7, 558300
                  lui          a1, 957130
                  slti         t4, s2, 1600
                  sra          s10, s0, s0
                  nop
                  and          s5, t6, sp
                  srai         a0, s2, 8
                  slli         s7, s6, 16
                  sltiu        a3, gp, 361
                  lui          a3, 792159
                  sub          a7, s7, s9
                  slti         s6, s3, 982
                  srai         a4, s0, 23
                  ori          s7, t2, -179
                  slt          a1, a4, s7
                  sra          s5, s1, s8
                  xor          gp, s6, s4
                  srl          t4, a0, a7
                  srai         s7, a4, 7
                  lui          tp, 647270
                  slli         a1, s11, 1
                  sltu         s8, a4, a3
                  and          s2, a1, s5
                  sltiu        a5, t2, -1068
                  andi         a3, a0, 1214
                  sltu         s10, s4, a7
                  sll          s3, t1, s3
                  srai         s7, a4, 23
                  ori          s10, s0, -1410
                  or           a4, gp, ra
                  lui          t5, 288099
                  ori          s5, a7, 1154
                  srai         a5, t4, 27
                  srai         t1, s3, 16
                  and          s3, s2, a1
                  slli         s2, t6, 26
                  slli         t1, t1, 27
                  nop
                  sra          s8, t3, s0
                  xori         a0, t2, 1736
                  nop
                  srai         a4, a3, 29
                  ori          s4, t0, -1401
                  andi         a7, a1, -1004
                  sltiu        s7, a1, -821
                  andi         s5, ra, 1511
                  srai         t1, t5, 18
                  add          s10, a3, gp
                  andi         s1, t6, -425
                  addi         s5, s4, 156
                  ori          t6, s3, -1146
                  add          a7, a2, s4
                  sub          a0, a2, s5
                  nop
                  add          s9, t1, s7
                  slti         a2, s8, 1751
                  sltu         zero, s7, sp
                  xori         a2, t4, -1483
                  andi         a5, gp, 1557
                  sra          a1, a0, a7
                  sll          a3, a2, t4
                  sltiu        a5, a2, -1444
                  addi         ra, gp, 12
                  and          s6, sp, a0
                  and          a5, ra, a5
                  nop
                  sub          gp, s2, ra
                  ori          tp, a3, 2009
                  auipc        t1, 54602
                  nop
                  sll          a4, s11, a5
                  sub          t3, s3, s3
                  xori         t3, a0, -1592
                  or           s11, a5, t2
                  and          s8, t2, s8
                  lui          gp, 962467
                  slt          s2, t5, a6
                  sltu         a7, tp, t1
                  sra          t5, t6, a5
                  srai         s3, t3, 9
                  sltu         s9, t3, s5
                  lui          s2, 403411
                  xori         s0, s9, -1044
                  sra          t1, zero, s9
                  sll          a2, a5, s10
                  xori         a2, s10, -1096
                  xor          s7, t6, t3
                  slt          a4, s8, t3
                  sltu         t5, zero, s6
                  lui          a3, 328760
                  andi         s10, s0, 373
                  and          a1, tp, t3
                  and          s1, s11, a1
                  add          s2, s10, t3
                  add          a5, s6, s3
                  andi         s2, s2, -1266
                  xor          zero, a4, a2
                  srli         s8, a5, 0
                  slli         s7, tp, 15
                  srli         s7, s10, 20
                  sltu         s5, a0, t2
                  sll          t6, s2, s5
                  srai         ra, s10, 22
                  or           a3, s3, t2
                  ori          tp, a3, -1232
                  auipc        zero, 718916
                  lui          sp, 899148
                  sub          a4, t2, s0
                  lui          a1, 1009188
                  slt          s9, zero, gp
                  sub          a2, t5, a5
                  sll          zero, tp, a2
                  srai         ra, t2, 5
                  xori         a3, a2, 270
                  slti         gp, a6, -352
                  sub          s4, a6, t0
                  sra          t1, t3, a2
                  nop
                  lui          zero, 855923
                  srai         gp, ra, 1
                  ori          t3, a3, 76
                  sub          s11, s3, s3
                  auipc        a0, 726717
                  xori         s1, zero, -611
                  ori          zero, s3, -995
                  srai         gp, a5, 29
                  srl          t5, sp, a4
                  srl          gp, a2, s1
                  sltu         s4, a3, s6
                  sltu         s11, s11, a6
                  nop
                  sra          s11, a7, s6
                  sub          a4, s6, t4
                  add          s8, a4, s10
                  ori          s6, a6, -1238
                  nop
                  sub          s0, s1, s3
                  sltiu        a3, t1, 891
                  ori          t1, s8, 1295
                  addi         t6, s9, 1713
                  sub          t1, t5, a0
                  sltu         a5, a6, t4
                  or           t3, a7, s5
                  srai         s8, a5, 13
                  sra          s8, t6, s8
                  sll          a2, ra, t4
                  sll          a3, a3, s10
                  slti         a0, a5, 959
                  srli         a5, sp, 2
                  sub          t6, t0, s5
                  slli         s5, s0, 26
                  addi         sp, s8, -1809
                  slli         a3, t2, 30
                  lui          s1, 64604
                  sll          zero, s6, t4
                  slti         a1, s5, 113
                  srli         a4, a5, 16
                  xor          s11, ra, s4
                  srai         gp, t2, 24
                  srl          zero, s11, t5
                  lui          tp, 278771
                  andi         s2, s2, 1068
                  slti         ra, s6, 421
                  srl          ra, t2, zero
                  srl          zero, s11, t1
                  srli         s7, a5, 22
                  auipc        a0, 641794
                  addi         a1, s8, 838
                  srai         a0, ra, 8
                  sra          s2, s6, gp
                  or           zero, gp, t4
                  sltu         s1, a1, t1
                  nop
                  slti         a3, a2, 1660
                  addi         s7, a4, -1560
                  add          a1, a6, ra
                  sra          a3, a7, sp
                  ori          t5, a1, 1165
                  srli         s2, s8, 9
                  srai         a5, t0, 16
                  andi         a3, zero, 1279
                  lui          s5, 618989
                  or           tp, gp, s6
                  sra          gp, a5, t6
                  xori         tp, a7, -466
                  slt          s0, a7, t5
                  slli         s5, s9, 3
                  nop
                  sll          a1, s11, ra
                  sra          s2, gp, t1
                  srai         s10, gp, 15
                  sll          t1, s1, t3
                  srl          t6, t0, a5
                  srli         t4, a1, 18
                  slti         a7, a2, 1776
                  sltu         gp, s11, s9
                  ori          t5, t5, -338
                  addi         s0, a6, 455
                  slt          a3, zero, gp
                  srl          a0, s5, a2
                  sltiu        tp, zero, -1387
                  auipc        a3, 294184
                  sltu         s9, s0, s1
                  xori         s2, s10, 919
                  slt          s9, a7, s10
                  auipc        t1, 37399
                  nop
                  auipc        sp, 16127
                  and          a4, a4, t0
                  and          a1, s7, s10
                  srai         t1, a7, 17
                  srai         a5, s1, 31
                  auipc        ra, 325918
                  addi         a3, ra, 1312
                  sub          t4, s1, a7
                  add          s5, s3, t1
                  sltu         a3, s4, s2
                  addi         s10, t6, 5
                  srai         a7, s6, 14
                  sltu         s6, s2, t4
                  add          a5, zero, a0
                  slt          s10, t4, s0
                  slti         s2, a3, -1620
                  sub          a7, s9, a7
                  sltu         s3, a7, a6
                  xori         s5, t3, -194
                  srli         a4, s1, 20
                  andi         t1, t0, 179
                  sll          t1, t0, tp
                  sub          a0, s6, s5
                  sll          t1, t0, s7
                  sltu         s5, sp, s8
                  srl          t6, a1, a0
                  sltiu        s9, a7, 1245
                  slt          s2, a0, ra
                  srli         a2, s6, 4
                  andi         ra, t0, 682
                  sub          gp, t0, t2
                  xor          t1, t4, a7
                  slti         gp, s0, -1690
                  sll          tp, t6, s0
                  slli         s0, s6, 16
                  nop
                  xor          s6, tp, tp
                  srl          s8, s10, a3
                  sltiu        t5, t2, 294
                  auipc        sp, 144172
                  slt          a5, s9, zero
                  sltu         tp, t1, s3
                  andi         s5, zero, -555
                  srli         s8, sp, 15
                  sll          s10, t5, t1
                  slti         sp, s5, 1270
                  srai         zero, s5, 3
                  sub          sp, zero, s6
                  lui          gp, 1027373
                  ori          sp, sp, 352
                  sltiu        s2, t3, 882
                  srli         a7, tp, 25
                  addi         s0, s6, -542
                  srl          a4, s0, s9
                  srli         zero, s11, 6
                  srli         s2, s3, 25
                  srl          t3, a6, a5
                  and          t4, a1, a4
                  xori         s3, s9, 58
                  andi         s6, t0, 135
                  sltu         t3, zero, ra
                  sll          tp, t2, s1
                  nop
                  auipc        ra, 528530
                  xor          ra, t4, t6
                  nop
                  slli         s5, a7, 19
                  sub          a1, s0, a1
                  slti         s1, t1, 1752
                  addi         gp, t5, 1101
                  ori          a3, s3, -2030
                  xori         a0, a2, 1603
                  slli         t1, zero, 10
                  and          s8, a4, t2
                  ori          s7, s9, 1287
                  and          s4, s8, s3
                  nop
                  and          a3, ra, s8
                  lui          t6, 653063
                  slti         ra, sp, 551
                  xori         a4, s0, 1729
                  and          s11, t1, s9
                  lui          a3, 925571
                  srai         s2, s7, 23
                  auipc        s5, 321163
                  sll          t1, s5, sp
                  sub          zero, a4, a5
                  xori         a1, a2, 898
                  xori         s6, s0, -1323
                  xor          ra, s9, t6
                  slli         gp, s4, 17
                  xori         zero, s5, 1420
                  lui          s1, 994262
                  add          s1, t3, a0
                  and          a7, a4, t2
                  sll          a5, a0, a7
                  xori         a3, tp, 891
                  xor          a1, a3, s1
                  slt          zero, ra, s0
                  slli         a3, a4, 15
                  add          t4, gp, a6
                  slli         a1, s4, 16
                  sltu         s0, s0, t1
                  nop
                  addi         t4, s5, -885
                  andi         s8, s9, 1814
                  sll          ra, a4, a5
                  xori         t3, t6, 238
                  srai         a4, s3, 2
                  lui          t1, 975132
                  sra          a1, s8, s2
                  addi         a3, s5, -1438
                  srli         t5, s11, 8
                  sltu         tp, t0, s2
                  auipc        s1, 276907
                  sub          t5, s6, tp
                  and          s8, s10, s2
                  addi         s1, s3, 785
                  slti         s4, a0, -1864
                  sltiu        s1, a1, -1384
                  srai         a5, s2, 4
                  srli         s6, a7, 30
                  and          a7, s9, t6
                  lui          a7, 824854
                  xori         s7, sp, -303
                  slti         a3, a1, -663
                  slti         a5, a3, 1607
                  or           a3, gp, t0
                  and          s11, t1, s3
                  lui          s0, 97448
                  auipc        s2, 809908
                  srli         t1, a7, 10
                  xori         s5, s9, -1757
                  lui          s6, 548321
                  srl          s3, a7, s9
                  xori         s9, t1, 263
                  sltiu        s3, s3, 1242
                  sra          a7, t0, s4
                  sltu         gp, zero, t4
                  sll          a7, t5, t0
                  xori         s1, s9, -38
                  xor          s9, tp, zero
                  and          s6, a7, t3
                  srai         a1, t6, 4
                  lui          gp, 37791
                  addi         s4, a5, 918
                  srli         t5, a2, 16
                  srl          tp, t3, a6
                  slli         t3, a4, 17
                  sra          s4, a3, s10
                  slti         a7, zero, -1551
                  srl          s11, t3, a3
                  srai         a5, s7, 19
                  auipc        s5, 1043650
                  lui          s11, 159230
                  slli         s9, s4, 27
                  sltu         s2, sp, s5
                  auipc        t4, 332103
                  addi         s9, gp, -852
                  sll          a4, sp, ra
                  xori         s3, t1, -1620
                  xori         s3, a0, 857
                  srl          tp, t5, t0
                  lui          s11, 314391
                  srl          a1, s6, s8
                  srl          s11, s3, t0
                  srli         a1, s11, 0
                  addi         a1, s1, 49
                  or           ra, ra, a5
                  sra          a5, t2, s1
                  or           ra, t1, a2
                  sub          s5, s7, t5
                  slli         a7, sp, 20
                  sltu         s3, s6, a2
                  sltu         s10, sp, sp
                  xor          a4, t0, gp
                  ori          a5, gp, -1599
                  sltiu        tp, s4, -1410
                  slt          s2, a1, t2
                  srl          s2, s0, a3
                  auipc        s1, 976717
                  srai         tp, s1, 9
                  sltiu        zero, a1, 920
                  sltu         t5, s10, t5
                  sll          a7, t5, a1
                  srl          gp, s11, t4
                  slt          a7, s8, t0
                  srai         a4, s9, 27
                  srli         s8, tp, 6
                  auipc        s3, 592604
                  sra          a7, s7, s8
                  srli         zero, s0, 11
                  slt          s4, a6, s2
                  xori         s3, t1, 935
                  slli         s2, a1, 14
                  addi         s2, sp, 596
                  nop
                  slt          s5, a7, tp
                  slli         s11, a3, 29
                  nop
                  sub          s6, s3, s8
                  or           t3, zero, s4
                  srli         ra, s2, 19
                  slt          zero, tp, ra
                  srli         a7, sp, 26
                  nop
                  srli         s9, t0, 19
                  addi         t4, a5, 435
                  sll          s0, t4, tp
                  sll          ra, s2, s10
                  sltiu        s5, a5, 1921
                  lui          t6, 291337
                  sll          s6, s2, s7
                  lui          s1, 1014061
                  slli         s8, s2, 28
                  xori         s7, s0, 550
                  srl          s0, s7, gp
                  nop
                  slli         tp, a2, 5
                  sub          ra, t6, s1
                  srai         a0, a5, 21
                  xor          tp, t3, a0
                  xori         sp, sp, 1370
                  and          a3, a4, t5
                  andi         s0, s11, -35
                  srli         s11, gp, 25
                  ori          t1, a0, 417
                  xor          ra, a2, a3
                  andi         a4, s7, 1633
                  sub          s3, s3, t6
                  lui          s3, 211532
                  slti         s1, s2, -213
                  slti         s7, tp, -1629
                  slli         t1, a3, 22
                  addi         t6, tp, 1725
                  auipc        a3, 376574
                  slli         t4, sp, 20
                  sll          t5, t4, t3
                  addi         t6, t3, -1413
                  slli         t1, s1, 29
                  sltiu        s5, a3, 598
                  ori          s4, s5, -1219
                  srai         ra, a0, 31
                  srli         s3, s4, 18
                  sltiu        s5, s0, -1352
                  srli         s5, s10, 3
                  srli         tp, a6, 19
                  ori          a2, a6, -126
                  addi         s1, s11, -886
                  sub          s3, s3, s5
                  xor          s1, s2, a7
                  sra          t6, s2, t3
                  sltiu        s10, a7, -1990
                  and          zero, s4, s10
                  nop
                  lui          s11, 1045795
                  lui          s9, 235012
                  ori          s4, s6, -72
                  sll          s8, s4, t3
                  andi         s4, a4, 768
                  and          t3, t3, t1
                  slt          a3, a1, s1
                  andi         s11, s2, 1614
                  sll          gp, a1, s6
                  slt          s1, zero, s5
                  xori         s11, t0, -602
                  sra          a3, t2, t0
                  xor          ra, t5, s4
                  ori          a5, s10, 1986
                  sra          zero, s7, s2
                  nop
                  srai         s4, sp, 28
                  nop
                  auipc        s6, 965563
                  add          gp, tp, a7
                  srai         gp, s2, 12
                  sltu         a3, s10, a1
                  and          ra, a0, t3
                  addi         s11, a0, 1584
                  slti         t6, a0, -481
                  sra          s0, a1, a3
                  add          s7, s6, a4
                  srl          a4, s11, s10
                  slt          sp, tp, tp
                  ori          ra, tp, -1271
                  nop
                  sub          s8, s9, t6
                  srai         tp, s1, 0
                  sra          s6, t5, a5
                  addi         a4, t3, 1383
                  add          s1, t3, s11
                  add          gp, s10, t0
                  srl          a1, t6, a4
                  lui          s3, 535599
                  andi         ra, s1, -535
                  nop
                  srl          gp, a0, s4
                  sll          sp, gp, tp
                  sltiu        t6, sp, 1784
                  nop
                  srl          s0, s1, s5
                  xor          s9, a0, a0
                  srl          t3, a0, t1
                  xor          s7, a1, t4
                  xori         t6, t5, -143
                  sra          a7, s8, a6
                  slt          s1, gp, ra
                  xor          t1, tp, t1
                  sltu         s4, s8, t6
                  andi         t3, t3, -851
                  srli         t5, t3, 8
                  sltu         t4, zero, s7
                  nop
                  slt          s10, tp, s11
                  xori         t3, a4, 1837
                  sub          s11, t4, s8
                  srl          t1, tp, t1
                  sll          t4, s7, s10
                  srli         a0, a5, 12
                  lui          s0, 954798
                  andi         a4, s3, -1115
                  addi         s0, s9, 1931
                  nop
                  slli         s3, t5, 15
                  sll          s3, a6, s10
                  ori          a1, s2, 1568
                  add          t3, s3, s8
                  slli         s4, ra, 27
                  lui          s4, 1027442
                  xor          a0, a3, s1
                  andi         gp, t3, -1926
                  andi         t6, t5, 593
                  ori          s4, s6, 551
                  slti         a2, s5, -1613
                  auipc        s4, 668008
                  nop
                  addi         s3, s7, 1111
                  slt          s7, s3, a0
                  srl          s10, a0, t1
                  srai         zero, s10, 13
                  sub          t4, gp, s8
                  slli         s8, s4, 25
                  sltiu        s7, t2, 1280
                  slt          zero, s10, tp
                  addi         tp, s8, -1817
                  sltiu        gp, s3, -1571
                  or           s8, s0, t0
                  srli         s3, s10, 24
                  sltu         s11, t6, ra
                  nop
                  slli         s2, gp, 30
                  andi         t5, s0, 804
                  xori         a2, tp, -1917
                  addi         t6, ra, -1197
                  sltu         a4, t4, t0
                  auipc        s2, 16564
                  slli         s1, a0, 6
                  sltiu        gp, s8, -1626
                  sltiu        s1, s11, 853
                  slti         s11, s5, 896
                  srl          s9, sp, sp
                  add          sp, s7, s9
                  xor          a5, t5, sp
                  srl          s2, a0, t3
                  sra          a7, s11, zero
                  add          gp, t4, t2
                  slli         a5, a6, 14
                  sltiu        s7, s4, 1934
                  srli         s2, t3, 31
                  andi         a4, ra, 1047
                  srl          a3, s11, t0
                  addi         a1, t3, -2004
                  slli         a1, a0, 3
                  srli         tp, t3, 24
                  sra          s1, sp, s0
                  and          a0, gp, ra
                  sll          tp, t6, s9
                  addi         t5, a1, -1612
                  andi         sp, a2, 11
                  auipc        t1, 944804
                  sltu         tp, s6, t3
                  sltu         tp, s1, t5
                  sra          s1, a3, s8
                  xori         s1, s8, -1269
                  or           s11, a5, t4
                  xor          s9, t1, s0
                  andi         s11, a0, -1470
                  srl          t1, s8, gp
                  sll          a5, a2, s11
                  sll          ra, t0, s5
                  add          s5, s9, t2
                  auipc        s7, 618400
                  srl          a0, ra, a0
                  and          a2, sp, a5
                  sll          s9, s1, s6
                  and          s3, gp, s7
                  srai         tp, s10, 26
                  and          t3, t6, s10
                  sub          a5, t3, s8
                  andi         s11, s10, 1226
                  nop
                  nop
                  add          s2, a3, a5
                  nop
                  lui          s6, 883573
                  srai         a5, a4, 28
                  auipc        a5, 80305
                  ori          t1, sp, -1938
                  nop
                  andi         a5, s6, 214
                  sll          s1, s2, s6
                  sra          gp, a7, s10
                  xori         t3, ra, 344
                  lui          t6, 150251
                  and          t1, zero, ra
                  slt          t5, s7, a4
                  xor          a3, a3, s7
                  andi         s0, ra, 1378
                  srli         a7, a0, 24
                  sll          a1, s4, t0
                  sltu         a7, s9, s3
                  lui          s6, 752845
                  addi         s2, a0, 1795
                  sltiu        t3, s10, 724
                  sltiu        a7, s11, -942
                  sub          a7, a3, gp
                  srai         a7, s11, 18
                  sra          t4, s8, a5
                  xor          a2, s10, s10
                  xor          sp, s11, s9
                  sll          s2, t1, t0
                  addi         a5, t2, 1159
                  nop
                  auipc        t3, 727413
                  ori          s0, s9, 1324
                  sra          a2, s3, s9
                  slli         tp, ra, 16
                  sra          s0, a0, tp
                  slti         s10, a5, -1036
                  andi         t6, s7, -700
                  sub          s5, s11, s5
                  lui          t1, 153493
                  slli         s1, s2, 3
                  sll          s9, s8, s11
                  slti         s6, a5, -1219
                  or           s2, a4, zero
                  slt          t5, t3, a7
                  addi         t3, t1, -1920
                  slti         s9, s5, 980
                  srli         gp, s2, 22
                  sltiu        a1, zero, 1503
                  xor          s10, zero, t0
                  slli         s11, a5, 21
                  auipc        a0, 296736
                  nop
                  srai         a2, s9, 11
                  sll          s11, gp, s7
                  addi         t4, a2, -711
                  sub          s5, ra, a1
                  slti         s3, ra, -1398
                  slli         s5, t3, 31
                  add          gp, s7, t6
                  andi         s10, a1, -275
                  srl          tp, t1, gp
                  nop
                  ori          s7, s9, -738
                  srai         s2, s8, 9
                  lui          s5, 869525
                  sltu         s1, s9, s5
                  or           s4, t4, a1
                  srl          t5, t0, gp
                  lui          sp, 773063
                  lui          a4, 426930
                  srai         s2, s11, 8
                  slti         a7, zero, -1535
                  or           s7, s9, a4
                  addi         s0, s9, 983
                  srli         s5, a0, 15
                  sll          s5, s10, s5
                  srli         a7, t4, 12
                  lui          s9, 443360
                  ori          a0, a0, -1290
                  auipc        a3, 255363
                  srl          a3, s3, t2
                  and          s6, s8, a3
                  sra          s3, s4, t4
                  add          a1, a1, a7
                  ori          t3, a6, -1233
                  sll          s11, gp, ra
                  andi         ra, a4, -499
                  srai         s1, s9, 10
                  srl          s7, s4, s0
                  or           t3, t2, s9
                  and          t1, s0, a7
                  xor          zero, a2, ra
                  and          a5, a5, s10
                  sltiu        s8, a5, -107
                  ori          s3, gp, -48
                  sub          a5, s10, s6
                  srai         s8, a7, 3
                  slt          a1, a4, a0
                  slti         a2, gp, 1086
                  andi         a0, s3, -126
                  slt          s5, s8, a6
                  nop
                  srli         ra, s8, 1
                  sra          s8, a4, s7
                  slli         s0, t1, 5
                  lui          s4, 66298
                  nop
                  sltu         s5, t4, a2
                  slti         t6, t1, -402
                  slli         a5, s7, 19
                  xor          a2, a4, a3
                  sll          gp, a5, a4
                  and          sp, a1, a7
                  slti         zero, gp, 985
                  sltiu        a2, a2, -106
                  lui          a7, 99050
                  sll          tp, s2, s2
                  auipc        gp, 3361
                  xor          s9, a1, t4
                  sltiu        a5, a6, 1999
                  auipc        a3, 89674
                  slli         s10, a4, 3
                  slt          tp, t1, s11
                  srl          s5, s5, a3
                  ori          t3, sp, 427
                  xor          tp, t4, s5
                  addi         s3, s9, -1305
                  slt          s3, s5, s9
                  sll          tp, a6, s7
                  xor          zero, t1, a0
                  ori          a0, s0, -1633
                  sltiu        t5, s9, -342
                  srl          a0, t3, a5
                  srli         s1, s8, 24
                  addi         a4, a5, 485
                  or           tp, s8, s6
                  addi         a5, s3, 889
                  lui          a7, 236372
                  sltiu        s6, t2, -1003
                  srl          s9, t0, t5
                  slli         s9, t5, 24
                  slti         s3, a3, -1111
                  addi         s9, s3, 1450
                  auipc        a0, 780215
                  andi         t5, s5, 2027
                  and          s4, a4, a2
                  srl          a1, s6, s7
                  sltu         s0, tp, tp
                  xori         s7, tp, 569
                  sub          tp, a2, a3
                  srli         a7, s9, 9
                  nop
                  xori         t4, t2, -223
                  sub          s4, t4, s6
                  ori          t6, t0, 1759
                  addi         sp, s2, 1172
                  xori         s11, s3, 155
                  slti         a1, t6, 1566
                  ori          s10, a1, -1267
                  slt          ra, a6, s5
                  ori          tp, zero, 73
                  sra          a7, s3, sp
                  lui          zero, 421403
                  auipc        s11, 992236
                  andi         a0, a3, -1785
                  srli         a1, a3, 14
                  ori          t3, a5, 1244
                  slti         s8, t4, 1049
                  xor          a0, s6, s1
                  xori         s2, t6, -35
                  lui          ra, 800553
                  and          s2, t0, a4
                  andi         s1, a1, -253
                  sra          zero, s1, tp
                  ori          gp, s8, -1023
                  auipc        s11, 250875
                  xori         s7, a7, -40
                  auipc        s7, 508939
                  srli         a4, ra, 30
                  slli         ra, a6, 9
                  slt          s2, s7, s2
                  xor          s0, s10, s10
                  andi         a3, s8, -1549
                  ori          a5, a1, -638
                  nop
                  add          s3, a1, s9
                  slli         s4, a3, 4
                  add          gp, t2, t2
                  sll          s3, s7, a0
                  srli         t5, s8, 31
                  or           tp, t6, s10
                  addi         s2, t6, -1010
                  xori         t1, tp, -591
                  add          zero, s5, gp
                  slt          a7, s4, a7
                  sra          s5, s3, t5
                  srl          sp, s1, a5
                  slli         gp, s8, 29
                  add          a4, s5, a3
                  and          s6, a3, s4
                  sltu         s8, t6, a6
                  slti         t6, s5, 118
                  sub          s10, a1, t6
                  sltiu        t6, s3, 790
                  add          s0, a5, s8
                  ori          s8, a4, 652
                  sltiu        tp, a4, -1952
                  srai         s4, a0, 2
                  add          sp, sp, a6
                  srl          a4, a4, s8
                  addi         ra, s0, -193
                  xor          ra, sp, s6
                  sra          s5, s7, a7
                  lui          a7, 709977
                  nop
                  or           t6, s11, t1
                  auipc        gp, 341628
                  ori          t6, s3, -1040
                  sltiu        a7, a7, -1792
                  and          zero, a6, t3
                  xor          a1, sp, t4
                  slti         s11, gp, -1640
                  srli         a4, s5, 31
                  or           t6, a4, a2
                  slli         ra, t1, 30
                  auipc        s2, 322487
                  or           a2, s4, t4
                  addi         s5, a5, 1608
                  xor          s4, s6, a4
                  andi         a5, ra, 1504
                  and          sp, s2, s9
                  sltu         a5, s6, s2
                  or           tp, s4, t6
                  sub          s2, s11, s4
                  andi         sp, t5, 1351
                  xor          t5, a3, t1
                  sub          sp, a3, gp
                  srli         s0, ra, 10
                  xori         a0, a6, -355
                  slt          s11, s7, s11
                  and          s1, s7, a0
                  srai         s5, a1, 15
                  slli         s10, s7, 23
                  slti         a1, t3, -388
                  xor          t4, t6, s5
                  slt          a2, a5, sp
                  slli         gp, gp, 11
                  sub          a3, ra, s10
                  addi         a2, a2, 1999
                  addi         a4, s6, -532
                  auipc        a4, 969889
                  srai         s6, a4, 10
                  slti         sp, s11, -1603
                  add          a5, s8, s11
                  sub          a2, t6, zero
                  or           s11, t4, sp
                  and          a5, a0, a5
                  slt          a5, t4, s2
                  and          s11, a0, a2
                  srl          s10, s4, t6
                  srai         ra, gp, 14
                  srli         t4, t3, 31
                  sltiu        t1, ra, 930
                  nop
                  sltiu        a2, a6, -438
                  auipc        a7, 318428
                  add          s8, a7, t4
                  xor          a7, t2, a1
                  xor          s6, s1, ra
                  xori         s2, a1, -1265
                  andi         s2, s9, 1374
                  ori          a4, a5, 1311
                  sll          a5, a0, s10
                  slt          a7, gp, s2
                  slti         s4, a3, -936
                  srli         zero, t0, 26
                  xor          a3, s7, t3
                  ori          a3, a6, 1388
                  andi         s0, a0, -1912
                  srai         s3, a1, 21
                  sub          s1, s9, t0
                  andi         a7, a0, -1749
                  srli         s6, a1, 23
                  sra          a7, gp, t1
                  srli         s2, s0, 0
                  sltu         tp, a7, s6
                  ori          gp, tp, -1062
                  xori         a7, a0, -1960
                  sub          a1, a3, s5
                  auipc        s3, 756899
                  sll          s10, t6, a4
                  slti         s1, a2, 427
                  xori         s11, s6, -774
                  nop
                  srai         t1, s5, 1
                  ori          tp, gp, 905
                  nop
                  and          sp, a5, ra
                  sltu         s0, s9, s9
                  ori          t4, t5, 199
                  nop
                  slti         s8, a4, -1430
                  srli         t3, s2, 22
                  sra          a4, s2, a7
                  slt          s4, a6, a0
                  add          s0, s3, s4
                  andi         a1, a2, 1528
                  ori          t4, s1, -1544
                  xori         s0, s6, -1161
                  nop
                  sra          t5, s0, s5
                  srai         a5, a4, 1
                  xor          t1, ra, t1
                  and          s11, s9, a5
                  srl          a2, s5, t5
                  srli         ra, t4, 3
                  addi         tp, t1, -1199
                  auipc        s6, 280484
                  slt          a1, a2, t3
                  slt          t4, t0, s4
                  xor          a7, gp, s3
                  andi         s5, a7, -1495
                  slt          t1, t5, s10
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           tp, 0x0
                  li           gp, 0xffffffff
                  li           a0, 0xbb5f0462
                  li           a3, 0x53aa9862
                  li           s1, 0xc993482c
                  li           s4, 0xffffffff
                  li           t6, 0x0
                  li           s3, 0xffffffff
                  li           s7, 0x0
                  nop
                  addi         s3, s1, 568
                  nop
                  add          s7, a3, ra
                  lui          a3, 915703
                  add          s4, s4, s1
                  addi         s3, a0, 1239
                  add          s3, s7, a0
                  add          s3, t6, s4
                  addi         a0, s4, -1166
                  sub          gp, a3, s4
                  add          ra, a0, tp
                  auipc        a0, 124348
                  auipc        a0, 819813
                  add          s4, s1, s3
                  sub          s3, s4, a0
                  sub          s1, s4, a0
                  auipc        gp, 851961
                  addi         a0, s1, 1483
                  add          s4, a0, gp
                  sub          a0, t6, s3
                  nop
                  sub          gp, t6, tp
                  nop
                  auipc        s3, 853167
                  addi         s3, s3, 711
                  addi         s4, tp, 942
                  add          gp, tp, gp
                  addi         s7, s7, 565
                  lui          a0, 401291 #end riscv_int_numeric_corner_stream_11
                  srl          s1, s11, tp
                  auipc        a1, 982937
                  or           t6, a1, s10
                  sll          a7, sp, zero
                  lui          t1, 691531
                  sra          s4, t0, s6
                  slti         t1, a1, 848
                  sltu         t5, s8, a7
                  sll          s8, s6, t5
                  slli         t1, a1, 13
                  add          s11, gp, ra
                  srl          t4, s1, s0
                  nop
                  lui          s9, 373128
                  xori         s9, ra, -1172
                  lui          s2, 157536
                  auipc        a4, 305792
                  slti         s9, a4, 948
                  lui          s6, 454999
                  slti         ra, t0, 72
                  andi         s10, a3, 1873
                  nop
                  and          zero, s3, t5
                  addi         s7, t0, -373
                  or           ra, a4, t3
                  auipc        a5, 53287
                  sra          t6, a5, tp
                  xori         sp, ra, 1920
                  and          sp, a1, zero
                  and          s4, s0, t6
                  srli         a1, s9, 4
                  srl          zero, t0, sp
                  xor          s7, s3, a0
                  andi         zero, ra, 310
                  xor          s10, s3, a7
                  sltiu        s10, s3, -360
                  sub          a3, a6, a6
                  slli         s4, s1, 12
                  slt          s1, t2, s0
                  sub          t6, ra, a5
                  lui          s9, 363439
                  slti         gp, ra, 190
                  xor          gp, s2, s5
                  auipc        s9, 674543
                  auipc        sp, 788123
                  lui          a5, 723310
                  sra          a0, tp, a6
                  nop
                  slti         s10, t0, 1555
                  srl          sp, s3, zero
                  andi         s2, a0, 614
                  ori          a1, s7, 1755
                  slt          s9, ra, s5
                  sltiu        s10, s0, 605
                  sra          a3, t0, a6
                  xor          s2, t5, a4
                  andi         s11, a5, 155
                  srl          a1, a5, s10
                  srai         a7, s9, 14
                  auipc        sp, 432780
                  andi         zero, s5, -1147
                  srli         ra, s1, 13
                  and          t1, a7, tp
                  sltu         a5, a0, s9
                  nop
                  slli         t1, t0, 24
                  xori         t1, t4, 1287
                  add          a0, s3, s5
                  srli         s7, a3, 16
                  srai         sp, tp, 9
                  sll          a5, ra, t1
                  srai         a5, s10, 6
                  sra          s4, t2, sp
                  auipc        a3, 1042557
                  xor          t1, s8, t4
                  nop
                  srl          zero, tp, s5
                  slt          t1, t3, sp
                  xori         s10, s4, 97
                  srl          t3, s5, s11
                  add          t5, s7, s0
                  auipc        s11, 287694
                  sltiu        gp, s8, -390
                  srli         ra, a7, 25
                  srli         s8, s11, 8
                  slt          a4, t5, s5
                  srai         a2, t0, 18
                  and          s6, a6, s4
                  srl          t1, tp, ra
                  and          s3, s9, t2
                  sra          t1, a6, s0
                  slt          a0, s4, t2
                  add          a3, s3, gp
                  ori          s11, a7, 964
                  srai         a4, s9, 20
                  lui          s5, 215690
                  nop
                  sltu         a3, s8, t6
                  slt          s3, ra, zero
                  sll          s5, s0, zero
                  slt          zero, s3, t2
                  srai         tp, s2, 9
                  srli         t6, a1, 15
                  sltu         a4, t0, gp
                  lui          t4, 489978
                  lui          t4, 687489
                  sub          tp, a5, sp
                  add          s0, t3, a7
                  sltu         s7, t2, a5
                  sltu         a4, t3, a4
                  sub          t5, s5, a2
                  slli         s11, t5, 2
                  sltu         a1, s6, s4
                  srai         a5, sp, 10
                  auipc        a1, 356197
                  slli         s4, tp, 1
                  srli         s1, a4, 28
                  sra          s0, a2, s7
                  srai         t3, zero, 15
                  xor          t6, a2, s6
                  srli         s5, a5, 24
                  ori          a5, t0, 395
                  or           a0, a1, a3
                  andi         zero, s9, -1811
                  sub          s9, a1, zero
                  addi         a1, s0, -1609
                  auipc        zero, 490235
                  srl          s11, a4, t3
                  srl          sp, s5, s6
                  srl          s4, ra, s2
                  ori          t3, t3, -1991
                  ori          s7, zero, -1450
                  and          zero, ra, a5
                  srai         tp, tp, 12
                  sltiu        s6, s8, 877
                  ori          s1, a3, -556
                  slt          s8, t1, a5
                  sra          t4, s1, zero
                  andi         a5, s3, -78
                  xori         s11, a3, -2023
                  sltiu        t6, s2, 753
                  slli         sp, a6, 14
                  srli         s1, s5, 0
                  and          s11, a2, s4
                  srli         a7, sp, 31
                  nop
                  or           s9, s1, s6
                  lui          s5, 387139
                  sltiu        t6, t0, 783
                  and          t5, s1, zero
                  auipc        gp, 1047775
                  sltu         a1, s11, zero
                  srli         a5, a5, 23
                  ori          t3, t3, 1850
                  sub          t6, a5, s1
                  xori         s2, s5, 1990
                  add          s5, s4, a6
                  srl          s8, sp, t2
                  slti         s3, a3, 558
                  andi         s0, sp, -1695
                  or           t3, ra, gp
                  add          a4, a4, t6
                  or           a2, s2, t3
                  andi         a3, a0, 204
                  lui          t6, 677089
                  auipc        s3, 697292
                  srl          s5, sp, t1
                  sll          s7, s5, s4
                  and          a4, t2, s3
                  auipc        s9, 544279
                  and          s2, a7, t2
                  srai         a7, s3, 8
                  andi         s10, s0, -683
                  andi         a3, s6, 1676
                  nop
                  sra          zero, t4, s2
                  sltu         a3, t2, s3
                  ori          a7, a0, -786
                  sll          s3, s8, a5
                  srl          a4, zero, s5
                  addi         s6, t5, 1917
                  and          s10, s11, s2
                  nop
                  xor          tp, t4, s6
                  sra          t4, tp, t0
                  nop
                  srli         zero, s5, 3
                  nop
                  nop
                  and          s4, s5, s1
                  slli         s9, a4, 16
                  andi         t3, s6, 908
                  slli         zero, t4, 21
                  nop
                  or           s8, zero, t4
                  auipc        s0, 407520
                  sltu         zero, sp, ra
                  ori          a2, t6, 773
                  lui          t4, 819158
                  srli         s8, t5, 16
                  or           a5, a1, a1
                  sra          t5, t3, s5
                  srl          a5, s7, a7
                  sltu         sp, s11, tp
                  add          t5, zero, a3
                  srl          a1, s7, t2
                  slli         a2, a1, 28
                  srai         s2, s2, 11
                  xor          s2, s0, s2
                  xori         s10, s1, -1445
                  slt          s7, sp, t0
                  srai         sp, a6, 23
                  auipc        s9, 295918
                  sltu         a7, tp, t0
                  slt          a1, a1, s10
                  addi         s9, a1, -1317
                  xor          tp, a1, s0
                  ori          a7, a6, 390
                  srli         zero, s0, 8
                  srli         a5, s4, 27
                  auipc        s2, 346854
                  xor          ra, t3, s8
                  auipc        s3, 221219
                  sll          s2, s11, t4
                  nop
                  nop
                  addi         s0, a3, 102
                  sltu         s2, s0, t2
                  addi         t3, s5, -470
                  slli         a3, s4, 7
                  sltu         s4, gp, s3
                  addi         a5, t2, 1967
                  and          t3, a0, a6
                  lui          a7, 710922
                  slli         s7, a4, 21
                  slti         s9, zero, -461
                  or           tp, gp, t6
                  sltiu        s9, a1, -1509
                  or           t3, t1, ra
                  srai         gp, ra, 17
                  and          a0, t0, a5
                  xor          ra, t0, t1
                  andi         a3, a4, 58
                  andi         a0, ra, -651
                  nop
                  sra          a5, s7, a5
                  addi         ra, t2, 1554
                  srai         t3, a1, 27
                  sltiu        s6, t4, -1571
                  or           s3, s6, sp
                  andi         zero, a2, -1525
                  sub          s6, a6, zero
                  sltiu        a2, tp, -175
                  auipc        s11, 9122
                  lui          a4, 291495
                  srai         zero, t2, 20
                  sub          s3, t4, s11
                  add          a7, t4, sp
                  xor          a3, zero, a3
                  slli         t1, t5, 13
                  slt          s8, t6, a2
                  slt          a1, zero, t0
                  sub          a0, a1, s3
                  andi         s9, tp, 612
                  srai         zero, t6, 5
                  add          t1, t2, a1
                  sll          t3, a0, zero
                  srai         s4, s10, 17
                  xori         s11, s7, -1175
                  slti         t1, a1, 998
                  slli         s1, s6, 16
                  sltiu        a2, tp, -802
                  nop
                  addi         t5, tp, 1195
                  lui          s8, 109194
                  and          zero, a3, tp
                  nop
                  srli         tp, s0, 12
                  srl          s8, t6, t4
                  lui          ra, 260309
                  sll          s11, t5, gp
                  addi         a0, a1, -1225
                  slt          t6, t2, gp
                  xor          tp, a7, gp
                  nop
                  slt          ra, a4, s5
                  add          gp, s1, sp
                  nop
                  or           t4, s8, sp
                  xori         s7, t4, 1124
                  slt          s0, a7, a4
                  auipc        a1, 562791
                  sltu         s11, a6, gp
                  sll          a7, s10, a1
                  and          a5, t6, t0
                  sltiu        a2, t2, -1563
                  srli         zero, s10, 18
                  sra          s6, s4, a5
                  lui          s3, 208441
                  sltiu        ra, a3, -1779
                  sra          s10, a1, s4
                  sltu         s9, t5, s10
                  sll          t3, s4, s0
                  sll          s6, sp, t2
                  slt          s7, s4, tp
                  srai         t3, s3, 31
                  srli         sp, t1, 19
                  ori          a7, t0, -785
                  sltiu        a4, s2, -928
                  sll          sp, gp, a2
                  lui          s10, 147653
                  sltu         a3, t5, s0
                  auipc        zero, 527768
                  andi         s8, a4, -238
                  and          s10, ra, t1
                  ori          gp, t1, -1897
                  srl          s6, s5, a3
                  andi         t4, t0, 2036
                  addi         sp, t2, -1935
                  srl          a5, s4, t1
                  sltiu        zero, s3, 305
                  srl          a1, t2, zero
                  or           zero, s9, s3
                  sltiu        tp, s7, -1308
                  or           s5, t2, a1
                  sltiu        t6, t6, -443
                  sra          s7, sp, t3
                  sub          t4, s8, sp
                  sll          s8, t0, a1
                  and          s5, zero, t0
                  slt          ra, t2, tp
                  srli         s5, t2, 19
                  andi         s11, sp, 1769
                  sll          a3, t5, t6
                  nop
                  ori          s9, t2, 649
                  xori         a3, a4, -84
                  xori         a1, s7, 507
                  add          a2, t4, s8
                  sub          s10, sp, s5
                  srai         t1, s5, 11
                  nop
                  srai         s6, s0, 23
                  xori         a1, zero, -1173
                  sra          t1, zero, s5
                  lui          gp, 204136
                  and          s8, a7, s7
                  xori         s0, t2, -828
                  srai         a7, s9, 13
                  nop
                  or           s8, t1, s1
                  srai         ra, tp, 19
                  srli         ra, s1, 26
                  xor          sp, ra, t2
                  srai         t6, s0, 10
                  slti         s8, a4, -722
                  sub          a4, a6, a0
                  ori          s5, ra, 1134
                  sltiu        s9, t6, 984
                  sub          t6, s2, t2
                  srli         a0, gp, 13
                  slt          s5, s6, a5
                  add          t1, a4, s6
                  sra          s2, s5, gp
                  sltu         s1, a1, ra
                  sltu         a1, s8, t6
                  nop
                  slti         zero, a1, -1333
                  or           s4, a1, s7
                  addi         s11, zero, 979
                  sra          s4, a7, t3
                  slli         s4, sp, 17
                  xori         a0, a6, -1651
                  andi         t1, a4, -465
                  andi         a4, s10, -1778
                  srai         a4, s6, 1
                  sltiu        zero, a1, 1166
                  ori          s1, gp, -858
                  sub          ra, s6, t4
                  sltiu        s7, a7, -1729
                  slt          a7, t5, gp
                  lui          a5, 675702
                  sra          zero, a1, a4
                  sll          tp, s9, a1
                  sra          a1, t6, t2
                  xor          a3, s8, t1
                  sll          gp, t1, a7
                  or           tp, s11, ra
                  sra          s2, s1, s2
                  sra          a7, tp, s3
                  srl          ra, t4, t4
                  sra          t4, a5, s3
                  xor          a0, s3, t6
                  sltu         s11, s6, a1
                  and          ra, t3, a5
                  and          zero, s3, s7
                  sltiu        t3, a2, -1259
                  sltu         t1, s2, t2
                  andi         t6, zero, 1078
                  sub          s11, a3, a1
                  sub          s9, s6, t0
                  sub          a7, a2, s7
                  ori          s6, a7, 1757
                  srli         zero, a0, 11
                  ori          s0, s11, 1775
                  addi         tp, a0, 1754
                  add          t1, t3, t5
                  slli         ra, s8, 27
                  sub          ra, s8, a2
                  sub          a3, s11, t3
                  slli         ra, a1, 20
                  sub          s8, s3, a1
                  sltiu        s7, a2, -1963
                  or           a0, a6, gp
                  ori          s6, s4, -290
                  sll          tp, a4, t0
                  slt          t6, s2, s2
                  or           s7, s9, a7
                  add          a3, s11, s2
                  sra          s11, t3, t3
                  srai         zero, s6, 4
                  slt          a2, s1, a1
                  srl          a7, s1, s10
                  and          ra, a7, s7
                  srai         zero, ra, 16
                  slt          t6, s1, t5
                  slli         a4, zero, 6
                  xor          t5, tp, ra
                  add          s2, a2, a3
                  ori          s1, gp, 1588
                  add          s2, s7, t5
                  sll          t6, gp, s8
                  addi         a7, t2, 503
                  and          t5, t6, ra
                  slt          zero, a4, a3
                  andi         sp, s8, 1683
                  sub          zero, a7, s2
                  slti         s1, sp, 262
                  xori         s7, t4, 374
                  sll          s1, a6, s9
                  add          s2, s11, a3
                  nop
                  nop
                  srli         s4, s9, 6
                  add          a0, a5, a6
                  addi         t1, a6, 80
                  ori          t5, tp, 803
                  slli         s1, a7, 14
                  auipc        s7, 341814
                  andi         s8, a0, 936
                  xor          s11, t4, s2
                  auipc        s8, 590468
                  slli         zero, s8, 30
                  addi         a1, a2, 421
                  xori         s9, s7, -1163
                  nop
                  add          s5, a5, s3
                  auipc        s4, 682028
                  or           a4, a6, s11
                  slti         t6, t5, 1759
                  sll          a0, t1, s10
                  slli         a2, s0, 11
                  addi         s5, s0, 2041
                  nop
                  and          tp, a3, t1
                  auipc        s0, 953403
                  slt          a5, sp, s6
                  srli         s6, ra, 24
                  auipc        s1, 960521
                  xori         s5, s2, -1089
                  andi         a3, a5, -895
                  sltu         s9, a5, ra
                  srl          t5, s4, ra
                  and          s2, t4, s6
                  slti         sp, s1, 46
                  slli         s5, s2, 13
                  nop
                  xor          s11, s4, s7
                  srai         ra, s9, 30
                  xori         s4, a7, 152
                  addi         sp, gp, -2015
                  sra          t5, a0, a6
                  sll          s5, s10, s10
                  srai         gp, t3, 13
                  and          s10, a1, t5
                  sub          gp, s5, a7
                  add          t4, a4, a3
                  lui          a2, 91995
                  srli         zero, s6, 8
                  nop
                  sub          s4, a1, s1
                  or           a4, a6, s0
                  slt          s0, tp, s9
                  addi         s11, t0, 1149
                  srai         s4, a7, 7
                  srli         s0, t2, 24
                  ori          ra, s2, -1843
                  auipc        s10, 117247
                  ori          zero, s7, -1081
                  sltiu        zero, t0, -64
                  lui          s0, 73461
                  add          s1, t3, s5
                  slt          s3, a1, a4
                  add          a2, sp, a6
                  ori          s11, t5, 874
                  srli         s4, a2, 4
                  xori         t4, t0, 1277
                  nop
                  nop
                  sltu         t5, a2, s8
                  sltu         a4, s6, a4
                  andi         sp, a2, 694
                  andi         s1, s11, 539
                  nop
                  srai         sp, s1, 20
                  slli         s4, a6, 4
                  auipc        t1, 537933
                  nop
                  sub          s0, sp, t4
                  nop
                  andi         a2, t0, 794
                  sll          a4, t5, t4
                  nop
                  andi         tp, a5, -477
                  srai         tp, s2, 3
                  andi         t1, t5, 835
                  sra          s0, s9, a7
                  add          t6, s10, gp
                  ori          t1, a7, -1765
                  sltu         s6, s9, a0
                  lui          a0, 929324
                  sltiu        s8, a6, 308
                  lui          s8, 849771
                  andi         t3, s8, -1740
                  slli         t5, s10, 26
                  and          a5, s11, s2
                  sub          a3, s6, t1
                  and          a4, a5, s1
                  srai         t4, a1, 26
                  add          tp, a5, a1
                  lui          t4, 533600
                  auipc        s0, 572258
                  srai         zero, a7, 19
                  slli         a0, t6, 22
                  add          s9, zero, gp
                  nop
                  lui          zero, 1040307
                  xor          a4, zero, s11
                  lui          a3, 905213
                  srl          a3, t3, sp
                  slt          s0, tp, s1
                  srli         s1, s1, 9
                  and          a5, a6, a3
                  or           s1, t5, s1
                  sltiu        t1, t0, -1315
                  ori          t5, s0, 1856
                  nop
                  andi         zero, zero, 788
                  xori         a0, a2, 1408
                  sll          s9, t6, s8
                  srli         zero, t3, 26
                  or           t3, s5, a2
                  sub          a5, s2, s0
                  srli         s5, t1, 6
                  lui          s10, 1046255
                  sltiu        a0, sp, 1412
                  auipc        gp, 800337
                  sltu         s10, s10, s2
                  sltiu        s10, t6, 483
                  slti         s8, zero, 848
                  and          a3, a5, gp
                  add          a2, s10, sp
                  srli         s7, a0, 6
                  or           gp, a4, s10
                  sub          a1, s7, a2
                  xori         t6, a2, -1134
                  xori         s1, a7, -2024
                  sub          s8, s9, s8
                  or           t6, a1, a1
                  sltu         t1, s5, a2
                  lui          a4, 602639
                  xori         t6, a6, 340
                  xor          s2, s7, t1
                  auipc        t3, 151757
                  sub          s10, t5, s7
                  lui          t4, 29946
                  xori         t1, gp, -1912
                  auipc        s8, 884171
                  sra          zero, a3, s5
                  srli         t5, a5, 13
                  and          tp, s11, t5
                  or           s5, s11, s11
                  sltu         s0, t4, gp
                  srli         s8, sp, 30
                  sll          s6, tp, s5
                  ori          t1, a0, 1807
                  srl          t6, t6, ra
                  srli         a3, tp, 8
                  xori         a4, a6, 537
                  lui          s2, 785298
                  srli         a5, tp, 23
                  slti         s6, a3, 1008
                  xori         s1, tp, 1160
                  sltiu        t5, t5, 1185
                  addi         a0, s11, -260
                  srai         s8, s0, 23
                  sll          s10, tp, s0
                  sltu         s3, t1, t4
                  andi         a0, a6, -337
                  andi         a2, a6, 1349
                  xor          t1, sp, ra
                  slli         tp, s6, 6
                  sltu         a2, a0, s5
                  sltu         a0, s0, s2
                  slli         a7, a5, 1
                  srli         s7, tp, 13
                  or           s5, a5, s8
                  addi         t6, t0, 1235
                  sll          a2, s9, t6
                  auipc        tp, 540709
                  slt          s6, a4, a0
                  add          s3, zero, a4
                  andi         t6, gp, 1796
                  or           s3, a6, zero
                  slli         t1, s10, 22
                  xori         s1, tp, 1958
                  sub          s9, a5, s6
                  srli         zero, a6, 3
                  xor          s1, s1, a0
                  nop
                  sll          s5, s0, t2
                  andi         sp, s7, -437
                  add          s0, gp, a0
                  slli         s3, ra, 1
                  lui          ra, 764547
                  and          s11, zero, s3
                  add          zero, a3, a6
                  srai         s7, t4, 29
                  srl          s8, a1, ra
                  srli         zero, a0, 31
                  sltu         s0, s1, s4
                  nop
                  or           t1, t2, gp
                  sll          t1, gp, zero
                  or           s5, a1, t0
                  srl          s5, s0, a0
                  slti         a7, a3, 1525
                  andi         t4, s6, 280
                  slti         s2, s7, 1865
                  addi         s7, a2, -34
                  srai         a5, t4, 8
                  and          zero, sp, s2
                  andi         s8, s9, -1166
                  srai         t1, a2, 16
                  srli         s6, s9, 25
                  xor          a5, s6, s11
                  ori          s6, s2, 1989
                  sltu         s8, s10, ra
                  sltu         a7, s0, s11
                  srai         zero, a7, 26
                  xori         tp, tp, -868
                  slt          a3, a5, sp
                  slli         a2, s5, 3
                  lui          sp, 870220
                  xori         t5, a6, 1303
                  srai         a3, s3, 16
                  xori         s5, a5, -1037
                  srai         s10, zero, 6
                  ori          sp, a5, -1685
                  add          a4, a6, sp
                  andi         sp, a3, -1239
                  nop
                  sub          t6, t1, t2
                  nop
                  or           s10, s11, tp
                  slt          t1, tp, s2
                  srli         ra, s8, 7
                  auipc        a0, 749688
                  nop
                  slt          sp, a0, t6
                  sll          s7, t1, a6
                  srli         s8, a4, 6
                  and          s8, s4, t0
                  andi         zero, s5, -733
                  and          sp, sp, t3
                  add          a1, s11, tp
                  sltiu        s6, s8, -1186
                  slli         t4, zero, 11
                  andi         a7, gp, -249
                  srli         tp, t2, 28
                  auipc        s5, 335765
                  andi         gp, s4, -737
                  addi         s9, s0, 137
                  lui          a7, 849086
                  xori         a0, a1, -261
                  slli         s3, zero, 4
                  srl          s4, t3, s3
                  xori         s3, s9, -1215
                  slti         s1, t6, 1359
                  lui          s1, 696216
                  slt          s10, a2, t6
                  addi         gp, a5, 236
                  or           t1, a3, gp
                  srl          t4, t0, t1
                  xor          s6, sp, a4
                  lui          ra, 565678
                  sltu         s3, t3, t4
                  sll          a3, a6, s9
                  srl          s5, t6, t5
                  sltiu        s7, ra, 1618
                  sll          s5, a4, t5
                  srli         t4, s2, 22
                  lui          s8, 215916
                  sltiu        t3, ra, 61
                  srl          t3, zero, s3
                  ori          t4, s5, 596
                  sra          a0, ra, t1
                  sub          s8, zero, s8
                  slli         a2, sp, 28
                  sra          a5, t3, a0
                  sltiu        a5, a0, -47
                  slti         sp, a6, -1268
                  xor          s2, a3, zero
                  slt          a7, s5, t6
                  xor          tp, t3, ra
                  srli         s7, s6, 19
                  slti         gp, gp, -1152
                  srl          a7, a2, a1
                  sra          ra, s5, t3
                  addi         t4, t4, 1965
                  auipc        sp, 839936
                  xor          s5, a0, a2
                  ori          s1, s0, 384
                  auipc        t6, 470616
                  xor          s8, s1, s1
                  xor          s3, a1, s3
                  slli         a7, s11, 24
                  ori          a0, s10, 1700
                  slti         s6, s8, 1168
                  sltiu        s7, a4, 1253
                  sub          s7, a5, s11
                  andi         tp, s4, 160
                  srl          s8, t2, tp
                  sltu         sp, t6, s3
                  slli         s2, a5, 27
                  sltu         a2, zero, s2
                  sra          s7, s0, ra
                  srli         t6, t0, 31
                  auipc        t6, 1001400
                  sra          s7, s0, s0
                  nop
                  slti         sp, s7, 950
                  xor          a4, s10, s10
                  sra          ra, t4, a3
                  sub          s10, s6, s11
                  lui          t1, 482755
                  slt          a2, tp, sp
                  sltu         a3, a3, a1
                  add          s2, s7, s5
                  sub          ra, s1, s6
                  slti         zero, s5, -1416
                  sra          a2, a6, s4
                  srli         s11, t3, 8
                  addi         s0, s1, 66
                  sub          sp, s5, t3
                  sub          a2, t2, t2
                  xor          sp, s5, a3
                  and          t5, t0, t1
                  auipc        zero, 295212
                  lui          a2, 286687
                  srai         s5, zero, 6
                  add          s10, s3, s3
                  srli         s3, t5, 7
                  slti         t1, s5, 1741
                  and          zero, t3, t1
                  slti         a3, t6, 1227
                  sra          s8, t0, t6
                  sltu         a1, tp, a5
                  xori         t4, s11, -389
                  srl          s1, ra, a5
                  or           s5, s5, s2
                  xori         a4, t0, -977
                  auipc        gp, 862
                  srl          a0, t0, t6
                  srai         tp, s1, 3
                  nop
                  sra          a3, s1, s10
                  add          s8, s3, a0
                  xori         a0, a0, -1132
                  srai         a4, a4, 1
                  auipc        a5, 446447
                  srl          s1, a4, a7
                  srl          a5, t4, s6
                  auipc        sp, 211402
                  and          t5, t5, a5
                  slli         s5, zero, 27
                  andi         a4, s1, -1595
                  or           s5, ra, sp
                  srli         s4, s11, 28
                  srai         t5, t4, 21
                  sra          a7, s3, t3
                  lui          s7, 267329
                  sltiu        s11, s1, -972
                  sra          s5, t3, ra
                  sltu         s8, s0, t5
                  slt          gp, s1, gp
                  sub          a1, a1, a4
                  add          t3, a5, s11
                  srai         sp, a1, 22
                  srl          a1, a2, t1
                  ori          s6, s11, -1433
                  slti         s1, s6, -1037
                  ori          tp, s1, 1449
                  sll          s5, a4, a2
                  xori         sp, t6, 330
                  or           sp, t1, a0
                  slti         s3, s5, -1233
                  sltiu        t6, a7, -1845
                  srli         a1, t3, 2
                  sra          s10, a4, ra
                  and          a4, t4, a4
                  slli         s2, a6, 10
                  auipc        a4, 292950
                  srli         s7, t2, 22
                  and          s11, t4, s10
                  nop
                  sll          s1, a7, a2
                  srl          t3, t0, a2
                  slti         zero, t5, -598
                  srai         a4, t1, 22
                  srl          a0, a5, s5
                  auipc        a0, 195394
                  srli         a0, a6, 10
                  xor          t1, s5, s4
                  xori         a0, a0, -564
                  srai         s8, zero, 17
                  auipc        sp, 761910
                  sltiu        s2, ra, 631
                  sub          s0, a2, s4
                  sltu         zero, s8, a6
                  and          s3, a6, s11
                  xori         s4, s3, -349
                  andi         t6, zero, -1922
                  andi         t3, a4, -826
                  nop
                  nop
                  addi         tp, s11, -1218
                  slt          zero, s4, sp
                  srl          a1, a0, t1
                  xor          s0, s1, a3
                  srl          s3, s5, zero
                  and          t3, a5, s2
                  slt          s0, a5, s2
                  sub          t1, s6, a7
                  nop
                  lui          s0, 466502
                  sra          ra, s11, s9
                  sra          s4, s1, s11
                  ori          t1, zero, -1844
                  srli         s5, t6, 24
                  slt          a0, s5, a4
                  srl          s4, s8, s3
                  add          s9, t4, s11
                  srl          a1, tp, a6
                  or           s11, t0, s1
                  andi         s6, a6, 1956
                  or           s3, zero, s7
                  slli         s4, a0, 29
                  sltu         s1, a0, s9
                  sltu         a2, s8, s2
                  nop
                  sll          s6, s5, a7
                  slti         a4, sp, -136
                  xori         a1, sp, -44
                  xor          t1, a0, tp
                  slli         s2, s1, 2
                  add          s8, t0, s8
                  sll          sp, s6, t2
                  sltiu        s4, s9, 1705
                  sll          a7, t5, a1
                  auipc        tp, 921809
                  sub          s0, t4, s7
                  sll          s2, s11, sp
                  add          a7, sp, s0
                  srli         a7, zero, 8
                  andi         t6, a6, 530
                  xor          t5, s5, s9
                  xori         t3, t5, -1240
                  sra          s10, a0, s3
                  ori          s1, s3, -315
                  sra          ra, tp, s2
                  xor          a3, s8, a6
                  sub          a3, s1, s3
                  or           s8, t4, t4
                  sra          zero, a5, a0
                  sra          a3, t5, gp
                  slt          s7, s1, sp
                  sub          s8, t0, s8
                  add          s11, t5, s3
                  sll          s1, a5, t4
                  slti         t1, gp, -694
                  slti         a5, t5, 4
                  slti         t1, zero, 793
                  srl          t1, t4, s9
                  slti         s1, s11, -1639
                  lui          s7, 855931
                  xor          zero, t4, s2
                  slt          s3, ra, a7
                  or           tp, t2, s4
                  sra          s10, a7, s4
                  auipc        s4, 226542
                  and          s1, s11, s1
                  sltiu        s0, s4, 1967
                  or           a3, s4, t6
                  slti         ra, s5, 1893
                  or           s10, s6, zero
                  lui          gp, 571617
                  srl          a5, s2, t2
                  srai         a5, zero, 30
                  sll          a0, s2, s11
                  sltiu        gp, t2, -1451
                  lui          s1, 538571
                  sll          tp, s0, a6
                  or           a0, t2, a3
                  sra          s4, s8, gp
                  srli         tp, a0, 10
                  srli         a0, s8, 21
                  srai         t5, a5, 15
                  slt          t3, a5, s1
                  nop
                  slti         t3, t2, 867
                  sltu         a1, t4, ra
                  andi         zero, s0, 1229
                  addi         s2, s6, -1939
                  lui          a7, 455364
                  and          sp, t2, s1
                  xori         t6, s7, -505
                  xori         tp, s2, 1702
                  srl          t6, t1, t2
                  sra          a7, s2, s11
                  lui          t3, 478298
                  slli         tp, s8, 13
                  sltu         s5, s7, s8
                  srl          a7, s1, t5
                  lui          ra, 459135
                  lui          a3, 398611
                  addi         s11, s4, -35
                  xori         a1, s8, 1384
                  ori          s9, a3, -220
                  sltu         tp, s3, t5
                  ori          a4, a0, -317
                  andi         s4, s6, -1302
                  sll          s9, a7, ra
                  xori         a1, gp, -2005
                  srai         a2, s10, 27
                  ori          t6, a5, 215
                  ori          s4, s6, 1668
                  xori         s5, a3, 1768
                  nop
                  sub          zero, t0, gp
                  or           a2, a1, s0
                  lui          t5, 207773
                  ori          s11, sp, -633
                  sll          a1, a3, a1
                  sll          s8, s6, a6
                  slli         a1, t5, 31
                  sll          a5, s5, s8
                  srai         s1, t4, 20
                  sltu         sp, a4, t0
                  ori          a4, s10, 1416
                  xor          s10, t1, t3
                  xori         s1, sp, -768
                  auipc        t6, 887802
                  addi         t5, zero, 1163
                  srli         a5, a0, 22
                  xor          s9, s5, s0
                  ori          tp, a1, 1626
                  slti         ra, s10, 1787
                  lui          tp, 721887
                  sltu         s6, t4, s1
                  slt          s10, s7, t2
                  sra          s0, a5, s10
                  xori         ra, s3, -1756
                  sra          s5, s6, s9
                  add          s11, a7, a3
                  lui          s5, 335756
                  andi         t4, a3, 766
                  nop
                  srl          a1, s10, s6
                  add          tp, t6, t6
                  sll          sp, t5, t0
                  slti         a5, t6, -187
                  sltu         s2, s8, s0
                  add          s10, sp, a3
                  nop
                  andi         t6, a5, -1067
                  sltu         tp, t5, t6
                  add          a5, tp, zero
                  add          s1, s3, s11
                  or           t4, a7, a1
                  srl          s1, a5, t1
                  sub          s10, t5, a1
                  addi         a0, s8, -1991
                  sll          a3, a5, t2
                  nop
                  lui          sp, 877109
                  srli         s7, a7, 6
                  xor          a7, tp, t4
                  ori          a0, s8, 984
                  auipc        s4, 529593
                  sra          s6, tp, a5
                  sll          a0, a6, gp
                  srai         t4, s8, 1
                  andi         s7, a4, -347
                  sltu         s7, a1, tp
                  ori          s3, s4, 188
                  sll          s10, s4, s1
                  slli         s10, a5, 18
                  sra          a1, s8, s5
                  addi         t3, s11, -627
                  sra          tp, sp, s2
                  ori          s2, zero, -1715
                  xori         sp, s6, -1230
                  slti         t6, t3, -1895
                  slli         a2, t1, 10
                  andi         s9, a3, 1472
                  or           s5, t2, t2
                  xori         a4, t6, -772
                  andi         a5, a2, -147
                  xor          ra, s8, tp
                  nop
                  slt          a5, s5, a4
                  nop
                  xor          s4, s7, a1
                  addi         t4, gp, 183
                  slli         tp, t5, 7
                  sltu         s4, a3, a0
                  addi         a0, s9, -807
                  lui          a0, 460695
                  sub          s7, t5, tp
                  ori          ra, a5, -1865
                  and          a0, s1, tp
                  auipc        gp, 38748
                  or           ra, t2, gp
                  slti         t1, t3, -1556
                  srl          zero, s5, ra
                  sra          s7, a0, gp
                  slti         a3, gp, 1216
                  sltu         t3, s3, s6
                  slti         a3, gp, 1354
                  srli         gp, tp, 11
                  and          s3, s11, s0
                  srl          s2, t6, t3
                  srli         t4, t1, 8
                  add          a1, s9, s9
                  slli         ra, s4, 6
                  and          t3, a6, s3
                  or           s0, s3, a5
                  or           s0, sp, gp
                  auipc        a0, 721766
                  andi         t1, zero, -1894
                  srl          gp, a4, a0
                  add          sp, tp, s6
                  srl          s9, s10, ra
                  sub          s4, t2, s9
                  add          s7, a3, s5
                  add          sp, t1, s10
                  slt          tp, a6, s4
                  sll          a3, a4, s2
                  sra          a1, t0, a4
                  sra          t4, zero, gp
                  lui          a3, 126617
                  and          s4, ra, gp
                  auipc        s8, 532984
                  sltiu        a4, t4, 1761
                  sub          ra, s6, a7
                  sltiu        a2, ra, 1865
                  sra          tp, s6, s9
                  addi         zero, s0, -823
                  nop
                  xor          s11, a6, s4
                  nop
                  slli         s5, sp, 18
                  sll          a1, t5, s3
                  srli         a7, a4, 12
                  xori         s5, s1, -1683
                  nop
                  slt          s3, t3, ra
                  sltu         ra, s0, t6
                  xor          t3, s8, tp
                  sra          a1, s9, a6
                  xori         s3, s1, 1240
                  auipc        ra, 454553
                  or           s2, t4, a0
                  or           s0, a7, a6
                  xor          s2, s4, a3
                  xor          gp, a1, s0
                  sub          ra, s1, s7
                  sra          gp, t5, a0
                  addi         sp, s9, -247
                  srli         sp, gp, 24
                  auipc        a1, 914036
                  addi         s6, s3, -1452
                  nop
                  slti         tp, t0, 1102
                  lui          s2, 445428
                  xori         a2, t2, 657
                  sra          s11, s1, a7
                  and          s4, t6, ra
                  add          t3, ra, s0
                  slli         s8, a6, 23
                  and          s11, a7, s3
                  lui          a7, 526984
                  auipc        tp, 326133
                  sltu         a2, a2, t5
                  xori         a2, a1, 1162
                  lui          sp, 503793
                  andi         ra, a1, -9
                  ori          t1, a5, 1029
                  srai         t3, sp, 3
                  slt          zero, s1, sp
                  nop
                  lui          a0, 414498
                  srai         s10, a1, 27
                  srli         s9, a5, 28
                  sub          s8, s6, s5
                  sub          a4, t5, tp
                  sltu         s0, gp, t1
                  sltu         s8, s7, t2
                  sll          s4, zero, s9
                  srl          zero, a4, s7
                  xori         s7, t1, -541
                  sltu         s0, s7, s4
                  slt          a1, t2, s1
                  lui          s3, 514600
                  auipc        a3, 742300
                  srl          t4, t5, s2
                  sltiu        ra, a7, 1393
                  lui          gp, 731792
                  addi         s4, s2, 1776
                  sll          s6, s6, a7
                  slt          zero, t4, t6
                  lui          s10, 753830
                  sra          a2, ra, sp
                  slt          s1, s8, s8
                  sra          s8, zero, tp
                  sub          a7, a0, s6
                  sltiu        zero, s11, -247
                  ori          t1, a6, -917
                  sltiu        t4, a2, -1329
                  add          s2, s7, t1
                  slli         a7, a7, 6
                  xor          zero, a3, gp
                  addi         a7, gp, 1317
                  sra          s1, a4, a4
                  slli         a2, t1, 15
                  srli         s11, s10, 2
                  slt          s11, s11, a7
                  auipc        s8, 902138
                  sll          s3, zero, t3
                  lui          s1, 650623
                  xori         gp, s10, 1141
                  nop
                  nop
                  or           s3, s7, t2
                  sll          s3, s11, a6
                  nop
                  srli         t6, t0, 16
                  sltu         s11, a7, a4
                  xor          a1, sp, ra
                  auipc        a1, 366544
                  lui          tp, 1038251
                  auipc        s7, 619659
                  srli         s9, a2, 25
                  or           s4, a4, t4
                  sltiu        s2, s11, -710
                  sltu         s7, s3, ra
                  slti         a7, t4, -483
                  slti         zero, t1, -1936
                  xor          s11, s9, s5
                  lui          s10, 742290
                  nop
                  slt          a0, a2, a7
                  sra          t1, s3, t0
                  slt          ra, a7, t4
                  xori         a1, t4, 969
                  or           s5, sp, t5
                  xor          s7, a7, a2
                  nop
                  slti         a5, ra, 786
                  sub          s2, s7, a0
                  and          a0, a6, sp
                  slti         s4, s4, 741
                  srl          a0, gp, t0
                  sra          t5, s8, tp
                  slti         s8, s8, 1027
                  nop
                  srli         gp, sp, 14
                  xor          s1, s5, s9
                  sltu         t1, tp, a5
                  slt          s7, s11, s5
                  srl          a7, zero, s8
                  srl          s6, t0, a1
                  xor          sp, s5, t1
                  xor          t6, a6, s0
                  or           s11, s1, a4
                  xor          a3, s5, a7
                  lui          a2, 132915
                  slti         t1, s1, -875
                  sra          a3, s6, s10
                  auipc        t4, 157497
                  lui          a0, 787007
                  srli         s4, a4, 29
                  and          s8, s9, t2
                  sltu         s7, a7, t0
                  srl          s5, s6, t0
                  sltu         a4, a1, sp
                  sub          s6, s1, s9
                  andi         a2, s3, 60
                  ori          s1, t6, 1160
                  add          zero, s7, s10
                  xori         tp, a0, -1550
                  andi         a0, s2, 1975
                  sltiu        t4, a6, 1610
                  slt          tp, t6, s11
                  addi         s5, s9, -482
                  srl          s1, s3, s3
                  srli         s8, t6, 29
                  sltu         t4, s4, a5
                  xori         s8, s4, 1543
                  xori         a5, t0, 1899
                  srl          a0, s3, s8
                  nop
                  sll          a7, a6, a1
                  xor          t3, t0, t1
                  sub          s10, a0, a1
                  ori          s5, a1, -45
                  sltu         s2, a6, a4
                  sltiu        t6, s11, -154
                  xori         t1, sp, 2038
                  lui          t5, 270454
                  sra          a3, s1, s3
                  sltiu        s2, s8, 1172
                  or           s5, s11, s3
                  slt          a7, t6, a3
                  xor          s1, a0, s8
                  xori         a1, s11, 1023
                  auipc        s9, 162321
                  slti         a0, s1, 652
                  nop
                  sra          a4, a4, t4
                  andi         s9, s3, -469
                  slti         ra, a0, 1153
                  ori          s11, t3, -2011
                  sll          gp, s1, t0
                  sltu         s7, a1, s3
                  srai         zero, s2, 22
                  sltiu        ra, s1, -14
                  sltu         a5, s5, s1
                  lui          gp, 18767
                  srai         s8, t6, 28
                  lui          tp, 566410
                  and          ra, t4, a3
                  slli         a5, s6, 31
                  slti         a1, s7, -161
                  lui          gp, 582668
                  slli         s5, s2, 9
                  slti         a1, s9, 275
                  sra          s1, t1, s2
                  addi         s3, t2, -974
                  ori          t5, t6, 927
                  srai         s1, s5, 22
                  srli         tp, s5, 27
                  srl          sp, sp, ra
                  sra          s3, a6, t6
                  and          s2, s6, t1
                  addi         ra, s9, -919
                  sra          s8, a5, s8
                  andi         a2, s9, 366
                  srl          a3, a3, tp
                  sra          s4, t1, a7
                  auipc        s4, 709361
                  srli         zero, s1, 29
                  and          s10, t6, t2
                  xor          s6, tp, a5
                  slt          a4, s11, s7
                  or           s5, s0, s6
                  srli         s6, s0, 12
                  slli         zero, s7, 25
                  sll          s7, s3, s5
                  slli         a5, t0, 2
                  add          zero, a4, s11
                  addi         ra, s7, -339
                  sltiu        a5, a2, 195
                  srl          s1, a5, zero
                  xori         a4, zero, 14
                  andi         gp, a0, -244
                  xori         s0, s6, -655
                  nop
                  sll          zero, s6, s1
                  or           s5, sp, t5
                  and          a3, a4, s1
                  xor          gp, t3, tp
                  sltu         gp, a1, s10
                  lui          a7, 306718
                  sll          s1, s8, s6
                  sltu         s5, a4, s1
                  slli         tp, a1, 26
                  add          gp, tp, s5
                  srai         s6, t5, 2
                  lui          s2, 493875
                  sll          s6, t5, s11
                  xori         s4, t4, 197
                  ori          t5, s2, 427
                  slt          s0, zero, a5
                  lui          t6, 1037718
                  slti         gp, t5, 298
                  slti         s4, s5, -229
                  sltiu        s7, s11, 1937
                  xor          s4, s6, t1
                  xori         a4, tp, 86
                  sra          t5, a3, s8
                  sub          s6, s2, gp
                  srai         s1, a3, 1
                  xor          s0, s2, s10
                  or           t3, s9, t6
                  ori          a2, a1, 1035
                  srai         gp, s7, 21
                  sub          a2, s5, s8
                  sltu         s3, s0, t1
                  sltu         zero, t5, a3
                  srli         s7, a2, 24
                  sll          a5, zero, ra
                  add          s11, s0, a0
                  xori         a7, t5, -1558
                  xor          s2, s9, t3
                  srli         s5, t0, 30
                  andi         t6, sp, -245
                  add          s1, t6, t3
                  ori          s11, s3, 1855
                  addi         s2, t0, -1389
                  slt          s3, a7, t2
                  ori          t5, t2, -961
                  ori          s1, t4, 961
                  sltiu        a5, s6, 1265
                  srl          s1, a3, s9
                  slt          s9, s0, a1
                  andi         s11, s9, -387
                  sltu         a7, s7, s7
                  slt          s8, sp, a3
                  sub          s8, tp, s4
                  slti         s7, s2, -843
                  xor          a7, gp, a3
                  and          a0, a2, a3
                  add          s5, s6, a2
                  xor          s2, s3, s0
                  add          ra, s8, s9
                  lui          a4, 816862
                  sltiu        s11, s10, 420
                  xor          a4, a0, zero
                  addi         a4, a5, -1660
                  xori         s5, s7, -1596
                  auipc        a2, 895534
                  addi         t6, s7, 779
                  sub          a0, a7, tp
                  sltiu        s3, t2, -1038
                  srl          tp, gp, t3
                  srl          zero, sp, tp
                  and          s8, a0, t5
                  sltiu        a7, t3, 656
                  or           ra, a6, s6
                  ori          t6, s11, -1088
                  sltu         zero, s11, tp
                  sra          t3, a1, t5
                  or           s11, tp, s0
                  slli         s8, s4, 4
                  slti         s8, tp, -426
                  slli         ra, t2, 10
                  sub          zero, a5, s0
                  ori          a1, gp, 279
                  slti         t1, t1, -1754
                  lui          sp, 339718
                  slt          s7, s7, t2
                  sltiu        s4, a7, 561
                  ori          s0, a1, -1800
                  srli         a7, a6, 22
                  andi         a5, s6, -292
                  auipc        ra, 664176
                  srl          s0, tp, a6
                  xori         a4, zero, 79
                  slt          s3, s8, t2
                  ori          s5, s4, 692
                  srl          zero, s6, tp
                  andi         s9, t1, -1733
                  sltu         a2, s3, a0
                  lui          t5, 350308
                  nop
                  srli         s5, s2, 29
                  slli         tp, sp, 31
                  slt          tp, s10, t1
                  slli         t1, a1, 21
                  or           a7, a4, s3
                  slt          sp, s6, s0
                  andi         a4, a2, 779
                  add          tp, a0, s10
                  addi         s7, s10, -1968
                  sltiu        a7, t2, 685
                  or           a0, s11, s4
                  slti         a4, s2, -1887
                  srli         ra, s0, 30
                  auipc        t6, 13347
                  srai         s7, zero, 3
                  srli         s9, s8, 4
                  sra          s10, t1, s2
                  auipc        a4, 147492
                  slti         t6, t4, -1814
                  or           t3, zero, a0
                  slt          ra, t5, s9
                  xor          s4, s3, t4
                  slti         a1, s5, -248
                  srl          a5, t6, a7
                  xor          t3, a4, t5
                  xor          s0, a7, a7
                  sltiu        s0, s10, 22
                  addi         t6, t5, -971
                  xori         t6, s7, -1644
                  nop
                  srli         t1, a1, 21
                  sra          a5, s0, s10
                  auipc        a3, 498509
                  srli         t4, a2, 0
                  slti         t4, s11, 528
                  addi         s2, a7, -1142
                  ori          s5, t6, -612
                  xor          ra, a3, s10
                  lui          s4, 828181
                  addi         s7, s6, -1939
                  xori         a2, a0, 601
                  lui          a5, 1038408
                  sll          a4, s9, s4
                  sltu         a5, t1, a7
                  nop
                  sub          sp, s7, a6
                  add          t5, a7, t5
                  sll          gp, t3, t6
                  xori         a4, s8, -1314
                  srl          a3, a2, t1
                  sll          s5, s5, a4
                  xori         s9, s6, -1446
                  sltiu        s0, s5, 584
                  srli         s6, a7, 24
                  or           s4, gp, s4
                  srli         t4, t1, 9
                  nop
                  srl          a4, s2, a1
                  ori          t4, s4, -386
                  srai         s3, s7, 6
                  xor          ra, t2, ra
                  and          s7, tp, s8
                  auipc        s5, 699860
                  lui          ra, 603246
                  auipc        t6, 940310
                  slli         gp, s5, 13
                  auipc        s0, 91324
                  slti         a2, ra, 521
                  nop
                  ori          a1, s3, 447
                  andi         a7, s7, 1361
                  slti         t4, s3, 157
                  and          t6, zero, s8
                  srl          s11, s3, s9
                  andi         a4, sp, 1126
                  slt          s6, s5, s8
                  xori         t3, a4, 1148
                  srl          s7, a1, a4
                  sltiu        sp, t1, -770
                  xori         s3, s7, -1983
                  auipc        a3, 434938
                  andi         zero, s1, 268
                  xor          a7, ra, t6
                  slti         t5, zero, 1367
                  slli         t1, zero, 15
                  slti         a3, s11, 544
                  addi         s4, a5, -395
                  xor          zero, a6, a1
                  or           s8, s8, s1
                  xori         tp, t3, 1653
                  sltu         s4, s8, a4
                  sll          a5, a7, s10
                  andi         s10, a4, 79
                  srli         s9, a6, 29
                  and          s6, s11, a7
                  auipc        a7, 142714
                  srli         s1, s5, 15
                  sltiu        s1, t5, 1234
                  addi         s11, t3, -1882
                  addi         a5, s8, -697
                  srai         s2, s5, 11
                  slli         s3, tp, 0
                  xor          a4, s10, t3
                  sra          s2, a0, s4
                  srli         a1, t0, 23
                  sltu         t3, t5, t2
                  nop
                  srai         s3, a4, 7
                  andi         s8, a0, 879
                  srai         s11, t0, 26
                  sra          ra, t4, ra
                  andi         sp, a6, 1640
                  sltu         sp, s0, s1
                  addi         t1, s0, -1011
                  slt          t6, a0, t6
                  addi         s11, sp, -673
                  slli         s3, t0, 9
                  srli         ra, s7, 21
                  and          s7, s5, a3
                  xori         s5, a6, 915
                  srli         t3, s7, 27
                  slti         s4, s6, -922
                  slli         sp, t4, 9
                  slli         s3, a3, 21
                  srli         sp, t0, 11
                  slti         a5, s4, 1772
                  xori         s11, s8, -495
                  slli         s7, t3, 1
                  slt          a5, t5, t2
                  add          a4, s4, s2
                  lui          s6, 894137
                  srl          a7, a7, t0
                  andi         s6, t4, -989
                  slli         gp, s6, 12
                  slli         s10, a4, 8
                  nop
                  srai         s9, s7, 13
                  sltu         gp, s11, sp
                  srai         a5, s3, 6
                  andi         s6, a0, -1978
                  srl          s4, sp, s5
                  sll          s2, s6, t2
                  auipc        tp, 58967
                  or           a4, a0, s2
                  auipc        s1, 376688
                  nop
                  andi         gp, s6, 1803
                  auipc        t3, 278764
                  sll          s9, a1, s8
                  nop
                  or           s6, t3, s0
                  xori         s7, t4, 1624
                  sltiu        sp, tp, -1005
                  sll          t5, s2, a0
                  slti         zero, sp, -128
                  slti         s9, ra, -501
                  xor          a1, a4, t5
                  slt          s10, a4, s10
                  slt          gp, a1, ra
                  slti         t3, zero, -2034
                  andi         s8, tp, -560
                  sltiu        s10, t4, -1324
                  slli         t1, s9, 29
                  or           ra, t5, ra
                  slli         a5, s6, 9
                  xori         ra, a6, -191
                  srli         s1, s2, 25
                  slt          tp, s2, s10
                  ori          zero, t4, -1871
                  andi         t4, s9, -829
                  or           s4, a6, t6
                  sra          s10, t6, a6
                  and          s3, s8, ra
                  sub          a3, a1, sp
                  addi         a0, s2, 1144
                  srli         a1, a3, 24
                  ori          s5, t6, -440
                  slt          s4, a0, s7
                  lui          t4, 241261
                  slti         t3, s0, 1672
                  sub          tp, a0, a7
                  and          tp, ra, a3
                  or           t4, ra, a5
                  slti         s11, a7, 478
                  nop
                  or           s6, a2, zero
                  sub          a4, t5, gp
                  sub          a4, a1, a1
                  nop
                  auipc        s11, 119323
                  lui          s2, 141301
                  sll          zero, s9, s1
                  addi         a4, a5, 1167
                  sltu         gp, s10, t0
                  sltiu        s1, a3, -316
                  xori         zero, t1, 510
                  xor          s11, t5, a7
                  addi         a3, s2, -705
                  slt          t6, s2, t0
                  sra          a3, a7, s0
                  srli         s11, t5, 29
                  sub          a0, s6, t6
                  xor          a0, s8, s6
                  lui          s9, 512717
                  sll          t6, t0, a6
                  ori          s6, s8, 364
                  andi         sp, ra, 136
                  or           s5, a0, zero
                  sra          gp, ra, tp
                  or           a4, a4, s11
                  xor          s10, s2, sp
                  auipc        s2, 1034249
                  addi         s8, s2, 60
                  lui          s3, 725542
                  srli         a4, a3, 17
                  sll          sp, a0, s6
                  srl          s0, a5, a4
                  sltiu        t6, a0, 1018
                  slt          a5, s9, sp
                  sub          a2, a7, s6
                  add          t4, s8, a2
                  xori         a0, a0, 975
                  nop
                  addi         a2, s6, 982
                  nop
                  slli         a2, s9, 27
                  or           s2, t5, s7
                  addi         a2, tp, 1280
                  or           s11, s11, tp
                  slli         s6, s7, 4
                  nop
                  xori         gp, s5, 334
                  slti         s2, t5, 519
                  slt          a1, a3, s7
                  sra          s8, s4, a3
                  slt          s6, t2, t4
                  slli         sp, a1, 27
                  auipc        a0, 479333
                  slti         s7, a2, 258
                  slti         t1, s7, -93
                  srl          t3, a2, s11
                  sltu         sp, s1, t5
                  srl          zero, s5, t5
                  add          gp, s9, ra
                  srli         a4, a1, 20
                  srai         tp, zero, 22
                  andi         a1, a0, 155
                  ori          tp, gp, -555
                  slt          gp, ra, s1
                  slti         s3, s9, -1586
                  sra          s3, a3, ra
                  slt          s5, s11, s4
                  xori         s8, a7, -553
                  sra          sp, t1, t5
                  sub          a5, s0, s0
                  slti         zero, gp, 2046
                  slt          s5, s4, a6
                  slt          a2, ra, t2
                  slt          a3, t3, s0
                  srli         s11, a6, 3
                  slti         s10, t4, -127
                  and          t4, zero, a1
                  addi         t1, t6, 871
                  sub          s2, s4, t3
                  srai         s6, s4, 24
                  andi         t4, ra, 223
                  xor          s10, t6, ra
                  sltiu        a4, t2, -140
                  auipc        s4, 138348
                  xor          ra, s0, a1
                  or           tp, a7, a6
                  auipc        zero, 25286
                  xor          a3, a3, a6
                  slt          s3, t5, s3
                  ori          s2, s8, -1290
                  or           s4, t4, gp
                  sra          a7, a7, s10
                  auipc        s0, 425752
                  srl          gp, s3, a1
                  xor          s7, t2, s5
                  andi         a5, a2, 1005
                  sltiu        s7, s2, 1547
                  add          gp, tp, s1
                  xor          s2, t5, s0
                  sll          t5, a7, s1
                  addi         a7, s10, -999
                  add          s4, t4, s6
                  ori          t1, a2, 1103
                  and          a3, t3, s11
                  srai         t1, s11, 13
                  sra          t3, a6, a4
                  or           a7, a4, s2
                  auipc        t1, 851950
                  slti         t4, tp, -594
                  sltiu        a4, a4, 2005
                  sltu         s0, t0, t6
                  slli         sp, a4, 29
                  sll          sp, s7, t1
                  sra          s8, s8, t3
                  ori          s10, t0, 808
                  srai         a7, s7, 2
                  srai         a5, a7, 27
                  add          t1, t0, gp
                  sll          s2, sp, t3
                  auipc        a5, 1002711
                  nop
                  sra          a2, zero, s9
                  auipc        t3, 165068
                  auipc        t3, 684181
                  andi         t4, a2, 1903
                  srl          s6, gp, gp
                  add          a5, a4, s10
                  srli         s7, sp, 28
                  nop
                  nop
                  auipc        t5, 422021
                  nop
                  sra          a1, tp, s1
                  and          t5, a1, a7
                  sltiu        s4, s3, -1664
                  ori          zero, a2, 717
                  sub          s7, s9, ra
                  slli         s3, s4, 27
                  xor          s0, t1, t1
                  srai         s10, s11, 1
                  slli         s3, t4, 8
                  slli         s6, t0, 7
                  sub          t1, a6, s1
                  sub          ra, t6, t1
                  srl          s4, s6, t2
                  sll          s3, a2, a3
                  srl          gp, gp, s3
                  sub          s4, s8, t3
                  lui          s10, 1006104
                  sra          sp, s6, zero
                  srai         s7, s5, 14
                  sll          s4, a4, s9
                  lui          zero, 892717
                  slt          a7, a7, sp
                  srl          s5, s8, a7
                  sra          s4, t6, s4
                  andi         s0, s2, -101
                  slti         a5, ra, -1933
                  srai         s9, sp, 6
                  slti         t5, a4, -222
                  srai         a0, gp, 25
                  add          tp, s3, tp
                  srli         zero, s3, 13
                  srli         s6, sp, 5
                  sub          s11, s3, t1
                  sra          zero, ra, s10
                  andi         a7, s11, -576
                  lui          sp, 55980
                  ori          a5, s2, -448
                  slli         t3, t3, 8
                  sra          s8, ra, t4
                  andi         s2, a5, -1076
                  sll          s6, gp, t5
                  andi         s7, a5, 1329
                  and          s3, s10, t0
                  lui          a3, 810360
                  add          a0, s6, a7
                  andi         a5, t3, -1905
                  add          t4, t6, s9
                  xor          t6, s6, a4
                  srl          s0, s2, s10
                  xor          sp, zero, t0
                  sltu         a0, t5, a4
                  addi         a1, s2, 658
                  srl          s3, t0, a6
                  sltiu        s6, s2, 1100
                  ori          tp, ra, -400
                  ori          a5, s10, -1986
                  xor          ra, t6, s6
                  sltu         t3, a6, ra
                  xori         zero, s10, 1901
                  add          a4, s9, s1
                  sll          tp, ra, t2
                  srai         t1, s6, 2
                  andi         s9, gp, 1036
                  auipc        tp, 110300
                  slti         s5, gp, 275
                  or           t6, sp, s8
                  sltu         s8, ra, t2
                  srai         gp, t6, 12
                  sub          a7, a5, s1
                  sub          a2, a1, a4
                  srli         tp, s1, 0
                  sll          a1, t4, sp
                  andi         t1, s11, 187
                  lui          tp, 1042854
                  sll          a5, s6, gp
                  srai         t3, zero, 16
                  andi         s9, zero, -1127
                  slt          s7, s8, s1
                  or           s11, a6, s1
                  srli         s11, s3, 3
                  srli         s11, t0, 27
                  ori          tp, s7, 283
                  addi         zero, a7, -1988
                  or           s3, a5, s2
                  slt          gp, a7, a0
                  sltiu        ra, a7, -1437
                  sltu         s2, a3, s3
                  nop
                  sltu         t4, t3, s8
                  lui          s1, 337633
                  slli         a5, zero, 11
                  srl          s7, t0, t1
                  sll          s1, t0, t3
                  xori         s9, s8, -796
                  xor          sp, a1, sp
                  slli         s8, s2, 31
                  xori         tp, a4, 1155
                  addi         s3, s2, 1126
                  ori          t5, t0, 1047
                  andi         s11, zero, 1414
                  and          s4, t6, sp
                  srl          s8, ra, t3
                  slt          a2, s7, s1
                  auipc        zero, 763299
                  slt          s7, s3, a0
                  sra          t3, a2, a2
                  lui          a2, 284787
                  sub          t5, s5, s1
                  ori          a2, s4, 462
                  srai         a2, a5, 12
                  lui          s3, 153824
                  srli         s7, a0, 19
                  nop
                  slt          s4, tp, t5
                  sltu         s0, s0, t1
                  auipc        zero, 386474
                  nop
                  sra          s9, gp, s5
                  slt          t5, s7, s3
                  sltiu        a5, s1, -1082
                  add          s7, s5, t1
                  sll          a7, a0, s3
                  srli         t4, t5, 22
                  auipc        s11, 937244
                  or           s8, s9, s7
                  xor          s7, a7, s1
                  addi         a3, sp, 887
                  slti         t6, s5, -1274
                  sll          t6, a4, s4
                  xori         sp, s9, 860
                  sub          s5, s7, t1
                  slt          s10, a2, a7
                  xori         s1, s8, 703
                  addi         s0, a2, -2013
                  xor          t5, s7, a6
                  nop
                  sltu         zero, s10, t1
                  add          s7, s1, t5
                  lui          s0, 115137
                  xor          t1, s5, t5
                  sll          tp, s9, a4
                  sub          s1, a5, a0
                  slti         a2, a7, 211
                  sra          s6, s0, t4
                  addi         t6, tp, 82
                  slt          s5, a7, s11
                  srl          a2, a2, s1
                  sub          s8, a6, a3
                  xor          s8, s1, a3
                  xori         a5, gp, 1903
                  sra          s0, sp, zero
                  slli         a1, s6, 17
                  slti         s5, s6, 1910
                  xor          s2, t5, gp
                  slti         t1, t1, 530
                  slt          a5, s1, t2
                  nop
                  add          zero, gp, a3
                  ori          a7, zero, 1863
                  andi         ra, s3, -1511
                  auipc        t4, 159860
                  sltiu        s9, t5, 1131
                  sra          a5, t0, t0
                  sra          zero, t1, s1
                  ori          s2, tp, -1729
                  and          s10, tp, s4
                  nop
                  xor          s7, s6, s11
                  and          s3, t1, t4
                  andi         s5, tp, 215
                  andi         gp, s4, 1512
                  sll          a2, s3, gp
                  srl          a7, t0, s11
                  srai         a7, t4, 24
                  slti         t1, s6, 961
                  lui          t3, 293111
                  sltiu        gp, t2, -330
                  srai         a0, s10, 0
                  ori          s10, a3, 317
                  slli         s7, s8, 28
                  andi         s11, tp, -533
                  sll          s2, a7, a4
                  sltiu        s6, a4, -1424
                  sltu         a4, t6, sp
                  xor          s5, t3, t2
                  and          s11, a7, a5
                  and          a2, sp, t1
                  and          sp, s1, t6
                  srai         gp, t3, 11
                  ori          s6, t5, 238
                  sltiu        s8, a5, 512
                  sub          s8, a3, t1
                  srl          s9, t2, s11
                  srl          a0, t5, a1
                  nop
                  auipc        a0, 697053
                  srai         s11, t1, 10
                  ori          a2, s0, 1878
                  andi         s11, s4, 1091
                  add          a2, ra, gp
                  slli         a3, t1, 16
                  auipc        zero, 518925
                  auipc        s3, 732386
                  and          ra, sp, a2
                  or           a4, s4, s6
                  sll          a2, a3, s7
                  add          s4, s5, t4
                  sltu         t3, t1, t4
                  add          s2, s11, t1
                  srl          s5, s9, a5
                  add          a0, t3, gp
                  slli         s4, s0, 26
                  srai         a7, s1, 3
                  xor          s11, s11, a4
                  slt          a5, s2, s3
                  auipc        a1, 142145
                  add          s2, a1, s11
                  sltu         s0, s5, t2
                  and          t1, a2, a0
                  slti         tp, t6, 1689
                  sra          zero, t0, a3
                  sll          t4, gp, ra
                  sub          t1, zero, ra
                  addi         t1, s10, 722
                  srli         tp, s3, 15
                  ori          s1, s2, -743
                  sltu         s7, s7, ra
                  sra          a3, s5, a1
                  sltiu        s6, ra, -1797
                  nop
                  ori          a3, t0, 1533
                  sltiu        t1, s11, 1178
                  srl          a0, sp, sp
                  xor          s11, sp, s3
                  xor          s11, a3, s11
                  xor          s9, s11, a3
                  andi         a3, a7, -331
                  and          s8, a3, s9
                  sub          ra, gp, s10
                  srl          s8, a2, a0
                  and          a4, t6, t6
                  srai         s5, a0, 2
                  srli         zero, ra, 4
                  slli         a1, s3, 12
                  sub          s9, s8, gp
                  addi         t3, t1, 809
                  andi         zero, s7, -169
                  add          zero, zero, t6
                  srai         sp, t6, 18
                  ori          gp, a3, 19
                  sll          t4, t2, a3
                  ori          a4, ra, -1091
                  xor          s9, s4, a2
                  slt          sp, t4, a5
                  lui          t4, 627879
                  nop
                  andi         t6, a0, -869
                  addi         s7, s10, -1806
                  slli         s7, t1, 13
                  addi         s9, s11, -1092
                  sra          s0, s1, a1
                  xor          a1, t0, s6
                  sltu         t6, a7, a7
                  slti         a3, a4, 1462
                  ori          s2, tp, 367
                  xor          a1, tp, a5
                  xori         zero, a3, -1465
                  xori         a7, s2, -107
                  srai         ra, zero, 8
                  srli         s1, t6, 0
                  addi         s9, s0, 755
                  sltu         a1, s10, ra
                  slli         ra, gp, 17
                  slli         s1, t3, 17
                  andi         s3, s6, -813
                  and          s5, s2, a1
                  nop
                  slti         sp, t3, -694
                  xori         a4, a2, -333
                  sltu         s2, s10, s4
                  xor          s4, t1, t2
                  or           s3, a3, s0
                  xor          s1, s4, s8
                  ori          t4, a3, 1575
                  lui          a1, 218343
                  and          a3, a4, a3
                  and          t4, s1, s2
                  lui          t3, 1036271
                  sltiu        s1, a1, -1690
                  sll          s4, tp, s3
                  sll          a3, s2, s8
                  sub          s7, a3, s2
                  srai         tp, a3, 21
                  and          s5, s0, t4
                  nop
                  or           a0, s10, t4
                  auipc        tp, 121022
                  sltu         a2, s8, a1
                  srli         s10, sp, 5
                  sll          gp, ra, s10
                  srli         a7, t2, 17
                  srli         a3, a5, 23
                  auipc        t5, 343223
                  add          a5, t6, s10
                  nop
                  addi         t5, t1, -313
                  auipc        s10, 327589
                  ori          s1, a5, -609
                  or           a5, a0, sp
                  srl          a3, s8, ra
                  sra          s4, a6, gp
                  nop
                  sltu         s4, s11, a4
                  srai         s3, a5, 9
                  xori         s8, s4, -964
                  sra          a3, t4, a6
                  sltiu        gp, ra, -1400
                  xori         s11, s1, -894
                  auipc        s11, 205880
                  slli         s2, t0, 6
                  sltu         t3, s1, gp
                  ori          s8, a2, -1380
                  ori          s11, t4, -811
                  xor          s4, s2, t3
                  slti         t4, t0, -668
                  sltu         s10, a4, s9
                  lui          t4, 676237
                  nop
                  lui          t5, 313179
                  sltu         t5, a4, tp
                  sltiu        a7, s4, -1574
                  sltu         a7, a0, s4
                  xor          s9, s8, t3
                  sltiu        tp, a6, -1457
                  sll          gp, zero, t1
                  xor          s11, s11, s3
                  sltiu        a1, s2, -976
                  slti         t6, s9, 873
                  srai         a3, s10, 17
                  sltu         t5, a6, s0
                  sltu         gp, s8, s0
                  srl          s0, s5, s4
                  nop
                  srli         a7, a5, 13
                  sub          zero, t1, a1
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s4, 0xffffffff
                  li           s3, 0xffffffff
                  li           t6, 0xf195b292
                  li           s6, 0xd1a08356
                  li           a4, 0xffffffff
                  li           s7, 0x0
                  li           t4, 0xffffffff
                  li           a0, 0xffffffff
                  li           gp, 0x0
                  addi         ra, s7, 1223
                  sub          s7, s4, a0
                  auipc        a4, 1022315
                  add          t4, s4, gp
                  addi         a0, ra, -1495
                  nop
                  addi         s6, a0, 727
                  nop
                  auipc        a0, 690827
                  nop
                  auipc        a0, 217746
                  lui          s4, 811715
                  lui          s4, 250038
                  auipc        gp, 487212
                  lui          t6, 182430
                  nop
                  nop
                  nop
                  sub          t4, s7, t4
                  sub          s6, s4, ra
                  addi         a4, gp, -87
                  addi         s4, t4, -1582
                  add          s4, s3, a4
                  addi         ra, t4, 1640
                  auipc        s7, 908633
                  sub          a4, a0, ra
                  sub          gp, s6, a4
                  sub          s3, s7, s3 #end riscv_int_numeric_corner_stream_13
                  auipc        a4, 887669
                  auipc        s7, 759751
                  xor          s7, s3, s6
                  auipc        zero, 627222
                  srai         t6, s4, 26
                  and          t1, t1, s6
                  lui          a4, 341529
                  xori         s11, a3, 1424
                  slti         s5, t0, -1207
                  xor          gp, s9, a7
                  xori         a5, s1, -669
                  sub          a7, s3, zero
                  sltiu        ra, s7, 128
                  auipc        s10, 491831
                  slti         s5, a4, 1898
                  srai         sp, s8, 23
                  and          t4, s4, t6
                  srli         zero, t0, 4
                  add          t3, t3, a7
                  srl          s5, a7, s9
                  ori          s0, a2, -1438
                  auipc        t4, 103171
                  srl          s6, t5, t0
                  srli         s11, a5, 21
                  sra          s5, s9, s5
                  srli         sp, t0, 30
                  slti         gp, s4, -592
                  slti         t6, s7, 1923
                  slti         a2, zero, 903
                  addi         a0, s8, 1785
                  lui          gp, 845741
                  sub          s7, a0, a5
                  ori          a7, t6, -483
                  slli         s9, zero, 9
                  srli         sp, tp, 4
                  andi         s2, a3, 1673
                  sll          t6, a5, zero
                  xor          ra, s1, a1
                  or           ra, s9, ra
                  add          s0, s4, s2
                  srai         t6, t5, 2
                  andi         t4, t1, 1482
                  sltiu        t6, ra, 115
                  nop
                  xori         s11, s3, 1795
                  slli         s4, t6, 18
                  slt          s0, s7, s3
                  lui          t1, 212093
                  addi         gp, s11, -1852
                  srli         s8, a6, 9
                  or           s4, gp, a5
                  or           tp, a4, a0
                  lui          s11, 112248
                  slli         t6, sp, 25
                  auipc        s6, 52509
                  auipc        s0, 792527
                  and          a5, s2, t1
                  sltu         ra, a7, s5
                  nop
                  lui          s4, 955072
                  and          s7, s3, s6
                  sltu         tp, a3, a1
                  nop
                  sll          sp, s7, t2
                  slt          s5, s5, a1
                  slli         s8, t5, 14
                  srl          s4, a6, a1
                  or           s7, ra, t0
                  nop
                  addi         a2, t1, -1695
                  srli         s6, t2, 18
                  xor          a7, t4, gp
                  slti         s0, a7, -1718
                  sub          s5, s10, s4
                  sltiu        sp, s10, -23
                  slli         t6, s9, 29
                  andi         s5, t2, 1473
                  and          s0, s3, s2
                  ori          s8, t5, -502
                  sll          s7, t0, s2
                  sra          s11, a7, s0
                  and          sp, ra, tp
                  srli         tp, s10, 7
                  andi         s10, s11, 1544
                  slt          s4, t0, s4
                  srai         a7, a6, 21
                  andi         s5, t1, 476
                  srl          s9, t5, a7
                  or           s2, a1, s11
                  xor          t4, t6, zero
                  xori         a7, a5, -165
                  slli         t5, a4, 6
                  sll          t5, s7, a3
                  ori          s5, s8, 1626
                  ori          s1, t2, -1944
                  add          s9, t2, s9
                  srli         s9, s4, 15
                  lui          t4, 752815
                  slli         s11, s1, 3
                  and          a2, s7, s10
                  sltu         s4, s6, s9
                  xor          a2, t6, a1
                  sll          s4, a1, t0
                  slti         t3, ra, -46
                  and          a5, a3, a0
                  sra          a3, gp, s6
                  srai         tp, a2, 16
                  andi         a3, a0, 1563
                  sra          sp, sp, a1
                  auipc        a7, 1008742
                  lui          s2, 753861
                  or           s9, s0, t5
                  and          s4, t3, s3
                  xori         tp, a1, 1114
                  auipc        zero, 107724
                  sra          a2, a4, ra
                  nop
                  srli         tp, s3, 3
                  slti         s5, t5, 824
                  xori         t6, s10, -597
                  and          sp, a6, t6
                  sltu         a1, t3, a2
                  srli         t4, t4, 14
                  srli         s8, s5, 7
                  sub          a4, sp, s6
                  and          s10, t0, s1
                  slli         s11, s11, 17
                  slli         s8, a1, 19
                  add          s6, s8, zero
                  sltu         s7, s8, s2
                  srli         zero, s2, 14
                  or           t5, a7, a4
                  lui          a1, 265423
                  lui          sp, 456318
                  slt          a1, t0, a7
                  ori          sp, s8, -206
                  slt          t1, ra, zero
                  slt          s7, s5, t1
                  nop
                  nop
                  sltiu        s6, s5, -1655
                  nop
                  srli         a3, a4, 19
                  sltu         s1, s3, a6
                  srai         a0, s5, 25
                  srai         a4, a1, 4
                  addi         t1, a5, 1227
                  sltiu        a2, s5, 1494
                  srli         t3, s6, 19
                  srli         a1, t1, 13
                  ori          s3, t1, 1969
                  sub          s11, s1, t2
                  xor          sp, s0, sp
                  sub          a2, a1, s8
                  auipc        a5, 901748
                  sll          ra, s11, s1
                  slti         s4, t3, 639
                  srai         s5, sp, 20
                  slt          s5, a5, a6
                  sub          tp, ra, s0
                  srl          t6, t5, tp
                  sltiu        s2, t0, 81
                  sltiu        t6, a4, -467
                  slti         t1, gp, -1055
                  srl          s6, t6, s7
                  add          s8, s1, t5
                  nop
                  slli         s9, s6, 20
                  add          s9, t0, s3
                  auipc        s4, 107585
                  add          a4, a4, t0
                  addi         s3, t2, -1068
                  andi         t6, t1, -361
                  sra          gp, tp, t6
                  ori          s9, t1, -1422
                  add          t1, s9, s8
                  sltu         s8, a5, s7
                  andi         t6, s4, 668
                  slt          a1, a3, t4
                  slt          a3, s11, t0
                  ori          s11, s7, 1534
                  sltu         s6, a1, tp
                  sltiu        s11, s8, -1728
                  add          zero, s6, s5
                  nop
                  or           ra, s10, t3
                  srai         s6, ra, 24
                  nop
                  xor          ra, s5, s6
                  nop
                  sltu         s9, gp, t4
                  srli         s11, s11, 20
                  addi         a5, s9, 1977
                  srai         a4, a1, 8
                  sltiu        s6, a3, 1683
                  sll          tp, t6, t1
                  add          a4, s9, t2
                  sltu         s6, s9, s6
                  srli         zero, t6, 19
                  add          a3, t0, a4
                  or           a3, a3, s10
                  auipc        t1, 172188
                  add          s7, a3, s0
                  add          s11, s4, a2
                  srli         s10, s3, 2
                  or           a3, a1, a3
                  srai         t1, zero, 12
                  andi         a3, a5, 181
                  sltu         s5, t2, gp
                  andi         a0, t5, -137
                  nop
                  slti         tp, s10, -1338
                  srli         s7, s2, 4
                  auipc        tp, 1026267
                  andi         a7, s8, 1966
                  srai         a1, a3, 3
                  xori         a0, a6, 1530
                  lui          t1, 875987
                  add          a1, t3, gp
                  sltu         s8, s1, a3
                  srl          a7, s11, s10
                  slt          s7, a7, s5
                  xori         s6, tp, -533
                  sltu         t1, s4, a0
                  ori          s7, s10, 337
                  srl          a1, s7, t1
                  lui          t3, 816300
                  srli         s4, s10, 22
                  xor          s2, s5, s1
                  andi         s9, t6, 1653
                  sltiu        a4, s4, -1755
                  add          t6, t6, tp
                  nop
                  xori         a5, s0, -410
                  xori         a2, a1, 1389
                  xori         s11, s4, 1768
                  srai         a7, zero, 31
                  auipc        t1, 433086
                  xori         t6, s9, 541
                  sltiu        s8, a3, 1650
                  auipc        t1, 179574
                  sra          a1, t0, a3
                  xori         s6, gp, -1177
                  srl          s3, gp, a1
                  addi         s3, a4, 882
                  auipc        s11, 590190
                  sltu         s4, s11, a2
                  ori          t6, t2, 2032
                  auipc        t4, 539554
                  xori         s1, s11, 310
                  and          t3, s3, s6
                  and          s7, s2, t5
                  and          s10, s7, ra
                  xori         a4, sp, -86
                  xori         a2, s2, 8
                  slli         a4, s11, 24
                  sra          gp, a7, gp
                  srli         s3, t0, 6
                  sll          t4, t0, t0
                  xor          t6, t4, a5
                  xor          s8, s3, s4
                  xor          s0, s1, t2
                  addi         gp, s0, 1006
                  slt          s3, s5, s9
                  andi         t5, ra, 719
                  andi         a7, a5, 1626
                  sll          s5, t6, a3
                  slli         s10, s7, 11
                  lui          t3, 350244
                  xori         s10, t2, 452
                  addi         t6, a2, 1337
                  sll          zero, a5, s11
                  sll          gp, a7, s2
                  and          a7, sp, zero
                  auipc        s10, 391909
                  sub          tp, gp, t2
                  xori         t5, s8, 399
                  sltiu        s6, t4, 1452
                  srli         a5, t6, 12
                  sll          s0, s11, a1
                  andi         a4, a4, 147
                  sltiu        ra, s6, -762
                  sltu         s4, t0, t4
                  sltiu        s10, s3, -360
                  sub          a3, s8, a3
                  and          ra, a2, tp
                  xori         gp, s9, 820
                  sltu         zero, zero, t5
                  sub          tp, t6, gp
                  srl          t1, ra, a3
                  add          s2, t0, s11
                  sub          s4, t1, a7
                  srli         t5, zero, 21
                  srli         a0, a7, 3
                  slli         tp, s11, 27
                  srl          a4, t2, a1
                  sra          t4, t1, s8
                  sra          a5, a4, gp
                  slli         s9, s2, 13
                  slti         t5, a1, 1134
                  andi         tp, a0, -365
                  srai         gp, s2, 13
                  xor          s6, t3, s2
                  addi         a2, a4, -1654
                  srli         t6, a6, 2
                  srai         gp, s9, 17
                  slt          gp, a7, t3
                  auipc        zero, 408209
                  add          a0, s4, s4
                  add          s9, tp, a6
                  sra          s7, a5, s3
                  sub          tp, zero, a7
                  nop
                  xori         s1, s1, -2024
                  srli         t3, s0, 23
                  andi         gp, s2, -802
                  xor          tp, t6, s5
                  srli         gp, s6, 8
                  xor          s7, s9, t4
                  auipc        t3, 579441
                  srai         zero, s10, 28
                  lui          s2, 615159
                  slt          a0, s0, t5
                  or           s6, t6, a7
                  nop
                  auipc        s9, 519827
                  add          a7, s10, ra
                  xor          a3, t6, a3
                  xor          a7, a3, a6
                  or           s1, a3, t3
                  sll          a0, s7, t6
                  auipc        a2, 24124
                  andi         s11, a5, 1960
                  and          s4, a3, a3
                  srl          s8, a4, sp
                  srl          t1, sp, a4
                  xor          s6, a7, a2
                  nop
                  auipc        s11, 254820
                  auipc        gp, 1000471
                  sltu         a2, a4, a6
                  lui          t1, 90005
                  sltu         t6, a1, s7
                  addi         t6, a3, 253
                  srli         a1, a6, 25
                  xor          s11, gp, t5
                  andi         t5, s0, -2032
                  srai         zero, a3, 10
                  sub          t4, a1, t0
                  sll          s2, t1, s8
                  or           s1, s8, a6
                  addi         t1, s2, -1554
                  and          a5, a0, t3
                  andi         a1, s10, 1476
                  auipc        a7, 286252
                  slt          a1, s8, sp
                  xor          s6, a0, tp
                  sltiu        a2, a4, 1876
                  addi         s11, t4, 936
                  lui          sp, 369365
                  ori          s4, a6, 237
                  xori         s0, t4, -1771
                  slli         a3, s1, 22
                  xori         s0, a2, 802
                  srl          s11, t5, s10
                  xor          a7, s6, s9
                  srl          s1, tp, zero
                  slli         gp, t0, 3
                  sll          s0, t6, a6
                  xor          s0, ra, zero
                  sub          s0, s8, s8
                  sra          a3, a1, t1
                  slli         t4, t3, 21
                  sra          s0, s5, zero
                  xor          s7, s9, s2
                  sll          s6, t5, t3
                  slti         a7, tp, -145
                  sub          s6, t0, s4
                  ori          tp, t1, -218
                  or           zero, t2, zero
                  sra          tp, a2, s10
                  sltiu        s1, s0, -592
                  srli         t4, s6, 29
                  lui          t4, 219427
                  sltiu        s0, a6, 1905
                  slt          s2, t3, t2
                  sll          zero, a4, a1
                  sub          t5, ra, t5
                  srl          s5, t3, s11
                  xor          sp, a6, tp
                  xor          s10, t0, s10
                  srli         t3, a1, 30
                  or           s7, a7, t4
                  slli         t1, a1, 13
                  add          tp, t1, a2
                  slli         a3, s8, 6
                  or           tp, s10, a2
                  sltu         s4, a7, t1
                  xor          a3, tp, zero
                  srai         gp, t4, 1
                  add          s8, s0, s9
                  and          a4, a3, s2
                  slt          a1, a0, s1
                  and          s8, s4, sp
                  sub          t6, a2, t3
                  sltu         gp, s2, a0
                  sll          t1, t1, s4
                  lui          a0, 243000
                  nop
                  slt          gp, s1, s0
                  sll          s3, t1, s7
                  ori          t3, a0, -1367
                  slt          a3, ra, a2
                  lui          s5, 509290
                  andi         t5, s7, 52
                  slti         zero, s4, 52
                  addi         t6, s1, -451
                  sll          gp, s9, t4
                  and          t1, s2, s10
                  slt          s1, t3, a3
                  andi         a1, s4, 1080
                  auipc        a2, 327827
                  lui          tp, 467669
                  sub          s11, a7, s2
                  lui          s9, 676474
                  addi         s5, t4, 1109
                  ori          s4, sp, -771
                  sltiu        s1, t6, -1415
                  sra          a3, gp, a1
                  srli         t3, s0, 0
                  srai         t4, a2, 16
                  xori         s8, s8, 394
                  srl          s11, s8, a2
                  lui          tp, 585765
                  addi         s1, t3, 1456
                  or           s8, s9, a0
                  sll          t6, t4, t3
                  ori          s1, t6, 1376
                  slli         tp, s7, 21
                  xori         s8, t4, -1901
                  slli         gp, t2, 3
                  sltu         a7, a3, t3
                  sltiu        t3, s8, 3
                  lui          s6, 890919
                  slt          t4, s9, a6
                  ori          t4, s6, 1485
                  srli         t4, s11, 19
                  slti         t6, t3, 898
                  sll          ra, s10, s8
                  sltiu        t5, s11, -394
                  sub          a3, t3, s9
                  and          s5, sp, s5
                  andi         s9, a5, -1397
                  sll          sp, s11, t3
                  sra          s2, s7, t0
                  sll          gp, s5, t1
                  add          s1, tp, s9
                  and          a5, sp, s6
                  sltu         s10, s7, s0
                  xor          a1, a7, s5
                  srli         t1, s7, 5
                  add          a4, s10, a0
                  andi         s8, t1, 1407
                  sll          a5, s11, t1
                  slt          t6, t2, a7
                  sll          s3, s1, gp
                  srl          a1, a7, tp
                  slt          s0, a2, t4
                  sltu         s5, s1, t2
                  srli         s10, ra, 20
                  srl          a0, sp, a3
                  srai         s10, ra, 30
                  xori         a4, s11, -1538
                  sub          zero, ra, t0
                  or           t6, t6, t5
                  sltu         a4, gp, sp
                  srl          ra, s10, s0
                  srl          ra, s11, a2
                  nop
                  andi         s11, s10, -1334
                  xor          a3, t3, s4
                  sltu         s11, s9, s8
                  auipc        zero, 37466
                  xor          s7, s0, a7
                  slti         s4, t1, -1555
                  sll          s0, s10, s7
                  or           zero, a5, s10
                  sll          t6, a6, t6
                  and          t1, s0, s7
                  auipc        sp, 300916
                  sub          s2, s7, s0
                  andi         s5, s11, -1642
                  sll          tp, s2, s5
                  slti         t1, a0, -472
                  srai         t1, a5, 8
                  xori         a1, s11, -1597
                  or           a4, s5, s11
                  slti         t5, zero, 1183
                  xor          t4, a4, s0
                  srl          a2, s4, a4
                  xor          a5, s2, ra
                  sltu         t3, s4, zero
                  andi         a3, a0, -529
                  auipc        a5, 282742
                  nop
                  lui          a1, 415943
                  srli         zero, s9, 26
                  addi         s4, ra, -1040
                  srli         a7, s7, 6
                  andi         s4, s9, 1354
                  sltiu        s8, s0, 1574
                  xor          a1, a6, s5
                  lui          sp, 737461
                  slti         a2, a2, -188
                  auipc        a0, 660039
                  auipc        a1, 1035050
                  xor          ra, t0, s2
                  sltu         s8, s2, sp
                  slli         a3, a5, 13
                  or           s5, s6, t5
                  srli         s11, s2, 4
                  slli         tp, t3, 13
                  auipc        s6, 540337
                  nop
                  slti         a3, a2, -1366
                  srl          zero, s4, s1
                  and          a5, s2, ra
                  srl          s6, a5, t5
                  nop
                  slli         s6, a7, 15
                  sltu         a4, s0, t6
                  xori         s5, tp, -585
                  srl          s1, s4, zero
                  nop
                  sub          s7, a0, ra
                  slt          s10, a5, a1
                  nop
                  srli         s4, a0, 23
                  sub          a3, s8, s10
                  or           zero, s3, s8
                  addi         t4, s0, 1817
                  andi         tp, s3, 839
                  sub          s6, a6, t6
                  sltu         zero, t0, tp
                  slli         a4, a3, 30
                  sll          a1, s11, gp
                  lui          t1, 123939
                  addi         s6, sp, -1374
                  slti         a3, t3, 1962
                  slt          s1, t4, a1
                  sub          sp, s9, s9
                  nop
                  auipc        s11, 546763
                  and          a3, a3, gp
                  sll          s5, t2, t0
                  xori         t5, a0, -1226
                  slli         s4, gp, 15
                  nop
                  andi         a1, a0, 169
                  auipc        s8, 40158
                  sltiu        s9, a3, -1331
                  slli         tp, t1, 23
                  srli         s6, a1, 23
                  slt          a5, s5, gp
                  srl          a3, t5, t0
                  andi         s4, a5, -1517
                  and          s3, gp, gp
                  sltiu        s8, s11, -324
                  add          s5, gp, a1
                  nop
                  slli         tp, tp, 9
                  slti         a3, s3, -1647
                  xori         gp, s6, -712
                  srli         s7, s8, 6
                  addi         sp, t3, 424
                  addi         t4, a1, 1821
                  nop
                  srl          a0, s4, t6
                  slti         sp, a7, 1723
                  nop
                  and          t4, a7, a1
                  srli         a5, s8, 13
                  andi         ra, s5, 1626
                  add          s10, s6, t1
                  and          ra, s9, s9
                  nop
                  slt          s5, t4, s8
                  xori         t4, s4, 1184
                  slli         gp, s8, 12
                  srai         t5, t1, 0
                  addi         ra, a2, -103
                  slt          ra, s5, s7
                  sra          s2, t4, s2
                  add          s3, t0, a0
                  slti         a7, s7, 2041
                  lui          zero, 594696
                  xori         s6, s10, -1861
                  slt          gp, zero, zero
                  sltu         s5, a1, t2
                  sub          a0, a3, ra
                  auipc        s1, 953854
                  srl          a7, zero, sp
                  sll          s6, t2, s10
                  srli         s4, t6, 21
                  add          a2, s11, a6
                  srli         a2, t5, 12
                  sra          a2, a3, s6
                  andi         a3, s10, -641
                  lui          a5, 55978
                  nop
                  ori          s8, s11, -1171
                  andi         zero, t3, -1790
                  srli         a0, s9, 17
                  srli         a1, s9, 11
                  srli         tp, zero, 7
                  xori         s2, s4, 1035
                  sltiu        tp, s7, -1433
                  sltu         a0, t3, a1
                  sltiu        s10, s1, -776
                  sltiu        a2, zero, -1861
                  xor          s9, a2, gp
                  sra          s6, s8, t2
                  srli         t6, tp, 20
                  sltiu        t5, t3, -192
                  andi         gp, s3, -926
                  auipc        a0, 126210
                  slli         s0, s0, 14
                  and          s6, s10, s8
                  sltu         s0, s8, s2
                  andi         gp, ra, -2001
                  add          s8, a5, s4
                  lui          t4, 321162
                  andi         t4, s4, 1860
                  nop
                  nop
                  sra          s7, s9, s0
                  auipc        t1, 199139
                  and          s0, ra, s4
                  auipc        a7, 24488
                  sll          t1, s0, t1
                  ori          ra, s0, -226
                  sll          sp, s4, a6
                  slt          t3, s6, s7
                  nop
                  sll          s1, a4, a6
                  srl          a1, t5, t6
                  sub          gp, a0, t2
                  nop
                  addi         a7, t3, -1025
                  and          ra, sp, gp
                  and          s11, gp, zero
                  nop
                  auipc        sp, 735133
                  andi         a7, a0, -1528
                  xori         a7, tp, -1505
                  and          s1, s6, a6
                  slt          t4, s3, t3
                  sra          s7, zero, t1
                  sll          zero, s4, t2
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           s5, 0xffffffff
                  li           a7, 0xffffffff
                  li           t1, 0xffffffff
                  li           s0, 0x80000000
                  li           s11, 0xb217da03
                  li           s8, 0x0
                  li           a1, 0x80000000
                  li           s6, 0xa2e2b55
                  li           ra, 0x0
                  sub          a1, a7, a7
                  lui          s6, 564359
                  add          s5, s8, s5
                  auipc        s7, 610470
                  nop
                  addi         t1, a1, 1230
                  auipc        a1, 760566
                  add          s0, s6, s5
                  nop
                  auipc        a1, 555543
                  sub          t1, s5, a1
                  sub          s0, s8, t1
                  lui          t1, 439878
                  addi         s11, a1, 66
                  auipc        a1, 617604
                  add          a7, a7, a7
                  lui          s0, 497661
                  sub          t1, s11, ra
                  auipc        s7, 535156 #end riscv_int_numeric_corner_stream_20
                  nop
                  srl          a2, s8, s8
                  or           s7, t3, s5
                  ori          zero, tp, 375
                  sra          gp, ra, a2
                  slt          s9, s0, s8
                  sltu         a1, tp, ra
                  lui          t1, 56245
                  sltiu        s3, a4, -987
                  slli         ra, ra, 28
                  or           a3, s7, s6
                  add          a4, s10, s6
                  sra          s9, t4, t0
                  addi         s7, ra, 137
                  nop
                  srli         s5, t5, 23
                  srli         s0, sp, 23
                  xori         s0, a1, -390
                  xori         s4, s0, 928
                  xor          t6, s3, a7
                  slli         a0, s8, 25
                  srl          s0, ra, ra
                  andi         t3, tp, -381
                  xor          t6, a7, a0
                  slti         gp, t5, 1550
                  or           ra, t1, s5
                  sltu         s4, t1, t1
                  sra          s4, a3, a2
                  srli         s5, t3, 27
                  andi         a3, s7, 1106
                  srli         a0, s4, 21
                  xor          zero, s8, ra
                  ori          zero, t0, 92
                  slli         ra, s5, 21
                  and          zero, s10, tp
                  srl          s2, tp, s5
                  nop
                  slt          s10, zero, tp
                  slti         a7, a6, 1536
                  sltu         s6, t3, s9
                  sltiu        a4, a5, -236
                  and          s3, t6, s0
                  add          s7, t2, s11
                  srli         zero, a7, 11
                  sltu         s0, s6, s2
                  lui          s11, 988977
                  xori         tp, t2, -1756
                  srl          t6, s1, s0
                  sra          tp, s10, s2
                  and          s5, a7, a1
                  slti         s11, s1, 681
                  andi         t5, a7, -1762
                  srai         a4, a5, 25
                  sub          s0, s10, s8
                  srli         s9, t6, 7
                  slt          t5, a0, tp
                  slt          s3, s8, s6
                  srl          tp, a1, s5
                  srl          t6, a7, a4
                  sll          tp, s8, s1
                  slt          s9, a3, s5
                  sll          s9, ra, t2
                  srai         s7, a7, 28
                  slli         sp, a3, 11
                  lui          s9, 202295
                  srai         s10, tp, 11
                  srli         sp, s8, 0
                  slt          a2, a4, s11
                  xori         a5, tp, 518
                  xor          a1, a3, t4
                  addi         s11, t2, 1331
                  lui          zero, 755162
                  sltiu        a2, ra, 972
                  add          s5, a4, a7
                  andi         t5, a3, -802
                  lui          a5, 430196
                  srl          a0, s11, t6
                  xor          tp, s9, t3
                  nop
                  sra          a2, a4, a1
                  sltu         sp, t0, a3
                  sra          a5, s4, a3
                  auipc        s5, 121455
                  add          a5, s4, s0
                  sra          sp, s4, s6
                  xor          s0, s11, s2
                  nop
                  sra          t6, s9, a0
                  lui          zero, 736783
                  sub          s5, t4, gp
                  addi         s4, gp, -560
                  slt          zero, a2, s2
                  addi         ra, gp, -530
                  add          s6, t4, tp
                  sll          t4, a7, s11
                  sll          tp, ra, s6
                  and          s8, s11, s8
                  sll          zero, s2, s3
                  nop
                  ori          s3, t5, -1598
                  sll          a4, t0, s3
                  xori         s4, s9, 413
                  and          s4, s4, a7
                  nop
                  slti         a0, a2, -198
                  sra          a7, a1, s3
                  auipc        s10, 148862
                  and          a2, t1, s6
                  xori         a2, sp, 738
                  slti         tp, a0, -789
                  sll          a2, sp, s3
                  srai         s3, t0, 21
                  lui          s3, 769849
                  add          zero, s10, t0
                  sll          zero, t6, a7
                  srai         ra, a3, 2
                  srli         a2, t6, 25
                  add          s11, a1, a2
                  addi         tp, s0, -145
                  slti         t5, t5, 633
                  slli         s10, t2, 11
                  slti         s5, t5, -354
                  and          s6, s5, t3
                  slti         s4, gp, 1613
                  sra          gp, a5, t0
                  sra          a3, tp, a5
                  auipc        a3, 396779
                  srl          s8, t4, a4
                  sub          a1, s5, a5
                  slt          a4, s0, s6
                  and          s5, a2, t6
                  srl          s3, a4, s0
                  addi         a0, t4, 1511
                  srli         s2, s10, 31
                  sll          a7, t2, a4
                  srl          s11, gp, a0
                  sub          tp, s11, gp
                  slt          s5, a1, t0
                  nop
                  slti         s2, a5, -1790
                  xori         t6, s7, -549
                  xori         a2, s1, 768
                  xori         s5, t3, 322
                  add          ra, t1, sp
                  auipc        tp, 404393
                  or           s5, t5, s10
                  sltu         s7, a0, s5
                  sltu         a1, s1, a6
                  nop
                  andi         gp, t6, 414
                  slt          s4, s10, a6
                  sll          s9, gp, a1
                  and          s2, gp, a4
                  sltu         s2, t1, zero
                  slti         sp, t1, -1075
                  andi         t4, t2, 914
                  sll          s7, a7, s11
                  srai         t1, sp, 27
                  auipc        t1, 209563
                  slli         a7, s9, 1
                  ori          s8, zero, -930
                  sltu         a5, sp, a6
                  srl          s5, a2, a7
                  and          gp, a4, tp
                  ori          s10, a6, -1081
                  slti         s8, a0, -605
                  sub          a7, a7, t3
                  srl          t6, s7, t3
                  slt          a5, a5, a7
                  or           s6, sp, ra
                  ori          t1, s8, -425
                  addi         t4, sp, 1763
                  add          s11, a0, s3
                  sub          t6, zero, sp
                  lui          sp, 154538
                  and          s10, s3, a4
                  sll          gp, s0, s4
                  xori         sp, zero, -1333
                  sll          s1, a4, a7
                  add          s8, a3, a1
                  slt          s9, s5, s1
                  addi         a3, s7, -1447
                  sub          s0, s0, t1
                  sltu         a4, s11, t4
                  and          ra, a1, s1
                  srl          zero, a7, t4
                  srl          s4, s7, a3
                  sltiu        t1, t0, 2039
                  sub          s10, ra, sp
                  sra          s10, s1, a2
                  srli         t5, a4, 31
                  addi         zero, s11, 138
                  ori          s9, s1, 856
                  slli         tp, s0, 8
                  ori          a3, a1, 1207
                  xori         a3, gp, -1416
                  nop
                  slt          gp, s2, a4
                  xor          t3, a4, a2
                  or           tp, s5, gp
                  sltiu        s11, s3, -548
                  auipc        s4, 1005198
                  slt          s6, a5, a3
                  slt          s7, s9, t5
                  sra          zero, t1, s9
                  slt          s2, a6, s5
                  addi         s7, gp, 1881
                  ori          s9, s9, 435
                  sltu         zero, a1, t0
                  auipc        ra, 497658
                  or           zero, s8, a5
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           t5, 0x80000000
                  li           t3, 0x0
                  li           s3, 0x0
                  li           s1, 0xe4da64cc
                  li           a4, 0xf27bb8ff
                  li           s2, 0x80000000
                  li           sp, 0x7aa779ed
                  li           ra, 0x80000000
                  li           s7, 0x3d731b12
                  add          a4, s7, s7
                  addi         a4, s3, 650
                  auipc        s3, 49046
                  auipc        tp, 138927
                  lui          a4, 628125
                  auipc        tp, 285973
                  nop
                  addi         t3, s1, 1674
                  auipc        sp, 255873
                  auipc        t3, 49542
                  lui          s7, 27546
                  addi         ra, ra, -1115
                  sub          s3, t3, ra
                  addi         t5, a4, -907
                  lui          t5, 414783
                  auipc        tp, 245123
                  add          s7, s1, sp
                  lui          a4, 143518
                  lui          t3, 113555
                  addi         t5, t5, 282
                  nop
                  add          s1, ra, s1
                  addi         s1, s7, 1992
                  addi         s2, t3, -587
                  addi         a4, s1, -1614
                  nop #end riscv_int_numeric_corner_stream_7
                  slt          a5, tp, s9
                  and          a1, zero, a3
                  sltu         tp, gp, s0
                  srli         a7, t5, 20
                  xori         sp, s6, -1027
                  and          s7, a0, s11
                  srai         s3, s10, 24
                  ori          t1, gp, -1533
                  ori          a5, a5, 147
                  addi         t4, s2, -417
                  ori          s8, s9, 1931
                  srli         a1, s2, 9
                  slti         s8, s2, -287
                  sltu         a5, s9, a1
                  or           s11, s2, t4
                  and          a0, s0, a4
                  or           s3, a0, gp
                  slli         s10, a6, 8
                  xori         zero, sp, -1772
                  andi         a0, s0, -1366
                  xori         t6, t2, 989
                  andi         a3, a1, 387
                  slli         s1, sp, 1
                  srai         s7, t2, 8
                  xori         sp, t6, 484
                  and          s10, a5, t0
                  slli         a0, t3, 6
                  sll          s5, a0, gp
                  sll          t1, s9, a5
                  slt          t4, s9, s6
                  sub          s9, t2, a6
                  sub          s5, t6, t1
                  srli         a2, zero, 4
                  slli         s2, t0, 11
                  srai         a0, s3, 7
                  slti         s6, a0, 1704
                  add          s3, t5, gp
                  slli         s3, s6, 15
                  sltu         t1, a3, s1
                  slli         tp, s2, 27
                  sub          s0, gp, s8
                  sltu         tp, s6, t2
                  sltu         a1, t0, s7
                  srai         tp, t6, 21
                  slti         s7, a6, 1541
                  srai         gp, s4, 3
                  xor          ra, s5, s6
                  slt          s0, a5, gp
                  slti         t1, a4, -999
                  sub          s2, s3, t0
                  srl          s11, s6, s10
                  srl          t6, tp, s3
                  xori         s1, sp, 1094
                  srli         sp, a5, 25
                  auipc        sp, 741076
                  slli         s1, t1, 3
                  srli         a5, t1, 28
                  and          s5, a7, gp
                  xori         s0, s11, -1844
                  xori         s4, zero, -72
                  xori         s9, s8, -51
                  addi         tp, t0, -2036
                  sra          s4, t4, t6
                  or           t1, sp, s1
                  sub          s2, sp, t2
                  or           a1, s6, t3
                  sub          t6, t2, sp
                  or           t5, s1, s6
                  nop
                  auipc        t4, 660207
                  sub          t4, s9, s8
                  ori          tp, gp, -1820
                  and          s3, s10, a0
                  sltu         t5, t5, s10
                  xor          zero, gp, s3
                  xori         t4, s3, -1056
                  or           s1, s11, s3
                  ori          s4, tp, 714
                  nop
                  srli         s3, t1, 19
                  srl          a7, s0, t3
                  auipc        t3, 232266
                  sub          s3, a6, s1
                  sltu         s3, a3, s6
                  sll          a3, ra, zero
                  add          zero, s6, a5
                  xori         a2, t2, -256
                  nop
                  or           t3, t2, s11
                  andi         a7, s3, 900
                  srai         s7, tp, 5
                  xor          a5, s11, t6
                  slti         s8, s4, 1460
                  xori         s10, t1, 1162
                  srli         s5, s8, 17
                  andi         t5, s10, 1250
                  srli         zero, t1, 27
                  add          s0, zero, s2
                  srl          ra, s7, ra
                  or           tp, s7, s2
                  srli         a3, t3, 4
                  srl          s4, s1, s10
                  xor          tp, gp, t3
                  xori         zero, sp, -57
                  add          s6, a3, a0
                  sltu         s5, ra, sp
                  slli         s5, a5, 24
                  srai         s4, s9, 5
                  xor          s4, t1, a5
                  srli         zero, t1, 20
                  and          zero, a5, t1
                  sltiu        s8, a0, 1293
                  xori         a1, t3, -1159
                  sub          s3, zero, gp
                  lui          a7, 79798
                  ori          ra, t0, -1459
                  sltu         ra, a6, a2
                  andi         a5, a5, -285
                  auipc        s2, 207508
                  and          t6, t6, tp
                  xori         t3, t2, 1671
                  ori          s9, t0, -450
                  sltu         tp, s3, a6
                  auipc        s4, 561269
                  slti         t6, t0, 1468
                  slti         t1, t1, -711
                  lui          a2, 1043143
                  sltiu        zero, s11, -3
                  xor          zero, a2, s6
                  and          s7, a5, t3
                  xori         s8, t0, 739
                  andi         a1, s9, -450
                  or           a7, a5, a1
                  add          t3, a1, s2
                  auipc        s9, 917769
                  sub          s7, s4, zero
                  sltiu        s6, gp, -1154
                  addi         a7, a1, 78
                  and          s0, s2, s11
                  slti         s10, s10, 1382
                  or           s2, a4, a5
                  srli         t3, s2, 3
                  srli         s1, sp, 0
                  ori          a5, ra, 42
                  xori         ra, s5, 1551
                  srai         zero, s9, 0
                  sltiu        s4, s0, -346
                  xor          s9, s3, gp
                  srli         gp, s0, 23
                  srl          a3, s4, a1
                  or           s5, a4, ra
                  sll          t5, a3, gp
                  srai         s8, t2, 12
                  xor          s5, gp, a3
                  sll          s4, s9, a3
                  xori         s7, s8, -855
                  lui          gp, 1032911
                  andi         s11, a6, -78
                  sll          s6, s11, s11
                  slti         s7, s0, -990
                  addi         zero, a2, -1092
                  sltu         sp, t5, s3
                  srli         s0, s10, 16
                  sra          t3, a6, t3
                  nop
                  nop
                  nop
                  sltiu        s4, t6, -1309
                  auipc        t3, 471241
                  auipc        s9, 168855
                  andi         a3, s7, -688
                  auipc        s5, 709290
                  and          s9, s4, s0
                  sra          t1, s10, a0
                  sltu         a3, a5, sp
                  auipc        s8, 508357
                  srli         sp, gp, 4
                  ori          t5, a3, 119
                  ori          s10, a4, 227
                  andi         sp, a0, 1078
                  sltu         s6, ra, t4
                  srai         s8, a1, 12
                  add          a4, s10, t4
                  srli         s3, a3, 22
                  sub          t1, s8, a7
                  and          t1, t3, s8
                  add          a7, s5, ra
                  slti         tp, a5, 1325
                  xor          s10, a0, s9
                  add          gp, gp, t1
                  srli         s3, t4, 30
                  andi         a2, gp, 980
                  lui          s0, 77714
                  sra          s5, t3, s6
                  nop
                  sll          zero, a0, a7
                  and          s0, s10, a6
                  xori         s7, s4, -1836
                  slti         ra, gp, 1454
                  andi         a1, gp, -1510
                  add          a3, t2, a2
                  slt          t5, s7, s7
                  slli         s7, s2, 11
                  ori          sp, s3, 1104
                  ori          s1, t1, 2006
                  add          s10, a3, s7
                  slli         t3, s11, 11
                  andi         s7, a5, 1380
                  slli         t3, t0, 15
                  or           a4, gp, a0
                  srli         a4, t4, 29
                  slt          gp, a5, s3
                  auipc        a5, 292248
                  slt          a3, a5, s7
                  sub          t3, a0, s8
                  sll          s4, a2, a0
                  nop
                  sub          s8, t0, a7
                  sra          s2, t1, zero
                  sll          a2, a6, s2
                  ori          s5, s9, 1802
                  xor          s6, s5, t2
                  srl          s7, t6, s10
                  srli         a5, a7, 8
                  andi         a3, a3, 742
                  sra          s9, s7, s10
                  and          s1, sp, s2
                  srli         tp, s0, 14
                  sll          ra, sp, zero
                  srai         a0, s5, 14
                  addi         t1, t5, 1474
                  or           a2, s7, s7
                  xori         tp, a5, 381
                  slti         t4, s11, -202
                  sltu         a2, s9, ra
                  slli         s9, sp, 6
                  or           t5, s11, s3
                  auipc        gp, 1277
                  xor          a4, s1, sp
                  slt          t3, s10, a0
                  sub          s4, a3, s11
                  ori          t1, t5, -1367
                  srai         s8, s9, 1
                  and          s2, s3, a0
                  addi         t1, s6, 1461
                  andi         a1, t4, -1194
                  nop
                  sra          s4, t1, s1
                  xori         t6, a3, -1982
                  srl          sp, a7, t4
                  slt          s9, t1, a2
                  and          t1, a4, a0
                  srl          t4, t5, t6
                  slt          s1, sp, s10
                  slt          s2, s5, a4
                  sub          s2, zero, t3
                  slti         t5, t3, 667
                  sltu         s8, a5, s7
                  sra          a2, s6, t0
                  add          s11, t0, tp
                  slti         gp, t0, -101
                  srl          s0, s6, s11
                  or           t5, s0, tp
                  auipc        s7, 326306
                  andi         s6, t6, -513
                  andi         sp, a7, -95
                  addi         t1, s10, -220
                  auipc        s10, 624883
                  xor          s6, t5, t5
                  and          a7, t2, zero
                  ori          s7, s6, 1323
                  srl          s8, a6, a0
                  xori         s11, s2, -1914
                  add          s8, a4, ra
                  sltiu        a3, a4, 1192
                  sub          t5, zero, s1
                  xori         s11, s2, 21
                  slli         t5, gp, 27
                  ori          gp, s7, -1553
                  addi         ra, sp, -1641
                  andi         s3, a2, -872
                  srl          s10, s11, s3
                  auipc        t6, 494041
                  ori          s11, t0, -481
                  xor          a0, t6, sp
                  or           s4, t1, t3
                  sub          a1, a7, sp
                  slli         s0, t0, 11
                  sra          s10, a1, s6
                  ori          s2, sp, 1474
                  srl          s10, s1, s5
                  xor          ra, t5, s1
                  srai         a7, s8, 29
                  ori          t1, zero, 1579
                  slli         t4, a7, 6
                  xor          a7, s6, t5
                  sra          sp, t2, t0
                  and          a7, t5, a7
                  slti         t1, a3, 1432
                  sltiu        s9, s5, -601
                  slti         zero, a2, -1114
                  andi         s5, t3, 2000
                  sll          s6, s3, zero
                  sll          gp, s8, t4
                  xori         t5, s0, 1887
                  sltu         s11, s9, t0
                  andi         s7, s10, -645
                  sll          s5, sp, a5
                  and          s7, a7, s10
                  srl          s3, a5, t2
                  lui          sp, 167862
                  andi         s5, gp, -337
                  addi         s1, t3, -318
                  sub          s4, t0, t1
                  srl          a0, a0, tp
                  and          ra, zero, a5
                  srai         s4, s1, 8
                  slti         s3, t5, 28
                  srli         s7, sp, 3
                  addi         gp, t6, 46
                  nop
                  xor          s4, s10, t2
                  sub          s8, ra, s0
                  sra          a7, t5, s5
                  sltiu        s8, s7, 1309
                  sub          a5, s2, t4
                  or           t3, a7, s10
                  add          s2, gp, s9
                  nop
                  addi         t6, t0, 820
                  ori          s9, a3, -633
                  lui          tp, 535907
                  lui          s1, 835948
                  slti         a4, s4, 1622
                  slt          gp, t2, s7
                  srli         zero, s5, 22
                  sltiu        ra, t2, -210
                  srli         t4, a4, 7
                  sltu         t5, s8, s5
                  sltiu        t3, t1, -1326
                  sra          t1, a3, t2
                  sltiu        s1, t5, 854
                  ori          s3, s7, -1852
                  add          t6, t4, a2
                  sltu         a2, ra, s10
                  sltiu        ra, a0, 1615
                  sltu         a3, sp, t2
                  sltiu        s10, a3, -1142
                  sra          a3, t0, t6
                  and          ra, a5, tp
                  sltiu        t3, a7, -1553
                  srai         a3, t0, 11
                  auipc        a3, 632494
                  srli         t3, ra, 26
                  slt          t3, t3, s0
                  add          ra, a4, ra
                  sra          a5, s8, a2
                  xori         s6, s6, 1329
                  sltiu        a3, t3, -45
                  sll          a1, a3, s7
                  sra          s0, s7, a6
                  addi         s11, s11, -588
                  or           s7, gp, t1
                  ori          t5, s11, -915
                  sll          sp, s6, s6
                  sra          tp, t0, a6
                  lui          s10, 789108
                  srli         s9, t3, 10
                  slt          ra, t5, ra
                  sltu         a5, s2, t1
                  andi         s0, t3, -883
                  or           s6, t3, s9
                  sub          t6, s10, a0
                  add          a4, s8, t2
                  srai         s1, zero, 26
                  sra          s0, s0, a0
                  sra          a3, t1, a1
                  sltu         a1, s6, t0
                  and          s5, s0, sp
                  srli         s9, s7, 2
                  slt          a3, tp, s6
                  add          t5, s5, a2
                  sra          gp, t3, s10
                  sra          s10, s8, t3
                  add          s2, t4, s4
                  sltiu        gp, a5, 345
                  or           a4, s8, tp
                  addi         t4, s6, 166
                  or           a2, s7, s9
                  sll          ra, a0, t3
                  srli         t5, a2, 19
                  andi         a1, t1, 1415
                  and          s5, s0, t2
                  ori          tp, zero, 1095
                  srli         ra, s6, 28
                  addi         t3, s4, 736
                  auipc        a4, 243824
                  sltu         tp, a5, a3
                  or           a4, sp, s7
                  and          t4, a4, a1
                  addi         a4, a1, -211
                  sra          t1, s10, a5
                  and          s1, t1, a4
                  xori         s11, t2, -1732
                  nop
                  xori         a1, t0, -1160
                  and          s2, gp, t3
                  xor          a4, t1, s7
                  andi         s6, t4, -377
                  sll          s2, s11, s1
                  xori         s8, a4, 2034
                  andi         s8, s3, 438
                  andi         t1, t1, -857
                  sub          t3, zero, t3
                  sra          a3, a5, a7
                  ori          s6, a1, -959
                  or           a4, sp, zero
                  nop
                  lui          a2, 967294
                  sra          t1, a4, s11
                  srl          tp, a1, s4
                  srl          s6, t5, gp
                  srl          s3, s9, a5
                  slli         s11, a0, 7
                  srai         s9, s7, 5
                  ori          a0, a2, 1766
                  srli         s1, t1, 14
                  xori         a7, s11, 1696
                  ori          s8, s11, 221
                  slli         gp, s6, 16
                  xor          s8, t5, a3
                  ori          a2, sp, 1886
                  slt          s7, a0, s10
                  andi         a4, s4, -469
                  nop
                  srl          t3, a6, a0
                  xori         s0, s0, -1769
                  and          s10, t0, s5
                  sll          sp, a3, a1
                  or           t4, a6, t3
                  srl          sp, s10, a6
                  or           s2, t3, a0
                  slt          s2, tp, a5
                  andi         a3, t2, -261
                  slt          a5, s8, s1
                  and          t5, a6, a2
                  sll          a5, zero, t0
                  ori          s1, a2, -113
                  sra          gp, s2, s10
                  xor          s3, a0, s11
                  srl          gp, s1, a1
                  srai         s3, t3, 31
                  slti         s8, s0, 64
                  sltu         a1, ra, s2
                  slti         s0, s0, 1103
                  add          s7, s6, t2
                  sltiu        zero, ra, -626
                  xor          ra, a1, s1
                  sltu         t1, a6, a2
                  add          a2, a1, a1
                  xori         s4, a3, -591
                  nop
                  ori          a2, a3, -1131
                  xori         s10, t5, 383
                  auipc        s5, 989764
                  auipc        tp, 961084
                  add          a3, t0, t2
                  sub          s0, s8, s5
                  lui          s7, 1048112
                  sltiu        ra, s5, -527
                  sll          s4, s3, t2
                  auipc        a3, 464108
                  xori         s4, gp, -1530
                  andi         s2, sp, -712
                  sra          a3, s1, s4
                  lui          s0, 319438
                  srli         s4, t6, 11
                  srl          s2, a6, s10
                  slli         t3, s11, 26
                  sub          s11, a2, s9
                  sll          a1, ra, t2
                  sub          zero, s2, t1
                  addi         gp, t2, 1935
                  slt          s3, zero, a5
                  lui          s4, 742164
                  nop
                  slt          a3, gp, t6
                  srl          s7, zero, s2
                  sra          ra, t1, s4
                  srli         s11, a0, 12
                  and          s4, a1, zero
                  and          s10, tp, a2
                  or           s3, a3, t5
                  xori         ra, t3, -1139
                  sltiu        ra, tp, -819
                  add          s1, ra, s1
                  xori         s4, s6, 82
                  or           tp, tp, a2
                  sra          s6, a6, s2
                  slli         a3, a5, 7
                  and          s0, t2, tp
                  add          gp, s6, s5
                  sra          t1, gp, s1
                  andi         t3, t4, 2039
                  sltu         zero, s10, s7
                  xor          s11, a0, t5
                  ori          t4, a1, 1887
                  addi         t5, s8, -1464
                  srl          gp, a2, t2
                  andi         a0, tp, -1154
                  srai         t6, s11, 23
                  sltiu        a3, s10, -1358
                  xori         s4, a7, 826
                  sll          gp, t4, ra
                  sltiu        zero, tp, -341
                  xori         s6, a5, -1736
                  sub          tp, gp, zero
                  lui          a1, 565653
                  slt          s5, t1, gp
                  slt          s5, s2, t0
                  srli         tp, ra, 5
                  xor          s0, t3, zero
                  lui          s8, 239302
                  slti         s10, s9, 1777
                  add          t4, gp, s1
                  addi         t3, a6, 345
                  sltiu        s5, t1, -1123
                  nop
                  ori          sp, t2, -1116
                  xori         a5, s3, -1576
                  sltiu        s3, s10, -1218
                  sub          s1, t5, s2
                  auipc        sp, 824394
                  add          s5, a5, t0
                  add          s1, t2, a1
                  srai         sp, s2, 4
                  addi         ra, s5, -812
                  sub          s8, s11, a7
                  sltiu        s8, sp, 924
                  slli         gp, tp, 4
                  auipc        s1, 998947
                  srli         s6, t5, 21
                  sub          s9, s11, a6
                  addi         s11, gp, 2000
                  slt          t5, zero, s1
                  auipc        a7, 83286
                  srli         s11, a0, 11
                  slt          ra, t2, t2
                  xor          t5, t0, a7
                  auipc        s0, 1047557
                  or           zero, ra, s6
                  sra          s0, gp, t5
                  or           s10, a3, s6
                  sra          s2, zero, a1
                  slti         s5, t0, -1718
                  sll          t1, ra, a0
                  sltiu        a7, a2, 630
                  sll          s9, s6, a7
                  sltu         s5, s4, a4
                  slt          s1, s6, t3
                  xor          t5, s4, s10
                  slti         ra, t5, 1789
                  xori         s10, zero, -1318
                  addi         s9, s6, -661
                  or           t1, s7, t3
                  addi         s3, a0, 1437
                  srai         s1, s11, 11
                  sra          s6, t3, a0
                  srl          s1, s2, t2
                  add          gp, s5, tp
                  ori          a2, sp, 177
                  and          s8, s9, s5
                  add          s3, a3, a4
                  xori         s6, s3, -694
                  sra          s6, t2, a3
                  srli         s10, s6, 31
                  ori          s1, t1, -30
                  slt          gp, a0, s2
                  nop
                  or           s5, t3, sp
                  andi         s1, t4, 1899
                  srl          zero, a4, gp
                  sltiu        t6, a7, 618
                  srli         s0, a7, 16
                  auipc        t5, 203566
                  auipc        t3, 597803
                  xor          s1, t2, a2
                  slti         s10, a1, 2006
                  sll          s0, t3, s0
                  sra          sp, s4, ra
                  xori         t4, s4, 2003
                  auipc        s0, 170393
                  slli         s10, a1, 16
                  and          s1, a7, tp
                  and          ra, a4, s7
                  srl          t5, s2, a0
                  slli         t5, s0, 24
                  add          s6, s6, s0
                  srl          s6, t6, s1
                  or           t1, t2, sp
                  xori         s1, s6, 739
                  xor          a3, a4, s9
                  sll          sp, s0, a1
                  xor          a3, ra, s7
                  srl          t3, a3, s8
                  srli         a7, t0, 1
                  xori         a1, s9, 1353
                  and          s11, a3, s0
                  srl          s5, a6, s6
                  sll          tp, s7, sp
                  sltu         zero, s10, tp
                  ori          zero, a6, 786
                  lui          s2, 1023893
                  srli         zero, s8, 30
                  sll          s5, s3, sp
                  add          s0, s2, a6
                  sub          a7, s7, tp
                  sra          gp, ra, s4
                  xor          s2, t1, ra
                  lui          t1, 949389
                  sll          a4, s11, t3
                  sltu         s6, sp, gp
                  slt          t5, s10, s5
                  srl          s2, t3, s3
                  slt          tp, s4, ra
                  srai         s11, a7, 0
                  srai         s8, zero, 0
                  sra          s1, gp, s3
                  xor          a7, ra, s11
                  sra          sp, t5, a6
                  srai         sp, t2, 31
                  nop
                  srai         a2, s0, 16
                  lui          s2, 113288
                  sub          s7, s3, a3
                  sll          a4, s6, t2
                  sra          gp, tp, s10
                  and          zero, a3, s1
                  add          s1, a7, t6
                  srli         a2, t6, 20
                  addi         t5, s10, 222
                  sub          s7, s9, s3
                  nop
                  sll          a3, s8, s7
                  slli         s9, s3, 3
                  ori          tp, a1, -1921
                  sltu         s5, s9, s11
                  xori         s2, sp, -1485
                  addi         s8, s5, -10
                  srl          s6, s10, s2
                  ori          s8, s10, 1869
                  add          tp, s7, a5
                  xor          a0, s4, t4
                  xor          s9, tp, s2
                  sub          t3, tp, a4
                  ori          s1, s11, -1898
                  sltiu        s7, a6, 1692
                  ori          ra, s8, -1756
                  nop
                  sltiu        s8, a4, -154
                  xori         t3, a5, -627
                  slli         t4, sp, 20
                  or           ra, a0, s9
                  xori         s8, t4, -852
                  sra          s9, t5, s0
                  slli         s0, s1, 24
                  addi         s0, a7, 1230
                  slli         t4, s10, 19
                  slli         a3, s11, 22
                  slti         tp, s8, -1088
                  slli         s10, s0, 3
                  sltu         t1, t4, s1
                  slt          ra, a7, ra
                  or           s2, s11, t4
                  addi         a3, tp, -1285
                  sltiu        t5, t6, -346
                  andi         s0, gp, -608
                  slli         s3, s6, 18
                  lui          s2, 838168
                  slti         a7, a7, 561
                  slli         s11, ra, 15
                  srli         s0, ra, 15
                  or           s2, a1, a2
                  nop
                  add          a0, s5, tp
                  slti         s5, a2, 828
                  add          s7, s11, s6
                  sra          gp, zero, a3
                  nop
                  ori          a7, t0, -1541
                  srai         ra, t0, 6
                  lui          tp, 516226
                  and          s4, s4, a3
                  sub          t1, a5, s11
                  add          s0, a3, a1
                  sll          a7, ra, ra
                  and          a3, tp, a4
                  add          t1, a4, t1
                  addi         ra, s1, 1102
                  nop
                  sltiu        sp, a2, 390
                  addi         s8, s5, -1506
                  lui          t1, 511643
                  add          s11, t4, sp
                  andi         s0, a2, -1885
                  slli         s8, sp, 24
                  srai         t5, t2, 19
                  sra          t4, s10, t3
                  srl          s1, a1, s6
                  srai         tp, a7, 15
                  add          s3, s0, a7
                  and          t5, s2, s0
                  or           s7, tp, a3
                  ori          s1, t3, -1281
                  sra          s6, t1, s9
                  auipc        ra, 184954
                  and          a3, sp, s4
                  slti         t6, a7, -397
                  sll          tp, t6, t6
                  xori         gp, s2, 1877
                  nop
                  sub          s10, t6, s4
                  sra          t3, s3, a1
                  andi         s8, s1, -1095
                  slt          a0, a7, t5
                  sltu         tp, a0, a3
                  slli         a0, s9, 5
                  andi         s2, s2, 1028
                  auipc        a1, 1029035
                  slt          a4, tp, t6
                  xor          s7, t4, a5
                  addi         s5, a2, -640
                  sltu         s1, t1, s10
                  or           ra, t6, a6
                  auipc        s10, 480908
                  slti         a3, zero, -1521
                  andi         t5, s9, -466
                  xor          s0, t6, t0
                  add          a5, t4, s11
                  xori         t3, a1, 1686
                  sll          sp, a7, s4
                  sll          zero, s5, tp
                  sll          s4, t2, s6
                  sra          ra, t2, tp
                  or           s6, s10, s1
                  auipc        t5, 611336
                  slli         a5, t2, 7
                  sltu         t3, s8, ra
                  srl          gp, a1, s8
                  lui          zero, 498288
                  sltiu        tp, a3, 893
                  ori          t3, s5, 956
                  ori          s7, s9, -985
                  srai         s10, a5, 0
                  xori         s2, s2, -277
                  sltu         ra, gp, t1
                  and          a5, gp, a4
                  lui          s11, 660913
                  sltiu        gp, s0, 1921
                  xor          s3, a2, t3
                  slli         a7, t2, 10
                  xor          tp, a5, t5
                  auipc        s2, 357998
                  andi         s6, t4, -1256
                  auipc        a7, 236221
                  sll          s1, tp, a6
                  sll          t5, gp, ra
                  sub          s3, t3, s11
                  sltu         t4, s7, s8
                  sub          s5, a6, a2
                  auipc        ra, 332682
                  srai         a1, s7, 28
                  addi         s10, s9, -780
                  srli         ra, zero, 6
                  slt          a7, zero, s3
                  slli         t1, s0, 6
                  ori          a7, s3, -907
                  xori         s8, s4, 355
                  xori         a4, a4, 1050
                  srli         a5, a5, 27
                  sltiu        a5, t4, 113
                  xor          tp, ra, t0
                  sltiu        s7, sp, -561
                  sra          s8, s2, sp
                  and          ra, a2, s1
                  nop
                  slt          t3, t5, zero
                  lui          s1, 797520
                  xor          t3, s10, s8
                  sltiu        s4, s0, 1916
                  slti         t4, a1, 1944
                  sltu         s1, a2, s10
                  xori         a7, gp, -114
                  andi         gp, gp, 458
                  slli         ra, t4, 3
                  slt          t5, s8, a6
                  slt          s5, a4, t1
                  sltu         a3, a7, a4
                  and          s4, t5, s3
                  srai         s2, s2, 26
                  slti         s5, s9, 912
                  auipc        s2, 708431
                  sltu         t1, t0, s8
                  sll          s1, a1, t6
                  sltu         s9, s10, t4
                  sra          tp, gp, a3
                  nop
                  srl          zero, a2, tp
                  or           a7, s2, s0
                  add          gp, gp, a7
                  lui          a7, 73645
                  nop
                  sltiu        s4, s11, 1363
                  or           s11, s10, s0
                  add          s7, t2, s8
                  and          gp, s7, a6
                  slli         a3, a6, 31
                  srai         zero, s9, 3
                  auipc        a5, 19325
                  nop
                  sra          t5, a5, sp
                  ori          sp, a2, -487
                  sll          a5, a0, a4
                  addi         a3, t3, 488
                  auipc        sp, 155705
                  andi         sp, s1, -587
                  sll          a1, t3, tp
                  sll          s4, t4, a7
                  sub          sp, s4, t0
                  xori         s7, sp, 170
                  sll          a1, s4, s1
                  auipc        s1, 775793
                  xori         a2, a3, -410
                  xori         sp, s2, -1497
                  slti         t1, a1, 580
                  xor          a5, t6, t3
                  xori         t1, s3, 1644
                  andi         s8, ra, 1385
                  sll          sp, a0, t4
                  srli         a1, t4, 2
                  sltu         s11, s3, s11
                  sltiu        s0, s10, 1582
                  sra          tp, s11, t0
                  or           s7, a6, s7
                  sll          t3, gp, a4
                  slli         gp, zero, 18
                  or           zero, s11, a3
                  add          a4, tp, t1
                  add          t3, s7, t6
                  xori         s5, s10, -651
                  sll          gp, t0, zero
                  add          ra, s4, tp
                  addi         a1, a5, -1826
                  slli         s0, t3, 16
                  xor          a2, t3, s8
                  slli         t6, s7, 5
                  lui          t6, 67408
                  srl          t6, s10, a7
                  sltu         s1, a2, s3
                  andi         s8, s1, 1535
                  xori         zero, s7, -877
                  addi         t1, t6, -1081
                  auipc        a4, 485561
                  lui          s2, 380923
                  xori         t3, a3, 1674
                  or           ra, s8, t1
                  ori          a5, t5, -2043
                  sltiu        zero, gp, 303
                  sltu         s8, s1, a2
                  and          t3, a7, s1
                  xor          a1, sp, s3
                  srli         a5, s3, 3
                  sltiu        s0, t0, 932
                  ori          zero, t0, 1962
                  srl          a1, gp, s4
                  andi         t6, a1, 908
                  nop
                  sra          a7, a2, s6
                  srli         t3, s2, 24
                  sltiu        ra, s8, 166
                  sra          a0, a5, s5
                  sltiu        gp, t3, -756
                  slt          s2, s0, s3
                  and          zero, s3, s3
                  sub          s1, s9, tp
                  sll          a7, tp, zero
                  xor          ra, ra, t3
                  srl          s6, s8, s4
                  slli         gp, t4, 10
                  xor          a5, t0, t2
                  auipc        s7, 383662
                  sra          tp, gp, s5
                  xor          s3, sp, t6
                  slt          s1, s0, a0
                  srl          t4, tp, t0
                  slti         s5, a2, 1654
                  add          s1, a2, t3
                  or           s10, s6, t2
                  sll          a0, a6, s11
                  ori          s7, a3, -483
                  sub          s4, t3, s0
                  or           a2, s3, a0
                  add          s1, s0, gp
                  xor          s1, s6, a5
                  xori         s1, zero, 1220
                  sll          a7, sp, s1
                  or           s3, t1, sp
                  sub          t1, t3, s0
                  andi         a0, s5, 944
                  srl          a2, s6, s9
                  xori         s1, zero, 1697
                  ori          s0, t5, -308
                  sltiu        s11, s3, -2024
                  auipc        s2, 902823
                  add          t4, s4, s6
                  lui          s9, 609796
                  sll          s1, s9, a3
                  nop
                  sltiu        gp, a4, 632
                  sra          t3, t5, a0
                  xor          a1, s5, t6
                  lui          t3, 197804
                  sltiu        t5, s9, -1974
                  sll          s2, zero, t4
                  sra          s6, s10, a2
                  or           s5, s4, ra
                  xor          s8, t2, a3
                  nop
                  or           a5, s1, s11
                  or           ra, sp, a0
                  andi         a5, s4, -1747
                  or           s4, sp, s3
                  xor          s2, sp, s7
                  srli         s0, t0, 27
                  slli         t1, s5, 21
                  slti         s11, s10, -1937
                  and          a0, t5, s0
                  and          t4, tp, a5
                  srli         a4, a1, 16
                  sltiu        s9, a0, -82
                  slli         s7, s0, 0
                  xor          s0, s10, s7
                  add          a2, t1, sp
                  and          t3, a5, s10
                  or           s6, a3, s8
                  sub          a1, tp, s11
                  ori          a0, t4, 1054
                  xori         s6, t4, 460
                  nop
                  lui          t3, 170073
                  xori         a4, a0, -890
                  sltiu        s7, ra, -819
                  srai         a3, s8, 29
                  sltu         tp, a5, t4
                  srli         a7, a1, 10
                  slli         a7, a1, 8
                  addi         a3, a7, -1477
                  auipc        s2, 392152
                  slti         a7, t3, -1286
                  xori         s5, t4, -1585
                  auipc        s0, 3765
                  srl          s9, t4, s9
                  nop
                  srl          s2, s7, s11
                  andi         gp, a0, 217
                  slt          a4, t2, t1
                  and          s2, t1, s1
                  auipc        s0, 940652
                  sltiu        a1, a7, 214
                  ori          a4, t3, -1386
                  srl          s1, a3, a0
                  slt          t6, t3, s8
                  slli         s6, s9, 23
                  nop
                  sltiu        t6, s4, -981
                  srai         ra, t6, 18
                  addi         s9, gp, -1260
                  srl          s7, t3, s10
                  slti         gp, s2, 1591
                  srli         zero, t0, 24
                  sltu         s0, s10, s2
                  sll          t5, s4, zero
                  add          ra, a2, t2
                  and          s5, t6, s9
                  xor          s5, ra, t3
                  add          a2, a1, a2
                  sltu         s8, zero, t0
                  sltiu        sp, a2, -1250
                  srl          a1, zero, a5
                  auipc        s2, 416014
                  add          a4, t3, s6
                  and          zero, s4, tp
                  srli         a7, t2, 10
                  slt          s2, a1, t3
                  sra          s3, s9, ra
                  ori          sp, s3, -2012
                  ori          a2, t1, -694
                  slli         s4, s7, 17
                  add          t3, a7, s2
                  auipc        gp, 399239
                  and          s2, t0, t1
                  xori         t6, s4, -286
                  sltiu        s4, t4, 1586
                  sll          a5, s8, a7
                  slt          s10, s2, t5
                  andi         t4, t0, -1978
                  sltu         s8, ra, s2
                  sll          t3, s9, zero
                  sub          a4, a1, a2
                  andi         a3, t1, -1524
                  sub          s2, a3, t5
                  sra          t5, t5, t0
                  sra          tp, t5, t5
                  lui          s6, 696905
                  xor          sp, ra, s7
                  slt          s6, a3, tp
                  add          sp, a4, s4
                  lui          ra, 54450
                  add          gp, t5, s0
                  srl          t3, tp, zero
                  nop
                  sub          s3, a1, gp
                  add          t1, s2, a3
                  slti         t4, t6, 1791
                  slti         s11, a0, 128
                  slt          t6, t5, t2
                  slti         s3, a0, 1878
                  ori          zero, s3, 1156
                  lui          sp, 664672
                  ori          s5, t2, 140
                  srai         a4, tp, 1
                  srai         t4, a5, 3
                  srai         gp, s2, 4
                  auipc        t3, 282545
                  ori          s9, tp, -562
                  xori         a3, zero, 1330
                  and          a4, s10, t0
                  slt          t1, s1, a1
                  slt          a5, a2, s4
                  slt          a2, a6, t3
                  and          sp, a3, t4
                  lui          s3, 839532
                  lui          a3, 192280
                  sub          a2, tp, t5
                  sub          s11, sp, s2
                  sub          s9, s4, t2
                  srli         a2, a1, 26
                  add          t3, s10, s11
                  sltu         a2, s2, s3
                  slti         s9, a4, -1787
                  slli         t1, s0, 16
                  sltu         s1, zero, t5
                  sra          s7, s1, t1
                  add          s8, s5, s7
                  xor          s1, s9, gp
                  slti         tp, s5, -130
                  and          t3, gp, s11
                  ori          sp, s1, 1208
                  sra          t4, a2, t3
                  slti         s7, a3, -345
                  and          s4, s5, s3
                  sub          s11, s9, a4
                  xori         gp, zero, -964
                  sll          s5, a6, s4
                  slli         gp, zero, 3
                  add          sp, a6, t1
                  xori         t3, s5, -589
                  sub          s1, s5, s1
                  xori         s3, gp, 218
                  add          a1, a5, t1
                  slti         a5, t6, 652
                  addi         t5, s10, -1925
                  lui          a3, 269568
                  sltiu        ra, s5, -226
                  sra          t4, gp, a2
                  slli         tp, s11, 17
                  srai         t3, t3, 20
                  slli         s10, t0, 18
                  or           t6, t3, a6
                  xori         sp, gp, 1564
                  nop
                  sra          s5, a7, t0
                  srai         a4, s1, 6
                  add          s0, s1, t3
                  slt          s0, s11, t3
                  slt          sp, s10, a2
                  sll          ra, t2, t1
                  or           s9, a7, a0
                  sll          s11, s11, a7
                  ori          t3, s6, 1080
                  slti         s5, a3, -1417
                  or           a7, s1, s9
                  add          s5, a6, gp
                  slt          t3, s8, a7
                  slt          s4, t1, a4
                  slli         s1, a0, 19
                  lui          tp, 166349
                  sll          a1, a0, sp
                  andi         t1, zero, -1234
                  ori          a2, s3, -1167
                  srai         ra, s9, 30
                  sll          s10, t1, t1
                  slti         a4, s10, 45
                  sltiu        tp, s8, 408
                  slt          s5, s3, sp
                  sub          s7, tp, t0
                  sub          s10, gp, s4
                  sll          s6, t0, t0
                  srai         gp, a7, 21
                  and          t4, t2, s9
                  addi         s6, a3, 772
                  slti         s1, s1, 1203
                  sltu         sp, t2, ra
                  sub          s7, sp, a4
                  or           t5, sp, t2
                  auipc        t6, 319188
                  srli         s5, s5, 14
                  slti         t5, a4, 1272
                  xori         a5, t6, -529
                  srai         a1, a4, 2
                  srl          t6, a2, t4
                  sltiu        s6, t4, -1764
                  srl          a4, a5, a0
                  and          s11, t2, s5
                  srai         s8, s0, 6
                  slti         s0, t5, 227
                  slt          tp, s6, a1
                  nop
                  auipc        s6, 755998
                  xori         a1, a5, 1920
                  xori         a7, s9, -1682
                  lui          tp, 1025865
                  srli         s0, sp, 24
                  sll          s4, s10, a3
                  sltu         a2, a7, s5
                  ori          s10, t6, -1020
                  and          a1, s7, t5
                  sub          ra, a5, s7
                  sub          s2, sp, s11
                  sltiu        a4, sp, 806
                  nop
                  srl          a1, s7, s2
                  srai         s6, a2, 13
                  slti         s4, s8, 1236
                  xor          s7, t3, sp
                  sra          tp, s5, a6
                  andi         t3, sp, 592
                  sltiu        s10, a7, -910
                  srli         s6, gp, 0
                  slli         a3, a3, 3
                  and          s3, s2, tp
                  sll          t5, s2, s9
                  auipc        ra, 606359
                  xor          a7, a3, s10
                  srli         s3, a0, 23
                  sra          t4, sp, gp
                  slti         a3, a5, -308
                  xor          a4, s8, s0
                  andi         s5, a2, -1955
                  xor          a0, t0, ra
                  srai         t5, zero, 15
                  xori         s9, s1, -696
                  or           a3, zero, s6
                  srai         a5, a1, 1
                  slli         a3, s10, 7
                  andi         s8, s3, 464
                  addi         s3, s4, -1706
                  add          s8, ra, tp
                  sll          t3, t6, a5
                  add          s8, a0, s8
                  slti         s2, tp, 688
                  addi         s11, s1, -807
                  srli         ra, a4, 4
                  srl          a2, t4, s2
                  xori         ra, gp, -1813
                  addi         a4, a2, 1093
                  and          s11, a5, a4
                  srai         s5, s1, 4
                  sub          s11, s1, s6
                  andi         s5, t6, 829
                  srai         t3, s0, 25
                  lui          a3, 513561
                  xor          a2, s11, t5
                  slti         a0, a6, -856
                  srli         s0, t6, 13
                  xori         s5, s9, 740
                  sub          a7, t3, s4
                  add          s6, s11, a0
                  sll          a3, gp, s7
                  add          s8, t3, s8
                  or           t5, s11, t1
                  ori          ra, a6, 1772
                  lui          a3, 516837
                  slti         sp, a4, 1634
                  lui          t5, 254060
                  srli         zero, s10, 18
                  sra          t6, t6, t6
                  xor          s1, zero, a1
                  srli         t5, t5, 3
                  and          s7, s4, t1
                  auipc        a4, 698522
                  addi         s10, s9, 715
                  add          s9, a1, s6
                  nop
                  nop
                  lui          tp, 476309
                  sltiu        s2, s3, 1317
                  add          sp, t3, t3
                  slt          s7, s10, s4
                  addi         a2, a7, 219
                  auipc        t1, 435992
                  xor          s0, s2, t0
                  sra          s11, s6, a6
                  andi         s7, zero, 1655
                  slli         a7, t0, 21
                  andi         a4, t1, -706
                  srai         s8, s3, 3
                  addi         t3, s0, 1991
                  xor          s1, a3, a5
                  nop
                  sltu         t5, t4, sp
                  ori          a7, s2, -1191
                  lui          zero, 182860
                  xori         t5, s6, 972
                  srli         t1, t3, 25
                  sltiu        ra, t2, 352
                  srai         a1, tp, 2
                  xor          t1, s10, s8
                  sll          s2, t6, t5
                  ori          s6, s5, -1674
                  srai         t3, a1, 21
                  slti         s3, s10, -975
                  or           a4, a5, a3
                  xori         gp, s6, -58
                  sub          s8, a7, t2
                  sra          a0, a6, a2
                  sra          s3, t1, a6
                  nop
                  xor          gp, a3, t5
                  sll          s5, a0, s0
                  add          t6, a0, a0
                  srl          t1, t1, a0
                  auipc        ra, 530575
                  addi         gp, sp, 1778
                  sub          s7, s1, s6
                  sll          s5, s1, t2
                  ori          a0, s5, -671
                  slt          a5, t0, a2
                  srai         a1, a1, 16
                  sra          s4, t1, s10
                  sll          gp, s4, a0
                  xori         s0, a6, 1195
                  addi         gp, t2, -30
                  sra          t1, t5, s7
                  slt          a4, a1, a4
                  srai         a2, s10, 24
                  lui          a0, 984225
                  slt          t4, t4, s7
                  and          t6, t2, zero
                  sltiu        s2, t6, 1801
                  or           ra, s7, s5
                  andi         s2, a6, 764
                  nop
                  nop
                  slt          a3, s9, s8
                  sub          a4, s10, s8
                  srl          a1, gp, s9
                  auipc        s4, 747648
                  sltiu        s8, s4, 61
                  sub          s8, s10, tp
                  slli         s3, t1, 24
                  sltiu        ra, s1, 1279
                  srai         s1, s8, 3
                  nop
                  srai         gp, s9, 9
                  ori          a5, s5, -1352
                  nop
                  or           s4, s9, t4
                  srl          s2, ra, a4
                  nop
                  sltu         sp, t3, t3
                  ori          s8, a3, 424
                  xor          s5, t2, s11
                  ori          a2, a1, -681
                  srli         s9, a5, 17
                  sltu         s10, t5, t0
                  or           tp, a1, s1
                  slti         t6, s5, -315
                  add          t6, t5, s10
                  srai         tp, ra, 3
                  andi         t5, a0, -2003
                  slt          s2, a2, s4
                  slli         a5, t2, 22
                  srli         a2, sp, 25
                  auipc        s4, 562153
                  srl          t5, a7, t3
                  xori         s1, s0, -390
                  sltu         s4, gp, s11
                  lui          a2, 936199
                  xori         gp, s0, -1510
                  add          sp, s3, a5
                  sra          s4, sp, s3
                  nop
                  srli         t1, sp, 7
                  sub          ra, a2, s2
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t1, 0xffffffff
                  li           a1, 0x38ccc946
                  li           s10, 0xf08b5076
                  li           tp, 0x80000000
                  li           a5, 0x0
                  li           a0, 0xffffffff
                  li           s4, 0x0
                  li           s11, 0xffffffff
                  li           s7, 0xffffffff
                  addi         a0, s11, -1338
                  lui          s4, 843908
                  nop
                  sub          s10, s4, a5
                  addi         s7, a4, 330
                  nop
                  auipc        a0, 753549
                  lui          a0, 946753
                  auipc        s11, 1038596
                  lui          tp, 264282
                  nop
                  add          s4, s7, tp
                  auipc        s4, 361385
                  auipc        s11, 608721
                  sub          a1, a1, a0
                  auipc        tp, 522698
                  add          tp, s4, a5 #end riscv_int_numeric_corner_stream_9
                  slli         ra, a4, 6
                  srl          a7, zero, t2
                  ori          t3, a1, 747
                  srai         s4, s7, 30
                  xori         t1, t6, -1922
                  xori         t5, s1, 280
                  srai         s7, t4, 2
                  andi         ra, t2, -1479
                  sra          a5, s5, gp
                  sll          tp, a2, a1
                  ori          tp, s5, -1050
                  sltiu        s2, a6, 97
                  sltu         gp, s11, sp
                  sra          s2, t3, a6
                  ori          t4, t0, -2
                  add          tp, t4, s7
                  lui          s2, 877253
                  slti         a4, s6, -1932
                  ori          zero, a0, 1890
                  slti         a4, t2, 1572
                  lui          s6, 245184
                  nop
                  srl          s4, s5, a0
                  addi         gp, a3, -1928
                  srl          s10, s7, t5
                  xori         s2, a5, -1264
                  xori         s5, s4, 433
                  srl          s6, s11, s3
                  andi         s11, s1, -1517
                  sll          s0, s10, a4
                  add          s9, sp, tp
                  xor          s1, ra, s9
                  lui          s10, 198882
                  and          s6, t0, s1
                  sll          s10, t0, s7
                  andi         a3, s2, 1279
                  and          s8, t1, s1
                  add          sp, s10, s6
                  slt          gp, t3, a4
                  sra          t6, ra, ra
                  sll          t1, gp, tp
                  and          zero, ra, sp
                  sub          s6, t4, t4
                  sll          s11, zero, a6
                  sltu         t1, t3, s0
                  nop
                  add          a0, gp, sp
                  srli         a7, a2, 10
                  sll          s4, t3, s8
                  sll          t4, s1, s0
                  slli         t3, t3, 0
                  slti         a7, t1, 313
                  xor          zero, t4, t1
                  srai         zero, s5, 30
                  sra          a0, ra, gp
                  auipc        s9, 871730
                  xori         zero, t2, 998
                  slli         s2, a4, 26
                  slt          sp, a2, t5
                  slt          s3, t3, t3
                  and          zero, sp, s6
                  nop
                  xor          a7, t2, a4
                  add          a2, s11, t5
                  xori         a3, s5, -1356
                  and          s2, t1, a1
                  lui          ra, 787154
                  ori          s2, a7, 378
                  nop
                  xori         s3, s4, 1692
                  sltiu        a5, s6, 170
                  sltiu        tp, s7, 1720
                  andi         s2, s6, -78
                  slli         s0, a3, 3
                  slt          tp, a7, a0
                  nop
                  srl          a4, a5, s10
                  srai         gp, t2, 24
                  sub          a7, a1, s0
                  ori          sp, a3, 1251
                  srai         s9, s9, 0
                  srli         s7, s5, 30
                  or           a7, t2, a3
                  ori          s3, a5, -686
                  and          s3, t4, s7
                  slli         t4, s11, 7
                  sltu         a5, a3, a6
                  addi         a2, zero, 704
                  slti         a1, a1, -1950
                  slli         t5, t0, 27
                  srai         t4, zero, 26
                  or           ra, t0, s8
                  nop
                  andi         s5, s11, 351
                  slli         a5, s4, 27
                  slli         sp, s5, 26
                  sltu         zero, t5, s8
                  slti         a7, s0, 1289
                  andi         gp, ra, 943
                  sll          a3, t5, a5
                  slli         t6, t4, 14
                  ori          a3, sp, -1662
                  ori          s8, s3, -763
                  sltiu        tp, s6, 1464
                  addi         t4, a4, -848
                  sub          s7, a2, tp
                  xor          s8, s0, a3
                  sltu         s1, zero, s0
                  sub          sp, s3, a6
                  slli         s7, s7, 21
                  slli         a3, s3, 14
                  slti         gp, gp, -927
                  sub          s1, s11, s3
                  slt          s4, a6, s0
                  sltiu        s11, t3, 888
                  xori         a3, a7, 1689
                  slli         s9, a6, 6
                  srl          gp, a0, s8
                  nop
                  xori         s8, s5, 239
                  sltu         sp, a7, s4
                  slli         a1, s9, 19
                  ori          s9, a0, 1468
                  slli         a0, t1, 7
                  sll          t3, zero, a2
                  srli         s4, tp, 9
                  sub          a2, gp, s8
                  addi         t3, s2, -2
                  sub          a4, t3, s11
                  auipc        s10, 514620
                  srai         s10, gp, 20
                  add          tp, s11, s5
                  xori         a2, a7, 1106
                  lui          s0, 970044
                  add          t6, s6, s2
                  andi         s6, a5, -1549
                  lui          t1, 387639
                  srai         s5, a3, 30
                  sub          ra, zero, a2
                  sltiu        a3, s0, -1541
                  sll          a1, a5, t0
                  or           tp, t6, s2
                  andi         s5, tp, 1077
                  auipc        s9, 875669
                  sra          s4, s0, t5
                  and          s11, s7, s10
                  and          s9, t6, t6
                  sltu         s8, a2, s0
                  slt          ra, a1, s10
                  ori          s1, zero, 302
                  and          a5, a0, a6
                  sll          t5, gp, a3
                  addi         zero, a4, -919
                  slti         t3, s3, -1766
                  or           s4, s7, sp
                  ori          t5, a7, -205
                  nop
                  xor          a4, s3, t6
                  add          s8, s5, s10
                  srai         s5, s9, 14
                  and          t4, s2, a4
                  nop
                  srai         s8, t2, 25
                  auipc        s8, 150722
                  sub          t4, s2, t1
                  sra          a7, a0, s10
                  sra          a1, s7, t4
                  xor          s5, s4, s9
                  xori         ra, s4, 806
                  sltu         ra, s10, a6
                  or           ra, s1, t4
                  sltu         a0, t0, s2
                  srai         t6, s7, 9
                  lui          ra, 970191
                  srli         t3, t3, 0
                  sll          tp, s3, sp
                  addi         s2, a7, 1863
                  lui          gp, 908086
                  lui          s3, 573158
                  slt          s1, s6, s4
                  sll          s7, s0, s11
                  srl          s10, a4, s3
                  lui          a7, 74276
                  addi         s9, a2, 831
                  ori          t6, s7, 876
                  sub          t3, s9, a7
                  or           s10, s3, a1
                  ori          a7, a2, 994
                  sll          t6, a6, a0
                  srai         t6, s1, 4
                  add          s9, s11, gp
                  lui          zero, 996050
                  auipc        s8, 798705
                  srai         zero, s11, 25
                  sub          t6, a3, a0
                  xor          s6, s7, sp
                  sll          a4, s1, sp
                  sra          s1, a6, a3
                  xor          a5, t3, t0
                  andi         ra, s3, -76
                  xor          t6, s5, t4
                  sub          s7, gp, s8
                  sltu         a0, s1, s6
                  addi         a1, a0, 1711
                  and          s11, t1, a4
                  srai         a3, t3, 8
                  srli         s6, a2, 0
                  slli         zero, t5, 9
                  add          a7, t1, s2
                  sltu         s7, ra, s11
                  or           a5, s7, s10
                  add          a5, s7, sp
                  addi         s6, a3, -975
                  slti         s11, s8, -1009
                  lui          s1, 863499
                  and          zero, gp, sp
                  andi         a7, s5, -832
                  srai         s7, s8, 1
                  slti         a0, s10, -644
                  ori          s8, s6, -1131
                  sltiu        t3, a1, -1170
                  srl          s10, s7, t5
                  sll          ra, tp, t6
                  and          a3, zero, zero
                  nop
                  and          a2, t0, ra
                  addi         ra, s2, 78
                  sll          gp, s4, s2
                  slli         s7, s7, 21
                  slti         t3, a4, 1353
                  srai         a7, t5, 5
                  srl          a5, t4, a3
                  ori          s5, t0, -1887
                  sra          t6, s4, s9
                  andi         s9, t2, -133
                  sub          ra, a6, s8
                  sra          ra, t1, s11
                  sll          s3, a0, s7
                  xor          t1, s11, t0
                  lui          s2, 338008
                  slt          s5, sp, a3
                  srai         s1, t1, 9
                  or           gp, a6, sp
                  addi         t6, s5, 1983
                  srl          t5, a1, tp
                  addi         s7, zero, 426
                  ori          a4, a0, 1179
                  and          zero, tp, s4
                  andi         a1, a2, -766
                  lui          t4, 54966
                  srai         t4, s10, 4
                  addi         sp, s9, -212
                  auipc        s0, 891626
                  add          s7, a4, s3
                  sub          s2, t0, a4
                  sltiu        a5, gp, 759
                  auipc        gp, 1039957
                  slt          t1, t3, a3
                  sub          a3, t0, s11
                  lui          tp, 580388
                  sub          s9, s9, t3
                  xor          s11, s9, t3
                  add          ra, s0, a6
                  srl          s6, s3, a0
                  lui          s11, 638010
                  srli         a1, a7, 0
                  slli         a5, s2, 0
                  srai         sp, t3, 7
                  slt          s6, t2, s10
                  sltiu        s5, s11, -58
                  srl          s4, a4, a3
                  and          s7, s11, t2
                  srli         s0, t4, 22
                  xori         s10, s0, 603
                  sub          s9, t6, t6
                  addi         s7, t4, 926
                  addi         gp, ra, 1999
                  and          a3, ra, t5
                  and          gp, a1, t5
                  srai         a0, t1, 6
                  srai         s2, a1, 15
                  ori          t3, ra, -623
                  ori          a0, s3, 31
                  sra          s11, ra, s0
                  nop
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s2, 0x80000000
                  li           s7, 0x0
                  li           s3, 0x0
                  li           a2, 0xffffffff
                  li           a4, 0x8709f443
                  li           s6, 0x86e2cc97
                  li           gp, 0x0
                  li           t5, 0x80000000
                  li           t6, 0x80000000
                  add          a2, a2, a0
                  addi         a0, a2, 1592
                  nop
                  lui          t6, 543111
                  auipc        a0, 739144
                  nop
                  sub          s6, a4, gp
                  nop
                  addi         s7, s7, 2003
                  addi         s2, gp, 1798
                  auipc        gp, 619091
                  nop
                  auipc        a4, 670742
                  sub          s2, s6, a4
                  nop
                  sub          s2, s6, s6
                  auipc        t6, 586098
                  addi         a2, a0, 1294
                  auipc        a2, 866962 #end riscv_int_numeric_corner_stream_4
                  xor          a4, zero, t6
                  sub          a3, zero, s1
                  xori         gp, t1, -2021
                  and          tp, gp, gp
                  nop
                  slt          sp, s8, t2
                  sub          t5, a2, s2
                  srli         s2, t6, 18
                  add          sp, sp, a6
                  auipc        a2, 143077
                  ori          a7, s5, -1283
                  sra          sp, t4, t4
                  slli         a3, a4, 7
                  addi         s6, a3, -878
                  sub          s5, a5, a5
                  sltu         gp, a4, a1
                  srl          s3, s3, s3
                  sltiu        a3, a2, -545
                  sll          a3, a4, s6
                  slt          s2, a3, t1
                  srli         t5, s0, 23
                  add          s8, sp, s6
                  srai         gp, t2, 6
                  and          s11, s11, s4
                  slti         ra, s6, 1963
                  sll          s11, t4, t3
                  sub          gp, s7, a2
                  sltiu        t5, t0, -1100
                  srai         s2, s7, 1
                  lui          ra, 889637
                  and          a5, a6, t6
                  srli         t3, tp, 16
                  nop
                  sra          t4, t1, s6
                  sub          a5, a4, s10
                  sub          zero, ra, a0
                  addi         a7, s6, 1698
                  sll          ra, t2, s2
                  slt          t3, t4, s2
                  addi         t4, sp, 997
                  ori          a0, a6, -1104
                  srai         t3, a1, 18
                  sub          s1, a1, a7
                  srai         gp, t1, 26
                  addi         s6, tp, -1140
                  slti         t1, t1, -172
                  slli         s4, sp, 19
                  slli         gp, a4, 14
                  xori         t3, sp, -711
                  addi         s0, t0, -881
                  sub          t6, t5, s11
                  auipc        a5, 231543
                  srli         gp, t0, 10
                  ori          a7, gp, 1899
                  slt          t6, s6, sp
                  sll          s7, s0, s0
                  add          s8, t3, s6
                  xori         tp, a7, -756
                  or           sp, s11, s2
                  srli         a3, a5, 15
                  sltiu        s3, a6, -442
                  slli         zero, gp, 13
                  slt          s2, s0, a7
                  srai         t1, t6, 24
                  or           s6, s3, tp
                  lui          s9, 376214
                  or           s9, t0, a1
                  sltu         ra, t5, tp
                  srai         a2, a5, 28
                  srli         tp, s5, 28
                  and          s10, a4, t0
                  slli         a5, s5, 14
                  sltiu        s5, t6, -76
                  or           s1, s1, sp
                  sltu         t1, gp, a2
                  sltiu        s1, s1, 145
                  or           s3, s1, t0
                  nop
                  andi         a1, s0, 1879
                  srl          t4, a7, sp
                  and          s6, s7, a0
                  auipc        a3, 889063
                  xori         s9, s8, 1363
                  slt          s1, s3, t0
                  andi         s4, s6, 1315
                  addi         s11, s5, -1206
                  sll          t1, s2, gp
                  addi         a5, t3, -679
                  auipc        s5, 185336
                  xori         s4, a6, 326
                  sltiu        s11, gp, -647
                  slli         s5, t0, 7
                  auipc        a2, 178962
                  ori          tp, t0, 490
                  sltu         ra, s1, s10
                  addi         s7, t3, 783
                  xor          tp, s4, s0
                  srai         a7, a1, 17
                  lui          zero, 442892
                  sub          t6, s5, s5
                  slt          tp, s8, a0
                  srli         t1, t2, 7
                  sltu         ra, sp, t4
                  ori          s1, s8, 202
                  or           s4, t4, a4
                  sltiu        sp, t1, -1219
                  addi         s8, s9, 1235
                  slt          s6, t1, sp
                  slti         t4, s11, -692
                  addi         tp, a4, -1316
                  ori          s6, t5, -243
                  lui          t5, 925257
                  auipc        s5, 487143
                  andi         s1, s1, 654
                  xor          a3, s11, s3
                  sll          t4, s3, t2
                  and          t5, t3, ra
                  nop
                  sltiu        ra, s2, -1108
                  add          a5, ra, a4
                  add          a5, s3, s5
                  add          t4, zero, sp
                  sltu         s4, zero, s5
                  nop
                  sll          s7, a3, t4
                  or           a0, s3, s7
                  ori          sp, t0, 976
                  srai         tp, s6, 29
                  auipc        t3, 48283
                  add          t4, s9, t4
                  add          s4, s2, t0
                  sll          t4, a5, t5
                  slti         s10, s8, 1433
                  sltiu        s4, t0, -218
                  addi         a3, s2, 582
                  slti         tp, a1, -264
                  and          gp, t2, s10
                  sltiu        t1, s3, -1382
                  srli         s10, s0, 4
                  and          s6, ra, a5
                  xor          s4, t1, t4
                  sub          s6, s10, s2
                  nop
                  xori         s10, gp, -1726
                  slli         a3, s1, 9
                  addi         t1, s10, -90
                  slt          a4, a3, s2
                  srl          a7, s1, a5
                  srli         s0, s11, 22
                  sra          t1, t5, a0
                  sll          s1, s4, sp
                  sra          s2, s1, t3
                  add          s0, s5, s5
                  srli         a5, ra, 10
                  srl          s11, a6, t5
                  sub          a0, a0, a4
                  sll          sp, s2, s8
                  sll          s8, tp, a4
                  sltiu        t4, sp, -415
                  srli         t4, s11, 26
                  sltu         a2, a6, a3
                  srai         s10, s2, 25
                  srl          sp, a1, s1
                  slti         a1, t3, -1924
                  andi         s11, s0, 1470
                  andi         zero, s10, 1876
                  ori          a1, s10, -532
                  sub          a7, t4, t3
                  xori         s2, a0, -1076
                  or           zero, gp, s1
                  nop
                  addi         gp, a7, 199
                  nop
                  nop
                  auipc        s9, 769404
                  slti         s3, t1, -865
                  sll          s8, s0, t0
                  and          s11, tp, ra
                  and          t6, s6, zero
                  sll          sp, t5, s7
                  slti         s7, s5, -492
                  sra          a2, s3, s0
                  slti         a3, a4, 415
                  sltiu        tp, a3, 514
                  srl          s5, s5, s4
                  slli         a4, s11, 31
                  sltiu        s1, a2, 1425
                  srl          a4, t1, t6
                  nop
                  lui          s7, 252214
                  sll          s2, a3, a4
                  andi         s0, a4, 1752
                  sub          a4, s10, t2
                  auipc        t4, 371535
                  lui          s0, 339679
                  sra          s2, s8, s1
                  or           zero, t2, zero
                  srli         t4, a7, 2
                  sra          s6, s9, s8
                  lui          t6, 822626
                  ori          a4, s7, -902
                  sll          a1, t1, s2
                  auipc        s5, 1025442
                  slt          tp, s10, t1
                  and          s9, s1, s9
                  auipc        a2, 469502
                  addi         a2, s7, -1148
                  add          s9, t5, s10
                  andi         tp, a7, -1211
                  lui          s0, 539728
                  nop
                  slti         ra, s11, 1633
                  srl          a5, s4, gp
                  xori         sp, t2, 793
                  andi         s8, sp, -1918
                  auipc        s1, 881797
                  add          t6, s9, t4
                  andi         ra, s8, 395
                  addi         s3, a5, -1585
                  auipc        s6, 75521
                  nop
                  xor          tp, sp, s7
                  srl          a4, sp, s6
                  or           s8, s1, s6
                  srai         s5, a4, 26
                  sra          s4, s0, ra
                  slt          s11, s6, s6
                  slti         s5, t1, -1730
                  add          gp, t6, a6
                  sll          a4, a2, s1
                  xor          t5, s2, a5
                  sll          s4, s0, t6
                  auipc        t6, 947331
                  add          s8, sp, s2
                  lui          s5, 581354
                  slti         tp, a4, -526
                  sra          t3, a1, s9
                  andi         s6, s7, 1444
                  auipc        a7, 430574
                  auipc        s4, 445477
                  or           a4, s8, s6
                  add          s9, gp, a0
                  slt          s7, s11, s0
                  slti         s9, s7, 510
                  sltu         s5, sp, s3
                  andi         sp, s0, 947
                  sll          s10, s0, a1
                  and          a7, t4, ra
                  slt          s9, s10, s4
                  slti         a3, t0, 1848
                  lui          s7, 753988
                  xor          gp, t6, t5
                  or           t1, a0, t2
                  and          tp, s10, a0
                  sll          s3, a2, zero
                  or           ra, s11, a7
                  or           s3, a1, t4
                  sra          a7, s4, zero
                  sltu         a3, a7, s3
                  slti         s7, t4, 1696
                  xori         a7, t0, -1209
                  lui          s11, 278921
                  srl          s5, t2, s5
                  sltu         ra, a0, s5
                  auipc        s1, 257663
                  ori          s4, t5, 843
                  srai         s3, t4, 18
                  slt          t3, a2, t6
                  and          gp, s7, a5
                  srli         s4, t0, 23
                  srl          t1, sp, s10
                  slt          s1, s11, a5
                  auipc        s2, 504225
                  sltu         t5, s11, s7
                  auipc        s2, 278781
                  ori          sp, a4, -1395
                  or           gp, s3, s1
                  nop
                  and          s4, t0, s9
                  addi         s3, s0, 1835
                  addi         tp, a2, -545
                  sll          a7, a1, t3
                  sll          t6, a6, t4
                  nop
                  slli         s5, tp, 13
                  slti         a1, s5, -1211
                  addi         s4, a6, 1845
                  andi         tp, s3, -756
                  andi         t4, t5, -167
                  slli         s10, zero, 31
                  slt          t1, s2, t6
                  auipc        s10, 80181
                  sltiu        ra, a5, 1200
                  addi         a3, a1, 510
                  sltiu        t1, t2, -1354
                  ori          a0, s8, 1722
                  srli         s7, a4, 25
                  addi         s1, s9, -760
                  and          sp, gp, s2
                  lui          s8, 948295
                  andi         s8, ra, 343
                  srli         a5, gp, 19
                  addi         s11, a3, -2027
                  lui          s9, 189221
                  ori          a3, s2, -1478
                  slti         s9, a0, 1741
                  slti         s0, s1, 1885
                  auipc        t3, 134992
                  slti         t3, sp, 1681
                  add          t6, t5, t0
                  sltiu        t5, sp, 562
                  auipc        s11, 27511
                  xori         zero, s5, -512
                  sltiu        tp, s8, -867
                  or           s3, s0, t0
                  sra          ra, a7, t0
                  addi         s9, a1, 1734
                  srl          t4, a6, s11
                  slti         s5, s9, -1833
                  srli         a7, a3, 7
                  xori         ra, s0, 198
                  srl          s2, s9, s8
                  or           s11, a6, t1
                  sra          a1, s4, a1
                  and          s2, s0, s6
                  or           s10, s4, s6
                  and          t1, t0, s7
                  srai         s10, a1, 27
                  slt          t1, a2, s7
                  srli         t1, t0, 20
                  addi         tp, s8, -1619
                  lui          s7, 979428
                  sll          tp, gp, a7
                  srl          s0, a2, t4
                  xor          tp, s8, s2
                  slt          s7, t2, gp
                  auipc        s5, 794829
                  srai         s7, s8, 27
                  srli         ra, a6, 26
                  slli         t6, ra, 12
                  srl          s0, a7, sp
                  srai         s0, t0, 12
                  xori         a3, ra, -1144
                  slti         s3, t1, -972
                  srai         t3, zero, 11
                  srli         sp, t6, 27
                  slt          gp, a0, a7
                  andi         zero, t2, -1317
                  srli         a7, gp, 16
                  slt          s2, s10, s3
                  ori          a3, a1, -2006
                  sltu         s0, t4, s8
                  and          t3, t0, t5
                  slti         t3, a5, -1781
                  sra          s2, gp, ra
                  srl          a4, sp, s3
                  add          s7, t4, tp
                  srli         zero, ra, 4
                  andi         sp, t2, -638
                  sub          s0, a4, t3
                  add          a4, t1, zero
                  and          s7, t5, sp
                  sltu         s10, a6, t5
                  ori          a5, s7, 673
                  slli         a4, s1, 16
                  slti         s2, s11, 2006
                  srl          a0, s3, t4
                  sltu         a7, s8, a7
                  slti         s6, a0, -997
                  srli         t6, a5, 14
                  sra          gp, tp, s0
                  nop
                  xor          zero, s11, sp
                  and          s5, s10, a3
                  sltiu        s4, s3, -93
                  lui          ra, 686728
                  or           a2, t5, t6
                  srl          a1, a3, s2
                  andi         tp, a6, 2024
                  slti         a5, a7, 612
                  andi         t6, ra, -75
                  srl          a0, s5, t3
                  auipc        t3, 738396
                  slli         t4, s5, 31
                  srai         s7, sp, 2
                  slt          a4, tp, sp
                  andi         gp, ra, 1476
                  andi         tp, t0, 242
                  xor          s5, s9, s2
                  sub          t3, s10, s3
                  srl          s0, a2, a2
                  or           t6, gp, s3
                  sltu         gp, s11, a1
                  sll          zero, sp, ra
                  sltiu        s0, sp, -665
                  srl          a4, t2, s6
                  srai         gp, s4, 16
                  srl          s8, a4, a0
                  add          a2, s3, a6
                  slli         a4, s8, 21
                  slti         t1, s6, 9
                  srai         zero, s1, 27
                  srl          s5, t5, gp
                  sub          t6, s5, a4
                  or           gp, a2, zero
                  srli         gp, s8, 2
                  xor          s11, tp, a2
                  slt          s9, s6, t1
                  srai         s7, a0, 29
                  andi         s2, a6, -1649
                  slt          s7, s3, s0
                  sll          s9, s10, s2
                  sltiu        s0, t2, -822
                  slli         t6, s7, 26
                  slti         s1, a5, 193
                  addi         s7, a5, 505
                  andi         s10, s8, 53
                  slti         a7, t5, -651
                  slt          s1, s6, t1
                  slti         t3, tp, 52
                  srl          s2, s3, s1
                  xori         a5, t5, 142
                  srli         a1, s5, 31
                  srai         a1, a5, 8
                  sltu         s0, t2, s5
                  ori          s7, t6, 1527
                  sub          a0, t6, a2
                  addi         s8, zero, -717
                  xori         s5, s4, 1008
                  ori          s3, s10, 1917
                  srai         s7, t5, 7
                  auipc        t4, 91691
                  sub          tp, t1, a5
                  sltiu        t3, s4, 2038
                  add          t4, a7, s5
                  sll          t5, t6, t2
                  ori          a2, a6, 697
                  sltu         s9, t0, s1
                  and          t3, s6, s1
                  sra          s4, s10, s6
                  slt          s7, ra, t4
                  auipc        s2, 939211
                  slli         t4, a7, 22
                  sra          t1, t4, a4
                  xor          a5, a5, a2
                  lui          tp, 560732
                  addi         sp, tp, -675
                  and          s10, t3, a7
                  srl          s7, s2, ra
                  slt          zero, a4, a7
                  nop
                  slti         s7, a7, 465
                  lui          a7, 408056
                  auipc        s5, 927677
                  xori         a0, s11, -1406
                  xor          s3, s7, sp
                  slti         ra, a2, -731
                  srl          a5, a5, s8
                  srl          a1, a1, s2
                  andi         t4, s10, -1026
                  andi         t5, s0, -1952
                  srl          t1, s10, t5
                  xori         s6, t2, -253
                  andi         s7, sp, -1984
                  xori         a5, s6, -165
                  srl          a5, a3, s7
                  slli         s1, a4, 8
                  sltiu        a3, sp, 1193
                  sra          a2, s6, s1
                  sltiu        a5, sp, -567
                  andi         s8, s8, 1427
                  ori          s0, a7, -1900
                  or           s9, gp, tp
                  slt          s0, a1, tp
                  srai         s1, s1, 7
                  sll          sp, s6, s0
                  auipc        t6, 893827
                  sltiu        t3, t5, 108
                  xor          sp, a5, a3
                  nop
                  slt          a3, t5, a7
                  slti         s0, a4, -562
                  xori         a7, t4, 1288
                  nop
                  srli         s11, s1, 14
                  srai         a0, s3, 22
                  srli         gp, a2, 14
                  xor          sp, s11, a0
                  sltiu        gp, tp, 1352
                  ori          a0, s2, 1663
                  andi         ra, t0, -1332
                  sltiu        s3, a3, -1037
                  slli         s5, t4, 28
                  slli         gp, sp, 17
                  lui          s5, 449165
                  sra          s11, ra, s10
                  sra          s5, t2, s6
                  slt          s2, t3, s2
                  xori         s11, s2, -951
                  andi         s11, s9, -744
                  add          t6, s4, a2
                  or           s8, s0, t5
                  sltiu        s10, tp, 1824
                  xori         s7, s3, -1535
                  lui          a2, 757246
                  or           tp, a5, t4
                  andi         s9, s8, -243
                  slli         t3, a1, 3
                  sra          tp, s10, a6
                  ori          tp, a0, -1626
                  andi         t3, s3, -1027
                  addi         s4, a0, 656
                  xori         s11, s11, -1194
                  addi         ra, t1, 769
                  and          s9, s3, a1
                  sub          t5, s7, s1
                  lui          gp, 326759
                  and          s4, s2, a0
                  andi         a2, a3, 1640
                  add          s1, ra, s10
                  xori         ra, s11, -71
                  lui          s0, 211027
                  nop
                  lui          a3, 424334
                  sub          s4, s10, s9
                  srli         s10, s0, 24
                  sll          a1, a5, gp
                  slt          s5, s11, s10
                  sll          s11, s8, a0
                  sra          s3, s11, sp
                  add          s9, a3, t6
                  sll          a2, zero, ra
                  nop
                  and          a7, t1, zero
                  andi         t1, s10, 1133
                  andi         t1, zero, -624
                  srli         t3, ra, 17
                  or           s10, t5, s8
                  sll          a7, a3, sp
                  nop
                  srai         t6, a7, 6
                  sll          a5, s4, t6
                  ori          t6, t5, 1112
                  xor          zero, s6, t0
                  srl          sp, s5, t5
                  nop
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_36
                  li           s3, 0x0
                  li           t6, 0xffffffff
                  li           s0, 0x80000000
                  li           s1, 0x80000000
                  li           s9, 0x0
                  li           a4, 0x80000000
                  li           a3, 0xffffffff
                  li           t5, 0xd6fe39bf
                  li           sp, 0x80000000
                  add          s3, t6, s3
                  addi         t3, s1, 1429
                  addi         s3, t3, -782
                  auipc        s3, 654550
                  add          sp, s0, s9
                  lui          s0, 1010442
                  nop
                  add          s9, s9, s1
                  auipc        s3, 586228
                  addi         t5, s3, -956
                  add          s1, s9, t6
                  sub          s0, sp, s1
                  auipc        sp, 1026183
                  sub          sp, s1, a4
                  add          a3, sp, a3
                  addi         s3, a3, 1349
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_36
                  xori         gp, tp, -52
                  srl          a2, t6, s0
                  ori          s6, a7, -531
                  ori          s8, s11, 1262
                  lui          t6, 737698
                  srl          a5, s11, s10
                  srl          s10, a5, a1
                  sra          ra, sp, t1
                  ori          s11, t0, 839
                  lui          a4, 672756
                  srli         s7, s11, 5
                  sra          a3, s10, t5
                  nop
                  srli         s3, tp, 2
                  nop
                  add          a0, a2, t2
                  sub          s8, s3, a2
                  srai         a2, t5, 11
                  xor          s6, s3, gp
                  xor          s5, a1, t6
                  sra          t4, t3, s11
                  addi         t5, s5, -1075
                  xor          s11, gp, s11
                  xori         a0, s11, -448
                  srl          a3, a0, a3
                  add          s7, s9, sp
                  slti         s9, ra, 537
                  sll          a4, s1, s2
                  auipc        tp, 397775
                  add          s9, a3, s9
                  nop
                  addi         s1, a4, 845
                  slti         s9, t3, 599
                  slt          t6, t1, a5
                  sra          zero, s4, s10
                  srl          tp, s4, s8
                  slt          t3, ra, t1
                  auipc        s10, 453817
                  sll          s10, s1, t4
                  sra          s0, a7, s4
                  sltiu        s5, s1, -127
                  ori          a5, a7, -1942
                  srli         s8, t2, 3
                  addi         gp, s0, 158
                  sltu         zero, s3, s2
                  andi         tp, ra, -1098
                  sltu         a3, a4, zero
                  sltu         s9, s7, s0
                  srl          t6, a7, t5
                  slti         s2, ra, 611
                  sltiu        s8, gp, -1820
                  xor          t5, s10, a3
                  andi         t1, s0, 1436
                  sub          s5, a5, tp
                  slti         a2, s6, 670
                  xori         s5, s5, -294
                  xori         sp, s11, 969
                  slt          a2, s9, a0
                  xori         t4, s7, -1206
                  srai         s3, s3, 27
                  slti         t5, s9, 916
                  sltu         t6, gp, a6
                  xor          t1, gp, s10
                  srl          t1, s1, a5
                  sll          a3, ra, sp
                  andi         a5, s8, 530
                  sra          t3, a0, a2
                  andi         s7, s6, -132
                  srl          t3, t3, s6
                  srl          a5, s8, s1
                  andi         t1, s8, 1193
                  andi         ra, a7, 1876
                  auipc        a7, 316224
                  auipc        t1, 1037624
                  slli         t4, a1, 21
                  lui          zero, 741211
                  sub          tp, t2, s7
                  sll          s7, a6, a5
                  xori         s3, s9, 1429
                  sub          a5, t2, s4
                  or           s9, t1, ra
                  nop
                  or           t4, s6, s4
                  sra          a5, s5, t4
                  and          s11, t3, s6
                  nop
                  slt          t1, a7, a4
                  xor          a0, s8, s10
                  sltu         s7, s5, sp
                  add          t1, tp, t0
                  or           s5, a5, gp
                  xori         zero, zero, -895
                  xori         s8, a5, 656
                  auipc        tp, 793796
                  lui          a2, 1038313
                  xori         a4, t2, 1337
                  xor          a1, a0, s10
                  sra          a0, s6, gp
                  addi         t3, t3, 45
                  nop
                  xor          s1, s1, s8
                  auipc        s2, 102183
                  srai         a5, s2, 13
                  andi         ra, s2, -1695
                  srli         s1, t2, 9
                  and          s7, ra, sp
                  ori          a0, s0, 1059
                  ori          s4, gp, -1459
                  add          s5, a0, gp
                  xori         t1, t3, 1530
                  slli         t1, a4, 13
                  and          s7, t4, a2
                  slti         s5, zero, -205
                  sll          s4, t4, a6
                  ori          s1, s5, 896
                  addi         s9, s6, -881
                  addi         a3, s11, 98
                  lui          a7, 50457
                  ori          a0, s2, 885
                  andi         t6, a5, 1984
                  add          s8, t3, a1
                  or           s3, s9, t5
                  slt          zero, a3, a7
                  sltiu        a7, s5, -307
                  lui          s5, 77500
                  srai         a4, s1, 9
                  add          t5, t4, s0
                  srli         a3, t2, 13
                  sra          a1, t6, t4
                  auipc        s2, 358654
                  srai         zero, a6, 4
                  or           a3, a2, a7
                  sltiu        a0, gp, -386
                  sll          sp, s11, gp
                  xor          s4, s0, t2
                  sltiu        a5, t6, 766
                  addi         s7, s11, -862
                  andi         s2, t4, 1173
                  slt          ra, t2, s9
                  slt          s9, a3, a1
                  nop
                  add          t6, a5, tp
                  auipc        t5, 757603
                  sltiu        t6, t2, -1517
                  or           t6, a1, s11
                  nop
                  andi         a1, ra, 600
                  sub          sp, a5, s7
                  srli         zero, a1, 24
                  nop
                  auipc        s2, 723463
                  or           s0, a7, ra
                  sltu         a7, s10, a0
                  slti         t4, s11, -87
                  slli         a5, a5, 9
                  auipc        sp, 622404
                  srai         a2, t3, 26
                  addi         s3, gp, -1048
                  xor          a0, s1, s2
                  nop
                  sll          zero, a2, a4
                  auipc        s7, 413672
                  xor          s2, a2, a3
                  andi         s7, a0, -485
                  li           s6, 0x321b1147 #start riscv_int_numeric_corner_stream_8
                  li           s4, 0x80000000
                  li           sp, 0x80000000
                  li           t5, 0x0
                  li           tp, 0xffffffff
                  li           a2, 0xd77c0e6a
                  li           a5, 0xeecd5b58
                  li           t3, 0x40eccaf2
                  li           gp, 0x55148f20
                  li           s0, 0x0
                  auipc        t5, 729653
                  lui          s0, 371705
                  auipc        s0, 585202
                  add          s6, gp, t5
                  lui          s0, 875136
                  add          s0, a2, t5
                  addi         t3, s0, 339
                  lui          t5, 241543
                  add          s0, tp, t3
                  sub          gp, sp, s4
                  add          s0, gp, a2
                  auipc        s0, 488686
                  lui          t3, 185127
                  lui          t3, 350462
                  sub          s6, s4, s4
                  auipc        a2, 768043
                  nop
                  auipc        t3, 845692
                  add          a5, s0, s6
                  add          t3, s4, t5
                  addi         gp, s4, 141 #end riscv_int_numeric_corner_stream_8
                  sltu         s8, a3, a4
                  sra          t6, a1, a7
                  and          s7, ra, tp
                  slti         ra, s11, 551
                  xori         s3, s7, 1707
                  slti         zero, t2, -574
                  sll          t3, s4, s10
                  slti         s4, a3, -1612
                  slti         sp, tp, 887
                  slt          a5, s2, t2
                  srl          s2, s11, s1
                  sltiu        gp, t5, -111
                  nop
                  srl          gp, s8, t0
                  ori          s7, sp, 1077
                  auipc        s6, 503046
                  sra          a7, ra, gp
                  srli         a2, tp, 7
                  xor          s9, t5, gp
                  srli         s1, a3, 19
                  and          s4, s0, a5
                  srai         a5, s10, 21
                  srli         a0, s11, 24
                  sra          s5, s9, t3
                  ori          s11, s11, 533
                  or           s1, s11, s4
                  srl          gp, tp, zero
                  sltiu        s9, t6, 660
                  sub          s8, zero, s6
                  nop
                  srai         t1, sp, 23
                  slli         t5, t2, 31
                  sra          s6, t1, s7
                  srl          a2, a1, s7
                  ori          s8, s3, 924
                  ori          s2, t6, -1253
                  sll          gp, s0, s9
                  xori         t1, t2, 1455
                  or           s7, s10, s6
                  xor          gp, zero, s5
                  and          t1, ra, a5
                  xor          s9, tp, a5
                  xori         a0, zero, 297
                  srl          zero, gp, a6
                  ori          t4, s6, -1943
                  xori         s11, a6, -1724
                  srl          s9, ra, sp
                  sra          a7, a1, a6
                  addi         s7, s8, 741
                  and          a4, t2, ra
                  sll          tp, tp, s11
                  srl          ra, a2, s2
                  srai         sp, s10, 5
                  sll          zero, a5, s11
                  add          s11, a5, t5
                  andi         a0, ra, 1412
                  xori         a7, a7, 314
                  sub          a3, s7, s3
                  add          s6, t4, a5
                  add          a2, t6, a4
                  or           s7, a6, s11
                  slti         t4, a5, 1753
                  slli         a1, s1, 29
                  slli         s5, a5, 13
                  ori          ra, t6, 1285
                  ori          zero, t5, 774
                  add          t6, s9, s4
                  slt          zero, ra, s5
                  andi         zero, a4, -106
                  addi         s2, a1, 853
                  addi         gp, s2, 379
                  slt          a1, sp, s8
                  srl          s3, a4, t0
                  sltu         t5, s3, t3
                  srli         a7, s8, 10
                  sra          gp, s9, s10
                  sra          s2, a3, s6
                  or           a5, t2, s0
                  ori          s2, s7, 983
                  and          t6, s1, t5
                  xori         s5, s8, -747
                  xori         s1, s4, -391
                  sll          a2, tp, t2
                  nop
                  auipc        ra, 503331
                  slt          zero, a0, t6
                  andi         gp, t6, -893
                  or           zero, s10, gp
                  sra          t6, t5, tp
                  srl          s11, t6, a5
                  nop
                  addi         s10, a4, 1836
                  sra          t6, s4, t1
                  srai         ra, a0, 15
                  slti         s2, t3, 914
                  auipc        t3, 804348
                  sltu         t1, t2, s0
                  sra          s3, t2, a0
                  addi         a5, sp, -965
                  lui          zero, 936996
                  and          a5, a1, a6
                  sll          a2, t5, a3
                  sltu         a1, s9, a3
                  slti         s3, t0, -2048
                  sll          s3, t4, s8
                  sub          t3, t5, sp
                  andi         t6, a3, 136
                  xor          a5, a5, t1
                  sll          s6, sp, t4
                  and          s10, a6, t2
                  sltu         tp, s0, a2
                  srai         s0, s9, 7
                  sltiu        a1, s11, 1234
                  addi         t1, t3, 495
                  sra          a2, tp, s8
                  srai         a4, a2, 5
                  slt          a3, s8, a3
                  andi         s10, s3, -578
                  nop
                  sub          s4, s9, a0
                  sra          t4, t3, a3
                  sra          s10, a6, a7
                  sltiu        s6, s6, 1024
                  lui          s2, 1035194
                  and          ra, a3, sp
                  slli         s2, tp, 6
                  or           s7, s9, s11
                  slli         t5, s7, 31
                  slli         a5, t5, 12
                  or           a7, s10, a5
                  or           tp, s6, tp
                  or           s2, t0, ra
                  auipc        s11, 327049
                  sltu         tp, zero, t2
                  or           s2, t5, s3
                  ori          a0, tp, 1944
                  srl          tp, a1, a2
                  nop
                  slt          gp, s4, gp
                  add          s4, t5, ra
                  or           s9, ra, a6
                  addi         a0, gp, -946
                  slli         s6, s4, 24
                  andi         s2, t6, 1063
                  srl          a7, zero, a2
                  sra          t4, a2, s4
                  and          s7, s11, t6
                  andi         tp, a3, 1282
                  nop
                  sltiu        s5, s4, 1066
                  srai         s10, t6, 21
                  and          s7, s2, a4
                  add          a4, s0, s1
                  sub          tp, s3, sp
                  andi         a2, a1, 2047
                  slti         a0, t2, 1890
                  and          t5, t2, a6
                  slt          ra, a6, a1
                  andi         s7, a3, 1279
                  sub          s8, s10, t0
                  add          s7, s0, s9
                  slt          s6, t6, s8
                  xor          s10, a2, s8
                  srai         tp, t2, 3
                  srl          a7, tp, gp
                  sra          s9, a0, s0
                  slli         t4, sp, 7
                  auipc        t5, 81
                  srl          tp, tp, s2
                  sltu         s7, s3, t6
                  slti         s5, zero, 194
                  sub          t1, a3, s9
                  slli         t5, t4, 4
                  srai         s5, a1, 0
                  lui          s1, 859093
                  add          a3, t1, s6
                  addi         t3, zero, -1939
                  srl          s5, s7, gp
                  lui          tp, 651421
                  sub          s7, t4, t6
                  or           s11, t1, s9
                  addi         s4, t6, -464
                  ori          t5, a2, 1958
                  sub          t3, t4, s6
                  sll          tp, s7, s9
                  srl          s4, zero, s0
                  srl          s7, a3, t2
                  sltiu        t5, s4, -1497
                  lui          a0, 387095
                  srli         t4, a7, 23
                  srl          s4, t2, s8
                  ori          t5, s11, 1480
                  ori          t4, a7, -1483
                  ori          s7, t6, 1408
                  sub          s0, t5, a1
                  sltiu        t3, tp, 330
                  addi         s7, zero, -359
                  xor          s9, t6, a6
                  sub          a2, a3, a7
                  sll          a4, s5, s4
                  addi         a0, t1, 916
                  srl          sp, t0, s2
                  slt          a1, zero, a0
                  sltu         a2, s8, a3
                  xori         a3, gp, 921
                  addi         s2, t4, -751
                  slli         t3, sp, 22
                  or           a4, a2, s2
                  slt          gp, gp, ra
                  auipc        s9, 158650
                  sll          a1, t3, s4
                  ori          s10, a2, -408
                  sub          t1, ra, s8
                  lui          a5, 801303
                  xori         t5, t0, 693
                  auipc        gp, 344562
                  srli         s10, s3, 20
                  addi         s9, s2, 510
                  ori          a0, t1, 942
                  add          s4, s9, t4
                  sltu         s4, s8, a3
                  add          a5, s4, a2
                  or           s2, a7, s7
                  or           a5, a1, s1
                  slti         s4, s4, -198
                  andi         tp, s6, -1012
                  srai         s1, s9, 25
                  srai         a1, t4, 23
                  slli         t3, s8, 17
                  addi         t4, tp, -1304
                  sltu         s2, sp, s5
                  sltu         s2, a0, s5
                  auipc        s2, 605200
                  sll          tp, t0, a1
                  srai         a7, a2, 11
                  auipc        s3, 423818
                  xori         s3, tp, -16
                  sra          tp, s7, s11
                  sra          sp, s3, s11
                  addi         a7, a1, 1419
                  add          s7, t4, s11
                  and          zero, gp, s7
                  and          a2, s0, ra
                  slti         t5, s9, -38
                  andi         s8, a2, 777
                  slli         s3, a7, 10
                  xor          s0, a4, t0
                  srai         s6, t0, 22
                  sll          s0, a7, t1
                  sub          s9, t0, s6
                  lui          t1, 895088
                  andi         s2, a5, -1681
                  srai         t6, a3, 6
                  slti         t5, s0, -901
                  auipc        s3, 582415
                  ori          a1, t5, 438
                  lui          t6, 791636
                  slli         s2, t2, 6
                  sltiu        s3, t3, -1684
                  ori          s5, tp, 1442
                  lui          s5, 453927
                  xori         t6, gp, -1531
                  ori          a0, s2, -807
                  or           tp, s3, a5
                  slli         a7, s0, 23
                  addi         zero, s10, -174
                  slti         zero, a5, -1166
                  slli         zero, a4, 8
                  slti         s11, a0, -402
                  and          s8, t2, s7
                  ori          s0, s9, 875
                  sub          s5, s9, a4
                  sra          s9, t2, a1
                  or           a7, s6, sp
                  nop
                  nop
                  sra          s8, a0, s0
                  lui          ra, 701810
                  sltu         s2, a4, a6
                  lui          a5, 458988
                  and          a2, a4, t0
                  nop
                  sll          t3, gp, s3
                  sltu         s5, a0, s2
                  nop
                  slti         t3, a2, -411
                  slt          t3, s11, s6
                  auipc        s7, 782226
                  slli         s5, tp, 0
                  andi         zero, t6, -1641
                  slti         s7, a7, -182
                  slt          s4, a5, s3
                  ori          t1, s2, 1047
                  slt          a3, gp, a1
                  andi         zero, a7, -953
                  lui          a2, 385114
                  xor          s5, s3, s5
                  slti         s10, s1, -912
                  srai         a3, a3, 11
                  and          t3, s2, s4
                  slti         a2, s6, -429
                  ori          a7, a1, 155
                  ori          a1, s1, 1322
                  xor          a5, t2, s7
                  sub          zero, tp, s9
                  sub          s6, s7, t4
                  slti         t5, t2, -1833
                  xor          t4, a3, s2
                  add          t1, a0, s8
                  sll          t4, s6, a4
                  ori          gp, t4, -600
                  nop
                  or           s11, s6, t1
                  srli         s4, a1, 20
                  or           s2, s6, s2
                  sltiu        a7, t0, 1616
                  xor          s5, s9, a1
                  sltiu        sp, a1, -29
                  sltu         t5, s6, a4
                  xori         a1, s10, 1616
                  sltiu        s8, s10, 246
                  xori         a0, s10, -1260
                  sll          s5, t3, sp
                  srai         sp, a5, 7
                  auipc        ra, 799712
                  lui          s11, 400378
                  and          ra, t4, zero
                  lui          t6, 137368
                  srli         s10, s5, 3
                  srl          s6, gp, t1
                  lui          s1, 629717
                  nop
                  ori          t3, s3, 494
                  addi         zero, t5, 523
                  add          tp, s1, s8
                  srai         a2, ra, 23
                  sra          a1, s4, zero
                  sra          s1, s6, a2
                  slli         s10, tp, 19
                  srli         a3, s3, 20
                  sub          t4, s1, s8
                  sltiu        ra, a5, -317
                  sltu         s1, s6, gp
                  sra          t1, a7, t5
                  srai         t3, a1, 2
                  srl          a3, s0, s7
                  sltiu        tp, a0, -429
                  srai         s11, ra, 0
                  and          a5, gp, a7
                  sll          t3, s11, zero
                  sltiu        tp, t5, -1643
                  srl          a1, t2, zero
                  andi         ra, a1, -1477
                  or           a1, t5, a0
                  sltiu        tp, t4, 1042
                  slli         t3, a3, 22
                  srai         sp, s3, 5
                  sltu         s8, a4, s8
                  xor          a3, gp, t6
                  sub          s11, t0, s0
                  srai         s0, s8, 7
                  nop
                  auipc        s8, 203701
                  srl          s6, s11, t3
                  or           a2, a4, t4
                  addi         tp, zero, -877
                  sltu         t1, gp, s2
                  srai         s10, gp, 8
                  nop
                  add          t3, s0, a6
                  addi         s6, ra, 1009
                  srai         t5, t4, 6
                  or           s8, tp, tp
                  slli         gp, a1, 16
                  slti         a3, s3, -223
                  or           s3, a6, s10
                  auipc        t3, 778883
                  ori          s3, s3, -1923
                  sltu         a3, s10, t5
                  xori         s6, t1, 1159
                  add          s10, a4, a2
                  andi         t6, s8, -1980
                  ori          t3, t0, -1304
                  or           sp, s10, sp
                  slt          s6, t4, a5
                  add          s8, t0, s0
                  srai         t1, zero, 25
                  sll          a2, a4, s2
                  nop
                  auipc        s5, 399626
                  nop
                  addi         a2, t2, -123
                  lui          a7, 430096
                  nop
                  ori          s8, t0, 509
                  srai         s2, t1, 9
                  xori         a5, a4, 1803
                  or           s6, s7, t6
                  slt          a0, a6, ra
                  ori          s0, tp, -1622
                  slli         a1, a1, 8
                  auipc        s10, 643320
                  auipc        sp, 380264
                  sltiu        a1, s6, 753
                  andi         s7, sp, -415
                  xori         a0, s2, -1103
                  slli         a4, s6, 19
                  add          a4, t1, gp
                  srl          s7, ra, t3
                  sub          a2, s1, ra
                  sltu         s9, zero, ra
                  sra          s6, zero, a1
                  sltu         a7, a1, s3
                  srai         s0, s1, 0
                  sltu         s7, s1, t6
                  sltu         s3, a5, a3
                  srl          s4, a2, zero
                  andi         zero, a3, 1424
                  slt          s4, tp, a4
                  xor          s0, t2, sp
                  add          gp, s1, a5
                  lui          s11, 35496
                  add          zero, a4, t2
                  xori         s9, s9, -1901
                  sra          s10, a1, t5
                  add          s2, t4, s11
                  sltu         t4, t3, s11
                  ori          s3, tp, -1851
                  sltiu        s9, s5, -704
                  add          t6, a7, a0
                  andi         s10, t0, -1773
                  sltiu        s11, zero, 886
                  add          s1, s2, a6
                  add          a4, gp, t1
                  sll          t5, s6, a6
                  srli         s0, a6, 28
                  and          a4, t1, zero
                  andi         s7, a4, -1665
                  andi         ra, a1, -1879
                  add          t5, s1, t1
                  sltiu        t3, t2, 666
                  xori         s5, a4, -144
                  srl          s8, s0, s2
                  add          s1, a7, t6
                  auipc        a4, 1011782
                  sll          a2, t6, a2
                  add          tp, a6, s5
                  srl          ra, s0, sp
                  or           s8, s2, s2
                  andi         a7, a6, 423
                  addi         s7, a2, -1076
                  addi         s0, t3, 1076
                  andi         a1, t5, -479
                  sltiu        s6, s4, -324
                  slli         s1, t3, 3
                  add          ra, s4, t1
                  sll          s10, t0, s10
                  slli         s5, zero, 23
                  slti         s6, a1, 479
                  lui          ra, 813780
                  sra          a5, gp, s4
                  sll          a1, a7, a5
                  lui          t4, 117783
                  xor          a5, s9, a0
                  sra          a2, s5, ra
                  sll          a4, s0, s5
                  srai         a5, s8, 9
                  srai         s2, t6, 26
                  slt          a5, t5, t6
                  slti         a1, s6, -352
                  srl          a7, sp, s4
                  sltu         s8, t2, s7
                  slt          a0, s3, s4
                  srl          a3, gp, s9
                  nop
                  add          s0, t6, a0
                  sltu         a7, s1, a1
                  srl          s3, a4, a7
                  lui          a7, 879263
                  srai         s2, t6, 10
                  or           a5, gp, s0
                  or           s3, gp, t2
                  nop
                  and          s11, s2, a0
                  srl          s4, t6, a6
                  nop
                  sltu         s11, s9, s5
                  auipc        a3, 679801
                  add          t5, ra, a6
                  xori         s5, ra, 1522
                  slli         s3, s6, 1
                  and          a2, a7, s11
                  andi         t1, s5, -267
                  sub          t5, s3, zero
                  xor          a4, s5, s11
                  sll          s8, a4, s3
                  slti         zero, a1, 1395
                  srli         s8, s9, 1
                  nop
                  sll          s0, gp, a7
                  and          ra, s9, a3
                  slti         t4, ra, 268
                  sll          a5, s10, ra
                  srli         s7, t3, 26
                  sra          a3, s9, tp
                  sll          t3, a7, gp
                  sra          gp, s4, t1
                  slt          zero, a1, t6
                  sll          t6, a2, s2
                  auipc        s11, 315616
                  nop
                  or           a4, s5, s1
                  sra          sp, s3, s1
                  srai         s8, a6, 7
                  auipc        t4, 183759
                  srai         a0, s9, 22
                  sll          gp, ra, t6
                  slt          a2, s11, s11
                  lui          tp, 372239
                  xori         sp, t3, -305
                  slt          gp, t3, s7
                  slli         ra, s2, 22
                  slti         t5, s11, 794
                  sll          gp, tp, a1
                  and          gp, t0, t2
                  xor          s8, t3, t0
                  sub          ra, t6, t6
                  sltiu        s4, s5, 903
                  addi         ra, s6, -125
                  or           s11, t4, s4
                  ori          a5, t4, 11
                  sltiu        s11, a4, 807
                  lui          t4, 519437
                  and          tp, s4, s4
                  add          a3, zero, s8
                  andi         s11, a7, 1182
                  srli         s4, t3, 13
                  sltiu        gp, a5, -299
                  srl          t3, s5, s7
                  ori          s2, t3, -878
                  nop
                  ori          tp, t4, -671
                  and          s2, zero, sp
                  xor          s10, t6, a0
                  srl          a7, sp, s3
                  sll          s1, t6, zero
                  sltiu        t4, a3, 473
                  srai         tp, t5, 18
                  and          s4, t3, a3
                  slli         zero, t0, 20
                  sll          gp, zero, a0
                  lui          s2, 292575
                  and          a2, s4, s3
                  xor          t5, t6, s2
                  sll          s2, s10, s2
                  auipc        ra, 904639
                  srli         ra, s3, 0
                  slt          s4, s5, t1
                  sltu         a3, s4, t3
                  and          sp, s7, t5
                  sltu         t5, tp, zero
                  or           a3, t2, t4
                  andi         s10, s11, 144
                  and          s0, s11, s3
                  add          s1, s5, sp
                  srli         s11, s2, 16
                  srai         t1, t3, 21
                  or           tp, a3, s6
                  slli         s5, ra, 21
                  sra          a0, t6, t2
                  or           s7, s3, s2
                  addi         a1, zero, -810
                  sub          t3, s6, sp
                  and          a7, s8, a5
                  ori          ra, t3, 1835
                  slt          s6, s5, s11
                  auipc        s11, 678913
                  lui          a5, 463361
                  srai         s8, ra, 20
                  addi         t4, t3, -620
                  addi         sp, a1, -9
                  srli         s5, s6, 23
                  slli         s0, sp, 0
                  andi         t1, ra, -1992
                  ori          gp, s2, 1868
                  andi         sp, tp, -498
                  srl          t1, zero, s9
                  andi         gp, s4, -501
                  lui          a7, 995281
                  srai         t4, t6, 29
                  srl          a4, a2, s8
                  auipc        a2, 334512
                  ori          a1, a5, -1018
                  or           s8, s9, a4
                  sltiu        tp, a1, -1319
                  slt          s1, zero, s6
                  add          a1, s8, s2
                  auipc        t1, 515505
                  add          t4, s5, s2
                  srai         t1, t5, 19
                  slli         s11, gp, 30
                  slti         s2, t5, -1419
                  ori          t4, t5, 1219
                  auipc        s7, 755791
                  sltu         s11, a3, t6
                  addi         s5, a5, -1521
                  srli         s2, t0, 22
                  or           t4, a6, t3
                  sra          t6, s4, t3
                  slti         s8, ra, 1280
                  slli         s3, t6, 18
                  srai         t3, s9, 23
                  addi         s11, a2, 996
                  or           s6, s2, s9
                  xori         a5, sp, 1065
                  xor          zero, t4, t2
                  sra          a5, t6, tp
                  lui          zero, 287671
                  slti         s4, a4, 265
                  xori         s4, t0, -1689
                  srli         tp, s6, 6
                  sltu         a2, t1, gp
                  sltu         s2, s7, a3
                  auipc        a0, 844350
                  srli         a1, s10, 22
                  nop
                  nop
                  sll          s7, t3, s11
                  addi         gp, t1, 1323
                  xori         a7, a2, 1957
                  slli         a2, s9, 1
                  nop
                  add          a7, t5, gp
                  ori          s11, a0, 444
                  sll          t1, s2, a3
                  or           a7, s0, zero
                  xori         s2, ra, -1974
                  slti         gp, t5, 1547
                  sll          zero, t5, sp
                  sltu         ra, s4, s9
                  sub          s8, tp, s1
                  add          ra, t0, s11
                  nop
                  srai         t6, zero, 12
                  lui          t5, 784715
                  sltiu        s10, s7, -1873
                  xor          a5, s3, s7
                  addi         t5, sp, 794
                  sltu         sp, s10, s9
                  and          s9, s3, s7
                  sra          t4, s9, s1
                  xori         a1, s6, -1703
                  add          t5, s1, s5
                  slli         a7, s7, 3
                  sltiu        s10, a5, 633
                  srli         a0, a1, 10
                  slt          tp, s5, t5
                  xor          a2, s1, t3
                  or           a2, s7, s3
                  and          s4, s8, a2
                  or           s3, t0, a1
                  srai         s3, ra, 29
                  xori         ra, t3, 1368
                  andi         gp, s11, -1696
                  slt          s10, a3, t3
                  sll          t3, a3, s9
                  slli         s8, t3, 0
                  slli         a4, s8, 3
                  nop
                  sra          s4, sp, t0
                  sub          zero, s5, s9
                  slti         ra, s3, -182
                  lui          s7, 600745
                  sub          s10, t2, ra
                  ori          a5, s9, -296
                  slt          gp, t5, t3
                  and          a5, sp, t1
                  andi         s6, a1, -626
                  xori         s6, t5, -449
                  nop
                  addi         s4, a7, 731
                  andi         a1, sp, 1499
                  sra          sp, a6, sp
                  sub          a3, s9, t2
                  srl          s8, t5, a5
                  nop
                  srai         s8, zero, 1
                  srl          s8, a2, a3
                  slti         tp, ra, 1053
                  srl          s11, s11, s2
                  and          s10, s8, a7
                  srli         s5, s3, 3
                  sltu         gp, s3, s5
                  add          a3, t2, a0
                  srl          gp, a7, s2
                  srli         a1, t4, 6
                  ori          s8, t4, -1059
                  ori          a1, a5, 1986
                  xori         s9, t0, 672
                  or           s7, gp, tp
                  nop
                  ori          s9, t4, -572
                  sub          s5, a7, zero
                  sltu         s7, s1, a7
                  slt          a0, s9, a5
                  xori         zero, s5, 1029
                  srl          s10, s0, a3
                  and          a4, s4, t5
                  andi         gp, s4, 673
                  nop
                  nop
                  slli         s6, s7, 3
                  sub          s0, a0, s8
                  srli         s5, a2, 8
                  srli         gp, s10, 7
                  srl          t1, s11, s9
                  andi         a7, s1, -1972
                  ori          a5, s9, -921
                  xor          zero, s7, s2
                  and          s11, ra, a5
                  srai         s10, s8, 4
                  slti         a2, a3, -1320
                  and          a2, s4, a3
                  or           s0, s10, a7
                  nop
                  sub          sp, ra, s5
                  srli         t6, t1, 11
                  lui          a7, 232093
                  and          t4, s7, a6
                  ori          a1, s9, 1649
                  add          sp, sp, gp
                  xor          t5, s3, a1
                  srli         a5, s10, 17
                  andi         a7, t2, -683
                  srl          a0, s10, s1
                  add          gp, t5, s9
                  add          tp, s3, s3
                  addi         s4, zero, 165
                  srl          s10, a3, s6
                  ori          a3, gp, -663
                  or           a5, a7, s3
                  sra          t3, a4, a0
                  sra          t1, s7, s9
                  xori         sp, sp, 339
                  xori         a5, a1, -637
                  or           s10, a3, sp
                  add          s1, t0, a7
                  sltiu        a5, t1, -530
                  slti         sp, a5, -1911
                  sra          s2, sp, tp
                  addi         t6, zero, 972
                  add          ra, s1, ra
                  slt          tp, s7, a3
                  sub          ra, a4, s0
                  sltiu        sp, a3, 254
                  sra          s2, t3, s9
                  srl          s0, s7, a6
                  addi         a7, s3, -1726
                  andi         a7, t2, 1660
                  li           s2, 0xf6adc4c8 #start riscv_int_numeric_corner_stream_16
                  li           gp, 0xbd1dbf00
                  li           t3, 0x80000000
                  li           a2, 0xc4a38580
                  li           s5, 0x80000000
                  li           a3, 0x0
                  li           a1, 0x7f70f65d
                  li           s7, 0x80000000
                  li           s0, 0x80000000
                  li           s6, 0xffffffff
                  nop
                  auipc        t3, 234379
                  sub          s0, s7, a1
                  sub          s5, a1, a1
                  add          s6, gp, s7
                  sub          a1, s0, s7
                  nop
                  auipc        a1, 529430
                  addi         s7, a2, 199
                  sub          a3, t3, s6
                  addi         s2, s6, -1663
                  sub          s0, a1, s7
                  lui          a1, 523954
                  sub          s5, s5, s7
                  auipc        t3, 134707
                  nop #end riscv_int_numeric_corner_stream_16
                  and          t5, sp, zero
                  lui          ra, 576868
                  sub          gp, s0, s6
                  sltiu        t6, t1, -1257
                  sltiu        s6, a7, -358
                  srai         t3, ra, 2
                  sltu         s4, gp, s10
                  nop
                  andi         a2, s2, 513
                  or           a7, zero, t6
                  xori         zero, a3, -22
                  nop
                  slti         a0, t2, -1820
                  slli         t5, t4, 9
                  sltiu        s3, a4, -1392
                  nop
                  slti         a4, a1, 1395
                  addi         s6, t2, -641
                  sltiu        s7, t6, 113
                  sub          a3, a4, t4
                  and          a2, s11, t6
                  sra          gp, s5, ra
                  slli         a3, s0, 18
                  ori          t3, s5, 1450
                  slli         a0, ra, 22
                  nop
                  srli         s8, t5, 9
                  srl          a1, s6, a7
                  and          s3, t2, s9
                  xor          s7, s6, a3
                  ori          a4, sp, -114
                  or           t1, a4, a2
                  sltiu        tp, t5, -1870
                  sra          s1, a3, t1
                  slti         a4, a3, -180
                  ori          tp, t6, -207
                  addi         s11, t4, 1407
                  lui          tp, 982142
                  slti         s10, t3, -25
                  srli         s8, s2, 26
                  andi         s5, a6, 225
                  andi         a2, s5, -1605
                  and          t1, a7, t4
                  slli         ra, sp, 19
                  and          tp, a7, a2
                  xori         s4, tp, -848
                  sltiu        s2, s7, -1019
                  sub          s1, s10, s6
                  auipc        s10, 298212
                  slt          s9, s1, s0
                  auipc        s1, 891771
                  slli         zero, a5, 21
                  addi         t1, t5, 1894
                  srai         zero, s5, 27
                  nop
                  ori          s8, a4, -647
                  sltu         a7, t1, s5
                  xor          a0, t6, s6
                  ori          s11, a0, 23
                  slt          s6, a1, s11
                  srai         gp, s8, 7
                  slt          s8, a3, s2
                  sltu         a0, s0, s10
                  srl          s10, t1, t2
                  sltiu        zero, t4, 1000
                  srai         a3, s5, 21
                  srai         t4, t1, 8
                  and          s2, t6, a4
                  add          s1, s5, t3
                  slti         sp, s6, 1226
                  nop
                  srai         s10, s0, 8
                  andi         s3, a6, 1731
                  or           s7, s2, t2
                  sltiu        t3, s2, -339
                  ori          s5, t0, 289
                  auipc        s8, 630654
                  xori         a2, t6, 1262
                  and          sp, t6, a7
                  addi         t1, t3, 608
                  ori          a4, t4, -91
                  andi         s6, s11, -630
                  auipc        a3, 141316
                  srai         t3, s8, 31
                  sra          s9, a6, s6
                  sll          t6, a0, gp
                  srli         t1, s4, 10
                  lui          s9, 711746
                  sltu         s5, s8, ra
                  add          a5, a1, s2
                  srai         ra, a7, 2
                  sll          a5, t5, t5
                  xor          s11, t3, tp
                  slt          ra, s6, s8
                  add          s1, s3, s8
                  lui          a3, 514616
                  slli         t4, t3, 22
                  or           s11, s5, gp
                  srai         s4, a3, 30
                  srli         t4, a7, 25
                  xori         gp, a6, 626
                  ori          tp, tp, 1618
                  slti         a3, t1, 510
                  xor          a4, t1, ra
                  sub          t4, a2, t0
                  nop
                  xori         zero, s1, -158
                  srli         t6, s9, 0
                  slli         s11, t4, 28
                  addi         a1, t5, -356
                  ori          s7, zero, 517
                  slti         s1, ra, 932
                  srli         gp, s7, 11
                  auipc        a4, 403763
                  sltiu        ra, t3, -436
                  sub          a2, s1, s11
                  sra          t6, ra, s0
                  slti         s0, t5, 1904
                  ori          a2, zero, 1115
                  addi         s2, a2, -1922
                  lui          t5, 662424
                  sra          sp, a5, a5
                  xor          s7, t3, s6
                  slt          t3, tp, s4
                  or           t6, s5, s11
                  or           t6, t5, s10
                  addi         s6, s0, 614
                  addi         s4, t5, 846
                  addi         zero, s1, -604
                  auipc        sp, 156942
                  sra          s3, s4, s4
                  ori          a3, t0, 1138
                  addi         s9, s3, -1824
                  srli         s2, t3, 8
                  ori          s7, s11, -1139
                  xor          t5, a5, a3
                  sra          a0, tp, t2
                  addi         t6, t2, 1143
                  and          a1, t0, t3
                  lui          s5, 660278
                  srli         t5, a1, 26
                  add          s0, s2, t2
                  ori          s9, s11, -413
                  ori          gp, gp, -208
                  srli         zero, s10, 9
                  srai         s0, s7, 22
                  auipc        tp, 206136
                  sra          t5, s1, a7
                  lui          t3, 450505
                  sll          a4, a1, a2
                  srl          t4, a7, a1
                  srl          s8, s9, s0
                  ori          a5, gp, -1197
                  or           s10, a6, a7
                  nop
                  addi         a1, sp, 499
                  slli         s9, a7, 16
                  xor          a0, a4, t5
                  nop
                  sll          t1, a4, s4
                  sltu         zero, s5, a3
                  sub          a3, t6, a7
                  sub          t6, t5, s9
                  srai         a3, t6, 24
                  andi         a1, s3, -1582
                  srl          s6, t3, a6
                  addi         s4, s6, 357
                  nop
                  nop
                  nop
                  add          tp, ra, a3
                  srli         s7, t1, 31
                  add          a3, t6, a0
                  sll          s6, a3, s8
                  lui          s3, 166403
                  xor          ra, sp, s3
                  and          a0, t6, s1
                  add          zero, s9, s6
                  xor          sp, sp, t6
                  slli         t5, s5, 28
                  xori         s8, s0, 1921
                  xor          ra, s5, t3
                  add          s3, s7, s11
                  sltu         s4, a0, zero
                  sltiu        s11, a0, -762
                  addi         s5, s0, -554
                  andi         s10, s6, 1166
                  xori         a4, a6, 427
                  srli         s6, t1, 24
                  slli         a0, t0, 27
                  xor          t1, s5, s6
                  sub          tp, a7, s9
                  sltiu        gp, s2, 1459
                  srli         t6, s4, 26
                  lui          s3, 176390
                  xori         s9, s8, 699
                  add          s8, a5, tp
                  or           a0, s5, sp
                  addi         s2, s7, -1145
                  nop
                  addi         t6, a2, -466
                  sltu         s11, sp, a7
                  addi         a3, s4, -1756
                  srl          s3, tp, s4
                  andi         s5, s8, 113
                  sra          s8, s3, s10
                  xori         a3, tp, 1284
                  auipc        sp, 547989
                  sub          s11, a1, a3
                  srl          t1, ra, s4
                  sub          s5, t0, t6
                  sltu         t4, gp, a6
                  auipc        s7, 411434
                  andi         t6, s8, 1712
                  and          a0, t3, t6
                  xori         s11, zero, 667
                  andi         s7, t1, -418
                  lui          t4, 456167
                  addi         t1, t1, -1008
                  sub          a0, a3, ra
                  slli         ra, a7, 21
                  sll          s2, t0, a1
                  lui          zero, 268913
                  sub          t3, a6, t3
                  sltiu        s7, ra, 2044
                  addi         s3, a1, 286
                  or           s5, s4, a3
                  xor          s1, t1, a0
                  and          t1, a6, s1
                  sltu         sp, t1, a2
                  sltiu        s2, s4, -1879
                  andi         a5, zero, 867
                  sra          tp, a4, a5
                  or           s8, s0, tp
                  xor          t4, a1, s10
                  nop
                  slli         t6, a2, 23
                  sub          s1, a5, ra
                  nop
                  srai         t5, t5, 9
                  sra          t5, a1, t6
                  xori         s10, s5, 640
                  or           a4, t4, tp
                  ori          tp, a5, -1533
                  srai         a1, gp, 8
                  slt          s1, a5, zero
                  xori         s8, t0, 1231
                  nop
                  or           s11, a5, s8
                  andi         gp, tp, -339
                  slli         s7, gp, 0
                  sll          tp, a0, ra
                  or           t1, s2, s8
                  xor          s6, t1, a2
                  xor          s4, a2, s0
                  nop
                  slti         gp, a5, -1578
                  srli         s11, t3, 0
                  sub          ra, t2, t5
                  nop
                  srai         s1, t5, 13
                  and          a5, ra, a3
                  xor          s0, s4, ra
                  andi         s8, a0, -1705
                  slt          s0, t1, s5
                  xori         s4, s1, 1178
                  add          zero, s0, tp
                  or           a2, a4, s0
                  add          s1, gp, t1
                  ori          t1, a5, 1763
                  ori          sp, a3, 1210
                  andi         ra, t4, 1041
                  srli         s6, t6, 28
                  sll          s8, s1, t0
                  srai         s2, s2, 19
                  srai         a7, s2, 3
                  nop
                  sltu         a3, s5, a3
                  slti         s3, s4, 924
                  sra          a7, a2, s2
                  xori         t4, t4, 356
                  sub          s7, t3, a2
                  and          a7, a7, gp
                  xor          ra, s1, s11
                  xor          a7, a2, a6
                  auipc        a3, 523961
                  sltiu        gp, t5, -586
                  sll          t3, a0, a3
                  nop
                  sll          a7, t4, s1
                  nop
                  andi         a2, t6, -238
                  slti         a4, s11, -1456
                  ori          s6, s7, -744
                  andi         s5, t3, 1008
                  sltu         s5, ra, a1
                  or           sp, t6, a3
                  srai         a4, t2, 10
                  ori          s7, a2, 830
                  ori          s7, zero, 1750
                  sub          s7, s7, a4
                  xor          t4, ra, s6
                  ori          a1, s10, 1473
                  sltu         a0, s1, s1
                  sltu         s8, a3, a0
                  sltiu        s7, s7, 416
                  or           s5, t4, s2
                  sltu         s10, a0, s2
                  add          gp, s9, ra
                  or           gp, s0, s8
                  nop
                  slti         a0, t6, 240
                  and          s10, a4, a1
                  sub          sp, s4, s1
                  sll          ra, s5, a3
                  slli         gp, tp, 29
                  sll          gp, s2, t0
                  or           zero, t6, s10
                  sltiu        s4, gp, -591
                  sra          s7, a7, a4
                  nop
                  slt          zero, a5, zero
                  andi         sp, t3, 1471
                  sll          s1, a0, s9
                  andi         s0, a4, 984
                  andi         tp, s2, -1878
                  sll          a0, t0, t1
                  slti         s8, t0, 582
                  add          s6, s9, ra
                  slt          t4, a3, a2
                  addi         a2, a4, -161
                  slt          zero, s7, t4
                  sub          s11, s0, a3
                  and          s8, zero, a0
                  sub          t1, t4, s10
                  srl          t4, s2, a1
                  xor          s10, tp, s7
                  slli         s9, s0, 23
                  add          t5, s7, s9
                  lui          sp, 867639
                  slti         t1, s2, -1553
                  slli         s2, sp, 6
                  srl          s11, a1, sp
                  slli         a7, s3, 29
                  ori          s3, a5, -1116
                  sub          t3, zero, a4
                  add          s11, s6, s0
                  srai         t4, a5, 25
                  sltiu        zero, t3, -214
                  slti         s0, s0, 1764
                  srl          s1, a1, gp
                  sltiu        s2, s3, -485
                  sub          s7, t6, s4
                  sll          s1, s2, gp
                  srai         t4, a5, 30
                  nop
                  addi         s1, t6, 2044
                  nop
                  ori          a5, a2, -1724
                  srai         s5, ra, 23
                  slli         s11, a0, 25
                  lui          s10, 166178
                  slli         s8, s3, 20
                  add          t3, t4, t4
                  auipc        gp, 317341
                  slli         s8, s2, 3
                  ori          s4, t0, -1477
                  slti         t3, a5, 1992
                  sll          t1, s2, s2
                  srl          t5, a5, s9
                  lui          s2, 228449
                  xori         zero, tp, -1689
                  sltiu        t6, s11, -266
                  sltu         s4, s6, s1
                  add          a7, s6, t6
                  add          s9, a4, a2
                  ori          a7, a7, 1709
                  slt          t1, s6, s4
                  srai         a4, t5, 21
                  sltu         t5, a0, s4
                  sub          a1, t4, t1
                  andi         a3, t4, 531
                  nop
                  lui          s1, 501019
                  slti         t5, s1, -532
                  slt          s11, s5, t5
                  ori          gp, a7, -229
                  and          s7, ra, t0
                  srli         t6, s5, 8
                  andi         a0, s3, -862
                  srai         t3, t3, 25
                  nop
                  srai         s11, a4, 0
                  nop
                  ori          s0, s4, 1036
                  or           s7, t5, s8
                  andi         ra, s0, 1779
                  or           zero, a0, s1
                  xori         s5, ra, -1386
                  nop
                  slli         s6, s4, 8
                  sub          s7, t6, a5
                  sra          a5, a0, t6
                  slti         sp, t6, 319
                  slt          t4, s6, a6
                  xori         s0, s4, -1749
                  addi         s8, tp, 659
                  sra          s3, s0, s0
                  and          s9, s6, s4
                  lui          zero, 171333
                  or           s7, t0, tp
                  nop
                  srli         tp, ra, 1
                  srl          s2, s4, s6
                  sltiu        s0, s11, 1218
                  slli         zero, s10, 15
                  slli         a1, t1, 29
                  andi         a7, s10, 384
                  nop
                  sub          s7, t1, s1
                  slti         t4, ra, 1310
                  sltiu        s2, a3, 836
                  xori         a4, a7, 1706
                  add          s1, s11, t6
                  andi         t6, s11, 971
                  xor          a7, s5, s1
                  xori         s8, a2, -485
                  ori          tp, t3, 1463
                  xor          s7, zero, a2
                  lui          s8, 589771
                  auipc        ra, 838844
                  srai         tp, s9, 12
                  sltiu        t4, t3, -184
                  srl          s3, s3, t2
                  xori         gp, t6, -1411
                  xori         s5, tp, 2035
                  sub          a0, t6, a5
                  srl          tp, s2, t0
                  srl          a4, gp, ra
                  ori          t1, s1, -541
                  xori         s2, a4, 1111
                  slti         s3, s6, 561
                  and          s3, t2, a0
                  or           zero, t5, a7
                  xori         a0, a7, 641
                  or           tp, a0, t6
                  xori         sp, a4, -1673
                  slti         zero, s5, -1555
                  add          s0, a0, a0
                  sll          s10, a2, s10
                  or           t4, s1, a5
                  ori          s6, t0, 1798
                  srli         s2, s10, 9
                  slti         t6, t3, 290
                  andi         s7, gp, 1745
                  slli         sp, t4, 31
                  srli         a7, s4, 15
                  or           t5, s4, s8
                  sll          s4, s1, gp
                  or           s8, t4, s6
                  nop
                  sra          s11, a7, s11
                  sll          a1, s1, a6
                  and          s6, t1, s10
                  addi         s6, a2, 868
                  srai         a5, a6, 20
                  srl          s11, s4, s7
                  and          a7, t1, a0
                  srl          ra, a0, a7
                  srli         ra, sp, 9
                  xor          a5, s8, s5
                  srl          a0, t2, s2
                  or           s3, gp, a3
                  andi         t1, s6, 932
                  slt          ra, s3, s6
                  sub          ra, s5, a5
                  nop
                  ori          s6, t3, 1186
                  lui          a3, 266320
                  and          ra, a1, gp
                  lui          sp, 783403
                  xori         a3, a2, 1107
                  andi         tp, t3, -1549
                  andi         t1, s3, -1728
                  sra          a2, s5, s7
                  ori          t3, a5, 51
                  slt          sp, t2, s11
                  srli         s10, t0, 25
                  srai         a4, s4, 9
                  add          a7, s5, a4
                  or           gp, s4, a3
                  xor          a4, s4, a2
                  ori          ra, a1, -820
                  sll          s4, a2, zero
                  sub          s6, s7, t3
                  sltiu        tp, t6, -1183
                  sltiu        ra, t6, -1742
                  sra          s6, a7, s2
                  ori          s0, t0, -1819
                  slt          a2, t6, s10
                  slli         tp, tp, 11
                  and          s0, s6, s7
                  xori         s0, sp, 111
                  nop
                  xor          tp, s0, a4
                  and          a7, sp, a7
                  and          a4, a7, s10
                  or           gp, s4, ra
                  srai         a7, s2, 24
                  sll          a0, s11, s5
                  sltiu        s6, t2, 1508
                  slli         zero, t2, 16
                  slti         s4, s11, 746
                  addi         t6, s5, -1012
                  srl          ra, a2, sp
                  nop
                  srai         t4, s8, 22
                  sltu         ra, s9, t4
                  xor          a5, s1, s0
                  lui          s4, 298362
                  srli         s2, s6, 27
                  nop
                  or           a5, s9, a6
                  sra          gp, sp, s5
                  addi         a7, gp, -682
                  slti         s0, s5, -107
                  srai         s11, a7, 26
                  sltu         s9, zero, s2
                  slt          t1, t4, t6
                  srai         t5, t2, 19
                  xor          s4, a7, zero
                  slli         t4, t1, 22
                  slt          a0, s8, s3
                  or           a5, t0, sp
                  srl          t6, t0, s9
                  and          s6, a6, s2
                  slli         t6, s5, 4
                  slli         a3, a4, 23
                  slli         a7, a3, 26
                  auipc        s4, 818059
                  sra          s3, t0, a2
                  sltu         t4, s3, zero
                  ori          s11, a1, -1117
                  srli         gp, sp, 19
                  srai         a4, s5, 18
                  nop
                  sltu         ra, s0, tp
                  or           a2, a4, a7
                  xori         t6, s4, -1324
                  auipc        a3, 427156
                  slli         s4, a5, 25
                  slt          s6, s8, s6
                  xori         s5, a3, 1501
                  sub          a4, t5, t6
                  ori          t5, a5, 2010
                  sltu         t1, gp, a3
                  and          s10, t0, s8
                  slli         s9, t3, 0
                  sra          s4, a4, s1
                  slt          s4, s0, t4
                  xor          s5, s7, t2
                  add          a3, gp, a5
                  srai         s2, t4, 15
                  add          s2, ra, t0
                  srai         s5, a4, 3
                  slti         a1, tp, 557
                  sltiu        zero, t2, 1522
                  slt          s7, t6, gp
                  slt          t4, a7, t1
                  srai         t1, t6, 8
                  add          a3, s5, s8
                  sll          gp, a4, s1
                  nop
                  andi         a5, t2, -431
                  slt          s0, sp, s7
                  xori         s5, sp, 845
                  srl          s0, t3, s7
                  sra          t1, tp, a0
                  sltu         t5, ra, a1
                  sll          a7, s1, tp
                  xori         sp, a7, -729
                  andi         a2, s4, -524
                  and          a7, s4, s6
                  srai         tp, s5, 2
                  andi         ra, s3, -2009
                  andi         a5, s11, -1077
                  slt          gp, a6, s9
                  sub          a3, tp, s2
                  add          a7, a0, s4
                  or           s7, s6, tp
                  srl          s5, s0, a7
                  slti         zero, s6, -468
                  nop
                  add          a2, a0, s8
                  sltiu        t4, s8, 177
                  srai         t5, s4, 8
                  slt          ra, s8, s9
                  andi         s10, t4, -461
                  andi         t1, t4, -357
                  andi         s7, s1, 277
                  slti         zero, ra, 1446
                  ori          a3, t0, 157
                  or           s10, t4, tp
                  srli         a7, s8, 29
                  srli         zero, s8, 24
                  slli         s7, s7, 21
                  xor          s5, s9, a6
                  sub          s2, s5, s11
                  slli         gp, t2, 19
                  srli         s11, a4, 4
                  sltiu        t1, t0, -1805
                  sra          a4, t6, sp
                  auipc        s1, 276215
                  nop
                  or           s9, s6, a3
                  ori          s8, gp, 120
                  sltiu        ra, a6, 1540
                  addi         s8, a2, -1208
                  sll          gp, t2, s10
                  auipc        s11, 855800
                  ori          a0, a5, 1011
                  slli         s3, s2, 15
                  or           t4, a0, t5
                  slt          a5, s6, a6
                  nop
                  andi         s10, s4, 1997
                  ori          t3, tp, -645
                  add          a4, t3, s9
                  slli         a1, zero, 12
                  sra          s10, a5, s7
                  addi         sp, t4, -88
                  add          s4, s4, t1
                  and          t1, a1, t5
                  slt          s8, s2, t0
                  and          a1, s10, a5
                  sltiu        s2, t1, -1493
                  sltiu        tp, a6, -1000
                  slti         t5, t3, 1088
                  sltu         zero, t6, t6
                  slli         t1, zero, 30
                  sub          s10, gp, s11
                  slt          gp, a6, a2
                  and          t1, s7, s10
                  slt          s2, s4, s5
                  lui          s5, 962856
                  sll          tp, t1, t3
                  auipc        s3, 444602
                  sltu         s1, s11, s0
                  sll          zero, ra, s2
                  or           t6, s1, a5
                  sltu         t6, t6, s11
                  srl          sp, tp, s5
                  addi         s9, a6, -2017
                  slli         s3, s2, 28
                  sltiu        zero, t3, 1355
                  and          zero, t2, s2
                  slti         s2, t5, -411
                  slt          s7, s0, s0
                  xori         a4, ra, -735
                  auipc        tp, 22952
                  sltu         s5, s3, s4
                  add          a3, t2, t1
                  andi         gp, zero, 1210
                  auipc        s8, 442964
                  sll          t1, gp, gp
                  auipc        s10, 470770
                  sub          s1, s8, a0
                  sub          t3, sp, a6
                  sub          a4, s11, t6
                  sll          sp, a1, s1
                  sra          s7, s5, t0
                  nop
                  auipc        a3, 245141
                  sra          ra, s7, a2
                  addi         s7, t5, -1295
                  nop
                  slli         a7, t1, 23
                  auipc        t1, 758482
                  sltiu        s6, a2, -716
                  sub          s3, a5, t6
                  and          s5, s4, a0
                  andi         a4, a6, 422
                  slli         s5, t5, 30
                  xori         a5, a7, -1881
                  addi         ra, s2, 1221
                  slli         tp, a0, 11
                  slti         s9, t5, 84
                  srl          a1, t1, s7
                  add          s1, t2, s7
                  nop
                  addi         a4, s5, 1451
                  srl          s3, a2, t1
                  and          zero, t5, zero
                  xori         a4, s10, 400
                  slt          tp, s0, s11
                  lui          t6, 52154
                  or           zero, a3, t4
                  srli         ra, s6, 8
                  or           t5, s7, s1
                  andi         s0, s8, -1451
                  sll          sp, a6, s4
                  slli         tp, sp, 15
                  srli         tp, a5, 15
                  andi         t4, a2, -413
                  auipc        a1, 687285
                  ori          s6, zero, 1816
                  sltu         s9, a5, a2
                  sltu         s9, s4, a0
                  sll          ra, gp, tp
                  nop
                  sub          sp, s5, zero
                  sll          t4, s9, s7
                  xori         s1, t6, 991
                  sltu         a4, s10, s1
                  slt          s10, t0, ra
                  srli         t5, s3, 15
                  slt          a7, t0, s11
                  add          s7, a4, a0
                  lui          t1, 891592
                  srai         a1, ra, 18
                  sra          tp, zero, s7
                  slli         s5, s0, 5
                  addi         t6, t4, -1292
                  sltiu        tp, s3, -1298
                  add          gp, s5, s5
                  ori          a7, s1, -847
                  sub          sp, t2, a1
                  slt          s10, s3, a7
                  or           a4, s10, s9
                  slli         sp, t3, 23
                  nop
                  sll          a5, t1, s4
                  and          t1, a2, a5
                  andi         s10, s5, 1296
                  xori         a0, tp, 1357
                  lui          zero, 866934
                  sll          sp, s8, t5
                  srai         tp, a6, 29
                  auipc        t1, 756845
                  xori         t3, s8, 685
                  ori          s3, s0, 1010
                  xor          s10, t2, s8
                  slt          s4, s6, a6
                  or           s7, a6, s11
                  andi         s10, s0, 2035
                  addi         tp, t2, -307
                  xori         tp, s3, -1807
                  sll          s7, s10, a3
                  slli         s10, s7, 29
                  xor          s9, t4, a4
                  srai         a5, a3, 27
                  slti         t4, t4, 598
                  srai         s4, s6, 29
                  add          a4, a7, t4
                  addi         a0, s9, 1023
                  xor          a3, s8, s4
                  sra          t4, a4, s4
                  srl          a1, s5, ra
                  sra          s11, gp, a0
                  andi         a5, t1, 2041
                  and          s5, s2, a3
                  srai         s5, t6, 9
                  sltiu        t4, s7, 18
                  slti         s0, s5, -1183
                  sltu         ra, ra, zero
                  auipc        s0, 96928
                  sltu         s0, t1, s11
                  nop
                  lui          s7, 566911
                  srli         t1, a1, 14
                  and          s11, s0, sp
                  sll          s11, sp, a4
                  nop
                  nop
                  sltu         a5, s1, ra
                  andi         ra, t4, -1907
                  andi         a5, t1, 133
                  addi         s8, s2, 1243
                  ori          s10, s9, 1729
                  add          t5, t4, a7
                  auipc        s6, 537497
                  add          gp, s3, a4
                  sub          s9, t5, t5
                  and          s4, a0, gp
                  slti         s6, s6, -1997
                  slli         s2, a3, 6
                  or           s3, a0, t5
                  nop
                  nop
                  add          t4, s7, s4
                  sll          t3, t3, t3
                  sub          sp, t6, a4
                  sltu         s6, t4, t0
                  slli         a5, a3, 21
                  slti         t5, s7, 605
                  add          a0, t0, t0
                  sltu         s8, a7, s10
                  add          gp, s9, a6
                  sltiu        a0, s2, 625
                  xor          s8, a0, t5
                  sra          t6, t4, t4
                  lui          a5, 95449
                  sra          s1, a4, s8
                  srli         s9, s6, 8
                  srai         gp, t2, 25
                  sra          s2, t1, s4
                  srli         t5, s10, 17
                  sll          a3, s6, t0
                  andi         s10, a2, 1339
                  sub          a0, s4, a0
                  sltu         gp, t1, zero
                  auipc        t4, 1000225
                  srl          tp, sp, t3
                  addi         s10, s6, 1042
                  slti         t6, a6, 1579
                  xor          a5, a2, zero
                  sll          a2, s11, s1
                  sub          t1, gp, a6
                  add          t1, s6, tp
                  ori          a1, t4, 1902
                  slt          s0, s7, s7
                  srl          s7, a4, gp
                  or           s4, s8, t3
                  sra          zero, a3, zero
                  slti         zero, s9, -936
                  addi         a7, tp, 305
                  nop
                  andi         t5, s3, 681
                  or           a4, t0, t6
                  nop
                  sll          a4, tp, a1
                  add          s6, s9, s2
                  sub          a2, t5, s4
                  slti         t6, t6, -965
                  sll          s5, t2, a7
                  sll          t1, sp, a4
                  or           a5, t3, s5
                  or           t1, s8, t4
                  nop
                  srl          s10, t6, s8
                  slli         t5, s10, 15
                  slti         t5, t1, 1586
                  nop
                  add          a7, zero, tp
                  xor          zero, zero, s0
                  auipc        s3, 513005
                  srli         s3, t6, 22
                  nop
                  xori         s6, a5, 1018
                  slti         a2, s0, 1981
                  and          a2, s11, t5
                  slti         s9, gp, -435
                  sll          t3, t0, s0
                  sltiu        tp, t4, 1512
                  sub          s3, t1, gp
                  xori         a0, s8, -1373
                  srl          s8, a2, t2
                  ori          t1, a5, 1670
                  srai         s9, s5, 19
                  lui          s8, 714219
                  slti         s2, ra, 1559
                  sll          gp, s0, s6
                  slli         tp, s1, 20
                  add          a4, zero, t2
                  sra          a5, t4, a4
                  srl          a1, a1, gp
                  sub          a1, s3, s9
                  andi         s4, s3, -1501
                  slli         t6, s4, 25
                  add          s2, t0, sp
                  auipc        a1, 581955
                  sub          s5, a7, a6
                  xor          sp, s3, a5
                  ori          a3, a0, 228
                  sll          s5, t3, s3
                  srai         s2, s1, 0
                  sub          zero, a1, s11
                  sra          tp, s4, s6
                  sll          a0, zero, t4
                  addi         s9, s2, -1908
                  or           t3, s4, a7
                  nop
                  slt          s8, a5, a1
                  addi         s9, s3, 2033
                  srl          s1, t4, a0
                  sub          a3, s11, s4
                  ori          sp, a4, 1349
                  xor          a5, a1, t5
                  add          ra, t2, a2
                  slli         a3, sp, 29
                  and          a0, a7, s10
                  slli         ra, s1, 17
                  xori         s5, t1, 1413
                  sll          a0, s8, a5
                  slt          a7, s10, s10
                  slti         a2, gp, -40
                  slti         s4, t2, -1151
                  sra          a5, gp, s1
                  and          t1, s6, a1
                  auipc        ra, 34778
                  or           sp, a5, s8
                  add          s3, sp, s0
                  add          t4, s0, s11
                  addi         s9, a0, 1193
                  slt          a1, s3, a1
                  and          a1, s3, t4
                  sltiu        t3, t2, 27
                  slt          a0, t4, t3
                  sltiu        a3, a5, -503
                  sll          s1, t1, a4
                  nop
                  or           a3, sp, t1
                  srli         s4, a7, 12
                  sra          a3, t5, s6
                  auipc        a3, 523259
                  sll          t5, t2, s5
                  srli         t3, s0, 29
                  andi         s7, s2, -666
                  srli         t1, ra, 26
                  xor          gp, zero, s9
                  auipc        ra, 1002895
                  or           s9, s2, t3
                  and          a2, s1, zero
                  xori         a7, s6, -1083
                  sltiu        t3, s1, 1530
                  auipc        a5, 640287
                  andi         a3, ra, -646
                  slt          s10, a4, s8
                  add          s0, s8, t5
                  srai         a1, s4, 11
                  srai         s7, gp, 17
                  nop
                  and          s1, sp, a1
                  add          sp, s5, t4
                  add          ra, t0, t0
                  slli         gp, s1, 0
                  sub          a1, s4, a0
                  sll          s4, t3, s4
                  or           s5, a7, s0
                  sra          t3, t6, a6
                  sltu         sp, s8, gp
                  srl          zero, s9, a1
                  sltiu        s10, s7, 1148
                  srl          t4, s10, t2
                  slt          t1, tp, t4
                  srl          t3, a7, gp
                  srl          a5, s7, tp
                  lui          a3, 351173
                  slli         a0, s2, 13
                  ori          a5, gp, -1392
                  xor          t6, tp, s8
                  auipc        t4, 357256
                  slli         s1, s11, 11
                  slti         s4, a5, 1752
                  nop
                  ori          a3, t5, 682
                  add          t4, s3, a3
                  andi         sp, a1, 1314
                  lui          s2, 498801
                  sll          s4, tp, a7
                  sll          t1, a6, t2
                  auipc        ra, 716457
                  srli         ra, s10, 30
                  slt          sp, a4, sp
                  lui          sp, 685017
                  xor          s9, s10, s0
                  slti         tp, s5, -1972
                  auipc        t4, 744623
                  add          a7, s2, s0
                  nop
                  slti         a3, sp, 963
                  nop
                  sub          a0, s3, s8
                  ori          a2, a4, -1818
                  srai         gp, a3, 31
                  xor          gp, s10, s5
                  andi         s1, t3, 608
                  and          t1, a3, a5
                  srli         s3, a0, 2
                  xori         a1, gp, 710
                  xori         s10, zero, 725
                  srl          tp, s3, a4
                  srai         s8, ra, 16
                  srli         zero, zero, 4
                  srai         s2, a1, 30
                  sll          a1, a5, ra
                  srl          ra, zero, s4
                  and          tp, a0, a2
                  add          sp, t3, t5
                  sll          t3, gp, ra
                  srl          t6, s0, t6
                  lui          t1, 711394
                  slt          s11, s7, t6
                  slti         s2, a3, -1477
                  sltiu        a2, a2, -1332
                  or           s8, t3, a1
                  sub          s3, sp, t2
                  srai         a5, a3, 14
                  slti         ra, s10, 255
                  slt          a4, s7, t1
                  addi         s6, t0, 1209
                  auipc        s4, 750299
                  srl          a2, s10, a0
                  sll          s2, t0, s7
                  xor          t4, t3, a3
                  slti         t6, s1, 900
                  xori         gp, zero, -1167
                  auipc        s0, 34794
                  add          a7, a7, a2
                  sltiu        a0, zero, 651
                  srl          s7, t6, ra
                  srl          t6, s9, t4
                  lui          t1, 404066
                  slt          t3, a1, zero
                  or           a3, s7, zero
                  srl          t6, tp, a6
                  ori          gp, ra, -339
                  add          zero, s6, s1
                  lui          ra, 403744
                  slti         t6, s8, 516
                  sltiu        s8, s11, 305
                  slli         t1, gp, 30
                  slli         a7, a4, 17
                  lui          t1, 416785
                  or           t1, s6, t6
                  slt          a3, t0, a3
                  sra          t3, a6, s5
                  xor          tp, gp, t4
                  sltiu        t5, a1, -1918
                  sra          ra, a5, t5
                  xori         t4, s11, 1340
                  srai         s9, a4, 16
                  lui          a5, 766225
                  srli         s4, s8, 23
                  srai         a7, a6, 15
                  xori         s0, s0, -303
                  or           ra, s7, ra
                  sra          a5, s6, tp
                  or           a4, a4, a3
                  add          t6, s7, s6
                  sub          a3, s8, ra
                  xor          s7, s2, t0
                  auipc        s8, 854776
                  sltiu        sp, s4, -781
                  slt          s2, t6, t5
                  slti         a2, a6, -1497
                  or           zero, zero, s9
                  ori          zero, a0, -1232
                  slli         s6, gp, 25
                  lui          s9, 726826
                  srl          s8, t2, t4
                  auipc        t6, 645245
                  add          a1, s7, s0
                  nop
                  or           t3, s6, s4
                  add          s8, t4, s9
                  sub          ra, zero, t6
                  sll          s7, s4, t3
                  add          s7, t5, a0
                  srli         s8, s7, 9
                  slli         zero, ra, 14
                  srl          s2, t5, t1
                  slti         a0, sp, 898
                  srli         t1, tp, 12
                  xori         a4, tp, -913
                  sltu         a1, s7, s5
                  andi         a0, t5, 251
                  srai         t3, a6, 2
                  auipc        sp, 291069
                  xori         s6, zero, -664
                  nop
                  xori         s2, a0, 1828
                  slti         s4, t6, 821
                  or           t3, a6, s2
                  or           s0, a0, s5
                  sltiu        t1, s9, -1737
                  nop
                  ori          ra, zero, -41
                  sll          a0, a0, s10
                  srli         a2, t5, 14
                  srai         s5, s11, 5
                  sll          s4, s10, sp
                  sub          t6, a3, a7
                  sltiu        s3, s0, -398
                  addi         s7, s6, 946
                  srai         a3, t2, 7
                  ori          a5, t0, -1430
                  sll          s2, s4, s0
                  slt          a5, t3, gp
                  xori         s0, s6, 166
                  sra          s3, a7, s3
                  add          s1, a0, t2
                  or           a3, s6, s7
                  xor          tp, t5, t0
                  lui          s4, 393871
                  nop
                  srli         s8, s11, 12
                  srl          a7, sp, a5
                  srl          a7, s8, a5
                  srl          a2, s5, s9
                  sltiu        zero, a7, 919
                  auipc        s9, 36159
                  srai         tp, a1, 23
                  xori         t5, s11, -653
                  sub          t6, a4, s4
                  slt          s3, t6, a0
                  sra          t1, t6, t5
                  or           a7, zero, t1
                  srli         s3, t0, 14
                  nop
                  or           ra, a0, s0
                  slli         s6, s8, 18
                  sra          t6, ra, t2
                  auipc        s2, 978763
                  xori         a5, s9, -425
                  sll          s3, gp, a0
                  or           tp, s7, t2
                  srl          ra, t2, ra
                  srl          t3, t1, t1
                  srli         s10, t1, 8
                  or           sp, t6, s8
                  sub          t4, a6, t2
                  slli         t6, gp, 13
                  sltu         s2, a4, t5
                  sltu         ra, a3, s1
                  srli         s9, t5, 11
                  addi         a3, s7, -70
                  srli         s4, s6, 27
                  sltu         tp, s3, a7
                  or           a4, s6, a6
                  slli         s2, s10, 16
                  sll          s1, a2, s4
                  add          a5, a5, a0
                  nop
                  sltiu        s7, s11, -138
                  nop
                  auipc        a2, 661135
                  xori         a3, s9, -1354
                  sra          s11, t5, sp
                  or           s6, gp, s5
                  sltu         s8, s11, s10
                  sub          s3, s5, sp
                  srai         zero, t0, 26
                  ori          ra, s11, -898
                  srai         a0, t6, 23
                  srli         zero, t4, 13
                  sll          a5, ra, s2
                  xor          t3, t2, a5
                  srai         a0, a7, 10
                  sub          s5, s2, a1
                  auipc        s1, 31020
                  sll          a5, s3, t1
                  xori         t6, s4, 449
                  ori          a7, t1, 857
                  xor          s0, s4, sp
                  addi         t3, s3, -1912
                  sltiu        a2, s2, -1989
                  lui          a1, 497206
                  auipc        s9, 126320
                  sltu         s0, t0, s10
                  slli         tp, a1, 24
                  sub          a7, a3, s5
                  add          zero, s0, a6
                  lui          s8, 242257
                  andi         s1, t3, 616
                  sltiu        s2, a4, 191
                  andi         s11, s2, -1258
                  andi         s11, t0, -207
                  sra          t5, a7, zero
                  lui          s5, 1006938
                  xor          a3, a3, s8
                  sub          s9, t5, t2
                  andi         s1, a3, -1228
                  slt          a0, a7, t6
                  andi         a4, a1, 1593
                  or           s11, a1, ra
                  slti         a3, s7, -1385
                  lui          a5, 585636
                  and          sp, s3, s9
                  srai         s2, s2, 3
                  and          s2, a4, s7
                  xori         tp, s2, -1579
                  srl          s0, a1, t5
                  xori         a0, s3, -1762
                  slt          tp, t1, ra
                  sltu         s0, t6, s5
                  or           t3, s7, s5
                  and          t6, s6, zero
                  or           t1, a5, t4
                  slt          s0, s4, t3
                  srl          tp, a5, s3
                  auipc        t5, 445355
                  lui          s11, 139305
                  srai         a4, s2, 14
                  slt          gp, a0, s10
                  slt          s5, t0, t1
                  srli         s8, tp, 23
                  xori         s0, s8, 2041
                  sub          ra, a4, a7
                  nop
                  sltu         a5, s9, s5
                  slli         gp, s0, 2
                  srli         sp, s6, 30
                  srli         s7, a5, 21
                  and          a1, s7, zero
                  srai         a7, s9, 15
                  nop
                  srli         t3, a5, 1
                  slt          s2, s8, t3
                  slli         tp, s3, 27
                  sll          a3, s10, s7
                  slt          s10, a1, gp
                  sltiu        s10, a2, 361
                  add          s8, a3, a2
                  sra          a7, gp, a5
                  xor          a7, s5, a2
                  addi         t1, t6, -345
                  srli         zero, a3, 22
                  srai         s9, a0, 27
                  and          s0, s11, t5
                  slli         t6, gp, 18
                  srai         s6, ra, 12
                  slti         t5, a7, 1684
                  and          tp, s2, s10
                  sra          gp, t0, s2
                  sll          a3, s7, t1
                  sltiu        s0, s11, 1502
                  add          s0, a3, s4
                  xor          a5, s0, t0
                  andi         t6, s0, 796
                  ori          t4, t1, 1565
                  slti         sp, s7, -954
                  sll          a4, s1, ra
                  srl          s1, gp, s5
                  auipc        s5, 552801
                  srai         s6, a4, 16
                  sll          a5, sp, s0
                  ori          gp, s7, -1070
                  or           s9, s0, a1
                  slt          s5, s7, a6
                  add          t6, t3, s11
                  sltiu        s10, a3, 649
                  slli         t6, s2, 6
                  xor          gp, s1, t6
                  sltu         a2, t0, a2
                  sltiu        s0, s7, -486
                  srl          s11, s9, s3
                  srai         t4, s3, 29
                  sra          t3, a3, tp
                  ori          s9, t2, -1430
                  addi         a5, sp, -1014
                  nop
                  add          s5, t1, t4
                  andi         s8, s4, -1894
                  and          s3, sp, a3
                  sltu         t3, t3, a6
                  slti         s11, t3, -817
                  srai         a0, sp, 14
                  and          t1, s9, a5
                  sltu         s11, t6, tp
                  lui          tp, 671260
                  addi         a0, s11, 302
                  and          ra, a6, s11
                  andi         t6, s0, -627
                  sub          s6, s1, a7
                  nop
                  srli         s10, tp, 2
                  or           t6, s7, t0
                  or           ra, ra, t3
                  sltiu        a0, s8, 1537
                  srli         s11, sp, 19
                  sub          a3, t3, s2
                  or           s2, a3, sp
                  ori          ra, ra, -992
                  srai         a1, s6, 16
                  slli         t1, t2, 4
                  addi         t6, s1, -1250
                  srli         s10, gp, 14
                  srli         zero, s1, 14
                  xor          gp, a2, a2
                  slti         t5, tp, 1510
                  or           s4, s1, t3
                  andi         zero, t3, 1671
                  xori         tp, s3, 475
                  xor          ra, a1, zero
                  slt          s10, t1, t4
                  ori          s2, s7, 1094
                  sltu         tp, a4, s5
                  sub          t4, gp, s7
                  lui          tp, 723209
                  sra          t6, ra, s1
                  sltu         gp, t1, s11
                  lui          sp, 352907
                  srai         t5, s11, 21
                  sltu         a0, t6, zero
                  srl          s6, s0, sp
                  addi         s0, ra, -932
                  sltu         zero, a3, zero
                  sub          s7, s1, zero
                  nop
                  xor          a4, s3, t4
                  and          a2, t5, a5
                  srai         t3, a1, 28
                  li           s4, 0xe467d05 #start riscv_int_numeric_corner_stream_19
                  li           a0, 0x0
                  li           s8, 0x0
                  li           s2, 0xffffffff
                  li           ra, 0x80000000
                  li           s9, 0x80000000
                  li           a1, 0x6c8eb74f
                  li           gp, 0xe86eaa8b
                  li           t6, 0x80000000
                  li           a3, 0x80000000
                  auipc        a3, 810166
                  nop
                  auipc        t6, 479871
                  nop
                  sub          a3, gp, a1
                  nop
                  add          a3, t6, s2
                  lui          s4, 611427
                  sub          a1, s4, s9
                  addi         a3, s9, -647
                  nop
                  sub          gp, t6, s2
                  addi         a0, t6, 1249
                  nop
                  add          a3, s2, a1
                  addi         s9, s8, 1116
                  sub          a1, a0, a3
                  addi         s4, s4, -411
                  auipc        s2, 975504 #end riscv_int_numeric_corner_stream_19
                  xori         s4, s2, -484
                  ori          s6, gp, 117
                  xori         t1, s10, -860
                  sra          s5, a1, a0
                  lui          a7, 537255
                  srl          ra, t4, a4
                  srai         a5, zero, 13
                  sra          t5, gp, a3
                  xori         a5, tp, -962
                  addi         s4, a1, 1153
                  slli         s1, a7, 13
                  xori         a1, s2, 1584
                  slt          a3, a3, s10
                  sltiu        zero, t0, 847
                  slt          a1, s9, s10
                  add          a7, s10, s10
                  sltiu        s0, s2, 923
                  sltiu        zero, s11, -1613
                  or           t5, s2, a1
                  and          s2, a7, a4
                  xori         s6, t6, 1755
                  and          a5, s5, gp
                  auipc        a7, 424541
                  lui          t4, 312018
                  slti         s1, t2, 1645
                  auipc        t4, 363853
                  srli         ra, s1, 23
                  sll          a1, t6, t5
                  nop
                  auipc        s8, 937190
                  sltiu        a4, s8, -1120
                  sll          a1, s9, tp
                  or           s7, s4, a0
                  auipc        tp, 952736
                  sll          s8, s8, s7
                  auipc        t1, 1044460
                  srai         ra, s10, 13
                  srli         s2, s0, 19
                  sra          s9, s4, t1
                  auipc        a7, 350775
                  srli         zero, s10, 14
                  srai         s8, t3, 23
                  sra          s3, ra, s10
                  sra          a2, a0, s1
                  sra          s0, a7, t2
                  srai         a2, zero, 22
                  lui          a7, 267876
                  lui          s0, 488140
                  lui          a5, 513093
                  lui          a5, 656384
                  ori          s4, gp, 496
                  srli         s6, t3, 30
                  srli         t1, s9, 3
                  xori         s2, t1, -1489
                  ori          t1, s5, -1305
                  auipc        t1, 956284
                  auipc        s3, 986763
                  or           t6, s4, a2
                  ori          a5, s10, -1747
                  lui          tp, 835877
                  sra          t5, s2, ra
                  srl          t4, tp, t5
                  addi         a4, t4, 1165
                  sub          s3, s10, s4
                  auipc        s2, 412167
                  nop
                  xori         gp, t2, 1538
                  sra          a1, a4, a0
                  slt          s10, t0, a6
                  lui          a1, 393067
                  sltiu        t6, tp, -411
                  lui          s2, 38673
                  andi         s8, a3, -1243
                  slli         s4, a1, 31
                  andi         s4, a6, -1953
                  nop
                  xori         s6, a4, -1813
                  or           s1, a5, t6
                  srl          s11, t4, t0
                  slli         a5, t1, 10
                  andi         t5, t0, -744
                  lui          ra, 373124
                  andi         s3, a6, -546
                  and          s1, zero, a3
                  andi         s4, s2, -967
                  slli         s8, gp, 6
                  xori         s7, ra, -2044
                  sltu         gp, s10, s5
                  ori          a5, s10, -1283
                  sltiu        zero, t0, -1305
                  andi         sp, sp, -227
                  xor          s0, tp, a7
                  slti         s0, s3, -1486
                  sltu         s8, s10, a0
                  slli         a2, s0, 29
                  slli         s8, s5, 25
                  addi         a0, t3, 1192
                  auipc        a1, 782512
                  and          gp, t1, s10
                  sltu         s0, s10, t1
                  srl          tp, t1, a4
                  slli         tp, gp, 17
                  sub          ra, t6, s2
                  auipc        s10, 753593
                  sra          s2, t6, t3
                  srai         zero, s6, 16
                  slti         s0, s4, 593
                  ori          s10, ra, 523
                  auipc        a2, 997176
                  lui          t3, 299695
                  nop
                  srl          a3, s4, s11
                  sll          a4, t2, s11
                  sltu         s2, a5, s7
                  andi         t1, s9, -371
                  xor          s2, s7, t6
                  xori         tp, gp, -753
                  lui          s3, 491847
                  srli         t4, s8, 4
                  sra          a7, s7, s1
                  slti         a7, a5, 1161
                  sltu         t4, a1, t6
                  and          a3, s3, s0
                  andi         tp, a0, 762
                  xor          tp, t1, s7
                  add          gp, t2, s11
                  srl          s3, s3, gp
                  sub          a2, a6, zero
                  xor          s0, gp, a7
                  srl          zero, t4, t1
                  slti         gp, zero, 1839
                  add          t3, s1, gp
                  addi         s1, s7, 1033
                  and          t6, t0, s5
                  xor          a1, s4, s9
                  sltu         s5, s4, s3
                  and          a5, a1, sp
                  addi         s7, s6, -654
                  or           ra, s4, sp
                  addi         t6, s3, -1767
                  andi         sp, gp, -1279
                  add          a2, s0, t6
                  andi         t6, t0, 22
                  auipc        tp, 596211
                  xor          s6, sp, a1
                  or           s9, a4, s0
                  srl          s2, s9, zero
                  nop
                  sltu         a3, s7, a7
                  srl          s4, t4, s4
                  sltu         s0, s11, s3
                  andi         a0, s5, -1612
                  auipc        sp, 193945
                  srai         tp, s4, 21
                  slti         a7, s9, 944
                  slli         a7, s0, 17
                  sltiu        s3, sp, -206
                  ori          ra, a2, -1046
                  sltiu        gp, a4, -1838
                  sub          sp, t2, gp
                  or           ra, t6, t4
                  srai         s11, a7, 7
                  addi         t6, tp, -787
                  and          s7, s1, t4
                  slt          ra, t6, s1
                  srai         s6, s10, 27
                  sll          t4, s8, s11
                  srli         s8, s7, 28
                  xori         s0, t4, -1930
                  ori          s10, ra, 749
                  ori          a7, t6, 1196
                  sll          tp, a2, t0
                  slt          zero, s4, s5
                  sltu         s7, s7, s7
                  ori          a2, a4, -1401
                  nop
                  slt          tp, a5, a3
                  xori         a5, a4, -1530
                  or           s11, ra, s8
                  srai         s2, s10, 0
                  srli         s3, gp, 30
                  sll          a5, s0, s0
                  lui          s11, 602682
                  sltiu        a5, t3, -1344
                  slti         t4, t6, 1258
                  addi         a3, a7, 341
                  srli         a1, a6, 27
                  srl          a3, t0, s8
                  sltiu        a3, t3, 499
                  or           s11, t1, a6
                  andi         a3, a1, 1987
                  addi         tp, s1, -1765
                  and          s6, tp, s10
                  auipc        t4, 28967
                  srli         s4, s0, 6
                  srli         a1, ra, 6
                  srl          a4, a0, s2
                  sltu         gp, sp, s8
                  xor          s5, gp, a2
                  andi         s9, s0, 1415
                  srli         s11, t3, 1
                  ori          s8, t1, -275
                  sll          t6, a1, s5
                  sltiu        t3, a1, -1634
                  srl          sp, gp, s11
                  slt          t1, a5, a3
                  srai         s1, gp, 0
                  slti         a4, a5, 755
                  sll          s5, s1, s3
                  andi         s9, s3, -915
                  xori         s7, s4, -1531
                  auipc        t1, 647681
                  slli         t6, s4, 18
                  lui          t5, 178189
                  sll          zero, t5, a6
                  sltu         zero, t2, a7
                  sll          sp, s3, t2
                  xor          a5, s7, t6
                  slli         tp, sp, 19
                  srai         a3, a7, 23
                  andi         ra, t5, -1900
                  sll          a5, a6, s0
                  and          a7, s4, tp
                  lui          s1, 936305
                  sltiu        s6, t3, -1026
                  xor          s10, t0, s5
                  add          s10, s11, s5
                  add          s5, s4, s10
                  xor          sp, gp, t2
                  srli         t4, s10, 15
                  lui          s9, 296041
                  sra          t1, a1, a0
                  slli         gp, s2, 9
                  srli         a1, sp, 31
                  addi         a3, gp, 173
                  srli         t3, ra, 5
                  slt          s5, a1, sp
                  ori          a0, s1, -1195
                  addi         t5, a3, -1604
                  srai         s9, s3, 16
                  xori         sp, s7, 1859
                  and          a1, a5, a0
                  sltiu        t3, s3, 1029
                  srai         s0, ra, 27
                  slt          s3, t1, a5
                  add          t6, s5, t2
                  slti         tp, tp, 860
                  srl          a0, tp, t2
                  addi         a2, ra, -885
                  srli         a0, gp, 24
                  xor          t3, t5, a4
                  sra          zero, s1, t4
                  andi         gp, s5, -1624
                  auipc        a1, 830114
                  slli         t5, s7, 24
                  srl          a4, ra, s8
                  andi         t1, s0, 1633
                  add          sp, a5, a3
                  or           a2, a4, t3
                  srli         t4, gp, 0
                  xor          a4, tp, s8
                  slti         ra, t2, 1865
                  slt          gp, s9, a4
                  nop
                  add          s2, gp, t0
                  nop
                  ori          s2, t1, 1209
                  xor          s1, a3, gp
                  srli         s0, tp, 9
                  sra          s0, s1, s11
                  auipc        gp, 1025115
                  slti         ra, t3, -904
                  slt          gp, s1, a0
                  sll          s9, sp, a7
                  andi         a0, s3, -1615
                  addi         s3, a6, -1223
                  slli         tp, a6, 12
                  slli         s1, t3, 21
                  xori         t3, a7, -276
                  sra          a1, ra, s2
                  slti         a0, a1, 1810
                  sra          zero, a3, a4
                  auipc        t1, 306422
                  xor          t1, s11, s11
                  slti         sp, a5, -1521
                  srli         s1, s1, 25
                  sltiu        s7, sp, -1041
                  slti         s1, t0, -619
                  xori         s1, s1, -876
                  srli         s10, s8, 9
                  lui          a3, 361680
                  srl          s2, tp, t4
                  xor          s7, t1, ra
                  lui          a3, 1047776
                  or           sp, s9, s3
                  sub          s1, s5, s7
                  sub          s8, s2, s8
                  xori         s6, s2, -659
                  andi         s9, sp, -354
                  lui          s8, 766667
                  slli         s1, t4, 3
                  sub          s1, s4, s3
                  add          ra, s0, s6
                  sub          s5, gp, t5
                  slti         t1, a3, 1419
                  lui          a1, 378835
                  slti         t3, a0, -1466
                  srl          a3, s5, s6
                  auipc        s9, 601497
                  sra          ra, s1, gp
                  sltiu        zero, gp, 1951
                  slt          s8, a2, t3
                  sll          s3, sp, s1
                  slli         gp, a1, 25
                  ori          s5, a0, 278
                  sltu         s2, s3, a6
                  ori          s6, s9, -255
                  sll          a1, a5, s11
                  lui          zero, 858252
                  and          s7, gp, s10
                  slti         a7, s6, 981
                  andi         s9, s9, -1063
                  srai         t4, gp, 17
                  sll          t5, a6, s8
                  sltu         t6, t0, s11
                  sll          t1, t2, s0
                  slli         s7, t2, 12
                  add          s7, s10, t6
                  xori         a3, s0, -12
                  andi         s2, s3, 617
                  xori         tp, a0, 201
                  srli         s1, a5, 10
                  xor          s7, sp, t2
                  slt          s4, s6, s2
                  xor          s7, a1, s3
                  sra          t5, a5, s7
                  xori         s3, zero, 78
                  srl          tp, s4, s9
                  srai         t3, t0, 5
                  ori          a1, sp, -955
                  sltu         gp, s7, t3
                  slti         s8, s1, -605
                  lui          s0, 35228
                  sub          tp, s9, a0
                  srli         t6, a6, 11
                  sltu         zero, s7, gp
                  ori          s6, sp, -1823
                  lui          s2, 365566
                  slt          a3, s2, a0
                  xor          s7, a5, t6
                  sltu         t5, sp, t1
                  auipc        s3, 34112
                  add          a7, tp, ra
                  xor          s8, t5, zero
                  srai         s11, a7, 28
                  sra          s5, t3, a0
                  sltiu        s7, a5, 1892
                  slti         s2, s10, -245
                  srai         tp, t1, 5
                  sltu         a3, zero, s9
                  addi         tp, a4, -1481
                  sll          a3, s2, t0
                  and          s1, s2, a3
                  xori         t4, t3, -148
                  nop
                  xori         a5, a6, 76
                  slt          t3, gp, s4
                  srai         s6, t0, 12
                  srl          tp, t6, s9
                  auipc        a2, 536345
                  sll          s0, t2, s3
                  xor          s9, s3, s4
                  srli         zero, a7, 1
                  addi         s2, t3, 930
                  sub          t3, a7, a2
                  add          s5, t3, a6
                  ori          zero, s2, 1643
                  and          s11, a6, a6
                  ori          a2, a4, -1716
                  lui          s5, 567957
                  srai         s8, s4, 24
                  sltiu        t4, a6, 1062
                  sll          t4, sp, s11
                  andi         s5, a7, -2023
                  slt          s10, s6, s10
                  srli         s3, s11, 6
                  srai         s4, a1, 24
                  sltiu        a3, s7, 7
                  or           ra, s5, s5
                  sub          t3, t1, t4
                  add          t4, s5, s8
                  slli         t4, ra, 30
                  slti         zero, s8, 1191
                  auipc        t1, 325647
                  sll          s9, a1, t0
                  slli         s4, a4, 14
                  addi         s2, s4, -672
                  addi         tp, s9, 1567
                  addi         ra, ra, -67
                  slti         a3, t6, 1251
                  nop
                  sub          s2, t0, s11
                  auipc        s8, 605338
                  andi         a3, a7, -143
                  andi         a7, ra, -1331
                  sltu         a7, s6, s8
                  sra          gp, a3, t2
                  ori          s11, tp, -1864
                  srai         s2, a3, 4
                  slt          sp, s7, t0
                  sub          a0, t1, s0
                  sll          a3, s8, t6
                  srli         gp, gp, 16
                  srai         tp, s0, 26
                  or           gp, t6, s8
                  andi         s11, zero, -1785
                  or           s5, s1, s8
                  slli         gp, t2, 5
                  xor          a3, t4, s6
                  add          t6, a6, t1
                  sltiu        zero, s11, 305
                  xor          ra, t4, s6
                  andi         tp, s0, 11
                  or           t3, t1, s2
                  srli         s11, s11, 4
                  sub          zero, ra, s0
                  slti         a5, a3, 1646
                  sra          a4, t0, t1
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_26
                  li           s10, 0x0
                  li           s1, 0x0
                  li           s9, 0x80000000
                  li           a7, 0x373314b3
                  li           s3, 0xffffffff
                  li           t5, 0x48167ebf
                  li           a4, 0x7ef2ff8b
                  li           a1, 0xff6b32a
                  li           a0, 0x50c360e7
                  nop
                  auipc        t6, 330974
                  lui          a1, 430688
                  add          t6, a7, a7
                  auipc        s3, 346995
                  sub          s1, s10, s9
                  auipc        a4, 783438
                  auipc        s10, 538598
                  sub          s9, a0, t5
                  auipc        a1, 746631
                  addi         a7, a1, -1834
                  add          s9, t5, s10
                  lui          s9, 73236
                  lui          a7, 701269
                  add          s10, a0, s1
                  nop
                  sub          t6, s3, a0
                  nop
                  lui          t6, 1400
                  nop
                  sub          t6, a7, a0
                  add          a4, s3, s1
                  add          t5, t5, a0
                  lui          a7, 815506 #end riscv_int_numeric_corner_stream_26
                  ori          a5, s6, 1645
                  ori          s3, t6, -577
                  slli         t1, t5, 16
                  slli         a1, s2, 9
                  sltu         t5, t4, t0
                  slt          s10, t2, s3
                  srli         a3, t2, 30
                  andi         s11, t5, -1253
                  and          a3, a3, t2
                  sub          s11, s5, s8
                  add          a2, s3, ra
                  slli         a3, t2, 24
                  slli         zero, a1, 16
                  and          a3, t3, ra
                  srl          zero, s0, t4
                  or           tp, a1, s9
                  sll          s4, s11, tp
                  slt          a1, sp, tp
                  sll          sp, s5, t5
                  srai         a4, a3, 17
                  slli         a1, s9, 11
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s2, 0xffffffff
                  li           s6, 0xffffffff
                  li           s3, 0xffffffff
                  li           sp, 0xffffffff
                  li           t3, 0x0
                  li           a1, 0x80000000
                  li           a7, 0xffffffff
                  li           s9, 0xffffffff
                  li           s0, 0x4cd6caec
                  auipc        t3, 1005427
                  nop
                  auipc        t6, 234893
                  add          a7, sp, s0
                  lui          sp, 600818
                  nop
                  add          sp, t6, s0
                  lui          s6, 83181
                  auipc        a1, 926748
                  add          a1, sp, s0
                  add          sp, s0, s9
                  sub          t3, a1, s3
                  sub          a7, sp, a7
                  addi         t3, s2, -101
                  auipc        a7, 957578
                  lui          s9, 1048435
                  lui          s3, 889597
                  lui          s2, 597933
                  auipc        s6, 1857
                  nop #end riscv_int_numeric_corner_stream_3
                  auipc        s1, 793084
                  sub          t4, s1, zero
                  addi         zero, s9, 1737
                  ori          s1, a3, -589
                  slli         sp, zero, 17
                  addi         s8, a7, 457
                  andi         s1, s9, 2042
                  sub          s5, a7, s0
                  andi         a0, tp, -335
                  auipc        s3, 800779
                  sub          t4, gp, s1
                  srai         zero, s3, 0
                  andi         ra, s11, 1014
                  auipc        sp, 306885
                  srli         a2, t3, 27
                  sltiu        s6, a6, -1090
                  auipc        t4, 324907
                  nop
                  slt          gp, s1, s7
                  sub          t4, tp, s4
                  auipc        s1, 897569
                  slli         s11, t4, 4
                  srai         tp, a4, 8
                  srai         s11, s11, 27
                  and          a1, s5, s2
                  lui          s5, 150526
                  lui          t3, 595568
                  sra          t5, a3, s9
                  srli         t4, a7, 16
                  sub          a4, s11, a2
                  nop
                  ori          a0, s7, -804
                  srai         s7, s9, 9
                  xor          s7, gp, s2
                  sra          s11, t6, s10
                  sll          s1, s0, t3
                  nop
                  sub          a5, s0, a2
                  xori         t3, t2, 1674
                  xori         s1, s2, -1498
                  sltu         a7, s11, a7
                  ori          t1, a4, 486
                  xori         t1, t2, 1419
                  sra          t4, s6, a3
                  srai         t1, t2, 24
                  sub          sp, zero, t6
                  srai         tp, a1, 19
                  sll          s3, gp, t0
                  slti         zero, t0, -1135
                  andi         s11, s3, 1434
                  or           t1, s1, s2
                  slti         s0, a1, -366
                  and          a3, ra, s0
                  sll          a7, s6, a1
                  xori         a5, a3, -1828
                  auipc        a5, 1021772
                  sll          ra, s1, tp
                  ori          s6, t1, 1140
                  or           s11, a3, a3
                  andi         gp, s9, -975
                  sub          s11, s0, s9
                  add          ra, s8, a1
                  srl          s8, t3, a2
                  srai         s4, s3, 19
                  slt          tp, a1, a4
                  ori          s10, t2, -1801
                  andi         a4, a3, -433
                  sltiu        a7, t5, 946
                  sltiu        a5, a2, 1648
                  slti         s7, t6, 836
                  xori         t6, s5, -37
                  lui          s2, 766294
                  add          a7, t0, t6
                  slti         a5, t0, -1073
                  slt          t4, a3, a2
                  or           s5, a1, t2
                  xor          tp, s1, t3
                  sll          a5, a7, t5
                  sll          t3, zero, s2
                  xori         s3, a7, 1654
                  sltu         a3, tp, a2
                  sub          a5, s9, gp
                  xori         a7, a7, -1595
                  and          t5, a3, t1
                  xor          tp, gp, t5
                  srli         a3, s10, 18
                  addi         a4, a2, 783
                  sltiu        s2, s0, 936
                  srai         s1, t5, 24
                  sra          s2, a4, s11
                  add          s3, zero, a1
                  srl          s8, s10, s6
                  srl          s0, s4, s11
                  auipc        s1, 499693
                  lui          tp, 336181
                  slti         a0, s11, 97
                  slti         s0, s9, -510
                  auipc        s5, 729487
                  sll          s10, sp, t2
                  slt          s9, t3, zero
                  ori          t5, t2, -1840
                  add          s0, s4, s7
                  sltu         s9, t1, s4
                  xor          s4, t3, s10
                  sltiu        t1, t0, 796
                  andi         s9, a4, 842
                  add          gp, t6, s9
                  sltu         zero, a4, a3
                  auipc        a3, 940020
                  and          s0, t4, a6
                  slli         s0, s11, 22
                  sub          a4, t5, a0
                  andi         tp, a4, -260
                  xor          zero, ra, a5
                  andi         sp, a5, 591
                  auipc        s0, 613070
                  nop
                  slli         t3, s4, 13
                  slti         a0, zero, 1438
                  sra          t4, tp, a3
                  and          tp, s10, s0
                  and          zero, ra, a0
                  addi         gp, s11, -1453
                  sll          a0, s1, t6
                  sub          s7, s11, s10
                  srli         ra, t3, 2
                  xor          t3, s5, t5
                  sltiu        t5, a1, 1227
                  sll          sp, sp, s5
                  and          s7, ra, t3
                  add          s3, zero, a5
                  xori         t6, s5, 1742
                  and          s11, s5, s1
                  sub          a1, t1, s3
                  xori         s10, t0, 686
                  srli         s5, tp, 5
                  srl          ra, s10, s6
                  slli         s6, s3, 9
                  andi         t1, s10, -1049
                  xor          sp, a1, t4
                  srli         s8, s10, 10
                  auipc        s3, 913524
                  sll          a5, s6, t0
                  sll          t4, tp, s2
                  lui          s10, 380753
                  sltu         ra, a7, s8
                  sub          a0, a1, s6
                  sub          s3, t1, ra
                  sub          a1, sp, a1
                  sub          zero, a4, tp
                  nop
                  srai         a7, s8, 1
                  sll          s11, s6, s0
                  sll          s2, s0, a0
                  srai         s0, t3, 21
                  auipc        gp, 354054
                  or           a4, s2, s6
                  sll          s3, t0, a5
                  sll          a5, a1, t5
                  sltu         s8, t2, t4
                  or           ra, t3, s10
                  and          a2, a6, s3
                  sll          a2, a2, s1
                  slli         a5, s10, 13
                  srl          gp, s7, s3
                  srai         sp, t4, 25
                  sra          s9, s0, a1
                  slt          s7, a2, t3
                  sll          t1, a0, t5
                  sra          s6, a0, a4
                  ori          t6, s3, -497
                  sra          tp, s1, s7
                  sra          a7, tp, s7
                  auipc        t4, 199107
                  slli         s8, s6, 3
                  add          s9, t1, t3
                  xor          s1, a7, a4
                  xor          a2, t6, t2
                  xori         s3, s5, -1517
                  sll          s5, s0, a5
                  add          s5, s8, t5
                  sltu         s10, t6, t4
                  sra          s5, t4, s3
                  lui          s8, 721698
                  lui          t3, 606258
                  xori         a0, s1, -1948
                  ori          a3, s8, -822
                  sltu         s8, t0, sp
                  xori         a7, t6, 1940
                  xor          s2, s6, t6
                  srl          sp, s1, t1
                  or           s1, s9, t6
                  slt          t6, s4, a3
                  sltu         tp, a7, a6
                  sll          s8, t4, sp
                  sub          t6, tp, tp
                  lui          s11, 82812
                  xor          s9, t0, s6
                  auipc        t6, 862872
                  srai         t4, s8, 6
                  auipc        a3, 770661
                  srli         s3, s3, 24
                  slti         tp, s7, 1080
                  auipc        s2, 625407
                  srl          s8, a6, ra
                  slli         a2, a5, 27
                  or           t3, s9, t5
                  slli         s5, tp, 13
                  slli         s8, s9, 26
                  lui          a5, 411869
                  auipc        tp, 710893
                  lui          a2, 959142
                  slt          tp, s11, a1
                  sll          a4, t5, a7
                  lui          t1, 301814
                  slli         s2, t4, 19
                  sltu         a3, a4, zero
                  andi         a7, s2, 2044
                  xori         t6, a4, 1945
                  sltiu        a7, tp, 1450
                  and          s5, s1, s6
                  nop
                  srai         t1, t6, 18
                  addi         a4, t5, -114
                  lui          a7, 964596
                  sltiu        gp, s3, -2030
                  sll          gp, t6, s10
                  sll          s1, gp, t2
                  srl          a7, t4, s2
                  or           s2, t2, s0
                  addi         tp, s11, -1436
                  xori         zero, a3, -284
                  add          s4, t3, t0
                  nop
                  add          t1, tp, ra
                  srl          a4, a6, s11
                  xori         a3, s10, 1314
                  srai         s5, t6, 10
                  auipc        sp, 672872
                  lui          a4, 709291
                  slt          s11, t3, sp
                  sltu         s3, s2, s4
                  nop
                  sltiu        s8, s7, 614
                  srai         gp, s6, 4
                  and          a7, t6, zero
                  slli         s6, zero, 6
                  andi         zero, s11, -649
                  slli         a5, a5, 4
                  add          s7, s9, s6
                  slli         s7, s3, 3
                  sra          a3, s1, s0
                  sra          s9, t5, t5
                  sltiu        s7, s6, 1557
                  sltu         s5, a7, t3
                  sltiu        s1, a4, -493
                  sltu         s7, gp, s9
                  sltiu        a7, a2, -1402
                  slli         t3, s6, 1
                  srl          t1, s5, t2
                  xor          t1, t5, t0
                  and          gp, a5, zero
                  sra          s3, a7, a6
                  ori          a3, s8, 696
                  sltiu        a5, s8, 1073
                  sltu         t5, t2, tp
                  sll          a4, s8, a5
                  xori         sp, s5, 1377
                  srai         a3, s6, 15
                  srai         a2, a3, 18
                  sub          s4, s9, s0
                  addi         t3, s9, 524
                  sub          a1, gp, zero
                  xor          a4, s2, gp
                  xori         a2, ra, 691
                  and          s8, sp, gp
                  sltu         s10, t6, a7
                  or           sp, t6, s4
                  lui          a7, 775960
                  slti         zero, a4, 2025
                  srl          t1, a4, t1
                  sll          s5, ra, a4
                  or           t1, a5, a7
                  slti         s11, t2, 1820
                  srai         zero, gp, 17
                  and          t1, t6, t1
                  or           t6, t2, s8
                  srli         tp, s3, 25
                  sub          s3, sp, a3
                  srl          ra, s3, t4
                  xor          s1, t0, s10
                  and          sp, t1, t6
                  srl          s3, tp, t3
                  sub          s4, a7, a5
                  srai         a7, ra, 29
                  xor          sp, t4, s2
                  srl          s0, s3, s7
                  sra          s2, s7, s4
                  srl          a4, t0, sp
                  xor          ra, sp, a2
                  slti         t3, s5, 1503
                  slt          t1, s4, tp
                  or           s10, a6, t3
                  srai         a7, s10, 23
                  sll          s2, t0, a4
                  sub          s6, tp, s2
                  lui          s10, 488900
                  slt          a1, s11, s7
                  slt          gp, t2, t6
                  sltu         s8, s6, s9
                  srai         t1, a3, 31
                  auipc        s7, 821909
                  srl          s8, s1, s9
                  xori         gp, t4, 1460
                  sltu         s9, t4, s11
                  and          a1, tp, a0
                  andi         zero, a4, -1252
                  and          sp, t4, t2
                  srli         s7, s9, 8
                  auipc        s5, 504842
                  and          s2, a0, s1
                  sltu         a4, s8, s8
                  srai         s10, s11, 17
                  slli         s4, t6, 21
                  slt          a7, s10, s4
                  andi         s6, t5, 377
                  sub          s5, a7, t1
                  nop
                  xor          tp, s0, a7
                  add          s5, a2, a7
                  sra          zero, t0, t1
                  lui          a0, 504246
                  and          s2, s3, t1
                  lui          s6, 356363
                  sub          a5, a4, t3
                  slli         a3, s11, 21
                  sltiu        a3, gp, -320
                  srli         sp, t4, 21
                  auipc        t5, 795049
                  sll          a5, s2, s9
                  auipc        a5, 95131
                  ori          t1, a5, -377
                  slti         t5, s3, 1543
                  lui          a0, 24962
                  sub          t6, t4, t1
                  xor          a3, tp, s8
                  sub          a5, a7, a1
                  slti         t4, s8, 853
                  lui          tp, 507502
                  srai         t3, s11, 4
                  sub          tp, t5, a4
                  sltiu        s8, s2, -1628
                  srl          s0, s5, t3
                  srai         s5, t6, 11
                  srl          s0, s3, s9
                  srli         ra, a5, 6
                  andi         a0, s9, -318
                  sll          ra, a6, s7
                  slli         s1, s10, 16
                  slli         a7, t4, 13
                  andi         a0, t4, -1379
                  sltu         a1, s2, zero
                  or           s1, s8, s1
                  sub          a3, s3, t2
                  sra          tp, s11, t6
                  auipc        s6, 398985
                  sltiu        a7, t6, 227
                  nop
                  slt          s2, s5, s5
                  srli         a7, sp, 1
                  add          s8, zero, a4
                  auipc        t1, 967560
                  sltu         gp, t3, t5
                  slti         s7, t5, 1685
                  srl          zero, t6, t5
                  slli         a5, t2, 22
                  ori          s2, s9, 2046
                  sltu         zero, s2, a4
                  ori          s6, a5, -1000
                  sll          s5, s6, gp
                  xor          a3, t2, t0
                  sub          t6, s0, a5
                  lui          zero, 503160
                  andi         a3, s11, -816
                  xori         a0, a1, 603
                  add          a0, s5, a4
                  slli         s2, s8, 8
                  slli         s3, s5, 14
                  slti         a5, zero, 1254
                  sltu         s11, t4, t4
                  slti         a7, a7, -1589
                  add          s1, s4, s2
                  lui          ra, 50271
                  and          s4, t2, s0
                  add          a2, ra, s9
                  slt          s2, s0, t2
                  or           sp, s9, tp
                  slt          a1, a4, a6
                  slti         zero, t1, 336
                  andi         a0, s6, 1501
                  srai         s7, a1, 16
                  sltu         t6, s1, a4
                  sub          s5, s2, a1
                  addi         t3, t5, 646
                  sub          t4, s10, s0
                  slt          zero, t4, t5
                  srli         t4, a1, 7
                  srli         s10, s9, 15
                  slli         sp, t1, 4
                  srl          s10, t2, s10
                  srl          a3, gp, a3
                  addi         s11, a6, 1905
                  andi         s8, s9, -1530
                  lui          s8, 150473
                  xori         s6, a4, -834
                  addi         sp, zero, 1700
                  srli         s6, a5, 10
                  andi         t1, s6, 220
                  andi         t1, a4, 1029
                  slt          s4, s9, tp
                  andi         s7, s10, -1236
                  lui          a4, 503889
                  lui          s5, 620397
                  sll          zero, s0, s6
                  xor          t3, tp, t6
                  srli         s8, a3, 8
                  and          tp, tp, sp
                  and          t5, tp, t1
                  slti         a1, gp, 661
                  xori         t6, a0, -542
                  srai         t1, s6, 0
                  sll          s4, s2, tp
                  xori         a2, s7, -1953
                  srl          gp, s3, sp
                  sra          s4, sp, a6
                  srli         s4, gp, 5
                  slli         s6, t6, 14
                  auipc        s4, 737379
                  or           tp, s8, s2
                  srl          s1, a7, a7
                  sltu         a7, s10, a2
                  sub          t3, a7, sp
                  or           gp, s7, s9
                  xor          a0, gp, sp
                  srai         s0, zero, 9
                  ori          a1, a2, -2007
                  srl          s4, t5, gp
                  add          s1, ra, t6
                  auipc        a0, 330372
                  lui          s6, 645831
                  lui          ra, 301431
                  slt          a4, s6, zero
                  slt          s0, ra, s2
                  sra          gp, s1, t6
                  srli         s5, a2, 8
                  slti         s4, t3, 268
                  slli         s9, s1, 17
                  lui          ra, 120976
                  and          a1, t1, sp
                  and          s4, tp, s8
                  add          a7, s11, s6
                  lui          s7, 825420
                  srl          s11, t3, t4
                  ori          a2, t4, -1823
                  sltiu        zero, s8, -1011
                  slt          s10, a5, t2
                  xor          a5, t1, a1
                  sra          s0, a2, a7
                  ori          gp, s1, 1036
                  xori         s0, t6, -1072
                  and          ra, t3, s11
                  sub          a3, s9, tp
                  and          t4, t6, zero
                  lui          a1, 485716
                  sra          s0, s8, t0
                  xor          a3, t0, sp
                  srl          s6, ra, t5
                  sltu         s4, a5, a0
                  slti         s4, a0, -25
                  sltiu        t6, s9, 943
                  add          t4, t6, tp
                  xor          s5, a4, s2
                  slli         s7, t2, 2
                  srli         s3, gp, 5
                  sll          t6, s9, s4
                  sra          t6, tp, s11
                  slli         s3, a7, 7
                  auipc        s2, 560085
                  srai         s11, s5, 29
                  sub          s6, t2, s11
                  slti         t1, s3, 902
                  slt          s8, s3, tp
                  addi         a1, s10, -942
                  or           s10, t6, t0
                  nop
                  srl          t3, s6, s6
                  srai         ra, s11, 26
                  srl          ra, a7, a3
                  or           s2, s5, s5
                  andi         s9, t6, 1022
                  or           s10, a4, s11
                  sra          tp, t4, s1
                  sltu         t5, t3, t3
                  srai         gp, gp, 28
                  ori          a3, s9, -1583
                  nop
                  srai         s3, s6, 11
                  nop
                  lui          a7, 216177
                  xor          s2, s4, a1
                  srli         a5, a2, 22
                  or           a2, s1, s7
                  slti         s7, zero, -1738
                  srl          a5, a5, t5
                  srai         gp, a6, 19
                  auipc        ra, 317902
                  sub          t1, s6, sp
                  andi         sp, t3, -561
                  sub          a4, t2, t6
                  slti         s4, s7, 806
                  slt          a2, s0, t1
                  sltiu        t1, s6, -81
                  srli         a2, a2, 22
                  sltiu        a5, a1, 181
                  sltiu        a5, a1, 156
                  sra          a4, s5, s0
                  sll          gp, t3, s0
                  sltu         s8, t3, sp
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_34
                  li           s10, 0x0
                  li           tp, 0x0
                  li           a0, 0x73f39c3d
                  li           s2, 0x0
                  li           t4, 0xffffffff
                  li           a5, 0x0
                  li           a4, 0x80000000
                  li           s11, 0x80000000
                  li           a2, 0x172d0e6a
                  add          s11, a7, a4
                  lui          s2, 459171
                  add          t4, s10, a4
                  sub          a7, s11, a4
                  auipc        a0, 993274
                  auipc        a4, 400140
                  add          s11, tp, s10
                  auipc        s10, 17628
                  auipc        a7, 872304
                  lui          a0, 510300
                  lui          a2, 841317
                  nop
                  add          a2, t4, a0
                  addi         s2, s2, -319
                  lui          a4, 132067
                  sub          s10, a5, a2
                  sub          a5, a7, s2
                  nop
                  nop #end riscv_int_numeric_corner_stream_34
                  ori          s4, s9, 125
                  slli         s4, a2, 0
                  add          s1, a5, t2
                  sll          sp, s7, a2
                  xor          sp, zero, a1
                  srai         s5, s9, 30
                  nop
                  ori          zero, a0, -757
                  ori          a2, zero, -1103
                  auipc        s11, 415297
                  nop
                  xor          s4, s2, t6
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           ra, 0x10cb8a35
                  li           t1, 0xf7d33bb6
                  li           a2, 0xffffffff
                  li           gp, 0x0
                  li           a0, 0x0
                  li           t4, 0x80000000
                  li           s0, 0x80000000
                  li           s11, 0x0
                  li           s6, 0x80000000
                  add          s0, s11, s6
                  add          sp, s11, s0
                  nop
                  add          s6, gp, ra
                  sub          t1, t4, a2
                  sub          a2, t4, gp
                  nop
                  addi         gp, s0, 185
                  auipc        t1, 295638
                  auipc        s0, 656376
                  nop
                  auipc        s11, 906223
                  lui          t4, 749137
                  auipc        ra, 521761
                  lui          s11, 168131
                  auipc        s6, 341288 #end riscv_int_numeric_corner_stream_6
                  and          s1, ra, s4
                  nop
                  srli         t4, t2, 21
                  nop
                  addi         a1, t3, 440
                  slti         s6, s1, 52
                  and          a3, a0, a0
                  slti         tp, s5, -1876
                  and          a5, gp, a4
                  srli         s6, tp, 19
                  slt          tp, t4, t2
                  andi         s9, s10, 289
                  sra          s8, s10, sp
                  sll          t3, t0, s3
                  slli         gp, t2, 0
                  xor          s4, sp, t1
                  lui          gp, 644032
                  andi         a5, a4, 210
                  slli         s8, a4, 25
                  andi         a1, sp, -21
                  lui          t1, 643719
                  srai         a0, s1, 3
                  xor          a3, t1, a4
                  nop
                  addi         s1, t2, -1114
                  srli         ra, zero, 31
                  slti         ra, s3, 1971
                  xor          a5, s9, s6
                  xor          a0, zero, t2
                  auipc        a2, 13875
                  slli         a3, s10, 17
                  addi         a5, t0, -47
                  addi         ra, s1, 1905
                  slt          s9, t6, tp
                  slt          s10, s3, s0
                  xori         a0, s8, -784
                  sub          s10, t2, t6
                  andi         s5, sp, -1107
                  sub          t3, s0, s3
                  xori         a7, t4, -1164
                  nop
                  sll          tp, a1, s2
                  sra          t1, gp, t2
                  auipc        a2, 916463
                  sltiu        s7, s5, 760
                  sra          a4, a7, s3
                  slti         gp, s3, 234
                  sltu         tp, tp, a1
                  slli         a7, a3, 31
                  add          ra, s6, a6
                  slti         sp, s6, -688
                  xor          s4, s5, t1
                  addi         a3, s3, -1203
                  sll          a3, a0, t4
                  or           tp, a7, s1
                  sub          t5, s10, zero
                  sub          t1, s8, s4
                  srli         a4, s11, 10
                  andi         a1, s2, -1117
                  addi         s7, a5, 1342
                  slt          a1, s3, t3
                  sub          a4, tp, t1
                  slti         a0, t0, -1522
                  sll          s5, zero, s3
                  slt          t4, t4, a3
                  slli         ra, t4, 8
                  xori         s5, a6, -1173
                  sltu         tp, t1, a0
                  and          tp, a7, t5
                  add          s5, t0, s6
                  addi         a5, sp, 709
                  nop
                  slt          t1, s6, a3
                  ori          a7, a6, 687
                  xori         a7, s8, 801
                  and          a4, s1, a4
                  addi         zero, gp, 617
                  nop
                  sra          t3, s2, a3
                  and          s9, zero, s9
                  slti         a7, s6, 1496
                  and          s7, s9, s9
                  sll          a0, s9, s1
                  auipc        s11, 880850
                  xor          s2, s8, t4
                  andi         tp, a3, -608
                  xor          a1, tp, s1
                  or           s10, a4, ra
                  srai         t6, s8, 2
                  srai         gp, s0, 12
                  slli         s8, t3, 22
                  or           gp, sp, a4
                  srai         a0, tp, 25
                  sltu         sp, a2, a0
                  ori          gp, a3, 1194
                  sltu         a2, s9, s0
                  la x16, test_done
                  jalr x0, x16, 0
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
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

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

mmode_exception_handler:
                  addi x5, x5, -4
                  sw  x7, (x5)
                  add x7, x5, zero
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x5, x7, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x25, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x25, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x25, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x25, x19, ecall_handler
                  li x19, 0x1
                  beq x25, x19, instr_fault_handler
                  li x19, 0x5
                  beq x25, x19, load_fault_handler
                  li x19, 0x7
                  beq x25, x19, store_fault_handler
                  li x19, 0xc
                  beq x25, x19, pt_fault_handler
                  li x19, 0xd
                  beq x25, x19, pt_fault_handler
                  li x19, 0xf
                  beq x25, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x7, x5, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  add x5, x7, zero
                  lw  x7, (x5)
                  addi x5, x5, 4
                  mret

load_fault_handler:
                  add x7, x5, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  add x5, x7, zero
                  lw  x7, (x5)
                  addi x5, x5, 4
                  mret

store_fault_handler:
                  add x7, x5, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  add x5, x7, zero
                  lw  x7, (x5)
                  addi x5, x5, 4
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x7, x5, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  add x5, x7, zero
                  lw  x7, (x5)
                  addi x5, x5, 4
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x7, x5, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  add x5, x7, zero
                  lw  x7, (x5)
                  addi x5, x5, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x7, x5, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  add x5, x7, zero
                  lw  x7, (x5)
                  addi x5, x5, 4
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
