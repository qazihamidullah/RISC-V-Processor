.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x0, 0x3
                  li x1, 0x7
                  li x2, 0x80000000
                  li x3, 0xe
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0xe
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xef026aee
                  li x13, 0x0
                  li x14, 0xe58042db
                  li x15, 0x80000000
                  li x16, 0x3
                  li x17, 0xe7e22edf
                  li x18, 0x80000000
                  li x19, 0x0
                  li x22, 0x80000000
                  li x23, 0xd1eeaab3
                  li x24, 0xfc9c94d9
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0xd
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0xf4128c28
                  li x31, 0xf79531e
                  la x20, user_stack_end
main:             li           a4, 0x1db96edb #start riscv_int_numeric_corner_stream_18
                  li           t2, 0xa8c8a3f9
                  li           a6, 0x0
                  li           s2, 0x80000000
                  li           t1, 0xffffffff
                  li           a1, 0x0
                  li           s8, 0x80000000
                  li           s6, 0xffffffff
                  li           s3, 0x0
                  li           a5, 0x0
                  lui          s8, 589238
                  auipc        a5, 558279
                  addi         s8, a5, -1262
                  lui          a4, 1157
                  add          s8, s3, s8
                  nop
                  addi         s6, a6, -811
                  auipc        a4, 396571
                  addi         s8, a5, -758
                  sub          a4, a5, t2
                  add          a6, a4, t1
                  addi         a4, s2, -1991
                  lui          s6, 65040
                  nop
                  sub          s8, a5, s6
                  lui          s3, 637636
                  lui          a5, 805179
                  auipc        s2, 805649
                  auipc        a6, 54957
                  add          a6, s8, t2
                  addi         a4, a6, 1398
                  auipc        t1, 689506
                  addi         a5, t2, 1868 #end riscv_int_numeric_corner_stream_18
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           a6, 0x0
                  li           t4, 0xc09098db
                  li           t0, 0xffffffff
                  li           ra, 0x0
                  li           s10, 0xffffffff
                  li           s2, 0xffffffff
                  li           a4, 0xffffffff
                  li           t5, 0xffffffff
                  li           a1, 0x0
                  addi         a3, ra, -1910
                  addi         t4, s2, -106
                  auipc        a6, 672861
                  add          a6, ra, ra
                  add          s10, s2, a4
                  sub          ra, s2, t5
                  addi         a4, a4, -548
                  add          a1, a6, t0
                  lui          ra, 1023905
                  lui          t0, 83925
                  add          a6, a4, t0
                  sub          a3, a4, ra
                  nop
                  nop
                  auipc        t0, 785922
                  sub          s10, a1, s10
                  nop
                  sub          a4, a4, s10
                  sub          a3, a1, t5
                  nop
                  lui          ra, 809127
                  lui          t5, 366991 #end riscv_int_numeric_corner_stream_11
                  li           s8, 0xa0f48509 #start riscv_int_numeric_corner_stream_9
                  li           a3, 0x0
                  li           sp, 0x0
                  li           gp, 0xffffffff
                  li           ra, 0x3d63c4e2
                  li           tp, 0x80000000
                  li           s10, 0xffffffff
                  li           t3, 0x80000000
                  li           t6, 0x0
                  li           t2, 0xffffffff
                  nop
                  sub          s10, t2, s8
                  lui          t6, 690786
                  auipc        ra, 751390
                  addi         s10, s10, -894
                  lui          sp, 1007653
                  nop
                  auipc        ra, 796634
                  nop
                  auipc        sp, 409976
                  add          s8, t2, s10
                  addi         tp, t3, -1258
                  nop
                  sub          s10, s10, t6
                  sub          t6, s10, t3
                  nop
                  nop
                  sub          t3, t3, sp
                  nop
                  sub          s10, ra, s10
                  sub          t6, t6, t2
                  sub          t2, t6, tp
                  lui          ra, 953160
                  auipc        a3, 302036
                  nop #end riscv_int_numeric_corner_stream_9
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           t2, 0x0
                  li           s11, 0x80000000
                  li           a6, 0x0
                  li           s1, 0x282c2d06
                  li           a0, 0xffffffff
                  li           t0, 0xffffffff
                  li           a1, 0xffffffff
                  li           s8, 0x80000000
                  li           s2, 0xffffffff
                  nop
                  add          t2, s8, t2
                  sub          s8, a1, s1
                  sub          s2, t0, t0
                  nop
                  sub          s2, a1, a0
                  addi         a0, s11, -50
                  auipc        s1, 196345
                  sub          s2, s8, t0
                  auipc        s11, 361935
                  auipc        s11, 937973
                  auipc        s1, 945090
                  sub          a0, a0, s8
                  nop
                  sub          t0, a6, t2
                  add          t2, s1, a6
                  sub          s8, s11, s2
                  add          s8, s8, t2
                  addi         t2, t1, -249
                  nop
                  lui          s11, 882891
                  lui          a0, 840210
                  nop
                  addi         a6, s8, 1754
                  nop
                  nop
                  addi         s11, a6, 1878
                  addi         a1, a6, -1143
                  sub          a6, s8, a1
                  add          t1, t0, a6 #end riscv_int_numeric_corner_stream_13
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_35
                  li           a5, 0xffffffff
                  li           a1, 0xffffffff
                  li           s6, 0x0
                  li           s3, 0xd757e53c
                  li           s11, 0x80000000
                  li           t1, 0xffffffff
                  li           s9, 0x80000000
                  li           a4, 0xffffffff
                  li           s2, 0x5417ae04
                  nop
                  lui          s2, 300890
                  nop
                  sub          s2, s9, a1
                  auipc        s3, 327332
                  addi         t0, t1, -1186
                  add          t0, a4, t1
                  nop
                  auipc        s2, 1034145
                  auipc        t0, 580554
                  add          a5, s3, t0
                  auipc        a1, 318573
                  addi         s9, a5, -1788
                  lui          s9, 241528
                  nop
                  lui          a4, 391194
                  lui          s6, 1029605
                  addi         s3, t1, 1305
                  addi         a1, a4, -1044
                  add          s9, s6, s2
                  nop
                  lui          s11, 977216
                  sub          t0, a4, a4 #end riscv_int_numeric_corner_stream_35
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           t2, 0x16488b6d
                  li           sp, 0x0
                  li           s11, 0x0
                  li           ra, 0x0
                  li           s3, 0x0
                  li           a3, 0x80000000
                  li           a7, 0xb408f59
                  li           tp, 0xffffffff
                  li           a6, 0x0
                  nop
                  nop
                  addi         tp, a3, 1504
                  addi         tp, s3, -1740
                  lui          t2, 13763
                  add          a3, t2, a7
                  auipc        ra, 808270
                  auipc        a6, 252441
                  addi         tp, a7, -1809
                  nop
                  add          ra, s11, t3
                  add          t2, sp, a3
                  sub          sp, t3, t2
                  auipc        tp, 36087
                  lui          sp, 27390
                  lui          t3, 761644
                  sub          tp, a6, a6
                  auipc        sp, 499234
                  addi         sp, t2, 563
                  sub          s3, a7, ra
                  auipc        sp, 952423
                  nop
                  lui          t2, 930515
                  addi         s11, t2, -1779
                  nop #end riscv_int_numeric_corner_stream_27
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           s8, 0x80000000
                  li           s0, 0xc912e239
                  li           tp, 0x80000000
                  li           a0, 0xffffffff
                  li           a5, 0xffffffff
                  li           t3, 0xffffffff
                  li           s7, 0x80000000
                  li           s11, 0x24afbc81
                  li           s2, 0x0
                  lui          s11, 1017866
                  addi         tp, s2, 958
                  add          a0, a3, a0
                  nop
                  add          s8, tp, s7
                  lui          s0, 765011
                  addi         s2, a3, -1179
                  nop
                  addi         t3, s0, 1134
                  lui          a5, 952806
                  addi         s11, tp, 741
                  auipc        tp, 200811
                  lui          s2, 545761
                  lui          s11, 238160
                  auipc        tp, 226597 #end riscv_int_numeric_corner_stream_36
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_28
                  li           s10, 0x0
                  li           s7, 0xffffffff
                  li           gp, 0x0
                  li           a1, 0x6ac815e1
                  li           s0, 0x0
                  li           s1, 0x0
                  li           t0, 0x11dcac4f
                  li           ra, 0x80000000
                  li           sp, 0x2c80395d
                  addi         a1, sp, 1027
                  lui          t0, 1030193
                  sub          s10, s7, gp
                  nop
                  add          s7, s0, ra
                  addi         s0, a5, 456
                  sub          a1, s10, s0
                  auipc        s7, 808078
                  nop
                  addi         sp, s1, 1452
                  nop
                  addi         s0, s0, 652
                  lui          s0, 480997
                  sub          a5, s0, a5
                  lui          a5, 98640
                  lui          s7, 115812
                  nop
                  add          s7, gp, s7
                  addi         a5, s10, 1456
                  sub          s7, sp, sp
                  lui          s0, 827924
                  auipc        s10, 35909
                  auipc        a1, 959416
                  sub          s7, t0, s10
                  add          s7, s7, ra
                  addi         gp, gp, -439
                  lui          t0, 588751
                  add          a5, t0, s0
                  addi         gp, s7, -1883
                  sub          s10, a5, s7 #end riscv_int_numeric_corner_stream_28
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           t5, 0x0
                  li           s1, 0xffffffff
                  li           a0, 0x80000000
                  li           gp, 0x0
                  li           a5, 0x7212e095
                  li           s2, 0xaf90f4a1
                  li           s9, 0x80000000
                  li           t6, 0x80000000
                  li           t3, 0x455e5fe
                  addi         s2, s2, -1442
                  addi         gp, t6, -284
                  add          t3, t5, a5
                  addi         a0, a0, 1216
                  auipc        t3, 664555
                  sub          s1, t3, t6
                  auipc        a5, 255155
                  add          a0, t3, t3
                  addi         t5, t3, -103
                  lui          s2, 1015540
                  auipc        t6, 611459
                  add          s2, s2, s2
                  sub          t3, s2, t6
                  sub          s1, a1, a0
                  lui          s9, 861518
                  lui          t6, 18413
                  addi         s9, a5, 1195
                  add          s2, s2, t5
                  add          gp, a5, a0
                  add          a5, a5, a1
                  auipc        gp, 628902
                  add          a5, gp, gp
                  auipc        a1, 853070
                  addi         a0, a5, 655
                  auipc        s9, 821033
                  sub          s2, gp, s9 #end riscv_int_numeric_corner_stream_10
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_23
                  li           ra, 0x36bb636
                  li           s10, 0x80000000
                  li           a0, 0xffffffff
                  li           s3, 0x0
                  li           a5, 0x0
                  li           t5, 0xd6062174
                  li           t0, 0x80000000
                  li           gp, 0x80000000
                  li           t6, 0x3911f283
                  auipc        ra, 465252
                  addi         ra, t6, 1193
                  addi         t5, ra, -189
                  sub          t6, ra, ra
                  sub          s3, a5, gp
                  nop
                  sub          a5, t5, t5
                  auipc        gp, 567582
                  nop
                  add          t6, a5, t0
                  addi         s3, a0, -185
                  sub          a0, s3, a5
                  auipc        s3, 6737
                  auipc        s3, 235643
                  sub          t0, t5, s3
                  lui          a0, 457233
                  lui          ra, 182511
                  lui          gp, 60250
                  addi         ra, t0, -1035
                  add          s3, a0, gp
                  nop
                  lui          s10, 765127
                  lui          ra, 133291
                  nop
                  addi         t6, t5, 719
                  add          t2, a0, ra
                  nop
                  addi         t5, gp, 1463 #end riscv_int_numeric_corner_stream_23
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           a6, 0x0
                  li           a4, 0x0
                  li           s8, 0x88add0e3
                  li           sp, 0xffffffff
                  li           s10, 0xffffffff
                  li           s0, 0xffffffff
                  li           ra, 0x80000000
                  li           s11, 0x0
                  li           t3, 0x80000000
                  nop
                  addi         s0, t4, 727
                  lui          sp, 424552
                  lui          ra, 1047472
                  add          s0, ra, t4
                  lui          ra, 749577
                  lui          s11, 394555
                  addi         t3, s10, -773
                  add          t3, s8, a6
                  addi         sp, sp, -1238
                  addi         t3, a6, -929
                  sub          t3, t4, a6
                  addi         s8, ra, 1828
                  lui          ra, 831978
                  sub          a4, sp, s10
                  lui          t4, 235635
                  add          s10, a4, a6
                  add          ra, ra, ra
                  nop
                  lui          s10, 14048
                  add          ra, t4, t4
                  auipc        t3, 303364
                  add          sp, s0, s10
                  sub          ra, ra, t4
                  nop
                  addi         t3, t4, -294 #end riscv_int_numeric_corner_stream_25
                  li           t3, 0x8da7ef09 #start riscv_int_numeric_corner_stream_38
                  li           gp, 0x80000000
                  li           sp, 0x4cb696c8
                  li           ra, 0x80000000
                  li           a0, 0xffffffff
                  li           s0, 0xa5fbf0bc
                  li           tp, 0x0
                  li           s7, 0xffffffff
                  li           t1, 0xffffffff
                  li           s2, 0x80000000
                  nop
                  nop
                  sub          t1, gp, s2
                  nop
                  add          sp, s2, a0
                  nop
                  lui          gp, 984212
                  nop
                  auipc        gp, 690397
                  auipc        a0, 40254
                  sub          ra, s7, s2
                  nop
                  nop
                  nop
                  nop
                  addi         sp, ra, 293
                  addi         tp, t3, -1652
                  sub          s2, s7, s7
                  add          t1, s0, tp
                  sub          a0, s0, s2
                  auipc        sp, 929657
                  addi         ra, t1, -1513
                  addi         t3, t3, 1256
                  auipc        ra, 384531
                  sub          s7, s2, a0 #end riscv_int_numeric_corner_stream_38
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_26
                  li           t2, 0x80000000
                  li           t1, 0x14d0afc5
                  li           s3, 0x8bae9cd5
                  li           s2, 0x8ad2acb9
                  li           s6, 0xffffffff
                  li           s7, 0xade00434
                  li           gp, 0x0
                  li           t5, 0x0
                  li           a5, 0x80000000
                  add          t6, s2, s6
                  nop
                  nop
                  nop
                  nop
                  lui          t1, 876824
                  sub          t1, t2, s2
                  add          a5, s3, s2
                  nop
                  nop
                  addi         t5, t5, 81
                  nop
                  nop
                  lui          a5, 295953
                  add          t5, t2, s6
                  addi         t6, gp, 162
                  sub          t1, gp, t6
                  lui          t1, 643762
                  addi         gp, t5, -478
                  addi         s3, t2, 1359
                  auipc        gp, 922081
                  add          t6, t5, s2
                  nop
                  addi         t5, s2, 1472
                  nop
                  auipc        gp, 274354 #end riscv_int_numeric_corner_stream_26
                  li           t2, 0xedd913fb #start riscv_int_numeric_corner_stream_37
                  li           sp, 0x0
                  li           s3, 0xb4867339
                  li           ra, 0xffffffff
                  li           s9, 0x0
                  li           s10, 0x80000000
                  li           t5, 0x0
                  li           a7, 0x0
                  li           a6, 0xffffffff
                  li           t4, 0x0
                  sub          t2, t2, a7
                  add          s10, t4, a6
                  lui          a6, 42927
                  lui          a6, 824035
                  auipc        t4, 123799
                  auipc        t2, 398940
                  sub          s10, s3, sp
                  nop
                  nop
                  auipc        a7, 819558
                  sub          sp, t2, s9
                  sub          t4, t2, a7
                  auipc        ra, 974509
                  addi         t2, t2, 1567
                  addi         t4, s9, -195
                  auipc        ra, 216196
                  add          a6, s9, t4
                  addi         s9, s9, 437
                  add          a6, a6, a6
                  nop
                  add          s10, t4, s10 #end riscv_int_numeric_corner_stream_37
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a7, 0xffffffff
                  li           t1, 0x80000000
                  li           t5, 0x0
                  li           a4, 0x0
                  li           ra, 0x0
                  li           s0, 0xffffffff
                  li           tp, 0x0
                  li           s7, 0xffffffff
                  li           s11, 0x0
                  auipc        a7, 220632
                  sub          s7, t5, t1
                  sub          ra, a7, a7
                  sub          s0, s6, s0
                  auipc        s6, 644956
                  addi         s6, s0, -491
                  addi         s11, t5, -1498
                  nop
                  add          s11, s0, t1
                  nop
                  lui          t5, 168957
                  auipc        a7, 155434
                  addi         a7, a4, -984
                  nop
                  add          t5, a7, s11
                  lui          s0, 424088
                  lui          s7, 603938
                  lui          s11, 632663
                  addi         s7, s7, -405
                  lui          ra, 947698
                  addi         tp, s11, 2045
                  add          s7, t5, t5
                  add          s6, a4, s11
                  auipc        t5, 604612
                  auipc        s0, 789954 #end riscv_int_numeric_corner_stream_14
                  li           s9, 0xfa79a3bd #start riscv_int_numeric_corner_stream_16
                  li           a7, 0xb5dafcd7
                  li           s6, 0xffffffff
                  li           a5, 0xffffffff
                  li           sp, 0x0
                  li           t3, 0x80000000
                  li           t0, 0x0
                  li           s11, 0x80000000
                  li           tp, 0xd183a121
                  li           s1, 0x80000000
                  auipc        s9, 689011
                  addi         tp, a7, 1369
                  sub          tp, sp, s1
                  add          s1, t0, sp
                  add          a7, sp, t0
                  lui          t0, 129078
                  lui          a7, 368532
                  add          a5, t0, a7
                  nop
                  nop
                  addi         a7, a5, 332
                  add          t3, t0, s11
                  auipc        tp, 2600
                  nop
                  addi         s9, s9, -1351
                  addi         sp, tp, 20
                  auipc        a7, 144136
                  sub          tp, sp, a5
                  nop
                  auipc        t3, 59486
                  sub          a5, tp, tp
                  lui          t3, 980875
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_16
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t0, 0xffffffff
                  li           t1, 0x98126484
                  li           a5, 0x0
                  li           t6, 0x5414d4a9
                  li           s8, 0x0
                  li           gp, 0xffffffff
                  li           s2, 0xffffffff
                  li           s3, 0x80000000
                  li           t5, 0x0
                  sub          s2, s3, a5
                  lui          s8, 249379
                  nop
                  auipc        t0, 713831
                  sub          s3, s3, gp
                  addi         gp, gp, -364
                  nop
                  nop
                  add          t0, t5, sp
                  lui          t6, 643181
                  lui          t1, 830499
                  sub          s3, t5, sp
                  sub          s8, t5, t6
                  sub          t0, t5, t5
                  sub          a5, s8, s2
                  add          t0, t6, t0
                  nop #end riscv_int_numeric_corner_stream_15
                  li           a5, 0x7a09d4b9 #start riscv_int_numeric_corner_stream_21
                  li           t1, 0xb8186c96
                  li           t6, 0x0
                  li           s8, 0xb58ec362
                  li           s0, 0x80000000
                  li           s10, 0x80000000
                  li           t2, 0x0
                  li           s2, 0xe260beaa
                  li           tp, 0x80000000
                  li           t0, 0x80000000
                  lui          s0, 872178
                  lui          t6, 244728
                  lui          s8, 959053
                  nop
                  sub          s8, s2, a5
                  lui          a5, 353158
                  nop
                  addi         s0, s10, 1919
                  auipc        t6, 144773
                  addi         tp, s10, 378
                  lui          t0, 675377
                  nop
                  auipc        a5, 267314
                  nop
                  add          t1, s0, s0
                  nop
                  addi         t1, s2, -1882
                  auipc        s8, 661264
                  lui          s0, 1039798
                  sub          s2, s8, tp
                  sub          a5, a5, a5
                  addi         s8, t2, 813
                  add          s2, t2, s10 #end riscv_int_numeric_corner_stream_21
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           s10, 0x0
                  li           s8, 0x0
                  li           s1, 0xffffffff
                  li           sp, 0xffffffff
                  li           tp, 0x0
                  li           s2, 0x80000000
                  li           s7, 0x0
                  li           a1, 0x0
                  li           t5, 0x9c9145fb
                  auipc        t5, 540351
                  add          s7, s7, s7
                  auipc        t4, 833184
                  lui          t4, 787639
                  add          s7, s1, s8
                  sub          s7, s1, s2
                  auipc        s7, 371072
                  sub          s1, tp, tp
                  auipc        s7, 127959
                  add          tp, tp, s7
                  nop
                  auipc        s10, 258227
                  auipc        a1, 74716
                  lui          tp, 11306
                  sub          s10, s7, sp
                  sub          a1, tp, sp
                  lui          t4, 16828 #end riscv_int_numeric_corner_stream_20
                  nop
                  srli         a7, a4, 18
                  auipc        a6, 423624
                  nop
                  sll          a6, t2, s10
                  xor          t3, a5, s10
                  or           zero, s10, a0
                  xor          s7, t4, t3
                  slti         a5, gp, -1610
                  srli         tp, a7, 13
                  andi         a0, s9, 1572
                  ori          t5, s8, 2027
                  nop
                  addi         tp, a3, 718
                  sltiu        s3, s8, -148
                  addi         s7, t6, -1190
                  xor          s6, t5, s2
                  sltu         a1, gp, s4
                  auipc        sp, 801381
                  or           s2, a4, t5
                  add          s10, t5, t1
                  andi         a0, zero, 1498
                  slti         s3, zero, -918
                  slti         a3, gp, 171
                  srai         gp, s1, 7
                  sra          t6, s10, a1
                  sll          zero, a4, a3
                  or           s7, s5, s2
                  slt          s11, a1, s6
                  add          s10, a4, zero
                  sra          tp, a1, a6
                  xori         s9, a5, -1151
                  sll          a7, t6, s10
                  sll          t1, s9, t3
                  sra          a3, sp, s3
                  addi         t0, t1, -1947
                  slti         a5, a1, -79
                  slli         ra, s11, 19
                  sub          a3, a3, s0
                  or           a6, t5, t2
                  sll          a3, t1, a0
                  slt          zero, a6, gp
                  or           s8, t1, gp
                  andi         zero, a3, 795
                  srai         s1, a7, 18
                  auipc        sp, 208195
                  or           s8, gp, ra
                  and          ra, s4, sp
                  srai         s10, s8, 6
                  add          ra, a1, zero
                  nop
                  addi         tp, s6, 1556
                  xor          s8, a4, t6
                  or           sp, s10, s5
                  xori         t4, t5, -1595
                  auipc        a4, 566371
                  sra          tp, a3, a1
                  sltiu        tp, ra, -1199
                  sltu         t0, t1, t5
                  auipc        s9, 736332
                  sra          s0, t3, t4
                  srli         s11, s1, 18
                  srli         t4, t3, 1
                  sltiu        t4, a1, -1119
                  slti         s9, s7, -505
                  ori          s9, s9, 697
                  add          a4, s5, a0
                  add          t4, s7, s9
                  sub          t3, s7, ra
                  xori         s0, t6, -653
                  slti         t6, t3, 580
                  sub          s8, s8, s11
                  sltiu        t4, s10, 1761
                  nop
                  sltu         tp, s0, t0
                  sltu         s10, s4, s2
                  sll          t1, s7, a0
                  xori         t4, ra, 1896
                  and          t2, zero, t4
                  auipc        s2, 661745
                  andi         t2, s7, 1575
                  xor          a0, a0, t5
                  nop
                  andi         a7, a5, 309
                  slti         t1, t1, -1188
                  addi         zero, s5, 2002
                  lui          a4, 974531
                  ori          s1, s10, 1416
                  xori         s9, tp, 1054
                  slt          ra, t4, s6
                  slt          s9, gp, a0
                  xori         zero, tp, -520
                  addi         a7, s7, 1424
                  sltu         tp, s2, a2
                  sra          s7, s9, s0
                  nop
                  srli         ra, t1, 20
                  srai         s9, a1, 2
                  sra          s3, t2, t3
                  auipc        s3, 565646
                  or           s1, a6, s0
                  nop
                  slti         s0, t5, 1057
                  slli         s9, t3, 20
                  sltu         a0, a2, a3
                  sub          s9, t6, t4
                  andi         t0, t0, 1385
                  and          a1, a2, t0
                  sra          tp, s0, a6
                  srai         t3, t0, 16
                  sltiu        t6, t5, 1969
                  srai         sp, gp, 31
                  or           a6, a6, a6
                  srai         t2, tp, 29
                  xori         a3, s7, 1412
                  sltu         t5, t1, t5
                  xori         s2, a7, -232
                  sll          sp, s1, tp
                  slti         tp, s8, 970
                  srl          t1, zero, a2
                  srai         s9, zero, 24
                  slt          s8, a6, a6
                  srl          tp, t6, s7
                  xor          a7, s6, s2
                  sll          s0, s2, a0
                  and          s10, s0, zero
                  slti         s3, s5, -687
                  srl          t4, t5, a1
                  andi         tp, sp, 1246
                  slli         s9, s3, 23
                  lui          a3, 248262
                  or           zero, sp, s10
                  sltu         s6, t1, s9
                  addi         s3, s1, -1029
                  xor          s6, t3, t6
                  slt          zero, a5, a3
                  sll          t3, tp, t2
                  and          t3, t0, s11
                  nop
                  and          t2, s8, s1
                  sra          a4, s1, a4
                  slti         s9, a0, 694
                  ori          a0, a1, -1844
                  slt          s6, s8, s1
                  sll          zero, s9, t6
                  or           tp, t6, a3
                  slt          a4, a1, s7
                  andi         a3, t4, 131
                  sra          s3, t4, t3
                  and          a0, ra, t5
                  add          s0, s3, a0
                  sltiu        s9, t5, -1148
                  slti         s6, zero, -1105
                  or           a4, s3, s9
                  or           s7, a2, t6
                  add          a4, s8, zero
                  or           a5, a1, s11
                  and          a5, t4, a6
                  xori         s10, gp, -1381
                  auipc        s10, 994787
                  sltu         t5, s11, ra
                  and          s6, s1, s9
                  slli         a1, sp, 3
                  sll          t1, a1, s10
                  srai         s7, sp, 26
                  ori          t6, s5, 1629
                  slli         t4, a6, 1
                  and          s1, a2, s0
                  sll          s9, s4, gp
                  and          a3, t2, a1
                  slli         gp, zero, 19
                  srai         t5, s5, 22
                  slli         s9, s11, 10
                  slli         s9, zero, 23
                  add          a6, a1, s6
                  auipc        s8, 535347
                  srl          s7, a6, t4
                  xor          t6, a4, s7
                  slt          t5, s1, tp
                  srai         t0, t3, 18
                  sltu         s1, a6, s8
                  srli         s9, sp, 23
                  add          t5, s3, t5
                  and          a7, s9, a4
                  xor          t0, s9, a3
                  xor          t3, a1, s9
                  sltiu        zero, zero, -130
                  sltiu        s1, tp, 1550
                  add          a0, s2, t4
                  slt          t3, a1, s0
                  slli         s10, t6, 9
                  sll          t3, t6, s6
                  andi         s8, t4, 1256
                  sub          tp, a3, a4
                  srli         s3, s6, 14
                  lui          s11, 640944
                  slti         t5, s5, 456
                  and          t6, s6, s3
                  andi         zero, t3, 1124
                  xori         a3, s4, -1172
                  xori         gp, s4, -981
                  sra          s7, t3, sp
                  sltu         s10, s9, s3
                  addi         s7, s9, -1486
                  xor          s10, a3, t6
                  xori         tp, ra, -1552
                  ori          t0, a3, 479
                  ori          tp, s2, -1744
                  xori         tp, t3, 101
                  or           s0, s10, s3
                  sltiu        t4, s9, 1468
                  ori          t3, a1, 400
                  sub          s11, s4, s9
                  slt          a7, s6, s1
                  andi         t3, zero, 1849
                  sll          a3, t4, a7
                  nop
                  sub          a7, t0, s7
                  nop
                  andi         tp, s9, 216
                  or           s10, ra, a7
                  xor          a6, t1, t6
                  andi         t5, gp, -21
                  xori         s7, s0, -89
                  sltiu        s1, t5, -505
                  sll          t1, s5, gp
                  srli         s1, s8, 29
                  andi         gp, t2, 1707
                  add          a7, s5, s4
                  andi         a1, t1, -334
                  xor          ra, a7, a1
                  sub          s11, s3, t6
                  sltu         t2, t6, s6
                  srai         s10, a5, 28
                  sltiu        a3, a4, -1497
                  slti         a0, a3, 1660
                  xor          s10, s8, a5
                  srai         a5, s5, 23
                  srl          s0, zero, a7
                  slti         a4, a1, -1847
                  sra          s10, s6, s4
                  ori          s7, a3, -182
                  sra          s2, a3, s4
                  xori         s2, s3, -535
                  sll          zero, s10, a4
                  addi         sp, a2, 1787
                  srai         s2, a0, 6
                  sub          s1, t5, a3
                  srli         s3, s7, 29
                  slt          s7, ra, a3
                  sll          t3, a6, s0
                  sltu         a7, ra, a4
                  sra          sp, s0, a0
                  sll          a3, a1, t0
                  ori          s7, s10, 1365
                  srai         s9, zero, 5
                  sll          t0, t5, s6
                  xor          a4, s8, a5
                  ori          t0, a7, -642
                  slti         sp, t6, 1330
                  slt          gp, sp, s1
                  srli         s10, a2, 3
                  andi         t6, a7, -1571
                  and          t4, s6, s0
                  slti         a0, s10, -284
                  sltiu        ra, a3, -424
                  or           t5, a2, t3
                  sltu         a5, a3, s11
                  addi         t3, tp, 2038
                  slti         s10, s3, 162
                  sltu         a7, s7, a0
                  xor          a6, t5, sp
                  slti         a6, s2, -841
                  sltiu        s3, a2, 2045
                  add          t4, a0, t0
                  srl          t2, ra, s8
                  srli         s6, t3, 3
                  xori         t0, a2, 850
                  sll          a3, zero, t3
                  nop
                  slli         t5, s9, 8
                  nop
                  sltiu        s11, s3, 785
                  auipc        t5, 243832
                  or           t5, t3, a7
                  srai         a0, s0, 28
                  sltiu        t6, t3, 1159
                  sra          ra, s2, t3
                  sub          ra, s0, t4
                  slt          a6, s10, s7
                  nop
                  auipc        t0, 118484
                  sltu         tp, s11, t1
                  slt          a4, t5, sp
                  srl          a1, s2, a1
                  srl          s1, s1, sp
                  nop
                  auipc        t5, 593632
                  srai         gp, a2, 3
                  sltu         s11, s7, t6
                  sub          s9, s8, s8
                  add          a7, t0, s11
                  andi         s2, s6, -848
                  or           t3, s8, s5
                  sra          s2, t0, t2
                  slli         t6, a2, 5
                  slt          t1, a5, s7
                  and          s7, a4, t4
                  slli         a0, tp, 29
                  or           a3, s3, t4
                  sub          a3, t6, a7
                  auipc        s8, 747135
                  slli         a1, s1, 20
                  slt          ra, s5, s2
                  sll          s2, a6, s8
                  sltu         s8, ra, s8
                  lui          s10, 564651
                  slti         t1, t2, -154
                  srl          a4, tp, t6
                  srli         a6, a6, 14
                  sra          t3, s0, a3
                  addi         s9, gp, 1521
                  sub          s6, t2, a6
                  or           t1, s9, s9
                  sltiu        a4, t4, -1950
                  auipc        s3, 164249
                  sub          zero, t3, a0
                  nop
                  auipc        a7, 726920
                  xori         ra, ra, 1311
                  srli         s6, t6, 7
                  add          s7, t3, s3
                  or           gp, t1, s4
                  auipc        s6, 535514
                  xori         ra, t4, 372
                  sll          t4, s4, s11
                  and          s1, s2, s1
                  lui          t1, 122540
                  lui          t2, 663862
                  xor          t2, t0, t2
                  add          ra, s10, a4
                  sra          s1, a1, a0
                  sltu         a1, s10, t3
                  srai         a4, s7, 2
                  sub          s10, s11, s7
                  sra          s3, a6, a2
                  sll          s10, a7, zero
                  auipc        t3, 929019
                  slli         s10, s5, 1
                  lui          s9, 196573
                  sra          gp, a7, t5
                  add          t5, s11, a2
                  lui          s9, 578750
                  xori         tp, tp, -1080
                  addi         a5, s5, 202
                  nop
                  or           t6, s4, zero
                  addi         a0, s5, 108
                  xor          sp, a3, a6
                  sltiu        a6, s4, 148
                  xori         ra, s10, 1446
                  srai         t6, zero, 24
                  sra          a3, a2, s0
                  addi         gp, a5, -1422
                  sll          zero, tp, s5
                  xori         t6, s0, -1271
                  sltu         a1, a1, a7
                  slt          s7, s6, t1
                  auipc        a0, 998744
                  and          t6, s5, a5
                  sll          a4, a0, s11
                  srai         tp, t1, 19
                  auipc        t3, 222515
                  nop
                  sltiu        a1, t1, 1074
                  sra          t5, gp, s11
                  sltu         gp, a7, zero
                  slti         s7, s2, -1287
                  nop
                  xori         s10, s2, 1891
                  srl          t0, s0, ra
                  slli         s3, tp, 0
                  lui          a5, 755669
                  sltiu        a4, a4, -1300
                  and          s7, s5, s9
                  and          s7, ra, a5
                  srli         s11, a2, 6
                  srl          t2, tp, t6
                  sll          s10, t6, s11
                  addi         s11, t4, -650
                  ori          s8, s0, -972
                  ori          s2, a6, -327
                  auipc        a6, 764486
                  slti         t1, tp, 672
                  sltiu        s9, s10, 1546
                  addi         s11, s0, 113
                  sltu         tp, s9, s5
                  xor          t0, s8, t0
                  slt          zero, t6, a2
                  or           t3, s7, s2
                  sltu         s8, a1, a6
                  andi         s2, sp, 541
                  srli         a1, s2, 1
                  lui          t1, 565897
                  xori         s11, s6, -492
                  sll          a4, a5, s6
                  or           s9, zero, t1
                  nop
                  and          t4, tp, a2
                  xori         t1, a1, 1854
                  nop
                  srl          a7, s6, t2
                  addi         s2, s6, 886
                  srl          t2, s2, a3
                  xori         a1, tp, 3
                  and          s0, s1, gp
                  nop
                  lui          s7, 377105
                  addi         a7, t5, -444
                  sra          a7, s5, s5
                  nop
                  xor          t5, ra, a5
                  srai         a1, a1, 14
                  sra          ra, a3, s1
                  or           zero, s9, ra
                  slt          a5, s6, t4
                  ori          s6, gp, -29
                  sub          s11, zero, gp
                  add          s2, a0, t2
                  sltu         tp, s6, sp
                  sra          t0, s6, a1
                  srli         sp, t5, 9
                  add          ra, t1, a0
                  andi         a3, t2, -32
                  and          s10, s8, s3
                  add          sp, s11, t2
                  xori         a6, sp, 733
                  slti         t3, a5, -1134
                  addi         a7, s3, 740
                  and          t5, s9, t0
                  sra          sp, s9, s3
                  nop
                  slti         ra, a4, 822
                  lui          a5, 511731
                  sra          sp, gp, gp
                  xori         s0, s8, 2013
                  slli         t3, s5, 2
                  sll          a5, t5, a3
                  add          a6, t1, zero
                  srli         ra, gp, 18
                  addi         s2, s7, -169
                  sll          s11, s5, a4
                  sltiu        a7, a4, -1461
                  and          a5, s8, s10
                  add          s9, a5, a2
                  xori         t5, t2, 761
                  and          a1, a2, s2
                  sltu         s2, s5, t5
                  slti         a6, t5, 1808
                  srl          s7, t0, s8
                  srai         s6, t4, 31
                  sll          s2, t0, s6
                  sub          a3, s1, zero
                  sltu         t0, s3, s10
                  xor          a1, t1, s6
                  nop
                  slli         s2, a3, 6
                  and          s7, a5, s0
                  add          t1, t4, s2
                  auipc        s6, 438242
                  slt          s6, s9, s9
                  lui          s8, 825797
                  nop
                  sra          tp, ra, s0
                  slti         t0, s2, 618
                  lui          s9, 76897
                  ori          t1, s2, 602
                  xori         a0, zero, 289
                  addi         s9, a3, 303
                  or           t3, a4, t2
                  srai         s9, t1, 28
                  srli         t4, a1, 8
                  slli         zero, sp, 30
                  addi         s10, zero, -1305
                  sltiu        t5, a6, 908
                  lui          a3, 827023
                  srli         t6, t6, 9
                  andi         t5, s1, -1358
                  auipc        s6, 287665
                  slt          a0, a3, s4
                  lui          t1, 90911
                  ori          t0, s7, -916
                  andi         ra, t4, -1913
                  and          t5, s4, t4
                  srai         t6, s0, 9
                  sub          a0, a4, t4
                  sra          s0, s6, s3
                  slt          t3, ra, s6
                  xori         t0, s4, -265
                  nop
                  sltiu        tp, a5, -963
                  ori          gp, a5, 1596
                  slti         t5, a2, 515
                  auipc        a6, 320005
                  slti         t6, zero, 1329
                  xori         s2, a7, 1372
                  lui          s8, 475096
                  sra          s6, s3, s6
                  nop
                  sll          tp, sp, ra
                  lui          s11, 430804
                  srai         s0, s1, 8
                  sub          a1, t5, s1
                  slli         t6, t5, 2
                  auipc        t6, 187540
                  lui          t0, 728337
                  slt          t4, s8, a4
                  sltiu        s10, tp, -2035
                  slti         a5, t3, -1531
                  xor          tp, s9, a6
                  auipc        t3, 425556
                  srli         s7, a7, 23
                  addi         t4, s0, -1890
                  srai         s8, t6, 17
                  slt          a5, a4, s9
                  and          s0, s10, a4
                  lui          zero, 127709
                  srai         t5, s8, 16
                  sltu         s8, s9, a5
                  sra          a1, s9, sp
                  srl          a7, a3, t3
                  slti         s0, a1, -632
                  sub          t0, sp, t2
                  ori          t5, s3, 236
                  or           s10, a5, s4
                  ori          a5, t0, -324
                  sll          a4, s5, a2
                  and          t3, tp, s11
                  xor          ra, a4, t2
                  andi         s3, t0, -378
                  srai         a3, t3, 16
                  slt          a3, s6, t0
                  slli         t5, s10, 14
                  sub          s10, s5, a7
                  slti         sp, a2, 863
                  ori          a6, s5, -1188
                  sub          s7, sp, s2
                  addi         a3, s11, -1518
                  srli         s7, s11, 24
                  add          s0, t6, a5
                  sltiu        tp, s5, -751
                  sra          a5, s0, t1
                  sub          s9, s11, s6
                  srli         t2, t5, 16
                  slli         s7, a6, 20
                  or           zero, a0, zero
                  slt          s7, t0, a5
                  slt          t3, s4, t3
                  srai         s9, a0, 24
                  auipc        a3, 966790
                  sll          t3, s11, s3
                  and          s3, a0, s5
                  and          sp, a3, s3
                  sltiu        a4, t2, -283
                  lui          s7, 829824
                  sub          a4, a1, t1
                  and          s0, t4, s0
                  sltu         t3, t6, zero
                  sub          s11, s8, ra
                  add          s9, gp, t1
                  slt          a5, s0, s9
                  sub          t0, ra, t1
                  and          s6, t2, tp
                  srli         a7, s6, 6
                  and          t5, s10, s1
                  sltiu        a5, s8, -1991
                  slli         s7, s7, 16
                  sra          a3, s5, t2
                  nop
                  slli         s3, s4, 27
                  sltu         tp, s7, s0
                  or           a4, gp, s0
                  andi         s2, ra, -1205
                  slli         a1, tp, 10
                  add          a4, t6, t1
                  slt          gp, t2, a3
                  xor          t0, a3, a7
                  slt          a0, a2, a5
                  slti         t2, t3, -1231
                  add          a0, a1, t4
                  lui          s10, 1042093
                  sll          tp, s1, t3
                  xori         s6, s1, 1762
                  or           s1, ra, s2
                  auipc        t1, 826001
                  and          a1, s3, a5
                  sll          ra, t2, tp
                  add          s9, zero, s7
                  sll          a6, a2, ra
                  sub          ra, a6, ra
                  or           s8, gp, a5
                  add          t1, a2, a3
                  nop
                  sll          a1, a2, t5
                  srli         a1, t0, 19
                  add          a7, s5, t0
                  sub          t0, s0, s10
                  sltu         t4, s11, s6
                  srl          a4, sp, t2
                  addi         a5, a5, -98
                  or           tp, t0, t6
                  ori          s8, tp, -1987
                  srli         s8, t5, 7
                  sltu         t0, t6, t6
                  slti         a4, a1, -1092
                  sltu         a5, t2, t3
                  sltiu        t3, a6, 494
                  slli         s6, a1, 5
                  add          s0, t2, s4
                  andi         s8, sp, 1641
                  srai         t1, a0, 5
                  srai         t1, a3, 11
                  sub          ra, s9, t2
                  sub          tp, s5, s6
                  addi         s8, a3, -1825
                  sll          gp, a5, t3
                  xor          sp, s11, a7
                  or           s3, t3, a7
                  sub          s6, tp, s6
                  and          t4, s6, s9
                  xori         t6, t6, 1040
                  nop
                  xor          a6, t4, gp
                  sll          a1, ra, t2
                  nop
                  ori          s2, sp, 534
                  ori          t4, s6, 238
                  add          s11, a1, ra
                  slt          ra, s2, s3
                  sra          s1, gp, s7
                  slt          s8, a5, zero
                  sll          s1, s5, a2
                  lui          a4, 621437
                  nop
                  add          s0, t4, a0
                  sra          sp, s4, t3
                  addi         s3, s8, 278
                  auipc        s2, 420398
                  auipc        a3, 273881
                  srai         t5, s9, 13
                  or           s1, t2, s11
                  addi         sp, t6, -1691
                  sll          tp, t5, a7
                  nop
                  slli         gp, t0, 3
                  sltiu        s2, t2, -1602
                  srai         t2, s0, 19
                  sltiu        s7, s9, -1877
                  sltu         s2, s5, a2
                  and          gp, t2, a7
                  sub          s1, sp, ra
                  srli         gp, a4, 19
                  sltiu        t1, t6, 552
                  andi         t2, a6, -666
                  srl          t5, s3, tp
                  srl          a7, s0, s2
                  add          s11, t5, a1
                  auipc        a4, 733378
                  auipc        t0, 84971
                  srai         s1, a4, 27
                  ori          sp, ra, -539
                  sltiu        s9, s5, 1583
                  auipc        t6, 888360
                  ori          s8, t0, -53
                  sub          s1, s4, s7
                  srai         a1, s1, 15
                  xor          tp, zero, s4
                  or           a7, a4, gp
                  xor          s8, zero, s11
                  nop
                  srl          s0, s0, a5
                  sra          gp, s5, t5
                  and          s6, a1, s4
                  slt          a3, a7, a4
                  and          s6, s6, s6
                  or           sp, a6, a6
                  sll          s7, tp, s5
                  ori          s1, t5, -830
                  or           s10, a7, a7
                  andi         a6, t3, -605
                  srl          t2, t3, t3
                  srai         t0, a1, 25
                  sltiu        a1, s9, 1777
                  or           s8, tp, t1
                  lui          a0, 912761
                  ori          t4, gp, -720
                  and          tp, ra, a2
                  ori          s7, gp, 466
                  sub          s9, s2, s9
                  srl          s11, s11, a5
                  lui          t6, 338288
                  srai         a3, t1, 6
                  slt          s11, s2, s11
                  slti         s0, a1, 1942
                  slti         s7, zero, -1061
                  xor          t0, t3, t0
                  xor          sp, s8, t2
                  xor          t3, sp, s0
                  addi         t5, t2, 229
                  sltiu        s8, ra, -912
                  lui          a0, 116349
                  sll          a1, s5, t0
                  slt          a7, t6, t6
                  sltiu        s2, s1, -1292
                  srl          s7, t2, t5
                  or           t5, t1, t4
                  sltiu        s7, s7, -1913
                  add          t2, ra, s10
                  slti         s6, gp, 1209
                  or           a4, t6, a5
                  and          a4, sp, t1
                  srai         a4, t2, 14
                  add          t4, t2, t0
                  xor          s8, s2, a2
                  lui          t2, 748082
                  nop
                  lui          t1, 126316
                  nop
                  sll          t3, s11, s9
                  slti         t5, t2, -1844
                  lui          s0, 692087
                  xori         s10, s4, -1167
                  xor          gp, s2, s1
                  xor          t6, a0, s3
                  slt          a4, s8, a1
                  xor          s0, a0, a6
                  auipc        a3, 699365
                  sra          a0, gp, s5
                  sra          s11, sp, a7
                  andi         s11, zero, -1320
                  nop
                  srai         s2, t6, 8
                  sll          gp, s9, t0
                  srl          s1, a6, t3
                  or           s3, s7, t4
                  sltiu        s6, s6, 799
                  srl          s10, t2, s5
                  or           t3, s2, s4
                  add          zero, s0, s4
                  sltu         s8, s9, a2
                  sltiu        s1, t2, 710
                  slli         a4, tp, 13
                  sltu         ra, sp, s0
                  or           s8, t5, t6
                  sltiu        zero, a5, -738
                  andi         s11, a1, 1723
                  and          s2, a3, a5
                  srl          t2, s3, s1
                  or           s7, s2, gp
                  ori          t0, t2, -370
                  or           t2, zero, s3
                  nop
                  srai         s6, t5, 0
                  addi         s11, s2, 1096
                  slt          s6, t1, a6
                  xor          s6, zero, a4
                  andi         a6, zero, 487
                  sltiu        tp, t2, 169
                  srli         t2, t1, 27
                  slti         ra, s7, -1493
                  ori          zero, a3, -1095
                  sra          sp, sp, t4
                  and          tp, a6, a6
                  sltu         a7, s4, t0
                  add          tp, a4, s8
                  and          t3, zero, t0
                  slt          a1, t6, a2
                  addi         s8, t2, -1603
                  nop
                  lui          a7, 799564
                  andi         a7, s3, 292
                  srl          t5, a1, s8
                  sltiu        tp, t6, -40
                  slli         s7, s9, 6
                  andi         s7, a0, 141
                  and          a7, t3, ra
                  or           a6, a3, a0
                  srli         a7, a1, 6
                  srl          a0, a1, t0
                  ori          a1, a1, 1260
                  xor          a7, s0, t3
                  addi         gp, tp, 262
                  sltu         a0, t5, s2
                  and          a7, s0, s10
                  or           a4, a4, s4
                  sltu         a1, t6, t1
                  xori         a3, a7, 209
                  andi         a5, s11, -125
                  or           gp, tp, t6
                  xori         t0, t2, 466
                  slti         t4, s6, -124
                  slli         t0, s4, 2
                  srl          t3, s7, s8
                  slti         s2, a7, -979
                  xor          s2, s5, a7
                  sra          s7, sp, zero
                  ori          a4, a0, -1771
                  lui          t3, 279199
                  xori         tp, t5, 919
                  slt          a4, s9, s8
                  sub          t6, a3, tp
                  srl          t3, a7, s4
                  srli         t6, t2, 31
                  xor          a7, t4, t0
                  srl          s7, s5, a5
                  slt          a4, sp, t6
                  nop
                  nop
                  srl          ra, s1, t0
                  sltu         t5, s2, s6
                  srli         s9, zero, 7
                  or           s8, s5, a0
                  nop
                  xori         t6, s11, -1813
                  lui          gp, 602293
                  sll          t5, zero, s2
                  add          s7, a4, s3
                  sll          s0, a1, t4
                  lui          t0, 974058
                  ori          a7, a2, -520
                  and          a5, tp, s2
                  nop
                  xor          s10, t0, s5
                  srai         t3, s10, 9
                  ori          t0, t4, 653
                  ori          a3, a1, -505
                  lui          t0, 778092
                  xor          a3, a4, s6
                  nop
                  sra          s10, a6, a7
                  or           t2, t6, ra
                  addi         a6, a1, 971
                  sltiu        t4, s0, 330
                  slti         a0, s1, 1672
                  srai         s11, s11, 20
                  ori          zero, s2, 983
                  slli         s1, t5, 23
                  xor          s0, a6, zero
                  xori         s1, t1, -506
                  slt          ra, t1, s4
                  andi         t4, s4, -1510
                  auipc        a5, 705710
                  xori         s2, s8, 1054
                  and          t4, s11, s10
                  sltu         ra, t1, s5
                  sll          s8, a0, a6
                  slti         tp, zero, 792
                  addi         t5, a3, -1792
                  srai         s0, a3, 25
                  lui          t2, 69997
                  srli         a6, s5, 23
                  sra          sp, t0, t6
                  srai         t4, s6, 2
                  add          a0, t3, gp
                  auipc        a0, 740364
                  addi         t4, a6, 1049
                  addi         s0, zero, 187
                  slt          s0, t5, s7
                  auipc        a5, 956344
                  srl          t5, t3, sp
                  srl          a5, s1, a5
                  ori          sp, s4, 1934
                  sub          a5, a3, t4
                  slli         s0, tp, 23
                  sll          s9, s6, a4
                  slli         s11, ra, 24
                  xori         a7, a6, 1769
                  andi         a4, t6, 1291
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_29
                  li           a4, 0x0
                  li           a1, 0x71f9e298
                  li           a6, 0x0
                  li           a0, 0x6a1af59
                  li           t5, 0xffffffff
                  li           s2, 0xffffffff
                  li           s9, 0x5fa75ad8
                  li           s8, 0xffffffff
                  li           ra, 0x80000000
                  nop
                  nop
                  sub          a4, s6, t5
                  add          ra, t5, a6
                  auipc        a0, 810395
                  nop
                  auipc        t5, 779476
                  sub          t5, s8, a4
                  nop
                  auipc        s6, 653040
                  auipc        s9, 539210
                  addi         a4, a6, -783
                  sub          s2, a4, ra
                  sub          ra, a6, a4
                  sub          ra, s2, a4
                  lui          ra, 276910
                  add          s2, a6, a4
                  nop #end riscv_int_numeric_corner_stream_29
                  auipc        t1, 159301
                  srai         t0, a1, 24
                  add          a6, t6, s4
                  sltiu        s11, s8, 1222
                  auipc        a5, 324428
                  srl          s9, sp, t5
                  nop
                  slti         t4, s7, -477
                  sltu         s10, a4, s1
                  auipc        s1, 744659
                  slt          tp, a6, a4
                  andi         a6, s3, 15
                  sll          s10, zero, sp
                  srl          s0, t5, s0
                  slt          zero, s7, a4
                  slti         a4, a0, -1431
                  and          t2, a4, zero
                  xori         s10, t4, 1828
                  li           a3, 0x7e6dd9a6 #start riscv_int_numeric_corner_stream_12
                  li           a5, 0xaf7ed12
                  li           s3, 0x0
                  li           t4, 0xffffffff
                  li           sp, 0x80000000
                  li           s10, 0x80000000
                  li           t3, 0xffffffff
                  li           tp, 0x80000000
                  li           s2, 0xffffffff
                  li           s9, 0x0
                  nop
                  lui          sp, 424558
                  addi         t3, tp, 244
                  add          s3, t4, a3
                  auipc        s10, 734328
                  sub          sp, s10, s10
                  lui          sp, 919551
                  nop
                  lui          s3, 169313
                  auipc        s3, 636374
                  sub          sp, s9, s3
                  sub          s10, t3, t4
                  sub          a5, s9, a5
                  sub          a5, tp, t3
                  lui          a5, 115853
                  nop
                  sub          s2, t3, tp
                  lui          a3, 500297
                  auipc        t4, 986395
                  lui          s3, 711599
                  auipc        s9, 655638
                  auipc        s9, 840711
                  addi         s9, tp, -653
                  addi         sp, sp, -1454
                  lui          sp, 300533
                  sub          sp, tp, sp #end riscv_int_numeric_corner_stream_12
                  andi         s2, s8, 387
                  sltiu        s2, s4, -1181
                  srli         s8, t6, 19
                  slt          tp, s9, a2
                  lui          a0, 354345
                  and          s0, t2, a3
                  srli         s8, s0, 20
                  auipc        a3, 89049
                  andi         a3, s4, -1319
                  add          s7, a6, a0
                  srl          t0, tp, t2
                  srli         ra, s2, 31
                  addi         a4, s10, -1983
                  sll          s10, s7, gp
                  sltiu        a7, a3, -1823
                  ori          a3, a3, -1997
                  slli         s2, s0, 4
                  sra          s1, a7, s6
                  xor          t4, t0, t3
                  xori         a3, zero, 264
                  add          t0, s6, s5
                  auipc        tp, 234210
                  slti         t0, t5, 836
                  ori          t3, s3, -1381
                  ori          s2, s2, 621
                  nop
                  xori         t6, s3, 2017
                  sll          s2, tp, s1
                  sll          t5, a7, t6
                  addi         sp, gp, 1226
                  and          a5, t3, t4
                  sltu         t5, t1, s6
                  srli         t6, s2, 7
                  xori         a0, s6, -1301
                  add          a4, a5, s5
                  sltu         ra, a7, a5
                  srl          a4, a6, tp
                  xori         s1, a0, 422
                  slti         a3, a0, 576
                  slti         s0, a5, -234
                  srai         s1, s5, 24
                  xori         t3, s9, -90
                  xori         s6, s10, 1794
                  or           a5, tp, tp
                  ori          a6, t3, 464
                  sll          s2, t1, t6
                  sra          s11, a1, t6
                  lui          s0, 998109
                  or           s3, s5, t1
                  xori         t5, s6, -343
                  sll          t1, a0, s11
                  addi         t2, s10, -354
                  nop
                  ori          a6, a4, 1731
                  sll          a7, s6, sp
                  xori         t4, t1, -665
                  sltu         t4, s2, a7
                  slt          gp, t4, t2
                  slti         a7, s10, 1638
                  sltu         tp, s0, sp
                  sll          s7, s3, a6
                  auipc        s1, 740801
                  slti         s3, s0, 435
                  nop
                  sub          tp, s0, s5
                  sra          t2, s11, a1
                  srli         zero, s2, 14
                  srl          a7, a7, t1
                  slt          t3, t1, a0
                  slti         t1, zero, -30
                  addi         s1, a6, -903
                  ori          s3, zero, 1051
                  xori         a1, a4, 751
                  slti         s6, a4, -1764
                  srl          t0, a5, t2
                  addi         t1, s10, 116
                  nop
                  sra          s2, a7, s5
                  or           tp, zero, s9
                  sll          s6, a2, gp
                  auipc        sp, 922822
                  auipc        t5, 276832
                  sll          sp, a6, ra
                  andi         a4, a2, -1060
                  andi         s1, s10, 651
                  sra          t0, ra, a0
                  and          s6, t2, a7
                  sll          a4, t5, t1
                  slt          a4, a0, a3
                  slli         s9, s11, 8
                  sltu         s6, s0, tp
                  sltiu        s1, gp, 1755
                  xori         tp, a0, 1216
                  sltiu        t3, s10, 1203
                  addi         s2, t6, -1694
                  xor          ra, t4, s0
                  slli         t2, t1, 8
                  nop
                  slti         a1, s11, -187
                  and          s3, s10, s0
                  slti         ra, s8, -538
                  sltiu        s7, a0, 1448
                  srai         s7, s11, 27
                  add          t2, s7, t0
                  xor          t2, s4, s3
                  slti         a7, t2, 1750
                  or           a7, a3, t4
                  andi         t3, a2, -286
                  nop
                  nop
                  andi         a3, s11, -619
                  and          a5, a4, t2
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           sp, 0x80000000
                  li           a1, 0x80000000
                  li           s10, 0xffffffff
                  li           ra, 0xffffffff
                  li           s8, 0xbe9bee36
                  li           s11, 0x26d98eb7
                  li           t0, 0x80000000
                  li           tp, 0xa97307b9
                  li           s6, 0x0
                  nop
                  add          s6, ra, tp
                  auipc        a1, 187089
                  addi         t0, s11, 1308
                  auipc        s11, 82134
                  addi         s6, s8, -1504
                  auipc        sp, 695202
                  auipc        s6, 252620
                  auipc        s10, 334626
                  lui          ra, 323243
                  lui          a1, 782766
                  auipc        t0, 455903
                  lui          a1, 384275
                  nop
                  auipc        s10, 224940
                  sub          t0, t0, a1
                  auipc        sp, 498943
                  nop
                  sub          s8, s6, sp
                  auipc        sp, 470703
                  addi         ra, ra, 2032
                  addi         t0, s6, 313
                  sub          s6, sp, s8
                  nop
                  lui          s6, 295675
                  add          s6, s6, a1 #end riscv_int_numeric_corner_stream_6
                  slli         t1, t0, 1
                  sltiu        a3, a4, -728
                  lui          t0, 801708
                  lui          s3, 805419
                  auipc        t1, 410001
                  slt          gp, a0, s4
                  slt          s7, s9, a5
                  xori         ra, s8, 375
                  addi         s7, s7, 826
                  nop
                  andi         s6, s8, 991
                  xor          t6, a5, t6
                  srli         s7, s8, 12
                  xor          t0, a4, t6
                  and          a3, s9, a7
                  and          a6, a6, t3
                  nop
                  sltu         s0, s11, t1
                  add          s1, t1, a4
                  slli         a1, t1, 23
                  srli         t0, s0, 12
                  sll          s6, s7, t2
                  sub          s6, t6, t4
                  auipc        s6, 223777
                  sll          t2, a0, a3
                  andi         t2, ra, -496
                  lui          s6, 124281
                  slti         t5, t2, -381
                  sra          tp, s7, s10
                  and          a4, s3, a1
                  slti         a5, a6, -244
                  andi         s6, s1, 595
                  sub          s8, ra, a1
                  add          s0, a2, s9
                  srai         ra, tp, 0
                  srl          t6, s10, s0
                  and          a5, t2, s10
                  auipc        t0, 40313
                  slli         s7, t6, 26
                  srai         t5, t6, 27
                  srai         t0, a5, 12
                  addi         s2, s9, -1036
                  sltu         s6, s7, s3
                  ori          sp, s11, -1242
                  andi         a5, s5, -1639
                  sll          t0, gp, a7
                  sll          sp, t1, t4
                  or           s7, tp, a0
                  slt          zero, s8, a0
                  sltu         t5, a0, a0
                  and          t0, a7, s6
                  sltu         s11, s11, a3
                  add          s8, a1, s3
                  lui          tp, 952414
                  add          zero, s2, t3
                  nop
                  addi         t6, tp, 837
                  xor          sp, t1, t5
                  nop
                  xor          t4, s3, s10
                  add          t4, s5, t6
                  nop
                  srli         s10, a1, 29
                  and          a0, s8, ra
                  or           s11, s0, tp
                  slli         a3, ra, 16
                  sra          s7, tp, s8
                  auipc        s10, 609376
                  slt          t5, a4, a7
                  add          a4, sp, s2
                  slti         gp, a7, -1511
                  add          a7, s4, a1
                  slt          s7, s6, gp
                  slt          a7, a0, s3
                  andi         a6, zero, 547
                  auipc        s3, 126143
                  addi         s6, t4, -1450
                  sra          s9, ra, t5
                  auipc        s1, 601756
                  addi         a6, t0, 1510
                  sltiu        t3, sp, -525
                  or           s0, s0, tp
                  and          zero, sp, s2
                  slti         zero, s8, -841
                  add          a3, zero, a2
                  sltiu        gp, a0, -1345
                  srli         t0, tp, 28
                  nop
                  sltiu        gp, t6, -539
                  or           s6, s0, gp
                  xor          s1, a0, t4
                  sub          t5, s2, s10
                  slli         s0, s2, 12
                  xor          s2, t0, t5
                  sltiu        t1, s5, -1664
                  srli         s7, t6, 6
                  auipc        zero, 878469
                  xori         s1, a3, -1428
                  lui          t1, 334576
                  xori         s10, s6, 610
                  sra          t6, s0, zero
                  srai         s8, ra, 1
                  add          a4, s9, a5
                  addi         s11, s7, -364
                  addi         a7, t1, 1713
                  slti         s0, a4, -1059
                  sltu         t5, a4, s9
                  srli         s7, s9, 11
                  ori          a4, s11, 1449
                  sub          t2, s1, s2
                  srai         a0, t5, 16
                  srai         t3, s10, 1
                  lui          gp, 766890
                  addi         s0, t3, -456
                  addi         s1, t5, -1466
                  or           a4, tp, s0
                  srai         t2, a1, 6
                  or           t4, t6, t6
                  slt          t5, a5, a7
                  slli         tp, t4, 2
                  slt          ra, s9, zero
                  sltiu        sp, a2, -2030
                  nop
                  or           a0, a3, tp
                  srl          t1, s6, s6
                  slt          ra, gp, s10
                  xor          t5, s5, a3
                  srai         t5, gp, 9
                  srai         s8, ra, 6
                  sltiu        tp, s2, 1778
                  srli         a5, s10, 9
                  and          zero, t1, s9
                  sltu         s9, gp, a0
                  sub          sp, a2, t1
                  srl          a0, t4, s5
                  slli         t2, gp, 3
                  sll          a5, t3, s7
                  sll          s0, a0, gp
                  ori          tp, s9, 418
                  xori         s0, a6, 679
                  or           a6, s7, t6
                  srai         s7, tp, 29
                  sltu         a0, s4, s0
                  srai         s2, s4, 30
                  sub          a7, s6, s6
                  sltiu        s11, s9, 347
                  sub          gp, s8, t2
                  slti         a3, gp, 1018
                  auipc        t3, 1017404
                  and          a0, ra, s10
                  or           a5, s3, t3
                  slli         t1, ra, 3
                  slt          t4, tp, s6
                  ori          s3, s3, 170
                  lui          t6, 403982
                  and          t6, s6, a6
                  sll          s11, ra, a5
                  add          a3, sp, a1
                  ori          s8, a3, -1177
                  srl          tp, s10, t0
                  addi         s1, a0, -783
                  xori         t4, s6, -146
                  sra          sp, a4, s5
                  sltiu        s3, s7, -1274
                  srli         s9, a0, 31
                  or           sp, a1, s2
                  and          ra, a0, a7
                  xor          ra, a4, t4
                  ori          a4, gp, 446
                  auipc        s0, 687299
                  sltu         t3, t1, a2
                  slt          s6, s0, tp
                  add          a3, s2, tp
                  slti         s3, s5, 1707
                  sll          s9, a5, s10
                  add          s3, a7, s3
                  sra          s10, t4, a3
                  sltu         s0, a4, t5
                  srl          t5, a0, s9
                  srl          a1, t1, t0
                  ori          s0, a6, 1069
                  slli         s9, s9, 9
                  xori         s7, s7, -1609
                  ori          a0, sp, 391
                  sltu         a5, t6, a4
                  and          s2, t3, s7
                  sltu         t2, a3, t6
                  lui          t4, 214767
                  add          s11, t6, s8
                  srli         s10, s10, 24
                  xori         a5, t0, 1897
                  add          a6, t1, s6
                  slt          s8, s3, s5
                  sll          s6, s3, t6
                  li           a6, 0xef8e3bb9 #start riscv_int_numeric_corner_stream_2
                  li           s6, 0xffffffff
                  li           s9, 0x0
                  li           s7, 0xe2914037
                  li           t0, 0x1b15e74c
                  li           ra, 0x0
                  li           t3, 0x80000000
                  li           gp, 0xbb6de180
                  li           s2, 0x80000000
                  li           sp, 0x80000000
                  nop
                  addi         t0, t0, 765
                  lui          sp, 922776
                  addi         sp, t0, 2013
                  lui          s7, 403043
                  auipc        s6, 595990
                  nop
                  auipc        s2, 946336
                  nop
                  addi         t3, s9, 1142
                  auipc        s9, 971920
                  auipc        ra, 374685
                  addi         sp, t3, 1703
                  sub          t0, s9, s9
                  sub          s7, ra, a6
                  sub          s9, a6, a6 #end riscv_int_numeric_corner_stream_2
                  or           a4, a2, s1
                  andi         s11, a7, 584
                  slli         t3, t3, 16
                  sra          a6, s1, a5
                  srai         s2, s9, 27
                  slt          s7, a2, a4
                  sra          t3, a5, s1
                  sll          zero, t5, gp
                  sltu         s3, s4, a1
                  sltiu        ra, a1, -898
                  addi         tp, a5, 706
                  srai         s10, s9, 1
                  and          ra, a0, s3
                  ori          s3, s4, 1029
                  slti         a0, s2, -739
                  add          s7, t6, a4
                  xori         zero, t1, -484
                  sltu         t2, a7, ra
                  slli         a6, s5, 0
                  sub          a4, t3, t1
                  or           a4, s8, a7
                  lui          s6, 906857
                  sra          a5, s3, a3
                  ori          s10, t5, 609
                  slti         s6, t0, -367
                  lui          s7, 588190
                  ori          t1, t2, -6
                  auipc        zero, 731581
                  lui          zero, 696157
                  xori         tp, a2, -1401
                  slt          a6, t1, s9
                  slt          a1, s11, s1
                  lui          s2, 481501
                  sltu         a7, sp, t2
                  srli         t6, s7, 30
                  addi         a7, s1, 691
                  sub          s1, a5, sp
                  nop
                  addi         gp, sp, -774
                  xor          tp, s9, ra
                  sltu         zero, s11, a3
                  nop
                  xor          zero, s8, ra
                  slt          s2, s10, a4
                  or           sp, t6, a1
                  srai         s0, s9, 9
                  slti         a5, a0, -223
                  xor          tp, a2, t4
                  or           a6, a3, a0
                  sll          s7, t0, t0
                  add          s7, t5, sp
                  sub          t2, t0, a5
                  sltiu        s0, a7, -1126
                  andi         sp, tp, -384
                  and          t0, s10, a5
                  ori          t0, t1, -393
                  sltu         t3, s5, t2
                  nop
                  nop
                  srl          t5, a3, s7
                  addi         zero, a7, -1124
                  srai         a4, s5, 30
                  slt          t1, ra, s1
                  sll          gp, t4, tp
                  sltiu        s11, a3, -187
                  andi         s11, a3, 195
                  sll          s3, a2, s10
                  ori          sp, s2, -451
                  add          a6, s1, s0
                  nop
                  lui          a1, 762612
                  sub          s11, s7, s2
                  slli         sp, tp, 15
                  sub          t6, zero, gp
                  add          a4, gp, t1
                  sltiu        s2, ra, -1849
                  or           t0, zero, a4
                  srai         t2, s3, 17
                  auipc        t5, 455591
                  sra          a0, s2, s9
                  slt          t1, zero, t5
                  sltiu        s0, s6, 416
                  lui          ra, 752509
                  sra          s8, s8, sp
                  slli         s9, a4, 6
                  andi         a6, t1, 1577
                  xori         a0, a1, 1499
                  or           s10, t1, t2
                  or           a6, ra, s5
                  srai         t1, s2, 23
                  sll          gp, s1, s11
                  add          s1, s1, s5
                  srai         s7, a5, 27
                  auipc        t0, 61165
                  slli         a1, s9, 27
                  slt          s7, ra, a4
                  addi         s11, tp, 925
                  sub          s2, t0, a2
                  slti         a7, a4, 265
                  andi         s0, t6, -1937
                  and          s7, a5, s2
                  sll          s7, t4, t3
                  sll          zero, tp, a5
                  addi         t3, t2, 1232
                  xori         t3, sp, 1804
                  sltiu        a1, a3, 1220
                  slt          a5, s9, s9
                  sra          s3, zero, s8
                  sra          a0, a4, s5
                  sub          a0, t2, t6
                  and          s6, s5, a6
                  lui          s9, 1035805
                  lui          a7, 1003413
                  sll          t1, t0, s1
                  slti         zero, a6, 1826
                  auipc        a3, 624560
                  addi         t6, s0, 1739
                  addi         s7, zero, -1976
                  sub          a4, a3, a7
                  lui          ra, 447180
                  lui          s11, 837407
                  xori         t2, t2, 1424
                  ori          t6, sp, 1375
                  srl          a7, s2, t2
                  andi         t1, t2, -470
                  lui          s3, 245596
                  xori         t3, s8, -1866
                  srai         gp, s7, 21
                  sltiu        t5, sp, -1962
                  lui          s7, 296812
                  add          t3, s3, ra
                  sra          tp, s4, s9
                  xor          s8, s8, zero
                  sltiu        t6, t0, 47
                  slli         a1, tp, 19
                  xori         a4, s7, -1433
                  or           s6, t3, s0
                  lui          gp, 918070
                  andi         s2, t2, -1246
                  and          s11, t0, sp
                  nop
                  or           s0, zero, s4
                  srai         t4, s10, 5
                  sltu         t5, a3, s7
                  sll          a1, t4, gp
                  slli         a0, a5, 4
                  sltiu        a0, t2, 915
                  srl          tp, a6, gp
                  add          gp, t6, s8
                  sll          a4, a3, s11
                  lui          a5, 565841
                  sltiu        s11, tp, 1149
                  srl          t2, a7, s9
                  srli         t0, s7, 5
                  sra          s11, a0, tp
                  sub          s3, zero, s8
                  sltiu        a6, t3, -1348
                  ori          s3, s9, -903
                  add          gp, a6, t4
                  xori         ra, t5, 1734
                  addi         a0, s9, -737
                  and          s7, a5, s2
                  and          s7, a2, gp
                  srl          t6, a4, a0
                  ori          a6, s10, 1828
                  sub          t5, sp, s8
                  sltu         gp, t4, zero
                  ori          t5, t5, 398
                  srai         t1, sp, 11
                  slti         s0, s0, -758
                  sra          a6, t1, s10
                  slli         a0, a7, 18
                  ori          s10, t3, -1963
                  auipc        ra, 218991
                  xori         a7, s11, -1714
                  srl          sp, a3, a0
                  and          a0, gp, a2
                  sub          t6, t1, s0
                  slt          s11, t1, tp
                  xori         tp, a6, -1132
                  srai         gp, gp, 16
                  ori          t5, t4, -1647
                  and          a7, t5, s10
                  sub          sp, a5, tp
                  xori         a1, ra, 701
                  sll          a5, s5, zero
                  nop
                  or           s9, t1, s5
                  ori          a0, a3, -708
                  and          t2, a4, a4
                  sltiu        a6, s7, 1480
                  slt          a0, s1, s10
                  sltu         a3, s5, s2
                  and          a0, s8, s8
                  nop
                  sub          t3, s11, zero
                  sra          a7, t5, s0
                  slti         s9, s4, 690
                  slt          t1, s4, sp
                  nop
                  sltiu        a1, a1, -1421
                  srli         s0, s6, 7
                  ori          a0, a2, 1428
                  slt          a7, s8, t3
                  sub          a1, s7, a0
                  lui          ra, 455657
                  sltu         t4, a2, t6
                  sltiu        tp, a1, -818
                  xori         t3, s5, 1652
                  nop
                  sll          a5, t2, t6
                  sll          a6, s3, t6
                  sub          tp, s10, a7
                  xori         s0, tp, 799
                  andi         zero, s5, -736
                  nop
                  srai         s11, a2, 12
                  sltiu        gp, s1, 286
                  srai         a4, s5, 18
                  srai         a3, sp, 30
                  sra          s7, s9, gp
                  srli         a7, t2, 25
                  xor          s11, a7, a2
                  xor          gp, s5, ra
                  and          s1, t0, t5
                  slli         t5, s11, 31
                  sltiu        s0, a4, -284
                  sll          s0, t3, s4
                  andi         a7, a6, -315
                  sra          s1, ra, t5
                  or           s3, t4, s2
                  sub          a5, s3, s0
                  or           t4, t2, s10
                  slli         zero, s2, 30
                  andi         s7, a1, 1398
                  sra          s6, s2, a3
                  or           s11, a7, a1
                  add          t3, t3, tp
                  add          zero, s9, s8
                  andi         t0, a6, -1505
                  slt          s2, sp, a7
                  sll          s7, t2, a1
                  add          t4, s7, t4
                  slti         t5, t4, -1650
                  sltu         t3, zero, t2
                  srai         s3, t1, 21
                  add          a6, s8, a7
                  li           s7, 0xf2d6c1c8 #start riscv_int_numeric_corner_stream_22
                  li           s6, 0x50add59
                  li           sp, 0x68e6cb1d
                  li           t6, 0x80000000
                  li           s3, 0x2a108426
                  li           s11, 0xffffffff
                  li           t4, 0x0
                  li           s2, 0x80000000
                  li           a4, 0x80000000
                  li           tp, 0xffffffff
                  sub          s3, a4, tp
                  addi         tp, sp, -925
                  auipc        s11, 313490
                  nop
                  nop
                  add          s2, tp, s2
                  addi         s3, t4, -59
                  lui          sp, 793669
                  sub          sp, s11, a4
                  nop
                  lui          s7, 927653
                  sub          tp, a4, s7
                  lui          s3, 663814
                  auipc        s11, 835092
                  nop #end riscv_int_numeric_corner_stream_22
                  andi         s11, t3, 751
                  srai         s2, s0, 17
                  and          s7, gp, s10
                  slti         a6, s6, 1776
                  sra          t3, a0, t2
                  srl          s3, a1, t0
                  auipc        t1, 948790
                  slt          s7, s6, s5
                  srl          t1, s11, a5
                  slli         t4, t1, 3
                  sll          t3, a0, t2
                  sltiu        gp, s11, -1410
                  sub          s6, a0, s10
                  srl          a7, s1, a3
                  srli         s3, s10, 19
                  lui          a7, 788805
                  sll          t5, a4, a3
                  sltu         a1, s10, t0
                  sra          s1, t2, zero
                  xori         s6, a6, 523
                  srl          t0, s7, a1
                  sltiu        gp, a4, -77
                  auipc        s1, 186593
                  nop
                  srai         gp, s5, 22
                  lui          ra, 652371
                  auipc        a6, 263854
                  sra          s0, s4, t2
                  andi         t5, s8, -1885
                  addi         t2, a3, 1263
                  sub          t6, sp, a5
                  xori         gp, tp, 516
                  slli         a7, a7, 18
                  sra          a3, s5, s10
                  slt          s6, t6, s4
                  and          zero, s1, t4
                  nop
                  xori         s2, a5, 1826
                  lui          t4, 489376
                  sll          a7, a0, s2
                  or           t3, a7, a7
                  slti         a7, t4, 633
                  sltu         s10, s7, t6
                  srli         zero, s5, 12
                  andi         a3, s5, 1917
                  add          t3, s5, s0
                  slt          t2, s9, a6
                  sll          s7, a2, s3
                  ori          t3, s9, 804
                  auipc        t6, 971996
                  or           s3, s9, a4
                  or           a3, s11, s9
                  andi         s1, s11, -980
                  sll          a6, t0, a1
                  sra          a4, a2, s1
                  lui          s6, 319868
                  ori          s3, s0, -1302
                  sll          s0, s8, a6
                  slli         tp, t0, 13
                  slti         tp, s11, -1646
                  andi         t4, a1, -450
                  andi         a7, a6, -276
                  srl          a3, a2, zero
                  xori         a7, t6, 1485
                  sltu         s2, s10, t1
                  sltiu        t4, t4, -726
                  or           s11, a5, s0
                  slli         t3, t4, 6
                  sltiu        t4, gp, -641
                  srl          t5, a6, t6
                  sra          tp, t4, s10
                  lui          ra, 346087
                  addi         s8, s4, -32
                  andi         t2, t5, -1631
                  srai         s3, a3, 17
                  or           gp, s10, a1
                  srai         a5, a5, 0
                  auipc        s11, 835756
                  and          t0, a6, t6
                  srli         t0, a7, 0
                  sll          t4, s11, t1
                  sra          a0, a3, s0
                  slli         t3, a1, 1
                  andi         t1, a3, -1679
                  srai         t3, a1, 0
                  ori          s0, a1, -190
                  srl          a0, s11, t3
                  sll          tp, s8, ra
                  sub          t0, t1, s9
                  sll          a1, a1, s9
                  sll          a7, t2, t1
                  srli         t4, a4, 29
                  srli         t2, a6, 0
                  sll          s2, s4, a0
                  srli         a4, ra, 12
                  or           t5, t4, t4
                  add          a4, s10, a7
                  sltu         gp, s9, gp
                  auipc        a6, 193053
                  sltu         a1, zero, a1
                  slti         tp, s4, 1528
                  sltiu        a5, a7, 246
                  add          s3, s5, a3
                  and          t3, gp, a7
                  srai         s10, t5, 27
                  andi         tp, s0, -1215
                  lui          s2, 662414
                  sltiu        a5, ra, 1082
                  addi         s11, s4, -1585
                  srli         a7, zero, 4
                  and          s8, t0, s3
                  xori         s10, s0, -1047
                  xori         t1, s11, -426
                  nop
                  srli         s6, s0, 3
                  sltu         gp, s8, t4
                  xor          a7, tp, s7
                  srai         t4, a6, 29
                  slt          a6, sp, a7
                  slt          a0, a6, t4
                  and          a0, s0, s7
                  and          s8, t4, t2
                  andi         a5, t0, 1221
                  sub          a4, s0, a3
                  sll          zero, a2, a6
                  nop
                  srli         ra, a1, 21
                  addi         s11, t6, 2
                  add          a5, gp, t2
                  slti         a4, t6, -1757
                  srai         s11, s7, 5
                  sll          s1, s0, t2
                  xori         s8, s11, -1662
                  srai         gp, s7, 22
                  xor          s10, s1, a1
                  addi         t2, t5, 148
                  andi         s7, s6, -1330
                  lui          t1, 178496
                  sll          a7, a0, a7
                  srai         a4, a2, 15
                  srli         t0, t5, 9
                  sra          a7, sp, t0
                  sra          t0, s9, s10
                  srai         sp, t3, 3
                  sltiu        tp, sp, 1550
                  andi         s9, a2, -1968
                  addi         s3, s7, 939
                  ori          t1, t0, 1569
                  srai         a3, s3, 14
                  lui          t4, 622298
                  slt          t3, ra, t4
                  slt          a1, gp, s6
                  xori         a1, sp, 1854
                  or           s10, s1, t1
                  add          s9, s2, s7
                  sra          t1, a7, t6
                  add          s10, a5, tp
                  andi         a7, t4, -924
                  sub          a5, s2, a6
                  andi         ra, tp, 954
                  nop
                  sub          s8, a7, t5
                  slli         tp, s3, 18
                  srl          tp, t6, tp
                  slti         a3, s10, -1042
                  sll          t5, a2, tp
                  ori          sp, s9, -1301
                  addi         t1, a1, -1107
                  xor          tp, s4, a7
                  sltu         t1, a1, t6
                  addi         a7, s2, 253
                  xor          t1, a7, zero
                  sltiu        a4, a7, 965
                  xori         s1, t2, -591
                  or           s7, s8, gp
                  srli         a6, s5, 9
                  ori          s11, a1, 460
                  andi         t2, tp, -476
                  sltiu        s7, a1, 1587
                  xori         s6, t1, -399
                  andi         a4, s5, -244
                  andi         a0, t2, -472
                  addi         a1, s10, 1469
                  slti         gp, a6, -554
                  andi         s7, s6, 1595
                  xor          s8, zero, s1
                  auipc        tp, 326366
                  auipc        a7, 20828
                  addi         s0, a0, -725
                  or           a3, s4, t1
                  andi         s6, s5, -2024
                  andi         sp, s2, 1702
                  ori          a6, s1, 160
                  add          a6, gp, s7
                  nop
                  srli         a6, s10, 26
                  sltu         gp, s5, a6
                  srai         s7, ra, 5
                  nop
                  add          a6, t6, a1
                  slti         zero, gp, -838
                  srai         t5, s10, 30
                  xori         s3, t3, 765
                  ori          t6, t2, 867
                  andi         s6, s7, 589
                  sra          t2, s0, a1
                  sll          a0, s9, s1
                  slti         s6, t3, -1950
                  sub          s7, a7, a1
                  srli         s3, t0, 10
                  slli         s3, s6, 29
                  slli         s2, tp, 23
                  sra          a5, a4, s5
                  add          s10, s4, s1
                  auipc        tp, 818933
                  xor          s9, s3, t1
                  or           s9, a2, t3
                  addi         sp, tp, -1529
                  sra          s0, a4, s2
                  sra          a3, s9, tp
                  ori          t0, a1, 1544
                  lui          t3, 621584
                  add          sp, a1, ra
                  add          s7, a2, s10
                  sltiu        t4, t6, -1394
                  or           a3, s4, tp
                  ori          t1, t3, 1809
                  or           a6, s8, s1
                  slli         t2, t6, 28
                  sltiu        t3, a4, -282
                  sub          s10, s0, s1
                  xori         t2, a0, 751
                  addi         t3, sp, -1139
                  lui          s9, 332018
                  lui          t6, 771600
                  nop
                  addi         s3, t2, -707
                  ori          a7, t1, -524
                  xori         t2, s0, 1737
                  ori          s9, t2, -1693
                  xor          t4, t4, t1
                  slt          s6, s0, a1
                  xor          a3, a1, sp
                  add          gp, s6, s0
                  add          a7, tp, zero
                  andi         zero, zero, 2034
                  addi         tp, t5, 1720
                  sll          a6, s3, t1
                  add          s0, a0, s10
                  andi         sp, s9, -1993
                  srli         a1, a7, 26
                  sra          t5, t5, a1
                  slt          t0, t2, a4
                  sll          sp, a1, t4
                  ori          sp, s7, 1403
                  sltu         s9, a6, sp
                  slli         s2, s4, 28
                  slli         a6, s3, 3
                  ori          s6, a4, -904
                  add          s7, a2, a6
                  nop
                  srl          s2, t6, ra
                  auipc        t3, 872347
                  lui          a6, 950382
                  ori          s1, t5, 284
                  slli         a3, s5, 10
                  sra          a1, a0, t1
                  or           s8, s0, s3
                  srli         s8, s11, 11
                  add          a0, a0, t0
                  sra          s6, t2, tp
                  xori         a6, s8, 261
                  or           s9, a0, gp
                  sltiu        zero, a4, -916
                  addi         s3, s7, -1436
                  sra          a1, t6, s8
                  addi         gp, s8, -1662
                  sll          t4, tp, a0
                  slli         a5, s8, 19
                  srai         s11, t5, 10
                  srli         s6, tp, 28
                  sra          t4, s11, s3
                  ori          t4, a4, 2014
                  sll          tp, a6, s10
                  sll          a1, s5, a2
                  addi         t3, zero, -1721
                  sub          s2, s3, s9
                  srli         s7, s4, 30
                  sltiu        t0, s11, -890
                  add          s2, a6, s10
                  nop
                  nop
                  xor          t2, a1, s4
                  nop
                  ori          a0, s6, 1651
                  nop
                  ori          s0, t1, -1731
                  slt          t4, s11, s7
                  slt          t3, t5, t6
                  lui          t3, 867127
                  slt          zero, s7, a1
                  xor          s3, a5, s8
                  xor          a7, t3, a4
                  and          sp, s4, s4
                  xori         s11, tp, -34
                  srai         t0, s11, 5
                  slt          s8, s2, a2
                  srl          s1, s9, t5
                  slti         t5, s3, -412
                  xori         t6, a6, -1461
                  auipc        s10, 635793
                  sltu         s2, s5, t0
                  slli         s3, s7, 28
                  srai         ra, s0, 19
                  xor          a5, s6, t1
                  andi         zero, s7, -161
                  lui          a6, 800469
                  add          s8, a6, a4
                  auipc        a3, 293568
                  ori          s0, a3, -1719
                  and          a6, a7, s7
                  andi         a5, t2, -319
                  andi         s3, t1, -917
                  xori         a4, s11, -228
                  addi         s7, gp, -715
                  sll          ra, a2, s9
                  xori         a1, t3, 498
                  ori          t1, t5, 183
                  addi         t3, s6, 637
                  andi         a0, a3, 1212
                  sltu         s6, s0, t6
                  or           t5, s7, a5
                  srl          a3, a6, s5
                  andi         t3, s10, 1427
                  or           s7, a6, a3
                  lui          s8, 558860
                  addi         a6, s8, -727
                  addi         t1, t5, -615
                  xor          t6, a2, a0
                  sra          t6, tp, a6
                  srl          a0, s0, s2
                  addi         s8, s5, 686
                  lui          a4, 542147
                  sub          a7, s4, s11
                  add          t0, a0, zero
                  srai         s7, t6, 26
                  srl          tp, t2, t2
                  slt          ra, tp, sp
                  addi         a0, a0, 565
                  slt          a5, t0, s5
                  sltiu        s3, t3, -1542
                  lui          s7, 734302
                  sub          a4, s1, a7
                  sltu         a3, t3, s2
                  sltiu        t5, t0, -463
                  lui          a0, 294794
                  slt          s3, s3, t0
                  sll          a7, a0, a5
                  sra          a5, t0, tp
                  auipc        t4, 1038028
                  or           sp, ra, s2
                  slt          gp, s4, tp
                  slt          a3, tp, tp
                  nop
                  lui          a6, 995028
                  sltu         s6, a6, s9
                  auipc        gp, 753437
                  sltu         s10, s7, zero
                  and          t4, ra, s6
                  slt          s11, a1, s7
                  xori         s8, t4, -1279
                  addi         a6, sp, 1130
                  auipc        s0, 60875
                  and          s6, t0, a5
                  sub          sp, t4, s10
                  slt          t5, s11, a4
                  sra          t2, t1, s6
                  sra          s3, s3, t3
                  slti         a0, a5, 575
                  sltiu        t2, s6, -1095
                  andi         a0, gp, -1705
                  sltu         ra, s11, t1
                  sltu         zero, a5, a3
                  xor          a4, t2, t3
                  slt          zero, tp, s2
                  sll          s0, a7, a6
                  xori         t5, a4, 252
                  ori          s2, sp, -1418
                  add          tp, a0, s8
                  add          s10, t5, a0
                  auipc        t4, 946533
                  sltiu        s6, a3, 1834
                  addi         t6, s6, -750
                  sub          t1, t2, s7
                  lui          a3, 55063
                  xori         zero, t5, 2038
                  andi         t0, gp, -1546
                  sub          t1, a1, t5
                  and          s7, zero, t4
                  or           s7, a7, a7
                  xor          gp, t1, zero
                  xori         s2, a2, 982
                  sltiu        a3, a5, 183
                  slti         s9, tp, 1984
                  slt          s7, s2, t4
                  slti         s2, s3, 1376
                  srl          s3, a1, a3
                  slt          a4, s4, a7
                  addi         t4, a1, 501
                  ori          t1, s1, -1772
                  addi         sp, a1, -932
                  sll          t6, a0, t4
                  addi         a3, gp, -1929
                  or           a6, t2, ra
                  or           a1, t6, s8
                  sub          a5, s5, t4
                  nop
                  xori         gp, s1, 710
                  ori          a3, s5, -1245
                  ori          s7, s6, -743
                  nop
                  andi         a0, a3, 1240
                  auipc        s11, 918118
                  slti         s9, s1, 1263
                  and          a1, s7, a7
                  srli         s11, t2, 11
                  ori          t0, sp, -545
                  xori         tp, t3, -1013
                  sltu         t0, s7, s2
                  addi         a5, a3, -1130
                  nop
                  auipc        t1, 396892
                  nop
                  andi         gp, t3, -691
                  nop
                  srai         tp, a4, 22
                  sll          s6, s0, t0
                  lui          a3, 44547
                  andi         a6, gp, 807
                  xori         s0, t5, 1735
                  nop
                  sll          t4, t2, a1
                  andi         a0, t4, 1778
                  slt          t2, s7, a4
                  sltu         gp, s0, gp
                  sltiu        s2, t1, 1269
                  sub          ra, s2, sp
                  slli         zero, t4, 23
                  srli         s1, sp, 25
                  srli         a3, s8, 22
                  sra          t3, sp, s7
                  sub          s6, a2, a0
                  add          s3, a6, s10
                  lui          s1, 509638
                  nop
                  srl          s11, t2, t6
                  addi         zero, s8, -1743
                  xori         t2, ra, 1023
                  addi         s9, a7, -561
                  sltiu        s0, sp, -1138
                  slti         t2, s1, -1340
                  srl          s9, t6, a6
                  lui          s2, 885851
                  sub          a1, a1, gp
                  sltiu        gp, t5, 275
                  srl          a1, s7, s0
                  xor          a7, sp, s8
                  andi         t5, a2, -1781
                  and          zero, a7, a4
                  slti         t2, t2, -1745
                  ori          t0, tp, -883
                  lui          t4, 597308
                  sra          t2, s1, sp
                  slli         s2, a6, 10
                  addi         s8, zero, -408
                  sra          s8, sp, t0
                  sltu         tp, s7, s2
                  lui          a7, 850628
                  and          s3, s3, s6
                  slti         s11, t4, 615
                  ori          s11, s6, 22
                  sll          s9, gp, t2
                  lui          tp, 706504
                  ori          s0, a1, -70
                  sltu         s3, s3, s3
                  ori          a0, s5, -901
                  or           zero, a4, t4
                  sub          a6, t0, a2
                  sub          a5, tp, a6
                  slti         t6, a2, -1674
                  srli         t0, s8, 19
                  nop
                  srl          s3, s9, sp
                  xor          t1, a1, a7
                  sltu         s10, t6, t1
                  or           a7, s5, t0
                  slti         s7, s6, -1287
                  nop
                  auipc        tp, 172060
                  lui          s9, 953448
                  sra          ra, s5, t6
                  slt          s7, s5, s11
                  ori          s8, a6, -1118
                  slli         a3, t6, 1
                  srli         t3, s8, 5
                  add          s10, sp, s4
                  lui          t5, 1046047
                  ori          sp, sp, 388
                  slli         tp, t6, 0
                  srai         sp, t1, 23
                  sub          s0, a6, s0
                  srl          sp, s8, s11
                  andi         t4, a7, 113
                  or           a4, s9, t4
                  srai         a4, s11, 8
                  xor          ra, a4, t3
                  xor          s10, t0, sp
                  andi         tp, s0, -2006
                  xor          a6, t0, s9
                  nop
                  srai         s0, s10, 10
                  sltiu        gp, a5, 1109
                  srl          a4, s2, gp
                  sll          a0, s6, s5
                  slt          s6, gp, t1
                  slt          t3, s1, a1
                  or           t3, s2, s3
                  xor          a6, a0, a4
                  or           s0, a2, s8
                  or           s7, ra, ra
                  ori          t6, s4, -1219
                  slt          a6, a0, s8
                  xori         a3, t2, 832
                  andi         t6, s6, -763
                  slli         s2, t6, 0
                  sll          s2, t1, zero
                  sll          a1, tp, s5
                  nop
                  srai         s9, a0, 16
                  addi         t0, t2, 1846
                  or           s8, a2, s4
                  slti         a7, a0, 901
                  ori          s10, a1, -1491
                  auipc        zero, 568172
                  sltu         zero, t3, t0
                  add          s10, tp, t2
                  addi         s3, a3, -1857
                  add          t1, s11, tp
                  ori          s10, s8, 1128
                  auipc        a0, 323796
                  sltiu        s0, gp, -1961
                  andi         a4, t0, 40
                  auipc        s10, 403424
                  xori         s9, t0, -1245
                  sra          t6, a5, t5
                  srl          s0, a4, t2
                  slli         s6, s5, 4
                  auipc        s2, 183150
                  srai         a6, a0, 9
                  and          sp, s1, t5
                  add          a5, a6, s2
                  addi         t0, gp, 1674
                  auipc        a1, 424034
                  xor          t0, s4, t1
                  addi         a1, t1, -2033
                  sll          a5, t0, t4
                  and          a7, t2, s8
                  addi         tp, sp, 898
                  and          s9, s0, t1
                  xori         t5, s6, 1022
                  xori         t4, a5, -596
                  add          s11, s10, s7
                  srai         t5, s2, 9
                  sra          t3, s7, s4
                  add          s0, t2, ra
                  sub          t3, gp, s11
                  slti         s0, s6, 114
                  sra          tp, t3, s8
                  sub          sp, s0, gp
                  xor          s11, t1, s5
                  sub          tp, s4, sp
                  auipc        s2, 363505
                  auipc        a4, 508580
                  nop
                  sltu         s2, tp, a2
                  slli         t4, t2, 21
                  xori         s8, t4, 51
                  andi         s9, t0, 773
                  xor          a0, s8, a3
                  nop
                  ori          s1, s4, -12
                  sub          a3, a6, t2
                  sltu         s0, t2, ra
                  nop
                  and          a0, sp, zero
                  and          ra, a3, a4
                  sltiu        t5, gp, -1740
                  srl          s3, a4, a0
                  and          a4, s4, s5
                  slt          gp, s4, s3
                  sltu         s3, s10, s11
                  slt          gp, s5, s0
                  sra          a4, s3, s10
                  add          s10, a4, s6
                  slli         s11, t2, 14
                  add          t4, a1, zero
                  add          s7, t1, a3
                  andi         a0, s7, -1828
                  or           a1, a4, gp
                  slti         s6, s6, 1132
                  slli         s2, a4, 23
                  andi         s8, s1, -713
                  sub          s6, ra, s6
                  slli         t0, t6, 8
                  slli         a7, s6, 26
                  lui          s6, 348823
                  xor          a7, t2, a6
                  lui          s0, 636215
                  xor          t5, s0, ra
                  sra          t1, t4, a0
                  srl          a3, t5, t1
                  sub          zero, s8, s7
                  sll          s0, t0, a4
                  slt          a4, t5, s3
                  slti         a4, t1, 1465
                  and          t4, ra, s5
                  andi         t5, t5, -43
                  andi         t4, t5, -915
                  slli         tp, a6, 4
                  addi         a6, zero, 1473
                  add          s3, t6, a3
                  auipc        s0, 728723
                  nop
                  slti         ra, s5, -1019
                  slt          a4, t2, s9
                  andi         t4, s0, 1844
                  xori         ra, s9, 19
                  or           gp, zero, t5
                  add          a4, sp, s9
                  sltu         tp, s10, a0
                  ori          s3, gp, -1966
                  auipc        s11, 818496
                  auipc        t3, 237215
                  ori          t3, a4, -585
                  ori          t0, s6, 341
                  or           s7, a4, a7
                  nop
                  xori         a5, t2, 433
                  srai         tp, s6, 5
                  sub          t5, t3, s1
                  slt          t6, s6, s1
                  lui          t3, 830858
                  sltiu        s6, tp, -1959
                  sub          t3, s10, zero
                  sltiu        s2, s10, 1823
                  nop
                  slti         ra, t4, -1407
                  add          a5, s9, zero
                  sll          s10, s6, s4
                  slt          sp, a6, t2
                  sll          t6, s6, t0
                  srai         a5, s3, 17
                  sltu         s8, s0, tp
                  andi         a7, t0, 1504
                  srl          t4, a4, s7
                  and          s9, s5, s1
                  sra          t3, ra, s3
                  srli         s7, s10, 10
                  sltiu        t4, a5, -1602
                  slti         s6, tp, -861
                  auipc        a6, 311276
                  lui          s0, 939690
                  xor          t6, s8, gp
                  nop
                  srai         gp, a6, 25
                  sltiu        s6, s10, -1920
                  addi         s7, a1, 1115
                  nop
                  srl          t0, a2, s4
                  lui          a0, 306511
                  ori          t3, s3, -1575
                  or           t1, s6, t2
                  and          t6, a0, a2
                  slt          s2, s8, t5
                  sra          s9, t3, s8
                  srai         sp, s8, 24
                  sll          tp, a5, s11
                  lui          t1, 958235
                  sra          s3, s10, s0
                  srl          a7, tp, t6
                  srli         s11, s6, 4
                  add          ra, a0, s9
                  addi         s2, gp, 1781
                  ori          a7, a7, -1994
                  addi         t6, ra, -1211
                  auipc        a6, 395872
                  andi         t4, s2, 607
                  srl          t2, t5, a3
                  and          t4, a0, s9
                  lui          a6, 491140
                  sra          tp, t2, ra
                  andi         gp, ra, -1538
                  addi         s10, a0, -736
                  nop
                  andi         a7, s3, -680
                  andi         ra, t1, -650
                  nop
                  sra          a7, ra, a1
                  slti         a0, s0, -1028
                  sll          s7, a1, a1
                  srai         a0, a5, 20
                  slti         s3, a5, 1121
                  add          zero, t3, s6
                  auipc        a3, 875560
                  xori         t6, t4, -385
                  slti         t2, t3, -711
                  sltiu        tp, t3, -460
                  srl          a6, a3, t1
                  sub          gp, zero, t5
                  auipc        s6, 795641
                  xori         s2, a3, 1371
                  auipc        tp, 303013
                  nop
                  slli         s9, s7, 31
                  addi         s6, a2, -571
                  slti         t3, s3, 1933
                  addi         a1, s10, -371
                  srl          gp, a7, s11
                  sra          s0, s6, t1
                  nop
                  srl          a3, s0, ra
                  andi         s8, s7, 734
                  srai         a4, s8, 22
                  nop
                  srli         s3, s4, 24
                  addi         t5, s0, -1263
                  add          s7, a7, s6
                  sub          zero, a0, t1
                  sra          s7, a5, s11
                  auipc        t3, 733114
                  and          zero, t4, a3
                  addi         s1, s3, 1686
                  sll          a6, a2, zero
                  srai         s2, t6, 16
                  or           a6, s2, t3
                  nop
                  andi         s11, s3, 1826
                  addi         a3, tp, 144
                  add          s6, t5, t3
                  slt          s11, a5, tp
                  or           s3, a7, a3
                  xor          t5, tp, s7
                  xor          s8, t4, tp
                  xor          s2, tp, t3
                  sll          s0, t5, s2
                  sltiu        t4, t0, 738
                  sub          s2, a2, t0
                  ori          a6, t5, -1393
                  addi         sp, s6, 1927
                  ori          a5, a3, 1222
                  addi         t4, tp, 1157
                  auipc        s11, 36195
                  sll          a3, zero, t6
                  sll          a5, s3, s0
                  slt          zero, a1, t0
                  slt          a7, t1, s9
                  slli         s3, s6, 3
                  andi         ra, s11, -220
                  addi         gp, t2, 1172
                  add          s10, s8, t3
                  nop
                  sra          a6, s1, t1
                  xori         s10, s6, -1861
                  ori          a5, a7, -1685
                  and          s0, s8, tp
                  lui          a6, 785925
                  xori         tp, s7, 1183
                  xori         t2, s8, 1065
                  addi         s8, t4, 896
                  andi         t4, t3, -115
                  or           s0, s11, t5
                  or           a6, t0, tp
                  sltu         s6, gp, a1
                  srl          s10, a6, s2
                  sltu         a3, sp, s10
                  andi         a6, a5, -54
                  sra          a6, s6, a3
                  lui          t3, 901191
                  nop
                  nop
                  ori          s7, s8, -442
                  srl          t1, s3, sp
                  srl          t4, sp, t6
                  srl          s11, a4, zero
                  sll          t6, s3, s9
                  addi         a7, s10, -1009
                  auipc        a4, 864715
                  and          t2, zero, gp
                  srl          gp, s6, s3
                  sltiu        s2, s7, 1095
                  srl          t5, s6, s2
                  addi         s1, t3, -1760
                  sltiu        t5, ra, 1376
                  slli         t3, s4, 2
                  srai         a3, s2, 24
                  slli         s6, a7, 0
                  addi         t5, a4, -1568
                  srli         t2, zero, 2
                  or           s0, sp, s8
                  sltiu        s11, t0, -1712
                  sll          s8, s9, s0
                  add          t6, a3, t3
                  or           s9, a0, s6
                  addi         t2, s4, -1795
                  sub          a3, t1, a3
                  and          s9, a4, s1
                  sltu         t4, a3, ra
                  sll          s9, s8, s0
                  auipc        t4, 493982
                  or           s0, a5, s8
                  slli         ra, t2, 25
                  slt          ra, a2, s4
                  sltiu        tp, s7, 177
                  sll          s7, s10, a4
                  or           a7, t1, s1
                  xor          a6, t6, sp
                  and          s1, t5, s6
                  or           a6, a5, zero
                  slli         a7, a2, 20
                  sra          t0, s0, tp
                  xor          a4, s10, tp
                  xor          t5, t1, t4
                  slt          a0, t6, s2
                  and          s3, a5, s1
                  xori         s6, zero, -589
                  sltu         s10, s6, ra
                  sltu         a7, a1, gp
                  or           a7, sp, s4
                  sltiu        s0, a6, 2028
                  nop
                  sltu         sp, zero, tp
                  and          a4, t2, tp
                  srl          a4, a4, t5
                  srli         s8, s9, 28
                  add          t4, s10, t3
                  slt          gp, s6, a7
                  or           a5, s6, zero
                  sll          s11, s5, a0
                  xor          a4, t5, s2
                  andi         a6, t4, 374
                  xori         s11, t3, 256
                  slti         t4, s4, -1874
                  srai         t2, s6, 20
                  srai         zero, s2, 23
                  slt          t6, sp, t4
                  sltu         a1, s1, a6
                  sltiu        t3, t4, 1078
                  ori          t1, t3, 1583
                  xor          a0, s3, t5
                  sll          a6, s6, t5
                  slti         t0, t5, 1593
                  andi         a4, a2, -1155
                  sltu         s9, a1, s7
                  nop
                  srli         a7, s4, 20
                  ori          s11, t0, 1795
                  srai         s3, sp, 8
                  andi         s7, a2, 116
                  lui          s7, 283344
                  nop
                  srai         t6, s1, 21
                  srl          a0, s8, a1
                  and          a0, s2, ra
                  and          s3, a6, a4
                  sltiu        sp, a3, 358
                  andi         a6, s0, -1610
                  sltu         t6, s3, s10
                  xor          t1, s0, a0
                  nop
                  slli         a6, a0, 13
                  nop
                  sra          t4, a7, s6
                  ori          s0, s1, -133
                  addi         t5, a3, -1680
                  sub          t6, s9, s6
                  slt          t0, s0, s4
                  srli         s2, gp, 29
                  xor          a7, t0, s4
                  addi         a7, t2, 1896
                  ori          s7, a3, -1958
                  auipc        s9, 1043115
                  lui          a4, 200501
                  or           s7, s0, a3
                  sltiu        ra, s7, 1082
                  andi         t6, s9, -1725
                  or           tp, t4, s4
                  auipc        s3, 656792
                  sub          s1, a2, s6
                  xor          s3, t1, s5
                  ori          s3, zero, -1490
                  slt          a4, t5, ra
                  srli         s6, t5, 18
                  xori         sp, s6, -1736
                  slli         tp, ra, 14
                  or           gp, s6, t1
                  add          s9, s5, ra
                  sub          s7, a1, a4
                  sltu         t2, t4, s7
                  xori         s11, s2, 383
                  auipc        a5, 425498
                  slti         t3, t5, -812
                  slt          t4, s10, s5
                  srai         a5, t5, 13
                  addi         a6, sp, 1272
                  sub          tp, ra, a0
                  add          s0, a3, s7
                  nop
                  sra          s6, s4, a4
                  add          s7, s6, zero
                  andi         s6, a5, 469
                  sltiu        s9, s6, -238
                  add          t4, a5, s11
                  lui          t1, 769682
                  xori         s3, s8, -626
                  or           gp, s2, s2
                  slt          a1, t2, a1
                  nop
                  or           t3, s11, a6
                  sltiu        zero, t5, -1316
                  sub          a3, s2, s6
                  sltiu        s10, tp, 1285
                  xor          s11, t1, s0
                  srl          a6, zero, t3
                  and          a5, s9, a0
                  add          a3, s5, s0
                  lui          t0, 73037
                  slli         a1, a4, 4
                  sll          a6, s9, sp
                  sra          t5, t2, s0
                  addi         a7, s1, -392
                  ori          a5, s6, 44
                  and          t5, tp, ra
                  sltiu        a4, s5, -1039
                  sub          t5, sp, gp
                  xori         s11, t5, -1109
                  lui          t0, 335324
                  and          a3, a5, a3
                  srli         tp, t0, 3
                  srai         s0, a5, 25
                  ori          a5, s2, 343
                  sltiu        s6, a4, -291
                  xor          s6, s1, a1
                  and          s1, s4, t4
                  slt          s0, gp, a7
                  slli         ra, t6, 21
                  slt          tp, t0, s11
                  slli         a5, a7, 13
                  srai         s0, t3, 5
                  xor          s2, a5, t4
                  andi         t4, t5, 1984
                  srl          s9, t2, t2
                  sll          s1, ra, s11
                  or           s8, tp, s10
                  slt          t1, a2, s6
                  srai         s10, a2, 24
                  sltiu        s10, zero, -776
                  xor          t1, tp, a4
                  sltiu        t0, a3, 1829
                  and          t4, t2, sp
                  ori          sp, a4, 1548
                  add          s2, sp, s4
                  srli         s0, tp, 25
                  nop
                  auipc        s7, 544059
                  srai         s10, s2, 4
                  slli         s1, a3, 9
                  auipc        s6, 141342
                  xori         zero, a0, -1703
                  andi         gp, t4, 1808
                  andi         t4, s5, -1928
                  sltiu        a6, s10, 1607
                  addi         a1, s0, -1344
                  sltu         t3, ra, a2
                  srli         t0, s0, 9
                  nop
                  slt          s1, ra, zero
                  srli         a5, s11, 8
                  srli         t1, s2, 5
                  and          t0, s3, s1
                  srli         s11, zero, 16
                  nop
                  xor          s0, t3, t3
                  sll          t0, s11, s9
                  and          a1, a0, s10
                  and          s2, s0, s8
                  sub          t4, a5, t2
                  lui          a4, 153932
                  auipc        tp, 928983
                  slli         ra, gp, 0
                  slt          t1, a1, t5
                  srai         s1, s10, 20
                  addi         gp, s7, 1147
                  lui          s2, 540654
                  or           a3, s6, sp
                  sltiu        a7, s6, -334
                  add          s3, gp, a4
                  sra          a0, a7, s4
                  slli         s10, t2, 13
                  sll          a7, t0, a2
                  add          s0, sp, t6
                  xori         sp, s9, 1377
                  andi         s2, tp, -1455
                  slt          s0, s3, s11
                  and          a1, a2, a4
                  slli         sp, s1, 31
                  add          s3, t0, t3
                  sra          t5, t4, zero
                  add          t4, t6, s6
                  slt          ra, t6, s5
                  auipc        tp, 667788
                  nop
                  xor          t0, t3, t4
                  nop
                  slt          tp, a6, a0
                  slli         a6, a5, 30
                  srli         a7, s10, 28
                  sll          gp, s6, s10
                  ori          s0, a2, 1008
                  sltu         s8, s3, a1
                  srli         s7, s0, 14
                  sltiu        a7, s8, -1230
                  srli         a7, t4, 5
                  and          t2, a1, t3
                  sra          s0, a6, a0
                  srli         s6, ra, 3
                  slti         s8, t0, -1342
                  add          t6, t3, a2
                  slt          a0, a3, a5
                  srl          s6, a4, s4
                  xor          s9, zero, tp
                  srl          tp, s10, s1
                  andi         s1, s5, 1397
                  xori         t3, t1, 240
                  and          gp, s11, t6
                  slli         a4, s6, 22
                  xor          t3, s6, s3
                  srli         s1, a6, 18
                  slti         sp, t2, -658
                  sltu         a7, s10, t1
                  lui          t5, 880744
                  slli         a4, a5, 14
                  and          a7, s7, t1
                  andi         s10, t0, -728
                  auipc        ra, 328116
                  xori         sp, s9, -1922
                  auipc        t5, 432386
                  lui          t0, 452606
                  lui          ra, 267593
                  lui          s11, 570365
                  slt          s2, s0, a3
                  sltu         s10, s11, a2
                  andi         a1, s0, -1594
                  add          s1, ra, t4
                  auipc        s9, 137954
                  ori          a0, a4, 916
                  slti         a7, gp, 765
                  sltu         s8, s0, ra
                  nop
                  sltiu        t6, s0, -191
                  sltu         s9, s3, t3
                  srai         s7, s8, 2
                  auipc        t0, 821876
                  slli         ra, t3, 15
                  xori         s8, s11, 1450
                  srl          s1, t0, ra
                  sltiu        t1, s1, -1836
                  xori         a1, s0, -84
                  sltu         s7, t1, a7
                  slt          s6, a3, a0
                  and          ra, ra, s5
                  ori          s0, gp, -368
                  xori         s6, s10, 1116
                  slti         a4, t1, 1442
                  srai         tp, a5, 2
                  and          s1, s9, t5
                  addi         a0, gp, -913
                  xori         s2, t2, -1429
                  sltiu        t2, s5, 1364
                  slt          t6, t1, t1
                  lui          s10, 873698
                  sra          s0, tp, s7
                  slli         t2, tp, 29
                  xor          a4, s9, s8
                  sub          a4, ra, s8
                  nop
                  srl          t2, t4, t6
                  sll          s11, a1, s6
                  slli         s10, ra, 19
                  sll          t3, t1, s11
                  nop
                  srl          gp, s4, ra
                  sltu         s2, s5, gp
                  add          s6, s4, s7
                  sltu         gp, a3, a6
                  add          s2, t4, t5
                  sltu         gp, t2, s4
                  add          t6, tp, t5
                  slt          s2, a7, tp
                  xori         ra, s8, 1448
                  srai         a0, sp, 4
                  srli         tp, a2, 12
                  lui          s8, 359131
                  sltu         s8, a5, a4
                  lui          t6, 954592
                  and          a4, s10, tp
                  andi         a6, t2, -1949
                  ori          s7, gp, -1466
                  or           t0, t4, ra
                  sltiu        s3, s5, 1024
                  addi         t2, t6, 756
                  srl          t6, a2, a2
                  add          t3, a7, a7
                  sub          a6, s11, t2
                  and          tp, s4, zero
                  srl          s2, s5, t1
                  or           tp, s6, s0
                  sltiu        t4, s10, 2007
                  xori         s3, s9, -1372
                  slti         s7, s4, -840
                  nop
                  slti         a0, zero, 1619
                  auipc        s11, 801037
                  auipc        zero, 431865
                  xor          s6, t2, a4
                  or           t4, s3, t5
                  or           s0, s11, t1
                  andi         a6, a4, 1105
                  lui          s3, 1041699
                  or           gp, t6, a3
                  sll          s10, a6, t3
                  ori          t0, t1, -1989
                  nop
                  or           t0, t0, a5
                  ori          a1, s5, 300
                  andi         a0, s5, 136
                  xori         ra, a2, 1772
                  auipc        t1, 561033
                  sub          sp, t5, a0
                  sltu         a7, a0, a4
                  nop
                  slli         ra, s10, 31
                  andi         t3, t3, 1668
                  sltiu        s0, s7, 474
                  andi         zero, t6, 1555
                  sltu         s3, a5, t3
                  sra          a4, s2, gp
                  sll          zero, a3, s2
                  sub          t0, s10, t2
                  and          t5, t6, s1
                  or           s10, t0, s8
                  sltu         s1, gp, s6
                  lui          a5, 305912
                  sll          a7, s7, sp
                  srli         gp, s7, 24
                  sub          s3, s4, sp
                  srai         gp, a4, 6
                  sltiu        s7, s7, 623
                  ori          s6, t1, -263
                  lui          zero, 872741
                  sub          s10, ra, s7
                  sll          s3, s11, a6
                  sltiu        s1, t1, 1434
                  sltiu        a1, s10, -1072
                  lui          a3, 781502
                  slli         s3, a0, 16
                  nop
                  sll          t0, tp, s1
                  nop
                  and          s9, a1, t4
                  sra          a7, s11, s4
                  or           a7, a7, s7
                  srai         ra, a7, 21
                  ori          a0, s10, -753
                  lui          t0, 90906
                  slti         s1, a2, 1041
                  addi         a6, a6, 1544
                  sra          a4, ra, zero
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_24
                  li           ra, 0x80000000
                  li           sp, 0xda351d28
                  li           t3, 0xffffffff
                  li           s7, 0x8c321efe
                  li           s2, 0xffffffff
                  li           a5, 0x8ce6d333
                  li           tp, 0xffffffff
                  li           a7, 0x80000000
                  li           gp, 0x80000000
                  nop
                  lui          ra, 410185
                  lui          t3, 347838
                  addi         s7, a5, 737
                  sub          sp, sp, s2
                  add          t3, tp, ra
                  add          t3, t3, a7
                  lui          s2, 231560
                  lui          s7, 767885
                  sub          a5, s9, t3
                  add          t3, ra, gp
                  sub          t3, s9, ra
                  add          a7, t3, sp
                  addi         a5, tp, 1246
                  nop
                  nop #end riscv_int_numeric_corner_stream_24
                  xori         a0, ra, -1775
                  and          a7, a3, s7
                  nop
                  addi         s0, t2, -391
                  sub          s8, s4, tp
                  and          t2, s7, t4
                  sra          a7, s5, s11
                  sra          s10, a0, tp
                  nop
                  or           t2, t3, t4
                  nop
                  slli         sp, s4, 18
                  sub          s9, s6, gp
                  lui          t3, 641187
                  slli         s10, s8, 13
                  srai         a5, sp, 15
                  andi         s8, s5, -1311
                  srl          t4, a7, s6
                  add          tp, s10, ra
                  nop
                  lui          a5, 560237
                  slti         s9, zero, -419
                  addi         gp, t5, 1968
                  andi         t5, a4, 1440
                  add          t2, s4, s3
                  sltu         s10, a5, sp
                  sra          t3, s6, s2
                  xor          t4, s5, zero
                  slli         t0, s9, 20
                  nop
                  xor          sp, s1, t6
                  srl          s3, s5, a1
                  sll          t6, s0, t6
                  slli         s6, a2, 4
                  add          s9, t0, gp
                  nop
                  sltiu        s6, t1, 1583
                  sra          t4, t1, a5
                  lui          a5, 303326
                  lui          sp, 650980
                  sll          a4, a5, s3
                  ori          t1, t0, 782
                  ori          tp, t3, 768
                  sub          a1, a2, a3
                  srai         s11, t0, 9
                  sltu         sp, t2, ra
                  slt          s3, ra, a4
                  nop
                  sll          t2, tp, s8
                  slli         s6, a0, 28
                  andi         ra, a4, 1340
                  or           a0, zero, a0
                  add          s9, tp, t2
                  slt          s0, t0, s5
                  addi         t1, s2, -1512
                  sra          s9, s8, a6
                  srli         s2, s9, 15
                  sltiu        s11, zero, 1084
                  slt          a0, s4, tp
                  sub          a6, tp, s6
                  sra          sp, a0, zero
                  xor          tp, t3, sp
                  srai         s9, s7, 14
                  sra          s7, a0, s2
                  nop
                  lui          a5, 317156
                  xori         tp, s5, -88
                  xor          s8, s2, s7
                  nop
                  sra          t5, a2, gp
                  nop
                  addi         t6, a5, -1413
                  srai         s6, sp, 6
                  add          tp, s11, tp
                  srl          t3, s11, s3
                  or           s7, t3, a5
                  auipc        gp, 326521
                  slt          t4, a7, t5
                  slti         s3, s7, -1692
                  and          t0, t4, a1
                  lui          t0, 576913
                  addi         gp, s0, 790
                  nop
                  slti         s1, s8, -1543
                  srli         s6, a0, 10
                  addi         a1, s7, -795
                  or           gp, ra, a1
                  slt          t3, a4, sp
                  slti         a6, a2, 815
                  ori          tp, ra, -1623
                  sub          s2, s3, t6
                  auipc        a6, 768709
                  xori         sp, a1, -1533
                  addi         s9, s8, 1378
                  or           a3, t3, t2
                  addi         s1, a7, -1743
                  addi         ra, t4, -1722
                  or           ra, s6, ra
                  srl          tp, tp, s0
                  lui          t3, 415306
                  add          t4, a7, a6
                  xori         tp, s7, -1202
                  sltiu        t0, t3, 1019
                  xori         t6, t1, -297
                  sra          s11, a1, tp
                  or           s8, t6, ra
                  nop
                  xor          t3, s0, s0
                  or           t2, s11, s2
                  lui          s11, 694860
                  slti         t6, s1, -1562
                  slt          s9, a1, t3
                  srli         a6, t5, 28
                  slt          sp, tp, a4
                  auipc        a6, 986503
                  and          a3, a0, s8
                  ori          s9, t0, -1040
                  sra          a3, gp, sp
                  sltiu        ra, a1, -315
                  srli         s10, tp, 8
                  sll          a4, s3, gp
                  xori         tp, zero, -1743
                  sub          a1, t1, t1
                  sltu         s2, t1, s8
                  srl          s2, t6, a2
                  srli         t0, s11, 13
                  sra          a3, s0, t0
                  slt          s0, s0, s3
                  andi         s6, s9, 1165
                  slli         s6, zero, 10
                  sra          s0, t1, a5
                  auipc        s7, 296429
                  slli         ra, a7, 15
                  or           s10, gp, s8
                  ori          s2, sp, 1694
                  slli         zero, a7, 0
                  slli         t1, s3, 27
                  lui          s8, 494673
                  srai         s2, a5, 12
                  addi         a1, s11, 1993
                  slt          zero, t6, s3
                  addi         zero, a4, -584
                  ori          s2, a1, 1590
                  srl          a3, s8, t3
                  or           a3, s1, zero
                  sltiu        gp, s1, 1714
                  auipc        s6, 946237
                  srl          s0, s2, s3
                  slt          a5, s11, a3
                  lui          a3, 499527
                  sll          s0, a4, a0
                  slt          t1, t2, t4
                  srai         a1, t0, 29
                  srl          s7, zero, s5
                  and          a4, t2, s1
                  lui          a5, 206433
                  xori         s7, s2, 1071
                  xori         t6, t0, 195
                  slti         s10, s0, -201
                  and          a7, a3, a0
                  auipc        t4, 536030
                  sub          tp, zero, tp
                  xori         s6, s3, 1395
                  ori          s10, t1, 1864
                  sll          a7, s4, gp
                  auipc        s8, 60993
                  or           t6, s5, s2
                  or           s3, tp, a2
                  ori          t4, t2, -1444
                  slti         zero, s4, 1147
                  or           a6, a1, s5
                  slli         s3, t3, 16
                  sub          s0, gp, sp
                  slt          t6, a7, s0
                  add          a5, s7, a0
                  ori          s2, t3, 1328
                  xor          tp, s2, s8
                  srai         t4, a4, 13
                  auipc        a4, 775265
                  nop
                  auipc        s3, 1031499
                  srli         a6, t0, 12
                  sltu         s0, t5, s11
                  sltiu        a1, t6, 1263
                  sub          s2, s1, s1
                  sll          s10, a3, t0
                  xor          s9, s7, s9
                  sub          zero, t3, t6
                  slti         t5, a3, -1415
                  slli         a1, a6, 19
                  lui          sp, 409541
                  addi         s6, a4, 1001
                  andi         s9, s5, 1205
                  sltu         t3, s3, s9
                  xor          s7, a4, a4
                  xori         t3, s9, 1823
                  slli         t3, s2, 15
                  xori         s9, a5, 2027
                  nop
                  slti         a4, s4, -1522
                  and          t0, a3, a3
                  srl          a6, s0, a0
                  nop
                  srai         zero, t6, 4
                  or           s8, zero, a0
                  srli         s1, s2, 5
                  srli         a4, a5, 5
                  add          a3, s3, gp
                  sub          t3, a0, t5
                  sll          a6, s7, s5
                  sll          t2, s3, t5
                  and          t2, s9, a0
                  ori          t5, t5, -51
                  sll          t4, a0, a5
                  and          a7, a5, a6
                  srl          t2, a2, s5
                  andi         a1, a5, 223
                  srli         s2, sp, 20
                  andi         s2, s11, 734
                  and          s7, a1, t1
                  sll          a7, t5, sp
                  slli         a0, t6, 25
                  slti         tp, s7, 1702
                  sub          t4, sp, a0
                  srli         a4, s11, 24
                  srai         s8, a2, 27
                  srli         s10, s3, 0
                  sub          a3, t4, s8
                  addi         s2, s3, -605
                  xor          t4, a5, a4
                  sra          s11, a4, s1
                  lui          ra, 98288
                  sll          t1, t5, s1
                  add          a4, s11, s7
                  slti         a6, t5, 1212
                  add          a5, s2, s2
                  srai         t3, s11, 9
                  srl          t0, a7, a3
                  or           a7, a1, t5
                  nop
                  slti         s8, a6, 1603
                  slli         a3, t6, 23
                  lui          gp, 438865
                  slt          a0, a2, s7
                  slti         a7, s10, 1428
                  slt          s11, s3, a2
                  sll          s9, s8, a6
                  sll          t0, s8, s9
                  xor          t2, s7, t3
                  or           t0, t3, s7
                  sub          ra, t1, s9
                  slt          s0, zero, t0
                  ori          t5, a1, -16
                  add          s9, sp, t4
                  addi         s0, tp, 130
                  sub          tp, t3, t4
                  srli         s7, zero, 8
                  sltu         t0, t2, t2
                  and          t3, t1, s8
                  auipc        s3, 185887
                  auipc        t1, 155471
                  or           t6, tp, t4
                  sll          t2, s0, s8
                  srl          t4, t0, a6
                  and          s1, s9, zero
                  ori          t3, a4, 857
                  addi         a5, s1, -1379
                  sltu         t3, s4, s7
                  slti         zero, s1, 1863
                  sra          t2, s0, sp
                  add          t6, s7, a3
                  srl          a4, tp, zero
                  xor          s3, a7, s6
                  add          a4, sp, zero
                  srli         a3, s3, 5
                  xori         s7, t5, -608
                  xori         s2, a0, -1914
                  xori         s11, s0, 142
                  andi         sp, zero, 378
                  slli         a5, ra, 22
                  addi         zero, s3, -575
                  srli         s1, gp, 1
                  srl          s7, s8, s1
                  xor          tp, ra, s6
                  sll          tp, a2, a3
                  add          tp, ra, a4
                  lui          a0, 753885
                  srl          s2, gp, s11
                  sub          t6, t5, a1
                  auipc        t2, 62055
                  sltiu        a1, t0, 1982
                  sltiu        a4, tp, -810
                  addi         t6, t6, -1074
                  ori          s1, s0, 1088
                  xori         s0, s8, -1693
                  sub          s10, t6, s11
                  ori          t1, a0, -782
                  slt          gp, s1, s2
                  srai         a4, a1, 3
                  slti         a4, s6, 990
                  sll          gp, s0, gp
                  lui          t3, 555545
                  nop
                  addi         s9, zero, 833
                  srli         zero, a2, 26
                  xor          s8, t6, s6
                  ori          s10, a2, -763
                  slt          s1, s4, sp
                  slti         a0, a3, -613
                  srl          a1, s4, a3
                  slti         s6, s8, 1340
                  srli         s8, t3, 7
                  sll          t0, tp, s9
                  srai         a4, s2, 22
                  sra          ra, t2, sp
                  srl          s3, zero, zero
                  xor          a6, t4, tp
                  or           t2, a7, t2
                  sub          s1, a4, a0
                  slt          s9, t3, s7
                  srai         t2, a2, 0
                  xori         sp, tp, 1892
                  srli         s2, s7, 31
                  sub          a4, s2, s10
                  sub          tp, t4, a4
                  srli         a7, s11, 11
                  slt          s6, zero, t1
                  sll          a5, t0, s4
                  srai         s2, s1, 0
                  and          a5, gp, t4
                  auipc        a0, 19050
                  ori          t1, s6, 1688
                  srai         s6, a1, 25
                  slt          a6, a6, s8
                  slt          tp, t3, s5
                  sra          t1, zero, sp
                  sra          s1, t5, t0
                  xor          tp, t4, a2
                  slti         s2, t3, 265
                  sll          s6, a1, s6
                  srli         t1, a1, 25
                  xor          s1, s0, s3
                  add          a5, t2, zero
                  nop
                  srai         t6, a4, 19
                  slt          s3, s11, s3
                  lui          s2, 873765
                  xor          a5, sp, t4
                  srai         t3, s4, 20
                  lui          t5, 508138
                  sub          a3, a2, s10
                  sub          s11, s2, a5
                  sll          a6, s7, a6
                  ori          ra, s2, 1079
                  sltu         gp, s4, t2
                  addi         s9, a1, 1345
                  sltu         a7, s8, s5
                  xor          zero, a4, s4
                  ori          t4, t6, -266
                  sra          gp, s8, s0
                  add          s7, s9, a5
                  nop
                  andi         s1, zero, 260
                  slti         gp, a3, 99
                  slti         s8, a6, -1907
                  slli         a6, t6, 2
                  sra          s3, t6, t6
                  ori          a6, a7, -758
                  andi         t2, s0, -827
                  slli         a6, t0, 18
                  sub          s7, a0, t0
                  slli         s0, a3, 10
                  srli         s9, zero, 12
                  slt          t2, t4, a5
                  srli         s6, s7, 16
                  xori         s7, s4, 1948
                  slli         s1, s5, 8
                  slti         tp, gp, 500
                  lui          a7, 171795
                  and          s7, sp, a1
                  srai         a1, s7, 13
                  addi         t3, t1, -1171
                  lui          s11, 477592
                  srai         s10, a3, 31
                  and          a7, s4, t3
                  srli         a0, t6, 25
                  sltu         s10, a0, s4
                  add          s8, a0, s10
                  xor          s7, a6, t1
                  slli         s11, t1, 4
                  sll          s9, gp, s6
                  andi         t1, s11, -284
                  nop
                  or           sp, s6, s6
                  sltiu        a7, s1, -232
                  nop
                  sra          a4, a6, s3
                  slti         s7, ra, -1006
                  add          a4, s8, s8
                  or           tp, s7, sp
                  sltiu        t2, s6, -889
                  or           gp, t0, a5
                  srli         s9, a2, 14
                  srli         a0, s2, 21
                  srli         a0, tp, 25
                  nop
                  xori         t2, a6, -229
                  add          t3, s2, a4
                  addi         t5, a2, -1610
                  sll          a7, s5, a3
                  xori         s9, sp, 27
                  srl          t3, t1, s4
                  auipc        s9, 948373
                  xor          a3, a4, s4
                  nop
                  xori         a6, ra, 1543
                  sub          a7, t1, a6
                  srli         t3, a1, 4
                  sll          s8, t1, t3
                  addi         s7, a5, -711
                  sltiu        s11, s5, -260
                  auipc        s7, 411534
                  srli         s6, s0, 8
                  auipc        s2, 1047455
                  sltiu        a0, s9, -817
                  srai         s9, t2, 23
                  lui          s1, 90493
                  and          a6, a0, zero
                  srl          s9, s3, s2
                  slli         a4, zero, 9
                  sll          t6, ra, t5
                  sub          a4, zero, s3
                  andi         t4, t5, -904
                  ori          s1, s3, 733
                  slti         ra, s6, 416
                  xori         s11, s2, -1402
                  or           t4, a3, zero
                  sltu         t5, gp, s0
                  or           a1, t5, t3
                  sra          s6, a0, s1
                  sra          s10, s8, s1
                  lui          t6, 714699
                  andi         s6, a6, -1509
                  sltu         t6, a6, t6
                  add          a7, s1, s5
                  lui          t0, 570703
                  sra          t0, s7, a2
                  srai         s9, s1, 18
                  slti         gp, s7, 935
                  sub          a6, t5, ra
                  nop
                  nop
                  srai         t1, t3, 1
                  sltiu        tp, s6, 1374
                  sltiu        tp, s2, 1305
                  sra          s6, sp, s7
                  andi         s10, a2, -1713
                  lui          a7, 212361
                  sra          a4, s2, a1
                  sltu         s8, a2, t5
                  nop
                  nop
                  nop
                  slt          a1, zero, s9
                  sltu         s0, s11, tp
                  sltu         a7, s11, s1
                  sltu         s3, a1, s5
                  sub          t4, t6, gp
                  sra          s2, s8, s0
                  or           s6, s7, t3
                  addi         s10, a3, 1296
                  lui          a5, 299607
                  add          t0, a5, s1
                  slti         tp, t2, -1672
                  add          a4, a5, gp
                  auipc        a6, 1014106
                  slt          sp, zero, sp
                  ori          s11, s2, 220
                  sll          s9, s7, s9
                  nop
                  ori          s2, s9, -699
                  andi         t5, a0, -2031
                  slti         a4, s9, 57
                  sltu         tp, s11, s7
                  sub          t3, s0, s11
                  or           s3, a6, zero
                  lui          s1, 142737
                  sra          t1, t4, t2
                  slti         a5, a1, 1773
                  sra          t2, s11, ra
                  ori          sp, tp, 77
                  or           s1, a0, a6
                  sltu         t2, a1, s9
                  xor          s0, s10, t6
                  lui          a1, 570021
                  sltiu        t6, s5, -552
                  slt          s9, s0, t3
                  and          tp, t1, a7
                  auipc        s9, 169018
                  xori         ra, s3, -109
                  srai         s6, t6, 2
                  sltu         s8, a1, s8
                  addi         t4, t5, -866
                  andi         t5, t3, -1304
                  addi         t6, t5, 1648
                  nop
                  srli         s8, a5, 26
                  slti         tp, sp, -32
                  srl          t1, t5, gp
                  addi         a1, t6, 1103
                  nop
                  slt          gp, gp, s7
                  or           s8, a0, a3
                  ori          t2, a1, 1085
                  andi         t4, s11, -841
                  andi         s10, t5, -1849
                  sub          t1, tp, s4
                  or           t6, t3, s9
                  sltiu        t3, s2, 1949
                  auipc        gp, 1013025
                  sltiu        s2, t0, 2043
                  sltiu        s3, s0, 1981
                  auipc        s7, 486801
                  slt          a1, s2, a7
                  sll          t0, t0, a6
                  srl          a4, sp, t5
                  ori          t2, s5, 940
                  nop
                  or           zero, s5, t1
                  ori          a5, gp, -119
                  andi         s11, a5, 1601
                  auipc        s0, 566673
                  sll          tp, a3, a3
                  and          a7, a2, s1
                  or           s7, a2, a1
                  sub          s10, a3, tp
                  lui          t3, 841912
                  slli         a0, s8, 20
                  slli         t1, t0, 7
                  srli         t3, a2, 30
                  andi         a6, s0, 822
                  or           s10, t0, a2
                  slli         t4, s2, 5
                  srli         t3, t0, 10
                  addi         s9, a7, 1714
                  sltu         s11, a2, tp
                  lui          t6, 75819
                  srai         a6, a2, 0
                  sltu         s2, s4, t5
                  or           gp, tp, s8
                  add          a7, s10, gp
                  lui          s0, 122182
                  srli         a0, t2, 4
                  auipc        a5, 436610
                  slt          sp, t2, tp
                  ori          t5, s9, 110
                  xor          s8, a0, s1
                  srai         tp, s11, 23
                  addi         s10, t5, -942
                  nop
                  sltu         sp, a4, a6
                  andi         t5, s8, -2007
                  addi         t0, a6, 284
                  slt          a6, s1, s10
                  sltiu        s6, s9, 1771
                  srl          t4, ra, s8
                  add          a1, zero, a6
                  slti         zero, t6, -21
                  slt          a5, s9, s10
                  auipc        t5, 623323
                  slli         a7, zero, 11
                  srli         s10, t2, 10
                  xori         s11, a4, -1088
                  srl          a4, s5, sp
                  srli         a4, a0, 14
                  srai         gp, s5, 5
                  and          a5, s0, t6
                  sltu         t0, s4, s9
                  slt          tp, t1, sp
                  andi         zero, s5, 1475
                  lui          s9, 819280
                  auipc        s2, 314967
                  xor          a3, s8, s11
                  sltu         t5, s11, s6
                  sra          gp, gp, t1
                  slti         t5, t6, -1931
                  slt          sp, a1, ra
                  srli         gp, a3, 4
                  slli         a7, sp, 23
                  sltiu        s2, t1, -91
                  slti         s11, s5, 736
                  srai         s2, s6, 31
                  sll          t1, t4, s3
                  xor          ra, s11, s11
                  sltiu        s3, a4, 889
                  lui          s2, 126253
                  slli         t4, t1, 19
                  sltu         s9, a7, a1
                  add          t2, gp, a2
                  sltu         t2, zero, a0
                  and          zero, a6, s2
                  addi         a7, zero, 1087
                  srl          t4, s5, s4
                  slli         a4, gp, 8
                  sll          s8, s6, sp
                  nop
                  add          s8, a7, a3
                  or           a1, t1, a1
                  add          s10, t0, t0
                  sub          ra, s0, s9
                  nop
                  addi         sp, s9, 1603
                  sra          s1, t4, s5
                  slli         zero, a5, 17
                  sub          s10, ra, s9
                  auipc        a3, 1013194
                  sltu         t6, s1, s2
                  ori          s8, a1, 563
                  lui          s7, 56886
                  slt          t1, a6, s3
                  ori          a7, t3, 1935
                  srl          s1, s5, t4
                  slt          a7, s9, s4
                  slt          a0, s3, a3
                  srai         s3, a2, 9
                  sll          t0, s1, t3
                  srl          gp, s10, s2
                  srai         t5, s3, 3
                  or           tp, s3, a2
                  and          s8, t2, a0
                  sltiu        a3, a0, 1268
                  slti         t0, zero, -519
                  sltu         a0, t6, s10
                  auipc        a0, 907522
                  sltiu        sp, t5, 1354
                  lui          a5, 398878
                  nop
                  sltu         t2, t0, ra
                  nop
                  srai         zero, t0, 17
                  sltiu        s11, ra, 387
                  slt          s1, t0, s7
                  or           t6, zero, sp
                  slli         t3, s6, 12
                  slt          zero, s6, a3
                  srl          zero, a6, t0
                  ori          t4, a4, 621
                  srai         t0, s8, 16
                  xori         t3, t0, 250
                  srai         s1, s7, 22
                  addi         a4, s2, 1730
                  slt          ra, s3, t3
                  or           a3, tp, a7
                  lui          s10, 378800
                  slli         t1, s1, 31
                  srai         s11, a7, 29
                  and          zero, a7, t3
                  sltu         s10, a5, a5
                  srl          a4, tp, s1
                  slti         a4, s9, -1084
                  or           t0, a3, s4
                  sll          zero, s11, t0
                  sltiu        s1, a2, 518
                  xori         s3, ra, -1076
                  addi         s0, a5, -283
                  auipc        s3, 169867
                  andi         tp, a5, 1333
                  ori          s7, s4, -1556
                  xor          s10, t5, s11
                  srai         zero, a3, 22
                  auipc        s11, 873831
                  slti         a3, a1, 286
                  srli         s3, t4, 18
                  addi         a5, s5, 352
                  srl          s0, s9, zero
                  sll          a4, gp, t0
                  sltu         t4, s6, s2
                  slli         ra, s3, 17
                  slli         t3, s1, 26
                  srl          s6, t2, gp
                  sltiu        t4, ra, 786
                  slti         a1, t3, -575
                  ori          s0, ra, -1019
                  srli         t2, t3, 26
                  xor          zero, t3, t1
                  xori         tp, t4, 1995
                  sll          s2, a2, a3
                  lui          s8, 90469
                  addi         t4, s4, -1314
                  and          s3, gp, s9
                  andi         t1, s5, -320
                  nop
                  srli         tp, s4, 22
                  xori         t6, s8, 89
                  andi         t0, sp, -1171
                  sra          s8, s3, tp
                  add          ra, t1, a7
                  slti         t1, t3, -131
                  xori         t6, a6, 2003
                  and          s3, tp, gp
                  xor          s2, ra, s5
                  sltiu        t3, s3, -1977
                  addi         a3, a1, -941
                  srli         s2, a4, 8
                  sltiu        sp, t3, -1112
                  sub          s1, s1, t6
                  srl          a6, a0, t0
                  slli         a7, t0, 18
                  addi         t5, t1, 1956
                  xori         s3, gp, -1704
                  ori          a4, a6, 243
                  auipc        s3, 236400
                  sub          a7, zero, s11
                  sub          t1, ra, gp
                  slt          a3, s11, s6
                  andi         a1, s6, 507
                  xor          s11, a5, s8
                  slt          s9, a3, a4
                  slti         s9, s7, -340
                  xori         a0, s11, -654
                  sll          s0, s1, a4
                  slti         s10, gp, 995
                  sltu         s6, s5, s8
                  srai         s10, tp, 26
                  sll          ra, a7, zero
                  sll          a0, s2, s5
                  addi         sp, s2, -1082
                  slt          sp, sp, t1
                  addi         a1, ra, -1419
                  sll          s10, t1, s0
                  and          t2, a4, t2
                  sltu         s0, gp, s2
                  add          gp, s11, t3
                  sub          a1, tp, s0
                  xor          tp, ra, t3
                  addi         s2, s4, -1715
                  sub          a7, t6, s5
                  nop
                  sltiu        t3, s5, -884
                  ori          a0, s10, 842
                  xori         t6, a3, -335
                  slti         s6, a1, -2024
                  sub          s10, t0, gp
                  auipc        a6, 95519
                  andi         sp, t6, 912
                  xor          sp, s3, zero
                  add          a1, a3, t2
                  sll          a1, tp, a5
                  or           a6, t2, a2
                  xori         a3, t1, -267
                  srai         s3, s1, 31
                  nop
                  ori          a3, t4, 302
                  sltu         zero, a4, a2
                  sub          s9, a0, s4
                  srl          t3, a7, s8
                  sltiu        t3, s0, 32
                  srli         s3, s0, 27
                  lui          s6, 649044
                  xori         tp, zero, 1724
                  sltu         s1, s9, a4
                  sltiu        t6, a2, -1729
                  sltiu        t3, a6, 979
                  xori         s8, ra, -47
                  ori          t5, t4, -378
                  ori          sp, tp, -2023
                  slti         s11, t2, -251
                  sltiu        gp, s8, -1320
                  srl          a7, a4, a3
                  add          t5, s10, s11
                  sll          t3, s6, s7
                  ori          gp, s3, 1449
                  add          a4, tp, s8
                  xori         t5, t5, 1264
                  xori         t3, a7, 424
                  sltu         t2, s3, s6
                  lui          a5, 224734
                  sub          t6, s5, s0
                  xori         t6, t5, 1634
                  lui          gp, 520361
                  sltu         t4, tp, t3
                  slli         s6, s10, 8
                  andi         a0, t3, -1684
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a6, 0xfbb86476
                  li           s0, 0x0
                  li           t1, 0xffffffff
                  li           a1, 0x80000000
                  li           a0, 0x0
                  li           t2, 0x0
                  li           ra, 0x80000000
                  li           t4, 0xffffffff
                  li           s11, 0xffffffff
                  add          a1, a1, ra
                  lui          t4, 113172
                  auipc        t2, 661709
                  nop
                  nop
                  sub          a0, s0, a6
                  addi         t4, a5, 28
                  addi         s11, a0, -1261
                  addi         t1, t4, -1860
                  add          t1, t1, t2
                  sub          t2, t1, t1
                  lui          s0, 837543
                  nop
                  sub          a5, t1, s11
                  sub          t4, a0, ra
                  add          s0, t1, a5
                  add          s11, t1, t2
                  addi         a0, t4, 1202
                  nop
                  nop
                  auipc        t4, 651282
                  addi         s11, t2, -1009
                  addi         a6, t4, -1792
                  lui          t4, 595050
                  lui          a6, 663511
                  nop
                  nop
                  add          t4, a6, a1
                  lui          s11, 255241
                  nop #end riscv_int_numeric_corner_stream_3
                  sra          a5, s2, zero
                  add          s0, a2, s6
                  xori         tp, a0, 1974
                  srl          s2, s0, s4
                  sll          s7, s4, s6
                  andi         a5, t5, -1606
                  auipc        tp, 477981
                  and          s8, a2, t0
                  srl          t4, s1, a4
                  and          t0, s5, a5
                  xor          s7, t0, a1
                  xor          gp, ra, sp
                  srli         s2, t3, 1
                  srli         a3, tp, 8
                  lui          a1, 284737
                  sltu         t1, zero, s1
                  srai         s3, a0, 7
                  nop
                  andi         a0, t4, -399
                  and          t4, s8, s8
                  xori         t6, s10, -1269
                  srl          t2, tp, s11
                  addi         s3, s7, 553
                  slli         s1, t6, 19
                  slli         zero, s1, 23
                  slli         s1, a1, 20
                  andi         s11, ra, 1433
                  srli         t6, t4, 25
                  slli         s6, a2, 22
                  lui          s11, 385577
                  lui          a7, 166045
                  xori         a7, s1, 1584
                  auipc        t5, 547489
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s2, 0xffffffff
                  li           s0, 0x17ce270b
                  li           a5, 0xffffffff
                  li           s8, 0x6ef9d9f3
                  li           ra, 0x80000000
                  li           t1, 0x604a9e0a
                  li           s3, 0xb87d6870
                  li           t6, 0x0
                  li           a7, 0xffffffff
                  addi         t6, s3, 919
                  auipc        ra, 397180
                  addi         s8, s0, -714
                  nop
                  addi         s3, s0, -1178
                  addi         t1, a7, 1894
                  nop
                  addi         a7, ra, 1034
                  nop
                  add          s2, t6, s2
                  lui          t6, 725280
                  addi         s3, s3, -132
                  add          a7, s8, t1
                  sub          s3, s2, a5
                  sub          t1, s8, t1
                  addi         a5, s8, -234
                  sub          s0, ra, s3
                  nop #end riscv_int_numeric_corner_stream_1
                  addi         a6, a2, -1439
                  or           t6, a0, t0
                  slli         a1, a6, 22
                  sltu         s7, t1, a3
                  srai         s2, s5, 25
                  or           a4, s0, s8
                  srl          s7, t5, a1
                  sltiu        t5, t4, 1271
                  sltu         s3, a1, t0
                  auipc        ra, 945953
                  addi         t2, sp, 1672
                  addi         zero, t4, -2005
                  add          a0, gp, a6
                  and          a4, t4, gp
                  and          s6, a7, t5
                  sll          t1, s0, s10
                  srli         a6, s11, 19
                  lui          t6, 40126
                  sra          tp, s2, s7
                  ori          tp, a3, -1638
                  andi         s7, s3, -622
                  sltiu        a5, s10, 1854
                  slt          s9, a5, s10
                  sll          tp, s11, s7
                  srai         t1, s8, 15
                  auipc        s9, 482652
                  sltu         a5, t3, tp
                  nop
                  xori         a5, s3, -1923
                  ori          s10, t2, 1685
                  xori         t5, t3, 1332
                  slti         s6, s3, -1506
                  nop
                  sll          a5, a1, a2
                  andi         a7, t5, -4
                  nop
                  sub          t0, s8, s7
                  sltu         a0, s10, t6
                  sltiu        t3, t2, -485
                  xori         a4, s10, 2041
                  addi         t4, s6, 403
                  or           sp, zero, tp
                  lui          t5, 740128
                  xori         s10, t0, -398
                  sra          s1, sp, a5
                  slt          s7, a6, a4
                  xori         a6, s0, -601
                  xori         s9, a1, -4
                  or           a3, s0, s1
                  srai         zero, s4, 29
                  slti         a1, s11, 671
                  andi         s1, a2, -1386
                  and          s8, a7, s9
                  auipc        s9, 520740
                  nop
                  srl          s3, t5, s7
                  sub          a6, s6, s10
                  or           zero, a6, a1
                  ori          s7, ra, -1891
                  sra          ra, a4, s7
                  xori         a6, s6, -992
                  andi         gp, sp, 93
                  slt          sp, s7, t3
                  sra          t0, t2, sp
                  sltu         a7, a0, a4
                  srli         a3, a3, 17
                  nop
                  addi         t0, s11, 845
                  lui          a1, 865179
                  ori          a7, s11, 417
                  addi         s0, t5, 1
                  srl          t6, t1, s11
                  xori         t2, a2, -609
                  and          s0, a3, a2
                  sra          s8, s9, a3
                  slti         zero, t1, -249
                  srli         gp, gp, 8
                  or           tp, t3, s5
                  sltu         ra, t2, t1
                  auipc        t3, 238056
                  xori         s6, s5, 1948
                  add          a7, ra, s6
                  or           a4, a6, s2
                  add          t0, tp, a7
                  lui          a4, 807153
                  srli         t0, a2, 15
                  slli         t5, t4, 29
                  and          t3, a7, s10
                  xor          s3, s2, s2
                  srai         s0, s4, 26
                  xori         zero, zero, 1005
                  slti         t2, s7, -1117
                  slli         s9, zero, 18
                  add          ra, tp, t1
                  sub          ra, t3, a2
                  ori          t1, zero, 1347
                  srai         a4, t0, 29
                  auipc        t4, 258876
                  sltiu        t0, a4, -146
                  and          s7, a3, a5
                  ori          s2, t0, -2001
                  slli         a6, gp, 27
                  sll          t5, a1, s4
                  and          t2, s6, s7
                  xor          a5, ra, t3
                  xor          s11, s1, t4
                  sra          s10, tp, s8
                  and          a1, zero, zero
                  lui          t1, 471204
                  andi         s6, t1, -1556
                  add          t2, s10, s4
                  sltu         s6, s3, t2
                  ori          s0, sp, -1115
                  sll          t4, a4, a4
                  sltiu        t0, gp, 923
                  lui          t3, 138271
                  slli         sp, gp, 1
                  srai         t1, a1, 23
                  andi         t0, t5, -395
                  ori          s9, s7, 1977
                  sll          a4, s6, s1
                  sltiu        a0, t0, -1595
                  slti         t3, a0, 1139
                  srl          s8, t5, t4
                  xori         s6, a7, 1892
                  lui          s9, 225062
                  nop
                  addi         s1, tp, 1371
                  add          s7, s5, s1
                  sub          a6, s8, t3
                  sltiu        a5, s7, 970
                  or           t1, s10, s3
                  slti         s7, s0, -1665
                  nop
                  and          t1, t5, zero
                  srl          a5, t1, s3
                  xor          ra, gp, s7
                  xori         gp, s8, -329
                  xori         t5, t5, 306
                  srl          a6, a1, s7
                  lui          gp, 119748
                  nop
                  and          t4, gp, t1
                  nop
                  auipc        s11, 253095
                  slti         s2, s0, -1744
                  sltiu        t3, t2, -1135
                  add          t1, s3, zero
                  addi         tp, zero, -1234
                  add          s6, zero, ra
                  slti         a5, a2, -751
                  add          t0, t1, gp
                  and          s1, s11, s10
                  nop
                  ori          t1, s11, 1229
                  add          a1, s3, s6
                  or           s7, a7, a6
                  sltu         t5, t0, s6
                  slli         s0, s2, 29
                  andi         zero, s1, -728
                  ori          a0, s0, 1646
                  ori          ra, a2, -1738
                  sra          s3, s7, a1
                  srli         a5, t4, 16
                  slti         s6, t3, 1664
                  srl          sp, tp, s7
                  slti         t3, s2, -1437
                  addi         tp, s3, -911
                  slli         s9, t2, 1
                  or           ra, gp, a7
                  sltiu        s8, s3, 517
                  sltu         t0, s4, sp
                  sra          a3, a1, s4
                  addi         tp, s8, 1034
                  sub          t4, s7, s8
                  add          ra, a5, zero
                  srl          t2, s10, t4
                  ori          s3, s8, -1557
                  lui          s8, 33672
                  ori          s3, s0, 1031
                  sra          s6, a7, t3
                  slti         s9, a2, 615
                  sltiu        t1, s7, 1594
                  and          a1, sp, s4
                  sll          a3, s0, s0
                  xor          tp, s3, gp
                  add          t3, t3, s10
                  sltu         a6, a7, s6
                  srli         t2, s11, 17
                  xori         t5, a0, -1864
                  auipc        ra, 668821
                  and          a4, s7, s2
                  xori         s3, s2, -1342
                  addi         s10, s6, 938
                  or           tp, a3, t2
                  sll          sp, s2, gp
                  slti         s6, s11, 102
                  srai         a4, t1, 3
                  slt          a5, a6, s1
                  srl          t5, t2, a2
                  sltu         t3, a1, ra
                  xor          a6, t5, s9
                  srai         s3, a2, 21
                  sub          t6, s0, t0
                  sub          t1, s3, t4
                  sltiu        s3, t0, 733
                  add          s2, t3, s11
                  andi         s3, s1, 1718
                  slt          zero, s5, t2
                  lui          s0, 63510
                  add          t5, s6, tp
                  nop
                  and          s8, t6, a4
                  sltu         tp, s7, s4
                  srl          t5, s8, a3
                  sub          s7, t6, t4
                  xori         a4, a2, -764
                  srai         t1, s8, 4
                  srli         a1, s8, 24
                  auipc        s8, 302139
                  sltiu        zero, s4, 1218
                  nop
                  xori         t0, tp, -969
                  and          s10, s1, s5
                  sra          a6, a6, t5
                  srai         s6, t3, 15
                  or           a0, a6, tp
                  lui          s0, 641540
                  nop
                  slli         a3, a1, 11
                  and          s3, tp, a4
                  andi         s1, t2, 1732
                  addi         t0, a4, 1338
                  sltiu        a7, a7, -202
                  addi         s11, t2, 48
                  srli         s6, a7, 19
                  sltu         s6, tp, ra
                  and          a1, s11, a7
                  srl          t2, s8, t0
                  andi         t3, s5, 957
                  addi         t3, t2, -320
                  srl          t0, s2, gp
                  addi         s10, s6, -1804
                  sub          ra, s0, a0
                  andi         ra, t6, -222
                  add          tp, s4, zero
                  lui          a6, 339444
                  sltu         s1, a3, zero
                  srli         s0, ra, 8
                  ori          s0, s2, -1604
                  andi         gp, s6, -1216
                  addi         s8, s3, 1090
                  xori         ra, t1, -174
                  ori          zero, a4, 1140
                  srai         a5, zero, 25
                  srai         a4, sp, 0
                  slt          a5, t6, s0
                  and          s1, a0, s4
                  xori         s7, gp, 107
                  add          tp, t4, s6
                  srli         s7, a3, 27
                  andi         s9, ra, -926
                  srl          t0, t5, a4
                  nop
                  and          tp, zero, a1
                  slli         tp, gp, 26
                  auipc        s3, 420161
                  add          s9, t2, s11
                  slti         s6, s8, -173
                  add          s11, t1, gp
                  slti         s8, t5, 702
                  auipc        a7, 585724
                  xori         t4, a0, 1421
                  addi         t3, t6, 834
                  slli         s0, a6, 29
                  xori         t4, tp, -356
                  sltu         a1, a4, a5
                  nop
                  andi         a1, s3, -1183
                  slli         tp, s5, 29
                  sra          s7, a2, s2
                  sll          a6, s5, t5
                  xori         s7, t1, 969
                  sra          a0, s7, s6
                  lui          t4, 981499
                  sltu         s3, t3, a7
                  srl          s8, a6, a3
                  ori          zero, s3, -385
                  slt          t0, sp, t1
                  slt          s6, gp, a2
                  srl          tp, gp, s10
                  srl          s7, sp, sp
                  slli         a1, a2, 29
                  xori         s6, s11, -795
                  sltiu        a6, s1, -1888
                  xor          gp, t0, t4
                  nop
                  and          a7, t3, a0
                  andi         a1, s9, 1265
                  ori          a0, s10, -368
                  sltu         gp, zero, t6
                  auipc        ra, 656514
                  sltu         s6, ra, s9
                  sll          ra, s1, t3
                  or           a0, t3, t1
                  auipc        t3, 520678
                  srli         s2, a5, 20
                  nop
                  srl          t5, s3, s9
                  nop
                  and          s10, a7, s10
                  srai         s3, tp, 31
                  addi         s11, s0, -1401
                  or           s10, t4, s9
                  xori         a6, zero, 956
                  srai         tp, t5, 4
                  lui          s6, 849664
                  sra          s7, a6, a0
                  addi         tp, t5, 1164
                  and          s10, ra, s6
                  slti         gp, s5, -2048
                  andi         a6, s1, 433
                  nop
                  srai         t3, ra, 26
                  sra          t1, s9, t6
                  sra          a6, s5, s9
                  andi         a5, a4, 355
                  sltu         s9, s3, t0
                  auipc        s6, 491531
                  srai         s0, s6, 12
                  nop
                  xor          s0, a5, t6
                  auipc        s0, 688288
                  sub          a7, s10, a6
                  xor          zero, s8, a1
                  sltu         s3, a0, s9
                  lui          a5, 197288
                  addi         t4, s11, 1549
                  slli         s6, a4, 11
                  sltu         s7, t4, s4
                  lui          ra, 219882
                  nop
                  add          s8, a4, a0
                  slt          a3, t0, s11
                  xori         gp, t4, -785
                  ori          gp, a7, -1230
                  ori          s7, a0, -537
                  ori          tp, zero, 2026
                  andi         a5, a5, -1263
                  srl          s7, t0, tp
                  slti         t4, a5, 1243
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_39
                  li           a4, 0x80000000
                  li           t6, 0x80000000
                  li           s11, 0xffffffff
                  li           t4, 0x0
                  li           a1, 0x0
                  li           s10, 0x0
                  li           t2, 0x7ae2fc92
                  li           ra, 0x9d219c4e
                  li           s9, 0x80000000
                  auipc        t2, 839719
                  add          s10, ra, t2
                  nop
                  sub          t4, t4, ra
                  add          a4, s9, s9
                  addi         t2, t4, 630
                  sub          ra, ra, t6
                  add          a1, t2, t2
                  sub          s9, s10, a1
                  sub          s11, a6, a1
                  add          s11, a6, t2
                  sub          a4, t6, s10
                  lui          s9, 374032
                  nop
                  add          a6, ra, s11
                  add          a4, s9, s9 #end riscv_int_numeric_corner_stream_39
                  nop
                  auipc        s2, 329423
                  or           sp, a1, s0
                  sll          t2, tp, a3
                  sra          tp, a4, tp
                  srl          t0, s10, a3
                  slt          t6, a3, s1
                  sub          a0, s10, a2
                  lui          a3, 651530
                  slt          t1, s0, s0
                  slt          s10, s9, t4
                  auipc        a6, 483989
                  srai         t3, s2, 27
                  andi         a7, s3, -493
                  sll          t3, s9, a6
                  and          a1, t3, t2
                  sra          t1, a6, s9
                  xor          t3, s9, t6
                  srl          a6, a5, t5
                  sll          s6, s4, sp
                  srai         a7, s10, 22
                  nop
                  nop
                  srai         s11, gp, 31
                  sltu         s8, s9, s1
                  auipc        s6, 633006
                  slli         s6, a3, 4
                  slli         s3, s9, 2
                  add          s9, gp, s7
                  auipc        a7, 631674
                  srai         a3, a7, 15
                  auipc        s0, 945159
                  srai         t0, zero, 22
                  auipc        s8, 163142
                  xori         s2, t3, 981
                  nop
                  nop
                  andi         t1, s0, -1524
                  and          s7, a2, a5
                  sll          t1, a1, tp
                  auipc        s6, 398331
                  nop
                  auipc        s3, 640268
                  or           t5, a2, a3
                  sub          s3, ra, s11
                  andi         t4, t2, 1190
                  srli         t3, s4, 1
                  sub          s3, ra, s9
                  or           t5, s0, s2
                  or           t2, a3, a0
                  lui          sp, 818535
                  xori         t2, s6, -2045
                  slli         s9, a4, 27
                  or           t6, sp, a1
                  lui          zero, 1043326
                  xori         sp, s1, -221
                  slti         s1, a3, -1104
                  sll          a0, s4, s0
                  lui          a6, 739236
                  add          a0, t6, s9
                  andi         t0, t6, 901
                  lui          s1, 176902
                  ori          s11, tp, 1659
                  srai         a3, t5, 0
                  sub          t4, ra, s4
                  slt          a6, t3, s1
                  srli         t1, t5, 11
                  sltiu        a6, t3, 789
                  xori         s6, s2, -2021
                  slti         tp, s9, -1171
                  and          a4, t3, s7
                  and          gp, s3, ra
                  sltu         a7, gp, s7
                  sltu         a1, zero, a6
                  sub          a0, t1, s3
                  or           t4, s3, t4
                  xor          t5, zero, s2
                  slli         t2, a4, 12
                  srl          zero, a6, t4
                  xori         a7, t5, -1564
                  slt          s3, s0, s8
                  auipc        s6, 143711
                  xor          s0, ra, a7
                  srli         s6, s6, 12
                  addi         s1, t1, 1056
                  srli         a0, s1, 2
                  xori         s2, a4, -1522
                  xori         s1, a0, 582
                  slli         sp, a4, 24
                  slt          s2, sp, a4
                  sltu         a0, t5, sp
                  andi         s8, t1, 967
                  sub          a3, t0, tp
                  addi         s11, s5, -622
                  ori          gp, sp, 497
                  slli         s8, a0, 24
                  sltu         a6, s8, a0
                  sra          tp, s7, s7
                  slti         s7, t1, 811
                  sra          s9, s9, ra
                  or           s7, zero, t4
                  add          t1, gp, a7
                  and          ra, s3, t5
                  auipc        t6, 661310
                  slt          a3, s2, a6
                  slt          s8, a1, a5
                  xor          tp, s0, a7
                  xor          a4, a1, a7
                  slti         zero, t2, -221
                  sra          t3, a6, sp
                  slli         s11, s8, 14
                  auipc        a0, 652738
                  xori         gp, t6, 1583
                  nop
                  slli         a3, s5, 8
                  add          s9, s6, s2
                  or           s1, s1, a7
                  srai         t2, gp, 0
                  sltiu        a4, t4, 87
                  sltiu        t6, a2, 501
                  srai         s2, t2, 6
                  auipc        s1, 481875
                  xor          zero, t1, s8
                  sltiu        a0, t0, 1870
                  addi         a4, a6, -1523
                  addi         a5, a3, 366
                  sub          t0, s4, s8
                  addi         a4, s0, 223
                  add          s7, t4, a6
                  slti         a0, gp, 1487
                  srli         s0, a3, 31
                  add          tp, t4, s11
                  sll          s1, a4, s3
                  add          t4, t6, s5
                  xori         s2, s5, -1164
                  sltiu        gp, s2, -186
                  srli         t4, t6, 29
                  andi         s8, a2, -1262
                  addi         ra, s8, -1370
                  srai         t4, a7, 8
                  lui          s11, 90112
                  sltiu        tp, s4, 160
                  srl          a5, zero, t3
                  or           t4, s0, sp
                  sltu         a0, s11, t5
                  xori         s10, zero, -929
                  sub          a1, t1, s8
                  srai         a3, s10, 6
                  sra          s1, t5, a3
                  slt          tp, s6, s2
                  ori          a4, a6, 1972
                  addi         s1, a3, 2031
                  nop
                  or           t2, s7, s2
                  srai         sp, zero, 25
                  xor          t4, s10, a4
                  srli         a3, sp, 25
                  slli         t2, t2, 23
                  slti         s1, a5, 1265
                  sll          t0, t1, s11
                  srai         a1, s10, 21
                  sll          tp, a0, zero
                  xori         t6, t4, -1427
                  srai         a0, s3, 17
                  xori         s11, a2, -625
                  addi         t4, a0, 751
                  xor          t6, s0, t0
                  nop
                  slli         sp, t3, 31
                  slli         t3, sp, 23
                  srai         a3, a3, 13
                  slt          a6, s3, s3
                  xori         zero, t0, 471
                  auipc        s7, 780056
                  sltiu        a1, tp, 105
                  srl          a7, t6, sp
                  sltu         t4, t5, s2
                  slti         s6, zero, -441
                  sltu         t3, zero, s8
                  auipc        a1, 288124
                  slti         s2, tp, 207
                  slt          s3, s11, s4
                  slli         s0, a6, 29
                  slt          t4, sp, s0
                  and          zero, t5, s1
                  srl          s11, s7, t2
                  srli         zero, sp, 29
                  and          s3, zero, s6
                  nop
                  slti         s6, zero, 1093
                  and          s6, s6, a0
                  and          s6, a1, sp
                  slti         a6, t3, -330
                  sltu         s1, tp, tp
                  and          s9, a6, a2
                  andi         s10, s3, -871
                  andi         t6, tp, -463
                  sll          a6, t5, s9
                  xori         t3, tp, 46
                  addi         s7, a7, 1888
                  ori          a7, s1, 437
                  xor          t2, s6, ra
                  addi         s6, t4, -1333
                  lui          s7, 472567
                  nop
                  sltiu        t2, a5, -198
                  nop
                  or           s11, a1, t1
                  sltiu        s9, zero, -772
                  sltu         s2, a7, s7
                  sltu         a7, s1, s1
                  srl          a3, s3, t3
                  lui          t3, 1011653
                  srli         tp, s7, 1
                  sra          a5, s6, s9
                  add          t1, s3, s11
                  add          t1, s7, a2
                  addi         a4, s3, 1061
                  sub          s7, s4, t2
                  lui          s0, 258250
                  slti         t2, a4, -1937
                  addi         t2, t1, -1697
                  xor          s2, a6, s10
                  lui          s6, 474761
                  sltu         gp, s8, t0
                  lui          t3, 877473
                  xor          t2, s1, a2
                  lui          t0, 561019
                  ori          zero, s5, -1650
                  srai         t0, a6, 4
                  nop
                  or           t5, t5, tp
                  nop
                  sltiu        a0, s0, 338
                  srli         t1, zero, 9
                  or           a6, zero, a0
                  srl          t0, t0, a2
                  and          s7, s5, t3
                  slt          t0, t5, gp
                  and          s1, a5, s1
                  sub          s2, t6, a7
                  andi         ra, t5, 957
                  xori         a0, gp, 1554
                  xori         t2, s10, 338
                  sltiu        a6, t6, -1386
                  nop
                  lui          a7, 746595
                  sltiu        s9, s9, -1414
                  sltiu        sp, a4, 21
                  ori          t5, tp, 241
                  add          a0, gp, s10
                  nop
                  nop
                  srl          gp, s0, a3
                  lui          t6, 998775
                  srl          ra, a1, a1
                  sll          s9, s2, a5
                  srai         gp, a5, 10
                  slt          a3, gp, ra
                  slli         t0, gp, 24
                  nop
                  slli         t2, gp, 4
                  andi         s0, s8, -1488
                  slti         s10, tp, -1446
                  add          tp, t6, a4
                  andi         s6, zero, 679
                  slt          t0, gp, s10
                  sltu         s9, sp, s11
                  slti         s11, a4, 41
                  lui          a0, 573454
                  addi         s10, s4, -1359
                  nop
                  sltu         t5, tp, t0
                  sltiu        s8, a3, 1741
                  addi         sp, s5, 1721
                  srai         t0, t2, 13
                  sltiu        s1, s3, 1873
                  srai         tp, a5, 11
                  sltu         a4, t4, t2
                  addi         a1, t5, 484
                  nop
                  sltu         t0, t1, a1
                  slli         s2, s3, 1
                  sra          tp, t6, s4
                  srai         tp, a0, 1
                  ori          s7, t6, 76
                  or           s0, s5, s11
                  ori          t5, t3, -1009
                  or           s3, t1, s6
                  or           a4, t5, zero
                  or           a7, s0, s8
                  xor          s1, t0, tp
                  sll          t4, tp, s6
                  srli         s10, s10, 12
                  srai         s10, a3, 18
                  slt          s9, gp, gp
                  slli         a3, a7, 6
                  nop
                  slt          gp, t5, a4
                  srli         tp, s4, 7
                  slli         s8, tp, 4
                  add          s3, a0, s0
                  auipc        s0, 691102
                  xori         t4, tp, -1829
                  sll          s1, a1, s9
                  or           a3, gp, t5
                  or           s10, s3, s9
                  lui          a7, 465750
                  srai         sp, sp, 30
                  slt          a1, s2, t2
                  slt          a4, t3, s9
                  sltiu        ra, s10, 571
                  sltiu        t2, s8, -1802
                  srai         gp, s1, 27
                  xori         t0, t6, -521
                  auipc        a6, 402737
                  ori          a3, s5, 1914
                  slt          t1, zero, zero
                  nop
                  sra          t4, s9, a3
                  add          a6, s10, a1
                  ori          s3, t0, -1753
                  slli         a3, s11, 22
                  sltiu        s1, s9, 1790
                  sltu         t3, s4, s7
                  and          s1, s1, t4
                  andi         s11, t2, -92
                  addi         gp, s4, 510
                  slli         s2, a4, 21
                  and          a4, t0, a1
                  sll          t0, s2, s9
                  sub          s8, s0, s4
                  addi         sp, t6, -106
                  srl          t0, s1, s5
                  xor          a3, t2, s8
                  slli         a5, t4, 3
                  srl          s1, s11, s3
                  nop
                  xori         s1, a4, -312
                  auipc        s1, 1005882
                  srl          zero, t3, a5
                  nop
                  slti         zero, a3, 381
                  ori          s7, s2, 201
                  lui          t0, 531034
                  sub          a4, sp, t6
                  addi         a1, a4, -1678
                  srai         gp, t1, 24
                  slli         gp, ra, 5
                  addi         t3, a5, 1036
                  add          tp, tp, t4
                  srl          s2, s3, s8
                  add          t2, tp, s4
                  auipc        t4, 261281
                  sll          a7, s5, t5
                  slli         a0, tp, 19
                  sra          a0, s5, a3
                  sra          tp, a6, a1
                  srli         tp, t1, 14
                  ori          ra, s0, 830
                  srli         tp, s7, 2
                  sub          s7, s5, a1
                  and          s6, t2, s10
                  or           t2, s7, ra
                  slli         tp, s6, 31
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a4, 0xbd04a522
                  li           ra, 0xffffffff
                  li           a7, 0xffffffff
                  li           a0, 0x0
                  li           s3, 0xf1da37a
                  li           t5, 0xffffffff
                  li           t2, 0x80000000
                  li           s0, 0x66adf056
                  li           t1, 0x0
                  addi         a0, t2, 634
                  addi         t5, ra, -1061
                  add          t6, ra, a0
                  addi         t6, ra, -658
                  lui          s3, 746385
                  add          s3, t1, s3
                  addi         s3, ra, 1753
                  add          t2, t1, t2
                  sub          t2, t2, t5
                  lui          a0, 581677
                  sub          t1, t5, t6
                  lui          t5, 125629
                  nop
                  lui          ra, 102491
                  add          s0, s0, t1
                  nop
                  auipc        a4, 795903
                  lui          s0, 828668
                  auipc        ra, 346285
                  sub          t1, s0, s0
                  lui          ra, 268091
                  nop
                  auipc        s0, 95311
                  addi         a7, ra, 1292
                  addi         a7, t6, -1675
                  add          s0, t5, t6
                  sub          a7, a4, t6 #end riscv_int_numeric_corner_stream_5
                  xori         ra, ra, 553
                  and          t6, s9, s4
                  ori          t4, t3, 1988
                  sltiu        s9, t1, -606
                  ori          a3, t0, -1140
                  addi         t4, gp, 1901
                  auipc        t2, 11834
                  nop
                  slt          sp, t3, tp
                  slli         s11, tp, 17
                  xor          a3, t0, a4
                  sll          a5, a5, a4
                  srai         a5, gp, 12
                  sltu         t4, a7, s3
                  sll          a7, a3, s1
                  or           sp, s0, t1
                  srai         a3, t6, 3
                  xor          a3, s7, s4
                  sra          a1, zero, s9
                  add          t1, s4, gp
                  andi         a5, s7, -312
                  srl          s1, a5, a0
                  lui          s6, 429799
                  slt          a5, a5, gp
                  slti         a6, a2, 1225
                  slt          s2, s4, a2
                  srli         a0, a3, 15
                  or           tp, tp, zero
                  sll          a3, s9, s11
                  srli         a0, s8, 9
                  sltu         a5, s1, s5
                  srai         s6, s11, 9
                  add          s11, a1, s5
                  srl          s9, a7, t5
                  xor          t0, s1, t4
                  addi         t3, a2, -1746
                  andi         s3, s6, 1593
                  sra          t1, a3, s1
                  srli         t0, s11, 5
                  srai         t0, s3, 17
                  sub          t5, t3, t1
                  and          sp, s6, s7
                  auipc        t1, 726639
                  slt          a6, a6, t2
                  andi         a0, s3, 1988
                  slt          t2, t1, sp
                  lui          s2, 996459
                  addi         t5, s0, 320
                  srl          gp, t1, a7
                  slti         t3, s2, -679
                  or           tp, a7, a1
                  andi         a6, t5, -812
                  xori         s11, t2, -1928
                  slt          t4, a7, tp
                  andi         ra, a3, 1560
                  or           t6, t0, a2
                  nop
                  xor          s0, s6, s10
                  sll          sp, t4, s0
                  or           s6, a4, s10
                  sll          s8, a2, t4
                  add          s11, t3, s7
                  lui          s0, 370616
                  srli         zero, t5, 16
                  sub          s3, a6, s3
                  slt          zero, s10, s9
                  sltu         t2, s9, gp
                  addi         ra, a7, 489
                  add          tp, zero, s4
                  sltu         s8, a5, t3
                  lui          s11, 990708
                  slti         gp, t0, -771
                  slli         a6, a6, 6
                  sra          a6, s6, s10
                  and          s6, t0, a5
                  slt          s9, s2, t2
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t0, 0x0
                  li           s1, 0x0
                  li           sp, 0x80000000
                  li           t2, 0xffffffff
                  li           a1, 0x0
                  li           t6, 0x0
                  li           s6, 0x0
                  li           s9, 0x25bc2703
                  li           t3, 0x80000000
                  addi         s6, t3, 1368
                  addi         t3, s9, -1091
                  sub          t0, t6, sp
                  auipc        t3, 606984
                  nop
                  auipc        a4, 230962
                  auipc        t3, 788019
                  auipc        sp, 642590
                  nop
                  sub          t2, s1, sp
                  add          s6, t2, a1
                  nop
                  addi         s6, a4, -1467
                  auipc        a4, 312683
                  addi         sp, t3, -1938
                  lui          a4, 895590
                  lui          sp, 481641
                  addi         a4, t0, -28
                  addi         t6, s6, 978 #end riscv_int_numeric_corner_stream_19
                  ori          t3, t4, -1156
                  sltiu        s6, a5, 879
                  xor          t1, s4, t2
                  xor          a5, t1, t3
                  andi         ra, t6, 100
                  and          t0, s3, a1
                  add          a4, s7, t1
                  and          s0, s5, s4
                  srl          a6, gp, s3
                  xori         s9, a3, 1150
                  sltu         t0, s11, t3
                  srai         a0, sp, 19
                  nop
                  or           s10, s8, t3
                  nop
                  andi         tp, a3, -1971
                  sub          s7, s1, s3
                  auipc        a0, 869520
                  auipc        a5, 939705
                  ori          t1, a6, 1756
                  nop
                  lui          t3, 549575
                  sltiu        a0, a3, 843
                  srli         a3, zero, 27
                  slt          s2, a1, a5
                  slti         s10, s0, 1327
                  auipc        a5, 917316
                  srl          a0, s6, s8
                  slti         s11, tp, 1917
                  sub          tp, s0, t0
                  add          t6, t3, a5
                  sub          s6, a4, s4
                  sltu         s0, t1, gp
                  or           a0, zero, s9
                  and          gp, s5, t2
                  and          s8, ra, s11
                  addi         s6, t6, -624
                  slti         t4, s11, -1274
                  or           t3, a6, s7
                  slli         s9, a4, 24
                  slti         s9, s8, -1449
                  slli         t2, s7, 6
                  slti         s8, s9, -1373
                  srl          s7, s1, a5
                  nop
                  sll          s1, t1, a2
                  xor          s2, a6, t5
                  slli         s2, s7, 21
                  and          s2, s7, s4
                  add          s1, s7, s8
                  slt          t5, tp, s3
                  andi         ra, t1, 267
                  srai         a6, s4, 5
                  slli         sp, a3, 14
                  auipc        t3, 127652
                  slli         t3, s0, 28
                  lui          a3, 323768
                  and          a4, t5, s3
                  nop
                  xori         s0, zero, 611
                  xori         a6, s4, -1951
                  sra          a5, sp, s2
                  nop
                  slt          s7, sp, tp
                  sub          s0, s6, gp
                  addi         t6, t3, -752
                  addi         a6, s9, 2006
                  sltiu        t0, s6, 1234
                  srl          zero, s9, a6
                  ori          zero, a7, 1276
                  ori          t6, s4, -1299
                  sltiu        s3, t4, 336
                  slt          t4, s3, t0
                  or           s6, s3, sp
                  ori          a1, a1, -1730
                  slt          a4, s3, t3
                  xor          t2, s8, a3
                  srli         s11, s10, 12
                  lui          a4, 436921
                  sub          a1, a0, s0
                  auipc        s1, 995136
                  add          a6, sp, a6
                  sra          a3, s1, t4
                  auipc        s3, 757411
                  slti         a7, s11, 1540
                  sll          zero, gp, s11
                  xor          t4, a0, t4
                  add          s8, t0, s8
                  or           tp, a1, t0
                  sub          t1, a6, ra
                  sltiu        t5, s5, -393
                  slt          s0, s10, s9
                  lui          s9, 307820
                  lui          gp, 794310
                  nop
                  ori          a1, s7, 538
                  xori         s11, zero, -1069
                  and          s6, s2, a1
                  nop
                  xori         a3, zero, -278
                  sltiu        t0, t6, -521
                  srli         t2, s0, 24
                  sub          a6, t0, s1
                  ori          gp, sp, -668
                  srai         t4, t6, 25
                  slt          a0, a0, a6
                  add          t0, s7, s2
                  sltu         s6, t0, t4
                  ori          s9, a4, 867
                  lui          s6, 80707
                  slli         sp, s7, 6
                  ori          a6, a2, 474
                  srl          s10, s10, t1
                  sll          s3, t6, t5
                  xor          s7, t5, s7
                  srli         gp, tp, 4
                  srai         sp, a4, 24
                  srai         t3, t3, 16
                  srli         zero, s2, 10
                  slt          a4, s8, s2
                  slti         t2, s9, 553
                  sltu         s6, t0, t1
                  srl          s6, s4, a3
                  slli         s1, s6, 7
                  xori         a5, s8, -1359
                  srl          zero, t5, sp
                  sltiu        a6, s2, -1295
                  slti         s0, a2, 1535
                  lui          a7, 830794
                  sll          t2, a3, s8
                  sub          a7, s10, t0
                  xori         a4, a3, -1458
                  srai         t3, tp, 6
                  ori          a1, t2, 1587
                  addi         t2, t4, 503
                  or           a4, t5, s6
                  sra          zero, a6, t3
                  lui          t4, 325028
                  auipc        s9, 524101
                  ori          s11, a4, -1960
                  sll          t2, ra, s11
                  ori          t2, s8, 1747
                  ori          a0, s9, 879
                  sltiu        s7, s8, -214
                  sltu         a0, s9, s11
                  xori         t1, t1, 233
                  srli         s2, s4, 1
                  add          a0, a2, a6
                  add          a3, t3, s9
                  xor          a6, zero, s7
                  sltiu        a5, sp, 1636
                  ori          s7, a7, 1904
                  srl          s0, a0, a7
                  srli         zero, ra, 29
                  srai         t6, a2, 29
                  addi         t2, a2, -732
                  lui          a3, 46474
                  add          t3, zero, s4
                  srli         s3, s1, 19
                  sltiu        s6, ra, 436
                  sub          t6, t4, s9
                  xor          s0, a7, a5
                  slt          t0, s5, s3
                  sltiu        s1, a3, 135
                  nop
                  sltiu        s6, zero, -1570
                  slt          a4, a4, s11
                  addi         gp, a4, 1001
                  sra          a0, s5, t2
                  srai         s10, t0, 25
                  srai         gp, s11, 2
                  slli         t6, s6, 11
                  slti         t4, s5, -1137
                  ori          gp, s2, 530
                  and          t6, gp, s11
                  slti         a6, t6, -1725
                  li           s6, 0xb213b981 #start riscv_int_numeric_corner_stream_31
                  li           a0, 0x3d90e3c8
                  li           t6, 0xffffffff
                  li           a5, 0x0
                  li           gp, 0xffffffff
                  li           a7, 0x917a4947
                  li           s0, 0xb04b4735
                  li           s11, 0x7f28085f
                  li           a1, 0xffffffff
                  li           s10, 0x80000000
                  sub          t6, a7, a7
                  lui          t6, 19680
                  auipc        s10, 593239
                  nop
                  nop
                  lui          a7, 729114
                  sub          a0, s0, s10
                  add          a7, a7, s11
                  auipc        s0, 377207
                  add          a0, s0, gp
                  lui          a7, 258011
                  auipc        s0, 436278
                  lui          a7, 844886
                  nop
                  lui          s0, 1018523
                  lui          s6, 168998
                  add          gp, s11, gp
                  lui          s10, 823725 #end riscv_int_numeric_corner_stream_31
                  srli         t3, s6, 0
                  xor          s7, a2, tp
                  addi         sp, zero, -176
                  lui          a6, 376154
                  sltu         s10, s5, t0
                  srli         s1, s3, 6
                  addi         sp, sp, 122
                  slli         s9, s1, 14
                  andi         s11, a4, -1189
                  srl          a1, s7, t5
                  srai         t1, s6, 2
                  sll          t4, s4, s8
                  slti         a4, a7, 1865
                  srl          t3, ra, tp
                  andi         t4, s10, -858
                  slli         t2, s7, 10
                  add          a0, t4, t3
                  and          a3, s2, t6
                  sltiu        s10, a4, -1864
                  or           a6, s6, s3
                  xori         s3, t1, -1186
                  slli         sp, s7, 2
                  srl          a3, t0, a5
                  sll          s6, s10, gp
                  auipc        a5, 495238
                  addi         s8, t5, -871
                  auipc        tp, 125839
                  srli         s1, a0, 10
                  addi         ra, t3, -1353
                  and          s8, tp, t2
                  addi         s11, s0, 1823
                  srli         s2, s10, 8
                  sub          t2, s10, s11
                  andi         t3, ra, 1953
                  slt          s3, a7, s3
                  and          a1, s9, t1
                  srai         s7, s9, 18
                  xor          tp, a3, a4
                  srli         s7, t0, 0
                  sra          a6, s1, s10
                  sll          a5, s1, a2
                  auipc        s9, 195701
                  auipc        t6, 910747
                  add          a5, sp, a7
                  slt          a4, t6, s2
                  or           t4, t3, s6
                  srl          t3, s8, a3
                  nop
                  auipc        s11, 999941
                  slti         s3, s1, -262
                  sub          t2, s0, s11
                  xori         s0, s4, -1147
                  or           t5, a0, s3
                  add          a0, s1, s2
                  sltiu        gp, s8, -1755
                  sll          a7, s6, a5
                  and          s9, t6, zero
                  andi         s6, a6, -1426
                  auipc        t4, 44300
                  sra          s2, a7, a3
                  srai         s3, t4, 16
                  nop
                  lui          t6, 363731
                  sltu         a0, s0, a6
                  and          s6, s1, t0
                  and          s11, s11, ra
                  add          t3, s3, gp
                  sra          a0, a3, s9
                  sltiu        a5, s7, -94
                  add          s0, ra, s9
                  srl          a4, s5, a6
                  slt          s10, a2, s0
                  slt          s10, a7, tp
                  srai         s7, t3, 24
                  sltiu        sp, a1, -856
                  and          s7, a1, zero
                  slti         t6, t3, -1051
                  slli         s0, t6, 10
                  addi         a3, a6, 1262
                  ori          s0, ra, -1185
                  sltu         sp, tp, a4
                  sub          a7, t1, s10
                  auipc        s6, 406966
                  srli         s3, a0, 19
                  addi         a0, a2, 182
                  sltiu        t5, t3, -933
                  sll          s9, t2, tp
                  slti         a7, s5, 408
                  sll          t3, t6, a2
                  srli         sp, ra, 9
                  auipc        a0, 670693
                  sltu         a6, s8, t2
                  ori          s0, a1, -1259
                  slt          t5, a6, s7
                  addi         tp, a2, 1149
                  srai         s10, t2, 6
                  sub          a3, a7, tp
                  add          tp, s0, s11
                  and          s3, s2, s4
                  sll          zero, t1, s1
                  sub          s8, a1, t6
                  sub          s10, s0, t1
                  nop
                  sltu         s8, a0, t4
                  sra          a3, a2, s4
                  xor          s0, a2, a4
                  nop
                  xor          s1, s7, zero
                  srl          t1, t6, a3
                  slt          s1, a7, t4
                  slti         t5, t4, 345
                  nop
                  xor          t3, t2, a0
                  auipc        a1, 233158
                  srl          a1, s7, s1
                  srl          s11, t0, tp
                  slti         a4, s10, 1141
                  nop
                  and          s1, a2, s1
                  sra          a4, t1, gp
                  srli         t5, a4, 31
                  addi         t3, a6, -144
                  lui          t3, 277722
                  sra          gp, t1, t2
                  sltu         a7, a4, a3
                  srai         tp, t3, 30
                  ori          a6, ra, 487
                  slt          t6, s11, a4
                  xori         t0, t2, 68
                  srai         t4, t4, 4
                  srl          a3, s6, s2
                  auipc        s1, 290741
                  and          a3, t1, a4
                  sub          t0, s1, s8
                  lui          a7, 276809
                  slli         s11, a7, 26
                  andi         tp, t4, -2032
                  slt          t4, a4, t2
                  slt          a6, s7, s8
                  auipc        gp, 67146
                  sltu         zero, s8, s1
                  sll          a7, t2, a0
                  auipc        a1, 1034460
                  add          gp, s10, s7
                  xor          t3, t6, s10
                  sra          ra, s4, a1
                  sra          gp, a2, t1
                  srli         t4, a1, 10
                  sra          s7, a0, t0
                  slt          s3, t2, s11
                  srai         zero, a0, 23
                  sltu         a5, t2, s9
                  addi         ra, s9, -498
                  sltu         s3, sp, s4
                  slt          t5, s2, ra
                  slti         sp, s6, -1194
                  or           tp, sp, s4
                  slt          a6, zero, s6
                  slli         s11, t0, 18
                  slti         t3, s10, 237
                  andi         s6, tp, 1459
                  auipc        t0, 583384
                  srl          s11, a4, ra
                  slti         s0, a5, 1929
                  and          s7, a0, t6
                  lui          s3, 549324
                  auipc        s7, 575626
                  slli         tp, a0, 29
                  slti         t3, s7, -65
                  lui          s7, 529304
                  add          t3, sp, a2
                  xori         t3, a1, -959
                  xor          tp, a0, s9
                  auipc        s6, 589124
                  ori          s11, a5, -580
                  xori         ra, t5, 1192
                  or           t0, ra, t0
                  srai         s9, s1, 0
                  sltiu        t6, t1, -605
                  srai         t1, a0, 26
                  and          t6, s4, a0
                  sltiu        zero, a3, -1830
                  slt          t3, s6, a6
                  sltu         t0, s3, tp
                  srli         s1, a0, 18
                  sltiu        s2, a3, 2041
                  slti         s11, a5, 1902
                  sra          s0, s1, t5
                  slti         s7, a5, 467
                  sll          s11, s9, s4
                  ori          a1, t5, -512
                  auipc        gp, 140791
                  srl          t6, t5, ra
                  sltiu        a7, s6, 855
                  andi         s0, t0, -1803
                  slt          a5, s5, a6
                  addi         sp, s9, -1160
                  sra          t3, a7, zero
                  slli         zero, s9, 5
                  sub          s7, t3, s7
                  ori          a7, t6, 1171
                  or           t6, s5, a2
                  lui          a4, 58925
                  srli         a5, s9, 19
                  srl          a1, tp, sp
                  slt          t5, a0, a3
                  xori         a7, s0, 547
                  srli         tp, s9, 29
                  sra          zero, t4, s5
                  sltiu        a4, s6, -1650
                  sltiu        t5, s8, -1039
                  slt          gp, a6, s2
                  nop
                  ori          tp, s1, -411
                  xor          a5, s3, s7
                  or           s8, s6, a0
                  addi         a3, gp, 294
                  xor          s6, t4, t0
                  auipc        t6, 696102
                  or           a6, t0, s5
                  ori          s7, s4, 1133
                  sub          s6, t2, s7
                  xori         s7, a0, 1475
                  and          t3, s2, s1
                  srl          s7, s5, t3
                  xori         s6, s1, -547
                  ori          s9, a4, 118
                  srli         tp, s5, 21
                  srl          t0, t1, a6
                  slli         zero, s6, 3
                  lui          s10, 988328
                  addi         s8, t2, -154
                  slli         s10, gp, 16
                  slli         t3, s7, 20
                  sub          a0, s2, t2
                  srl          gp, t6, t4
                  slti         t3, s8, 1724
                  srl          s11, a2, gp
                  sltu         s1, a4, a7
                  sll          t4, t0, a3
                  addi         ra, a6, -1209
                  or           t0, a0, tp
                  sll          s2, a5, s5
                  add          a6, s11, s1
                  addi         tp, a0, 56
                  and          t6, a2, s9
                  lui          s1, 631096
                  sra          s6, t5, t3
                  andi         zero, t2, 865
                  ori          a4, a3, -899
                  andi         a1, s1, 508
                  addi         s6, t2, -481
                  and          s10, s3, s0
                  auipc        t0, 564876
                  slt          t4, s7, t6
                  andi         a7, s6, -1527
                  addi         sp, t1, -751
                  sra          t1, s7, t1
                  xori         t0, gp, 1369
                  slli         a7, gp, 26
                  srli         a4, tp, 17
                  andi         s11, s8, -940
                  ori          a5, s10, 1176
                  srl          tp, t5, tp
                  sra          ra, gp, a5
                  auipc        a1, 863789
                  slti         ra, a4, 675
                  srli         s10, s1, 4
                  addi         t0, t6, -821
                  auipc        t5, 664842
                  slti         a0, a2, 282
                  sltu         a6, gp, t6
                  slt          s0, a3, s7
                  slt          t6, tp, t1
                  sll          t4, a6, a2
                  andi         s6, s1, -1881
                  auipc        s0, 115111
                  sra          t0, a5, ra
                  lui          s6, 277014
                  slt          a7, s2, t2
                  add          s7, t6, s7
                  add          s2, s6, ra
                  xor          a5, s1, ra
                  or           tp, ra, s6
                  ori          a4, t4, 1782
                  srli         t3, s7, 6
                  sltu         t1, a4, a0
                  sra          s2, t3, t2
                  srai         t1, s0, 1
                  srli         s8, s0, 17
                  sll          t3, s10, t1
                  or           zero, sp, a6
                  nop
                  add          a7, s0, s11
                  sltu         s2, a6, a0
                  sltiu        a7, a6, 1649
                  xor          t0, s1, a4
                  xori         a4, tp, -1220
                  sltu         t0, s0, t6
                  sub          s10, s2, a1
                  sltiu        gp, a4, -953
                  auipc        t1, 56027
                  srli         a5, t3, 17
                  ori          sp, s0, -1522
                  addi         a5, s5, 87
                  xor          tp, t0, s3
                  auipc        t0, 566188
                  sltu         s6, s9, s2
                  sll          t0, gp, s3
                  addi         t3, s8, 1447
                  andi         s7, a5, 1720
                  and          a3, s4, sp
                  addi         t1, t0, 438
                  xori         tp, s11, -647
                  srl          t0, s10, s10
                  add          t2, ra, s10
                  xor          t6, s9, a1
                  slt          a0, sp, s6
                  sltiu        ra, s2, 1665
                  slli         s2, s7, 23
                  nop
                  srli         a5, s4, 7
                  add          a4, t6, s1
                  add          t6, s5, a6
                  srai         s0, a7, 0
                  sll          a1, s1, a1
                  sltu         t5, t2, ra
                  slti         s9, s4, -793
                  slti         s7, ra, -558
                  sra          sp, s6, t3
                  sra          t3, a0, gp
                  slli         s7, ra, 2
                  sltu         s6, s11, a1
                  srai         t4, a1, 30
                  xor          s2, a0, a1
                  srl          gp, ra, a6
                  slti         t3, s1, 458
                  xori         t3, sp, 1087
                  or           s9, a5, t5
                  sltu         s10, t0, a5
                  xori         zero, a1, -808
                  slti         a4, s4, -1151
                  slli         a4, t0, 13
                  sll          a3, s10, s2
                  add          tp, s4, a4
                  srai         s2, t2, 17
                  or           t5, s7, t0
                  nop
                  slli         s11, s0, 1
                  slt          a7, s5, t3
                  slt          s7, t1, zero
                  auipc        s10, 272047
                  sra          s7, a2, s7
                  nop
                  xor          t5, a7, ra
                  sub          s1, gp, s0
                  sra          a5, t2, a4
                  sltiu        t2, t5, -835
                  xor          t6, a7, t4
                  sltu         s1, t6, gp
                  sub          gp, t6, a0
                  addi         s0, t6, 543
                  slti         a6, t0, 647
                  sltu         t5, s9, a7
                  ori          s6, t1, -281
                  add          t6, a0, a0
                  or           a4, a4, ra
                  slti         t3, s11, -1227
                  srl          t1, s11, t4
                  srli         sp, t6, 26
                  nop
                  addi         s8, s0, 322
                  lui          s0, 630322
                  xori         s2, sp, 1837
                  sub          a1, a0, s9
                  slli         a5, s3, 24
                  nop
                  andi         a6, a4, 1303
                  andi         a1, s4, -719
                  sltu         t5, s0, t6
                  srai         s7, s7, 21
                  srli         t6, s4, 26
                  nop
                  add          s2, a4, a3
                  or           s7, t0, s7
                  and          s8, t1, sp
                  xori         s7, s8, 1916
                  ori          a6, t6, 393
                  addi         a7, s6, -640
                  srai         t5, s5, 22
                  slti         a0, s2, -196
                  or           t6, s3, s10
                  addi         gp, s4, -869
                  or           ra, tp, t0
                  and          sp, gp, a6
                  add          t0, s11, gp
                  lui          t2, 102027
                  sltiu        s3, s11, -678
                  addi         t1, s9, -261
                  andi         t3, t2, -683
                  slti         s2, ra, -383
                  sltiu        gp, s2, -1354
                  sll          s6, gp, a1
                  auipc        t3, 420081
                  sltiu        s6, s8, -1163
                  slli         s11, s9, 19
                  or           t5, s0, t0
                  or           s0, s1, a2
                  slli         sp, s9, 29
                  sub          a1, s11, s7
                  srli         s11, t1, 29
                  add          t0, a0, s8
                  and          t1, s3, ra
                  slli         gp, ra, 21
                  sltu         a5, s3, t6
                  or           a4, s11, s8
                  srai         s7, s3, 15
                  addi         zero, gp, -878
                  slt          s3, t2, s5
                  or           zero, s2, tp
                  and          a7, gp, tp
                  ori          t1, a6, 1343
                  nop
                  sltu         s3, t5, t4
                  xor          a4, a1, s8
                  ori          t4, t0, 1940
                  sltiu        s3, a2, 1513
                  srai         a4, a5, 16
                  and          t5, tp, s0
                  slt          s7, t1, s11
                  or           s11, t1, t6
                  ori          tp, tp, -2002
                  slli         s11, s0, 4
                  or           gp, s1, t3
                  nop
                  slli         a6, s9, 27
                  sltiu        a3, s3, -1415
                  sltu         a1, s10, zero
                  srli         s9, s5, 25
                  srl          a4, s7, t5
                  srl          a1, t5, a6
                  sub          a1, a6, a4
                  sltiu        s2, t2, -335
                  auipc        s7, 447446
                  addi         a1, a1, 2040
                  xori         s1, a7, -1012
                  or           s2, a2, s10
                  nop
                  slli         a1, s1, 10
                  sltiu        gp, s2, -852
                  sltu         zero, t5, a4
                  sltu         sp, t0, s4
                  andi         a1, t5, 700
                  xori         s11, a3, -1756
                  xori         t0, s9, -316
                  srli         t6, a6, 1
                  ori          t3, s7, -1313
                  slt          gp, a1, t2
                  andi         s7, t1, 1118
                  xori         a3, t4, 1059
                  add          a6, a3, t3
                  sltiu        gp, t4, -1461
                  slli         t3, s11, 0
                  sltiu        ra, s7, 970
                  sub          t6, s0, zero
                  ori          zero, a6, -15
                  ori          s6, t6, -812
                  sltu         a6, s1, t0
                  andi         a6, s7, 1301
                  add          s0, a2, t0
                  sll          a4, zero, a1
                  and          s2, a7, t2
                  andi         t4, s1, 1873
                  srli         a3, s5, 25
                  slt          s6, s3, sp
                  or           a5, s4, s2
                  andi         t0, s1, 1693
                  srli         sp, a0, 7
                  lui          t5, 615180
                  srai         t6, s3, 13
                  sltiu        s3, s10, -1179
                  slt          t1, s6, s5
                  srl          t4, s8, s11
                  andi         t2, a6, -110
                  sll          a3, zero, t6
                  sub          a5, t2, a1
                  sra          t1, s2, s10
                  sltiu        s9, t3, 1878
                  nop
                  srl          a3, ra, a5
                  nop
                  slli         ra, s2, 10
                  and          s9, a5, t2
                  slt          t3, s10, t4
                  add          a4, s4, a0
                  add          a0, s0, a0
                  and          a7, s9, a4
                  addi         a1, s5, -1574
                  sltiu        zero, t3, -36
                  slt          a0, a7, ra
                  ori          s3, t4, 1372
                  sltiu        zero, a6, -490
                  addi         a6, a6, -499
                  lui          s9, 1006918
                  srai         s9, a6, 14
                  addi         a6, s10, 1206
                  andi         ra, t1, -18
                  xori         a3, s9, -169
                  xor          s11, s10, a0
                  sltu         a0, s0, ra
                  srai         a7, tp, 30
                  or           a5, a6, a4
                  sltiu        t5, t5, 393
                  auipc        a1, 352891
                  add          s8, s7, a2
                  sub          t1, t4, s5
                  auipc        s7, 245326
                  lui          s10, 680686
                  add          t2, s9, a5
                  and          tp, a2, t6
                  sltu         a7, s6, s6
                  xori         s9, a1, 775
                  andi         a4, a3, 317
                  sub          gp, sp, s4
                  srai         a5, a4, 4
                  srai         s7, zero, 20
                  lui          t2, 252590
                  lui          t4, 883920
                  srai         a6, a7, 27
                  sra          a4, s2, t4
                  sltu         s11, a2, t0
                  slti         s10, t5, 1981
                  sltu         tp, s6, s4
                  srl          s7, a0, s2
                  xori         s0, s8, -1000
                  srli         tp, a1, 25
                  nop
                  srli         s3, a1, 19
                  addi         s11, gp, 1760
                  addi         t2, s9, -874
                  srli         s8, t0, 25
                  nop
                  slti         t5, s10, 322
                  xor          t5, ra, s6
                  or           ra, a4, s11
                  slli         s10, s3, 1
                  andi         s8, s5, -132
                  sll          s0, t2, gp
                  srl          s7, a2, a4
                  sra          gp, t2, t2
                  sub          s9, t3, s10
                  nop
                  and          a1, tp, s8
                  or           s0, t6, s7
                  slli         t5, s9, 7
                  xori         a5, t1, 1368
                  slti         a6, s11, 1936
                  auipc        t4, 401202
                  sltu         s11, tp, s11
                  nop
                  lui          s1, 349537
                  auipc        a7, 178620
                  sltu         t0, s8, ra
                  sltu         s3, s3, s11
                  slli         a7, t4, 12
                  xori         s3, s3, 1963
                  sll          a5, t5, a1
                  slt          s10, a2, s8
                  sltiu        a1, s1, 119
                  sub          s2, a7, t3
                  lui          a7, 258006
                  nop
                  slti         tp, t3, -1353
                  or           zero, t4, a2
                  slli         t2, a2, 20
                  sra          s6, s9, sp
                  slti         t3, t2, -2024
                  sltu         t5, s9, t3
                  addi         a3, ra, -1801
                  sltiu        s8, sp, -468
                  andi         a1, a2, -1468
                  slt          a1, s8, s4
                  auipc        s8, 675717
                  add          s6, t1, a6
                  and          t5, a1, s1
                  sll          s3, s0, t0
                  addi         gp, ra, 630
                  slti         s10, a4, -416
                  sltiu        tp, s8, -1632
                  addi         a0, t6, -1499
                  and          sp, s3, t4
                  slli         s6, gp, 10
                  slti         t5, t1, -234
                  srli         zero, s3, 25
                  srli         s0, gp, 4
                  xor          ra, s4, s1
                  and          a3, s6, a0
                  add          s2, gp, s0
                  srai         t2, s8, 8
                  srl          a5, a5, a1
                  nop
                  sub          a3, a7, a0
                  sra          tp, s11, t5
                  srli         t4, s4, 3
                  lui          a1, 867566
                  ori          t1, t2, 1617
                  auipc        s2, 564653
                  xori         a6, a4, 56
                  auipc        s3, 73759
                  addi         t1, t0, 1356
                  srl          s3, a2, a3
                  slt          s10, s3, gp
                  nop
                  auipc        a5, 119942
                  sub          s11, t5, a5
                  auipc        t4, 991390
                  srai         t1, s11, 4
                  or           s7, a5, a3
                  auipc        tp, 275391
                  add          a3, a6, s10
                  or           s6, a6, tp
                  slti         gp, t2, 1604
                  sra          a4, s11, s10
                  slti         t3, t5, -389
                  slt          s8, t3, a3
                  and          t2, s2, t1
                  slti         s0, s7, 1180
                  or           s6, t2, sp
                  auipc        s10, 151162
                  or           a0, tp, a0
                  slt          s1, a0, t4
                  andi         s6, t6, 490
                  slti         a5, a2, -891
                  ori          t0, t1, -103
                  slli         a3, sp, 12
                  or           a7, t3, t0
                  addi         t0, t6, 563
                  sltiu        s3, tp, -1887
                  nop
                  slt          a6, zero, s7
                  sltu         zero, s1, t3
                  add          s0, s6, s10
                  sll          t3, t4, a7
                  and          a5, s8, a3
                  nop
                  or           tp, a2, s7
                  slt          a3, t0, s1
                  sub          s1, a2, ra
                  slli         zero, s0, 18
                  srli         tp, a6, 26
                  sra          s2, s8, t5
                  srl          a3, s7, t0
                  srai         s7, a6, 22
                  srl          a0, s7, t0
                  and          s7, tp, a3
                  slt          t0, a1, s3
                  sub          s10, t1, a2
                  srli         s7, s5, 15
                  sra          s9, a0, t6
                  slli         a3, a6, 16
                  xor          s0, a4, a6
                  and          a6, a3, a2
                  andi         s6, a7, 866
                  nop
                  addi         tp, t3, 1505
                  slli         s10, sp, 0
                  srli         s3, s2, 26
                  sll          a7, a3, s9
                  auipc        a6, 755036
                  sra          t0, ra, zero
                  lui          s3, 949234
                  xori         s11, a2, -339
                  sra          t5, t4, ra
                  sub          a7, t6, a6
                  sub          a1, a1, a6
                  auipc        s10, 673433
                  auipc        a3, 953783
                  sltiu        s7, t2, 529
                  auipc        s6, 645710
                  andi         a7, t1, 1552
                  slt          t4, t0, s8
                  auipc        a1, 549570
                  sra          s2, s9, a0
                  sltiu        gp, s8, -304
                  sra          a3, t2, s4
                  and          a4, t4, a4
                  sltu         gp, gp, sp
                  srl          s11, s5, a3
                  sltu         a6, s6, t1
                  xori         s11, sp, -1276
                  addi         s11, t5, 1334
                  ori          s7, sp, 1669
                  andi         s2, a0, 212
                  sll          s0, a3, a3
                  slt          sp, s4, sp
                  ori          a7, a7, -231
                  sltu         t0, s0, t0
                  add          ra, tp, t4
                  or           t0, tp, s0
                  xori         s7, t6, 589
                  and          s10, s3, a3
                  sra          t3, ra, a6
                  add          t4, s10, s7
                  xori         a5, t0, 1978
                  srl          t3, s8, t4
                  sltu         s2, s4, s5
                  and          gp, s6, t0
                  sub          a6, tp, a7
                  ori          s7, s6, -1685
                  and          a0, a5, s0
                  or           s9, s9, s3
                  srli         ra, a1, 17
                  addi         s0, s0, 229
                  auipc        t2, 792259
                  auipc        s3, 774307
                  slti         gp, s9, -396
                  or           zero, t4, s3
                  sltiu        a4, s1, 1038
                  auipc        s3, 626947
                  xori         gp, t5, -609
                  ori          t4, a5, 1238
                  srli         s11, ra, 24
                  or           s0, a3, gp
                  sltu         s11, a6, s11
                  srli         s6, s2, 0
                  and          a1, ra, s7
                  sltiu        a1, s7, 964
                  sll          s8, s9, s8
                  nop
                  sll          t6, tp, t1
                  sll          a7, s7, a4
                  slt          s3, a1, ra
                  slti         t0, s8, 696
                  sra          a3, t2, ra
                  slti         t4, s11, 1994
                  sll          zero, s11, s3
                  or           t3, t1, s3
                  sub          a6, s4, s3
                  sltiu        s0, s3, -990
                  nop
                  slti         tp, tp, -15
                  sltiu        tp, s4, -1533
                  slti         s0, s4, -1923
                  add          a6, t3, a5
                  sra          t3, s6, gp
                  add          tp, s5, s4
                  sra          s10, a3, a3
                  sll          a7, s9, a4
                  xor          a0, t3, a6
                  add          t3, a6, t0
                  sub          s9, ra, a6
                  sltu         gp, t0, s8
                  lui          a5, 848174
                  auipc        t3, 727801
                  srai         a4, t0, 27
                  xor          zero, a1, t4
                  andi         t2, ra, 1346
                  srai         sp, a7, 8
                  sll          a3, tp, s0
                  and          s11, tp, ra
                  sll          zero, s0, s2
                  sra          t1, a0, s3
                  sll          zero, zero, s6
                  sltu         s8, gp, ra
                  srli         a0, s0, 19
                  add          t2, t2, a7
                  add          t1, s2, a2
                  sub          a5, t6, s2
                  srl          gp, tp, ra
                  andi         sp, a3, -1750
                  sltu         s1, t4, s7
                  slt          t1, t6, t0
                  add          s0, a6, a7
                  slt          s9, s2, a0
                  sltiu        s2, s4, 285
                  slli         t0, s9, 26
                  add          t5, a7, t0
                  xor          a3, a4, s9
                  nop
                  xor          t3, s11, s7
                  ori          s0, s0, 231
                  addi         a4, s10, 1230
                  sll          tp, s3, s0
                  auipc        a1, 878163
                  xori         s6, t4, 490
                  sub          t5, a3, t6
                  nop
                  xori         a0, a3, 1508
                  srli         t2, t3, 18
                  xor          a5, s1, t3
                  srai         t0, s6, 26
                  slti         s10, zero, 38
                  srai         zero, a4, 27
                  srl          tp, zero, s11
                  nop
                  sra          s6, s9, a0
                  auipc        a5, 151106
                  sltu         a1, a1, a5
                  srli         a5, a1, 26
                  xor          sp, a7, a4
                  slti         s6, t6, 167
                  auipc        s6, 269043
                  nop
                  sub          t3, t5, s9
                  or           t1, s2, a7
                  sltu         s2, t4, ra
                  ori          tp, s2, 60
                  nop
                  slli         a3, a0, 4
                  xor          s1, s10, a7
                  nop
                  srli         t3, t6, 20
                  auipc        s7, 371948
                  xori         a6, t1, 1385
                  sltu         t5, s9, s4
                  nop
                  xor          s6, gp, s0
                  nop
                  auipc        gp, 550566
                  and          sp, a1, t4
                  sltiu        t6, gp, -1920
                  xor          s7, ra, a3
                  add          a7, t5, ra
                  slt          t6, a4, a7
                  sltiu        s0, a0, -744
                  srl          t5, t3, s5
                  andi         sp, s9, -330
                  slt          t2, s2, gp
                  srli         s0, s4, 17
                  and          s7, t2, a1
                  and          s3, a0, t1
                  sltiu        tp, s8, -2013
                  auipc        a5, 835279
                  addi         gp, a7, 629
                  lui          s7, 776468
                  slli         a6, sp, 28
                  srai         sp, s0, 25
                  ori          t6, zero, -894
                  auipc        t1, 28961
                  srai         gp, t4, 6
                  auipc        a4, 904555
                  or           s3, a2, s4
                  addi         zero, ra, 750
                  ori          s3, s0, -517
                  sra          s6, t1, tp
                  xori         t2, a0, -992
                  and          s0, s6, s2
                  addi         t1, s3, -3
                  sub          sp, t5, s4
                  xor          gp, tp, gp
                  lui          a7, 315427
                  xori         a7, zero, 1745
                  xori         a6, gp, -1968
                  nop
                  sub          gp, t0, s6
                  srl          s7, s6, s0
                  srli         s6, s1, 17
                  slli         zero, s10, 4
                  sltu         s3, t0, t6
                  sltiu        s9, a6, 190
                  srli         s11, t4, 26
                  xor          a0, a5, ra
                  ori          t2, a2, 665
                  srl          a4, zero, t1
                  lui          t2, 765315
                  slti         t4, s0, 1331
                  auipc        tp, 379298
                  or           a6, s7, s6
                  xor          s10, t1, t6
                  andi         a6, a3, 1568
                  sltiu        s9, s7, -1471
                  addi         s9, sp, -448
                  slti         s1, t1, 1108
                  xori         s0, s11, 2038
                  srli         s2, s7, 31
                  lui          s11, 143961
                  srli         t1, zero, 0
                  slt          s1, s1, s1
                  addi         t0, s4, -948
                  and          a1, s6, s9
                  xori         s6, t2, -764
                  sra          s8, s11, t0
                  sra          ra, s4, a2
                  nop
                  xori         zero, s7, 190
                  sltiu        t0, t1, -983
                  sll          tp, a6, s6
                  add          gp, t6, a2
                  sub          a3, s8, s1
                  srai         sp, a6, 22
                  sub          t1, a4, s1
                  sltiu        t4, a3, -570
                  sub          t5, a6, a5
                  addi         s11, t6, -1854
                  ori          s0, a3, -1670
                  or           sp, gp, s11
                  and          tp, a1, s8
                  xor          a7, s6, a2
                  sltu         s0, a6, ra
                  sll          a4, t6, s4
                  andi         t1, s7, -480
                  sra          t0, s9, t5
                  or           a7, a5, a1
                  ori          t0, a6, -2044
                  srai         s0, a4, 9
                  or           t0, t0, t5
                  auipc        t3, 1043417
                  sltu         s11, s10, a5
                  sltu         sp, s8, zero
                  slt          t4, t3, s7
                  ori          a1, a0, 1253
                  xori         t2, a0, -1174
                  sll          a7, s1, sp
                  ori          a3, s10, 1347
                  sub          tp, t2, a3
                  addi         a1, t2, -1620
                  srl          a6, s0, t5
                  sltu         a4, t3, s2
                  slti         s1, a2, -1518
                  ori          s6, t2, 195
                  srai         a7, s7, 1
                  add          s3, s8, s6
                  srli         s3, s9, 19
                  sra          t2, a6, a6
                  slt          tp, s4, s9
                  addi         a7, s6, 422
                  sltu         t2, a2, t2
                  nop
                  andi         t4, tp, 1036
                  lui          a5, 694624
                  slt          tp, s0, s5
                  sltiu        a0, s10, -1954
                  slli         a0, a1, 29
                  slli         s7, gp, 3
                  and          t4, sp, t1
                  auipc        t2, 268554
                  srli         s7, s0, 5
                  srl          tp, a3, a5
                  andi         ra, s9, -1036
                  srl          t6, s3, a0
                  nop
                  slti         zero, s10, 916
                  auipc        a3, 1001017
                  nop
                  sll          t6, a1, s11
                  auipc        a3, 816781
                  xori         s0, sp, -670
                  sra          a3, sp, s6
                  or           s6, s9, t6
                  sra          gp, sp, t3
                  ori          t3, a6, 979
                  nop
                  slli         s0, sp, 9
                  ori          a5, s6, -866
                  add          s10, s0, s6
                  sll          tp, a7, gp
                  xori         a4, s5, 615
                  srli         tp, t1, 2
                  and          gp, tp, a7
                  andi         s9, t0, 1363
                  add          s8, s0, s11
                  slt          gp, a2, s7
                  srli         a4, s6, 25
                  or           s3, a2, s10
                  or           s11, gp, a6
                  slti         s7, s8, 1976
                  xori         a1, t5, -307
                  xor          s1, a2, s11
                  xori         zero, a3, -73
                  or           s11, a7, a4
                  add          t6, a4, tp
                  sll          zero, t4, s6
                  or           tp, s3, s7
                  or           sp, a4, a2
                  nop
                  add          a6, a4, t3
                  sll          s9, s2, s2
                  srli         a5, a2, 1
                  lui          s1, 36945
                  lui          ra, 253048
                  addi         s7, t1, -424
                  xori         a0, zero, 1023
                  sltiu        s11, s3, -1892
                  sll          a6, a3, s4
                  ori          a4, s3, -865
                  slti         t4, a4, -1245
                  srli         s1, a7, 4
                  nop
                  or           zero, a1, gp
                  or           gp, t6, s5
                  auipc        t3, 148539
                  srl          tp, sp, t4
                  srl          ra, s0, a5
                  slli         ra, a3, 20
                  xor          t5, a6, s7
                  slt          s1, t0, s10
                  or           s1, ra, a5
                  srli         t4, t2, 16
                  srai         s0, a6, 4
                  auipc        tp, 10419
                  and          a5, s4, s1
                  xori         ra, zero, -1076
                  or           s11, a4, a6
                  sltiu        s7, t0, 1145
                  srai         t3, s8, 17
                  nop
                  srl          a3, s3, t0
                  sll          s2, a6, s4
                  add          s11, s3, t0
                  nop
                  sltiu        gp, zero, 1449
                  slli         s1, a7, 9
                  sll          a3, tp, t3
                  sll          s11, s8, ra
                  and          t1, sp, ra
                  srai         s9, t0, 19
                  auipc        t6, 877085
                  slli         s9, tp, 2
                  lui          t1, 929250
                  sltiu        s11, t6, 144
                  sub          t6, a5, ra
                  sub          a0, t6, a5
                  sltiu        a3, a5, 211
                  sll          a7, s10, s8
                  sltiu        t0, t6, 100
                  srai         tp, a3, 2
                  auipc        s8, 227269
                  and          s11, tp, s4
                  slti         t0, t5, -718
                  sra          t4, s10, t3
                  slli         a3, s10, 31
                  auipc        s6, 909503
                  srai         s0, zero, 31
                  xori         t5, a3, -1593
                  xori         t1, t0, 1569
                  srai         tp, a4, 4
                  sub          tp, a2, a3
                  slli         t6, s11, 23
                  addi         gp, t6, -1023
                  add          a0, s9, t4
                  sltiu        t3, t3, -309
                  xori         s7, s1, 1753
                  or           gp, a4, t1
                  srl          s10, s9, zero
                  sll          a6, a7, zero
                  xori         s0, s2, 799
                  sltu         s6, s7, t6
                  xori         t0, t4, 1512
                  and          s10, a5, t4
                  xori         t2, a1, -898
                  srai         s6, t1, 29
                  andi         tp, gp, -204
                  sltu         a5, tp, s8
                  srl          t5, s6, ra
                  xor          s10, a4, t5
                  nop
                  sltu         a3, s0, zero
                  slt          a3, s8, t0
                  and          sp, a4, ra
                  sltiu        t6, a4, 1383
                  xor          s0, s9, s4
                  add          s0, s0, t0
                  add          ra, t1, t4
                  srl          a7, t2, t2
                  slt          s2, a5, s1
                  sra          a0, t3, tp
                  xori         t2, gp, 2026
                  sra          a3, s3, s9
                  srli         ra, t6, 14
                  slti         t5, t1, -1423
                  srl          s7, a4, sp
                  sltu         s10, s1, sp
                  srai         t5, tp, 4
                  srai         gp, a5, 27
                  ori          t3, s5, 101
                  or           a7, s8, s0
                  auipc        a0, 879658
                  xor          a4, tp, t5
                  nop
                  slli         a1, s4, 31
                  sltiu        a0, s0, -1905
                  nop
                  add          s1, s1, t3
                  sltiu        s3, s11, 440
                  slli         s6, sp, 18
                  slti         zero, t4, 790
                  srl          zero, t6, s2
                  lui          t5, 649547
                  ori          a7, a4, -1024
                  srai         t2, tp, 0
                  sra          gp, sp, s0
                  slli         t3, s1, 11
                  srli         t6, t0, 18
                  sltu         s2, t5, s2
                  slli         t6, s7, 24
                  srli         s2, t0, 2
                  slli         s10, ra, 24
                  xor          t4, s7, a7
                  auipc        a1, 448086
                  xori         a3, s6, 1841
                  xori         s8, a4, -486
                  xori         sp, a6, -1663
                  or           t5, a4, t1
                  ori          gp, s7, 835
                  auipc        s10, 788077
                  lui          gp, 551789
                  sub          a5, s11, t5
                  sltiu        zero, a4, 1569
                  nop
                  slt          s1, t2, t2
                  sll          s2, s0, ra
                  nop
                  ori          a7, s1, 1963
                  nop
                  sltiu        s0, t4, -1128
                  auipc        tp, 37037
                  and          s9, a0, gp
                  srli         s1, s11, 10
                  and          s10, a2, a0
                  nop
                  xor          s0, s5, t3
                  andi         t6, t1, 1988
                  srai         s6, t3, 28
                  auipc        s11, 854689
                  nop
                  ori          s3, s6, 1663
                  slli         t0, tp, 20
                  sub          t6, ra, s4
                  srai         a5, t4, 7
                  xor          t0, t3, a7
                  srai         sp, s8, 6
                  slt          s8, s8, t6
                  srl          t4, a2, ra
                  sub          t2, s10, zero
                  srl          a4, a6, t1
                  slli         s6, s8, 13
                  ori          s11, ra, -1011
                  lui          t1, 754588
                  or           tp, t4, t5
                  slli         t2, a0, 5
                  sub          t4, s8, t6
                  and          s6, s4, a0
                  srl          t4, s3, ra
                  ori          a7, s2, 1505
                  srli         tp, tp, 2
                  slt          a1, a7, a7
                  slli         a3, sp, 10
                  andi         a1, t0, -1959
                  slti         gp, s8, -497
                  addi         t1, a4, 995
                  slt          a0, s7, s1
                  srai         a0, t2, 21
                  xor          s2, s3, s7
                  nop
                  srai         a7, s7, 2
                  srli         s3, s1, 16
                  sub          sp, s8, t5
                  addi         s8, s0, 842
                  sra          a0, a0, t5
                  addi         t5, a2, -268
                  sra          s0, s2, s11
                  sub          t6, a7, a3
                  srli         s3, t1, 17
                  srli         a7, t1, 8
                  add          zero, a5, t3
                  sltiu        s10, a5, -892
                  slti         a0, a4, 429
                  sltiu        a4, s11, -1881
                  add          sp, s9, a4
                  addi         t2, s5, -1301
                  sltu         a0, a7, t3
                  slti         s9, zero, 50
                  slli         s1, a6, 1
                  add          s7, a7, a4
                  add          a7, s5, tp
                  auipc        s2, 290808
                  andi         ra, t6, -513
                  nop
                  slli         s0, s7, 10
                  slli         t5, s0, 17
                  srl          sp, a0, t3
                  srl          t1, t2, t5
                  srai         a4, s1, 31
                  slli         gp, s1, 0
                  slt          a0, s8, ra
                  or           a3, t0, s1
                  lui          t2, 839044
                  or           zero, s5, a6
                  add          ra, t1, ra
                  or           zero, a4, a6
                  slli         a5, s8, 20
                  auipc        s10, 985389
                  andi         a7, t6, 835
                  srli         s3, a7, 2
                  srai         s2, a4, 12
                  auipc        a3, 38980
                  sra          a1, s1, zero
                  slti         t5, t1, -28
                  sltiu        s10, s5, -801
                  slt          a5, t5, t0
                  sll          zero, s7, t6
                  slt          t5, s9, a5
                  srai         s11, t3, 31
                  sll          ra, s6, t1
                  xor          zero, gp, a1
                  srli         s3, t2, 21
                  sll          s0, s11, a7
                  sll          a7, tp, a0
                  slt          s3, a0, a4
                  and          s7, ra, s6
                  sltu         a3, t4, tp
                  nop
                  lui          t2, 1006986
                  slti         s8, a2, 1944
                  slti         a0, s1, 989
                  srl          s0, s3, sp
                  srai         a6, a3, 14
                  ori          t5, s10, 302
                  sltu         s6, s3, a7
                  sll          ra, s5, tp
                  andi         s0, s5, 220
                  sub          s2, s4, s1
                  sll          a5, t5, s10
                  auipc        t3, 451126
                  ori          t6, s4, -1697
                  sltu         a3, s2, ra
                  sltu         tp, a3, zero
                  sltiu        s8, s7, 730
                  slli         tp, zero, 0
                  lui          zero, 19174
                  xor          s3, a1, zero
                  slti         t3, s10, 566
                  or           s7, a3, a0
                  sub          tp, s4, s1
                  add          t0, s10, sp
                  srl          t4, t6, s10
                  srli         zero, s7, 18
                  nop
                  lui          s7, 849511
                  srli         t3, a1, 18
                  sub          a3, sp, s10
                  slt          a1, t6, s11
                  and          t3, zero, a7
                  slt          s1, gp, s10
                  sltu         s11, s4, a5
                  addi         s6, s6, -230
                  and          zero, a0, s5
                  ori          t3, s0, -1680
                  slt          s6, s5, a6
                  addi         a7, t2, 943
                  or           s1, zero, a6
                  sra          s0, t2, s0
                  nop
                  or           s10, s2, s11
                  sll          t0, sp, s4
                  sltiu        t2, a4, -1679
                  xor          a6, gp, t0
                  auipc        s0, 420476
                  srai         a6, zero, 26
                  nop
                  ori          t4, s11, -1827
                  slli         s6, gp, 27
                  andi         t2, gp, -12
                  sra          t2, t2, s0
                  or           s1, s1, s8
                  andi         t4, t5, -1531
                  addi         s2, a5, -1747
                  lui          s7, 223144
                  andi         s2, s10, 1681
                  sltiu        gp, s6, 462
                  auipc        t6, 732776
                  xori         a5, s3, 1799
                  srl          a3, s0, t5
                  xori         t3, s5, -801
                  slli         a6, s3, 22
                  ori          s9, t3, -1349
                  sub          tp, a2, s5
                  sltiu        s2, t1, 1955
                  xori         s2, a7, -865
                  srli         s7, sp, 29
                  sub          t6, s1, a2
                  sub          t1, gp, a0
                  nop
                  lui          a6, 338893
                  sll          a5, s9, s0
                  srai         t0, gp, 5
                  slt          a0, s8, a0
                  slt          a0, gp, s7
                  xori         s3, t4, 2008
                  slt          a7, s11, t4
                  and          a6, a3, s9
                  slt          a7, s5, s11
                  srl          s6, s6, s11
                  and          s11, a0, t1
                  srai         s8, t1, 6
                  slti         a4, t5, 843
                  xori         s10, gp, -505
                  srl          a5, s10, a3
                  and          s0, s10, a2
                  slli         gp, a2, 16
                  slti         a7, a6, 2017
                  xori         t3, s11, 595
                  srl          a4, a4, zero
                  ori          a6, sp, 297
                  sll          s8, t0, s0
                  srli         s2, t1, 22
                  srl          s0, t6, t6
                  slt          t0, tp, sp
                  nop
                  srai         s8, s3, 19
                  slti         t3, s1, -1001
                  nop
                  xor          sp, sp, a6
                  sub          s2, t5, s6
                  xori         t6, a7, -1211
                  or           t2, tp, t2
                  andi         s7, s10, 346
                  addi         a7, a7, -1875
                  slli         s9, s3, 3
                  sltiu        a4, s2, 693
                  srai         s6, t6, 5
                  srai         a6, a4, 22
                  sra          s7, t5, tp
                  add          a5, s11, tp
                  add          s10, s9, t1
                  slli         s8, a6, 20
                  ori          a1, s1, 689
                  srl          s7, s9, t1
                  srli         a3, a1, 31
                  sltiu        t0, a6, -1344
                  or           a7, a1, t3
                  sra          t0, s3, s3
                  sltiu        a7, gp, -1362
                  auipc        t6, 695306
                  nop
                  xori         s9, s1, -818
                  nop
                  lui          a3, 953340
                  xori         tp, s8, -1335
                  xor          s6, gp, s4
                  srl          t3, s0, a4
                  and          a4, s1, zero
                  addi         a5, t0, 1854
                  and          s6, a2, t0
                  sll          s7, a4, zero
                  sltu         zero, a4, a2
                  auipc        a5, 115718
                  auipc        gp, 485267
                  srai         a6, s2, 29
                  slti         tp, s1, 1500
                  nop
                  xor          s0, s11, s11
                  addi         sp, a3, 644
                  slt          ra, s7, a0
                  sra          a4, s9, s1
                  srli         t5, a2, 11
                  add          a4, a5, s1
                  srai         s0, s3, 25
                  andi         tp, s9, -745
                  sltu         s1, a1, a4
                  slli         sp, a6, 26
                  xor          s10, zero, a7
                  or           s9, s7, s5
                  sltu         s7, t0, t4
                  sll          s7, a2, s3
                  add          a3, s11, s5
                  lui          s7, 804897
                  add          t6, a4, s11
                  andi         a4, a4, -1155
                  slti         s0, t0, -345
                  srai         ra, s0, 17
                  or           a7, t6, s9
                  srai         t2, a5, 12
                  sub          t4, t3, s7
                  slli         s2, zero, 6
                  slti         sp, s1, 409
                  srai         s0, a1, 25
                  or           s6, s3, s3
                  andi         a4, t2, 1553
                  slt          s9, s5, ra
                  addi         gp, t5, 1319
                  slli         s9, a0, 17
                  sltu         t3, s7, t4
                  slti         a0, a4, -627
                  nop
                  sltiu        tp, s3, 1153
                  nop
                  andi         tp, s6, 1982
                  andi         s11, t2, -1129
                  addi         s0, s3, -1731
                  or           s0, t3, s7
                  and          s2, tp, t2
                  ori          t5, s2, 586
                  or           t0, s4, s5
                  add          s1, t0, a3
                  ori          a0, t6, 358
                  xor          sp, s4, a5
                  auipc        s8, 145593
                  sll          zero, gp, s11
                  ori          gp, tp, 1477
                  sll          a0, ra, s1
                  slti         s9, a3, 1393
                  or           s6, s5, s11
                  addi         s1, t1, -47
                  srai         a5, s0, 20
                  andi         s7, s4, -374
                  sub          t4, ra, tp
                  addi         s2, tp, -988
                  addi         t5, a7, -1357
                  andi         a0, t6, -1550
                  andi         s3, t5, -378
                  and          t5, s5, gp
                  add          t6, s9, t1
                  slt          a3, s9, s2
                  xori         s7, t0, -1691
                  srai         a7, a2, 8
                  sltu         a1, s0, s11
                  srl          t6, t5, a6
                  ori          tp, a3, 1938
                  or           t3, a2, t0
                  srli         s9, s3, 13
                  sltiu        a0, s10, -1339
                  xori         a0, sp, 1764
                  sll          a3, s8, sp
                  sltiu        s2, t0, -297
                  srai         a5, t5, 10
                  and          t6, a4, t4
                  xori         s2, a1, -307
                  andi         s11, s0, -1656
                  slt          a3, ra, s5
                  addi         s2, t3, -952
                  sltu         s3, a7, a0
                  xor          a5, gp, t4
                  srli         s7, s8, 27
                  srli         a6, s0, 10
                  slti         gp, a1, 1336
                  xor          s3, t3, t2
                  xori         a3, a4, 1831
                  or           a1, a2, s2
                  auipc        zero, 681749
                  xori         s3, s3, 567
                  andi         t4, a3, 1274
                  xor          s6, a6, t0
                  srl          s7, s6, s6
                  srli         t3, a3, 25
                  sltiu        s8, t6, -340
                  slli         s10, s9, 1
                  slli         s0, ra, 16
                  lui          a3, 188688
                  or           a5, s0, t3
                  or           s3, a1, t0
                  ori          a4, s4, -1466
                  sltu         s3, a5, s8
                  ori          t6, s11, -61
                  xor          t3, t1, t5
                  or           a7, s9, s0
                  nop
                  srai         tp, s8, 21
                  sll          a3, s0, a2
                  or           t2, s8, gp
                  srli         t2, s2, 22
                  sub          s1, t6, a4
                  ori          t4, a4, 115
                  slt          ra, s0, s5
                  sll          a1, t5, zero
                  slti         a3, s9, -102
                  nop
                  sltu         s2, s3, a7
                  xori         s2, t4, -1615
                  addi         s6, t0, -1007
                  andi         s10, tp, -529
                  nop
                  slt          t5, ra, a3
                  slti         t1, ra, 1844
                  sub          s1, s4, s9
                  slt          t2, zero, a3
                  slt          zero, t0, a0
                  nop
                  xori         a3, t6, 464
                  lui          t3, 595835
                  srl          s7, a5, a4
                  slti         t3, t1, -1948
                  slli         s3, t0, 7
                  sra          s7, s5, s11
                  srai         tp, t1, 27
                  auipc        s2, 1025927
                  sltiu        s10, a7, -412
                  slli         t4, s1, 11
                  slti         a6, a6, 584
                  srai         gp, s4, 16
                  srai         s7, s10, 13
                  slli         t4, tp, 10
                  and          s2, a5, t0
                  nop
                  srai         a0, s6, 7
                  lui          t0, 375924
                  andi         ra, a7, 1412
                  srl          t6, a0, a7
                  lui          t2, 111288
                  addi         t3, a3, 1717
                  slli         t0, t6, 24
                  srli         s0, tp, 26
                  sra          s0, a3, t0
                  andi         t4, a5, -1321
                  add          t2, t6, s7
                  addi         s2, tp, -666
                  slli         s7, s3, 9
                  or           t3, s0, t5
                  xor          tp, a2, s4
                  sltiu        a3, s10, -786
                  sltu         t2, s3, zero
                  add          s2, a4, sp
                  nop
                  ori          t5, t3, 1352
                  auipc        s2, 219332
                  add          t0, t6, s2
                  xor          a3, s3, t2
                  or           tp, t0, t1
                  slti         s3, zero, 2012
                  xori         gp, s4, 530
                  slti         a4, s3, 413
                  ori          ra, s4, -1300
                  nop
                  or           tp, s4, s2
                  xor          a4, s0, s1
                  srai         s11, ra, 23
                  and          tp, s0, zero
                  add          sp, a0, a3
                  addi         gp, t4, -1266
                  andi         s8, s3, -804
                  nop
                  sub          tp, a7, t5
                  andi         sp, a0, -486
                  sub          t0, t3, t4
                  nop
                  nop
                  xori         t2, t3, 1932
                  xori         sp, a3, -1613
                  ori          s11, t6, 1561
                  and          s10, s1, a0
                  slt          t5, a4, t6
                  auipc        a7, 255813
                  andi         a6, a3, 731
                  sll          t5, t3, s3
                  add          s6, s5, t3
                  andi         sp, s8, 1423
                  auipc        sp, 127072
                  xori         s3, tp, -1051
                  addi         s2, a0, 1284
                  sub          t3, t4, a1
                  addi         a4, s9, 1200
                  slti         t3, zero, -1972
                  srl          sp, sp, t1
                  srl          s7, a4, a5
                  andi         s0, a5, 61
                  auipc        a5, 632836
                  ori          a0, s4, 1946
                  nop
                  slt          a6, t6, s8
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s1, 0x848eae9d
                  li           sp, 0x0
                  li           s3, 0xffffffff
                  li           t5, 0x0
                  li           t1, 0x80000000
                  li           a3, 0x80000000
                  li           t2, 0xffffffff
                  li           t3, 0x80000000
                  li           s8, 0x65a1d3fa
                  lui          s8, 301364
                  sub          s3, t5, s7
                  sub          s7, s1, t2
                  sub          t2, s1, a3
                  addi         s7, a3, 737
                  sub          sp, sp, t2
                  addi         s8, a3, -1054
                  lui          s1, 829597
                  nop
                  lui          sp, 489912
                  nop
                  auipc        t3, 787377
                  addi         t2, t1, 1120
                  sub          t3, s1, s8
                  auipc        a3, 3048
                  sub          t3, s8, s3
                  lui          t1, 803063
                  addi         s8, t2, 1199
                  nop
                  lui          s7, 848761
                  auipc        sp, 681840
                  auipc        t1, 534977
                  nop
                  add          sp, s3, t3
                  lui          s1, 748107
                  sub          s3, t2, t1
                  nop
                  add          s1, s3, t2
                  sub          s1, t3, s3 #end riscv_int_numeric_corner_stream_4
                  srl          s6, t6, s0
                  or           s11, t6, s6
                  add          s2, t1, a1
                  slt          t3, a0, a7
                  auipc        a7, 146468
                  xori         s6, t0, 835
                  addi         s1, a5, 1017
                  nop
                  sltu         s11, t5, a1
                  andi         s7, a3, -305
                  sltiu        a3, s4, 188
                  slti         s9, tp, -629
                  add          sp, s11, zero
                  sll          a7, s8, tp
                  xor          zero, t6, s4
                  sub          tp, s9, s4
                  slti         s7, t1, 1793
                  srai         a6, a0, 3
                  sra          ra, sp, s10
                  xori         s3, s1, -1533
                  slt          t2, s6, s9
                  srai         a0, t1, 23
                  slti         a5, s5, 355
                  addi         s7, s2, -1729
                  sub          a0, s1, s4
                  sra          s3, t2, a0
                  andi         t3, t2, 1997
                  slt          s7, t6, t6
                  sub          s3, a3, s0
                  sll          t1, a0, s6
                  add          t2, s10, t2
                  add          a6, t3, t1
                  sltiu        t3, s1, 1478
                  auipc        t1, 322300
                  auipc        s8, 413015
                  srl          ra, s11, s10
                  and          sp, s9, tp
                  srl          a3, s4, a3
                  addi         s10, a6, -200
                  addi         t3, t3, -124
                  xor          a4, a1, a0
                  ori          s11, t5, 1867
                  or           s8, zero, zero
                  xori         t0, t3, -1388
                  sll          t6, s6, a0
                  xor          a6, s4, a7
                  slli         a6, s3, 6
                  slti         a5, t3, 466
                  auipc        tp, 830318
                  slli         s2, s11, 9
                  sll          a7, s4, t1
                  srl          a3, a1, gp
                  add          ra, a3, tp
                  addi         t2, s8, 914
                  srai         zero, ra, 28
                  andi         s8, a7, 1256
                  slti         s8, sp, -1402
                  sltu         s7, t3, a6
                  or           zero, a3, s9
                  srai         a0, s2, 23
                  sll          s3, s6, a6
                  slli         a3, a6, 3
                  slti         a5, s3, 2036
                  slti         t0, tp, 712
                  lui          t3, 632073
                  sltiu        a7, a7, -792
                  or           sp, s2, s5
                  or           tp, s9, t4
                  addi         t0, a6, -696
                  nop
                  slti         s0, a5, 967
                  sra          a6, a2, a7
                  add          zero, s2, s4
                  srli         s7, a1, 0
                  slti         tp, s11, -1211
                  sltu         sp, s9, a7
                  sltiu        s0, s1, -699
                  sltu         t5, s4, t4
                  or           tp, tp, s11
                  or           s6, tp, s2
                  slti         s2, a4, 1815
                  andi         a7, ra, -1690
                  sltu         s11, a0, a3
                  addi         s10, s2, 1693
                  and          t6, t2, ra
                  srli         t3, s3, 19
                  addi         t3, s3, 918
                  sll          t3, t5, a6
                  add          a4, s0, s0
                  sll          a1, s3, a1
                  addi         t0, s8, -403
                  auipc        a1, 937158
                  nop
                  or           a6, tp, gp
                  sra          t4, s0, t1
                  srai         s0, t6, 3
                  xor          t3, t6, zero
                  lui          sp, 782858
                  or           s9, s7, t3
                  or           zero, s5, s11
                  add          t1, t3, a2
                  slti         t4, a4, 758
                  srli         s7, s3, 9
                  addi         a1, a0, 1205
                  sltiu        s6, s10, 1356
                  sra          s2, sp, a3
                  slt          t4, a7, a0
                  ori          a6, ra, 414
                  ori          a4, sp, 214
                  sll          s8, s9, t3
                  and          s7, t6, s0
                  or           a5, a1, t4
                  sll          s9, t6, a5
                  sltiu        a4, s0, -710
                  andi         s7, t3, -518
                  slt          t1, a0, a0
                  addi         s11, s10, -683
                  add          t5, a0, t4
                  or           a5, s11, a1
                  sltiu        s7, a4, -910
                  and          a6, s5, a4
                  srai         a4, gp, 31
                  andi         t5, gp, -1723
                  sltu         s0, a5, a1
                  slli         s6, s7, 31
                  xor          s6, t4, a7
                  lui          t5, 756427
                  slti         a3, t0, -1147
                  sltiu        a5, a5, -574
                  or           a1, s3, t5
                  slt          s1, s9, a4
                  sra          s3, a3, a1
                  sltu         a5, a6, s6
                  slt          t3, s0, a6
                  lui          s10, 1038852
                  sltu         t6, s4, s7
                  and          zero, s4, t6
                  sll          t4, gp, a0
                  or           s7, s6, s9
                  sll          a3, sp, s1
                  ori          t0, t5, 1166
                  nop
                  lui          t2, 776194
                  sltiu        a4, s1, 186
                  ori          t4, s1, -366
                  xori         s9, s4, 263
                  sltu         a1, t4, a2
                  nop
                  addi         s11, s7, 1139
                  srl          s0, t4, t0
                  slt          t0, s11, sp
                  sltiu        a1, a4, -1331
                  sra          s8, ra, t2
                  slti         s11, a0, -1305
                  andi         tp, t4, 1882
                  xor          s0, a6, s3
                  sra          s11, s2, a7
                  addi         zero, s11, -21
                  srl          a5, ra, t0
                  srli         gp, t4, 18
                  srai         s2, s5, 7
                  addi         gp, a2, -246
                  xori         tp, sp, -1876
                  slli         t6, t4, 14
                  or           s10, s10, a5
                  slt          a3, s7, t2
                  sub          a0, a3, tp
                  auipc        a4, 775303
                  slti         t5, t5, 630
                  addi         ra, a6, 1159
                  addi         t0, zero, 698
                  xor          t2, ra, s7
                  add          tp, gp, t1
                  slli         ra, t6, 3
                  or           a5, s6, s9
                  and          ra, t3, s3
                  sltiu        tp, a7, -1160
                  and          a0, t1, s7
                  srl          s0, a2, t1
                  andi         t5, gp, 1990
                  andi         t5, a3, -1394
                  xori         s11, s1, 1101
                  andi         s11, s9, 1363
                  sll          t0, a5, s4
                  auipc        a5, 980613
                  srai         s3, a3, 13
                  xor          s2, zero, s11
                  add          zero, a4, s0
                  srai         s11, gp, 9
                  slli         s9, ra, 29
                  auipc        s9, 874010
                  sub          a1, s11, zero
                  srli         t0, t3, 29
                  or           s11, gp, s4
                  add          a4, s7, s6
                  or           t6, a2, ra
                  sra          a1, s8, a0
                  sub          s3, tp, s0
                  nop
                  slti         a4, t0, 1252
                  andi         a4, t0, -421
                  sra          s2, a5, s9
                  and          ra, t2, a1
                  andi         ra, a5, -193
                  or           a1, zero, s0
                  and          s10, a6, t1
                  sll          t5, s7, ra
                  xor          s0, tp, a7
                  sra          s8, s8, ra
                  sltiu        a5, s4, 467
                  srl          tp, t6, s10
                  nop
                  slti         a7, s7, -1966
                  slli         a0, ra, 28
                  nop
                  slt          a1, t3, s9
                  addi         a3, a5, -5
                  sra          s7, t5, s2
                  sll          s0, s6, ra
                  sub          a5, t2, s1
                  or           t3, a6, a3
                  sltiu        ra, t6, 1495
                  andi         s9, a3, 1298
                  sra          a1, s3, t2
                  srli         t4, t4, 7
                  addi         a4, t5, 504
                  srli         tp, ra, 6
                  and          t3, a5, a1
                  and          t0, s5, ra
                  xori         a1, s2, -1306
                  sll          s0, t4, t5
                  slti         zero, s9, 1562
                  sltiu        a1, s0, 289
                  xor          tp, sp, s6
                  srl          a7, s7, t4
                  xor          a7, s0, a3
                  xori         tp, s7, 1528
                  or           ra, t6, gp
                  or           a0, tp, a6
                  lui          s7, 119079
                  auipc        ra, 356355
                  sra          s1, zero, ra
                  xori         a1, a5, -1184
                  sra          s0, s10, a6
                  lui          t4, 1027157
                  xori         t6, s11, 1182
                  slt          gp, a7, a1
                  lui          s9, 597211
                  slti         s6, a2, -290
                  auipc        a4, 655675
                  sub          a5, s0, a1
                  add          s0, sp, s1
                  add          a6, t6, a2
                  srli         s1, s10, 29
                  sra          gp, t2, t2
                  srai         a6, ra, 1
                  xor          t5, s9, s8
                  srai         t0, s7, 12
                  nop
                  auipc        tp, 441999
                  sra          ra, s2, s11
                  andi         tp, a6, -1549
                  sltu         t6, s11, t3
                  and          a4, s2, a4
                  sra          s3, s10, s5
                  auipc        gp, 904833
                  slt          a7, t4, s1
                  or           a0, a2, a0
                  sll          t3, s9, t3
                  xor          s3, zero, s6
                  srai         a3, sp, 13
                  and          t5, gp, t0
                  add          a3, a4, t2
                  nop
                  auipc        a3, 123859
                  ori          s6, sp, 1245
                  srli         t0, s5, 29
                  ori          t0, s7, 399
                  srai         s8, s11, 9
                  sub          s1, s6, t3
                  srli         s0, s1, 13
                  srli         t2, s10, 31
                  sra          t5, t2, s0
                  srai         s0, s5, 24
                  slti         t6, a5, -289
                  xor          s1, ra, a4
                  or           a6, t5, s0
                  add          sp, t3, a1
                  sra          zero, s1, s2
                  slti         a0, t2, 589
                  add          s11, tp, t3
                  addi         tp, s2, 1015
                  addi         t0, sp, 1910
                  xori         a4, a4, -170
                  add          sp, s9, t2
                  sra          t5, s0, a1
                  lui          a4, 141313
                  sub          s1, s1, sp
                  lui          a5, 214717
                  srli         t0, a4, 31
                  sltiu        sp, zero, 1399
                  sub          gp, t6, s10
                  lui          zero, 34502
                  slli         s10, a3, 16
                  srl          t4, s8, ra
                  sub          t3, a1, s5
                  lui          ra, 1044369
                  lui          t2, 813880
                  sltu         a7, t1, s3
                  sltu         s8, gp, ra
                  sra          sp, s2, a2
                  or           t0, t6, a3
                  sub          s6, a2, s0
                  sltiu        s10, s11, 1157
                  sll          t1, s10, t1
                  andi         gp, a3, -1155
                  xor          t4, s9, t2
                  and          zero, a6, tp
                  slli         a0, s5, 26
                  sltu         zero, s0, s8
                  auipc        a0, 964836
                  or           t3, s11, zero
                  srli         s0, sp, 0
                  or           a6, a5, s4
                  xori         tp, s8, -997
                  andi         s8, a3, -563
                  slti         zero, t0, 253
                  andi         a7, zero, -1290
                  andi         t2, s2, -861
                  sll          gp, s9, s11
                  and          t5, t0, a1
                  srl          gp, s5, s8
                  nop
                  and          s11, s10, s7
                  xori         s3, t3, 429
                  add          a3, s10, a7
                  and          s1, s6, t5
                  srli         a7, t5, 16
                  or           s11, a0, a0
                  xor          s7, s3, t2
                  ori          s10, s9, -576
                  slt          s0, t4, a7
                  auipc        t2, 1042915
                  addi         a3, sp, -148
                  auipc        s7, 690825
                  and          gp, s4, a0
                  srli         gp, a1, 17
                  ori          t1, s3, -1549
                  sll          t2, a0, a6
                  sll          s0, s1, t0
                  auipc        s8, 1004841
                  srai         s9, t6, 27
                  sll          s1, a7, s1
                  srli         s8, s10, 23
                  add          a6, s11, a4
                  slli         t1, s11, 2
                  srli         t5, a5, 22
                  ori          tp, a4, 153
                  addi         s10, t0, -486
                  andi         s11, s9, 737
                  slt          tp, s0, sp
                  sltu         s7, s7, t2
                  srai         a1, s10, 12
                  srli         t0, ra, 14
                  slt          a0, a2, s3
                  srl          t2, a5, t0
                  xor          a7, s11, a1
                  and          s9, a1, s11
                  slti         s7, t4, 1809
                  sub          s9, t2, tp
                  xor          s10, s10, s4
                  sll          a1, s7, t1
                  sra          s9, t0, s11
                  srai         a5, sp, 23
                  sra          a3, t3, t5
                  slti         tp, a5, -1543
                  slli         s0, ra, 3
                  ori          tp, s0, 545
                  slti         s11, sp, -20
                  ori          a1, s3, 2027
                  add          t4, s11, sp
                  or           a7, t5, a6
                  addi         s9, s3, 89
                  slti         t4, s8, -1742
                  auipc        t4, 658999
                  auipc        t5, 934922
                  slt          ra, s0, a5
                  ori          t6, zero, -1720
                  xor          t5, s10, s1
                  nop
                  sll          sp, sp, s5
                  slti         t4, t4, 1997
                  xor          a0, ra, s10
                  lui          t0, 116683
                  slt          tp, t6, s5
                  or           a1, t6, s11
                  sra          a7, s0, t4
                  auipc        s8, 239670
                  xor          s3, t4, s8
                  andi         tp, tp, 69
                  sub          tp, a5, a0
                  sltu         t5, t6, s0
                  andi         a0, a2, -733
                  ori          gp, s0, 945
                  slt          s10, t5, t2
                  ori          a4, s11, 990
                  andi         a1, s3, 1122
                  add          s2, s9, a0
                  slti         a7, s6, -687
                  andi         s6, s11, 347
                  sub          t6, s6, t6
                  and          a0, a2, t6
                  slli         zero, s0, 18
                  sra          ra, a4, t3
                  srli         a7, t1, 11
                  xori         tp, t0, 1589
                  slli         s9, sp, 16
                  srai         t6, a2, 31
                  or           s2, s10, zero
                  andi         s8, t0, -1019
                  srl          s3, a4, s2
                  sltu         tp, s6, t0
                  slt          gp, t5, s8
                  sltiu        s8, gp, -239
                  nop
                  srli         ra, zero, 16
                  srli         a3, gp, 25
                  xor          a6, zero, a0
                  slt          s1, t3, t1
                  ori          s9, t0, 223
                  srli         s2, s1, 22
                  slli         a5, t5, 26
                  addi         s10, s6, 321
                  sltu         a7, a1, t5
                  and          s0, s5, ra
                  slt          s0, s6, a3
                  addi         a3, ra, -369
                  sltu         gp, tp, a4
                  srai         a0, a1, 10
                  ori          s7, gp, -666
                  srai         a3, a6, 19
                  srli         s7, tp, 8
                  sll          a0, t6, t2
                  sub          a6, a2, tp
                  or           t1, a1, sp
                  addi         s10, sp, 80
                  and          a1, s7, s5
                  auipc        s2, 494387
                  or           s0, s5, a5
                  lui          sp, 695058
                  nop
                  sll          t0, t2, zero
                  sltiu        t1, a5, 63
                  slt          s2, a5, s3
                  xori         t0, a4, 373
                  nop
                  slt          s6, t6, t2
                  slli         t5, ra, 28
                  sub          s2, t6, t5
                  xor          ra, t1, a0
                  xori         t0, a5, -1661
                  add          s10, s4, tp
                  sub          t5, t4, t4
                  auipc        s10, 421185
                  ori          a5, s8, 872
                  sra          s9, s10, t5
                  slt          s1, s0, tp
                  and          t3, t5, s1
                  sll          tp, s10, a0
                  srli         t6, s9, 30
                  srai         t2, s8, 13
                  sltiu        t1, a0, -1746
                  srai         tp, s5, 25
                  nop
                  sll          a6, ra, s3
                  lui          zero, 693028
                  xori         s9, t5, -1690
                  xor          a7, s5, s3
                  lui          tp, 400060
                  or           s2, t4, t6
                  xor          s0, t0, sp
                  and          a4, s0, a6
                  andi         s6, t6, 84
                  sltiu        s0, sp, -296
                  slti         s8, a3, -322
                  and          a0, a0, s9
                  ori          t3, s9, -271
                  xori         a1, a4, -837
                  add          a7, a4, s5
                  addi         s9, s7, -1463
                  srl          a7, t5, s4
                  and          s8, gp, t1
                  sltu         tp, s6, t2
                  sll          t3, t1, t5
                  srai         tp, t4, 18
                  slti         t1, t0, 1900
                  and          s10, tp, a4
                  nop
                  add          s9, t5, a5
                  nop
                  addi         t1, a3, -1256
                  auipc        a7, 41642
                  slt          t1, a3, sp
                  and          a0, t4, sp
                  srai         s10, t3, 31
                  xori         t3, s7, 1505
                  or           t2, ra, t4
                  sll          s9, s9, s8
                  xor          s0, a2, s3
                  and          s3, t2, s2
                  ori          ra, s11, 591
                  slt          a0, t6, a4
                  add          s2, zero, a5
                  and          sp, s1, a2
                  srai         gp, s4, 7
                  add          s9, s1, a1
                  slt          a7, a6, a7
                  auipc        t2, 949612
                  xori         s2, zero, -324
                  or           t4, a3, a4
                  ori          s0, a4, -1483
                  lui          t1, 138043
                  addi         s11, a2, -175
                  lui          a3, 1036714
                  lui          ra, 161977
                  slt          a0, a7, tp
                  nop
                  srli         s11, a7, 28
                  slt          t6, s3, s0
                  slti         t4, s9, 2008
                  lui          ra, 528007
                  add          t3, a1, t6
                  srai         s6, t2, 10
                  nop
                  xor          s11, s5, a6
                  sltu         s3, sp, s1
                  addi         t0, gp, 9
                  srl          s9, sp, gp
                  sub          a0, a5, s6
                  addi         s8, a7, 1006
                  ori          a6, a4, 1486
                  srli         s7, tp, 3
                  sll          t4, a2, t0
                  sub          s0, t2, a7
                  slli         s11, sp, 3
                  andi         a1, a4, 1204
                  addi         gp, a4, 1157
                  sll          t1, zero, s0
                  and          a7, t1, s1
                  sltiu        s9, a4, -1748
                  or           a7, s3, a2
                  slli         zero, s0, 12
                  sltiu        s8, a2, 1600
                  addi         s1, ra, 928
                  auipc        t4, 817007
                  slti         t5, t3, -1676
                  and          s6, s0, s0
                  slli         sp, a7, 19
                  nop
                  srl          s9, s4, s4
                  andi         s2, s6, -1957
                  auipc        a3, 508307
                  srli         a6, t3, 23
                  nop
                  sltu         a1, s9, tp
                  and          a0, t1, tp
                  sub          s8, tp, s7
                  slli         t6, a4, 5
                  srl          t4, t1, s0
                  sra          t1, a2, t0
                  slti         s9, s4, -568
                  sub          s6, s0, a4
                  sltu         t3, s7, a5
                  sltiu        t3, a5, -1558
                  or           sp, ra, a1
                  andi         t5, s6, 947
                  sltu         t0, t2, s0
                  slti         s11, s9, 1824
                  andi         a6, zero, -1480
                  lui          s0, 288838
                  andi         t6, zero, -76
                  srli         a5, a2, 27
                  addi         a6, a3, 164
                  sra          s8, a0, s4
                  slti         a1, a1, -1247
                  sltu         a6, a2, sp
                  add          tp, t3, a5
                  auipc        s1, 807009
                  srai         t2, gp, 22
                  addi         ra, t0, 1703
                  lui          a6, 902471
                  srli         s9, t6, 20
                  sltu         zero, a7, t4
                  auipc        zero, 65197
                  srli         a7, t3, 13
                  ori          t3, s7, -99
                  sub          a0, s11, t2
                  slti         a0, a0, 1934
                  srli         a3, sp, 30
                  ori          s7, t0, -762
                  xor          sp, a3, t1
                  srai         t5, s11, 20
                  xori         a1, t0, 297
                  srl          s11, s6, s7
                  or           t4, tp, ra
                  xori         s6, s11, -1526
                  sub          s7, a1, a1
                  srl          t6, s6, sp
                  auipc        a6, 280782
                  slli         s0, s11, 24
                  andi         tp, s9, -1202
                  xor          t6, t1, s4
                  ori          t1, t2, 1227
                  slt          a7, s11, sp
                  sub          s6, a4, s6
                  auipc        sp, 981837
                  slti         s11, s10, 2043
                  srai         s1, a7, 24
                  srli         s0, t6, 7
                  srli         s2, s2, 2
                  sltu         a0, s9, t0
                  srai         t0, s4, 11
                  nop
                  slti         s0, t4, 610
                  addi         s8, s0, -735
                  auipc        t0, 915533
                  srai         s7, t6, 29
                  lui          a3, 858576
                  xor          s10, s10, s9
                  ori          s3, s4, 445
                  sra          t0, s0, a6
                  sub          zero, a0, s9
                  sll          tp, a5, s3
                  sltu         a4, s6, gp
                  add          a4, s7, s7
                  or           s10, a6, s7
                  srai         s6, s11, 9
                  lui          a3, 687638
                  slt          a4, s11, s8
                  add          s6, ra, t6
                  xor          t4, s2, s11
                  slli         ra, t6, 17
                  slti         t0, s9, -889
                  srl          a0, t0, a7
                  add          a3, s8, a2
                  sltu         s7, s6, ra
                  sltu         t2, t2, s3
                  addi         t2, s10, 1421
                  addi         ra, a0, 1243
                  nop
                  sltu         s2, a5, s5
                  nop
                  sub          s10, t3, s7
                  srai         zero, s1, 0
                  slli         t5, s7, 31
                  add          s9, s2, t0
                  sltu         a7, a1, s1
                  srai         a1, sp, 8
                  xori         a5, t1, 1341
                  sltu         a0, s2, s8
                  xori         s11, a1, -1107
                  andi         s0, s8, -592
                  xori         s10, t4, -184
                  add          s9, a7, s5
                  or           s7, s1, t5
                  nop
                  auipc        a7, 685278
                  nop
                  addi         s0, s1, 186
                  sra          sp, t5, s0
                  slt          t3, a1, a5
                  sll          t1, s5, a1
                  slt          t0, s0, s1
                  slt          t0, s2, s1
                  srl          tp, s8, s4
                  addi         s7, t0, -173
                  andi         a6, gp, 1852
                  srl          ra, t5, t4
                  ori          a5, t4, -405
                  addi         a7, s6, -1087
                  sltiu        a3, zero, 1716
                  nop
                  or           tp, s10, s2
                  nop
                  and          s0, s4, s11
                  srl          t0, a3, s1
                  sll          s3, a3, s2
                  srl          s1, t2, s6
                  sll          s11, t4, s3
                  addi         s1, s0, 1084
                  sub          zero, s0, t6
                  slt          ra, t6, a2
                  or           t4, tp, s1
                  slti         a7, ra, -1115
                  nop
                  sra          tp, t2, s1
                  ori          t3, a2, -117
                  sra          s3, s4, gp
                  sra          tp, t3, a6
                  lui          tp, 339357
                  sra          ra, a2, sp
                  add          gp, t1, s3
                  or           t5, t0, t3
                  slti         s1, t2, -1367
                  andi         t3, zero, -1789
                  slti         a6, a0, -1538
                  sra          a3, a2, a1
                  xori         s11, a0, -219
                  sub          s11, a2, s8
                  sltiu        t2, s2, 792
                  slli         sp, a5, 4
                  sub          a6, t5, t3
                  and          sp, s8, s2
                  sra          s2, t4, t0
                  srl          t6, t2, a6
                  srl          a4, s5, a2
                  sub          a4, a7, t0
                  sll          t3, s9, t0
                  ori          t1, t0, -1499
                  slli         s0, s11, 31
                  slt          s0, s11, s6
                  sra          s1, a3, t3
                  xori         zero, a7, 1398
                  srai         t6, t3, 3
                  ori          zero, ra, 833
                  sub          gp, gp, s1
                  addi         t6, t4, -1559
                  slti         gp, s7, 74
                  sltu         s11, s8, ra
                  lui          t1, 91366
                  addi         zero, a1, -1621
                  sltu         a4, a2, a7
                  nop
                  and          a3, t0, a4
                  sltiu        s10, s9, -1372
                  add          s0, zero, t2
                  or           t4, t5, sp
                  sll          t2, a1, s6
                  sra          tp, t1, a1
                  sltiu        s3, tp, 1234
                  slt          a1, s6, s7
                  slti         s11, tp, 1178
                  or           s10, a3, sp
                  or           t3, a2, s1
                  sub          s9, tp, t3
                  lui          a6, 315419
                  auipc        a5, 174315
                  sltu         s7, zero, zero
                  lui          a3, 280279
                  xor          s8, tp, s10
                  lui          ra, 926631
                  addi         s8, s6, -747
                  and          s10, gp, t3
                  sltiu        a6, s2, -1423
                  srli         s3, a3, 14
                  lui          sp, 666215
                  srl          s7, a4, a0
                  sra          t2, zero, t3
                  auipc        s11, 964931
                  srli         s9, t5, 23
                  sltu         a1, s6, s5
                  add          s6, a3, s9
                  sltiu        a1, t0, 1105
                  sltu         a7, a6, zero
                  addi         zero, t3, 1272
                  auipc        s8, 820592
                  auipc        a5, 365407
                  auipc        s8, 248694
                  xor          s0, t0, s6
                  add          s6, s6, s1
                  srli         a0, s9, 27
                  auipc        t4, 242034
                  or           s10, s3, t3
                  sra          s3, t0, gp
                  srli         t5, s2, 16
                  sub          s6, t6, t1
                  addi         a4, s10, 1511
                  sll          s10, t2, a3
                  sll          zero, a5, s0
                  xori         ra, a5, 255
                  srai         zero, t0, 26
                  addi         a5, tp, 1507
                  xor          s7, a1, a3
                  auipc        t6, 378607
                  xor          a1, t0, t2
                  andi         s0, s6, 1110
                  slti         a3, s6, -516
                  sll          t5, s3, a4
                  addi         sp, t2, -885
                  addi         tp, ra, -1764
                  add          a7, s5, s0
                  sltu         s3, s6, s4
                  xor          gp, t6, a5
                  srl          zero, a6, a4
                  srai         t1, s3, 15
                  slti         a5, s8, -1548
                  srai         t4, t2, 10
                  slti         t1, s1, -16
                  add          s9, t2, t6
                  andi         a7, a3, 557
                  sub          a1, a3, ra
                  auipc        a3, 492572
                  slli         s1, a2, 5
                  ori          ra, t5, 1211
                  auipc        tp, 807758
                  xor          s1, s7, a2
                  srl          s6, a5, s4
                  and          a0, t0, a5
                  slti         t6, t1, 140
                  and          s0, zero, s5
                  and          sp, s7, a4
                  slt          a0, sp, s6
                  srl          gp, t3, a2
                  and          s0, s8, t0
                  sub          t0, t5, sp
                  add          zero, a2, t2
                  slli         t6, s0, 11
                  srai         a5, s1, 30
                  addi         s6, a1, 1625
                  slli         t3, a0, 11
                  and          s1, a0, a1
                  add          t0, s5, zero
                  nop
                  nop
                  auipc        a5, 900716
                  andi         t6, s9, 785
                  xori         s0, s11, -1502
                  xori         a1, s6, -1650
                  lui          a1, 478580
                  sltu         s0, s9, a7
                  and          ra, s9, a2
                  sltu         s3, t6, t3
                  add          s11, s2, a7
                  or           a6, gp, t0
                  srl          t4, s10, t0
                  auipc        t1, 749670
                  sltiu        t2, s0, -1986
                  sra          tp, a0, a5
                  sra          s1, t3, t1
                  srli         t5, s8, 16
                  srl          gp, a7, s9
                  slli         t1, s7, 29
                  sub          s0, t4, tp
                  sub          tp, sp, a0
                  sltu         s0, a3, s7
                  addi         s1, t1, 793
                  and          t2, s9, t1
                  or           s9, t1, a5
                  or           s6, a6, a4
                  sltu         a1, a1, s9
                  or           a4, a3, s8
                  srai         zero, s3, 29
                  ori          s11, tp, 552
                  auipc        ra, 286955
                  auipc        s6, 151213
                  and          s7, t5, s9
                  sltiu        s0, s5, -23
                  xor          a4, a7, a7
                  xor          s1, t0, a7
                  sra          s9, t1, a1
                  xor          t5, s7, t1
                  nop
                  sub          t1, s3, s10
                  add          zero, a3, gp
                  xori         ra, t4, 1129
                  xor          s1, a1, t4
                  lui          s0, 811035
                  and          t2, s1, a1
                  addi         s2, s1, 1409
                  auipc        zero, 185869
                  srai         t6, t4, 16
                  xori         a4, s5, -721
                  slti         s6, a2, 1140
                  sll          t0, t4, s5
                  ori          s1, t1, 846
                  xor          a6, a6, s3
                  srai         a5, tp, 21
                  sub          ra, t4, s7
                  slli         sp, a5, 18
                  slt          t5, s5, t4
                  srl          a3, a5, t6
                  srli         s1, t5, 18
                  xor          s2, t1, a1
                  add          s0, tp, t6
                  sltu         s6, t5, a2
                  xori         t0, t5, -86
                  nop
                  sltiu        a7, s4, 245
                  nop
                  or           tp, s10, zero
                  lui          tp, 396497
                  sub          gp, s11, s7
                  addi         tp, tp, 482
                  sltu         s1, a5, a0
                  slti         s2, s3, 1110
                  xor          t3, a7, t2
                  srl          s1, a2, s1
                  add          s6, s1, ra
                  nop
                  sll          t6, t2, s5
                  addi         tp, s4, 1364
                  slt          gp, s5, t4
                  xori         a0, a7, -469
                  xor          a5, s10, s10
                  srai         gp, s3, 3
                  addi         s11, s10, -899
                  andi         a4, s4, -192
                  xori         a3, t6, -186
                  nop
                  addi         t6, t2, 1005
                  slli         t4, s8, 10
                  sra          s6, zero, t5
                  lui          t0, 693408
                  nop
                  sub          t5, t3, t1
                  or           tp, s9, s11
                  ori          s6, tp, -257
                  sltu         a3, t4, s7
                  nop
                  slt          s8, s10, sp
                  lui          gp, 933422
                  sltu         t4, a7, s6
                  slli         s2, a6, 28
                  sltu         t3, t3, t5
                  ori          a7, s3, -338
                  sltiu        s11, tp, -58
                  ori          a7, s3, -1925
                  sltu         sp, s4, s4
                  sra          t5, gp, zero
                  auipc        s6, 649053
                  or           t2, s11, a5
                  auipc        t4, 215783
                  addi         a5, s6, -956
                  srl          a4, s9, a6
                  sra          s7, s11, a6
                  slt          s3, tp, a1
                  srl          s2, s8, a3
                  auipc        s2, 964514
                  sll          t5, a3, s3
                  sra          s2, t0, a6
                  auipc        a7, 831312
                  addi         t0, a2, 902
                  slt          a5, s6, t6
                  add          gp, s8, s8
                  sub          a6, t2, a6
                  sub          a1, s1, s2
                  srli         gp, s4, 6
                  andi         zero, s7, 613
                  srli         s0, ra, 22
                  and          a1, gp, t0
                  andi         t4, s0, 2029
                  sll          t0, a1, t0
                  srl          t4, t1, a5
                  sra          zero, a2, s2
                  and          s10, s8, s9
                  slt          t5, s10, s7
                  sltiu        gp, t5, -708
                  xor          a4, s0, t5
                  slt          t4, t3, s1
                  srli         a1, a6, 18
                  slli         a6, s3, 17
                  sltu         a5, zero, s1
                  add          t3, s11, sp
                  slli         ra, s5, 4
                  add          s9, zero, zero
                  sltu         a7, t5, t4
                  or           zero, a3, t6
                  xor          s10, ra, s9
                  xori         t0, t5, 914
                  sub          t6, sp, s0
                  slti         t1, a6, 600
                  sra          t0, t0, sp
                  sltiu        s7, s7, 441
                  xori         t0, s2, 922
                  auipc        tp, 1021675
                  or           s0, s4, a6
                  sub          s2, t0, s5
                  add          ra, t1, t3
                  sltu         t3, t4, ra
                  xori         a6, s4, -455
                  xori         a1, s0, -1002
                  or           t0, t0, a0
                  srai         ra, s11, 27
                  and          a3, t2, s0
                  auipc        t0, 970531
                  slli         t0, a6, 13
                  andi         s7, s0, -1282
                  andi         s11, s3, -1345
                  sltu         a4, a7, s4
                  xor          tp, s4, t5
                  srl          t5, s5, ra
                  sra          a5, t1, t3
                  sub          a7, s7, s9
                  srli         s10, a2, 10
                  andi         s8, t0, 680
                  slti         s0, s6, -1399
                  add          t5, tp, a7
                  lui          t1, 860389
                  lui          t6, 1032192
                  nop
                  auipc        t5, 344050
                  slt          a4, a6, t3
                  sub          t4, t4, s8
                  auipc        s3, 163537
                  slti         a7, s4, 705
                  sltu         s6, t3, a1
                  srai         s11, gp, 10
                  slli         zero, s6, 2
                  xor          a1, t2, s4
                  sltiu        t4, t3, -528
                  lui          t4, 958873
                  ori          s6, s9, -486
                  slli         t0, s11, 1
                  sltiu        ra, s4, 1936
                  slt          t1, s8, s0
                  sll          a3, t5, a6
                  xor          a1, a6, tp
                  nop
                  andi         ra, s9, -1675
                  slti         a6, a4, -1939
                  slti         a7, s1, -1135
                  sra          t1, zero, s11
                  auipc        s0, 306259
                  sub          gp, t2, a4
                  and          t0, s0, a3
                  nop
                  srai         a5, s1, 4
                  srli         a7, a2, 30
                  sltu         a1, a1, t4
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a7, 0xffffffff
                  li           s7, 0xffffffff
                  li           t1, 0x80000000
                  li           s8, 0xffffffff
                  li           a1, 0xffffffff
                  li           s9, 0x124e6d59
                  li           gp, 0x4bd015b6
                  li           t3, 0x0
                  li           ra, 0xffffffff
                  lui          t1, 1011872
                  lui          s11, 637440
                  nop
                  add          s8, s8, s8
                  lui          s7, 713488
                  add          a1, s7, s9
                  nop
                  nop
                  add          s11, a7, s9
                  add          s11, a1, s8
                  addi         t3, t1, -1968
                  add          a1, a7, t1
                  auipc        t3, 532878
                  auipc        s11, 78983
                  add          gp, t3, gp
                  nop
                  auipc        t3, 356293
                  lui          s8, 656028
                  addi         s11, s7, 733
                  add          t3, s7, a7
                  nop
                  add          t1, s8, ra #end riscv_int_numeric_corner_stream_17
                  slti         a6, s2, 1892
                  srl          s1, gp, a2
                  slt          s3, gp, ra
                  sltiu        t3, a3, -1234
                  addi         t3, gp, -1786
                  slli         s7, tp, 18
                  ori          a6, a3, -1729
                  sltu         a0, gp, s9
                  andi         t0, a4, 1929
                  add          a5, s1, ra
                  xor          s10, s7, t1
                  sltu         t3, s5, t6
                  xori         sp, s6, -654
                  slti         gp, tp, -478
                  or           a5, s6, t3
                  sra          a5, s8, s1
                  and          a7, ra, t6
                  srli         s11, t3, 2
                  xori         s3, s4, -1330
                  auipc        a7, 275908
                  xori         t3, t5, 1808
                  srli         s6, s8, 13
                  xori         s1, s2, 1845
                  andi         s7, s1, 600
                  nop
                  add          s6, t0, s1
                  srli         t5, a4, 14
                  slt          s1, t0, a0
                  add          s0, tp, s1
                  sll          s7, t6, s3
                  slti         t2, s7, -1653
                  auipc        t3, 5653
                  xori         t4, s6, -70
                  nop
                  ori          a7, gp, -1924
                  add          a3, a7, ra
                  auipc        zero, 128614
                  add          a0, t1, s5
                  nop
                  add          a0, a5, a6
                  sub          gp, a1, t1
                  slli         ra, a0, 30
                  xor          tp, a2, s6
                  ori          ra, a6, -155
                  add          t1, t2, t6
                  sltu         t5, t3, s4
                  and          t5, a6, zero
                  andi         a4, a1, 502
                  auipc        a1, 974564
                  srl          s10, sp, ra
                  addi         tp, t4, -1409
                  srl          tp, a6, s9
                  andi         s3, s1, -1939
                  srai         a4, a1, 19
                  sltu         t6, t4, s1
                  sltiu        s0, a3, -1752
                  xori         a1, a0, -1783
                  srli         s0, t3, 2
                  srli         a4, a1, 27
                  srai         a0, s4, 19
                  slli         a0, s1, 22
                  andi         tp, zero, 1710
                  slli         t4, s5, 16
                  andi         t4, t2, 271
                  slti         ra, t2, -497
                  sra          a5, ra, t1
                  srl          gp, a1, s8
                  sll          a4, sp, zero
                  sltiu        t4, a7, -732
                  slti         t6, t0, 871
                  andi         t0, gp, 853
                  sub          sp, t3, s3
                  lui          s10, 322014
                  or           s8, a6, s8
                  nop
                  addi         s0, s10, 610
                  xori         a7, s5, 1667
                  xori         t5, s8, -937
                  lui          a7, 205463
                  add          t1, t4, s3
                  slli         t3, s7, 29
                  sltu         s3, s4, a0
                  srli         s9, a3, 0
                  sra          s6, t0, t1
                  slli         t6, s1, 21
                  auipc        t1, 83765
                  and          t5, t5, t1
                  srl          a4, s4, zero
                  nop
                  srai         ra, s3, 22
                  sltiu        t1, s5, 150
                  srai         a4, t0, 22
                  xor          t0, tp, s3
                  sll          ra, a3, s10
                  addi         t6, a7, 220
                  andi         a5, s6, -1628
                  nop
                  srli         t4, a4, 2
                  auipc        a0, 194995
                  addi         s9, s1, 1919
                  or           zero, s5, t1
                  xori         a6, s5, 1430
                  slli         s0, a7, 25
                  andi         s6, a6, -964
                  and          a6, gp, t1
                  slli         a6, t1, 23
                  sll          t0, a1, gp
                  nop
                  srl          s3, a6, s4
                  lui          a6, 838654
                  andi         s10, s5, 28
                  add          t3, t6, s5
                  nop
                  sltiu        t3, s3, 1013
                  srai         a3, s8, 29
                  sub          t1, t6, a5
                  sub          s7, s1, t3
                  srl          gp, tp, s11
                  and          t1, t0, a7
                  xori         a1, s8, -483
                  lui          a5, 41551
                  slti         tp, t2, 77
                  xor          t3, s2, t6
                  srl          s7, a4, tp
                  srai         a6, s6, 16
                  or           s2, a6, a3
                  sub          ra, zero, t4
                  slt          sp, a1, a4
                  slti         s1, s2, 77
                  or           a1, ra, a3
                  sltiu        t0, t4, 1469
                  srl          tp, t0, s7
                  add          gp, s0, s7
                  slti         s0, t4, -1366
                  slt          s8, s7, s5
                  or           s7, s10, s8
                  or           s7, ra, s6
                  sub          t0, a5, a6
                  srl          gp, t2, t3
                  sltiu        t5, s3, -1939
                  and          t1, t1, t5
                  lui          s3, 867477
                  sltu         t6, s3, a2
                  addi         s6, s8, -1149
                  srai         s2, s7, 0
                  lui          s8, 936136
                  srli         a7, s5, 9
                  and          sp, s4, t0
                  ori          a6, s7, 1346
                  auipc        t3, 983329
                  srl          sp, s5, a5
                  slli         a6, s1, 11
                  or           zero, t1, a2
                  sltiu        s1, a5, -1570
                  slli         s11, s9, 9
                  srl          zero, a5, s4
                  sltu         s8, s7, s8
                  srl          s1, s9, t5
                  nop
                  or           s10, s4, a3
                  xori         zero, sp, 1851
                  or           a6, a4, s2
                  xori         sp, a3, -1686
                  sltiu        s6, a4, 341
                  slli         sp, ra, 14
                  sll          tp, t6, s2
                  sltiu        t5, t6, 161
                  and          t0, sp, t4
                  xor          a5, t1, t3
                  srl          s7, zero, s10
                  and          a0, ra, gp
                  andi         gp, s1, 208
                  slt          t1, t0, t3
                  addi         a7, s10, -1193
                  sra          s3, t4, a6
                  ori          a5, t2, 829
                  addi         s10, t5, 245
                  auipc        s1, 399286
                  add          a7, a1, a5
                  sll          t0, s9, a0
                  ori          s0, t1, 614
                  ori          s7, zero, -1470
                  add          s2, s1, zero
                  slli         s3, s5, 26
                  or           tp, tp, a6
                  srl          s8, t4, s6
                  sltu         s8, s10, t5
                  sra          sp, t4, t3
                  sra          t2, s2, t6
                  slti         a1, a1, 2035
                  xor          s1, a5, s2
                  srli         s9, t0, 4
                  xor          s9, a4, ra
                  sub          zero, a7, a1
                  sra          t6, t0, a2
                  nop
                  auipc        t3, 501891
                  sll          s7, t5, a6
                  slti         a5, gp, -1424
                  slli         t6, s8, 19
                  srai         t4, a0, 29
                  nop
                  xori         a4, a2, -1693
                  xori         s11, a5, 8
                  auipc        a7, 195650
                  slt          s3, t2, a5
                  sra          s8, t6, a6
                  lui          t5, 891763
                  sub          t2, s8, s3
                  srai         t1, s8, 14
                  sltiu        t4, t4, 1685
                  nop
                  auipc        t0, 549000
                  and          t3, s11, t4
                  auipc        s1, 826657
                  srl          a3, s6, s4
                  sltu         a7, t1, s9
                  srai         a3, a0, 17
                  addi         a1, s9, 1374
                  sll          s7, a5, s1
                  srli         s7, s11, 24
                  andi         t4, s0, -412
                  slti         s11, s4, 270
                  ori          a7, t2, -577
                  and          a3, t6, t3
                  sll          t1, a6, sp
                  slti         s0, a2, 1725
                  auipc        a4, 331722
                  slti         sp, s1, -1853
                  addi         zero, s5, 1582
                  sltiu        s6, t5, 1844
                  slt          a6, a1, zero
                  nop
                  lui          s10, 23990
                  and          zero, s3, t4
                  and          s2, s6, s1
                  slli         a4, a5, 2
                  sltu         t4, gp, t2
                  sub          a4, s4, a3
                  srl          a3, s4, t5
                  and          a5, s5, s7
                  xori         s7, a3, 1026
                  srli         s9, t6, 3
                  andi         t4, a1, 1175
                  addi         t5, a4, -1761
                  slt          a6, s4, sp
                  sltiu        s8, tp, 1838
                  auipc        a5, 445072
                  srai         sp, s1, 10
                  auipc        t5, 898677
                  auipc        t0, 1023226
                  srli         gp, s2, 9
                  andi         s1, a5, -1028
                  sll          sp, a3, t4
                  or           zero, t5, s6
                  slt          a5, ra, zero
                  or           zero, t5, s9
                  sltiu        t2, s3, -569
                  lui          a7, 219856
                  add          t5, zero, s5
                  andi         s0, gp, -1850
                  or           a1, s5, t5
                  xori         s2, s11, 1065
                  sll          s6, t1, ra
                  sra          s6, tp, s10
                  ori          a4, s9, 1347
                  srl          tp, a6, a0
                  sll          sp, a5, gp
                  srai         s10, t4, 14
                  sll          sp, s10, s4
                  auipc        a7, 364675
                  slli         s8, t6, 2
                  sra          s8, s10, s0
                  add          s3, t6, tp
                  xor          a4, s10, s11
                  xori         a6, s11, -1209
                  sltiu        t0, s5, -288
                  slli         sp, s1, 30
                  nop
                  nop
                  xor          s3, ra, s0
                  slt          a5, zero, s5
                  or           a0, a0, a0
                  xor          t1, t3, a5
                  sub          t0, a2, t6
                  ori          t0, a7, 1714
                  and          a6, t3, a0
                  srai         a5, a2, 20
                  slli         s11, t2, 18
                  ori          s3, a2, 642
                  xori         t0, gp, 1379
                  sltu         t6, a6, a3
                  ori          t0, a3, 922
                  slli         t5, s11, 4
                  nop
                  or           s1, s10, zero
                  xori         t3, s8, 1437
                  slt          gp, a7, s3
                  sll          s9, t1, a7
                  xor          s0, sp, s1
                  slti         s7, a4, 93
                  andi         sp, s5, -1571
                  slt          t4, a2, t5
                  sltu         a4, a4, s10
                  srl          s8, s4, s3
                  auipc        s9, 557992
                  xori         s10, t3, 1453
                  srli         s0, a7, 31
                  and          t3, s3, a1
                  auipc        s3, 225260
                  sltiu        t6, s10, 1801
                  sll          tp, a5, a1
                  sra          a0, s11, t1
                  lui          zero, 621116
                  sltiu        sp, a6, 1499
                  srl          a3, s5, a3
                  srl          ra, a4, a0
                  or           t3, s7, a0
                  addi         t0, ra, -116
                  srl          t0, a7, a7
                  auipc        a5, 656248
                  sll          s8, a5, t2
                  xor          s0, t0, s10
                  slli         s6, s4, 5
                  srai         s1, a3, 28
                  lui          tp, 439837
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_33
                  li           t6, 0x80000000
                  li           s11, 0x80000000
                  li           s9, 0xffffffff
                  li           a7, 0x80000000
                  li           s6, 0xffffffff
                  li           sp, 0xffffffff
                  li           s1, 0x1b04b495
                  li           a6, 0xb031805c
                  li           s8, 0x80000000
                  auipc        a7, 585687
                  lui          s11, 82498
                  auipc        s6, 739303
                  lui          sp, 808103
                  addi         a6, s1, 416
                  nop
                  addi         s0, s1, -990
                  addi         t6, s6, -239
                  nop
                  lui          s11, 488300
                  lui          a7, 944048
                  auipc        a7, 729452
                  addi         s6, s6, 201
                  sub          sp, s9, a7
                  nop
                  sub          s6, t6, s1
                  sub          t6, a7, sp
                  sub          t6, t6, s11
                  nop
                  auipc        a7, 248419
                  add          s1, s1, s0
                  lui          sp, 607471 #end riscv_int_numeric_corner_stream_33
                  slt          s6, a4, a5
                  slti         gp, t1, -1094
                  andi         a0, a4, 488
                  srai         s7, s4, 1
                  add          t6, s9, gp
                  srl          s2, s3, a4
                  xor          t6, ra, tp
                  auipc        a4, 645260
                  sra          s10, s4, s5
                  sll          t0, s9, t0
                  addi         a3, t5, -970
                  and          a4, s4, s10
                  sub          a6, t4, a4
                  slli         t0, a6, 26
                  xor          a7, t1, gp
                  srl          s11, t4, t5
                  sltiu        t3, a0, -1115
                  xor          t5, s9, s9
                  srl          s8, s9, s9
                  srl          a0, a0, s9
                  andi         a6, s0, 163
                  lui          a7, 400821
                  xori         t4, a5, 996
                  sltu         zero, s1, t2
                  xori         ra, a1, 1632
                  slti         s3, s8, 1878
                  slt          a1, a3, a1
                  sra          a6, a1, t4
                  or           a6, t3, a0
                  andi         s7, a5, -1195
                  add          s9, t4, zero
                  andi         zero, a4, -673
                  srai         s0, a3, 30
                  sltiu        a0, s10, -836
                  xor          a1, ra, s11
                  addi         gp, t2, 1374
                  nop
                  xor          s1, sp, tp
                  lui          s6, 996351
                  xor          ra, s4, a7
                  sltu         sp, a6, a0
                  addi         sp, t1, 2042
                  sltu         a3, t0, ra
                  srl          s9, s8, s11
                  sra          t1, a5, a3
                  sra          gp, t0, a2
                  and          t5, t3, sp
                  sltu         a1, a7, s11
                  and          s3, s8, s11
                  sltu         ra, t2, a5
                  slti         a6, sp, -930
                  and          a3, zero, a4
                  sub          sp, a7, s0
                  srli         a0, a1, 27
                  ori          s0, s7, 1932
                  auipc        s3, 727403
                  sra          s2, a7, s4
                  addi         a3, s2, -170
                  addi         t4, a0, 542
                  auipc        a1, 202493
                  slt          gp, s0, s11
                  slli         s6, s7, 17
                  lui          s6, 497014
                  lui          zero, 1047067
                  andi         zero, t3, 1654
                  sub          a1, t5, a7
                  or           s8, s9, s10
                  sra          a5, a7, s10
                  lui          sp, 13731
                  sltu         t4, t6, a2
                  sub          a5, s11, ra
                  or           t4, gp, s3
                  xor          s11, t0, s9
                  sll          tp, t4, a5
                  xori         zero, a6, -596
                  xor          t0, ra, t3
                  and          s6, s11, sp
                  ori          t0, s7, -1493
                  slli         s2, sp, 8
                  srl          t0, sp, s2
                  srl          t1, a1, t3
                  sltu         a1, s2, s5
                  add          t2, a6, s5
                  xori         a6, sp, 1139
                  auipc        s9, 971322
                  srai         t6, zero, 18
                  addi         sp, t5, -806
                  auipc        s10, 766447
                  srli         a3, s1, 10
                  slli         s7, s7, 17
                  and          a7, s8, s8
                  slti         zero, t5, -1584
                  auipc        t1, 973243
                  srai         t2, sp, 10
                  srl          a7, s10, s8
                  ori          a6, a2, 1962
                  xori         t3, s11, 138
                  xori         gp, s9, 1107
                  xor          ra, s2, s0
                  xor          a6, ra, a0
                  lui          a7, 969919
                  sltu         t1, gp, ra
                  sll          t6, s2, s3
                  sll          s0, s1, s2
                  or           s6, s5, a7
                  or           a0, a5, s2
                  sll          t2, t3, a7
                  addi         a3, s8, -1684
                  srli         s10, a7, 5
                  slti         t0, s8, 260
                  slt          t3, a1, t1
                  sub          s0, a4, a2
                  slt          t3, t2, t3
                  sltu         ra, gp, t2
                  srl          s8, a2, a5
                  auipc        s11, 243699
                  or           t1, a4, zero
                  ori          zero, s4, -1305
                  sra          t4, t6, t4
                  auipc        s0, 939773
                  nop
                  ori          s9, t0, 1266
                  ori          sp, s0, 464
                  srli         s8, s9, 1
                  srl          a7, a6, zero
                  slli         tp, t1, 15
                  addi         tp, s1, 1851
                  slt          t2, t2, a4
                  srai         sp, s10, 6
                  sra          a0, t1, a7
                  sub          a6, a0, s4
                  sltu         t6, t5, s5
                  ori          sp, a7, -1037
                  sub          s10, t3, s4
                  xori         a7, a2, -740
                  sra          s0, gp, s2
                  srl          a3, s1, s8
                  sll          t2, t0, s7
                  sll          s9, s2, t2
                  sra          ra, gp, s1
                  srai         sp, s5, 2
                  or           s0, s6, s0
                  and          t0, t4, a7
                  ori          a5, a2, -1348
                  srai         t6, s1, 19
                  sub          s0, s3, a7
                  srl          t2, t0, a3
                  addi         t4, zero, -197
                  and          a5, s6, a4
                  sll          sp, s8, t5
                  xor          sp, t1, s10
                  srli         a7, a2, 23
                  slt          t2, t2, zero
                  and          tp, a0, t5
                  and          t4, t0, s6
                  srli         t1, gp, 6
                  slti         a0, a5, -1729
                  or           s3, a4, gp
                  ori          ra, s1, 390
                  slt          s10, a2, s7
                  or           a0, a7, a2
                  slti         s9, s10, 1034
                  slt          a6, tp, sp
                  or           s9, s6, a0
                  or           s2, a0, s0
                  add          t6, s8, s5
                  sltu         zero, a3, tp
                  slti         t5, zero, 1331
                  slli         t5, t0, 21
                  slli         t0, s10, 28
                  sub          a0, t3, s4
                  sltu         s6, t2, t2
                  sltiu        s10, a6, -735
                  sll          t0, ra, s0
                  nop
                  add          t3, s6, t1
                  sll          s2, s0, s6
                  srl          t5, a0, s10
                  sub          s9, t6, tp
                  srl          sp, s8, t1
                  srli         zero, sp, 1
                  and          t4, zero, s4
                  addi         a5, s1, 1046
                  slli         t0, s2, 8
                  auipc        a6, 450576
                  sltiu        s11, a0, -1313
                  xori         sp, gp, -1343
                  slti         a1, a5, 154
                  xori         t3, a7, -510
                  auipc        s1, 819800
                  sub          s8, a3, s0
                  sll          tp, s7, s2
                  addi         s6, a4, 243
                  slli         a5, sp, 3
                  or           t2, s7, a1
                  sltu         zero, s3, s10
                  slt          tp, s4, a6
                  sub          a6, a2, t2
                  slti         tp, ra, 2017
                  sub          a7, ra, s8
                  sltu         s9, a3, s0
                  slt          s6, t2, a4
                  addi         s7, s0, 1487
                  auipc        s0, 460519
                  xori         a4, s1, -748
                  or           gp, t0, sp
                  or           a3, s5, s5
                  sltiu        s11, a7, -1857
                  sltiu        a0, s1, -306
                  srai         s2, t4, 11
                  sltu         ra, a6, ra
                  or           s9, a6, s11
                  or           t3, s5, s2
                  srai         a4, s4, 11
                  srai         a5, ra, 31
                  srl          a4, gp, t6
                  andi         t3, t2, -358
                  sltu         a4, tp, t6
                  xor          s0, t4, tp
                  srl          a1, s7, t3
                  andi         sp, s3, -551
                  or           s2, t3, t6
                  srli         t0, a6, 3
                  sub          t2, t3, tp
                  srai         s7, s2, 3
                  nop
                  ori          a5, s5, 1531
                  slli         s8, t6, 29
                  and          tp, tp, zero
                  andi         zero, s6, -1415
                  sltiu        tp, a5, 1009
                  lui          s11, 653747
                  nop
                  slli         s10, s5, 11
                  nop
                  or           a7, s9, s9
                  srl          s6, t4, s3
                  auipc        t6, 43307
                  xor          t3, t6, s4
                  srli         ra, t1, 20
                  sra          s1, a1, a4
                  auipc        t5, 569154
                  xori         gp, s1, 851
                  auipc        tp, 648858
                  xori         sp, s6, 827
                  sll          t2, t2, a6
                  sltiu        a4, s11, -340
                  auipc        ra, 815233
                  sub          a3, s4, t1
                  sltiu        tp, s11, -1605
                  addi         a7, s6, -242
                  sltiu        s11, ra, -1833
                  ori          t4, t5, -1728
                  slli         gp, s6, 9
                  lui          zero, 860445
                  andi         tp, t4, -1010
                  add          t6, t2, a2
                  sub          t6, a3, s8
                  srai         s11, s1, 5
                  ori          a3, t3, -1677
                  xori         ra, s1, -346
                  nop
                  sltiu        ra, s8, 1370
                  slt          t3, tp, s2
                  sltu         a0, ra, a2
                  srl          a6, a5, t2
                  srai         gp, t3, 27
                  ori          t3, a0, 603
                  srli         t2, t5, 10
                  xori         a7, a4, 816
                  lui          s10, 303707
                  sll          s6, s4, s1
                  ori          s6, sp, -1690
                  addi         tp, s10, 1491
                  srli         s2, t4, 6
                  xori         s0, t5, 890
                  or           t6, zero, ra
                  add          a5, s3, gp
                  sltiu        s11, s9, -745
                  andi         a7, a4, -1129
                  auipc        a6, 766251
                  srai         a3, sp, 25
                  sll          s7, t3, a4
                  addi         t6, s0, -1813
                  sltiu        a5, s9, -1494
                  slli         s6, a5, 0
                  xor          s0, s8, a3
                  and          gp, s0, t0
                  sltu         s8, s5, ra
                  srai         t3, s2, 16
                  or           a5, s5, s10
                  slti         s2, t4, 1760
                  srli         tp, a1, 28
                  srli         gp, t3, 26
                  slt          s1, t5, s10
                  or           s7, s1, a5
                  nop
                  sll          a7, gp, s10
                  xori         t3, s5, -1713
                  srl          t3, s3, a1
                  lui          t1, 627652
                  sra          s8, s10, s4
                  sra          a3, t2, s0
                  add          s3, a2, a3
                  ori          t2, t0, -885
                  sltiu        t4, gp, 1128
                  sll          s0, t5, s1
                  nop
                  srai         s11, t1, 1
                  sltu         a3, a0, sp
                  add          t3, s10, s0
                  srli         s6, a2, 29
                  sub          t4, s5, sp
                  slli         s3, gp, 2
                  srli         a3, zero, 20
                  sll          t1, a1, t6
                  slt          s0, a3, ra
                  slti         s3, s0, -443
                  add          a5, gp, t3
                  sltiu        t5, sp, 326
                  slti         ra, s4, -1215
                  slli         gp, t5, 11
                  slt          s2, s3, a1
                  sll          sp, a0, a2
                  ori          t2, s11, -385
                  slti         t5, t0, -294
                  sll          s1, a4, s3
                  xor          t1, s11, s1
                  slli         a1, gp, 15
                  lui          s9, 511772
                  sltu         ra, s11, t4
                  xori         a4, s6, -668
                  sra          a5, s10, s2
                  sltu         gp, a3, s1
                  or           zero, t4, a6
                  lui          t5, 740758
                  srai         t1, t5, 15
                  or           t6, s8, s11
                  add          a6, a5, a1
                  sub          a5, s11, s9
                  slli         a7, s8, 27
                  auipc        s2, 23067
                  srai         a0, s3, 26
                  srli         a0, a7, 21
                  sltu         t3, s6, zero
                  xori         t5, s10, -1526
                  nop
                  add          t1, s4, sp
                  auipc        a6, 52787
                  lui          s1, 645109
                  addi         tp, gp, -1792
                  sra          s8, s6, a0
                  auipc        s11, 1038656
                  slt          s2, s2, s2
                  sltu         a1, t5, s1
                  auipc        s0, 159763
                  srli         t5, s11, 14
                  slti         ra, tp, 507
                  sltiu        gp, a4, -970
                  lui          s0, 486524
                  sll          s6, sp, s1
                  or           s9, t6, a3
                  andi         tp, a0, -665
                  ori          t0, s5, 1939
                  srl          t2, t1, s7
                  sub          t5, s0, tp
                  or           s8, s0, s7
                  sra          t3, zero, tp
                  add          s0, ra, t5
                  slli         s0, s4, 5
                  nop
                  srl          zero, a7, zero
                  addi         s1, zero, -880
                  add          gp, tp, s7
                  nop
                  xor          gp, t1, s2
                  andi         t6, t4, -1846
                  sub          t6, a0, s9
                  addi         t0, t1, -989
                  auipc        a7, 1018813
                  andi         t1, a3, 1603
                  auipc        gp, 816656
                  srai         zero, s4, 27
                  srli         s11, gp, 22
                  srli         s11, t6, 0
                  slti         t0, t4, -1468
                  sll          s9, a0, s2
                  nop
                  sltiu        a0, s10, 1316
                  nop
                  andi         s11, t6, -581
                  or           s0, s2, s0
                  sub          t1, t4, s11
                  addi         t6, t6, 1703
                  sub          s10, a4, s2
                  sra          s9, a2, gp
                  xori         s10, s0, 1865
                  add          s11, a6, gp
                  slt          s3, a5, gp
                  slt          zero, s10, s4
                  slli         t3, s1, 20
                  srl          ra, gp, s5
                  sltiu        ra, s3, 464
                  and          s2, s6, s7
                  xori         ra, a7, 171
                  and          tp, s8, t6
                  xori         a6, t2, 1827
                  xor          t0, a3, t4
                  srl          t4, a6, ra
                  lui          sp, 657906
                  sltiu        tp, s9, -1093
                  sltiu        t4, s3, 1893
                  xori         a0, a2, 150
                  slt          a0, s7, s7
                  slti         a0, a0, -1249
                  slti         a1, tp, 2034
                  slt          t0, t3, s3
                  sltu         tp, t4, a4
                  or           t4, sp, a1
                  srl          s9, s8, gp
                  sltu         s6, t1, s1
                  slti         t0, a7, 1104
                  srl          tp, a1, a2
                  or           t2, a0, t2
                  lui          t3, 548418
                  slti         s9, t6, 1694
                  ori          tp, s3, -1088
                  srli         s3, s1, 25
                  xor          a6, a3, ra
                  sub          a4, a5, a6
                  ori          a1, gp, -2038
                  srli         a5, t0, 31
                  xor          t4, a0, ra
                  and          t4, s1, s6
                  sltiu        s11, t2, 569
                  xor          a7, s8, t3
                  andi         s9, gp, 1462
                  lui          s6, 415335
                  sra          tp, t1, a1
                  addi         a3, t0, 1754
                  slli         s2, zero, 11
                  sra          t2, s8, t1
                  or           a4, a5, ra
                  slt          s10, gp, s11
                  and          s0, t4, t5
                  sltiu        a4, a6, -147
                  addi         s3, s4, -1319
                  srai         gp, t2, 11
                  srl          s9, t5, ra
                  and          t6, t5, a1
                  or           t1, a1, a1
                  auipc        a5, 301666
                  sltiu        t1, t2, -1996
                  lui          a6, 250768
                  auipc        s1, 942200
                  or           t5, t6, t0
                  xor          sp, a4, a2
                  auipc        tp, 493069
                  xor          s2, a4, t5
                  ori          t4, t3, 254
                  sll          s0, t6, a4
                  srl          s7, s5, t4
                  xor          s9, t1, s5
                  sub          a7, s4, t6
                  ori          gp, t6, 194
                  andi         t4, s6, -800
                  sltiu        s8, a3, 339
                  xor          t1, s7, s3
                  sll          a7, s3, s1
                  sub          a7, a0, a1
                  and          a7, s1, s11
                  or           zero, t4, t4
                  add          s1, s9, a1
                  sra          a1, a4, a6
                  srai         t4, t4, 6
                  sll          t6, t4, t3
                  slli         s6, s4, 7
                  srai         gp, s11, 23
                  addi         a1, s2, -1955
                  nop
                  auipc        t2, 504969
                  srli         t5, tp, 30
                  sra          a0, a4, a6
                  srai         t6, t0, 29
                  xor          s2, a0, s10
                  or           a6, a4, a1
                  srai         a5, s1, 13
                  ori          t6, a3, -1175
                  xori         t4, a1, 234
                  srli         s3, s2, 20
                  sltiu        t5, s3, -1236
                  sra          s6, s3, ra
                  auipc        t4, 18110
                  sra          gp, s0, t0
                  slti         tp, t0, 43
                  srai         s0, t0, 1
                  sll          a5, a6, s11
                  slti         ra, a3, -134
                  srai         tp, a2, 9
                  sltu         t2, a3, t5
                  sll          t3, ra, s6
                  sll          tp, t1, s3
                  ori          a4, t0, 1361
                  srl          t4, ra, s6
                  addi         a1, s5, 460
                  sltu         a5, tp, a3
                  sub          sp, t4, s6
                  sll          tp, s5, s7
                  srli         s2, a4, 22
                  sub          s10, s5, a7
                  slli         a6, ra, 29
                  or           t4, a3, s1
                  sll          s3, a0, ra
                  ori          a6, tp, -1019
                  srl          t4, a0, t3
                  srai         s8, s0, 5
                  slli         s8, t5, 1
                  andi         gp, s9, 117
                  or           s0, s11, s1
                  srli         a5, gp, 18
                  ori          t3, a3, -789
                  and          ra, t0, t0
                  ori          tp, t0, -102
                  lui          s0, 885883
                  sltiu        t2, t6, 1371
                  srl          t0, a0, tp
                  addi         s0, s8, -317
                  slli         tp, s0, 9
                  slli         t3, s3, 21
                  andi         t6, a5, 1538
                  xor          t3, a1, s2
                  slli         sp, s10, 24
                  lui          ra, 101498
                  slti         s8, s10, -1221
                  sll          t2, a4, s11
                  sltu         t3, a6, s6
                  slti         t2, s4, -975
                  sltiu        t3, s6, 64
                  and          t5, s2, a2
                  auipc        s7, 188706
                  or           a6, sp, t0
                  slti         t0, s3, -1850
                  srl          t0, zero, s7
                  or           zero, s10, s5
                  or           a6, t4, s8
                  xor          t3, s10, a6
                  sub          s2, t4, s2
                  lui          s2, 817001
                  sltu         t6, s7, a6
                  slt          zero, s8, t4
                  andi         s10, a4, 1931
                  sra          a6, s2, a5
                  lui          t4, 407416
                  srli         s2, t5, 24
                  slti         a7, t3, 168
                  or           s0, s9, t1
                  addi         s3, t0, 1836
                  xor          a6, s10, t6
                  auipc        a0, 627902
                  addi         a0, t2, 54
                  srl          s1, ra, s3
                  andi         s10, s5, 181
                  and          a1, s7, sp
                  or           t4, tp, t2
                  xor          s9, s9, t3
                  addi         t4, tp, 1958
                  sra          t0, s0, ra
                  slti         tp, s10, -158
                  auipc        t4, 95494
                  sll          s7, s6, s5
                  add          s0, s0, s0
                  sltu         t2, s1, tp
                  slt          sp, t4, t4
                  sltu         s8, s10, gp
                  nop
                  add          s0, t6, a1
                  nop
                  andi         a3, s8, -271
                  slti         s3, s10, -724
                  sltu         s2, t1, a0
                  sra          t1, t5, s1
                  slt          t1, s1, s8
                  auipc        t2, 649376
                  slt          s1, t0, t6
                  slt          t6, s10, a2
                  srai         s10, tp, 23
                  sltiu        s3, a4, -1619
                  andi         a3, s4, 135
                  sub          t0, a0, a6
                  lui          a1, 969062
                  lui          t0, 775000
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a5, 0x80000000
                  li           t0, 0x80000000
                  li           s2, 0xffffffff
                  li           t1, 0x0
                  li           s11, 0xffffffff
                  li           s10, 0x76d72f90
                  li           a1, 0x80000000
                  li           a4, 0x0
                  li           s1, 0x0
                  auipc        s1, 49373
                  add          s11, s11, a5
                  add          t1, s10, s11
                  add          s1, s1, s1
                  sub          t0, s2, s1
                  addi         s10, s1, -1471
                  auipc        a5, 841327
                  addi         t2, a5, -93
                  lui          s10, 549676
                  auipc        t0, 154135
                  auipc        t1, 496109
                  add          s11, s2, t2
                  auipc        a4, 832687
                  sub          t1, a5, a1
                  lui          a5, 396863
                  nop
                  auipc        t1, 270989
                  add          s2, a5, t0
                  lui          s11, 919048 #end riscv_int_numeric_corner_stream_8
                  nop
                  sltu         ra, t0, t2
                  ori          t0, a7, 1067
                  addi         s6, t1, -1286
                  add          s0, a6, zero
                  sll          a6, s9, tp
                  sll          zero, s0, s8
                  xor          t6, ra, a3
                  srai         t3, tp, 14
                  auipc        a1, 62685
                  ori          gp, t5, 135
                  sra          t5, s11, t5
                  srl          tp, zero, ra
                  xori         s10, a6, -1374
                  xor          t1, a0, ra
                  srl          t3, a3, s0
                  sltiu        tp, s4, 341
                  sra          t2, s2, a1
                  srl          t2, s4, tp
                  srli         a7, t0, 20
                  slti         t0, s7, 2001
                  sll          t3, tp, t4
                  nop
                  xori         s0, gp, -145
                  ori          gp, zero, -1684
                  ori          t2, s6, -1709
                  sltu         a7, a0, s1
                  nop
                  slti         s1, tp, -328
                  sltiu        t3, t3, 1951
                  sub          t5, t6, s4
                  andi         t4, tp, -1975
                  xor          s8, t5, s9
                  slli         a7, s2, 20
                  nop
                  addi         s8, s0, -1169
                  xori         s3, s3, 635
                  slt          t1, s11, zero
                  slli         t5, a2, 29
                  ori          t0, t2, 330
                  or           s3, ra, a6
                  srai         s10, s11, 3
                  slt          sp, s7, a6
                  sub          t4, a5, a4
                  srli         s6, a6, 18
                  ori          a7, a7, -1120
                  slti         t4, sp, -595
                  sll          a4, a5, s7
                  auipc        ra, 553747
                  and          t6, s5, s4
                  srai         a0, s7, 1
                  or           a5, s8, s2
                  sltiu        a5, gp, 547
                  sub          a1, s5, t2
                  srli         s1, s5, 15
                  sll          t4, a0, t5
                  sra          s3, a6, a3
                  srl          t3, s2, s4
                  add          t1, s6, s1
                  sltiu        s7, sp, 451
                  sltu         t4, s5, s9
                  lui          s0, 345732
                  slti         t4, t1, 1904
                  auipc        a5, 839421
                  nop
                  sll          t4, a1, a7
                  ori          t5, s5, 1497
                  andi         a7, t2, -31
                  sra          sp, a7, s3
                  slti         s2, a3, 780
                  auipc        zero, 403051
                  srl          s8, s11, t5
                  addi         s6, t4, -178
                  andi         t0, t3, 120
                  add          s10, t3, s2
                  andi         t2, a4, 1264
                  add          a0, s5, s7
                  srai         zero, a6, 19
                  sll          t5, s3, a5
                  slli         zero, a7, 20
                  slli         s3, t6, 24
                  nop
                  xori         s2, a2, -1866
                  nop
                  xori         t2, s1, 584
                  nop
                  add          gp, a4, t2
                  lui          a4, 866651
                  nop
                  auipc        s9, 283905
                  sltiu        gp, s11, -874
                  andi         t0, t6, -688
                  xori         s8, ra, -1519
                  xori         a0, s7, 634
                  sltiu        t0, s4, 1701
                  srai         tp, a6, 31
                  xori         t3, t6, 785
                  ori          t5, sp, -744
                  auipc        s9, 220657
                  slt          gp, t5, t3
                  xor          t3, s3, ra
                  srl          s9, s1, a1
                  sltiu        t5, a2, 646
                  slti         s10, s1, 458
                  srl          s3, s4, s8
                  and          t3, tp, s4
                  sra          s10, s11, sp
                  sltu         ra, a0, s7
                  sltu         s0, t4, zero
                  srai         s10, t1, 18
                  add          s11, a6, t5
                  sltu         t0, tp, s5
                  addi         sp, s10, 300
                  slli         a4, a3, 19
                  sltiu        t0, s5, 1494
                  or           t5, a5, s5
                  xori         a3, s6, -149
                  srl          a4, t2, ra
                  sltiu        a6, t2, -675
                  srai         s11, s3, 11
                  andi         s1, a3, 1642
                  ori          s2, s5, -1136
                  ori          a0, t6, -1018
                  slti         s0, s0, -518
                  slli         t0, a1, 9
                  nop
                  sll          ra, a3, a6
                  lui          s11, 36678
                  nop
                  slti         gp, s5, 119
                  sub          s0, a7, t0
                  sltu         a0, a0, s4
                  ori          a7, gp, -639
                  slli         a6, t5, 12
                  srli         sp, t6, 4
                  srl          s2, gp, t4
                  sltu         s7, s10, a3
                  sll          s0, gp, a7
                  srl          s1, s8, a3
                  slti         sp, s9, 1592
                  lui          t6, 1021023
                  xor          a1, a6, t5
                  addi         s11, ra, 2007
                  srli         s2, ra, 12
                  sltu         s10, ra, a6
                  srl          t0, s11, sp
                  ori          t2, a4, -442
                  sltu         s6, s4, a1
                  slli         t0, s11, 24
                  sltu         t5, a5, t6
                  lui          t1, 617844
                  srai         s11, s8, 20
                  nop
                  sll          s3, t1, s2
                  nop
                  slti         t4, s9, -522
                  andi         tp, t0, -1913
                  slli         a7, a4, 24
                  srai         s8, a0, 26
                  slti         s2, t4, -691
                  srl          s11, a4, t6
                  andi         zero, t6, 622
                  sltiu        t5, t5, 630
                  addi         s2, a1, -882
                  slli         s10, a4, 23
                  xor          a3, s5, tp
                  ori          s6, a3, -1237
                  slt          gp, ra, zero
                  sll          t2, a7, t1
                  sll          t3, t5, t0
                  slti         sp, a3, 1991
                  sll          a5, s3, s10
                  slti         s2, s10, 1945
                  srli         s7, t1, 16
                  and          s6, a6, s8
                  and          a4, s4, s10
                  addi         a6, t0, -622
                  sll          a6, a5, a0
                  ori          s1, a4, -1408
                  add          t3, s0, s11
                  addi         s10, tp, -1312
                  and          s8, s2, s2
                  slt          t5, t0, tp
                  slti         s9, zero, 1207
                  ori          s1, s10, -1831
                  sll          a6, t1, t3
                  lui          s7, 806297
                  xori         t0, s3, 321
                  nop
                  slli         a5, a4, 13
                  sra          t5, t2, s4
                  nop
                  xori         s9, gp, 973
                  sll          a6, a3, a4
                  and          t4, s4, ra
                  xor          s10, s1, s4
                  addi         s9, a5, 1021
                  sra          a6, t3, a7
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           a3, 0x1ff4d7cd
                  li           s3, 0xffffffff
                  li           ra, 0x0
                  li           s11, 0x80000000
                  li           t1, 0xffffffff
                  li           t3, 0xe697bb36
                  li           tp, 0xb5b13f7a
                  li           a0, 0x0
                  li           t5, 0xffffffff
                  auipc        t3, 278325
                  add          a3, t5, sp
                  lui          s3, 73398
                  add          s11, s3, ra
                  auipc        s3, 412640
                  sub          tp, t1, a0
                  sub          t5, a0, a0
                  add          tp, t5, sp
                  add          ra, s11, s3
                  nop
                  lui          t3, 947734
                  sub          t3, t1, ra
                  lui          a3, 562924
                  sub          a3, s3, ra
                  add          a0, tp, t5
                  lui          t1, 675466
                  nop
                  addi         a0, s11, 1095
                  auipc        ra, 81331
                  nop
                  auipc        sp, 848676
                  sub          s11, ra, t3 #end riscv_int_numeric_corner_stream_34
                  slti         s2, s2, -1656
                  slli         t2, s0, 23
                  or           a6, s3, a2
                  slli         t0, gp, 18
                  sub          a0, t2, s4
                  auipc        t4, 519716
                  sltiu        tp, a3, 439
                  add          s2, s11, zero
                  auipc        t2, 77847
                  add          t1, s1, s4
                  auipc        a0, 504599
                  add          a4, a4, s1
                  sltiu        s8, a1, 1607
                  add          a6, a0, s11
                  sub          s2, s1, s9
                  srl          t5, a7, s3
                  xori         tp, a4, 1364
                  slli         s10, s4, 20
                  sltu         s11, s6, t4
                  addi         ra, ra, 1158
                  auipc        s9, 750024
                  auipc        t3, 44607
                  andi         t2, s8, -1801
                  nop
                  sltu         t3, a0, a6
                  andi         t1, t1, -1330
                  andi         s6, sp, -400
                  andi         sp, s10, -140
                  ori          tp, s0, 218
                  addi         sp, a3, 1076
                  add          s6, t1, t4
                  sra          a4, s0, t1
                  nop
                  xori         t6, t2, 2042
                  addi         gp, s9, 310
                  and          s9, s7, s2
                  srai         s1, t3, 19
                  srai         a6, t5, 25
                  andi         s6, s5, -132
                  slli         a3, t4, 4
                  or           a0, s6, a2
                  slli         s7, t4, 17
                  andi         s0, s10, -1626
                  and          a7, a1, s5
                  or           a5, t6, a4
                  srai         ra, sp, 20
                  nop
                  sra          a7, t1, s5
                  add          a7, sp, a6
                  andi         sp, t0, 797
                  sra          s9, zero, a5
                  xori         t2, a7, -621
                  sltiu        a4, s4, 215
                  slti         t1, s6, 902
                  sltiu        t1, a1, 2013
                  nop
                  and          t0, zero, s6
                  lui          s9, 888564
                  ori          a4, t4, -2027
                  sltiu        ra, t3, 1738
                  sltu         t4, gp, s9
                  and          t0, s9, s10
                  srl          a5, a1, sp
                  and          t3, a2, ra
                  sltiu        t3, a2, -63
                  or           tp, t4, s0
                  lui          s1, 305604
                  sra          s11, s5, a2
                  xori         a6, a6, 290
                  ori          ra, zero, 803
                  srai         s3, zero, 30
                  sll          s3, s4, t4
                  andi         a0, a0, 1864
                  srai         s6, a4, 12
                  addi         t3, a3, -660
                  auipc        s6, 54176
                  andi         t4, t6, 1823
                  xori         t4, s4, 1409
                  srli         a7, s3, 20
                  ori          tp, a5, -942
                  lui          a3, 828531
                  or           s1, t6, zero
                  slti         s8, t2, -228
                  srai         s11, zero, 12
                  xor          s8, ra, t3
                  srl          s11, t4, s8
                  sltiu        a0, t3, 527
                  srai         s9, t4, 19
                  srli         s11, a1, 12
                  sll          s0, t1, s2
                  xor          t4, a1, tp
                  or           ra, a3, s10
                  or           a3, a6, s11
                  sra          t3, t1, s11
                  lui          t6, 187685
                  sub          s8, s9, t3
                  andi         t1, s4, -1688
                  srli         tp, t2, 16
                  auipc        t3, 570025
                  sltu         a6, s1, tp
                  sra          a6, ra, t5
                  add          ra, s4, ra
                  srai         a4, t3, 20
                  sll          ra, a3, tp
                  and          ra, s0, t6
                  slli         s3, a7, 24
                  nop
                  addi         s3, s1, -336
                  addi         s6, t6, -924
                  and          t0, s8, a0
                  sltu         t4, s10, ra
                  add          t4, a0, a6
                  addi         t3, a5, -414
                  xor          t3, s4, s11
                  xori         s0, s7, -909
                  auipc        t5, 841733
                  sub          gp, s9, a5
                  slli         a6, a7, 14
                  srl          s0, t0, a3
                  addi         a1, s8, -383
                  lui          s9, 290648
                  xori         s9, s1, 1041
                  sra          tp, s8, s6
                  xori         a5, a0, 553
                  slli         s7, t0, 11
                  slli         tp, t1, 22
                  sub          t1, a2, a1
                  xori         t1, s10, -93
                  srai         s0, t5, 18
                  sll          a1, a7, s9
                  slt          s11, s0, a6
                  addi         a5, s7, -1894
                  nop
                  andi         a4, a3, 250
                  sub          sp, s10, s11
                  sub          s10, s6, a3
                  and          a6, a7, a5
                  or           a7, s6, a1
                  sra          tp, zero, t5
                  ori          ra, t6, 477
                  sltu         a4, t0, zero
                  and          a0, s11, zero
                  xori         s7, s2, -1351
                  sub          s0, s1, a2
                  add          s11, s2, a6
                  slti         gp, a0, 483
                  slt          s8, tp, t1
                  sra          t3, t0, s9
                  nop
                  sra          s7, t6, tp
                  auipc        tp, 862429
                  nop
                  and          a0, t5, t2
                  andi         t3, sp, 1047
                  and          t6, t6, s8
                  slt          s6, s5, a5
                  sra          t3, a2, a1
                  srl          tp, s9, a1
                  slt          t0, zero, s6
                  and          t2, a7, s7
                  sltiu        ra, a7, -124
                  or           t3, s5, a2
                  srl          s0, s11, t6
                  xor          a0, a1, s6
                  sra          tp, t4, s2
                  xor          ra, s3, t5
                  or           tp, a7, a5
                  sub          a7, a7, t4
                  sra          t1, s11, a0
                  slti         t3, t2, 1122
                  slti         t3, tp, -1735
                  sltu         a3, sp, ra
                  nop
                  addi         s6, a2, -1310
                  add          s2, zero, a6
                  slt          a4, t3, a1
                  ori          t0, s1, 551
                  slti         t5, a1, 582
                  srai         a1, s4, 15
                  xor          s6, a2, s4
                  sltu         s0, a5, a0
                  sra          gp, ra, s5
                  sub          a6, s6, gp
                  or           a1, t2, a7
                  slli         s10, t6, 24
                  srli         a1, a5, 20
                  sltiu        sp, t0, 1014
                  andi         zero, sp, -195
                  sltiu        s6, s7, 421
                  slti         s3, t5, -1310
                  sra          sp, s0, s4
                  add          a0, s8, a1
                  sra          t2, a2, a3
                  and          s10, ra, t0
                  slti         t4, a5, 1691
                  slt          t2, t6, t0
                  srl          t5, a3, s0
                  add          s7, s5, t2
                  addi         t0, a2, 1745
                  xor          a6, s6, s11
                  sltiu        s3, a0, 454
                  andi         s3, a7, -306
                  xor          t2, t6, gp
                  and          a6, s8, s9
                  xori         s9, a0, -428
                  addi         zero, ra, 1352
                  nop
                  ori          gp, s3, -1968
                  andi         tp, t3, 564
                  add          t3, tp, s11
                  and          a4, a6, ra
                  addi         a3, s8, 192
                  ori          gp, s3, 403
                  slt          s3, a0, a4
                  or           s6, s0, s3
                  auipc        a4, 143186
                  lui          tp, 330004
                  sra          s1, t4, s10
                  sra          a3, a5, a4
                  sltiu        s10, s0, 334
                  slti         sp, s7, 1870
                  slli         s11, s8, 22
                  auipc        tp, 755380
                  lui          s11, 14034
                  and          gp, s11, sp
                  sub          a4, a0, a3
                  srli         a1, a5, 8
                  sltiu        s0, a0, 303
                  or           a7, gp, s1
                  srai         a1, a3, 0
                  xor          t1, a7, t5
                  xor          s6, zero, t0
                  srl          s2, a4, a3
                  sll          a5, t0, tp
                  auipc        ra, 240231
                  xori         a7, t6, 1929
                  and          t4, gp, a0
                  add          gp, s4, s7
                  sra          a6, s10, t6
                  sltu         t6, zero, a1
                  andi         t6, t5, 463
                  andi         a1, t3, 247
                  addi         zero, zero, 1533
                  andi         s3, t5, 883
                  sltu         a1, a3, a5
                  nop
                  sra          a1, s4, t3
                  xori         a7, s8, 1868
                  slt          s9, s11, sp
                  sra          a6, t5, t0
                  andi         tp, ra, -1984
                  srai         s6, a1, 20
                  srai         a4, s2, 17
                  ori          t2, a3, -1722
                  sub          t0, ra, s2
                  and          s8, s10, s10
                  or           s7, tp, s8
                  slli         zero, t3, 13
                  and          a6, s1, a7
                  srli         s0, a3, 0
                  srai         s2, s1, 2
                  add          sp, zero, s1
                  sltiu        t3, s10, -454
                  sltu         t5, s1, sp
                  sltiu        t6, t6, -108
                  slli         s9, s0, 16
                  auipc        t4, 45586
                  sll          s1, s9, s5
                  srli         ra, s4, 1
                  srl          ra, a7, s9
                  sra          tp, t3, a5
                  slti         a1, s3, -783
                  lui          t2, 842090
                  ori          sp, s0, -186
                  or           tp, t4, t5
                  slti         t4, s3, 767
                  add          sp, s2, s5
                  andi         a3, a0, -879
                  or           a5, t0, t5
                  slti         t1, s5, -763
                  auipc        s0, 370592
                  and          t4, t3, gp
                  srli         a7, t6, 2
                  srli         s11, a7, 3
                  slli         s7, t5, 17
                  add          s11, a5, t6
                  sra          a6, t1, t6
                  slti         a0, gp, -1567
                  xor          s9, s9, a3
                  slt          t4, a1, a7
                  xori         t1, sp, 243
                  slt          s8, s11, s3
                  srl          s8, t1, s7
                  xori         a6, s8, -1520
                  sltu         t5, a0, s9
                  sra          t1, t2, s0
                  add          s8, t4, gp
                  xori         a1, s6, -1130
                  sub          t5, s1, a6
                  xor          s8, t4, s6
                  xori         t5, a5, -1243
                  sra          gp, tp, t6
                  andi         t4, a1, 1068
                  andi         zero, t6, 769
                  xor          t0, s7, tp
                  ori          tp, a7, -667
                  nop
                  slt          tp, s7, s2
                  sltiu        a5, s2, 167
                  add          s7, s0, s3
                  sltu         s3, zero, a6
                  sub          t1, s10, gp
                  and          a4, s2, sp
                  lui          t4, 752556
                  sub          t4, a7, ra
                  and          t6, t2, s7
                  srli         t2, s3, 14
                  sra          s8, t2, s2
                  xor          s6, s3, t1
                  slt          a5, s10, t6
                  slti         a3, s9, 745
                  and          s3, t4, s2
                  add          tp, a6, s0
                  xor          t1, tp, a5
                  andi         s9, a0, -1527
                  srli         t1, a4, 29
                  slti         a5, s6, -1493
                  sll          a6, sp, zero
                  sub          a3, s3, s5
                  and          s3, s4, s10
                  nop
                  xor          s3, gp, a3
                  andi         t6, s9, -809
                  sltu         s8, t3, sp
                  slti         zero, s0, -502
                  nop
                  nop
                  srai         s6, t4, 28
                  slti         t0, t3, -1591
                  and          t0, s10, t6
                  sra          tp, a2, t6
                  auipc        a5, 58605
                  nop
                  sltu         a7, s5, zero
                  ori          s1, s1, -1098
                  slti         zero, a6, 168
                  sltu         s2, t3, s11
                  xor          a3, t2, a3
                  sltu         a7, tp, a4
                  or           t6, t6, t6
                  sll          a7, t2, t2
                  srai         s6, a2, 29
                  xor          s6, t5, s4
                  nop
                  srl          s10, s0, s1
                  sra          a5, tp, s0
                  slti         t6, t0, -496
                  slt          s6, s2, s4
                  sra          ra, tp, s2
                  addi         tp, a7, -856
                  nop
                  auipc        t3, 378285
                  add          a3, a1, t1
                  slti         t0, t4, 1232
                  slli         zero, a0, 27
                  sltiu        s0, a7, -860
                  ori          a7, s2, 1513
                  slti         a1, sp, -526
                  slti         s2, t6, -9
                  or           s9, a1, s1
                  sub          a3, s6, sp
                  slli         a4, t6, 12
                  sltiu        a5, s0, -848
                  addi         s9, s4, -1325
                  slti         a3, ra, -742
                  sltiu        s1, t2, -319
                  srai         ra, s10, 11
                  srl          zero, t3, s8
                  slt          t1, zero, t4
                  auipc        s0, 452753
                  and          t3, t5, gp
                  xori         t1, s10, 408
                  auipc        a4, 103348
                  sltiu        t2, zero, 351
                  add          a4, s0, a0
                  slli         a5, a2, 15
                  sll          a1, s4, a2
                  sub          t3, s3, s7
                  slti         s0, a5, 184
                  sub          s8, ra, s8
                  slti         a1, s10, -547
                  or           tp, s2, a5
                  srli         s3, s11, 10
                  xori         s9, t0, -315
                  lui          tp, 522393
                  srl          s11, a2, s10
                  sub          s2, a7, tp
                  srl          t2, s3, t0
                  srli         s8, s0, 19
                  slti         sp, s9, -1817
                  srl          tp, s3, a7
                  addi         t2, s4, 1156
                  slti         a1, a6, 1469
                  srli         t1, t0, 11
                  srli         t4, s3, 16
                  sltiu        t3, s11, 902
                  sll          s11, t4, t3
                  andi         a1, t6, 1476
                  sub          t2, s11, t2
                  or           gp, s9, s8
                  xori         a5, a4, 957
                  xor          a6, a4, a6
                  or           sp, a6, t5
                  sll          t5, a2, t4
                  lui          tp, 643892
                  add          gp, a3, a5
                  ori          s0, a5, -1163
                  sub          s8, tp, t5
                  sra          ra, s2, t0
                  sltiu        s9, t2, 1910
                  nop
                  xori         zero, s4, -1421
                  srli         a0, t6, 8
                  srli         s6, t0, 22
                  xor          s1, s8, s0
                  sub          a6, tp, a1
                  srl          s11, s10, tp
                  srai         s10, t2, 2
                  srli         s10, s9, 4
                  sll          s7, a2, zero
                  or           s3, s10, a4
                  srli         tp, a0, 0
                  and          a1, s3, s9
                  slt          a0, t5, t0
                  sltiu        s9, a6, -144
                  sll          t6, s5, ra
                  or           s2, a1, s5
                  ori          a4, a6, -512
                  andi         s0, a6, 901
                  slt          s8, s8, t1
                  srli         t4, t0, 26
                  andi         s10, tp, 906
                  addi         s3, a3, 935
                  slli         s10, t3, 25
                  sra          s10, s6, s11
                  srli         gp, a0, 30
                  sub          s3, gp, a0
                  addi         t0, s4, 1412
                  lui          t0, 876210
                  srl          a6, a3, s1
                  slli         a5, a2, 10
                  slti         a6, s10, 1414
                  sub          s6, a1, s3
                  add          gp, a6, t1
                  sra          t3, s9, s9
                  srl          a6, t5, s1
                  slti         s0, gp, -609
                  or           s3, s7, ra
                  sub          a4, t5, gp
                  sll          t5, s10, a1
                  srl          a3, a6, a7
                  sltu         s10, s6, s0
                  sub          t6, a1, t1
                  or           t1, sp, s1
                  srli         t3, s0, 22
                  andi         t0, s9, 1464
                  sra          a0, s11, a0
                  sra          a3, t3, a2
                  andi         s1, gp, 341
                  and          s1, s5, s9
                  addi         a7, a7, 1574
                  auipc        t3, 347593
                  srli         s0, sp, 0
                  ori          a6, s5, -1136
                  slli         s9, t0, 24
                  slti         t4, s3, -1064
                  sltu         a7, a5, a3
                  xori         a4, gp, -695
                  xor          a4, s3, s11
                  slt          tp, s0, s8
                  slli         t4, a2, 21
                  xor          tp, s2, gp
                  andi         a4, a1, 1248
                  xori         s9, t6, 739
                  slli         t6, a6, 22
                  or           s10, s7, a7
                  xori         t4, a5, -1389
                  slli         s1, s7, 3
                  srli         a1, t3, 1
                  or           a7, s7, s7
                  add          s6, s3, a6
                  addi         t2, t0, 1786
                  add          gp, a1, a4
                  xor          s9, sp, tp
                  nop
                  ori          t1, a7, 377
                  srai         t0, t4, 9
                  slti         zero, gp, -862
                  sll          s2, t3, s5
                  lui          s7, 492558
                  srl          a6, sp, s6
                  sltu         t0, s8, s5
                  srl          t0, t6, s3
                  nop
                  andi         tp, s6, 1658
                  sll          t0, t4, s0
                  srli         t4, s10, 27
                  slt          s8, s3, t0
                  slt          zero, a5, t1
                  sltu         t2, s9, tp
                  srli         sp, sp, 16
                  sltiu        s2, sp, 1920
                  slti         t1, s1, -179
                  andi         t0, t5, 614
                  sltiu        s10, t4, -1836
                  sltu         tp, a0, t1
                  srl          a6, gp, s3
                  ori          t0, s10, 561
                  srai         ra, s3, 27
                  nop
                  or           a5, s10, s2
                  nop
                  ori          s9, s0, 1137
                  sltiu        sp, t4, -1525
                  sub          a4, s9, t4
                  auipc        s0, 799069
                  add          a3, t0, a1
                  slt          sp, s0, s7
                  add          s6, s11, s10
                  sltu         t5, a2, s0
                  add          tp, t2, a5
                  or           s2, s10, a6
                  nop
                  lui          s3, 684705
                  and          s9, tp, s0
                  lui          s10, 476574
                  sll          a3, t4, a4
                  lui          s9, 81066
                  addi         t4, t4, 1683
                  sub          s6, s11, s4
                  srl          s7, s8, t5
                  nop
                  srli         s1, a2, 0
                  nop
                  lui          t3, 404024
                  slt          tp, t0, t0
                  sll          t1, s7, t6
                  sltiu        a6, a4, 1930
                  or           t6, s11, t3
                  sub          a5, t6, s10
                  or           a3, s0, s10
                  xor          s0, t0, s6
                  add          t0, a6, s7
                  xor          tp, sp, t5
                  ori          t3, tp, -997
                  lui          t0, 693173
                  add          sp, t0, ra
                  and          sp, a3, s8
                  sll          t5, s10, s9
                  xori         t3, s6, -1472
                  srli         s7, a4, 19
                  and          sp, a5, s5
                  nop
                  sll          sp, s11, s1
                  nop
                  sll          a4, s7, s8
                  and          s9, t3, a1
                  addi         s11, t0, -295
                  xor          t4, gp, t5
                  slti         a6, s4, 151
                  slti         t3, s3, 1177
                  sltiu        t2, s6, -262
                  sra          s6, sp, a0
                  lui          t6, 336242
                  andi         s8, t4, -801
                  xor          a0, s10, s11
                  auipc        a4, 960643
                  add          t1, s5, sp
                  addi         tp, t4, -1340
                  and          t1, a2, t2
                  sra          tp, s10, t4
                  lui          s0, 870824
                  lui          t3, 747542
                  xori         a0, s1, -1004
                  sub          gp, s7, t1
                  xor          a5, s1, gp
                  srai         tp, s8, 10
                  addi         a1, a2, 916
                  nop
                  slt          s7, a2, s0
                  slt          t6, a7, a7
                  sltiu        zero, t6, 263
                  sub          a4, a7, a0
                  srai         s10, sp, 10
                  add          t6, sp, s10
                  andi         t5, s8, 1627
                  sltiu        t3, gp, -354
                  nop
                  ori          t5, s8, -235
                  ori          a3, a6, 734
                  add          t5, s6, t5
                  lui          ra, 306340
                  add          t3, a3, a5
                  sltiu        s11, a7, 1129
                  ori          a0, s9, -326
                  add          a0, ra, gp
                  sltu         t2, t5, a4
                  slti         t2, gp, 686
                  add          ra, tp, s5
                  sub          s3, a2, s10
                  sra          a3, a2, s6
                  srai         s0, s6, 30
                  slt          a0, a1, a0
                  add          s2, gp, t3
                  auipc        t6, 1029278
                  auipc        t3, 418325
                  lui          a4, 238695
                  ori          t1, s11, 1369
                  slt          a6, sp, s11
                  lui          t3, 89741
                  sra          s7, t0, s4
                  nop
                  nop
                  or           t2, a2, gp
                  andi         t3, a5, 1798
                  slt          a3, s3, t3
                  slti         s7, s4, -1279
                  lui          s10, 231312
                  sltu         gp, t0, s8
                  ori          ra, s1, -780
                  xori         s10, t6, -964
                  slti         tp, gp, 820
                  xori         t4, a3, -697
                  or           zero, s0, ra
                  lui          a3, 814328
                  nop
                  sra          s9, gp, s9
                  sltiu        ra, a3, 443
                  ori          tp, a3, 608
                  slti         a7, a3, 199
                  andi         t3, a3, 1236
                  addi         t6, t5, 935
                  sltiu        a6, s8, 824
                  sltu         t5, a4, s5
                  or           t1, zero, a6
                  ori          t6, s5, -374
                  addi         t0, s10, 1276
                  slli         t1, a6, 7
                  addi         t0, s5, 1506
                  srli         a4, s10, 30
                  slli         t3, a0, 23
                  addi         s1, s4, 713
                  addi         s11, t0, -1747
                  sra          s9, s0, a2
                  slti         s8, t6, 178
                  xor          a1, zero, s0
                  srli         t1, s1, 24
                  sub          t0, t0, t3
                  sltu         t2, t3, s6
                  slti         a3, a2, -174
                  and          a4, s0, s5
                  srl          s11, a4, a3
                  sltiu        s2, gp, 1296
                  slli         s10, t0, 19
                  sra          a7, a0, s2
                  slli         s1, t5, 27
                  andi         a3, a4, -942
                  slli         a4, s2, 4
                  srl          a7, t4, a7
                  sub          sp, s4, t0
                  xori         a3, t3, 751
                  srl          gp, s11, s6
                  addi         ra, a0, 1129
                  ori          tp, s4, -1680
                  srai         t3, s0, 26
                  lui          t2, 815669
                  add          s10, s3, t1
                  srai         a4, s8, 13
                  or           a3, t5, t2
                  sltiu        a5, s5, 259
                  slli         s0, s0, 13
                  sub          s10, s9, t1
                  auipc        a5, 870918
                  add          t2, s0, a6
                  slti         s10, gp, -743
                  xor          s7, s4, t1
                  auipc        zero, 371108
                  or           s1, s6, t3
                  andi         t5, s0, -1352
                  srai         t4, s1, 29
                  and          s2, ra, s1
                  slt          s7, s7, zero
                  lui          s0, 297596
                  add          t2, s5, s2
                  nop
                  srli         t3, t2, 28
                  ori          t2, t1, -839
                  xori         zero, a5, -949
                  slti         t5, t2, -1240
                  srli         s0, s5, 9
                  and          s7, s1, a5
                  srai         a3, zero, 5
                  srai         s7, a3, 6
                  sltu         a6, s5, a5
                  xori         a0, a3, -1896
                  sltu         s6, ra, a3
                  add          sp, t4, t3
                  slt          s3, s1, a6
                  sub          a3, a3, t1
                  sub          s3, t3, a5
                  xor          t4, a0, a4
                  srai         a6, a5, 18
                  andi         s9, tp, -1778
                  slt          s11, s11, t5
                  srai         t0, tp, 7
                  add          gp, gp, s7
                  slti         s1, s10, -1607
                  add          sp, s7, s0
                  xor          t3, s1, s7
                  addi         gp, t1, -568
                  sltiu        s1, t4, 438
                  auipc        t4, 948326
                  xor          a7, t6, s0
                  sltiu        s9, gp, 1566
                  slli         a0, t4, 19
                  sltiu        a5, tp, -183
                  addi         s7, s8, -1070
                  srli         s6, a7, 2
                  xor          a7, t3, t5
                  xori         t4, a6, 1690
                  auipc        s2, 929393
                  xori         zero, s6, -1704
                  andi         a4, t1, -43
                  nop
                  slt          s10, s6, a4
                  or           sp, a5, s9
                  ori          s6, gp, 1995
                  lui          a1, 33985
                  and          a0, t6, a4
                  lui          s9, 333670
                  slli         s3, a6, 24
                  or           s10, t6, t4
                  sra          tp, t5, s10
                  srli         s1, s10, 12
                  andi         s6, t5, -991
                  srai         s0, s2, 28
                  nop
                  xor          zero, t6, a2
                  slti         s6, s4, -255
                  sltiu        t1, s11, 1378
                  slli         a5, s7, 16
                  and          s6, s6, t5
                  ori          a1, a7, -1338
                  slt          zero, s6, t6
                  and          s1, t6, t3
                  sltu         t1, tp, zero
                  srl          a6, s9, t1
                  xori         s7, a5, 1987
                  srl          t2, s8, ra
                  slli         s1, ra, 2
                  xor          t4, t3, a7
                  or           t1, a2, t4
                  andi         s8, a6, 1517
                  xor          a6, s2, zero
                  xori         a6, t3, -570
                  auipc        s9, 877038
                  sltu         a3, gp, a5
                  andi         tp, s5, -988
                  sub          a4, s6, a0
                  xori         s6, t6, -1312
                  sltiu        t2, a2, 1579
                  and          zero, ra, s10
                  sltu         s10, sp, a5
                  addi         a0, a3, 1026
                  addi         t6, a6, 754
                  slli         s7, s10, 0
                  lui          s2, 1008570
                  add          a0, t3, ra
                  sltu         zero, tp, a2
                  and          zero, s11, a2
                  sub          a0, gp, t4
                  add          ra, t4, s4
                  and          tp, s6, tp
                  ori          t3, s7, -706
                  lui          s6, 813030
                  xor          a3, t5, s9
                  and          t5, s7, t2
                  sll          t2, s1, s9
                  sltu         sp, t0, zero
                  sltiu        a0, s0, 678
                  ori          t6, t4, 500
                  slli         a3, ra, 12
                  xor          a7, ra, s5
                  xor          s1, s2, s11
                  sub          a1, s5, s10
                  sltu         t3, s5, s0
                  sub          s9, ra, s10
                  srl          t3, s1, s9
                  or           a0, a6, t2
                  addi         a7, a7, -1594
                  nop
                  srai         a7, t4, 19
                  sltu         s7, s11, a5
                  ori          s3, s4, 825
                  srli         s9, s7, 24
                  lui          s2, 408602
                  slti         s1, a7, -86
                  addi         t5, ra, -240
                  sltu         t0, sp, t3
                  sltu         t4, s11, t3
                  sltu         a3, s5, s2
                  andi         zero, s3, 1598
                  andi         a3, s1, 695
                  addi         s0, t1, -368
                  and          s7, s1, s6
                  slli         ra, ra, 4
                  and          a0, a0, t3
                  and          s10, s11, t4
                  slli         s6, s10, 6
                  sra          a7, t4, a0
                  srli         t1, s6, 6
                  andi         a3, a3, -714
                  srai         sp, a7, 25
                  lui          ra, 948193
                  xor          s1, tp, s8
                  nop
                  xori         sp, s3, 856
                  srl          ra, s4, s5
                  and          sp, s10, a3
                  nop
                  sltiu        t5, zero, -967
                  sll          s8, s10, s8
                  andi         a7, t1, -1341
                  srl          tp, t3, s0
                  slt          s8, t0, t6
                  xori         zero, t1, -1950
                  andi         s6, tp, -1276
                  or           s7, s2, s6
                  sra          s2, s9, a3
                  xori         t2, s5, 41
                  slt          ra, t3, a3
                  nop
                  slli         a5, s2, 17
                  sub          t2, sp, s10
                  nop
                  sltu         a1, a7, s8
                  srl          tp, a2, sp
                  and          s10, s5, s2
                  sub          s9, s5, s3
                  auipc        zero, 378680
                  addi         s0, a2, -1150
                  and          s6, t2, a4
                  slli         t0, s7, 29
                  srl          a0, a3, s0
                  slt          s2, s10, s4
                  sltu         a0, a6, s2
                  and          a6, s10, a1
                  srli         a4, s3, 12
                  slti         s10, s0, -1665
                  add          s7, s9, s10
                  slt          s2, ra, t1
                  slti         a3, s3, 726
                  nop
                  or           s1, a4, t5
                  srl          t0, a5, t4
                  nop
                  srl          t4, s5, s9
                  nop
                  slti         t4, tp, 851
                  nop
                  srai         s1, a6, 23
                  slli         s10, s0, 1
                  nop
                  addi         t1, s3, -1876
                  and          s0, a7, a7
                  or           t4, t0, a4
                  add          s11, t6, t2
                  lui          a3, 387115
                  xori         s3, a4, 1965
                  sra          gp, s5, tp
                  srl          s11, a5, sp
                  and          a0, s5, sp
                  add          a3, a2, s0
                  srl          sp, t2, s5
                  slli         s2, tp, 18
                  srl          t3, gp, s11
                  lui          s11, 764992
                  auipc        a4, 93554
                  slli         t5, s4, 21
                  slti         s10, gp, 1456
                  sra          sp, a3, a7
                  srai         a1, s4, 5
                  ori          a7, a1, -119
                  sub          t2, ra, t6
                  sll          a4, a4, t0
                  sub          sp, s9, s0
                  slli         t6, a0, 3
                  or           s3, s2, zero
                  sltiu        tp, a6, 179
                  slt          a5, gp, s7
                  nop
                  xor          ra, t1, t5
                  slti         a1, s10, 807
                  lui          s0, 502645
                  sltu         ra, s1, s8
                  and          s6, s10, zero
                  srl          a6, s9, sp
                  sra          t2, t4, a4
                  slli         s3, t1, 1
                  sub          a0, s10, s4
                  or           t1, s2, t5
                  sll          tp, t5, a6
                  lui          t3, 809413
                  xor          zero, t3, ra
                  sra          s7, gp, ra
                  andi         s7, a0, 1618
                  srli         a7, a0, 14
                  xor          s9, a3, s0
                  lui          sp, 56479
                  andi         t3, a5, -1433
                  add          t6, t1, zero
                  sltu         s9, a4, a7
                  slt          gp, a4, s0
                  slt          sp, s11, a3
                  sltiu        a7, s11, 884
                  andi         s11, a5, -1295
                  xori         s1, a7, -125
                  sll          t4, s7, t4
                  sub          s0, t0, t3
                  or           s9, a1, s6
                  ori          t4, t5, 159
                  srai         t2, a1, 7
                  sra          t1, ra, s10
                  sltiu        a7, a2, 1957
                  andi         s2, zero, -1073
                  sltu         a7, s11, s10
                  ori          s2, zero, -1143
                  addi         s1, a1, 1712
                  srli         t3, t2, 17
                  srli         zero, s10, 24
                  srai         tp, t5, 2
                  sub          s7, a5, t2
                  slli         s3, s10, 21
                  sltu         tp, s8, s6
                  ori          a3, sp, 1090
                  and          t2, t2, sp
                  ori          tp, a7, 237
                  srai         sp, t3, 19
                  slt          t2, s0, tp
                  sra          a6, t3, sp
                  or           s11, a6, s4
                  lui          s3, 618689
                  slt          gp, a5, tp
                  addi         ra, s0, 535
                  srli         a0, tp, 17
                  slti         a6, t4, 716
                  slt          t3, s3, a6
                  andi         tp, t2, -656
                  slt          zero, ra, t5
                  lui          zero, 552991
                  lui          t4, 209234
                  andi         zero, a3, 1267
                  and          s10, s4, t4
                  srl          t5, t4, t1
                  addi         t3, t2, -451
                  slli         s9, s1, 4
                  xori         sp, a6, -256
                  ori          t6, s9, 435
                  andi         s3, t2, -196
                  xor          s10, a3, s7
                  add          ra, s0, a3
                  ori          s1, s7, -565
                  and          s10, s1, s2
                  srl          a1, s2, t6
                  sltu         t5, t2, s3
                  ori          tp, a5, -1990
                  add          a3, t6, tp
                  slli         s9, gp, 24
                  slt          sp, sp, s2
                  lui          t6, 421495
                  sltu         a6, s9, t5
                  slti         t0, s11, -409
                  sub          t0, sp, s2
                  ori          t2, a2, 369
                  ori          a6, s5, -683
                  xori         a4, t1, -367
                  slli         s6, sp, 30
                  sll          t0, s7, a4
                  sll          t4, s6, zero
                  nop
                  and          s7, s1, sp
                  and          a3, a0, s0
                  sltiu        s7, a3, -1598
                  xor          t0, t3, s3
                  lui          a7, 673165
                  sll          a0, sp, a7
                  sltu         s2, a0, s7
                  ori          s1, t0, -1897
                  ori          a5, s2, 322
                  slt          a3, s5, t2
                  lui          t0, 569271
                  or           ra, s1, a5
                  addi         a3, t6, 1098
                  xori         s2, a3, -1170
                  auipc        sp, 631114
                  add          s10, a7, s0
                  xori         a6, a6, 273
                  xori         t5, s3, 1112
                  nop
                  sub          a5, a0, s6
                  srli         gp, s10, 21
                  sltiu        t5, s8, 879
                  addi         t4, s2, -1887
                  and          a6, tp, s9
                  srai         ra, gp, 31
                  srli         t3, s3, 11
                  add          s6, s10, s10
                  andi         s10, s11, 1988
                  sll          t1, s0, ra
                  add          s11, t1, a6
                  lui          t4, 700241
                  lui          a4, 15320
                  srli         t6, t2, 8
                  srl          t4, t4, t0
                  slt          zero, sp, a2
                  lui          t2, 633472
                  ori          t3, s5, -1924
                  andi         gp, t2, -1473
                  and          a3, s10, t4
                  addi         t3, t4, -1454
                  nop
                  ori          a0, t1, -40
                  and          a5, a5, s4
                  auipc        ra, 624100
                  sra          t5, ra, a3
                  slti         t4, a2, 98
                  auipc        a6, 575313
                  slli         sp, zero, 14
                  sll          a3, s7, a7
                  sltiu        sp, ra, -227
                  sra          a4, t6, t2
                  auipc        t4, 807764
                  xor          s6, s10, s6
                  sll          a4, a4, a4
                  sll          a0, a3, s3
                  slt          a6, s1, s8
                  srli         zero, a2, 11
                  srai         t0, a4, 31
                  lui          t0, 604444
                  ori          t6, s9, 1194
                  srai         t2, s3, 21
                  xori         s6, a4, 345
                  srl          s2, sp, a4
                  slli         a6, t3, 6
                  slli         tp, gp, 15
                  nop
                  and          gp, t1, s10
                  slli         t4, a1, 17
                  sltiu        t3, ra, -855
                  srl          a5, tp, s7
                  sub          s10, a7, t3
                  andi         sp, a4, -1609
                  sltu         a1, t1, s0
                  addi         a4, s1, -71
                  addi         s8, ra, 482
                  sltu         s6, a4, s0
                  sra          ra, s6, a3
                  slti         t3, s6, 25
                  xori         a0, ra, 1322
                  nop
                  add          s6, s9, s3
                  srai         t0, s0, 6
                  sra          s1, a1, s9
                  srai         s1, a1, 31
                  slt          tp, a2, sp
                  lui          a0, 615107
                  slti         t1, ra, -1211
                  sub          a5, gp, s7
                  or           t0, a1, a5
                  lui          a5, 197058
                  srl          a7, t6, a5
                  sltiu        sp, a3, 906
                  sub          t4, a1, t0
                  or           s0, s5, t4
                  slli         zero, a6, 10
                  sub          a4, zero, a3
                  sra          a4, sp, t2
                  addi         s0, s11, 1267
                  sll          s1, a3, t0
                  xor          s6, a0, s8
                  sltiu        s7, a0, -1671
                  sll          s0, a5, gp
                  sll          t4, a7, s4
                  srai         a7, s6, 25
                  sub          sp, sp, s0
                  srai         t2, s2, 16
                  srl          s8, tp, s0
                  andi         t0, s3, 333
                  sltu         a7, s8, a0
                  slli         s9, s1, 17
                  sltu         tp, a3, t0
                  andi         s0, a4, -169
                  add          s10, s3, a4
                  auipc        s0, 388210
                  sltiu        s6, tp, -1634
                  addi         t1, a2, 1565
                  xori         t5, t6, -620
                  lui          a0, 989152
                  sltiu        t4, s6, -1946
                  srli         s7, s3, 16
                  lui          t6, 909879
                  srl          s10, s2, tp
                  srli         t2, s6, 6
                  xor          t1, a6, a5
                  sltu         s6, sp, t6
                  addi         s11, a0, -1633
                  srl          t1, t4, a6
                  xori         a1, gp, 1836
                  xor          s9, sp, s9
                  slt          a4, s10, s3
                  lui          a0, 25983
                  srl          s8, sp, gp
                  slt          s2, a3, t1
                  xori         s10, a5, -249
                  slt          s6, s0, a2
                  and          a1, s5, s0
                  sub          ra, s7, t5
                  xori         t0, zero, 1706
                  add          zero, a7, t5
                  lui          a4, 27180
                  sltiu        s8, s11, 1667
                  sra          t3, s9, s5
                  sltiu        s6, tp, 1673
                  slti         a3, sp, 1293
                  xori         a4, t4, -1336
                  auipc        t5, 230816
                  and          t3, s1, s2
                  sltiu        a0, sp, 155
                  srli         s11, a2, 20
                  slti         t0, a5, -1790
                  addi         t5, s3, 245
                  xor          sp, s3, t3
                  slti         t0, t4, 1542
                  add          a1, s2, a2
                  and          s9, ra, s1
                  sltu         s1, sp, s7
                  xori         a3, t3, 1107
                  lui          a7, 266136
                  lui          a7, 207148
                  slt          s10, t0, s8
                  or           s0, a4, s7
                  slti         s6, a1, -1292
                  sltiu        t4, sp, -651
                  xor          s3, s4, s9
                  sltu         t3, gp, s11
                  addi         s6, a1, 1358
                  sub          s6, a0, zero
                  sra          s3, a6, t3
                  srai         s0, a0, 16
                  xor          t6, s3, s3
                  srl          s7, t1, s2
                  lui          a0, 583948
                  xor          gp, s9, s8
                  and          a1, s5, s1
                  xor          tp, a1, t4
                  nop
                  xori         s8, t5, 422
                  sra          s6, a4, t0
                  sra          t0, ra, sp
                  ori          zero, a2, 1514
                  add          s8, t6, zero
                  xori         t2, s11, -1477
                  srl          s11, s4, a5
                  slt          tp, s5, a4
                  srl          t5, a0, s3
                  andi         s1, t5, -1887
                  sra          a1, t1, gp
                  srl          a3, a6, sp
                  sll          s7, s4, s7
                  nop
                  sll          tp, zero, a6
                  lui          t1, 706304
                  srli         t3, a7, 25
                  add          sp, s4, s7
                  srl          a6, s10, s0
                  addi         a7, t0, 16
                  ori          a4, tp, -12
                  lui          gp, 751285
                  lui          t4, 309387
                  sub          zero, t0, t6
                  nop
                  add          a0, a1, s2
                  xor          s6, s4, s6
                  slti         gp, t3, 1357
                  sll          s11, s11, a3
                  slli         a0, a1, 23
                  sra          s7, a5, s5
                  srai         a1, t1, 31
                  xori         s3, s0, 290
                  sltiu        tp, a5, 889
                  sltiu        tp, s10, -1726
                  andi         s2, a0, -332
                  sra          sp, s8, s7
                  or           t1, a2, t2
                  sltiu        t2, s6, 1859
                  andi         a0, t3, -1075
                  sra          a1, s9, t4
                  ori          s7, sp, -83
                  addi         s9, t2, 1974
                  andi         t6, s0, -1855
                  slti         t0, s8, 1175
                  add          a7, zero, t4
                  sltiu        s6, t1, 56
                  sll          t0, s9, t1
                  or           zero, s5, s1
                  addi         t2, t3, -344
                  sltiu        t5, gp, -491
                  and          a6, a7, zero
                  slli         a3, a6, 24
                  and          s2, t4, s3
                  xori         t1, s3, -1719
                  or           tp, a4, t0
                  xor          a1, s7, tp
                  or           s7, a6, a3
                  srli         a1, a2, 12
                  andi         s11, sp, 1306
                  sra          t4, a2, a1
                  or           t1, a1, s10
                  auipc        s6, 933610
                  sltiu        t3, s5, 1261
                  srai         tp, s4, 24
                  nop
                  sltu         s1, t5, a1
                  lui          s2, 787858
                  or           a1, t5, a0
                  ori          a0, t5, -146
                  slti         s11, s11, -463
                  srl          zero, s4, s11
                  xori         t1, gp, 1420
                  slli         t4, a1, 21
                  srli         t1, s4, 20
                  srl          a3, a7, ra
                  slti         t3, s10, 1627
                  xor          t0, a2, s10
                  and          tp, t6, s3
                  srli         t1, s7, 6
                  srl          a1, s5, a0
                  srai         a3, t5, 29
                  srai         s9, s6, 19
                  nop
                  slt          t3, s4, s9
                  srl          s8, ra, s6
                  sra          t3, a4, tp
                  sltiu        t5, t4, -1053
                  addi         t2, t3, -695
                  xor          s1, a6, a7
                  lui          a6, 283121
                  lui          gp, 387189
                  slti         s8, a4, 187
                  slli         a0, t0, 10
                  lui          a6, 856069
                  slli         gp, a2, 19
                  sltu         a6, s6, ra
                  slli         t0, s4, 25
                  srai         s6, t0, 1
                  slli         t3, s2, 2
                  slti         s3, t3, 90
                  slli         t6, s4, 9
                  slli         t4, t4, 11
                  sra          a4, t5, s6
                  xor          sp, gp, a0
                  xor          s10, sp, a7
                  srli         a1, a0, 29
                  add          t6, t5, s3
                  sub          s8, a0, t5
                  sra          a7, t4, t2
                  add          tp, t3, t4
                  add          a5, t2, s5
                  srai         s7, a5, 28
                  sub          gp, sp, a5
                  xori         a3, a6, -100
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           s11, 0x7fdfb1d4
                  li           t3, 0xc63c2aac
                  li           gp, 0x0
                  li           t4, 0x0
                  li           t0, 0xffffffff
                  li           sp, 0x80000000
                  li           a1, 0x80000000
                  li           tp, 0xffffffff
                  li           a6, 0xffffffff
                  nop
                  addi         gp, a1, 37
                  nop
                  lui          t0, 473931
                  lui          t0, 185639
                  add          gp, t0, t4
                  add          a6, t0, t4
                  sub          s11, a6, t0
                  add          t3, sp, t3
                  add          s11, t3, s3
                  auipc        s11, 715772
                  auipc        gp, 266046
                  addi         sp, tp, 771
                  sub          s3, a6, a6
                  nop
                  addi         sp, s11, 1203
                  addi         s11, a6, 561
                  nop
                  sub          sp, a1, t0
                  auipc        t4, 188580
                  add          s3, t3, s3
                  auipc        s11, 898821
                  addi         t4, a6, -1901 #end riscv_int_numeric_corner_stream_30
                  addi         t1, t3, -738
                  slti         a0, a0, -904
                  nop
                  sltu         a3, ra, a5
                  sll          a4, s2, s0
                  auipc        t3, 206258
                  auipc        s3, 255099
                  ori          t3, a2, 15
                  slti         t2, a2, 1730
                  sll          s6, s5, s6
                  srl          t1, tp, s5
                  add          t0, zero, s4
                  andi         s6, s10, 1959
                  addi         a7, s1, -147
                  and          s9, t6, ra
                  nop
                  add          t2, s10, sp
                  sltiu        s8, s5, -658
                  or           tp, s10, t4
                  lui          t4, 545309
                  slli         s3, ra, 23
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           tp, 0x0
                  li           s6, 0xffffffff
                  li           a3, 0x80000000
                  li           t4, 0xffffffff
                  li           s8, 0x0
                  li           ra, 0x0
                  li           s3, 0x0
                  li           t1, 0x0
                  li           s7, 0xffffffff
                  nop
                  addi         s6, ra, 873
                  auipc        a3, 628970
                  auipc        ra, 372697
                  lui          t1, 1033937
                  add          s6, s7, sp
                  auipc        tp, 10871
                  sub          tp, t1, s6
                  sub          sp, sp, ra
                  lui          tp, 821683
                  sub          t4, sp, t1
                  sub          t1, s8, t1
                  addi         s8, sp, 1397
                  addi         a3, tp, 821
                  auipc        t1, 573725
                  lui          s8, 992593
                  nop
                  auipc        tp, 365711
                  nop
                  auipc        s3, 468207
                  auipc        t4, 493517
                  auipc        sp, 98195
                  nop
                  auipc        t1, 614467
                  add          s8, s8, s7
                  sub          sp, a3, s7
                  addi         s7, a3, 1139
                  add          s8, s8, s3 #end riscv_int_numeric_corner_stream_32
                  slt          t5, s8, s10
                  xori         s1, s1, -1560
                  sra          s3, a0, a3
                  nop
                  srai         s10, s1, 14
                  addi         t1, t1, 339
                  ori          s0, s0, -1331
                  xori         tp, s2, -1625
                  or           t0, a4, t1
                  sltiu        t4, a0, 423
                  auipc        ra, 1010988
                  lui          zero, 730042
                  andi         t1, s5, 1245
                  or           s1, a6, t3
                  srl          t6, a1, s0
                  srai         t1, s3, 28
                  slli         s2, s7, 0
                  and          a5, t3, a7
                  slli         t6, s2, 20
                  srl          s7, t3, s1
                  addi         zero, t1, 1508
                  sltiu        a7, sp, 1299
                  add          s3, s9, s3
                  slti         a1, s7, -1764
                  sltiu        s9, s6, 1770
                  slti         a1, sp, 722
                  or           tp, s1, zero
                  auipc        t2, 344191
                  sltu         a4, t6, s10
                  auipc        ra, 500890
                  srai         a7, zero, 25
                  sll          t3, t1, a5
                  nop
                  add          t4, a4, a0
                  sub          gp, tp, s6
                  sub          zero, a5, a7
                  auipc        s7, 1008050
                  ori          t3, s8, 1045
                  lui          tp, 83128
                  or           sp, a0, a0
                  sub          s7, a7, sp
                  addi         t4, zero, -1263
                  sll          a4, s10, a7
                  add          gp, t3, a2
                  slli         tp, gp, 22
                  nop
                  srli         a6, t5, 28
                  and          s3, a5, s3
                  sltiu        s3, a7, -723
                  lui          a5, 771840
                  xori         a0, ra, -2048
                  slti         s11, t5, -708
                  slti         s9, t4, 1192
                  srli         sp, s3, 16
                  srl          s6, a1, t0
                  nop
                  add          zero, tp, tp
                  xori         sp, s9, 1366
                  slt          a6, a1, ra
                  or           a1, s2, s1
                  and          a3, a0, t3
                  sll          s7, s8, gp
                  slti         sp, s10, -1901
                  xori         s9, zero, 458
                  nop
                  auipc        a6, 932038
                  nop
                  and          s8, s7, ra
                  xor          t4, t2, s7
                  or           t4, s0, t3
                  and          tp, sp, s10
                  sll          s2, a3, a4
                  sra          s1, t5, t2
                  addi         ra, s5, 669
                  slli         s11, s2, 8
                  srai         s7, a2, 8
                  srl          sp, sp, s11
                  auipc        zero, 702040
                  add          t5, t0, s4
                  or           t1, a6, a0
                  sll          t3, t2, a5
                  slli         s8, zero, 31
                  addi         s7, a7, -2047
                  sltiu        ra, sp, 115
                  slt          a4, ra, s10
                  sltu         t4, s0, t3
                  sltiu        s10, s9, -798
                  ori          zero, s1, 1121
                  lui          t2, 556265
                  srai         a6, s9, 0
                  xor          t4, s0, ra
                  and          s2, s4, t3
                  ori          a7, s7, 1891
                  sra          t6, s3, s10
                  auipc        gp, 601686
                  or           t3, s4, s7
                  slt          s2, s6, t3
                  srl          a7, a4, a3
                  sll          t1, s4, s6
                  or           s2, s5, t5
                  slli         a6, s4, 29
                  slli         zero, s9, 0
                  nop
                  slti         a7, zero, -1752
                  srl          t6, a4, a2
                  srli         s9, s3, 3
                  xori         a0, t6, -926
                  and          sp, s10, s0
                  slli         a0, t0, 24
                  sub          s0, a7, s1
                  slt          tp, s4, sp
                  slti         a1, a5, 1155
                  slt          s7, ra, a7
                  sra          s1, s9, ra
                  addi         tp, a3, -176
                  srl          s7, t0, a5
                  lui          s8, 508011
                  sll          s8, a4, a2
                  or           a7, t1, s2
                  slt          t2, s5, tp
                  srai         ra, s5, 20
                  slli         tp, s2, 4
                  sll          s10, zero, s5
                  or           t5, t4, a3
                  auipc        s9, 489161
                  ori          t4, s11, 415
                  add          a6, a7, zero
                  nop
                  add          t0, s10, s4
                  srli         ra, s7, 27
                  sll          a0, sp, s4
                  sra          t2, sp, s3
                  sll          t5, sp, s3
                  and          zero, s6, s8
                  lui          a6, 651009
                  slt          t0, s5, a3
                  slt          zero, a0, t0
                  sltu         s3, t0, a7
                  slt          ra, s10, a3
                  sll          sp, t1, t5
                  slti         s2, t5, 121
                  sltu         gp, t6, t0
                  slti         a4, s7, 1851
                  addi         s11, a1, 1722
                  srl          tp, a5, t0
                  lui          t6, 964395
                  xor          s7, t2, ra
                  lui          s2, 1003707
                  sub          a5, s9, a2
                  add          t3, s2, t4
                  sub          s1, ra, s4
                  srl          t4, s9, a5
                  slti         t4, a4, -1464
                  sub          a6, s5, s10
                  sltiu        s1, a4, 1495
                  sll          a7, tp, t3
                  add          s9, sp, t1
                  sltu         s9, s4, t3
                  xori         sp, s0, -632
                  sra          a7, s1, zero
                  and          s0, s9, zero
                  srai         t2, s10, 31
                  lui          s1, 107328
                  sltu         s8, s1, s0
                  sltu         zero, t1, a4
                  sltiu        a0, s11, 952
                  slli         t1, t6, 16
                  lui          t2, 275886
                  addi         tp, gp, 1888
                  lui          a4, 212320
                  ori          s10, ra, -1864
                  slli         s0, zero, 16
                  slti         s9, s11, 1024
                  or           a6, ra, sp
                  lui          tp, 648693
                  srai         a1, t4, 16
                  slti         s9, t5, -1185
                  nop
                  srl          s6, a7, sp
                  addi         t1, zero, -1424
                  auipc        s0, 541397
                  sltu         a0, s1, sp
                  slti         a0, a4, 1667
                  srli         a1, t6, 23
                  slt          s8, a6, a1
                  srai         tp, t0, 15
                  sltiu        gp, tp, 1755
                  xor          t2, s1, a3
                  slli         zero, sp, 3
                  and          ra, s7, s5
                  slt          sp, t6, s1
                  nop
                  add          t4, t6, s5
                  auipc        s7, 459667
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           sp, 0xffffffff
                  li           s3, 0x80000000
                  li           t5, 0xffffffff
                  li           a1, 0xffce8d5c
                  li           a6, 0x80000000
                  li           a0, 0x0
                  li           s0, 0xffffffff
                  li           s9, 0x80000000
                  li           ra, 0x80000000
                  sub          a0, t5, ra
                  addi         t5, t5, -1884
                  lui          t5, 284270
                  lui          ra, 667080
                  add          s3, s9, t5
                  auipc        t5, 337667
                  nop
                  addi         a1, ra, 713
                  auipc        ra, 645144
                  auipc        s11, 860184
                  addi         a0, a1, 1172
                  sub          a1, t5, s0
                  nop
                  auipc        a1, 296974
                  addi         a1, t5, -2042 #end riscv_int_numeric_corner_stream_7
                  auipc        ra, 131895
                  srai         t5, a1, 12
                  andi         tp, a0, -753
                  srl          t2, t4, t6
                  sltiu        s7, t6, 812
                  and          t0, zero, t1
                  slti         s3, a5, -2026
                  or           s10, t0, t5
                  andi         a7, a0, -674
                  auipc        a1, 805934
                  xori         zero, s0, 656
                  sub          a0, t1, t1
                  srai         s0, a6, 29
                  srl          zero, s11, a7
                  add          a1, t2, a2
                  addi         s6, t2, 1339
                  slli         sp, t5, 12
                  sra          s2, s4, a4
                  or           s1, a3, a4
                  srl          tp, t3, a5
                  slt          a6, t3, s5
                  sll          t6, t3, a2
                  slli         a5, t6, 30
                  sll          s1, s5, s8
                  or           tp, a1, t1
                  sll          a1, a0, s9
                  slti         t3, s4, -737
                  sub          s1, gp, t2
                  add          zero, t6, s5
                  nop
                  or           s11, a2, s7
                  srli         a4, s4, 16
                  sltu         gp, t5, gp
                  ori          t0, t5, 1592
                  auipc        s11, 799769
                  srl          s10, a4, a7
                  auipc        t5, 994150
                  sra          t2, a7, s5
                  sltu         t6, zero, t0
                  ori          s11, a1, 341
                  ori          s9, t2, -2001
                  addi         s3, a7, -1613
                  addi         t3, s2, 1206
                  xori         a4, ra, 1595
                  slti         t0, s0, 1870
                  srl          gp, a7, a4
                  andi         t4, s11, -1030
                  sra          s11, sp, a4
                  sltu         t4, zero, a3
                  nop
                  ori          a3, sp, -334
                  and          a6, s11, zero
                  slli         a0, s5, 16
                  slt          ra, a3, tp
                  srl          s7, s5, s4
                  sub          s1, s0, t4
                  add          a1, tp, t5
                  xori         sp, a2, 1655
                  srl          ra, s3, t3
                  srli         a1, s1, 6
                  or           a4, a1, s2
                  or           t5, a4, t6
                  slli         s10, a6, 26
                  sub          s8, s10, a4
                  sltiu        s11, tp, 263
                  srai         tp, t2, 5
                  lui          s2, 304254
                  add          s0, ra, s2
                  srli         s9, t2, 22
                  addi         t6, a3, -1024
                  xor          a6, a4, t0
                  andi         s9, a5, -1359
                  xori         a4, a3, -1145
                  add          gp, t3, a6
                  srli         s6, s8, 29
                  auipc        a5, 514718
                  xor          a1, a6, t0
                  sll          s1, tp, s6
                  and          t0, s0, a1
                  andi         s8, s4, -389
                  sll          t3, a4, t2
                  lui          t2, 670729
                  srai         s11, s7, 26
                  sltiu        a7, gp, 1819
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s8, 0xffffffff
                  li           s3, 0x5d9020bc
                  li           t4, 0x0
                  li           sp, 0xffffffff
                  li           ra, 0x8601336d
                  li           a3, 0xffffffff
                  li           t2, 0x0
                  li           s9, 0xffffffff
                  li           a6, 0x80000000
                  auipc        s10, 415046
                  sub          ra, sp, a3
                  lui          s8, 248568
                  sub          sp, s10, s3
                  sub          s3, s3, t2
                  lui          ra, 474687
                  auipc        a3, 185466
                  auipc        sp, 585293
                  lui          t2, 174514
                  lui          sp, 897547
                  add          sp, ra, ra
                  auipc        s9, 234335
                  add          sp, a6, a6
                  lui          t4, 941927
                  auipc        sp, 792141
                  add          a3, t4, a6
                  addi         a6, s3, 1311 #end riscv_int_numeric_corner_stream_0
                  andi         a3, s1, 978
                  and          s3, sp, tp
                  sltu         a6, a6, s9
                  lui          s11, 422965
                  nop
                  srli         a0, s3, 12
                  sltu         t0, s11, s5
                  sub          t2, sp, sp
                  sra          a3, t0, s5
                  sra          t5, s4, t1
                  sra          t3, s11, t2
                  and          s6, t2, a2
                  slti         t2, ra, -1416
                  sltiu        t2, t1, 985
                  sltu         a7, t4, t6
                  slti         s1, s1, -365
                  sltiu        t2, a3, -1888
                  slti         s2, s4, 1001
                  sub          s8, ra, s11
                  srl          a6, t5, a2
                  slt          s3, s5, s3
                  sltu         s6, s7, a0
                  sra          a6, s6, ra
                  and          t6, a0, a6
                  or           a4, zero, a2
                  nop
                  srl          t3, tp, ra
                  srl          a5, s2, a2
                  addi         a4, t6, 762
                  sub          s10, a4, s9
                  addi         s6, s3, -222
                  andi         tp, tp, 980
                  xori         s11, s10, -1137
                  sll          a7, s11, t6
                  slli         a6, s5, 29
                  xori         a4, s7, -2047
                  sltu         tp, t0, t1
                  srli         s6, a3, 23
                  slti         t2, gp, 1512
                  sub          t6, s2, s11
                  sll          t4, a3, t2
                  auipc        s8, 996885
                  sub          t3, a1, t6
                  addi         s0, s8, 521
                  add          sp, s9, s9
                  slti         s1, a6, 1974
                  slti         t3, s2, -1548
                  andi         a0, a2, 1289
                  sltu         t2, s10, ra
                  srai         a3, t3, 18
                  sltu         s8, t6, s3
                  sra          t0, t3, a6
                  xor          tp, t5, a0
                  or           a0, s11, s5
                  sltiu        t1, s3, 1007
                  sltiu        s6, t5, -139
                  or           a3, s7, s6
                  slli         s11, s10, 8
                  slli         s1, s1, 27
                  sub          tp, s9, s11
                  andi         a1, s1, -1778
                  andi         sp, a4, -834
                  slti         t5, t5, 642
                  slti         a6, s11, 99
                  or           a7, t1, t6
                  srl          a4, t2, t2
                  ori          a0, t3, 1289
                  andi         a5, ra, -1567
                  lui          a3, 369734
                  srli         a0, a1, 29
                  slti         s1, s6, -1768
                  nop
                  sra          a6, s1, s0
                  slti         zero, a7, -1330
                  add          t1, t6, s5
                  andi         a3, s10, -305
                  add          t0, s9, ra
                  xor          s10, s3, t3
                  nop
                  add          a4, t1, t1
                  xor          t4, a7, tp
                  or           t5, gp, t4
                  auipc        a7, 732751
                  sll          s11, a5, a0
                  addi         a1, tp, 17
                  ori          a4, zero, -1382
                  or           gp, s10, a5
                  srl          a5, t0, s1
                  srl          ra, t6, zero
                  srli         ra, t2, 8
                  sll          t2, s1, s3
                  srli         a4, s10, 23
                  slti         t6, gp, -649
                  sltu         a6, t0, s0
                  and          s0, s1, a3
                  auipc        s0, 388552
                  sub          sp, t5, zero
                  srl          t3, s8, s1
                  srl          s9, s2, t6
                  xori         t6, t3, 1993
                  add          tp, s1, s7
                  or           s2, gp, t0
                  or           a7, s0, ra
                  sltiu        s8, a6, -631
                  sll          t4, ra, s1
                  slli         s2, s4, 21
                  slti         a3, s7, -854
                  sltu         s0, s5, a3
                  addi         t2, a2, 1924
                  xor          tp, a0, s0
                  or           t5, s10, s8
                  sltiu        s6, a3, 865
                  ori          sp, s8, 1139
                  srai         a0, a6, 25
                  sltu         t4, t0, gp
                  slt          ra, a0, a0
                  slt          sp, a4, t1
                  xori         t2, s7, -1088
                  srl          s10, s6, a7
                  srl          s2, t0, a4
                  lui          t0, 165293
                  sra          zero, gp, s3
                  nop
                  andi         a5, s7, 1946
                  and          ra, a2, s6
                  addi         s2, t3, -1878
                  slti         s8, s7, 1504
                  lui          ra, 64833
                  srl          zero, ra, s0
                  srl          s8, a2, s5
                  andi         s11, zero, 104
                  slti         t2, s3, -290
                  slti         a4, t5, -1346
                  sltu         a1, tp, s10
                  slli         ra, t0, 14
                  and          s0, t2, gp
                  sra          s7, t6, s1
                  nop
                  sll          ra, a1, a5
                  and          t6, s4, a4
                  slt          s9, t4, t1
                  slti         t1, s3, 1637
                  auipc        t5, 239696
                  srl          t4, ra, s0
                  andi         s8, s5, -809
                  nop
                  xor          ra, s11, sp
                  srai         t1, s7, 24
                  or           s2, s3, t2
                  and          t3, s1, a5
                  srli         s6, gp, 24
                  srai         zero, s7, 30
                  sltu         a6, s3, s10
                  or           s7, s3, s4
                  and          s9, zero, s4
                  srli         tp, t6, 12
                  sub          s7, s1, gp
                  addi         tp, s5, -1862
                  xori         s3, a0, -1123
                  lui          s11, 493771
                  ori          s9, s11, 882
                  lui          s11, 1023478
                  sra          a4, s7, s4
                  sub          s2, s7, tp
                  add          gp, a0, a3
                  and          t5, t6, s6
                  nop
                  sltu         tp, s11, t5
                  xori         a3, t5, -886
                  addi         gp, a3, -293
                  sltiu        zero, a6, 939
                  xor          a7, s4, gp
                  or           t4, t2, zero
                  or           gp, s1, gp
                  lui          t0, 757562
                  and          s7, s2, a0
                  or           s11, t5, a0
                  srl          t2, s11, a7
                  andi         s7, a6, 2035
                  slti         tp, s6, -686
                  and          s11, t2, a5
                  or           t5, a4, s10
                  sltu         s0, s5, a2
                  slli         a1, a1, 14
                  slt          a3, s7, s0
                  srli         t2, s7, 22
                  xori         s3, s10, 1317
                  srli         s9, ra, 4
                  xor          a6, a1, s5
                  sra          a5, t1, s7
                  slti         a7, s5, 621
                  srai         s8, s0, 9
                  ori          s1, s9, 347
                  addi         a3, a4, 1212
                  xori         t5, sp, -537
                  srai         tp, t6, 3
                  andi         sp, s6, 827
                  add          s3, sp, a1
                  slt          t6, a7, s3
                  sra          s1, t2, t0
                  sltiu        s6, s8, -304
                  srai         a3, s1, 4
                  sll          a7, t3, t2
                  srl          a0, sp, s11
                  add          a6, t4, s4
                  or           sp, t6, tp
                  ori          t2, tp, 1313
                  auipc        t3, 281864
                  auipc        s1, 833450
                  addi         ra, a4, -852
                  addi         zero, a4, 639
                  andi         a6, t1, 1087
                  sub          t3, s4, s2
                  sltiu        t6, a6, -100
                  srli         t6, t1, 1
                  or           t5, t2, s3
                  ori          s0, s6, -1211
                  srl          s7, sp, t4
                  sra          a0, a0, t2
                  add          t6, s0, a5
                  lui          t2, 631944
                  slti         s1, t6, -149
                  addi         t3, a1, 1193
                  slti         zero, a0, 1922
                  add          s11, sp, a6
                  auipc        t2, 69741
                  nop
                  sltiu        s10, s1, 1436
                  auipc        s6, 216200
                  sra          s7, t0, s2
                  add          t4, s9, t3
                  srli         s3, a5, 29
                  and          a7, gp, s10
                  andi         a6, t2, -960
                  srai         s0, s7, 4
                  sltiu        s9, t3, -1761
                  nop
                  slti         a1, s11, -1165
                  sub          t2, t0, s8
                  and          a7, a2, t0
                  slti         a4, s0, -1448
                  srai         t1, t0, 2
                  or           t4, s3, s6
                  and          s11, tp, t1
                  andi         t3, s0, 950
                  sltu         s9, gp, s1
                  slli         t0, t0, 31
                  sltu         s0, s1, s3
                  sll          tp, t2, sp
                  sub          s9, s10, tp
                  srai         zero, a3, 13
                  srli         t5, s10, 7
                  srai         a7, tp, 5
                  and          s6, s1, a5
                  sra          a0, s11, tp
                  sltiu        a6, a2, 470
                  add          s2, s9, a1
                  slli         a0, a2, 18
                  add          a1, ra, t2
                  xori         zero, s3, -1091
                  sltu         s9, a4, a2
                  slti         a0, t5, 362
                  slti         t2, a3, -1280
                  or           a6, s2, t0
                  xori         s1, s3, 325
                  auipc        a1, 612492
                  or           t6, t0, t5
                  add          s3, s10, zero
                  xori         a6, t0, -373
                  ori          t6, s6, -1034
                  srl          tp, s9, s3
                  xori         s2, sp, 1774
                  srai         ra, t4, 0
                  auipc        t0, 836364
                  slli         sp, t1, 23
                  slli         t0, s2, 14
                  and          zero, a4, t3
                  slt          zero, t1, a3
                  sra          s8, s8, s2
                  slli         a6, t0, 17
                  sub          s10, t2, ra
                  xor          tp, s0, t0
                  lui          a6, 565687
                  sltiu        s8, s6, -1470
                  slt          a4, s2, a2
                  sra          t4, a0, s3
                  nop
                  slt          a7, a5, s2
                  lui          a0, 549505
                  srai         s1, a6, 29
                  slli         a3, s0, 22
                  auipc        t0, 28178
                  addi         sp, tp, 380
                  slti         tp, a7, -1350
                  nop
                  lui          ra, 628788
                  sll          s2, s11, ra
                  la x12, test_done
                  jalr x0, x12, 0
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
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_2:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_3:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_4:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_5:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_6:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_7:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_8:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_9:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_10:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_11:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_12:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_13:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_14:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_15:
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

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
                  addi x21, x21, -4
                  sw  x20, (x21)
                  add x20, x21, zero
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x21, x20, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x31, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x31, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x31, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x31, x10, ecall_handler
                  li x10, 0x1
                  beq x31, x10, instr_fault_handler
                  li x10, 0x5
                  beq x31, x10, load_fault_handler
                  li x10, 0x7
                  beq x31, x10, store_fault_handler
                  li x10, 0xc
                  beq x31, x10, pt_fault_handler
                  li x10, 0xd
                  beq x31, x10, pt_fault_handler
                  li x10, 0xf
                  beq x31, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x20, x21, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  add x21, x20, zero
                  lw  x20, (x21)
                  addi x21, x21, 4
                  mret

load_fault_handler:
                  add x20, x21, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  add x21, x20, zero
                  lw  x20, (x21)
                  addi x21, x21, 4
                  mret

store_fault_handler:
                  add x20, x21, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  add x21, x20, zero
                  lw  x20, (x21)
                  addi x21, x21, 4
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x20, x21, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  add x21, x20, zero
                  lw  x20, (x21)
                  addi x21, x21, 4
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x20, x21, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  add x21, x20, zero
                  lw  x20, (x21)
                  addi x21, x21, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x20, x21, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  add x21, x20, zero
                  lw  x20, (x21)
                  addi x21, x21, 4
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
