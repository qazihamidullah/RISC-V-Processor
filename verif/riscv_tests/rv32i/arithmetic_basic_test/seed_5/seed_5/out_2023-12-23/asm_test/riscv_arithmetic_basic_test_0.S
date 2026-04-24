.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  li x6, 0x0
                  csrw 0x304, x6 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xc38bf497
                  li x2, 0xfd9fbefb
                  li x3, 0xb753b67e
                  li x5, 0xab3e1e66
                  li x6, 0x80000000
                  li x7, 0x3
                  li x8, 0xb588e27b
                  li x9, 0x80000000
                  li x11, 0xf64df94c
                  li x12, 0xb
                  li x13, 0x5e9cb0b
                  li x14, 0x3988df83
                  li x15, 0x16c7af3d
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xf33e0e26
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xe56512da
                  li x28, 0xa
                  li x29, 0x0
                  li x30, 0x6f5229ee
                  li x31, 0x63bd4dd7
                  la x4, user_stack_end
main:             li           a6, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a1, 0x80000000
                  li           t1, 0x0
                  li           a4, 0x80000000
                  li           a3, 0xfb550204
                  li           t2, 0x0
                  li           t4, 0xffffffff
                  li           s11, 0xffffffff
                  li           s7, 0xffffffff
                  li           gp, 0xb5b031fb
                  auipc        a6, 810228
                  lui          a6, 860636
                  lui          a4, 465048
                  auipc        s11, 112063
                  add          a4, gp, s11
                  sub          t2, a1, t1
                  auipc        t4, 146225
                  nop
                  add          gp, t4, s11
                  nop
                  nop
                  nop
                  auipc        a4, 323560
                  add          s11, s11, s7
                  add          a6, t4, s11
                  lui          a6, 361683
                  addi         a3, a3, -1729
                  lui          gp, 192320
                  lui          a1, 461256 #end riscv_int_numeric_corner_stream_3
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           sp, 0xffffffff
                  li           s10, 0xffffffff
                  li           s6, 0x0
                  li           a7, 0xffffffff
                  li           s5, 0xffffffff
                  li           t0, 0x9142f047
                  li           t4, 0x0
                  li           t5, 0x80000000
                  li           t3, 0x0
                  sub          s10, t0, s6
                  lui          sp, 377926
                  add          t0, s10, t6
                  nop
                  auipc        s6, 67088
                  lui          t5, 1028419
                  sub          t6, s6, t5
                  add          s10, t3, s5
                  sub          sp, t3, a7
                  auipc        a7, 430435
                  add          s5, t0, t3
                  auipc        t3, 581786
                  nop
                  addi         s5, s6, 1514
                  nop
                  auipc        t6, 372936
                  sub          t0, a7, s6
                  nop
                  addi         s5, s10, -719
                  auipc        t6, 327904
                  lui          s10, 348983
                  nop
                  lui          sp, 799640
                  lui          s5, 630989
                  nop
                  lui          sp, 246480
                  auipc        t6, 1030966
                  nop
                  addi         t5, s10, -1958 #end riscv_int_numeric_corner_stream_24
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           t1, 0xc9a4d3fe
                  li           sp, 0xbde9e968
                  li           ra, 0x0
                  li           a6, 0x0
                  li           t5, 0xd5413b6f
                  li           a4, 0xfe824d3f
                  li           s0, 0xffffffff
                  li           s4, 0xffffffff
                  li           gp, 0x0
                  sub          gp, s8, ra
                  sub          t5, ra, s0
                  sub          s4, s4, a4
                  addi         s4, s0, -997
                  nop
                  add          s4, a6, t5
                  addi         t5, s8, -1419
                  nop
                  addi         s0, sp, -224
                  add          a4, ra, gp
                  addi         sp, sp, 126
                  sub          ra, gp, a4
                  add          s4, t5, t1
                  addi         t5, s4, 1097
                  addi         s4, t1, -414
                  lui          s8, 763283
                  addi         t5, t5, -788
                  lui          gp, 256363
                  add          ra, s8, s8
                  lui          t5, 487744
                  sub          ra, t5, s0
                  lui          ra, 287842
                  auipc        s4, 314151
                  add          t5, ra, a4
                  auipc        ra, 912594 #end riscv_int_numeric_corner_stream_12
                  li           s8, 0xd0c5a0c6 #start riscv_int_numeric_corner_stream_14
                  li           s5, 0xd4863b40
                  li           sp, 0x0
                  li           a5, 0xb4610df9
                  li           t2, 0xc36147b
                  li           s4, 0xffffffff
                  li           t5, 0x80000000
                  li           a4, 0x0
                  li           a3, 0xffffffff
                  li           gp, 0xffffffff
                  nop
                  sub          a3, s4, a5
                  auipc        s4, 420800
                  auipc        t2, 490075
                  auipc        s5, 317554
                  auipc        s8, 211867
                  lui          a3, 219766
                  add          s4, s4, a4
                  auipc        s8, 93397
                  addi         t5, s8, 1991
                  auipc        s8, 292442
                  sub          t2, sp, sp
                  nop
                  lui          a3, 493311
                  lui          gp, 87452
                  lui          s4, 328787
                  addi         gp, s4, 2038
                  sub          s5, s8, sp
                  sub          s8, s8, gp
                  sub          a3, s4, s5
                  add          gp, a3, a3
                  nop #end riscv_int_numeric_corner_stream_14
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_39
                  li           a7, 0xffffffff
                  li           s7, 0x0
                  li           t5, 0xa7c4ff4
                  li           gp, 0x2cd748e7
                  li           a1, 0xffffffff
                  li           s9, 0xe1d991cb
                  li           s4, 0x80000000
                  li           a5, 0x80000000
                  li           a6, 0x0
                  add          a6, s4, s9
                  add          gp, t5, a1
                  nop
                  addi         gp, a1, 301
                  addi         a6, a6, 769
                  lui          s7, 804602
                  lui          a1, 1047415
                  nop
                  sub          a5, a4, a5
                  nop
                  lui          a7, 495266
                  auipc        t5, 790861
                  add          s4, a6, s9
                  lui          a1, 101389
                  sub          a4, s4, a7
                  addi         a5, a7, -1729
                  lui          s9, 844194
                  nop
                  sub          a1, gp, t5
                  auipc        gp, 443006
                  addi         s7, a1, -1663
                  addi         a7, gp, 570
                  sub          s4, a7, gp
                  sub          a1, a1, t5
                  lui          a5, 282162 #end riscv_int_numeric_corner_stream_39
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s2, 0x80000000
                  li           s11, 0xc57a54b7
                  li           t2, 0x0
                  li           s6, 0x0
                  li           t5, 0xffffffff
                  li           s4, 0x80000000
                  li           a4, 0xfe795888
                  li           gp, 0xe51ce3c
                  li           t0, 0x4dc569a
                  nop
                  sub          a4, a4, gp
                  auipc        a4, 892654
                  nop
                  nop
                  addi         s6, gp, 1898
                  nop
                  nop
                  addi         t0, s11, 187
                  sub          t0, s4, s6
                  lui          a4, 951075
                  add          s4, a4, a4
                  auipc        gp, 131601
                  addi         t0, s4, 1468
                  add          t5, t2, gp
                  nop
                  sub          gp, t5, s11 #end riscv_int_numeric_corner_stream_18
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           t6, 0xffffffff
                  li           t0, 0x9c28d4a2
                  li           a6, 0x0
                  li           ra, 0x80000000
                  li           s6, 0xdfd5ee9d
                  li           s11, 0x0
                  li           a4, 0xffffffff
                  li           t2, 0x0
                  li           gp, 0xd3039371
                  add          s11, s11, t6
                  addi         a4, gp, 493
                  sub          t0, s11, a2
                  lui          ra, 231904
                  addi         a2, gp, 1582
                  add          s6, ra, gp
                  lui          t0, 98818
                  lui          a4, 69726
                  add          a4, a6, s11
                  nop
                  auipc        gp, 780509
                  nop
                  sub          a4, a2, ra
                  auipc        s6, 787193
                  nop
                  add          ra, a6, a4
                  add          t6, a6, a6
                  add          a4, t0, a2
                  lui          a4, 518119
                  sub          s11, a6, s6
                  nop
                  sub          a4, a4, t0
                  lui          a6, 467951
                  sub          ra, a2, gp
                  addi         a6, a2, -1798
                  sub          a6, t0, a6
                  add          gp, t2, t6
                  add          t0, s11, gp
                  auipc        a2, 619180
                  addi         t6, s11, 1908 #end riscv_int_numeric_corner_stream_36
                  li           a4, 0x647e5652 #start riscv_int_numeric_corner_stream_2
                  li           a2, 0xe4123627
                  li           s7, 0xf737c82
                  li           ra, 0x0
                  li           a7, 0x80000000
                  li           t4, 0x0
                  li           s6, 0x0
                  li           s8, 0xffffffff
                  li           t3, 0x0
                  li           s2, 0x80000000
                  sub          a2, ra, a2
                  add          s2, s7, ra
                  nop
                  sub          s6, s6, s7
                  nop
                  auipc        ra, 63730
                  addi         s2, s7, 1578
                  nop
                  add          s2, a7, ra
                  lui          ra, 831258
                  add          s6, a2, ra
                  add          a7, t3, s7
                  nop
                  lui          a2, 1009274
                  add          ra, s6, t3
                  sub          s6, a2, s8
                  nop #end riscv_int_numeric_corner_stream_2
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           t6, 0x0
                  li           s5, 0x0
                  li           t1, 0xffffffff
                  li           s10, 0x0
                  li           ra, 0xffffffff
                  li           s6, 0x0
                  li           s1, 0xaed1b147
                  li           s9, 0x69a18825
                  li           a6, 0x80000000
                  addi         ra, s10, -1504
                  auipc        t6, 781260
                  add          ra, s10, s5
                  add          s10, s6, ra
                  add          ra, a6, s5
                  auipc        s10, 57565
                  auipc        ra, 320217
                  sub          t1, s1, s5
                  addi         s10, s1, 938
                  nop
                  addi         s9, t6, -1923
                  sub          s1, t1, ra
                  auipc        s1, 250784
                  lui          s10, 350168
                  addi         ra, s10, 995
                  nop
                  nop
                  sub          ra, s10, s9
                  lui          a6, 664750
                  sub          s10, s1, a6
                  sub          s10, t1, t6
                  auipc        t6, 590913
                  nop
                  add          s10, s1, t6
                  add          s6, a6, a6
                  nop
                  lui          s6, 135206
                  auipc        t1, 23135 #end riscv_int_numeric_corner_stream_32
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t4, 0x4ec38113
                  li           s0, 0x57df739e
                  li           t5, 0xffffffff
                  li           t0, 0x0
                  li           s9, 0xffffffff
                  li           a1, 0x1184d922
                  li           s8, 0xffffffff
                  li           s5, 0xffffffff
                  li           s2, 0xffffffff
                  sub          t4, s2, s9
                  sub          s2, s9, s9
                  add          t0, a1, a4
                  lui          s9, 826759
                  auipc        s9, 897724
                  add          t4, t0, s8
                  add          t4, s2, a1
                  add          t5, t5, t4
                  auipc        a4, 441685
                  nop
                  add          a1, s0, a1
                  auipc        s2, 868966
                  nop
                  add          t5, s5, s2
                  auipc        a4, 986203
                  nop
                  addi         s0, s9, 421
                  lui          a1, 619160
                  addi         t5, t0, 988
                  nop
                  nop
                  auipc        s5, 1008752
                  nop
                  add          t0, t0, a4
                  sub          t4, s2, s2
                  lui          a1, 805123
                  sub          s5, t0, s0
                  add          a4, s0, a1 #end riscv_int_numeric_corner_stream_1
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_31
                  li           t0, 0x80000000
                  li           s11, 0xffffffff
                  li           s10, 0x706373ac
                  li           a5, 0xffffffff
                  li           sp, 0xecace3d1
                  li           a7, 0x86087e97
                  li           s4, 0x0
                  li           s2, 0xf7ed074c
                  li           t4, 0x80000000
                  add          t1, t0, a7
                  sub          a5, s4, t0
                  nop
                  lui          s10, 530565
                  sub          t1, a7, t4
                  auipc        sp, 997254
                  addi         t0, sp, 408
                  sub          s2, sp, sp
                  add          t0, a7, s11
                  add          t4, t1, sp
                  auipc        t0, 926914
                  sub          a7, t0, sp
                  add          s10, t4, t4
                  add          s4, s4, a5
                  sub          s2, a7, s10
                  lui          s11, 523082
                  add          t0, sp, a5
                  nop
                  lui          s11, 11727
                  auipc        sp, 556269
                  addi         s4, t4, 1969 #end riscv_int_numeric_corner_stream_31
                  li           t0, 0x3fa44a60 #start riscv_int_numeric_corner_stream_27
                  li           s2, 0x1e3ae75b
                  li           a1, 0x80000000
                  li           gp, 0x0
                  li           s4, 0x0
                  li           t1, 0x9da596e1
                  li           t2, 0x80000000
                  li           ra, 0xffffffff
                  li           sp, 0xffffffff
                  li           a5, 0xffffffff
                  lui          sp, 996988
                  addi         t2, ra, 1112
                  auipc        t0, 893718
                  lui          sp, 934064
                  nop
                  sub          ra, s2, s4
                  auipc        s4, 681657
                  sub          s4, s4, t1
                  auipc        s2, 860378
                  lui          s4, 644364
                  lui          gp, 245197
                  addi         a1, t1, 1490
                  auipc        a1, 273413
                  add          a5, t1, a5
                  lui          t0, 201958
                  add          a5, t0, a1
                  addi         t1, ra, 368 #end riscv_int_numeric_corner_stream_27
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           t1, 0x5f1cb18e
                  li           s2, 0xffffffff
                  li           s4, 0x4ca7c8c
                  li           a6, 0xffffffff
                  li           t4, 0x7f608483
                  li           t0, 0xffffffff
                  li           a7, 0xfcb4bf6c
                  li           sp, 0x13ebeb45
                  li           gp, 0x80000000
                  nop
                  auipc        t0, 264607
                  add          s7, t1, a7
                  sub          s2, sp, s2
                  add          a7, t4, t4
                  addi         t4, t1, 1744
                  addi         gp, t4, 608
                  lui          t0, 155380
                  auipc        gp, 878476
                  auipc        t4, 924129
                  auipc        t0, 588429
                  auipc        t0, 773241
                  auipc        t4, 626913
                  auipc        t4, 278436
                  sub          sp, t0, sp
                  lui          gp, 520547
                  auipc        t4, 78278
                  auipc        s7, 941632
                  sub          a7, s7, a7
                  nop
                  lui          gp, 851913
                  nop
                  addi         s2, t1, 1158
                  auipc        t0, 10842
                  auipc        gp, 757691
                  auipc        t1, 324028
                  add          s2, t0, s2
                  add          t4, s4, t0 #end riscv_int_numeric_corner_stream_34
                  li           a2, 0xdda383ee #start riscv_int_numeric_corner_stream_19
                  li           s0, 0x288d0341
                  li           s9, 0x4a257dc3
                  li           s8, 0xffffffff
                  li           a3, 0x0
                  li           a1, 0xa7a7043c
                  li           t3, 0x1c1564c4
                  li           s4, 0xffffffff
                  li           s2, 0xffffffff
                  li           a7, 0x80000000
                  nop
                  add          s0, s0, s4
                  auipc        s2, 487347
                  lui          a3, 1020532
                  add          t3, s2, a7
                  nop
                  lui          a7, 1031049
                  lui          a2, 915847
                  lui          a2, 949410
                  sub          a1, s2, a3
                  auipc        a7, 355086
                  lui          a2, 194466
                  lui          a7, 225281
                  auipc        s8, 344173
                  addi         s2, a1, 459
                  sub          s2, a3, s0
                  addi         a3, s2, 1507
                  add          a7, s2, a2
                  addi         a7, a3, 1029
                  add          a7, a2, a7
                  sub          s9, s0, t3
                  auipc        s4, 570722
                  add          a1, s2, a1
                  nop
                  auipc        a7, 859869
                  lui          a3, 106115 #end riscv_int_numeric_corner_stream_19
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s4, 0x80000000
                  li           a6, 0x71476a0
                  li           s10, 0xffffffff
                  li           s8, 0x39e8ef10
                  li           s5, 0xffffffff
                  li           a1, 0x0
                  li           ra, 0xffffffff
                  li           sp, 0xdd5dab8d
                  li           t0, 0x0
                  add          sp, sp, ra
                  add          a1, t5, s8
                  addi         s5, a6, -829
                  add          s10, ra, s8
                  auipc        a1, 979631
                  auipc        t0, 1003092
                  auipc        s5, 309644
                  auipc        a6, 484318
                  add          a1, ra, s10
                  lui          sp, 350645
                  addi         ra, s8, 49
                  auipc        a1, 539364
                  nop
                  nop
                  nop
                  add          t0, ra, t5
                  add          s5, a1, sp
                  add          s4, s8, t0
                  lui          s8, 458945
                  sub          a1, a1, a1
                  lui          s8, 484012
                  auipc        a1, 860323
                  lui          a1, 61313
                  addi         s8, t0, 1795
                  addi         t0, s4, -15
                  lui          ra, 876245
                  sub          s5, a6, s4
                  auipc        a1, 532334
                  auipc        sp, 146237 #end riscv_int_numeric_corner_stream_17
                  nop
                  andi         s11, t6, -1527
                  andi         s7, s4, 1127
                  and          s2, t1, s1
                  addi         t1, a5, -934
                  slti         zero, s2, -1113
                  lui          s11, 525528
                  andi         s5, a2, -741
                  sltiu        t4, s4, -1436
                  srl          a2, s9, s8
                  nop
                  slli         s0, t1, 28
                  srl          s2, t2, sp
                  sltu         a7, a7, s3
                  srai         a3, s10, 9
                  ori          a1, t6, 641
                  srl          t4, a6, a6
                  slli         s4, s0, 23
                  srai         t0, zero, 9
                  srai         s2, s1, 9
                  andi         s10, ra, -495
                  sltu         a5, zero, t2
                  slt          t4, t0, t5
                  xori         a1, s10, 788
                  add          a7, ra, gp
                  srli         s7, a3, 5
                  srai         ra, a0, 23
                  sltiu        t3, t2, -1177
                  slt          a5, ra, a2
                  ori          zero, s5, -194
                  sltiu        a6, s5, 2031
                  xor          a5, t4, t5
                  auipc        a2, 204934
                  andi         s0, t3, -611
                  andi         s11, s3, -1749
                  srli         t3, s11, 11
                  srl          s0, a1, t6
                  or           s8, s1, s0
                  auipc        s6, 458971
                  srli         a6, s3, 24
                  sltu         t1, a2, a3
                  or           gp, t4, a5
                  slli         sp, t6, 28
                  andi         a2, t0, 1282
                  nop
                  sll          a4, a5, s1
                  slti         a2, ra, -71
                  xor          a4, a0, tp
                  andi         s2, a7, -613
                  sltu         a3, s3, s1
                  slti         s11, s9, -1979
                  addi         a7, t4, -872
                  sltu         t6, a1, s6
                  auipc        a5, 137583
                  srl          s1, s4, s6
                  slli         s6, a2, 1
                  sub          s11, t1, s4
                  nop
                  slt          s7, a5, s7
                  sub          ra, s1, zero
                  srai         s2, sp, 11
                  nop
                  lui          t3, 807269
                  srai         ra, t0, 8
                  slt          s11, s9, t6
                  sll          t0, a7, t2
                  sra          a2, gp, t2
                  nop
                  auipc        t5, 294602
                  sltu         gp, t2, a2
                  sltiu        t5, ra, 1188
                  slli         zero, sp, 28
                  lui          a7, 165387
                  xor          zero, ra, zero
                  sub          s2, a4, a0
                  addi         s11, s6, 309
                  sltiu        s6, a3, -1099
                  auipc        s0, 18733
                  sub          s7, s8, s6
                  slt          a5, s3, tp
                  lui          t6, 691030
                  xori         s7, s3, -54
                  srai         s5, s6, 23
                  xor          s6, s0, a1
                  sra          a1, s7, s2
                  auipc        s11, 343237
                  slli         s4, t6, 10
                  and          s9, s2, t2
                  lui          s6, 135302
                  sll          s9, s7, s1
                  sltiu        gp, sp, -177
                  srai         t4, zero, 24
                  srai         zero, t3, 1
                  nop
                  sub          gp, t4, s1
                  addi         a6, s6, 1246
                  xor          t0, s9, t0
                  lui          t2, 530358
                  sub          s6, a1, ra
                  sltu         t0, s5, a6
                  xori         a3, a4, -131
                  sra          t6, t2, a6
                  nop
                  sltiu        t0, t1, -850
                  sra          s11, a1, s3
                  and          a6, s3, t6
                  slt          t0, t6, t3
                  sra          ra, s1, s1
                  slti         a7, s6, 798
                  and          a7, a5, s4
                  slt          s5, t1, a6
                  addi         a5, a2, -1884
                  srai         a6, s3, 4
                  sltu         gp, a1, a6
                  xori         s5, a2, 1817
                  lui          t1, 577565
                  sub          s4, s1, t0
                  sltu         t3, t2, s2
                  srl          t0, s2, s5
                  slt          s4, s4, sp
                  srli         t1, a0, 23
                  srli         t6, zero, 6
                  and          t3, s1, a3
                  auipc        s2, 824622
                  slt          s9, s11, a1
                  addi         s2, a4, -1854
                  and          s5, s9, s0
                  auipc        t3, 879272
                  or           t6, a2, t4
                  slt          s10, s10, a4
                  slli         gp, tp, 2
                  ori          ra, s7, -732
                  ori          sp, s0, -625
                  sra          a3, a7, t0
                  or           t4, s1, s4
                  andi         s2, s2, -942
                  lui          s0, 36742
                  and          s11, s6, zero
                  andi         s11, t3, -214
                  sltu         a2, s0, s4
                  add          t1, t3, t0
                  auipc        a6, 778682
                  add          gp, t2, s8
                  lui          s7, 60833
                  ori          t1, s6, -342
                  srl          s0, s4, zero
                  nop
                  and          s0, s7, tp
                  xori         s9, a6, 6
                  lui          gp, 922726
                  add          a2, sp, a4
                  slt          t2, a2, t5
                  srai         a5, a0, 16
                  add          a4, a2, s4
                  and          t6, s9, s9
                  or           s4, ra, ra
                  sltu         s7, s5, s0
                  add          s4, t3, s9
                  srai         s4, s0, 5
                  slli         t5, s2, 14
                  ori          t3, s2, -2047
                  or           s10, t3, t0
                  sub          a6, s5, a1
                  sltu         s2, a0, tp
                  slli         gp, t0, 4
                  and          a1, s7, s0
                  srli         t1, sp, 16
                  sltu         zero, t4, a1
                  slli         a2, a6, 27
                  slt          s4, t5, t4
                  srai         zero, s10, 25
                  add          t4, a6, t0
                  slt          s8, s6, a6
                  auipc        a7, 39857
                  slt          a6, s5, a7
                  srli         sp, a2, 29
                  slli         s1, s9, 13
                  sll          t3, t2, s5
                  srli         s6, s11, 19
                  lui          a4, 773
                  srl          ra, s1, s5
                  lui          t0, 158238
                  ori          s10, t6, 1965
                  srai         ra, s5, 30
                  slti         s10, tp, -1611
                  slt          s9, s11, s3
                  sll          s11, sp, s1
                  sltiu        t4, a7, 1287
                  sltu         sp, t3, s6
                  xori         t2, s2, 1995
                  or           s10, gp, a5
                  xor          a4, ra, t4
                  ori          a1, s3, -835
                  srl          a7, s2, a6
                  slt          s2, a6, s7
                  sll          s6, t4, s9
                  sll          s9, s11, a1
                  or           s4, s3, a1
                  srli         a2, a7, 25
                  srl          s4, s3, a4
                  sll          s2, a2, a2
                  andi         s9, t0, -1981
                  slt          zero, a6, t3
                  sra          sp, s9, ra
                  srli         s0, t4, 6
                  or           sp, a4, a1
                  xor          a3, a5, s7
                  sra          t3, s4, ra
                  sll          a2, a0, a1
                  add          a4, s11, s8
                  slli         sp, gp, 1
                  lui          a7, 449074
                  slli         sp, s8, 19
                  srai         a7, tp, 14
                  auipc        gp, 503039
                  addi         t2, s7, 1525
                  xor          t0, ra, s4
                  addi         s1, a0, 1384
                  xori         t0, sp, -415
                  srli         s10, a3, 11
                  slli         a2, t4, 0
                  lui          a1, 312463
                  add          s10, a1, a7
                  slti         t3, s6, -274
                  ori          a4, s1, 1457
                  ori          t1, t2, 351
                  addi         t6, s1, 601
                  ori          a3, a5, -1545
                  auipc        zero, 299829
                  slt          t5, s1, t3
                  sll          gp, s4, a4
                  addi         t6, s8, -812
                  xori         s5, a2, -282
                  slti         a4, a0, -1103
                  sll          s10, a7, t3
                  srai         s5, s7, 24
                  and          zero, s10, t1
                  sltu         s8, s11, s6
                  xori         a4, s8, 414
                  andi         s4, t0, 1179
                  add          ra, s6, t3
                  addi         zero, s0, 1938
                  slli         a5, t1, 10
                  ori          t3, s5, -193
                  add          a1, a4, s6
                  slt          s9, s4, t1
                  sub          t5, s7, zero
                  addi         sp, a3, 493
                  add          a4, s10, t1
                  slli         t2, a5, 28
                  or           gp, s7, s7
                  andi         s6, s10, 771
                  ori          t1, tp, 1480
                  sub          s7, t5, t6
                  xori         a3, ra, 1872
                  sltu         gp, t3, s0
                  slli         zero, s8, 13
                  sltu         zero, t5, a3
                  xori         s11, t3, -771
                  srl          t4, t5, s3
                  andi         s11, t5, 943
                  addi         zero, gp, 86
                  slti         sp, s9, -2007
                  srl          a2, t0, t4
                  srai         sp, s7, 4
                  nop
                  slt          a7, t4, t1
                  sub          s1, t1, s5
                  nop
                  slli         sp, t0, 16
                  or           t0, a2, s1
                  sll          s8, s9, t3
                  sltiu        s6, t3, -1910
                  auipc        t1, 319174
                  lui          t1, 750331
                  xor          s0, gp, t6
                  xor          s10, t0, tp
                  slt          s6, a3, zero
                  xor          t5, s0, zero
                  auipc        s6, 438619
                  xor          s8, a3, s2
                  lui          a1, 191716
                  and          s6, t1, s8
                  sltiu        t3, s9, 560
                  xori         a7, t6, 81
                  or           t0, t3, s7
                  slti         s8, sp, -1878
                  slti         a7, t2, 1149
                  sltu         t4, t0, s10
                  srl          s4, s0, tp
                  and          t5, s5, tp
                  sll          s10, a0, t1
                  srli         t2, s2, 13
                  sltu         s0, s7, s1
                  xori         t3, t5, 831
                  sltu         s11, s10, t5
                  sltiu        s10, a7, -1390
                  srli         ra, s3, 20
                  andi         s5, s10, -784
                  sltiu        t1, a3, 1143
                  srli         t3, s8, 21
                  add          s8, gp, a3
                  slli         s10, s2, 8
                  sltiu        a7, t3, -1177
                  srli         a6, s10, 28
                  sra          a5, s8, tp
                  sltiu        s6, a5, -777
                  sra          t0, a6, t4
                  srli         gp, a4, 30
                  addi         zero, s4, 1928
                  andi         s11, a1, 784
                  srl          a3, a1, s0
                  auipc        t1, 453513
                  sltu         s5, a2, s0
                  slt          t0, s3, a0
                  slli         t2, t4, 20
                  srli         s7, s5, 0
                  srai         a1, t6, 17
                  xori         a1, s11, -308
                  addi         s2, ra, 1817
                  srai         s0, t5, 2
                  slt          t2, ra, t1
                  lui          a7, 703591
                  lui          sp, 162068
                  addi         s2, t1, 861
                  and          t6, t1, gp
                  and          s4, a2, s1
                  and          s6, a2, s1
                  sltu         s7, sp, a1
                  sll          a5, a6, t5
                  slt          s6, a3, t5
                  andi         s8, tp, -1086
                  nop
                  addi         t0, tp, -368
                  xor          t4, s10, gp
                  slli         t4, s1, 17
                  lui          t0, 425308
                  slt          a5, t5, a4
                  xori         t5, t6, 361
                  add          s1, t2, t5
                  add          a7, s1, s8
                  xori         zero, tp, -1350
                  srai         s10, s11, 15
                  ori          s11, t5, -1252
                  auipc        s4, 658729
                  sll          s9, a5, a2
                  xor          s0, s0, t0
                  slli         ra, a2, 28
                  xor          ra, s8, a3
                  sra          s6, t5, a6
                  sub          t4, s5, ra
                  or           t4, a3, s5
                  xor          s7, t0, s2
                  andi         a5, a0, -726
                  sltiu        t3, tp, -1610
                  andi         t6, t4, -2045
                  add          t4, s0, a2
                  slt          s2, s2, s8
                  slt          t3, a1, s4
                  auipc        t4, 338139
                  xor          s7, s1, a0
                  or           t3, a5, s1
                  or           t1, s1, s7
                  sll          t3, s5, s0
                  addi         s11, t1, 1598
                  sub          t3, sp, sp
                  sub          s6, s0, t4
                  srai         s11, s8, 25
                  addi         s8, s0, -1407
                  sltu         s7, t5, a6
                  slti         a1, t6, 1130
                  sltiu        t5, a4, -1329
                  and          t4, s0, t0
                  slti         t3, a6, -652
                  andi         s11, a3, 614
                  slti         sp, a3, -98
                  or           s2, s11, s10
                  srl          s5, a4, s9
                  sltiu        ra, a2, 1066
                  slli         sp, s11, 2
                  lui          t0, 258690
                  lui          s7, 641325
                  and          t1, t6, t4
                  sll          s11, s10, sp
                  or           s11, s8, a4
                  ori          s4, s1, -1374
                  sra          t0, t4, s5
                  sltiu        t5, s8, -804
                  andi         a2, s5, -836
                  sub          a4, t4, sp
                  add          t1, a3, s4
                  slli         t6, t3, 1
                  add          s11, a6, tp
                  srai         a2, a6, 20
                  srai         zero, s8, 1
                  xori         t1, t6, 1396
                  add          t1, t3, s0
                  slt          s7, t4, s8
                  ori          s2, a6, -1266
                  xor          a7, a2, s3
                  slti         s0, s10, 1587
                  and          gp, s6, s1
                  slt          a5, s4, s11
                  ori          a1, tp, 1023
                  slti         a5, t0, 1793
                  andi         s0, s9, -1573
                  srli         s2, tp, 26
                  sltiu        t1, a0, 348
                  or           s4, a5, gp
                  or           a5, gp, t1
                  addi         s4, s4, 2021
                  sltiu        t3, tp, -1710
                  srl          t3, t4, s1
                  slli         s2, s8, 23
                  sra          a2, a4, s9
                  srai         t1, t0, 25
                  andi         s10, t2, -74
                  slti         t5, tp, 116
                  xor          s5, sp, s6
                  slt          a1, a1, ra
                  sub          gp, ra, a5
                  xori         a1, t4, 487
                  xor          a7, s4, t1
                  slti         s6, t5, -1785
                  ori          s9, t1, 532
                  slti         a1, s1, -1563
                  add          zero, s5, t4
                  srli         s6, a5, 17
                  sltiu        t2, a5, -1768
                  add          gp, a7, s3
                  or           s9, a6, s5
                  xori         sp, s6, 1439
                  andi         zero, s7, 396
                  ori          s8, t0, -1530
                  slti         t6, t4, 1134
                  slli         t4, s6, 25
                  sll          t4, a7, t2
                  auipc        t0, 798267
                  slti         t2, a6, 536
                  addi         sp, s8, 633
                  ori          t0, a2, -1866
                  slti         s5, sp, 187
                  sub          s0, t4, t3
                  sub          t1, t3, gp
                  sltu         a4, t2, a0
                  ori          a5, ra, 1277
                  sltu         t2, s1, s1
                  srai         zero, s5, 15
                  andi         a2, s6, -1021
                  srl          s2, s8, s2
                  lui          a2, 770492
                  sll          zero, t6, t3
                  sra          s2, s8, s3
                  sub          t3, s9, t4
                  slli         s9, s7, 17
                  nop
                  slti         t3, t2, -857
                  or           t4, t3, s8
                  sra          t5, t5, a5
                  xor          s2, s10, s2
                  auipc        a4, 394788
                  lui          a3, 229557
                  sll          s6, ra, t4
                  xor          s9, t3, s2
                  nop
                  add          a2, t1, s5
                  sra          a4, a4, s11
                  slli         s10, t6, 18
                  srl          zero, t0, s0
                  sub          t3, t3, s11
                  xor          s7, a5, ra
                  ori          s9, s6, 297
                  xor          a7, sp, a2
                  ori          s5, t3, 21
                  ori          s2, s0, 1457
                  andi         a5, a4, 226
                  ori          a1, a2, -345
                  sltu         t3, s0, s7
                  or           s2, a7, t2
                  srli         t6, t2, 23
                  addi         a7, s7, 1356
                  addi         t1, s9, -308
                  slt          t5, s8, s5
                  sub          s10, t2, t5
                  slli         a5, s1, 6
                  sub          a5, a6, t6
                  sltiu        a5, a7, -645
                  nop
                  slti         s0, t3, 975
                  slli         sp, t5, 7
                  add          gp, a6, t5
                  nop
                  ori          s1, s6, 1078
                  add          s6, s5, a0
                  add          t4, t5, s2
                  sll          zero, gp, tp
                  and          t3, zero, s9
                  slli         a2, s0, 3
                  ori          a3, t2, 101
                  sltiu        zero, tp, -1356
                  auipc        a7, 684115
                  xori         s7, a5, 306
                  srl          a7, a4, tp
                  xori         gp, gp, 744
                  ori          a2, s1, 1856
                  or           a7, a5, a6
                  add          s2, s1, a5
                  slli         a3, sp, 2
                  sub          s0, s10, tp
                  addi         t5, s11, 2024
                  andi         a7, s3, -1370
                  sltiu        a2, s9, -1975
                  sra          t4, t5, s7
                  or           s7, t6, a7
                  sll          s11, a5, sp
                  srli         a6, t3, 10
                  slti         s10, a0, -541
                  and          s5, gp, s8
                  xori         sp, s8, -204
                  and          s0, s9, s5
                  addi         s5, s5, 1794
                  sll          s10, gp, zero
                  slli         s5, t1, 6
                  auipc        s6, 585171
                  srai         t4, s7, 21
                  srai         a6, t4, 3
                  or           gp, s0, zero
                  auipc        a1, 44361
                  auipc        s6, 410621
                  sltu         s1, s2, a5
                  srli         s9, s6, 15
                  lui          s0, 605397
                  andi         t2, a6, 1614
                  srl          s0, t5, s1
                  sltu         s2, s0, s4
                  sltiu        t4, s10, 2036
                  sltiu        t6, t3, -1173
                  slli         s9, a1, 16
                  slt          gp, a3, s2
                  sra          ra, s8, a5
                  lui          t2, 164870
                  and          a3, t4, t2
                  add          a3, a5, a6
                  xor          s4, t0, s3
                  sll          gp, t4, t3
                  xori         gp, t4, 693
                  sll          t1, t6, ra
                  xori         t0, s3, 536
                  xori         s8, t2, -1649
                  slti         s6, sp, -1795
                  addi         s10, s7, 1835
                  srl          s10, sp, s2
                  addi         s4, s9, -175
                  slti         s6, s11, -1496
                  sra          a2, gp, s10
                  srli         s10, ra, 27
                  auipc        s11, 995967
                  lui          s0, 108259
                  and          s2, ra, a6
                  ori          t1, a0, -1685
                  ori          sp, s6, -1274
                  andi         ra, s2, -1717
                  nop
                  add          s10, s4, s5
                  lui          t5, 408767
                  slli         s9, s8, 9
                  xori         t5, a4, 1706
                  slt          t6, s6, a4
                  srl          a3, t2, a6
                  xori         ra, a5, 1948
                  sll          s4, s6, ra
                  sltiu        zero, a0, -1120
                  srli         s11, ra, 10
                  ori          t0, s9, -1895
                  srai         a1, ra, 26
                  slti         s1, t6, 371
                  andi         s8, a1, -1784
                  slt          ra, t6, a0
                  srli         gp, a2, 4
                  sll          t1, ra, t2
                  sltiu        t6, s6, -1358
                  slli         a6, a2, 13
                  xor          a4, s4, gp
                  srli         a1, t1, 5
                  sltiu        a6, s2, -1376
                  sll          t6, t3, s1
                  andi         s10, ra, 63
                  sub          s9, a2, s10
                  addi         a7, s1, -1175
                  nop
                  andi         a2, s5, 394
                  andi         s10, s2, 615
                  or           zero, s6, s7
                  auipc        t1, 183934
                  andi         zero, tp, 665
                  slti         t3, t5, -1089
                  srli         a3, s3, 4
                  andi         s10, t6, 370
                  nop
                  ori          a4, tp, -479
                  sub          t3, s0, tp
                  slt          s4, s10, t6
                  xori         a3, s6, -585
                  add          s5, a1, a1
                  lui          t1, 873919
                  slt          s7, t2, s9
                  add          a4, sp, s8
                  or           s7, gp, a2
                  sltu         t0, a6, t6
                  ori          a3, t1, 1167
                  ori          t0, t4, 525
                  lui          t5, 620291
                  addi         s5, s11, -964
                  and          s0, t4, s1
                  slti         zero, sp, -283
                  nop
                  slli         gp, t6, 28
                  addi         zero, s9, -167
                  srli         ra, s8, 12
                  srl          s1, sp, s10
                  nop
                  or           gp, a6, s2
                  sltu         a6, zero, a7
                  lui          s8, 787354
                  nop
                  slt          t3, zero, s0
                  slti         s2, zero, -731
                  add          a3, s5, a6
                  or           s11, s8, t4
                  sltiu        s7, t0, 1058
                  add          gp, tp, tp
                  xor          s2, a6, tp
                  ori          t6, a0, 257
                  or           s5, tp, s1
                  or           a6, s9, t5
                  srl          t4, s0, t3
                  andi         a4, t0, -642
                  srl          a3, s8, a5
                  addi         s10, gp, -1102
                  srli         s2, s7, 24
                  sltiu        s11, sp, -1975
                  lui          s0, 234561
                  lui          ra, 521497
                  sltu         a7, s11, t5
                  sub          a5, tp, zero
                  ori          a7, gp, 1490
                  slli         t6, a2, 22
                  sra          t1, t2, sp
                  slli         zero, t1, 6
                  lui          s6, 41886
                  addi         s9, a5, 813
                  slti         a6, t6, 1544
                  nop
                  xori         s8, ra, 1447
                  slti         s6, t3, 487
                  nop
                  srl          t1, s7, sp
                  srl          zero, gp, a4
                  sll          a5, t0, gp
                  andi         t3, t5, -112
                  slt          t0, sp, s7
                  add          s0, ra, t1
                  slti         a3, s3, 1886
                  sub          a5, a5, s8
                  xor          s8, t2, s10
                  srai         s7, s8, 19
                  ori          a3, a0, 223
                  ori          ra, t1, 22
                  addi         a3, a5, -247
                  xori         s0, a7, -1947
                  ori          s4, s8, -1609
                  andi         t1, t2, -540
                  xor          t0, s6, s3
                  auipc        s0, 119091
                  lui          s0, 182565
                  add          a1, a1, a3
                  nop
                  slli         s0, s8, 10
                  xori         a5, a4, 1866
                  and          sp, gp, s3
                  sra          a4, tp, ra
                  xor          t4, s8, s10
                  sltiu        t2, a1, 305
                  sltu         s2, t5, a6
                  add          s8, s4, zero
                  srli         s6, s7, 8
                  and          s4, s8, zero
                  add          s2, s5, a5
                  and          a4, s7, s5
                  and          t4, a3, s8
                  add          ra, s0, a3
                  auipc        s7, 363529
                  sll          t1, a6, s10
                  srai         s10, s9, 15
                  srl          s9, s8, t1
                  sltu         gp, t1, a3
                  and          gp, sp, a0
                  addi         sp, a2, 1123
                  srl          t0, s0, a7
                  and          a3, s2, t5
                  slt          t6, a7, t5
                  ori          a1, s8, 619
                  sll          s5, s6, a3
                  sub          t4, t0, a3
                  sub          s11, s4, t4
                  sltu         t0, a0, a3
                  ori          t2, t5, 1757
                  xori         a6, t3, -406
                  xori         ra, s0, 1422
                  andi         t1, s9, -1041
                  xor          a2, s4, t2
                  srai         a1, t1, 18
                  sll          a5, s3, s3
                  slt          s1, ra, t4
                  sltu         a7, s11, s2
                  slli         zero, s10, 4
                  andi         s2, a2, -1924
                  sltu         a3, t4, a4
                  slt          t6, s0, s0
                  addi         t1, a3, -547
                  and          a6, zero, zero
                  slli         s11, s3, 28
                  lui          t2, 520185
                  xor          gp, sp, a3
                  andi         t3, tp, 785
                  and          t1, sp, t1
                  slli         a3, sp, 28
                  slti         s0, a3, 1017
                  sra          t3, t1, s2
                  sll          sp, a6, a0
                  slti         s2, s6, -1080
                  sltu         a5, a4, s6
                  sll          s4, t3, ra
                  ori          s6, t6, -1594
                  andi         s7, a3, -1943
                  xor          t6, tp, t0
                  slti         a3, s6, 2036
                  lui          t1, 483059
                  sltu         s1, a2, s10
                  nop
                  xor          s9, t6, s0
                  sll          s6, s9, t2
                  xor          s6, gp, t4
                  srli         t0, a3, 25
                  auipc        t4, 660374
                  sub          t1, tp, s6
                  add          a3, s0, a6
                  lui          a3, 142899
                  slli         t3, tp, 3
                  sub          zero, s11, a1
                  slti         t4, t0, 347
                  slt          s10, s5, tp
                  addi         a4, a6, -804
                  srai         s2, ra, 25
                  srli         t1, a3, 25
                  addi         s11, ra, -143
                  or           s2, t2, ra
                  add          t1, t1, s6
                  slti         ra, a4, 219
                  add          t2, zero, s7
                  add          a7, t3, tp
                  addi         t0, ra, -1552
                  srai         zero, s1, 3
                  srl          t6, t4, s8
                  lui          a6, 156574
                  sra          t4, s11, a6
                  slli         t6, t4, 30
                  andi         a7, s0, -1117
                  sltu         s4, s6, s11
                  srli         a2, s11, 30
                  or           sp, t5, t5
                  slt          t0, sp, s1
                  and          s2, s6, tp
                  sll          s11, t4, tp
                  and          t0, gp, tp
                  srai         t2, a0, 3
                  sub          s9, a1, a5
                  sll          s10, tp, s0
                  srli         sp, a7, 21
                  srl          a2, s11, s1
                  andi         s8, s5, -1711
                  lui          t0, 602111
                  sub          s8, a5, s9
                  andi         s6, t3, 1683
                  auipc        t0, 116327
                  slt          t4, s1, a5
                  or           a1, a1, s10
                  sub          s10, s5, s7
                  addi         s6, a3, -1058
                  sltu         s0, a4, a1
                  srli         a7, t6, 1
                  slti         t6, a1, 1648
                  and          s7, t5, s2
                  lui          a2, 622714
                  and          sp, sp, s2
                  sub          zero, t2, s3
                  slt          s4, t5, a6
                  slti         t1, a0, 1938
                  slt          a6, a6, t2
                  sltiu        ra, t5, 963
                  xor          a2, s4, t1
                  slt          t5, a0, a1
                  srai         a4, t1, 12
                  slti         a6, t4, -575
                  xori         s4, a5, 738
                  add          ra, t3, ra
                  sll          s1, t0, a5
                  sra          s5, s8, a2
                  auipc        s0, 63632
                  srai         a1, s6, 6
                  srai         a1, a2, 10
                  slti         a7, a4, 617
                  srai         s7, t2, 19
                  or           s5, ra, s2
                  add          s4, ra, s10
                  sub          s8, s6, a4
                  srli         s6, s6, 30
                  addi         a3, a5, 724
                  srai         a4, t4, 16
                  nop
                  sub          s2, a4, a3
                  addi         a4, s4, 1283
                  srl          sp, s2, s11
                  xor          a3, s10, s1
                  sltu         s11, t6, s3
                  addi         t6, ra, -1546
                  slt          t0, t6, s1
                  or           a4, s5, s7
                  sltu         t6, s3, t1
                  srai         s5, zero, 13
                  sra          s1, tp, ra
                  slli         s9, a0, 21
                  sub          s5, s6, s5
                  sra          s1, a0, t3
                  sltu         a1, a3, t0
                  xor          gp, a2, s9
                  xori         s7, a1, -2029
                  xor          sp, s4, t1
                  sltu         t1, s9, tp
                  addi         a2, s10, 1012
                  slti         s9, t4, -225
                  or           t2, s2, gp
                  sltu         sp, zero, s9
                  addi         a7, ra, -1561
                  sll          s2, s8, t1
                  xor          s4, s1, a1
                  andi         zero, t2, -1421
                  auipc        s7, 457486
                  sub          s0, a6, a0
                  sltiu        t4, t6, -41
                  or           s8, t3, s9
                  add          a3, s3, t6
                  slti         s7, s0, 402
                  xor          a4, t0, s5
                  ori          s5, a5, 1248
                  add          a2, s10, t0
                  ori          s9, s9, 1729
                  sub          a6, s6, t2
                  or           s11, s9, a2
                  slti         a2, t2, -1396
                  xor          a3, t0, s6
                  xori         s2, s1, -875
                  xori         s11, a7, 1951
                  sltiu        gp, a0, -495
                  auipc        s1, 19965
                  lui          a2, 263215
                  slli         t4, a2, 6
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           sp, 0x477275d0
                  li           a3, 0xffffffff
                  li           gp, 0xf826d657
                  li           t6, 0xdc2cbd08
                  li           s1, 0x375aa5fb
                  li           a2, 0xffffffff
                  li           t5, 0x4f98d00c
                  li           a4, 0x0
                  li           t0, 0xffffffff
                  addi         a2, gp, -1116
                  lui          s1, 469762
                  nop
                  nop
                  addi         s1, t5, -486
                  lui          s1, 1012876
                  sub          a4, t1, t0
                  addi         a2, gp, 1117
                  nop
                  nop
                  auipc        sp, 1000678
                  sub          t6, s1, gp
                  addi         t0, t0, -1132
                  sub          a4, t1, s1
                  auipc        a2, 57897
                  nop
                  addi         t1, t5, -1750
                  auipc        a2, 884695
                  nop
                  lui          t6, 397001
                  addi         sp, t5, -508
                  add          a4, t6, t1
                  addi         t6, t1, 434 #end riscv_int_numeric_corner_stream_20
                  add          a1, t0, a4
                  sra          gp, gp, s4
                  slti         a4, s3, -747
                  sub          s11, s3, a2
                  slt          a5, t1, t3
                  sltu         a2, s7, s7
                  slti         a2, a3, 1440
                  sra          s10, t0, s3
                  slt          a4, s11, a7
                  srai         t6, a5, 2
                  ori          t3, s6, -1363
                  andi         s4, s6, 2020
                  nop
                  sra          s2, sp, s2
                  sltiu        t2, t4, 1537
                  slti         a7, gp, -848
                  nop
                  srli         sp, s2, 13
                  srai         t1, s11, 7
                  and          a3, ra, s1
                  slli         s6, a1, 20
                  ori          t1, t0, -123
                  or           s1, s4, a7
                  and          t3, t2, s5
                  sub          s5, a7, sp
                  slti         s0, sp, 98
                  srli         s10, s0, 10
                  slti         t3, s5, -210
                  ori          a1, s9, 1493
                  slt          ra, t4, t6
                  slli         s0, t3, 13
                  nop
                  auipc        gp, 531765
                  slli         zero, a3, 12
                  xor          a5, a2, gp
                  or           a5, gp, s2
                  sltu         t1, s3, a5
                  slti         t5, t4, -1844
                  addi         s9, t2, -566
                  slti         s4, s10, -889
                  addi         a6, t3, 376
                  xori         s10, s6, -42
                  lui          zero, 3472
                  addi         ra, s3, 633
                  lui          t0, 44785
                  xori         t4, a5, -1714
                  xori         s0, ra, 1295
                  addi         t0, a7, 1535
                  ori          a2, s4, 1802
                  andi         s10, s7, -863
                  andi         s0, s8, -1461
                  srai         s6, s5, 14
                  srl          a1, a5, gp
                  and          a5, t2, a6
                  xori         s4, s5, -1491
                  or           s8, sp, gp
                  sub          gp, s5, gp
                  addi         a7, t6, 1116
                  srai         s10, t0, 7
                  nop
                  lui          s6, 841325
                  nop
                  lui          t5, 506974
                  andi         s5, a5, -1719
                  srai         t5, s8, 11
                  slt          a5, s3, t2
                  srl          a2, s11, s9
                  slli         s5, zero, 13
                  auipc        t5, 437253
                  or           a2, s5, a1
                  andi         s0, t3, -726
                  and          s5, a7, t6
                  xor          s5, s6, s1
                  addi         a6, s1, -296
                  auipc        s1, 305949
                  auipc        s4, 411304
                  srl          a1, ra, s3
                  sra          s4, gp, ra
                  or           zero, t3, t4
                  srai         a6, s9, 0
                  slti         s10, t3, 865
                  slli         gp, s11, 16
                  xori         s8, s1, -400
                  sltu         t2, tp, t1
                  addi         s8, s5, -196
                  lui          a6, 745736
                  andi         s6, a0, 358
                  ori          s7, a7, 261
                  lui          s11, 406790
                  andi         a2, t5, -1527
                  andi         s10, t4, -739
                  xori         s6, ra, 793
                  auipc        t3, 444822
                  sltu         ra, s7, s5
                  andi         a5, a1, 1282
                  srl          s11, tp, a7
                  slt          a5, a0, t4
                  slli         a3, s0, 21
                  auipc        s1, 45062
                  addi         s0, gp, 920
                  xori         s2, a6, 310
                  slt          t0, s11, tp
                  lui          s11, 546945
                  add          gp, s9, s11
                  xor          ra, s0, s5
                  sltiu        s10, s2, -1345
                  and          s8, s10, s11
                  add          a4, s3, t5
                  sltu         t5, a1, sp
                  xor          s4, s3, s11
                  lui          s8, 178447
                  nop
                  slti         s11, gp, -1900
                  sra          gp, s7, t1
                  srai         a7, s4, 25
                  xor          s5, a4, s8
                  ori          s9, zero, -1895
                  sll          s4, s5, zero
                  srli         a6, t4, 29
                  xori         t1, t4, -102
                  xori         s1, s6, 1271
                  add          s6, s10, a1
                  lui          s9, 66005
                  add          a7, t3, s0
                  lui          a3, 65657
                  and          a3, s10, t3
                  sub          s10, a3, a7
                  and          s10, a0, s3
                  addi         t4, t3, 1903
                  sra          a1, s2, t6
                  srai         s6, tp, 28
                  sltu         s2, sp, s6
                  xor          s9, tp, a3
                  slt          a2, a1, s0
                  srl          s10, t0, s9
                  addi         s4, s1, -283
                  srli         s10, sp, 14
                  and          zero, a2, zero
                  sll          t0, a4, ra
                  srai         t1, t4, 19
                  sub          a1, a0, s9
                  slli         s8, s5, 10
                  or           ra, t4, s11
                  xor          s2, s1, a5
                  xor          t5, t2, a7
                  sub          a4, s7, a5
                  xori         t6, a0, 324
                  xor          s9, a1, t4
                  xori         t6, t2, 1027
                  or           a7, s2, s1
                  slli         a1, tp, 12
                  srli         t3, t4, 17
                  xor          t1, a7, t6
                  slti         t1, s9, -1024
                  sll          a1, s9, s9
                  sltu         t6, t5, a6
                  slti         s1, t4, -110
                  srli         a4, s5, 20
                  slli         a5, s9, 13
                  andi         t5, t6, 1448
                  add          s8, s0, a4
                  auipc        s2, 36212
                  nop
                  slti         s8, t3, 1336
                  ori          a6, a0, 213
                  srl          t1, zero, ra
                  xori         s10, t3, -504
                  add          a7, s8, t2
                  nop
                  srai         s6, s4, 20
                  ori          a5, s2, 400
                  sra          s1, s1, a6
                  or           a6, a6, a5
                  or           t1, sp, s5
                  addi         t5, a7, -1061
                  andi         t5, s10, 1849
                  and          s7, a0, ra
                  ori          sp, s7, -1712
                  sra          a5, a5, gp
                  auipc        s1, 431072
                  or           s7, a1, t6
                  lui          s10, 433104
                  sll          t1, sp, s10
                  or           ra, t1, t3
                  srai         gp, t5, 24
                  sra          s11, s4, a1
                  sltiu        a4, sp, 1303
                  andi         s2, s3, 245
                  sltiu        a4, s11, 1840
                  sub          t4, s4, ra
                  lui          s5, 633721
                  slt          s8, t2, s8
                  xori         a5, t4, -1164
                  slti         s8, ra, -1345
                  or           s4, t4, s11
                  sll          t1, s4, t6
                  or           s4, a5, a6
                  nop
                  slt          a7, s8, s2
                  ori          sp, a6, 411
                  andi         sp, t6, -1917
                  sll          a4, s5, s3
                  sltiu        a2, s7, 519
                  sra          s8, a7, s5
                  slli         s1, a6, 26
                  sra          s1, t1, s9
                  addi         s1, s5, 374
                  sltu         s10, a3, tp
                  srli         s8, ra, 13
                  add          a4, gp, a4
                  sub          s5, s4, t5
                  sltiu        a7, ra, -244
                  sll          s8, a6, t3
                  addi         a1, ra, -659
                  add          s10, s10, a5
                  xori         s11, s6, 784
                  srli         t2, t2, 28
                  nop
                  xor          s1, s8, t2
                  lui          a6, 749479
                  add          a4, s11, zero
                  auipc        s2, 813056
                  sltu         s1, zero, t2
                  lui          gp, 399568
                  nop
                  sra          a5, s9, a5
                  sltiu        sp, a1, -349
                  sltiu        s2, a2, -1129
                  auipc        a1, 227658
                  ori          s11, s10, -575
                  srai         t6, s6, 24
                  sll          s4, s6, s11
                  sltu         ra, a4, t1
                  and          t0, t2, a6
                  srai         s0, sp, 19
                  sltu         s4, a3, gp
                  xor          s11, s6, s6
                  auipc        t4, 839419
                  andi         s10, ra, -1133
                  srai         sp, t2, 30
                  and          s5, gp, s0
                  ori          a1, zero, -1361
                  and          ra, s8, ra
                  xor          s0, a5, t6
                  xori         a1, s3, 558
                  nop
                  sltu         s10, a0, t5
                  ori          t1, s6, 651
                  and          s5, t2, t3
                  and          s11, s4, t1
                  lui          a1, 953388
                  auipc        sp, 157414
                  and          s8, sp, t0
                  xori         s0, t2, 1315
                  or           sp, a7, s1
                  auipc        t1, 442677
                  andi         a7, zero, 929
                  sltiu        s7, zero, 1057
                  sll          s10, a7, s11
                  sll          s11, s11, t1
                  srai         t1, t1, 11
                  auipc        gp, 430501
                  srai         a5, ra, 5
                  ori          a4, ra, 2003
                  sltiu        gp, a3, 1207
                  slli         s8, t1, 9
                  sll          s6, s10, s3
                  slti         a2, s2, -1592
                  lui          a7, 171724
                  sub          sp, gp, s3
                  sltu         s6, s4, t3
                  srl          s7, a3, zero
                  xor          a6, t3, s9
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           gp, 0x75fea05a
                  li           s10, 0x0
                  li           s8, 0xffffffff
                  li           t6, 0x8d2ab24f
                  li           t2, 0x0
                  li           s6, 0xffffffff
                  li           s1, 0xffffffff
                  li           s11, 0xffffffff
                  li           a6, 0xffffffff
                  sub          a6, a6, s10
                  sub          s6, s11, t6
                  auipc        s10, 1013071
                  auipc        s1, 276128
                  sub          s11, a3, t2
                  add          gp, a3, gp
                  lui          s11, 292191
                  addi         t2, a6, -1245
                  sub          s10, t6, s11
                  add          a3, s6, t2
                  lui          t2, 587709
                  lui          s11, 437394
                  sub          a3, t2, s6
                  sub          gp, s1, gp
                  sub          t6, s1, a6
                  sub          a6, gp, s11
                  add          s1, s1, t2
                  add          t2, t6, gp
                  addi         gp, gp, -260
                  sub          s8, t6, s11
                  sub          s6, gp, t2
                  addi         a6, t6, -1455
                  lui          s8, 879517
                  add          s1, s8, s11
                  auipc        t2, 168351
                  lui          t2, 490214 #end riscv_int_numeric_corner_stream_10
                  andi         a3, s11, -718
                  ori          a7, s1, -666
                  srli         s9, ra, 19
                  addi         a3, tp, -648
                  add          s9, s11, gp
                  lui          sp, 607985
                  sra          s8, t0, s7
                  add          s10, a2, t0
                  andi         zero, s0, 1868
                  slli         sp, s5, 4
                  xori         s0, zero, 1021
                  lui          a2, 135047
                  xor          gp, t1, ra
                  sltu         a6, s0, t3
                  sra          t3, s8, a6
                  ori          a2, s6, 990
                  sltu         sp, t1, a7
                  slti         gp, s8, -351
                  sltu         s4, a7, s11
                  xor          sp, a5, a5
                  xor          gp, s4, s7
                  add          s1, s10, t3
                  xor          ra, s1, s10
                  xor          a2, s7, a1
                  lui          a3, 439147
                  sra          a1, s9, s3
                  andi         a2, s1, 1766
                  xori         a2, s8, -1075
                  or           s2, s8, a0
                  slti         t2, t4, -391
                  slli         ra, s8, 7
                  slt          a2, t0, s3
                  sltiu        gp, a2, -1333
                  add          s0, s4, a7
                  srl          t0, zero, a7
                  andi         t3, zero, -1396
                  sltiu        a2, t3, -870
                  srl          s0, a1, s10
                  srai         a3, s9, 4
                  slli         s7, sp, 30
                  sltu         s10, zero, zero
                  xor          t5, s8, t0
                  addi         t2, t0, -393
                  xori         t6, s11, 162
                  slt          s6, s6, s3
                  and          gp, s8, a2
                  slli         s2, t0, 12
                  sub          s0, ra, s8
                  nop
                  srl          t1, gp, zero
                  addi         a3, a6, 353
                  sll          t0, t3, s9
                  slti         gp, a7, 15
                  andi         zero, s10, 1465
                  add          s5, s7, s2
                  and          sp, s4, s5
                  nop
                  auipc        gp, 1019620
                  or           t1, s7, t6
                  add          t3, t4, s5
                  sltiu        t1, gp, 643
                  xori         s7, gp, -131
                  sra          a7, t1, t1
                  srli         s11, t1, 24
                  nop
                  sltiu        s7, t0, -1603
                  add          s5, t1, s6
                  sra          s2, t4, s3
                  slti         t1, s8, -694
                  or           t0, s8, a7
                  srli         t1, s1, 22
                  ori          s7, a2, 1571
                  sltu         sp, t4, s5
                  or           t5, s1, s10
                  xori         a1, s8, -503
                  sra          s7, t3, a0
                  sltiu        s2, s7, 166
                  srl          a3, s9, t0
                  auipc        a1, 859301
                  slti         s8, s5, -307
                  add          ra, t1, s1
                  xori         a3, a1, -1180
                  addi         t3, s8, 1898
                  addi         a3, t2, 1842
                  slt          s8, s3, a5
                  slti         t0, a5, 1588
                  slt          a2, t6, t1
                  lui          t6, 122337
                  slti         t2, t5, -423
                  and          t4, t1, s0
                  slt          s2, sp, zero
                  sltu         t4, s6, ra
                  sll          s0, s2, t5
                  auipc        a5, 1014842
                  sll          a4, t0, zero
                  srli         s0, s9, 3
                  xor          a2, t5, s6
                  sub          s5, a0, a0
                  slli         a2, s7, 27
                  sub          s8, a0, a6
                  lui          s1, 802259
                  addi         s2, a7, 285
                  srai         s8, s8, 2
                  srli         s10, a4, 22
                  lui          t2, 889273
                  srli         t6, s4, 15
                  add          s2, t5, a0
                  addi         s8, s8, -1636
                  slli         s1, t2, 0
                  sltu         s0, t1, s10
                  xor          a4, a7, t5
                  xori         t1, ra, -1102
                  add          s5, a5, a3
                  auipc        s4, 631422
                  slt          ra, s4, s10
                  slt          s0, a2, t4
                  auipc        t3, 64596
                  lui          t1, 185779
                  xor          t2, s2, sp
                  auipc        s11, 447594
                  or           t0, sp, s11
                  xori         s9, s1, -713
                  xori         s0, a6, 960
                  addi         gp, s11, -1030
                  sub          a1, a2, gp
                  sltu         t2, a0, t2
                  slti         ra, s3, 1138
                  addi         s10, s4, 1907
                  auipc        ra, 743093
                  sltu         s4, s10, t1
                  sll          s6, s7, s8
                  nop
                  lui          a7, 584101
                  xor          s11, t5, s1
                  ori          s11, s2, -1819
                  srl          a4, s0, s2
                  sltiu        s5, tp, 1868
                  sll          s2, s5, t3
                  and          t4, tp, s2
                  sltu         t5, a2, s1
                  lui          t4, 1012567
                  xor          t2, gp, tp
                  sra          s1, s11, s11
                  srai         s0, s6, 0
                  srl          s5, a2, s2
                  sltu         s4, a0, s1
                  srli         t4, s8, 3
                  sltiu        gp, s7, 1093
                  add          a3, s6, s5
                  nop
                  add          a7, t0, s4
                  sltu         ra, t4, s3
                  sll          a1, a6, s11
                  srl          s10, ra, a2
                  auipc        a4, 646345
                  sll          s4, s3, t2
                  addi         s10, t6, -596
                  lui          s10, 45932
                  srli         a3, a5, 26
                  slti         a1, tp, -1612
                  srl          s9, a7, zero
                  srli         sp, t6, 1
                  srai         s1, s3, 30
                  sll          s10, s9, s3
                  srl          t2, s9, t1
                  or           t6, t3, t0
                  srai         t5, a5, 30
                  and          t3, zero, s2
                  srli         s1, sp, 30
                  srli         t2, s10, 28
                  sltiu        s8, a1, 1278
                  lui          s5, 204123
                  srl          s8, t4, tp
                  xor          s11, zero, s2
                  slt          t6, zero, t1
                  srl          t5, t2, a0
                  srl          a3, s0, s9
                  sltiu        s8, a5, 65
                  xor          s10, t5, a7
                  sra          a2, a6, a7
                  and          a5, a2, s3
                  add          s6, s10, t1
                  sltu         t5, s3, s9
                  sll          s10, t3, s2
                  addi         s11, a4, -1383
                  or           t4, s4, t0
                  xori         s1, t5, 657
                  slti         s11, t2, -1354
                  sltu         s11, zero, s8
                  or           a5, s9, a4
                  add          s4, a2, t1
                  andi         ra, gp, 141
                  slli         a6, s8, 16
                  add          s8, t6, tp
                  slli         t4, t4, 0
                  and          zero, gp, t4
                  lui          a4, 650683
                  and          s4, a1, t3
                  addi         s6, s1, 1332
                  sub          t4, s5, s8
                  xori         s9, zero, 725
                  auipc        a1, 153749
                  nop
                  or           s2, zero, gp
                  slli         s4, sp, 23
                  sll          s9, s0, gp
                  auipc        t2, 997051
                  srai         t4, ra, 23
                  or           t5, t2, s7
                  andi         s6, ra, -1521
                  or           s6, gp, sp
                  add          t4, t4, t2
                  srli         a3, s9, 15
                  srl          a3, a1, a2
                  xori         a6, s2, -895
                  and          s4, t4, s8
                  sltu         zero, a6, t4
                  or           sp, s0, s3
                  sltu         a1, a6, s3
                  sra          a4, s6, s0
                  srli         t4, a5, 4
                  xor          a4, ra, a7
                  srai         t6, sp, 25
                  nop
                  sra          s8, a2, a7
                  sltu         t2, s3, s4
                  srli         zero, t0, 30
                  ori          a3, t3, 924
                  slli         a7, s6, 13
                  addi         s7, s11, 700
                  add          s11, t2, t5
                  sltiu        s0, a1, -1726
                  addi         a2, ra, -869
                  srai         t4, s3, 11
                  slt          a5, t5, s4
                  sltu         s5, s6, s1
                  nop
                  slli         s10, tp, 3
                  sltiu        a2, s10, -1764
                  sub          t4, a6, a2
                  srai         a2, s10, 5
                  slti         t5, t0, -688
                  sra          gp, gp, t1
                  xor          t5, a0, t6
                  sltu         a3, ra, s8
                  lui          s0, 479018
                  sub          t1, s11, s4
                  ori          s9, s10, 992
                  sltu         a2, ra, t2
                  add          s1, s2, s5
                  sltiu        zero, ra, -1362
                  sra          a1, t3, s4
                  slt          s7, a6, s5
                  srl          t0, a3, s8
                  srl          t6, t4, t1
                  xori         t2, t4, -162
                  sra          s0, t2, s11
                  sub          zero, s8, s2
                  nop
                  lui          t1, 555982
                  sltu         s11, t3, s6
                  addi         a1, s5, -1447
                  sub          t0, s10, ra
                  xori         s9, s4, 28
                  slt          s10, s7, a1
                  srai         zero, s0, 11
                  and          a6, s5, a2
                  or           a3, s8, t0
                  srli         s7, tp, 28
                  srli         s10, a5, 3
                  or           a7, s8, s6
                  lui          gp, 584163
                  sra          s10, gp, s2
                  srai         s0, a4, 27
                  sltu         s4, t1, sp
                  sltu         s11, sp, zero
                  sub          gp, s3, a0
                  sub          a2, t1, ra
                  addi         t3, s9, -21
                  add          a1, t4, s1
                  andi         t3, t6, -599
                  sub          a1, tp, gp
                  sltiu        s4, s0, 584
                  sltu         a7, sp, s8
                  nop
                  sll          ra, tp, a4
                  auipc        s0, 73371
                  lui          t3, 59804
                  li           s6, 0x48a18d57 #start riscv_int_numeric_corner_stream_33
                  li           s0, 0x0
                  li           a5, 0x0
                  li           t0, 0xffffffff
                  li           gp, 0xffffffff
                  li           a3, 0x80000000
                  li           s5, 0x80000000
                  li           sp, 0xf5552f28
                  li           s9, 0x80000000
                  li           s2, 0xffffffff
                  sub          a5, s9, s0
                  sub          a3, a3, gp
                  nop
                  add          s2, s0, t0
                  auipc        a5, 1011679
                  sub          s9, s6, sp
                  lui          s2, 948918
                  auipc        gp, 844640
                  addi         s5, a5, -201
                  add          s0, s6, gp
                  auipc        s0, 689514
                  addi         t0, gp, -489
                  nop
                  add          a5, s6, a5
                  sub          gp, a5, s9
                  lui          gp, 123450 #end riscv_int_numeric_corner_stream_33
                  auipc        s4, 671250
                  slti         s9, a6, 806
                  add          a7, s9, s7
                  add          s4, t6, s7
                  and          t4, gp, ra
                  slli         t1, a0, 18
                  srli         s1, s11, 19
                  sltiu        t5, a7, -1786
                  sltu         t1, t6, a6
                  sub          t6, t4, t6
                  addi         s1, s8, 620
                  sltu         t1, a1, s9
                  xor          s2, a2, a3
                  sltiu        a1, s2, -1396
                  xor          a2, s7, s5
                  srai         t2, a7, 0
                  srai         a1, t4, 16
                  slli         s11, sp, 18
                  slt          s5, s0, gp
                  xor          s4, s0, zero
                  add          ra, s11, gp
                  slti         s4, t5, 1000
                  srai         t5, s3, 15
                  slti         s9, a2, -1293
                  xor          gp, t1, t6
                  srli         t3, s9, 28
                  lui          s11, 70921
                  xor          sp, zero, s7
                  sub          a7, s7, a6
                  lui          sp, 286126
                  srli         s5, s2, 13
                  ori          s5, s11, 1715
                  xori         t2, gp, 275
                  sltu         s9, a0, s9
                  sltu         s5, t2, ra
                  srli         a3, s10, 22
                  lui          t2, 572110
                  andi         a6, s11, -37
                  slti         s11, s8, -1726
                  sra          s1, t1, s1
                  xor          a3, a4, zero
                  sltu         s5, a7, a6
                  addi         zero, s4, 1482
                  slti         a6, a5, 357
                  srli         s8, gp, 4
                  or           a7, t3, t3
                  auipc        s11, 248152
                  and          s6, s1, s5
                  nop
                  addi         s2, a1, 819
                  sltu         t0, a1, gp
                  srl          t0, t6, s0
                  slli         s8, s4, 19
                  xor          s6, zero, t3
                  and          s2, s7, t4
                  add          a5, s3, tp
                  sra          t3, tp, a2
                  srli         s2, s1, 11
                  and          s0, a5, t5
                  slt          t6, s4, tp
                  sltiu        t0, tp, 1841
                  sll          t5, s10, s4
                  xori         zero, a3, -766
                  slt          s4, s8, zero
                  slt          t4, sp, t3
                  sltu         s11, t1, t3
                  lui          s7, 1007878
                  srli         t0, t0, 6
                  auipc        s1, 323843
                  sll          gp, s6, s4
                  and          t1, s11, t6
                  slt          t6, ra, ra
                  nop
                  sltu         s4, s2, s4
                  sltu         ra, a0, t1
                  xori         s11, s5, -2021
                  addi         s1, s9, -199
                  and          t3, a3, a6
                  slli         s1, t4, 19
                  andi         gp, t4, -139
                  srli         s0, s1, 28
                  sltu         s9, s8, s5
                  slt          s9, s1, s11
                  lui          t6, 263819
                  add          a2, gp, t4
                  and          s5, s10, t6
                  andi         s7, t3, -422
                  xor          s9, a2, t3
                  andi         a1, a1, -597
                  or           t4, s5, s1
                  sub          t0, a4, t5
                  sra          sp, s3, a5
                  ori          t1, gp, -62
                  slt          a4, s2, a7
                  and          s10, t6, sp
                  slli         a3, a2, 10
                  sll          a5, s11, a6
                  and          s2, zero, t6
                  sub          s7, tp, a5
                  sltiu        t6, a1, -2016
                  sltu         s4, tp, a5
                  nop
                  srai         t4, gp, 15
                  sll          t0, s10, t6
                  lui          a3, 260207
                  auipc        t5, 904518
                  and          s2, s7, t6
                  ori          s2, t6, 968
                  sub          t2, a4, tp
                  srli         gp, s3, 18
                  or           sp, a7, ra
                  nop
                  lui          s0, 191357
                  nop
                  xor          a1, t3, s2
                  xori         t0, a7, 1369
                  sltiu        t6, a6, 4
                  sltu         s11, s0, t0
                  auipc        gp, 694376
                  srli         s7, a7, 2
                  xor          a7, a0, zero
                  srli         s10, t1, 16
                  srli         s2, s7, 10
                  add          s11, a5, ra
                  slli         t6, sp, 16
                  and          s9, gp, gp
                  addi         s6, s6, 1801
                  srai         t1, s7, 9
                  slli         s9, a4, 7
                  nop
                  ori          s10, s9, 365
                  andi         s2, sp, -1236
                  lui          a6, 505790
                  srai         a7, s1, 22
                  srl          s1, a4, s9
                  sltu         a6, s7, s2
                  sra          t1, s6, a6
                  addi         sp, a5, -1521
                  slli         s7, s7, 3
                  andi         t1, s4, 1309
                  and          s1, s0, t2
                  srl          s6, t2, a4
                  addi         s7, a6, -1588
                  add          s8, tp, t2
                  nop
                  slt          s7, s10, s11
                  srai         s5, a7, 21
                  sra          s1, s5, t6
                  slt          s7, s2, ra
                  xori         ra, s3, -2042
                  ori          t6, s11, -1248
                  sltiu        a1, a6, -331
                  nop
                  addi         s0, t5, -829
                  xor          t0, ra, s8
                  sub          s6, s6, tp
                  srai         a3, t5, 18
                  ori          t2, t5, 1935
                  or           a5, sp, a7
                  and          s7, s2, a2
                  sltu         s10, t5, s4
                  lui          s4, 470759
                  and          ra, a1, t4
                  sra          t6, gp, a3
                  sub          sp, s5, s5
                  xori         a3, t1, -415
                  xor          a3, sp, a6
                  nop
                  sltiu        a2, t6, -754
                  sll          t0, s5, a6
                  lui          s11, 1025754
                  sub          a2, a5, s2
                  addi         s5, a7, -1670
                  slti         a1, s11, 1012
                  addi         a6, t3, 1707
                  srai         s1, s8, 20
                  slt          a1, a1, s9
                  srli         a1, a0, 26
                  slt          a5, zero, s8
                  lui          s5, 149068
                  sltu         s7, s5, t3
                  srai         s0, t3, 19
                  add          s1, t4, s4
                  addi         a4, a4, 521
                  ori          s2, s0, 1999
                  xor          a5, a2, t2
                  sltu         gp, s5, s4
                  nop
                  nop
                  srli         a3, a7, 18
                  srli         s5, zero, 18
                  sll          t1, a5, t0
                  sub          ra, a4, s7
                  lui          a3, 672675
                  srli         s6, s10, 9
                  srai         t4, a7, 13
                  sltiu        a2, t0, 1721
                  slti         a6, s3, -23
                  nop
                  xor          gp, s10, a5
                  srl          t1, a1, s7
                  sll          s11, t2, t4
                  xor          gp, zero, s9
                  slli         gp, s8, 29
                  sltu         s7, a2, s5
                  srl          s4, s11, a2
                  srli         t2, s4, 17
                  sub          a6, a3, s4
                  andi         t3, a0, 1336
                  slt          a5, t3, s10
                  slli         s7, s11, 18
                  sra          a4, zero, ra
                  xor          a1, gp, t0
                  addi         zero, s4, -603
                  srai         s11, sp, 4
                  or           s1, t4, s0
                  and          a1, s4, t4
                  nop
                  slli         t4, a3, 8
                  sltiu        s10, s6, -676
                  add          t0, t0, a4
                  ori          s9, ra, 2029
                  sll          a7, a5, a6
                  ori          t6, s10, 1152
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_38
                  li           a5, 0xbbfa71c3
                  li           s0, 0x80000000
                  li           s6, 0x0
                  li           sp, 0x0
                  li           t0, 0x0
                  li           s9, 0xffffffff
                  li           t1, 0xffffffff
                  li           s8, 0xe9ddc9a5
                  li           t3, 0x80000000
                  add          a5, a4, s9
                  nop
                  addi         t3, s9, -1031
                  lui          s9, 487861
                  addi         t0, s0, -1021
                  lui          a5, 736152
                  sub          t0, sp, t0
                  add          t0, s6, s0
                  nop
                  auipc        sp, 84547
                  lui          a4, 203091
                  add          s0, t0, t0
                  auipc        a5, 511286
                  addi         s8, t3, 222
                  add          s8, sp, s0
                  auipc        s0, 842335
                  add          t0, s9, t3
                  sub          a5, t0, a5
                  lui          a4, 748356
                  lui          sp, 396299
                  auipc        s9, 431114
                  addi         t3, s9, 497
                  add          sp, s9, t0
                  nop
                  nop
                  auipc        t0, 743165
                  nop
                  auipc        s0, 448591
                  add          s9, s8, a5 #end riscv_int_numeric_corner_stream_38
                  or           a2, s4, a4
                  xor          t2, t0, s7
                  sub          s8, t0, s7
                  add          s8, s2, s5
                  sltu         s8, s10, t0
                  sll          s2, t4, t6
                  and          a6, s0, s8
                  sub          a2, a3, s5
                  add          a5, a3, a4
                  auipc        t2, 494715
                  sltiu        zero, t4, 1157
                  sub          t3, tp, a2
                  and          a7, t3, sp
                  sub          s4, t3, sp
                  auipc        t3, 162803
                  slli         t0, a6, 26
                  ori          t5, a3, -1821
                  sub          sp, t4, a2
                  srai         t5, s9, 29
                  addi         s8, a7, -693
                  sltiu        t6, s11, -1499
                  andi         ra, s2, -760
                  sll          s2, s5, sp
                  srli         s10, s11, 6
                  auipc        a4, 726068
                  sltu         t5, s6, sp
                  sub          a5, t0, tp
                  slli         a3, sp, 23
                  xor          a1, t4, t1
                  xori         a3, a1, -2008
                  xor          a6, t3, zero
                  sll          a3, t2, gp
                  sltiu        a3, a4, 1187
                  sltiu        gp, t4, 1713
                  srli         s6, t1, 23
                  srli         t4, t2, 21
                  lui          zero, 1005024
                  srai         t3, a6, 2
                  slti         a5, t5, -563
                  ori          a4, zero, 1436
                  sra          t5, s9, zero
                  addi         t2, s5, 751
                  slt          t3, a6, s6
                  srl          a4, sp, tp
                  or           s11, s1, a1
                  ori          t5, a7, 1344
                  slli         t3, s10, 8
                  xori         a1, a6, -918
                  xori         a2, sp, -1656
                  and          a5, a0, t2
                  slli         zero, t2, 17
                  ori          s9, t6, 1895
                  lui          gp, 654224
                  sra          s2, s0, a4
                  srl          zero, s9, s4
                  addi         a4, a5, 574
                  or           s10, t1, a7
                  andi         ra, a0, -1592
                  auipc        a5, 711079
                  xori         s11, s3, -2010
                  and          s7, s6, t6
                  slli         t3, s5, 3
                  sltu         s2, s6, s5
                  slli         t1, a7, 9
                  slt          s9, a0, a0
                  srli         t0, t2, 16
                  sltiu        s0, a3, -99
                  sub          gp, s11, sp
                  add          a4, s2, s10
                  nop
                  sra          ra, s11, a7
                  slti         a7, s1, 1273
                  ori          s2, s2, -1744
                  add          s0, a2, a3
                  addi         t2, s2, 1964
                  xori         s5, a2, 1180
                  auipc        s10, 814650
                  lui          t5, 507850
                  nop
                  add          a3, s8, s9
                  srl          a1, s2, a0
                  slt          t6, t6, s0
                  nop
                  sub          a3, t0, t0
                  sltu         s0, a5, t2
                  slt          a4, t0, t0
                  lui          t5, 771557
                  andi         s10, a7, 1383
                  slli         a7, a4, 20
                  andi         s11, s7, 937
                  sra          ra, s8, s7
                  add          s7, t4, a5
                  or           sp, s10, ra
                  and          s0, s9, s11
                  srli         a5, s11, 6
                  sltu         a3, gp, s4
                  andi         t2, s7, -1054
                  ori          gp, s9, -373
                  slti         s0, a5, 245
                  sltiu        s1, t3, -47
                  sra          s7, tp, t0
                  nop
                  sltiu        zero, s9, -949
                  slti         s4, s6, -1821
                  slt          a4, t6, t1
                  srai         s10, s7, 21
                  auipc        t6, 617843
                  auipc        s10, 150616
                  andi         s1, s0, 1239
                  srli         t4, s4, 9
                  srli         t6, zero, 21
                  sra          t4, t5, s4
                  slli         a1, s8, 27
                  slli         s4, zero, 23
                  lui          s10, 289969
                  auipc        a6, 360142
                  sltu         s2, a1, ra
                  and          t1, s5, ra
                  ori          a6, a3, -1033
                  xor          a3, s0, t5
                  addi         a6, ra, -590
                  and          s8, a5, s3
                  srl          s8, gp, t3
                  xori         s0, a5, -1858
                  srl          a1, a2, t6
                  ori          t6, s10, -438
                  slti         a3, s7, 1467
                  sll          s11, sp, a5
                  or           t5, a0, s5
                  slli         a5, t3, 2
                  sltu         s6, s8, s4
                  sll          t5, s7, a2
                  xori         a2, s6, -152
                  nop
                  and          a2, t0, t3
                  sll          s5, a3, a1
                  sltiu        t3, a1, 1459
                  xor          gp, gp, s3
                  lui          a6, 727812
                  auipc        t5, 913928
                  add          a4, s9, t4
                  sra          s4, a5, t5
                  xori         s11, a4, 275
                  srl          a1, a3, zero
                  addi         s6, a0, 1505
                  sra          s1, s11, s7
                  srai         s9, tp, 25
                  srai         t1, t5, 27
                  sub          s5, s3, t1
                  srli         zero, s5, 5
                  nop
                  addi         gp, ra, 1747
                  nop
                  sra          s10, a0, s5
                  or           s10, s0, sp
                  srai         sp, s8, 1
                  sub          s9, ra, a5
                  sltiu        t4, t6, -516
                  slti         zero, zero, 1425
                  srl          s10, tp, t0
                  and          s6, s10, s1
                  andi         s5, s9, -1814
                  sra          t3, s0, ra
                  and          s2, sp, s10
                  addi         gp, s6, -663
                  sra          s10, a6, s7
                  sra          s10, gp, s9
                  auipc        a4, 479916
                  nop
                  sltu         t4, s9, a5
                  lui          ra, 880763
                  xori         s9, t5, 975
                  sltu         s9, a0, zero
                  slt          t3, s0, a1
                  andi         a5, t5, 1650
                  and          a1, a4, s11
                  nop
                  sltiu        sp, t4, 90
                  xor          ra, a1, t2
                  addi         sp, t3, 290
                  or           s7, t5, s8
                  sub          s1, t0, a4
                  or           s9, tp, a0
                  addi         a4, t6, 1858
                  add          zero, tp, t0
                  sltiu        ra, a7, -1106
                  slt          t3, s2, t1
                  sub          s1, s4, t0
                  addi         a1, t3, 184
                  slt          s8, s4, t6
                  sra          s7, a5, s11
                  srli         a1, s10, 0
                  sll          sp, s5, ra
                  srli         a6, t0, 21
                  ori          a1, s1, 492
                  sltu         s5, a4, a5
                  and          a3, tp, t6
                  or           a5, a3, t0
                  and          a5, a2, ra
                  or           t4, s11, a3
                  auipc        gp, 675504
                  sra          s1, s10, a3
                  sltiu        a3, ra, 1684
                  sll          s9, t3, s2
                  sra          a4, a5, a3
                  srli         t2, a0, 22
                  and          t6, s1, s9
                  slli         a2, t6, 17
                  xori         gp, t0, -1722
                  srl          t0, a5, s0
                  andi         a2, ra, 870
                  sub          s1, t6, ra
                  sll          s9, t3, gp
                  sltiu        s11, s10, -620
                  sll          zero, t2, t6
                  auipc        t6, 152640
                  sub          a2, s5, s2
                  sltu         s2, a7, s6
                  sra          s2, s3, s7
                  sll          t0, a6, t3
                  sub          a2, s5, s1
                  and          s4, a5, s11
                  srl          t3, s4, t0
                  sra          s5, s7, s9
                  sll          s11, s9, s7
                  and          t0, a7, t5
                  sltu         s5, s11, a4
                  andi         s9, s7, -707
                  slli         a6, s7, 19
                  auipc        a1, 517572
                  srl          gp, s7, tp
                  and          s2, a0, a1
                  srai         a5, t5, 4
                  addi         t3, s9, 1121
                  sltu         s0, s2, a2
                  sub          gp, s2, tp
                  and          s7, s2, s2
                  auipc        t2, 817560
                  srli         gp, s9, 23
                  sra          s5, s7, a7
                  addi         s0, a3, -926
                  sub          a5, s9, s1
                  and          s10, tp, a2
                  lui          t5, 342520
                  auipc        s2, 133095
                  xori         a3, s6, 120
                  sltiu        t5, s11, -1856
                  or           t4, sp, a3
                  addi         sp, zero, -32
                  nop
                  andi         t6, s3, 1704
                  and          s0, s0, s10
                  slti         t2, a2, -1227
                  lui          s11, 993938
                  addi         s0, s8, -1862
                  sub          s2, sp, a7
                  sltiu        s2, sp, 741
                  add          s11, s7, s1
                  lui          s10, 226345
                  sra          s2, s1, s10
                  auipc        a1, 963623
                  andi         s2, s6, 656
                  add          sp, s0, t1
                  xor          t0, a3, t6
                  slli         s4, s8, 25
                  slti         sp, t2, -1463
                  sll          s7, t4, s8
                  srai         ra, ra, 20
                  xor          t6, a1, s7
                  sra          s11, s3, zero
                  addi         s9, t3, -1016
                  lui          a6, 932935
                  slti         a3, s6, -1235
                  srai         s4, s9, 14
                  andi         s11, s11, 2011
                  sub          t0, a5, s0
                  and          a6, s9, a5
                  slt          s1, a4, zero
                  lui          s7, 214715
                  srl          a2, s6, s1
                  srl          s11, gp, a6
                  sltiu        s5, s9, 1183
                  ori          sp, s1, 1306
                  sra          s10, t3, t4
                  sll          s8, tp, s7
                  sll          t5, t5, s7
                  auipc        s5, 219553
                  srai         s11, s8, 0
                  auipc        a5, 474294
                  andi         ra, t3, -1830
                  sub          s10, a3, gp
                  srli         s7, s3, 15
                  srl          ra, t4, a7
                  xori         t3, gp, 171
                  or           t3, tp, a5
                  xor          s0, s8, s8
                  xori         s0, sp, -1256
                  ori          s8, a3, -579
                  lui          zero, 844616
                  xor          zero, tp, s2
                  slti         t6, a0, -1016
                  srli         sp, gp, 1
                  auipc        s1, 599994
                  add          a6, ra, s2
                  ori          a7, s2, -219
                  nop
                  slt          t6, s10, gp
                  addi         a1, a4, -1845
                  sra          a3, sp, a6
                  slt          a1, s10, a2
                  sltu         a7, s0, a4
                  sltu         t6, s5, a5
                  sub          s1, a6, s6
                  srai         s6, t3, 19
                  sll          s6, a6, a0
                  ori          sp, gp, 1235
                  or           a3, s9, a1
                  or           s6, a4, t3
                  srl          t0, s8, a5
                  slti         sp, s5, -91
                  addi         a6, ra, -1631
                  srai         s0, s7, 1
                  add          a1, s1, t5
                  sltu         t2, a7, ra
                  srai         zero, a3, 29
                  auipc        t4, 881753
                  ori          s6, s5, -280
                  sltiu        s11, s2, -1033
                  xori         s6, sp, 1034
                  srai         gp, s8, 29
                  sltiu        s4, gp, -1926
                  srai         s1, sp, 3
                  sub          t0, a4, s6
                  sltu         a2, t3, a2
                  sra          t0, zero, ra
                  sra          s7, s4, s11
                  srl          ra, s1, s11
                  sll          t3, a6, s9
                  lui          s4, 161319
                  sltiu        s11, tp, -787
                  andi         s6, a6, 185
                  xori         s1, sp, -1545
                  and          a4, tp, t5
                  sub          s0, a2, a3
                  slt          a2, s10, a7
                  andi         s2, s7, 467
                  ori          s6, sp, 1292
                  srli         a4, t5, 13
                  xori         a1, t4, -1780
                  addi         t6, a1, 258
                  sltu         s2, sp, s7
                  or           s7, s6, s11
                  xor          a3, s0, s6
                  nop
                  slt          s6, a3, a5
                  nop
                  or           gp, t3, sp
                  sub          s5, a5, t1
                  or           t5, s3, t2
                  sra          s0, a0, a2
                  auipc        s11, 611730
                  nop
                  slti         t5, t1, 843
                  addi         s10, s4, -54
                  andi         s0, s7, 381
                  slti         s8, a3, -1486
                  sll          a2, t5, s4
                  slti         s4, s8, -942
                  slli         a2, zero, 1
                  xori         a6, s11, -1651
                  auipc        t1, 912777
                  or           t2, s4, zero
                  slti         t3, s2, -889
                  auipc        s4, 483068
                  and          s5, s2, t2
                  slt          t1, s8, a3
                  xor          gp, a3, s5
                  or           s0, t6, s2
                  slli         t5, a0, 16
                  slt          a1, a4, s5
                  srai         s7, a7, 25
                  srli         t5, s1, 14
                  auipc        s2, 533879
                  addi         a6, sp, 334
                  sltiu        zero, s8, 576
                  or           s0, t6, s0
                  slt          s6, t6, t4
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           s11, 0xffffffff
                  li           a2, 0x524abbff
                  li           s2, 0x1ee11c71
                  li           s7, 0x80000000
                  li           t3, 0x80000000
                  li           gp, 0xffffffff
                  li           a1, 0x80000000
                  li           sp, 0xffffffff
                  li           t4, 0x0
                  sub          a2, s6, a1
                  sub          a1, t4, t4
                  sub          s6, t4, s6
                  sub          s2, s11, s7
                  sub          s7, a1, s7
                  auipc        sp, 642324
                  nop
                  sub          s7, s7, s7
                  lui          a1, 301655
                  addi         s7, gp, 335
                  addi         a1, s11, 1908
                  add          sp, gp, s11
                  add          a2, a2, gp
                  add          s6, s7, s2
                  lui          s6, 286164
                  nop
                  lui          a2, 252108
                  sub          t4, sp, s2 #end riscv_int_numeric_corner_stream_15
                  slt          t0, s4, s3
                  sltiu        ra, t1, -69
                  or           s1, a7, a3
                  slli         s2, s9, 1
                  or           gp, a6, zero
                  add          a4, t2, tp
                  auipc        t3, 400061
                  ori          s1, s9, 2027
                  or           ra, a4, a4
                  sltu         s5, ra, s4
                  lui          s5, 775631
                  slt          zero, s6, s6
                  xor          s0, a2, a7
                  sra          s10, t2, s4
                  sra          s9, ra, a6
                  ori          a2, a1, 1799
                  sll          a1, s2, gp
                  slt          sp, s11, s8
                  sltiu        sp, a4, -1933
                  sra          a7, t4, gp
                  sub          t5, sp, a1
                  add          zero, s10, s1
                  sltiu        a5, a0, 849
                  xor          s2, s9, t2
                  slti         s9, a6, 257
                  xori         s11, a7, 129
                  xor          a7, a2, t6
                  or           s4, s2, s8
                  xor          t4, s11, s0
                  auipc        s11, 890953
                  xori         t3, a2, 1529
                  sra          a4, s3, s4
                  srai         s11, a2, 13
                  lui          t4, 277248
                  sra          t1, a6, s11
                  andi         gp, s0, 1861
                  auipc        a7, 510500
                  and          t4, a6, a7
                  and          s10, s0, ra
                  srli         ra, a5, 12
                  xori         t6, tp, 107
                  ori          t5, s5, 1364
                  slt          t4, s6, s1
                  srli         a6, t4, 11
                  and          t1, t2, s10
                  srli         t6, s10, 2
                  sltiu        s0, s9, -2000
                  or           t0, t5, a4
                  srl          a1, t6, a2
                  slli         s1, s4, 10
                  srl          ra, a1, s7
                  or           a3, s6, s9
                  sra          s8, t1, t0
                  sltiu        gp, gp, 1164
                  lui          a6, 735982
                  ori          a4, ra, -49
                  add          zero, sp, s0
                  xor          s0, ra, t1
                  slti         a3, s6, -1534
                  lui          s0, 857700
                  srai         s4, s3, 22
                  addi         s2, t6, -2019
                  sltiu        t5, t2, 4
                  xor          ra, t1, a2
                  andi         s7, s8, -1635
                  slli         s10, s7, 27
                  add          sp, t3, s10
                  slli         s2, sp, 26
                  or           s9, t4, zero
                  or           gp, s5, s9
                  ori          s0, gp, 664
                  xori         s9, t6, -1525
                  addi         t5, a5, 1866
                  addi         a4, a1, 1955
                  slt          s9, s8, t3
                  slti         s5, s9, 83
                  add          a6, a0, s8
                  add          t1, s5, s4
                  srli         s4, a7, 17
                  auipc        sp, 133712
                  nop
                  sub          a5, s9, t2
                  andi         s9, s5, -695
                  slli         s11, s11, 13
                  srl          s1, s0, t6
                  auipc        s7, 267125
                  xor          a5, s11, t3
                  srai         s4, ra, 26
                  andi         s11, t1, -1816
                  and          t0, s4, t2
                  sltu         s7, s2, s5
                  slt          t2, t0, s9
                  auipc        s0, 825997
                  srli         sp, t6, 16
                  ori          s0, gp, -1270
                  srai         s5, s6, 10
                  or           a2, s11, a3
                  srai         gp, a6, 12
                  sltu         a3, ra, sp
                  and          t0, a3, a7
                  xor          a5, a0, gp
                  sltu         sp, a2, s7
                  sltu         s1, t4, tp
                  srli         gp, s11, 29
                  slt          sp, t3, t4
                  xor          t6, a6, a7
                  sub          s11, t6, s0
                  lui          gp, 276011
                  auipc        a3, 1028739
                  srai         t1, a3, 26
                  nop
                  sltiu        s8, s5, 532
                  addi         s10, gp, -1453
                  ori          a1, a2, 198
                  or           a7, s9, a5
                  srli         t0, s3, 23
                  lui          s7, 29186
                  add          t6, s9, t5
                  add          ra, t3, s1
                  slli         zero, a4, 17
                  nop
                  slt          t1, t4, s3
                  auipc        s2, 305772
                  sra          a2, tp, gp
                  xor          ra, t0, a6
                  nop
                  xor          ra, a4, s4
                  lui          s8, 119420
                  addi         gp, a4, -1990
                  and          s7, a5, a7
                  sltiu        t3, s1, -300
                  and          t4, s9, s3
                  sltiu        t1, t6, 1785
                  sub          a1, zero, t1
                  xor          s11, a0, s3
                  slti         s5, s10, -758
                  sll          s10, gp, a6
                  ori          a3, s11, -2000
                  addi         a4, a1, -2002
                  sll          s11, gp, a7
                  or           s2, a1, a2
                  slti         s6, gp, 300
                  slli         t0, zero, 24
                  slt          s4, s4, a1
                  slti         a7, s8, -585
                  sltu         a7, ra, s8
                  sub          a3, t6, s1
                  sll          a6, s1, s8
                  addi         a7, s3, 1938
                  srli         s0, s9, 21
                  sra          gp, t1, a7
                  xor          t1, s4, tp
                  lui          s11, 160615
                  ori          zero, s10, 790
                  slt          a5, a4, t5
                  ori          s6, zero, 2006
                  or           s5, s4, t0
                  nop
                  srl          s7, t1, zero
                  sltu         a7, gp, s10
                  srai         gp, sp, 30
                  auipc        t5, 896190
                  add          s0, s10, s1
                  srl          t2, s4, ra
                  and          s5, ra, a5
                  xor          t0, sp, a3
                  srai         s9, s10, 22
                  and          ra, zero, s5
                  srli         ra, a4, 11
                  or           s11, t1, s0
                  auipc        a3, 390271
                  sltiu        s2, s4, -1935
                  srl          sp, s4, s5
                  srai         a1, t2, 31
                  lui          t1, 356724
                  slli         s9, s11, 19
                  ori          t4, s3, -866
                  srai         a5, ra, 16
                  sltu         gp, s3, sp
                  or           sp, t3, a5
                  srl          s1, a1, a7
                  ori          t5, t4, 1140
                  sub          a1, a7, s10
                  slli         a7, t1, 9
                  addi         a6, s4, -1933
                  srli         s6, s3, 31
                  ori          s7, s5, -248
                  srai         s0, gp, 2
                  andi         s11, tp, 1793
                  and          a7, s6, a2
                  sll          t5, tp, s3
                  slt          a5, a4, s0
                  sll          t6, a3, tp
                  srai         a5, t6, 12
                  srl          t4, a0, a6
                  lui          a1, 445020
                  slt          a4, a6, t3
                  auipc        zero, 565104
                  sll          a5, s7, s4
                  sll          s6, a0, a2
                  slt          s0, zero, a2
                  auipc        s1, 516156
                  slti         a7, s8, -1025
                  or           t5, a4, a6
                  slti         a4, s7, 516
                  addi         a2, s4, 897
                  srl          s7, a3, s0
                  andi         a7, ra, -1924
                  sltu         a4, t0, a3
                  and          a5, t3, a1
                  xor          t1, s2, s4
                  xori         s6, s1, 1352
                  nop
                  or           s8, t0, sp
                  sll          s9, a4, s3
                  lui          sp, 924611
                  auipc        t4, 625894
                  srai         a4, a6, 22
                  slt          s11, sp, s0
                  xori         t3, a5, -2024
                  slti         s6, s8, 137
                  sltu         s11, tp, s5
                  or           t4, t6, s3
                  slt          s9, t1, gp
                  nop
                  xor          t3, t4, s11
                  srli         s10, s6, 26
                  andi         ra, s5, 187
                  or           s0, a2, s10
                  nop
                  sra          s7, s3, a0
                  slti         t0, a7, 1769
                  sll          gp, a2, a7
                  sra          s1, sp, t1
                  srai         s10, a5, 5
                  ori          t1, t5, -2048
                  slli         t6, t5, 22
                  slt          a2, s1, t5
                  andi         gp, s1, 1919
                  lui          sp, 808915
                  slt          t6, s2, a2
                  and          t1, s3, s1
                  sub          gp, s0, a6
                  nop
                  sltiu        sp, a1, -1581
                  sub          zero, t1, s9
                  ori          s1, s8, 1138
                  lui          t6, 274467
                  slt          t4, a5, a2
                  srai         a3, zero, 22
                  add          t0, sp, gp
                  ori          a3, a6, 859
                  srl          a7, s6, zero
                  add          a5, s4, zero
                  slli         ra, s11, 15
                  or           s9, t5, t5
                  and          gp, a3, t1
                  xor          a6, t2, a0
                  sra          s1, s6, zero
                  srai         ra, t4, 11
                  xori         t0, a0, 1287
                  or           t5, s9, tp
                  auipc        s9, 175688
                  srli         s7, a6, 7
                  auipc        s5, 976781
                  slt          gp, s3, a2
                  lui          s1, 389819
                  sll          t6, a6, t1
                  andi         s9, a4, -1027
                  and          s7, a5, s3
                  xori         s0, t2, 1197
                  sub          a6, zero, a3
                  sra          t6, a5, s2
                  srli         s1, tp, 7
                  addi         s8, t2, 310
                  slti         s9, t6, 1884
                  sltiu        t1, a2, 1021
                  srl          sp, zero, s4
                  sltu         t3, a0, s9
                  lui          ra, 981416
                  srli         s10, a5, 22
                  srai         t3, s0, 1
                  sra          gp, a6, a4
                  add          t3, t1, a6
                  sll          a2, a1, t3
                  nop
                  lui          a2, 81395
                  slli         t1, ra, 3
                  srl          gp, s8, tp
                  slti         t5, s1, -810
                  srl          t6, ra, tp
                  xor          s6, a7, s0
                  ori          s2, a0, 1713
                  and          s10, t3, t1
                  slli         s0, t1, 23
                  ori          s0, s2, -1950
                  srl          t6, t0, t3
                  nop
                  srl          t2, tp, zero
                  sltiu        a5, a6, 842
                  slli         s8, s10, 3
                  sltu         a2, s1, a4
                  sltu         s5, a2, t6
                  ori          t3, s5, 476
                  sra          zero, a7, a7
                  andi         t0, t1, 784
                  slti         t3, a6, -1039
                  sltiu        s10, a0, -80
                  sltu         s0, gp, t4
                  xor          gp, t1, s7
                  xor          t2, s2, s8
                  srli         a2, a5, 22
                  sltiu        a7, s4, -1228
                  and          t6, a2, s0
                  addi         t1, s6, 1198
                  sll          s6, s3, s5
                  auipc        s5, 321132
                  add          s8, s6, a3
                  or           sp, s6, t5
                  sub          s4, s9, t2
                  or           t3, a6, s7
                  slli         gp, t1, 2
                  xor          t1, ra, s7
                  xor          a5, a3, s11
                  srli         t6, t5, 31
                  sltiu        sp, s0, 1372
                  auipc        t3, 934825
                  or           a2, s7, gp
                  xor          s0, s11, a4
                  andi         s1, sp, 1153
                  nop
                  sltiu        t3, gp, 231
                  slti         t0, s4, 352
                  addi         s7, s0, -1680
                  and          a4, t0, a2
                  srl          a5, s5, s2
                  sltu         s7, s8, sp
                  xor          s2, a0, t5
                  addi         s7, tp, 1107
                  lui          t3, 216457
                  nop
                  srai         s2, t2, 21
                  slt          t0, zero, s4
                  sltiu        a6, a2, -200
                  ori          a3, t6, 807
                  lui          ra, 730127
                  xor          s0, t6, zero
                  nop
                  srli         a1, a3, 23
                  srli         s5, s4, 5
                  xor          sp, a0, t2
                  slti         s10, a2, 1525
                  slli         s7, s9, 6
                  srai         t3, tp, 13
                  slti         s2, t3, -2013
                  ori          t1, s1, 1928
                  slli         ra, s3, 25
                  nop
                  sltiu        gp, gp, -26
                  lui          t4, 437584
                  slt          a5, a5, s5
                  ori          gp, a1, -29
                  xor          s0, tp, s1
                  srli         a6, s1, 25
                  lui          s0, 993618
                  andi         s11, a2, 624
                  srl          t3, s2, tp
                  xori         sp, s8, 160
                  srai         a5, t2, 7
                  sub          t2, ra, s9
                  sll          t1, s11, t4
                  sltu         s11, s3, s9
                  slti         a2, sp, -1201
                  slti         sp, s10, -135
                  auipc        s10, 533179
                  sub          zero, t5, gp
                  andi         a1, t4, 1660
                  nop
                  or           s2, a7, tp
                  sltu         s8, ra, s8
                  and          a6, a3, t4
                  add          a4, a0, s7
                  nop
                  xor          s11, s3, t4
                  auipc        t0, 1029079
                  srl          a6, zero, t6
                  sltu         gp, s6, a5
                  srl          s8, tp, s9
                  sub          t6, a6, s9
                  andi         a5, gp, -874
                  sltiu        t6, s3, -704
                  auipc        t3, 760485
                  srl          s4, s2, t1
                  auipc        t4, 582386
                  sltu         s0, a6, t2
                  sltu         s10, s0, s6
                  slti         zero, t6, 382
                  auipc        a5, 810538
                  sra          a1, gp, s0
                  sra          t5, s10, s2
                  srli         a7, s11, 26
                  lui          s6, 224957
                  lui          sp, 696300
                  srli         s1, tp, 10
                  sll          t3, a4, a2
                  or           a5, s8, a4
                  srli         s10, a3, 18
                  srli         s11, a4, 4
                  andi         s9, t5, 2016
                  sltu         a1, a4, t2
                  sltu         t1, a2, s4
                  slti         t0, t6, -1956
                  andi         s8, a0, 1736
                  srl          s11, gp, tp
                  ori          a7, a4, -2033
                  and          s0, s11, s10
                  andi         s6, s10, 886
                  nop
                  or           s2, s6, ra
                  add          s7, s4, s11
                  addi         t0, s7, 1840
                  nop
                  slli         s10, s7, 6
                  xor          t1, s5, t4
                  sltiu        s6, s1, -465
                  lui          s11, 463303
                  add          s4, t0, t3
                  srli         a3, t6, 6
                  xori         a2, s11, -1868
                  sltiu        s7, a2, 416
                  sll          a2, s11, s8
                  nop
                  slti         s10, zero, 1006
                  xor          s11, gp, t1
                  add          t5, a6, t6
                  slti         a5, s0, 1058
                  ori          gp, t5, -1481
                  srli         s9, a7, 22
                  slt          sp, s4, t4
                  auipc        s5, 722093
                  add          sp, s4, t2
                  ori          s0, t3, -1281
                  ori          s8, tp, 1648
                  sltu         gp, sp, t2
                  slli         t5, s8, 17
                  slt          sp, s5, s2
                  addi         a3, a3, 1379
                  or           t4, s3, t6
                  ori          t2, a3, -241
                  sra          t2, a4, a3
                  sll          a6, s0, s0
                  nop
                  ori          t6, s10, 1982
                  and          s10, t2, s6
                  ori          s5, a3, -1925
                  xori         s11, s8, 48
                  andi         t6, s10, 193
                  xor          t2, s8, s4
                  sltiu        t3, a4, -95
                  addi         a5, s10, -978
                  and          a3, s3, s10
                  xori         s9, a0, -743
                  srai         zero, t4, 8
                  sltiu        t4, zero, -1601
                  srl          a1, gp, s11
                  lui          s0, 693324
                  addi         sp, s8, 442
                  sltu         s10, s3, s6
                  lui          zero, 792805
                  auipc        ra, 203081
                  srai         ra, gp, 1
                  nop
                  slti         t5, s9, 2011
                  srl          s7, a3, t3
                  xori         a6, a5, -795
                  srl          a5, s1, ra
                  and          ra, t6, tp
                  sll          a5, t2, t2
                  lui          s10, 390291
                  sll          a1, tp, t2
                  sub          s11, s2, ra
                  sltiu        s8, a4, -939
                  add          s0, t3, s6
                  slt          ra, s3, t6
                  sltu         s7, a4, sp
                  addi         s8, gp, 1102
                  addi         t0, s7, 1633
                  xori         a3, a0, 1045
                  sra          s10, a1, s0
                  sll          t6, gp, t3
                  srli         s6, a6, 22
                  xor          s6, t2, t6
                  addi         s7, a2, -1348
                  nop
                  addi         s10, a5, 1475
                  ori          sp, a5, -1804
                  xori         a5, s9, -650
                  xor          t3, s9, a6
                  auipc        a4, 370605
                  srl          zero, a5, s11
                  srl          a4, t6, a0
                  sub          s11, sp, tp
                  xori         s4, t6, 1825
                  sra          s0, t1, a5
                  srai         s11, s8, 24
                  slli         a2, a4, 17
                  xor          s2, a1, t3
                  sltiu        t5, a2, -1449
                  sra          a3, gp, s2
                  srl          a2, t6, s2
                  sltu         s11, a0, s1
                  andi         s8, s9, -1008
                  sra          t3, t6, a3
                  sltiu        a5, gp, -1099
                  sll          s6, a1, t1
                  auipc        s4, 610102
                  srai         a1, a0, 3
                  andi         a6, a4, -984
                  or           a5, s0, a5
                  slt          s9, s9, t3
                  xor          ra, a3, s1
                  srai         s11, t1, 11
                  lui          t1, 928304
                  andi         s0, gp, 74
                  xori         gp, tp, 1164
                  or           t6, sp, a6
                  lui          s11, 326623
                  srli         zero, a3, 16
                  slt          t0, sp, s10
                  or           s11, tp, a5
                  or           s0, t6, a4
                  ori          t4, a0, 326
                  sra          t5, s4, s11
                  xor          s8, a5, t6
                  xori         a3, s10, -252
                  xor          a7, a7, s5
                  sub          t6, a5, t0
                  slt          a5, a2, s0
                  xori         t1, a3, 1169
                  sra          s8, a7, t5
                  srai         s7, a3, 6
                  sll          t6, s8, ra
                  sltiu        t0, s9, -783
                  and          s11, t0, t6
                  ori          s6, ra, 1102
                  slti         s0, s3, 1345
                  sll          a7, zero, t5
                  andi         a1, t3, -1118
                  xor          a3, s4, t6
                  addi         t2, t5, -684
                  andi         t0, tp, 1946
                  sra          s9, s8, a5
                  srli         s5, sp, 11
                  sub          s6, s9, s9
                  sltiu        s11, t0, -860
                  sub          s1, t6, a7
                  srli         t1, s11, 19
                  srli         sp, s6, 5
                  sll          gp, a3, t5
                  ori          a3, s11, 1178
                  srai         a2, tp, 15
                  addi         s11, a1, -298
                  addi         s10, s1, -1084
                  sub          t6, a4, s9
                  srl          s1, tp, t1
                  or           s6, s0, t5
                  sll          t3, t5, s9
                  xori         a4, s6, 866
                  addi         s11, a0, 90
                  sub          a3, a6, a5
                  ori          s9, t0, 597
                  sll          a6, a4, t4
                  sub          a7, ra, s5
                  srai         zero, s11, 22
                  and          sp, t3, s5
                  sll          ra, a7, zero
                  sltiu        ra, zero, 1763
                  nop
                  ori          t3, t5, 1309
                  srli         s1, a5, 1
                  sra          a4, a2, s8
                  xori         zero, s11, -477
                  sub          t6, gp, s10
                  xor          a2, a3, a6
                  xor          s4, t2, ra
                  and          a2, s5, a3
                  slti         a7, t0, 1557
                  srl          t4, s2, t6
                  slt          s2, s3, a2
                  sra          s0, ra, a1
                  add          s1, s3, s8
                  xori         s0, a5, -126
                  add          t2, s5, s7
                  ori          ra, s7, 1371
                  sra          t0, gp, t1
                  auipc        t0, 569722
                  slt          s7, zero, a1
                  nop
                  xor          a6, s1, s5
                  sltiu        t0, s10, -1743
                  xori         s11, t5, -539
                  or           s4, t3, a0
                  sltu         s1, s7, a4
                  sra          s10, a0, t1
                  sltiu        s7, a1, 967
                  sltu         s0, s5, zero
                  sra          a6, t0, s3
                  addi         a6, s6, 1789
                  slli         s6, s4, 0
                  xor          s11, zero, a0
                  sltu         s11, s0, t0
                  slt          a5, s6, a4
                  sra          zero, s2, s7
                  ori          s2, s0, 591
                  sra          s11, gp, s1
                  slt          a7, s10, s6
                  srli         t3, a5, 25
                  lui          s2, 176739
                  srli         gp, t6, 25
                  ori          t2, zero, 636
                  andi         s0, t5, 545
                  and          a7, s10, a1
                  nop
                  sra          zero, zero, t2
                  slli         a3, zero, 4
                  ori          zero, a5, -260
                  xor          sp, sp, t3
                  sltu         a2, zero, s9
                  slli         a1, s1, 12
                  addi         sp, s1, -577
                  lui          ra, 718604
                  lui          t2, 486612
                  or           a6, t0, a7
                  sub          a2, t1, s9
                  andi         t6, s2, -1347
                  slt          s0, sp, sp
                  addi         s2, a1, 4
                  add          s2, s5, a4
                  slli         s11, t5, 9
                  slt          zero, s8, a1
                  or           s1, t1, a4
                  addi         s4, tp, 1521
                  sltu         s9, s0, a1
                  sltiu        t3, tp, -1497
                  srli         a2, a7, 12
                  lui          s1, 133978
                  nop
                  slt          s2, s8, tp
                  and          t0, s7, s3
                  andi         a2, ra, 1048
                  srai         zero, tp, 14
                  sll          s6, a3, s11
                  srl          s0, a0, gp
                  srl          t1, gp, a1
                  slt          s0, s2, s5
                  sltiu        s2, s5, -943
                  ori          s10, s1, -806
                  xori         t4, s9, -217
                  add          t6, t3, a2
                  lui          gp, 427429
                  sll          s7, s9, s3
                  srli         a4, a0, 10
                  sub          a1, t4, s9
                  slt          a6, t2, a5
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_30
                  li           a1, 0xffffffff
                  li           sp, 0xffffffff
                  li           s9, 0x0
                  li           ra, 0xffffffff
                  li           t5, 0x4cbe1293
                  li           s8, 0xe730e1c9
                  li           a6, 0x0
                  li           t3, 0x0
                  li           a3, 0xffffffff
                  auipc        a6, 939468
                  addi         sp, ra, 397
                  addi         t5, t5, 1241
                  sub          s9, a1, s8
                  sub          t4, a1, sp
                  auipc        a1, 781919
                  auipc        t5, 774030
                  add          s8, a6, s9
                  lui          t4, 756463
                  auipc        t3, 213386
                  addi         t5, ra, -1204
                  addi         t5, a3, -1931
                  nop
                  addi         t5, a6, 2031
                  auipc        a1, 862929
                  nop
                  addi         a1, ra, 1048
                  nop
                  nop
                  sub          s8, t5, s8
                  lui          s8, 379773
                  addi         sp, t4, 937
                  sub          t5, a6, s8
                  addi         a1, t5, 1445
                  nop
                  auipc        t5, 954657
                  sub          t4, t5, ra
                  auipc        t5, 476229
                  lui          a3, 888012 #end riscv_int_numeric_corner_stream_30
                  slt          a4, a2, s10
                  sltu         s0, zero, a5
                  addi         gp, s9, 458
                  lui          s11, 819010
                  auipc        t0, 108016
                  srl          t3, t1, t0
                  slt          a5, t0, t2
                  auipc        t0, 688618
                  auipc        s6, 453214
                  nop
                  ori          t3, a6, -673
                  or           zero, zero, tp
                  srli         a6, t0, 22
                  slti         a3, t3, -1094
                  addi         a4, a7, 1583
                  add          gp, t2, s9
                  xor          gp, gp, s10
                  auipc        t0, 619892
                  add          a5, s11, a7
                  srai         s8, t6, 23
                  slt          a6, t2, gp
                  or           s0, a6, a5
                  srl          s11, a2, s6
                  slti         t0, zero, -934
                  andi         s9, a0, -650
                  slti         s0, a4, -174
                  auipc        a2, 324113
                  xori         s2, t3, -1403
                  and          zero, s7, a4
                  andi         s6, a5, 479
                  addi         t6, a2, -632
                  auipc        s11, 717247
                  lui          s10, 453979
                  srl          s4, a2, t5
                  slti         s7, ra, -316
                  sll          t4, s3, t2
                  nop
                  andi         a6, s11, -1669
                  or           s7, a0, gp
                  sll          s10, s0, a0
                  slti         s5, a5, -830
                  addi         s9, t1, -782
                  lui          t4, 122200
                  andi         a7, a4, -438
                  sub          t6, s1, s3
                  andi         a7, t6, 245
                  sub          s9, a4, s9
                  addi         gp, t0, -431
                  and          t2, a2, s5
                  addi         s5, s3, -1802
                  lui          a2, 666716
                  add          s10, s1, s8
                  ori          zero, t2, 930
                  xori         a2, a2, -1242
                  slt          a7, ra, a0
                  sra          s8, t3, s7
                  sra          t1, s4, t3
                  sltiu        s1, ra, 131
                  andi         a3, s1, -1191
                  sra          a7, s7, s7
                  add          a3, t0, t3
                  nop
                  xor          a6, t0, tp
                  ori          s0, a6, -1064
                  sll          t1, t5, s7
                  xor          a6, t4, s11
                  lui          t4, 217667
                  sll          a2, a3, s2
                  srl          s7, a6, s10
                  sll          gp, tp, t4
                  lui          s8, 387022
                  sltiu        t5, s11, -496
                  slt          s2, s5, t4
                  sll          t4, s7, ra
                  ori          gp, t4, -660
                  sltiu        s7, gp, -1214
                  addi         s0, s2, -74
                  andi         s9, zero, -1212
                  sltu         a5, ra, s3
                  add          sp, s6, a3
                  sra          a6, t0, a0
                  lui          t0, 1018125
                  ori          t0, a3, 101
                  and          ra, s2, ra
                  add          gp, s0, a7
                  andi         s9, a2, -432
                  and          s8, s9, s6
                  sub          s4, a5, sp
                  sll          a2, s0, ra
                  lui          s11, 225493
                  slt          t1, t3, s7
                  srli         s10, sp, 12
                  add          a3, a7, a6
                  nop
                  xori         s2, a7, 1581
                  lui          s1, 667226
                  slli         a2, gp, 12
                  andi         t3, t6, 1677
                  sltu         s0, ra, s7
                  xori         s7, gp, 2002
                  slli         s8, t4, 16
                  slt          zero, s11, t6
                  xori         s5, a0, -1417
                  sltu         t6, s5, tp
                  slt          t3, a0, s8
                  sra          a7, s7, sp
                  sub          s8, t2, t4
                  srli         t1, gp, 31
                  sltu         s0, t4, s3
                  slli         t3, t4, 8
                  andi         s0, sp, -1070
                  xori         zero, s4, 959
                  addi         a3, s11, 850
                  auipc        s7, 521087
                  auipc        s11, 491205
                  ori          s7, gp, -499
                  srli         s4, t1, 31
                  slt          a6, s5, ra
                  add          zero, s4, sp
                  andi         a4, a1, 1657
                  and          a6, s2, s10
                  or           s4, t5, t0
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_29
                  li           a6, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0x0
                  li           s2, 0x0
                  li           a4, 0x80000000
                  li           s5, 0x80000000
                  li           t3, 0x80000000
                  li           a2, 0xffffffff
                  li           a7, 0x80000000
                  sub          t1, a7, s2
                  addi         a2, s9, -656
                  sub          s2, t3, a4
                  lui          s2, 233200
                  sub          a2, s5, s9
                  auipc        s2, 303921
                  nop
                  lui          s2, 667080
                  addi         s5, a2, 331
                  add          a2, ra, s9
                  auipc        a6, 734500
                  add          s2, s5, t1
                  addi         a2, a2, 1728
                  add          a4, s2, a7
                  sub          a7, s2, ra
                  lui          a4, 89427
                  sub          a4, s2, t3
                  nop
                  sub          a2, s5, a7
                  addi         s5, s5, 364
                  auipc        s2, 41579
                  nop
                  addi         a4, s5, 1983
                  sub          a6, s2, a7
                  lui          s2, 501386
                  add          s5, s9, ra
                  sub          s9, a4, a7 #end riscv_int_numeric_corner_stream_29
                  sltu         t0, tp, a7
                  li           a5, 0x73256db2 #start riscv_int_numeric_corner_stream_11
                  li           s4, 0x8d1e8cd4
                  li           sp, 0x80000000
                  li           ra, 0x0
                  li           s0, 0x80000000
                  li           s7, 0x80000000
                  li           gp, 0x0
                  li           s1, 0xffffffff
                  li           t3, 0xffffffff
                  li           t0, 0xffffffff
                  auipc        s0, 63039
                  addi         s0, s4, -1671
                  nop
                  nop
                  auipc        a5, 931419
                  addi         gp, sp, 1936
                  auipc        t3, 393362
                  auipc        a5, 689662
                  lui          t0, 292679
                  lui          sp, 46672
                  nop
                  lui          a5, 191483
                  sub          s7, s1, s0
                  sub          gp, s4, t0
                  lui          sp, 624768
                  lui          a5, 343403 #end riscv_int_numeric_corner_stream_11
                  sltiu        zero, s4, 1757
                  slli         s8, s10, 4
                  or           s10, a0, gp
                  and          t3, s8, a2
                  addi         t5, zero, 1312
                  nop
                  slti         t1, s4, 295
                  and          s7, gp, a7
                  sub          gp, s2, s0
                  srai         t5, s2, 6
                  slli         s4, t4, 29
                  sub          s5, s1, a1
                  sltiu        t1, s8, -1090
                  slt          gp, a7, gp
                  srai         t5, s10, 30
                  srl          s2, a3, a5
                  slt          s11, sp, a4
                  sll          a3, s1, a2
                  auipc        s1, 888266
                  or           s4, t3, ra
                  auipc        t1, 942334
                  xor          t1, s6, s3
                  lui          s2, 443014
                  sltu         t1, a0, t0
                  srli         t2, a6, 24
                  sub          s11, s5, tp
                  srai         a5, a4, 28
                  xori         a1, s9, -7
                  slli         s10, ra, 29
                  lui          a3, 1003970
                  srli         a2, a0, 5
                  slt          a6, a0, s9
                  sltiu        s11, s5, 443
                  sub          zero, s10, s11
                  or           ra, t0, ra
                  xor          a2, s0, t6
                  add          a2, s4, s2
                  xori         s8, a2, -1380
                  ori          a7, s1, -1402
                  ori          s7, s2, -817
                  ori          sp, t1, -942
                  sltu         ra, a5, s2
                  lui          s8, 855209
                  sltu         s0, s8, a2
                  srai         s2, t4, 14
                  ori          t1, s3, 994
                  addi         t0, a1, 1138
                  sra          a5, tp, s1
                  nop
                  sltiu        s0, sp, 1875
                  xori         a3, s9, 846
                  srai         s4, s3, 11
                  or           a6, t2, t5
                  slt          a7, t4, s10
                  xor          s0, s0, t3
                  slli         a1, t1, 24
                  srai         a7, gp, 8
                  sll          s8, s4, zero
                  and          t0, s0, sp
                  sltu         a6, t2, a6
                  slti         gp, s7, 1679
                  add          t1, t0, t0
                  srai         a6, t3, 28
                  srl          s2, sp, s7
                  sub          t4, t1, gp
                  slt          t3, s8, tp
                  addi         s2, tp, -1660
                  srai         s0, t6, 25
                  add          s1, t3, s4
                  srai         s2, a3, 16
                  sltu         s0, s5, s7
                  sltiu        s1, a6, -1778
                  sub          a5, t2, t5
                  sub          s10, a7, zero
                  nop
                  sra          s0, s6, t4
                  srai         a3, a2, 20
                  lui          ra, 13900
                  and          gp, a6, a4
                  add          s9, a1, t3
                  srai         s0, t5, 23
                  slli         zero, s8, 9
                  slli         sp, a6, 17
                  srai         a3, s8, 27
                  lui          zero, 857148
                  slti         t1, s8, -1682
                  nop
                  ori          a4, t3, 1204
                  lui          ra, 235694
                  srli         s4, a4, 13
                  addi         s6, ra, -306
                  nop
                  sll          s9, s7, t0
                  xor          a4, a1, s10
                  sltiu        t2, t3, -1947
                  xori         s6, a2, 1941
                  lui          ra, 964784
                  addi         a5, s1, 579
                  sltiu        s2, a4, 881
                  addi         s5, t4, -287
                  slti         s7, ra, -536
                  auipc        t2, 132175
                  nop
                  slli         s2, s2, 25
                  addi         s2, s6, 533
                  slli         s5, a1, 7
                  addi         s0, s3, -1310
                  sra          zero, s3, a4
                  srl          ra, s4, s0
                  srli         s6, s9, 26
                  srli         s8, a7, 12
                  sltiu        s0, s8, 951
                  srl          t6, s10, t0
                  lui          t4, 633537
                  lui          s6, 715833
                  andi         ra, a1, 1874
                  sltu         s9, a2, s7
                  sub          s10, t1, t3
                  add          a7, s10, s7
                  slti         t6, a2, 1634
                  slli         t6, s9, 2
                  add          s8, ra, gp
                  srl          s7, t0, t4
                  srli         a1, a7, 11
                  sra          s11, s5, s9
                  sll          s2, t1, t6
                  nop
                  sltu         s2, a3, gp
                  sll          a2, s6, sp
                  sltiu        t6, s3, 462
                  and          s9, s6, sp
                  nop
                  xor          gp, a6, s7
                  andi         s0, t6, -304
                  add          a7, tp, t0
                  srl          a1, a5, s1
                  auipc        s11, 656224
                  auipc        sp, 399169
                  auipc        s9, 53083
                  sra          s8, a0, zero
                  sltiu        s2, a3, -1351
                  andi         s7, s2, 1224
                  srl          t6, t6, t5
                  srli         a7, s7, 15
                  sub          s11, s8, sp
                  add          t4, a3, t2
                  add          t2, tp, s8
                  sra          t4, a1, a6
                  srl          t2, sp, a7
                  srli         s7, s8, 13
                  xor          t3, s9, a2
                  add          s8, a1, a2
                  addi         s5, sp, -1877
                  sltu         a5, s6, a6
                  sub          s1, s9, ra
                  sub          s6, a1, t0
                  srl          gp, gp, a0
                  andi         gp, a4, 1849
                  sra          s7, s9, t5
                  and          s11, s6, s6
                  srl          s2, a5, zero
                  lui          s10, 1041131
                  srai         a4, s9, 13
                  slli         a7, a6, 11
                  addi         a5, t6, 235
                  ori          s0, t2, -1034
                  ori          a1, t3, 1215
                  auipc        a1, 966663
                  sltu         s9, t3, s1
                  andi         t6, gp, -585
                  or           s8, a0, t0
                  auipc        s9, 213508
                  sub          s4, a2, a6
                  add          s4, t5, a4
                  sra          t1, a3, a4
                  ori          s8, gp, 1517
                  sltu         s8, s6, s1
                  slli         s11, gp, 21
                  and          t4, s8, s1
                  sltiu        s1, s2, 392
                  sltu         s8, t3, zero
                  sltu         a6, s10, t1
                  sll          sp, s8, t5
                  sltu         t6, t0, a3
                  sra          s8, a7, ra
                  slt          gp, t5, tp
                  sll          sp, t3, gp
                  or           t1, s11, s8
                  sll          s9, s8, a2
                  andi         a5, t4, -215
                  add          t4, a6, t1
                  xori         t0, tp, 136
                  and          a4, a7, a2
                  add          s8, s11, s10
                  srli         s7, t6, 14
                  slt          s10, s0, s8
                  slt          s2, t5, t4
                  and          t0, t2, a5
                  addi         t6, s0, -1917
                  sll          a7, t0, a2
                  or           zero, sp, gp
                  xori         s2, a6, -1452
                  or           s11, zero, s8
                  and          t1, a2, a5
                  add          s5, a7, ra
                  add          sp, t4, t0
                  sra          s6, ra, s6
                  ori          a4, a4, 1983
                  slti         a1, a7, -608
                  ori          s1, t1, -2024
                  sll          a7, zero, gp
                  srai         s10, gp, 12
                  andi         s2, s3, -1770
                  xor          t6, s5, t4
                  addi         a2, s4, 714
                  slt          t4, s10, a3
                  sll          s2, s1, zero
                  and          s2, t2, t0
                  sll          s1, s0, t3
                  slt          s11, tp, zero
                  sra          a6, a2, a5
                  lui          zero, 1018467
                  sub          s4, s7, a4
                  lui          gp, 658464
                  add          t2, a0, a1
                  srli         s2, a4, 27
                  add          gp, gp, t2
                  or           t6, t6, t2
                  andi         sp, t6, -1685
                  srl          s10, s1, s10
                  slti         s4, s0, 1648
                  sra          s6, s10, s7
                  slt          t1, a6, tp
                  sll          a7, t0, gp
                  nop
                  slt          s2, s6, s11
                  srli         t6, s2, 12
                  addi         s7, s1, 1201
                  nop
                  lui          a6, 48532
                  xori         s11, t3, 1487
                  andi         s1, ra, -1289
                  ori          gp, a7, 66
                  srli         t6, s10, 9
                  sra          a2, s9, sp
                  sltu         zero, a7, s7
                  auipc        sp, 771033
                  sub          a3, a2, s4
                  add          s9, t6, t5
                  ori          s0, tp, -470
                  srl          t5, a3, zero
                  srli         s6, s0, 7
                  xori         gp, s7, -819
                  addi         s11, t3, 1961
                  slt          s7, a5, s4
                  srai         gp, t1, 19
                  slt          t2, a4, tp
                  slti         t5, t3, 1304
                  sll          t2, t1, t3
                  xor          s9, sp, sp
                  xori         t4, s9, 1592
                  slti         zero, a3, -1854
                  ori          s0, s9, -1242
                  sltu         s1, s7, t1
                  addi         s7, tp, 107
                  and          a2, ra, a1
                  slt          gp, s11, a4
                  slli         zero, t3, 22
                  xor          t6, s6, s4
                  xor          s7, a7, s10
                  add          t3, gp, s3
                  auipc        s9, 666987
                  or           s4, sp, a3
                  nop
                  nop
                  addi         gp, sp, 1764
                  sll          a7, ra, s8
                  xor          a4, gp, t2
                  slti         t0, s10, 471
                  ori          s5, s6, 247
                  srli         zero, s5, 4
                  and          s10, s10, a2
                  sltu         zero, a0, s11
                  srl          ra, s3, s2
                  srl          a1, zero, s10
                  add          zero, tp, s6
                  sub          s9, t1, t0
                  nop
                  addi         s2, a0, 1960
                  auipc        gp, 641174
                  ori          s7, a4, -444
                  add          s10, s7, tp
                  sltu         a6, s11, s1
                  sltiu        a2, t1, 990
                  sltu         s8, t5, s5
                  addi         s5, a2, 1041
                  and          a1, t1, t3
                  add          t2, t3, a5
                  xor          a4, t5, sp
                  sub          t0, ra, a5
                  andi         s1, tp, -56
                  sub          s4, t0, s0
                  add          s0, zero, zero
                  ori          t6, a2, 870
                  auipc        s10, 215987
                  nop
                  and          s7, a6, s2
                  lui          s10, 779580
                  sll          t3, zero, s10
                  slt          a7, a3, s7
                  sll          a2, s7, gp
                  srli         sp, s9, 15
                  sltiu        sp, t2, 1528
                  sll          s5, a0, a3
                  slti         a2, s1, -459
                  xori         gp, s7, 91
                  srl          a1, s5, a4
                  xori         t6, s6, 1932
                  slt          s7, s2, s3
                  addi         ra, gp, 209
                  sltu         a7, s9, t1
                  srli         a4, s11, 12
                  xori         s8, t4, 1964
                  sll          a3, a2, sp
                  and          a6, s6, a3
                  or           s7, zero, a7
                  and          a2, t6, s10
                  nop
                  nop
                  auipc        s6, 115077
                  ori          t0, s7, -937
                  or           t4, a2, s9
                  lui          gp, 614586
                  add          a4, ra, s5
                  srai         a5, s2, 3
                  sra          zero, s4, a3
                  add          s8, s11, s1
                  slti         s4, s3, 458
                  xori         s7, t3, -211
                  nop
                  or           t0, a3, tp
                  slti         zero, s9, 1587
                  sll          t3, s1, s11
                  sub          s9, t3, t3
                  add          a4, s6, s5
                  slli         zero, t5, 12
                  srl          t5, a1, a0
                  auipc        s2, 826578
                  andi         a1, s10, -558
                  andi         a5, t0, 966
                  srai         zero, s4, 5
                  or           ra, s6, s1
                  lui          t6, 349290
                  sub          s11, t1, s8
                  sll          a3, t2, a1
                  andi         zero, s8, 6
                  addi         s11, s1, -809
                  slli         a1, t2, 28
                  nop
                  slli         a2, s5, 3
                  xor          sp, a7, tp
                  sra          s5, s1, s2
                  srli         s5, ra, 11
                  sra          sp, s1, t2
                  sltiu        a1, a1, -1510
                  sltu         ra, a0, s0
                  sll          t4, t4, tp
                  sltiu        s6, a5, 1258
                  add          ra, s5, s2
                  andi         s6, t4, 1934
                  addi         a4, t6, -1874
                  auipc        sp, 766898
                  andi         s9, t1, -1109
                  sltiu        sp, gp, -553
                  add          zero, a4, s11
                  srl          s0, s7, t4
                  slti         a1, s1, 73
                  sltu         zero, tp, t3
                  srl          s11, t1, t4
                  xor          a7, s7, a6
                  xori         s7, s6, -432
                  srl          s8, t6, ra
                  srli         a7, a4, 25
                  sltu         s0, s1, a4
                  slli         s8, gp, 23
                  slt          t2, zero, sp
                  or           t1, t5, t2
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t2, 0xffffffff
                  li           s6, 0x80000000
                  li           ra, 0x0
                  li           s9, 0x0
                  li           s8, 0x0
                  li           gp, 0xffffffff
                  li           a3, 0xffffffff
                  li           s2, 0x0
                  li           sp, 0x0
                  nop
                  add          gp, a3, a3
                  add          ra, t2, s8
                  auipc        sp, 476097
                  add          s8, s8, sp
                  auipc        s9, 142124
                  add          s9, a3, t2
                  addi         sp, s6, 2017
                  nop
                  addi         t2, ra, -1298
                  addi         sp, ra, 1690
                  nop
                  lui          s8, 1002564
                  sub          a3, s6, a3
                  add          s2, sp, sp #end riscv_int_numeric_corner_stream_8
                  lui          t2, 504974
                  ori          t0, s2, -1175
                  add          s10, s5, s11
                  sra          s2, t5, t3
                  sub          t0, s10, t0
                  sra          t1, t3, s1
                  lui          s11, 861825
                  add          a1, a4, s10
                  xori         zero, s4, -1354
                  or           s2, a7, s7
                  sra          s8, s11, zero
                  addi         t2, s5, 1623
                  sll          s5, t1, s2
                  sltu         s9, sp, s6
                  slli         sp, sp, 15
                  sll          s0, t3, t2
                  andi         a1, tp, 1378
                  auipc        t6, 953640
                  xori         t4, a4, -1893
                  srai         a2, a4, 16
                  add          s2, s11, t6
                  sll          t4, s6, s3
                  srl          s0, s9, s11
                  sltiu        s6, s6, 1253
                  slli         a2, t4, 12
                  sltu         s11, zero, a0
                  auipc        s5, 236497
                  sltiu        a4, gp, -1332
                  slti         s7, s1, 859
                  srai         sp, t4, 5
                  andi         s5, sp, 271
                  lui          t1, 575525
                  sltiu        t1, s6, -491
                  and          t2, a1, s3
                  slti         t6, t4, 16
                  andi         t2, t5, -1027
                  srl          a2, tp, a5
                  andi         s2, t4, -1765
                  srli         s6, a4, 26
                  sltu         gp, s8, tp
                  srl          s0, t4, a7
                  srli         gp, tp, 23
                  slt          t6, t2, a0
                  andi         a7, s0, -406
                  sra          s7, t0, s5
                  slti         t5, s9, -309
                  sltiu        s1, a2, 2012
                  srli         s0, s7, 10
                  slti         a2, s5, 1424
                  xori         t1, a6, 1592
                  xor          s0, a1, s0
                  slt          s2, ra, t1
                  srai         t4, a2, 5
                  srai         t1, a5, 0
                  sra          a6, s8, ra
                  sll          s10, t4, s4
                  andi         a1, t5, -1807
                  sltiu        gp, s2, -1751
                  slt          ra, s7, s3
                  or           s5, t5, s7
                  sra          t4, s3, t2
                  slti         sp, s9, -57
                  sltiu        s10, gp, 1535
                  slti         t0, t5, 259
                  slti         t1, ra, 2008
                  or           s5, s7, t5
                  addi         t2, a2, -1961
                  srli         a5, a5, 24
                  lui          a7, 281162
                  auipc        a6, 1027477
                  nop
                  and          s6, s1, zero
                  slti         a6, s1, -956
                  srai         s10, s4, 21
                  nop
                  slli         gp, t3, 29
                  xori         a3, t1, -1392
                  srai         s4, t3, 25
                  srl          zero, s6, t6
                  or           t0, gp, tp
                  and          s9, sp, a6
                  ori          a3, t4, 746
                  sll          a5, s10, s8
                  sra          a7, s11, ra
                  srli         a4, a4, 3
                  srai         sp, s6, 12
                  sltu         s9, a7, s8
                  or           a7, t5, s4
                  sltiu        a2, gp, 1699
                  sra          s9, s9, gp
                  nop
                  sltu         s1, s7, t1
                  nop
                  andi         s11, s7, -104
                  or           s6, a1, t6
                  slli         s7, a6, 28
                  sll          s1, a1, t6
                  xor          a5, t2, t5
                  lui          s2, 574830
                  addi         ra, a7, -1453
                  xor          t5, a7, t2
                  lui          s4, 341093
                  srai         sp, t6, 16
                  or           s4, gp, s0
                  srli         s4, s3, 6
                  sll          t0, t0, a7
                  srai         t0, ra, 26
                  ori          s6, t1, -1542
                  xor          s0, sp, a5
                  sll          s6, a7, t3
                  and          a2, zero, s11
                  srl          a5, a3, ra
                  srli         t4, sp, 29
                  auipc        sp, 255542
                  srli         t3, a5, 15
                  slli         s5, a4, 18
                  slti         s2, s4, -1115
                  auipc        gp, 127947
                  slti         s5, zero, -1038
                  auipc        s4, 986651
                  sra          gp, s4, s5
                  srai         s2, s8, 3
                  sra          s2, tp, s2
                  srli         a2, tp, 17
                  sra          s2, zero, zero
                  sll          s10, t3, t6
                  sra          s10, gp, t2
                  andi         t0, s10, -266
                  lui          s11, 74790
                  xori         s9, a0, 1005
                  slt          a3, t0, t3
                  srai         s4, t2, 29
                  srai         a1, zero, 26
                  addi         t2, s8, -1164
                  andi         t1, s4, -1376
                  andi         s0, t3, -1918
                  andi         t6, a7, -1929
                  add          sp, a5, a3
                  sub          t0, a6, t5
                  andi         sp, zero, 624
                  andi         t3, a7, -303
                  sub          s4, s6, a5
                  add          s7, t6, s4
                  or           a1, a2, s6
                  ori          a4, a5, -1763
                  sltu         s5, t5, t1
                  ori          s2, a3, -1261
                  sltiu        a4, s6, -1816
                  or           a6, a4, t1
                  or           a3, s8, a6
                  ori          s11, t3, -413
                  addi         s11, s8, 1520
                  srl          s11, t5, zero
                  addi         a2, t1, 1700
                  slli         s4, a3, 3
                  sub          s5, ra, zero
                  lui          s4, 196855
                  lui          s7, 309275
                  auipc        s10, 560704
                  srli         s2, s11, 12
                  addi         t2, s7, 265
                  nop
                  sltu         a5, t4, t2
                  add          ra, tp, t4
                  srli         t0, t6, 7
                  srli         t0, s6, 14
                  addi         a2, zero, -1603
                  sra          s0, a1, zero
                  lui          t3, 650305
                  srli         s10, s10, 7
                  slli         sp, tp, 7
                  sub          a7, sp, s9
                  and          gp, s8, t2
                  and          s2, s6, t0
                  xor          s0, s5, t5
                  slli         t3, t3, 31
                  srli         s1, s4, 29
                  lui          t1, 278263
                  lui          t5, 100434
                  slt          a4, zero, ra
                  srli         t1, tp, 21
                  slt          t6, a6, gp
                  sub          t4, s6, a1
                  sra          s11, t1, s8
                  sra          s2, s7, s8
                  srli         s6, a5, 11
                  addi         a4, sp, 1414
                  slt          a6, s3, s10
                  and          t1, s7, t5
                  srl          gp, s9, ra
                  sltu         s8, s4, a3
                  slti         s0, ra, 679
                  slt          s7, a2, a1
                  auipc        t4, 374587
                  sll          s5, s10, a0
                  slli         s7, t2, 29
                  sltiu        a4, zero, -840
                  xor          s9, s7, s3
                  slli         t1, zero, 19
                  sltu         s0, a4, t6
                  slti         s1, t4, 1999
                  lui          a3, 768148
                  slt          a5, gp, tp
                  xori         gp, s3, -1409
                  xori         s0, t6, -539
                  sra          s0, a7, s1
                  lui          gp, 300183
                  srai         a2, s4, 29
                  nop
                  nop
                  andi         s8, s7, 1310
                  slli         a4, zero, 1
                  ori          s2, a2, 786
                  lui          s4, 870381
                  srli         a4, s10, 3
                  srli         s0, s4, 24
                  sltu         s10, t2, s3
                  slli         t4, sp, 18
                  nop
                  srai         t6, tp, 3
                  lui          sp, 329329
                  lui          s2, 335551
                  sltiu        t3, t2, 1252
                  sltu         t5, t6, a2
                  srl          zero, s4, s2
                  lui          a2, 523023
                  addi         a1, a6, 663
                  sra          t6, s6, s0
                  andi         a2, t4, 1442
                  srl          a3, a7, zero
                  ori          t3, t5, 1245
                  lui          s10, 986438
                  srai         t1, zero, 18
                  lui          sp, 746191
                  sltu         s7, ra, t3
                  sub          ra, s5, t1
                  slt          s11, t3, gp
                  sltu         a7, s5, s5
                  xor          s9, gp, s11
                  sub          s9, s10, s10
                  xor          s5, a4, t0
                  add          a6, a0, t2
                  sub          sp, a2, ra
                  nop
                  lui          t1, 770048
                  sltu         s11, sp, a2
                  nop
                  slt          a2, s11, a7
                  sltu         s7, t3, t3
                  sll          s9, s3, a4
                  lui          gp, 83333
                  sltu         zero, t5, s7
                  nop
                  srai         t6, s0, 15
                  slti         t4, s0, -1303
                  and          t2, s0, t3
                  and          a5, s4, t4
                  srli         s5, a6, 4
                  and          s11, s7, a6
                  srai         t0, a2, 3
                  lui          t1, 20705
                  auipc        s1, 928834
                  xor          s6, s6, a3
                  auipc        s2, 869179
                  slli         s10, a3, 26
                  srl          s10, s1, a5
                  ori          s1, t0, -897
                  slti         a3, t5, 195
                  sltu         a7, t4, sp
                  sub          sp, s8, s8
                  auipc        t1, 154487
                  or           t1, a6, s8
                  or           s9, s3, s1
                  srl          a2, s3, t1
                  or           a7, s2, s9
                  sub          gp, ra, s9
                  nop
                  and          sp, zero, s5
                  sra          s2, t1, a6
                  and          t1, s7, tp
                  sltu         gp, s10, s1
                  add          t4, a7, a0
                  sra          ra, a4, a3
                  add          zero, t5, s8
                  nop
                  ori          t4, gp, -1753
                  sub          s8, a5, a4
                  sltu         t6, s10, t6
                  sltu         t4, s0, s2
                  slti         a4, s4, 1041
                  andi         s5, gp, -91
                  sll          gp, a4, t2
                  sub          gp, s4, a1
                  xori         zero, zero, 951
                  sra          a1, gp, s4
                  sra          s2, s1, t1
                  sub          a2, a1, s2
                  sll          a1, s10, s6
                  slt          a7, s1, s7
                  nop
                  sra          a5, s6, a4
                  nop
                  xori         t2, s11, 1459
                  srl          s7, s0, s1
                  sub          a1, t5, t6
                  nop
                  xori         t2, t6, -400
                  sub          s1, t2, ra
                  or           a5, s5, t1
                  addi         a7, a1, -755
                  sll          t2, s5, t4
                  addi         a5, t2, -206
                  ori          s0, zero, -1419
                  xor          s4, s6, a2
                  andi         a7, zero, 1424
                  ori          a1, gp, 851
                  xor          t1, s5, s4
                  and          t4, s2, s8
                  auipc        sp, 257620
                  ori          t5, sp, -1162
                  nop
                  auipc        a6, 726912
                  add          a5, sp, t4
                  nop
                  xor          s10, a7, a6
                  sll          gp, s2, t4
                  ori          t0, t5, -830
                  slli         a4, t4, 12
                  sub          a2, sp, s2
                  lui          s8, 956978
                  slti         t1, s6, -563
                  auipc        a5, 56622
                  sub          s5, s3, s4
                  slli         sp, t5, 4
                  xor          s6, a4, a4
                  srl          t3, a1, a1
                  sll          a2, s10, s2
                  ori          t0, s8, -1091
                  srl          a3, tp, t1
                  or           a5, s9, a0
                  srli         s10, zero, 31
                  slli         t6, s11, 18
                  ori          s6, s11, 125
                  auipc        a3, 1035450
                  or           t3, a0, a6
                  and          s2, s3, gp
                  addi         s11, s2, -1115
                  andi         sp, t2, -921
                  xor          t3, t3, a0
                  sltu         a7, zero, s9
                  sltu         s2, a5, t5
                  srli         s2, t1, 23
                  and          t1, s4, s6
                  or           s11, s5, s8
                  or           s4, a0, s10
                  srli         t4, t0, 17
                  lui          s6, 952013
                  sltu         s10, t0, tp
                  nop
                  addi         a1, s10, 1162
                  srai         t1, t6, 14
                  andi         gp, a0, -101
                  or           t0, s3, t4
                  lui          a1, 99702
                  andi         s6, t2, 535
                  sll          s10, a4, s9
                  slt          s4, s9, s0
                  andi         a5, s11, 688
                  xor          s6, ra, a5
                  srai         ra, t5, 14
                  srai         t0, s4, 30
                  srl          a5, a4, s6
                  add          s2, a5, t6
                  or           a2, s5, t6
                  lui          t3, 412025
                  srl          a4, t1, t4
                  srai         a7, tp, 19
                  ori          zero, sp, -1997
                  sltu         t2, s1, t2
                  slt          a7, a0, a7
                  add          s0, a0, t3
                  or           s8, t4, zero
                  and          a7, a0, s10
                  sll          zero, gp, s0
                  xor          a3, a6, ra
                  or           zero, tp, sp
                  add          zero, a1, s2
                  srai         s7, ra, 4
                  auipc        s6, 1011350
                  xor          s9, s2, s4
                  lui          s6, 679154
                  srai         a1, s8, 19
                  addi         s7, s1, 687
                  sub          t5, s10, t6
                  and          s11, a5, s3
                  xori         s6, s6, -1446
                  sra          t2, a3, s10
                  addi         s7, s0, -27
                  addi         a6, tp, 1202
                  or           t2, sp, s10
                  nop
                  sll          t0, zero, a3
                  sltu         a2, s1, s10
                  srl          sp, a5, s3
                  xori         a6, zero, -495
                  addi         s8, s3, 1058
                  add          s9, s1, a2
                  sra          s6, tp, t5
                  xori         s10, a1, -510
                  sltu         s9, t3, ra
                  xor          t3, s5, a5
                  slti         s10, a4, 755
                  srl          t6, t4, s2
                  sltiu        s2, zero, -1789
                  srli         t1, a6, 23
                  sltu         t5, s11, a0
                  ori          t5, ra, 1210
                  addi         a7, a4, -1885
                  addi         s8, a0, -212
                  xor          s11, gp, t5
                  xor          s1, s3, ra
                  or           t5, t4, a0
                  add          t0, s1, s2
                  xor          t6, s4, s2
                  sub          t1, zero, t5
                  xor          t4, zero, a3
                  sltiu        t6, t0, 2038
                  auipc        t0, 353684
                  slti         a3, s1, 1649
                  lui          a3, 222681
                  srli         t3, sp, 31
                  slli         t2, a5, 5
                  nop
                  add          gp, a3, sp
                  nop
                  sltiu        sp, zero, -352
                  srli         s8, t5, 24
                  sub          s1, s10, s6
                  ori          a5, sp, 1680
                  and          t6, tp, t5
                  srli         ra, t6, 14
                  xor          s9, s3, s0
                  add          a2, t1, zero
                  sltiu        s7, t4, -835
                  xori         gp, t0, 1617
                  add          s1, s7, t4
                  sll          s11, t1, s0
                  srli         t2, a7, 2
                  xori         s1, sp, -232
                  addi         a1, t5, -1087
                  or           s6, a0, s2
                  sub          s2, s9, s9
                  srai         a6, s7, 8
                  sra          zero, a7, a7
                  srai         s11, s1, 16
                  nop
                  xori         a7, ra, 811
                  add          s7, s11, s10
                  add          a2, a5, a0
                  sltiu        gp, s8, -1985
                  addi         s0, t0, 1430
                  and          a4, s10, t5
                  sltu         t5, a0, s9
                  add          t1, s0, s7
                  sra          t4, ra, s1
                  slli         sp, gp, 29
                  and          a5, t3, t3
                  sltiu        s5, a3, 868
                  srl          s1, t5, s7
                  sra          s7, zero, s6
                  slti         s7, t2, -1841
                  slti         gp, s4, -1180
                  sub          s4, a6, s0
                  xori         zero, t1, 173
                  and          sp, t2, s1
                  xor          t6, zero, a6
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           s8, 0x0
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           a1, 0x21eb1574
                  li           t2, 0xffffffff
                  li           t5, 0x0
                  li           s7, 0x0
                  li           a7, 0x9808006c
                  li           sp, 0x303cdcb8
                  nop
                  auipc        t5, 438700
                  add          a7, sp, t6
                  nop
                  add          a1, a1, a3
                  sub          t5, s8, t6
                  nop
                  sub          ra, a3, ra
                  lui          t2, 594122
                  nop
                  auipc        s8, 817439
                  add          t5, s8, t5
                  addi         s7, s7, 196
                  nop
                  auipc        s7, 854872 #end riscv_int_numeric_corner_stream_35
                  auipc        s6, 263455
                  xori         s0, s3, -1407
                  srai         gp, a0, 30
                  srl          a5, a7, s6
                  slli         t5, a4, 25
                  and          a7, s9, a5
                  slt          sp, tp, s7
                  ori          a2, t6, 603
                  slli         s7, t2, 27
                  srai         t0, s5, 0
                  xor          gp, a3, a1
                  slti         s11, a7, -892
                  slti         s7, t5, 432
                  or           t6, t5, t4
                  ori          s5, t6, 838
                  or           a6, s7, a1
                  srai         zero, s5, 12
                  srli         a1, s3, 8
                  slli         sp, tp, 26
                  sra          a3, t5, s10
                  xor          t1, t2, s7
                  xori         a6, t0, -884
                  slt          t6, ra, a7
                  add          s7, a3, a5
                  srai         s2, t2, 20
                  xor          s6, s5, a2
                  nop
                  lui          a2, 466905
                  sltiu        gp, s11, 1969
                  addi         t5, s2, -574
                  slli         a6, a4, 13
                  srli         t3, s10, 21
                  andi         zero, tp, 2038
                  slti         a7, tp, 1730
                  sll          a1, a7, a5
                  xor          s9, s3, s2
                  srli         s2, t5, 30
                  lui          a1, 373467
                  lui          gp, 980781
                  slt          s7, zero, t3
                  andi         s8, a2, -1957
                  slt          zero, a6, s2
                  sll          s4, a2, t4
                  and          s4, t4, t2
                  ori          s8, zero, 1615
                  ori          t0, t6, -2
                  lui          a6, 87252
                  add          a7, sp, ra
                  ori          a7, s0, -1616
                  addi         a6, t2, -395
                  slli         a3, s10, 8
                  srai         s4, t4, 20
                  sub          a5, a4, t1
                  srli         s8, sp, 19
                  srl          t5, t0, a2
                  nop
                  and          sp, t0, t2
                  xori         a4, tp, -347
                  xori         s11, s10, -834
                  slli         a2, s7, 16
                  lui          gp, 238403
                  slt          s7, a4, a0
                  slli         s10, a7, 3
                  and          sp, t3, s11
                  sltu         t3, s8, a3
                  slt          a7, zero, t0
                  lui          a4, 783678
                  slli         t0, a5, 31
                  addi         a6, zero, -1640
                  slti         t4, s7, -1006
                  xori         s1, s3, -1268
                  slt          ra, s7, a5
                  srl          s1, t1, t3
                  srli         t3, t6, 8
                  and          sp, s3, t6
                  lui          s4, 916360
                  sll          a4, t2, s0
                  srai         s7, t4, 19
                  slli         a2, s6, 2
                  nop
                  andi         gp, s2, -1560
                  addi         s2, t2, -171
                  xor          sp, s10, s0
                  slli         t2, a1, 12
                  and          t6, s9, tp
                  srl          s10, a1, s0
                  srai         zero, t6, 31
                  xori         t0, t1, 1711
                  sltiu        a3, a7, 1680
                  lui          s4, 261147
                  srl          ra, s11, a2
                  andi         s10, t5, 393
                  and          a1, s4, t2
                  slt          t2, a0, s11
                  add          a7, zero, t2
                  slti         t3, a7, -1468
                  slli         zero, s3, 30
                  sltiu        t0, a3, -703
                  addi         s10, t4, -746
                  li           t3, 0x2cfd4f4f #start riscv_int_numeric_corner_stream_28
                  li           t6, 0x80000000
                  li           s5, 0x0
                  li           gp, 0x80000000
                  li           s1, 0x80000000
                  li           t4, 0x0
                  li           t5, 0x0
                  li           a1, 0xffffffff
                  li           s10, 0x0
                  li           s11, 0x0
                  lui          a1, 272705
                  add          s1, s5, s11
                  lui          s5, 1031353
                  lui          t4, 707127
                  auipc        t6, 518474
                  lui          s10, 1011070
                  add          s5, s10, s11
                  lui          s5, 781087
                  sub          t5, t4, s5
                  sub          gp, s5, t4
                  addi         t5, gp, 214
                  addi         s11, a1, -1361
                  sub          s1, s5, s1
                  auipc        t4, 544982
                  nop
                  add          s5, a1, t3
                  sub          a1, s5, s1
                  add          s1, t5, t6
                  lui          t4, 216937
                  sub          t3, gp, s5
                  auipc        s11, 865134
                  auipc        s1, 425450
                  lui          t5, 434320 #end riscv_int_numeric_corner_stream_28
                  srl          a6, s7, s8
                  srli         s1, tp, 27
                  srai         t0, gp, 4
                  xori         zero, ra, 82
                  andi         sp, s3, -1545
                  sub          gp, zero, t2
                  xori         sp, a7, 1127
                  auipc        a1, 562825
                  sra          zero, s2, s6
                  slti         s8, s10, -100
                  srl          s10, t1, t2
                  sltiu        t4, t2, -1106
                  slt          gp, zero, tp
                  add          sp, t0, gp
                  slti         a1, t0, 221
                  xor          t2, t5, a2
                  auipc        gp, 256144
                  sra          t6, a1, s8
                  slt          s9, a6, s0
                  addi         t3, t3, 318
                  xor          a1, t4, ra
                  slt          s11, t4, a4
                  srai         s1, t1, 15
                  sll          ra, a5, a2
                  xor          s4, s5, s5
                  sub          a5, a0, s10
                  srl          a3, tp, a0
                  sub          zero, t1, a1
                  auipc        t0, 258055
                  slti         a2, s4, 1609
                  and          s0, t4, s4
                  addi         t4, t4, 28
                  add          a3, tp, t0
                  and          s1, t5, t6
                  srai         t3, s11, 2
                  sra          s10, t0, tp
                  xor          gp, s3, s9
                  sll          t4, s2, ra
                  sra          s8, s9, s2
                  sltu         t2, tp, s9
                  auipc        s4, 4764
                  srli         t5, t3, 20
                  slti         s5, t5, -861
                  and          t3, a7, s2
                  addi         t2, t4, -924
                  auipc        ra, 128509
                  sltiu        ra, a3, 1599
                  ori          t0, a0, 912
                  and          s9, s2, gp
                  srai         zero, s0, 29
                  sltiu        s6, s10, -2030
                  and          a4, t2, s1
                  ori          a5, t2, 370
                  lui          ra, 582933
                  slt          a4, s8, s6
                  xori         t2, s6, 397
                  nop
                  ori          s5, tp, 746
                  addi         a5, a3, -1162
                  srai         ra, t3, 19
                  addi         s4, zero, 1429
                  or           a7, s6, a5
                  srai         t0, a0, 31
                  srli         a4, a3, 17
                  add          s4, t4, a3
                  slt          gp, zero, s4
                  auipc        t1, 840252
                  slti         gp, gp, -1509
                  add          a3, s9, ra
                  andi         sp, s3, -1259
                  andi         s8, a7, -1440
                  sra          s0, zero, a2
                  srli         a7, ra, 30
                  auipc        t0, 544052
                  srli         s2, zero, 24
                  lui          t5, 850971
                  sltu         s1, t3, t5
                  sll          a4, t0, s11
                  and          t4, a4, t0
                  slt          t5, a3, t4
                  addi         a3, a7, 1745
                  sll          s5, s9, s1
                  slli         s5, a3, 7
                  addi         t1, a2, -33
                  xor          ra, sp, t3
                  srli         t5, a1, 5
                  addi         a6, gp, 1208
                  slt          zero, s10, t5
                  auipc        t4, 151971
                  addi         s2, s1, -337
                  srl          a4, gp, t3
                  sltu         s5, t0, s2
                  addi         s2, s1, -541
                  add          ra, t0, a0
                  xori         s8, s11, 1646
                  srai         t1, zero, 15
                  sll          s0, t4, a3
                  srl          t5, s1, s6
                  sltiu        a7, s5, 481
                  andi         s4, t4, 985
                  andi         gp, tp, 1457
                  auipc        zero, 289904
                  srai         t0, gp, 7
                  sll          sp, t0, a2
                  slti         s5, t1, -2035
                  sll          t1, a3, s6
                  and          t4, a1, t4
                  xori         t5, t6, -1560
                  or           s4, s10, a7
                  slti         zero, t6, 485
                  srli         s11, s1, 27
                  srai         a2, a3, 9
                  andi         s9, s2, -1752
                  or           s5, tp, t5
                  slt          a1, s2, s9
                  lui          t2, 185600
                  slti         a2, ra, -1316
                  srai         a1, gp, 30
                  sltiu        a3, ra, 1923
                  srl          t5, s6, t5
                  sra          t0, t1, ra
                  srli         ra, s7, 31
                  addi         s7, a1, 8
                  lui          s2, 944454
                  ori          s11, a6, 1207
                  xor          s10, s6, t6
                  slt          s0, s3, t3
                  sll          t4, gp, gp
                  sltu         s5, s4, s11
                  slli         s8, s0, 0
                  srl          a4, a6, zero
                  srl          t1, s10, t6
                  slt          t2, a7, s6
                  srl          a4, s10, s9
                  xori         s7, t5, -1306
                  sll          t0, sp, s3
                  sltu         s0, a4, t0
                  slli         t3, t2, 22
                  sltu         t6, s9, s1
                  add          sp, s7, t3
                  slt          s5, ra, a2
                  or           s0, a5, tp
                  sub          t0, t6, a7
                  add          t5, gp, s10
                  addi         s0, tp, 1245
                  xor          s2, gp, s2
                  nop
                  sltiu        t0, a5, -121
                  xori         a2, s11, -1965
                  srl          a6, t0, t1
                  ori          a7, s0, -635
                  slti         t3, a6, -1212
                  sra          gp, s9, s5
                  sltu         s6, s8, sp
                  ori          s11, a3, 677
                  srai         s7, s1, 24
                  andi         s8, s9, -1365
                  sltiu        a1, zero, 715
                  sub          s9, t4, zero
                  and          gp, t3, a0
                  andi         sp, sp, 288
                  srl          t2, a6, s8
                  lui          sp, 98147
                  srl          t1, a1, s8
                  lui          a6, 580280
                  srai         t3, t4, 26
                  slti         t4, a2, 935
                  srai         t1, s7, 12
                  xori         s9, s11, -1619
                  xori         t1, a4, 475
                  sub          s11, a1, s3
                  sub          s7, t3, s2
                  slti         gp, zero, -87
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s6, 0xffffffff
                  li           a3, 0xffffffff
                  li           t4, 0x0
                  li           t0, 0x0
                  li           ra, 0xffffffff
                  li           t6, 0x80000000
                  li           s0, 0x0
                  li           a2, 0x80000000
                  li           s5, 0x80000000
                  nop
                  addi         a5, s6, -1879
                  auipc        t0, 702953
                  auipc        t6, 805350
                  sub          s6, a2, a3
                  nop
                  nop
                  addi         t4, s6, 1326
                  add          s6, s0, t4
                  addi         ra, s6, 937
                  addi         s0, s0, 4
                  lui          ra, 974513
                  sub          t6, s5, s0
                  add          s5, a5, a2
                  sub          t6, s6, t4
                  addi         s6, s6, 328
                  lui          a3, 505803
                  lui          s6, 816270
                  add          a2, a5, t4
                  auipc        s5, 1011839
                  sub          s5, ra, s6
                  addi         ra, s5, 1498
                  nop
                  lui          s6, 729534
                  addi         t6, ra, -399
                  addi         a2, t6, 1617
                  addi         s0, s5, -1434
                  nop
                  nop
                  add          a3, ra, t0 #end riscv_int_numeric_corner_stream_7
                  nop
                  slli         sp, s5, 25
                  srl          s1, t6, t0
                  andi         s0, a6, 372
                  sub          s10, s9, a1
                  lui          s7, 827594
                  xor          a1, s2, t5
                  srli         s5, s4, 9
                  slti         s7, s8, 1329
                  addi         s5, t1, -1792
                  andi         t2, a0, 1660
                  srli         s11, s3, 13
                  nop
                  nop
                  sltu         s1, s7, s7
                  srai         a4, t3, 14
                  add          a3, s2, zero
                  add          s6, s9, t0
                  nop
                  lui          s4, 934730
                  sra          a3, s9, s6
                  ori          s1, a7, 135
                  nop
                  sub          zero, a0, t3
                  or           s1, s2, s8
                  addi         s1, s9, -901
                  sra          ra, s7, s0
                  andi         ra, a5, -1463
                  add          t5, s1, a6
                  lui          s7, 1003395
                  slt          a5, ra, a6
                  sltiu        t1, s9, -384
                  slli         a4, a6, 3
                  slt          a2, gp, gp
                  ori          s8, t3, 1346
                  slli         sp, a1, 26
                  slli         a7, sp, 2
                  sra          s5, t4, s2
                  add          s11, a4, a3
                  srai         a7, t6, 7
                  sra          s6, t5, a6
                  and          a2, s4, a3
                  and          gp, s11, s2
                  add          a6, sp, s8
                  srai         gp, t6, 12
                  or           s7, s9, t5
                  srl          t1, a3, t5
                  xor          gp, a5, a1
                  srl          s10, s6, s1
                  sub          sp, ra, s1
                  andi         t6, gp, 1329
                  sra          a4, a4, s9
                  sll          a6, s6, a6
                  sll          t2, a2, a4
                  srai         t1, t1, 27
                  and          s6, t1, s7
                  sub          s7, s1, a5
                  addi         s9, s7, -1553
                  lui          t2, 19190
                  slli         s11, s6, 17
                  lui          gp, 417792
                  srl          s9, gp, s3
                  xor          s6, t4, s9
                  ori          a7, sp, -1627
                  nop
                  andi         t2, s6, 1566
                  and          a7, s3, t3
                  addi         t0, t0, -956
                  sltiu        t1, s2, -1517
                  slti         a3, s9, 1070
                  slt          t4, s7, t0
                  slli         s6, s10, 12
                  andi         a5, s7, -1408
                  sra          a2, a0, t6
                  sltu         s7, s7, t0
                  and          ra, s3, zero
                  sll          s2, s2, a2
                  sltu         t5, s3, a2
                  and          sp, a6, s0
                  lui          s8, 987136
                  sra          t3, a1, s7
                  add          s10, zero, t1
                  xori         gp, s9, -2000
                  add          a7, a5, s11
                  sub          t3, sp, t5
                  lui          zero, 313275
                  sra          ra, a3, s3
                  srl          a2, t1, t0
                  andi         s5, a0, -80
                  slti         a4, s2, 1606
                  auipc        s7, 590436
                  addi         s4, t2, -215
                  sltiu        s10, a2, -890
                  sll          s7, gp, s4
                  sra          s1, s9, sp
                  ori          a1, s11, -83
                  nop
                  slt          a2, s10, zero
                  or           gp, a1, s0
                  sltu         a7, t0, a7
                  srli         s0, s4, 24
                  slt          ra, a0, a2
                  sra          s2, a5, s6
                  slti         t1, s4, -1595
                  slti         s10, s9, -1843
                  or           s5, tp, a0
                  sra          t1, t2, a2
                  andi         s11, s3, 1973
                  sra          s6, s4, s0
                  or           t1, t3, a5
                  auipc        s11, 909637
                  and          s5, s6, a3
                  srli         zero, a7, 29
                  auipc        a2, 359524
                  sub          s9, s9, s6
                  sltiu        t3, a7, -1247
                  srl          sp, a0, s0
                  slli         t6, gp, 23
                  lui          s2, 307959
                  sll          t3, t2, ra
                  lui          t3, 85405
                  add          zero, s3, s3
                  sltu         t6, t1, gp
                  auipc        s9, 539670
                  srli         a1, t1, 2
                  slli         a7, a0, 26
                  sltiu        s1, s9, -945
                  xor          gp, t4, s4
                  or           a5, s10, ra
                  andi         sp, a6, 68
                  add          t6, t6, a4
                  addi         a1, s4, -743
                  sra          a7, s3, s3
                  sltu         ra, s0, s6
                  ori          s6, s4, 1236
                  sll          a5, s3, t1
                  xori         s9, a5, -743
                  sll          a2, s11, t5
                  sll          ra, a7, gp
                  sll          s0, s1, sp
                  sltiu        s0, s9, -1794
                  xor          s5, a2, s5
                  sra          sp, a5, a2
                  lui          t6, 901290
                  sra          ra, sp, sp
                  xori         s10, s11, -1924
                  ori          a1, sp, 497
                  sra          s7, sp, t3
                  srai         s1, t4, 13
                  or           s4, t6, ra
                  or           t3, s0, a5
                  sltiu        s5, s0, 1013
                  srl          a5, s1, s6
                  ori          ra, tp, 913
                  srli         a7, s4, 0
                  lui          a7, 773970
                  xori         s11, s9, 650
                  ori          a7, s0, 549
                  sub          s11, s9, s11
                  xor          s2, s6, gp
                  add          t3, t3, tp
                  srli         s4, s11, 10
                  xor          a1, s0, sp
                  nop
                  xori         gp, s2, 2043
                  sltiu        t3, s8, 1320
                  auipc        a3, 127987
                  srai         t0, t3, 28
                  lui          s9, 367180
                  slt          s5, s5, sp
                  xori         s1, s1, 371
                  sub          t5, t4, t4
                  xor          t3, t5, t3
                  sub          s11, a2, a3
                  add          s8, a2, tp
                  sltiu        a6, a0, 1463
                  slt          s7, s1, s4
                  nop
                  sltu         s4, s3, s7
                  addi         a7, ra, -1977
                  sra          s4, s3, a2
                  lui          s6, 617296
                  addi         zero, s9, -1878
                  sll          a7, s0, tp
                  srli         t6, s11, 13
                  sub          a7, t5, a5
                  srli         t5, t6, 21
                  nop
                  auipc        zero, 1026066
                  or           s2, t0, tp
                  ori          a6, t6, -1812
                  ori          s5, t5, 61
                  slti         s6, s5, 1921
                  sub          s11, t2, s0
                  addi         sp, a2, 105
                  xor          s10, s1, s8
                  xor          a4, s4, s4
                  slli         a5, s5, 27
                  srli         t6, a0, 28
                  xori         s9, zero, -1846
                  auipc        t6, 809204
                  add          a7, a6, a2
                  and          s2, a3, s3
                  nop
                  auipc        a3, 149557
                  nop
                  nop
                  sltu         s2, s7, s0
                  lui          zero, 404372
                  srai         ra, t1, 14
                  ori          t4, s4, -679
                  add          a1, a2, a3
                  addi         t3, a7, -141
                  srai         zero, t1, 12
                  srli         s9, a2, 2
                  sra          a1, t0, zero
                  sra          s7, s6, s1
                  slt          s8, s11, s10
                  or           t6, s1, tp
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           gp, 0xffffffff
                  li           s9, 0x0
                  li           t3, 0xdc2b2cd7
                  li           t5, 0xffffffff
                  li           s4, 0xffffffff
                  li           s7, 0xffffffff
                  li           s1, 0x80000000
                  li           a5, 0x0
                  li           s10, 0xfa13ff33
                  addi         a5, s4, 1127
                  nop
                  add          s4, s4, s9
                  auipc        s7, 286935
                  sub          s10, t3, t3
                  nop
                  auipc        s10, 738966
                  add          s4, s7, s1
                  nop
                  nop
                  addi         s9, s4, 1647
                  auipc        s7, 414474
                  nop
                  lui          gp, 631050
                  lui          gp, 347049
                  add          s1, s1, t3
                  nop
                  addi         gp, s7, -660
                  add          s4, s4, s7
                  lui          t5, 34582
                  addi         s4, s7, 1637 #end riscv_int_numeric_corner_stream_6
                  srl          s9, s11, tp
                  sra          s7, gp, s8
                  sra          s4, sp, tp
                  nop
                  nop
                  and          a3, a1, a0
                  nop
                  srl          s5, s9, t1
                  andi         t5, gp, 2003
                  slt          s5, t2, s3
                  lui          a5, 118743
                  sub          t3, t2, a4
                  sltiu        s6, s2, 1844
                  or           s9, s2, t0
                  ori          a1, s5, -1842
                  xor          t1, a3, t3
                  sll          s2, a6, s10
                  nop
                  sub          s8, s8, s1
                  slt          gp, s9, s0
                  slti         s10, t4, -2032
                  sltu         ra, t5, t1
                  lui          s10, 723544
                  sub          a1, t5, t1
                  srai         t2, ra, 10
                  slti         s4, t5, 971
                  slli         s2, a0, 13
                  slti         t5, a3, 1794
                  srl          a2, t5, t2
                  srli         a7, a7, 29
                  ori          s4, sp, 1113
                  auipc        t2, 675050
                  lui          s0, 593957
                  lui          s11, 301028
                  sltiu        sp, t5, 765
                  sll          a7, s2, t6
                  xori         a2, s11, -1798
                  srl          s0, gp, s11
                  sll          s4, ra, zero
                  and          s0, a5, s10
                  add          s6, a5, a7
                  slli         s10, s0, 5
                  srli         a6, s3, 16
                  add          sp, t6, a7
                  srl          a7, s11, a4
                  add          a7, s6, a7
                  sra          gp, t5, s9
                  addi         s5, s2, -1703
                  srli         s4, s5, 25
                  sltu         s2, s5, t6
                  sltiu        s6, s2, -620
                  andi         s2, t5, -302
                  sltu         s4, ra, a5
                  slt          t4, t3, a1
                  sra          s5, a2, t5
                  addi         a1, s3, -1445
                  auipc        a3, 468401
                  addi         s10, s6, -1035
                  addi         a7, s8, 1049
                  slli         sp, t1, 20
                  xori         s9, s10, -932
                  sub          t5, zero, a6
                  slt          t3, s8, t2
                  sub          a1, s10, t2
                  xor          t5, s3, s9
                  nop
                  nop
                  srli         a1, sp, 29
                  srli         s9, s3, 16
                  addi         a2, s9, 1079
                  sub          t0, s9, s0
                  xor          s11, a3, s7
                  lui          t3, 879206
                  auipc        s10, 47555
                  srli         s11, s5, 7
                  srli         s9, s1, 17
                  slli         t6, t2, 20
                  slli         s4, t2, 26
                  slti         a2, s4, 773
                  sub          t4, a6, t0
                  or           a3, s9, s8
                  sub          s0, tp, s0
                  sra          zero, ra, s9
                  lui          s10, 604681
                  srli         t6, zero, 26
                  sra          t2, t2, a2
                  nop
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_22
                  li           a7, 0x23fc1009
                  li           s10, 0x80000000
                  li           t4, 0xffffffff
                  li           t2, 0x0
                  li           s0, 0xff493d47
                  li           s2, 0xffffffff
                  li           s11, 0xf1fcca9a
                  li           t1, 0x0
                  li           ra, 0x9c0efa43
                  auipc        t4, 1015048
                  addi         a7, ra, -1994
                  auipc        s11, 811476
                  nop
                  lui          s2, 111329
                  addi         t1, ra, 144
                  nop
                  nop
                  addi         s11, a5, -1069
                  lui          t4, 995467
                  auipc        s11, 626471
                  nop
                  auipc        s11, 696867
                  sub          a5, t4, t2
                  nop
                  add          t4, s0, s10
                  nop
                  add          a5, a7, s0
                  sub          t1, a7, s11
                  auipc        s0, 821245
                  nop
                  auipc        t1, 482889
                  lui          t1, 267899
                  sub          s0, t2, s10
                  addi         s2, s11, -226
                  addi         s2, t1, 101
                  add          s2, s11, a7
                  nop
                  sub          t4, s11, a5 #end riscv_int_numeric_corner_stream_22
                  sll          a3, s7, s0
                  add          s9, t3, t4
                  add          s7, s9, t5
                  slli         gp, a1, 28
                  sltiu        s6, s4, 1581
                  xori         t1, gp, 1071
                  addi         s10, s7, -501
                  sltiu        sp, sp, -855
                  sra          s10, tp, s2
                  srai         t2, t4, 18
                  sltu         t6, s6, s4
                  and          a4, gp, t2
                  nop
                  sub          s5, s7, tp
                  slt          t5, tp, a2
                  or           t1, a0, t2
                  add          a7, s2, a0
                  srai         t6, s5, 12
                  and          s1, tp, t2
                  or           gp, a3, s2
                  xori         s11, a0, 2040
                  xor          a1, s1, a1
                  srli         a6, s2, 31
                  nop
                  slli         gp, t5, 15
                  ori          gp, s1, -1991
                  slti         zero, t1, -735
                  slli         s5, t0, 7
                  lui          s5, 707884
                  or           s4, s8, a7
                  sub          a5, a3, s4
                  and          a1, s7, t4
                  add          s1, s3, s2
                  srli         s6, s11, 11
                  slti         s2, t3, 1723
                  sra          a7, a6, t2
                  srai         s4, s8, 23
                  sltu         s11, s3, s10
                  auipc        s10, 100317
                  auipc        t2, 890055
                  sll          a7, a6, t2
                  sll          s5, s7, t5
                  and          s2, s6, t3
                  xori         s11, zero, -1409
                  sub          t4, tp, s5
                  sra          zero, a5, ra
                  or           s5, ra, a5
                  xori         s7, t5, -1658
                  addi         t2, s4, 1714
                  slt          t2, s10, t1
                  or           t1, t6, s2
                  slti         a2, s9, 710
                  add          a4, s5, s2
                  srli         a6, t6, 23
                  and          a4, s4, t1
                  sra          sp, t3, sp
                  sub          s7, s6, zero
                  sltu         sp, s8, s6
                  srli         s10, a1, 9
                  and          s9, t4, sp
                  xori         sp, a3, 732
                  slti         s5, a1, -1828
                  auipc        s6, 759860
                  slli         s6, a1, 17
                  slti         s8, a5, -1601
                  lui          t0, 656825
                  srai         a7, t0, 3
                  sltiu        s6, gp, -37
                  add          s9, t1, s4
                  srl          zero, sp, s8
                  and          sp, gp, t3
                  slt          s5, t5, s3
                  srli         t5, t3, 6
                  srl          t5, s2, s2
                  srli         a7, sp, 15
                  nop
                  nop
                  srli         t1, s1, 22
                  sltu         s7, gp, s9
                  and          s10, t2, s8
                  sltiu        a6, t5, 543
                  sra          s0, a7, s4
                  lui          s5, 963762
                  xor          sp, s11, t3
                  sll          s9, a0, a6
                  xori         t0, a6, 1872
                  sra          s6, s3, a1
                  and          s0, a7, s2
                  andi         s8, a3, -1018
                  slt          t5, t0, tp
                  sltu         s4, a0, a5
                  slt          a6, s7, sp
                  sltiu        a2, a3, 1989
                  auipc        a7, 752434
                  slli         s0, a7, 27
                  auipc        s5, 1006152
                  sltu         s4, s11, tp
                  nop
                  srl          t0, s3, t4
                  srl          s0, a5, a1
                  xor          gp, t3, s0
                  auipc        s2, 738653
                  sltu         s1, s8, a5
                  slti         t5, a4, -1036
                  auipc        a5, 441084
                  ori          t0, zero, -1663
                  srai         zero, s7, 15
                  auipc        a5, 307793
                  slt          zero, gp, ra
                  ori          a6, s10, -1342
                  srai         t1, a2, 18
                  add          a6, a7, t6
                  srl          s2, t1, ra
                  sltiu        t1, s9, -1053
                  slti         sp, t1, -1829
                  slli         s11, a5, 14
                  nop
                  sra          s11, ra, t5
                  auipc        s1, 986146
                  sub          s6, t2, s9
                  slt          a5, s11, t6
                  add          gp, t3, a5
                  ori          a3, t1, -497
                  sltu         gp, t1, s1
                  xori         a1, a1, 1885
                  sra          s0, t3, s11
                  and          gp, t5, gp
                  srl          t2, s3, a2
                  sra          sp, s1, s3
                  sub          s7, t5, s10
                  or           a5, s6, gp
                  sltu         s0, s4, t0
                  srai         t4, s5, 1
                  slt          a1, t5, a6
                  sltiu        s1, s0, 1785
                  sll          s7, s9, gp
                  or           s9, sp, t1
                  nop
                  srli         s4, a5, 28
                  and          a7, t6, sp
                  andi         a3, s11, -1512
                  or           a2, a3, a5
                  slt          s7, gp, ra
                  and          ra, t1, ra
                  sub          s5, tp, t2
                  slli         t1, a1, 4
                  xori         s8, s10, 1866
                  srai         a7, s9, 29
                  add          a3, a1, a3
                  sltiu        a5, a4, -437
                  or           sp, t6, s4
                  sub          s5, a4, s9
                  slt          sp, a4, s6
                  auipc        a3, 637183
                  sltu         sp, t2, a4
                  addi         zero, a7, -649
                  xor          t1, s0, s6
                  xor          a7, zero, s5
                  addi         zero, t1, -685
                  sra          s9, a3, s6
                  srli         s1, a5, 27
                  lui          s11, 588439
                  and          s7, s4, tp
                  add          s11, s7, a1
                  slti         sp, t1, -1820
                  srl          s9, a7, a0
                  auipc        sp, 182576
                  andi         a2, a0, 866
                  add          s5, s2, s7
                  sltu         zero, a2, s6
                  lui          zero, 359839
                  xori         a4, a7, -1553
                  lui          s5, 702723
                  add          s6, t4, s7
                  nop
                  auipc        a2, 395800
                  slti         s4, t2, 2028
                  srl          s1, a5, ra
                  srli         a4, t3, 23
                  xor          t5, t6, sp
                  srli         s0, ra, 14
                  xor          s7, s1, a7
                  slti         s0, s7, -836
                  andi         s11, a7, -1010
                  sltiu        a6, a5, 1698
                  addi         a3, gp, 819
                  srai         t0, s1, 27
                  sub          t5, t6, s6
                  slt          a5, s10, s3
                  sltu         s10, a6, s11
                  or           s8, a6, t4
                  auipc        s1, 836751
                  xor          s9, t1, a1
                  add          a5, s8, t4
                  sltu         t2, t5, s7
                  auipc        s6, 866878
                  addi         s0, a1, 1110
                  srai         a6, a5, 27
                  sltiu        gp, s2, 640
                  slti         s10, s2, 1521
                  sltu         a5, s9, t1
                  and          s0, a5, t3
                  sll          a3, t4, s2
                  lui          s10, 574049
                  sll          zero, s8, a4
                  or           s8, t1, a7
                  sra          a4, s1, t0
                  slti         gp, t5, -50
                  lui          gp, 812817
                  auipc        t1, 521267
                  sub          s0, a7, a3
                  srli         s7, s11, 6
                  andi         gp, a2, 87
                  ori          s8, a1, 1935
                  sltu         a6, s10, s9
                  xor          s0, s10, s0
                  lui          s2, 336849
                  srli         t3, a1, 10
                  srl          zero, s5, a2
                  and          s9, zero, s0
                  andi         s4, a1, -1686
                  sub          s7, t5, a5
                  srl          s6, a2, zero
                  ori          ra, s7, -1918
                  addi         t1, a7, 716
                  or           a4, s3, gp
                  nop
                  sltiu        t4, s2, 1565
                  auipc        s7, 816303
                  slli         s8, s4, 30
                  slli         s6, t0, 8
                  slt          s6, s5, a4
                  sub          ra, a3, s6
                  and          a6, s4, a5
                  sltu         s0, zero, t3
                  ori          s0, s7, -1929
                  sra          sp, s11, s8
                  slti         ra, s4, 1940
                  xor          s4, s1, s0
                  lui          s1, 410705
                  and          t5, a2, a0
                  or           s10, sp, s7
                  xori         t1, s10, 1835
                  slti         a4, s9, -1601
                  ori          t4, a6, 1989
                  sll          a4, t1, s9
                  sll          gp, a4, zero
                  slt          s7, s5, s7
                  sll          zero, a7, s2
                  and          s1, s3, s6
                  add          a7, t4, s7
                  andi         a7, s4, 1289
                  slt          t6, t4, a1
                  ori          ra, a1, -2040
                  srl          a4, s9, s3
                  addi         s5, zero, 157
                  auipc        t0, 269990
                  add          a1, a5, a2
                  srl          zero, s5, a5
                  and          s0, t2, s11
                  sub          t2, a7, sp
                  slli         s4, s4, 23
                  slt          a3, tp, s8
                  slti         t1, s7, -791
                  lui          s0, 398963
                  sub          s7, s6, tp
                  lui          a2, 765569
                  srl          s1, zero, tp
                  srai         zero, a4, 0
                  slli         s0, a3, 7
                  sltu         s1, a4, s7
                  sltiu        t0, s2, -556
                  sll          s10, ra, a6
                  slt          a4, a7, s8
                  ori          a1, a6, 1134
                  lui          s11, 357781
                  ori          t2, t1, -1012
                  addi         s4, t5, 1119
                  srl          a4, a1, tp
                  addi         t2, tp, 274
                  sltiu        s6, a6, -555
                  slt          t5, s5, a0
                  slt          s8, a3, s9
                  sub          a1, t0, a1
                  sub          a4, s3, t1
                  sltu         ra, t6, ra
                  xor          ra, t3, t6
                  sra          s10, s2, s0
                  xori         t6, t4, -1022
                  slli         s8, a3, 15
                  sra          a3, tp, a7
                  lui          s9, 41052
                  xor          t0, ra, a0
                  slti         a7, s0, 1651
                  xori         gp, s10, -1961
                  addi         a7, tp, 1029
                  auipc        a5, 127810
                  addi         gp, zero, 461
                  nop
                  andi         t1, s5, -1457
                  sll          t3, sp, a2
                  andi         t0, a6, -1483
                  sra          s4, s9, a5
                  srli         s1, a7, 25
                  srl          gp, sp, a1
                  slli         sp, a3, 29
                  auipc        a4, 296825
                  srli         s10, s6, 20
                  addi         s6, gp, 1
                  sll          t6, a1, gp
                  slti         t1, s8, 468
                  slt          s2, t3, s4
                  lui          s10, 380344
                  nop
                  sltu         a5, t3, zero
                  xori         s6, s5, 1984
                  xor          s0, s2, s4
                  auipc        t1, 853631
                  slti         s7, s5, -2023
                  slli         a3, a7, 8
                  srli         t2, t5, 0
                  add          s4, a3, a2
                  nop
                  sltu         s0, a0, gp
                  sra          a2, a6, s8
                  xor          a3, s10, a6
                  or           s11, a2, s1
                  slt          a1, a7, ra
                  sltiu        s4, ra, -861
                  and          t4, s10, a5
                  sra          s2, sp, t4
                  ori          t4, s1, -346
                  lui          a7, 256893
                  sra          s9, a4, s7
                  srli         s1, t3, 15
                  xori         s6, s9, -1455
                  ori          s11, gp, -1121
                  sra          a6, t4, s5
                  srl          a7, a3, a2
                  auipc        a3, 20959
                  slt          a3, a5, s2
                  xor          s10, s11, zero
                  add          gp, t6, s9
                  srai         gp, a4, 29
                  andi         sp, s3, 67
                  andi         s5, s11, 814
                  slt          s11, a0, a0
                  addi         s0, a4, -1685
                  andi         s11, t3, 1475
                  add          zero, s11, sp
                  srli         gp, ra, 22
                  and          t6, t5, tp
                  or           s7, a1, t6
                  sltu         s4, t2, t6
                  addi         a6, s9, 1859
                  srli         s10, s7, 27
                  lui          s5, 600577
                  nop
                  srli         s7, s5, 11
                  andi         s7, s11, 162
                  andi         s7, s7, 382
                  sltiu        a2, a6, 436
                  slli         s11, t2, 6
                  andi         t2, s8, 906
                  srl          s7, s4, s5
                  add          t1, a6, t6
                  auipc        s2, 518189
                  lui          t6, 662368
                  slli         ra, a7, 22
                  auipc        a2, 441455
                  srli         sp, t1, 19
                  or           s2, a6, s1
                  addi         sp, s2, 1309
                  slli         t6, gp, 27
                  lui          t5, 197433
                  srl          t6, t4, t0
                  xori         sp, t6, -388
                  srli         s4, s7, 18
                  sll          t4, sp, s6
                  sll          s5, s3, sp
                  srli         s11, s7, 23
                  srl          t2, s4, s0
                  srai         a4, s0, 2
                  slti         a3, a6, 1728
                  sub          a5, s9, s5
                  sra          t3, a5, s0
                  and          sp, sp, a2
                  srl          zero, t5, zero
                  addi         s0, a7, -1519
                  and          a6, s8, a5
                  sltiu        a6, a1, -736
                  sub          a4, s6, t4
                  or           s8, a0, t0
                  xor          a4, a4, zero
                  add          s1, s2, s3
                  auipc        a3, 49758
                  srl          zero, s0, zero
                  sltiu        t4, a1, -890
                  sll          t0, t6, a2
                  auipc        s5, 1013101
                  sltu         t4, s2, tp
                  addi         a5, t3, -693
                  auipc        t6, 740913
                  sub          t1, t1, t3
                  slli         t0, s2, 0
                  ori          t2, t3, 1696
                  addi         s2, t0, -414
                  sra          sp, s5, s10
                  srl          s4, sp, s10
                  xori         t5, s9, -814
                  sltu         s5, a2, s0
                  sra          a3, s10, sp
                  auipc        t1, 607970
                  xor          s11, a2, t6
                  srli         a3, sp, 16
                  ori          t2, a4, -1598
                  slli         s4, a5, 16
                  sra          a5, s4, s7
                  srl          s4, s11, s8
                  sub          a1, t0, a2
                  sll          t6, a1, s6
                  andi         t5, a5, 1284
                  sub          t5, s6, a5
                  srli         ra, zero, 9
                  or           gp, s2, a2
                  srai         s6, s2, 23
                  sra          t4, a0, a0
                  sra          a5, s10, s1
                  sra          a6, t3, s6
                  sub          s9, s7, s9
                  slli         t1, s8, 5
                  sll          a3, s3, t2
                  sltu         a4, s0, t4
                  and          s2, a0, a1
                  srai         t0, tp, 16
                  srli         t6, s3, 15
                  lui          s5, 702742
                  or           s8, a5, a2
                  ori          t6, s10, 95
                  slli         t1, s11, 0
                  slli         t1, s3, 19
                  xor          t1, a3, s7
                  sltiu        sp, s2, 180
                  slt          s8, a2, gp
                  ori          a1, a2, -1654
                  sltu         a4, a6, a0
                  sra          s4, a0, a3
                  slt          t6, t0, s6
                  slli         a2, t0, 0
                  auipc        s4, 806529
                  andi         t2, t2, -246
                  nop
                  addi         a1, t5, -1393
                  slti         s1, s8, -1633
                  xor          s9, s8, t6
                  or           s5, sp, a0
                  ori          s10, s4, 973
                  slt          t3, s6, a4
                  sll          t3, s1, s6
                  slt          t1, a6, t2
                  srai         a4, ra, 18
                  sll          t4, s10, t0
                  andi         t2, sp, -328
                  auipc        ra, 664377
                  auipc        zero, 145406
                  auipc        zero, 498663
                  sltiu        s4, zero, -1132
                  andi         s1, a7, 1192
                  slt          t3, a6, a7
                  sll          t0, s11, tp
                  xori         sp, t4, 967
                  slli         s9, s1, 12
                  sltu         s10, s7, s2
                  slt          s2, t2, s6
                  addi         t3, s11, -1280
                  xori         a5, a1, 1051
                  xori         a4, a3, 1092
                  addi         t1, a4, -1451
                  lui          a5, 478170
                  or           s10, t4, a3
                  srai         s2, s3, 20
                  sra          s10, a2, a3
                  or           t3, t3, a7
                  sub          s2, t1, zero
                  srli         s9, s2, 24
                  andi         s0, sp, -820
                  add          s8, t5, s7
                  andi         a1, zero, 449
                  or           s0, t6, s2
                  xor          s1, a7, tp
                  sltiu        a7, a1, 439
                  sltiu        s2, s11, -157
                  slli         s1, t5, 22
                  slt          a6, a3, s6
                  srli         s7, a0, 22
                  xor          s8, a6, t0
                  sub          gp, t5, s6
                  sll          sp, s0, s0
                  or           s5, a5, gp
                  sltiu        t0, t5, 642
                  xor          a6, a0, s9
                  srl          s0, t0, a4
                  andi         s5, sp, 33
                  addi         a5, a5, 1321
                  add          s0, s6, s6
                  sub          sp, s3, s0
                  slli         a4, s10, 11
                  auipc        zero, 521506
                  andi         t0, t2, 97
                  srl          s11, s0, ra
                  sll          a3, s11, s3
                  auipc        s2, 1007347
                  and          t0, t6, s8
                  sltu         s2, s10, s10
                  nop
                  slti         a7, a0, 996
                  addi         s4, a6, -1881
                  slli         a4, t2, 26
                  srl          s0, a4, a3
                  ori          t2, t0, 1458
                  slt          s7, a0, a0
                  slt          a2, ra, s2
                  lui          s9, 889154
                  andi         a3, a5, 525
                  slli         s10, t5, 21
                  sltu         a1, a3, s11
                  andi         s10, a7, 1094
                  add          s8, t4, s4
                  nop
                  or           s6, s9, s8
                  auipc        s5, 358095
                  or           gp, sp, a3
                  xori         a4, s3, -659
                  slt          t3, s5, a6
                  sll          gp, s0, s2
                  srl          sp, s5, sp
                  sll          s11, t1, zero
                  nop
                  addi         s1, a3, 198
                  xori         s10, s5, -131
                  sltu         s1, t2, s0
                  sltiu        t5, t4, 852
                  srli         s4, a6, 9
                  srai         gp, a1, 26
                  nop
                  slli         s8, a1, 25
                  xor          s7, s3, a3
                  xor          zero, t4, t4
                  ori          s10, a0, 821
                  xori         zero, a0, 30
                  addi         t3, tp, -123
                  sra          a6, s8, s11
                  sub          zero, t1, a0
                  slt          t5, t5, s9
                  srl          a7, s3, s0
                  or           a5, a0, a1
                  slti         a2, s2, 901
                  xori         t5, ra, -20
                  slli         t3, tp, 29
                  and          s8, s4, s8
                  or           s8, a7, s2
                  slli         t5, tp, 5
                  sltiu        s1, t0, 861
                  sltiu        a3, tp, 573
                  or           t1, s11, t3
                  sltiu        s5, t6, 1542
                  srli         a1, zero, 8
                  srli         a6, a7, 25
                  addi         gp, t3, 598
                  srai         s2, tp, 18
                  srai         s8, a7, 25
                  sub          sp, s7, gp
                  lui          t5, 730344
                  srli         s5, a0, 27
                  xori         gp, gp, 1743
                  and          s4, a4, s0
                  andi         a2, s2, 693
                  srai         s9, gp, 1
                  sub          zero, s10, ra
                  andi         s1, s6, 1872
                  lui          a7, 683562
                  addi         t3, t2, -1386
                  sll          ra, a3, tp
                  slti         a7, a3, 112
                  sltu         a1, a5, sp
                  sltiu        a1, s10, -342
                  xori         t4, a1, -2029
                  ori          t5, s4, -1064
                  or           t5, a3, s8
                  srli         s11, t5, 31
                  srli         s7, t0, 3
                  auipc        sp, 22000
                  srai         a7, s1, 25
                  srai         s1, t5, 20
                  srli         t1, s11, 8
                  sra          a6, s3, s6
                  xori         t0, t4, 1270
                  auipc        s6, 631099
                  srl          a1, t5, ra
                  add          a7, s3, a3
                  andi         zero, tp, 1979
                  srai         s2, a4, 0
                  slti         a1, a7, -878
                  lui          s8, 226948
                  srli         gp, t2, 20
                  addi         a7, t4, 1997
                  nop
                  sra          zero, a0, t6
                  sub          gp, t4, t2
                  sub          t5, t6, sp
                  andi         s11, gp, 1573
                  andi         a5, t6, -1759
                  srli         a3, s11, 30
                  sra          s10, tp, a4
                  nop
                  addi         t5, s4, -1119
                  nop
                  sltiu        s10, s4, 769
                  auipc        gp, 21310
                  or           zero, s10, zero
                  slti         s10, t6, -334
                  sltu         ra, s0, s1
                  srai         s0, s5, 17
                  sltiu        t0, gp, -571
                  xor          zero, a6, s11
                  andi         s4, gp, 1649
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           a3, 0x0
                  li           s11, 0x80000000
                  li           a2, 0x0
                  li           s6, 0xffffffff
                  li           t2, 0x80000000
                  li           sp, 0x4a99aa82
                  li           a7, 0x0
                  li           t1, 0xa76a0c9b
                  li           ra, 0xffffffff
                  lui          a2, 454654
                  add          s6, t2, sp
                  addi         a2, a7, -756
                  add          s7, a3, ra
                  add          s11, a7, s11
                  add          sp, s11, s7
                  nop
                  add          a7, a2, t2
                  add          s11, s11, a7
                  sub          a7, a2, t1
                  lui          s7, 832782
                  lui          a2, 700335
                  sub          t2, a7, s6
                  auipc        s6, 296919
                  lui          sp, 178581
                  sub          s6, sp, ra
                  nop
                  sub          t1, t2, a7
                  addi         a7, a3, 1813
                  sub          s11, s11, s11
                  lui          t2, 318731
                  addi         a7, t2, -1951
                  nop
                  addi         s6, t2, 1111 #end riscv_int_numeric_corner_stream_5
                  srl          s8, a4, a0
                  add          t2, a4, a6
                  nop
                  srai         s5, sp, 11
                  sll          gp, a4, t2
                  nop
                  srai         s10, s2, 18
                  srl          s9, a6, a1
                  addi         a5, t5, 1857
                  srl          t6, a2, s7
                  addi         a7, s10, -170
                  ori          s7, a7, -1833
                  sltu         s6, gp, t5
                  or           zero, s7, t3
                  sra          gp, a7, s10
                  xori         a2, t5, -779
                  add          t2, sp, a4
                  lui          a2, 416473
                  slti         s2, gp, 278
                  ori          t5, sp, 227
                  srl          t1, tp, ra
                  and          t4, s0, tp
                  andi         a7, s0, -1385
                  slti         a4, a3, -1854
                  nop
                  ori          a1, s0, 1377
                  slti         a5, zero, 999
                  sltiu        t6, t3, 1839
                  xori         s1, t6, 189
                  add          s5, t2, a1
                  addi         s0, t5, 1074
                  xori         t3, s5, 640
                  srai         a1, zero, 27
                  addi         s2, s0, 2033
                  lui          t5, 22920
                  ori          s0, t5, 1461
                  addi         s2, s10, 917
                  sll          sp, s6, s3
                  sll          t0, gp, s2
                  slli         s10, gp, 2
                  add          a7, t4, s4
                  add          a5, t3, s11
                  srli         s7, s2, 22
                  xor          t0, a7, s10
                  addi         t4, s6, -1809
                  xori         a3, s10, 479
                  srli         t6, a4, 10
                  sra          t3, s6, s3
                  or           t5, sp, a7
                  xori         s10, a0, -1608
                  nop
                  addi         s11, tp, -1721
                  or           gp, s4, t6
                  sub          t6, s8, t3
                  lui          a4, 117976
                  sub          t1, s6, s11
                  sll          s11, a0, a7
                  ori          sp, s7, 382
                  slli         ra, a4, 16
                  nop
                  auipc        t3, 913831
                  lui          s2, 87375
                  srli         gp, a0, 21
                  sll          s6, s7, s9
                  sll          s1, t3, t4
                  andi         s10, a5, 637
                  xor          s10, a6, t3
                  sltiu        a7, s0, 1592
                  srli         s0, s3, 18
                  slli         zero, a0, 8
                  andi         a2, s1, -1660
                  sltu         a3, a1, s9
                  sltiu        s8, s6, 988
                  sll          t3, t4, tp
                  nop
                  ori          a2, t1, -1194
                  sub          a7, s3, s1
                  addi         t2, s8, 1733
                  slli         a5, s1, 14
                  or           s1, s7, s0
                  sltu         a5, a0, s9
                  slt          s2, t3, s5
                  addi         t0, s9, -1948
                  srl          ra, t4, s0
                  nop
                  xor          s2, zero, a6
                  or           s6, a2, s10
                  sub          s4, t6, a3
                  auipc        a5, 722432
                  sll          zero, s4, gp
                  sub          s6, s1, s1
                  ori          sp, a6, -73
                  nop
                  slt          sp, tp, t5
                  sub          ra, s2, s3
                  srai         s1, sp, 23
                  lui          ra, 311097
                  srl          s2, s11, t3
                  and          s2, s3, a7
                  ori          s0, t5, -1421
                  srl          s0, a7, t4
                  sub          s2, s5, sp
                  slli         a2, a4, 4
                  add          a1, t6, ra
                  xori         a7, t3, -2048
                  sub          s1, a3, a1
                  sltiu        a5, zero, 1977
                  nop
                  lui          a6, 98555
                  srai         a5, s1, 8
                  slli         s1, s6, 13
                  andi         t2, a0, -654
                  srli         a2, ra, 5
                  addi         s4, ra, 1390
                  or           s11, tp, s7
                  sra          t3, gp, a3
                  xor          s0, a7, sp
                  sub          s11, s0, a1
                  slti         t6, a2, 251
                  sra          t2, t4, s5
                  srl          a4, t0, t1
                  andi         s4, s2, 81
                  slt          s9, a0, t0
                  srl          s0, s5, s8
                  nop
                  srli         s0, t2, 25
                  lui          a4, 290708
                  auipc        a3, 826570
                  slt          s2, a4, t2
                  sub          t6, s6, t6
                  and          a5, s6, sp
                  srli         s7, a6, 31
                  andi         s1, a4, -1659
                  ori          s5, a7, 496
                  sltiu        s0, t0, -1438
                  sub          s10, a6, s0
                  addi         t5, t0, -1783
                  andi         s10, s0, -188
                  slli         t3, s6, 28
                  ori          sp, t3, 726
                  sll          s9, gp, s4
                  or           s11, t3, a4
                  slli         a4, t0, 19
                  slt          s10, t1, sp
                  nop
                  auipc        a4, 803885
                  srl          zero, s3, t3
                  addi         a5, a1, 1065
                  sra          t6, s0, s9
                  sub          t3, s7, t2
                  or           s6, s1, s10
                  srl          s5, ra, sp
                  sltu         t4, a2, a0
                  xori         a7, s2, -1525
                  and          s5, t2, s6
                  srl          t5, t3, s2
                  srli         t5, t5, 31
                  xor          sp, gp, a0
                  sll          s2, s0, s0
                  auipc        s1, 626346
                  srai         a2, t5, 23
                  sub          s5, t4, s6
                  srli         a2, t4, 12
                  srli         sp, t2, 17
                  slt          t6, s9, a5
                  sra          a3, s7, a5
                  add          a7, s0, t2
                  sra          s5, s4, s6
                  auipc        a6, 628371
                  xor          s1, a2, t0
                  lui          gp, 448958
                  sra          a4, a6, s2
                  ori          s0, s2, -1109
                  xor          a2, s4, t2
                  slti         a7, gp, -1509
                  sltiu        s6, t6, 1483
                  auipc        s8, 529456
                  and          a2, a6, sp
                  auipc        a6, 489870
                  sltu         s7, a7, s8
                  sltiu        t4, a5, 1918
                  sra          s6, zero, s7
                  srli         s4, s1, 31
                  nop
                  sltiu        t5, t0, -1658
                  srl          s8, a3, s2
                  srli         s1, a6, 26
                  sltiu        s7, zero, 1518
                  sll          s5, a0, a2
                  sltu         s4, s2, s7
                  xori         t4, a6, -734
                  or           t6, a3, t2
                  add          s11, gp, s11
                  xori         t5, zero, 1935
                  srli         gp, a1, 25
                  srai         a3, t6, 1
                  nop
                  sltu         a7, s6, t6
                  sra          s0, t3, t2
                  nop
                  sub          t2, s0, t3
                  and          s11, gp, s2
                  slt          t4, a4, t3
                  slti         s1, t3, -86
                  ori          t3, t3, -1958
                  xori         zero, t0, 885
                  srl          sp, s7, t1
                  sll          a3, a3, s3
                  sll          zero, tp, a6
                  srai         t3, t0, 14
                  sll          t1, s5, s4
                  srai         gp, s2, 17
                  sll          t2, t3, s5
                  sltiu        s6, t6, 1523
                  slti         s0, tp, 708
                  auipc        s8, 159598
                  sll          zero, gp, s3
                  sltiu        ra, a4, -558
                  sub          s5, t5, tp
                  addi         s2, s9, -1882
                  srli         a2, t6, 12
                  addi         t5, s7, 799
                  sltu         a1, s6, ra
                  or           a7, a7, s3
                  sltu         s8, t0, a0
                  xor          a3, a6, s11
                  ori          t5, t6, 1207
                  auipc        t6, 718161
                  nop
                  srai         t2, a0, 23
                  lui          s6, 257551
                  srai         s10, t1, 10
                  or           s5, t4, t6
                  srli         s7, t4, 0
                  or           t3, a7, s9
                  slt          t2, a0, a5
                  auipc        s9, 299782
                  slli         gp, t4, 27
                  or           s4, a0, s6
                  and          a2, a4, s0
                  srli         s11, a3, 13
                  lui          s1, 101346
                  ori          a1, tp, 160
                  add          a2, a4, t4
                  addi         t2, t1, 56
                  addi         s9, s11, -773
                  nop
                  sub          s0, s8, gp
                  srl          a1, a5, t5
                  slli         s11, s8, 17
                  sub          a1, t3, tp
                  sll          s1, s1, s7
                  sub          t4, a6, sp
                  xori         t0, tp, -127
                  slti         zero, s3, 214
                  xor          a5, zero, a3
                  add          s11, s7, a5
                  lui          s0, 91544
                  nop
                  addi         zero, t2, 998
                  slli         s11, s9, 2
                  xor          a1, s9, s3
                  srli         s11, a1, 8
                  ori          s1, a2, 1772
                  addi         ra, s2, -1012
                  nop
                  sll          t4, s0, gp
                  sra          s2, s8, a1
                  auipc        a7, 140219
                  sra          t1, tp, s4
                  sll          t6, t5, s5
                  sll          a5, s11, s4
                  or           a2, s2, s10
                  ori          s4, a2, -1223
                  slt          s9, s5, t1
                  sll          a5, s2, s7
                  and          t0, s10, s0
                  auipc        t3, 326425
                  slli         t6, tp, 26
                  or           zero, a0, s5
                  addi         t4, t2, -574
                  slt          s9, a5, a6
                  srai         s7, a2, 9
                  xori         t2, s6, 1349
                  sra          gp, s2, t0
                  add          t1, a6, t4
                  auipc        zero, 75576
                  sub          s4, t5, a4
                  slt          t2, ra, s5
                  srl          s4, s2, a0
                  slti         s4, a7, 1953
                  ori          s0, s7, 708
                  or           a5, a6, t1
                  sub          t0, s11, a6
                  auipc        ra, 799074
                  add          a7, s7, t0
                  add          a7, a7, a0
                  lui          a3, 627911
                  addi         a7, a2, -253
                  xori         gp, s10, 1107
                  addi         a2, t4, 1011
                  addi         s11, s10, -1821
                  slti         s2, zero, 1917
                  sltu         t3, s3, s7
                  sub          s9, t3, tp
                  slli         a4, a3, 20
                  nop
                  srl          a3, s0, s2
                  srl          s2, s7, ra
                  sll          a2, t1, t6
                  ori          a7, t5, -643
                  slti         gp, s0, -21
                  srai         s0, s7, 26
                  slt          s9, zero, t6
                  srai         s5, a1, 13
                  lui          t3, 914815
                  xori         a4, t5, 900
                  srai         sp, a6, 1
                  or           s8, gp, t0
                  sra          zero, s0, s3
                  sra          s4, s0, t4
                  and          a3, s7, t0
                  slti         sp, s10, -1627
                  slt          s2, s9, sp
                  lui          s11, 696368
                  sltu         s2, s9, t0
                  addi         s11, t1, 2025
                  sltu         s4, t2, t0
                  srai         sp, a1, 13
                  add          s5, t0, a3
                  sra          t2, zero, s11
                  xor          s2, a5, t1
                  xori         t2, s8, 334
                  slli         a1, gp, 1
                  sra          s7, t5, t2
                  addi         t3, a0, 1169
                  sltu         a7, s11, zero
                  sltiu        s10, sp, 1611
                  sltu         s7, t6, a1
                  sltu         a7, t6, a6
                  add          a5, a5, s6
                  sltu         s10, t5, t1
                  slli         t3, s4, 9
                  srl          gp, s10, s9
                  slti         s8, t3, 327
                  lui          sp, 1034552
                  slt          a7, s11, a4
                  sltu         t3, sp, s5
                  slt          a4, s5, t3
                  sltu         s0, t1, t6
                  sra          a7, t1, t6
                  nop
                  or           a5, t1, s1
                  slt          a4, a4, t3
                  sltiu        ra, s8, 1464
                  slti         t5, a1, -1449
                  slli         s6, t4, 23
                  add          s1, t0, s4
                  sltiu        t2, gp, -831
                  addi         s1, a5, -1374
                  or           a1, t3, s4
                  slt          a5, a0, a6
                  sra          t0, t6, s2
                  or           s10, a1, sp
                  lui          s10, 739191
                  sltiu        s0, s4, -41
                  or           zero, gp, s7
                  slti         gp, a6, -787
                  ori          sp, zero, 398
                  sltu         s7, t1, s3
                  sltu         a2, a1, s10
                  andi         a6, s3, 1126
                  sltu         s10, tp, s8
                  andi         a4, t5, -542
                  addi         t0, a2, -1756
                  sra          t6, s6, a7
                  srai         s9, t5, 22
                  lui          s2, 901779
                  ori          t5, a2, 581
                  add          a1, ra, a0
                  srai         gp, s5, 8
                  andi         gp, a0, 1592
                  slti         s0, t1, -1297
                  sll          zero, zero, s11
                  sll          a5, a4, t6
                  sltu         t5, s3, a6
                  xori         zero, s3, -527
                  nop
                  sll          t5, sp, t6
                  slti         s6, s1, -1146
                  sltu         sp, t3, a6
                  xor          s9, t4, t6
                  nop
                  and          a3, s7, zero
                  xori         t6, s7, -338
                  xor          a5, s5, s1
                  srl          t1, s1, s4
                  slt          t4, t5, a5
                  andi         t6, t3, -660
                  sll          s6, s11, s3
                  srl          t1, t1, a1
                  or           s1, s0, a3
                  sub          a1, s8, a1
                  slti         gp, a6, -112
                  sll          s10, s3, s3
                  and          s7, a5, t4
                  lui          a7, 29847
                  srl          a7, t4, t1
                  sub          sp, s11, zero
                  srl          s6, s10, s11
                  sltu         a4, a1, ra
                  xori         t5, t4, -1300
                  sra          s5, s5, a5
                  sltu         t6, s11, s8
                  xori         t5, s2, 1946
                  sub          s4, t6, a2
                  sltu         a6, a3, t1
                  or           s6, s7, t6
                  xori         s11, a3, 601
                  andi         a2, sp, 1176
                  andi         zero, s2, 1656
                  sltiu        a4, s1, 414
                  sll          s8, ra, s9
                  sltiu        t4, a0, -1221
                  sltiu        s1, t3, 709
                  srai         t0, a1, 25
                  slli         gp, s7, 24
                  slti         a1, t3, 1721
                  addi         gp, s4, -459
                  addi         a2, s7, 283
                  srai         a2, t1, 31
                  sub          t2, t3, s5
                  sll          s7, s4, tp
                  sltiu        s9, t2, 348
                  nop
                  sltiu        s1, s9, -988
                  srai         s11, tp, 28
                  xor          s11, t6, t0
                  or           s1, a7, t3
                  srli         a7, a6, 7
                  ori          a4, a5, -512
                  sra          s9, s9, s1
                  addi         ra, tp, 209
                  auipc        a5, 159050
                  xor          s11, t5, sp
                  sltu         a3, s9, s7
                  sra          s7, t4, tp
                  srli         t3, s7, 30
                  srai         s10, t0, 17
                  sub          s10, s10, t4
                  sltiu        t6, a2, -56
                  andi         a4, t4, -1048
                  sra          t1, s4, s4
                  slli         t5, a6, 19
                  add          a7, a4, sp
                  xori         s4, a4, 166
                  srai         t4, s6, 4
                  slti         s4, a5, -1053
                  sll          ra, a2, a7
                  add          a7, a7, s5
                  slli         t4, t0, 25
                  andi         a2, s7, 1240
                  sra          s6, s5, s4
                  addi         s6, t1, -581
                  nop
                  and          t1, gp, s9
                  auipc        s2, 968150
                  xor          a3, a0, t0
                  or           a7, t5, s0
                  sub          t0, a2, t2
                  srai         s1, s0, 30
                  sltiu        a4, s8, 592
                  srli         sp, a6, 13
                  xor          gp, s6, t1
                  slli         a4, a5, 14
                  sltu         s1, t3, s5
                  sll          a7, s9, t4
                  slli         a7, s8, 15
                  and          s9, a6, a6
                  sltiu        s9, t2, -1730
                  slli         a1, t2, 20
                  srli         s10, s10, 31
                  xori         t3, s5, -401
                  sub          t0, a4, s8
                  xori         s6, t3, -748
                  add          a3, s8, s1
                  srai         a5, a2, 17
                  nop
                  or           s1, s6, s4
                  sltu         gp, t0, a6
                  sll          zero, a0, zero
                  sltu         s5, a6, t3
                  xor          s0, s1, t0
                  add          a6, s4, a2
                  srai         s4, t5, 20
                  and          t3, s11, s10
                  xor          ra, s2, s8
                  srl          gp, t6, a1
                  add          s10, s9, ra
                  and          s11, zero, s11
                  and          zero, s9, s0
                  sltiu        s10, t4, 1758
                  sra          s7, t0, s8
                  addi         zero, t1, 1973
                  andi         gp, s5, -1427
                  and          t1, s10, t6
                  ori          sp, t4, 484
                  andi         zero, s7, 1907
                  xori         t1, s1, -243
                  ori          a2, zero, 1030
                  slt          t3, gp, a1
                  sra          zero, zero, a3
                  xor          t3, a1, sp
                  xor          t3, t6, s2
                  sltiu        s9, s0, -1353
                  xor          s10, ra, a6
                  sltu         t1, s6, gp
                  slli         s8, s1, 19
                  sltu         a6, s1, t5
                  srai         s1, s6, 19
                  sll          a4, a6, s2
                  addi         s9, tp, 506
                  slt          zero, s1, tp
                  sltu         t1, s6, a3
                  addi         t3, a5, -1428
                  andi         t6, t5, 1727
                  andi         s9, s3, 1845
                  sltiu        s11, t4, 1844
                  and          t0, s8, zero
                  addi         a4, s9, 12
                  lui          t0, 227033
                  sra          a1, s10, zero
                  or           gp, t5, a1
                  add          zero, t0, a7
                  addi         s11, t5, 1359
                  sra          t6, s9, s8
                  srli         s8, s8, 0
                  xor          s10, gp, t5
                  xori         t6, a0, -1179
                  or           s7, a0, a5
                  sra          s8, a3, a7
                  xori         sp, t4, -890
                  auipc        t5, 134934
                  sltiu        a7, t0, -1533
                  slti         s6, zero, -757
                  srl          s10, s1, a2
                  sra          t0, a0, t2
                  nop
                  xori         s11, s4, 684
                  sub          s9, a1, a5
                  lui          s10, 26383
                  xor          t2, s1, t6
                  sltu         s4, a0, t1
                  srai         s1, ra, 23
                  sltiu        a4, a4, 2044
                  srli         a7, a4, 6
                  sll          gp, s9, a0
                  add          sp, s9, a0
                  and          t2, a2, a2
                  auipc        s4, 253268
                  add          s4, a5, s3
                  srai         s11, t5, 15
                  or           a2, t5, s11
                  slt          a4, t6, s9
                  sltu         gp, s9, t4
                  add          t5, s10, s11
                  sra          a1, a2, tp
                  slli         t3, s11, 7
                  srai         s4, s8, 15
                  xori         t4, t5, 453
                  srai         sp, s7, 0
                  andi         a3, s7, -1823
                  xor          a7, s7, s4
                  sltiu        a2, s8, -540
                  ori          t6, tp, -192
                  or           s9, t3, s10
                  sub          a5, a4, gp
                  and          t3, s9, a7
                  sra          zero, t1, s3
                  andi         s7, s3, -817
                  auipc        t3, 362783
                  sll          a3, zero, s5
                  xor          t1, a7, t0
                  xori         a2, s11, 879
                  xor          a3, s11, s2
                  srli         s10, t6, 17
                  addi         t5, s9, 225
                  srli         zero, a1, 18
                  xori         s6, t2, 321
                  sll          a3, s9, sp
                  lui          s6, 50310
                  srai         t4, t2, 4
                  xor          ra, a0, s2
                  ori          a6, a3, -1799
                  xor          s5, s10, s1
                  srli         t6, s0, 11
                  sub          s5, a7, s1
                  sltiu        gp, a6, 1474
                  slt          a6, a5, a7
                  slli         s10, s10, 15
                  andi         t2, s8, 424
                  ori          s4, a0, -1096
                  slt          sp, t0, s2
                  slli         a6, gp, 30
                  sltiu        gp, s9, 796
                  and          s2, s7, ra
                  sra          a6, s1, s2
                  auipc        a7, 116186
                  lui          t4, 1023550
                  sra          t1, s11, s1
                  andi         s6, a2, 757
                  ori          a3, ra, 593
                  srli         a3, sp, 25
                  sll          s4, t0, gp
                  sra          sp, gp, t5
                  andi         a7, t2, -283
                  slli         zero, t6, 26
                  srai         gp, sp, 21
                  srl          t2, s8, a6
                  and          a5, s6, s0
                  lui          a7, 192893
                  sub          a6, t6, a2
                  sltiu        a7, tp, 693
                  xori         s5, s11, 1830
                  addi         s11, t5, 339
                  ori          s10, t1, 270
                  lui          t6, 511713
                  andi         zero, a3, 80
                  sra          zero, s11, tp
                  nop
                  slt          t1, a4, a3
                  nop
                  ori          a6, tp, -1267
                  slli         t1, s10, 10
                  xori         a3, a3, 754
                  sub          s4, t6, t4
                  slt          t6, gp, s8
                  and          a2, gp, a7
                  xor          s7, s7, a7
                  add          t4, a2, a1
                  xori         ra, t3, 1110
                  andi         s7, s3, 1148
                  sub          gp, tp, gp
                  addi         t1, s10, -1112
                  lui          t5, 799486
                  addi         s7, s4, -1558
                  addi         gp, t3, 1761
                  sltu         t1, s1, s10
                  nop
                  srl          s1, s5, a3
                  sltiu        a1, t6, 173
                  sra          s1, sp, t0
                  sub          s10, s1, ra
                  sll          sp, t2, ra
                  sra          s8, t6, s5
                  addi         s10, a7, 1782
                  ori          s0, t4, 1752
                  sra          s2, a0, a6
                  and          t5, t4, s2
                  lui          zero, 735312
                  sltu         t6, s5, zero
                  and          a3, t0, s2
                  sll          gp, a3, s10
                  andi         a4, s10, 1484
                  slti         t5, a0, -574
                  slti         a5, s2, 1907
                  sll          s11, t5, a6
                  or           a4, a3, t3
                  lui          s10, 601152
                  xori         s4, s2, -214
                  lui          t2, 658679
                  srli         a6, a6, 27
                  sltu         a5, a7, s2
                  slti         a5, s8, 480
                  or           zero, s3, sp
                  nop
                  auipc        t4, 769441
                  addi         a4, t2, 1170
                  slli         a2, t2, 22
                  sra          a6, tp, s7
                  slli         gp, ra, 15
                  srl          s0, a5, zero
                  xor          t4, t5, t6
                  sub          s9, t4, a1
                  add          s0, t6, gp
                  addi         s10, t3, 763
                  slt          s2, t3, s3
                  xori         t1, a0, 314
                  lui          s0, 516989
                  auipc        t2, 267917
                  andi         s9, s10, -1157
                  srai         t0, t0, 29
                  srai         s0, a0, 2
                  slt          s10, t5, s7
                  slli         s5, t3, 30
                  auipc        t6, 625879
                  add          t4, s0, t5
                  lui          t4, 662607
                  add          s0, t1, zero
                  slti         t5, tp, 925
                  or           t1, a6, gp
                  srai         s0, tp, 11
                  addi         sp, a0, -1727
                  or           s11, a6, s7
                  sltiu        t5, a2, -1352
                  slt          s5, a6, t2
                  and          s11, a0, s8
                  auipc        a3, 638106
                  addi         t2, t1, -697
                  sub          a6, t4, s4
                  nop
                  srai         a5, a4, 16
                  sll          a1, s11, sp
                  slt          t4, t5, a6
                  xori         s9, t0, 559
                  xor          ra, s10, t3
                  slti         s4, s11, 958
                  addi         t3, s5, 157
                  addi         s4, s6, -938
                  ori          t2, s9, 102
                  andi         a7, t0, -1885
                  sltu         s1, s8, tp
                  nop
                  slt          t5, s1, t1
                  slli         t5, t4, 1
                  slti         s5, s5, 638
                  lui          s11, 914119
                  addi         a7, a6, -1802
                  auipc        a3, 412866
                  add          t1, s6, t5
                  slt          s11, zero, a1
                  andi         ra, t4, 420
                  auipc        a3, 635963
                  xori         a1, t1, -1417
                  srai         zero, s8, 15
                  addi         s8, s1, -1342
                  sll          t1, t0, t4
                  ori          s11, gp, 75
                  srai         t6, s4, 20
                  ori          s8, a0, -1792
                  addi         ra, a4, -244
                  xor          a7, sp, a3
                  ori          t5, s5, 281
                  srli         zero, gp, 24
                  slti         s10, t3, 1656
                  lui          s5, 46057
                  sltu         s10, tp, t4
                  lui          s8, 332433
                  ori          t2, a3, -695
                  or           a3, sp, t1
                  srai         ra, a3, 3
                  srl          a3, s10, t6
                  ori          a6, gp, -334
                  and          a5, s1, zero
                  srai         s2, s7, 23
                  sll          a4, zero, s6
                  or           sp, s3, a6
                  srl          s7, s0, t5
                  srl          s9, a1, s11
                  sub          t4, s10, t1
                  xor          a2, a2, s7
                  auipc        s5, 714784
                  and          a3, s3, t1
                  addi         s10, a1, 1477
                  addi         t1, s6, -61
                  addi         a5, t0, -576
                  ori          a7, s3, 1142
                  srai         s0, s10, 15
                  srl          s5, t2, s8
                  slli         s11, t5, 7
                  sra          s11, s6, s0
                  slti         a2, s5, -1853
                  slli         sp, a6, 14
                  sltiu        a4, a2, 1611
                  sub          s0, s10, zero
                  nop
                  sltiu        t1, t1, -614
                  srai         s10, t0, 22
                  srl          t2, t2, t0
                  xori         t1, s1, 151
                  srai         s7, t1, 29
                  lui          s0, 1016283
                  add          s4, a5, t5
                  xori         s1, s6, 101
                  andi         s8, a3, -289
                  slli         t1, sp, 16
                  sub          a5, s1, a6
                  or           gp, s9, sp
                  srl          s10, ra, t2
                  add          s7, s0, s0
                  addi         s8, zero, 937
                  sll          a4, sp, t5
                  ori          a7, s8, 156
                  srai         t5, a0, 4
                  slti         sp, a7, -1558
                  srl          t6, s5, sp
                  ori          s2, t2, 12
                  srl          s1, a5, t3
                  sltu         s9, zero, s8
                  xori         s5, s9, 1382
                  slt          zero, a5, ra
                  or           a5, sp, s11
                  srli         s1, t2, 16
                  srli         a7, a2, 11
                  sltiu        t0, s9, -651
                  nop
                  andi         a6, a7, -1417
                  ori          s4, s0, 1086
                  srl          s4, a2, s0
                  srl          t0, s3, a0
                  sll          s4, s4, t0
                  srli         s2, t2, 10
                  or           t1, s1, ra
                  sltu         ra, s4, s0
                  xori         s8, a7, 995
                  srai         sp, t6, 24
                  xor          s7, tp, s10
                  srl          s6, a5, s10
                  xor          t1, s11, t5
                  auipc        a6, 348354
                  slli         s2, s10, 10
                  andi         t1, t6, -1806
                  slti         a5, a7, 401
                  and          a2, s0, gp
                  lui          s2, 524915
                  and          s4, s10, a5
                  xori         s5, t2, 374
                  sub          s4, s11, zero
                  slt          a1, a5, t0
                  slt          t3, a3, s3
                  sll          t4, t4, s5
                  xori         zero, t4, 1164
                  sltiu        s6, s5, 1102
                  slli         t1, t6, 14
                  nop
                  slt          s4, t3, s3
                  lui          t6, 937923
                  slt          t2, t2, s8
                  srl          t4, s3, s6
                  sub          t5, a5, t6
                  xor          a5, s11, t6
                  addi         s2, s9, -92
                  add          s9, s1, s10
                  sub          t4, s4, a1
                  sub          a4, t2, zero
                  srli         s9, a6, 26
                  andi         s6, a4, 379
                  or           s9, s9, a1
                  lui          a1, 299554
                  sub          t0, t5, t6
                  sll          s5, s2, a4
                  srl          s7, s10, zero
                  or           zero, t0, tp
                  and          t3, s8, a0
                  srli         s5, t0, 21
                  xor          a4, a3, s1
                  sltiu        a5, s6, 1190
                  sub          s10, s11, s10
                  sll          s5, t3, s5
                  xori         gp, s4, 1751
                  nop
                  andi         a1, tp, -681
                  sltu         s7, a4, gp
                  sub          s11, sp, t3
                  srli         s7, tp, 7
                  auipc        s4, 48907
                  and          s1, t6, a7
                  and          zero, s10, s5
                  addi         sp, s5, -1498
                  slli         t2, t4, 28
                  xori         a2, t2, 1909
                  slli         s4, s6, 16
                  sub          a3, s1, t4
                  add          gp, sp, t6
                  sra          s4, s0, s9
                  nop
                  addi         a2, s5, -693
                  srai         a5, a4, 24
                  slt          a1, s4, sp
                  andi         zero, s7, -1010
                  sub          t3, a2, a2
                  sub          s6, t3, t6
                  lui          t3, 475558
                  srli         t0, s3, 12
                  andi         a6, a4, -1391
                  add          a5, s1, t3
                  sltu         zero, s2, a4
                  slt          t0, s9, s3
                  or           s0, t0, s10
                  sll          s7, gp, a6
                  addi         s8, a4, 1221
                  srli         sp, tp, 12
                  srli         s1, s2, 9
                  or           a7, a4, s0
                  auipc        zero, 86109
                  sltiu        a1, a5, 1606
                  sll          s2, a2, s10
                  sltiu        t4, a6, 317
                  sll          s2, s2, s11
                  add          t5, t2, s9
                  srli         gp, s10, 17
                  ori          sp, a2, 34
                  xori         s0, t4, -191
                  slli         t3, s0, 2
                  sub          s4, s5, t1
                  srai         a7, t2, 0
                  xori         s10, t4, 1141
                  srli         t3, s6, 10
                  slt          a2, s1, a3
                  or           a6, t3, a1
                  lui          a5, 675150
                  add          t5, zero, a4
                  sltiu        s4, s11, 1242
                  sra          s11, a2, t6
                  or           s10, t5, s10
                  sub          a7, sp, s9
                  or           s9, s5, t3
                  sltiu        t2, s11, -960
                  sltiu        a3, t1, 1449
                  add          gp, a3, gp
                  sll          s6, a6, zero
                  sltiu        t5, s0, -957
                  sltiu        a3, sp, 257
                  xor          t4, s0, ra
                  sra          t5, s1, s5
                  slti         a6, t3, -1494
                  sltu         s6, t2, a3
                  slti         s5, a0, -1923
                  srl          t1, sp, s10
                  sll          a2, t6, t5
                  srai         t0, a6, 30
                  add          s10, ra, a6
                  li           gp, 0xb1c092aa #start riscv_int_numeric_corner_stream_0
                  li           s4, 0xffffffff
                  li           s2, 0x24af2c81
                  li           s9, 0x0
                  li           s10, 0x80000000
                  li           s5, 0xffffffff
                  li           s8, 0xffffffff
                  li           ra, 0xffffffff
                  li           s11, 0x0
                  li           a7, 0x80000000
                  nop
                  add          gp, ra, s4
                  auipc        ra, 26741
                  auipc        s8, 937299
                  addi         s4, s4, 1156
                  sub          ra, s5, s11
                  nop
                  add          s4, ra, s11
                  lui          gp, 740645
                  add          s5, s5, s9
                  sub          ra, s4, ra
                  addi         ra, ra, -1994
                  nop
                  add          ra, s10, s2
                  add          s4, gp, s5
                  add          ra, s2, ra
                  nop
                  lui          s10, 185935
                  lui          s2, 228080
                  sub          s4, ra, s9
                  sub          gp, s5, s11
                  lui          ra, 844459
                  sub          s11, s4, s8
                  add          s2, s2, s11
                  nop
                  addi         s4, s4, 591
                  nop #end riscv_int_numeric_corner_stream_0
                  srli         t0, a6, 20
                  srli         a7, s9, 13
                  nop
                  sll          s7, s3, a7
                  and          a7, a1, t6
                  sll          a7, a1, s10
                  slt          a1, s5, t5
                  slli         a6, a4, 3
                  slti         s11, zero, -1
                  slli         a1, s7, 8
                  and          t1, sp, sp
                  sltu         t6, a7, s5
                  xor          zero, s10, s8
                  addi         s1, t2, -642
                  auipc        s10, 428373
                  sub          s11, sp, sp
                  slli         t4, a3, 20
                  sra          s11, t4, t4
                  sub          s0, a6, s2
                  srai         t3, s10, 5
                  add          zero, a7, a7
                  xori         s0, tp, 923
                  xor          a5, ra, t2
                  srai         s1, gp, 0
                  auipc        a4, 897981
                  andi         t1, a5, -580
                  sub          s7, a5, t4
                  andi         zero, a0, 151
                  slt          s1, s9, s3
                  srl          a1, s9, s4
                  auipc        ra, 413442
                  sltiu        a4, t0, 970
                  slt          t0, s6, sp
                  ori          s5, a3, 1188
                  srai         s11, s11, 5
                  sltiu        a6, s4, -1276
                  ori          t6, a2, 668
                  auipc        s11, 982405
                  andi         a4, s6, 1550
                  sub          s5, zero, a1
                  srai         sp, t0, 26
                  srli         t5, s7, 6
                  srl          sp, a6, s2
                  ori          t0, s8, 1481
                  ori          t0, a6, 1070
                  sltiu        t4, a3, 1237
                  srai         a6, a1, 30
                  andi         s6, s7, -632
                  slli         s0, a4, 7
                  auipc        s4, 1011583
                  slli         a2, s1, 23
                  andi         s11, t3, 1886
                  srli         gp, t1, 25
                  lui          a2, 1001351
                  and          s4, t2, s3
                  lui          s9, 530320
                  xor          s2, a7, s7
                  auipc        a4, 776603
                  sub          ra, t1, ra
                  srli         t1, t1, 31
                  xori         gp, s1, -612
                  andi         t0, s8, -808
                  xor          s5, s8, a5
                  sub          a7, s11, a7
                  sltu         ra, s11, s8
                  sra          s5, a2, a6
                  add          a4, s0, t4
                  andi         sp, tp, -34
                  srai         s1, a2, 31
                  add          s11, s6, a3
                  xor          s4, s2, s8
                  andi         t0, s5, 1901
                  sll          a1, s10, zero
                  lui          a6, 482790
                  auipc        t4, 242008
                  slt          t0, a7, gp
                  slt          a1, s4, tp
                  auipc        s2, 346943
                  sra          s5, s0, a0
                  auipc        t1, 20359
                  lui          t0, 862938
                  xor          a6, s8, t6
                  slli         t0, a6, 27
                  xori         a7, s6, -1970
                  sub          zero, t1, s0
                  slt          s7, s7, s4
                  ori          s10, s9, 1398
                  srai         a2, s1, 25
                  slli         a4, s4, 11
                  sll          gp, a2, s5
                  add          s7, a5, t6
                  sll          s1, s5, t5
                  sltiu        s10, s0, -360
                  add          zero, s6, ra
                  sll          t0, a7, gp
                  xori         a2, t2, -627
                  lui          gp, 1046737
                  nop
                  srli         a4, gp, 30
                  andi         t2, s5, 1071
                  nop
                  slli         t2, s6, 9
                  ori          s0, s2, 591
                  slti         t2, a4, 786
                  xori         s8, a1, -536
                  add          t4, zero, s10
                  sltu         s0, a5, zero
                  sltu         t2, s0, t6
                  auipc        a4, 739471
                  or           s9, t5, a4
                  slli         a1, t6, 9
                  addi         zero, t4, 1471
                  srai         s1, t1, 30
                  andi         a3, sp, -1728
                  sub          s1, s11, tp
                  sra          t2, t1, a3
                  sll          s6, s1, zero
                  nop
                  add          s1, tp, s4
                  and          t0, s2, s2
                  add          zero, t2, s9
                  andi         ra, tp, 1685
                  and          t3, t6, s9
                  auipc        s4, 803543
                  sra          t2, s5, s6
                  srai         s1, t6, 30
                  sltiu        t0, a3, -290
                  srli         t2, s2, 18
                  and          t1, s8, sp
                  slt          t4, gp, sp
                  slt          s11, s5, s4
                  sltu         a6, s1, s6
                  srai         s0, sp, 23
                  slt          a6, s4, s4
                  xor          s4, gp, s3
                  addi         s8, t1, 103
                  sra          zero, a2, t6
                  auipc        s11, 76466
                  andi         s7, s2, 270
                  srai         gp, t4, 30
                  auipc        a5, 772918
                  xori         zero, s3, 1640
                  slli         s2, s7, 10
                  lui          gp, 191973
                  sub          t6, zero, a2
                  sll          s9, s6, zero
                  slti         s7, s1, 697
                  srli         zero, a5, 2
                  andi         s8, ra, 1039
                  sltu         a6, s7, s5
                  srli         s6, zero, 25
                  add          s7, t5, t6
                  sll          a3, tp, sp
                  xori         zero, gp, 1690
                  slt          s1, zero, gp
                  sub          t0, t5, s3
                  nop
                  xor          s0, s10, t3
                  sra          s8, t3, s5
                  nop
                  srl          s4, a7, s6
                  xori         t0, s1, -692
                  sub          s0, a5, a0
                  xori         a7, a1, -827
                  sll          s5, t1, t4
                  or           a1, a7, a1
                  sltu         t5, a3, s6
                  and          a2, t6, t6
                  add          t0, s1, s0
                  srai         sp, t4, 30
                  slli         s10, a7, 23
                  srai         s8, a3, 19
                  xor          t3, t1, s4
                  slti         t1, s4, 1239
                  sltiu        t3, t4, 196
                  srl          a6, t0, s1
                  lui          t1, 481575
                  sltu         s7, t0, tp
                  sltu         a1, s7, ra
                  slli         a7, s8, 0
                  ori          a7, s9, -1900
                  srl          s7, t2, s1
                  srli         t6, s10, 21
                  add          ra, s4, s10
                  sltiu        t5, ra, 1497
                  slt          a7, t1, t5
                  srli         s0, sp, 18
                  andi         a7, tp, 1368
                  srai         a6, s2, 29
                  ori          s10, sp, 847
                  or           a3, s11, a1
                  srai         s2, tp, 6
                  slli         s4, a2, 29
                  lui          a5, 654433
                  sub          t0, ra, a7
                  sra          a1, a3, s3
                  srai         t0, sp, 8
                  sll          a1, s6, t6
                  sltu         t6, s4, a3
                  or           s4, s11, s4
                  ori          s0, gp, -1928
                  sll          sp, s0, s8
                  sub          s11, s3, t1
                  sltu         sp, a6, a5
                  slt          t1, s5, t3
                  slli         a4, gp, 31
                  sub          a6, a6, s5
                  or           t0, tp, t2
                  sll          sp, sp, s0
                  ori          a4, s10, -662
                  sll          s10, s6, s9
                  sll          s0, t4, t2
                  ori          t3, s5, 1598
                  srli         s10, a7, 19
                  andi         t6, s2, 1875
                  srai         t0, t3, 6
                  sub          t2, t6, ra
                  slt          t5, s8, s8
                  add          s1, ra, t5
                  addi         s0, s2, 1659
                  sltu         s6, s10, s10
                  sltiu        ra, t2, -662
                  sll          a3, gp, a6
                  xori         t4, s5, -857
                  xori         a4, s6, -1474
                  or           s7, a7, a0
                  srl          s9, t5, tp
                  xor          a6, t1, s10
                  auipc        t3, 522509
                  slti         zero, s10, 282
                  srai         s9, t3, 3
                  sltu         a4, t3, t5
                  andi         s1, a2, 949
                  srli         s4, t0, 0
                  add          s11, s4, a6
                  sll          t5, t6, tp
                  srli         a7, t1, 25
                  srli         t6, s0, 13
                  and          a6, a2, t4
                  lui          zero, 483927
                  ori          a7, zero, 292
                  lui          t5, 375745
                  slli         t5, s10, 24
                  auipc        t2, 716443
                  add          gp, s1, s11
                  xori         t2, t3, 769
                  xor          t6, t0, a3
                  srai         t3, gp, 3
                  srl          a4, s5, t2
                  slli         s4, s4, 7
                  srai         t5, s5, 20
                  ori          a4, s0, 499
                  andi         s2, tp, 159
                  slt          a6, t5, zero
                  sra          s11, s0, t0
                  sra          s8, a0, sp
                  sltiu        sp, a2, -148
                  sra          t4, gp, s9
                  sra          sp, a6, a4
                  addi         s2, a3, -986
                  auipc        gp, 33751
                  addi         a3, ra, 1327
                  sra          t1, zero, a7
                  sra          a6, t2, a5
                  andi         a5, t4, -1091
                  andi         s4, a2, -726
                  sra          zero, s8, ra
                  nop
                  nop
                  addi         t3, s3, 1506
                  sll          t2, t6, s9
                  or           sp, gp, gp
                  and          ra, s4, ra
                  slt          ra, t4, t4
                  xor          t4, s9, t1
                  lui          s0, 1006127
                  xor          t5, s2, s0
                  add          t2, s10, a0
                  and          a1, s7, zero
                  slli         t2, ra, 12
                  nop
                  sltu         t3, s5, t3
                  srai         zero, a2, 28
                  nop
                  srl          s5, a6, t5
                  andi         s5, t3, -1601
                  srai         s10, s3, 22
                  srl          a4, s11, a0
                  sltu         sp, s4, s2
                  slti         s1, s0, 1519
                  xor          a6, s6, a2
                  and          s5, a3, ra
                  ori          zero, a4, -702
                  add          a2, t5, sp
                  srli         t4, s6, 28
                  xori         s4, s8, -1023
                  sltu         t4, s11, s9
                  slli         s0, s1, 4
                  srl          s2, s3, s6
                  srl          s4, a5, t5
                  nop
                  sltu         gp, s5, t3
                  and          s2, t1, s1
                  andi         s5, s5, 197
                  slti         zero, t0, 1494
                  sra          t0, ra, sp
                  and          zero, s5, t5
                  sub          a7, t2, a1
                  lui          s0, 194160
                  andi         s4, s11, -1546
                  sll          a3, a3, t5
                  ori          s5, s2, 596
                  lui          ra, 936546
                  andi         s2, s3, -1671
                  add          ra, a4, a2
                  xor          sp, gp, s5
                  sra          a7, ra, s6
                  sub          t4, a4, s3
                  slt          t5, s6, tp
                  sltu         s8, gp, s3
                  add          s6, a6, a2
                  auipc        s9, 183901
                  srli         s0, s9, 1
                  srli         s11, s11, 12
                  andi         a7, t1, -575
                  ori          sp, zero, 1501
                  sltiu        zero, ra, -465
                  slt          a1, s2, a4
                  addi         s8, a5, 1713
                  add          s1, s4, a3
                  auipc        a6, 877261
                  or           t3, zero, s9
                  ori          zero, sp, -642
                  sll          s7, a3, s10
                  addi         s4, t4, 313
                  sll          zero, s7, s2
                  xori         a7, a3, -1732
                  xor          s0, gp, a0
                  srl          s11, t3, s11
                  add          s0, a0, s10
                  sltu         t3, s11, s0
                  sltu         s9, t1, s3
                  andi         a4, a3, 1813
                  xor          t1, t3, a0
                  xori         s5, tp, 1961
                  lui          s10, 806516
                  slt          zero, s10, s11
                  srai         s0, a5, 16
                  sltiu        zero, a6, -748
                  addi         a6, a0, -916
                  srai         t5, a2, 21
                  or           a6, t0, s1
                  and          zero, s9, t3
                  lui          s2, 905121
                  lui          t4, 126439
                  auipc        t1, 752912
                  srl          zero, s10, s8
                  add          a7, t3, s2
                  xor          t6, s1, tp
                  xori         s10, s1, -1265
                  slti         s6, s9, 314
                  add          s1, gp, a3
                  slti         a2, s6, 741
                  sltu         s0, s4, s8
                  sltu         t0, t3, s0
                  sltiu        s5, s5, -245
                  nop
                  slli         s4, t0, 5
                  ori          ra, t0, -921
                  auipc        s10, 319236
                  lui          s2, 706736
                  add          a4, ra, a0
                  xor          t1, s9, a0
                  lui          s1, 564830
                  slt          zero, s5, s11
                  lui          s0, 740615
                  or           s4, t2, s7
                  sra          sp, s0, a0
                  addi         s4, s4, -1735
                  srli         s10, a5, 0
                  sltiu        s6, s6, 1849
                  andi         a4, a4, 1972
                  srl          a3, t3, t0
                  addi         s7, gp, -917
                  lui          a6, 852790
                  sltu         s11, s9, t4
                  xor          a5, a5, a5
                  ori          a4, s5, 779
                  and          a1, s6, s7
                  nop
                  sll          a2, tp, s8
                  or           a5, gp, s2
                  andi         a5, s0, 909
                  slti         sp, tp, -768
                  xor          s0, s8, t1
                  sll          t1, a1, sp
                  addi         t3, t5, 796
                  nop
                  srl          s4, s5, t4
                  ori          gp, sp, 955
                  addi         a7, a0, 970
                  sll          a3, a1, a7
                  slt          a6, t1, a6
                  nop
                  lui          a6, 37782
                  addi         a7, ra, 99
                  sll          s8, a1, tp
                  sub          s2, a7, s9
                  xori         a5, a0, -1430
                  srai         t6, a4, 0
                  xori         t5, s0, -624
                  sra          a3, s0, a7
                  sub          a6, a2, s9
                  srl          s7, ra, s10
                  slt          gp, s4, ra
                  sra          s10, a0, s3
                  srai         s4, t3, 1
                  add          s5, a6, s9
                  srli         s11, a2, 30
                  xor          s8, a2, tp
                  sll          s4, s9, s8
                  addi         s11, a1, 626
                  xori         gp, a1, -1824
                  slti         s10, s6, 1974
                  sub          t4, a4, t0
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_26
                  li           s2, 0x0
                  li           a6, 0xffffffff
                  li           t5, 0x80000000
                  li           sp, 0x80000000
                  li           a1, 0x5ea991c3
                  li           s9, 0x0
                  li           ra, 0x80000000
                  li           a7, 0x80000000
                  li           s1, 0x80000000
                  auipc        t5, 605186
                  nop
                  lui          s1, 448678
                  addi         ra, a4, 1486
                  add          a4, a1, s2
                  nop
                  addi         a4, a4, 1418
                  nop
                  lui          a4, 988071
                  nop
                  auipc        s9, 971050
                  add          ra, t5, a6
                  auipc        s9, 105949
                  lui          a1, 26783
                  addi         s9, s2, 660
                  lui          a4, 48732
                  add          a6, t5, a7
                  add          a4, a1, a4 #end riscv_int_numeric_corner_stream_26
                  xori         s11, a4, 1260
                  and          s2, gp, s2
                  slt          t3, s3, a1
                  srli         s4, a5, 26
                  slt          gp, t2, s5
                  addi         s7, a7, 1595
                  sltiu        a7, s10, 359
                  sll          s7, t3, a5
                  or           zero, t0, a4
                  sra          t1, t6, s7
                  slti         a5, zero, -906
                  slti         s5, s8, -1819
                  srli         t6, s9, 16
                  sra          s0, s5, t2
                  addi         zero, s4, 37
                  slli         t3, s5, 17
                  sltiu        s9, tp, 1635
                  srli         t5, a3, 3
                  xor          s2, s10, t5
                  add          a1, s1, t0
                  addi         s2, tp, 609
                  sll          s7, a6, s0
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_25
                  li           a3, 0xffffffff
                  li           t1, 0x0
                  li           sp, 0xc1cbd184
                  li           s7, 0x80000000
                  li           a2, 0x0
                  li           a5, 0x11f65523
                  li           ra, 0xffffffff
                  li           s8, 0xf267cac5
                  li           t2, 0x66c24998
                  sub          a3, s7, a2
                  auipc        s8, 983486
                  add          s7, t1, t2
                  nop
                  lui          s7, 147493
                  addi         a3, a2, 747
                  sub          ra, s8, ra
                  lui          s7, 509545
                  addi         s8, a2, -1489
                  auipc        a5, 86227
                  add          sp, a3, a3
                  lui          s7, 496083
                  auipc        a4, 149327
                  lui          s8, 134007
                  sub          sp, t2, ra
                  auipc        sp, 469566
                  add          s8, a3, t2
                  nop
                  sub          ra, s7, t2
                  nop #end riscv_int_numeric_corner_stream_25
                  add          s9, s1, sp
                  srli         s8, s11, 13
                  auipc        s10, 375648
                  nop
                  sra          s10, s5, s4
                  srli         s0, s11, 8
                  ori          gp, t1, 1932
                  slli         gp, tp, 31
                  lui          s9, 1032471
                  srli         gp, t4, 20
                  slt          t5, a6, t0
                  srli         a6, t2, 20
                  sra          s2, a2, ra
                  sltiu        zero, s3, 7
                  sub          a2, a0, a1
                  add          t1, s8, t3
                  sub          s1, a0, s5
                  slt          s10, a4, s4
                  add          t6, tp, a4
                  sltu         gp, t6, ra
                  srai         s8, a7, 28
                  lui          sp, 506811
                  srli         a7, zero, 15
                  sltiu        t2, sp, -1586
                  add          t4, a5, gp
                  auipc        zero, 615259
                  xori         a6, s7, 651
                  sub          s11, t6, s6
                  or           sp, a0, s2
                  sll          t1, ra, t6
                  srli         s10, ra, 22
                  slli         t4, s10, 15
                  nop
                  slti         t1, a0, 594
                  srl          a7, s0, s8
                  or           s2, s7, sp
                  slti         s6, ra, -1184
                  lui          a2, 505633
                  xor          s4, s9, s2
                  srai         s2, a1, 28
                  and          a4, ra, a7
                  or           a2, a3, a0
                  addi         zero, s10, -145
                  srl          s7, s11, s7
                  addi         s0, t6, -65
                  sll          t0, s7, t1
                  slt          ra, sp, t3
                  ori          t4, s1, -1381
                  sub          s11, gp, zero
                  nop
                  addi         a1, t2, -254
                  sll          gp, a1, ra
                  srl          a3, t4, s3
                  xor          gp, a0, s9
                  srl          a1, t1, t0
                  sra          s0, s6, s3
                  sltiu        s9, ra, 1215
                  srl          a2, a6, a5
                  nop
                  lui          gp, 494988
                  sra          s8, t3, t3
                  sub          s7, s8, t5
                  sub          a5, a3, tp
                  xor          s0, s6, s8
                  and          t0, a0, a3
                  sltiu        t0, t2, -757
                  sra          s7, s10, a1
                  xor          s11, a5, ra
                  slti         s9, s2, -369
                  xor          a7, a0, a1
                  srl          a6, s11, t3
                  sll          s11, s8, s4
                  sltu         a6, a1, t1
                  sltu         s10, t5, a2
                  ori          s2, a4, 216
                  sltu         s2, a2, s0
                  slli         a4, a1, 9
                  slti         s2, s1, -1898
                  andi         zero, s3, -281
                  ori          t2, t2, 1723
                  and          t4, s6, t1
                  xori         s8, s11, 768
                  auipc        a2, 895486
                  sra          t4, t0, s7
                  xori         t0, t0, 2023
                  sra          a3, a7, s4
                  srl          a1, s7, s4
                  sra          s1, s8, a0
                  auipc        a4, 191169
                  addi         sp, s11, -1749
                  auipc        t4, 568207
                  sltiu        t1, t0, 1832
                  srl          a4, t5, s8
                  slti         t1, t4, -838
                  nop
                  ori          s4, sp, -1702
                  srli         s8, s7, 15
                  nop
                  addi         t5, s9, 685
                  sltiu        a7, a5, -603
                  xori         a3, t6, -230
                  srai         zero, s5, 11
                  nop
                  lui          a7, 986602
                  xor          a5, tp, a0
                  sub          s2, t2, s4
                  xori         s6, a1, 736
                  slt          a1, gp, t1
                  sra          a6, t3, s7
                  auipc        a1, 158429
                  add          s1, s8, s11
                  srai         s8, s0, 24
                  or           s1, s2, t5
                  nop
                  slt          a2, a7, zero
                  srl          a3, s2, s0
                  or           t2, a2, a2
                  srli         a2, s5, 22
                  and          s0, ra, t0
                  xori         a1, zero, -99
                  add          t1, s8, a1
                  srl          s11, t0, s6
                  slti         s6, s3, 812
                  xori         t0, s1, 1327
                  srai         s9, a0, 28
                  sra          a6, t5, tp
                  sub          ra, s8, a1
                  addi         a6, a7, -1625
                  slti         t3, a0, -1081
                  and          s2, t0, s4
                  auipc        t2, 613055
                  sll          a4, t5, s9
                  srli         t4, s9, 24
                  nop
                  sll          s10, s10, a3
                  srai         s11, a0, 19
                  slt          a4, s1, a6
                  auipc        s8, 712385
                  add          a4, a0, sp
                  andi         s7, t2, 589
                  add          zero, s1, t0
                  or           t2, s9, s2
                  xori         t2, s5, 1512
                  srli         s5, t2, 27
                  sub          s2, t6, s5
                  xori         s8, s7, 1049
                  add          s7, s4, gp
                  auipc        t0, 22079
                  slt          s8, ra, a0
                  lui          s2, 428159
                  or           s4, s5, tp
                  sub          t6, s4, a1
                  sltiu        s7, s2, -1064
                  slli         s4, s9, 7
                  slli         gp, t1, 4
                  andi         s9, a0, -41
                  slti         s7, s4, -974
                  sra          a5, s0, a0
                  srli         s4, s11, 8
                  or           s7, t4, t4
                  srl          s2, a5, a6
                  ori          t5, a7, 1734
                  sub          a1, zero, a6
                  and          s4, s6, a3
                  addi         s4, t6, -22
                  slt          s11, a0, s11
                  ori          t5, s7, 779
                  slli         t3, sp, 1
                  andi         s9, a0, -1676
                  slli         s7, s3, 6
                  ori          gp, t4, -85
                  ori          a3, a1, 1590
                  auipc        gp, 948026
                  li           a3, 0x715bfc09 #start riscv_int_numeric_corner_stream_23
                  li           t3, 0xffffffff
                  li           t6, 0x0
                  li           s5, 0xccb06d39
                  li           a2, 0xffffffff
                  li           t4, 0xe0010fa7
                  li           a4, 0x80000000
                  li           a5, 0x93c7c0db
                  li           t0, 0x0
                  li           s2, 0xffffffff
                  nop
                  addi         a4, s2, -1076
                  nop
                  sub          s2, a5, t0
                  lui          a4, 662522
                  addi         a4, s5, 1552
                  sub          s2, s2, t6
                  auipc        t6, 734188
                  nop
                  nop
                  sub          s2, s2, s2
                  nop
                  nop
                  addi         t4, t6, -1536
                  addi         s2, t6, -544
                  lui          a4, 836058
                  nop
                  addi         a4, t6, 1578
                  nop
                  sub          t0, t4, a3
                  sub          s2, a2, t6
                  addi         t0, t6, 1695
                  addi         t6, t3, 1238
                  lui          t3, 861089
                  nop
                  auipc        t4, 583206 #end riscv_int_numeric_corner_stream_23
                  xori         t6, a1, -1695
                  and          a1, t4, s8
                  nop
                  sub          t4, gp, s9
                  or           s0, a5, t6
                  sltiu        s6, a5, 917
                  addi         s1, a3, -682
                  addi         s2, t3, 1498
                  lui          a6, 773361
                  xor          t5, a6, t5
                  slti         s5, t5, 1142
                  nop
                  andi         s10, tp, 757
                  srl          s2, t6, s4
                  lui          t6, 758961
                  xori         s4, a2, -1600
                  sltiu        s4, t4, -2014
                  ori          s4, t0, 1639
                  andi         a4, a3, 188
                  and          a3, t5, s7
                  nop
                  slli         a1, s1, 8
                  nop
                  auipc        s8, 728319
                  lui          t3, 842570
                  auipc        a6, 22515
                  slli         t4, t1, 24
                  slli         s8, s10, 17
                  srai         s7, s10, 6
                  or           t3, a7, s6
                  srl          a7, s11, s6
                  srli         s0, s0, 4
                  slt          t4, a5, a0
                  addi         t0, t5, -1914
                  and          s6, sp, t3
                  srli         t0, s5, 21
                  and          s4, s0, s8
                  slli         s6, a0, 29
                  xori         t0, zero, -1890
                  srai         t6, t5, 19
                  lui          a4, 690529
                  auipc        a3, 83761
                  addi         gp, s2, 32
                  lui          a2, 301436
                  sll          t3, sp, a3
                  sltiu        gp, ra, 1823
                  xori         s6, s1, 1899
                  and          a6, t5, s6
                  and          a2, t4, a7
                  slti         ra, a2, -535
                  sll          s9, s4, a6
                  sltu         t5, t3, a7
                  srai         a7, a4, 9
                  or           ra, s9, t3
                  nop
                  ori          a6, s9, 464
                  or           s6, s11, sp
                  xor          s11, t4, t5
                  slti         t2, s6, 1336
                  auipc        a5, 360055
                  ori          zero, s11, -783
                  or           ra, t2, t3
                  andi         t4, s9, 1613
                  srai         a1, s6, 21
                  add          gp, a3, t2
                  srai         t3, s10, 6
                  auipc        t2, 339860
                  srai         s5, s1, 14
                  addi         s2, a1, 957
                  addi         s6, a4, 1149
                  add          a2, s7, t4
                  slt          a5, a3, s0
                  andi         s9, sp, 669
                  auipc        s10, 448946
                  lui          t3, 455286
                  auipc        s7, 129192
                  sltu         t2, a7, s11
                  slti         s9, t3, 1115
                  nop
                  add          t2, s11, s4
                  sll          s4, t4, s3
                  slt          t2, a7, zero
                  xori         a4, sp, -1425
                  xori         s5, sp, 1282
                  xori         s2, t0, -1388
                  addi         s4, ra, -514
                  lui          s4, 306528
                  or           s0, s10, a3
                  auipc        a2, 442499
                  srai         s8, s9, 6
                  slti         a1, a1, 96
                  slt          s8, t3, s3
                  slti         t0, t5, 1451
                  xor          a3, s3, t3
                  sra          t5, ra, t5
                  lui          a3, 746208
                  lui          s6, 97105
                  sll          a4, t5, s3
                  xor          zero, s3, ra
                  slli         ra, s1, 21
                  slt          t3, s4, s6
                  srl          s0, s11, a5
                  srli         t1, s5, 24
                  ori          t1, a4, 1635
                  and          s11, a3, a4
                  add          s0, t3, s2
                  andi         a1, t6, 813
                  xor          t4, s7, t2
                  andi         t5, s10, 1891
                  sltu         s6, a0, a4
                  srli         t1, a3, 26
                  and          s8, a2, a7
                  andi         t4, a2, -762
                  andi         s4, t3, 457
                  lui          zero, 939386
                  sll          s6, s6, zero
                  slt          a5, a6, a3
                  srl          s7, s6, s10
                  and          a4, a5, a6
                  srl          s1, a6, a0
                  auipc        a5, 984814
                  srli         gp, sp, 24
                  srai         s5, t5, 2
                  lui          gp, 623056
                  sra          s4, tp, t1
                  sltu         t1, s11, s9
                  sll          t5, a7, s7
                  slti         zero, t1, -335
                  sra          s8, a7, a2
                  srl          a6, s10, ra
                  xor          s9, t1, ra
                  sltiu        a3, sp, 589
                  ori          sp, gp, 909
                  add          s4, s11, t0
                  slti         gp, t5, -1865
                  and          s2, s8, t1
                  sll          a4, t1, t5
                  sll          s5, s3, gp
                  sltu         ra, zero, a6
                  and          s6, s6, s5
                  sra          t6, t1, a3
                  ori          s0, gp, -2027
                  srli         s9, a4, 11
                  nop
                  andi         t5, a3, 46
                  srl          s0, t4, s8
                  slli         s11, s3, 9
                  li           s5, 0xcf06fe28 #start riscv_int_numeric_corner_stream_37
                  li           a6, 0x63773adc
                  li           t4, 0x80000000
                  li           s2, 0xffeb168a
                  li           a1, 0xffffffff
                  li           s4, 0x0
                  li           t6, 0xbf3ce69b
                  li           a4, 0x80000000
                  li           ra, 0x2d9fa43f
                  li           t3, 0x0
                  addi         a4, t6, 1626
                  auipc        a4, 116304
                  sub          s4, t3, a1
                  add          s5, a4, a1
                  sub          a4, ra, ra
                  addi         ra, a4, 1999
                  auipc        t3, 960450
                  add          a4, t4, s2
                  nop
                  auipc        ra, 125800
                  lui          t4, 397982
                  addi         t6, t4, 111
                  addi         s5, s5, -621
                  lui          ra, 139789
                  lui          t6, 483271
                  lui          a4, 107818
                  add          s4, t6, s4
                  nop
                  sub          t4, ra, s5
                  sub          a4, a1, t6
                  auipc        a6, 378909
                  add          s2, t6, a6 #end riscv_int_numeric_corner_stream_37
                  and          a2, s2, a6
                  srai         t2, a2, 13
                  auipc        s11, 298751
                  nop
                  lui          s6, 235959
                  sltiu        a2, tp, -1488
                  slti         sp, a2, 1014
                  auipc        a2, 100978
                  slli         a5, s9, 11
                  and          s9, ra, a0
                  srai         a3, t4, 9
                  add          s9, s9, s11
                  lui          a7, 191373
                  andi         s11, a0, -1518
                  sub          t3, s1, t5
                  lui          t3, 503824
                  addi         t6, s5, 2047
                  add          s10, a3, ra
                  and          s5, s11, s1
                  andi         t2, s3, -326
                  slti         s4, ra, 410
                  srl          a3, t1, s3
                  sll          s1, a4, s1
                  andi         s8, s6, -1267
                  slt          zero, t5, tp
                  slli         s2, s0, 11
                  srli         s10, s11, 17
                  lui          sp, 819596
                  nop
                  slti         a1, t5, 1018
                  srl          gp, s8, gp
                  sub          a6, sp, a4
                  lui          s10, 435130
                  xor          a6, zero, s2
                  ori          gp, sp, -305
                  sra          gp, ra, s7
                  slli         zero, zero, 8
                  sra          sp, t6, a6
                  slti         s11, s2, -352
                  slt          a4, s1, sp
                  and          t0, a7, t2
                  ori          s4, s8, 205
                  sltu         s9, s9, s8
                  slli         t1, s3, 4
                  nop
                  sra          t1, t0, a6
                  andi         s6, a3, -956
                  xori         s10, tp, 1638
                  and          s10, s10, t1
                  sll          t4, s11, zero
                  andi         s0, s3, -1368
                  and          ra, tp, a0
                  sll          s10, t0, a2
                  add          sp, t3, a7
                  srai         t6, a7, 19
                  andi         s8, s8, 1842
                  andi         t1, a4, 1360
                  sub          s9, t3, sp
                  sll          s7, s8, ra
                  sub          t5, s11, t0
                  sll          a1, gp, s11
                  andi         gp, s9, 567
                  sltiu        t2, a4, -1293
                  ori          s11, s9, 1596
                  slt          s11, ra, s0
                  srl          a4, a6, a0
                  nop
                  srl          zero, t1, t1
                  nop
                  and          s5, t0, s10
                  add          s8, t3, s3
                  slt          s2, s8, t1
                  add          gp, ra, s11
                  srai         t4, a2, 16
                  ori          s9, a5, -401
                  slt          gp, t2, t1
                  slti         t4, t3, -121
                  sub          s1, gp, t0
                  slti         zero, a4, -871
                  slti         ra, s3, 1567
                  slli         t1, sp, 4
                  addi         a6, a0, 1276
                  lui          s7, 935488
                  sltu         s0, t6, ra
                  sltiu        s10, a6, -490
                  nop
                  nop
                  xori         ra, s11, 430
                  nop
                  sub          s2, s8, t3
                  xor          s4, a7, t1
                  srl          s11, t0, sp
                  sll          t6, t2, t4
                  sltu         a7, t0, t2
                  sltiu        a1, a7, -416
                  ori          t0, s6, 1896
                  xor          a3, t6, s0
                  and          t6, s10, zero
                  add          a1, a0, a3
                  srai         t4, s3, 19
                  xori         s1, s5, -670
                  and          s6, a3, s9
                  slt          t1, tp, t0
                  srai         a7, zero, 24
                  slti         a7, a4, -443
                  srai         s1, a4, 15
                  sra          a6, s6, t2
                  sltiu        sp, s7, 422
                  sltiu        s5, gp, 1082
                  srl          s6, s8, gp
                  or           s0, t6, a4
                  ori          a5, gp, -659
                  nop
                  xori         t2, a2, -1144
                  xori         a1, s7, 1172
                  lui          s6, 168988
                  slli         t1, a7, 0
                  slli         a2, t2, 13
                  slli         t1, s6, 30
                  and          s2, s5, ra
                  lui          s1, 802008
                  sll          a4, zero, t0
                  slt          t2, a0, s2
                  srai         t4, t1, 19
                  xori         a7, a2, 533
                  lui          s2, 892282
                  auipc        t3, 550590
                  or           a5, s10, s7
                  sll          zero, s10, t0
                  nop
                  lui          t0, 684447
                  sltu         a6, a5, a7
                  slt          t1, a7, a7
                  xor          s8, zero, a1
                  andi         t5, t5, 195
                  slti         t0, a2, -222
                  srli         a3, a3, 26
                  andi         s11, a2, 518
                  sub          s2, a6, t0
                  or           a5, s4, s3
                  andi         gp, s10, -563
                  slli         s1, ra, 4
                  nop
                  add          t3, s2, s1
                  nop
                  and          zero, t0, ra
                  srai         a6, s7, 13
                  auipc        s8, 753999
                  nop
                  andi         t1, ra, -1171
                  sll          s4, t5, s1
                  auipc        s8, 248411
                  and          s2, t1, t0
                  slli         a5, s6, 10
                  srl          s9, t0, ra
                  xori         a3, s5, 109
                  slti         s7, t1, 1360
                  nop
                  sltiu        gp, t5, 1175
                  nop
                  add          a3, s7, t3
                  sra          a2, s0, a3
                  slt          a5, t6, s8
                  addi         ra, tp, 58
                  srai         t2, t6, 30
                  sltu         a1, a1, t4
                  slt          s2, s9, sp
                  sra          a1, a7, tp
                  srl          a7, s0, a0
                  slli         s0, s3, 17
                  slli         s11, s7, 6
                  srai         t5, gp, 14
                  add          a7, t3, t5
                  slti         s6, s9, 1515
                  andi         a4, t1, 574
                  sra          s0, s11, s7
                  andi         t6, a0, -1604
                  srai         ra, a1, 4
                  lui          a4, 431777
                  srli         s10, s8, 25
                  sll          s8, a7, s7
                  sll          s7, ra, t2
                  add          t3, s2, t1
                  and          s7, gp, t0
                  sltu         gp, a4, tp
                  and          s1, a4, s0
                  srai         a6, s8, 5
                  sltu         zero, a6, ra
                  xor          s11, s7, gp
                  lui          a3, 729120
                  xori         s2, zero, 1599
                  nop
                  auipc        s11, 23072
                  ori          a2, a2, -982
                  and          a5, t5, s10
                  lui          a7, 664713
                  ori          s4, ra, 1845
                  srli         a2, zero, 11
                  sltu         s9, sp, zero
                  srli         zero, t3, 1
                  nop
                  sltiu        t1, ra, -1207
                  slti         s10, a2, 1850
                  andi         s4, s7, 728
                  slli         ra, s5, 16
                  lui          t6, 844453
                  addi         s11, a5, 1214
                  sltiu        s0, gp, -1922
                  sra          t4, s4, sp
                  lui          s4, 309936
                  sra          t4, t6, s6
                  sltiu        s4, a7, -1883
                  add          t1, s1, ra
                  sra          sp, s9, s1
                  sub          t2, a4, s11
                  nop
                  sltiu        s11, t2, 1256
                  nop
                  nop
                  or           t2, sp, s4
                  auipc        t2, 676813
                  andi         a6, s3, -1300
                  slli         s7, a6, 10
                  ori          a2, t1, -47
                  sra          s10, t3, a7
                  sltu         a5, s2, sp
                  sll          s11, t2, s3
                  sltu         s7, s8, sp
                  xor          gp, a6, s6
                  nop
                  sll          s0, s3, a6
                  xor          t2, tp, s11
                  addi         a3, s2, -1056
                  sra          t0, t1, t4
                  srl          a1, a2, s9
                  sltiu        s9, a6, -1086
                  add          s6, a6, s1
                  sub          sp, zero, s10
                  srl          t6, s4, ra
                  andi         s7, s0, -379
                  lui          a7, 228821
                  slt          s10, a2, s10
                  and          t0, a4, zero
                  ori          a4, s4, -269
                  slt          s7, a6, t3
                  or           zero, t3, s7
                  xor          s6, a6, s5
                  nop
                  andi         s2, zero, 2036
                  nop
                  xori         gp, sp, 259
                  sltu         sp, gp, s9
                  sra          s7, s6, s6
                  lui          a7, 576577
                  lui          zero, 866473
                  and          gp, s0, t1
                  sll          t5, zero, s8
                  andi         t6, s2, -1423
                  slt          s7, t4, s1
                  sra          a7, a2, s5
                  sub          zero, t5, t2
                  slli         a2, s8, 7
                  xor          s9, zero, a6
                  sra          a3, ra, t2
                  srl          a1, t0, t0
                  sra          gp, a0, s5
                  xori         s7, t5, -505
                  srl          t4, s0, s6
                  srai         s1, tp, 29
                  slli         sp, a7, 9
                  sll          t5, s8, a7
                  or           s2, t4, t5
                  auipc        t1, 557736
                  auipc        t1, 604503
                  nop
                  sub          ra, t3, a7
                  sltiu        s2, sp, 243
                  nop
                  andi         t6, s4, 1952
                  xori         t5, sp, 1054
                  xori         s4, gp, -1059
                  add          s10, t4, s2
                  nop
                  slt          t6, s0, ra
                  sra          gp, t2, s0
                  auipc        s9, 656390
                  sltu         t5, t6, zero
                  srl          a2, s4, a6
                  xor          s4, s9, a5
                  xori         ra, t6, -436
                  and          sp, t3, s1
                  auipc        a6, 88290
                  srli         s2, s1, 7
                  srli         s6, s1, 26
                  and          t5, zero, t2
                  nop
                  ori          s6, t1, 928
                  sub          a6, s9, t2
                  ori          s9, t1, 1602
                  slli         a5, tp, 9
                  slti         s8, sp, -384
                  srl          a7, s6, t6
                  sltiu        s1, a3, -1975
                  or           t6, s9, s7
                  nop
                  or           a6, t4, s9
                  and          s5, s6, s4
                  sll          sp, a0, s11
                  ori          ra, s5, 1552
                  nop
                  and          t4, s4, t0
                  sltiu        s10, s10, 357
                  sltu         s8, t4, a6
                  sll          t6, s7, t5
                  sltu         s0, s3, a1
                  andi         zero, s3, -1558
                  xori         a2, s10, -888
                  xori         t3, s8, 129
                  srli         s11, a3, 27
                  srl          zero, t4, s11
                  srli         s2, ra, 12
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s11, 0x9e12b0a8
                  li           s9, 0xffffffff
                  li           s6, 0x5ef092a3
                  li           t6, 0xb9242eda
                  li           s5, 0x80000000
                  li           t1, 0xffffffff
                  li           s1, 0x0
                  li           a4, 0x0
                  li           a3, 0x6dc7c113
                  lui          a3, 771916
                  auipc        s9, 400971
                  addi         a4, s6, 218
                  nop
                  nop
                  add          s6, s6, t6
                  add          a4, s5, s5
                  auipc        s5, 721986
                  lui          a4, 868025
                  lui          s6, 973474
                  nop
                  lui          s9, 855353
                  addi         a4, a4, 271
                  addi         s5, t2, 80
                  nop #end riscv_int_numeric_corner_stream_16
                  andi         a1, a2, 792
                  sra          s4, t1, t4
                  and          s6, t4, t3
                  sra          a7, a6, a7
                  sub          s9, t4, ra
                  xor          a3, tp, t1
                  slt          t3, tp, s0
                  lui          s1, 431828
                  and          t6, a3, a7
                  sra          s5, t6, s2
                  ori          sp, a3, -768
                  and          t0, s2, a5
                  or           a2, s3, s11
                  addi         t5, s5, -1444
                  auipc        s10, 276606
                  ori          t6, t4, 139
                  srli         a3, t4, 7
                  xori         sp, t0, 1844
                  xor          s7, a6, s8
                  slli         s6, t2, 6
                  xor          s1, t4, t3
                  andi         a1, t5, -843
                  ori          s10, s5, -2022
                  add          s6, t1, a5
                  sltu         a5, s5, s6
                  xor          s1, s7, t1
                  sll          s10, gp, s0
                  slti         s9, t5, 1139
                  srl          a2, a1, s11
                  sll          gp, t1, a3
                  sra          s8, s5, s0
                  srli         a5, a2, 18
                  add          zero, a4, s4
                  add          a2, gp, t4
                  or           a7, t2, s5
                  or           s8, s10, s7
                  slti         t5, s4, -1668
                  andi         s9, a0, -1059
                  xori         s5, t3, 31
                  sltu         t6, t2, s6
                  sra          ra, t3, s0
                  andi         a6, sp, -1056
                  srl          a7, t6, a2
                  add          a7, s1, s6
                  sltu         s1, a3, t6
                  srai         s5, s0, 15
                  lui          a6, 1035558
                  slli         t3, a2, 5
                  srai         s6, s5, 15
                  andi         t3, ra, 719
                  ori          a4, s6, 658
                  sll          s0, s1, t6
                  sltu         a1, zero, a5
                  ori          t5, s11, 172
                  auipc        a2, 626467
                  add          a2, s2, t6
                  addi         sp, a1, -489
                  xor          zero, t1, a3
                  auipc        gp, 157943
                  sltu         ra, sp, s4
                  sll          t0, a4, s2
                  sll          s2, t3, s1
                  srli         t6, a7, 25
                  srl          ra, s7, s9
                  auipc        s11, 197667
                  srl          a6, s8, s4
                  ori          s1, t6, -1764
                  srl          gp, a3, t2
                  srli         t3, s4, 18
                  slti         a3, a3, 869
                  sra          sp, t1, s1
                  ori          t5, s11, 54
                  lui          t4, 561355
                  sra          t0, ra, sp
                  sltiu        t5, sp, -1960
                  xor          s4, t1, t3
                  xor          s9, s9, s9
                  sll          s11, s11, gp
                  andi         t0, s11, -277
                  xor          s10, t3, t4
                  add          t1, s2, s8
                  andi         t4, a0, 1206
                  slti         a6, zero, 827
                  andi         s5, s1, 1070
                  nop
                  srai         s8, s9, 18
                  xori         t0, s8, 1184
                  and          s0, tp, a0
                  sra          a6, a2, s4
                  auipc        a6, 683284
                  slli         t1, gp, 22
                  srl          a6, s4, sp
                  or           s4, s10, s3
                  andi         sp, a2, 381
                  nop
                  sub          s8, s3, s10
                  ori          s0, t3, -772
                  sra          t0, s9, a0
                  lui          s2, 576551
                  srli         s1, s11, 10
                  sltiu        gp, t3, 241
                  addi         t4, s3, -1883
                  add          a1, t0, s0
                  srl          ra, a0, a5
                  andi         gp, s5, 1396
                  ori          t5, t1, -1422
                  or           s11, s6, t6
                  xor          s4, s0, gp
                  addi         t3, a2, 1915
                  slt          a3, s3, a7
                  andi         sp, a0, -1433
                  lui          s7, 694617
                  addi         s6, t6, 1248
                  xor          t2, t6, s6
                  and          ra, t1, s10
                  sra          a6, a2, t1
                  auipc        s8, 510102
                  ori          a6, a4, 424
                  srl          s0, zero, s8
                  sra          s2, a0, ra
                  ori          s10, t3, 1066
                  slli         a2, a2, 2
                  srli         a6, t3, 2
                  lui          s6, 363691
                  slt          s7, a2, t1
                  ori          a6, a1, 959
                  xori         a4, s11, 1073
                  nop
                  srl          s1, ra, s3
                  sltiu        s6, gp, 1998
                  srai         a2, s9, 24
                  ori          a2, a0, 1232
                  sra          a6, s2, ra
                  nop
                  sra          a2, a6, t4
                  slti         t5, s9, -1450
                  addi         t5, a5, 1022
                  ori          t4, s3, 935
                  and          t0, a4, s2
                  sll          t6, s6, a5
                  sltiu        s11, t3, -499
                  sub          t4, a3, a3
                  xori         a4, s2, 1655
                  sltu         zero, s1, a4
                  srli         a5, t0, 26
                  slti         zero, a3, -1417
                  srai         gp, s9, 21
                  addi         s10, zero, 871
                  ori          s2, a0, -1333
                  nop
                  srli         gp, a5, 8
                  xor          t5, s10, t2
                  sltu         t3, sp, t1
                  sub          t4, s8, t2
                  srli         a7, s11, 25
                  sll          s2, ra, t3
                  sll          t2, sp, a2
                  add          s1, s3, gp
                  sub          a3, a7, s8
                  ori          t1, a7, -1836
                  sltu         a2, t1, s7
                  lui          t5, 104957
                  or           s9, t0, s11
                  slli         s10, ra, 22
                  sltu         gp, s11, s7
                  auipc        s1, 129478
                  add          s0, t2, s6
                  or           a6, s3, s0
                  or           a7, s10, t5
                  addi         s1, a6, 1235
                  sltiu        a7, zero, 1016
                  slt          a3, s7, s6
                  and          zero, zero, s10
                  srl          s8, a2, s9
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_21
                  li           a6, 0x80000000
                  li           a1, 0x80000000
                  li           s8, 0xffffffff
                  li           s7, 0xffffffff
                  li           gp, 0x0
                  li           sp, 0x0
                  li           a3, 0x80000000
                  li           s9, 0x0
                  li           ra, 0x80000000
                  nop
                  sub          sp, a6, a3
                  nop
                  auipc        a1, 629123
                  sub          s7, s7, s9
                  add          gp, sp, s9
                  addi         a6, a3, 1271
                  add          ra, a3, a6
                  lui          a3, 415390
                  sub          sp, s8, s7
                  nop
                  sub          gp, s9, gp
                  lui          sp, 396897
                  addi         ra, ra, -153
                  add          a6, a3, t4
                  addi         s7, a6, 735 #end riscv_int_numeric_corner_stream_21
                  sltu         s6, t4, s4
                  xori         t4, gp, 1470
                  nop
                  or           s0, gp, a2
                  srai         a4, a0, 15
                  add          t1, s3, t0
                  xori         t5, s5, -1150
                  sll          a3, t6, t4
                  sub          s7, tp, a6
                  lui          a1, 503643
                  sltu         s1, a1, a7
                  xor          sp, s10, gp
                  andi         a3, s1, -477
                  sra          a6, s11, t5
                  add          s11, t4, s6
                  sll          zero, s2, a2
                  xori         s4, s1, 614
                  andi         a6, a5, -1453
                  nop
                  srl          t6, a5, s8
                  add          s5, a7, s3
                  auipc        t6, 645581
                  srai         t1, s9, 2
                  slli         sp, s0, 19
                  nop
                  auipc        a5, 825143
                  addi         s8, s0, -1441
                  sra          s0, s7, t1
                  sltiu        a7, sp, 38
                  auipc        a3, 881403
                  srli         s7, a1, 9
                  srli         zero, a4, 30
                  ori          gp, t4, 1450
                  nop
                  add          s8, a1, a7
                  slt          sp, ra, t0
                  lui          t6, 211937
                  xori         t5, s4, 479
                  addi         s8, t0, 1550
                  sltu         t2, s7, s0
                  nop
                  srli         s4, sp, 20
                  andi         s6, sp, -1616
                  slt          t4, tp, a5
                  addi         gp, s5, 1708
                  sra          zero, s9, s2
                  auipc        a2, 495282
                  srai         s2, a2, 14
                  addi         s5, zero, -113
                  srli         a1, t4, 19
                  sll          t2, s8, s1
                  lui          ra, 395309
                  andi         s11, s11, 401
                  addi         t5, t4, 1743
                  andi         t1, s1, 861
                  andi         t5, s5, 569
                  andi         t0, a1, -749
                  sltu         t4, a3, t4
                  sll          s8, s6, a0
                  or           gp, sp, s10
                  sub          s5, t4, zero
                  slli         a3, s10, 17
                  auipc        s2, 292045
                  nop
                  lui          a3, 727733
                  and          s1, s2, zero
                  addi         ra, a0, 1115
                  xori         a7, a1, -364
                  and          t4, t3, a4
                  slti         a3, s9, 1720
                  auipc        a4, 109261
                  lui          s1, 235909
                  sltiu        a4, a7, 313
                  lui          a4, 787884
                  auipc        a1, 982949
                  nop
                  xor          a3, s7, s9
                  sra          a4, s2, s6
                  sltu         t4, s2, s10
                  lui          s2, 147191
                  andi         s10, s6, -214
                  slli         sp, a3, 10
                  srl          a5, t3, s2
                  and          t3, s4, t2
                  sub          zero, s7, zero
                  slli         zero, s1, 18
                  andi         a5, ra, -666
                  auipc        t0, 731448
                  andi         gp, s3, -954
                  sra          a5, s2, s2
                  auipc        s1, 662140
                  xor          t6, a7, s6
                  auipc        s7, 1005011
                  srli         a4, t4, 1
                  xor          gp, s2, s9
                  addi         a7, t5, -915
                  srli         s7, s11, 12
                  sll          s9, s2, s8
                  xor          s2, a6, t4
                  xori         t1, gp, 239
                  slli         s9, a2, 11
                  sra          s10, a5, t4
                  slti         s9, t3, -1206
                  add          zero, ra, s11
                  srli         t0, a3, 14
                  addi         s7, s7, 197
                  ori          zero, s8, 1154
                  srl          sp, ra, gp
                  slli         s6, s1, 28
                  or           s9, t2, tp
                  sltu         s0, s0, s0
                  srai         gp, a1, 0
                  sra          s4, t0, s5
                  sll          a3, a6, t2
                  xori         t3, t3, -1578
                  and          s10, t5, s7
                  auipc        s6, 751506
                  xor          a1, t5, s3
                  srl          s1, gp, sp
                  sll          gp, zero, ra
                  sltu         a2, t6, s3
                  slti         s8, t4, -1698
                  addi         t5, a5, -1115
                  srl          t5, zero, s3
                  srli         s0, zero, 19
                  slti         s4, gp, -1350
                  sltiu        t3, t6, 2001
                  sll          t0, t2, t3
                  sll          t4, s11, s4
                  or           s5, a5, s6
                  nop
                  xori         a7, t2, -1779
                  sltiu        s8, a2, 1507
                  nop
                  srl          a6, s2, t4
                  or           sp, gp, a1
                  srli         s9, s10, 27
                  or           t4, s6, t6
                  addi         a2, s5, 578
                  sltiu        t3, s6, 1277
                  xori         s2, s11, -182
                  nop
                  ori          a6, s10, 1566
                  addi         s4, ra, -1975
                  srl          s11, a4, t5
                  and          s10, s9, a2
                  slli         s1, a7, 15
                  slli         t6, ra, 31
                  sltu         a2, a4, a1
                  slli         gp, s1, 4
                  add          sp, ra, s7
                  sll          s11, gp, a3
                  and          t2, gp, s0
                  nop
                  sll          s10, a3, s5
                  addi         s10, s6, -265
                  srl          a4, sp, t4
                  slli         s7, s3, 21
                  srai         a7, a2, 8
                  andi         sp, t4, -675
                  slli         s1, sp, 27
                  nop
                  or           t6, s7, s7
                  sltu         s0, t0, a3
                  andi         s9, a5, -1399
                  lui          s1, 849429
                  sltiu        zero, a7, 1847
                  xori         ra, t4, -25
                  ori          a7, s0, -973
                  slli         ra, s2, 10
                  slti         a3, t4, -885
                  ori          s10, t6, -183
                  ori          ra, t6, -1146
                  or           zero, s5, t0
                  xori         a1, t4, -1992
                  nop
                  or           s7, s4, t5
                  sltiu        t0, s2, -1474
                  srl          s4, sp, t0
                  sltu         s2, zero, t6
                  or           t0, a3, t1
                  sra          s2, s9, s7
                  ori          a1, a6, 1704
                  sub          a4, s3, zero
                  slt          s4, s11, a4
                  srai         s10, a2, 26
                  andi         s4, s5, 671
                  sltiu        s11, a0, -1649
                  sll          s11, a6, a4
                  or           s7, a1, s7
                  srai         a6, a3, 14
                  sra          gp, s8, t2
                  srai         a1, s3, 2
                  slt          s1, a1, s11
                  srl          t3, a4, s11
                  slt          s2, s9, a4
                  srli         s11, t6, 0
                  srai         s5, a1, 7
                  auipc        s4, 751076
                  srl          a7, s0, a6
                  srl          t4, a6, s9
                  slti         s11, sp, 629
                  sub          s10, s7, t2
                  slti         s7, t3, 1785
                  sra          s2, s0, t3
                  sltu         s9, s2, a0
                  sll          a7, a1, tp
                  addi         sp, s2, -1870
                  auipc        a1, 536734
                  slt          s8, t2, ra
                  sub          a6, a1, s8
                  sltu         a7, s10, a6
                  lui          a5, 591246
                  ori          s7, t4, 1015
                  slt          t1, sp, s2
                  slli         t2, tp, 20
                  slt          s11, a6, a4
                  xor          s1, s1, s10
                  auipc        a6, 434863
                  auipc        gp, 790198
                  sra          gp, a0, a3
                  nop
                  srl          gp, a7, a7
                  or           t5, s8, a0
                  sra          s5, a2, s3
                  sltu         s11, s6, s9
                  auipc        s1, 293730
                  lui          a1, 505689
                  sra          t3, s7, s10
                  auipc        t1, 756453
                  srli         a3, s8, 15
                  slti         s6, a1, 1375
                  slti         s11, s6, 1481
                  slli         a5, s6, 26
                  srli         t1, sp, 3
                  sll          a1, s7, t1
                  xori         gp, a2, 1855
                  srli         a3, t2, 5
                  sra          s10, s10, t6
                  sra          a1, a3, s11
                  sub          a2, t0, a7
                  srli         gp, t2, 11
                  slli         s6, t2, 22
                  slt          t6, ra, s11
                  or           gp, t1, s11
                  srli         s0, t5, 11
                  xor          s4, s5, ra
                  slt          s10, a7, s8
                  sltiu        t5, a0, 707
                  auipc        s11, 490447
                  slti         s8, a1, 1791
                  slti         a2, s0, -768
                  and          zero, t0, t5
                  srai         s9, s2, 13
                  lui          a1, 1002265
                  xori         gp, s4, 60
                  lui          a1, 572448
                  sub          ra, a1, t4
                  sub          s7, a6, t6
                  ori          t6, s8, 1561
                  and          gp, a1, a5
                  srai         s2, ra, 8
                  xor          t1, s11, s3
                  slti         a5, s6, -564
                  auipc        a7, 700177
                  sub          t0, a4, s4
                  or           s4, s8, a4
                  add          t1, zero, s0
                  ori          s2, t4, 653
                  lui          t6, 836533
                  sll          s7, a0, s8
                  srli         sp, t3, 29
                  slt          s9, s8, t0
                  srli         gp, a7, 31
                  and          t0, s4, s0
                  xori         s6, s10, 557
                  ori          s5, s8, 1965
                  xori         s2, a6, 875
                  lui          ra, 255788
                  sll          ra, a5, zero
                  xor          s2, t0, a3
                  srl          t1, s10, s6
                  srl          a1, t4, t6
                  sub          s2, t3, s0
                  sltu         s1, s3, s5
                  or           ra, t1, a3
                  and          t1, t3, s5
                  sub          a6, t0, a1
                  auipc        t4, 615539
                  andi         s4, a6, -416
                  and          a1, s9, s10
                  lui          zero, 483204
                  xor          t6, s10, s1
                  ori          sp, t1, -1458
                  and          a5, sp, s3
                  add          t4, s10, s10
                  srli         s9, a7, 26
                  sra          sp, s2, a5
                  slti         s4, s10, -1833
                  andi         t0, s11, -1699
                  srl          a2, s2, a1
                  lui          a5, 833987
                  slt          s0, tp, t1
                  slli         s6, s8, 30
                  ori          s9, s7, -920
                  sra          a1, a2, gp
                  xori         a2, t6, -608
                  addi         s0, s1, -1279
                  sltiu        s2, t1, 981
                  sltiu        s11, tp, 2001
                  slli         s9, s2, 22
                  or           a4, t5, zero
                  slt          sp, t4, a0
                  xor          a3, a0, ra
                  xor          s11, a1, t2
                  or           ra, t4, a4
                  slt          t1, a5, s11
                  sltiu        s4, t0, -1000
                  andi         s7, a7, 1606
                  and          s0, s11, s0
                  andi         zero, s10, -1216
                  add          ra, t3, t0
                  sll          s8, a6, a1
                  auipc        s7, 158050
                  auipc        a6, 616213
                  or           t2, t2, a1
                  slli         a2, sp, 14
                  and          ra, a2, a7
                  sra          t2, zero, zero
                  add          a1, a2, tp
                  srai         ra, a3, 2
                  srl          a4, a0, s3
                  srl          s2, s10, a1
                  slt          s11, s10, a3
                  sltu         t4, s0, tp
                  slt          s2, t0, s1
                  xori         a1, s4, 554
                  ori          gp, sp, -833
                  slt          s6, sp, sp
                  sub          t5, s5, s0
                  slti         s11, a1, 1858
                  andi         t4, s1, -94
                  addi         a4, s9, 124
                  xori         a2, s0, 1047
                  andi         t0, a7, -871
                  srl          s11, t2, a5
                  slt          a1, a4, s1
                  lui          a3, 923113
                  andi         a1, s3, 1104
                  nop
                  addi         s1, s7, 1937
                  sra          a7, t1, s10
                  ori          a6, s5, -1297
                  addi         t5, t3, -1445
                  auipc        a6, 264974
                  xori         ra, t0, -1898
                  ori          a7, a4, -1049
                  auipc        a2, 241527
                  srli         s4, gp, 30
                  srl          a4, s0, tp
                  nop
                  sra          t1, ra, s0
                  add          a6, a7, t0
                  andi         t0, s5, -320
                  addi         s4, zero, -1408
                  andi         a3, s10, 1593
                  addi         t4, s0, 982
                  srai         a7, s5, 4
                  srai         t5, s7, 4
                  or           t1, gp, s9
                  sra          a5, tp, a3
                  and          s2, s10, a2
                  addi         a1, t2, -1380
                  lui          a6, 461271
                  slti         s11, t5, 1595
                  andi         t3, a5, -1964
                  slti         s2, t6, 1900
                  lui          s4, 281122
                  xor          a4, a4, s3
                  srai         s5, a2, 31
                  srai         s5, a3, 2
                  slti         t2, s11, 1189
                  slli         t0, ra, 23
                  sll          t2, s2, t2
                  and          t6, t1, ra
                  xori         s5, ra, 1393
                  and          s1, a2, t5
                  nop
                  andi         a2, s10, -917
                  sltu         a4, t6, zero
                  or           s10, ra, t2
                  and          a5, t2, sp
                  sub          gp, s4, a5
                  srli         t5, t4, 3
                  sll          a6, s8, t4
                  xor          s11, a0, a1
                  auipc        a1, 82522
                  srli         t4, t3, 4
                  andi         a2, a0, 1780
                  lui          a5, 335469
                  andi         gp, s1, -1710
                  or           s2, a3, a3
                  andi         s10, gp, 25
                  slli         t2, t3, 7
                  andi         ra, s5, -216
                  srl          a4, s8, a3
                  sltiu        a4, s6, -1780
                  sltu         a1, ra, ra
                  slli         s6, s7, 2
                  xori         ra, s1, 45
                  sra          a5, s0, gp
                  sra          a5, sp, t3
                  sra          s11, t6, t0
                  sub          a6, s10, s6
                  srl          s0, sp, s7
                  lui          s6, 2431
                  srli         gp, t3, 10
                  or           gp, a3, tp
                  sltiu        a3, s8, 233
                  add          t4, zero, s11
                  lui          s7, 650542
                  sra          t0, t4, a5
                  slti         t5, a4, -1499
                  slti         s1, t2, -1924
                  srai         s9, gp, 5
                  auipc        t0, 615273
                  sltiu        s6, a6, -1848
                  addi         a4, s10, 1104
                  and          s2, t0, t2
                  sra          s5, t0, t6
                  sltu         s6, t0, t1
                  or           t5, a3, s4
                  and          a5, s10, s1
                  nop
                  sll          gp, zero, t3
                  sub          a6, t6, zero
                  auipc        t0, 988262
                  nop
                  sll          a4, t4, s4
                  addi         ra, a7, -1955
                  lui          t4, 53475
                  slti         t3, a5, -299
                  slli         gp, a1, 14
                  sll          a7, t5, t4
                  slti         s11, t6, 479
                  addi         a6, a7, -905
                  srli         t6, zero, 24
                  slti         t5, s1, -2030
                  sra          t1, t6, a1
                  lui          gp, 363487
                  andi         s6, t4, -1111
                  auipc        s1, 1016887
                  nop
                  nop
                  sll          gp, t3, t1
                  sub          s11, s1, a5
                  sra          s11, t0, sp
                  andi         t2, a5, -160
                  addi         s9, t3, 335
                  slt          a7, s3, s4
                  sll          t4, s1, s4
                  ori          a2, t5, 871
                  sltu         t4, t6, a4
                  sll          s2, a0, s3
                  auipc        t1, 356540
                  add          a1, t2, t3
                  sub          a1, a6, a5
                  auipc        t0, 367831
                  sub          s8, ra, s11
                  auipc        s11, 897715
                  sra          s0, s11, a7
                  slti         s4, s5, -1545
                  andi         t6, a7, -795
                  slt          s4, s11, t3
                  and          t5, gp, gp
                  addi         s4, zero, -994
                  xori         t0, s11, -585
                  sltu         t5, s1, t5
                  lui          s11, 722483
                  nop
                  nop
                  srai         s9, a5, 0
                  srli         s9, t3, 26
                  slt          s2, a5, a5
                  sltiu        t5, t5, -299
                  slli         s9, a1, 25
                  ori          t3, a3, 1217
                  slti         a6, t6, 95
                  addi         a4, a1, 316
                  ori          s0, ra, -178
                  sltiu        s9, s2, -2021
                  sltiu        a6, s9, -173
                  sltiu        s2, s2, -395
                  slt          t5, t0, t2
                  slt          s6, s10, s6
                  and          s11, t4, s7
                  sll          s5, sp, s2
                  sub          s6, a0, a6
                  sll          a4, zero, t4
                  add          a5, a2, sp
                  nop
                  ori          s2, a5, -683
                  and          t5, s10, s5
                  sra          a6, s9, s5
                  ori          a2, s7, -1349
                  slti         s6, s10, 1309
                  ori          s6, s5, 1376
                  and          s0, s11, t2
                  sll          t2, t4, a3
                  sltiu        s10, a4, -94
                  srai         a5, zero, 5
                  ori          t4, a1, 1527
                  sll          t1, s11, tp
                  slti         a1, s7, 1923
                  slti         t0, a2, 1150
                  or           a3, t2, s1
                  auipc        t2, 923191
                  slti         t5, a6, -514
                  sll          s9, s0, s6
                  srli         s1, a5, 26
                  andi         s4, tp, 1448
                  srli         a2, t2, 19
                  slti         gp, s3, -1851
                  slt          gp, sp, s4
                  addi         s7, t0, -1911
                  lui          s4, 142295
                  xori         sp, t3, 1844
                  lui          t6, 585417
                  addi         sp, s7, -408
                  sra          s4, t4, s10
                  xori         a1, s6, 821
                  auipc        zero, 1024395
                  add          zero, t6, s10
                  srli         a5, s11, 31
                  xori         t1, sp, 1191
                  add          s9, s6, a1
                  auipc        a1, 907590
                  andi         t2, a1, -1914
                  sltiu        a6, s4, -1357
                  nop
                  srai         t0, t1, 19
                  sll          a5, a0, a0
                  auipc        s2, 180393
                  xor          s5, t1, s10
                  xori         s5, s0, -108
                  ori          a4, s1, -1016
                  add          a1, s2, s11
                  slt          s9, t4, s9
                  srl          sp, t1, a1
                  slt          t6, zero, sp
                  and          a2, s3, a7
                  auipc        s8, 164618
                  slti         s6, s5, 1153
                  slt          t4, s6, a0
                  slli         t1, a6, 28
                  slli         s7, t6, 29
                  slt          sp, a0, s6
                  srl          a4, t6, a2
                  srl          t5, s8, s3
                  sltiu        t6, a2, 931
                  addi         t6, t2, -809
                  srli         t0, s10, 15
                  slti         a2, s2, -1188
                  addi         t5, s4, 2043
                  sub          zero, sp, s3
                  auipc        t2, 977582
                  sra          s6, s10, s9
                  auipc        sp, 996844
                  and          a6, a3, sp
                  xori         s2, tp, -1437
                  srl          a6, t5, a1
                  slti         a4, s0, 1285
                  slt          s5, tp, s4
                  sra          s7, a3, ra
                  lui          a3, 289266
                  srli         zero, s9, 3
                  add          t5, a5, a5
                  sra          s5, gp, a3
                  srai         s0, a5, 3
                  add          t0, s9, s5
                  auipc        a5, 870990
                  srai         s1, a0, 3
                  nop
                  andi         s11, zero, 1703
                  add          a1, t2, s10
                  srai         a6, t0, 21
                  sub          ra, a1, s0
                  auipc        s4, 958285
                  andi         s1, t6, -1011
                  sub          t0, a2, zero
                  andi         a3, s4, 223
                  sra          a3, tp, t5
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s7, 0xffffffff
                  li           a2, 0x0
                  li           s11, 0x0
                  li           a1, 0x0
                  li           s10, 0xffffffff
                  li           a7, 0xffffffff
                  li           s6, 0x80000000
                  li           ra, 0x80000000
                  li           s1, 0xffffffff
                  auipc        a2, 22550
                  add          ra, a7, s6
                  sub          s10, s7, t3
                  auipc        s7, 233860
                  lui          a1, 753569
                  sub          a2, a1, s1
                  addi         a7, s10, 400
                  auipc        s11, 973210
                  auipc        s1, 942783
                  lui          s7, 741054
                  add          a7, s10, a7
                  nop
                  auipc        a1, 658321
                  auipc        a1, 307920
                  add          s10, s7, ra
                  add          a7, a2, a2
                  sub          s6, s7, ra
                  addi         a2, s1, -857
                  lui          ra, 208337
                  sub          s10, s11, s1 #end riscv_int_numeric_corner_stream_13
                  nop
                  xor          a4, s6, a4
                  slt          t0, t2, t4
                  ori          t3, t5, -466
                  add          s10, a6, a3
                  sltu         s2, t3, t2
                  or           s10, a1, s9
                  or           gp, tp, s4
                  nop
                  slt          s5, t3, t2
                  xori         s4, s8, -1016
                  auipc        s4, 827965
                  srai         t1, s1, 31
                  sltiu        t2, s7, -1860
                  slti         a6, s9, -1661
                  sra          t4, t6, s0
                  nop
                  srai         a5, s8, 25
                  slli         s10, t5, 1
                  slt          a1, s8, t3
                  slt          a1, s0, t5
                  srli         t0, s8, 15
                  add          t6, a5, a2
                  srl          s11, a2, s10
                  ori          a7, t4, -3
                  and          s4, a2, s5
                  nop
                  sra          t4, ra, s2
                  and          a7, tp, a4
                  addi         t6, gp, -1828
                  add          s11, s2, s0
                  sub          a2, tp, a2
                  sub          s7, a5, t5
                  ori          s7, s5, 1186
                  xori         s2, s2, -988
                  slti         t0, ra, 567
                  sub          a4, t3, s3
                  sra          s0, t1, a6
                  sltiu        a1, t6, -1798
                  xori         t2, t2, -119
                  and          s11, s1, t6
                  srli         t4, t4, 28
                  srl          ra, a3, s6
                  or           s1, t2, s5
                  sltiu        sp, t0, 1649
                  sra          s8, t4, s11
                  sub          t0, s11, t1
                  nop
                  or           s8, s8, a1
                  srl          s2, zero, s0
                  slli         a4, t3, 3
                  slti         t6, t3, 77
                  xori         a1, a1, 1160
                  auipc        a2, 664391
                  xor          s6, t6, s8
                  srli         gp, sp, 4
                  srai         t5, t1, 7
                  sll          a2, a7, s2
                  slti         a6, s8, -1042
                  sub          a1, a1, s11
                  lui          zero, 911399
                  add          t0, a0, s3
                  addi         t6, a4, 650
                  sra          sp, s2, t6
                  srli         s8, a6, 8
                  sltiu        s2, t4, -1324
                  auipc        gp, 709958
                  xori         s7, s1, 1330
                  srl          s9, a4, tp
                  sub          s7, sp, a0
                  nop
                  nop
                  add          s9, t0, tp
                  ori          a4, a7, -383
                  xor          gp, s3, s1
                  srai         a4, a5, 0
                  xori         a7, s7, -1397
                  and          s0, s9, t6
                  sll          s4, s6, a6
                  add          s6, t1, s3
                  addi         s4, a2, 479
                  sll          s4, s6, s3
                  and          t6, s6, t0
                  lui          zero, 306725
                  lui          a2, 685770
                  auipc        s0, 409130
                  add          s6, t4, s1
                  srl          s10, a7, a2
                  nop
                  xori         s11, s9, -1360
                  add          s4, s4, t5
                  sltiu        a3, a3, 676
                  srl          ra, t5, s3
                  xori         t5, a5, 1298
                  srli         t0, s0, 4
                  andi         s9, s8, -465
                  srl          t2, s10, s3
                  srl          t6, gp, t2
                  sub          a7, ra, tp
                  srli         a1, a3, 31
                  ori          a5, a0, 20
                  andi         a7, a6, -1710
                  ori          zero, a1, 1633
                  nop
                  srai         s2, tp, 25
                  srai         a5, a3, 30
                  slti         ra, t6, -1384
                  xor          a6, s2, sp
                  auipc        t2, 158287
                  add          s8, a1, t5
                  auipc        a1, 231422
                  srli         a3, t4, 21
                  ori          s1, tp, -546
                  srl          s11, a1, s9
                  slti         s4, s10, 1595
                  srl          a3, zero, a2
                  andi         s2, a7, -1948
                  lui          s11, 172118
                  sltiu        s11, s3, 947
                  and          t4, t3, a5
                  sltu         s6, s2, s9
                  add          a4, sp, a1
                  add          a1, tp, s9
                  ori          a4, t2, 398
                  auipc        s6, 429067
                  slli         s5, a5, 27
                  nop
                  lui          sp, 370777
                  srai         t5, t1, 5
                  and          s7, s10, s5
                  srl          a4, s11, a0
                  auipc        a1, 234287
                  srai         a7, sp, 12
                  xor          t2, tp, s0
                  srl          a4, a4, s8
                  sra          s11, s11, sp
                  slli         s10, a3, 27
                  auipc        a4, 271734
                  slti         s9, a6, -727
                  sltu         s10, a7, zero
                  lui          s6, 197916
                  sra          s9, sp, gp
                  sll          t5, a6, t4
                  srai         gp, a3, 22
                  sltu         gp, zero, a3
                  sll          a5, s11, sp
                  add          t0, a0, s9
                  srai         s2, s7, 16
                  nop
                  lui          zero, 516571
                  auipc        a2, 520408
                  or           a1, s0, s5
                  auipc        a4, 398987
                  auipc        s9, 384007
                  sub          s1, a0, t4
                  sltu         s0, s3, s6
                  xori         a4, s3, -1623
                  nop
                  auipc        a1, 936587
                  auipc        s10, 278596
                  srli         t4, s8, 3
                  xori         ra, a4, -427
                  add          gp, s8, t5
                  srli         a5, t2, 3
                  ori          s2, s11, 1079
                  sub          s4, t5, zero
                  lui          t1, 792503
                  xori         t0, s9, -1018
                  srai         a4, s8, 1
                  srai         t1, a2, 11
                  srai         t2, s10, 12
                  xor          a2, a4, t2
                  sub          s6, s6, zero
                  sltu         a3, s7, a0
                  srl          s11, s11, s3
                  xori         zero, a6, 15
                  srai         a7, t5, 26
                  sub          zero, t2, a7
                  andi         a5, tp, -1988
                  addi         ra, a2, 481
                  srl          zero, a3, zero
                  auipc        a2, 692492
                  srli         t4, a7, 9
                  sll          s8, s3, a5
                  srli         gp, s2, 11
                  sltiu        a1, t4, 1920
                  addi         t5, a5, 1697
                  ori          s5, a3, -452
                  ori          t4, a3, 702
                  sltu         a1, s10, s6
                  andi         s5, a0, -692
                  sra          a1, t1, s5
                  xori         a7, s11, 1787
                  slli         s7, a7, 4
                  slti         s7, a0, -2020
                  or           s1, tp, a3
                  auipc        a5, 709607
                  ori          zero, t4, 2017
                  slli         s2, gp, 14
                  sll          s11, s10, t2
                  slli         s6, s11, 1
                  sub          t1, a0, gp
                  addi         a3, s0, -38
                  or           a4, a3, sp
                  and          zero, t1, s2
                  addi         t2, s7, -1056
                  andi         s11, s1, -1750
                  srli         sp, a4, 5
                  slti         s4, a0, 1121
                  srl          t4, s11, tp
                  addi         ra, s8, -1535
                  sll          s8, sp, sp
                  addi         a5, s0, 1903
                  sra          t0, s9, t5
                  sub          zero, a7, s8
                  sltu         s10, sp, gp
                  auipc        s8, 743993
                  sltiu        zero, a6, -1088
                  srl          s0, a5, s8
                  lui          t6, 1400
                  srai         s0, s3, 15
                  and          t3, t0, t6
                  sll          s0, gp, sp
                  sll          a6, ra, a4
                  lui          a7, 510677
                  lui          gp, 279690
                  slli         s2, s8, 1
                  ori          t5, s9, -1677
                  slli         s4, sp, 4
                  xori         t6, a1, -633
                  add          s4, s4, t4
                  and          s6, zero, t3
                  slt          s0, a2, s1
                  sub          s5, a3, s8
                  andi         s9, s6, -258
                  add          sp, t0, a6
                  srai         s1, t1, 11
                  sltiu        zero, a0, -281
                  sra          t5, t6, gp
                  ori          a7, a5, -1885
                  srl          t4, t6, t6
                  slli         s2, a7, 19
                  lui          ra, 863447
                  sll          zero, a5, s5
                  auipc        a2, 809815
                  or           s2, t4, t4
                  sltu         t2, a4, s10
                  sra          s8, s2, s9
                  srli         t2, t1, 26
                  srl          a4, a2, s9
                  sub          zero, s1, s7
                  sll          sp, a2, a1
                  xor          s10, s0, a0
                  xor          s6, a4, t4
                  srli         a4, s8, 23
                  xori         a7, a1, 2041
                  srli         s10, s11, 30
                  srli         s8, s2, 22
                  srl          s9, s5, s8
                  nop
                  and          gp, sp, t2
                  and          s4, a6, a1
                  slti         s6, a4, -1658
                  srl          s10, s8, a7
                  slti         s1, gp, 1972
                  srl          s1, a3, t3
                  lui          s10, 1022785
                  srai         s6, a2, 7
                  lui          a4, 437561
                  srli         a1, s3, 3
                  sll          ra, s9, a5
                  or           ra, s9, s9
                  auipc        s5, 233346
                  sll          t1, t3, a2
                  and          sp, s8, s8
                  sltu         t0, s6, sp
                  xori         a2, a2, 1610
                  auipc        s4, 239620
                  slli         a4, gp, 8
                  slti         s4, s1, -1431
                  and          a3, s2, t4
                  slti         a7, s0, 334
                  slt          t6, a0, s3
                  addi         s5, a7, 1779
                  slti         s10, a1, 1698
                  or           t3, s3, t1
                  srl          s2, s8, s3
                  sub          a2, t1, t5
                  slti         a2, a7, -1824
                  andi         s2, s7, -104
                  ori          s9, sp, 126
                  sll          zero, s10, t2
                  srl          a7, t5, a0
                  sub          a2, s7, t3
                  auipc        t0, 256770
                  srai         a7, a6, 30
                  auipc        s8, 277122
                  srli         t3, s1, 19
                  sltu         zero, ra, ra
                  add          zero, gp, s6
                  slt          s4, s5, t4
                  slt          s5, s4, s1
                  lui          sp, 399236
                  sub          s4, a0, a3
                  ori          t3, s9, 1569
                  nop
                  sra          t4, s3, s4
                  sltiu        t4, t2, 1906
                  srli         a7, s3, 23
                  add          s7, a6, s0
                  srli         t6, t3, 11
                  and          ra, zero, t4
                  ori          a2, t3, 899
                  sltiu        s1, s11, 387
                  sub          a7, t2, s3
                  ori          a3, a5, 272
                  slt          a4, s3, s7
                  addi         s5, gp, -1880
                  slti         t3, t5, 1863
                  sub          t6, tp, a2
                  sltiu        zero, a1, 1660
                  slli         s10, s10, 23
                  slli         s11, t3, 24
                  sltu         s9, ra, a7
                  sll          t6, s1, a1
                  xor          gp, s0, sp
                  lui          a2, 149680
                  srl          zero, s6, t0
                  xor          a3, tp, s1
                  add          t6, a3, tp
                  nop
                  lui          s2, 704306
                  and          s1, a7, s7
                  sltiu        a2, a1, -1642
                  slt          s8, s5, s3
                  auipc        s11, 702251
                  sub          s4, s9, s7
                  ori          a1, s8, -311
                  ori          a6, t0, -42
                  slt          s9, a4, a0
                  lui          t1, 769927
                  auipc        a1, 959659
                  xor          t5, ra, t0
                  slli         s9, a2, 3
                  nop
                  nop
                  xori         s7, s0, 1531
                  nop
                  auipc        s0, 338238
                  add          t6, t6, s6
                  sltiu        s2, s3, -1028
                  nop
                  nop
                  xor          s1, a5, a5
                  lui          t4, 336780
                  slli         a2, t3, 27
                  srai         gp, a6, 15
                  add          t1, a2, t5
                  slli         s10, ra, 22
                  sll          zero, s11, s7
                  slt          s1, s6, zero
                  or           s11, s2, s0
                  srl          t0, s0, s11
                  sltiu        t1, t3, 795
                  auipc        t0, 602290
                  andi         s8, a6, -267
                  sltu         s5, a7, a7
                  lui          a5, 448204
                  xor          s2, s5, s2
                  nop
                  and          a1, s2, s2
                  slti         s1, a5, 919
                  srai         zero, a7, 15
                  srl          s9, s3, a3
                  xori         zero, s0, -1181
                  add          t2, a6, s10
                  slt          t0, zero, a2
                  srli         a3, s9, 17
                  or           s1, s7, sp
                  sll          s7, a6, t5
                  auipc        s0, 623410
                  slli         s2, t2, 26
                  and          t2, a7, t2
                  srai         s9, zero, 9
                  sra          s7, a4, s10
                  slti         t6, s11, -1385
                  and          a4, a5, t5
                  srl          s8, s2, s4
                  slti         t4, t4, 405
                  sub          s4, s8, zero
                  sltiu        s9, a2, 1461
                  xori         t6, s5, -140
                  ori          t0, s7, 2007
                  xor          s6, s8, s1
                  xori         s0, ra, 1566
                  sub          t5, ra, s6
                  srli         a3, a0, 16
                  sra          a7, s10, gp
                  slt          gp, a7, a6
                  and          t0, t6, s6
                  srai         s7, s7, 17
                  slt          a7, a3, s4
                  sub          ra, gp, t2
                  srli         ra, sp, 27
                  and          a1, t5, a0
                  slt          s2, a2, s2
                  sra          ra, tp, t2
                  slt          s5, a0, tp
                  sll          a7, sp, zero
                  slt          t6, t5, t0
                  slt          s2, a0, a2
                  or           s4, s8, a4
                  srai         zero, a0, 15
                  ori          ra, ra, -835
                  sub          t1, s6, a0
                  sll          a1, s8, s10
                  and          gp, tp, s10
                  srl          s2, a1, a0
                  slt          t0, t6, t0
                  sll          t3, s3, a7
                  xori         t6, t5, -344
                  sub          s2, gp, s4
                  lui          a5, 462898
                  srl          t3, gp, s1
                  srli         s9, s7, 24
                  slli         a1, t6, 21
                  addi         a7, gp, -1909
                  or           a5, a3, s10
                  addi         t4, t3, -585
                  srl          zero, s11, a2
                  xor          s2, s3, t0
                  slti         a1, s7, 128
                  xor          s7, s8, t5
                  srl          a2, sp, t3
                  srli         a7, s3, 0
                  sltiu        s5, t1, -133
                  sltu         a2, gp, t3
                  add          s5, ra, a0
                  add          s1, a4, s1
                  addi         s0, a7, 788
                  srli         zero, a5, 13
                  xor          s4, sp, zero
                  addi         s0, s1, 1431
                  or           s10, s4, a5
                  and          t1, s0, a7
                  srl          a2, s8, a0
                  sub          s5, s6, s6
                  sll          ra, s6, a3
                  slli         ra, a7, 21
                  sll          s2, sp, s4
                  or           a7, s3, a6
                  srl          s0, s8, a7
                  sltu         s9, a7, tp
                  slli         t3, t5, 10
                  xor          a2, t6, zero
                  ori          t6, s2, -1323
                  sra          s10, s5, s2
                  nop
                  and          a5, a4, s0
                  sub          s10, s2, s0
                  ori          t1, ra, -1412
                  lui          a4, 687469
                  slt          t0, s3, t0
                  sltiu        a1, s10, 647
                  or           s8, s4, s1
                  sra          s1, a5, t5
                  and          a2, t6, s5
                  sra          s1, tp, t5
                  slti         s0, a4, -1977
                  add          s5, s5, a2
                  slt          a1, s5, a4
                  or           ra, sp, t0
                  sll          a5, a4, s11
                  sltu         s2, t1, a0
                  xori         s4, a1, 293
                  slti         s0, s7, -832
                  addi         a2, tp, -1657
                  slt          t1, t6, t0
                  sltiu        a1, a5, 87
                  slli         s6, s4, 8
                  sltiu        s0, a1, 1057
                  or           s0, s8, s8
                  sll          s1, t6, t1
                  addi         zero, t5, 26
                  sll          zero, s6, sp
                  addi         s8, s4, -857
                  ori          a1, s4, -264
                  add          a6, s9, s6
                  slti         t5, sp, -578
                  srai         t4, zero, 6
                  sll          a7, s4, s11
                  and          a4, a2, a7
                  slli         s0, t2, 9
                  andi         s11, s2, 1767
                  ori          sp, t3, 446
                  and          a2, a6, t4
                  nop
                  xori         sp, a6, -1318
                  or           a7, sp, s3
                  and          zero, t6, s8
                  sltiu        t3, s6, 1814
                  add          t4, t4, s10
                  add          t1, s6, t0
                  and          s5, s4, s4
                  or           t2, a0, s8
                  nop
                  lui          t6, 886314
                  slli         a4, s11, 28
                  slti         t6, s4, 453
                  addi         t1, a0, 1386
                  sra          s4, s7, s11
                  sll          s11, s3, s4
                  xor          t2, t1, s8
                  sub          s6, a6, t5
                  sltiu        s8, s6, -1782
                  sub          s9, t6, zero
                  nop
                  slt          a7, a0, s2
                  ori          s7, t5, -182
                  sra          t2, t1, s6
                  srli         t0, s8, 14
                  slt          s10, ra, tp
                  sra          a1, t4, a0
                  slt          sp, a6, ra
                  or           a7, s11, a0
                  slti         s2, ra, -892
                  addi         s11, a6, -383
                  sltu         t3, s10, a7
                  xor          s5, a1, t3
                  addi         a2, t6, 1788
                  and          a4, s11, t1
                  sltu         s1, tp, t6
                  srli         sp, s3, 28
                  sltiu        gp, s2, -402
                  and          s2, a7, s5
                  addi         a4, a3, -328
                  andi         a1, sp, -1120
                  srl          t4, a6, a1
                  andi         s10, s8, 234
                  auipc        t2, 395045
                  srli         t2, a3, 29
                  xori         s10, a2, -1403
                  or           a4, sp, a7
                  nop
                  slti         t6, a3, 296
                  ori          a2, a1, -1447
                  auipc        t1, 978339
                  srai         t4, a5, 31
                  srli         ra, s7, 21
                  xor          zero, a1, a1
                  auipc        t4, 21437
                  andi         a7, s6, 189
                  slli         t0, s5, 18
                  srli         a2, t2, 22
                  slli         t3, t3, 1
                  add          s1, t3, tp
                  slti         a7, a4, 379
                  xor          t0, a4, a1
                  nop
                  addi         a3, s8, 1598
                  sltiu        a4, zero, 788
                  auipc        s0, 983624
                  nop
                  slt          a5, t2, s4
                  and          s2, s8, s0
                  srli         s1, a1, 13
                  sltu         t0, a0, a6
                  addi         s2, a4, -1567
                  nop
                  slli         sp, t0, 1
                  srai         ra, s0, 4
                  auipc        t1, 45757
                  and          s0, s0, a6
                  and          s4, a3, gp
                  srai         s10, gp, 26
                  addi         ra, a6, -1789
                  and          s6, t3, sp
                  sltiu        t3, s10, 1235
                  sltiu        a4, t3, 1552
                  nop
                  srai         t2, s8, 9
                  xor          s8, a6, s9
                  addi         s4, ra, 1776
                  sra          s9, s10, zero
                  auipc        s9, 350307
                  slti         s1, a1, 802
                  and          s11, t0, s0
                  srai         s6, a0, 19
                  addi         zero, t1, 75
                  nop
                  andi         s0, t0, -1813
                  auipc        t6, 81419
                  slli         t1, s8, 30
                  slt          a1, s9, s10
                  addi         ra, s3, -2042
                  ori          s1, t5, 1798
                  slti         a1, sp, -991
                  sll          a2, a6, t6
                  and          s5, s3, a4
                  xori         t2, t1, 1663
                  xori         ra, a4, 1608
                  sltu         a1, a1, a1
                  auipc        a2, 196390
                  xori         t3, a5, -1103
                  slti         s2, a4, 641
                  xor          s11, s9, s8
                  nop
                  or           s6, zero, gp
                  auipc        t0, 812025
                  and          t0, a1, a4
                  xori         s7, a3, 1574
                  andi         a4, t2, -1052
                  add          t4, zero, tp
                  xor          t1, s7, t5
                  sub          s10, s3, s11
                  xori         t0, s10, 465
                  lui          t5, 935027
                  ori          a3, a6, 1556
                  sll          s9, t1, a6
                  sltu         a3, s9, s3
                  lui          s5, 495443
                  sltiu        s11, t6, -1555
                  srli         sp, t2, 1
                  or           t4, gp, s4
                  sll          t2, ra, a2
                  slli         s5, a3, 28
                  xori         sp, s4, -1043
                  xori         a1, s5, 1883
                  add          s7, s3, sp
                  srai         s8, t0, 26
                  lui          a3, 981802
                  xor          s1, s11, a1
                  xor          a4, s4, a4
                  lui          t3, 905523
                  lui          s11, 389114
                  slt          a6, tp, s4
                  or           t6, a2, s1
                  auipc        a6, 716995
                  sltiu        t0, s6, -577
                  sltiu        zero, s4, -1201
                  auipc        s4, 901675
                  addi         s9, a4, 1617
                  lui          t5, 590386
                  auipc        t1, 696198
                  srl          zero, gp, a6
                  add          s8, s1, a1
                  auipc        ra, 485323
                  sll          a6, s8, t3
                  slt          s5, gp, s0
                  slt          s4, a6, t4
                  sltu         a6, s6, a6
                  srl          a1, zero, s6
                  auipc        s7, 822040
                  or           a5, a0, s7
                  ori          t2, a6, 324
                  slt          s11, s11, a5
                  nop
                  sra          s11, s7, s7
                  srl          a4, s6, a3
                  srl          a2, s5, a5
                  srl          s7, a3, s9
                  and          s10, ra, gp
                  sub          a7, s4, a6
                  andi         zero, a4, -1378
                  sub          a6, s5, t4
                  lui          s10, 184766
                  lui          t6, 307581
                  sub          s11, tp, s8
                  sll          s4, s0, s10
                  srai         a5, s9, 19
                  sub          t1, s6, tp
                  andi         t3, s6, -1180
                  slt          a5, tp, s7
                  srl          t5, t4, s9
                  or           a6, t2, s7
                  slli         a2, ra, 17
                  slli         s8, a1, 23
                  add          s8, t5, s3
                  and          t6, ra, s5
                  sub          t3, s5, a3
                  slt          a6, t6, s6
                  lui          a2, 523648
                  nop
                  lui          sp, 925542
                  add          a6, a2, s8
                  add          s10, a7, a4
                  andi         a3, a3, 453
                  xor          zero, tp, s4
                  nop
                  slti         t0, s3, 2043
                  slli         s6, t3, 30
                  xori         a2, tp, -354
                  lui          a2, 729236
                  slli         zero, sp, 23
                  addi         s9, s9, 1707
                  srai         s7, sp, 23
                  sra          s9, s4, s4
                  auipc        zero, 1019635
                  sltiu        a6, t5, -722
                  andi         t6, s5, -323
                  nop
                  or           t4, t4, s2
                  sll          s10, t2, s2
                  addi         a2, s5, -1966
                  sra          t3, a2, a7
                  nop
                  auipc        t0, 490943
                  slt          a5, t4, t5
                  slt          a7, t3, s10
                  srli         s11, s7, 9
                  andi         a6, s6, 641
                  srai         t2, s2, 25
                  andi         t0, t1, 504
                  nop
                  sll          t3, a4, ra
                  sltu         gp, s6, s4
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xffffffff
                  li           t3, 0x6d3394e3
                  li           a5, 0x0
                  li           s1, 0xe4d0b965
                  li           a6, 0xe283c717
                  li           sp, 0x80000000
                  li           a7, 0xffffffff
                  li           t4, 0x0
                  li           gp, 0x80000000
                  lui          t4, 864890
                  addi         a5, sp, -1223
                  lui          t4, 877272
                  auipc        t4, 801204
                  lui          t6, 563206
                  add          gp, a6, t4
                  addi         t6, a6, 48
                  sub          s1, t3, gp
                  sub          gp, t4, t6
                  sub          a3, gp, t4
                  add          t6, t3, a7
                  sub          a5, a6, a6
                  add          t3, t3, a3
                  auipc        a6, 557962
                  nop
                  sub          t4, s1, a5
                  add          gp, gp, a6
                  nop
                  auipc        gp, 67832
                  lui          a5, 23314
                  add          a5, s1, a3
                  sub          t6, t6, a6
                  addi         gp, s1, 255
                  nop
                  addi         a3, t3, 549
                  auipc        a3, 996324
                  sub          a3, t6, s1
                  auipc        a3, 263479
                  lui          t3, 182042
                  sub          a7, a5, a3 #end riscv_int_numeric_corner_stream_4
                  sll          a4, s2, s0
                  ori          s10, t5, -2014
                  srai         a2, t0, 20
                  add          s10, t1, s8
                  and          s8, ra, a6
                  nop
                  xor          t6, a4, t1
                  xori         s5, s9, 875
                  srai         s11, a1, 7
                  sra          s8, a4, a0
                  sll          a6, s10, s9
                  sltiu        t6, s2, -1726
                  sltiu        t0, s9, -101
                  slli         a6, t2, 22
                  slli         s6, s5, 29
                  slt          zero, s8, a0
                  sra          s7, s4, a7
                  auipc        a7, 260015
                  add          s5, s3, s9
                  sltiu        zero, s3, -629
                  and          t3, a0, a0
                  sra          s8, s8, tp
                  addi         s4, a0, -1904
                  sltu         a4, s3, t4
                  auipc        ra, 630268
                  ori          a2, s6, -779
                  slti         s9, t6, -1971
                  nop
                  srli         s1, t3, 20
                  addi         a3, s6, -192
                  and          a5, t3, t5
                  srl          s2, t6, s4
                  sll          t2, s0, t1
                  auipc        t6, 623794
                  add          s7, s9, s4
                  sltiu        s2, t3, 1186
                  sltu         s11, s5, a5
                  or           s1, t6, a3
                  ori          t0, t6, 539
                  andi         s1, s11, 697
                  xori         a3, s6, -1161
                  sltu         s1, s0, s7
                  slt          s2, s8, a7
                  andi         zero, ra, 912
                  sltu         s8, sp, s2
                  sltiu        sp, s5, -109
                  sltiu        a7, a4, 577
                  srl          a3, sp, t5
                  andi         s0, gp, 131
                  addi         s11, a3, 1668
                  sra          s5, a5, t2
                  add          a6, s0, s10
                  srai         sp, s8, 6
                  slti         t1, t5, -58
                  sltu         s9, t2, s5
                  slti         t2, a0, 357
                  sll          t0, a6, s5
                  srl          t2, t2, s9
                  sra          a7, t1, a2
                  sll          s9, a3, t1
                  sltiu        t1, t2, 1175
                  slti         t1, a4, -1759
                  add          a6, a4, zero
                  srai         s5, ra, 25
                  slli         a5, s4, 18
                  sltu         s4, gp, s3
                  ori          t2, t2, 1560
                  lui          t4, 847818
                  srli         a5, s3, 2
                  nop
                  slli         gp, s1, 20
                  sra          t2, t0, s10
                  srli         a3, t3, 26
                  nop
                  slt          zero, ra, gp
                  sll          s10, s1, s10
                  slti         a3, zero, -1353
                  or           t4, t3, t3
                  sltiu        t1, sp, 1013
                  sub          s6, t4, gp
                  slli         t0, a3, 28
                  andi         s10, zero, -1645
                  sll          s9, tp, t6
                  and          s1, t3, zero
                  sltu         zero, s1, s11
                  lui          s6, 704882
                  slt          a2, s6, s9
                  sltu         a3, s7, s0
                  xor          s9, t0, s4
                  slti         a4, s5, -144
                  sltiu        a5, gp, 590
                  nop
                  sub          s9, t1, ra
                  sltiu        s9, a5, -1461
                  sub          s7, a1, s10
                  srai         s10, sp, 24
                  sll          s5, t5, t1
                  auipc        s2, 755275
                  srl          s4, t3, a3
                  nop
                  sll          sp, a1, t5
                  sub          s4, s8, t1
                  slt          t1, s6, t0
                  auipc        a4, 918115
                  lui          s5, 152213
                  slli         a3, a7, 30
                  add          s1, t3, a6
                  srli         t5, a1, 0
                  addi         t1, s5, 886
                  addi         a2, s2, -1698
                  slti         a1, s6, 797
                  sltu         s8, gp, t3
                  nop
                  add          s10, s4, a6
                  srl          s5, a2, s0
                  sra          s9, tp, ra
                  lui          a4, 886074
                  add          t3, s11, s7
                  sltu         t3, t3, a1
                  nop
                  andi         s5, t0, -812
                  lui          s7, 324508
                  and          a5, a7, s10
                  srli         s6, a6, 25
                  sltiu        s7, t6, 1556
                  andi         a4, tp, -893
                  xori         sp, s0, 473
                  sltiu        a4, s2, 1060
                  sltu         sp, s8, s7
                  sub          t5, a2, a6
                  auipc        a5, 647239
                  and          a4, t2, s4
                  sub          s0, s3, t3
                  sltiu        a5, s1, -605
                  sll          s0, s8, s0
                  ori          s10, a3, 31
                  add          s0, s5, a1
                  sub          s11, s1, gp
                  xor          a1, a2, a1
                  srai         a1, a7, 2
                  lui          ra, 467916
                  or           t6, a7, t0
                  and          a5, a7, s0
                  lui          zero, 542173
                  srl          gp, a5, s8
                  srl          s4, a2, a6
                  srli         s1, s1, 14
                  xori         s8, t5, 2006
                  srl          a4, s8, s1
                  addi         s4, a5, 1708
                  sub          s2, t2, t6
                  auipc        s9, 113490
                  sll          a3, tp, s4
                  lui          s4, 413041
                  slli         t4, s5, 12
                  sll          s11, s3, gp
                  and          s0, s1, sp
                  nop
                  xor          s7, t2, a3
                  lui          s5, 653734
                  or           s9, t0, t5
                  slt          s0, s11, t0
                  andi         s7, s1, -226
                  and          t6, s10, s5
                  sub          t4, gp, s7
                  xori         t6, a3, -1746
                  sra          gp, s2, s8
                  xor          a6, t4, s10
                  sll          s6, s3, a1
                  and          s7, t1, s9
                  srai         a6, t0, 30
                  sltu         s6, ra, s6
                  and          t4, a4, a1
                  sltu         a6, a4, s0
                  sll          t0, gp, a7
                  sll          a5, t3, s5
                  srai         s0, a2, 5
                  sltiu        a6, s11, 372
                  slti         s1, s0, -747
                  slt          a5, a5, a1
                  slt          a4, s10, s3
                  srl          s0, a6, t2
                  or           s7, t6, s0
                  slli         a2, t2, 24
                  or           s4, gp, s4
                  sub          gp, t0, s9
                  andi         a3, a2, 1672
                  sra          s9, s2, tp
                  ori          a5, s7, 992
                  or           t0, s2, t1
                  srl          a3, sp, s2
                  add          s4, t0, s1
                  and          a1, a5, a2
                  nop
                  auipc        t0, 292305
                  and          s5, a1, a5
                  and          s1, s2, s3
                  sltu         s4, s6, s2
                  xor          s6, a5, s9
                  or           s2, gp, a3
                  addi         t3, t2, 1996
                  xor          zero, a0, t4
                  slli         s6, s2, 11
                  sra          t3, a2, t4
                  slti         a3, s2, -828
                  sll          s7, t2, s1
                  ori          s1, sp, 397
                  nop
                  sra          a6, ra, s8
                  or           s8, s5, a4
                  auipc        t4, 745081
                  srai         t0, a0, 3
                  sltu         s2, s10, s4
                  auipc        s0, 104591
                  sltiu        zero, t4, 2
                  sltu         a3, t5, s0
                  sub          gp, s8, sp
                  srai         s7, gp, 0
                  slt          a1, a1, s0
                  or           t0, s3, zero
                  auipc        a6, 629915
                  slti         t3, t5, 417
                  nop
                  andi         s2, s0, 323
                  sll          s6, t0, s7
                  add          s10, tp, a7
                  srai         s10, t5, 2
                  sub          s10, s1, s11
                  sll          s6, t1, s11
                  sll          t2, t3, sp
                  andi         s0, s3, -942
                  or           gp, t6, s11
                  ori          a7, ra, -576
                  and          gp, t4, s9
                  slt          s0, a2, a5
                  andi         a5, ra, 512
                  sll          ra, a3, s10
                  andi         a6, t3, -1287
                  slli         s4, a5, 10
                  andi         a3, t5, -36
                  auipc        s8, 168276
                  add          s4, ra, zero
                  or           t6, t3, t5
                  srl          s1, gp, t3
                  sltiu        s6, s9, 21
                  sltiu        s0, a2, -1407
                  andi         t5, s2, -819
                  lui          s9, 978606
                  andi         ra, s8, -1277
                  ori          gp, a6, 1746
                  slli         t3, a4, 0
                  sltu         s4, s1, s4
                  or           a4, s9, t6
                  addi         s8, gp, 712
                  ori          t5, s6, 855
                  ori          s9, a6, -698
                  slt          s6, a1, s3
                  srl          s8, s0, tp
                  auipc        s5, 843211
                  srli         a4, a6, 19
                  xori         a2, s10, 2010
                  slti         a2, t5, -442
                  srai         a4, a2, 8
                  addi         a4, a5, 245
                  xor          t6, s1, a5
                  xori         a1, s10, -178
                  sra          t1, a5, s8
                  xor          t2, gp, tp
                  sltu         s5, t6, a6
                  and          s10, tp, s10
                  or           s9, t1, a1
                  slt          zero, t1, t4
                  lui          t3, 769827
                  sltiu        a7, ra, 1369
                  sltiu        s6, a6, 22
                  slli         t0, s8, 18
                  nop
                  ori          a1, t4, -361
                  xor          s2, a4, a3
                  or           sp, s7, t2
                  srl          t2, t5, a6
                  slli         zero, t6, 3
                  srl          s7, s10, a4
                  addi         a6, s7, -744
                  srl          ra, s11, t4
                  srli         gp, t2, 4
                  xori         t5, a4, -591
                  slli         s0, t4, 28
                  sll          t4, s3, a6
                  or           t5, zero, s11
                  or           s0, s6, ra
                  srl          a5, a2, s3
                  srai         s7, s4, 8
                  lui          s2, 918239
                  sltiu        s7, tp, 1511
                  srai         a3, s5, 2
                  slt          t0, s6, a5
                  sra          s8, t4, ra
                  xori         a7, s0, -590
                  srai         a4, t0, 13
                  auipc        s6, 701749
                  srai         sp, ra, 31
                  auipc        s7, 326849
                  srli         s2, t3, 29
                  or           s2, t5, s7
                  add          t4, t1, zero
                  sll          s7, a6, t6
                  ori          a7, s8, -1463
                  or           zero, s2, t5
                  sltiu        s2, s4, -1727
                  xori         t6, t1, -779
                  slt          t2, t4, s3
                  lui          a3, 1039614
                  add          s1, t3, t1
                  and          a7, tp, gp
                  lui          a2, 772232
                  and          gp, t1, a5
                  or           a3, t3, t5
                  slt          a3, s11, a0
                  sltu         ra, s11, gp
                  xor          a3, tp, s2
                  auipc        a3, 688802
                  slti         a4, s1, 964
                  slli         ra, ra, 30
                  srli         s11, t0, 6
                  add          t1, s2, s1
                  xori         s6, a0, 253
                  sll          s10, a4, sp
                  slli         a1, zero, 23
                  srai         t2, s10, 16
                  sub          a3, s11, a1
                  add          s10, a5, gp
                  and          t0, a1, s6
                  srl          s7, a0, a0
                  xori         a3, s9, -366
                  slli         s9, a7, 18
                  auipc        s10, 466246
                  slti         s4, a7, 315
                  sub          t1, a6, s5
                  xor          a3, t6, t3
                  slti         s2, a3, -1194
                  xori         gp, a1, 1863
                  addi         s6, zero, -1632
                  srai         a7, s5, 28
                  ori          t2, ra, -533
                  xori         t2, zero, -895
                  srai         t3, tp, 25
                  slli         t1, t6, 5
                  sra          t4, s0, t1
                  lui          t2, 681397
                  auipc        s2, 795615
                  or           t2, s4, s5
                  add          t4, s0, t4
                  andi         a2, tp, -105
                  add          s10, s3, a2
                  sra          s6, s0, t2
                  sltu         s10, t0, tp
                  xor          ra, s1, s9
                  xori         a5, a5, -794
                  auipc        t2, 445515
                  srai         s2, s8, 5
                  srai         a6, s6, 18
                  xori         t4, t2, 605
                  srl          t1, s4, s10
                  or           a5, s11, tp
                  and          sp, t5, a4
                  andi         t0, a5, 1745
                  sltiu        a6, a0, -441
                  ori          s6, s7, 666
                  sll          s6, ra, t0
                  sra          t1, a1, a2
                  addi         s11, s0, -728
                  sltu         s5, a3, s10
                  auipc        s1, 467088
                  sra          s4, a4, s8
                  lui          s0, 729879
                  lui          t3, 383748
                  sra          s7, a0, a2
                  ori          s5, t2, -1047
                  sltiu        s1, a6, -1307
                  slt          s10, a3, a6
                  or           a7, s1, sp
                  slt          sp, s6, t2
                  slt          a4, s11, a5
                  srai         a3, s8, 2
                  andi         t0, s6, -1145
                  srai         gp, s6, 9
                  slt          t6, a2, s2
                  add          s10, a6, t0
                  lui          zero, 798623
                  slli         sp, s6, 3
                  auipc        s5, 3853
                  xor          t3, t6, ra
                  srl          t4, gp, s4
                  nop
                  srli         s10, a3, 4
                  srl          t0, zero, a3
                  xor          zero, a1, s4
                  srli         s10, tp, 19
                  srli         s0, s1, 2
                  slli         s4, a1, 8
                  or           s6, a0, tp
                  sub          s8, s8, s4
                  auipc        s9, 1004704
                  andi         s0, t2, -16
                  sra          s4, s0, s5
                  slli         t5, s6, 1
                  lui          t0, 286390
                  and          a2, a6, t0
                  slli         a1, s3, 11
                  xor          t2, t6, gp
                  sll          a4, s5, s7
                  sltu         s6, t2, s7
                  srl          s10, s11, s9
                  slli         s1, t2, 7
                  sll          gp, sp, t5
                  addi         sp, t4, -1072
                  andi         sp, s7, -1940
                  and          s8, zero, sp
                  xor          a1, t2, t4
                  sra          s1, s5, a4
                  sltiu        s5, a6, -1019
                  sltiu        s0, ra, -1280
                  nop
                  slti         t4, a5, -1801
                  srai         a4, s4, 19
                  srli         t0, a2, 23
                  nop
                  and          s10, sp, t2
                  sltiu        a7, a4, -535
                  sub          a3, s10, a2
                  sra          a5, s4, s4
                  slli         s11, a3, 26
                  sub          s7, s4, a0
                  or           t0, t4, s3
                  ori          a1, s3, 844
                  xori         t2, t5, -1192
                  sll          t2, a2, s2
                  sra          s9, a1, gp
                  xori         t5, a7, 507
                  srli         a7, ra, 29
                  lui          t2, 686232
                  sltiu        s11, ra, 368
                  srl          s0, s9, s3
                  sll          s7, t1, t5
                  sltu         a4, t5, a0
                  sra          zero, a0, s9
                  nop
                  sltiu        gp, sp, -676
                  add          s6, a7, s1
                  srai         s2, s11, 5
                  xor          a5, ra, s2
                  add          s4, s6, sp
                  and          t1, t6, t2
                  srli         t6, a1, 18
                  slli         s6, a7, 30
                  slti         gp, zero, 1902
                  add          s7, a6, s10
                  slli         t5, a1, 31
                  srli         a4, t5, 17
                  slti         t1, s0, -1029
                  addi         s5, s1, -1291
                  slt          a3, a7, sp
                  sll          a2, t3, t6
                  sltiu        a6, a6, -1709
                  addi         t2, s1, -993
                  srai         s6, s9, 21
                  and          a4, a5, s8
                  nop
                  add          ra, tp, ra
                  add          t1, ra, a1
                  auipc        s2, 1013311
                  sub          a2, s11, s6
                  addi         s7, s8, 899
                  xor          a5, a6, s0
                  sra          ra, s10, s7
                  slti         zero, s5, 2025
                  auipc        t3, 773635
                  nop
                  sll          a5, sp, s5
                  srai         s7, s7, 10
                  slli         t5, a4, 3
                  sll          a5, s10, s9
                  sub          a4, s10, a4
                  srai         zero, t1, 23
                  slli         t3, s7, 22
                  slli         gp, t5, 6
                  andi         a3, s1, 276
                  xori         a3, s5, 1002
                  andi         t0, s9, 117
                  srai         t1, s1, 5
                  sra          a7, s3, t0
                  addi         s4, s2, -1383
                  addi         a3, a6, -1374
                  slti         a4, s3, -71
                  slli         t1, s4, 12
                  slti         s7, s2, -1605
                  srli         a3, tp, 31
                  sra          s7, s11, s5
                  sltu         t2, a7, s10
                  sub          s8, t1, s11
                  srli         a1, s1, 9
                  or           s5, a4, s0
                  ori          t1, zero, -381
                  slti         a1, t3, 1842
                  sub          a3, ra, t0
                  and          t3, sp, t5
                  xori         s9, a2, 893
                  sll          sp, s6, t4
                  slti         s8, t1, -1766
                  sll          a4, ra, s6
                  ori          a1, s5, 434
                  nop
                  slti         a1, a6, -1076
                  ori          t2, a5, -509
                  srli         s5, a7, 27
                  ori          s4, sp, -143
                  srli         t3, a4, 20
                  sll          a7, t2, tp
                  slli         s8, a6, 31
                  sra          s2, sp, sp
                  sll          s4, s4, t4
                  lui          t0, 901625
                  xori         a5, s0, 2005
                  srai         s9, ra, 14
                  srai         gp, a1, 7
                  and          ra, a3, s10
                  srli         s11, gp, 12
                  srli         t6, s4, 1
                  auipc        s8, 261429
                  auipc        a3, 625036
                  xor          t0, s4, a1
                  ori          s6, a7, 1093
                  andi         gp, t4, -1461
                  srl          s5, sp, zero
                  slli         s7, s4, 17
                  sra          t3, gp, t1
                  sub          t1, t0, s0
                  or           s7, t6, s8
                  addi         t3, s8, -621
                  slti         a6, s5, 178
                  sltu         a2, t1, t0
                  ori          s7, s8, -871
                  nop
                  nop
                  xor          zero, t3, a4
                  xor          a5, s5, s2
                  srli         s11, s7, 0
                  add          a5, t3, s4
                  srai         t4, s8, 31
                  andi         ra, a7, -1115
                  add          gp, a7, a1
                  xori         s1, t5, 1934
                  slli         ra, s5, 3
                  addi         t1, a0, -1963
                  nop
                  auipc        t0, 1026959
                  sltu         s0, s0, t4
                  xor          a5, s9, s2
                  slt          t4, ra, ra
                  ori          t6, s2, -935
                  add          t3, s5, t0
                  srli         a2, zero, 0
                  srli         a3, tp, 27
                  sra          s0, s0, s10
                  sub          t4, sp, a6
                  xor          t3, s10, t1
                  slli         gp, a6, 17
                  add          a3, a7, s7
                  addi         zero, s10, 1153
                  srl          gp, s11, s0
                  slt          zero, t4, a7
                  addi         zero, t4, -97
                  sub          a5, s4, t3
                  and          a3, a2, sp
                  slti         s6, s0, 27
                  auipc        s11, 500818
                  or           a7, s10, a1
                  sll          t6, s3, a1
                  sub          a3, s7, s1
                  lui          s10, 987529
                  slt          s9, gp, a0
                  nop
                  slt          zero, s11, a3
                  ori          s11, s10, -1078
                  add          s4, gp, gp
                  add          gp, s7, a0
                  xori         a4, a1, -441
                  sll          s5, s2, zero
                  add          a3, tp, t3
                  slti         t3, a4, -1474
                  auipc        s0, 997111
                  sub          sp, t0, a5
                  sltiu        t4, t4, -461
                  and          a1, s7, t4
                  nop
                  slt          a6, a6, a2
                  sra          s2, t4, ra
                  and          ra, s2, a2
                  and          t6, s2, s4
                  addi         s2, s7, -129
                  slti         s11, t6, 1920
                  slli         s8, s2, 18
                  addi         sp, t2, 1618
                  slti         a4, ra, -1282
                  sll          a6, gp, s11
                  or           t0, zero, s9
                  xor          ra, t4, s5
                  sra          a3, t4, s3
                  sub          s11, t6, a6
                  lui          t3, 663060
                  slti         t4, s10, -743
                  sltu         s6, s11, tp
                  sltiu        t5, sp, 1516
                  add          gp, s10, s8
                  lui          a3, 537261
                  slti         a2, t1, -785
                  srl          t1, a7, t4
                  addi         t5, a4, 1047
                  srai         s5, a0, 10
                  sra          s6, t3, a5
                  srli         a7, s1, 13
                  xor          s6, t0, t3
                  auipc        s6, 785520
                  ori          t5, s5, -792
                  xor          zero, s11, a4
                  sra          a6, t2, t6
                  srai         s2, s3, 5
                  auipc        a4, 550479
                  sub          s7, t5, s6
                  sltiu        a7, zero, -1346
                  srl          zero, s5, s2
                  ori          a4, a0, 356
                  add          a1, gp, a0
                  slti         s10, s10, 1070
                  slli         t6, a4, 1
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0x0
                  li           a1, 0x80225f40
                  li           s6, 0x80000000
                  li           a7, 0x80000000
                  li           s9, 0x0
                  li           a4, 0xb67aba50
                  li           t5, 0x0
                  li           a5, 0x80000000
                  li           a3, 0x80000000
                  lui          a1, 215372
                  add          a3, a7, s6
                  auipc        a3, 383945
                  add          a3, a4, t4
                  sub          a7, a7, a5
                  auipc        s9, 904881
                  sub          a5, a1, s6
                  lui          s9, 579507
                  auipc        a1, 68000
                  nop
                  sub          a5, a1, a3
                  sub          a7, t5, t5
                  auipc        s9, 219027
                  addi         t4, a7, -822
                  addi         a4, s11, -417
                  nop
                  auipc        a7, 707493
                  lui          t5, 83783
                  add          a5, a7, a5
                  addi         t4, s11, 1997
                  sub          a4, s9, s9
                  addi         s11, s6, 1254
                  lui          a1, 102420
                  auipc        a5, 804794
                  nop #end riscv_int_numeric_corner_stream_9
                  slli         s2, s6, 26
                  and          ra, t2, a3
                  slt          s11, t1, t5
                  nop
                  auipc        s1, 572239
                  or           s8, gp, t0
                  sltu         sp, a5, a1
                  srai         a4, zero, 10
                  sub          s10, s8, s1
                  slli         sp, a5, 7
                  sltu         t0, a7, a5
                  slli         s10, s6, 20
                  srl          a7, s0, a1
                  srai         t3, s1, 13
                  lui          s4, 248336
                  andi         s7, t4, -1809
                  slt          s5, s0, t1
                  ori          gp, sp, -1900
                  srai         a1, s4, 18
                  srl          t2, t1, gp
                  sltiu        s2, t2, -417
                  srai         t6, tp, 13
                  slt          a3, s1, t3
                  auipc        a7, 501036
                  lui          t2, 356621
                  srl          a2, t0, a1
                  sra          s4, s5, t6
                  slt          gp, tp, s3
                  slt          s11, s3, a3
                  andi         s0, t2, 1517
                  xori         a1, sp, 199
                  slt          s9, t2, t2
                  add          s8, t4, s6
                  xori         t5, gp, 1856
                  srli         a6, ra, 10
                  sltiu        t5, ra, -847
                  andi         gp, gp, 127
                  slti         a2, s8, -1190
                  xori         s5, s6, -57
                  slti         a1, a5, 1904
                  srli         s1, a4, 14
                  slti         s2, s8, -1742
                  xori         ra, gp, -398
                  addi         s5, s10, -1539
                  srli         a4, a5, 20
                  slti         s6, a4, 1337
                  sra          s4, a5, s9
                  ori          s0, s9, -1150
                  sra          gp, a7, a0
                  sltiu        s0, s9, -1246
                  srl          t5, s3, t1
                  add          a2, sp, gp
                  slli         a6, tp, 2
                  slti         s4, t1, -443
                  andi         a5, gp, 682
                  sll          t0, t4, a3
                  and          a4, a4, a3
                  srli         s10, t3, 14
                  and          zero, t2, a5
                  lui          a7, 795954
                  xor          a5, s1, s10
                  slti         a5, t1, 1658
                  srli         s0, t0, 7
                  auipc        a1, 134547
                  sll          s7, t6, s0
                  add          ra, s5, t4
                  sll          zero, s4, t0
                  or           sp, t2, s2
                  srl          t2, s2, s8
                  sra          t2, zero, s8
                  slli         t0, a5, 18
                  sltu         s10, a4, a7
                  srli         s8, t0, 13
                  andi         t4, t3, -1321
                  lui          sp, 985260
                  addi         t0, t2, 1831
                  sll          s10, s8, t3
                  and          t3, t1, a5
                  sub          s8, a3, a6
                  auipc        t0, 447792
                  sltu         a5, s3, zero
                  and          gp, s7, s6
                  addi         gp, s7, 1810
                  or           s11, gp, a3
                  xor          s4, s2, s11
                  slti         s7, t1, -960
                  slt          s10, s0, sp
                  srli         a6, ra, 18
                  srai         s8, ra, 22
                  auipc        gp, 969560
                  add          s8, t2, s11
                  add          s11, a1, sp
                  andi         t4, gp, 1016
                  srli         t4, t3, 11
                  sra          t6, t0, gp
                  auipc        s5, 312417
                  slt          s7, t6, s3
                  or           t5, s2, gp
                  xori         gp, a2, -1490
                  srai         s8, s6, 2
                  sltiu        gp, a2, 1538
                  slli         s2, tp, 9
                  slti         s2, tp, -427
                  sltu         s8, zero, s1
                  sltu         s6, s2, s0
                  srl          s7, a3, ra
                  sll          ra, t4, s1
                  xor          a4, s4, a5
                  xor          s10, a6, t4
                  addi         s9, a2, 1262
                  srli         s10, t0, 14
                  lui          s1, 214907
                  sub          s1, gp, s6
                  addi         a3, s1, 636
                  addi         ra, t1, 1835
                  srai         a7, s6, 15
                  xori         gp, s10, 728
                  sub          s4, t6, a6
                  and          s7, sp, t6
                  sltu         s1, a5, a5
                  xori         ra, t4, -653
                  sltiu        s7, ra, -748
                  andi         gp, a4, -778
                  sll          s5, ra, t5
                  slt          t5, t6, a4
                  add          s4, gp, s2
                  slli         s5, gp, 10
                  srai         zero, a4, 27
                  auipc        s2, 606993
                  or           t6, sp, t0
                  sltiu        s2, t6, -1422
                  addi         a7, s3, 484
                  nop
                  addi         a7, gp, -1897
                  srli         s9, t2, 14
                  or           a4, s11, t3
                  nop
                  sltu         a4, t6, t2
                  sltiu        s7, t5, 759
                  slti         s5, t1, -1344
                  auipc        s4, 587431
                  slti         t3, s10, -1212
                  lui          gp, 120257
                  or           t1, s9, t2
                  and          s2, ra, a6
                  and          s2, a5, a2
                  sll          t4, a4, s11
                  or           a2, s1, a3
                  srai         s5, s6, 19
                  xori         s2, a7, -853
                  and          s11, s0, t5
                  auipc        a1, 908839
                  andi         t1, t2, -352
                  srl          zero, s5, s4
                  sltu         s5, a0, s0
                  srli         s4, s10, 30
                  srai         a6, s8, 10
                  and          t0, s9, a1
                  nop
                  or           gp, s9, s6
                  sub          t4, s11, tp
                  sltu         s10, s4, s0
                  sltu         s1, a0, s9
                  srli         a7, a3, 9
                  slti         t0, t4, -1478
                  slli         s9, t5, 17
                  lui          s5, 858768
                  and          zero, s4, s4
                  ori          t5, zero, -1824
                  slt          s4, t3, sp
                  sltu         s7, s8, t4
                  slt          t5, ra, a2
                  slli         a2, s9, 23
                  sll          t6, t5, a2
                  sub          s0, t1, s9
                  sll          a5, s11, ra
                  andi         s6, a6, -1315
                  lui          ra, 507421
                  srli         t0, a3, 20
                  slli         a1, ra, 8
                  slti         s2, s1, 237
                  srai         t2, a4, 31
                  slli         sp, s2, 25
                  srli         t5, s1, 12
                  sll          zero, t0, s7
                  addi         t6, t0, 827
                  sub          s7, t3, s9
                  add          s9, a1, t0
                  srl          t3, s11, s2
                  sltiu        zero, tp, -41
                  andi         t5, a4, -1127
                  addi         s2, t3, -977
                  sll          s4, s8, s1
                  sltiu        a5, zero, -484
                  srli         a5, s3, 27
                  slli         sp, a2, 28
                  nop
                  sltu         s5, gp, s1
                  andi         s1, s11, 971
                  slt          s2, a6, a2
                  sra          t2, s3, a7
                  and          s6, s4, sp
                  slti         ra, sp, -1592
                  slt          s2, a1, s6
                  lui          a2, 972280
                  lui          sp, 728634
                  sltiu        s2, a6, -172
                  slti         t3, a7, -1046
                  sub          s0, t1, s6
                  srl          t0, s10, t3
                  xor          s11, s9, a4
                  xor          a2, s3, s7
                  srli         t6, s5, 23
                  andi         t4, gp, 1416
                  srai         s4, gp, 26
                  xori         s9, zero, -760
                  slt          a7, s10, a2
                  srli         s9, a0, 13
                  srl          t6, a4, t3
                  auipc        t6, 744939
                  ori          s11, s8, 1453
                  auipc        s5, 931244
                  andi         t0, s3, -337
                  slli         s9, s3, 23
                  sltiu        gp, t5, 1240
                  sra          sp, t4, s1
                  xor          t1, s7, s2
                  srl          t5, s4, t2
                  sll          s5, t0, gp
                  ori          t6, a0, 540
                  and          t6, s0, s7
                  xori         s10, sp, 337
                  ori          a6, s2, -340
                  and          a4, t2, zero
                  ori          a7, s1, 497
                  nop
                  slli         s11, t2, 27
                  slli         a1, t5, 8
                  slt          zero, s8, s8
                  srai         t0, s7, 10
                  auipc        a1, 415803
                  slli         a5, s11, 30
                  sltu         t4, t4, s11
                  andi         a4, tp, -1385
                  sll          sp, s6, s6
                  slt          s10, s6, s3
                  auipc        zero, 793287
                  xor          s2, a4, t6
                  slli         s7, ra, 5
                  andi         s9, a1, -457
                  slt          s6, t5, a7
                  sub          sp, s8, s0
                  sll          s11, t0, t3
                  ori          a3, a0, -1791
                  ori          t5, a6, 1674
                  slti         zero, ra, 1461
                  or           a6, zero, s2
                  or           s4, s9, zero
                  ori          a3, s5, 1539
                  sltu         t4, s9, s4
                  sra          s1, a3, s4
                  andi         s6, t4, 1220
                  slli         s8, s7, 0
                  andi         a6, t2, -292
                  srl          a2, t4, a5
                  and          t2, s9, s11
                  srl          s7, a7, sp
                  slli         s1, t4, 15
                  sub          gp, a4, s9
                  slli         t5, s1, 9
                  srli         sp, s0, 14
                  sra          a4, a0, sp
                  sltu         a4, t1, a3
                  lui          s4, 90879
                  srli         s8, s2, 7
                  sltu         a7, s6, a0
                  lui          s7, 956341
                  sll          s9, a2, sp
                  addi         t2, a7, -903
                  sltiu        s6, t1, -2035
                  andi         t5, t1, 1543
                  slli         t1, s1, 0
                  sra          t2, s2, s10
                  sub          a7, s7, a5
                  sll          a2, tp, a5
                  srli         a6, s11, 15
                  or           t6, a2, t5
                  and          s7, s11, s2
                  xor          t6, s0, s1
                  auipc        t2, 425137
                  slt          s11, a7, a0
                  and          s10, a3, zero
                  srl          a3, a6, tp
                  sra          ra, t4, s9
                  sltu         s1, t4, t1
                  sub          a6, s0, s8
                  sub          a6, t5, t3
                  sra          t5, sp, t4
                  lui          zero, 694463
                  ori          a7, s3, 161
                  addi         a2, s7, -690
                  or           s9, s11, a1
                  or           t2, t3, a7
                  ori          t3, a3, 1104
                  or           s11, s7, t6
                  or           t3, a5, a7
                  sub          a7, tp, a4
                  srli         s2, t0, 23
                  ori          t6, t3, 1185
                  slti         s11, s7, -1300
                  ori          s10, t4, 1475
                  slt          a3, s2, tp
                  sra          t2, s2, t0
                  xor          s0, tp, s3
                  nop
                  sub          s0, s1, s0
                  sra          s0, t5, t3
                  and          t3, s5, s9
                  lui          s7, 726494
                  slt          s11, s11, t0
                  srai         a2, a6, 24
                  sltu         s8, s1, s4
                  srli         sp, s1, 26
                  add          s8, t3, s5
                  addi         t1, t2, 643
                  slti         t6, s4, -699
                  srai         a7, s5, 30
                  slt          ra, s1, s10
                  srl          s6, a6, s3
                  lui          s4, 723912
                  nop
                  sll          gp, t1, gp
                  sltiu        sp, a6, -603
                  ori          a1, gp, 1338
                  sub          t6, s10, s10
                  sub          s7, s9, s7
                  slti         s0, s4, -706
                  srl          t5, a2, s3
                  sltu         s5, t2, zero
                  nop
                  srl          t6, s4, t2
                  slti         t0, s9, -774
                  slti         s9, sp, 740
                  srl          s10, t1, a5
                  auipc        a1, 493842
                  slti         t1, t0, 1362
                  sltu         t4, a1, s11
                  nop
                  nop
                  slt          ra, s11, a3
                  xori         zero, a7, 835
                  auipc        s11, 574214
                  lui          s6, 753085
                  or           s7, a5, sp
                  xor          s0, a4, a4
                  and          t2, t2, s1
                  srli         a2, s10, 25
                  sra          t6, a7, s10
                  srl          s8, a4, t1
                  auipc        s0, 290884
                  auipc        s6, 910918
                  xori         a4, s5, -1681
                  sll          s4, s4, a1
                  srl          t3, a3, tp
                  xori         s7, sp, 1568
                  and          s6, t3, a2
                  and          ra, s11, a5
                  slli         ra, gp, 0
                  sltu         s2, t0, s1
                  sub          s1, s0, sp
                  xor          a4, t0, s1
                  srl          s11, t3, t4
                  slli         ra, t1, 25
                  sub          gp, t2, t6
                  add          t1, a4, a0
                  nop
                  xor          s0, t6, a6
                  sll          ra, s3, s7
                  nop
                  sra          s9, t6, a4
                  xori         gp, s10, 846
                  lui          s10, 1039367
                  slti         s6, s8, 1072
                  sltu         s11, a5, s0
                  sltu         t5, s7, s4
                  slt          a3, a1, a5
                  and          t3, t2, a5
                  sll          s5, s11, s3
                  sub          s7, a7, a3
                  ori          s4, a6, 1381
                  or           ra, zero, s8
                  sub          ra, t4, sp
                  sltiu        s2, ra, 210
                  auipc        a4, 202151
                  lui          s11, 267240
                  srai         a2, a7, 22
                  add          a2, sp, s4
                  add          s7, a0, a1
                  addi         a3, a3, 12
                  ori          t5, tp, -1764
                  ori          t5, zero, 1221
                  xor          s9, t4, t2
                  sltu         a5, t1, t6
                  srl          a2, a5, s2
                  slli         sp, s2, 27
                  auipc        zero, 229409
                  lui          a4, 288943
                  sll          a1, s9, sp
                  srl          a4, t5, t4
                  slli         zero, a3, 21
                  sltu         gp, t6, s8
                  srl          s5, t4, t2
                  auipc        a4, 207334
                  xor          s7, a4, ra
                  xori         a6, t3, 1430
                  sltiu        a7, s2, -1997
                  or           zero, t1, s3
                  and          a7, t1, t2
                  andi         s8, tp, 132
                  slt          s2, s2, a4
                  xor          s5, zero, s6
                  nop
                  ori          s7, tp, 1745
                  andi         s7, s6, -1118
                  srai         gp, t3, 19
                  andi         a6, t4, 1092
                  slt          t6, a7, s2
                  slt          s9, s2, a1
                  slti         a5, gp, -1595
                  addi         s2, a4, -1629
                  slti         ra, zero, 741
                  addi         s0, a6, 416
                  and          s10, a5, a3
                  sltiu        a7, a2, -1846
                  nop
                  or           s4, t4, t2
                  sltu         a6, t1, s7
                  addi         t0, s9, 1000
                  slli         t1, s1, 4
                  slt          t5, gp, t6
                  slli         s11, a4, 23
                  add          sp, a5, ra
                  sltiu        t2, s3, -1648
                  sub          a3, ra, gp
                  srai         s7, gp, 21
                  and          s5, t5, a1
                  srl          t3, s2, a2
                  sltu         a1, s1, t0
                  or           a7, sp, t2
                  or           t1, a4, s0
                  slti         t4, s0, -2006
                  and          s4, s10, s11
                  and          t5, a7, t4
                  slti         s10, gp, -1363
                  addi         s10, s11, -295
                  xor          a6, a2, zero
                  sub          s7, s6, sp
                  sltiu        t2, a2, 1059
                  xor          s2, s7, gp
                  nop
                  xor          t3, t5, s3
                  nop
                  slt          t0, sp, s11
                  ori          s2, ra, 121
                  lui          ra, 678958
                  addi         gp, s8, -318
                  lui          a4, 651792
                  sub          s8, s8, s6
                  andi         t1, t6, -661
                  slt          s8, a1, t4
                  xori         a2, t3, -868
                  sll          s11, ra, a5
                  lui          s6, 526433
                  slt          s1, s6, a5
                  andi         a1, a0, 394
                  slli         a7, a6, 6
                  and          s7, t1, a2
                  sltu         s8, t4, gp
                  sll          s11, s0, s2
                  srl          s9, s7, s8
                  sltiu        gp, s11, 1990
                  addi         a4, s6, 138
                  sra          s6, s1, s1
                  andi         a4, s7, 1782
                  xor          s2, t4, a7
                  sltiu        t5, s4, 802
                  srli         a2, a7, 21
                  slti         a5, s7, 1763
                  nop
                  lui          s0, 402327
                  sll          s4, a0, s10
                  lui          sp, 97635
                  srl          ra, a7, s11
                  sub          s0, s0, s3
                  auipc        s11, 537555
                  sub          t6, a3, t5
                  andi         a4, a2, 2036
                  add          zero, a0, gp
                  ori          s9, a1, -1635
                  srai         t1, s5, 12
                  or           a2, sp, sp
                  andi         s0, s11, -466
                  nop
                  nop
                  nop
                  xor          s7, s2, ra
                  addi         t0, t2, 1113
                  nop
                  nop
                  andi         s9, s6, -1599
                  sltu         ra, t6, s3
                  xori         t5, a2, -48
                  andi         s10, a4, 1141
                  auipc        t2, 735606
                  srli         t0, s7, 23
                  andi         t3, a0, 475
                  auipc        a1, 45140
                  srl          s1, s9, a4
                  lui          s7, 500061
                  slti         t1, a1, 382
                  srli         zero, t6, 13
                  nop
                  andi         s2, s1, 1525
                  ori          s11, s11, 136
                  srli         s11, s0, 4
                  or           zero, ra, a1
                  slt          a5, s9, s1
                  sll          s8, t0, s0
                  slt          s9, a6, s6
                  xori         a5, s6, -1094
                  sltu         s11, s5, t1
                  xor          s9, ra, s2
                  slti         s7, s4, 714
                  andi         t3, a0, -1249
                  slli         t4, s4, 6
                  auipc        t2, 753399
                  lui          t3, 11307
                  xori         a6, s8, -1940
                  srli         gp, t2, 5
                  lui          s0, 793936
                  sltu         s6, s1, t3
                  sltu         a2, zero, s7
                  sra          s9, s6, gp
                  sltu         t2, a5, t6
                  lui          a5, 194860
                  addi         s11, t6, -874
                  or           s11, a0, a4
                  srl          zero, s9, a2
                  nop
                  and          s1, t5, t4
                  srl          a4, s7, zero
                  sltu         t0, t0, a4
                  slli         s10, a0, 6
                  slt          s11, a7, s10
                  srl          a3, s5, t0
                  sub          t2, s5, t5
                  auipc        s2, 482455
                  or           s0, sp, t2
                  xori         a5, a6, -676
                  slti         ra, s3, 1132
                  sltiu        a6, a7, 1743
                  lui          s11, 610027
                  auipc        a7, 198957
                  sub          zero, s6, sp
                  sub          s7, zero, ra
                  sra          s8, s9, s8
                  xor          t6, t2, zero
                  sra          sp, s6, gp
                  add          t3, a5, t1
                  slt          s11, sp, zero
                  sub          t4, a1, s8
                  sub          s5, a7, s1
                  srl          s9, s3, s7
                  srli         a1, a1, 25
                  ori          a4, a6, 1441
                  auipc        t1, 588095
                  xor          t6, s3, a4
                  auipc        s10, 829113
                  slli         gp, a1, 18
                  sltiu        s6, a2, 1127
                  sltiu        t4, t2, -791
                  sltu         t0, a2, s0
                  sub          s1, a2, t2
                  sltiu        t5, s7, 380
                  sub          t2, a1, s4
                  nop
                  and          s4, a7, tp
                  xori         s8, s0, -1169
                  ori          zero, s1, -1818
                  xor          s7, s4, t3
                  srli         a2, t0, 17
                  xor          a5, s9, a6
                  slli         s4, s8, 18
                  auipc        a5, 144747
                  and          a3, t3, t1
                  sltiu        s9, a6, 1504
                  slli         s2, sp, 30
                  lui          ra, 878168
                  slti         s0, s2, -851
                  xori         gp, gp, -998
                  or           s0, s4, s4
                  or           s4, t4, ra
                  srai         a4, a2, 18
                  slt          a5, t1, t2
                  andi         s4, s10, -1773
                  or           sp, tp, t5
                  xor          sp, s0, s9
                  xori         s8, s6, -967
                  addi         zero, s0, 433
                  sra          s7, a5, a5
                  slli         t1, zero, 9
                  xori         t5, sp, -631
                  sll          t0, a1, s5
                  sub          t5, s6, t0
                  auipc        s0, 120111
                  slti         s7, t6, 1270
                  xor          t1, a5, s5
                  slti         zero, t4, -1459
                  srli         zero, t0, 31
                  addi         s4, s10, -1540
                  or           a7, s5, t4
                  or           t3, a7, t6
                  addi         gp, s3, -141
                  slti         a2, s8, 765
                  nop
                  sub          a5, t0, a7
                  slti         t4, s9, -766
                  andi         gp, a6, -703
                  sltiu        zero, s4, 1724
                  sltiu        t1, t5, 1548
                  sll          a7, s0, tp
                  slt          ra, sp, s11
                  sub          a6, s3, t3
                  xor          gp, t6, t5
                  addi         t4, s7, -1706
                  sra          t3, s1, s5
                  lui          zero, 58316
                  slt          t0, ra, t4
                  sra          gp, t2, a5
                  sub          s1, a1, tp
                  xori         a1, t0, 17
                  sll          a2, zero, s10
                  slli         t6, a2, 19
                  lui          sp, 881576
                  slt          s1, a1, a2
                  addi         t4, t3, -402
                  andi         s7, tp, 1351
                  sub          s0, s4, s6
                  srl          t2, s7, t4
                  srli         t1, a1, 10
                  xori         s10, a0, -194
                  sll          ra, s9, a5
                  sll          t5, a2, a4
                  or           ra, s4, s2
                  xori         a4, a7, 1641
                  addi         s4, t4, 1910
                  srli         t0, s1, 16
                  xori         t3, zero, -769
                  sra          s6, t3, s4
                  and          t2, t4, s2
                  auipc        s2, 519449
                  nop
                  slli         t6, s6, 21
                  nop
                  sltiu        s5, s2, 129
                  sltu         t3, s10, a6
                  addi         t6, sp, 1196
                  or           s8, t4, a6
                  add          s7, a5, sp
                  srai         s2, a2, 6
                  slli         gp, s2, 11
                  slli         ra, s3, 29
                  sll          a2, ra, s11
                  sra          a5, a4, s8
                  and          a4, s1, s0
                  add          s2, sp, s0
                  ori          zero, s2, -1025
                  slli         s6, s0, 21
                  xor          a6, s11, gp
                  srli         zero, a3, 31
                  xori         sp, s5, 232
                  sltu         s8, a4, s11
                  nop
                  or           a1, tp, t0
                  ori          a4, s6, -946
                  xori         sp, s3, -833
                  ori          sp, s6, 1981
                  sub          a4, t6, s3
                  lui          s5, 564586
                  ori          t1, s0, 1626
                  srli         s8, t1, 10
                  add          a6, t6, gp
                  ori          t3, s10, -1726
                  sltu         zero, s4, a6
                  srl          t2, a4, s3
                  slli         sp, t4, 15
                  addi         s10, s6, 250
                  sub          t5, s1, s11
                  srai         t0, s5, 30
                  sub          t4, s0, a4
                  and          s0, a4, s2
                  slti         t4, s4, 1271
                  slti         zero, ra, 1524
                  slli         a7, zero, 23
                  xor          a7, s8, t0
                  sltiu        a4, s1, -63
                  srl          a1, s1, ra
                  nop
                  xor          t4, a1, ra
                  srl          s0, a5, t4
                  addi         t2, s2, -1988
                  sll          a5, a1, zero
                  ori          a7, t3, -1147
                  sltu         gp, s1, t2
                  srai         s0, s8, 0
                  sltiu        s6, a2, 388
                  addi         a7, s10, 179
                  slt          s6, t5, s8
                  xori         t1, s3, 1819
                  sll          a4, s9, s7
                  srl          s11, a7, a4
                  or           a3, t6, s10
                  ori          zero, sp, -113
                  sltu         t2, a6, s6
                  slti         t3, t0, 658
                  nop
                  sll          t2, t0, t6
                  ori          s7, tp, 318
                  andi         a1, ra, -1404
                  ori          a3, s3, -334
                  sra          s1, t1, s3
                  sra          s9, a2, t3
                  nop
                  nop
                  nop
                  sra          s2, s0, a6
                  add          a2, s11, t6
                  add          a7, s11, a2
                  nop
                  lui          s2, 233422
                  nop
                  srli         t2, s9, 13
                  srai         a5, tp, 29
                  slt          s5, a3, a0
                  sra          t1, s4, gp
                  srai         s7, zero, 26
                  srl          s9, tp, s1
                  sltu         s2, a3, t3
                  sltu         s4, ra, t5
                  lui          t0, 648398
                  andi         s1, a3, 1896
                  nop
                  or           s11, t4, sp
                  sll          a1, s10, s8
                  ori          a4, s4, 333
                  srai         sp, s5, 22
                  sltu         a7, s11, s8
                  xor          a5, t3, a5
                  sltiu        s0, s2, 998
                  slti         a7, a3, -263
                  sub          s1, a1, a7
                  add          a7, a3, s7
                  addi         a4, s3, -1317
                  xori         a7, a5, -690
                  sra          a3, s1, sp
                  lui          t2, 375662
                  sltu         s1, ra, t1
                  ori          a2, t5, -1805
                  lui          t4, 720638
                  add          sp, s4, s4
                  auipc        t5, 75347
                  slti         s4, t6, -1681
                  sra          t4, s3, t2
                  srai         a7, t1, 13
                  sltiu        a4, t1, 528
                  slli         t3, t5, 9
                  xor          s7, sp, t5
                  slt          s0, s6, s10
                  add          t0, ra, s3
                  sll          t1, s7, s0
                  xori         a1, s11, -1997
                  srai         t5, tp, 11
                  sltu         s11, a7, a4
                  andi         s8, s8, -752
                  auipc        a6, 739702
                  sra          zero, t0, t5
                  slt          s4, s5, a0
                  xor          t2, s1, t4
                  srai         s7, s10, 11
                  add          zero, gp, s10
                  and          ra, s3, a3
                  slt          s2, a6, t3
                  slti         s2, a3, 173
                  ori          s5, t4, -1127
                  and          s9, t6, a2
                  andi         s9, a0, -918
                  sltu         s8, s0, s0
                  lui          t4, 591255
                  sll          a3, tp, t0
                  sltiu        t2, a5, 1337
                  sltiu        gp, a5, 1361
                  nop
                  sub          s6, a1, s11
                  addi         a2, t6, 1901
                  sll          s5, zero, gp
                  srl          s11, t0, s6
                  srl          s2, s5, s10
                  xori         t6, t3, -1697
                  sra          s0, s0, t4
                  andi         s10, s7, -302
                  lui          t2, 917463
                  lui          s4, 893499
                  xori         s7, gp, -800
                  ori          s2, zero, -2004
                  or           t4, s9, zero
                  ori          a4, s11, 1345
                  sll          a5, gp, t5
                  addi         t6, sp, 800
                  slti         a7, t2, -1213
                  slt          ra, a3, s6
                  srli         t5, a4, 14
                  sltu         s6, t5, t2
                  sltu         t2, a4, s6
                  add          a7, s3, s5
                  sltiu        t2, sp, -1052
                  sub          sp, t5, s7
                  andi         zero, s0, 727
                  xori         s11, a3, 1865
                  sll          a7, a4, t4
                  add          s8, s4, s9
                  srai         t3, s11, 30
                  slti         ra, t0, -1742
                  addi         s6, a6, 316
                  add          zero, s11, t1
                  srli         s10, s4, 3
                  add          s0, s3, s0
                  auipc        s11, 221942
                  sub          zero, sp, a7
                  srai         s9, a4, 10
                  sll          s0, t5, s5
                  auipc        t1, 682964
                  srl          s5, s0, s5
                  srai         ra, s6, 8
                  slli         t4, a2, 6
                  slti         s0, sp, -1335
                  sltiu        s9, t5, 286
                  lui          a5, 174411
                  addi         a4, s7, -147
                  srli         s10, a0, 1
                  srai         s0, a2, 25
                  sltiu        s4, gp, 2038
                  srli         s10, s3, 13
                  andi         t1, t4, -502
                  slli         a2, s3, 14
                  srli         t2, a1, 21
                  add          a7, a3, t0
                  slt          t2, a7, s2
                  sltiu        s6, a7, 495
                  slt          t3, s9, t3
                  slli         t5, s4, 27
                  andi         t5, s10, -1500
                  add          s1, s6, s10
                  and          s5, s2, a6
                  lui          a4, 684906
                  and          a5, s8, s10
                  slli         s6, a4, 8
                  nop
                  xor          s1, t6, sp
                  and          t1, t3, s9
                  ori          t0, s5, -1041
                  auipc        s6, 244628
                  and          t1, a5, a5
                  andi         t6, t2, 1620
                  slt          s7, t6, s1
                  slt          t5, gp, sp
                  ori          s9, s2, -1657
                  and          s10, s7, tp
                  slt          a5, s1, a2
                  sltiu        t0, s0, 1640
                  sltu         gp, s0, a0
                  xori         a3, sp, -1291
                  sll          a2, s11, s0
                  slt          a6, s7, s6
                  or           s1, a5, s9
                  andi         s9, s11, 610
                  nop
                  srai         ra, a2, 4
                  sub          t0, a1, s4
                  sub          s9, t5, ra
                  lui          s7, 643572
                  sra          a3, s7, s9
                  add          gp, s10, zero
                  xor          a6, s11, s5
                  srli         t6, a6, 16
                  addi         t1, s7, 28
                  slt          s11, s8, t0
                  andi         t4, t0, -965
                  lui          ra, 190014
                  ori          zero, a3, 1525
                  srai         a3, s2, 11
                  add          t3, tp, zero
                  add          s11, a2, s11
                  slt          a2, t6, s1
                  sll          a1, s3, s2
                  srli         zero, s6, 24
                  sltiu        t0, a7, 1874
                  andi         sp, t0, 1893
                  sra          s2, s11, a4
                  srli         gp, s11, 21
                  ori          s2, ra, 790
                  slt          s5, s7, s1
                  add          t5, s0, tp
                  slti         sp, a4, 1341
                  srl          s5, s0, a2
                  srai         a2, t1, 11
                  and          s6, s11, s10
                  andi         a1, t0, 1158
                  slti         s0, a1, 1494
                  sltiu        s7, a1, -1374
                  xor          s0, s11, gp
                  sll          s9, a1, s4
                  slti         s1, s2, -525
                  srl          s1, t6, s1
                  slli         t3, t0, 0
                  slli         t5, s11, 29
                  and          t1, s9, a2
                  slt          t3, sp, a5
                  nop
                  sra          t1, s8, zero
                  sra          s1, s11, t4
                  addi         t5, zero, -2029
                  sltiu        t5, a0, -1309
                  srl          zero, t1, a3
                  lui          s0, 22
                  andi         sp, a0, 565
                  srl          a2, s5, s3
                  sub          s9, s9, s11
                  and          a1, t4, a0
                  sltiu        t3, t1, -1076
                  andi         gp, a4, 1073
                  sltiu        a3, a2, -964
                  xori         s0, a4, -1180
                  and          sp, a1, a2
                  xor          sp, s2, a4
                  xor          a6, a7, a1
                  srl          t1, s6, s7
                  and          gp, s4, t5
                  sra          sp, s10, s9
                  auipc        s2, 959193
                  or           t3, a4, tp
                  ori          sp, t3, -666
                  ori          t4, t0, 692
                  slti         a5, s1, 1568
                  lui          s11, 212958
                  srli         a2, s11, 15
                  or           s0, t2, a3
                  xor          s0, gp, t6
                  slt          zero, t1, s10
                  andi         s1, t5, 200
                  and          s7, a7, a0
                  nop
                  srai         gp, zero, 11
                  sll          s0, ra, t1
                  sub          t1, a1, s9
                  slti         a7, t1, -509
                  slti         s7, sp, 337
                  or           s10, t1, s2
                  nop
                  sll          s6, t1, sp
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
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
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

mmode_exception_handler:
                  addi x10, x10, -4
                  sw  x4, (x10)
                  add x4, x10, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x10, x4, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x6, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x6, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x6, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x6, x29, ecall_handler
                  li x29, 0x1
                  beq x6, x29, instr_fault_handler
                  li x29, 0x5
                  beq x6, x29, load_fault_handler
                  li x29, 0x7
                  beq x6, x29, store_fault_handler
                  li x29, 0xc
                  beq x6, x29, pt_fault_handler
                  li x29, 0xd
                  beq x6, x29, pt_fault_handler
                  li x29, 0xf
                  beq x6, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x4, x10, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x10, x4, zero
                  lw  x4, (x10)
                  addi x10, x10, 4
                  mret

load_fault_handler:
                  add x4, x10, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x10, x4, zero
                  lw  x4, (x10)
                  addi x10, x10, 4
                  mret

store_fault_handler:
                  add x4, x10, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x10, x4, zero
                  lw  x4, (x10)
                  addi x10, x10, 4
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x4, x10, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x10, x4, zero
                  lw  x4, (x10)
                  addi x10, x10, 4
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x4, x10, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x10, x4, zero
                  lw  x4, (x10)
                  addi x10, x10, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x4, x10, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x10, x4, zero
                  lw  x4, (x10)
                  addi x10, x10, 4
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
