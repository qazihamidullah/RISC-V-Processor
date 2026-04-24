.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x0, 0xfd1aeffa
                  li x1, 0x80000000
                  li x2, 0xf
                  li x3, 0x80000000
                  li x4, 0xf
                  li x5, 0x1568b93a
                  li x6, 0xd
                  li x8, 0xfadaa335
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x0
                  li x13, 0x4aff23a5
                  li x14, 0x80000000
                  li x15, 0xe7aed0df
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xd
                  li x19, 0x141dbb38
                  li x20, 0xfe64ec9c
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0xfd3cb6da
                  li x25, 0xf71e806e
                  li x26, 0xdb642cc6
                  li x27, 0x80000000
                  li x28, 0xfbc8d957
                  li x29, 0xfc3556b8
                  li x30, 0x80000000
                  li x31, 0xc3321096
                  la x7, user_stack_end
main:             li           tp, 0xaac24453 #start riscv_int_numeric_corner_stream_35
                  li           s10, 0x80000000
                  li           s0, 0xa92bf8fb
                  li           ra, 0x0
                  li           a6, 0x0
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  li           a4, 0x0
                  li           sp, 0x0
                  li           s8, 0xffffffff
                  sub          tp, gp, gp
                  sub          s0, ra, s8
                  add          s8, a6, s8
                  add          sp, s10, s10
                  add          s10, gp, s8
                  auipc        sp, 552850
                  lui          s2, 12221
                  sub          s10, ra, a4
                  lui          gp, 162623
                  auipc        ra, 319055
                  auipc        gp, 775525
                  addi         a6, a4, 616
                  addi         ra, ra, -1805
                  auipc        s8, 376992
                  nop
                  lui          ra, 125068
                  addi         a6, s8, -216
                  auipc        a6, 738565
                  addi         tp, s8, -236
                  lui          s10, 512189
                  nop
                  lui          tp, 264286
                  sub          s2, s8, s0
                  lui          a6, 327418
                  addi         ra, a4, -1522
                  sub          s8, a4, a4
                  lui          a4, 290957 #end riscv_int_numeric_corner_stream_35
                  li           a7, 0x3566a1c5 #start riscv_int_numeric_corner_stream_20
                  li           a6, 0xa42008fe
                  li           s5, 0xffffffff
                  li           t0, 0x0
                  li           s7, 0x21c52963
                  li           ra, 0x0
                  li           t5, 0x0
                  li           s9, 0xef5226d5
                  li           a1, 0x0
                  li           a0, 0x80000000
                  nop
                  nop
                  add          s7, a1, a0
                  addi         a7, a0, -761
                  addi         t0, s5, -1571
                  lui          t0, 844899
                  addi         s7, s7, -759
                  addi         t5, ra, 98
                  addi         a6, a0, 719
                  add          s7, a7, s7
                  add          a1, s5, t5
                  lui          t5, 225847
                  addi         t5, ra, 1269
                  add          s5, a1, a6
                  nop
                  addi         s5, a1, -23
                  nop
                  sub          a7, t0, a7 #end riscv_int_numeric_corner_stream_20
                  li           a4, 0x70d35d4e #start riscv_int_numeric_corner_stream_10
                  li           s8, 0x80000000
                  li           s2, 0x80000000
                  li           s7, 0x9114ff2a
                  li           s0, 0x0
                  li           t6, 0x0
                  li           a3, 0xffffffff
                  li           s11, 0x80000000
                  li           t1, 0xffffffff
                  li           s3, 0x952fc411
                  nop
                  add          s8, s7, s8
                  nop
                  lui          s2, 229703
                  add          a3, s11, s8
                  nop
                  lui          t1, 783314
                  addi         s8, s8, -1375
                  add          s8, s7, a3
                  addi         s7, a3, -151
                  auipc        a4, 27574
                  lui          s2, 471407
                  addi         a3, a4, 1717
                  nop
                  lui          a3, 225324
                  sub          s7, s7, t1
                  add          s8, s8, a3
                  add          t1, a3, t1
                  nop
                  sub          a3, s0, s0
                  sub          s7, s7, s7
                  lui          a3, 837953
                  nop
                  sub          s2, s11, s3
                  nop
                  nop
                  sub          s0, t6, s0
                  lui          t1, 900106 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t6, 0x80000000
                  li           s8, 0x44bf07a
                  li           t5, 0x0
                  li           s7, 0x80000000
                  li           s5, 0x0
                  li           sp, 0x0
                  li           s6, 0x5d537cc3
                  li           t1, 0xffffffff
                  li           s10, 0x56c99852
                  lui          s10, 88348
                  sub          s5, t1, t5
                  addi         s7, sp, 829
                  nop
                  nop
                  nop
                  lui          t0, 355027
                  addi         t0, t1, 1611
                  auipc        sp, 996014
                  nop
                  addi         s8, t0, -550
                  addi         s6, s10, -1877
                  nop
                  auipc        s10, 512818
                  sub          s6, s5, t1
                  addi         s8, s5, -803
                  nop
                  auipc        t1, 983134 #end riscv_int_numeric_corner_stream_1
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           ra, 0xf2bdc1ba
                  li           s6, 0xdd843de7
                  li           s8, 0xdd2897b3
                  li           s1, 0x75c08e77
                  li           t1, 0x0
                  li           a7, 0xe3767d66
                  li           t3, 0xd8184f53
                  li           sp, 0x698537a1
                  li           s5, 0x0
                  lui          t3, 6896
                  lui          sp, 63406
                  sub          sp, s6, s6
                  auipc        s5, 410981
                  addi         sp, t0, -1125
                  lui          s6, 288217
                  add          s8, sp, s6
                  nop
                  addi         s6, t1, 545
                  add          s6, t3, a7
                  lui          t1, 1022417
                  add          t1, ra, sp
                  auipc        s1, 575508
                  auipc        t1, 184029
                  auipc        t1, 843947
                  addi         sp, t0, -1039
                  lui          t3, 564050
                  addi         t3, sp, 1624 #end riscv_int_numeric_corner_stream_4
                  li           ra, 0xb7edabbd #start riscv_int_numeric_corner_stream_12
                  li           a3, 0x957ed350
                  li           s3, 0x0
                  li           a0, 0x80000000
                  li           s4, 0xcf0a9b5
                  li           s5, 0x80000000
                  li           t0, 0x80000000
                  li           s8, 0x80000000
                  li           tp, 0xffffffff
                  li           a1, 0x7265d751
                  auipc        tp, 868459
                  auipc        ra, 148503
                  lui          a1, 723675
                  addi         a0, tp, -714
                  add          s5, a0, s3
                  auipc        a1, 480053
                  add          ra, s3, a0
                  auipc        s4, 586274
                  addi         ra, s8, -1091
                  nop
                  sub          s3, a3, ra
                  add          ra, a1, tp
                  auipc        a0, 5804
                  lui          s4, 766073
                  auipc        s8, 383311
                  addi         s3, s8, -1348
                  sub          tp, s3, t0
                  lui          a1, 436118
                  nop
                  sub          tp, s8, t0
                  lui          s3, 1002860
                  add          a3, s8, s8
                  add          s3, s5, t0
                  addi         s4, s3, -844
                  add          s3, s8, t0
                  addi         s3, s4, -892 #end riscv_int_numeric_corner_stream_12
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_22
                  li           s1, 0xffffffff
                  li           a3, 0x0
                  li           s4, 0xffffffff
                  li           t0, 0x0
                  li           t6, 0xd62d25f0
                  li           s5, 0xffffffff
                  li           s8, 0x80000000
                  li           s0, 0x0
                  li           t1, 0x80000000
                  auipc        t1, 863624
                  lui          s8, 934455
                  nop
                  auipc        s0, 942028
                  lui          s1, 447499
                  lui          s1, 275266
                  auipc        s8, 223447
                  nop
                  nop
                  lui          s8, 1014750
                  nop
                  auipc        t6, 301139
                  add          t6, t6, a3
                  nop
                  auipc        s4, 183283
                  auipc        s1, 803657
                  sub          sp, s8, t6
                  auipc        t1, 721337
                  sub          s4, s4, sp
                  add          t0, t6, s8
                  addi         a3, s1, -1744
                  sub          a3, t1, s0
                  addi         s0, t0, -839
                  lui          sp, 276943
                  nop
                  auipc        sp, 843917
                  auipc        t1, 825338
                  add          a3, s4, s5
                  auipc        s1, 785360
                  auipc        t6, 268091 #end riscv_int_numeric_corner_stream_22
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           s8, 0x80000000
                  li           t3, 0x3e45fe0
                  li           s1, 0xffffffff
                  li           s11, 0xffffffff
                  li           a3, 0x80000000
                  li           t1, 0xcc5232a6
                  li           s6, 0xffffffff
                  li           ra, 0x80000000
                  li           sp, 0x80000000
                  lui          s8, 289555
                  sub          s6, t1, s8
                  add          t1, s11, s6
                  lui          a3, 530489
                  add          s6, t1, s4
                  lui          s4, 840106
                  sub          s11, s1, t1
                  sub          t1, s4, ra
                  sub          s11, t3, s11
                  sub          a3, s11, t1
                  nop
                  lui          t3, 781437
                  addi         s11, s8, -1514
                  nop
                  sub          s11, t1, s11
                  nop
                  addi         s4, s11, 1252 #end riscv_int_numeric_corner_stream_37
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_23
                  li           s3, 0x80000000
                  li           ra, 0x80000000
                  li           a6, 0x48b9bf3b
                  li           s4, 0xffffffff
                  li           a3, 0xa27b9225
                  li           a7, 0x464f6bd9
                  li           a1, 0xffffffff
                  li           t4, 0x30ce1c26
                  li           t0, 0x0
                  lui          t0, 216524
                  addi         ra, a3, -1924
                  nop
                  addi         a6, s7, 295
                  nop
                  nop
                  add          t0, s4, t4
                  addi         t0, a3, 1708
                  add          a1, a1, a6
                  nop
                  auipc        a1, 169613
                  lui          a7, 936039
                  addi         s4, a6, 1096
                  add          ra, a1, ra
                  auipc        s4, 768880
                  lui          a3, 380811
                  sub          s3, s7, ra
                  add          s4, ra, s4
                  addi         a1, t4, 1717
                  addi         a6, s7, 115
                  add          a1, a3, s3
                  nop #end riscv_int_numeric_corner_stream_23
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           sp, 0x0
                  li           s2, 0x8f14fed1
                  li           t1, 0x65a0db23
                  li           s9, 0x80000000
                  li           s5, 0x0
                  li           a7, 0x0
                  li           ra, 0xffffffff
                  li           s7, 0xffffffff
                  li           s11, 0x80000000
                  sub          t1, s9, t1
                  sub          s9, s7, t3
                  auipc        t3, 952478
                  sub          t1, s5, s9
                  addi         ra, ra, 155
                  nop
                  sub          s9, s11, sp
                  auipc        t1, 236764
                  add          sp, t1, s2
                  auipc        ra, 785354
                  add          s5, t3, s9
                  auipc        t3, 1030845
                  sub          sp, s2, t3
                  sub          t1, s5, a7
                  nop
                  auipc        s11, 139586
                  addi         t1, a7, 1680
                  auipc        s11, 765865
                  sub          a7, t3, s2
                  add          s11, t3, s9
                  auipc        t1, 116529
                  auipc        t1, 289900
                  sub          s7, s5, s2
                  sub          s11, s7, t3 #end riscv_int_numeric_corner_stream_16
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           tp, 0x689d4395
                  li           s4, 0xffffffff
                  li           s7, 0xc95e7a53
                  li           a1, 0x80000000
                  li           gp, 0x0
                  li           a0, 0x44aa4b4
                  li           s10, 0xffffffff
                  li           s0, 0x0
                  li           s6, 0x80000000
                  lui          s7, 543714
                  nop
                  addi         s7, s6, 1674
                  auipc        ra, 846352
                  addi         s7, s6, -1641
                  add          gp, s7, s7
                  nop
                  auipc        ra, 561438
                  nop
                  lui          s7, 208479
                  sub          s4, s6, tp
                  lui          s10, 4876
                  nop
                  auipc        s10, 730990
                  sub          s6, a1, s7
                  lui          a0, 292729
                  nop
                  add          a0, s6, ra
                  auipc        s10, 207293
                  add          ra, s4, s7
                  nop #end riscv_int_numeric_corner_stream_5
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0xffffffff
                  li           s10, 0x0
                  li           s11, 0xffffffff
                  li           gp, 0x80000000
                  li           a0, 0xeba16e79
                  li           a6, 0xffffffff
                  li           t3, 0xffffffff
                  li           tp, 0x4bfc5ff8
                  li           t5, 0x1d348e83
                  nop
                  lui          t5, 236427
                  auipc        gp, 98137
                  nop
                  add          s10, s11, gp
                  sub          gp, a7, a6
                  lui          ra, 437545
                  lui          a7, 839382
                  auipc        t5, 477899
                  sub          a0, t5, s11
                  add          s11, t5, tp
                  addi         a6, a6, 678
                  add          t5, s11, t5
                  lui          a6, 852269
                  auipc        gp, 555362
                  add          s11, gp, s10
                  lui          s10, 291291
                  auipc        t3, 153132
                  auipc        s10, 9408
                  lui          s11, 493234
                  addi         tp, t5, -467
                  auipc        tp, 206886
                  auipc        ra, 206200 #end riscv_int_numeric_corner_stream_15
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           s4, 0x0
                  li           a4, 0x0
                  li           s9, 0x3449388c
                  li           s1, 0x80000000
                  li           s0, 0xd87a7075
                  li           t0, 0x80000000
                  li           a7, 0xffffffff
                  li           a1, 0x0
                  li           s6, 0x0
                  auipc        s6, 796229
                  nop
                  auipc        t0, 909723
                  lui          a1, 1020301
                  addi         t1, a1, -1112
                  lui          t0, 81206
                  sub          a7, t0, t0
                  lui          a1, 860009
                  add          s0, a7, s1
                  auipc        s9, 336734
                  nop
                  sub          s4, s0, t0
                  addi         a7, s0, 483
                  nop
                  lui          s0, 901171
                  addi         a1, s0, 1782
                  sub          s4, s9, a7
                  nop
                  addi         a7, s9, 1060
                  nop
                  auipc        s9, 823090
                  add          s0, t0, s4
                  addi         s6, t0, 1243 #end riscv_int_numeric_corner_stream_27
                  li           t3, 0x1edb900e #start riscv_int_numeric_corner_stream_33
                  li           ra, 0xffffffff
                  li           s2, 0x0
                  li           a4, 0x0
                  li           t6, 0xffffffff
                  li           a0, 0x80000000
                  li           s7, 0xffffffff
                  li           s1, 0x3f3a792f
                  li           tp, 0x0
                  li           s11, 0x36afc7e5
                  addi         t6, a0, -1413
                  lui          s2, 802363
                  add          tp, t3, a4
                  sub          ra, tp, ra
                  addi         s2, tp, 1069
                  sub          ra, s2, t3
                  lui          s2, 758093
                  nop
                  lui          s7, 795862
                  auipc        tp, 989006
                  auipc        t6, 801581
                  add          a0, tp, ra
                  nop
                  nop
                  lui          tp, 969486 #end riscv_int_numeric_corner_stream_33
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           sp, 0x0
                  li           tp, 0x80000000
                  li           t1, 0xffffffff
                  li           a1, 0x80000000
                  li           s5, 0x0
                  li           t5, 0xffffffff
                  li           s0, 0x0
                  li           t3, 0x80000000
                  li           a3, 0xffffffff
                  sub          s5, s5, sp
                  auipc        sp, 844956
                  add          sp, t5, sp
                  lui          a3, 723277
                  lui          sp, 74126
                  add          t1, sp, a3
                  addi         t3, s0, -1788
                  auipc        sp, 414330
                  nop
                  auipc        sp, 383346
                  nop
                  lui          t4, 435398
                  addi         sp, s5, -138
                  addi         tp, a3, -1950
                  lui          s0, 357927
                  lui          sp, 635399
                  lui          t3, 592595
                  nop
                  nop
                  addi         t3, s0, 315
                  lui          tp, 504283
                  addi         a3, s5, 21 #end riscv_int_numeric_corner_stream_7
                  li           sp, 0x75af6321 #start riscv_int_numeric_corner_stream_24
                  li           s7, 0x6847e0be
                  li           t6, 0x80000000
                  li           a4, 0x140dfd34
                  li           s6, 0xe728dd09
                  li           s5, 0x0
                  li           ra, 0x4a361804
                  li           s8, 0x0
                  li           s9, 0xffffffff
                  li           a1, 0x80000000
                  addi         s7, a4, -930
                  auipc        s5, 376524
                  add          s6, a4, ra
                  sub          a4, s6, s8
                  add          a4, ra, s7
                  nop
                  nop
                  auipc        ra, 372991
                  addi         t6, a4, -1877
                  addi         s9, ra, 959
                  addi         ra, s8, 975
                  sub          ra, s8, ra
                  auipc        s5, 614325
                  addi         sp, s8, 1075
                  nop
                  add          s8, ra, a4
                  add          s5, t6, a1
                  lui          s8, 465576
                  nop
                  addi         ra, s5, -1554
                  sub          s8, a4, ra
                  sub          s8, a1, a1
                  add          s6, s5, a4
                  sub          s8, sp, a1
                  nop #end riscv_int_numeric_corner_stream_24
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_38
                  li           a6, 0xb07ee2f8
                  li           s0, 0xffffffff
                  li           t6, 0x80000000
                  li           s6, 0xbfe7f20e
                  li           s11, 0x3ff38cd8
                  li           s9, 0x656c569b
                  li           a0, 0x80000000
                  li           s2, 0x80000000
                  li           t4, 0xe3cd660e
                  lui          a6, 501655
                  add          s6, s2, s9
                  nop
                  sub          t6, s0, s9
                  lui          a6, 649849
                  add          s9, a6, s11
                  auipc        s9, 458854
                  nop
                  auipc        s0, 152031
                  sub          s6, s0, s11
                  nop
                  add          a0, t4, a6
                  lui          s3, 892059
                  add          s3, a6, t6
                  add          a6, s9, s2
                  lui          s11, 1026728
                  nop
                  auipc        t6, 1043849
                  auipc        t4, 700864
                  add          s3, s6, a0
                  lui          s9, 506092
                  nop
                  addi         s3, t6, -1525
                  sub          a6, a0, a6
                  lui          s3, 720896
                  nop
                  auipc        a6, 782092
                  lui          s6, 648817 #end riscv_int_numeric_corner_stream_38
                  slli         ra, s3, 27
                  and          s1, t1, a5
                  andi         a7, t2, 1637
                  slt          a7, a3, s7
                  srli         a0, sp, 4
                  sll          t3, ra, a4
                  slti         s0, t6, 790
                  lui          s9, 530955
                  slli         a3, t0, 21
                  auipc        s8, 206073
                  sll          a1, s5, s3
                  sltiu        s1, a0, -1883
                  sra          s8, a3, t4
                  sll          ra, t3, s1
                  add          a1, t3, s1
                  add          s0, a0, t3
                  ori          s4, tp, 1517
                  ori          a3, a0, -332
                  ori          a6, a4, -720
                  add          t5, a6, s10
                  slti         s6, gp, -178
                  slli         s3, s1, 23
                  slt          a4, s4, t3
                  srl          zero, t4, a5
                  auipc        a3, 700185
                  lui          gp, 199538
                  slli         s10, s10, 30
                  sub          zero, tp, gp
                  sra          a7, zero, s9
                  sltiu        s1, a5, 1950
                  srl          s2, a1, s8
                  auipc        t6, 366771
                  sll          s1, a2, tp
                  nop
                  auipc        a1, 593253
                  and          zero, a1, a4
                  ori          ra, t1, -1938
                  ori          gp, zero, -1402
                  ori          a1, a6, -99
                  xor          a3, gp, s9
                  sll          s9, s4, s6
                  sub          t1, a6, a2
                  slli         s4, a0, 23
                  sltiu        s2, s0, -321
                  sltiu        a3, zero, 935
                  srai         a4, a3, 23
                  andi         s11, t1, 1641
                  lui          a6, 397420
                  lui          a1, 18236
                  sub          a0, a2, s3
                  lui          s0, 447827
                  and          s1, s11, s0
                  nop
                  xori         ra, s11, -1475
                  slti         t3, a2, -1291
                  sll          s8, t2, s5
                  ori          a1, s5, 1086
                  sub          s11, a2, a0
                  sll          s4, a2, s5
                  andi         t4, s5, 140
                  and          t0, s1, s2
                  xor          a4, s2, a6
                  slti         t0, s7, 609
                  srl          s11, s3, sp
                  srli         s11, gp, 18
                  sltiu        s11, gp, -910
                  lui          s5, 616730
                  auipc        a7, 828922
                  sltiu        a1, s4, -398
                  sltiu        a6, s4, -583
                  and          t3, t6, t1
                  lui          s4, 546655
                  add          tp, s7, t1
                  sll          a7, t0, s9
                  slli         a6, zero, 7
                  sltu         sp, s11, a4
                  nop
                  addi         s8, s8, 1326
                  ori          s9, s5, -1723
                  ori          t5, ra, 2046
                  lui          a3, 499948
                  auipc        ra, 126193
                  slti         t1, s0, 1350
                  nop
                  xori         s8, ra, 1412
                  srli         a1, gp, 26
                  slti         s11, a5, 1777
                  or           t3, s4, a4
                  addi         s6, s11, 1382
                  ori          t3, a6, 2019
                  or           zero, sp, s9
                  srli         t3, t2, 18
                  slt          ra, a4, t4
                  xor          t1, gp, s5
                  add          a4, a5, s5
                  sltu         s3, s2, a4
                  srai         a3, s10, 19
                  ori          s3, a6, 2043
                  srai         t6, t5, 5
                  sra          s3, a5, a0
                  xori         s1, s6, 37
                  andi         s1, a2, 1402
                  and          a6, s8, s9
                  sll          s9, t4, s2
                  sltu         t6, t1, a0
                  slt          s1, gp, s8
                  auipc        t6, 38831
                  sub          s2, a4, s10
                  and          s1, a6, s3
                  slti         t5, t0, 910
                  slti         t3, ra, -1473
                  slli         s7, a0, 9
                  or           a4, s9, a7
                  auipc        s3, 106301
                  srli         s10, a0, 2
                  srl          a4, s7, s1
                  xori         s6, s8, 766
                  sra          t1, gp, s6
                  xor          a1, s4, t6
                  xor          s0, s3, s7
                  sltu         t3, gp, a5
                  sltu         a1, s4, s1
                  add          t3, ra, zero
                  sra          a4, t0, a0
                  addi         a0, s1, -1635
                  sll          a3, a3, s0
                  srai         s7, gp, 26
                  srai         s10, zero, 5
                  and          tp, a1, s10
                  and          s7, s11, s9
                  add          ra, ra, gp
                  xori         s2, gp, -654
                  xor          a7, s7, s4
                  srl          ra, s11, a0
                  srl          t6, tp, s7
                  sll          t0, a1, s6
                  slti         zero, a7, 822
                  sra          s9, a7, t6
                  ori          s9, a4, 947
                  nop
                  sll          s1, a3, a7
                  add          a0, ra, s6
                  xori         t3, s1, -450
                  auipc        zero, 963191
                  srai         t0, s0, 14
                  and          zero, s3, t1
                  slti         t1, a2, 611
                  slti         s11, s11, 44
                  xor          a3, t2, t1
                  add          t6, s11, tp
                  auipc        t5, 269573
                  add          s5, a5, t1
                  sub          t4, t1, s9
                  ori          s11, a0, -555
                  auipc        a1, 924105
                  nop
                  srli         gp, s1, 7
                  srl          s4, a6, ra
                  ori          t0, a2, 47
                  srai         t5, s0, 6
                  slli         a0, s1, 0
                  xori         t6, a2, -1365
                  and          s7, s8, t4
                  andi         s2, a7, -286
                  sltu         a4, s3, zero
                  sra          t5, s3, s9
                  slti         a3, a2, 658
                  xor          ra, s3, t2
                  xor          gp, s6, a7
                  srl          zero, s2, t0
                  slt          a3, a1, a5
                  srl          tp, s8, s1
                  lui          t4, 667043
                  srli         s10, t1, 28
                  andi         s5, s9, 1491
                  auipc        s8, 33251
                  sll          a1, s10, a2
                  add          a1, a6, zero
                  sltiu        a6, ra, 1520
                  or           ra, a4, t2
                  xor          t1, a5, ra
                  sra          a1, a4, t2
                  sltiu        t4, s7, 1739
                  sltiu        s5, a0, 210
                  slti         s7, t5, 1078
                  srl          a7, s4, t0
                  slt          s11, s8, a7
                  srl          s6, zero, gp
                  slti         ra, s11, -33
                  slli         s0, gp, 4
                  add          s11, sp, s8
                  xor          s0, sp, t1
                  slt          t4, s10, s11
                  nop
                  ori          a1, a2, -1733
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           ra, 0xb9a52987
                  li           sp, 0xffffffff
                  li           a3, 0x80000000
                  li           a0, 0xffffffff
                  li           t3, 0x0
                  li           s2, 0x80000000
                  li           t4, 0x0
                  li           t1, 0x80000000
                  li           s11, 0x80000000
                  add          t3, s11, a4
                  nop
                  addi         s2, a3, 506
                  add          ra, ra, ra
                  sub          t1, ra, s11
                  sub          a3, a4, s11
                  nop
                  lui          s11, 937929
                  addi         t3, a3, -1915
                  addi         t3, sp, 1258
                  lui          ra, 772945
                  nop
                  add          sp, a4, s11
                  add          s2, s11, t3
                  lui          t4, 256928
                  auipc        sp, 574674
                  add          s11, a0, t3
                  lui          s11, 621564 #end riscv_int_numeric_corner_stream_31
                  addi         t1, a0, 707
                  andi         zero, a3, 1963
                  slli         ra, zero, 12
                  xori         a4, ra, -1407
                  or           t1, s8, s5
                  sll          tp, t4, s3
                  andi         a4, s7, 359
                  and          a3, t1, s10
                  sub          t1, s10, t3
                  sltiu        s4, ra, -924
                  andi         a4, a7, 1525
                  xor          tp, sp, s9
                  srli         a0, zero, 13
                  slli         s8, t0, 24
                  sltu         ra, s3, a6
                  and          a3, s4, ra
                  ori          tp, t6, -2011
                  xor          s7, tp, a2
                  sltu         s6, t5, a7
                  ori          s7, s11, -320
                  xori         s11, t1, 84
                  xor          zero, t0, tp
                  sra          a1, gp, a5
                  srl          gp, t2, s9
                  auipc        zero, 761874
                  andi         s5, ra, 1159
                  or           a1, s5, s2
                  andi         t4, a1, 1646
                  xor          t6, a1, s6
                  sltu         t6, s7, zero
                  auipc        s11, 873529
                  lui          a6, 851500
                  or           t6, s2, a7
                  add          s11, a4, t2
                  srl          a3, t3, a1
                  ori          s3, t4, -1444
                  sltu         tp, a3, ra
                  nop
                  srl          a4, t5, s11
                  slli         a1, t3, 21
                  srli         s11, t1, 31
                  ori          t0, s2, -666
                  srai         s2, a7, 1
                  sltiu        a6, t2, 1028
                  ori          sp, gp, -469
                  sltu         ra, s3, a2
                  ori          t3, s1, -1244
                  srl          t1, tp, a6
                  nop
                  ori          s2, s5, -1674
                  sra          t3, t0, a0
                  sltu         ra, a1, t1
                  xor          s6, s8, t3
                  xori         ra, t0, -599
                  sltu         a0, s2, t2
                  sub          a1, tp, s3
                  sltiu        tp, t5, 374
                  sub          tp, s8, ra
                  sub          ra, a3, s10
                  srl          t3, a2, t2
                  slt          s0, t6, s0
                  sltu         a4, a3, t4
                  slt          s11, gp, sp
                  slli         s5, sp, 28
                  auipc        t1, 924856
                  xor          s0, s0, s11
                  sltu         t3, t5, t1
                  sll          s0, t2, t3
                  ori          s5, s11, -2022
                  sltu         t1, a3, t1
                  sll          a0, s0, s1
                  slli         t1, gp, 9
                  ori          a3, s10, 1220
                  lui          s8, 172650
                  srl          s3, t0, tp
                  srli         t4, s10, 4
                  srai         a7, s8, 25
                  xor          t4, tp, ra
                  xori         t4, t3, -1960
                  xori         a4, s10, 1988
                  slti         ra, s11, -1672
                  andi         s7, a4, 699
                  sra          s2, t0, s1
                  ori          s8, zero, 1570
                  srli         a6, ra, 30
                  and          zero, s8, s4
                  sra          t5, gp, t0
                  xori         s4, t2, -684
                  xor          a0, s11, s11
                  auipc        s11, 896433
                  lui          s7, 1022984
                  add          s5, s1, ra
                  addi         a1, ra, 1992
                  slt          zero, a5, t1
                  nop
                  srli         s0, t6, 27
                  sltu         a3, t5, t6
                  sra          s5, s6, a2
                  sltu         a3, a6, a4
                  or           ra, gp, s9
                  add          t3, t0, s11
                  sub          s7, t1, zero
                  xori         t0, a0, 1045
                  nop
                  andi         a4, t2, -1019
                  andi         a1, s4, -1369
                  sltiu        s3, s11, 1696
                  sltiu        s1, ra, 1367
                  slt          s5, s7, gp
                  sll          a4, s3, a7
                  sub          t1, a4, s2
                  lui          t3, 1001471
                  addi         s2, t4, -1328
                  and          t0, s5, s9
                  andi         s4, s5, 1918
                  sra          a6, a4, t0
                  srli         s4, a5, 4
                  add          s3, a6, a2
                  li           t6, 0x34f0635c #start riscv_int_numeric_corner_stream_13
                  li           gp, 0x19f7eee3
                  li           s11, 0xffffffff
                  li           s7, 0xffffffff
                  li           s9, 0x0
                  li           s10, 0xffffffff
                  li           t5, 0xa5462729
                  li           s1, 0x0
                  li           a6, 0x0
                  li           s0, 0x0
                  add          gp, a6, gp
                  nop
                  auipc        a6, 485625
                  addi         t6, s11, -1421
                  nop
                  add          s0, t5, s9
                  lui          t5, 825862
                  auipc        t5, 938444
                  add          t6, s0, s7
                  nop
                  sub          t5, s0, s1
                  auipc        s0, 131554
                  sub          s7, s9, s10
                  sub          s1, a6, t5
                  sub          s11, a6, s1
                  sub          a6, s9, s9
                  lui          s10, 524058 #end riscv_int_numeric_corner_stream_13
                  slti         t0, a0, 1879
                  xor          a1, a1, s7
                  addi         a4, t3, -862
                  addi         a3, s5, 1121
                  auipc        t3, 343688
                  xori         s4, s6, 1993
                  sra          zero, s4, t4
                  srl          t0, t5, s5
                  nop
                  xori         gp, a7, -731
                  slti         s10, t6, 1036
                  xori         a1, t4, -1601
                  add          s9, s10, s5
                  slt          t5, s2, zero
                  slt          ra, s2, s10
                  xor          zero, s0, s5
                  srl          ra, a1, t5
                  andi         s4, t5, -1318
                  nop
                  ori          a0, s10, -1483
                  sltu         sp, s10, t5
                  nop
                  sub          a6, t2, t4
                  andi         s1, s0, -1700
                  srli         s5, s6, 24
                  and          s7, a5, zero
                  lui          a4, 250734
                  add          s8, a5, t2
                  ori          s0, a2, 693
                  slt          s6, a0, t3
                  xor          s11, t5, t2
                  addi         a1, tp, 1887
                  srli         s9, sp, 10
                  sub          s4, s2, a0
                  xori         a3, t0, 1328
                  xor          s3, s1, t6
                  xor          t4, a0, s4
                  add          s10, s4, zero
                  xor          s10, a3, s11
                  sub          s1, tp, t4
                  xori         s7, a7, 300
                  nop
                  sub          a6, s1, a1
                  nop
                  sltiu        t0, a6, -1402
                  ori          s4, a2, -886
                  srl          gp, a6, s8
                  srl          s0, gp, gp
                  andi         s11, s2, 309
                  slli         s10, sp, 26
                  addi         ra, a3, -1927
                  slli         gp, sp, 27
                  srl          s1, sp, s7
                  sltiu        a0, s10, -438
                  sra          s11, a2, s5
                  andi         s0, s4, 1796
                  addi         a4, s5, -1063
                  srl          a0, s8, s3
                  slli         a7, s11, 30
                  xori         gp, a3, 1016
                  or           a7, s9, s1
                  or           tp, s9, a3
                  ori          t5, s0, -242
                  lui          t0, 462679
                  srai         s3, a3, 4
                  slt          s6, sp, t2
                  xori         s7, a2, 1461
                  sub          s8, t0, s7
                  add          ra, t5, t0
                  sub          a3, s4, a5
                  srli         a0, a2, 28
                  andi         s5, s4, -509
                  xori         gp, s2, -61
                  sltu         s11, t5, ra
                  slti         zero, t6, 424
                  andi         s7, gp, 506
                  nop
                  andi         a3, s7, -812
                  slti         s8, a6, -885
                  addi         tp, tp, -203
                  srai         a3, s10, 18
                  andi         gp, t0, 1946
                  add          ra, s2, sp
                  sltiu        t0, t0, 1496
                  sub          s3, a4, s7
                  ori          s8, s0, 1854
                  sltiu        a0, s3, -1255
                  slli         s7, tp, 6
                  xor          t3, t3, s2
                  and          a7, s5, t0
                  add          t0, a2, a0
                  xor          a4, gp, t0
                  sll          t4, s10, a2
                  srli         s2, a2, 4
                  slt          t1, a4, t0
                  xor          zero, s6, ra
                  slti         a1, t1, 897
                  xori         s11, t0, 352
                  andi         a1, t0, 986
                  sltiu        t5, a6, 377
                  nop
                  sltiu        ra, a0, -1514
                  and          s8, s9, a2
                  slli         t4, a0, 12
                  andi         gp, tp, -2013
                  or           s4, sp, t0
                  srl          s7, tp, s4
                  sltu         a4, s9, gp
                  slt          a3, a2, s2
                  lui          t4, 140990
                  srl          s2, s7, s10
                  lui          t0, 903180
                  ori          t1, s5, 1532
                  slli         s7, t3, 9
                  sub          gp, s4, t1
                  sll          sp, a5, s5
                  xori         a4, s3, 1025
                  sltiu        a7, a7, -505
                  sll          t3, s5, s3
                  sltu         s2, t0, a1
                  sub          s5, t3, t1
                  andi         a4, a0, 829
                  or           t4, s1, a6
                  sltiu        gp, t2, -1391
                  add          a6, s5, s9
                  auipc        s4, 874079
                  ori          a6, sp, -1677
                  slti         a7, s4, -1598
                  sltiu        s11, s3, -1090
                  lui          a0, 953679
                  slt          s9, tp, a0
                  sra          s7, s4, t1
                  srli         t5, t4, 31
                  nop
                  addi         t6, s11, -1784
                  srli         s7, a5, 9
                  sll          s6, a7, zero
                  andi         s0, a3, -725
                  srl          sp, a7, a7
                  sll          s9, s9, a3
                  srl          s4, a4, a4
                  slti         s10, s5, -1721
                  sll          gp, sp, a2
                  sltiu        s3, a7, 2006
                  slti         a1, a4, -1118
                  sltiu        tp, ra, -1070
                  auipc        a0, 428764
                  slt          a3, a4, gp
                  sll          a7, s8, s0
                  xor          a7, t6, s6
                  slt          ra, a3, s3
                  slti         s0, a6, -1810
                  add          a4, t2, a3
                  slti         t1, a4, -872
                  nop
                  or           t6, s8, t5
                  xor          ra, s9, s5
                  srl          sp, a7, t2
                  slli         a1, a5, 14
                  and          a7, t2, t3
                  nop
                  addi         t3, gp, 1118
                  add          zero, s3, s2
                  sltiu        s11, s8, 1985
                  srli         t1, t0, 5
                  slti         a6, t6, -1597
                  ori          t3, a3, -1655
                  xor          t6, s10, gp
                  andi         ra, a5, -880
                  sub          s5, a3, tp
                  slti         s0, tp, -2030
                  lui          a0, 319140
                  slt          s7, a7, s10
                  xor          t1, s2, s11
                  sll          t0, t5, a0
                  slt          t6, t1, ra
                  lui          gp, 1033844
                  ori          s6, a7, 1498
                  or           s1, a7, s1
                  sra          t4, a4, a1
                  srai         t5, ra, 31
                  ori          s0, zero, 1882
                  srai         s1, s5, 6
                  add          gp, s10, a3
                  nop
                  srl          a0, s10, a4
                  xor          s11, a1, s10
                  nop
                  sub          a4, a1, a7
                  nop
                  sra          s4, gp, t5
                  sub          zero, s7, zero
                  slt          s7, t4, tp
                  ori          s10, s8, -1916
                  slt          a1, a5, s8
                  srai         a3, sp, 23
                  nop
                  srai         t6, s2, 3
                  srai         s11, a1, 4
                  sltu         s7, t4, s0
                  slli         s9, a4, 5
                  slti         s1, t1, 999
                  sub          a6, ra, s1
                  slli         s4, s9, 27
                  srai         s6, s3, 19
                  andi         a6, a7, -862
                  auipc        a1, 394903
                  sltiu        s9, a7, 1490
                  srl          s6, a0, gp
                  sltiu        s9, t5, -1152
                  srai         s6, s10, 1
                  sra          t4, s2, s9
                  srai         t5, a4, 28
                  sltiu        s8, s10, 1050
                  and          s10, a2, s7
                  or           t5, s5, a1
                  sltu         s7, zero, a5
                  andi         s9, a0, -972
                  xori         t6, s2, -122
                  and          gp, s9, s11
                  and          t6, s10, t2
                  sra          a1, zero, s1
                  slt          t6, s1, a0
                  nop
                  slti         tp, s8, -280
                  sll          s10, a7, s3
                  sll          s7, gp, t2
                  addi         t1, a5, 1161
                  addi         a4, a5, -945
                  srai         s10, t6, 29
                  slti         a7, s7, 193
                  addi         a3, s5, 1122
                  sra          a6, s11, sp
                  auipc        s0, 791120
                  and          s6, gp, s4
                  andi         s0, t3, -1857
                  auipc        tp, 937089
                  sub          t4, a1, s1
                  add          s1, s4, s0
                  srli         gp, s4, 2
                  addi         s11, t3, -398
                  and          s11, a1, sp
                  sltiu        a3, sp, 2003
                  srai         s0, a6, 9
                  slt          a3, t3, t5
                  sub          t5, a1, s6
                  sll          s3, a2, t0
                  sll          a4, s8, a6
                  srl          s4, t3, a0
                  slli         s3, s9, 29
                  or           s2, zero, a0
                  slt          tp, s4, a0
                  sra          s0, a6, a4
                  ori          s8, s5, 1590
                  auipc        zero, 243930
                  addi         s7, ra, -9
                  slti         s0, s3, -1452
                  xori         a0, s2, 1067
                  ori          s5, s3, -1829
                  sll          s5, t4, t2
                  ori          s8, s3, -746
                  add          a1, s8, s4
                  and          s8, a0, a3
                  andi         s10, sp, -1724
                  xor          s9, a3, gp
                  sub          s9, s2, s1
                  sltu         s7, s3, s1
                  slt          s1, s9, s11
                  ori          s0, tp, -364
                  sll          a3, s3, t3
                  xor          t1, a4, t2
                  andi         s5, ra, -816
                  ori          a3, s4, 1728
                  sltiu        s2, s4, -2026
                  sra          tp, s5, a6
                  srai         s10, s0, 10
                  srl          s7, t3, zero
                  slli         s0, gp, 1
                  nop
                  sra          t1, sp, s11
                  slti         t4, s1, -1735
                  slli         s0, s4, 5
                  lui          a6, 826755
                  andi         a6, s6, 1809
                  slti         s4, s1, -1213
                  sltiu        t1, s1, 675
                  addi         a7, s5, 2030
                  auipc        t1, 478106
                  srl          a3, s11, s2
                  and          t3, s9, s8
                  or           a4, t2, ra
                  slt          s7, t4, a6
                  sra          s9, a5, s3
                  srl          t0, a6, a4
                  slli         tp, s1, 27
                  or           s7, s3, a7
                  slti         s3, a3, -1475
                  andi         a1, a1, 1975
                  auipc        a4, 843318
                  srl          s8, s11, s10
                  add          ra, tp, ra
                  sltiu        a7, s0, 874
                  srl          t1, s4, s0
                  nop
                  sra          sp, t5, a0
                  sll          s2, s10, s2
                  lui          t1, 278711
                  sub          t3, s1, a2
                  xor          s8, s1, s7
                  or           zero, a7, zero
                  sra          a7, s5, s1
                  sltu         ra, ra, tp
                  and          a0, a4, s10
                  srl          s5, s1, s0
                  nop
                  add          s9, a7, s4
                  slli         s6, a5, 21
                  andi         a4, s4, 243
                  nop
                  sub          gp, s11, a4
                  sltu         s8, zero, a7
                  addi         s7, a5, -29
                  and          sp, s2, a4
                  sra          a0, s6, a3
                  srai         a1, ra, 7
                  auipc        s4, 302876
                  or           gp, s10, s2
                  srli         t1, a2, 9
                  sub          a4, t4, sp
                  sra          t5, t1, gp
                  xor          tp, s5, a4
                  auipc        a1, 401950
                  slti         s0, s0, -1000
                  srli         s0, s0, 26
                  addi         s8, a5, 1279
                  addi         t1, t4, 1050
                  addi         t0, t1, 83
                  sltu         tp, a1, t4
                  sltu         s11, tp, s9
                  xori         a7, s6, 1499
                  srli         ra, s1, 4
                  andi         s4, s5, 812
                  sltiu        a0, s1, -1951
                  nop
                  srl          s5, s7, s9
                  srl          gp, a2, s2
                  srl          t4, s3, s3
                  slli         s7, t1, 28
                  slti         t1, a3, 1713
                  xori         a7, s9, -215
                  slti         tp, zero, 275
                  andi         s9, s5, 289
                  slti         zero, t5, 1858
                  srai         s1, a1, 21
                  slt          s0, a4, s10
                  andi         t1, s6, 284
                  srl          t1, s5, s9
                  addi         gp, t1, -366
                  sra          t1, a3, a3
                  srl          t3, s1, s3
                  ori          t6, a5, 858
                  sub          s3, gp, s6
                  lui          zero, 46588
                  and          t3, t6, s4
                  lui          a4, 974029
                  sll          gp, a4, t4
                  addi         s9, zero, 1456
                  xor          s6, t3, s5
                  slt          s2, t2, t1
                  srai         a7, t3, 28
                  srai         tp, s2, 3
                  or           t5, zero, s8
                  slt          a1, t1, t3
                  auipc        ra, 338744
                  sltu         s1, gp, a6
                  addi         s9, s0, 327
                  add          t3, t1, zero
                  sub          s0, a4, a7
                  add          s8, s0, t6
                  sltu         t5, a1, a6
                  or           a6, sp, gp
                  sub          a3, s2, s7
                  srai         a4, s6, 30
                  sub          t0, s10, s7
                  auipc        s7, 315221
                  sra          t1, a2, s2
                  srli         tp, a3, 19
                  sltiu        s6, a5, 1688
                  addi         s8, a0, -1197
                  nop
                  slli         s8, s9, 17
                  srli         a1, t3, 8
                  add          tp, a6, zero
                  xori         s6, s2, 227
                  xori         s2, t5, 1895
                  add          a0, t0, t2
                  or           s4, t3, t2
                  sltiu        t3, a7, -274
                  srli         s1, s7, 16
                  sltiu        s10, s10, 1423
                  nop
                  sltiu        gp, s7, 889
                  addi         a1, a2, 616
                  add          tp, ra, a3
                  slli         a1, s11, 1
                  srai         a7, a2, 24
                  auipc        t6, 408562
                  sub          sp, s4, zero
                  srli         s9, a3, 28
                  addi         t6, a1, 282
                  xori         sp, a7, 589
                  srl          t6, t4, s3
                  xor          t1, t5, t1
                  add          tp, a5, tp
                  xori         s6, a2, 1984
                  add          s7, a7, s3
                  andi         gp, s0, -1335
                  nop
                  sll          t4, s0, zero
                  ori          s1, t4, 135
                  xori         gp, s2, -1212
                  andi         s10, t5, -1769
                  nop
                  slti         s6, a5, 140
                  add          a3, t4, t4
                  andi         a0, a4, 1255
                  add          t0, s6, t0
                  sltiu        s9, a4, 799
                  ori          s7, s8, 547
                  srai         a1, zero, 0
                  xor          t4, s5, t1
                  sltiu        tp, s0, -1774
                  add          a4, a4, a0
                  slt          a6, a7, s7
                  lui          s3, 347974
                  srli         s10, s8, 29
                  sltiu        t4, s3, 1504
                  sltu         s3, a7, s4
                  and          ra, s1, t1
                  slti         a3, a2, 1660
                  sltu         t1, t1, a4
                  auipc        s11, 210890
                  nop
                  lui          a4, 271089
                  srai         s1, a1, 18
                  andi         s4, s1, -1120
                  sra          s1, t0, a0
                  or           s0, t0, t2
                  and          t3, s7, tp
                  slli         gp, t0, 2
                  slti         t0, t1, -1036
                  nop
                  andi         t5, t5, -1991
                  auipc        t1, 148191
                  sub          a1, zero, a2
                  srai         s4, t6, 3
                  auipc        s4, 232782
                  xor          s6, tp, s10
                  srli         a0, s9, 12
                  srai         a3, t4, 20
                  slt          a4, s4, s10
                  slti         sp, a4, 832
                  lui          t1, 633549
                  or           sp, s8, s10
                  or           s9, a4, s9
                  sra          t0, a7, a7
                  srl          s4, s5, s7
                  srl          tp, a1, ra
                  srl          zero, t5, s5
                  nop
                  sra          sp, ra, sp
                  sltiu        tp, a2, 1661
                  sll          s4, s1, t6
                  sub          t0, a2, a5
                  addi         ra, t1, 374
                  auipc        t6, 868374
                  slt          t4, s2, a6
                  sub          zero, s0, zero
                  xori         ra, s11, 2009
                  nop
                  auipc        t0, 172484
                  lui          s1, 714285
                  andi         t0, a5, -1891
                  add          a3, t6, a3
                  add          s5, s9, t5
                  and          t4, a6, ra
                  xori         a4, tp, -571
                  ori          a3, t1, -589
                  slli         s3, a0, 14
                  or           t4, s3, a1
                  srai         s11, s9, 28
                  slti         s4, s0, -716
                  sltu         a1, s11, t4
                  auipc        s0, 24450
                  sub          s0, a3, ra
                  srli         a7, t1, 22
                  lui          s7, 467915
                  addi         s6, a7, 1371
                  add          s2, s11, s9
                  auipc        s0, 733191
                  nop
                  srai         t0, a6, 26
                  and          s3, s10, s8
                  auipc        a6, 1007507
                  sltu         s7, s10, s7
                  slli         t1, s3, 20
                  xor          tp, s4, a4
                  sltu         tp, s8, sp
                  ori          sp, a5, -2007
                  add          s7, s3, s0
                  or           t6, ra, t1
                  nop
                  slti         a0, t1, -1482
                  lui          a6, 639592
                  srai         s10, tp, 18
                  srl          s9, s4, s7
                  and          t5, sp, a0
                  sltu         s9, s5, s10
                  andi         s5, s6, -1773
                  sub          t6, a2, s9
                  andi         a3, s7, -1584
                  xori         a3, s7, 1514
                  nop
                  srai         t0, s0, 25
                  and          s11, gp, s9
                  slt          s2, a2, a5
                  add          tp, a6, a5
                  addi         s3, sp, 2037
                  ori          ra, a3, -1982
                  lui          s8, 839585
                  slli         s9, t5, 18
                  sll          tp, s7, a2
                  sub          a0, a6, s1
                  xor          a7, s0, s8
                  xori         t0, s0, -1247
                  sll          gp, s3, t5
                  slt          s7, a2, t3
                  srli         s6, s2, 6
                  addi         tp, sp, -172
                  auipc        s5, 305364
                  slt          s7, s8, a2
                  lui          t3, 1045918
                  nop
                  add          t4, a7, a2
                  addi         a6, t2, 1223
                  addi         t5, s11, -1558
                  add          s8, t1, s2
                  andi         s0, a4, 1494
                  xori         s10, s10, 701
                  addi         zero, s5, 656
                  or           s4, t3, s6
                  srli         t6, a7, 13
                  or           s0, t3, gp
                  slli         s6, t3, 11
                  ori          s10, s6, -1827
                  or           t3, s4, zero
                  andi         s0, t1, -919
                  sra          s10, s6, zero
                  sltu         ra, zero, s1
                  sltu         s0, s5, s7
                  sltu         s7, a3, t3
                  sra          a7, s8, t5
                  sltu         t6, s11, a4
                  sra          s5, a3, gp
                  ori          ra, s11, -696
                  sltu         a4, s1, s0
                  slti         s3, t2, -823
                  xor          s0, s9, s4
                  slti         s6, a4, 92
                  ori          a3, zero, -1664
                  ori          t6, t3, -533
                  srl          s2, s7, s4
                  addi         t0, a6, 1900
                  slt          gp, t6, s9
                  sra          t5, tp, a7
                  andi         a4, t2, 255
                  sltiu        s8, s11, -1554
                  addi         t0, s4, -531
                  and          s0, t5, s6
                  and          t1, t6, s4
                  nop
                  lui          s1, 11671
                  slt          zero, a0, a3
                  sll          s5, s7, s10
                  and          a0, sp, s9
                  slti         zero, t4, -410
                  slli         a0, t1, 3
                  sltiu        t4, s11, 1639
                  sub          s10, sp, t5
                  slt          a1, s8, s11
                  nop
                  sltiu        gp, t5, -556
                  auipc        t0, 970126
                  srli         gp, s6, 0
                  srli         tp, a0, 20
                  lui          a3, 695615
                  sub          s1, t2, t2
                  sra          tp, tp, a1
                  slli         ra, s6, 27
                  xori         t3, s10, 568
                  andi         s5, a1, 1232
                  xori         s8, a6, 1760
                  slli         gp, s8, 15
                  and          a6, a3, a3
                  and          t3, s6, s6
                  addi         t3, a1, 488
                  slt          t4, t4, s7
                  add          a6, a5, s2
                  slt          zero, s7, a5
                  nop
                  sll          t3, a0, t6
                  sub          s11, s11, gp
                  nop
                  andi         s8, t5, 1112
                  auipc        s6, 331951
                  xor          s7, a7, ra
                  or           s3, ra, t4
                  andi         s6, s8, -1030
                  and          tp, t6, a1
                  auipc        a1, 616725
                  ori          t1, s11, 978
                  slt          sp, s0, t2
                  srli         t4, a4, 15
                  slli         t4, sp, 2
                  nop
                  sltiu        s0, s6, 308
                  slli         a6, a0, 28
                  srai         t6, a4, 22
                  xori         s8, ra, 1791
                  nop
                  ori          zero, a7, 144
                  xori         ra, s11, 696
                  ori          s5, s7, -225
                  slti         s3, s11, 1052
                  xori         s3, s3, -1255
                  sltu         s7, zero, a2
                  sub          t4, s10, tp
                  slt          t6, a7, t5
                  srai         a1, t0, 27
                  slti         a3, s4, 1110
                  slt          s3, s1, a4
                  add          tp, s11, s6
                  add          a6, s0, s7
                  slti         ra, a3, 1960
                  sra          t3, zero, s6
                  slli         t0, a7, 13
                  auipc        t6, 679132
                  sltu         t1, s9, a7
                  xor          s7, s4, s10
                  sltu         t6, s5, s7
                  lui          tp, 664781
                  nop
                  sltiu        s2, a4, 1118
                  lui          sp, 423133
                  lui          a3, 404168
                  srai         zero, s4, 18
                  slt          s7, sp, ra
                  auipc        t3, 340528
                  addi         s2, zero, 94
                  sub          a3, s1, a1
                  nop
                  sub          s4, gp, t3
                  srl          a0, t4, t0
                  sltu         s8, s2, s9
                  sra          gp, t0, a3
                  srai         s0, t6, 24
                  ori          t1, t3, 1195
                  srli         s6, s1, 17
                  lui          t5, 632220
                  sltiu        s3, a5, 1507
                  slli         t5, t5, 22
                  andi         s10, sp, -684
                  sltu         s5, s8, t6
                  sll          s5, s2, s11
                  lui          s6, 264031
                  sltiu        s7, s8, 634
                  xori         s8, a3, -1365
                  ori          a7, gp, 305
                  lui          t0, 899145
                  xori         ra, s5, -689
                  sltu         s9, t3, s8
                  addi         s8, a3, 955
                  auipc        t0, 1009377
                  lui          t6, 819706
                  andi         t5, a7, -59
                  lui          s9, 473679
                  add          a4, a2, a5
                  xori         ra, s0, 1926
                  slti         tp, s9, -120
                  sub          t6, t2, ra
                  nop
                  srl          zero, s0, t3
                  or           tp, a6, s8
                  sub          s7, a2, s11
                  sub          sp, s6, a3
                  srl          a4, s9, s10
                  srl          sp, a5, s7
                  sll          s0, s4, zero
                  and          s0, ra, a7
                  srli         gp, s2, 6
                  nop
                  li           ra, 0xdc031c63 #start riscv_int_numeric_corner_stream_30
                  li           t1, 0x80000000
                  li           a0, 0x52a1e212
                  li           t5, 0x756a59f0
                  li           a1, 0xa5726443
                  li           t6, 0x3e82fe1
                  li           s11, 0x0
                  li           a6, 0x59794b25
                  li           s7, 0x80000000
                  li           s1, 0xffffffff
                  add          ra, t5, t5
                  addi         a0, s1, 1912
                  sub          a0, a1, a6
                  nop
                  sub          t1, a0, t1
                  nop
                  nop
                  nop
                  addi         s7, a6, 1407
                  lui          a6, 1044611
                  nop
                  nop
                  add          ra, t6, a0
                  lui          t1, 199812
                  auipc        ra, 576869
                  lui          s7, 199480
                  sub          s7, a6, a6
                  lui          a6, 518868
                  addi         ra, ra, 613
                  add          a1, a1, t1
                  add          t5, s7, t6
                  auipc        s11, 684450 #end riscv_int_numeric_corner_stream_30
                  slt          a0, s9, a4
                  sub          s7, t5, t6
                  nop
                  slti         t1, a1, 1002
                  sra          a7, s8, a7
                  addi         s3, s7, -655
                  or           t5, t3, zero
                  sll          s10, s8, t6
                  add          s7, a6, s1
                  xor          t3, s0, a4
                  addi         s10, s3, 56
                  srl          zero, a6, a3
                  srl          s6, s11, t5
                  sltu         s9, a5, a4
                  srli         s9, ra, 18
                  xor          a6, t5, t4
                  lui          s10, 264291
                  auipc        a7, 361120
                  andi         a6, s0, -504
                  sll          s10, s7, a3
                  xor          t3, gp, a4
                  xor          s6, t6, a1
                  srl          s9, s4, gp
                  or           a4, s5, a7
                  sub          s5, a0, a1
                  lui          s7, 308548
                  srai         a6, s8, 21
                  add          s0, t3, s3
                  xori         zero, a4, 1320
                  srai         a3, t4, 12
                  auipc        t5, 883235
                  slli         s4, a6, 8
                  and          t1, t3, s10
                  and          t6, s10, s7
                  sltiu        sp, tp, -681
                  srai         tp, s4, 7
                  xori         a3, t5, -785
                  srai         a6, a1, 10
                  xori         sp, t1, 960
                  and          s0, a1, a4
                  srli         s7, s8, 15
                  sra          a3, s2, t6
                  ori          t3, s5, -1399
                  srai         s4, zero, 25
                  and          t0, s2, a1
                  or           t6, gp, t6
                  slti         s0, zero, -1592
                  lui          a6, 549156
                  slt          a0, zero, s4
                  sub          t3, gp, a7
                  sub          s7, a4, s8
                  ori          s0, s11, 1911
                  slt          s1, s1, a7
                  srai         t3, a0, 3
                  addi         s10, t3, -351
                  slli         s3, a1, 7
                  sra          ra, s2, t4
                  ori          a1, t5, -28
                  or           t0, s6, s6
                  sll          s7, s7, tp
                  sltiu        t0, s4, 1266
                  srli         gp, tp, 0
                  sltu         a3, t4, s1
                  slli         s1, s0, 7
                  auipc        s11, 571005
                  srai         a6, tp, 5
                  sltiu        s3, s9, 1434
                  srai         zero, a7, 7
                  sub          sp, t1, gp
                  or           a0, zero, s1
                  xori         s8, s2, 534
                  srl          a6, t2, s5
                  and          s0, s4, t3
                  andi         s5, gp, 1135
                  xor          t3, s3, ra
                  and          a6, a3, tp
                  add          a3, a7, a0
                  addi         t1, s10, 555
                  sll          t4, s2, t6
                  sra          t6, s8, a5
                  sltiu        t6, t2, -484
                  slt          t6, s8, a5
                  slt          s3, a0, a0
                  xori         s7, a7, -905
                  add          t3, ra, s7
                  andi         s3, a6, 1561
                  or           a3, a3, s7
                  slli         t3, ra, 28
                  srai         s1, s1, 11
                  addi         s9, t1, -397
                  sub          zero, s9, t3
                  xor          sp, s11, a0
                  xori         s8, t1, -1731
                  lui          t6, 973147
                  sub          s6, a6, t2
                  auipc        t6, 423560
                  xor          a1, t6, s1
                  sltu         ra, s11, tp
                  ori          s0, a0, 1021
                  sltiu        a4, ra, -1643
                  xor          t1, a2, zero
                  sub          s0, t1, a2
                  sltu         a3, t5, t4
                  slli         s8, s9, 30
                  nop
                  or           s9, zero, a1
                  add          s5, s9, gp
                  nop
                  sra          s9, t5, s5
                  srai         a0, a4, 17
                  srai         s1, s1, 14
                  and          a3, s3, gp
                  srl          s6, s0, s5
                  addi         s0, t6, 275
                  xori         s1, a6, -1513
                  sll          a1, t1, ra
                  slt          ra, t6, s10
                  srl          zero, t1, a2
                  lui          zero, 977523
                  srl          s8, a5, tp
                  srai         s8, s3, 6
                  slti         a4, tp, 42
                  sltu         s1, t1, t0
                  and          s5, a4, s6
                  slli         a1, a0, 26
                  slli         sp, t3, 1
                  slt          t1, s4, tp
                  sll          t5, a0, a0
                  sll          a3, t4, a5
                  andi         s4, t2, -132
                  and          t6, a0, s7
                  sll          t3, s10, a7
                  add          a3, s9, t3
                  auipc        s11, 1026419
                  sll          a4, t2, t1
                  sltu         t0, s3, tp
                  slt          a4, t4, s3
                  sub          a1, a0, t0
                  slt          a0, t4, s6
                  slti         a6, ra, 719
                  auipc        ra, 318425
                  nop
                  sra          s8, t4, s2
                  xor          t6, gp, tp
                  sltiu        t0, t3, -159
                  srai         zero, zero, 11
                  sltu         t5, sp, sp
                  lui          t5, 1010977
                  nop
                  add          tp, zero, s0
                  srai         t0, a4, 22
                  sltu         a3, a4, t6
                  sltu         s1, a1, t0
                  srl          s6, s10, ra
                  sra          t3, t4, s8
                  lui          t6, 909371
                  nop
                  andi         a0, t3, -330
                  srli         t0, t4, 12
                  lui          t1, 503719
                  srai         s2, t4, 29
                  slli         a4, a6, 9
                  sll          s7, zero, s6
                  add          s7, tp, a4
                  lui          tp, 421109
                  srl          t5, s1, s7
                  addi         tp, a6, 1974
                  or           t5, t0, t1
                  lui          gp, 433184
                  sltiu        s10, tp, 1289
                  sub          s8, zero, t3
                  addi         a1, s5, -1621
                  or           tp, sp, t5
                  add          t1, t0, s3
                  slti         a3, t4, -1259
                  srl          gp, s9, a1
                  srl          t3, s10, tp
                  srli         s4, a7, 13
                  auipc        t4, 760912
                  ori          t4, zero, -484
                  slti         a6, t4, 795
                  slt          tp, sp, tp
                  auipc        a0, 453293
                  or           ra, s9, a5
                  slli         s4, s8, 19
                  slti         s2, a1, 942
                  nop
                  auipc        s2, 891087
                  lui          a4, 602647
                  srli         tp, s8, 24
                  sltu         s0, a3, t3
                  slt          s9, a5, a6
                  sll          s11, s7, s10
                  nop
                  sltu         s11, t5, ra
                  sltu         s7, t2, s5
                  lui          s9, 693517
                  and          s7, tp, a5
                  srai         s2, ra, 22
                  slli         s10, a2, 16
                  nop
                  srl          s10, tp, t6
                  slti         tp, a7, 728
                  sra          a1, t5, s1
                  add          s0, s6, s10
                  srl          zero, s9, s1
                  nop
                  sltu         t3, a1, t0
                  andi         s0, gp, -1571
                  xor          a7, s6, sp
                  xor          t0, t5, zero
                  sub          t1, t0, s3
                  slti         s8, zero, 821
                  srai         t4, t2, 10
                  sll          s0, t1, a0
                  sltu         s4, t3, t6
                  auipc        a1, 674066
                  sra          t6, s5, s3
                  auipc        s1, 105448
                  srl          ra, a6, s1
                  nop
                  add          a6, t3, a4
                  sub          t1, a7, sp
                  or           t5, a5, s0
                  sll          t1, a4, a5
                  srl          s4, s4, s5
                  xori         a7, s1, -517
                  or           gp, a5, t0
                  slti         s9, a0, 1646
                  xor          a3, s8, a0
                  or           s6, t3, s10
                  auipc        sp, 836655
                  auipc        s6, 295446
                  xor          t6, t5, s0
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           a1, 0x80000000
                  li           sp, 0x57956964
                  li           s9, 0xffffffff
                  li           ra, 0xffffffff
                  li           t6, 0xffffffff
                  li           a0, 0x0
                  li           t4, 0xffffffff
                  li           s3, 0xdabcb5b6
                  li           s1, 0x80000000
                  addi         a0, sp, 1358
                  auipc        a1, 588470
                  auipc        sp, 705384
                  add          t6, t4, s9
                  nop
                  nop
                  sub          t6, t6, t4
                  auipc        a0, 781894
                  sub          s9, t6, a0
                  addi         s9, t4, -880
                  nop
                  nop
                  auipc        s9, 604465
                  add          a0, a0, ra
                  nop #end riscv_int_numeric_corner_stream_9
                  sltiu        a0, t2, 992
                  ori          s7, s6, -1966
                  srl          s7, a3, zero
                  add          a4, a4, t5
                  ori          s6, s11, -355
                  lui          t6, 955553
                  sltiu        ra, a5, 367
                  srl          t4, s1, t1
                  slt          a7, s8, s2
                  sltiu        s7, ra, -875
                  sltiu        t1, t6, 946
                  sra          s8, a0, s9
                  xor          t3, t1, a1
                  slt          a3, s10, s5
                  andi         t1, a1, 1356
                  slli         t6, a1, 3
                  andi         tp, t5, 725
                  nop
                  sra          zero, t4, a1
                  lui          t6, 542837
                  slti         s4, a3, -275
                  slli         s3, t3, 18
                  sltu         a6, gp, a1
                  or           a0, t2, a4
                  slti         a6, s6, -568
                  addi         sp, t4, 868
                  slti         t4, ra, 612
                  add          zero, a0, a3
                  and          ra, a1, tp
                  addi         a4, s8, 1007
                  sltu         a3, a5, s1
                  or           t3, s8, t6
                  sltiu        t4, tp, -1200
                  slt          s8, a0, a4
                  slti         a6, s7, 1044
                  slli         t4, a1, 24
                  slt          s5, s1, s7
                  xor          zero, s7, s3
                  xori         s6, t3, -429
                  sra          s6, a0, s0
                  xor          s2, gp, s9
                  or           s2, s1, s10
                  slti         a1, tp, -13
                  add          t0, t0, a3
                  auipc        a4, 336636
                  srli         a1, s3, 19
                  addi         s3, s8, 646
                  and          a6, t4, sp
                  nop
                  srli         t6, s10, 16
                  sub          tp, s3, zero
                  ori          t6, a5, 1334
                  sltiu        t6, a6, -478
                  lui          t0, 62048
                  and          ra, s10, a3
                  sub          t4, t3, s10
                  andi         t0, s4, 1565
                  add          s11, a6, a7
                  nop
                  srl          s10, a2, a6
                  and          sp, t1, t5
                  and          s6, t4, s1
                  sub          t4, s0, t1
                  slti         s9, a2, 520
                  sub          t3, a6, zero
                  sltiu        s11, ra, 697
                  srai         t5, t3, 4
                  add          t3, a3, t3
                  and          sp, t0, t1
                  nop
                  and          s7, s3, a2
                  sll          ra, s5, s4
                  add          s8, s2, s11
                  ori          t3, sp, 2043
                  slt          s9, a6, t5
                  xor          t4, gp, sp
                  lui          a0, 494448
                  xor          a3, s5, a3
                  nop
                  add          s1, s6, s1
                  sub          s3, s5, s6
                  sltu         s3, s2, s4
                  srai         a7, t6, 4
                  ori          tp, a1, -266
                  slli         s6, a0, 17
                  slti         s7, t0, 1105
                  sltiu        s2, s3, -813
                  sra          s8, a7, s4
                  xori         s6, t5, 1226
                  slli         s7, s11, 11
                  andi         a0, a0, 659
                  lui          a3, 890490
                  lui          tp, 153573
                  srai         s5, sp, 5
                  add          s4, s11, a0
                  ori          zero, s6, -1036
                  add          s11, s5, a0
                  addi         a3, a2, -959
                  xori         a1, s8, 1430
                  lui          s4, 445358
                  srai         t4, tp, 28
                  lui          sp, 628711
                  xori         tp, zero, 25
                  sltu         s5, a6, a5
                  auipc        s1, 470316
                  xor          t3, s7, a4
                  sltiu        a6, a6, -712
                  slt          s1, ra, a6
                  sltu         a4, a2, a3
                  srl          s5, t1, t0
                  slti         s7, s4, -986
                  sltiu        a6, t4, -1128
                  srl          t1, t4, a6
                  add          s9, t4, t5
                  slli         s7, a1, 14
                  slt          t4, a7, s11
                  sll          a1, sp, s4
                  sra          t6, tp, a5
                  xor          s2, gp, s4
                  xori         gp, t2, -663
                  sltu         s3, s8, s11
                  slli         sp, s3, 23
                  addi         a4, t6, 1276
                  xor          s7, s7, a0
                  slt          sp, a6, s4
                  slt          a1, a2, t6
                  srl          t4, s4, s11
                  or           t1, a6, a4
                  sltu         s1, s5, t6
                  xori         a3, gp, -2
                  and          a4, t1, t0
                  xor          s7, t2, a2
                  addi         s0, t1, -1258
                  srl          s3, a3, sp
                  lui          s5, 901170
                  srl          gp, a6, s10
                  sub          zero, a5, s8
                  srai         t1, s2, 11
                  xor          a7, zero, zero
                  slti         s8, a1, 1445
                  or           a0, zero, t1
                  slti         a1, t3, 23
                  and          s6, s8, s6
                  srli         gp, s4, 27
                  slti         s0, s10, -2044
                  srli         s3, a7, 8
                  slt          zero, s0, ra
                  ori          s6, t6, 1763
                  or           s2, s9, t6
                  andi         zero, s5, 332
                  sltiu        s6, ra, 1961
                  xori         s1, s1, 2000
                  srli         a7, s5, 28
                  srai         s2, t5, 4
                  sll          gp, s10, a3
                  lui          t3, 132962
                  add          a0, ra, t0
                  and          s8, t1, a3
                  and          t6, s8, t0
                  sll          zero, t3, s7
                  sub          a3, s7, sp
                  sltiu        t3, s3, 277
                  lui          tp, 570567
                  slli         s11, a5, 11
                  xori         t0, s2, 292
                  sltiu        s9, s7, 1711
                  addi         s2, s11, -604
                  slli         s11, a4, 6
                  xor          t6, sp, zero
                  ori          a3, a4, -828
                  slt          s4, gp, s2
                  slt          s0, a1, s10
                  srli         s6, sp, 3
                  slt          s6, s1, t2
                  addi         a1, s7, 1106
                  srl          s8, s7, a6
                  ori          s9, ra, -478
                  nop
                  xori         s6, s0, 707
                  slt          s6, s7, s0
                  sltiu        s6, t6, 1661
                  xor          s3, s10, tp
                  lui          t6, 284195
                  slt          t1, s4, t0
                  and          a4, t5, s3
                  andi         s5, s4, 1841
                  srli         s10, gp, 29
                  slti         s2, s6, 1462
                  sub          s6, t3, s4
                  lui          t1, 106878
                  slti         ra, s7, -827
                  xor          s7, s0, s2
                  xor          t3, zero, t2
                  sltiu        a6, s10, -176
                  addi         t1, gp, 1198
                  srai         t1, s5, 3
                  srl          ra, a4, ra
                  addi         t1, a4, 1138
                  nop
                  sll          t0, t1, tp
                  ori          a4, t4, 1721
                  ori          a4, a0, -146
                  xori         a0, a1, 392
                  xor          sp, gp, tp
                  sub          a3, s9, t3
                  and          s4, t1, s8
                  add          zero, t6, gp
                  nop
                  lui          t1, 347262
                  sltiu        s0, a0, -1841
                  add          s4, t1, a3
                  andi         s9, a5, -56
                  srli         t5, s9, 17
                  add          s4, a0, tp
                  slti         sp, s1, -94
                  srli         s8, tp, 12
                  sltu         a7, tp, a3
                  or           s11, s6, t1
                  add          a7, s4, s0
                  sltu         a3, s2, ra
                  and          s6, s2, s8
                  slt          zero, s9, a6
                  andi         t1, a0, -1061
                  add          s10, a4, gp
                  xor          a0, s6, a5
                  add          zero, t5, s6
                  add          a0, a1, s9
                  srai         s8, s8, 4
                  add          t1, t4, tp
                  auipc        s6, 907166
                  nop
                  srai         t3, t2, 25
                  xor          t0, t5, s10
                  addi         s4, gp, 1716
                  sltiu        s10, a1, -1538
                  add          s11, zero, s10
                  sub          s4, s6, a3
                  andi         a3, s6, -849
                  lui          a4, 845980
                  auipc        s7, 524687
                  xor          sp, t0, t0
                  lui          zero, 956081
                  sll          t6, t6, s8
                  slti         s0, a1, 1471
                  sub          t0, a7, a3
                  sub          a7, sp, t6
                  or           s1, s7, s5
                  sltiu        s9, s2, -994
                  srl          s3, t6, tp
                  lui          zero, 450664
                  srai         tp, ra, 5
                  sll          t4, a2, s10
                  lui          t1, 520496
                  srl          t5, t2, t4
                  auipc        a4, 767429
                  xori         t6, s10, -842
                  slti         tp, t2, -113
                  andi         t0, sp, -1335
                  andi         s8, tp, 998
                  add          a1, s1, a7
                  sltiu        a4, s1, -1056
                  slti         s6, s6, -1044
                  addi         s11, a7, 753
                  or           tp, s9, a7
                  srai         s7, a0, 0
                  sltiu        s3, s7, 727
                  xor          zero, sp, a1
                  sra          t3, s6, s6
                  andi         s8, s7, -1999
                  slti         tp, t2, 611
                  sll          t0, t0, t0
                  sll          s9, t2, a1
                  sll          t3, t0, a2
                  sra          s11, t5, t5
                  sll          s6, s4, a5
                  sltiu        a6, a6, 1638
                  xor          s11, a2, s0
                  sltiu        a4, s7, -489
                  lui          t3, 337073
                  slt          gp, ra, s5
                  and          a4, a5, a6
                  and          s9, s5, a5
                  auipc        t6, 861275
                  xor          a7, s8, s5
                  and          t1, s4, a0
                  andi         s7, a3, 1065
                  nop
                  lui          ra, 976302
                  xor          s5, a4, s11
                  sltiu        a3, s1, -1661
                  srl          s9, t1, a0
                  slli         s0, s3, 21
                  xor          t1, s1, s6
                  auipc        a6, 347889
                  sra          s3, t0, a2
                  and          s1, s1, s11
                  sltiu        s11, s0, 1628
                  slti         a0, tp, -1416
                  srl          s10, t6, s4
                  sll          tp, t2, zero
                  andi         t3, a0, 1294
                  nop
                  xor          a3, tp, t2
                  nop
                  sll          a3, t4, t2
                  add          a6, s5, tp
                  and          a6, s5, zero
                  andi         t0, a4, -354
                  slli         s9, t1, 22
                  sll          gp, a2, s0
                  slli         a4, gp, 14
                  auipc        a0, 95756
                  slt          zero, tp, tp
                  ori          gp, s0, 1175
                  or           s6, a7, s4
                  slti         s5, a4, -1931
                  srl          a7, s6, s4
                  xor          a3, t0, a4
                  xori         a1, t1, -1465
                  srli         t1, gp, 24
                  lui          tp, 333456
                  ori          s4, s6, -2039
                  srl          t3, a6, s9
                  slli         a0, s0, 22
                  andi         a4, a1, 1366
                  slli         s10, gp, 13
                  sub          t1, s8, gp
                  addi         s11, s1, -1042
                  sltiu        t3, s1, 1295
                  ori          t1, a2, 1632
                  slli         gp, s3, 31
                  srli         s8, t3, 19
                  sll          t3, s2, s9
                  slt          t0, s0, s7
                  add          t5, s1, s8
                  srai         t3, t0, 22
                  xori         s7, t1, -1299
                  and          s3, t4, a1
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s3, 0xbecb2c2c
                  li           a1, 0xffffffff
                  li           s2, 0x80000000
                  li           t3, 0x6d1fdcd4
                  li           gp, 0x0
                  li           a7, 0x6e494e52
                  li           t5, 0x80000000
                  li           t6, 0x5c447ece
                  li           s4, 0x132e9fae
                  lui          a7, 791436
                  auipc        s2, 248246
                  lui          a1, 213526
                  auipc        t3, 284923
                  add          t3, s2, t3
                  addi         t6, gp, 630
                  lui          gp, 128654
                  add          a1, s4, a7
                  nop
                  addi         s2, gp, 1943
                  lui          s4, 656844
                  nop
                  sub          a1, t3, s2
                  add          t6, s2, s2
                  add          t5, s3, s2
                  add          t3, t3, s3
                  sub          s4, s3, ra
                  nop #end riscv_int_numeric_corner_stream_18
                  auipc        a0, 974101
                  srl          tp, s0, a7
                  sll          a7, t3, t6
                  addi         sp, s8, 1889
                  xori         gp, a5, -1068
                  slt          t6, t3, t6
                  ori          a1, s0, 357
                  and          s2, s5, sp
                  add          s10, sp, s1
                  xori         a0, t3, 823
                  sub          s11, s6, s5
                  sltiu        tp, t1, -1310
                  sub          t1, a1, a6
                  lui          zero, 435076
                  or           t0, sp, gp
                  xor          s0, t2, s3
                  ori          a1, s9, 1311
                  srai         a4, t2, 16
                  slli         a6, a0, 24
                  lui          ra, 68641
                  nop
                  addi         a3, zero, 275
                  andi         t0, t2, 780
                  sub          t6, a4, s1
                  sll          s6, a0, a1
                  xor          t6, s0, t6
                  sltiu        zero, s9, -1802
                  lui          s9, 517596
                  add          t0, ra, a2
                  or           t5, s8, s0
                  sub          s8, s9, ra
                  sub          a3, a7, s1
                  slli         gp, a2, 3
                  srli         s4, a3, 1
                  add          s7, t5, s2
                  srli         s0, s8, 27
                  and          t6, s8, a6
                  srli         a3, a4, 4
                  ori          gp, t6, 1181
                  srai         s5, t6, 15
                  slt          s6, s11, t1
                  slti         s2, s1, -977
                  ori          a7, a1, -151
                  ori          t5, t4, -502
                  sltu         s7, s7, s2
                  andi         s7, s5, -1073
                  andi         s8, a2, -1859
                  sll          t6, t2, s4
                  auipc        t1, 965438
                  srai         tp, gp, 28
                  andi         a7, ra, 1391
                  sra          t5, a5, s0
                  srai         s7, s9, 1
                  sra          s6, a3, s11
                  xor          t1, s11, s9
                  srl          sp, t2, gp
                  sll          s11, t2, a7
                  andi         sp, s6, -120
                  andi         s0, s5, 602
                  and          s10, s11, t0
                  sub          tp, t6, gp
                  auipc        s6, 331855
                  lui          s3, 59983
                  sltiu        s1, a6, 427
                  sltu         s2, t6, s10
                  sll          a4, s3, a6
                  xor          s4, s9, t2
                  srl          gp, sp, t4
                  xor          t5, t5, sp
                  xor          a7, zero, a3
                  add          s2, a5, a7
                  srli         a3, zero, 9
                  srai         s10, t2, 31
                  add          s7, a4, s6
                  andi         zero, t6, -42
                  lui          s6, 430849
                  addi         s10, s0, -1483
                  and          s4, s5, s6
                  slti         s2, s1, -657
                  sra          t6, sp, t2
                  sra          a6, s4, a3
                  add          t5, s8, a0
                  sltiu        ra, s10, -1675
                  lui          s5, 8956
                  srai         t5, s3, 6
                  sltu         s3, a2, t0
                  sll          a4, s4, tp
                  nop
                  sltiu        s11, a3, -855
                  auipc        t6, 934226
                  sra          s7, s3, a0
                  andi         a7, s2, 581
                  srli         a3, a1, 12
                  slti         t6, s8, 9
                  and          t4, t5, a3
                  ori          a0, gp, 1347
                  sra          s8, t2, s2
                  andi         s0, a1, -673
                  auipc        zero, 899335
                  auipc        s9, 581586
                  sub          a4, a1, s7
                  nop
                  sub          s5, a2, a1
                  sltiu        s11, s4, 1765
                  addi         s11, t3, 2009
                  slt          s11, t3, s9
                  or           t0, s7, s10
                  add          a3, t5, s9
                  slti         ra, sp, 1554
                  nop
                  addi         t3, a7, -156
                  sub          ra, t3, s6
                  srai         ra, a3, 11
                  ori          a3, s9, 248
                  ori          s1, a1, -1762
                  nop
                  sub          sp, t1, t0
                  srl          a4, t1, t2
                  slli         t3, s11, 2
                  or           t4, gp, s5
                  ori          sp, s1, -208
                  srai         s3, s2, 18
                  xori         ra, a6, 1806
                  sltu         s8, ra, s0
                  sra          tp, a2, s5
                  add          s4, ra, a6
                  sltu         sp, s2, s2
                  xori         t5, t5, -832
                  slti         s0, s10, 1943
                  srl          a0, a4, a3
                  lui          t5, 723205
                  auipc        s10, 220552
                  sub          t0, a5, s9
                  ori          s9, ra, -1465
                  sltiu        t5, t3, -1698
                  ori          t1, a2, -767
                  sub          sp, a6, sp
                  slti         t0, sp, -1466
                  sltu         s11, t3, t6
                  addi         s0, s3, 651
                  sltu         tp, a3, s1
                  slti         zero, a3, 830
                  xor          s2, s7, t5
                  nop
                  ori          t5, s4, 48
                  and          t4, a1, a3
                  addi         t3, a2, 1495
                  lui          t5, 34036
                  sub          t3, tp, a3
                  sra          t4, s9, s7
                  sll          ra, s6, s9
                  slli         s0, s9, 22
                  srli         tp, a0, 28
                  srai         a6, a5, 23
                  nop
                  sltu         t6, s4, a2
                  slt          s6, a6, s4
                  sra          s8, t2, t2
                  srai         ra, t5, 12
                  and          t5, s11, s8
                  andi         zero, a6, -175
                  andi         tp, tp, -1073
                  srli         s11, s4, 6
                  xor          a7, s3, gp
                  sra          s10, a2, tp
                  slt          tp, tp, sp
                  ori          tp, s9, 334
                  sltu         a1, s8, s9
                  xori         s11, ra, -2039
                  sub          a4, t5, a4
                  xori         s2, a6, -1637
                  nop
                  srl          a1, zero, a5
                  andi         tp, s4, 1150
                  xori         a3, t0, 394
                  addi         tp, a4, -2014
                  auipc        t0, 492314
                  sra          a4, s9, s4
                  sll          zero, s0, zero
                  ori          gp, a2, -1917
                  add          s0, ra, a6
                  sltu         t0, s6, a6
                  srai         ra, a1, 12
                  srai         s11, s3, 3
                  add          s0, a0, a1
                  auipc        zero, 995404
                  srli         t5, t2, 27
                  xor          s3, tp, a0
                  sub          t3, s2, t2
                  or           a4, t4, a6
                  slti         t5, a3, 1008
                  xor          s3, t4, a3
                  sub          s7, t3, a4
                  addi         t0, s11, -898
                  xor          a6, zero, zero
                  add          a0, s4, sp
                  sub          s2, a5, a7
                  and          s4, t4, zero
                  addi         t4, t1, 382
                  auipc        s10, 228179
                  auipc        s11, 383716
                  srai         s3, s1, 16
                  and          t1, ra, s3
                  srl          s1, a1, a5
                  ori          t3, s2, -332
                  sra          t3, s3, s7
                  sltiu        a1, tp, 596
                  lui          s5, 138226
                  sltiu        s3, s11, 1425
                  or           t1, s1, t3
                  nop
                  sltiu        t4, t5, -1123
                  sltiu        a7, a5, -1510
                  slti         sp, s7, 715
                  auipc        s7, 637199
                  andi         s8, a3, -819
                  lui          t3, 471533
                  or           s7, s7, a0
                  srl          gp, zero, sp
                  auipc        tp, 33624
                  srai         t0, a1, 13
                  lui          ra, 812812
                  srai         s11, sp, 13
                  and          t1, s3, a7
                  slli         s10, t0, 22
                  slli         a0, ra, 30
                  and          a4, t1, a2
                  slti         s0, a0, 1476
                  srli         a6, a2, 5
                  sra          a4, t6, t3
                  and          a0, a5, s1
                  sltu         s9, s0, s2
                  and          s10, a3, s11
                  and          t3, t4, s3
                  slti         ra, t1, 1421
                  sltiu        gp, s2, 924
                  sltiu        sp, t3, 1859
                  or           zero, s8, a2
                  srli         s2, a2, 6
                  andi         t1, s10, 87
                  andi         t3, s0, 974
                  addi         ra, ra, -1728
                  ori          t6, t1, 1956
                  srli         s8, a2, 12
                  xori         sp, zero, 888
                  sltu         t1, s3, a0
                  sltu         t4, a2, s11
                  sltu         t1, t4, a7
                  andi         a4, s6, 1628
                  slli         s3, t3, 6
                  slli         a0, a0, 31
                  slt          s2, t4, tp
                  xori         s3, s4, 178
                  sub          s7, a2, ra
                  srli         a3, ra, 8
                  slt          gp, zero, s7
                  srli         a1, t5, 16
                  ori          s9, s2, -113
                  sub          a4, a7, t2
                  slt          gp, a2, s8
                  slli         s7, s0, 29
                  slli         a1, zero, 12
                  srai         t0, s0, 27
                  and          tp, s7, s8
                  auipc        s4, 98109
                  add          t5, s6, s4
                  sll          s0, t0, t1
                  and          s4, t5, t5
                  add          t0, t1, t0
                  xori         a4, t0, 702
                  xor          s4, a6, s7
                  sll          gp, s10, t0
                  srli         s0, a7, 19
                  ori          s9, s11, -1113
                  slli         ra, a1, 12
                  nop
                  auipc        s6, 333440
                  slli         a7, ra, 8
                  slli         t6, t0, 16
                  srli         s11, s7, 7
                  sltiu        s1, a3, -940
                  and          a1, s9, a1
                  xori         a0, zero, 1583
                  ori          tp, a6, -1701
                  add          a3, t6, tp
                  slt          s0, s2, t4
                  lui          tp, 1031015
                  srli         ra, s10, 21
                  srai         t3, t6, 27
                  nop
                  addi         a4, s6, 1645
                  srli         s10, t5, 30
                  xori         s8, a4, 1185
                  lui          s4, 579953
                  xori         t4, t3, 16
                  add          ra, a6, s7
                  slt          tp, s3, s5
                  and          s0, s7, a3
                  slli         a0, t2, 29
                  auipc        s0, 306237
                  auipc        t5, 24145
                  srl          gp, s0, t4
                  ori          t1, a4, -839
                  andi         t5, t2, -11
                  auipc        s7, 126670
                  sra          t5, a3, s11
                  sltu         zero, s9, s7
                  srai         s4, t4, 26
                  sra          a3, t1, s9
                  auipc        s8, 12430
                  lui          s3, 18515
                  andi         ra, gp, 212
                  sltiu        zero, t6, -498
                  nop
                  srli         s3, s11, 0
                  add          s1, t0, a3
                  and          t1, t6, s10
                  add          s10, a7, t6
                  sub          tp, s3, t5
                  xori         s4, s8, 1565
                  andi         s3, ra, 1926
                  nop
                  and          a7, s7, s1
                  srai         s11, a7, 11
                  srai         t0, a7, 6
                  sltu         t4, s2, s0
                  slli         t0, s0, 6
                  lui          gp, 100621
                  slti         a1, gp, 1004
                  xori         ra, s0, 981
                  slt          s11, t5, t4
                  and          a3, t5, t4
                  auipc        ra, 288847
                  srl          gp, a0, a7
                  srli         a6, s7, 27
                  lui          s8, 852374
                  and          a3, a6, t3
                  add          a7, t4, gp
                  sra          a4, s6, t5
                  lui          s7, 224260
                  nop
                  and          t1, a6, s1
                  auipc        t1, 61566
                  addi         gp, ra, 1535
                  slti         t4, tp, 931
                  nop
                  xor          s8, tp, a0
                  add          s10, s0, a7
                  nop
                  slt          a4, s3, s1
                  and          t6, a5, t3
                  slti         t6, a5, -1
                  srl          t4, t6, a7
                  andi         s11, s10, 249
                  sub          t3, ra, ra
                  add          a1, t3, tp
                  sra          t1, s9, t6
                  sub          s3, a0, gp
                  sra          a7, a5, s3
                  sub          tp, a3, zero
                  and          t6, s4, t0
                  srl          a3, a0, s3
                  lui          t3, 551685
                  add          t5, a2, a5
                  sltiu        tp, ra, 360
                  sra          s1, sp, s1
                  xori         s6, t2, -1115
                  nop
                  sub          s7, s1, gp
                  or           a1, s9, t1
                  srai         s1, s7, 31
                  slti         tp, t2, -1002
                  ori          s4, a7, 866
                  sltu         s0, s5, t1
                  xori         s11, t5, 1919
                  addi         a6, s1, 911
                  nop
                  slli         s3, t0, 17
                  xor          s0, ra, a0
                  andi         a4, s6, 355
                  srai         t6, s9, 11
                  addi         t1, t0, 253
                  ori          s9, a4, 77
                  xor          s2, a4, a0
                  srli         gp, a2, 22
                  sub          s2, s7, a1
                  xor          t6, t0, s9
                  sltiu        s2, s7, -353
                  ori          a1, s11, 967
                  sltu         tp, a6, a7
                  or           s3, a4, t1
                  sltiu        ra, s1, 176
                  slt          s11, t2, t6
                  srai         a7, a7, 16
                  xor          a3, sp, s9
                  ori          t1, t6, -994
                  slli         s2, t4, 19
                  srl          s10, a7, s7
                  slti         t3, s4, -2023
                  slti         a6, t2, 169
                  nop
                  srli         tp, s3, 22
                  addi         a4, a3, -1229
                  srai         a6, s5, 26
                  slli         t6, tp, 6
                  slli         zero, t6, 4
                  sll          t1, s9, s7
                  andi         s5, s4, -1282
                  sltu         s6, s3, tp
                  sltu         t4, s7, s9
                  auipc        t4, 285691
                  sll          t0, t3, ra
                  xor          zero, t6, s0
                  slti         t3, t3, -1555
                  ori          t6, s0, 214
                  srli         s2, s4, 5
                  sub          s10, t1, a2
                  xor          s5, s9, ra
                  addi         t5, t5, 1322
                  and          a7, s1, gp
                  srl          t1, a5, s3
                  srli         tp, t5, 16
                  slti         s7, t0, -1064
                  srli         t4, s1, 17
                  and          sp, t3, ra
                  nop
                  andi         tp, t0, -1657
                  nop
                  nop
                  sltiu        gp, s10, 1048
                  slli         tp, s7, 13
                  sll          s0, t4, s3
                  slti         gp, s2, -156
                  ori          a4, a5, 1551
                  nop
                  slt          a6, s0, a3
                  nop
                  andi         s6, a2, -47
                  srli         t5, tp, 4
                  slt          zero, s11, s3
                  or           sp, s0, s3
                  addi         s6, s0, 1749
                  slli         a1, a7, 3
                  sltiu        a3, a1, -306
                  srl          s0, s10, s10
                  xori         s6, s7, -990
                  and          s11, s9, t6
                  srl          s6, t1, t5
                  xor          zero, a6, s5
                  xori         a4, s7, -1649
                  slt          t3, tp, s6
                  sltu         s7, t1, a2
                  srli         s10, a6, 5
                  srai         t0, a3, 14
                  xor          tp, s11, t2
                  addi         t1, s4, -1737
                  add          gp, s6, t2
                  add          s6, s4, gp
                  slti         tp, t2, -936
                  add          s0, s1, t3
                  slti         s4, a3, -976
                  auipc        s5, 496301
                  nop
                  xori         a1, t6, -1633
                  add          a6, s7, t6
                  slli         t3, s8, 19
                  add          t6, a3, s3
                  andi         s4, s1, -223
                  slli         gp, a1, 5
                  srl          t0, tp, sp
                  srli         ra, t1, 28
                  ori          t5, s1, -1961
                  and          a7, t0, t3
                  sltu         s8, s4, a1
                  srli         s8, s8, 0
                  sltiu        gp, s11, -1596
                  srli         t6, a3, 17
                  sltiu        a4, t4, 233
                  add          gp, a3, s7
                  nop
                  slti         a1, ra, -1563
                  ori          t5, s0, -1080
                  lui          a0, 904704
                  or           a1, a2, s5
                  sub          t6, t1, t0
                  slli         ra, t0, 22
                  sra          s2, a3, s2
                  sltiu        s2, tp, 1216
                  srl          s9, gp, gp
                  sltiu        a1, t5, -1144
                  slti         s6, t0, -1491
                  xori         a4, a5, -934
                  slli         s3, s5, 11
                  xor          a3, s3, s5
                  slt          s4, a7, sp
                  lui          s6, 406139
                  srli         a7, t2, 13
                  sra          s4, a2, t0
                  ori          s5, s1, -865
                  sltu         t3, sp, a4
                  ori          sp, s1, 720
                  andi         s7, t2, 798
                  or           t5, zero, a0
                  sltu         s2, t2, s4
                  sub          a6, s5, s4
                  lui          gp, 578196
                  slt          zero, zero, a4
                  srai         ra, s3, 15
                  nop
                  sra          t6, a4, s9
                  srai         s10, s0, 7
                  andi         s4, a2, 136
                  sltiu        a7, s1, -1995
                  xor          t5, gp, a5
                  slli         a0, s0, 15
                  slti         s10, zero, -1523
                  or           t1, t1, a4
                  lui          s11, 831000
                  srai         s0, s3, 29
                  auipc        s7, 639288
                  sltu         t3, a2, sp
                  ori          s11, s9, 441
                  addi         a1, tp, -1492
                  srl          a1, s2, s6
                  slt          sp, s8, a7
                  sra          gp, s0, gp
                  lui          s5, 841499
                  slt          s0, t0, t3
                  nop
                  ori          s2, sp, 1858
                  srli         s0, t2, 23
                  sra          t1, a2, tp
                  nop
                  ori          s5, t3, -473
                  add          s8, gp, s1
                  slti         s7, s9, 820
                  ori          s5, s8, 782
                  slt          s4, a0, s5
                  srai         s0, t6, 15
                  nop
                  add          t6, a7, t6
                  srai         sp, zero, 5
                  xor          a3, s0, a5
                  ori          zero, a2, -949
                  slti         a0, t5, -1617
                  srai         t1, s9, 17
                  srli         s8, t1, 7
                  xori         s1, ra, -1398
                  ori          a0, a6, 1299
                  srai         a7, a7, 31
                  sltiu        gp, tp, 1703
                  auipc        t1, 356337
                  sltu         t6, a5, t5
                  auipc        s11, 972072
                  lui          a3, 993910
                  sub          t3, a4, a6
                  slt          ra, s4, s7
                  sra          s9, zero, s2
                  sltiu        s3, gp, -1676
                  lui          s11, 29348
                  add          t3, s11, tp
                  slti         t1, s9, 326
                  addi         a3, tp, 1071
                  sra          a1, tp, s2
                  srl          t1, s5, t5
                  sra          t6, t3, s1
                  auipc        s0, 886600
                  sltiu        a4, tp, -1437
                  addi         t6, gp, 1071
                  srl          a0, t6, a2
                  srai         zero, s2, 14
                  slli         s7, a2, 3
                  lui          s7, 442169
                  srl          a3, a7, s2
                  add          a1, s0, a6
                  add          s8, s6, zero
                  ori          t4, s8, -27
                  sub          s11, t5, s7
                  sll          zero, t1, t0
                  andi         s7, s4, -1418
                  or           t3, s5, t2
                  srai         t4, s6, 10
                  slti         ra, s1, -1231
                  sll          a3, s4, t6
                  sltiu        tp, s9, -1822
                  nop
                  sra          ra, t3, a6
                  xori         s4, a7, -410
                  srl          s6, t5, a4
                  srl          s9, zero, s1
                  lui          a0, 451910
                  auipc        zero, 429978
                  add          s4, t5, s9
                  slt          a3, s2, s8
                  xor          s1, s2, a6
                  srai         s1, sp, 18
                  sra          a4, t5, s11
                  addi         a7, zero, 1763
                  addi         s11, tp, -1227
                  sub          s8, t6, t0
                  add          s0, s4, t5
                  sra          t1, s2, t5
                  nop
                  ori          t6, a1, -1091
                  addi         a1, s7, 892
                  lui          a1, 275844
                  andi         s8, t3, -427
                  xori         a4, sp, -966
                  slt          ra, a7, s4
                  or           s1, a2, s6
                  auipc        tp, 470143
                  addi         s10, a1, -229
                  sll          s3, t6, t1
                  or           tp, s8, s10
                  sll          s5, a4, s10
                  xor          a7, t5, s0
                  slti         gp, s6, 754
                  xori         a7, t2, -353
                  srl          t1, s9, tp
                  xor          a3, a3, t2
                  nop
                  xor          t0, s7, gp
                  auipc        t0, 647557
                  lui          s6, 800110
                  slli         t6, s8, 15
                  auipc        t1, 960956
                  xor          t6, tp, s5
                  xor          s10, gp, t6
                  sub          s3, t3, t2
                  auipc        a3, 760586
                  auipc        s2, 762646
                  and          s10, a1, gp
                  sltiu        s11, s9, 1926
                  sll          a3, a2, t4
                  slt          s0, t5, s10
                  sll          s6, s5, s4
                  nop
                  sll          s9, t0, a4
                  sra          t5, sp, s1
                  ori          s8, s11, 492
                  ori          s9, s0, -1721
                  lui          t5, 800787
                  addi         t1, s8, -417
                  add          sp, s11, t3
                  sltiu        s7, a1, 283
                  slt          s1, t0, s10
                  ori          a0, s7, -1287
                  and          s7, s5, s0
                  auipc        zero, 663714
                  xor          a7, t3, a0
                  slli         a7, s11, 1
                  sltu         ra, tp, s11
                  auipc        t4, 661589
                  auipc        a4, 26930
                  srl          sp, s7, a4
                  xor          s4, t4, ra
                  andi         t1, gp, 1664
                  and          t0, a1, s4
                  nop
                  srai         a0, s11, 15
                  or           a6, ra, a1
                  srl          s3, a4, a4
                  or           t5, a5, a7
                  ori          s9, s2, 449
                  srai         t5, s0, 2
                  sltiu        sp, s0, 882
                  srli         s3, a6, 12
                  xori         a1, s7, 1927
                  lui          t1, 163659
                  sltiu        a4, a2, -517
                  sra          t1, t5, a7
                  add          t1, s9, s9
                  sra          t0, s6, a6
                  or           s5, sp, a6
                  sub          t6, t6, t2
                  slli         t4, s8, 17
                  sra          gp, s3, s6
                  srl          sp, t1, gp
                  slli         s10, t4, 27
                  sltiu        a4, s9, 1297
                  lui          s5, 83857
                  slli         zero, s0, 8
                  ori          s10, s2, 958
                  xori         s11, s7, -722
                  slti         t3, t2, -1627
                  sltu         zero, a3, s3
                  addi         s1, s0, 1536
                  sra          a4, t6, s6
                  xor          a6, gp, s8
                  addi         s4, a0, 868
                  srli         t5, gp, 22
                  sll          a4, a0, s10
                  sra          s11, a3, s10
                  xori         sp, a6, 1590
                  sltu         s0, s0, s10
                  xori         t1, s7, 524
                  srai         zero, a0, 26
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a3, 0x0
                  li           a4, 0xffffffff
                  li           s3, 0x98ceced2
                  li           s5, 0x0
                  li           sp, 0x80000000
                  li           s10, 0x80000000
                  li           gp, 0x4f4ad09f
                  li           s7, 0x0
                  li           s4, 0x80000000
                  addi         s3, s4, 1352
                  nop
                  addi         s7, s1, 1251
                  auipc        s5, 340458
                  nop
                  nop
                  lui          s1, 158234
                  auipc        s10, 714087
                  auipc        s7, 357278
                  add          sp, s3, sp
                  nop
                  sub          s10, s3, s1
                  addi         a3, s10, 1150
                  addi         gp, s4, 1887
                  sub          s1, s10, s3
                  lui          a4, 97894
                  sub          s10, s5, s5
                  sub          s4, gp, sp
                  auipc        sp, 109763
                  auipc        s3, 278506
                  sub          a4, s5, gp
                  sub          s4, a3, s10 #end riscv_int_numeric_corner_stream_3
                  sll          ra, s8, sp
                  ori          a6, s11, -2035
                  xor          s11, s10, a7
                  sltiu        gp, a2, -1220
                  sub          a0, a7, s2
                  slli         gp, zero, 15
                  srli         s0, s6, 28
                  sub          t1, s8, s7
                  sra          s11, t4, a6
                  add          t1, a2, a5
                  slti         a0, s3, -1589
                  andi         s2, s8, 1738
                  and          s7, t1, tp
                  slti         a1, a1, 1113
                  sll          s2, a1, t6
                  srai         t5, t6, 6
                  sub          a4, s2, s9
                  sltu         s9, s7, s9
                  ori          a6, t3, 1770
                  or           t1, ra, t4
                  add          ra, t2, zero
                  xori         a4, sp, -1290
                  slt          s2, t4, a0
                  addi         t0, s9, -1198
                  xor          gp, a1, t4
                  nop
                  slt          t3, s8, tp
                  sra          a7, a0, t0
                  andi         t4, a6, 48
                  sll          s9, gp, t6
                  sltu         s3, s9, a7
                  sll          a6, s8, s11
                  ori          tp, t1, 0
                  lui          ra, 962501
                  sub          a3, t3, t6
                  srl          a1, a3, s11
                  srl          s5, s8, a0
                  sll          t3, s4, t0
                  slti         s1, s10, 1549
                  andi         sp, s5, -538
                  sll          t1, t1, s0
                  xori         s0, s9, 1923
                  srli         s4, t6, 30
                  and          sp, s9, s5
                  sub          s1, s8, s3
                  auipc        a4, 543612
                  nop
                  xori         gp, ra, 629
                  slt          zero, a4, s6
                  srl          t3, s0, tp
                  sll          a4, t6, t0
                  xori         ra, a4, 1963
                  and          t5, s0, s8
                  sltiu        s11, t3, -846
                  slti         gp, s3, 474
                  sltu         s4, a7, s8
                  sub          t0, sp, s11
                  and          s5, t1, t5
                  srai         gp, s6, 24
                  sll          a4, t3, s9
                  auipc        s11, 230527
                  sra          s2, t2, s9
                  sltiu        a7, t1, -2016
                  slli         t6, s9, 22
                  and          a3, s0, a2
                  sltu         t1, tp, t2
                  xor          gp, s11, a6
                  and          s2, a4, t4
                  lui          a4, 867997
                  xor          zero, ra, s8
                  auipc        t3, 220948
                  auipc        a4, 908140
                  sra          a4, a6, a1
                  and          s2, t2, gp
                  addi         s6, t5, 349
                  addi         gp, a5, -118
                  ori          zero, s7, 462
                  andi         zero, a7, 1435
                  or           a3, tp, t4
                  slti         a6, a4, -1788
                  slli         a1, s11, 23
                  lui          s3, 465774
                  addi         s6, a0, -1967
                  nop
                  srai         gp, t3, 17
                  xor          a1, t1, s3
                  add          t0, zero, s6
                  nop
                  sltu         tp, a4, s0
                  lui          t1, 416557
                  sltiu        t0, s3, 1123
                  xor          a3, s11, t2
                  srli         gp, zero, 3
                  sltu         t4, s9, s8
                  srai         s1, ra, 29
                  slti         s6, s2, 782
                  slli         t5, s6, 12
                  sub          s11, a2, a1
                  sra          t5, s4, a3
                  sltu         s5, zero, t6
                  srl          s1, s11, a4
                  slti         s5, t3, 1308
                  auipc        s5, 940867
                  and          gp, zero, a2
                  ori          t6, a3, -639
                  xori         s2, s3, 100
                  sltiu        gp, zero, -2016
                  sub          a3, s4, a0
                  sra          s6, a5, a4
                  andi         t5, gp, -1992
                  sll          a6, a1, s0
                  xori         ra, t6, -567
                  lui          gp, 779649
                  add          ra, t0, s10
                  lui          t4, 261112
                  auipc        t6, 1010245
                  ori          t3, s7, 420
                  xori         a3, sp, 1271
                  add          t0, t0, t4
                  sll          a3, t2, t0
                  or           t6, s9, s5
                  slli         gp, s11, 15
                  slti         s7, s11, -1823
                  xori         a1, a4, -1859
                  sltiu        s9, s5, 1535
                  sltiu        s0, s3, -1903
                  srai         s10, t3, 6
                  sra          tp, s10, zero
                  nop
                  or           s11, s7, s1
                  sltiu        s7, s10, 1492
                  xori         tp, a6, 537
                  sub          a6, s9, s2
                  sll          a0, t4, t6
                  slti         tp, gp, -873
                  auipc        s1, 250024
                  slti         a0, s6, -325
                  and          s6, s6, s5
                  srl          s3, t5, s8
                  sll          s10, t1, a7
                  sltu         t0, a3, t1
                  slli         s3, s3, 31
                  slt          s0, gp, t6
                  slti         t5, s11, 1582
                  srai         s9, a0, 0
                  or           s0, s8, t1
                  sltu         t5, t2, t1
                  xori         s8, s8, -1300
                  ori          s6, t5, 1046
                  nop
                  ori          s7, sp, 1629
                  slti         gp, a4, 503
                  xor          a1, a3, s6
                  addi         s8, t0, 2015
                  sll          s10, t3, tp
                  slti         s2, s5, 745
                  add          a3, t5, zero
                  lui          a1, 55821
                  sll          gp, zero, a2
                  sra          a3, a7, a0
                  auipc        t3, 811977
                  xor          s6, a7, a3
                  sub          t0, a6, a6
                  srl          t5, s8, a1
                  xor          s10, s11, s4
                  nop
                  srai         a3, t3, 10
                  srli         t4, t0, 26
                  or           a0, a4, s8
                  slli         s6, a6, 21
                  sub          t1, t5, t3
                  and          s2, zero, s8
                  srli         s11, a4, 14
                  sra          s11, t5, a0
                  sltiu        t1, s2, 316
                  srai         a0, s2, 30
                  or           s9, zero, s3
                  nop
                  add          s5, s1, s2
                  auipc        s2, 776381
                  ori          a3, a5, -1782
                  or           s0, s3, t5
                  sll          s3, gp, s3
                  addi         s1, s11, 1417
                  sll          s1, gp, a7
                  sub          s1, tp, tp
                  addi         s5, t3, 278
                  ori          s10, s4, -1769
                  srli         s8, t3, 1
                  addi         a3, a7, 1515
                  auipc        a3, 470340
                  sra          s5, a5, s11
                  add          a1, a0, t4
                  auipc        t4, 872047
                  or           s3, t5, t3
                  srli         a7, s7, 20
                  andi         sp, t2, 779
                  slli         a6, s0, 14
                  andi         s6, a1, 1627
                  srai         zero, t6, 24
                  sub          s10, a5, s10
                  auipc        a3, 558402
                  lui          t3, 889372
                  and          s10, s3, t2
                  lui          s6, 826649
                  ori          zero, a4, -1634
                  or           s0, a1, ra
                  lui          s2, 914766
                  auipc        s4, 870066
                  sltu         a3, t6, t6
                  and          a0, sp, t1
                  xori         s8, a2, -1932
                  srai         s1, s11, 18
                  slti         s9, t2, -1439
                  add          t3, a1, t1
                  xor          a1, s7, a6
                  xor          t0, s2, s2
                  sltiu        s11, zero, 465
                  andi         a3, s1, -443
                  sra          a7, a0, s9
                  ori          s10, s9, -22
                  slli         t3, s7, 1
                  sra          s0, t3, ra
                  srai         t3, s9, 3
                  ori          zero, tp, 1603
                  andi         t0, t2, 92
                  sub          s5, t2, s9
                  sll          a3, a5, a2
                  srl          s11, s10, tp
                  srai         s7, t3, 11
                  sll          t6, gp, t2
                  xori         a0, gp, 2029
                  xor          t6, a7, s7
                  addi         s8, a5, -336
                  or           a3, s9, t1
                  slti         s5, s8, 1626
                  srai         zero, t3, 10
                  sll          a7, s7, s0
                  or           t0, s2, zero
                  andi         t5, s4, -1290
                  slti         t6, s1, 664
                  sub          t0, t6, s7
                  sltu         s2, sp, t0
                  andi         t4, s6, -1905
                  or           t4, sp, s7
                  ori          s7, a4, -696
                  slli         s0, s6, 29
                  add          a4, t6, s11
                  addi         a1, a1, -1062
                  or           s1, s6, t2
                  nop
                  sll          tp, t4, t5
                  xori         t6, s1, 909
                  slt          s7, s7, t0
                  add          t4, a6, t6
                  srai         t4, s3, 26
                  sub          ra, t2, t6
                  slti         s4, a6, -1115
                  sub          zero, s7, t2
                  srli         s11, a2, 1
                  lui          t3, 37025
                  xori         s0, tp, -1197
                  ori          a7, t6, 853
                  lui          s0, 1037964
                  sra          t4, zero, a4
                  sra          t0, s1, t0
                  addi         s5, s7, 595
                  or           a4, ra, ra
                  xori         s11, s11, -1562
                  slti         t4, t0, 809
                  sltu         t3, s4, s4
                  sltu         zero, zero, t4
                  srli         sp, s11, 21
                  auipc        a7, 224004
                  slli         t1, s3, 2
                  sltiu        a4, t3, 1298
                  auipc        s5, 387353
                  srl          a4, t0, gp
                  xor          s4, t5, s4
                  auipc        s6, 583655
                  nop
                  and          a1, s2, s5
                  slli         t0, s10, 7
                  srli         s4, a0, 26
                  srli         s0, zero, 19
                  xor          s5, s0, a6
                  srli         s7, s7, 20
                  slli         a3, a2, 2
                  xori         t4, a0, 347
                  sltu         tp, s4, gp
                  add          t4, s4, s4
                  slli         a7, a7, 15
                  sltu         t3, t4, s8
                  addi         ra, s8, 1374
                  sll          t3, t1, s3
                  sll          s8, a5, a5
                  sub          s11, a0, s3
                  xor          tp, s0, a1
                  sra          s11, tp, a3
                  xori         s10, zero, 281
                  addi         s2, s0, -113
                  srl          s11, a6, a3
                  auipc        s7, 937647
                  add          s4, s7, a1
                  or           s7, t4, s6
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_29
                  li           s1, 0x0
                  li           a1, 0x0
                  li           sp, 0x0
                  li           a6, 0x0
                  li           a4, 0xffffffff
                  li           a3, 0x80000000
                  li           s3, 0x0
                  li           tp, 0x80000000
                  li           s4, 0x7f3add87
                  nop
                  lui          s6, 48585
                  auipc        sp, 580812
                  sub          s1, tp, sp
                  addi         s1, sp, -509
                  auipc        sp, 492813
                  nop
                  add          a3, a1, s1
                  sub          s1, s3, sp
                  sub          s3, a4, a1
                  add          tp, s3, s6
                  nop
                  sub          s3, a6, s3
                  addi         s1, a6, 462
                  nop
                  add          a3, s3, a3 #end riscv_int_numeric_corner_stream_29
                  sltu         t6, a0, a6
                  slt          a6, t1, t5
                  srli         zero, t3, 15
                  or           gp, t6, t4
                  srli         s7, a1, 31
                  ori          a4, sp, -723
                  sltiu        t6, s7, 1693
                  slti         a1, s3, 723
                  srl          a3, s9, a7
                  xor          gp, a6, t4
                  slti         a6, zero, -280
                  and          s8, t4, s6
                  xori         gp, t2, -1981
                  srai         tp, s1, 31
                  slti         a3, s0, 739
                  lui          sp, 202853
                  srl          s9, s2, a4
                  srai         ra, t3, 14
                  slli         t6, a6, 20
                  add          s7, t6, a6
                  sltiu        t5, a1, -1727
                  lui          t6, 555949
                  slli         s3, a7, 12
                  slli         zero, s8, 27
                  sltu         gp, s5, t4
                  sltiu        t5, t1, 423
                  sub          ra, t1, t1
                  or           s2, t3, zero
                  slti         a6, a5, -870
                  lui          a6, 364206
                  nop
                  addi         t4, s3, -993
                  slti         s8, a5, 1045
                  andi         tp, a1, 1045
                  xor          a0, zero, ra
                  sltu         tp, s6, s1
                  sltiu        a0, s2, 410
                  sltu         gp, a2, t0
                  andi         t0, s0, 544
                  sub          tp, a4, t6
                  or           s10, s8, a1
                  andi         s2, a0, -1164
                  addi         t5, s3, -1494
                  srai         a0, t6, 9
                  xor          t3, s7, s6
                  sll          ra, sp, a7
                  srl          t0, t1, t2
                  slti         t5, tp, -968
                  slti         t1, t4, 134
                  sll          t3, ra, a1
                  ori          t4, gp, -1876
                  sltu         a3, ra, t6
                  or           a4, ra, zero
                  ori          t0, a1, -1252
                  xori         a3, zero, 1252
                  sltiu        s2, a4, 1731
                  sltiu        a0, ra, -1947
                  lui          s6, 189677
                  xor          t4, t2, zero
                  ori          s2, a4, 1843
                  slt          t6, a0, t4
                  sll          t6, s10, t0
                  auipc        s1, 113089
                  add          a7, t3, s8
                  nop
                  srai         s6, ra, 29
                  slli         s3, a3, 5
                  srli         ra, s10, 31
                  andi         s8, s3, 710
                  auipc        a3, 394223
                  srli         s10, s6, 4
                  and          s8, zero, a3
                  slti         s5, s5, 489
                  lui          s2, 918165
                  slt          t4, s3, t4
                  sltu         s7, s10, t4
                  slli         t5, s6, 29
                  andi         gp, s10, 83
                  srli         t1, a6, 13
                  lui          t6, 794885
                  srai         tp, t5, 16
                  auipc        t5, 836687
                  srai         s4, s0, 28
                  slli         s0, s10, 17
                  slti         t1, a1, 1453
                  srli         s3, s7, 25
                  addi         gp, t5, 361
                  add          a0, s5, tp
                  and          gp, t4, t3
                  slli         zero, s11, 9
                  sltiu        a7, a0, 147
                  addi         a6, a7, 791
                  ori          t6, s1, -616
                  slt          sp, s3, a5
                  lui          s7, 382111
                  srai         s8, t3, 20
                  add          sp, sp, t6
                  sra          zero, a2, t3
                  slt          s6, zero, t5
                  sra          a3, t4, s4
                  slti         gp, s10, 1011
                  sub          s7, t3, s0
                  sub          s6, s1, t3
                  xori         tp, s5, 1621
                  sra          a7, t6, s11
                  andi         s5, tp, 619
                  sltiu        s1, a7, 574
                  slti         s9, t3, -1975
                  srl          s4, s7, t5
                  or           s10, s5, s4
                  and          s7, s2, t1
                  ori          t6, t0, 1066
                  auipc        t5, 403022
                  auipc        s6, 622395
                  sub          s4, sp, s5
                  slli         s7, t6, 8
                  addi         a1, t2, -1541
                  or           t5, a4, s10
                  srai         t3, a5, 1
                  add          t3, a0, t0
                  xori         s5, t5, -1781
                  slli         a3, ra, 29
                  andi         s8, s11, 1256
                  sra          t3, t3, s9
                  andi         s11, t3, -1834
                  addi         s5, s2, 1805
                  srl          t0, t0, a7
                  ori          s0, s5, 497
                  lui          s8, 243549
                  slli         s10, t2, 29
                  sltiu        sp, tp, -1001
                  slti         s4, a3, 333
                  sltiu        s10, s5, 1995
                  addi         a0, s9, 1452
                  srli         s2, s9, 15
                  srli         s11, a1, 6
                  sub          t3, a6, a4
                  sra          t6, a3, a6
                  andi         s10, a1, -430
                  slt          ra, s1, a2
                  or           t1, tp, s10
                  lui          gp, 455127
                  sll          t1, a5, a7
                  ori          s9, a4, 935
                  slt          a7, a3, a2
                  or           t5, t6, gp
                  auipc        s1, 879812
                  andi         a3, s1, 787
                  slt          a1, s9, tp
                  srli         sp, sp, 24
                  srai         s1, s4, 13
                  sltiu        s6, s11, 771
                  xor          a3, s3, s10
                  and          t3, s10, s11
                  sltiu        s2, s8, 1653
                  sltiu        t5, a0, 980
                  or           s10, a1, a6
                  sltu         s0, tp, s7
                  auipc        s5, 451130
                  sltiu        t5, s11, -1566
                  andi         s7, t0, -356
                  auipc        s5, 1006040
                  sll          s6, a2, s2
                  lui          s1, 801686
                  slti         a4, a3, 854
                  auipc        sp, 911848
                  srai         t3, s3, 25
                  xor          s3, s2, a0
                  sub          s11, t4, t2
                  slli         s0, s2, 11
                  slli         ra, t2, 14
                  slli         a6, a1, 13
                  sltu         tp, zero, t3
                  slti         t3, s9, -1412
                  sub          zero, s8, s11
                  slt          zero, t1, s1
                  sra          s7, t0, a1
                  sra          t4, ra, a0
                  sltu         a7, zero, s10
                  ori          t5, a4, 128
                  lui          s11, 592870
                  xori         t6, s3, -620
                  sltiu        gp, a7, -538
                  sra          a6, t5, a4
                  sll          t5, s10, t3
                  sra          s0, a2, s7
                  ori          t3, s1, 2028
                  ori          t6, a5, -228
                  auipc        tp, 297037
                  slt          t4, s0, sp
                  sub          ra, s3, t3
                  or           t3, a2, a0
                  lui          s11, 656676
                  srli         t1, t0, 25
                  ori          zero, s0, -583
                  srli         s0, a7, 20
                  slti         a0, t2, -1084
                  xor          t1, zero, t4
                  andi         zero, sp, -1464
                  addi         t6, a0, 230
                  or           s5, s8, tp
                  addi         t3, a7, 1378
                  slti         s11, a6, -399
                  add          t1, a1, zero
                  sltu         t0, s3, a2
                  and          a4, t2, a5
                  addi         s10, t4, -179
                  sll          s2, s6, a6
                  slti         t1, a5, -1646
                  sub          t5, s8, s0
                  addi         tp, s4, -744
                  or           s2, a0, s0
                  xori         t5, a6, 926
                  srai         a4, a5, 26
                  or           ra, gp, zero
                  addi         s2, s11, 1896
                  sub          zero, a7, t6
                  slti         s0, a0, 961
                  sltu         s0, tp, s9
                  lui          s8, 875463
                  xor          t3, s6, a7
                  sra          s5, s7, s11
                  ori          s6, ra, 1647
                  sltu         s4, a4, a1
                  sltiu        s1, s11, -148
                  srli         s8, t5, 20
                  slti         t6, t5, -1750
                  sltiu        s9, ra, 1980
                  sub          s0, s7, a6
                  sra          a4, zero, a5
                  and          t4, a5, sp
                  addi         s1, a3, -833
                  auipc        s11, 80849
                  lui          a0, 1015841
                  sll          s7, s1, t4
                  sll          gp, t2, a4
                  xor          a3, s0, s2
                  srl          s9, a4, ra
                  sltiu        a0, s8, -1537
                  ori          t5, a6, 712
                  srai         a6, t5, 1
                  slli         gp, t6, 31
                  sll          a6, a3, s5
                  slli         t0, s0, 21
                  sll          s11, s9, s2
                  or           s7, s1, a5
                  sltiu        s2, s7, -958
                  sub          a0, gp, s0
                  xor          s9, a1, s5
                  nop
                  add          a0, t2, s2
                  xori         s7, t5, 1771
                  sltiu        s9, t0, -1176
                  xori         s5, s7, -1374
                  auipc        a4, 516269
                  srai         gp, tp, 17
                  sra          s6, t0, s4
                  srl          t3, t4, t3
                  slli         t4, t4, 7
                  sub          a3, s1, a0
                  add          s10, zero, s9
                  sltiu        a0, tp, 1205
                  sub          s2, zero, s7
                  srl          t3, a6, s10
                  sltiu        a1, t4, 160
                  sll          t3, s7, s4
                  srai         s2, s3, 25
                  slti         a3, s5, 1762
                  or           s8, s6, t2
                  sltiu        s2, s11, -1850
                  nop
                  ori          a3, t5, -243
                  xor          s0, tp, a4
                  xori         s0, a5, -751
                  xor          s10, a7, s10
                  sub          ra, a0, t5
                  and          s2, t5, t4
                  or           a3, a2, s2
                  sub          a1, a1, t3
                  slt          t5, s4, a0
                  xori         a7, s3, 1923
                  andi         s5, a5, 1518
                  nop
                  nop
                  xor          tp, t2, t1
                  lui          s0, 842942
                  ori          t6, s7, 73
                  xori         t0, a5, -1908
                  srl          s7, t5, s0
                  lui          s7, 903059
                  srai         a7, a4, 2
                  andi         t0, s3, 1359
                  slt          zero, tp, t2
                  and          a1, s3, s4
                  nop
                  sltiu        t5, a5, -632
                  nop
                  sltiu        a4, t5, -1116
                  sll          s8, tp, t3
                  ori          s9, a6, -538
                  xor          s3, s6, t0
                  auipc        s0, 983037
                  sra          a3, s1, t0
                  sll          s1, sp, a2
                  srl          s11, a1, s11
                  ori          s4, gp, 332
                  slt          s3, a2, t5
                  sra          gp, s1, a5
                  add          tp, a0, s10
                  or           a7, s8, s9
                  andi         tp, s3, -1656
                  or           t1, a4, s7
                  sll          s3, t4, s1
                  sll          t4, t5, s7
                  sltiu        t6, zero, -495
                  slt          s8, zero, t2
                  and          sp, tp, t3
                  andi         s3, a0, -1846
                  and          ra, t1, s2
                  ori          t6, s0, 1307
                  ori          s7, zero, 264
                  sra          a4, sp, a6
                  andi         t3, a7, 1548
                  add          a3, a3, s5
                  lui          s0, 925003
                  addi         a4, a4, -1113
                  or           ra, t6, a7
                  xor          t0, s1, s5
                  sltu         ra, t3, ra
                  sltiu        t3, gp, 511
                  slti         s1, s11, -435
                  auipc        t5, 285120
                  or           gp, t6, a0
                  sltiu        t5, t6, 356
                  addi         ra, gp, 339
                  auipc        s7, 102293
                  sra          s3, t0, s2
                  xor          ra, a6, s4
                  nop
                  andi         t1, s4, 1020
                  add          tp, gp, t4
                  add          t1, s6, s1
                  addi         a1, a4, -257
                  srai         a6, a2, 16
                  sra          s8, a1, s5
                  add          s11, s4, a3
                  nop
                  sll          a1, s5, tp
                  ori          s6, a3, -462
                  sub          t1, a2, tp
                  or           t4, s5, s2
                  addi         a1, s1, -478
                  add          a3, a4, s6
                  and          s6, ra, gp
                  sltiu        s11, t5, 1126
                  sltiu        s4, zero, 1712
                  sra          s1, a1, a2
                  lui          a7, 407213
                  slt          tp, a1, zero
                  auipc        a1, 211750
                  sub          tp, s11, s7
                  slli         a7, s0, 23
                  slti         s0, t5, 35
                  addi         s9, t4, 1828
                  srli         a0, s7, 9
                  nop
                  ori          t6, sp, 315
                  sltiu        s3, gp, -1351
                  nop
                  nop
                  slti         t3, a4, -1280
                  slli         a6, s8, 23
                  auipc        s0, 464580
                  slti         a7, a4, 34
                  ori          s6, s10, 771
                  ori          a4, gp, -1155
                  srli         s1, a7, 20
                  auipc        s6, 667719
                  addi         t0, sp, 132
                  sll          t5, a0, s3
                  auipc        t1, 606628
                  add          a6, s9, s2
                  ori          a6, a2, -1595
                  sltu         sp, a6, a3
                  ori          a0, a4, 618
                  and          tp, gp, tp
                  xor          t3, a2, t6
                  srl          s0, tp, s2
                  and          a4, zero, s7
                  auipc        s9, 80769
                  andi         a7, t1, 1809
                  slti         gp, zero, -882
                  slti         s0, a1, -1807
                  ori          s5, s7, -1863
                  srai         s9, a5, 27
                  slti         s7, gp, -1622
                  nop
                  sltu         tp, t0, s11
                  sra          a1, a6, t2
                  sub          t6, t2, s8
                  slti         s3, zero, -805
                  sub          s7, s2, s11
                  slti         s1, a0, -1791
                  slt          t1, t6, a5
                  srli         gp, t5, 10
                  srl          a4, t4, a7
                  srl          tp, s8, s8
                  sra          tp, t3, s11
                  nop
                  sll          a7, gp, t1
                  and          s8, tp, a6
                  nop
                  srai         s5, a0, 30
                  slti         zero, a5, 608
                  srai         s6, s3, 8
                  srai         sp, s4, 25
                  sll          s11, a2, s2
                  sltu         tp, s11, s0
                  or           s7, a3, s6
                  andi         sp, t1, -2046
                  sra          s10, s5, t5
                  xor          a3, a5, s2
                  sub          tp, tp, ra
                  nop
                  addi         s9, zero, 475
                  sub          a1, s10, s10
                  xor          s3, t2, s10
                  lui          s8, 55012
                  or           t1, s7, sp
                  xor          gp, a5, s4
                  slti         t6, s6, -206
                  or           s6, t3, s7
                  sltiu        a1, t4, 1294
                  sll          a6, s4, t4
                  srl          gp, s2, a5
                  slt          s1, s2, t3
                  and          a4, t2, s0
                  sltu         a6, s3, s0
                  sltiu        t0, tp, 650
                  lui          t6, 897314
                  sltiu        s3, s4, 1532
                  and          a7, a5, t6
                  srli         s4, a2, 16
                  sub          a7, a0, t1
                  andi         s8, gp, -1464
                  slti         t6, t6, -983
                  sra          s0, a0, a1
                  andi         a1, a3, 992
                  srl          a7, t2, sp
                  srai         s11, s0, 22
                  sra          s4, s3, a5
                  xor          s5, a5, tp
                  srai         s10, tp, 28
                  andi         t0, t4, 1758
                  slt          a0, t5, ra
                  sra          s1, zero, a0
                  slli         s3, s0, 7
                  slli         s0, t1, 17
                  slti         t6, s9, -928
                  slli         t1, a5, 3
                  srl          sp, a2, zero
                  sltu         t5, s8, t4
                  addi         s7, s5, 241
                  slli         a0, a4, 16
                  ori          t6, t0, -9
                  slli         s4, s2, 14
                  lui          t6, 294159
                  or           t5, a4, a6
                  slli         ra, ra, 18
                  sltiu        a6, s5, 1984
                  addi         s11, a7, -391
                  sub          s6, tp, t6
                  srai         t1, a4, 3
                  nop
                  sltiu        s7, a5, 698
                  and          a7, s10, s3
                  ori          s0, s10, -1787
                  srl          s10, t3, a5
                  nop
                  srli         a7, gp, 21
                  and          gp, a5, t0
                  sltu         s11, s0, s10
                  sll          s9, a2, t2
                  slti         s8, gp, 1785
                  addi         s7, ra, 830
                  slti         s2, a4, 1689
                  addi         a1, s4, 1227
                  slli         s7, t1, 21
                  srl          a3, a1, a4
                  slli         t0, a7, 10
                  sltu         s6, s1, a2
                  slti         t0, s6, -724
                  sra          t6, gp, s4
                  xor          a1, t0, a1
                  auipc        a4, 489087
                  xori         sp, s11, 1479
                  slti         t5, a6, -910
                  ori          t1, t4, 1662
                  sll          gp, t4, a3
                  srl          a6, s2, s2
                  nop
                  sltiu        s7, t0, 673
                  auipc        t5, 1023254
                  slti         a4, t2, -643
                  xor          a3, zero, s9
                  sll          ra, a0, tp
                  slt          t6, t1, t3
                  sltiu        s10, a1, -1619
                  add          t3, s11, ra
                  nop
                  sltiu        t3, ra, -817
                  sltiu        tp, s2, -459
                  srai         s9, a5, 30
                  sra          gp, a4, a4
                  srli         t1, s2, 29
                  andi         tp, a1, 879
                  sll          a0, tp, s8
                  slli         t0, s8, 23
                  srl          t6, a7, sp
                  addi         t6, a7, 279
                  sltiu        t0, t6, -1574
                  xor          s0, s5, t3
                  ori          a0, t6, -52
                  lui          a3, 936571
                  sltiu        zero, s11, 75
                  xori         t0, a6, 1173
                  andi         s4, a0, 1848
                  nop
                  nop
                  addi         s10, gp, 67
                  add          s6, t0, ra
                  srl          gp, s6, tp
                  add          a3, t3, zero
                  srai         s10, a5, 18
                  lui          s10, 490077
                  or           s7, a4, t2
                  ori          s4, t6, 771
                  slli         t0, s1, 0
                  srai         a4, a6, 15
                  or           sp, s11, a0
                  lui          a3, 103034
                  srai         t0, tp, 28
                  andi         s7, t6, -755
                  auipc        s9, 709310
                  auipc        a4, 673030
                  xor          t4, a2, a6
                  lui          a3, 1006990
                  sltu         a0, a5, ra
                  slt          s3, a3, gp
                  lui          s6, 897568
                  xori         s0, s0, -1619
                  srai         tp, s9, 0
                  ori          sp, t6, -749
                  slt          gp, s0, a7
                  ori          t3, a6, 1432
                  addi         t5, s4, -1050
                  sltu         s9, s1, s0
                  sltu         s6, t2, a5
                  nop
                  sltiu        sp, s2, 1092
                  ori          s0, s1, -35
                  and          s1, a0, s8
                  sub          t4, s0, s2
                  and          a3, t2, a5
                  slli         t6, s3, 26
                  slli         s9, ra, 20
                  andi         t6, a1, -879
                  slt          a0, a1, s7
                  addi         s7, a0, 544
                  and          s8, t3, s7
                  xori         gp, s10, -1190
                  srli         s9, t4, 3
                  lui          a4, 818217
                  sltu         t3, gp, t1
                  xori         s1, s7, -588
                  ori          s4, a4, -5
                  and          s3, s0, a1
                  slli         tp, s6, 6
                  xor          sp, a1, a4
                  nop
                  sub          s11, t3, s0
                  slti         s7, s7, 111
                  or           a4, a6, s4
                  add          s4, s10, s2
                  sub          a0, tp, a3
                  slt          s2, a3, t1
                  slti         t3, s7, 1704
                  slti         a7, s5, 427
                  srl          s8, s1, a7
                  srli         t1, a1, 8
                  xor          a7, a7, t5
                  add          t0, s8, s10
                  srl          s5, t3, t5
                  lui          sp, 549228
                  addi         a6, s1, -1584
                  srl          a1, s2, a4
                  slli         zero, s5, 5
                  sra          t6, s4, t1
                  slti         t0, a2, -1348
                  xori         a7, t4, 1154
                  sll          s2, s3, t0
                  and          t3, a4, t6
                  xori         gp, a6, 1308
                  srli         s2, a5, 9
                  srai         t5, ra, 9
                  slt          s5, zero, s8
                  and          s5, s4, ra
                  or           t0, t4, t2
                  xor          t4, a3, a4
                  sltiu        s4, s11, -1317
                  sltu         a4, t3, t1
                  addi         s8, s6, 1809
                  sltiu        a3, sp, 822
                  lui          s6, 648654
                  and          ra, s1, a5
                  slti         tp, s9, -1832
                  srli         t3, s3, 21
                  add          s4, t2, s9
                  addi         gp, s11, -1560
                  sltiu        s4, t6, -847
                  srli         s5, t3, 25
                  and          s6, a6, a1
                  addi         a4, ra, 2025
                  slt          t1, a3, sp
                  lui          s8, 902927
                  lui          a7, 571998
                  slti         a7, a1, 33
                  xori         s10, a2, 1842
                  add          s9, a0, s9
                  andi         sp, s9, -364
                  srl          s10, s10, zero
                  srai         s4, gp, 23
                  xori         s7, ra, -934
                  xor          t3, t2, a6
                  nop
                  xori         s7, s10, 271
                  sub          a4, s1, s11
                  addi         ra, s6, -586
                  slt          s10, t1, t5
                  ori          s6, s11, 713
                  sub          ra, a2, a2
                  sltu         s11, t6, tp
                  addi         s9, t3, 922
                  sub          t1, zero, zero
                  xori         t6, s10, -331
                  lui          s4, 536328
                  andi         s11, a5, 720
                  lui          s9, 171611
                  xori         a7, a1, -505
                  xor          s11, s9, s3
                  xori         s5, s0, -67
                  nop
                  or           s8, s8, a3
                  xor          zero, s10, a7
                  slli         a6, ra, 16
                  sltiu        s11, s7, 788
                  srli         s2, s3, 14
                  sra          t5, s5, tp
                  sll          t6, a3, a0
                  auipc        a4, 83468
                  sub          a4, a2, s8
                  auipc        zero, 978129
                  sltiu        t3, t5, -1098
                  add          t3, ra, s3
                  slti         sp, tp, 611
                  and          s0, t3, s3
                  slli         s10, s7, 17
                  slli         a0, tp, 26
                  or           s9, a0, t5
                  andi         sp, tp, 28
                  srli         s11, a6, 28
                  sltiu        gp, a6, -1437
                  nop
                  sltu         t5, s0, gp
                  sltiu        a3, s9, 1778
                  srai         t1, t6, 3
                  srai         s6, a4, 18
                  sltiu        a7, t2, -81
                  addi         s3, a7, 1901
                  srli         a6, s10, 0
                  xor          t0, zero, s9
                  add          a0, a1, s8
                  slti         sp, s6, -228
                  sra          a4, zero, s2
                  auipc        s0, 870124
                  sll          t6, t3, t3
                  andi         s4, s5, 1071
                  and          zero, a0, s7
                  andi         t5, a7, 449
                  sub          s10, s3, s9
                  sub          t6, a0, s3
                  sltu         t6, a6, zero
                  xor          a4, a1, t4
                  xor          s9, s1, t1
                  srli         a3, a0, 12
                  andi         s6, s6, 988
                  andi         a1, s1, 1531
                  and          s3, sp, a5
                  slti         s11, a3, 716
                  xori         t6, a2, -1843
                  srli         t1, a7, 0
                  xor          s2, s7, zero
                  xori         a0, a7, 530
                  sra          s10, a1, s5
                  srl          s9, ra, s11
                  add          s0, ra, s0
                  sll          zero, t6, s0
                  nop
                  sub          s6, a3, t5
                  sra          s5, t6, t6
                  and          t6, t1, gp
                  or           s8, a5, s3
                  or           sp, t6, t5
                  and          a0, s7, s0
                  or           s1, s7, a2
                  srai         a7, a1, 31
                  andi         s5, s4, -1055
                  sra          a0, s10, a2
                  xor          t6, t6, s9
                  slti         t6, s3, 1622
                  sra          t5, a0, t5
                  sub          t5, s0, s6
                  sub          s11, t1, a1
                  srli         t5, s8, 19
                  srli         a0, gp, 20
                  lui          ra, 665708
                  slti         s3, t3, -442
                  auipc        t3, 769537
                  auipc        s3, 560538
                  slti         zero, t6, 65
                  slli         t0, a0, 14
                  and          t3, a3, s5
                  nop
                  srl          s9, ra, s6
                  auipc        a0, 554285
                  srai         a0, a5, 16
                  slli         a7, t5, 25
                  srli         a4, a4, 15
                  add          a1, a3, s1
                  srli         a7, a7, 23
                  slli         a3, a2, 0
                  slti         s7, s10, -430
                  andi         s8, zero, -1031
                  lui          s0, 1046579
                  sub          gp, s11, s3
                  nop
                  srai         t4, sp, 3
                  sltiu        a4, s1, -1392
                  add          t1, s7, s7
                  slti         a4, a7, 797
                  sltu         a4, s11, ra
                  srl          gp, s9, s6
                  sll          t4, s0, t1
                  sub          s2, s0, s7
                  nop
                  lui          s6, 660444
                  ori          zero, a0, -1260
                  slt          t0, t6, s6
                  sll          s2, a5, s11
                  sub          s5, ra, a5
                  xor          a7, a0, t0
                  ori          t3, s6, 146
                  xori         t0, s10, -1538
                  srli         s7, s0, 6
                  sltiu        s5, sp, 1779
                  xori         s1, s1, -1709
                  ori          t3, t2, -573
                  slti         t5, s9, 241
                  xori         a4, s0, -1309
                  add          t6, s1, s9
                  or           t6, a4, ra
                  sra          t5, a7, tp
                  srl          s6, a6, s0
                  auipc        s6, 994797
                  andi         s5, s6, 1277
                  srai         s0, a0, 7
                  auipc        s3, 119735
                  xor          a7, s4, s6
                  slt          s10, a6, a5
                  slt          s8, s3, t2
                  sltu         s0, tp, s7
                  add          zero, s2, a3
                  xor          a6, t0, a5
                  sltiu        a0, s4, -1569
                  xor          s7, s6, zero
                  slt          ra, a7, t0
                  or           s3, tp, s11
                  sub          s2, a0, s10
                  slti         s10, t1, 348
                  andi         s4, s2, 1560
                  sltu         tp, s8, s8
                  sra          gp, a6, t1
                  sll          sp, a1, a5
                  sra          tp, t2, s11
                  slti         t3, a0, -1038
                  sra          s2, s4, s6
                  or           a1, a5, t4
                  slli         a0, s3, 5
                  srl          tp, a7, s5
                  xori         sp, t0, 1547
                  addi         t1, s1, 1290
                  srai         ra, t1, 20
                  and          a0, s11, s9
                  or           s8, s1, s7
                  slt          tp, t2, a6
                  xor          a1, s3, a1
                  sub          gp, s7, s5
                  sltiu        t6, s4, 1639
                  sll          s1, t2, t3
                  srai         s0, s5, 15
                  lui          s5, 93363
                  srl          zero, s5, tp
                  andi         s2, t0, 809
                  auipc        a1, 176836
                  xori         zero, sp, -1534
                  xor          s2, a6, s4
                  srl          t1, a4, t4
                  srai         s10, t5, 5
                  slti         s7, a0, -1456
                  nop
                  nop
                  or           s4, t4, gp
                  srai         t4, s9, 12
                  auipc        s0, 411051
                  andi         ra, tp, 1182
                  sub          t0, s9, s8
                  auipc        s10, 706960
                  slti         t3, a5, -1072
                  add          gp, s7, s6
                  sub          s1, sp, t6
                  srai         t1, a3, 4
                  lui          t4, 220485
                  srai         a3, t6, 19
                  or           ra, sp, sp
                  and          a1, t2, t2
                  srl          a6, s9, ra
                  lui          s11, 959468
                  srli         a0, s0, 27
                  ori          ra, a3, -957
                  andi         t0, s9, -761
                  addi         s10, a6, 712
                  or           s2, s9, a5
                  sub          t3, gp, s3
                  srl          a3, t1, s4
                  add          a4, sp, ra
                  xori         a6, a1, -494
                  xor          s8, s7, a3
                  add          s11, s0, s9
                  srli         t4, t0, 4
                  addi         a1, s8, 390
                  sra          a4, a5, a5
                  add          a1, s1, a7
                  xor          s11, t6, s4
                  and          s1, t3, tp
                  addi         tp, t6, 45
                  or           a1, a1, sp
                  andi         s3, s3, 286
                  auipc        t1, 918778
                  ori          t0, s4, 673
                  slt          sp, ra, zero
                  srl          a4, s11, a2
                  nop
                  sltu         s6, t4, t1
                  sltu         s1, t6, t6
                  add          a6, s3, t1
                  slti         t4, a2, 653
                  and          s8, s10, a0
                  sub          zero, a6, s5
                  and          s2, a7, sp
                  and          s8, s10, a6
                  xori         s4, a2, -1042
                  slti         s6, s7, -802
                  srli         s5, s9, 30
                  auipc        t3, 995744
                  srli         a3, a0, 17
                  sll          t6, s4, s7
                  sll          s5, a0, gp
                  sltiu        t6, s7, 1990
                  nop
                  ori          t0, a3, 1233
                  xor          a0, ra, s9
                  srli         s9, s6, 3
                  sltu         s11, a4, a3
                  add          a1, t6, t1
                  xor          a3, s10, t5
                  sub          a4, t5, ra
                  auipc        a6, 455234
                  and          s5, s8, t4
                  srai         a4, a4, 6
                  sub          tp, t3, a4
                  xori         a1, s8, -650
                  lui          s0, 1010398
                  srli         s10, tp, 18
                  xori         a1, s0, 198
                  or           t4, t3, s11
                  auipc        s9, 702216
                  srli         a0, s3, 3
                  sltu         s3, s1, s8
                  sub          tp, s9, t2
                  xori         t6, a5, -1972
                  srl          s0, a6, gp
                  nop
                  or           s0, s7, t4
                  lui          tp, 1034237
                  xor          a3, ra, s9
                  slt          s4, a4, t6
                  xori         s0, s3, 1813
                  slti         tp, s9, 1756
                  nop
                  and          t0, a6, a2
                  srli         s9, ra, 18
                  andi         s1, s2, -157
                  xor          ra, sp, s5
                  addi         a7, a0, 1616
                  sltiu        tp, gp, 1216
                  andi         s2, s11, 209
                  srl          s8, a1, tp
                  slti         t1, a1, -1662
                  xor          s0, s3, s10
                  srl          s9, t0, t3
                  xor          s2, t6, a0
                  slli         s9, a6, 8
                  srai         s0, a4, 6
                  srl          s9, t3, s5
                  xor          t6, a5, t6
                  or           s4, s11, t6
                  slti         t1, a2, 378
                  slli         a6, s8, 27
                  or           a0, s0, a4
                  andi         t1, a3, -259
                  srai         t4, s5, 22
                  add          t4, s5, a6
                  sub          s8, s7, t5
                  sll          zero, sp, a4
                  addi         a3, s8, 1401
                  srli         ra, a2, 26
                  add          t4, s9, a1
                  srai         t4, s1, 4
                  slt          gp, tp, sp
                  ori          tp, a4, -336
                  slti         t6, ra, -1416
                  nop
                  ori          a3, a4, 827
                  sltiu        t6, t5, -658
                  xori         a4, s11, 1877
                  ori          s10, s10, 951
                  lui          sp, 353778
                  nop
                  srai         t6, ra, 13
                  slli         a6, t5, 30
                  sltu         s7, s10, a0
                  srli         a3, s6, 14
                  sub          t4, t0, a2
                  sub          gp, s5, t4
                  sub          sp, sp, t5
                  andi         s1, t6, 1587
                  or           sp, t6, s10
                  slti         a6, t1, 1775
                  slli         sp, s3, 11
                  add          s9, a1, a4
                  auipc        t5, 479101
                  addi         a6, s10, 558
                  slti         t3, s7, -269
                  sra          t5, t3, s11
                  slli         s11, a3, 29
                  andi         s1, s11, -1976
                  slti         s7, s2, -583
                  andi         s0, t6, -1668
                  sltiu        a0, a5, 1004
                  sltu         a3, a1, zero
                  srli         tp, t1, 4
                  nop
                  add          a3, a2, t1
                  slli         ra, gp, 2
                  sltu         ra, s9, t5
                  sub          s4, t0, t4
                  slti         zero, s6, -1706
                  srli         t4, gp, 22
                  addi         sp, s9, 1171
                  sub          t6, s8, ra
                  andi         a1, s4, 1718
                  xori         t1, t3, -496
                  xori         s5, t0, 1671
                  and          a0, s11, t3
                  srai         t3, sp, 11
                  sltu         s7, a1, ra
                  slt          s0, t1, s6
                  srl          a6, t0, sp
                  xori         a4, t5, -704
                  sub          zero, s10, s8
                  xori         a1, a7, -755
                  sltu         t3, a6, s4
                  xor          ra, s7, s5
                  xor          s3, t3, t5
                  srl          t1, t5, s6
                  lui          zero, 878501
                  add          s7, s5, a6
                  sub          s2, s11, ra
                  sll          t3, s11, t0
                  slli         s8, t4, 3
                  sra          s9, sp, a3
                  srai         t0, t4, 9
                  sll          s2, s10, s10
                  srai         t5, s2, 14
                  sra          s8, a0, s6
                  sltu         s8, a4, s2
                  auipc        s4, 760343
                  addi         t0, s7, 594
                  srl          s11, t0, ra
                  slt          s4, s3, t2
                  sltiu        s0, s4, -928
                  srai         ra, s11, 24
                  addi         tp, s9, -1622
                  sll          s10, ra, a5
                  slti         s3, a4, -1608
                  srai         s6, a2, 7
                  and          s2, s3, a7
                  srli         a4, s7, 24
                  sltu         s3, s1, a3
                  slli         s11, s7, 18
                  auipc        a1, 36683
                  sltu         s4, tp, s4
                  srai         gp, t4, 27
                  and          s0, a4, t2
                  xor          s8, s3, a3
                  slli         s11, t3, 5
                  andi         t6, t0, -251
                  sltu         a3, s2, t0
                  xor          s6, s1, a6
                  sll          s8, s6, s8
                  add          sp, s0, t4
                  lui          t4, 469835
                  sra          a6, s4, s1
                  sub          zero, s8, a3
                  nop
                  ori          s6, s4, 1586
                  sll          s4, gp, a4
                  slti         a6, a4, -158
                  auipc        s8, 890142
                  sub          t5, a4, a5
                  auipc        t1, 805632
                  sub          s7, t2, t0
                  sra          a3, a2, a5
                  srli         t4, t3, 4
                  sll          gp, a5, a4
                  andi         t1, a4, -85
                  sll          sp, zero, s11
                  lui          a4, 896023
                  auipc        sp, 780202
                  xor          t3, s8, ra
                  lui          a4, 817883
                  and          s6, a3, s4
                  slli         s0, a3, 18
                  auipc        a7, 414081
                  and          zero, s7, s11
                  sltu         s3, s0, a0
                  addi         t4, ra, -906
                  sltiu        ra, s0, 729
                  sll          t6, t1, s3
                  or           s2, t3, s9
                  sltu         s1, s7, s8
                  add          a3, t2, sp
                  or           a0, s9, t1
                  srli         s6, s7, 20
                  srai         s11, a6, 10
                  andi         s9, zero, 668
                  xor          a3, gp, t1
                  sltiu        sp, s0, 1724
                  or           s1, gp, tp
                  or           a1, a3, s8
                  slli         gp, s9, 26
                  xori         a0, a7, 1043
                  sltu         a6, a7, a0
                  sltiu        t1, s6, -1032
                  xori         t4, s6, -587
                  sll          s5, t6, a2
                  srli         t4, s6, 9
                  lui          t0, 233639
                  andi         s5, s6, 1711
                  or           s1, t5, s0
                  srli         s11, s8, 7
                  nop
                  xor          s8, t6, s11
                  slli         s10, a0, 1
                  addi         a0, t1, 1628
                  addi         s1, a3, 765
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s3, 0xd21f59c7
                  li           s5, 0x605047f5
                  li           sp, 0xffffffff
                  li           tp, 0x80000000
                  li           s6, 0xffffffff
                  li           s2, 0x0
                  li           t4, 0xffffffff
                  li           a0, 0x9e53c79e
                  li           a4, 0x0
                  lui          s2, 282089
                  addi         a4, t4, 614
                  add          s6, sp, s3
                  lui          tp, 933269
                  addi         ra, t4, -1436
                  add          a0, a4, a0
                  addi         t4, ra, 1729
                  lui          a0, 179858
                  sub          tp, s2, s3
                  lui          t4, 577773
                  sub          s6, ra, t4
                  addi         ra, sp, -2013
                  auipc        s5, 939832
                  sub          sp, t4, s2
                  add          s3, s3, s3
                  auipc        ra, 634037
                  lui          s3, 528275
                  addi         s5, s5, 1622
                  sub          a0, tp, ra
                  addi         t4, sp, -376
                  lui          s3, 479647
                  lui          s3, 3858
                  nop
                  auipc        a4, 847039
                  lui          a4, 644647
                  auipc        s6, 703369
                  nop #end riscv_int_numeric_corner_stream_19
                  srli         t5, sp, 15
                  add          s5, t3, gp
                  andi         a6, t5, -99
                  or           ra, s5, t3
                  add          s3, a5, s0
                  srl          s9, t1, s5
                  and          s6, t1, a0
                  auipc        s11, 943950
                  slt          s10, zero, t3
                  sra          t6, s7, s1
                  and          s6, s3, a7
                  li           t6, 0xdbb69f17 #start riscv_int_numeric_corner_stream_28
                  li           sp, 0x0
                  li           tp, 0x80000000
                  li           ra, 0xffffffff
                  li           s8, 0xffffffff
                  li           gp, 0x877ef63e
                  li           t5, 0x80000000
                  li           s11, 0x5411ccbf
                  li           s7, 0x0
                  li           t3, 0xffffffff
                  sub          s8, t5, sp
                  auipc        t5, 766507
                  sub          s7, s8, s8
                  sub          tp, s7, t6
                  auipc        t3, 741992
                  auipc        gp, 1019491
                  auipc        ra, 550478
                  add          tp, s8, t6
                  sub          t5, tp, tp
                  lui          s8, 547594
                  sub          s7, tp, ra
                  addi         ra, tp, 175
                  addi         t5, t5, -1327
                  auipc        ra, 843195
                  add          s8, gp, gp
                  lui          t3, 130837
                  sub          s11, ra, s11
                  nop
                  add          gp, s8, s8
                  nop
                  sub          s8, s7, ra
                  lui          ra, 987078
                  sub          t6, t3, t5
                  sub          s7, s7, t5
                  lui          ra, 161703 #end riscv_int_numeric_corner_stream_28
                  andi         zero, s11, -1974
                  addi         s8, t5, -1941
                  auipc        s3, 315427
                  sub          s11, t5, s5
                  ori          t1, t5, 1952
                  slti         s7, s7, -34
                  sll          a1, t3, s1
                  slti         t1, s8, 1401
                  auipc        t3, 243423
                  andi         a0, s1, 434
                  sra          t0, a4, s11
                  nop
                  add          s11, zero, a7
                  sub          s8, a2, s1
                  addi         a6, sp, -1045
                  or           s7, t3, a5
                  add          t4, a5, tp
                  lui          t0, 774824
                  xori         s1, zero, 1462
                  sltu         t1, a5, s3
                  ori          a7, a0, -104
                  sltiu        s10, s7, -125
                  sltiu        s8, zero, -1758
                  ori          t1, a2, 1046
                  sltu         a3, t3, s3
                  sltiu        s4, a4, 1424
                  srli         t5, a1, 29
                  srli         a3, a6, 5
                  sll          t4, s5, a1
                  sltiu        a0, zero, -56
                  srl          t6, s8, s6
                  xori         s1, a3, 1711
                  sltu         a3, tp, s4
                  addi         s3, s10, -891
                  slli         s8, t1, 9
                  nop
                  srai         t0, t3, 24
                  xor          s0, t1, zero
                  xor          s2, s5, a3
                  slti         s5, t5, -351
                  srli         gp, tp, 20
                  slt          a1, t6, s10
                  add          a0, t4, s1
                  lui          a1, 31996
                  xor          s6, a7, a5
                  xor          zero, sp, a5
                  add          s1, s5, t1
                  and          ra, a7, a5
                  sltu         s5, tp, s2
                  sll          s0, s6, a2
                  srai         t3, sp, 5
                  sll          a4, a3, a6
                  lui          s11, 877366
                  ori          s9, s10, -1768
                  sltu         ra, a5, s6
                  auipc        s0, 457522
                  slli         gp, a4, 16
                  nop
                  sll          sp, sp, a5
                  and          gp, s9, t0
                  add          zero, s9, sp
                  addi         a6, t6, 768
                  xori         gp, t5, 1470
                  addi         a0, a5, 27
                  xori         s7, t3, -502
                  xor          a6, t1, t2
                  ori          zero, gp, 433
                  slti         s6, t3, -428
                  xori         s0, s7, -1011
                  sltiu        s6, gp, -441
                  xori         s4, sp, 1696
                  slti         t1, t5, -974
                  sll          t6, s9, zero
                  nop
                  or           a1, t4, t0
                  auipc        s0, 599371
                  sltu         gp, a4, t5
                  auipc        s7, 527540
                  add          s0, t4, t1
                  srl          s8, tp, t1
                  srli         t3, a2, 28
                  xor          s11, a7, s1
                  sltiu        s8, t6, -1460
                  srli         a0, s1, 2
                  addi         s1, t0, 1228
                  slt          s9, a0, t2
                  sra          t3, zero, s5
                  sltu         gp, t2, a3
                  auipc        t5, 65259
                  slli         s7, s1, 17
                  addi         s4, s9, 150
                  sub          t5, tp, s6
                  slti         sp, sp, 958
                  srli         s10, sp, 1
                  auipc        s5, 17702
                  xor          s7, a5, t6
                  sltiu        gp, t6, 1268
                  ori          s6, a0, -135
                  auipc        s2, 444070
                  auipc        gp, 452773
                  srli         s7, s7, 29
                  sll          t0, t5, t3
                  sltiu        t1, s3, 976
                  xor          s5, a2, t5
                  slti         a0, a2, 1818
                  lui          a7, 948158
                  add          a1, s1, t3
                  slli         ra, s9, 4
                  auipc        s9, 961318
                  srl          a4, s9, s7
                  addi         s11, s5, -1423
                  add          a1, sp, s0
                  srl          s10, s2, t2
                  sub          s8, t2, a5
                  ori          s8, t6, -1949
                  xor          s11, s11, tp
                  ori          a1, zero, 1818
                  sll          t6, a1, s5
                  sltu         t6, t6, t5
                  or           t5, t4, s1
                  sra          t3, a7, s3
                  sltiu        t1, t0, -921
                  or           a4, a1, a3
                  and          s1, t4, s0
                  auipc        s11, 85573
                  xori         t6, sp, -295
                  sltiu        a4, a4, 1157
                  xori         t5, a3, 1927
                  slt          s2, ra, gp
                  addi         t0, s1, 1470
                  srli         s7, t6, 25
                  nop
                  sub          t0, s7, ra
                  andi         a3, s7, -1898
                  xor          s3, s6, sp
                  addi         t0, t4, 604
                  sll          a1, a7, sp
                  andi         a7, t6, -937
                  sltiu        t3, sp, 805
                  slt          t4, sp, t2
                  srai         t0, s6, 6
                  srl          t4, a0, t5
                  xori         t6, t5, -1889
                  nop
                  auipc        s8, 238263
                  sll          t0, s1, s3
                  slti         a0, gp, 303
                  and          a0, t4, s5
                  add          s4, s5, gp
                  and          s10, a1, s4
                  add          s0, t6, s2
                  sltiu        t4, t2, 1216
                  sll          s6, s1, t3
                  slli         tp, t5, 21
                  add          t6, t4, tp
                  or           a7, a1, a3
                  sll          s7, t1, s5
                  add          s1, t4, t2
                  sltu         s9, s10, sp
                  nop
                  srli         s0, s5, 18
                  andi         s0, s1, 1558
                  lui          t0, 1022592
                  slti         t6, a2, -1444
                  addi         s5, zero, -1892
                  sltu         s7, a5, ra
                  sltiu        s10, s0, -827
                  sltu         s3, s1, s5
                  lui          a3, 417813
                  and          sp, s1, a2
                  sub          a6, s5, t5
                  slli         t6, s10, 16
                  slt          s0, t3, t1
                  slli         a3, a1, 1
                  andi         s9, t3, 1387
                  srli         s6, gp, 12
                  sltiu        zero, zero, 324
                  andi         s8, s9, -479
                  sub          s2, a6, t5
                  slti         t0, t5, -980
                  srli         zero, s7, 21
                  slt          t3, tp, tp
                  ori          s5, t0, 1919
                  ori          a1, s3, 1332
                  addi         t3, a5, 172
                  sra          a3, s5, a4
                  andi         tp, t1, 1008
                  andi         t6, zero, 1573
                  xor          a4, a2, s6
                  srai         t3, ra, 2
                  andi         s2, s4, 529
                  andi         sp, s8, -1289
                  lui          s2, 854600
                  srli         s9, t6, 22
                  sll          s2, a5, t5
                  add          t0, t6, a7
                  slli         s5, a4, 0
                  srli         s9, s8, 16
                  sll          t0, s3, s6
                  sub          s1, s8, s6
                  auipc        s0, 315593
                  sub          s10, tp, s7
                  and          t4, gp, t4
                  addi         s10, s1, 358
                  nop
                  auipc        s8, 243140
                  andi         sp, a3, 1961
                  srl          a6, s9, zero
                  xor          a1, a6, s9
                  slt          s0, t2, gp
                  sra          t6, s11, t3
                  sra          ra, t4, s3
                  addi         s9, t6, -1668
                  srli         s8, a3, 18
                  sub          a1, s11, s10
                  auipc        t0, 75224
                  auipc        t6, 595216
                  sltu         t4, t6, t6
                  slti         t3, a6, -1048
                  sll          a4, s2, a2
                  xor          s11, zero, s2
                  slt          a4, a0, s9
                  add          t6, t2, tp
                  andi         zero, s1, -2015
                  sltu         t4, t1, a7
                  nop
                  lui          s7, 73908
                  addi         s0, s1, -799
                  nop
                  addi         s1, t3, -535
                  sll          t1, a6, a1
                  sltu         ra, a2, t2
                  addi         s7, s1, -1869
                  srl          s9, t4, s10
                  nop
                  andi         a1, a7, 1845
                  slt          a4, s10, t4
                  or           a1, a4, s7
                  sltu         a7, t0, t3
                  ori          a3, a1, -1350
                  sra          s1, ra, sp
                  lui          sp, 106023
                  add          tp, t4, s9
                  srai         t4, s11, 2
                  srli         a4, s11, 11
                  slli         t1, a2, 26
                  slti         a3, ra, -1349
                  add          t4, s6, zero
                  lui          t5, 397941
                  sra          s8, s5, a0
                  add          s5, ra, t3
                  srli         a3, s5, 9
                  sltu         s10, s5, a1
                  sra          a0, t3, a7
                  srli         tp, s4, 24
                  or           a7, s5, t3
                  slt          a0, s11, a4
                  srli         s1, a0, 31
                  slli         t3, s2, 28
                  addi         sp, s8, -1258
                  ori          t0, t2, -977
                  or           t5, a7, t2
                  addi         a3, gp, -758
                  xor          gp, t2, s6
                  add          a3, a2, gp
                  sll          s2, t2, s8
                  add          s6, t3, ra
                  xori         t0, a1, 1532
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t6, 0xffffffff
                  li           tp, 0xffffffff
                  li           s3, 0xffffffff
                  li           t0, 0xffffffff
                  li           s8, 0x0
                  li           t5, 0x80000000
                  li           s11, 0x80000000
                  li           t3, 0xffffffff
                  li           s6, 0xb5c42a4d
                  addi         t5, sp, 1397
                  auipc        t6, 97791
                  add          s8, t3, t3
                  add          tp, s8, s3
                  sub          t0, s11, t0
                  sub          tp, sp, tp
                  sub          t0, t0, t5
                  add          t3, sp, t5
                  lui          t6, 67825
                  sub          sp, s8, t3
                  sub          t0, t0, t0
                  lui          s11, 555306
                  add          t0, tp, tp
                  auipc        t6, 278919
                  add          s8, s3, t6
                  add          s3, t0, s6
                  nop #end riscv_int_numeric_corner_stream_6
                  add          s11, s1, a5
                  or           t3, zero, t2
                  auipc        s5, 1012964
                  sub          s4, s10, sp
                  addi         s2, t6, -1554
                  srli         s6, t3, 10
                  slti         s5, s0, 580
                  addi         s3, a1, -1200
                  nop
                  srli         s3, zero, 10
                  lui          s3, 287592
                  lui          sp, 567757
                  xori         s3, sp, 182
                  slti         a1, s8, 1338
                  slt          s6, s1, s1
                  andi         a3, a2, 1137
                  xor          s3, a1, s0
                  lui          gp, 804615
                  or           a1, t0, a2
                  ori          s0, gp, -114
                  andi         s8, s11, 679
                  slt          ra, a4, s2
                  lui          s3, 815577
                  srai         t4, s2, 10
                  and          a0, a3, sp
                  add          gp, s4, a6
                  srli         s11, s4, 24
                  or           s10, t3, s5
                  ori          s5, gp, -2008
                  sll          a3, a7, a0
                  auipc        zero, 995864
                  srl          s2, a6, s1
                  xori         ra, a2, -1666
                  and          a3, a2, sp
                  and          t3, s2, t2
                  andi         s3, t0, -870
                  add          a4, s9, s0
                  slti         s5, t2, -1098
                  slt          s11, a6, a6
                  slti         s7, t6, 527
                  slti         t6, t4, 1272
                  slli         s7, a5, 22
                  addi         s7, a7, -1214
                  addi         s10, ra, -1155
                  nop
                  srai         t4, a2, 6
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           s8, 0xffffffff
                  li           a6, 0xffffffff
                  li           s2, 0xffffffff
                  li           s6, 0x0
                  li           tp, 0x80000000
                  li           s0, 0x80000000
                  li           t3, 0x80000000
                  li           t4, 0xffffffff
                  li           gp, 0x9a790629
                  nop
                  add          t4, tp, a6
                  nop
                  add          s6, s0, s0
                  nop
                  sub          s0, gp, a6
                  lui          t4, 218700
                  lui          gp, 251984
                  sub          gp, tp, t3
                  lui          gp, 450629
                  lui          gp, 697986
                  nop
                  auipc        tp, 491102
                  lui          s6, 510972
                  sub          gp, s9, s8
                  addi         s2, gp, 1642
                  nop
                  nop
                  nop
                  nop
                  auipc        t4, 26659
                  auipc        s6, 29041
                  sub          tp, s9, s8
                  lui          gp, 362586 #end riscv_int_numeric_corner_stream_11
                  sll          a7, ra, gp
                  add          t0, a4, a3
                  sra          s11, t2, s6
                  sll          s7, s1, s1
                  slli         s2, a5, 28
                  ori          s2, s5, 388
                  sltiu        t1, s10, 424
                  nop
                  ori          s2, s8, -1864
                  slti         a3, a0, 1664
                  lui          sp, 603664
                  srai         a3, t3, 27
                  sub          sp, s8, t1
                  sub          s2, s0, zero
                  slt          a7, s4, ra
                  xor          s1, tp, s10
                  auipc        s1, 299001
                  sltu         a4, a6, s1
                  srli         s4, a6, 17
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_26
                  li           s1, 0x80000000
                  li           s9, 0xdab01bb0
                  li           t6, 0xfbb9c1f7
                  li           t5, 0x65111bac
                  li           a1, 0xffffffff
                  li           t4, 0xa63b2050
                  li           a6, 0xcaf312c9
                  li           a3, 0x4d1f9e1e
                  li           s0, 0x80000000
                  addi         a1, t6, 1672
                  sub          a3, t6, a6
                  auipc        s1, 340511
                  sub          s1, t5, s9
                  lui          t6, 986103
                  nop
                  addi         a6, t4, 594
                  lui          t5, 718709
                  addi         t4, a4, 167
                  addi         s9, s0, 587
                  add          s1, s0, a3
                  auipc        s0, 1028366
                  lui          a1, 1006327
                  add          a6, s9, a6
                  add          a4, t4, t6
                  nop
                  lui          a6, 866907
                  add          a1, t4, a3
                  add          a3, a6, a1
                  nop
                  auipc        a6, 85541
                  lui          t4, 479506
                  auipc        a1, 363187
                  addi         a3, s9, 1525
                  add          t5, s0, a3
                  lui          a6, 335243 #end riscv_int_numeric_corner_stream_26
                  sra          t3, s5, s5
                  slt          a6, gp, a2
                  addi         s3, t2, -1323
                  lui          s7, 465476
                  auipc        t6, 150604
                  slti         a3, s5, -361
                  slt          s0, a0, s2
                  sltiu        a6, a4, 1271
                  sltu         s9, t1, a2
                  add          zero, tp, ra
                  sra          a3, s4, s5
                  auipc        t5, 394971
                  srl          a7, t0, a5
                  and          s11, s11, t2
                  srai         t5, s7, 14
                  sra          zero, a1, s11
                  slt          s10, a7, s2
                  or           a6, a0, a2
                  nop
                  slli         t4, s0, 9
                  addi         s3, a7, -431
                  srai         a4, a3, 22
                  slti         s9, a0, 196
                  sll          t6, a4, t2
                  slt          s3, a6, a1
                  ori          a1, s4, -414
                  srai         a1, zero, 16
                  add          t5, ra, s1
                  sltu         gp, t2, a7
                  sub          t1, s5, t5
                  xori         zero, t0, 394
                  sltiu        t4, s3, 1207
                  auipc        s11, 317997
                  add          s7, t6, a5
                  xori         s7, a1, 1049
                  lui          a3, 222568
                  sub          s4, a6, s4
                  sra          s2, s4, ra
                  slli         s2, ra, 6
                  lui          a3, 174580
                  nop
                  xor          a1, s7, s4
                  add          tp, gp, s4
                  auipc        s11, 835204
                  slti         t5, sp, -1282
                  slti         sp, a5, 952
                  slti         s4, s7, 1935
                  nop
                  ori          a1, t1, 539
                  srl          s11, sp, s10
                  and          a7, a0, s8
                  sltiu        t3, t4, 792
                  lui          a7, 978872
                  xori         gp, s3, 1768
                  slli         sp, s4, 4
                  slli         t6, s5, 8
                  addi         t6, s2, 777
                  addi         tp, s9, -1839
                  slli         s11, s2, 22
                  srai         ra, s1, 18
                  slti         t4, s11, 1790
                  sltu         a1, s4, t5
                  sltu         s5, s10, a6
                  srl          s5, s11, s3
                  sra          ra, a5, gp
                  xori         t1, s10, 795
                  andi         s3, t4, 1450
                  srl          s11, s6, zero
                  auipc        s11, 317267
                  add          a3, s10, a3
                  srl          a3, s2, a1
                  auipc        s6, 297467
                  xori         s1, s3, -1734
                  sra          s1, a1, s2
                  xori         tp, s8, -1636
                  or           zero, s3, t6
                  sub          s6, t0, sp
                  sra          s6, s3, s2
                  sltu         a4, t1, s9
                  srai         s10, s10, 13
                  srli         s1, s3, 23
                  sltu         a3, t4, s11
                  addi         t5, s3, -611
                  and          gp, gp, t1
                  sll          s2, t2, zero
                  lui          zero, 243250
                  srl          tp, t2, a2
                  addi         a1, a7, 1503
                  add          ra, t1, ra
                  nop
                  nop
                  slt          a0, s7, zero
                  or           s4, tp, a1
                  srl          t4, a6, sp
                  sub          t6, s4, s1
                  nop
                  sll          a1, a4, t4
                  sltiu        t6, s11, -584
                  nop
                  auipc        s1, 615094
                  srl          s11, t0, t2
                  lui          a0, 178313
                  sub          s5, a0, gp
                  sll          s10, t1, a3
                  andi         gp, t1, -267
                  srli         s1, s0, 4
                  auipc        s6, 352962
                  and          t6, ra, s5
                  srl          s4, a3, s0
                  sll          s0, s0, s6
                  srl          s10, a1, s1
                  addi         t1, a7, -1324
                  sll          s6, a1, a0
                  srli         s4, t5, 28
                  xor          a3, ra, a4
                  sub          s10, ra, s11
                  slli         a1, s10, 29
                  auipc        t4, 944338
                  slt          s1, s11, s8
                  addi         t6, sp, -2045
                  add          a7, t6, sp
                  xor          s7, s2, t2
                  sll          s10, t0, t4
                  sltiu        s5, s11, -1111
                  sltu         t0, s10, t0
                  sub          s7, a1, t5
                  andi         t0, a5, -1930
                  add          s9, a7, tp
                  srai         sp, t2, 25
                  srl          a7, ra, gp
                  or           gp, s0, s8
                  nop
                  addi         a4, a6, -283
                  add          t5, a7, s5
                  sub          a7, a5, a6
                  add          s10, t5, ra
                  nop
                  slti         s5, s4, -582
                  addi         a6, t3, -545
                  or           a1, zero, gp
                  slti         a7, gp, 156
                  slti         s4, a2, -1400
                  nop
                  slti         t6, ra, 83
                  andi         s8, t3, 510
                  and          t0, a6, s11
                  and          t6, ra, tp
                  lui          a0, 885343
                  srl          a1, s2, t3
                  sll          t6, s4, t2
                  xori         t4, t3, 628
                  sltu         s8, a6, sp
                  srl          s7, a1, t5
                  addi         zero, s7, 1326
                  auipc        s5, 875574
                  slt          s4, s3, gp
                  auipc        t3, 42919
                  add          zero, t5, t0
                  addi         s7, t4, -503
                  sltu         zero, t2, a2
                  slli         zero, a3, 7
                  and          sp, sp, s11
                  addi         s2, a3, 494
                  sltu         t4, t5, s3
                  ori          s11, s10, 1473
                  sltiu        s11, t3, 491
                  or           a3, a5, a1
                  slti         zero, s7, 996
                  add          s2, s2, a3
                  auipc        t5, 753850
                  nop
                  or           s6, s11, gp
                  and          s4, a1, a7
                  xori         s11, s2, -246
                  sll          s2, sp, s2
                  lui          s10, 332185
                  sll          a1, a7, s2
                  slti         s3, a6, 519
                  lui          s6, 647127
                  slt          sp, s8, t2
                  srli         tp, a3, 3
                  srli         a0, s7, 11
                  sra          a1, s8, s9
                  and          zero, t4, t5
                  slt          s11, tp, s0
                  slt          s8, t6, t2
                  ori          a4, s1, -1486
                  slli         a7, gp, 13
                  auipc        s8, 172631
                  xor          s1, s4, s0
                  slti         s7, s8, 1717
                  sll          s4, t6, t2
                  or           a4, s9, a5
                  auipc        sp, 916826
                  slli         gp, a7, 6
                  sub          s6, a1, t3
                  nop
                  sub          a6, t3, t4
                  ori          s5, tp, -1496
                  nop
                  srai         a6, s11, 30
                  slli         t1, s3, 29
                  nop
                  sltu         s9, s2, t4
                  sll          zero, s11, gp
                  sltiu        tp, t3, -489
                  or           a1, a5, s10
                  xor          sp, a3, t6
                  auipc        sp, 167542
                  srl          s8, s0, tp
                  lui          s0, 401435
                  xor          t5, t0, s2
                  lui          a0, 535184
                  or           t1, gp, gp
                  slli         t6, t1, 4
                  srl          t1, t4, t5
                  lui          a7, 880279
                  sub          a3, s8, t6
                  nop
                  srli         t1, s7, 6
                  lui          s0, 524665
                  srli         s11, t5, 1
                  sub          s7, s11, a0
                  sub          a1, t1, a2
                  srl          s3, t4, a0
                  and          tp, sp, s9
                  or           zero, t5, a4
                  sra          t3, t2, t0
                  sll          s7, s5, s11
                  sub          s11, t3, s10
                  sll          s2, s10, t6
                  nop
                  ori          s2, s8, -1827
                  auipc        zero, 78130
                  sra          tp, t2, a4
                  andi         t3, tp, -594
                  and          gp, s3, s8
                  auipc        s2, 214483
                  sll          a4, s4, t6
                  auipc        s2, 336108
                  andi         s3, tp, -294
                  addi         t1, s1, -2033
                  add          t4, s4, t0
                  sra          t3, a7, s0
                  xori         tp, s3, -1894
                  andi         s3, s10, 1719
                  xori         a3, s8, -503
                  auipc        gp, 788002
                  lui          a1, 612925
                  sll          t0, t0, s5
                  or           s3, a4, s1
                  slli         t4, a3, 13
                  slt          s0, s5, a2
                  auipc        s6, 312994
                  srai         ra, a7, 3
                  add          sp, a5, tp
                  slli         gp, s3, 8
                  add          s8, a3, zero
                  auipc        s7, 825415
                  slli         tp, t5, 17
                  xori         s8, t6, -1239
                  sltiu        a6, s1, 98
                  lui          a3, 746619
                  ori          a4, s7, -1482
                  sub          tp, s10, t3
                  add          a4, t2, a3
                  ori          sp, s9, 505
                  slt          s8, a5, s7
                  srai         s9, t2, 23
                  nop
                  sub          tp, a1, s1
                  or           t1, t4, s2
                  ori          s10, t6, 1460
                  srli         s9, gp, 5
                  sltu         s0, s5, ra
                  sltiu        s4, s6, -1486
                  sltiu        a4, sp, -1411
                  and          a4, s3, s9
                  add          a7, a6, sp
                  srli         s5, a5, 14
                  sub          t4, s5, t2
                  and          s4, a1, s3
                  sltiu        tp, a7, 1916
                  or           s8, s6, t5
                  slt          s2, s7, a7
                  nop
                  or           t3, a5, tp
                  sltu         t4, s5, s11
                  sltiu        gp, s10, -145
                  slli         t6, s2, 4
                  slli         t4, s10, 18
                  slli         a7, t3, 27
                  slli         sp, a3, 14
                  lui          s9, 960718
                  xor          sp, ra, a5
                  srl          s3, s5, sp
                  andi         s4, s5, -689
                  add          s5, t5, s3
                  sub          sp, a6, s0
                  slt          a4, s6, a7
                  lui          s7, 753291
                  lui          s9, 625959
                  sra          t3, s4, t2
                  nop
                  sub          t4, s9, zero
                  addi         s2, s8, -1625
                  xor          t6, s9, ra
                  sra          t1, s3, a7
                  auipc        a3, 70721
                  slti         s8, s6, 1476
                  slli         s8, a0, 18
                  slt          s11, s11, s1
                  xor          s11, t1, s5
                  sra          s9, s9, tp
                  xor          s0, t5, t5
                  srai         sp, a4, 8
                  sub          a4, a4, s11
                  xor          s8, t1, a1
                  and          s10, zero, s3
                  srai         t6, tp, 21
                  auipc        ra, 260764
                  ori          s5, s0, -958
                  xori         a4, t2, 988
                  sltiu        gp, a1, 635
                  slli         a1, t4, 3
                  slti         a0, t2, 885
                  slt          sp, a7, t3
                  nop
                  sub          s11, t3, s5
                  auipc        t1, 1006703
                  slt          zero, sp, t0
                  and          t1, tp, tp
                  srai         t0, t0, 23
                  nop
                  sll          s5, zero, s9
                  xor          a7, s9, t0
                  andi         s1, a2, 759
                  sltiu        gp, s0, -1071
                  sltiu        a4, t2, -1083
                  nop
                  sra          ra, s8, s7
                  slt          a4, s5, a1
                  add          s1, s6, t4
                  lui          s1, 859791
                  lui          s11, 318984
                  sll          t4, s5, s6
                  sltu         t6, s11, a7
                  slli         gp, tp, 19
                  addi         sp, t0, 529
                  srli         t6, t5, 9
                  slti         ra, s7, -656
                  sra          t3, s4, a6
                  slt          s3, s7, t3
                  xori         gp, ra, 1607
                  lui          t6, 723820
                  slti         t4, t4, 1543
                  sll          s0, a3, s7
                  lui          t5, 328360
                  sra          s7, s2, a2
                  nop
                  and          gp, s8, sp
                  slt          s8, sp, t5
                  slt          a0, a7, t2
                  xori         a1, t5, -491
                  slli         s3, s5, 0
                  sra          s7, t6, zero
                  auipc        t1, 714309
                  sub          ra, s3, t0
                  sra          gp, t5, zero
                  auipc        zero, 1008210
                  addi         s0, s3, -1383
                  addi         t6, t4, 20
                  slli         a6, t3, 2
                  sltu         s3, a0, gp
                  andi         tp, a1, -1981
                  srl          s9, t0, ra
                  slli         t5, gp, 10
                  sltu         zero, t5, gp
                  sub          s11, t3, t2
                  auipc        s1, 750923
                  auipc        s3, 390695
                  sltu         gp, s4, s11
                  slt          s8, a3, zero
                  slti         a7, a0, -1462
                  slli         a7, zero, 22
                  andi         s5, s9, 0
                  srai         a7, zero, 24
                  sub          tp, a2, s7
                  sra          sp, t5, a0
                  srai         s7, sp, 2
                  or           s6, s10, s2
                  sltiu        s8, t5, 1372
                  or           ra, a4, a6
                  sltiu        a1, a6, -1670
                  xori         t5, t3, 484
                  addi         t6, s8, 1357
                  sra          s9, t3, t6
                  nop
                  srai         t1, a0, 19
                  srl          gp, s11, a0
                  addi         t1, s11, -1699
                  slli         s9, tp, 25
                  ori          s1, t4, 737
                  sltu         s6, t4, s3
                  auipc        ra, 872970
                  addi         s10, t3, 1939
                  addi         a4, t0, -126
                  add          s11, tp, s9
                  srli         t5, a6, 25
                  slli         a7, t1, 9
                  srli         ra, a0, 25
                  slti         s0, a5, -763
                  nop
                  or           s9, a5, t3
                  lui          t6, 464071
                  xor          s4, s1, s0
                  sltu         t1, a0, a6
                  srai         t4, tp, 24
                  sub          s9, s3, s10
                  slli         a1, s4, 23
                  sra          a7, s5, s8
                  sra          ra, a6, s7
                  auipc        a4, 122286
                  sltu         t4, s10, s5
                  sltu         a0, t2, t6
                  or           s9, s1, gp
                  slli         s9, a2, 0
                  addi         s10, s0, -1047
                  xori         a6, a0, -886
                  xori         t3, a4, -550
                  sll          a4, s3, s0
                  xori         a0, a5, 34
                  srl          s11, zero, a0
                  addi         t0, s8, 939
                  nop
                  sltu         t3, a4, zero
                  slli         a3, t5, 12
                  sra          ra, gp, s10
                  sll          t3, s3, s10
                  nop
                  slli         gp, s7, 4
                  ori          a4, s11, 1036
                  andi         gp, s1, -1092
                  auipc        t0, 210589
                  and          a3, ra, t5
                  slli         a3, t4, 10
                  add          a4, t5, gp
                  sltiu        a1, s1, 1361
                  srli         t6, t4, 19
                  lui          a7, 841470
                  lui          a0, 567119
                  srli         zero, a4, 27
                  sra          a4, a1, t4
                  auipc        a7, 421579
                  ori          s7, zero, -76
                  slt          a0, s1, t6
                  xori         a1, a3, 313
                  sltiu        s0, s2, -157
                  sub          s1, ra, a7
                  nop
                  sub          a4, zero, t1
                  or           gp, s1, t6
                  auipc        t0, 501081
                  sub          t1, gp, a1
                  xori         a0, s3, 1724
                  sub          a6, a2, t4
                  ori          t6, t2, -33
                  add          s5, s1, s7
                  sltu         a1, s2, s5
                  srl          gp, ra, s4
                  auipc        s7, 179399
                  xor          s3, ra, gp
                  slti         sp, a0, 771
                  or           a1, zero, a7
                  sll          zero, a0, gp
                  xor          s11, s3, a4
                  slti         a3, s3, 1626
                  auipc        a3, 293071
                  sra          t5, a3, a3
                  ori          a3, s1, 402
                  add          zero, t1, a5
                  sll          zero, tp, s1
                  sll          s7, t2, s4
                  xor          s7, s4, t3
                  andi         t1, gp, -1281
                  ori          t0, a2, -1214
                  srl          t1, a2, s5
                  xor          ra, t0, s5
                  slt          zero, s11, t4
                  ori          t5, t3, 1668
                  srli         ra, a4, 27
                  sltiu        s1, t0, 936
                  sll          sp, s8, s6
                  sub          zero, s8, s2
                  slli         zero, s3, 16
                  slli         s3, s6, 3
                  add          a6, a6, t4
                  sub          s9, s6, t0
                  sltu         t0, s5, a1
                  sltu         zero, s9, a2
                  addi         s1, s1, -491
                  xori         s5, zero, 772
                  slli         t4, s5, 6
                  slli         s11, s9, 22
                  sltu         t1, t1, t5
                  addi         s0, a2, 435
                  andi         t3, t0, -493
                  xor          t0, a0, s2
                  slti         t5, a0, 1987
                  sub          t4, s1, a3
                  slti         t6, t0, 2008
                  addi         s11, a4, 1295
                  srl          t0, s4, s11
                  slti         tp, a5, -297
                  srai         s3, s2, 6
                  xori         t0, t1, 210
                  slt          s10, s7, a2
                  sltiu        s11, t5, -1538
                  sra          t0, gp, a6
                  and          a7, s1, ra
                  srli         ra, sp, 20
                  sltu         a1, s3, s9
                  srai         gp, t6, 14
                  nop
                  add          ra, a2, ra
                  auipc        t0, 425491
                  ori          zero, gp, 1015
                  xori         ra, s1, -1165
                  ori          sp, t1, 1354
                  srai         s3, t0, 8
                  sll          s3, s1, a5
                  or           zero, s6, s5
                  ori          t5, s9, -1003
                  srl          tp, gp, s6
                  srl          gp, t5, s1
                  srai         s7, s10, 17
                  auipc        s3, 639612
                  auipc        a4, 376080
                  srli         s3, a0, 27
                  srli         t3, a6, 0
                  xor          t4, s9, a3
                  lui          a7, 797804
                  andi         s9, s1, -1046
                  sltu         ra, t5, t5
                  add          s5, s2, t6
                  sltu         a4, a1, a6
                  or           a7, a4, a5
                  xor          a1, s6, s1
                  andi         ra, a5, 264
                  ori          a7, s11, -1104
                  slt          zero, a4, s3
                  andi         s2, s1, -1382
                  srl          s7, s6, a5
                  sltu         s8, s9, sp
                  sltu         t0, zero, s1
                  add          zero, s5, a5
                  and          sp, t5, a2
                  sltu         a4, s11, gp
                  srli         t0, s8, 28
                  xor          gp, sp, sp
                  and          t1, sp, s3
                  lui          s0, 477689
                  lui          sp, 505265
                  sra          t3, zero, t0
                  srli         t0, t5, 6
                  andi         s10, ra, -16
                  xori         a4, t2, -257
                  xori         s6, sp, 1026
                  sll          t1, s5, t2
                  srl          zero, sp, a7
                  ori          gp, a4, -326
                  ori          s1, s7, 851
                  srai         s1, t2, 25
                  or           t6, a1, s4
                  add          s6, t0, a7
                  sra          s8, a7, a5
                  slli         gp, s8, 9
                  add          s11, s2, s7
                  lui          t0, 841535
                  xor          s7, sp, t4
                  xor          a4, t1, ra
                  slti         ra, s3, -987
                  slli         s8, a0, 2
                  lui          t3, 752061
                  srai         a6, s3, 11
                  add          t5, zero, s11
                  slt          s8, s6, ra
                  ori          t6, s11, -600
                  sub          gp, t3, t0
                  sll          t1, t1, t5
                  add          t5, s5, s7
                  sra          t5, gp, s11
                  xor          s2, s11, ra
                  sub          a1, a2, t3
                  srli         t6, a6, 21
                  xori         s6, a2, 1321
                  sub          t1, a4, s8
                  sltu         a1, sp, s10
                  ori          s0, s1, 1220
                  add          ra, a3, a3
                  sll          s1, t4, s10
                  nop
                  auipc        s7, 23261
                  slli         s2, a3, 20
                  sra          gp, s4, tp
                  slt          a6, a5, s4
                  sra          tp, s0, zero
                  add          tp, s9, sp
                  slti         zero, t0, 1354
                  xori         a0, a2, -288
                  addi         s2, a2, -1723
                  xori         s1, a4, -1009
                  srai         t6, a7, 27
                  sra          s5, ra, s5
                  lui          t5, 484424
                  nop
                  slt          s7, s10, s9
                  srli         s5, s5, 26
                  add          tp, s0, a4
                  slli         a0, s6, 6
                  lui          s7, 857611
                  xor          t4, gp, s8
                  srl          t0, a0, a1
                  lui          t3, 819321
                  slti         s11, s0, -399
                  lui          gp, 467264
                  or           t3, gp, t4
                  sra          t6, a7, tp
                  ori          a1, s7, -1174
                  sltiu        sp, a5, -1206
                  andi         s5, zero, -858
                  and          s10, a3, t6
                  add          t4, gp, a3
                  xor          t6, t5, s7
                  sub          gp, a0, a5
                  srli         zero, t6, 10
                  srai         s2, t0, 25
                  slli         a6, gp, 26
                  auipc        s9, 613722
                  sltu         s1, s2, s10
                  andi         s2, s3, -330
                  slt          t1, t0, s11
                  auipc        a3, 851653
                  slt          s3, a1, a5
                  slli         s11, a4, 15
                  srai         t6, zero, 19
                  sll          s0, s11, t6
                  slt          s0, t5, zero
                  lui          a1, 143244
                  add          t0, ra, s5
                  sltu         t4, a5, t0
                  andi         a6, s9, 201
                  and          t4, t0, a6
                  xor          a6, gp, a1
                  srli         a3, a4, 0
                  srli         s4, sp, 19
                  and          s8, t4, t5
                  slti         ra, a5, -1816
                  srai         s6, a1, 27
                  auipc        t6, 955283
                  xori         a3, a3, 119
                  xor          t0, a7, a2
                  slti         s5, t5, 669
                  srl          s0, s3, s7
                  xori         a4, gp, 965
                  sltiu        s9, s2, -1846
                  sra          t4, s5, t3
                  add          s11, t6, a7
                  lui          ra, 814624
                  sra          a7, s10, a4
                  add          t6, ra, t1
                  sub          s6, tp, s2
                  sra          t5, a0, s2
                  ori          s0, t0, -813
                  sltiu        t1, sp, -738
                  xor          sp, s3, s9
                  or           t4, s7, t5
                  sra          a6, t2, a6
                  sltiu        s0, s3, -1853
                  and          t0, t6, s8
                  sll          t3, s2, s4
                  sltiu        s10, t1, -1330
                  sltu         s5, t5, t5
                  nop
                  srl          s1, a0, t4
                  sll          s5, sp, t6
                  srli         a7, s5, 1
                  sll          t1, sp, s2
                  sltiu        s3, a5, 491
                  ori          t5, s5, -1952
                  sub          a4, s1, zero
                  lui          a1, 666877
                  add          s11, gp, gp
                  add          s5, s3, a0
                  srai         a4, t3, 6
                  srli         s1, a4, 13
                  sub          s10, t1, s6
                  sra          a6, t2, s2
                  sltiu        t6, t3, -191
                  and          s7, t3, a4
                  srli         t3, s6, 6
                  srli         s1, a2, 15
                  add          t3, s8, t5
                  slt          a4, t3, s3
                  srl          sp, a5, s8
                  sltu         s5, a2, t1
                  sub          a1, a5, t3
                  add          a6, a2, s7
                  slti         t4, a3, 359
                  sra          zero, t4, sp
                  xori         a4, t4, -1610
                  srai         t5, s8, 3
                  slt          a0, s0, t0
                  xor          t6, t6, a1
                  srli         ra, s1, 24
                  add          s11, a3, ra
                  lui          a4, 801776
                  lui          s10, 265079
                  nop
                  auipc        s4, 41293
                  xori         a1, s10, -459
                  auipc        a0, 466016
                  or           s4, t1, a6
                  sll          s4, a4, s11
                  ori          a4, t6, 1510
                  nop
                  srai         ra, tp, 6
                  xori         s9, s2, -1601
                  ori          s6, s11, -908
                  xor          s6, a4, a6
                  and          ra, s9, s2
                  slti         tp, ra, 558
                  addi         t6, s4, -404
                  slli         s5, tp, 3
                  nop
                  addi         a4, s10, 909
                  srai         a1, a7, 27
                  xor          sp, a0, s6
                  slt          s1, t4, a4
                  srai         a4, s2, 16
                  sltu         t0, s1, zero
                  srai         t0, s2, 12
                  sltu         s2, s1, s3
                  ori          t3, s1, -918
                  xori         a6, t2, 1532
                  srli         s0, a2, 21
                  slti         gp, ra, 1213
                  add          gp, a5, s9
                  xor          s6, t1, t5
                  sub          a3, s2, t1
                  srli         s11, gp, 31
                  xori         s11, t6, 349
                  slli         s2, t6, 3
                  srl          t5, s7, a6
                  sra          tp, t2, a5
                  addi         s5, s2, -1072
                  ori          t5, s8, 765
                  srl          s11, sp, zero
                  addi         a4, a7, -98
                  xori         s0, t2, 850
                  or           t1, a1, s4
                  srli         ra, s5, 26
                  sra          zero, t3, s4
                  lui          s0, 494078
                  sltiu        t6, s1, 1826
                  ori          s8, s10, -1201
                  srl          s11, s5, t1
                  sra          t1, s7, ra
                  add          a0, s4, s5
                  slt          a6, t0, s2
                  or           a7, s11, a5
                  srl          ra, s2, a3
                  sltu         t5, t5, zero
                  ori          s9, t1, -1991
                  sltiu        s8, s8, -553
                  slti         sp, a2, -1162
                  srl          tp, a3, a1
                  slt          s1, a4, a1
                  sltiu        a4, s1, 2045
                  auipc        a0, 72020
                  ori          s0, s5, -449
                  srai         t6, t4, 7
                  ori          s0, s2, -1381
                  srli         s4, s5, 18
                  sub          a3, t1, a6
                  xor          t4, t6, a2
                  srli         s8, a2, 31
                  slt          s7, a1, s1
                  sll          zero, s11, a3
                  sll          a1, sp, s7
                  srl          s0, a6, a7
                  andi         ra, tp, 7
                  srai         t1, t4, 21
                  sltu         a6, a6, a4
                  or           a3, zero, s2
                  or           s6, t0, s2
                  sltiu        gp, s3, -804
                  xor          ra, s7, t5
                  auipc        a6, 7693
                  srai         t6, t2, 25
                  xori         tp, t2, 1276
                  srli         t1, sp, 11
                  sltiu        ra, t0, -369
                  andi         a6, zero, 682
                  slt          t1, t1, s8
                  slli         s2, s8, 2
                  andi         s8, a0, -1907
                  slt          a6, a2, a3
                  andi         s1, s0, 2031
                  srai         t6, s11, 29
                  slt          a6, t3, t2
                  srli         s0, zero, 0
                  slt          t1, a3, s8
                  andi         s0, t4, -1196
                  auipc        s5, 1033583
                  lui          t5, 420726
                  srli         sp, t1, 15
                  or           ra, a1, s0
                  andi         s10, s0, 1018
                  sra          t3, tp, t0
                  srli         s9, t6, 23
                  sltiu        s2, s2, -1388
                  xor          t1, a2, s10
                  sll          t3, a5, a7
                  auipc        gp, 744033
                  slli         ra, s4, 13
                  or           s2, a1, ra
                  slti         t0, t2, -524
                  auipc        a4, 612666
                  slli         a4, a7, 11
                  slli         a4, s2, 5
                  and          tp, a1, t1
                  and          a4, s11, s7
                  slt          tp, t1, s1
                  sltiu        s4, a6, 36
                  slt          t3, ra, t6
                  slli         t4, s7, 10
                  auipc        a6, 288528
                  xori         a6, s2, -1755
                  slt          t6, s2, ra
                  slt          a3, a3, s5
                  addi         s7, zero, 73
                  xor          s7, s6, s8
                  sub          s0, s4, a4
                  sll          a1, t5, a4
                  sltiu        a4, tp, -99
                  and          s11, a6, t0
                  slli         s7, t0, 3
                  and          t6, t6, s11
                  nop
                  srli         a0, s1, 27
                  lui          s2, 200690
                  addi         s3, a5, -884
                  sra          s5, t5, t6
                  or           a7, t5, s8
                  sll          a7, a0, a5
                  nop
                  nop
                  xor          s3, t2, a3
                  sll          s9, a6, s8
                  sltiu        s0, zero, 605
                  ori          a6, tp, 1072
                  andi         a4, s2, 1014
                  addi         s0, ra, 1371
                  add          s11, a6, zero
                  andi         s5, a4, -822
                  sltiu        s9, s7, -428
                  sltu         zero, s2, a1
                  ori          tp, t3, 893
                  slli         sp, s7, 26
                  andi         t1, a0, -1789
                  sub          sp, t2, a3
                  ori          s3, a5, -1330
                  lui          a3, 452368
                  sltu         a1, sp, t3
                  sub          s0, a3, s9
                  xori         a0, s6, 1965
                  add          sp, t1, t0
                  or           s8, s6, ra
                  srai         s0, a3, 27
                  xori         a4, zero, -826
                  xor          t5, s10, t0
                  sltu         t0, t3, tp
                  sub          s9, s9, s10
                  auipc        s3, 885603
                  sltiu        s10, s10, 1888
                  srli         a4, tp, 3
                  add          sp, a0, s1
                  srl          a1, t1, zero
                  or           s11, s11, ra
                  sra          t3, t2, s9
                  auipc        t1, 565724
                  sltiu        a1, a5, 1784
                  add          t3, t2, a2
                  sltu         s8, s3, gp
                  srai         s6, sp, 3
                  xori         t1, a2, -129
                  and          zero, s3, s11
                  add          ra, s0, s4
                  srai         s4, s10, 0
                  lui          a0, 656139
                  sra          s0, s5, s10
                  or           sp, s10, a4
                  sltu         s8, gp, s6
                  xor          s8, t4, t2
                  sra          s6, t3, s3
                  ori          a4, a4, -659
                  slti         t0, s9, 109
                  srli         s2, a6, 16
                  srl          gp, a2, s9
                  addi         a6, a6, 1933
                  or           a7, sp, s6
                  auipc        t3, 753497
                  sll          s3, t1, a6
                  add          s4, t4, tp
                  andi         a1, a5, -14
                  auipc        s9, 52509
                  sltu         s7, a4, a3
                  srai         s7, tp, 0
                  xori         zero, t3, -599
                  sra          s7, t3, tp
                  and          s4, t3, t6
                  slt          a3, a3, a1
                  sltu         a6, t6, s1
                  sra          s2, sp, t2
                  or           t3, s2, a5
                  slt          s7, ra, s9
                  ori          s9, gp, -493
                  addi         t4, s7, 937
                  sra          sp, t0, t6
                  or           s9, t0, s1
                  lui          t3, 224683
                  xor          a3, s2, s6
                  or           sp, tp, a5
                  nop
                  andi         a1, a5, 1792
                  nop
                  nop
                  sub          t0, s2, ra
                  sub          a7, s11, a2
                  srl          a3, s7, s10
                  sll          a4, t5, gp
                  sltu         ra, tp, s6
                  addi         tp, a0, 318
                  sltiu        ra, ra, 872
                  srl          gp, s1, t0
                  sra          a6, sp, zero
                  lui          sp, 756268
                  sltiu        ra, a6, 1241
                  addi         s7, a5, -1437
                  srl          t0, s9, s5
                  and          s5, sp, a3
                  sltu         s7, s11, tp
                  andi         s10, sp, 209
                  add          sp, s0, zero
                  ori          zero, t2, -1230
                  andi         t5, s7, 1574
                  or           t6, t3, a5
                  slti         s4, s8, 822
                  ori          s1, a0, 1695
                  and          a4, t4, s11
                  srl          s6, tp, a0
                  xori         tp, s8, 164
                  sltiu        a1, ra, 1382
                  and          a7, t2, s5
                  sltu         tp, sp, a2
                  add          s7, a1, s5
                  auipc        t0, 314189
                  sltiu        t5, s3, 1149
                  sra          a4, s3, gp
                  sub          s8, a7, s7
                  srai         t4, a4, 19
                  sra          s5, a7, s7
                  addi         s0, t3, -1114
                  auipc        t6, 338756
                  ori          s10, a4, 2039
                  sltiu        t3, s0, 1292
                  xori         a0, s2, -1181
                  ori          s11, s8, -1283
                  srl          gp, s8, s10
                  or           a0, s5, t3
                  sub          gp, s3, t2
                  addi         a7, s2, 616
                  sll          s8, a5, s2
                  srl          gp, s8, t0
                  sll          t4, a7, s3
                  add          sp, s10, t2
                  slti         gp, a7, 1882
                  nop
                  sltiu        s5, s4, -249
                  auipc        s0, 499629
                  srai         s5, s10, 12
                  and          s8, s2, s6
                  lui          s8, 459402
                  sll          t3, s2, s6
                  and          a6, a4, zero
                  xori         a1, s3, 242
                  and          s4, sp, s1
                  ori          s8, s5, 1592
                  andi         s11, gp, -2041
                  slli         t6, ra, 2
                  sub          s11, a7, t6
                  ori          a1, s4, 1190
                  ori          zero, gp, -1961
                  srli         a6, gp, 14
                  srai         a6, s5, 5
                  add          a0, s9, s1
                  lui          t4, 538436
                  slli         s2, t3, 18
                  sra          s6, t6, a2
                  auipc        t3, 559835
                  or           s3, sp, s4
                  or           t4, t0, ra
                  lui          t0, 455958
                  xori         t6, t6, 1360
                  addi         t3, s2, -2029
                  srai         t1, s0, 30
                  sltu         gp, a2, s8
                  andi         s0, t6, -1711
                  srai         a1, a2, 13
                  or           s5, s9, a0
                  xori         s10, t4, 994
                  lui          t3, 549624
                  auipc        ra, 339155
                  srl          a4, a7, a7
                  nop
                  auipc        s11, 950012
                  lui          zero, 850611
                  auipc        tp, 496833
                  sltiu        zero, a0, -661
                  srl          s11, t4, ra
                  sltu         a1, s8, a1
                  xori         zero, s2, -457
                  srli         s8, t5, 30
                  slt          ra, ra, t0
                  xor          s4, a3, t0
                  auipc        a1, 611784
                  xori         t0, t0, -1728
                  sub          a1, t1, s5
                  nop
                  sltiu        s5, s10, -1786
                  andi         a6, s9, -1334
                  and          s0, a5, s4
                  or           t3, sp, s11
                  srli         s5, t6, 5
                  sub          t4, s9, a1
                  sub          t1, a4, s1
                  slt          tp, s10, a0
                  lui          t3, 387442
                  ori          t6, a1, -773
                  sltu         s2, s7, s4
                  srli         s3, s2, 27
                  slli         a3, a5, 19
                  sub          s8, zero, t0
                  sltiu        a7, t4, -1139
                  and          zero, ra, t6
                  and          a4, gp, zero
                  srai         t0, t1, 26
                  sub          t5, a0, t4
                  sra          a0, a6, s7
                  sub          t4, s1, t6
                  auipc        s9, 389479
                  sltu         s0, t6, t1
                  add          sp, a5, a4
                  xori         t4, s7, -1265
                  xor          s7, a0, s5
                  add          s0, s1, s4
                  sll          s1, s10, a6
                  sra          s2, a4, s3
                  srl          t1, a3, a2
                  sll          a1, s4, s9
                  xor          t1, s0, s11
                  sltiu        gp, a3, 1837
                  nop
                  slti         t3, a2, -1486
                  xori         s3, gp, 605
                  sltiu        t6, s9, 403
                  lui          a1, 100485
                  sub          a0, a0, s1
                  srli         a4, s10, 7
                  and          a3, t1, a2
                  sub          t4, t6, gp
                  sll          a6, sp, s7
                  srai         t0, s1, 16
                  or           sp, t0, s4
                  lui          t3, 736015
                  xori         a1, a6, -1058
                  sll          s0, s8, t5
                  lui          a3, 39497
                  slti         a3, t4, -143
                  sub          a7, gp, a5
                  sltu         s3, a3, t6
                  nop
                  slli         zero, ra, 4
                  nop
                  and          s10, s4, a4
                  xori         tp, ra, 146
                  slli         zero, s0, 11
                  sra          s10, s9, ra
                  or           t1, t0, s10
                  or           a6, s7, s5
                  nop
                  auipc        s5, 228077
                  auipc        tp, 427899
                  sub          zero, t6, zero
                  slt          ra, t5, s9
                  sltiu        a3, gp, 173
                  sltu         a1, a7, s2
                  xori         a6, t2, 1898
                  xori         t1, t3, -1249
                  slt          a0, tp, t0
                  andi         ra, s2, 1823
                  slli         t1, t6, 12
                  sltiu        t3, t1, -1287
                  sll          sp, a0, a1
                  or           a1, s2, a2
                  sltiu        t5, t4, -653
                  sltiu        t3, s6, 767
                  srl          t1, ra, a6
                  addi         s2, s5, -1864
                  lui          a1, 224437
                  andi         a7, t5, 502
                  slti         a4, a3, 1776
                  sra          t4, a3, ra
                  sra          s8, s11, t4
                  auipc        s10, 958406
                  auipc        s11, 768367
                  andi         t0, s1, 1986
                  sub          s1, s9, s5
                  addi         gp, s7, 968
                  xori         a6, s11, 1024
                  srl          a1, t3, a4
                  add          a0, s5, s2
                  sll          a6, t0, a0
                  sll          s1, t6, s1
                  lui          t0, 527650
                  sltu         s11, s0, gp
                  addi         s2, ra, -1653
                  sltu         s1, a0, a1
                  lui          s10, 410624
                  and          sp, a1, t2
                  and          s10, s3, t5
                  sltiu        t0, ra, 214
                  sub          s8, t4, t4
                  slti         s7, a0, 969
                  slt          a7, tp, a7
                  slti         sp, a0, 2040
                  nop
                  sll          gp, t3, t6
                  srai         s2, t1, 26
                  and          s2, t5, s0
                  xor          s0, t3, s8
                  auipc        t1, 799085
                  srli         a4, a1, 25
                  nop
                  addi         tp, s3, -1224
                  ori          a3, sp, -1448
                  auipc        s10, 1014100
                  ori          s3, a0, -357
                  auipc        s3, 428786
                  xori         a1, a3, 596
                  sll          a4, t6, tp
                  xori         ra, ra, -1667
                  sra          gp, a0, s6
                  ori          s9, a4, -1376
                  slti         t0, t1, 891
                  srai         s1, t5, 14
                  ori          s9, s8, -1981
                  andi         s3, s4, 464
                  xor          t0, s5, s1
                  ori          a6, s6, 1331
                  lui          a3, 641528
                  lui          s0, 152032
                  slli         t6, zero, 0
                  sll          a3, a1, a6
                  slti         a4, a7, 1618
                  ori          t4, t1, -1581
                  xori         s3, gp, 1445
                  srl          a7, t1, a4
                  slti         t3, ra, 585
                  slt          a0, s9, s8
                  slli         t3, a6, 6
                  and          t3, a7, a6
                  add          t4, a6, s8
                  sltiu        ra, s10, -1333
                  xor          s10, s10, s7
                  srli         s5, s4, 24
                  sll          s2, s6, s8
                  andi         t1, t6, -1661
                  xori         t0, a3, 306
                  lui          t1, 196721
                  slti         t3, a7, -1397
                  andi         s6, s0, -165
                  sub          t6, a7, a1
                  nop
                  xori         s2, a1, 1169
                  srl          sp, zero, s7
                  addi         s10, s2, -480
                  sltu         t0, s0, a4
                  nop
                  andi         a7, s7, 391
                  srli         tp, t3, 18
                  sltiu        s3, a0, -401
                  sra          s10, t4, a1
                  slt          s4, s8, s3
                  slt          s7, a5, t2
                  sub          s7, a7, s2
                  sltu         s5, a6, ra
                  slli         sp, a7, 2
                  andi         t0, tp, 196
                  lui          s1, 864701
                  sll          zero, tp, a3
                  srl          sp, s1, s0
                  slti         s11, t0, 478
                  and          a1, a6, s3
                  sra          a1, gp, sp
                  auipc        ra, 792474
                  and          a7, a1, s9
                  andi         ra, s6, 1078
                  and          t0, a6, a6
                  andi         s3, t2, -2018
                  addi         gp, t0, -1006
                  lui          s2, 706218
                  sltiu        s11, t1, -729
                  sltiu        t1, s11, -306
                  addi         gp, gp, 1610
                  xor          ra, t6, a2
                  slti         a7, t5, -1511
                  slti         gp, t2, -1014
                  slti         s8, s4, -1183
                  sltiu        s0, s2, 1022
                  xori         s7, t6, 185
                  srai         tp, s2, 6
                  srli         s6, s2, 1
                  addi         s11, s3, 1198
                  slti         s10, a0, -1342
                  sltiu        a3, sp, -1853
                  sltiu        ra, gp, 770
                  sra          ra, a0, a1
                  or           t1, gp, t6
                  srl          a7, s8, s7
                  slt          sp, a1, a3
                  sll          s11, s6, s9
                  slt          a6, s7, s0
                  or           t3, s0, ra
                  or           s7, a5, t5
                  slti         s7, a1, 1804
                  srli         t4, s0, 19
                  sltu         s5, s3, a7
                  xor          t0, sp, s3
                  sltiu        s7, t4, 1592
                  slli         s8, s1, 23
                  srai         s0, s9, 25
                  nop
                  sll          s3, sp, gp
                  srli         s3, s7, 18
                  sltiu        s5, t0, -692
                  or           a1, t6, a2
                  nop
                  or           gp, t0, gp
                  and          s2, a1, t5
                  sll          s3, sp, a3
                  srai         a1, s2, 24
                  nop
                  sltu         a6, s10, s11
                  nop
                  auipc        s7, 690631
                  addi         ra, a7, -627
                  addi         t0, t6, -1004
                  xor          s6, t6, s3
                  and          t1, tp, t3
                  or           s4, a2, tp
                  xor          a0, s7, a1
                  sltiu        t1, t3, -408
                  slt          t1, zero, s5
                  sub          sp, zero, a1
                  sltiu        s4, s9, -473
                  sll          s0, t3, s11
                  sll          t3, a7, s2
                  slt          a4, s8, a5
                  srli         a1, s7, 18
                  addi         t4, a0, -426
                  slt          s3, ra, s1
                  srai         a1, s2, 3
                  nop
                  sub          s3, ra, s11
                  lui          gp, 338400
                  xori         t1, a1, -70
                  ori          s0, s4, 754
                  sra          t6, a6, a2
                  lui          a4, 244768
                  slt          ra, sp, t4
                  srli         a4, a4, 1
                  xori         a1, s0, 1869
                  auipc        t3, 348952
                  lui          gp, 980706
                  sra          t1, t1, t6
                  and          s10, gp, a0
                  add          s2, a3, a3
                  nop
                  slt          a4, s8, t5
                  slt          s3, s10, a4
                  srli         ra, t3, 10
                  auipc        t5, 184487
                  nop
                  sltu         s7, t2, gp
                  and          tp, a2, zero
                  lui          s3, 36758
                  andi         t4, s10, 600
                  sub          s6, s6, a1
                  auipc        t4, 463657
                  lui          a3, 564287
                  or           s6, sp, s10
                  sltu         s2, a7, a0
                  xori         a0, t5, 1380
                  xor          gp, t1, gp
                  or           s3, s2, s2
                  auipc        s10, 736212
                  slt          t6, a7, s7
                  addi         s11, s1, -1823
                  xori         a3, s4, 1337
                  xori         t5, s2, 734
                  nop
                  srli         a1, s6, 16
                  lui          s6, 634850
                  li           tp, 0x3b054b2b #start riscv_int_numeric_corner_stream_0
                  li           a4, 0x80000000
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  li           s4, 0x80000000
                  li           t1, 0xffffffff
                  li           t4, 0xff8b6113
                  li           gp, 0xe4a17bbb
                  li           a7, 0x80000000
                  li           a1, 0xffffffff
                  auipc        t4, 779494
                  lui          s4, 835626
                  add          s0, t4, s0
                  add          s0, t4, s0
                  nop
                  lui          a1, 220125
                  sub          a1, gp, s4
                  nop
                  addi         gp, a7, -1742
                  lui          tp, 79987
                  addi         s0, t4, 1841
                  addi         t1, s0, 1890
                  add          a4, gp, t4
                  auipc        tp, 266300
                  sub          t4, s4, a1
                  lui          s10, 16362
                  sub          s10, t4, tp
                  nop
                  lui          a7, 635475 #end riscv_int_numeric_corner_stream_0
                  addi         s8, s6, 1022
                  ori          a0, a2, -1804
                  sll          t0, s11, s7
                  and          s2, sp, s9
                  add          tp, t1, tp
                  slt          s1, t1, a0
                  sub          t0, t3, a5
                  srli         t5, t2, 11
                  xor          s11, t1, t5
                  slli         tp, s5, 6
                  ori          sp, a3, 88
                  srli         a0, a0, 31
                  add          t5, a0, s11
                  sltu         a3, s3, a0
                  or           s5, t4, ra
                  slti         s8, s6, 682
                  add          t5, a5, t0
                  srl          s1, s7, t0
                  ori          s9, t3, -1019
                  slli         t1, s7, 24
                  slli         s0, s7, 20
                  srai         gp, a6, 15
                  slli         s8, s9, 21
                  xor          s6, t0, s2
                  and          s2, a7, s1
                  srli         t6, t5, 12
                  sll          t3, sp, t3
                  ori          s6, s5, -324
                  srai         s4, s0, 21
                  andi         a4, t3, -1946
                  or           zero, a5, a2
                  xor          s9, s10, s10
                  slt          t3, s7, a2
                  srai         a4, t0, 20
                  xori         a6, t4, 1728
                  auipc        s10, 30446
                  add          s5, a6, s2
                  ori          a6, t6, -798
                  slt          sp, t4, s11
                  ori          s5, a6, 487
                  or           t3, a6, gp
                  sra          s1, a5, sp
                  addi         s6, tp, 442
                  sll          s1, a1, s7
                  sub          a7, t0, s2
                  xor          s0, s11, a6
                  sll          s4, a3, gp
                  and          t6, ra, s11
                  xori         a7, t2, -1979
                  slt          a6, s5, t6
                  slti         s8, a4, 1634
                  sltu         a4, s11, t0
                  add          s9, gp, s4
                  auipc        t0, 214003
                  and          a4, gp, s7
                  xori         a7, a2, -1890
                  srai         gp, s11, 31
                  sub          s7, a3, s4
                  add          t3, s4, a6
                  slli         ra, s5, 17
                  srl          s11, a4, s7
                  sra          t5, zero, a3
                  ori          t4, s10, 1787
                  addi         zero, a0, -824
                  or           t0, t5, s7
                  addi         a1, s10, -1928
                  sll          s5, s1, t1
                  ori          a4, a5, 1223
                  sll          tp, t6, gp
                  slt          a3, zero, t6
                  srli         s10, s8, 2
                  nop
                  addi         s0, a3, 1441
                  srl          sp, t6, tp
                  srl          a1, s7, zero
                  slli         s4, s1, 17
                  slli         a1, ra, 10
                  lui          a1, 6244
                  slt          a1, s10, s3
                  xori         t0, t5, 1916
                  and          t6, zero, s1
                  sltu         tp, s11, s8
                  slt          a1, s9, t6
                  sub          s0, s4, a4
                  nop
                  ori          t3, s7, 1626
                  srli         s3, t6, 28
                  xori         a0, t0, -201
                  srl          s5, t2, s7
                  or           s0, a0, s2
                  sra          a7, s10, a0
                  sub          s9, t6, tp
                  slli         ra, s1, 18
                  sltiu        s2, s0, -1543
                  srl          zero, a5, t3
                  slt          t6, sp, s2
                  add          t3, gp, s1
                  auipc        s2, 315752
                  sltiu        t0, s7, -227
                  lui          a1, 351593
                  auipc        gp, 906996
                  xor          s6, t5, a5
                  nop
                  slt          a6, ra, t2
                  ori          tp, t3, 328
                  srai         zero, a2, 6
                  addi         t6, t6, 1685
                  auipc        s0, 764494
                  sltu         t6, s9, a6
                  srai         a3, s11, 17
                  auipc        s9, 766137
                  slt          t4, a2, s7
                  sltu         a0, t3, a7
                  srai         gp, a0, 8
                  sll          a6, s11, tp
                  addi         a6, ra, 2009
                  sltiu        t6, s7, 164
                  sltu         gp, sp, a6
                  xori         sp, t1, -990
                  srl          s6, t0, s3
                  nop
                  lui          t6, 367571
                  ori          s0, t3, 1673
                  srai         s4, s7, 8
                  andi         s2, s10, 841
                  srl          a1, zero, s7
                  srai         s1, t0, 1
                  xor          s5, s7, a1
                  xor          a4, t5, s7
                  srai         s4, a4, 14
                  sltiu        s5, a7, 1822
                  slti         s8, s7, -2016
                  sltu         s1, t0, t2
                  add          s8, s11, t0
                  add          s7, gp, sp
                  sll          t4, s2, a6
                  slt          t3, ra, s4
                  slli         ra, t1, 12
                  sltu         s2, a7, a5
                  srl          s8, s4, t2
                  srli         s11, ra, 6
                  nop
                  or           s6, a7, s9
                  sra          t3, a2, t4
                  sll          t1, t3, t4
                  auipc        a3, 369729
                  srai         s7, s7, 3
                  add          a6, t4, a1
                  nop
                  and          zero, s5, s4
                  addi         ra, t4, 183
                  srli         a0, s1, 28
                  srl          ra, a1, s5
                  sra          gp, a6, zero
                  sll          s11, s1, t3
                  xori         t4, s9, -1708
                  sltiu        a7, s0, 627
                  slti         t6, t0, 23
                  slt          tp, s2, a6
                  ori          s11, s3, -658
                  addi         a6, s4, -176
                  sll          t3, s1, a7
                  xori         s6, a1, -961
                  or           zero, tp, s10
                  xori         t6, s8, -1017
                  srai         a0, t0, 27
                  add          s0, a4, s4
                  andi         t4, s2, -845
                  nop
                  or           tp, a2, a7
                  andi         s5, a2, 1240
                  srai         s0, a2, 25
                  and          t4, s2, t5
                  slli         s3, a1, 19
                  add          s11, a7, ra
                  andi         a0, a3, -946
                  add          s2, zero, a4
                  srli         zero, gp, 26
                  nop
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           gp, 0x80000000
                  li           t5, 0x0
                  li           tp, 0xffffffff
                  li           a6, 0xffffffff
                  li           a0, 0x80000000
                  li           s9, 0x0
                  li           s8, 0x80000000
                  li           s2, 0xffffffff
                  li           a7, 0xee99384e
                  nop
                  sub          s2, a4, tp
                  add          tp, gp, s2
                  addi         gp, tp, -478
                  addi         tp, tp, -1434
                  sub          a4, a0, a7
                  lui          s9, 412982
                  nop
                  auipc        a4, 107711
                  addi         tp, tp, 193
                  addi         s8, s2, -316
                  add          a6, gp, s9
                  sub          gp, t5, s2
                  addi         tp, a7, 1580
                  nop
                  add          a0, gp, tp
                  add          s9, gp, a7
                  lui          tp, 191870
                  addi         gp, gp, -489 #end riscv_int_numeric_corner_stream_17
                  lui          s7, 931855
                  and          a7, s9, s1
                  sll          t6, a7, ra
                  sll          s11, a6, s0
                  srli         sp, s3, 4
                  slli         s0, t2, 26
                  andi         s8, t0, -921
                  srl          a0, s10, gp
                  xor          a4, s4, s1
                  xori         gp, s2, 920
                  xori         s6, a1, 198
                  sll          s8, tp, zero
                  add          s2, t6, a5
                  sub          t6, s1, t1
                  sll          sp, a0, s8
                  xori         s7, s11, -1146
                  sub          s9, a2, s6
                  and          a4, a1, s8
                  sra          t3, s1, sp
                  ori          s0, tp, 442
                  srli         s2, t3, 22
                  srl          s6, sp, s3
                  sltu         ra, t2, a5
                  slt          s0, t6, a6
                  srli         t6, s0, 21
                  ori          t1, s10, 25
                  srai         s7, t4, 11
                  xor          a1, s4, gp
                  slt          ra, s1, t2
                  srai         gp, zero, 22
                  sltiu        sp, s11, 1540
                  addi         s10, a3, -69
                  ori          t4, s1, 1117
                  addi         s5, a1, 1379
                  ori          sp, t3, 834
                  sltu         t4, gp, s8
                  srai         s8, tp, 14
                  lui          gp, 186014
                  sra          t5, a0, t3
                  slt          s0, t5, s1
                  sltu         s10, s1, s1
                  sra          t0, s2, a0
                  srai         a7, a3, 2
                  addi         a7, a7, 455
                  add          s10, a6, s3
                  slt          s8, a2, s2
                  sra          s7, a4, s6
                  andi         t3, gp, -1381
                  sra          zero, a6, t5
                  sltiu        s5, s6, -322
                  sltu         t5, t6, s7
                  nop
                  sra          a0, s6, ra
                  auipc        a0, 568062
                  srai         s6, tp, 0
                  srai         a6, a6, 6
                  auipc        a1, 191496
                  sltiu        s9, a2, 1536
                  lui          a0, 894792
                  slti         a7, s8, -1590
                  addi         t3, s7, 1690
                  nop
                  or           tp, t2, s7
                  sltiu        s3, s8, 1498
                  slt          s8, t0, s1
                  addi         tp, a4, -917
                  sra          a1, gp, t1
                  addi         tp, a6, -1446
                  addi         ra, s4, 1165
                  sltiu        s0, t5, -4
                  andi         s9, gp, -1609
                  srai         a6, s4, 10
                  sll          a4, t1, s2
                  add          t3, a4, a4
                  lui          a6, 12087
                  srli         t0, s5, 24
                  ori          s0, tp, -857
                  sltu         t5, t6, t0
                  xor          s10, s11, t4
                  slli         s2, t6, 17
                  addi         s10, s9, 396
                  lui          a7, 316091
                  slt          s7, t1, a1
                  lui          zero, 694240
                  srl          zero, s10, s2
                  slt          s3, s4, ra
                  auipc        s2, 72737
                  srli         a1, s7, 14
                  or           tp, a5, s11
                  xor          a6, a3, t5
                  srl          s7, a2, a3
                  srli         a6, a7, 19
                  srl          t5, sp, t2
                  srai         s11, a0, 6
                  sltiu        t3, gp, 97
                  nop
                  ori          t6, a0, 1812
                  sra          s11, s8, a2
                  and          s8, s9, gp
                  nop
                  srl          a0, t6, t0
                  sub          s5, t1, zero
                  srl          s3, t5, a0
                  addi         a0, a5, 1806
                  xori         sp, a7, 1820
                  sub          t1, s7, s2
                  slli         s10, s7, 22
                  or           a1, a7, s1
                  xor          s2, a6, a3
                  sltiu        t6, a7, -1074
                  sll          s7, t3, s4
                  slt          s10, s5, tp
                  slt          s8, t1, t0
                  sltiu        t4, ra, -56
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           s7, 0xffffffff
                  li           s9, 0xffffffff
                  li           s3, 0xffffffff
                  li           t6, 0x0
                  li           tp, 0x80000000
                  li           a3, 0x0
                  li           s0, 0x80000000
                  li           a1, 0x0
                  li           gp, 0xffffffff
                  lui          a1, 700656
                  auipc        t6, 195825
                  add          s0, tp, a3
                  nop
                  lui          t6, 291238
                  lui          s7, 534385
                  nop
                  nop
                  lui          gp, 802586
                  sub          s9, s7, gp
                  auipc        tp, 288070
                  lui          gp, 817665
                  sub          gp, tp, s7
                  add          gp, s3, a4
                  add          t6, s3, s3
                  lui          s3, 639137
                  nop
                  addi         a4, a4, 1672
                  sub          gp, a4, tp
                  add          a3, s9, t6
                  add          tp, a3, s7
                  addi         tp, gp, 907
                  auipc        s7, 358831
                  auipc        s7, 336821
                  sub          s9, s7, t6
                  lui          s9, 799117
                  nop
                  lui          s9, 131516 #end riscv_int_numeric_corner_stream_36
                  lui          t3, 645721
                  sub          s6, s2, a2
                  slli         t0, s9, 24
                  ori          t6, zero, 2023
                  xor          s2, t0, t2
                  xori         s7, t5, 1848
                  sub          t3, s2, s6
                  srli         t6, tp, 10
                  add          s11, s8, sp
                  andi         s1, a2, 301
                  sll          s0, s1, s7
                  sub          s4, t6, sp
                  sltiu        t6, s1, -743
                  sltu         t0, tp, a4
                  srli         s4, a1, 12
                  or           t6, a5, a2
                  addi         s0, s10, -276
                  slti         s9, tp, -1134
                  srli         ra, ra, 14
                  srai         t4, s5, 25
                  srai         s5, s4, 22
                  slli         s7, s11, 15
                  and          a7, s7, a5
                  nop
                  sll          s1, a6, s2
                  sltiu        t4, s10, -391
                  srli         s5, a2, 29
                  sltu         a7, gp, sp
                  xori         t6, s6, -1275
                  sltu         s10, tp, sp
                  srli         s0, tp, 10
                  sltiu        zero, ra, -1605
                  slti         a3, s2, 1164
                  srai         s2, s6, 22
                  srli         t6, s1, 29
                  nop
                  srli         t4, a2, 25
                  sltu         s4, t5, ra
                  sll          t1, s3, tp
                  sltiu        t0, t4, -451
                  andi         a1, a0, -199
                  slti         a0, a5, 636
                  ori          s10, s6, -632
                  lui          t0, 862841
                  sub          t3, t0, s11
                  sll          a1, t3, a0
                  ori          a6, tp, 407
                  slli         s8, a2, 22
                  slti         a4, a4, -1360
                  sub          s7, t4, s3
                  andi         zero, a3, -2003
                  ori          s9, zero, 1528
                  sra          s9, s1, a3
                  srai         s8, t1, 7
                  slt          a7, s5, a6
                  andi         tp, ra, 1420
                  xor          ra, s4, t2
                  sltu         s5, tp, t1
                  andi         s5, s8, 975
                  or           t1, s1, t5
                  sll          s5, ra, s8
                  slt          t0, t4, a7
                  and          s2, s6, t4
                  sltiu        gp, s6, -311
                  or           s9, a7, s3
                  andi         s3, a0, -107
                  sltiu        t1, s8, 849
                  xori         s0, t3, -1142
                  sltu         s2, s1, t1
                  sub          a3, a7, s4
                  sltiu        a0, t3, -1127
                  sltiu        t4, s6, 592
                  xor          s9, a6, s9
                  or           t1, t5, s7
                  and          a0, a1, zero
                  auipc        a4, 796720
                  sltiu        t5, t5, -1198
                  srl          zero, ra, s2
                  addi         a7, sp, 1540
                  nop
                  add          s11, a0, t1
                  slti         t4, s4, 1193
                  slti         tp, s2, 565
                  addi         s0, a4, -1003
                  nop
                  addi         t5, a5, 258
                  nop
                  or           t4, s2, a0
                  ori          s2, t4, -1359
                  addi         a3, t4, 1232
                  sra          s6, gp, s9
                  slti         s2, t5, -1506
                  add          sp, s2, zero
                  slti         s9, t6, -221
                  slt          s3, s6, s3
                  or           gp, s4, zero
                  sltu         a7, s7, t5
                  sra          s3, s3, t5
                  srai         t3, tp, 15
                  sll          s5, s0, s10
                  sltiu        s1, a0, 1795
                  slli         s7, s10, 1
                  slli         t3, s3, 1
                  ori          s4, t5, -1755
                  sra          s10, t2, a2
                  andi         s8, a4, -1216
                  addi         s2, s0, -1557
                  sub          t1, ra, t0
                  sub          s9, a7, ra
                  xori         t6, gp, 1246
                  ori          s6, a5, 616
                  sra          zero, t6, s5
                  srli         a1, gp, 30
                  slli         gp, sp, 30
                  xori         s3, ra, -602
                  addi         s11, a5, 2002
                  auipc        t6, 359768
                  addi         a6, a5, -963
                  add          t5, s3, s0
                  xori         s5, s8, 597
                  slt          s6, a3, s7
                  andi         gp, ra, 807
                  srl          s2, s4, t2
                  slt          t5, a0, t3
                  sra          t3, t0, a4
                  slt          t0, t5, a5
                  add          s10, a3, s5
                  sltiu        t4, s10, 1825
                  and          s2, a6, a0
                  sra          gp, a2, s9
                  ori          tp, s0, 1896
                  lui          s10, 584183
                  sltu         t1, s10, s3
                  sll          a1, s1, s11
                  nop
                  xori         t1, a4, -1225
                  srai         a7, a4, 13
                  or           s11, a6, s1
                  sltiu        t1, a3, 1957
                  and          s8, s2, t6
                  slli         s10, t4, 6
                  sltiu        s4, ra, 444
                  lui          s0, 437924
                  lui          s2, 70332
                  srli         s9, s1, 26
                  nop
                  srli         s3, t1, 30
                  srl          s10, t0, t0
                  sll          tp, s3, s6
                  addi         a3, s0, 227
                  srli         s3, a1, 2
                  and          s10, tp, ra
                  slti         ra, a4, -639
                  sll          t1, t3, a7
                  nop
                  slti         t6, s0, -2040
                  xor          t5, ra, zero
                  or           s8, a1, s6
                  slli         s2, a7, 1
                  sltiu        a0, a5, -1776
                  sll          t0, a3, s4
                  or           a3, a5, sp
                  addi         t0, s6, -817
                  xor          t0, s7, s5
                  lui          a6, 551444
                  auipc        s4, 490548
                  xor          gp, s3, t0
                  srli         s11, t2, 29
                  sra          s8, s6, s0
                  srai         t1, s0, 19
                  addi         s4, s11, 982
                  auipc        s2, 891896
                  sub          zero, s2, t6
                  sltu         s4, zero, s10
                  add          s1, s11, t1
                  auipc        s9, 367869
                  addi         s5, sp, 498
                  srl          s10, a2, s4
                  andi         t5, s9, -1384
                  srli         t4, a5, 14
                  srai         a1, zero, 19
                  auipc        t0, 36586
                  sll          a4, s11, s10
                  slt          s9, s10, s11
                  addi         a1, t2, -1133
                  auipc        a0, 211668
                  slt          t0, s10, s1
                  sub          zero, a5, a0
                  srl          t1, s1, s9
                  sltu         s10, s1, sp
                  addi         a6, t4, -866
                  and          a0, a2, s10
                  xori         ra, t4, -967
                  srai         ra, a1, 1
                  andi         gp, t5, 660
                  xori         a3, s11, -234
                  ori          sp, a3, 1990
                  ori          s7, t3, -1762
                  lui          t1, 644932
                  srl          s6, s6, a7
                  nop
                  sltu         tp, t5, zero
                  or           s8, t0, s11
                  add          s0, s6, a5
                  srl          a6, a4, t0
                  slt          t0, a5, a6
                  slt          s4, a7, t3
                  sra          t3, s3, t5
                  xori         s6, s9, 257
                  ori          gp, s2, -102
                  slt          a4, s10, s11
                  and          a6, s11, a5
                  sll          s2, s10, s4
                  sltu         a6, t5, a6
                  slt          s0, sp, t0
                  srl          gp, sp, t4
                  slti         t5, a1, 200
                  nop
                  slti         s11, t0, 49
                  sltiu        s1, s0, -1585
                  nop
                  ori          ra, t6, 481
                  sll          s1, s6, sp
                  slt          t6, sp, a3
                  sltu         s0, gp, s5
                  addi         s6, t1, 582
                  slti         s8, ra, -2048
                  slti         t0, a5, -1196
                  nop
                  and          s11, t4, s2
                  addi         t6, t1, -916
                  srli         s8, s9, 16
                  sltiu        sp, s11, 1397
                  add          a4, s3, s3
                  add          a1, ra, a5
                  lui          t3, 497448
                  or           t4, s9, a6
                  srai         t0, s11, 6
                  xori         s1, a6, 101
                  addi         t6, s4, 799
                  ori          s10, zero, 1309
                  andi         ra, s9, 579
                  xori         a6, s10, 184
                  and          t5, s5, s2
                  slli         tp, t5, 23
                  or           s8, t5, t0
                  slli         t0, s7, 31
                  slt          gp, tp, gp
                  auipc        sp, 314274
                  srli         t3, a7, 21
                  sra          t5, t6, t1
                  srl          t3, t1, s11
                  xori         a7, a7, -186
                  slti         s3, zero, 424
                  slti         a7, zero, -1391
                  srli         s7, a6, 15
                  slli         t3, s5, 9
                  slt          s2, t1, s8
                  addi         a1, s8, 1947
                  sltu         s7, s11, s2
                  add          gp, a3, gp
                  nop
                  ori          a4, t3, -1470
                  nop
                  addi         t5, s6, -1714
                  xori         t1, s1, 1462
                  nop
                  add          a3, sp, s11
                  srai         s2, a0, 3
                  srai         t5, a5, 11
                  srai         s4, s11, 8
                  add          s1, gp, a1
                  srai         t4, s6, 19
                  and          t0, ra, a3
                  add          s3, t4, t0
                  sll          t6, s4, t1
                  sra          s8, s8, a0
                  slti         s6, s8, 1148
                  addi         s7, s6, 1502
                  sll          a1, a7, s3
                  lui          s6, 494324
                  add          t0, t3, zero
                  sltu         gp, ra, a4
                  andi         a3, s6, -100
                  or           a3, a5, t4
                  srai         tp, a3, 9
                  sltiu        t4, gp, -766
                  lui          t0, 11611
                  or           s0, s6, t5
                  xor          s4, s5, zero
                  slli         t6, s6, 7
                  slli         a7, s8, 6
                  nop
                  srli         s10, t6, 6
                  sltu         s7, s7, a2
                  auipc        a1, 610050
                  srli         ra, s0, 9
                  nop
                  slt          t4, s8, s0
                  add          s8, t1, t4
                  sub          a6, s8, s6
                  andi         a4, t6, -1250
                  sra          a7, a4, a3
                  auipc        a0, 646052
                  sra          t6, s1, s2
                  sltiu        a4, a2, -1214
                  xori         s4, a3, 221
                  add          t3, s6, a1
                  sra          s2, t4, s5
                  sll          t6, tp, a6
                  nop
                  and          s6, t2, a6
                  sltu         a0, zero, t6
                  sltiu        s1, tp, 482
                  auipc        t5, 695861
                  andi         ra, s8, -1233
                  xori         a0, s4, 930
                  srli         s2, a2, 27
                  xor          t1, s9, t1
                  srli         s2, s3, 18
                  sltiu        s4, a2, 298
                  srli         a3, t2, 26
                  andi         a1, a4, 1001
                  or           t4, s7, t5
                  slti         s7, s9, -1472
                  sub          ra, t0, a6
                  slti         gp, a3, 214
                  srli         s11, s5, 30
                  slli         s7, a4, 22
                  addi         ra, t5, -1187
                  srli         s3, t1, 14
                  slt          t6, a2, zero
                  sra          t6, zero, s10
                  slti         t6, s11, 444
                  nop
                  nop
                  ori          s1, t2, 369
                  auipc        s0, 393406
                  sll          s6, s2, s2
                  sltu         s2, a5, t0
                  slli         t3, ra, 19
                  add          gp, s11, s9
                  auipc        ra, 456272
                  ori          tp, s7, 764
                  or           gp, a1, gp
                  and          t6, a6, a2
                  sub          t5, gp, s8
                  andi         s5, t3, 720
                  slli         s10, sp, 28
                  andi         a3, s1, -956
                  xori         s7, s8, -1385
                  srl          s0, s11, a2
                  nop
                  slt          s5, t5, t0
                  auipc        s6, 411303
                  addi         s8, t2, 1777
                  srai         a3, s7, 6
                  sub          s9, a3, t5
                  srai         t5, a1, 11
                  sra          a0, t1, a1
                  add          s11, t3, a6
                  sra          s1, ra, a2
                  srli         tp, t1, 23
                  andi         t4, s4, -1471
                  auipc        gp, 147636
                  slt          s1, a2, a0
                  sub          ra, t2, a2
                  or           gp, t1, s3
                  sub          s11, t0, s4
                  slli         a6, s1, 13
                  andi         a6, s9, -1827
                  ori          zero, a4, -1544
                  andi         t6, a5, -1300
                  slt          t6, s7, s3
                  srai         a4, s0, 8
                  lui          s7, 867568
                  srli         s7, a3, 26
                  add          s4, t0, tp
                  srai         a4, s3, 31
                  sra          s11, t4, t1
                  sra          t1, s8, s10
                  slt          t0, s0, s5
                  xor          t4, s3, s1
                  sltiu        s5, s9, -278
                  nop
                  andi         s10, s10, 1771
                  sra          gp, s4, s0
                  slt          a4, s4, s2
                  sltu         a4, s7, zero
                  andi         t0, ra, -525
                  slli         s5, a2, 31
                  srai         s11, a1, 6
                  sub          s5, s1, a6
                  srli         s3, t0, 5
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           s11, 0x0
                  li           s4, 0x61538228
                  li           t4, 0xc14a7938
                  li           t5, 0xddd49a7c
                  li           s5, 0xffffffff
                  li           s7, 0x0
                  li           a3, 0xffffffff
                  li           s8, 0x80000000
                  li           t0, 0x0
                  addi         t4, s7, 174
                  addi         t4, s11, 1206
                  auipc        s8, 421788
                  addi         s1, s4, -736
                  lui          s8, 437712
                  lui          s1, 146881
                  add          s4, t0, t4
                  lui          s5, 239808
                  auipc        s4, 598546
                  add          t5, s4, t5
                  sub          s8, s8, s1
                  add          s5, s7, a3
                  nop
                  sub          t0, s11, s11
                  addi         s4, t4, -1090
                  add          s11, t4, s8
                  addi         s1, s4, -676 #end riscv_int_numeric_corner_stream_25
                  sltiu        a4, s1, 1203
                  xori         sp, t0, -1294
                  slti         a7, t2, 1864
                  addi         a0, s4, -1352
                  nop
                  srli         t0, sp, 8
                  ori          t5, t2, 1849
                  auipc        s9, 985633
                  ori          t1, s10, 1963
                  and          s10, s0, sp
                  or           t3, zero, s7
                  sltiu        t1, s2, -1093
                  nop
                  lui          a0, 941322
                  auipc        sp, 888389
                  srli         ra, s1, 3
                  andi         tp, s2, -1620
                  srli         a3, a0, 3
                  and          a3, a7, a6
                  addi         a1, s0, -161
                  sra          s3, sp, t5
                  ori          a3, t5, -1538
                  sll          s1, s11, s11
                  srai         t4, t6, 11
                  sltiu        s0, s10, 780
                  sltiu        s2, a0, 876
                  or           s9, t5, a1
                  srl          s2, t2, a1
                  sra          a0, s9, a3
                  slt          a7, t6, a0
                  add          t5, s3, a4
                  sltu         s7, a7, s0
                  sltiu        a0, s9, 1100
                  andi         t5, sp, -291
                  srli         s9, s5, 2
                  slli         a3, t4, 0
                  srli         tp, t1, 11
                  slli         a4, s1, 24
                  addi         t5, a6, 484
                  srai         zero, s3, 22
                  or           a4, s0, s4
                  ori          s3, a4, -24
                  slt          s8, ra, a4
                  srai         tp, gp, 13
                  and          a3, t0, s4
                  slli         sp, s0, 22
                  srl          s9, s2, gp
                  srli         t1, a3, 23
                  sll          s1, a6, a6
                  sltu         t0, t4, s10
                  addi         t3, s11, -1659
                  nop
                  sra          s7, s1, a0
                  lui          t0, 803170
                  srl          s8, s11, ra
                  ori          zero, s6, -870
                  xor          tp, t2, a1
                  addi         sp, s0, 292
                  ori          zero, sp, -1552
                  srai         t5, a2, 12
                  slt          tp, zero, a2
                  xor          s3, a0, s8
                  nop
                  sltu         s2, t5, a6
                  auipc        a6, 1003593
                  slt          a1, t3, s10
                  or           a0, s10, s7
                  or           tp, t0, sp
                  lui          t6, 383688
                  auipc        a1, 80537
                  xori         sp, t6, 304
                  andi         s9, zero, 102
                  sltu         gp, t5, a4
                  and          zero, a5, a2
                  nop
                  sra          s9, a3, a0
                  sub          a6, s5, s4
                  andi         gp, a0, 309
                  srai         a0, a4, 1
                  andi         tp, a7, 681
                  sub          s9, s9, a2
                  slti         s6, a0, -1178
                  srai         t0, s4, 15
                  srl          sp, a6, a6
                  or           t1, t1, t0
                  sll          a4, t6, a2
                  srai         s4, s5, 1
                  slli         t4, ra, 22
                  nop
                  sll          a6, sp, a7
                  ori          a1, a1, -287
                  srai         t6, a5, 7
                  xori         s5, s4, -888
                  auipc        s0, 781305
                  sll          s7, a6, s8
                  srli         gp, a0, 23
                  slli         s9, zero, 22
                  xor          zero, s4, a6
                  sltiu        t6, t3, -421
                  and          t0, sp, s9
                  sub          a3, s4, a6
                  sra          s9, gp, t2
                  andi         s11, s11, -1782
                  slti         t0, a6, 448
                  auipc        s1, 976808
                  ori          a1, s4, -1654
                  xori         t0, t6, 1115
                  xori         t4, s10, -191
                  nop
                  auipc        s0, 975622
                  or           s5, a1, t1
                  srli         t1, t1, 17
                  slt          t5, a4, s2
                  xor          s8, tp, s10
                  add          zero, s11, s11
                  nop
                  ori          s3, s10, -1046
                  slti         s4, a6, 1051
                  slti         a0, sp, 1204
                  ori          s9, zero, 678
                  sra          s1, s5, s1
                  ori          s4, gp, 93
                  add          s1, t3, s11
                  ori          s7, s6, -790
                  srli         s6, zero, 28
                  ori          s9, s5, 1199
                  andi         a4, a1, 443
                  srl          s9, gp, zero
                  nop
                  lui          sp, 807217
                  or           a4, t0, gp
                  xori         tp, sp, -1352
                  andi         a3, zero, 897
                  sra          s9, a5, s11
                  xori         t5, s11, 91
                  sltiu        s4, a2, 1891
                  srai         s5, t0, 31
                  slli         a0, a4, 24
                  srli         a6, a7, 3
                  srai         s9, t5, 4
                  auipc        a6, 1029381
                  slt          t1, t4, t5
                  or           s11, a1, s4
                  nop
                  xor          a4, s10, s2
                  andi         t3, tp, 1579
                  sltu         a7, a5, a1
                  slti         t5, ra, -1782
                  andi         a1, a5, 646
                  lui          s4, 921799
                  and          s6, t3, sp
                  sll          s1, zero, a5
                  slt          tp, sp, gp
                  andi         a3, t4, 106
                  xor          s8, a6, s1
                  and          ra, sp, t2
                  slt          t4, t2, s7
                  srai         s10, t5, 8
                  nop
                  addi         s7, s4, -531
                  sltu         s2, t6, s11
                  srli         a6, s6, 24
                  slt          ra, a1, s2
                  and          t4, t5, s7
                  sltu         a3, zero, t2
                  lui          t0, 189373
                  slti         gp, s4, 515
                  ori          t6, s2, -142
                  or           t6, s2, s9
                  sub          a3, tp, t5
                  xor          a7, ra, t0
                  or           zero, t0, a0
                  slti         s4, a0, 1068
                  lui          zero, 63126
                  slti         tp, zero, 841
                  lui          a4, 682670
                  xori         t0, t6, 733
                  sltu         gp, s8, gp
                  xor          s9, s8, s8
                  xori         a6, sp, -1605
                  andi         s8, ra, 367
                  slti         s2, tp, -1878
                  srli         s8, t6, 3
                  sltu         s0, gp, t4
                  slti         ra, t3, 997
                  sltiu        ra, a6, -228
                  and          tp, t1, t5
                  ori          s8, a1, -1628
                  and          s5, a5, a2
                  auipc        zero, 845772
                  srl          zero, s6, s11
                  ori          t4, t1, 595
                  lui          t6, 197225
                  xori         t4, t1, -867
                  sra          t3, sp, t0
                  addi         a1, t5, -1619
                  lui          s4, 865119
                  ori          s7, a5, 909
                  sub          a3, s11, sp
                  lui          t1, 646005
                  or           s11, a1, a0
                  srai         t0, s2, 4
                  sltu         a4, t1, t1
                  slli         t4, t6, 23
                  srl          a3, a7, a5
                  srli         s4, s5, 2
                  xor          s4, s2, s9
                  nop
                  slt          a3, t4, a1
                  sltu         gp, s3, a7
                  slt          s1, a4, s10
                  ori          zero, s0, -702
                  sra          s4, sp, t2
                  sll          s4, a0, s10
                  sra          a1, t6, s8
                  and          a7, sp, s10
                  addi         s5, t2, 897
                  nop
                  and          a3, s4, gp
                  andi         gp, a6, 775
                  slli         s0, s8, 1
                  andi         a3, a0, 129
                  sra          t1, zero, t5
                  and          t3, s6, s10
                  sltu         t1, s6, s11
                  nop
                  sltu         ra, a6, s11
                  sub          t5, s3, s5
                  xori         s3, s6, -1345
                  slti         s9, gp, -1323
                  sll          a1, gp, ra
                  xor          s4, ra, a5
                  sltu         gp, a5, t5
                  or           s8, ra, s10
                  srl          t1, t4, a6
                  srai         s9, s6, 21
                  srai         t5, s9, 2
                  and          s3, t1, s8
                  sra          s0, s9, t6
                  add          t1, s0, s9
                  slt          t4, s0, s0
                  sll          a4, t6, ra
                  srl          s4, a1, zero
                  slt          s8, s5, t0
                  srai         t6, s3, 9
                  auipc        ra, 539924
                  addi         a6, a6, -1641
                  slt          a6, s8, t1
                  sra          s4, s4, s9
                  lui          s11, 232402
                  or           zero, t0, t0
                  addi         s5, t2, 1726
                  srai         zero, s3, 17
                  srl          s1, a4, a5
                  srl          t0, a2, s9
                  slti         s10, s7, -767
                  sra          t1, s2, s3
                  ori          s7, s6, -1265
                  nop
                  add          s8, a1, s9
                  xori         a1, gp, 71
                  slt          s10, sp, s8
                  sltu         a7, t1, s4
                  slli         gp, s0, 2
                  auipc        s3, 355645
                  andi         s9, a2, 1548
                  nop
                  srli         s6, s4, 12
                  andi         s0, s9, -764
                  slti         s1, t5, 1507
                  sra          s5, a5, s3
                  srl          s10, a7, t4
                  addi         a7, t3, -1636
                  slli         t1, zero, 14
                  add          t4, t4, t3
                  or           s7, s0, t2
                  andi         a7, gp, 380
                  and          a7, s9, ra
                  sra          a4, s0, s11
                  slli         t6, s2, 10
                  srai         a4, a7, 10
                  andi         s10, a1, -735
                  addi         a3, s3, -1627
                  sltiu        s4, s7, -278
                  sra          t5, a7, t4
                  srai         s6, s1, 23
                  xor          t0, s8, t2
                  andi         s7, t1, -390
                  slt          s6, t2, s11
                  and          a0, s7, s3
                  andi         a4, a5, 1282
                  slti         s5, t1, -189
                  slli         s11, a1, 27
                  sra          s3, s4, t1
                  ori          s6, t2, 137
                  slli         s8, s6, 4
                  slt          s1, s6, s2
                  and          a7, t0, t6
                  and          zero, a7, ra
                  ori          s2, a4, -1802
                  add          t3, s4, t4
                  addi         ra, s2, 17
                  ori          ra, a0, 91
                  slt          t1, s9, a0
                  xor          a3, t4, zero
                  sra          s9, t6, s1
                  xor          gp, s4, a6
                  xori         t4, a1, 569
                  add          s0, s1, t2
                  srl          s8, t5, sp
                  sltu         t1, a1, t4
                  lui          s5, 565296
                  slt          t3, s7, zero
                  ori          s1, t6, 93
                  sra          gp, a1, t6
                  sltu         s2, t0, zero
                  slti         a0, t1, -1435
                  sra          s9, s5, s11
                  addi         a0, s9, -970
                  srl          s1, t6, a4
                  andi         s6, t1, -1342
                  slt          s0, a6, s7
                  sub          a3, zero, t4
                  ori          a0, s1, 1305
                  ori          s11, a6, -1888
                  add          t5, ra, s0
                  auipc        ra, 428363
                  sltiu        t1, a4, 1799
                  slli         tp, zero, 11
                  and          t5, a1, s4
                  or           t0, s7, s8
                  sra          tp, a7, zero
                  lui          a4, 143755
                  ori          t5, a2, 225
                  lui          s1, 672946
                  slti         t5, gp, 1575
                  srli         t5, s11, 13
                  xor          tp, s11, a3
                  xori         a6, s7, 1139
                  sll          ra, s9, sp
                  xor          a6, a6, s10
                  or           a1, t5, ra
                  addi         ra, a4, 628
                  sub          s6, s2, t1
                  sltiu        a6, s5, -145
                  or           a4, s2, a0
                  andi         t6, s11, 1790
                  sra          s1, t6, a6
                  and          gp, s7, t1
                  addi         t0, a3, 1931
                  slli         a4, t3, 10
                  lui          gp, 635558
                  ori          s8, t2, 1
                  srl          s1, a6, s2
                  lui          sp, 55833
                  and          s7, s1, a6
                  sltiu        s6, s2, 23
                  xori         s7, s3, -1850
                  sltu         gp, a2, a0
                  lui          t0, 2524
                  srli         a1, s2, 28
                  and          t6, s6, s6
                  slt          s10, gp, sp
                  srai         s1, t1, 7
                  andi         s5, a2, -1330
                  add          tp, gp, a4
                  sra          s3, s11, gp
                  sltu         t6, s0, s11
                  lui          s2, 929043
                  srl          s1, t0, s5
                  or           s8, t2, tp
                  addi         a1, a6, 1661
                  and          tp, ra, a4
                  slt          s4, t2, zero
                  or           s0, ra, t2
                  and          t0, t1, ra
                  srl          zero, s2, a5
                  addi         t4, t3, -1580
                  and          t0, tp, gp
                  srli         a1, a7, 13
                  sub          a3, tp, s10
                  sll          t6, s9, s11
                  auipc        t0, 176626
                  sltiu        s5, a1, -1863
                  andi         s3, a6, 1460
                  or           t1, zero, a6
                  and          gp, a2, a5
                  xor          s5, a4, s5
                  lui          t4, 258506
                  srai         a4, s4, 29
                  and          t6, sp, a3
                  sub          a7, a5, s2
                  or           tp, s9, s10
                  xori         a1, s4, -1781
                  nop
                  sra          ra, zero, t4
                  lui          t4, 248629
                  andi         s2, a5, 601
                  xori         s10, t1, -1157
                  sub          sp, t1, t6
                  slti         s3, s3, 1708
                  or           zero, sp, t5
                  lui          a3, 113994
                  add          s0, gp, t2
                  sltiu        t0, sp, -1858
                  ori          a3, a3, 2008
                  sltu         s5, t5, s2
                  and          tp, zero, s7
                  auipc        s1, 259418
                  sra          s9, a5, a0
                  ori          s10, a5, 398
                  sub          t1, a7, a7
                  xori         a3, t0, -76
                  srai         tp, a1, 21
                  srai         tp, s1, 20
                  xor          s4, s7, a2
                  add          t0, a6, a7
                  slt          tp, s9, s0
                  slt          s2, tp, s11
                  sltiu        s1, a6, -1607
                  auipc        t4, 53648
                  or           s7, t0, s9
                  xor          s10, a1, t5
                  slli         s7, ra, 12
                  and          t6, s8, gp
                  nop
                  xor          s2, s1, s1
                  srl          s6, s2, ra
                  addi         t3, a6, -1124
                  slli         a1, s4, 13
                  lui          tp, 866712
                  sub          s0, sp, a3
                  slti         s4, t5, -1330
                  sub          s6, tp, a0
                  xori         s10, tp, 18
                  and          t6, a0, gp
                  sll          a7, s6, t4
                  sltiu        t3, s2, -464
                  add          a7, s7, s2
                  or           s6, s6, a6
                  sltu         a0, t2, t2
                  sltiu        a1, a2, -1090
                  slti         s4, tp, -589
                  sra          sp, s4, sp
                  lui          a0, 46926
                  xori         t6, a7, 234
                  lui          a6, 887210
                  andi         s6, a7, -849
                  srai         t4, gp, 10
                  srai         s10, t1, 26
                  slt          s5, t1, s3
                  sll          s4, a2, a3
                  lui          t1, 550448
                  xor          s7, s1, a6
                  sll          a4, ra, sp
                  srli         s5, s8, 20
                  sll          sp, a3, a0
                  andi         t4, a4, 1212
                  auipc        s10, 594318
                  sub          s10, a6, ra
                  ori          a1, s5, 647
                  sltu         s5, t0, a5
                  ori          t5, a7, -1404
                  sltu         sp, s4, t2
                  srai         a6, s8, 31
                  xori         tp, a7, -1117
                  srl          s1, s4, zero
                  srli         t4, s7, 18
                  xori         s7, s2, -120
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           t6, 0x75221b9b
                  li           gp, 0xffffffff
                  li           t0, 0x80000000
                  li           a0, 0x80000000
                  li           s2, 0x0
                  li           s9, 0x0
                  li           sp, 0x0
                  li           t4, 0x0
                  li           t1, 0x2f39d1ce
                  lui          t1, 291745
                  auipc        s2, 817874
                  lui          s2, 977115
                  add          s9, t6, t1
                  addi         t4, s2, 284
                  nop
                  auipc        t1, 1036326
                  sub          s2, gp, t6
                  nop
                  auipc        t6, 415528
                  nop
                  nop
                  sub          a0, t1, a0
                  add          s9, t0, a0
                  nop
                  addi         s2, s8, -1598
                  lui          sp, 366298
                  addi         t0, s8, -1940
                  addi         t1, t1, -808
                  lui          t6, 135967
                  addi         t1, t6, 1098 #end riscv_int_numeric_corner_stream_14
                  add          s11, a0, a1
                  srai         s2, a2, 18
                  srl          s3, s10, a3
                  sltiu        s0, s0, 1702
                  lui          s10, 989111
                  slli         s11, tp, 24
                  sltiu        a0, s3, -338
                  sra          s10, a1, a3
                  xor          gp, s5, a6
                  xor          s6, tp, a2
                  xori         a4, s10, -302
                  ori          t3, s10, 1019
                  slti         t1, s4, -1369
                  add          s7, s5, t6
                  nop
                  add          t5, t4, s10
                  addi         s0, t0, 521
                  srai         t3, t5, 18
                  auipc        s2, 588818
                  srli         a7, a4, 2
                  ori          s10, t2, 322
                  srli         ra, a1, 9
                  srl          a1, s3, s10
                  sltu         a6, ra, a4
                  slt          s0, s8, s1
                  xori         a6, t5, 1182
                  srli         a0, a6, 2
                  srl          a6, s2, ra
                  add          s6, t6, a3
                  sll          s5, s4, s1
                  sll          a6, s7, s3
                  srl          s2, s9, s11
                  srai         s8, a5, 13
                  add          s9, t1, a5
                  auipc        gp, 622474
                  srli         t4, a6, 6
                  sll          s5, a0, s5
                  sub          sp, s1, s5
                  xor          a3, t2, tp
                  add          t6, s1, zero
                  andi         a3, s1, 353
                  lui          s6, 860237
                  sra          a1, s9, a3
                  xori         s8, a1, -1444
                  or           a6, t4, tp
                  sll          t1, s11, t6
                  srl          s11, s6, t1
                  sltu         gp, t4, a7
                  xor          s0, sp, t5
                  srai         gp, t0, 21
                  slti         a6, a1, -30
                  or           s6, tp, a7
                  xori         t4, a3, -2037
                  sub          gp, s0, s0
                  srl          a7, a7, gp
                  slli         a0, t0, 21
                  srl          a4, a0, a0
                  nop
                  slti         s11, a1, -1349
                  sra          t1, a4, gp
                  add          gp, s5, t6
                  xor          tp, a6, s6
                  srl          zero, a4, gp
                  slti         zero, s10, -1318
                  srl          zero, t5, a6
                  nop
                  or           gp, a4, s10
                  ori          s11, s8, 797
                  and          s1, a3, s0
                  auipc        s9, 519463
                  andi         t6, s10, 533
                  sra          a3, tp, a5
                  addi         a1, a0, -381
                  srai         a1, gp, 30
                  add          t1, gp, t5
                  sll          tp, a5, zero
                  ori          sp, t6, -493
                  auipc        t0, 439123
                  or           a1, a0, t2
                  sltu         t0, s2, s10
                  slti         a4, t3, -189
                  sll          sp, a0, s2
                  sra          a0, a1, t1
                  or           a6, t4, t3
                  add          s9, zero, s5
                  or           a7, a3, t1
                  srai         zero, t4, 2
                  xori         s10, s4, -1267
                  slti         a4, t3, 169
                  xor          t3, a7, zero
                  sra          s7, s7, s10
                  srai         t0, s2, 16
                  sll          s4, t4, t3
                  auipc        t6, 478435
                  nop
                  addi         ra, s9, 336
                  addi         sp, a7, 540
                  sltu         ra, a5, s11
                  sub          s2, a1, s11
                  slt          t3, s8, s10
                  slli         a7, s10, 8
                  nop
                  sub          t0, a4, s1
                  xori         s3, s9, 414
                  xori         s10, s6, -1479
                  sll          s1, s7, sp
                  slt          s5, s0, a0
                  auipc        zero, 438289
                  srl          t1, a4, s0
                  addi         s10, a1, 1582
                  slti         zero, s2, 1559
                  add          s7, t4, a5
                  addi         t0, t5, -1545
                  slt          s2, gp, s4
                  xori         s5, gp, -1136
                  andi         s3, a0, -1352
                  xori         s11, t5, 1448
                  slli         zero, ra, 27
                  lui          s0, 899888
                  sltu         s0, s2, s2
                  sltiu        t5, s3, 1843
                  addi         sp, a5, 839
                  addi         s11, a7, -1415
                  sra          s7, a0, s10
                  sra          s2, zero, zero
                  slt          a1, t4, a2
                  xor          a7, gp, s8
                  nop
                  ori          t0, t1, 1279
                  slti         a3, t3, 1140
                  sll          a1, tp, t0
                  add          t1, t5, s0
                  add          a0, t4, a6
                  and          a6, a6, a1
                  ori          s9, a6, -1729
                  xor          sp, s10, t2
                  slt          a1, gp, t2
                  xori         s6, a1, 293
                  nop
                  xor          s0, a6, gp
                  xori         s6, s2, 398
                  slli         a3, s9, 26
                  sub          s5, s3, s8
                  addi         a4, ra, 727
                  sra          ra, gp, s2
                  ori          s1, s3, 949
                  add          tp, a4, a3
                  addi         s6, s1, 667
                  srli         a4, a1, 9
                  srai         a6, sp, 7
                  and          sp, s11, s5
                  sltu         t5, t6, a4
                  srli         a7, s7, 13
                  sltu         gp, t3, a0
                  sll          t3, t3, a3
                  sltiu        t0, sp, 1954
                  sub          s6, a2, a6
                  ori          t1, s0, -166
                  ori          s4, s7, 631
                  slt          s0, tp, s7
                  sra          t3, a7, a1
                  slt          s5, t4, t3
                  and          a4, s9, t0
                  and          s0, s0, s7
                  srli         s11, t6, 20
                  ori          s7, t4, -1027
                  lui          s5, 787123
                  lui          t3, 750775
                  sltu         a7, s2, t0
                  add          s0, a7, s10
                  sltiu        t6, t3, 292
                  xori         a0, t5, 1274
                  or           sp, sp, a1
                  lui          s3, 152312
                  or           s7, a1, a7
                  ori          t1, s9, -22
                  xor          t3, a5, t1
                  slti         zero, t6, -1536
                  slti         t1, tp, 259
                  slti         t1, t0, 1651
                  xori         a3, a2, -1292
                  or           s4, a1, s1
                  sub          t1, t1, s3
                  xor          s2, s9, s10
                  sll          ra, t2, s6
                  slti         s10, a3, 1187
                  andi         s3, s10, 714
                  sltiu        t0, a5, 656
                  or           s1, s2, t1
                  and          a3, tp, t1
                  lui          gp, 1025958
                  sll          s11, s4, gp
                  srli         s0, t1, 0
                  addi         a1, s11, -474
                  sltu         sp, t4, sp
                  sltiu        a3, s1, -994
                  ori          s10, s5, 884
                  auipc        s11, 141805
                  add          s9, s7, s4
                  xori         t4, t4, 167
                  srai         s3, s3, 26
                  slt          s10, t0, t2
                  and          t0, s3, zero
                  and          s5, s5, gp
                  sltiu        s6, s10, 492
                  xori         s5, tp, 1711
                  srl          s7, a1, s3
                  slt          t1, a4, a4
                  sub          s4, a6, a4
                  sltu         a4, s6, s1
                  auipc        s2, 873337
                  sra          a3, s3, a1
                  addi         s10, s6, -1371
                  auipc        s3, 974815
                  slti         a7, t5, 1752
                  and          sp, a0, s7
                  xor          tp, s9, t0
                  sub          s10, s1, gp
                  or           s11, gp, sp
                  or           t1, a7, a2
                  sltu         tp, t1, a0
                  sra          t5, s3, t3
                  slli         s11, sp, 19
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s3, 0x80000000
                  li           s9, 0xab5329ae
                  li           t6, 0x80000000
                  li           a6, 0xffffffff
                  li           s2, 0x80000000
                  li           t4, 0x572a74e0
                  li           a7, 0x80000000
                  li           s5, 0x80000000
                  li           s11, 0x80000000
                  sub          t4, t6, s9
                  lui          a6, 218380
                  nop
                  add          s2, s9, s11
                  addi         a6, s3, -1582
                  auipc        s9, 1044216
                  addi         s11, a6, 2003
                  auipc        t4, 658706
                  addi         t6, t5, 1928
                  lui          t5, 109830
                  addi         s2, a7, -1991
                  auipc        s3, 519187
                  sub          t6, a7, s9
                  lui          t6, 895115
                  nop
                  addi         s2, t5, -645 #end riscv_int_numeric_corner_stream_2
                  or           s11, a3, sp
                  srai         t5, ra, 18
                  slli         a1, a5, 12
                  xor          tp, a2, s4
                  andi         t4, s10, -2040
                  sub          t4, sp, a5
                  srai         t1, s0, 2
                  andi         t4, a5, -705
                  slt          s7, s1, t6
                  sub          s11, t0, a1
                  lui          s1, 331110
                  slt          s4, t4, zero
                  slli         sp, s7, 3
                  auipc        s2, 282639
                  addi         a6, t6, -1672
                  sub          t1, t2, ra
                  srli         s6, t6, 14
                  sub          s6, t6, a2
                  xor          t0, gp, s4
                  sltu         s2, s0, zero
                  sltu         a0, s5, s9
                  auipc        s4, 64774
                  srl          a4, s0, s1
                  sll          s4, s4, s2
                  srl          t1, gp, t1
                  srli         sp, zero, 22
                  add          a3, sp, s6
                  add          a4, t3, t1
                  andi         s7, s11, 892
                  lui          s3, 1020106
                  slt          a1, a5, a5
                  auipc        zero, 852172
                  srai         s0, zero, 1
                  and          s0, s10, t5
                  srl          a4, ra, a7
                  sub          gp, t5, s5
                  addi         ra, s8, 350
                  nop
                  and          t4, ra, t4
                  add          s7, s9, s3
                  add          gp, a0, a7
                  sra          a4, sp, s3
                  slti         s6, s1, 1242
                  sltu         a0, s5, t6
                  xori         s9, t6, 577
                  sub          a3, s6, t0
                  or           s3, a5, a1
                  addi         a7, t5, -1050
                  xor          zero, ra, a3
                  sll          a6, s6, s5
                  add          s6, a0, a6
                  sra          t1, s3, sp
                  sub          s1, t4, a7
                  sltu         a0, t4, a7
                  auipc        t1, 207175
                  nop
                  addi         t6, s3, -1060
                  nop
                  sll          t5, t5, t5
                  andi         t1, t5, -92
                  nop
                  slt          a1, s0, t4
                  sra          s5, s8, ra
                  slli         s4, a3, 15
                  xori         a6, t3, 1222
                  slt          s10, a7, gp
                  xor          s10, s6, a6
                  lui          ra, 31958
                  lui          t5, 939050
                  addi         s11, a7, 607
                  srai         a6, t3, 25
                  sltiu        s0, s3, -1708
                  sub          a6, t2, t3
                  auipc        gp, 147242
                  sltiu        s10, gp, -941
                  andi         s6, t2, -436
                  addi         sp, s4, -325
                  and          s7, a4, a7
                  slti         s10, s7, -1552
                  sll          t1, t5, s10
                  lui          gp, 78704
                  sll          s6, s4, t1
                  srai         s4, s0, 0
                  srai         a7, s5, 19
                  sub          s5, sp, s2
                  addi         s5, s2, 1451
                  xor          sp, s10, tp
                  xori         t4, a0, -1341
                  sll          s7, a3, s2
                  sra          a3, s10, s8
                  lui          a3, 93615
                  lui          zero, 614126
                  sltiu        s9, s11, 1273
                  srl          zero, t1, t6
                  xor          s7, t2, tp
                  slli         s7, s0, 2
                  addi         s9, a1, 404
                  xor          t5, s7, s0
                  srli         s5, ra, 4
                  andi         s1, s6, 1386
                  slli         zero, zero, 29
                  srai         a1, a4, 16
                  ori          s5, t5, 1450
                  slti         ra, a3, 1591
                  and          zero, t2, t5
                  nop
                  or           s0, a4, s6
                  andi         s1, s5, 648
                  slli         s5, gp, 14
                  slt          t0, s2, t2
                  srl          t4, a4, a1
                  srli         a1, t3, 24
                  addi         a7, t0, 74
                  ori          s0, s6, 260
                  srai         s0, s3, 1
                  srli         s5, tp, 6
                  and          s2, sp, s6
                  sra          s9, ra, t4
                  slti         zero, t1, 1612
                  sltiu        sp, ra, 776
                  slti         s11, s11, 480
                  srl          a6, t0, zero
                  sub          s11, s6, t6
                  auipc        t1, 1005462
                  slt          t4, s0, t1
                  sub          t5, s5, s3
                  auipc        s10, 877498
                  ori          a0, s9, 121
                  and          t5, a1, t5
                  xori         sp, a5, 1620
                  srl          s4, s8, a5
                  nop
                  srl          s3, s10, s2
                  nop
                  nop
                  slt          gp, t4, s8
                  xor          s10, s0, ra
                  nop
                  slt          s7, s0, ra
                  nop
                  sltiu        a7, a2, 1225
                  xori         s5, s5, 680
                  ori          t3, t1, -1893
                  and          s2, s6, a1
                  auipc        s2, 665153
                  sltu         t1, t4, s2
                  add          t3, zero, zero
                  slli         s11, a5, 29
                  sub          s7, gp, s5
                  sltiu        s0, s3, -1707
                  lui          t5, 95803
                  andi         s9, s3, -39
                  srli         a1, t1, 30
                  sra          a6, a1, t5
                  add          s5, s10, s1
                  xori         s1, a2, -1915
                  xori         s2, s1, 1293
                  auipc        s7, 367284
                  lui          t6, 413292
                  sra          t3, a4, s5
                  slti         tp, s2, 1948
                  sub          tp, tp, a4
                  ori          s0, t5, 846
                  lui          zero, 748579
                  xor          a4, a7, s7
                  sltu         t1, sp, tp
                  sltu         s6, t6, a1
                  sub          t3, s1, a0
                  and          s8, s2, a3
                  sltiu        a0, t1, 1304
                  slti         zero, s3, 446
                  slt          ra, s3, gp
                  sltiu        s2, s9, 858
                  ori          tp, s1, -1881
                  srl          s11, a2, a1
                  srai         zero, a0, 22
                  sub          tp, s5, s7
                  slli         s2, a7, 28
                  andi         s1, s3, -226
                  sub          t3, gp, s7
                  and          gp, s11, s11
                  sra          sp, s9, s9
                  srl          s8, a6, t2
                  slti         a3, s1, 1563
                  slli         t1, t0, 29
                  srli         a1, s8, 24
                  sltiu        gp, s4, -1373
                  slt          a6, t0, s0
                  auipc        s1, 547605
                  addi         s1, gp, -1799
                  srai         s7, s5, 5
                  ori          a6, s6, -1376
                  ori          a7, a7, -1138
                  xori         t1, s5, 169
                  auipc        s10, 439135
                  sltu         s5, t6, t6
                  xori         s7, a6, 1138
                  sub          t3, t4, s10
                  sltiu        s4, s6, 1789
                  nop
                  srl          a7, t5, s4
                  sltiu        s11, t0, -1832
                  sltu         t6, s10, a0
                  xori         a3, a7, -987
                  xor          s7, a6, t2
                  slli         a7, a1, 30
                  addi         t1, s11, 511
                  srai         t6, ra, 18
                  srai         s6, t3, 6
                  sltu         a1, t3, s2
                  slti         s3, t2, -1668
                  auipc        t4, 339493
                  slli         s3, s10, 7
                  sltiu        gp, sp, 267
                  or           t1, a0, t6
                  srai         a4, s3, 24
                  srl          t3, t6, t2
                  srl          a4, t6, s3
                  ori          t6, t4, 1815
                  lui          t1, 539046
                  add          gp, s10, t0
                  add          t6, a4, s3
                  xori         s0, s9, 2004
                  andi         s3, t1, -203
                  srli         s7, s9, 9
                  nop
                  srli         a4, s6, 25
                  slt          a7, a5, zero
                  slli         s8, s10, 8
                  xori         t3, s10, -384
                  slt          a3, s10, s1
                  slt          a0, zero, s0
                  auipc        a1, 188334
                  sltiu        a3, s7, 56
                  slt          s5, s5, ra
                  slt          s9, s11, a7
                  ori          ra, a4, 1378
                  or           t6, a6, t5
                  sltiu        s0, sp, 250
                  srai         s5, s8, 27
                  lui          t1, 567321
                  lui          a4, 993831
                  ori          s6, a7, -137
                  sltu         zero, gp, t1
                  or           s11, gp, a2
                  sltiu        t1, t3, -1691
                  andi         a6, s10, 1249
                  sltiu        zero, t2, -1372
                  xori         s11, s8, 1714
                  sll          s9, s10, s5
                  add          a1, a4, t4
                  add          s9, s3, a0
                  slti         s10, tp, 1833
                  lui          a7, 276628
                  and          gp, s2, s8
                  xori         t1, s4, 226
                  srli         ra, s6, 9
                  sra          s7, t6, a3
                  slt          a0, a2, a4
                  srai         s2, a6, 9
                  add          t3, s6, a6
                  nop
                  ori          t1, ra, 1857
                  sra          s4, s6, ra
                  srl          tp, s8, s8
                  slt          a4, s7, a6
                  auipc        s7, 1021022
                  andi         s9, s10, -1369
                  ori          gp, a5, -1015
                  srli         a3, sp, 0
                  andi         zero, s3, -281
                  ori          a6, a2, -495
                  srl          s3, t0, s8
                  slti         s0, s8, -1664
                  sll          s8, zero, a1
                  auipc        s4, 72982
                  xor          a4, s3, s4
                  slli         s8, s3, 17
                  ori          a4, s4, 96
                  auipc        s2, 599742
                  sub          t5, s6, a6
                  sll          a4, gp, a5
                  sra          s7, t0, tp
                  srl          t0, s8, t4
                  srai         s6, a3, 12
                  slt          s5, t1, a1
                  sll          a1, s11, s11
                  xor          s4, a1, t4
                  addi         s3, s8, 537
                  srli         s1, tp, 19
                  xori         t1, t0, -1539
                  slti         s3, s1, 1958
                  addi         s3, gp, 1615
                  srai         t6, gp, 7
                  srl          s9, a2, tp
                  andi         t3, s2, -955
                  srai         a3, gp, 4
                  slli         s10, s6, 0
                  or           t5, tp, sp
                  lui          a1, 593823
                  addi         gp, a6, -973
                  sll          t3, a4, zero
                  slli         zero, ra, 15
                  addi         s9, t0, 911
                  slti         a1, tp, -1855
                  slt          t3, s10, s9
                  srl          ra, t5, s8
                  or           s4, s0, s2
                  or           a7, t4, s6
                  xor          t3, s8, t2
                  srli         a3, s4, 16
                  addi         s6, gp, -411
                  or           s6, s8, zero
                  addi         t1, s9, -1939
                  sltu         s0, a6, s8
                  sub          t0, t6, s6
                  add          s7, t0, s6
                  sub          s0, t5, tp
                  add          a1, s5, t3
                  or           s7, a7, t3
                  or           s9, t3, a4
                  andi         s0, s3, -760
                  auipc        zero, 1002907
                  slli         sp, s0, 30
                  xori         a3, a1, -309
                  xor          ra, s5, a5
                  and          a4, a1, t3
                  sra          gp, a7, gp
                  slti         t6, s1, -1467
                  sltu         a3, a3, s4
                  sltu         a1, s11, t6
                  add          t4, a0, gp
                  sra          s7, s6, s8
                  sub          s6, t4, t1
                  ori          gp, a7, 118
                  sub          s10, a3, sp
                  srli         t5, s8, 4
                  srai         ra, s0, 0
                  slli         t1, s3, 7
                  sll          s8, t3, a5
                  sltu         a4, zero, s8
                  sltiu        a6, s11, 633
                  sra          a6, s11, t3
                  xori         a4, s4, -1584
                  andi         s4, s8, -134
                  and          t3, s4, sp
                  xori         s2, a7, -302
                  slt          a6, a2, tp
                  and          s5, a7, s11
                  srli         t3, a7, 27
                  nop
                  nop
                  and          a6, s1, a4
                  srli         gp, s11, 8
                  slt          t1, t4, a7
                  slli         s3, s2, 27
                  slti         s7, t0, -1755
                  add          s0, a6, a4
                  sra          s0, s11, ra
                  or           sp, tp, s6
                  nop
                  add          a3, s5, t3
                  xor          s11, a7, s11
                  xori         a4, a0, -578
                  srl          s10, t2, t4
                  nop
                  sra          tp, t1, a4
                  srai         s11, s10, 22
                  slti         s7, s11, 503
                  addi         a0, zero, -1181
                  sub          ra, s6, a5
                  and          zero, sp, a0
                  ori          a3, s0, 1550
                  srai         a1, t0, 30
                  sll          a6, ra, s7
                  auipc        gp, 154200
                  or           a7, s9, tp
                  sra          a3, s11, t6
                  srli         s5, s10, 12
                  sub          a6, s9, a2
                  or           a0, sp, s5
                  slli         a7, a1, 19
                  or           s7, zero, sp
                  srl          s2, gp, s5
                  sll          s3, s2, s8
                  ori          ra, a5, 390
                  or           s3, sp, a1
                  andi         ra, s5, -1653
                  auipc        a1, 943438
                  slti         t1, s7, 314
                  lui          sp, 297620
                  andi         a6, tp, 609
                  and          s6, a4, gp
                  slt          tp, a0, s0
                  or           a1, t0, ra
                  sra          t6, s8, a5
                  sltiu        a7, t5, -1896
                  slti         s10, s9, 1770
                  sll          a1, s10, ra
                  xor          t0, gp, a5
                  slti         s10, a6, -653
                  srli         a3, s3, 22
                  sltiu        s7, a3, -930
                  xori         s0, s9, -133
                  slli         s5, t4, 4
                  andi         s7, s11, -58
                  andi         a3, a2, 890
                  or           t4, s8, s3
                  sll          s2, s9, s0
                  xori         a4, a5, 1767
                  xori         a1, a1, -1555
                  or           t6, a3, a1
                  nop
                  or           a4, a4, ra
                  xor          s5, a3, a7
                  srli         s4, t3, 24
                  srl          a1, ra, a1
                  sll          s7, s10, a3
                  andi         t4, s1, 352
                  sra          s11, s9, s4
                  auipc        s5, 60345
                  sra          s3, t3, s2
                  auipc        a3, 877567
                  srai         zero, a4, 12
                  xor          sp, gp, a2
                  sltu         a3, a0, s5
                  slt          s4, t5, t1
                  slt          a4, a5, tp
                  or           a4, a0, s5
                  srl          s7, a3, s5
                  slti         t0, t3, -554
                  slli         t0, s3, 16
                  and          a1, s3, s11
                  and          s5, a7, t1
                  sll          s2, a2, s4
                  and          sp, a5, a3
                  slti         a6, tp, -331
                  srl          tp, a2, tp
                  auipc        t1, 895128
                  ori          s6, t1, -1761
                  addi         s9, t6, -1427
                  srl          a7, a6, a0
                  srai         s7, s0, 19
                  ori          t3, a3, -1939
                  srai         t5, s11, 1
                  or           sp, sp, t6
                  sra          t3, a3, s7
                  xor          s6, zero, s1
                  add          t3, t3, t0
                  xor          t6, t0, s3
                  srai         zero, zero, 7
                  ori          ra, t0, 305
                  sll          sp, s11, s7
                  add          gp, a5, t3
                  xor          a7, ra, t4
                  srai         s9, a0, 17
                  andi         s8, a5, 56
                  xor          s10, a4, s4
                  srai         gp, s7, 9
                  srl          a4, s4, sp
                  xor          tp, zero, s0
                  addi         s5, s1, -124
                  srli         t3, a1, 5
                  slli         s10, s2, 6
                  auipc        s2, 448630
                  ori          t1, a0, -1869
                  or           zero, sp, zero
                  sra          s5, a2, s2
                  and          a4, t1, t4
                  lui          a4, 482538
                  ori          s3, tp, 799
                  nop
                  lui          ra, 947315
                  andi         zero, a2, 417
                  slt          tp, ra, s2
                  xor          s0, tp, t5
                  srli         a1, t3, 25
                  andi         t6, gp, -151
                  andi         a0, s1, -1675
                  slt          ra, a6, a1
                  sll          t6, s9, a6
                  or           s6, s10, a6
                  srai         a7, t5, 12
                  slli         s4, a7, 14
                  add          tp, sp, s0
                  slt          s11, s1, t0
                  sub          s9, s11, s9
                  auipc        s7, 871563
                  xori         s10, s8, -1757
                  auipc        s7, 510556
                  lui          s0, 656357
                  sub          a0, a6, t0
                  sub          t6, s2, a4
                  auipc        t6, 751684
                  slt          a3, a2, ra
                  slti         t6, s3, -915
                  slli         t6, s0, 21
                  sltu         t3, t4, a1
                  xor          zero, t5, zero
                  srl          a0, t4, t4
                  and          s11, a3, s1
                  slti         s3, s2, 1556
                  or           gp, s5, s3
                  or           s4, s10, s9
                  lui          zero, 685615
                  sra          s7, ra, s6
                  srl          a4, s7, zero
                  slti         zero, t0, 55
                  or           s2, s11, s3
                  sra          s6, s5, ra
                  lui          a1, 115339
                  or           s1, s7, tp
                  ori          s7, s1, -121
                  sll          s10, gp, s8
                  sll          t1, t3, a4
                  lui          s6, 662112
                  sltiu        tp, a5, -987
                  slti         ra, s1, 517
                  add          sp, t2, gp
                  srl          a1, gp, ra
                  or           sp, s7, t1
                  or           ra, s2, s6
                  add          s2, t3, s5
                  srl          a1, s1, a4
                  add          tp, t3, ra
                  srli         a4, t2, 8
                  and          sp, s3, sp
                  sltiu        s0, s11, -462
                  sra          a1, s7, a2
                  xori         a4, s5, 939
                  xori         s11, s3, 2045
                  add          a1, tp, s1
                  slt          gp, a2, a1
                  nop
                  xor          a3, s7, s9
                  addi         s6, t3, 374
                  slli         s6, s11, 16
                  srai         s4, ra, 6
                  sll          sp, t1, s0
                  ori          t3, a4, -1522
                  slli         s8, s2, 18
                  auipc        s2, 599440
                  sltu         t6, a0, s3
                  nop
                  sltu         t5, s8, a1
                  srai         a7, s1, 16
                  auipc        zero, 214475
                  andi         a3, a7, 1353
                  sub          t3, t3, s3
                  or           t3, sp, s1
                  lui          a4, 234606
                  slti         sp, t0, 1302
                  slti         t5, a4, 310
                  sltiu        a6, a6, -1264
                  nop
                  slti         gp, s1, 739
                  ori          s1, s3, -58
                  and          s2, ra, s8
                  auipc        s3, 1045646
                  slti         a7, a2, 920
                  sub          s6, t1, tp
                  xori         zero, sp, 808
                  sub          t4, s7, s6
                  srl          a0, s9, t5
                  sub          s7, a4, t2
                  ori          a4, t2, 949
                  auipc        s7, 960166
                  srai         t5, s4, 21
                  or           s2, ra, a5
                  lui          s1, 226577
                  srai         t0, s10, 20
                  and          t3, gp, ra
                  nop
                  slti         gp, a1, 456
                  and          tp, s2, ra
                  xor          tp, gp, a1
                  lui          t5, 968346
                  srai         a1, t6, 1
                  lui          t4, 1037658
                  sltiu        t1, s5, 661
                  auipc        t1, 930839
                  slli         s3, t0, 7
                  xori         a1, a3, 1515
                  sll          ra, gp, a1
                  srli         gp, gp, 5
                  addi         zero, s0, -2013
                  andi         a0, a7, -1953
                  and          s11, s11, t5
                  or           ra, s1, zero
                  or           s10, s1, gp
                  sub          s10, a3, a2
                  xori         s6, t1, 1687
                  slt          tp, s9, s2
                  add          a4, s5, s4
                  sltu         t0, s11, gp
                  sra          tp, a2, s11
                  sltiu        gp, s5, -2019
                  sltiu        tp, t6, 1577
                  srl          a7, ra, a6
                  sub          a0, tp, s3
                  slli         sp, gp, 14
                  ori          a6, s7, 1380
                  add          s11, s10, s8
                  slli         s1, t4, 8
                  nop
                  sltiu        t5, s1, 1581
                  srai         t0, a4, 31
                  srli         s2, sp, 0
                  xor          s5, zero, s1
                  srai         s2, s9, 5
                  sll          s3, a7, a5
                  sll          a7, t3, a2
                  andi         s11, zero, 73
                  nop
                  addi         t3, a4, -1744
                  or           t1, zero, zero
                  slt          a7, zero, t4
                  slti         t4, s0, -1436
                  sltu         s4, a6, s3
                  nop
                  sll          sp, a7, a3
                  sra          zero, ra, tp
                  xori         a1, t0, 286
                  sll          s10, s5, s10
                  slt          a3, s7, s11
                  sltu         s6, a7, t5
                  auipc        a1, 168282
                  and          a3, s2, gp
                  or           s5, s8, a1
                  sltiu        tp, a1, -1806
                  or           t0, t5, tp
                  xor          t6, s5, s9
                  slt          t1, s10, t6
                  slti         a3, a1, -852
                  nop
                  sltu         s0, s5, t5
                  srli         gp, sp, 28
                  ori          t5, t0, 497
                  xori         sp, s6, -177
                  xori         s7, s5, -1105
                  slli         s8, s4, 5
                  auipc        s2, 878501
                  andi         t5, a5, 1167
                  sra          t0, tp, gp
                  sltu         t4, s10, t5
                  slti         a3, ra, -121
                  slt          t1, s10, s0
                  sltu         zero, s9, s6
                  addi         s8, s3, 976
                  ori          s7, t4, -63
                  andi         t3, a6, -223
                  add          s2, s8, a2
                  slt          t6, s1, a7
                  slti         t5, t4, -1471
                  sll          a6, zero, s11
                  sltu         s4, s8, s8
                  nop
                  add          t0, t1, a6
                  lui          s3, 351812
                  nop
                  slti         gp, s4, -880
                  ori          s4, s2, 189
                  sll          s5, t5, s6
                  and          a4, a6, t3
                  slti         s10, s1, 1815
                  ori          t0, s7, 1202
                  and          s7, t6, sp
                  sra          t6, s6, s4
                  or           s7, s9, t3
                  lui          t4, 176396
                  srl          s1, a1, t3
                  add          s5, s9, t3
                  sll          t6, a3, s2
                  sub          gp, t2, gp
                  srai         a0, s10, 20
                  lui          s9, 1017058
                  and          a6, t0, a4
                  sltu         t4, s0, t3
                  sltu         s6, t6, s9
                  sltiu        s5, tp, 854
                  slt          gp, t4, zero
                  srli         a1, t5, 15
                  slti         a1, s2, -863
                  slti         gp, s3, 192
                  and          s7, s2, s2
                  srli         s5, t0, 15
                  srli         t3, s0, 14
                  xori         zero, s9, -15
                  sltiu        t1, a2, -1065
                  lui          t3, 182113
                  sll          t0, a6, t5
                  andi         t4, s9, -152
                  sll          tp, a7, sp
                  or           s9, s10, s6
                  sub          a4, a3, a0
                  addi         tp, t6, 1306
                  andi         s7, s10, 44
                  auipc        zero, 160003
                  or           s1, s2, gp
                  sub          s1, t0, t0
                  slti         a7, t2, -1871
                  auipc        s0, 830047
                  sll          t1, s3, tp
                  srai         gp, t5, 3
                  slt          t5, s3, s1
                  add          s1, t5, s10
                  lui          t1, 912340
                  slli         a3, a0, 20
                  slli         a4, a4, 1
                  and          a0, s2, s5
                  sll          s0, gp, s3
                  addi         s11, a1, 937
                  lui          a1, 637492
                  sra          s2, s1, s0
                  sltiu        s10, s9, 1167
                  srai         t1, s6, 27
                  srai         s9, s1, 17
                  andi         gp, t6, 236
                  sub          a1, s3, tp
                  slti         s7, a6, 1947
                  slt          s3, t4, s0
                  nop
                  xor          t6, a2, a1
                  sltiu        a3, a1, 1032
                  or           t0, tp, a7
                  ori          s7, s7, 1740
                  add          a4, s2, t4
                  sltu         s0, a3, s10
                  ori          t1, s1, -979
                  auipc        a3, 430158
                  sltiu        s2, a6, 1378
                  lui          a1, 600718
                  auipc        zero, 173006
                  sra          t6, a2, s5
                  srli         ra, tp, 26
                  lui          s0, 541257
                  sltu         t5, t4, a5
                  ori          s3, a2, 528
                  xori         s8, ra, 288
                  xori         s5, a1, -462
                  xori         t5, tp, 1569
                  nop
                  sltu         gp, a6, s6
                  sltu         gp, s4, s2
                  and          s0, gp, t4
                  srl          a4, s9, t4
                  slli         a7, s1, 20
                  xor          t3, s11, s5
                  slt          gp, a2, t2
                  add          t3, s6, a3
                  and          s1, sp, t6
                  or           a3, a2, s6
                  ori          s7, s9, -450
                  addi         t6, s6, 1123
                  addi         t4, s11, -1339
                  lui          gp, 125015
                  slt          a7, t3, tp
                  srli         s2, s6, 0
                  ori          s1, s4, 200
                  xor          t6, t4, a5
                  nop
                  and          s4, sp, t6
                  slti         a4, a1, 1877
                  sra          s11, a3, s9
                  slt          a1, a3, s8
                  andi         tp, t5, 908
                  and          a3, zero, tp
                  slt          ra, s2, s10
                  sltu         s4, a6, t6
                  andi         zero, s5, 728
                  and          s8, t5, s1
                  ori          a6, a4, -753
                  nop
                  srl          t3, t2, s9
                  andi         s1, s5, -1487
                  slt          t5, s7, s5
                  srli         s3, a3, 31
                  or           a0, s11, t4
                  andi         s0, t4, 1591
                  slti         a3, s8, 1434
                  srli         a0, s9, 13
                  srl          ra, sp, t2
                  sltiu        s5, t5, -1725
                  andi         s5, tp, 1559
                  or           a1, a3, a5
                  nop
                  srli         a1, a6, 6
                  xori         a0, a0, 928
                  sra          t5, t5, a3
                  andi         s3, zero, -829
                  sub          s3, a3, s2
                  nop
                  add          s10, s1, s5
                  or           a4, s3, sp
                  srl          a4, t6, a0
                  sltu         zero, a1, s5
                  slt          ra, zero, s5
                  sra          s6, s5, a0
                  add          tp, t1, t4
                  srli         sp, t2, 31
                  add          t4, a7, gp
                  xor          s4, a2, s10
                  nop
                  lui          a0, 472986
                  sra          s4, a7, s6
                  lui          a7, 859063
                  srl          t5, a1, a4
                  lui          s8, 1001560
                  srl          s10, t0, gp
                  andi         s2, sp, 1919
                  sll          s2, t0, s9
                  sltiu        zero, s2, 410
                  sltiu        a1, t6, -1876
                  sll          t1, s11, a7
                  xor          t5, tp, ra
                  srli         s8, s0, 4
                  srai         gp, a0, 13
                  sltiu        gp, s9, 218
                  sra          t6, s3, sp
                  slti         a0, gp, -594
                  sra          s1, s5, s7
                  sub          tp, t4, zero
                  sll          t4, s5, tp
                  slli         a1, a0, 23
                  sltiu        t1, s0, 1740
                  srli         s8, a6, 17
                  xor          a6, sp, s0
                  slli         s0, s0, 20
                  lui          s11, 610862
                  sltiu        a4, t5, 167
                  sub          a0, s10, a1
                  srl          a3, s6, a4
                  slti         t4, t4, -1332
                  srai         s5, a2, 31
                  andi         a3, s5, 1223
                  srl          t5, s0, t1
                  srl          a4, t1, s6
                  srli         a3, zero, 16
                  add          s7, s4, a0
                  sltiu        a4, t0, -694
                  xor          s7, s3, t3
                  add          a4, s6, a4
                  slli         a3, t1, 19
                  srai         s0, t0, 17
                  add          t5, a6, tp
                  lui          t1, 525459
                  ori          a6, a4, -1660
                  andi         sp, t0, -170
                  addi         s2, t1, -1589
                  sltiu        a1, s4, -604
                  sltu         s9, gp, sp
                  or           t3, a6, t1
                  or           s6, t3, s8
                  sra          s3, s9, a3
                  ori          t5, a3, -1960
                  xori         s8, a0, 692
                  sltiu        s3, t3, 280
                  nop
                  sltu         a6, a5, t0
                  sltiu        a3, s10, -216
                  xor          s4, t6, s4
                  add          zero, s11, t3
                  ori          t0, zero, 742
                  slt          s4, s0, s8
                  ori          s2, s5, -1225
                  xor          tp, s8, a5
                  slti         a3, gp, -338
                  add          s8, s2, s2
                  slli         t4, t5, 2
                  lui          t3, 333825
                  srli         a6, s2, 29
                  srli         t3, t3, 30
                  xori         s3, ra, 905
                  ori          s3, a0, 1374
                  andi         s6, sp, 1349
                  slti         tp, s5, 1186
                  nop
                  sltiu        gp, s8, 1331
                  sra          t0, ra, t3
                  nop
                  srl          t1, s6, ra
                  srl          t1, t0, a6
                  and          s1, s4, s1
                  auipc        s1, 789758
                  and          a4, a3, gp
                  lui          s0, 409730
                  xor          a4, a0, a7
                  auipc        a1, 349752
                  sltiu        s5, a0, -476
                  or           t1, s7, a0
                  sltiu        s3, s1, -1849
                  sll          a4, t4, sp
                  nop
                  slli         s6, sp, 8
                  sltu         s9, a3, t1
                  srli         s8, tp, 25
                  slli         s11, sp, 10
                  xori         s8, s6, -1933
                  srli         gp, s5, 2
                  ori          a7, a3, -121
                  xori         s2, a4, 1950
                  sra          s7, s6, s10
                  sub          s6, a4, a7
                  sll          s7, t5, s5
                  srli         tp, s8, 30
                  addi         s5, a3, -825
                  xor          ra, t4, a5
                  auipc        s5, 946073
                  nop
                  auipc        t5, 927423
                  ori          s8, s0, -1732
                  slti         s7, a1, 1183
                  sltu         t5, t2, zero
                  sltiu        zero, s10, 528
                  slti         a4, s4, -828
                  srl          t6, a0, s11
                  nop
                  xori         t6, s9, -1412
                  slt          t6, zero, t3
                  srai         s1, t5, 13
                  xori         s2, zero, 439
                  srl          s11, a0, t4
                  srl          t5, s2, a0
                  lui          s3, 452820
                  or           s6, a5, zero
                  and          tp, t0, s10
                  slti         s9, s8, 1012
                  or           tp, a0, a3
                  lui          t0, 88069
                  sra          s6, s7, gp
                  slli         t4, s0, 27
                  and          tp, s1, s8
                  or           gp, a1, s5
                  srli         a6, ra, 26
                  slti         gp, a4, -333
                  srai         a4, s5, 24
                  slli         t4, t2, 11
                  slt          a3, tp, a1
                  xor          t0, s8, s10
                  sltiu        s7, t3, 818
                  ori          gp, s6, -900
                  srli         tp, s4, 24
                  slti         a0, tp, 985
                  slli         a1, gp, 7
                  lui          gp, 431574
                  addi         ra, ra, 1673
                  or           t1, s1, s3
                  add          s6, a4, a0
                  srl          a4, s11, ra
                  ori          t6, ra, -1615
                  xor          s8, a2, t1
                  sub          s0, t3, a0
                  lui          a4, 33518
                  srl          s8, tp, gp
                  or           s5, s8, zero
                  slti         s2, t5, 1712
                  srli         a1, s3, 2
                  sltu         a0, s9, t3
                  slti         a6, a4, 2023
                  sra          gp, t4, sp
                  andi         tp, zero, -274
                  ori          gp, s7, 217
                  slt          tp, t4, tp
                  nop
                  and          a4, t1, a4
                  lui          a4, 663057
                  lui          s3, 573
                  ori          s4, s7, 1059
                  andi         tp, a0, 660
                  lui          a4, 575740
                  lui          s9, 806560
                  andi         s3, a3, -274
                  sub          s7, s1, s10
                  xor          a7, a4, a7
                  xori         t1, t5, -1706
                  slti         s2, s1, 162
                  add          a0, a3, a6
                  sub          t6, t0, t3
                  or           t1, a3, a0
                  xori         s10, zero, -1955
                  add          s11, s1, s3
                  andi         a0, t4, -502
                  srl          ra, zero, sp
                  and          t5, s2, s11
                  xor          s11, gp, s10
                  sltu         t1, s3, a5
                  nop
                  lui          t3, 990055
                  and          gp, a2, s9
                  slli         t0, sp, 6
                  slt          s5, s11, t0
                  sll          zero, s11, gp
                  srai         t5, ra, 5
                  slti         zero, s4, 1812
                  sub          s2, a7, s1
                  sltiu        s9, tp, -211
                  slli         s7, s2, 19
                  srai         s9, t0, 31
                  xori         s3, s1, 158
                  srai         a0, s1, 6
                  nop
                  lui          a4, 624122
                  srl          t4, s10, t2
                  slt          t3, gp, a7
                  xori         s4, tp, 203
                  slti         a7, t2, 1390
                  xori         ra, a5, -530
                  srl          t3, s0, ra
                  xor          s5, s11, a0
                  auipc        ra, 962762
                  ori          tp, s11, -735
                  ori          s9, t2, 1337
                  and          zero, zero, s4
                  addi         t0, tp, 1480
                  addi         ra, s2, 214
                  srli         t3, t4, 23
                  and          a0, s2, s11
                  nop
                  add          a3, a6, s8
                  slli         a4, a0, 28
                  slli         t6, ra, 13
                  auipc        zero, 390976
                  auipc        s3, 446897
                  lui          a3, 1026514
                  xor          a4, sp, a4
                  xori         s4, zero, -53
                  slt          s3, s3, zero
                  auipc        s7, 522092
                  sltu         a4, t4, s0
                  add          tp, ra, t0
                  lui          gp, 848558
                  xor          tp, s11, t4
                  or           a0, a2, t4
                  xor          t4, t5, a0
                  srli         a7, a6, 18
                  sltiu        s6, s0, -1027
                  srli         t6, zero, 17
                  lui          s6, 356792
                  sltu         s4, s4, ra
                  srl          t4, zero, s8
                  lui          ra, 215819
                  sub          s3, a6, s5
                  andi         zero, s3, -440
                  srai         a7, s4, 4
                  sll          tp, gp, s8
                  srl          s3, a3, s5
                  sltu         a7, zero, zero
                  srai         t4, s11, 12
                  srl          tp, a3, a1
                  and          s0, gp, t3
                  sub          s1, a5, a1
                  ori          s10, a4, -1154
                  add          t5, a7, s1
                  nop
                  xori         gp, sp, -1756
                  andi         a1, t5, 1137
                  auipc        s6, 810826
                  andi         s1, s1, -1877
                  sll          zero, sp, a6
                  sltu         s8, sp, s4
                  sra          s1, s8, s1
                  ori          s2, s1, -129
                  sltiu        s10, s10, -1157
                  addi         gp, s2, -1540
                  or           s2, tp, s9
                  srai         s10, s4, 28
                  or           a4, gp, s2
                  or           s5, t6, s11
                  andi         sp, a6, 2032
                  slli         s5, s10, 11
                  srl          gp, a1, a6
                  auipc        s11, 555061
                  addi         a1, s8, -1071
                  xor          s7, t6, a6
                  andi         tp, a0, -492
                  srli         a7, s2, 13
                  xori         s9, tp, 1355
                  srai         a3, t6, 12
                  xori         s5, zero, -844
                  addi         a1, s7, -238
                  or           s3, t5, sp
                  nop
                  xor          t5, zero, a7
                  addi         s10, zero, 1163
                  auipc        gp, 704178
                  auipc        tp, 424842
                  add          a1, t0, t5
                  nop
                  sltiu        s8, s8, -1002
                  add          t3, ra, t6
                  xori         s4, a5, -1085
                  srl          ra, s5, a2
                  or           s3, zero, ra
                  or           a4, s1, t2
                  xori         s5, zero, 763
                  xor          a1, a3, s9
                  addi         tp, s8, -814
                  slt          t0, zero, s10
                  srli         a3, t6, 15
                  xor          s7, t5, t4
                  sltiu        a3, zero, -660
                  sltu         sp, a7, s6
                  sltu         s2, a3, s0
                  sll          zero, t6, a5
                  slli         tp, tp, 13
                  lui          a0, 24491
                  srai         sp, s8, 28
                  slt          a0, a6, t6
                  sll          t0, t2, s2
                  xor          a4, ra, a6
                  xori         t0, gp, -780
                  srl          a0, s11, s4
                  and          s4, tp, s4
                  addi         tp, t4, -1381
                  sra          s0, a2, s5
                  slti         a3, t2, 806
                  slti         s8, sp, 600
                  xori         s3, s7, 298
                  srai         zero, a5, 18
                  addi         ra, s0, -28
                  srli         zero, t1, 27
                  xori         t4, a2, -546
                  sltu         t3, zero, t4
                  srli         s9, ra, 13
                  nop
                  add          t1, s6, t6
                  lui          s1, 369101
                  srli         ra, s4, 31
                  slli         t1, tp, 0
                  nop
                  slti         s4, s1, -857
                  slti         gp, a7, -99
                  slti         ra, a2, 855
                  lui          gp, 178056
                  auipc        t0, 390525
                  xori         s8, zero, -1353
                  srl          s5, ra, s10
                  slti         s3, a0, -656
                  sltiu        tp, ra, -682
                  or           s3, a1, s6
                  auipc        ra, 284963
                  sll          tp, s11, s9
                  slli         t6, a0, 2
                  nop
                  sll          s6, s11, s10
                  slti         s7, a1, 161
                  srl          t0, t6, t0
                  auipc        t5, 182146
                  andi         t5, a0, -1202
                  srai         t4, ra, 24
                  sltu         s2, s5, s5
                  sltu         tp, s0, t5
                  ori          s6, s3, -851
                  srli         s1, t2, 28
                  slt          a7, t3, s7
                  slli         s2, s4, 21
                  xor          a6, sp, a6
                  slli         t0, s11, 1
                  sltu         s0, tp, a1
                  ori          s7, t4, -282
                  addi         a0, t6, 1030
                  sltu         t1, t4, t5
                  slli         t5, a0, 8
                  addi         t0, a5, -84
                  lui          s1, 979627
                  srl          s11, t3, s4
                  xori         a7, tp, -852
                  andi         s10, a3, -1566
                  or           zero, s6, s5
                  sra          t5, t3, a6
                  nop
                  slt          zero, s9, t0
                  ori          t0, s9, 95
                  addi         a4, s10, -812
                  sltu         a4, s0, a2
                  srli         t1, s10, 31
                  slli         s6, s8, 11
                  srl          s11, zero, gp
                  and          ra, a5, tp
                  lui          gp, 883887
                  srai         s0, t4, 31
                  srli         s4, s6, 30
                  xor          t1, s9, a3
                  srl          a3, t2, t6
                  sll          s1, s8, s7
                  auipc        t5, 711872
                  sub          t5, a7, t4
                  slli         a4, t0, 14
                  xor          t6, sp, s2
                  lui          a6, 170801
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_21
                  li           a4, 0x0
                  li           s11, 0x80000000
                  li           s9, 0x0
                  li           t3, 0x0
                  li           gp, 0x0
                  li           ra, 0x80000000
                  li           a6, 0xffffffff
                  li           s8, 0xf3301afd
                  li           t0, 0xffffffff
                  nop
                  addi         gp, s9, -1295
                  lui          a6, 474929
                  lui          t3, 584461
                  add          s9, t0, s9
                  addi         ra, a6, -1330
                  add          ra, gp, s8
                  nop
                  addi         s11, t3, 990
                  add          t3, t1, s8
                  sub          a4, s9, s11
                  auipc        t1, 188706
                  addi         s9, t0, 1619
                  sub          s8, s8, ra
                  nop
                  addi         s11, a6, 1828
                  add          gp, ra, s11
                  nop
                  add          a4, t3, t0 #end riscv_int_numeric_corner_stream_21
                  srai         s8, tp, 18
                  srai         a7, t3, 23
                  ori          a0, s11, 851
                  add          s7, a2, s4
                  xori         zero, s1, -41
                  add          zero, s10, a4
                  or           s2, s2, a5
                  slli         t5, s5, 0
                  auipc        s11, 592707
                  xor          s11, t1, s2
                  xori         sp, a7, -1012
                  slti         a4, s4, -1348
                  slli         s2, s0, 31
                  addi         a4, t5, 315
                  andi         a1, t3, -618
                  xor          a0, a4, gp
                  srai         t1, t5, 24
                  sra          s8, a0, t5
                  sltu         s4, s0, s2
                  xor          t4, a5, t2
                  lui          a3, 468504
                  srli         a6, s11, 17
                  auipc        s2, 526962
                  nop
                  addi         tp, t0, 577
                  addi         s2, s0, 279
                  sll          t0, s9, s6
                  slli         s7, a0, 11
                  srli         gp, s6, 28
                  add          s1, t4, s3
                  slli         t1, s10, 2
                  and          ra, s9, a5
                  srai         s3, a4, 8
                  sll          s4, a7, t1
                  lui          sp, 68714
                  andi         gp, t1, -1241
                  sub          a4, ra, t4
                  srai         a1, a1, 19
                  addi         s0, t6, -806
                  sra          a7, s9, s9
                  sub          t6, gp, a4
                  addi         a0, t2, 1276
                  auipc        a4, 955646
                  lui          zero, 358041
                  sltu         a6, a5, s7
                  ori          sp, a2, 1123
                  addi         t5, sp, 1956
                  srl          a0, s4, s4
                  srli         s4, ra, 17
                  auipc        t0, 665686
                  srli         a0, s3, 3
                  sub          t1, tp, a4
                  sltiu        s11, a2, 940
                  slli         sp, s8, 18
                  slli         s10, t2, 13
                  xor          t6, a7, s7
                  lui          ra, 295972
                  slti         s2, a7, 1085
                  srai         s6, ra, 5
                  auipc        a6, 327222
                  sltiu        s7, s5, -377
                  sra          t5, s9, a1
                  add          a3, s0, s10
                  xori         ra, t4, -1734
                  sra          gp, s11, s3
                  srli         a3, t3, 6
                  addi         a3, s3, 1097
                  sub          t1, ra, t0
                  slti         s6, s8, 616
                  nop
                  slt          ra, s10, s11
                  addi         s4, s0, -48
                  sra          tp, s2, ra
                  add          a0, s9, t3
                  and          s5, s8, s4
                  ori          a3, sp, 1479
                  xori         t4, gp, -1034
                  add          s1, a2, t0
                  sltiu        a1, a1, -1872
                  xori         a7, s11, -240
                  srli         a1, s1, 5
                  sll          s0, s7, a3
                  or           a3, ra, s6
                  auipc        a3, 856119
                  slli         s0, t0, 25
                  sub          a3, a5, s7
                  xori         s5, s7, -1853
                  srli         a6, ra, 3
                  slli         ra, t5, 23
                  lui          a3, 800585
                  addi         t1, s11, 687
                  andi         a7, s7, -1223
                  ori          s2, t6, 27
                  and          s1, s10, a1
                  or           s11, s2, s1
                  auipc        a1, 494618
                  add          t0, a6, s3
                  slti         s10, t5, 1064
                  auipc        s0, 206243
                  sub          t5, s5, t5
                  and          a0, t5, t0
                  xor          t3, a6, s8
                  sltu         a7, s1, s6
                  srai         t1, tp, 3
                  srai         s9, sp, 28
                  sltiu        s5, a0, -1805
                  add          zero, t5, a3
                  srl          s7, a3, s2
                  addi         ra, s8, -354
                  lui          tp, 1007696
                  lui          ra, 416625
                  sltu         a6, s2, s10
                  lui          a3, 794808
                  sub          ra, t6, a0
                  slt          s7, s7, a4
                  sll          a7, s3, t3
                  sltu         a0, a1, s5
                  and          s2, zero, s1
                  srli         s3, a5, 5
                  sltu         a3, t5, s9
                  add          s5, ra, s6
                  andi         s8, s0, -237
                  sra          a3, a5, t5
                  and          a3, a0, a6
                  addi         t5, s2, -576
                  srli         a6, t6, 9
                  slli         a6, s11, 23
                  sub          s0, a2, s10
                  add          a3, s3, a4
                  auipc        t6, 369509
                  slli         t1, s10, 1
                  srli         sp, zero, 0
                  addi         s7, a4, -712
                  and          a4, a3, a2
                  xori         s7, zero, 996
                  sra          tp, zero, zero
                  sltiu        sp, s2, -569
                  slli         a3, a1, 11
                  slti         t0, s3, 607
                  and          s3, s0, t2
                  or           s2, s5, s10
                  srai         s7, a4, 7
                  slli         s11, s3, 27
                  auipc        s0, 1033999
                  or           s3, a3, t5
                  ori          a6, s0, 1060
                  sltiu        t0, a2, 1175
                  nop
                  sra          t1, s2, t5
                  sra          a3, t3, s9
                  sra          s7, a7, s11
                  srai         s0, ra, 18
                  and          s2, a2, tp
                  slli         s5, zero, 8
                  slli         s5, t6, 18
                  slt          a6, a5, sp
                  sltu         s1, a1, s2
                  auipc        ra, 171013
                  xori         s9, a7, 487
                  and          s0, t5, tp
                  slt          s3, a3, a0
                  sltu         t5, s6, a2
                  ori          sp, s11, 541
                  andi         a3, a3, 860
                  sltiu        t3, a4, -528
                  slti         a6, a1, 858
                  andi         s4, a6, -14
                  ori          s2, s4, 1768
                  xor          t4, a5, zero
                  auipc        s11, 646554
                  add          s9, t5, t4
                  sub          zero, tp, a1
                  addi         s8, t4, 1400
                  sll          s9, a0, t3
                  ori          gp, s1, -1606
                  srai         t3, gp, 17
                  srli         s8, s0, 19
                  xor          a1, a2, t0
                  lui          a3, 222630
                  sltu         s7, s8, a0
                  sra          t1, s6, s7
                  srl          s4, s9, a6
                  nop
                  srli         s5, s10, 18
                  ori          a4, a2, -1031
                  and          s7, s4, a1
                  xor          t5, s4, s6
                  ori          a3, s0, -1981
                  xor          a7, t2, s3
                  sub          gp, zero, s7
                  xor          a3, s9, a3
                  sltiu        s5, s4, -1660
                  srl          s10, s6, s1
                  srli         s8, s3, 11
                  sltiu        s11, s8, -799
                  addi         s4, s8, -1954
                  nop
                  slti         s10, sp, 1952
                  andi         sp, a0, -1833
                  sra          s6, a7, s9
                  sltiu        a0, t3, 1765
                  xori         a7, s2, 41
                  nop
                  xor          s10, s8, s7
                  andi         t1, s9, -1868
                  auipc        ra, 514273
                  sltiu        s8, t6, 1304
                  addi         t3, t2, 245
                  slti         s2, t3, -1445
                  xori         s5, a7, -745
                  addi         ra, a1, -1610
                  slti         a1, s0, -147
                  xori         a4, ra, 2000
                  slti         tp, zero, -281
                  sltu         s8, sp, s10
                  xor          a4, t5, s6
                  ori          s7, t3, 1542
                  ori          s7, tp, 1374
                  sub          s5, tp, s11
                  xor          ra, zero, a6
                  add          a0, a4, s10
                  slti         t1, t4, -1561
                  sltu         a3, s1, t2
                  slti         a7, s6, 1429
                  nop
                  nop
                  slt          s0, s9, t0
                  lui          t3, 83322
                  ori          a6, s10, -84
                  and          t3, t4, s11
                  or           t3, a0, a2
                  srl          s1, t3, a1
                  sll          ra, s0, t3
                  xor          gp, sp, a2
                  add          sp, sp, a6
                  auipc        t1, 894503
                  auipc        s6, 450492
                  sltu         s11, s7, s3
                  andi         t0, s8, -1706
                  slti         s3, t5, -1898
                  addi         a7, s2, 389
                  sltiu        a4, a1, 507
                  xor          a0, ra, sp
                  addi         s0, ra, -1111
                  or           s4, a2, s1
                  nop
                  add          a7, a2, t5
                  slt          a1, t1, a2
                  sltiu        a6, t2, -814
                  sra          s9, s6, s3
                  lui          s7, 428568
                  sub          tp, t1, a4
                  sub          a6, t5, s9
                  sra          a3, s9, s10
                  srl          t3, t4, gp
                  sub          sp, a0, t4
                  and          s5, ra, a5
                  srai         s1, s3, 3
                  srl          s9, a6, a3
                  auipc        ra, 460676
                  sub          s5, t3, s4
                  and          s2, a4, s0
                  slti         t4, s4, -240
                  or           t1, zero, t1
                  nop
                  slt          s1, a2, zero
                  lui          zero, 735867
                  nop
                  sltu         s4, ra, s0
                  slti         t3, t2, -562
                  slli         gp, s2, 5
                  and          t6, s11, t4
                  and          tp, a3, s6
                  sltu         t1, s11, s6
                  srl          s10, tp, sp
                  andi         a6, t1, 1225
                  auipc        a6, 823612
                  add          s5, t2, s10
                  sra          t0, s1, s4
                  xor          a6, s4, a4
                  slti         s1, a4, -537
                  and          s5, t6, s7
                  slli         t4, t3, 25
                  nop
                  and          s2, t4, a2
                  srli         a7, a2, 1
                  lui          s10, 407623
                  srli         a3, s11, 30
                  and          a0, zero, t5
                  lui          sp, 1006706
                  or           gp, a6, a3
                  srl          s9, t4, s10
                  sub          gp, t3, sp
                  or           s0, s2, gp
                  addi         zero, zero, -1598
                  sll          t1, s3, a1
                  sra          ra, s6, gp
                  or           t1, a0, s6
                  lui          t3, 240890
                  and          t3, a7, zero
                  addi         s4, a5, 1509
                  lui          ra, 94182
                  sra          s9, t3, t1
                  sll          tp, a1, s4
                  slli         a7, s7, 1
                  slti         ra, s5, -1678
                  auipc        s0, 60893
                  xori         a6, t2, 689
                  srai         a6, t6, 22
                  and          a0, t0, sp
                  nop
                  srl          a7, s4, s7
                  srl          s5, t3, a1
                  ori          a4, a6, 1943
                  nop
                  slti         a3, a3, -87
                  slt          s6, t5, s9
                  sltu         s0, s10, a4
                  sra          zero, s3, sp
                  andi         t3, t4, -917
                  srai         a6, ra, 1
                  sll          zero, t5, t2
                  sltiu        t4, t4, 1461
                  nop
                  srai         s5, tp, 9
                  xor          a6, s8, s3
                  ori          t4, s3, -1689
                  slt          s8, s7, sp
                  sltiu        a3, s3, -1747
                  or           ra, s6, s4
                  sub          s6, a7, s6
                  srli         a3, t4, 20
                  srl          s2, s6, t1
                  srai         gp, s4, 17
                  or           t3, a4, s1
                  add          s4, s5, s4
                  or           s3, tp, s0
                  lui          s0, 532040
                  sltiu        s10, t5, -402
                  slli         s4, s11, 14
                  andi         tp, s1, 262
                  sltiu        s2, a5, -580
                  srai         zero, t2, 27
                  andi         t0, t2, 1634
                  sltiu        a6, a3, 869
                  sll          t5, a3, s2
                  nop
                  or           zero, gp, a5
                  sltiu        s6, s0, -1867
                  lui          s11, 299934
                  add          a4, a7, s2
                  and          a1, a3, gp
                  srai         s5, s1, 28
                  xor          s11, a7, zero
                  add          s9, t5, a6
                  and          a1, s0, s2
                  and          t5, t3, t4
                  xori         a4, t2, 322
                  auipc        a0, 309051
                  nop
                  addi         a4, t5, 1665
                  slt          s11, s1, ra
                  or           s11, a2, s4
                  xori         t5, zero, -19
                  addi         zero, s0, 1860
                  nop
                  sll          gp, s5, s8
                  and          a1, s3, s9
                  nop
                  sltiu        a4, s9, 416
                  srl          s8, t0, ra
                  xori         t0, t2, 495
                  slti         t3, s10, -1230
                  slti         t3, t1, -394
                  addi         s9, s2, -659
                  add          t4, s10, a2
                  sll          t4, s11, s10
                  lui          a7, 321418
                  or           s6, a0, a1
                  sltiu        s8, s4, 1819
                  srl          zero, t6, s10
                  slti         a6, s6, -1441
                  sll          a1, a5, sp
                  andi         sp, s0, 499
                  sltu         t0, s0, a7
                  nop
                  xori         t0, t2, -1204
                  addi         s8, a4, 393
                  srli         t1, t5, 4
                  lui          t3, 602538
                  sll          s11, s7, t0
                  andi         t1, s10, 884
                  slti         s11, tp, 2003
                  addi         s6, a3, 595
                  slli         s9, s10, 20
                  sltu         a0, a4, t1
                  ori          s10, s1, 1297
                  lui          t5, 576752
                  sll          a7, t3, s10
                  sltu         a1, a3, s2
                  andi         a6, s11, -979
                  sltiu        a1, s0, 1517
                  slti         s0, a7, 402
                  and          s11, s2, sp
                  addi         s8, t5, 1447
                  slt          s2, s7, s11
                  nop
                  slt          s7, t1, a7
                  andi         ra, a2, -771
                  sltu         a4, t2, a0
                  or           t0, a5, zero
                  addi         s9, t0, -1661
                  srli         a3, s7, 27
                  and          s11, s10, s4
                  sll          zero, a6, s4
                  slli         t0, s7, 28
                  ori          t6, t2, -1482
                  slli         s4, s4, 11
                  sltu         s6, a2, a2
                  add          s6, s11, s5
                  xori         s1, t0, -410
                  slti         a0, a3, 1029
                  lui          s1, 704384
                  slli         s2, gp, 16
                  and          s9, t2, a0
                  sub          gp, tp, t3
                  srai         t6, t2, 29
                  srl          sp, a1, s8
                  sltu         s9, a7, a4
                  xor          a3, s1, tp
                  or           s6, t1, t2
                  sra          t3, s7, gp
                  sra          t5, ra, s10
                  lui          a4, 2738
                  sltu         s8, t5, gp
                  srli         s11, a3, 23
                  sll          s5, a5, s8
                  sra          a4, zero, s6
                  lui          s6, 839137
                  or           s11, s7, s11
                  srl          a4, s11, t4
                  sub          s0, a3, s3
                  srli         s7, s7, 15
                  xori         t0, s9, -1796
                  srli         t1, t6, 9
                  sltiu        s9, s10, -1497
                  srai         tp, s10, 12
                  auipc        a1, 88162
                  slti         t3, a2, -1219
                  auipc        zero, 1036269
                  xor          a6, t4, t0
                  srli         t0, s0, 22
                  slti         s8, a3, -1579
                  srli         s8, a6, 21
                  nop
                  nop
                  slt          t4, a5, zero
                  slti         t3, t2, -456
                  xor          s11, tp, s3
                  andi         t1, t4, -452
                  sll          s1, t4, zero
                  add          s8, t0, zero
                  slli         ra, gp, 30
                  andi         s1, sp, 234
                  sll          s4, s5, s8
                  slti         zero, zero, -984
                  srai         s10, a6, 20
                  ori          s0, a4, -1053
                  slli         s3, s1, 6
                  sltu         sp, t4, gp
                  srai         ra, t4, 17
                  xori         t3, t3, -658
                  slt          s0, t1, a3
                  lui          s9, 974963
                  srai         s2, a6, 21
                  sra          s0, s10, t0
                  nop
                  auipc        s6, 4765
                  sltu         t3, s1, s11
                  xori         a6, s4, 764
                  sll          gp, a0, t1
                  auipc        s5, 170134
                  srl          s3, t3, s2
                  sll          s10, s7, s10
                  xori         s10, zero, -53
                  slt          s8, s3, a6
                  sub          t0, t1, s5
                  srl          gp, t5, tp
                  addi         s5, a7, -1918
                  auipc        s2, 208313
                  sub          t1, t2, s11
                  slt          a1, t6, tp
                  sub          s4, s2, a7
                  andi         s8, s5, 805
                  srl          s8, s0, gp
                  or           t5, a2, t2
                  sll          t6, t4, t2
                  sltu         zero, t4, gp
                  sll          t3, t0, t2
                  nop
                  slli         sp, a4, 6
                  sra          s8, s7, t3
                  srl          tp, s9, s8
                  sll          zero, a4, s6
                  addi         ra, a1, -1105
                  srli         t0, s6, 12
                  sra          s3, ra, zero
                  nop
                  srai         s10, a5, 5
                  sltiu        s9, t2, 1495
                  sltiu        a3, s0, 459
                  addi         a4, a0, -738
                  slt          s8, t3, a2
                  nop
                  add          a1, tp, gp
                  sub          s7, t1, a0
                  sub          a4, s3, t1
                  lui          s7, 160991
                  auipc        s6, 580407
                  slli         a1, a0, 5
                  nop
                  slli         s10, s11, 10
                  srli         s0, t2, 12
                  sll          a0, t5, t4
                  andi         tp, s2, -1904
                  srai         a4, ra, 2
                  slti         t1, s9, -155
                  andi         ra, tp, -504
                  or           gp, t2, s4
                  slt          a4, ra, zero
                  xori         s1, t0, 1795
                  or           tp, s7, gp
                  slli         t5, s3, 20
                  srl          t3, s10, s6
                  lui          s1, 608176
                  addi         zero, tp, 579
                  lui          s11, 737377
                  slti         zero, sp, -1222
                  and          gp, s8, s2
                  sltiu        t5, a7, -1265
                  srl          t3, a0, s7
                  xor          s3, s10, t6
                  srai         s4, sp, 7
                  sltu         s4, a6, tp
                  lui          t0, 1035000
                  lui          t1, 712224
                  andi         zero, a7, 1756
                  andi         s11, s2, 1743
                  auipc        a1, 422533
                  sltu         t4, a7, s5
                  slli         a3, s7, 29
                  sra          t3, zero, s0
                  slt          s1, a4, a4
                  sra          s3, t4, s3
                  slti         gp, s7, -433
                  or           t4, ra, a6
                  srai         a3, s3, 12
                  sltu         s9, zero, t2
                  nop
                  sra          s4, t6, ra
                  sll          s0, s2, s4
                  andi         t5, t6, -1487
                  slli         s7, a2, 17
                  sll          gp, t4, t2
                  sll          s7, t1, t5
                  slt          s1, t6, t3
                  slt          a7, a7, s1
                  lui          gp, 81061
                  xor          a6, s1, zero
                  or           s3, s1, s2
                  slt          t1, a3, s5
                  srl          a6, s5, s2
                  andi         gp, ra, 192
                  addi         t0, s2, -1172
                  srai         s5, sp, 26
                  srl          a1, s7, s6
                  sra          s1, t5, s0
                  xor          s4, s7, ra
                  ori          t1, s11, 1372
                  sra          s3, a4, s2
                  sltu         t0, s5, s4
                  sltiu        t5, s8, -1856
                  srai         a3, tp, 3
                  srl          s8, s6, t5
                  ori          s7, s1, -1194
                  xori         ra, s11, 1537
                  lui          a7, 160739
                  add          t6, t2, s11
                  ori          s3, s0, 621
                  slt          tp, a6, s8
                  slli         a3, a2, 23
                  slti         s8, s0, -1339
                  nop
                  or           gp, a5, a2
                  and          s2, s2, s1
                  addi         t6, t4, 1468
                  sub          t4, a3, s7
                  xori         t6, gp, 1625
                  sra          gp, t6, a5
                  sltu         a3, s4, t6
                  sltu         s11, s10, sp
                  sra          tp, a4, t6
                  or           s4, a6, a6
                  li           s4, 0x4aa9ead1 #start riscv_int_numeric_corner_stream_8
                  li           ra, 0x146ff9ea
                  li           a0, 0x0
                  li           tp, 0x2ba61061
                  li           a3, 0x80000000
                  li           t1, 0xffffffff
                  li           s2, 0x80000000
                  li           a7, 0xffffffff
                  li           t3, 0x80000000
                  li           a4, 0x0
                  nop
                  lui          a3, 33218
                  lui          a0, 573930
                  lui          s2, 730998
                  nop
                  add          t3, s4, tp
                  add          a7, tp, tp
                  auipc        t3, 76384
                  auipc        t3, 78330
                  nop
                  auipc        a0, 123325
                  addi         a7, a3, -1251
                  addi         t3, t1, -1327
                  lui          a4, 991177
                  auipc        s2, 195724
                  nop
                  nop #end riscv_int_numeric_corner_stream_8
                  andi         t1, t1, 1241
                  slti         sp, tp, -1077
                  sll          s10, sp, t2
                  xori         s2, t6, 354
                  xori         tp, t2, -272
                  add          s0, s9, a4
                  nop
                  xori         s1, s10, -1453
                  xori         a6, a6, -1643
                  srl          ra, s8, gp
                  and          s1, s4, gp
                  and          ra, a3, a4
                  lui          s1, 901048
                  slti         s1, t3, -541
                  xor          ra, t3, t5
                  or           t4, s1, tp
                  addi         s2, s10, -423
                  andi         s8, s3, -2028
                  slli         a3, s10, 8
                  auipc        s2, 132458
                  nop
                  xor          t1, s3, a7
                  xor          t5, t4, t5
                  nop
                  slt          s1, tp, s0
                  srli         t5, a4, 11
                  srai         a1, t2, 21
                  slli         s1, s11, 21
                  andi         s11, gp, -309
                  or           a7, zero, s7
                  slt          s0, s9, a0
                  addi         s4, s2, -1489
                  and          zero, a2, s6
                  xor          ra, t1, tp
                  ori          t1, s3, 896
                  sra          a0, a1, a2
                  slli         s4, s6, 13
                  sub          a0, gp, s11
                  sra          s10, tp, a1
                  slli         a7, t3, 30
                  slti         zero, a6, 790
                  slt          s5, a6, zero
                  ori          tp, t2, 1650
                  slli         s0, a2, 10
                  slli         s11, ra, 25
                  sll          gp, s7, a1
                  or           t3, zero, a1
                  sub          s3, t3, t0
                  srli         s5, ra, 29
                  srl          t3, zero, s10
                  sltu         a0, t4, a6
                  xori         t4, a7, -1623
                  and          s2, s1, t3
                  addi         a4, s3, 553
                  andi         s7, s1, -196
                  srl          s8, ra, tp
                  sra          a0, sp, s9
                  sll          s5, t4, t1
                  xor          tp, gp, t5
                  and          a0, a7, a5
                  andi         t3, t6, -1637
                  sltu         a3, gp, s10
                  xor          s7, s1, t2
                  xor          a1, s2, t4
                  ori          a3, a1, -443
                  and          t5, s1, s5
                  slt          tp, tp, zero
                  srai         s4, a0, 31
                  lui          gp, 230323
                  xor          s0, a4, a5
                  sll          ra, a7, s7
                  slli         tp, s5, 25
                  srai         gp, s5, 19
                  srai         s8, tp, 22
                  srli         t0, t2, 27
                  auipc        s11, 966373
                  slli         s10, s4, 9
                  auipc        ra, 288815
                  sltiu        t4, s7, 2011
                  ori          s4, s6, 1176
                  auipc        a3, 215890
                  and          s0, s0, t3
                  sltiu        zero, t2, -872
                  srli         a7, s6, 4
                  sltu         t0, s7, t3
                  srai         t1, tp, 24
                  addi         s6, a2, -901
                  auipc        s5, 181124
                  xori         a4, t4, 138
                  slt          t1, s8, t0
                  auipc        a1, 962522
                  xor          s10, s8, t1
                  add          tp, s11, sp
                  slt          zero, t6, t3
                  xor          s4, a7, t5
                  andi         tp, a0, -1725
                  lui          a4, 812229
                  srai         s3, a2, 11
                  andi         s1, a7, -226
                  lui          t6, 542767
                  xor          s7, s1, a2
                  srl          s10, t3, a0
                  sra          ra, s9, tp
                  slli         t6, s10, 17
                  auipc        a3, 882834
                  or           s11, gp, t1
                  sltu         s0, a0, s8
                  slli         a1, s10, 1
                  slli         s6, a7, 14
                  ori          s7, t1, 344
                  xor          s9, s6, a6
                  auipc        s4, 733658
                  add          a0, a0, s7
                  nop
                  lui          zero, 38205
                  lui          a1, 1044519
                  sltiu        s10, s10, -565
                  srai         sp, a5, 1
                  ori          t5, a3, -640
                  slti         s8, s1, 304
                  sltu         s7, t6, s6
                  andi         s9, s8, -200
                  slli         sp, t4, 18
                  ori          t3, a1, -128
                  nop
                  srli         sp, t3, 11
                  lui          a4, 322471
                  srli         t4, a1, 16
                  sub          tp, a4, s9
                  lui          s11, 1029883
                  sltiu        t4, s5, -716
                  sll          t5, s10, s6
                  srli         t1, a2, 4
                  slt          s9, t5, tp
                  sra          a1, t5, a6
                  slti         tp, a7, -1992
                  lui          sp, 130150
                  slt          s8, a5, s11
                  srli         s9, s7, 27
                  slli         s1, a3, 31
                  slt          t5, s6, ra
                  addi         t1, sp, 429
                  slti         s7, a1, -1003
                  xori         t1, s2, 1492
                  sltiu        s6, s1, 926
                  slt          s7, a1, t4
                  auipc        zero, 274284
                  sltiu        t4, gp, -1594
                  slt          t0, a7, t1
                  sub          s9, s6, s2
                  ori          t0, s5, -1113
                  slli         s5, s5, 29
                  nop
                  xor          a3, s5, s1
                  sltiu        s0, gp, 974
                  srli         s8, s3, 0
                  ori          s10, t3, -514
                  auipc        t3, 122823
                  srli         s0, s10, 7
                  andi         a6, a7, 145
                  sra          s7, zero, s10
                  sub          t1, a6, ra
                  srl          s6, t3, t2
                  srl          t3, zero, s4
                  sltiu        t4, t3, 779
                  ori          s1, a1, -1234
                  ori          a6, a1, -919
                  or           a3, t4, a3
                  andi         ra, s4, -1779
                  andi         zero, a7, -1762
                  srl          s3, s8, s3
                  sltiu        t1, t6, 641
                  andi         t0, ra, -1482
                  auipc        t4, 1022500
                  lui          s9, 387245
                  auipc        ra, 381216
                  andi         s1, a1, 1308
                  sra          sp, t5, s11
                  nop
                  or           sp, tp, gp
                  srl          s10, s1, s4
                  slli         gp, t2, 25
                  nop
                  ori          tp, s4, -1686
                  slt          s10, sp, gp
                  add          s9, t1, t4
                  and          s0, t0, s1
                  sll          gp, t4, s10
                  addi         t6, s8, 636
                  and          s1, s6, s10
                  slti         t6, s1, 1880
                  srli         s6, s3, 16
                  slt          s11, t4, a0
                  lui          tp, 732740
                  andi         tp, t5, 872
                  srli         t5, ra, 25
                  auipc        t3, 963676
                  or           a7, t4, a7
                  xori         t0, t5, 1931
                  sub          t3, s6, s8
                  slt          a3, t2, a1
                  srai         t3, t3, 16
                  slli         sp, t0, 16
                  slt          s2, a1, gp
                  auipc        a4, 260918
                  ori          s4, s8, -1865
                  srl          a7, s3, s4
                  nop
                  slli         t4, a1, 17
                  srai         s9, t5, 22
                  sltu         s1, a0, s6
                  and          s1, s5, a6
                  auipc        a4, 383675
                  nop
                  srli         gp, s3, 5
                  or           ra, tp, ra
                  sltu         gp, s7, t1
                  sll          t6, s3, a5
                  and          s1, a3, a7
                  and          ra, s9, a1
                  and          a6, tp, ra
                  slt          s5, t2, t6
                  andi         s7, a0, -876
                  sltiu        s0, a4, -1887
                  sra          s2, s1, s10
                  srli         s0, s9, 31
                  slti         s6, s6, 498
                  xori         s11, s8, 858
                  srli         a7, a0, 10
                  andi         s2, s3, -1028
                  slli         t1, s3, 2
                  sll          s11, a2, a2
                  sub          tp, a6, t0
                  nop
                  lui          s2, 760873
                  slli         s9, t4, 13
                  srai         t5, a5, 9
                  sub          s10, t1, s8
                  srli         t1, s0, 9
                  slti         a7, s10, 1295
                  ori          s8, t4, -496
                  sltiu        s2, a2, -1575
                  srl          t0, s11, a7
                  srl          a3, a1, tp
                  xori         a6, a2, -545
                  addi         zero, a6, -52
                  sltiu        t6, t1, 1001
                  srli         t5, tp, 20
                  srl          t5, zero, a1
                  add          a3, a7, a5
                  slti         zero, a5, 1826
                  nop
                  and          a7, zero, a4
                  addi         a3, s11, 1616
                  and          ra, a1, a3
                  ori          s10, a7, 1439
                  srl          t3, s1, s2
                  sub          t6, s5, t0
                  xor          a3, s5, zero
                  or           s1, s3, a4
                  add          s8, t1, tp
                  sub          a1, zero, gp
                  ori          tp, s6, 182
                  lui          t3, 33396
                  xori         t1, s8, -408
                  slli         gp, s5, 31
                  xor          a0, t6, a6
                  slti         t6, a2, 204
                  sra          t1, t1, s7
                  xori         s3, s0, -53
                  nop
                  srli         s1, t1, 8
                  sub          t5, sp, a7
                  lui          tp, 268367
                  srl          t4, a4, s11
                  addi         s8, t2, 1299
                  sltiu        a4, s11, -1331
                  slti         s7, a5, 850
                  sra          s3, s9, s4
                  nop
                  sltu         s9, t6, t0
                  or           a3, s0, a5
                  sltiu        a0, t4, -1925
                  sub          t6, s0, t3
                  nop
                  lui          ra, 885312
                  slti         t3, s1, -334
                  xor          gp, t0, tp
                  auipc        a3, 94316
                  slt          s9, s7, t6
                  or           s2, t1, t6
                  or           s1, a7, a7
                  auipc        a6, 556706
                  srai         s5, t0, 17
                  and          s2, s8, tp
                  sltiu        t5, a3, 414
                  srl          s6, ra, s5
                  sltu         s0, s6, t3
                  sltu         a6, t0, t2
                  andi         t0, a1, 618
                  sll          t4, s1, s6
                  and          a7, gp, s6
                  add          s10, a2, s1
                  and          a4, a4, t3
                  slt          s4, zero, s4
                  xor          s4, a1, t3
                  sub          s9, s2, t3
                  and          gp, t2, t1
                  xor          a6, t3, a4
                  slli         a3, s5, 5
                  srai         s5, tp, 1
                  xori         t1, a1, -373
                  ori          gp, t3, 1496
                  ori          a3, gp, -858
                  sltiu        s7, a5, 1196
                  xori         s5, s0, -2016
                  srai         s8, zero, 26
                  sltiu        s7, t2, -1588
                  nop
                  add          s6, zero, s11
                  add          a4, t6, s5
                  sra          s7, s8, t4
                  srli         tp, s0, 14
                  sltu         s5, s7, a4
                  addi         a4, s4, -532
                  sra          s3, s3, s4
                  andi         a0, t0, 1469
                  auipc        a1, 898446
                  add          gp, s3, s2
                  andi         s7, t0, -1670
                  or           t6, a3, s9
                  add          s5, a5, s7
                  addi         s2, zero, 1385
                  add          s6, a2, s4
                  sltu         s0, zero, tp
                  xori         t5, s8, -99
                  xor          zero, t2, s7
                  srli         a7, s2, 30
                  slli         s10, a1, 31
                  sll          t5, a6, s0
                  srai         a4, s4, 19
                  or           s1, a7, s3
                  sra          zero, sp, tp
                  slli         a4, s0, 23
                  srl          a3, s11, t1
                  andi         t6, s0, 429
                  or           a0, zero, t5
                  addi         s8, ra, -1948
                  sltu         a1, t3, s0
                  slti         s10, s1, 1182
                  slti         a1, sp, -434
                  srai         s9, a1, 19
                  xori         zero, a0, -636
                  slt          a1, a3, t5
                  srli         s11, a6, 15
                  sltiu        zero, s4, 1566
                  xor          ra, t2, gp
                  add          s9, a4, s8
                  srli         s7, a6, 11
                  addi         s11, sp, 1015
                  sltu         s4, s7, t6
                  add          s4, sp, a7
                  or           s9, t6, sp
                  or           a6, s2, zero
                  nop
                  slt          a1, t4, ra
                  sub          zero, a7, a0
                  slt          s11, t3, zero
                  slt          s4, s1, zero
                  or           s8, s1, a0
                  lui          ra, 47116
                  lui          s3, 636439
                  slti         s7, t6, -767
                  xor          s4, s1, a3
                  srl          s1, a5, a1
                  srl          zero, a7, tp
                  or           gp, sp, a4
                  nop
                  auipc        ra, 1015986
                  srli         a0, t0, 14
                  add          t3, s7, zero
                  srli         t1, t2, 31
                  slli         a7, sp, 12
                  sltu         s6, t2, s2
                  lui          s7, 95721
                  slti         t1, gp, 1147
                  or           s11, a4, a2
                  srl          a0, a4, t0
                  slli         s11, gp, 1
                  slt          t3, t5, a1
                  andi         s4, t4, -345
                  auipc        s2, 775314
                  xori         a1, s0, 95
                  or           t6, s0, s10
                  xori         t4, s6, 139
                  sltu         a4, a4, ra
                  lui          s6, 930493
                  srai         a3, s7, 13
                  nop
                  sra          t6, s4, t4
                  slli         s0, s5, 13
                  or           a0, t5, s7
                  lui          s10, 890354
                  sra          tp, a4, a1
                  srl          t1, gp, a2
                  sra          s3, s7, t5
                  srai         zero, a4, 4
                  and          s4, tp, s3
                  srai         t0, s6, 15
                  sltiu        s2, tp, -1814
                  ori          t6, t6, 1052
                  nop
                  srli         a7, t5, 7
                  or           t0, a3, a3
                  nop
                  slli         a6, t3, 29
                  nop
                  xori         s4, s9, -98
                  sub          s8, s7, a2
                  and          a6, tp, a4
                  and          a0, a2, s3
                  sltiu        t4, s0, 1816
                  or           sp, t3, sp
                  and          s6, s8, t2
                  xor          s10, t3, sp
                  srai         s9, s10, 7
                  slti         s0, s8, -810
                  slli         t1, s11, 25
                  nop
                  srai         t4, s1, 16
                  sltu         s0, t1, s7
                  and          s7, a1, a6
                  and          t1, s6, a5
                  xor          t0, t6, s5
                  addi         tp, s1, 417
                  srl          s4, a5, ra
                  sll          tp, gp, t6
                  or           s5, a5, a2
                  sltu         a4, a0, s8
                  sltiu        t6, s1, 616
                  sltu         sp, s8, zero
                  nop
                  add          a4, t1, s0
                  lui          t5, 720553
                  nop
                  add          s7, s5, s8
                  srli         t5, t0, 7
                  addi         s7, s1, -768
                  sub          zero, a6, s10
                  srl          s3, t4, a1
                  lui          s5, 571255
                  or           a7, s5, t5
                  sltiu        s11, a7, -1925
                  sll          t6, a2, t0
                  addi         t6, s9, -1884
                  sltiu        a7, s11, 1154
                  and          zero, t5, sp
                  slt          s1, a3, s11
                  sra          ra, sp, t1
                  xori         s5, s2, 980
                  srl          t3, s0, gp
                  auipc        gp, 211306
                  slt          gp, sp, a2
                  sltiu        s7, s2, -239
                  addi         s3, s4, 1615
                  xori         gp, s10, -977
                  xori         s0, t1, -1041
                  ori          zero, s10, 949
                  sll          a1, s6, s5
                  srl          a3, a1, a6
                  sub          s0, t2, a3
                  slli         t5, t3, 9
                  sltiu        s2, s3, -2006
                  sll          t0, a5, a4
                  ori          tp, a2, -2013
                  andi         s7, tp, 654
                  nop
                  slti         zero, s8, 886
                  xori         t4, a6, -1917
                  sltu         sp, t0, s10
                  or           t1, a2, sp
                  sra          s7, s6, t2
                  xori         s1, zero, -1897
                  sll          a4, s10, s1
                  sltu         a1, s2, s5
                  add          tp, t4, s8
                  add          s1, a3, a3
                  slli         s11, t1, 21
                  slli         s8, sp, 16
                  slti         s2, t6, -1097
                  lui          a7, 302467
                  slt          t1, s2, a6
                  addi         s8, s2, 1291
                  nop
                  andi         s9, sp, -788
                  andi         s5, a4, 1457
                  addi         s8, s4, 1902
                  srli         sp, s11, 9
                  sra          s3, s5, s9
                  slt          s9, a3, t2
                  sub          s2, a6, ra
                  add          t1, s7, zero
                  slli         a4, t1, 5
                  sll          s7, ra, a4
                  auipc        s1, 1310
                  xor          gp, s4, t6
                  slli         s8, a3, 28
                  sub          a0, s4, a3
                  sltu         t3, s6, a1
                  srl          s11, s0, s9
                  srl          s11, s6, s2
                  andi         a1, s6, 1919
                  sra          a6, zero, s6
                  slt          s2, a4, t2
                  srl          a1, t4, t0
                  nop
                  sra          t4, t3, zero
                  sra          sp, s4, a5
                  auipc        s11, 107770
                  srl          s4, t1, t1
                  xori         tp, t2, -942
                  addi         s2, t5, 442
                  ori          s5, t1, 444
                  srli         tp, zero, 25
                  sll          t4, t1, s11
                  ori          t6, t3, -977
                  andi         a3, t0, 2014
                  srl          s7, t3, sp
                  xori         tp, s0, -289
                  auipc        sp, 554098
                  sra          s1, s5, gp
                  sltiu        s2, s1, -1981
                  or           a6, a1, s3
                  srli         t4, s11, 11
                  or           s3, t2, a0
                  xor          ra, a7, sp
                  xori         a0, s6, 917
                  slt          t1, t1, t5
                  sub          t6, s8, tp
                  auipc        s8, 447831
                  and          zero, t2, s6
                  slti         s6, sp, -1833
                  addi         s0, s0, 1725
                  sra          t4, s1, a4
                  lui          a3, 742107
                  sltu         s0, s9, t5
                  nop
                  auipc        zero, 122078
                  sub          s11, a4, a5
                  slti         a6, a6, 1440
                  sub          a1, s11, t5
                  or           t6, s8, ra
                  addi         a0, s2, -1347
                  lui          sp, 598643
                  or           s4, s1, s7
                  andi         a6, a1, -1901
                  sltiu        t0, a1, 1734
                  slt          gp, s5, ra
                  or           t6, t1, a7
                  nop
                  lui          a1, 72285
                  sll          s0, s0, s10
                  slli         a4, t2, 25
                  add          t0, s4, t2
                  addi         a3, a4, -399
                  ori          t6, s8, 787
                  ori          a0, t0, 1401
                  add          t4, s7, s1
                  xor          t1, ra, tp
                  sltiu        s9, t2, 166
                  slti         s2, s8, 631
                  sub          a3, t6, tp
                  srai         s3, a6, 22
                  sub          s8, t2, t4
                  or           s4, s10, a0
                  sub          s4, a2, gp
                  ori          zero, s6, 912
                  xori         s7, s10, -1291
                  nop
                  lui          t4, 787529
                  sll          a1, t6, t5
                  lui          a4, 665869
                  slti         a4, a5, 2029
                  add          s0, t5, t3
                  sra          t6, s9, tp
                  srl          tp, s11, a3
                  lui          s8, 1017542
                  srli         s5, a6, 6
                  slt          s6, s8, a6
                  srli         gp, s2, 1
                  slt          s8, t3, s9
                  nop
                  srli         s6, a2, 8
                  xor          ra, a4, a2
                  addi         a1, a1, 1633
                  xori         s7, a2, -1616
                  addi         t0, t1, 1793
                  sra          t3, s2, s4
                  srl          a6, s7, s0
                  nop
                  slti         s5, a0, 1340
                  add          t6, s8, s6
                  and          t5, s10, t3
                  and          s2, tp, t3
                  srli         a0, a7, 21
                  srli         s0, a2, 3
                  sll          s4, a6, ra
                  sltu         t6, a1, t6
                  srl          s0, t1, t2
                  nop
                  sub          s5, s1, a2
                  addi         a4, s10, -1557
                  sra          s1, a0, ra
                  xori         s5, tp, 906
                  srai         a3, sp, 26
                  add          sp, s4, a6
                  sltiu        zero, t3, -210
                  sltiu        zero, s0, 92
                  and          t4, a5, tp
                  sra          s3, s8, t2
                  and          a0, t5, t3
                  slt          sp, a5, s1
                  add          gp, s3, sp
                  srai         s0, s2, 17
                  slt          a6, a6, a0
                  sltiu        s7, s2, -1170
                  xor          a7, a4, t0
                  xori         t6, s2, 1572
                  auipc        s3, 117491
                  sltu         a6, t6, sp
                  sltiu        t0, gp, 1665
                  or           a3, s1, t5
                  xor          s5, s2, zero
                  andi         t1, a4, 738
                  sra          s6, t3, t5
                  slt          sp, t1, s5
                  slli         s3, s9, 10
                  slt          gp, a5, s11
                  xor          ra, s3, a7
                  lui          a6, 1009041
                  sub          s7, sp, t2
                  sra          s4, t4, a2
                  srl          s4, t0, a7
                  ori          t4, t5, 1063
                  addi         s3, a1, -706
                  sra          s2, t6, s9
                  and          ra, s0, t6
                  lui          t6, 680881
                  and          s0, t1, s3
                  sll          t1, s9, s0
                  xor          gp, s8, t4
                  sltiu        s5, sp, 215
                  slli         a7, t3, 5
                  xor          zero, sp, a2
                  xor          a1, t4, a7
                  slli         a6, a5, 30
                  srai         s2, t3, 11
                  srli         t5, t1, 2
                  and          s9, sp, a0
                  and          a4, s9, t6
                  addi         s10, a2, -1261
                  xor          s5, t5, s9
                  or           s1, t0, s9
                  slli         t6, s6, 23
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           s9, 0x0
                  li           s3, 0xffffffff
                  li           a4, 0x0
                  li           s5, 0x80000000
                  li           a7, 0x0
                  li           a3, 0xffffffff
                  li           s1, 0x7fedaa8d
                  li           sp, 0x0
                  li           s6, 0x3d0ca1b1
                  sub          sp, s1, s1
                  lui          sp, 638316
                  nop
                  sub          s5, a4, s5
                  nop
                  nop
                  nop
                  add          s1, s7, s6
                  addi         a7, s9, 1594
                  add          s3, a4, a4
                  nop
                  addi         a3, a7, -1104
                  addi         s9, s7, -1990
                  lui          s7, 604433
                  nop
                  sub          a7, s6, s5
                  nop
                  sub          s6, s6, s3
                  auipc        a7, 127392
                  auipc        s9, 629056
                  addi         a3, s1, -730
                  add          a3, a4, a3
                  nop
                  addi         s9, s1, -80 #end riscv_int_numeric_corner_stream_32
                  srai         s0, s7, 27
                  ori          a6, s6, -643
                  sltiu        s0, s0, -591
                  sll          a3, t5, t4
                  auipc        s8, 81973
                  xor          a4, s2, s0
                  or           s9, t3, t1
                  slt          s5, a4, a7
                  sll          a1, t1, s2
                  nop
                  srli         zero, a0, 16
                  sra          t0, s6, s2
                  slti         t3, s2, -1977
                  slti         sp, s8, 1014
                  srai         s1, a5, 10
                  srai         t0, a6, 25
                  add          a4, s9, s1
                  and          ra, tp, s8
                  xori         t1, gp, -417
                  lui          ra, 237761
                  addi         s0, gp, 1683
                  sltiu        a4, a6, 2015
                  nop
                  sltu         s0, s3, s1
                  addi         t6, t0, 1938
                  srli         a0, t0, 9
                  slli         t6, s10, 25
                  sltiu        s6, t0, 976
                  auipc        s8, 794003
                  sltu         s4, s5, a7
                  ori          a4, sp, -1036
                  sltu         s4, zero, a6
                  ori          a1, a4, 1463
                  add          a4, t4, s0
                  sub          s11, s10, a0
                  lui          t5, 825300
                  xori         tp, s11, 1956
                  srl          a3, s9, s8
                  sltiu        tp, t4, 566
                  lui          t6, 83754
                  auipc        s4, 355610
                  sltiu        a6, s1, 263
                  sltiu        ra, s5, -797
                  andi         gp, sp, -597
                  nop
                  ori          s0, s11, -207
                  slli         s10, s7, 28
                  auipc        t6, 721266
                  slli         a1, zero, 28
                  or           s8, s0, s10
                  slt          a4, a6, s3
                  xori         s11, a1, 206
                  andi         a4, s11, -1155
                  srl          s5, a1, s9
                  or           a6, t0, a3
                  xori         s8, a1, -1998
                  xor          a3, t3, gp
                  sub          s7, s0, a6
                  srai         s6, a3, 11
                  nop
                  ori          a6, t2, 401
                  sra          s2, a2, s8
                  srli         s7, s4, 6
                  add          t5, s9, a6
                  xor          sp, s6, t1
                  sra          s2, t0, a7
                  or           t0, s11, a1
                  srli         s8, s5, 20
                  sra          zero, t3, t5
                  ori          s5, t1, 1183
                  slti         s1, a6, 1133
                  xor          s0, gp, sp
                  nop
                  lui          t3, 589870
                  slt          s1, s2, t5
                  sub          t3, a6, zero
                  and          sp, s11, t1
                  andi         s6, s1, -771
                  srl          a3, s5, t6
                  slti         s6, ra, -698
                  xor          t6, s8, zero
                  slt          zero, t3, gp
                  sll          s7, s1, a6
                  addi         tp, a5, 378
                  slti         a4, s1, 895
                  and          a7, s9, s5
                  ori          a4, s8, 689
                  auipc        s1, 585426
                  nop
                  srl          t4, t2, s7
                  addi         s9, gp, -1775
                  andi         sp, s2, -649
                  lui          a6, 150662
                  or           s2, t0, a6
                  addi         t5, a2, -66
                  or           s5, s5, ra
                  xori         a4, t2, 560
                  sra          t0, a6, a0
                  add          zero, t1, s7
                  xor          sp, a5, a1
                  sra          s7, a5, t2
                  add          s2, s9, t1
                  or           s8, s8, s1
                  add          s7, s9, t4
                  nop
                  sra          s10, t5, t3
                  sltu         sp, s8, a1
                  add          gp, s9, s8
                  slti         t0, s1, 1794
                  slti         t0, a2, -722
                  slli         t0, t1, 14
                  sltiu        a1, t2, -1698
                  sub          a6, a5, s3
                  auipc        ra, 504778
                  and          t4, a1, ra
                  slli         tp, a0, 10
                  slt          s7, s9, a6
                  slli         s6, s5, 31
                  sub          zero, t1, tp
                  or           t1, s2, sp
                  ori          s7, tp, 1069
                  sltiu        t5, s7, 361
                  ori          a6, t3, -1178
                  addi         tp, s2, -765
                  slt          s4, t1, t3
                  add          s2, s4, a7
                  ori          t6, s1, -461
                  andi         a3, t3, 787
                  sub          t5, s8, s9
                  xor          s5, sp, t4
                  srl          gp, t6, t4
                  srai         a7, s10, 23
                  lui          sp, 134240
                  sub          t6, s4, s10
                  sltiu        t1, t6, 1163
                  andi         s6, s10, -18
                  nop
                  slti         t6, a3, 1659
                  lui          sp, 502984
                  sub          sp, t6, s6
                  sra          t3, t3, a3
                  or           t5, s11, a3
                  andi         s7, s0, 550
                  srl          tp, a4, ra
                  srai         s2, a3, 8
                  slt          t0, t2, s6
                  sra          s6, s8, t2
                  ori          ra, a7, -1236
                  srli         a1, t5, 20
                  xori         a0, t5, -352
                  slli         ra, t0, 9
                  srl          s0, s0, s7
                  slli         s0, s7, 11
                  xori         tp, a1, -348
                  slli         t3, s2, 3
                  sltu         t4, a6, a5
                  and          sp, s8, ra
                  srl          a4, t3, s6
                  nop
                  addi         t6, t0, -1346
                  add          t1, zero, zero
                  sltu         t5, sp, s2
                  and          a1, a2, a4
                  slli         s7, gp, 31
                  add          t0, zero, s9
                  xor          s5, a3, s2
                  xor          s10, a3, a4
                  add          s2, a6, a5
                  srli         s8, s2, 6
                  xor          t4, s4, zero
                  xori         t0, sp, -370
                  xor          t6, t2, t1
                  auipc        s11, 824235
                  sltu         s0, s10, t1
                  slli         sp, s11, 18
                  slt          tp, tp, s3
                  addi         s9, a7, 1545
                  slti         s10, t5, -832
                  sltu         t4, t6, t4
                  slti         zero, t0, 583
                  nop
                  addi         t4, a4, -850
                  sll          t0, t5, s4
                  slli         a0, s6, 23
                  sra          t1, s3, s3
                  sltiu        s7, t4, 54
                  addi         a3, s1, 1028
                  sltiu        a7, t2, -179
                  xor          s11, a7, ra
                  ori          s7, t3, 1469
                  xori         s0, s3, -438
                  sub          gp, s6, s10
                  sra          s0, a7, a2
                  lui          s11, 440885
                  slti         s11, s9, 901
                  ori          gp, a0, -431
                  andi         s7, s10, -1980
                  ori          gp, gp, 183
                  sltu         s5, t1, a3
                  and          s7, t6, gp
                  srli         s5, t1, 10
                  slli         a0, s8, 25
                  sll          t3, s3, a2
                  addi         t4, t6, -120
                  srli         t1, a7, 25
                  andi         a7, a1, -58
                  xor          t6, t4, a3
                  ori          a7, s7, 194
                  and          t0, s7, t1
                  srl          s7, a2, s2
                  auipc        a0, 383481
                  slli         zero, s3, 13
                  andi         a0, a0, 972
                  or           a4, t5, s2
                  slt          s4, tp, s8
                  addi         s5, a4, 261
                  srl          s1, a3, t0
                  srli         s9, a6, 25
                  sltiu        a4, t5, 406
                  andi         s4, s9, 743
                  srl          t0, a2, t4
                  srli         s3, s5, 10
                  slli         s0, s3, 0
                  sltu         a0, s11, a4
                  xor          sp, zero, t6
                  sll          a4, s8, a1
                  slli         t4, s8, 23
                  sltiu        t5, s4, -1820
                  srl          t5, s3, s4
                  and          s9, s8, a7
                  xor          zero, s0, s3
                  andi         t0, s0, -1159
                  slti         s3, s1, -1173
                  sub          a3, s4, t5
                  andi         s7, s11, 1273
                  slt          a1, a7, a0
                  sltiu        gp, a2, 427
                  sltiu        ra, s11, 1404
                  srli         s6, a0, 28
                  lui          t5, 971838
                  and          t1, a3, t4
                  sll          s10, t1, ra
                  and          s11, gp, t0
                  lui          tp, 783677
                  sltu         sp, a7, s0
                  srl          t4, a1, zero
                  xor          s6, s11, ra
                  sub          t4, t1, a6
                  sltu         t3, tp, s8
                  slti         a4, s10, 186
                  sra          a3, a7, t5
                  sll          s1, gp, s8
                  sra          s1, a1, t2
                  or           t5, s11, s7
                  sltiu        s2, s0, 4
                  auipc        a1, 457214
                  addi         sp, s11, 1851
                  sltu         s4, s7, t0
                  slt          a7, a4, s8
                  nop
                  lui          t3, 415079
                  sra          a6, s10, t2
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_39
                  li           t5, 0x80000000
                  li           sp, 0x0
                  li           s8, 0x80000000
                  li           t6, 0xffffffff
                  li           a3, 0x80000000
                  li           a4, 0x0
                  li           gp, 0xffffffff
                  li           a6, 0x0
                  li           s10, 0xffffffff
                  sub          a6, a6, a6
                  add          s8, s8, s8
                  sub          s4, gp, a4
                  nop
                  lui          gp, 854141
                  add          s4, t5, t6
                  addi         t6, s8, -432
                  nop
                  auipc        s8, 900841
                  add          sp, a6, t5
                  addi         gp, s4, -1853
                  add          t5, s8, a6
                  lui          s10, 747650
                  add          sp, a6, gp
                  addi         gp, s10, -694
                  lui          gp, 896650
                  nop
                  auipc        s4, 673114
                  addi         t6, s4, 2047
                  addi         s8, t6, 351
                  auipc        sp, 347971
                  addi         a3, s4, -1
                  auipc        a4, 987504
                  lui          s10, 775141 #end riscv_int_numeric_corner_stream_39
                  srli         gp, t6, 9
                  slt          s2, s10, s9
                  sltiu        gp, sp, -126
                  addi         a3, t6, -1367
                  lui          s0, 928062
                  slli         a6, gp, 26
                  sltu         a3, t5, a5
                  nop
                  sll          s4, gp, t6
                  lui          tp, 991084
                  andi         s2, a1, -129
                  sltiu        t6, t3, 629
                  andi         gp, a2, 2047
                  lui          s2, 198456
                  srli         s3, t3, 6
                  andi         tp, s0, -633
                  srai         s2, t3, 16
                  addi         t0, s2, 1980
                  srl          t4, s7, s7
                  nop
                  xor          s11, s9, s1
                  sra          a7, t5, zero
                  ori          a6, s0, 1404
                  xor          s6, a7, s1
                  and          a6, s1, a0
                  add          a4, a5, s2
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_34
                  li           s8, 0x80000000
                  li           s11, 0x0
                  li           ra, 0x80000000
                  li           gp, 0x80000000
                  li           s0, 0x659d59ba
                  li           s7, 0xffffffff
                  li           sp, 0x80000000
                  li           s6, 0xbcc2f75a
                  li           a1, 0xffffffff
                  nop
                  addi         s7, s8, 366
                  lui          s0, 54293
                  add          s0, sp, ra
                  add          t5, s7, s0
                  addi         ra, t5, -477
                  addi         t5, s8, 603
                  auipc        s8, 857220
                  addi         s8, ra, 271
                  lui          s0, 115118
                  lui          ra, 861507
                  lui          s7, 776777
                  sub          a1, s6, s6
                  add          s0, sp, ra
                  lui          s8, 825120
                  lui          s0, 289634
                  lui          s0, 243274
                  add          t5, s11, s11
                  addi         a1, sp, 880
                  lui          s11, 358004
                  nop
                  auipc        sp, 56893
                  sub          s11, a1, a1
                  nop
                  lui          s0, 150936
                  auipc        a1, 395184
                  nop #end riscv_int_numeric_corner_stream_34
                  and          sp, s3, s3
                  srl          t3, a2, t3
                  srl          t5, t5, a3
                  or           t4, t6, s3
                  auipc        a3, 508343
                  srl          a3, s10, s6
                  nop
                  addi         a0, s3, -1488
                  lui          a0, 55307
                  nop
                  or           a1, a3, s10
                  add          t0, sp, tp
                  sltu         a4, s11, a3
                  srl          a3, s3, a0
                  slti         gp, ra, -1105
                  sub          a4, t0, ra
                  sub          t1, t5, t1
                  or           s6, s10, t1
                  addi         s8, t6, -1645
                  sub          s4, a0, a7
                  xori         t0, s4, 429
                  sra          s11, s9, s9
                  slt          zero, t3, s5
                  slli         zero, t5, 10
                  or           s7, s11, s2
                  slt          s10, a4, t0
                  slti         s9, gp, -1570
                  srai         s2, a7, 18
                  nop
                  xor          s7, s5, t3
                  sra          s7, s6, s0
                  nop
                  srl          a3, gp, t1
                  add          a4, a3, ra
                  nop
                  ori          a4, ra, 1967
                  slti         s1, s0, 230
                  srl          tp, s1, t5
                  and          ra, t5, tp
                  xor          t1, a3, tp
                  addi         s9, s2, -579
                  sra          t5, s8, a6
                  sra          tp, t4, t4
                  srli         s11, s3, 24
                  auipc        t6, 502354
                  addi         t0, a3, 610
                  xor          gp, sp, zero
                  srai         t4, s2, 31
                  auipc        sp, 31567
                  slt          t3, t2, t6
                  sra          s5, ra, sp
                  sltiu        zero, s5, -1891
                  auipc        gp, 617190
                  addi         s5, s2, -1063
                  srl          t5, ra, a3
                  addi         gp, s4, -393
                  sltiu        s0, s9, 906
                  add          s8, sp, s6
                  sltiu        s7, t6, -1401
                  slli         s6, ra, 30
                  sltiu        s8, t0, 1206
                  auipc        s11, 573024
                  addi         a6, t1, 838
                  lui          t1, 974697
                  or           a4, ra, a1
                  srl          s0, s9, a1
                  addi         a4, a3, 1481
                  or           sp, ra, s0
                  sub          s7, a3, t5
                  sll          s10, t2, s2
                  or           s3, s8, gp
                  nop
                  sltiu        t0, a2, 1887
                  sub          t3, s8, s10
                  addi         s2, s9, 436
                  srli         s1, s10, 16
                  sltu         t1, a2, s4
                  lui          sp, 234104
                  slt          s10, t5, tp
                  slti         s8, gp, 2032
                  slli         s1, s1, 31
                  sltiu        ra, ra, 525
                  ori          s7, s4, 168
                  lui          a0, 815203
                  lui          t3, 338508
                  sltiu        gp, ra, 364
                  sra          zero, gp, s2
                  lui          tp, 475569
                  lui          a4, 190051
                  sltu         t4, sp, tp
                  sub          t5, a1, a1
                  sub          sp, s7, s2
                  srl          t1, s9, s7
                  slli         t3, s6, 18
                  srai         s11, a0, 15
                  slt          a7, s4, s7
                  xori         s0, sp, 521
                  srai         a1, a5, 16
                  addi         a4, a4, 683
                  sub          s3, t3, a6
                  slti         s5, tp, -519
                  srl          t3, s0, s2
                  ori          s2, t4, 1833
                  add          a4, ra, t2
                  and          a4, s1, sp
                  andi         s7, s11, -892
                  lui          a7, 935177
                  and          a7, s9, zero
                  addi         zero, t4, -242
                  sltu         tp, a3, t0
                  andi         s10, t6, 1594
                  or           s9, t6, a3
                  sra          a7, a2, s4
                  sltu         s9, zero, s11
                  or           s11, a1, a4
                  srli         t0, s2, 7
                  add          s10, s0, a0
                  or           a6, s1, s2
                  xori         t3, t6, 1285
                  sub          a3, s4, s9
                  sltiu        t6, s0, -637
                  slli         zero, a6, 8
                  xor          a4, s5, t6
                  srli         a4, a0, 2
                  ori          t6, gp, 1367
                  sltiu        s7, s5, -1344
                  srli         s7, tp, 5
                  sltu         s10, s1, t1
                  sub          s6, a0, s2
                  slt          t4, s3, s9
                  srai         ra, t5, 23
                  or           s11, ra, s11
                  sltiu        sp, s4, -51
                  or           a1, s0, s5
                  andi         sp, s0, 682
                  and          tp, a3, s9
                  nop
                  and          s3, t5, a7
                  xori         a6, a6, -403
                  xor          gp, a2, s11
                  and          s4, a7, s8
                  sra          a0, zero, a5
                  xori         s0, tp, -408
                  auipc        t6, 64819
                  ori          s9, t2, 302
                  andi         zero, s7, 314
                  srli         s3, ra, 28
                  lui          t5, 825464
                  slt          t4, t3, t0
                  addi         s9, a1, -52
                  sltiu        a1, s8, 301
                  ori          t3, t0, -2040
                  srai         s2, gp, 4
                  ori          zero, s9, 1237
                  sra          s7, a1, t4
                  andi         s9, s2, 689
                  slti         s8, s4, -687
                  slt          s1, a6, t4
                  andi         t3, gp, 2043
                  addi         a0, s6, 575
                  sra          s8, t1, a1
                  auipc        s2, 520545
                  sll          s7, s11, a6
                  lui          t6, 124182
                  sub          s4, a5, ra
                  xori         s11, a1, 1536
                  ori          t3, a0, -1739
                  srai         a3, a0, 1
                  slt          ra, s8, t4
                  add          s9, s7, s7
                  addi         ra, s0, 1387
                  add          s9, a1, s2
                  slli         t0, ra, 0
                  or           a0, zero, tp
                  sll          s1, a6, t6
                  xori         s11, s2, 1639
                  xori         s0, ra, -1237
                  add          s4, s10, t2
                  or           t4, gp, s7
                  xor          a7, s6, s11
                  sltu         s0, gp, a2
                  addi         s1, s7, 1568
                  sra          s9, a3, s7
                  addi         tp, gp, 1461
                  ori          t4, a0, 948
                  lui          s4, 559918
                  srai         s7, s7, 26
                  srl          s8, t5, ra
                  srl          s5, t0, t4
                  sltu         zero, s10, s7
                  slt          t4, s11, zero
                  nop
                  nop
                  srli         sp, s8, 1
                  slt          a6, tp, t5
                  add          a3, t2, t4
                  xor          sp, t1, gp
                  xor          t0, gp, sp
                  lui          t3, 866029
                  ori          zero, ra, -1950
                  sll          s6, a7, a2
                  xor          a1, s6, s7
                  auipc        sp, 812031
                  and          zero, t1, t5
                  addi         t1, a2, 1538
                  slt          a6, t0, ra
                  xor          s3, ra, s3
                  slti         s4, tp, -553
                  auipc        s6, 330520
                  and          zero, t4, s8
                  sll          a0, a3, a7
                  or           gp, ra, t0
                  sltu         s10, s11, s10
                  xor          gp, s5, t3
                  slti         a7, zero, 1223
                  srl          tp, s10, t0
                  sub          gp, t5, s3
                  srl          t0, t3, zero
                  slt          t0, s7, tp
                  slti         tp, zero, -2042
                  andi         s6, gp, 140
                  xori         a3, ra, 75
                  and          a1, s6, s2
                  sra          gp, t1, s3
                  xor          s5, a0, s6
                  sltu         a3, s10, a5
                  srli         s5, t6, 28
                  srl          a3, s3, s11
                  andi         s2, s7, 1736
                  sub          tp, a4, t2
                  or           a0, s6, s7
                  ori          s0, s6, 1292
                  ori          gp, s8, -1413
                  sll          a4, a0, a1
                  add          s4, tp, s2
                  and          t5, s4, t2
                  sltiu        s2, t2, -1725
                  sltu         s9, s11, s2
                  srai         s0, t3, 8
                  slti         s7, s9, -1336
                  sll          t1, s6, a6
                  add          a1, s0, zero
                  add          s4, s10, ra
                  xori         a0, s1, 1095
                  auipc        t1, 821973
                  xori         a6, a2, -1343
                  sll          s2, t0, s11
                  ori          t5, a7, -1317
                  srai         s3, t4, 30
                  slli         t6, s3, 7
                  or           s8, a3, s8
                  slt          t3, t6, s2
                  or           sp, s3, s8
                  srli         a0, a7, 17
                  slti         tp, t0, -453
                  slti         s6, t4, -1769
                  srl          s9, s0, s6
                  slt          t6, sp, t1
                  sltu         t0, s10, s5
                  srl          s10, sp, s5
                  andi         s11, s0, 1101
                  nop
                  addi         a3, s5, -222
                  srl          s5, s5, a3
                  sra          s3, s7, s8
                  srli         s1, a5, 21
                  srl          s6, a3, s9
                  xori         t6, s8, 1977
                  sll          s10, s11, sp
                  sltu         a3, ra, s0
                  sll          t5, a4, s1
                  slti         t5, s7, 982
                  sltu         t4, s8, t6
                  sltiu        s2, s9, -1174
                  slt          s7, s2, s8
                  sltiu        s2, t0, 555
                  xor          s2, t2, tp
                  sub          s7, a4, a3
                  slti         t5, t3, 1667
                  sltiu        s9, sp, -124
                  auipc        s2, 634859
                  slt          a4, zero, ra
                  sll          t0, ra, s3
                  slt          s10, a0, s0
                  ori          t5, t2, 1860
                  andi         s9, t0, 663
                  lui          t0, 978395
                  sltiu        s11, s7, 1712
                  srl          s11, s5, s8
                  and          s5, s5, a7
                  srl          t1, t6, a1
                  sltiu        t4, a2, 820
                  srai         a3, a3, 25
                  or           tp, t6, s1
                  xor          a6, a0, a2
                  nop
                  srl          a3, a2, s2
                  sll          zero, t4, ra
                  and          t4, s10, t0
                  sub          t6, t6, tp
                  add          a0, a7, s3
                  andi         gp, t4, 556
                  srl          zero, t4, zero
                  addi         gp, tp, -1908
                  xor          a7, a6, t3
                  sltiu        s4, a0, -374
                  slti         a4, s11, -397
                  srai         gp, t5, 28
                  andi         t5, s9, 1639
                  auipc        ra, 662580
                  slti         a0, a0, -1880
                  add          tp, sp, a5
                  lui          a0, 862248
                  xor          t5, a4, t1
                  sll          s11, s5, s7
                  xori         ra, t2, -1208
                  slli         s10, s8, 27
                  auipc        t5, 450681
                  lui          tp, 922210
                  sub          gp, s9, t1
                  andi         s8, sp, -473
                  xori         s4, a6, -1931
                  sll          t3, a6, tp
                  srl          s9, a3, a2
                  add          t5, s4, s11
                  sub          s1, t6, a7
                  nop
                  nop
                  srai         t6, s8, 22
                  andi         s1, ra, -1560
                  andi         s6, s7, -1852
                  slli         s6, s10, 0
                  sub          a6, s8, a4
                  xor          a7, s10, a5
                  addi         s10, s0, 321
                  ori          a1, t2, 206
                  slli         t6, a0, 30
                  sll          s7, t3, gp
                  auipc        s10, 862909
                  add          ra, zero, s3
                  srai         gp, a1, 30
                  sra          gp, s8, t6
                  auipc        s6, 261487
                  auipc        a4, 170341
                  sub          zero, t4, a0
                  andi         a0, a4, -341
                  sra          t5, s3, s11
                  andi         s9, t4, -2000
                  add          a0, a2, s5
                  and          a3, t2, ra
                  nop
                  srai         s3, s7, 25
                  ori          a3, t5, -1348
                  sra          s6, s7, a5
                  auipc        zero, 474359
                  sltiu        s8, s4, -426
                  lui          sp, 699942
                  sll          t0, a1, t0
                  slti         t1, a5, 1454
                  srai         t1, s6, 27
                  sltiu        t1, t4, 1061
                  add          gp, a0, zero
                  slti         sp, s6, 419
                  sltiu        sp, s11, -520
                  and          s5, s3, a6
                  sub          ra, s5, s8
                  xor          tp, ra, a5
                  slt          a3, s5, t5
                  xori         a7, ra, 1560
                  sub          s3, tp, a7
                  ori          tp, t5, -1502
                  xori         s10, s10, -953
                  slti         t6, gp, 234
                  ori          t3, s8, 517
                  andi         s6, t2, 1065
                  slti         gp, s7, -656
                  and          s0, s11, t6
                  xori         sp, s2, -1967
                  sub          s6, t6, sp
                  sra          s7, s3, a5
                  or           s3, t0, t1
                  xor          tp, t3, tp
                  ori          a4, s1, -1466
                  and          t6, s0, s4
                  or           a0, t2, t5
                  sltiu        s10, t5, -1835
                  sll          s10, s0, t2
                  lui          s6, 130613
                  lui          tp, 14632
                  ori          s6, s5, -1155
                  sltu         s1, gp, t3
                  srl          s2, t6, t4
                  slti         t0, t6, -1735
                  sltiu        a4, s3, 1677
                  slti         s7, t0, -530
                  sltiu        a7, t5, 532
                  addi         t3, t3, -593
                  sra          a1, a6, s9
                  xor          t0, a4, t5
                  sra          s4, a2, a2
                  and          a1, s6, ra
                  andi         a4, s5, 1790
                  slt          t0, t1, a5
                  sltu         s3, sp, t6
                  sltu         s9, s1, t6
                  sll          t4, t1, s4
                  nop
                  slt          s1, t4, a2
                  addi         sp, a3, -1536
                  slt          zero, a2, s10
                  lui          a7, 953632
                  add          t5, a3, t0
                  ori          t4, a5, -304
                  lui          s1, 544990
                  or           a3, s5, a3
                  and          a0, s4, ra
                  xor          zero, t2, t4
                  xori         t4, a5, -1638
                  slli         s5, gp, 2
                  sub          s1, s7, s5
                  auipc        t4, 550963
                  sltu         s8, s3, s0
                  addi         s1, a1, -1380
                  nop
                  ori          t1, s4, -1506
                  slti         t1, t3, -207
                  xori         tp, t5, -148
                  srai         s8, a2, 12
                  sltiu        t4, s10, 1872
                  sltu         s10, s4, sp
                  and          zero, ra, a1
                  sltiu        a1, s9, 130
                  sltu         sp, s5, s10
                  ori          s6, a1, 699
                  auipc        s1, 416080
                  slti         s11, s9, 1902
                  nop
                  slt          s4, t1, a0
                  or           s5, t4, t1
                  xori         gp, tp, 1591
                  slt          a7, sp, a4
                  andi         s1, ra, -1866
                  xor          t1, a5, s10
                  andi         s2, s8, -510
                  srl          s2, t3, s3
                  and          tp, a2, s7
                  slt          s9, t1, gp
                  slt          a3, t1, s7
                  sltu         a4, t4, s10
                  add          ra, t0, gp
                  addi         s10, a3, 1511
                  sll          s5, a1, zero
                  auipc        s3, 764278
                  andi         s11, t6, 1773
                  and          t1, s4, s5
                  or           a1, s4, a1
                  sra          s6, s6, gp
                  sltiu        t5, s0, 238
                  xori         s10, t2, -1249
                  xor          t1, t3, s7
                  ori          s9, a2, 44
                  add          s4, t2, a4
                  srli         a3, t1, 22
                  nop
                  lui          t1, 483634
                  srl          s3, s7, s4
                  srli         gp, gp, 26
                  sltiu        t6, a2, 967
                  and          a0, sp, s6
                  srl          zero, t3, s2
                  add          s4, tp, a3
                  or           s2, a2, t3
                  auipc        s3, 172594
                  srl          a1, a6, s2
                  srai         s4, ra, 6
                  add          s5, s7, a6
                  addi         t3, a3, 1460
                  sll          a1, t3, t1
                  slti         a6, t2, 1875
                  addi         t5, s7, -139
                  slt          s5, s8, s2
                  xor          t1, s1, a0
                  ori          t6, a1, -1830
                  xor          a0, t1, a0
                  lui          s3, 513849
                  addi         s2, a4, -1400
                  sll          s4, t5, s11
                  nop
                  srai         a1, gp, 0
                  sltu         s5, t1, s0
                  and          zero, tp, a6
                  slli         tp, s1, 16
                  add          gp, t1, s6
                  lui          s7, 414383
                  auipc        zero, 157057
                  auipc        a6, 1020030
                  or           t1, a4, sp
                  addi         t0, a3, 942
                  sra          s3, s7, t6
                  andi         s11, s2, 1324
                  srli         s3, gp, 16
                  ori          s10, ra, 1624
                  slt          t0, s1, sp
                  srl          s10, zero, t6
                  sltiu        t6, a1, 2001
                  xor          a3, a5, a1
                  nop
                  sub          zero, s4, s10
                  xori         a1, zero, 229
                  srai         s11, s11, 2
                  sltu         t0, a7, a4
                  xor          gp, t6, a2
                  or           s5, s0, s0
                  ori          t3, s10, -1880
                  srli         a1, s5, 5
                  srl          tp, a1, a0
                  addi         s11, t2, -1363
                  sll          s10, s0, zero
                  or           t0, a5, s0
                  auipc        s9, 435139
                  sltiu        a0, s5, 541
                  andi         s10, s11, 759
                  xori         s8, a7, 1950
                  andi         t3, a1, 70
                  and          t4, a6, tp
                  slt          t0, s8, s5
                  sra          a6, t6, s7
                  sltu         a7, t1, s7
                  lui          s10, 539403
                  sra          a6, t1, a2
                  slt          a6, sp, t3
                  lui          t0, 1047471
                  slti         t3, s4, 1311
                  la x15, test_done
                  jalr x0, x15, 0
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
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x12, x12, -4
                  sw  x7, (x12)
                  add x7, x12, zero
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
                  add x12, x7, zero
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x28, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x28, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x28, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x28, x9, ecall_handler
                  li x9, 0x1
                  beq x28, x9, instr_fault_handler
                  li x9, 0x5
                  beq x28, x9, load_fault_handler
                  li x9, 0x7
                  beq x28, x9, store_fault_handler
                  li x9, 0xc
                  beq x28, x9, pt_fault_handler
                  li x9, 0xd
                  beq x28, x9, pt_fault_handler
                  li x9, 0xf
                  beq x28, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

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
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x7, x12, zero
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
                  add x12, x7, zero
                  lw  x7, (x12)
                  addi x12, x12, 4
                  mret

load_fault_handler:
                  add x7, x12, zero
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
                  add x12, x7, zero
                  lw  x7, (x12)
                  addi x12, x12, 4
                  mret

store_fault_handler:
                  add x7, x12, zero
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
                  add x12, x7, zero
                  lw  x7, (x12)
                  addi x12, x12, 4
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x7, x12, zero
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
                  add x12, x7, zero
                  lw  x7, (x12)
                  addi x12, x12, 4
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x7, x12, zero
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
                  add x12, x7, zero
                  lw  x7, (x12)
                  addi x12, x12, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x7, x12, zero
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
                  add x12, x7, zero
                  lw  x7, (x12)
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
