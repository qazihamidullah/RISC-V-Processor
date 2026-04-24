.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  li x8, 0x0
                  csrw 0x304, x8 # MIE
                  mret
init:             
                  li x0, 0x3
                  li x1, 0x2ca6cd69
                  li x2, 0x80000000
                  li x3, 0xc38b318
                  li x4, 0xfec3917d
                  li x5, 0xf10f4442
                  li x6, 0xfed0053d
                  li x8, 0xc
                  li x10, 0xf8b6ac91
                  li x11, 0x80000000
                  li x12, 0xa
                  li x13, 0xf0791e60
                  li x14, 0x80000000
                  li x15, 0xb924ca82
                  li x16, 0x80000000
                  li x17, 0xf6b1734d
                  li x18, 0x45e4019b
                  li x19, 0x90738430
                  li x20, 0x80000000
                  li x21, 0xe09c31c
                  li x22, 0x80000000
                  li x23, 0xdca126c9
                  li x24, 0x17dc713f
                  li x25, 0x80000000
                  li x26, 0xf13fee02
                  li x27, 0xf25ea264
                  li x28, 0x0
                  li x29, 0xf19d7963
                  li x30, 0x0
                  li x31, 0xf7a5938f
                  la x7, user_stack_end
main:             li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s3, 0x0
                  li           a3, 0x0
                  li           a5, 0x0
                  li           a0, 0xffffffff
                  li           s10, 0x0
                  li           s5, 0x80000000
                  li           s6, 0x80000000
                  li           s9, 0xf7695e88
                  li           a2, 0xffffffff
                  lui          s6, 518581
                  add          a0, a2, s5
                  lui          s10, 768760
                  sub          s6, s10, s9
                  lui          s10, 694369
                  sub          s5, s6, a2
                  addi         s9, t3, -781
                  nop
                  nop
                  addi         a0, s9, -136
                  nop
                  add          s5, a2, t3
                  nop
                  auipc        a2, 325893
                  nop
                  add          s3, s3, s9
                  addi         s9, t3, -133
                  sub          s9, t3, a0
                  sub          a3, s10, s5
                  add          s3, s9, s5 #end riscv_int_numeric_corner_stream_14
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a1, 0xffffffff
                  li           a4, 0x80000000
                  li           s0, 0x0
                  li           a2, 0xffffffff
                  li           t4, 0xbbbc3f43
                  li           s8, 0xffffffff
                  li           t5, 0xffffffff
                  li           a0, 0x80000000
                  li           s10, 0x80000000
                  auipc        s8, 191284
                  sub          t4, a1, t5
                  lui          a0, 394151
                  lui          a2, 1002430
                  nop
                  sub          t4, a1, a1
                  nop
                  auipc        s8, 760540
                  nop
                  auipc        a1, 863580
                  lui          t3, 619046
                  auipc        t5, 297422
                  auipc        t4, 23087
                  lui          s8, 21925
                  nop
                  sub          t4, s10, t4
                  nop
                  add          a1, s8, s10
                  lui          s0, 193928
                  lui          t3, 15199
                  addi         a1, t5, -1283 #end riscv_int_numeric_corner_stream_10
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           ra, 0xffffffff
                  li           s4, 0x2db131cd
                  li           s11, 0xffffffff
                  li           s2, 0xffffffff
                  li           gp, 0x0
                  li           s5, 0x63b14270
                  li           s7, 0x80000000
                  li           sp, 0x4f388453
                  li           t3, 0x0
                  addi         s9, ra, -1426
                  addi         s5, ra, -1365
                  lui          s9, 194113
                  nop
                  sub          s9, s9, s5
                  lui          sp, 265022
                  add          s5, s2, s11
                  add          s11, s2, gp
                  addi         s9, s4, -1321
                  nop
                  nop
                  addi         s11, sp, 1181
                  add          s11, t3, s11
                  addi         t3, sp, -1262
                  addi         s7, gp, 1269 #end riscv_int_numeric_corner_stream_25
                  li           s0, 0x6ad50969 #start riscv_int_numeric_corner_stream_24
                  li           t6, 0x0
                  li           s2, 0xffffffff
                  li           t3, 0xb5a8ec61
                  li           s5, 0x80000000
                  li           sp, 0x56912381
                  li           s8, 0x4ec4ca1a
                  li           a0, 0x80000000
                  li           a6, 0x261e021b
                  li           t4, 0xffffffff
                  lui          t6, 350978
                  lui          s2, 118513
                  auipc        s8, 836647
                  sub          s8, sp, s8
                  nop
                  add          s0, s5, s2
                  lui          sp, 652725
                  add          t4, a6, s5
                  lui          s2, 816668
                  sub          t3, t4, s5
                  auipc        s0, 792931
                  nop
                  nop
                  add          s8, s5, t6
                  add          s0, t4, a0
                  lui          a0, 397039
                  sub          s5, s2, s2
                  nop
                  addi         a0, t6, 2042
                  nop
                  sub          a0, t6, s0
                  nop
                  auipc        t3, 649943
                  sub          s5, s0, s8
                  lui          t3, 325142
                  add          sp, s2, t3
                  addi         sp, t3, -522
                  auipc        t6, 686356
                  lui          a0, 671681 #end riscv_int_numeric_corner_stream_24
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_35
                  li           t4, 0x44cc2641
                  li           s9, 0xffffffff
                  li           t6, 0xf96ae98f
                  li           s7, 0x80000000
                  li           a7, 0xffffffff
                  li           t1, 0x80000000
                  li           s5, 0x80000000
                  li           gp, 0xf97eaf56
                  li           s3, 0xeff5a0f6
                  add          s9, s7, gp
                  add          t1, s5, s10
                  lui          t1, 917836
                  auipc        t4, 639170
                  addi         t1, t1, 2044
                  sub          t1, s3, t1
                  addi         gp, t4, -307
                  nop
                  addi         s10, s7, 1260
                  auipc        t4, 679779
                  nop
                  auipc        s5, 10917
                  add          s10, s9, gp
                  nop
                  lui          a7, 658203
                  add          s10, t1, s5
                  auipc        t4, 90127
                  auipc        t1, 253404
                  lui          s7, 949082
                  add          s3, s9, s3
                  auipc        t1, 536691
                  addi         t4, t1, 21
                  sub          t1, t6, t6
                  nop
                  add          s10, s10, s7
                  addi         t1, s5, -767
                  nop
                  nop
                  add          a7, t4, s5 #end riscv_int_numeric_corner_stream_35
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_22
                  li           t1, 0xffffffff
                  li           s8, 0x0
                  li           gp, 0xffffffff
                  li           s4, 0x0
                  li           ra, 0xffffffff
                  li           a3, 0x80000000
                  li           s0, 0x75046f36
                  li           s5, 0xffffffff
                  li           a0, 0x0
                  add          s0, s11, a3
                  sub          ra, s0, a0
                  auipc        s5, 94691
                  auipc        s8, 844259
                  addi         ra, s0, -1563
                  auipc        s11, 537450
                  addi         s5, s4, -1111
                  addi         ra, ra, -1608
                  nop
                  addi         a0, s11, -39
                  lui          gp, 2528
                  add          a3, ra, t1
                  nop
                  auipc        a3, 238346
                  lui          s8, 217081
                  add          s4, s11, a3
                  auipc        t1, 1026841
                  nop
                  auipc        s11, 136431
                  lui          s4, 566174
                  lui          t1, 18971
                  add          a3, gp, t1
                  add          s4, s8, t1
                  add          s5, s4, gp
                  lui          s4, 814815
                  nop
                  lui          s4, 398755
                  add          s8, s5, s5 #end riscv_int_numeric_corner_stream_22
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           t1, 0x0
                  li           t0, 0xffffffff
                  li           gp, 0x80000000
                  li           t4, 0x0
                  li           s9, 0x80000000
                  li           s7, 0x0
                  li           a1, 0xffffffff
                  li           s8, 0xffffffff
                  li           a6, 0xffffffff
                  auipc        t1, 453780
                  sub          t4, s9, s9
                  addi         s7, t0, 712
                  nop
                  addi         s2, s8, -395
                  addi         s8, a1, 1261
                  auipc        t1, 475187
                  lui          t4, 941752
                  auipc        a6, 687287
                  auipc        s8, 222559
                  addi         t4, a6, -266
                  lui          t0, 411735
                  nop
                  add          s7, t4, t4
                  auipc        t1, 173710
                  lui          a1, 483346
                  sub          s2, t0, a1
                  nop
                  nop
                  addi         t1, s7, -2035
                  add          t1, t1, s9
                  auipc        s9, 426809
                  nop
                  addi         gp, a1, 1503
                  nop
                  sub          t1, s8, s8
                  sub          t0, t0, t4
                  nop
                  addi         s9, t1, 167
                  nop #end riscv_int_numeric_corner_stream_30
                  li           t3, 0xadb1ca81 #start riscv_int_numeric_corner_stream_38
                  li           t0, 0x0
                  li           a1, 0x80000000
                  li           s9, 0xffffffff
                  li           gp, 0x72a4a7dd
                  li           a5, 0x0
                  li           sp, 0x372ff414
                  li           s3, 0x80000000
                  li           s4, 0x3a629263
                  li           s8, 0x0
                  nop
                  addi         s9, sp, -1224
                  addi         t3, a1, -628
                  auipc        t0, 284112
                  lui          s9, 211499
                  nop
                  add          a1, s8, t0
                  lui          s4, 25234
                  addi         a1, s4, -934
                  sub          s9, t3, t3
                  add          gp, a1, s4
                  addi         a5, s4, -511
                  add          a5, t3, sp
                  auipc        s8, 459884
                  auipc        t0, 796092
                  lui          s4, 924914
                  add          a5, t0, a5
                  sub          s4, s3, t0
                  sub          s4, s9, s9
                  sub          s8, sp, s4
                  sub          t0, sp, s9
                  sub          s4, t3, gp
                  add          s9, a5, s9
                  sub          gp, t0, a1
                  auipc        s9, 921347
                  add          s8, a5, t3
                  addi         s4, gp, -1219 #end riscv_int_numeric_corner_stream_38
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s4, 0x2ae4ff67
                  li           t4, 0xffffffff
                  li           a5, 0x0
                  li           a1, 0x1d3b601f
                  li           s7, 0x2534dd11
                  li           t5, 0xffffffff
                  li           ra, 0x80000000
                  li           a7, 0xffffffff
                  li           t0, 0x0
                  lui          s7, 372366
                  sub          a1, t4, t0
                  nop
                  addi         t4, a1, 210
                  nop
                  auipc        t4, 802542
                  nop
                  addi         ra, t4, 502
                  lui          t4, 68834
                  addi         s7, t4, 499
                  nop
                  sub          s4, s7, t4
                  nop
                  sub          a7, a5, a7
                  lui          a1, 707696
                  add          t0, a1, s6
                  addi         s6, t5, -338
                  lui          s7, 529448
                  sub          a1, s7, t0
                  addi         t0, a1, 351
                  add          s7, a7, t0
                  lui          t5, 554771
                  lui          t0, 570672 #end riscv_int_numeric_corner_stream_0
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_33
                  li           ra, 0x80000000
                  li           a3, 0x80000000
                  li           s0, 0xc5d39ae8
                  li           s8, 0xffffffff
                  li           a5, 0x0
                  li           s3, 0x80000000
                  li           s10, 0x4a9ff5e8
                  li           s9, 0xffffffff
                  li           a1, 0x80000000
                  add          s10, s3, t1
                  auipc        s9, 334330
                  sub          t1, t1, a5
                  lui          s0, 507495
                  add          ra, s8, s10
                  lui          s10, 300707
                  auipc        a1, 670569
                  nop
                  addi         s3, t1, 1735
                  nop
                  sub          a5, s9, s0
                  addi         a1, a1, 1853
                  add          s9, ra, ra
                  add          a1, s0, s0
                  nop
                  lui          s8, 910484
                  nop
                  lui          a1, 1043936
                  lui          s3, 611725
                  add          a1, s10, a5
                  auipc        s3, 802777
                  addi         ra, s3, 954
                  add          t1, ra, s8
                  lui          t1, 123879
                  lui          s3, 419737
                  nop
                  lui          s3, 577920
                  auipc        a3, 1030239
                  addi         t1, a1, -1433
                  nop #end riscv_int_numeric_corner_stream_33
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           s3, 0xffffffff
                  li           sp, 0xffffffff
                  li           s7, 0xcd455651
                  li           s4, 0x0
                  li           s10, 0xffffffff
                  li           a5, 0x0
                  li           s0, 0xffffffff
                  li           s11, 0x91804b4d
                  li           a7, 0xea373d93
                  auipc        s10, 709392
                  auipc        s7, 530460
                  addi         s4, s11, 1041
                  auipc        s3, 810274
                  lui          a5, 871330
                  addi         gp, s4, 1395
                  lui          s0, 936520
                  lui          s4, 342628
                  nop
                  add          a7, a5, s7
                  lui          s7, 240638
                  auipc        gp, 542079
                  addi         s4, s7, 1532
                  lui          s7, 785702
                  add          s7, s4, s0
                  auipc        a5, 243546
                  sub          a5, a7, s0
                  sub          s4, s4, sp
                  add          a5, a7, s10
                  add          s0, a7, sp
                  lui          s11, 887716
                  nop
                  addi         s4, sp, 1258
                  lui          sp, 329476
                  lui          s3, 755515
                  nop #end riscv_int_numeric_corner_stream_16
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_37
                  li           a2, 0xffffffff
                  li           a7, 0x80000000
                  li           t4, 0x80000000
                  li           s8, 0x80000000
                  li           s3, 0x0
                  li           s11, 0xffffffff
                  li           s5, 0x0
                  li           a6, 0x0
                  li           t3, 0xbfe0ba06
                  lui          t3, 465848
                  auipc        a6, 272675
                  addi         a6, s5, -883
                  add          a2, a2, a2
                  nop
                  sub          t5, a6, t4
                  add          s8, a2, t4
                  auipc        t5, 637146
                  nop
                  addi         s3, s3, 936
                  add          a2, t3, t5
                  add          s11, t4, s8
                  auipc        a7, 726684
                  auipc        s11, 864135
                  sub          t5, s8, s11
                  auipc        a6, 60405
                  sub          a2, t5, s8
                  auipc        a7, 894418
                  add          s3, a2, s3
                  sub          a7, t4, s11
                  auipc        a2, 887622
                  addi         s11, a7, 14
                  auipc        a2, 136926 #end riscv_int_numeric_corner_stream_37
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_39
                  li           s0, 0x80000000
                  li           a6, 0x0
                  li           s11, 0xffffffff
                  li           a0, 0xffffffff
                  li           gp, 0x80000000
                  li           a7, 0x0
                  li           t1, 0xffffffff
                  li           ra, 0xffffffff
                  li           s10, 0xffffffff
                  auipc        a6, 1033161
                  lui          gp, 801270
                  lui          t6, 894186
                  nop
                  addi         gp, a0, -1822
                  addi         t6, s0, -1436
                  add          t6, ra, gp
                  addi         s11, t6, -1674
                  lui          a6, 509726
                  sub          s10, t1, gp
                  nop
                  addi         s0, t6, -1460
                  add          t6, t6, ra
                  sub          s0, a7, s10
                  add          t1, t1, gp
                  auipc        s10, 203908
                  addi         t1, s10, -1540
                  auipc        s11, 820499
                  auipc        t1, 269936
                  auipc        a7, 265686
                  add          a6, s10, a6
                  add          a7, t6, a7
                  auipc        gp, 175972 #end riscv_int_numeric_corner_stream_39
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s5, 0xffffffff
                  li           s7, 0xffffffff
                  li           a7, 0x8be18772
                  li           ra, 0x0
                  li           gp, 0x80000000
                  li           t4, 0xdb37253c
                  li           a1, 0x80000000
                  li           s11, 0x80000000
                  li           a5, 0xffffffff
                  nop
                  auipc        a1, 576960
                  addi         a5, ra, 1012
                  lui          ra, 849389
                  auipc        a1, 436613
                  auipc        a5, 678613
                  addi         a7, s7, 1334
                  addi         a1, a7, 187
                  sub          s5, s7, s11
                  auipc        a5, 49232
                  nop
                  add          a1, a3, s11
                  nop
                  nop
                  sub          a1, a7, a5
                  addi         a3, a3, -1252
                  lui          t4, 953982
                  lui          a3, 427422
                  auipc        s7, 992712
                  addi         a3, t4, -173
                  add          s7, gp, s5
                  auipc        s11, 941427 #end riscv_int_numeric_corner_stream_11
                  li           gp, 0x6fde9bb3 #start riscv_int_numeric_corner_stream_6
                  li           a0, 0x0
                  li           ra, 0xffffffff
                  li           s11, 0x80000000
                  li           s7, 0xade29d5a
                  li           sp, 0xffffffff
                  li           t5, 0xf2dbb1f7
                  li           s10, 0xb1006ff9
                  li           a4, 0x1f563bab
                  li           s6, 0xffffffff
                  nop
                  nop
                  sub          sp, gp, sp
                  lui          a4, 865868
                  sub          s7, s10, gp
                  lui          ra, 592042
                  lui          a0, 727482
                  lui          sp, 194107
                  nop
                  auipc        s7, 709346
                  sub          sp, ra, a0
                  add          ra, s11, s7
                  auipc        s7, 146514
                  nop
                  nop
                  add          a0, a4, ra #end riscv_int_numeric_corner_stream_6
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s10, 0x730448b8
                  li           s3, 0x1730b47b
                  li           s9, 0x789610f
                  li           a1, 0x80000000
                  li           a5, 0xeae8d34c
                  li           a0, 0x80000000
                  li           t5, 0x1dcfd750
                  li           a4, 0xa791832e
                  li           s7, 0x80000000
                  sub          a5, a0, s9
                  auipc        a0, 737955
                  auipc        t4, 261828
                  nop
                  addi         s7, s9, 1284
                  lui          t5, 871972
                  nop
                  nop
                  addi         a5, s7, 277
                  addi         a1, s7, 301
                  nop
                  sub          s3, s10, a5
                  add          s9, s10, s3
                  lui          a1, 984364
                  lui          a5, 803869
                  nop
                  auipc        s7, 624362
                  sub          a1, a4, a4
                  add          a0, s7, s10
                  sub          a1, s3, a1
                  nop
                  auipc        s7, 447180
                  auipc        s9, 482167
                  auipc        t5, 113988
                  sub          a0, t4, a5 #end riscv_int_numeric_corner_stream_19
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_21
                  li           t5, 0x80000000
                  li           a7, 0x80000000
                  li           s5, 0xffffffff
                  li           t3, 0x80000000
                  li           t1, 0xe2402585
                  li           a4, 0x0
                  li           s6, 0x0
                  li           t0, 0xffffffff
                  li           s3, 0xffffffff
                  auipc        s2, 593046
                  nop
                  auipc        t1, 803247
                  auipc        s2, 745012
                  auipc        a7, 465828
                  lui          t3, 1028131
                  sub          t1, t0, s6
                  nop
                  lui          t0, 648976
                  add          s2, s3, t5
                  lui          s2, 163328
                  auipc        s5, 389654
                  auipc        a4, 508332
                  lui          a4, 354894
                  lui          a4, 115040
                  sub          t1, a4, t5
                  add          s2, s6, s3
                  sub          a7, s3, s3
                  auipc        a4, 289528
                  addi         t5, t0, 285
                  addi         t3, t0, -508 #end riscv_int_numeric_corner_stream_21
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_34
                  li           t4, 0x80000000
                  li           t3, 0x80000000
                  li           s0, 0x80000000
                  li           t5, 0x0
                  li           a2, 0xe8d25028
                  li           s3, 0xffffffff
                  li           a1, 0x6cd744c7
                  li           s8, 0x80000000
                  li           a6, 0x0
                  addi         s0, t3, 1449
                  sub          s2, a2, s0
                  lui          s8, 354526
                  add          s0, t4, s0
                  auipc        s0, 550383
                  addi         t4, a6, -1056
                  lui          t5, 246256
                  add          t5, s0, a1
                  addi         t5, t5, 1364
                  add          s3, t4, t5
                  nop
                  add          a1, a2, a2
                  sub          s3, a6, s3
                  auipc        a2, 175134
                  auipc        s0, 294420
                  addi         t5, t4, 1833
                  addi         a2, s3, -27
                  add          s0, s3, s2
                  lui          s8, 609323
                  add          s0, a6, s2
                  auipc        a2, 411846
                  add          a1, s3, s8
                  lui          t5, 551251
                  auipc        s8, 762717 #end riscv_int_numeric_corner_stream_34
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           s8, 0x80000000
                  li           s0, 0x80000000
                  li           a7, 0x0
                  li           a0, 0xffffffff
                  li           gp, 0x80000000
                  li           t4, 0x80000000
                  li           a2, 0x37995839
                  li           s2, 0x80000000
                  li           t0, 0xffffffff
                  auipc        t0, 322482
                  nop
                  add          s2, s2, a0
                  auipc        a2, 683931
                  lui          a0, 657815
                  lui          t4, 779259
                  lui          s5, 555947
                  addi         s8, t0, 11
                  nop
                  nop
                  auipc        s8, 182657
                  add          s2, t4, gp
                  sub          s8, a0, s0
                  auipc        gp, 455613
                  nop
                  lui          a2, 957777
                  addi         s2, a0, -519
                  auipc        gp, 423989 #end riscv_int_numeric_corner_stream_32
                  sltu         gp, s0, s5
                  and          s0, s8, t1
                  slli         s4, s11, 29
                  sltu         s8, t0, t0
                  sltiu        a6, s7, -1947
                  srl          t0, t5, gp
                  slli         t3, s9, 8
                  sll          a5, s0, s0
                  srli         s10, ra, 6
                  nop
                  sltiu        zero, a7, -1972
                  lui          a3, 248937
                  sll          t4, s11, t3
                  slli         a2, t0, 18
                  slt          s8, a6, a4
                  addi         s0, t2, -86
                  sltiu        t0, s0, -251
                  slt          s4, s5, t0
                  add          s10, s8, ra
                  sltiu        t4, s2, 1610
                  sltiu        t5, zero, -165
                  slti         ra, s0, 1932
                  xori         s11, zero, -550
                  sll          a0, s6, a7
                  sll          s4, t3, a3
                  srai         a3, a1, 2
                  sub          s3, gp, a3
                  sra          a6, a3, t2
                  slt          t0, s9, sp
                  add          s7, s8, t6
                  sll          zero, t5, t3
                  slli         s2, t4, 20
                  slt          s4, s7, s8
                  nop
                  slt          s2, a6, t1
                  srai         s2, s11, 4
                  addi         sp, s7, -927
                  nop
                  or           s7, t2, a1
                  slli         s11, t6, 7
                  sra          zero, t3, s10
                  lui          s4, 845957
                  andi         t0, t4, -1724
                  lui          a6, 388752
                  slt          s7, t2, t1
                  slt          t3, s1, t3
                  and          zero, t4, a1
                  slti         s0, a3, 231
                  slli         s0, a4, 1
                  addi         s4, s10, 1324
                  or           zero, s11, a0
                  sltu         s11, t3, s0
                  add          a4, s11, t4
                  and          a0, a4, s2
                  addi         a1, a3, 1659
                  lui          s8, 52533
                  srl          a2, a6, a3
                  add          t0, t3, t2
                  nop
                  add          s0, a1, s9
                  addi         t4, s4, -1262
                  add          t0, s10, t1
                  srli         sp, s10, 7
                  sll          t0, t4, a4
                  and          a2, s2, t2
                  slli         s9, sp, 15
                  lui          a2, 63937
                  sra          s8, s7, s3
                  slli         s8, s8, 1
                  sub          s7, s7, s6
                  ori          s8, sp, -1644
                  slti         a6, zero, 725
                  xor          s0, s6, zero
                  auipc        a5, 281999
                  srai         s6, s6, 25
                  slti         zero, s3, -1220
                  srl          sp, a3, a4
                  xori         a5, zero, 1934
                  srli         s3, s7, 27
                  slti         ra, zero, 721
                  slt          a6, tp, a1
                  addi         t1, s0, -1813
                  sra          a2, t0, s10
                  ori          s6, t6, -1609
                  andi         a5, sp, 1842
                  sub          ra, a1, ra
                  sltu         t1, s5, t1
                  add          a0, s2, s5
                  sltiu        a7, s1, -1082
                  addi         s2, s8, -291
                  and          s3, s10, a2
                  srl          s6, s6, a1
                  sub          zero, ra, t4
                  nop
                  or           s7, tp, s3
                  and          gp, s2, s6
                  sltu         s10, s10, s11
                  slti         t4, s1, 1560
                  sub          a0, gp, s2
                  xor          a7, t4, s9
                  xor          a1, a2, s7
                  xori         t3, t5, -748
                  auipc        a5, 5272
                  and          ra, a7, s6
                  slli         a4, t0, 21
                  slli         s5, a1, 22
                  lui          t4, 101729
                  slti         a1, s5, -272
                  srai         gp, s10, 6
                  xori         t1, gp, -465
                  sltu         a4, t5, a2
                  srli         s6, ra, 18
                  ori          zero, s10, -645
                  or           a6, s6, t6
                  sll          s8, gp, a6
                  and          sp, s8, s11
                  sra          a7, tp, s2
                  srl          s9, tp, s4
                  srai         s10, t3, 20
                  sll          gp, gp, ra
                  and          a0, sp, s4
                  xor          t0, a5, s6
                  andi         s9, ra, -276
                  lui          a6, 475529
                  addi         ra, gp, -743
                  sra          s9, a3, s6
                  andi         s3, t3, 1961
                  sll          gp, a3, s6
                  xori         gp, s8, -1845
                  auipc        gp, 800128
                  slli         a7, t4, 21
                  andi         t1, t1, -1605
                  auipc        t6, 868486
                  lui          s6, 734887
                  srl          t3, s1, t5
                  addi         a2, gp, -1090
                  sll          s10, s9, s3
                  slti         s6, s0, 1798
                  addi         gp, s3, 433
                  add          a6, a3, a4
                  add          gp, s3, zero
                  sltiu        a0, s11, -1080
                  and          t6, t0, t0
                  ori          s0, t0, 832
                  sltiu        s7, t2, -828
                  and          t3, gp, t1
                  srai         s11, a4, 28
                  auipc        s11, 732474
                  slti         a5, s10, -405
                  sll          s10, s6, a6
                  sra          s10, ra, s10
                  sra          t5, a1, s7
                  or           s4, s5, s1
                  auipc        t5, 817690
                  add          a2, s6, s8
                  sltiu        a3, s4, -272
                  slt          zero, s3, s6
                  andi         t4, a7, 654
                  sub          a7, t3, a6
                  sltu         s4, s10, a0
                  ori          t1, s10, -1095
                  ori          s5, t5, -1354
                  srli         s11, s9, 10
                  sll          s4, s2, s6
                  slti         a1, a5, -1169
                  srai         a3, ra, 12
                  auipc        s5, 1000395
                  sltu         a5, s4, a2
                  addi         s9, a6, -858
                  ori          s5, s10, 49
                  auipc        a2, 631969
                  lui          sp, 441057
                  sub          t6, s1, s0
                  srai         s4, zero, 3
                  slli         t0, t3, 22
                  addi         ra, a2, 499
                  addi         a3, t1, 834
                  or           sp, s10, t0
                  sll          a2, a3, s3
                  srli         s2, s1, 22
                  srl          t4, t0, s0
                  nop
                  sub          a4, sp, a0
                  addi         zero, t3, -1333
                  slti         s11, sp, -817
                  addi         a5, s2, -1956
                  lui          s6, 773301
                  nop
                  auipc        s6, 666346
                  sra          s9, gp, a7
                  srli         s3, a0, 28
                  andi         gp, t6, -60
                  sltiu        a4, t5, 954
                  auipc        s0, 597702
                  sll          zero, a5, a5
                  srai         t1, a3, 31
                  sra          s6, s9, s4
                  sub          gp, s0, t4
                  addi         a3, gp, 1760
                  srl          s7, t6, a5
                  srl          t1, s8, sp
                  addi         t1, s0, -806
                  srai         a5, t6, 7
                  sra          s7, a2, ra
                  sltu         ra, ra, a5
                  srl          s6, a4, a7
                  add          a4, s9, s8
                  and          a1, t4, a4
                  sub          a5, s0, t0
                  sub          t0, a4, s11
                  xor          a1, t6, a6
                  nop
                  srai         a6, s10, 8
                  xori         s7, ra, -1685
                  ori          zero, a2, 1203
                  sub          a0, s4, a7
                  nop
                  sra          a0, s2, s4
                  addi         a6, s1, 821
                  slli         s3, s10, 3
                  nop
                  srli         s2, s0, 13
                  add          t1, t6, s9
                  sll          a7, tp, a1
                  sltiu        s5, s9, -79
                  srli         a1, a3, 14
                  srai         s0, s9, 23
                  lui          a3, 328849
                  xori         t0, a0, 1839
                  and          t3, t4, a2
                  xor          s0, a0, ra
                  and          t1, a5, s6
                  addi         zero, a6, -1500
                  addi         a2, t2, -1848
                  nop
                  andi         a3, t4, -1012
                  add          s8, t3, zero
                  xor          t3, t0, a5
                  or           s11, a4, a5
                  sltiu        t4, s4, -1322
                  add          s10, s2, s9
                  ori          a4, gp, -549
                  andi         a3, s6, -549
                  srl          a2, a6, t6
                  addi         t3, s11, -615
                  add          s9, s11, s8
                  srai         s8, t1, 31
                  ori          t4, a3, -1190
                  nop
                  ori          t0, sp, -437
                  and          zero, t1, s8
                  ori          s10, a7, 1438
                  sltiu        a2, a5, 1502
                  xori         t1, s4, -1667
                  xor          a6, a5, a2
                  srai         zero, t3, 7
                  sltu         gp, a6, a7
                  srli         t1, s6, 12
                  addi         s10, a1, -316
                  auipc        a7, 636376
                  sltu         s0, sp, s1
                  xori         ra, sp, 1645
                  addi         s6, s1, 1738
                  xori         a2, tp, 1194
                  sll          a3, s3, a0
                  srai         a5, t0, 15
                  auipc        s6, 304264
                  srl          a7, s10, s3
                  andi         t4, t4, -1129
                  xori         t6, a5, 380
                  srai         s0, zero, 19
                  lui          zero, 512817
                  srl          t4, tp, a7
                  xori         t3, a2, -1877
                  auipc        zero, 1010755
                  auipc        t0, 970141
                  sltiu        gp, s7, -560
                  sra          s3, t6, a0
                  srli         a6, gp, 3
                  slti         t0, s6, -935
                  and          t6, t0, a0
                  sra          s8, t4, a6
                  add          t1, s4, a4
                  sltiu        a1, t1, -216
                  auipc        t6, 74857
                  or           s6, t0, a3
                  auipc        s11, 499495
                  andi         s2, s7, 1593
                  auipc        a1, 240235
                  auipc        t3, 637408
                  andi         a7, t5, -553
                  xor          s10, s7, s10
                  nop
                  srai         a4, t6, 5
                  srli         zero, sp, 9
                  addi         s10, t5, 1043
                  and          a5, s11, s10
                  auipc        s11, 47348
                  sra          s3, a0, a3
                  and          t3, s7, s8
                  sll          ra, a2, a2
                  sra          t6, t2, s10
                  ori          a6, s4, 339
                  auipc        a7, 404231
                  ori          s9, s5, -1042
                  add          a3, s6, gp
                  nop
                  srai         t5, t1, 29
                  xori         s7, a5, -1843
                  srl          a0, s0, s7
                  auipc        s0, 526763
                  addi         t6, s9, -427
                  or           s4, s10, a0
                  addi         s7, s11, 1879
                  sra          t4, t3, tp
                  and          t1, t4, t1
                  addi         t4, s8, 1128
                  slli         a4, t3, 13
                  slti         a4, s10, -558
                  xor          s5, s4, a4
                  slt          t5, t2, t3
                  xori         ra, t5, -296
                  srl          a3, tp, s9
                  or           s8, t5, s5
                  sub          s6, zero, s2
                  slti         a0, a6, 665
                  srl          a1, t6, a4
                  addi         t1, t3, -1834
                  sll          s10, zero, zero
                  sltu         s9, t6, s2
                  sltiu        zero, s1, -732
                  slt          a1, s3, t5
                  slt          a0, a2, a1
                  xor          a3, s3, tp
                  xor          a6, s1, ra
                  slti         a5, a1, -812
                  sra          s10, t2, s4
                  slli         gp, a3, 22
                  lui          s6, 753250
                  ori          t5, t4, 1807
                  auipc        t3, 754672
                  add          a6, t6, a7
                  auipc        t6, 328782
                  andi         s5, s6, 453
                  slt          sp, s0, sp
                  srl          a1, a0, s4
                  slli         a3, s4, 21
                  andi         s10, t0, 660
                  slli         t1, s6, 23
                  auipc        gp, 742161
                  sltiu        t6, a1, 703
                  andi         t4, ra, -575
                  add          ra, a1, s9
                  sra          s9, t4, s0
                  ori          t3, s5, 1471
                  or           a5, ra, gp
                  srli         s11, s10, 11
                  sll          zero, sp, s10
                  and          a3, a7, a6
                  ori          t3, sp, 190
                  sll          a7, t5, a1
                  lui          a2, 531386
                  or           a6, a2, t5
                  lui          s5, 639695
                  ori          a3, s1, -1941
                  auipc        gp, 855289
                  sltiu        a6, t0, -1670
                  lui          a5, 984599
                  xori         a3, t3, 1715
                  sltiu        t0, ra, 161
                  sra          t6, s1, a7
                  andi         s11, t4, -1317
                  sra          s4, t0, a2
                  slli         a2, ra, 31
                  srl          t4, a4, s9
                  slli         s4, t2, 8
                  lui          s4, 459426
                  addi         a2, a5, 1172
                  xori         a5, sp, 1387
                  srai         s9, s8, 1
                  slt          s10, s8, s10
                  sll          t1, s8, zero
                  auipc        gp, 118483
                  nop
                  nop
                  nop
                  sltiu        t1, a7, 447
                  andi         t4, s3, 1774
                  nop
                  add          sp, s5, s4
                  andi         s8, t2, -1343
                  auipc        s6, 999386
                  srai         t6, t2, 20
                  ori          zero, a0, 1296
                  auipc        a5, 864234
                  slt          a1, t6, t6
                  srl          t0, a2, sp
                  sll          s10, t5, s4
                  slti         a2, t6, 289
                  slti         s11, t3, -1128
                  andi         s6, a5, 1070
                  addi         a4, a2, -1692
                  add          t6, s3, a1
                  slli         t1, a4, 15
                  auipc        s0, 17007
                  srai         t0, zero, 6
                  and          t6, t3, s9
                  srli         a0, a4, 13
                  sltu         a5, a5, t3
                  xor          s4, sp, s1
                  sub          t0, tp, a2
                  srl          a1, s0, a1
                  sll          t1, zero, t2
                  addi         s2, a1, 751
                  sra          s10, t2, tp
                  slt          a2, ra, s0
                  addi         s9, s3, -1181
                  auipc        t0, 998313
                  sub          s11, zero, s2
                  sub          t1, a1, s2
                  sra          s0, s0, t4
                  slt          t4, t0, s3
                  srli         a3, s10, 21
                  sltu         a2, s0, tp
                  andi         s7, s10, 247
                  or           s3, tp, t1
                  sltu         s5, t5, tp
                  addi         s6, t6, 707
                  sub          a2, a2, s6
                  sub          s10, a3, s1
                  nop
                  srli         s4, s9, 11
                  ori          s7, a3, -1970
                  nop
                  srl          gp, gp, a6
                  auipc        t0, 932691
                  xor          s3, a4, a6
                  or           a0, s4, s1
                  ori          a5, s7, 1911
                  sub          t1, s9, t4
                  xori         s6, s3, 1881
                  sll          t6, s5, a5
                  addi         a2, t0, -1488
                  lui          s6, 66356
                  add          a3, tp, s9
                  addi         s0, t5, -1325
                  sltiu        s6, s2, 687
                  srl          gp, s0, s4
                  lui          s7, 684061
                  auipc        t5, 659375
                  auipc        t0, 621444
                  sltu         ra, s3, gp
                  xori         s8, a0, -2028
                  srli         s3, s6, 28
                  sra          a7, s8, s3
                  slt          a4, t2, s7
                  andi         a1, sp, 542
                  sub          s8, a5, s9
                  sltu         a3, tp, a7
                  addi         s9, t0, 1015
                  nop
                  srl          gp, s5, t3
                  sltiu        s5, s3, -519
                  addi         s9, sp, 348
                  sll          t0, t0, s0
                  srli         s10, s3, 15
                  add          s10, t3, a1
                  slli         t0, s2, 6
                  xori         a7, t6, -1838
                  sltu         s10, a4, a7
                  or           a5, s7, t3
                  sltu         t4, s1, a6
                  and          a5, s10, s2
                  srli         t1, t3, 8
                  and          a1, s6, a0
                  srai         t1, t5, 15
                  sltu         gp, a0, s10
                  slli         s8, s6, 17
                  xori         s8, t3, -1656
                  sll          s0, a3, t0
                  srai         a5, t4, 11
                  sltiu        a2, t5, 621
                  xor          t1, t5, t6
                  and          ra, a3, a4
                  slt          gp, tp, zero
                  srli         s11, a6, 30
                  and          s2, t2, a1
                  slti         a0, s4, 1829
                  auipc        s6, 218020
                  slli         a7, s3, 7
                  ori          t6, s4, -147
                  sll          ra, s4, s4
                  sll          s10, zero, a2
                  xor          s3, s4, a6
                  sra          sp, tp, a4
                  xor          s3, a3, s2
                  sltiu        s10, ra, 985
                  xori         s2, s7, 688
                  auipc        s4, 485552
                  add          s4, t0, a0
                  slli         a7, s1, 11
                  slt          a4, a2, tp
                  srli         t0, a7, 4
                  nop
                  and          t6, a1, s0
                  sltiu        a4, s0, 1648
                  srai         s5, a0, 12
                  and          t1, gp, s11
                  nop
                  xor          ra, t2, a0
                  sltiu        s11, a3, -457
                  sra          s4, t5, t4
                  xori         a4, gp, 1364
                  srl          a7, a4, a5
                  auipc        a1, 330002
                  add          s0, a3, ra
                  slti         s2, t5, 1548
                  lui          a5, 493981
                  sra          s8, a3, sp
                  auipc        t0, 684016
                  srl          s4, s4, s10
                  andi         ra, s7, 1574
                  slt          a0, a1, gp
                  srl          t1, s3, t0
                  xor          s4, s2, a6
                  slti         s3, s10, 1030
                  sltu         a2, s10, s10
                  sub          s6, t4, a3
                  sll          s3, s3, a2
                  srl          ra, a7, gp
                  andi         zero, t4, -1499
                  or           s10, t3, a3
                  add          s7, a1, a7
                  ori          a2, a4, 2005
                  srai         t6, t2, 23
                  slli         s8, t2, 17
                  slt          t0, ra, zero
                  addi         t3, s2, 1687
                  xor          ra, s1, a0
                  and          zero, s5, s3
                  add          t1, s7, s4
                  srl          s2, t4, sp
                  ori          a4, s1, -387
                  ori          s5, tp, 316
                  srl          t1, s8, a1
                  srli         a3, s2, 25
                  auipc        t3, 447521
                  sra          a2, s0, s8
                  or           t5, t5, s6
                  slli         a4, s7, 7
                  ori          t5, s3, -857
                  sra          a3, t1, s4
                  slli         t0, gp, 24
                  srai         a5, t2, 3
                  srli         a5, s3, 21
                  add          a1, a1, a2
                  slt          a0, a2, t0
                  slt          a3, t3, t4
                  ori          s0, t2, -1407
                  slt          a0, s10, sp
                  sra          s6, s10, s10
                  slli         t5, s2, 31
                  sub          s8, a5, a3
                  sltu         zero, s11, a6
                  sltu         s3, t6, a0
                  slli         s3, a5, 16
                  sltu         a5, s9, zero
                  andi         t4, t4, 1339
                  slt          a4, t5, tp
                  xori         t6, a7, -172
                  slti         s10, a4, 1515
                  slt          ra, t5, gp
                  xori         s5, a6, 1951
                  sltu         a6, a6, a0
                  ori          a5, t0, 659
                  slt          s4, sp, s4
                  addi         s8, gp, -1283
                  srli         s11, a4, 26
                  auipc        s4, 941362
                  add          sp, s5, t0
                  sra          s7, t5, sp
                  sub          a1, s3, s2
                  xor          t5, gp, s8
                  sub          t5, t5, s4
                  sltiu        s2, t3, -1319
                  sll          zero, ra, s8
                  sltu         a1, a4, a3
                  srai         t5, s3, 11
                  lui          sp, 224386
                  slti         s11, t5, -332
                  slt          t1, sp, t3
                  and          a3, a4, ra
                  slli         a7, s8, 29
                  xor          s9, tp, a0
                  auipc        s6, 686545
                  slli         s5, s2, 20
                  srli         a3, a5, 4
                  sll          sp, s0, a6
                  xori         t3, zero, 421
                  ori          s10, t6, 1220
                  xor          t0, s6, s7
                  xori         t3, s4, -1174
                  xor          s2, t1, s3
                  auipc        s8, 135696
                  lui          t0, 394928
                  xor          a7, a7, a2
                  slt          a2, s6, s1
                  sub          ra, t5, s7
                  srl          t6, s3, s3
                  ori          s5, a1, 431
                  lui          s0, 598117
                  sll          s10, s3, t4
                  sltu         s9, t0, t0
                  slt          s9, gp, s10
                  slt          t0, t6, a1
                  srli         s6, a0, 1
                  srl          gp, a1, a6
                  slti         a2, s5, 1613
                  xori         t4, s2, -1860
                  and          t0, t2, t6
                  andi         s3, t4, 1479
                  sltiu        s3, s8, 1446
                  slti         gp, t0, 15
                  addi         s8, ra, -563
                  lui          s5, 894474
                  andi         s9, a1, 1549
                  srl          t1, a2, zero
                  xor          s7, s4, gp
                  srli         a1, a3, 2
                  srli         ra, a3, 28
                  add          a0, t2, s6
                  srl          s3, a6, s8
                  andi         t3, zero, 1251
                  sltiu        t6, a4, 1554
                  sub          t5, s1, t5
                  ori          a2, tp, 193
                  andi         t5, zero, 155
                  and          s4, s10, s3
                  sltiu        s2, t6, 1662
                  srl          s4, s0, s11
                  nop
                  andi         a5, t3, -1934
                  xori         t3, s11, -597
                  lui          sp, 999821
                  xori         s10, zero, -1925
                  ori          s10, t2, 817
                  addi         s7, s0, 1081
                  srai         t1, a1, 5
                  xori         a3, s7, 1676
                  nop
                  xor          s5, a6, t1
                  sub          a5, t0, t3
                  xori         a1, s8, -1920
                  and          s2, t6, a2
                  addi         a7, a7, -1401
                  andi         s7, t3, -181
                  ori          t6, a4, 1005
                  srai         s5, tp, 15
                  addi         s11, sp, 805
                  ori          s0, s3, 1311
                  addi         s3, a5, 922
                  xor          ra, a2, s8
                  andi         ra, a2, -55
                  slti         a3, t5, 732
                  sra          s9, s0, s1
                  srl          zero, a0, a7
                  srai         zero, s7, 24
                  andi         t5, s4, 685
                  srai         s9, a1, 10
                  slt          s4, s2, s11
                  slti         s8, s1, -1897
                  ori          a4, s10, -2023
                  sll          a7, a1, s3
                  srli         s5, a2, 6
                  srli         s9, gp, 11
                  andi         a5, s3, -1104
                  or           a2, s7, sp
                  or           a3, s7, t1
                  slti         a5, a2, -638
                  slti         s7, s1, 1133
                  srli         s3, t4, 5
                  or           s10, s11, s10
                  srai         zero, a5, 21
                  sub          a1, t0, s0
                  srli         sp, a1, 13
                  slti         zero, s6, -557
                  sltiu        s7, t2, -81
                  lui          s4, 756911
                  addi         s2, s2, 1646
                  sltu         s7, gp, gp
                  or           s6, a2, s2
                  srl          a5, s6, t3
                  xori         t6, a5, 491
                  sltu         s5, gp, a5
                  srl          t5, s2, s5
                  srai         s3, s10, 16
                  add          gp, t6, t6
                  auipc        gp, 231182
                  andi         a1, gp, -1777
                  andi         t3, s2, 227
                  or           sp, s6, gp
                  sub          t1, ra, s6
                  add          s6, a7, a0
                  and          t1, a2, a6
                  xori         a6, s2, 59
                  addi         a3, a6, -1898
                  slli         s4, a0, 30
                  slt          ra, s0, s3
                  sra          t3, a6, s10
                  nop
                  and          s7, a1, a5
                  ori          a4, t4, -1194
                  slt          t4, sp, a6
                  sra          t0, tp, a3
                  add          t0, t1, t0
                  nop
                  xor          s4, sp, a1
                  sltiu        s6, a3, 277
                  or           s6, a7, s2
                  auipc        s9, 82970
                  or           a6, t2, a5
                  sltiu        a7, s4, -2025
                  add          a2, gp, t0
                  slti         s11, s3, -1324
                  srli         s0, a5, 12
                  sltiu        a5, a3, 2038
                  nop
                  andi         s10, a2, 1712
                  auipc        a0, 754398
                  xori         zero, t0, 1409
                  sltiu        s5, tp, -1315
                  auipc        t5, 215708
                  srai         s6, ra, 20
                  srai         s5, s1, 2
                  add          s9, a1, t1
                  xori         s11, t1, 38
                  srai         zero, t0, 14
                  slti         t3, a7, 765
                  srai         s0, s1, 7
                  ori          s0, ra, 759
                  sltiu        a0, a1, -1618
                  srai         a7, t4, 10
                  lui          s0, 11243
                  slt          s0, a4, a3
                  or           a7, gp, t2
                  srai         s11, a4, 25
                  lui          s9, 804551
                  ori          s4, t0, -1066
                  xori         s7, tp, 1043
                  srli         t6, t4, 23
                  xori         s11, s3, 69
                  xor          gp, s6, a2
                  andi         ra, a6, -1841
                  sra          a1, s2, s10
                  sll          s10, sp, s7
                  or           zero, zero, ra
                  nop
                  auipc        s3, 694164
                  slt          s5, t3, s7
                  sll          a5, t0, s9
                  sub          a1, t0, tp
                  srl          s3, s5, gp
                  or           s2, s3, s3
                  xori         s10, a7, 783
                  addi         t0, s4, -1288
                  srai         a2, a1, 24
                  xor          s0, t2, s9
                  srl          s7, t0, s0
                  and          s7, s10, t0
                  sub          t3, t5, a0
                  add          gp, s7, t1
                  srli         s4, a1, 16
                  nop
                  or           zero, s10, a4
                  srl          sp, t6, t1
                  lui          s6, 633945
                  addi         t0, t2, 1282
                  sub          a4, s2, t0
                  sra          s4, s7, s7
                  srl          s5, t4, ra
                  addi         s9, s6, 839
                  sll          sp, s10, gp
                  srli         zero, a1, 5
                  or           s5, t1, tp
                  sltiu        t0, s2, -949
                  sll          s7, s0, tp
                  slt          s0, ra, t2
                  slt          a2, s8, s3
                  nop
                  sra          s4, a5, s3
                  srl          t3, t5, s7
                  ori          a5, a2, -1020
                  xori         a3, s3, -181
                  slti         gp, zero, 469
                  slti         zero, a0, -38
                  or           t4, s11, a2
                  lui          a4, 543366
                  srl          s8, s1, t2
                  add          a2, t3, sp
                  xor          a0, tp, gp
                  ori          s10, s11, -1793
                  sltu         t1, t5, s9
                  nop
                  nop
                  slli         s0, s5, 1
                  nop
                  sltu         s9, s0, s5
                  addi         s0, a1, -954
                  sltu         s10, t1, s5
                  slt          t4, s6, s0
                  andi         t5, s3, 226
                  sltu         s2, s3, s8
                  auipc        s7, 932354
                  auipc        gp, 346339
                  lui          a2, 623757
                  add          t4, a1, t4
                  slt          s4, t4, a7
                  add          gp, s7, a3
                  sra          zero, gp, a5
                  lui          a4, 103885
                  or           s4, ra, gp
                  nop
                  slt          a6, t5, ra
                  sltiu        a2, s10, 887
                  or           a7, s2, s11
                  auipc        s8, 423030
                  sltiu        a1, ra, -1182
                  xori         s0, s2, 578
                  slli         zero, s10, 20
                  xori         ra, t3, 591
                  sltiu        a3, zero, 1475
                  ori          t3, s11, 1841
                  sra          sp, s4, s11
                  and          s2, s5, s10
                  sra          a5, gp, gp
                  srai         t1, sp, 11
                  auipc        t4, 845184
                  ori          s7, a2, -1118
                  xor          s2, s7, a3
                  sltu         gp, s6, a2
                  sltu         s8, t3, t3
                  srai         s10, s10, 9
                  slt          t5, s8, tp
                  sll          s7, a0, s6
                  sra          a1, s1, s8
                  addi         s0, t4, -768
                  lui          a4, 710629
                  sub          a0, a6, s6
                  sra          a2, a5, s11
                  or           ra, s11, t1
                  sltu         s5, t1, t6
                  xor          s2, t4, sp
                  sltiu        a3, a2, -937
                  srli         a0, t1, 31
                  lui          a3, 534586
                  sll          a6, s5, a1
                  lui          t6, 492717
                  and          a1, s2, t2
                  add          t6, s8, s6
                  slli         s11, t2, 31
                  addi         s6, s9, 725
                  sltiu        s10, s0, -1041
                  sub          s4, s11, a2
                  sll          t3, s6, a7
                  srl          t6, a6, a2
                  srl          s6, s2, a3
                  srli         s6, s10, 15
                  and          t0, s4, t6
                  sub          ra, s2, t4
                  srai         sp, s1, 22
                  srl          s9, s7, s3
                  slli         sp, t6, 21
                  srl          t0, a0, s10
                  slli         a4, a3, 11
                  auipc        a6, 985022
                  sll          sp, ra, t0
                  addi         a4, a2, 278
                  addi         gp, ra, -266
                  auipc        t4, 944451
                  srli         a3, t5, 7
                  sltiu        a2, s4, -1803
                  auipc        t1, 313599
                  nop
                  xor          a3, t1, t0
                  or           s2, s5, t0
                  andi         s11, s10, 573
                  sra          a7, t3, s10
                  xori         s10, gp, -1896
                  slt          t3, s8, sp
                  nop
                  sltu         s9, s2, t2
                  ori          s8, a0, 1903
                  xor          s9, s7, a3
                  auipc        ra, 132239
                  slti         a6, zero, -1894
                  srli         a7, s1, 27
                  or           a5, s6, t2
                  srai         s10, tp, 3
                  or           a0, t0, a1
                  addi         t4, a1, 149
                  sub          t5, t5, gp
                  sll          s10, t2, a7
                  sltu         s3, s10, a0
                  sub          t1, s2, t4
                  xor          ra, s9, t6
                  slti         s3, t5, -600
                  srli         a6, s3, 14
                  slti         s4, s0, -917
                  ori          a5, ra, 1133
                  srai         t4, s8, 28
                  sltu         sp, a1, s6
                  slli         sp, s2, 20
                  and          t1, t3, gp
                  lui          t0, 779360
                  xori         t5, s0, 1312
                  slti         a0, gp, 1514
                  srli         s8, s7, 12
                  sra          a2, s6, s0
                  addi         t1, a4, -1398
                  add          t3, t0, s11
                  xori         s8, t1, -465
                  srai         s4, s8, 25
                  sltiu        zero, s11, -1761
                  srli         t3, s0, 15
                  sltiu        a0, a6, -222
                  andi         t0, t5, -822
                  slti         s10, s11, -237
                  and          sp, t3, s10
                  sltu         s6, t5, s8
                  srl          t5, a1, s6
                  add          a6, s7, a2
                  nop
                  auipc        a0, 1048129
                  and          ra, s9, s4
                  sll          s0, t4, s11
                  add          s10, s3, a6
                  and          t6, s2, a4
                  sltu         t0, t2, s4
                  lui          s0, 150041
                  add          a0, s6, s3
                  auipc        a2, 193822
                  ori          a3, a0, 989
                  or           a7, s3, t0
                  and          t3, s0, gp
                  and          a2, sp, t2
                  add          s9, s11, ra
                  auipc        a0, 966633
                  sub          t5, s4, a0
                  and          s8, a3, gp
                  ori          a7, a3, -1992
                  slti         a5, zero, -162
                  sll          a5, a3, a6
                  sub          t0, a7, s6
                  lui          ra, 158133
                  ori          a7, t2, 1651
                  nop
                  auipc        a3, 376297
                  sltiu        t3, t3, 1341
                  auipc        s9, 415255
                  sra          t4, s0, a4
                  slti         t3, s6, -654
                  slti         s2, s5, -354
                  slti         s2, s1, -1941
                  and          s7, s8, s10
                  lui          a4, 361856
                  sll          a1, t6, s11
                  ori          gp, s4, -1318
                  sll          t1, t1, s1
                  srai         gp, s0, 22
                  slli         s4, zero, 17
                  slli         s0, s10, 17
                  sub          s8, s5, t1
                  nop
                  xori         t0, a3, 1659
                  nop
                  sub          s2, a4, t3
                  auipc        t6, 362050
                  sra          ra, s8, a3
                  auipc        a2, 454647
                  and          a0, s11, t2
                  or           s0, a5, a3
                  xori         a2, t2, 1928
                  xori         s10, a2, 397
                  sra          a5, s8, t0
                  srl          t1, s4, s5
                  srli         t4, a1, 19
                  auipc        s7, 411144
                  add          s3, a0, gp
                  srli         s4, a6, 10
                  xor          gp, sp, t5
                  nop
                  sll          s2, s10, s1
                  slt          t6, t0, a0
                  sra          s2, s1, s3
                  sltu         sp, ra, a7
                  nop
                  sub          s3, t5, t5
                  lui          s3, 238312
                  and          s11, sp, s5
                  slt          gp, tp, sp
                  andi         a2, a4, -1056
                  sltu         ra, t3, a4
                  srl          s3, s7, ra
                  sltiu        a3, s4, 1299
                  ori          t1, ra, 126
                  srli         ra, s7, 0
                  srl          s2, s11, s3
                  or           t5, t4, a7
                  slti         t5, s4, 1475
                  sltu         t5, t0, zero
                  andi         a3, a2, 774
                  sltiu        t4, s8, -1877
                  slt          s2, s2, t6
                  slt          gp, s4, t4
                  srl          s9, gp, a7
                  add          s11, s10, a2
                  ori          t1, a5, -89
                  or           s9, s8, a3
                  srl          ra, s0, a1
                  or           gp, t5, a0
                  xori         t0, a5, -169
                  sll          a0, a0, s0
                  or           a7, t0, zero
                  xor          zero, s1, t5
                  or           s11, s8, a6
                  srl          zero, s10, s9
                  lui          s5, 511701
                  slli         s4, s10, 23
                  srai         s6, s1, 16
                  srl          s2, t1, t6
                  slti         gp, s11, 1370
                  sra          s9, t2, s4
                  andi         t3, a2, 1511
                  sltiu        s2, s8, -672
                  and          a2, a7, s8
                  slt          a7, t4, t1
                  or           a4, t5, s9
                  and          s4, sp, s5
                  sltu         s5, s9, ra
                  slti         a5, s3, 1835
                  auipc        gp, 1021778
                  andi         s4, s11, -697
                  xor          s0, s9, s8
                  xor          t1, t1, a5
                  lui          s0, 289008
                  nop
                  sltiu        s11, a0, 2027
                  auipc        a7, 1023779
                  and          zero, a2, gp
                  slti         a5, s3, 983
                  addi         s5, t6, -145
                  xori         gp, s10, 1879
                  slt          s6, s2, s4
                  sltu         a2, s9, sp
                  add          s7, t3, s7
                  xor          a3, t2, a5
                  andi         t1, s9, -1580
                  auipc        t1, 628339
                  xor          s4, t3, sp
                  add          s5, t4, sp
                  sub          s11, t2, s6
                  sltu         s10, t3, t3
                  andi         s2, a1, -2048
                  ori          a2, s7, -1552
                  andi         s10, sp, -1658
                  srai         s10, ra, 30
                  xori         s7, s11, 322
                  lui          a6, 172708
                  sub          s4, a7, t6
                  or           s8, s0, zero
                  srl          s10, ra, a7
                  andi         s0, s4, 1165
                  and          a2, t4, a6
                  slli         a2, s7, 19
                  lui          a4, 679489
                  sltu         s7, s0, s6
                  slt          a6, a3, t1
                  srli         t0, s3, 28
                  andi         s6, t3, 906
                  slt          a7, tp, s0
                  sra          a6, s3, t6
                  sltu         t0, a1, s0
                  slt          a2, s1, s0
                  nop
                  and          t5, t0, s3
                  srai         gp, t2, 12
                  sra          a3, s10, a1
                  xori         s11, a2, -1268
                  ori          s5, a3, -1549
                  srli         t0, a0, 27
                  xori         a2, s1, 1935
                  ori          a4, ra, -1077
                  sltiu        s6, s5, -1694
                  ori          t4, a6, 789
                  or           a1, sp, s9
                  xor          t5, t5, s1
                  nop
                  sra          a7, tp, sp
                  sra          s8, a1, tp
                  slt          sp, s8, sp
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a0, 0x0
                  li           s11, 0xffffffff
                  li           s2, 0x0
                  li           gp, 0xf3c15f92
                  li           a4, 0x0
                  li           s8, 0x53015b0b
                  li           a6, 0x80000000
                  li           a7, 0x0
                  li           s4, 0x80000000
                  addi         s8, gp, -922
                  add          s11, s6, a6
                  auipc        a6, 836674
                  sub          gp, s4, s8
                  auipc        a0, 375341
                  lui          s4, 1010522
                  add          s6, a4, a7
                  auipc        s6, 240009
                  add          s2, s8, s2
                  sub          a7, s4, a0
                  nop
                  addi         s2, s4, -762
                  sub          a0, a0, s11
                  nop
                  lui          s11, 569095
                  lui          gp, 715051
                  auipc        gp, 556383
                  nop
                  lui          a0, 126242
                  addi         s11, s11, 115
                  lui          s11, 385836
                  sub          a4, a4, a0
                  nop
                  auipc        a6, 516267
                  addi         a7, a7, -2026 #end riscv_int_numeric_corner_stream_18
                  slt          s5, t0, t4
                  xori         t1, t0, 1046
                  auipc        t3, 749507
                  or           t0, s11, zero
                  sltu         t0, s9, s10
                  sub          s3, a1, s9
                  and          t3, s10, sp
                  addi         s8, s5, 1741
                  slt          a5, s9, a4
                  auipc        a5, 633795
                  srli         s2, zero, 30
                  srli         t1, zero, 3
                  xor          a4, s2, t4
                  srl          t5, a2, s7
                  xor          t6, s6, t3
                  nop
                  sra          s2, t1, a7
                  srl          zero, a6, a7
                  srli         t5, tp, 30
                  add          s7, s3, a2
                  xori         s0, a2, 1281
                  add          a5, s1, t1
                  xori         s11, ra, -433
                  sub          a4, sp, a1
                  andi         s2, a7, -1682
                  srli         a3, s1, 28
                  sra          ra, ra, s9
                  lui          s2, 975633
                  lui          s2, 316028
                  sll          t3, sp, s2
                  nop
                  srl          s11, a2, t6
                  and          s8, s9, t3
                  sra          s10, s8, s5
                  slli         a4, a1, 8
                  sll          a7, t1, a0
                  addi         a6, t4, -386
                  sra          t4, sp, t6
                  slti         s4, a7, 109
                  sub          s4, s2, t6
                  addi         t3, zero, 1111
                  srai         t1, zero, 31
                  auipc        t3, 348994
                  sltiu        a1, a7, 276
                  sll          a7, t0, s2
                  andi         t1, a7, 1516
                  xori         s7, s6, -1775
                  sltiu        sp, s1, -1568
                  srli         s8, a7, 31
                  sra          s5, s1, sp
                  slti         a5, s9, -827
                  sltiu        s9, a3, -1881
                  srl          t3, a3, t2
                  srl          a4, a1, a0
                  sltiu        t3, s8, -105
                  or           t1, s8, s3
                  lui          sp, 555444
                  addi         a0, s11, 1655
                  slli         s4, t2, 24
                  srl          t6, zero, gp
                  sub          s0, a4, a4
                  sltiu        s4, t3, -1394
                  sltu         zero, a5, s4
                  sltiu        t1, s7, -129
                  auipc        a6, 416402
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           s5, 0x1da1a90a
                  li           ra, 0x0
                  li           s10, 0x80000000
                  li           t6, 0xffffffff
                  li           s11, 0xf60df52f
                  li           gp, 0xffffffff
                  li           s7, 0xb3450a3c
                  li           a7, 0x0
                  li           a5, 0x0
                  addi         s5, a0, -269
                  add          s7, a0, a5
                  add          s7, ra, ra
                  addi         a5, s7, 30
                  auipc        a0, 989164
                  sub          s10, t6, s5
                  addi         s11, a5, -1142
                  sub          s11, s5, s10
                  sub          s10, ra, s11
                  add          a5, gp, a0
                  add          ra, s7, s7
                  nop
                  auipc        ra, 225954
                  auipc        s10, 910216
                  nop
                  add          t6, s11, ra
                  auipc        gp, 1007450
                  nop
                  lui          s7, 346318
                  add          a7, s10, s5
                  addi         s10, a0, -988
                  lui          a5, 872243
                  addi         a5, ra, 1720 #end riscv_int_numeric_corner_stream_13
                  add          a6, t0, s0
                  srai         a6, s1, 22
                  ori          t6, t5, 1195
                  lui          a1, 626635
                  sra          t6, s9, s2
                  xori         t0, gp, 1228
                  ori          sp, a6, 1341
                  sub          zero, sp, t3
                  srli         s10, t4, 31
                  sub          a2, s5, s3
                  xori         s10, tp, -453
                  sltu         t6, s4, s0
                  or           ra, sp, a7
                  addi         t1, a1, -952
                  sra          s4, sp, s10
                  sub          s11, a0, t4
                  and          t6, s8, t3
                  xor          s4, gp, s7
                  lui          s5, 565185
                  slt          s7, t5, sp
                  sltu         a7, s9, s10
                  srai         a0, gp, 26
                  sltiu        a5, a1, 779
                  sll          t1, t3, t3
                  sub          t6, a3, s4
                  andi         s10, s0, 883
                  nop
                  and          s2, s1, t4
                  andi         a7, s1, 504
                  srli         a4, s6, 26
                  slli         a2, t0, 20
                  auipc        a4, 209490
                  slli         t0, s9, 5
                  ori          s8, t3, -1582
                  add          s11, s11, ra
                  sltiu        a6, t5, 1751
                  srl          s0, s7, s2
                  nop
                  sltu         s5, s4, s7
                  sub          a1, s0, a1
                  sltiu        t5, s9, -920
                  srli         ra, t3, 13
                  auipc        s7, 994792
                  or           s8, s9, s9
                  srl          gp, s4, a7
                  slti         t4, tp, 1789
                  xori         gp, s3, 1249
                  lui          gp, 911599
                  slt          t3, ra, s0
                  srai         ra, a5, 19
                  add          a1, a5, a6
                  srli         t1, ra, 22
                  slli         gp, s0, 9
                  sra          s8, t1, t4
                  auipc        gp, 89646
                  slti         a7, t3, -887
                  auipc        a1, 351079
                  sra          s10, ra, gp
                  sra          a2, t1, s6
                  sra          t4, s11, t5
                  srai         a1, s5, 30
                  sra          a1, a5, s0
                  slli         t3, t0, 16
                  srli         a4, t1, 26
                  xori         s9, s2, 1211
                  or           sp, a5, s9
                  ori          s4, t4, -1657
                  slli         s4, s0, 16
                  add          a2, s1, t2
                  andi         t4, gp, -902
                  xor          s4, t1, t4
                  ori          t1, s3, 797
                  auipc        zero, 219172
                  add          s7, t6, t1
                  xor          s2, a1, a1
                  sub          s3, s8, a7
                  slt          t1, sp, s4
                  xori         t5, gp, -20
                  lui          a6, 783623
                  sltiu        a0, gp, 840
                  srli         s4, t3, 13
                  sub          t0, s9, s2
                  and          a7, s9, gp
                  ori          zero, t3, -1377
                  auipc        t6, 388722
                  or           t0, t2, a6
                  add          s6, t2, s6
                  and          a5, t2, t1
                  sltiu        s7, s7, 513
                  and          s8, tp, s6
                  andi         t4, t2, 753
                  sll          s7, sp, s8
                  slt          s5, t4, a5
                  sltiu        a2, s6, 1413
                  xor          t3, s11, t5
                  add          gp, s0, tp
                  srai         s3, a3, 1
                  or           s9, a0, t5
                  ori          a2, t0, 1090
                  add          s6, zero, t1
                  srai         t3, a1, 0
                  addi         a6, a3, -166
                  or           s9, s1, t2
                  lui          t4, 754730
                  srli         s2, t5, 6
                  sub          a0, s8, s10
                  srli         s4, ra, 4
                  sra          a2, s9, s3
                  sltu         s9, t0, a0
                  srai         t4, tp, 10
                  srai         t3, a2, 28
                  sll          a5, s5, a1
                  srl          t3, tp, t4
                  nop
                  xori         t0, s8, -263
                  sub          s6, sp, gp
                  xor          a3, a4, tp
                  addi         s7, ra, 161
                  srl          t3, s5, gp
                  xor          a2, a1, gp
                  slli         s8, s7, 27
                  xor          gp, t4, s0
                  slli         zero, t2, 2
                  srl          t0, a1, s0
                  srai         s8, ra, 3
                  srl          t5, a0, s1
                  sra          t0, s6, s8
                  sltiu        t0, t1, 596
                  srai         s0, a4, 24
                  lui          a6, 485687
                  ori          t4, t1, 869
                  ori          t3, t5, -1806
                  srai         s11, s6, 16
                  nop
                  sltiu        gp, t5, -318
                  and          a1, s5, a0
                  xor          s8, s6, s10
                  slti         s7, t3, 1652
                  srai         s4, a7, 21
                  xor          a1, s7, s0
                  xor          ra, gp, s9
                  sltu         a7, a4, a2
                  srli         t6, s5, 28
                  sub          t0, gp, t5
                  slti         s9, s4, -1915
                  srai         s11, s1, 17
                  addi         a5, sp, -528
                  lui          a3, 163500
                  xori         s8, s4, -988
                  nop
                  xor          s0, t3, t4
                  sll          t5, a2, t3
                  xor          s3, t6, s1
                  lui          zero, 50994
                  or           s3, a3, zero
                  sra          t0, s3, a4
                  slt          t6, t2, s9
                  addi         gp, t3, 54
                  srai         t3, s7, 0
                  auipc        t4, 54698
                  sub          s5, a5, a0
                  slt          t6, a6, a6
                  add          sp, a2, gp
                  sltiu        s10, sp, 1046
                  srli         a2, s4, 21
                  sra          t5, sp, gp
                  or           s5, a4, t4
                  ori          s3, s7, -1534
                  sltu         a3, zero, s4
                  and          s7, s0, a3
                  nop
                  ori          gp, ra, -1504
                  and          s3, a5, t4
                  nop
                  andi         zero, s11, 1770
                  slt          t3, a6, t0
                  slt          s6, s8, a5
                  lui          s11, 349712
                  ori          s10, t3, 182
                  nop
                  srl          a0, a2, a0
                  and          t3, s2, s9
                  or           s9, a1, a4
                  sltiu        s9, t5, 1278
                  or           a7, a4, t6
                  addi         zero, a6, 1051
                  add          t1, t1, a2
                  sub          t0, gp, a5
                  slti         a6, t2, -839
                  xori         t0, s5, -1761
                  srl          s9, s6, a1
                  addi         a2, a2, 1001
                  or           a4, t3, t0
                  ori          s11, zero, -11
                  addi         s11, a5, 619
                  auipc        a1, 434604
                  srl          s9, s10, a7
                  lui          s11, 162470
                  sltu         a5, t0, gp
                  sll          t5, gp, t6
                  add          t5, t4, s11
                  addi         zero, a0, -1555
                  srl          zero, a0, s6
                  srli         s0, a6, 4
                  srli         t4, s11, 24
                  srli         a7, t0, 21
                  xor          a2, t4, a2
                  slli         zero, t3, 10
                  slt          gp, gp, t5
                  sra          s6, s4, s6
                  sll          gp, s0, a4
                  addi         t4, a1, 841
                  nop
                  lui          s10, 817544
                  slli         a2, sp, 10
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_29
                  li           t1, 0x24c9e3ac
                  li           t5, 0xaf095c64
                  li           s10, 0x80000000
                  li           gp, 0xb28a772d
                  li           s4, 0xffffffff
                  li           s6, 0x80000000
                  li           sp, 0x0
                  li           s0, 0xffffffff
                  li           t3, 0x80000000
                  addi         sp, gp, 46
                  add          gp, t3, gp
                  add          t1, t5, ra
                  sub          ra, t3, s10
                  addi         ra, sp, 1368
                  addi         s4, gp, 113
                  addi         ra, gp, 1153
                  auipc        gp, 563930
                  lui          gp, 1032768
                  addi         s6, s10, -35
                  auipc        gp, 658165
                  sub          s4, s4, s4
                  add          t1, s6, ra
                  addi         s4, t1, -1634
                  addi         sp, s10, -1123
                  nop
                  sub          s4, gp, s10
                  sub          gp, t5, t1
                  add          s10, t3, gp
                  lui          sp, 306511
                  auipc        s0, 760863
                  addi         sp, t1, 1041
                  sub          ra, s10, gp
                  add          s0, sp, s4
                  nop
                  auipc        t5, 821320
                  auipc        t5, 832983 #end riscv_int_numeric_corner_stream_29
                  ori          a1, t5, 2036
                  srai         s0, t0, 14
                  xori         a5, t5, -1546
                  andi         s6, a2, 1802
                  sub          a2, a0, s9
                  nop
                  and          s6, s7, s1
                  and          ra, a3, a0
                  slli         t4, s11, 27
                  and          a7, ra, t1
                  addi         t5, s4, 1248
                  sub          s11, s4, a4
                  li           s8, 0x5acd0784 #start riscv_int_numeric_corner_stream_9
                  li           a5, 0xffffffff
                  li           ra, 0xe5d2ba4f
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  li           t5, 0xffffffff
                  li           s9, 0x11fb1b6f
                  li           a6, 0xffffffff
                  li           s6, 0x0
                  li           s11, 0xd2464aa7
                  sub          ra, a5, s11
                  sub          s6, t5, s0
                  nop
                  add          s10, a6, s6
                  auipc        ra, 589023
                  auipc        a5, 666027
                  addi         t5, s10, -1412
                  sub          s9, a5, s8
                  sub          a5, a5, a5
                  add          t5, a5, s10
                  add          ra, s9, ra
                  addi         s6, s0, 9
                  sub          s6, a6, s10
                  auipc        s6, 177766
                  addi         ra, s11, 815
                  addi         s11, s11, 539
                  add          s0, s11, s6
                  nop
                  sub          s6, a6, s10 #end riscv_int_numeric_corner_stream_9
                  sltiu        s4, s1, -838
                  xor          t1, ra, s8
                  andi         s3, s10, -597
                  slti         a7, a0, 1104
                  sltu         s10, s8, s2
                  xor          a6, a2, ra
                  srl          t5, s11, s10
                  slli         a5, ra, 12
                  sub          sp, t6, a4
                  nop
                  slt          s2, t4, a1
                  lui          sp, 457004
                  slti         s3, s3, -1508
                  or           gp, t5, t6
                  auipc        a3, 310792
                  nop
                  sltu         a7, t2, t0
                  srl          a1, t3, s4
                  ori          s6, a3, 1564
                  sll          t1, s11, s9
                  srai         t1, a1, 25
                  xori         a5, a4, -395
                  srli         s2, a1, 14
                  srl          a1, a3, ra
                  sltu         s3, s9, gp
                  slt          s0, t5, s9
                  slli         gp, s7, 2
                  addi         a1, gp, -1900
                  sltiu        s2, a5, 1768
                  slli         sp, sp, 23
                  add          s11, s8, s10
                  lui          ra, 804544
                  sll          t1, a1, s2
                  lui          a7, 132449
                  sltiu        a6, a0, -1425
                  andi         s3, gp, -951
                  ori          t4, a3, -756
                  add          t3, a1, a3
                  ori          t0, a4, -1478
                  srai         sp, a2, 5
                  ori          s9, s8, 1046
                  sub          a4, gp, s8
                  srl          a5, a3, zero
                  slli         s6, t6, 27
                  sltu         s0, t6, s8
                  or           ra, s2, s8
                  srai         s6, t5, 23
                  slt          t5, t5, a2
                  srli         sp, t2, 19
                  xor          a2, s11, s3
                  xor          t4, s4, t5
                  nop
                  sra          a6, ra, s5
                  srli         t1, a5, 6
                  and          a4, s3, s11
                  slt          a7, s4, a6
                  sll          s0, s7, a1
                  srl          s6, a3, a2
                  srli         a7, a0, 5
                  slli         ra, s3, 22
                  srai         a7, a0, 15
                  addi         t1, a3, 1840
                  srai         s9, ra, 24
                  slli         s11, t4, 25
                  or           s8, a3, a1
                  xori         s4, s5, 1708
                  sltiu        s7, t6, 764
                  nop
                  andi         s6, s8, -1815
                  sll          s2, gp, t0
                  nop
                  xori         t0, s10, 1000
                  addi         zero, s10, -1386
                  nop
                  sltu         a7, a3, s0
                  or           ra, zero, s0
                  xor          a0, a4, gp
                  sltiu        s9, tp, -483
                  lui          t5, 721717
                  srli         s2, a5, 4
                  addi         s0, s10, -949
                  srl          a0, s4, s10
                  slt          a1, gp, a6
                  sub          a6, gp, s3
                  slti         s5, gp, -862
                  lui          s6, 710873
                  lui          t4, 939475
                  and          a7, s6, t0
                  addi         s5, t6, 1671
                  and          gp, s6, sp
                  and          t0, a7, s2
                  sltu         a3, a5, t4
                  add          s7, s7, zero
                  sra          zero, s1, a2
                  sltu         s0, s6, s1
                  sub          s3, a7, s5
                  slti         t6, zero, 245
                  and          s10, a1, gp
                  sltu         s4, sp, sp
                  addi         s11, a6, 403
                  and          zero, t2, s6
                  nop
                  andi         t3, s0, -1968
                  xor          s2, t5, s8
                  sll          zero, ra, a0
                  addi         s8, s1, -1806
                  sra          a6, a1, s3
                  xor          s2, s9, t6
                  andi         s0, a2, 1222
                  nop
                  and          t3, gp, t6
                  lui          t3, 882220
                  lui          a5, 79796
                  nop
                  srli         s0, a7, 5
                  srli         t6, s0, 18
                  sltiu        t1, tp, -727
                  srl          t5, a7, s2
                  slti         zero, a2, 642
                  sltiu        s11, sp, -947
                  lui          a3, 749126
                  lui          s3, 453991
                  sltiu        sp, sp, 1007
                  slt          t5, t2, s6
                  srli         sp, tp, 20
                  sub          t0, s11, tp
                  slti         a3, t2, -440
                  srai         s0, t0, 17
                  xori         a5, zero, 791
                  sltu         a5, a5, s5
                  sltu         a5, t6, a2
                  srli         s5, tp, 4
                  andi         s4, t4, -1255
                  sltu         a0, a6, s5
                  lui          zero, 766981
                  sltiu        a6, a4, -1303
                  sub          t6, ra, tp
                  srli         ra, zero, 11
                  slli         t4, t2, 5
                  sub          ra, s5, a7
                  sll          s10, tp, a7
                  sub          s4, a1, s8
                  andi         a5, s8, 165
                  andi         s5, t3, -736
                  slli         a5, a5, 19
                  lui          s8, 319263
                  addi         a0, s10, 1364
                  auipc        s2, 392192
                  lui          s6, 669292
                  sub          t3, s10, s5
                  auipc        ra, 809566
                  addi         a6, a7, 639
                  sltu         a5, t4, t4
                  xori         ra, s8, -1755
                  sltu         s11, t6, t1
                  slt          gp, s5, s11
                  slti         s9, t2, -909
                  addi         s3, zero, 105
                  sub          s4, tp, s10
                  slt          t1, sp, t3
                  slti         a3, s9, -2044
                  slti         sp, t3, 1506
                  sltu         s9, s10, a3
                  sra          gp, s10, a7
                  srai         a7, t5, 2
                  srai         s4, t2, 31
                  nop
                  andi         a2, s8, 345
                  lui          a4, 120909
                  slti         s6, tp, 512
                  srai         s11, a1, 26
                  srli         sp, a1, 16
                  sltu         s2, a0, s10
                  sll          s7, t1, s8
                  srai         t4, a4, 11
                  andi         s4, t6, 152
                  andi         zero, t1, 1442
                  slt          s5, a3, tp
                  sub          s8, a1, s7
                  sll          s10, s11, a3
                  sll          a4, s1, t1
                  sltu         t0, a0, t1
                  addi         ra, s8, 225
                  ori          t1, s9, -655
                  xor          s3, s7, a6
                  and          t5, t6, s2
                  xor          s11, a0, a7
                  lui          ra, 453736
                  srli         a1, t0, 30
                  sltiu        zero, s7, -1543
                  srli         s0, a2, 5
                  xori         gp, s7, 1783
                  lui          a6, 575316
                  slti         s3, s8, 808
                  xor          s4, zero, gp
                  nop
                  slti         s11, a5, 38
                  sub          a2, s1, a7
                  slt          sp, s3, s3
                  nop
                  or           s9, ra, s5
                  sll          a4, t1, s0
                  sra          a3, zero, t4
                  or           t5, s8, ra
                  xori         s4, s10, 682
                  addi         s11, a4, -1615
                  xori         s7, s3, 1018
                  xori         s10, t0, 1996
                  slli         t1, s2, 18
                  sub          zero, a6, a2
                  sub          zero, s7, t4
                  sra          s0, t2, t6
                  add          t4, t0, t1
                  addi         zero, a2, 1565
                  sra          ra, s1, s0
                  sltu         s0, s10, t2
                  slli         a6, t0, 12
                  srl          s3, s10, a4
                  add          s4, gp, a4
                  slti         zero, s3, 1560
                  andi         s8, t1, -1148
                  sra          a6, a1, sp
                  or           s6, a4, t5
                  sra          a0, a1, sp
                  addi         a5, a3, -1290
                  sra          a3, sp, s11
                  srli         s11, ra, 2
                  srl          s3, t4, a4
                  xor          ra, s10, s1
                  nop
                  sltiu        a7, t6, 658
                  lui          t6, 97185
                  addi         a2, s3, -1374
                  xor          a6, s6, t4
                  srl          t4, sp, s9
                  lui          s7, 961176
                  or           a1, ra, a0
                  add          t0, s8, t0
                  ori          a2, a5, 4
                  srai         s2, a7, 5
                  andi         s2, sp, -896
                  slti         sp, t4, 876
                  slti         a3, a1, -1102
                  srl          s3, s7, s3
                  auipc        t0, 266837
                  li           t6, 0xbb7ff046 #start riscv_int_numeric_corner_stream_12
                  li           a6, 0x541ecef9
                  li           sp, 0x80000000
                  li           t0, 0x0
                  li           a7, 0x80000000
                  li           t3, 0x0
                  li           s3, 0x920d776e
                  li           s6, 0x0
                  li           s9, 0x0
                  li           a1, 0x80000000
                  auipc        a6, 501388
                  auipc        a1, 688795
                  addi         a1, t3, 1051
                  lui          a1, 298037
                  sub          a6, s3, t3
                  lui          a6, 94013
                  sub          t6, a6, a6
                  add          s6, s6, a7
                  sub          t0, sp, a6
                  auipc        t0, 1048563
                  nop
                  nop
                  add          t3, a6, a1
                  nop
                  addi         t3, t0, -2018
                  add          a1, t0, a1
                  lui          t6, 1038370
                  auipc        a6, 914886 #end riscv_int_numeric_corner_stream_12
                  nop
                  and          t5, s5, sp
                  sltu         gp, t4, ra
                  slti         sp, a4, -1593
                  sub          s9, s8, a5
                  xor          s4, t4, a4
                  andi         a3, s6, 402
                  srli         a7, a4, 22
                  lui          ra, 690653
                  slli         a1, a1, 11
                  sltiu        s5, a3, 68
                  add          s11, s0, gp
                  sltu         a2, s1, a5
                  ori          s2, t1, -1675
                  ori          s7, t3, 928
                  andi         s10, s7, -28
                  and          a6, a3, s8
                  add          s11, s3, t3
                  or           s2, s7, s1
                  slt          t1, t4, s10
                  add          s7, t5, t6
                  nop
                  ori          t1, s11, 1506
                  srli         t5, s0, 22
                  sll          t5, t3, a2
                  sltu         s6, t3, t2
                  or           t1, a6, s11
                  srli         s7, s0, 0
                  sub          s9, t5, t3
                  sub          s6, t6, zero
                  sub          s6, gp, s6
                  slli         s5, a4, 8
                  srai         t1, a0, 20
                  xor          s0, zero, tp
                  srl          s2, s7, s5
                  auipc        a2, 467915
                  auipc        s7, 497658
                  xor          sp, s10, t3
                  srl          s4, gp, s1
                  sra          a2, a7, t1
                  lui          s6, 37933
                  add          gp, a1, t3
                  sltiu        s9, zero, -1481
                  sub          s0, ra, s10
                  or           s7, t1, t0
                  srai         s9, s8, 20
                  sltiu        a1, a2, 169
                  xori         s2, a7, -950
                  xor          a7, a4, s6
                  sra          t3, s2, tp
                  slti         a5, sp, 1860
                  sub          a6, zero, a0
                  xori         t5, zero, -1179
                  and          zero, a1, s9
                  srl          t1, s3, a0
                  sub          t6, t6, gp
                  or           s3, a5, s3
                  xori         s7, zero, -92
                  nop
                  sub          gp, s4, t6
                  or           s10, a3, a3
                  xor          s9, t1, s1
                  lui          a0, 319818
                  ori          a3, s7, 1312
                  slti         a2, a3, -614
                  sra          s7, s8, s3
                  sub          s11, t4, s7
                  sltu         a3, zero, a0
                  slt          s9, s9, a6
                  and          s0, t4, s0
                  auipc        s7, 618199
                  or           ra, zero, s10
                  srli         s4, t5, 5
                  or           s4, s7, tp
                  auipc        t4, 166058
                  addi         a2, tp, 463
                  sltiu        ra, tp, -62
                  sltu         s0, s6, a3
                  slt          s5, s11, s1
                  add          a4, t0, tp
                  or           s7, s8, s6
                  xor          t6, a4, s6
                  xori         a7, zero, 830
                  addi         s9, s0, -726
                  sub          s0, a7, a2
                  sub          ra, s1, a6
                  or           t4, a6, s9
                  xori         a3, a4, -1495
                  srai         s4, s5, 29
                  nop
                  sltu         a0, t4, zero
                  and          s3, s1, t0
                  andi         s11, a7, -129
                  auipc        s10, 726005
                  sltiu        a0, t1, -1218
                  sub          t4, ra, t0
                  add          a3, s0, t4
                  auipc        t6, 568082
                  xori         s7, s11, 656
                  xori         sp, a2, -875
                  add          t4, s7, a6
                  srai         s5, s5, 23
                  srl          t0, s8, tp
                  ori          s6, a3, -1066
                  sltiu        t4, s2, 919
                  sltiu        s9, s4, 684
                  sltu         t4, s10, a0
                  slti         s10, s8, 31
                  ori          s8, s0, 760
                  slti         t1, t0, -356
                  andi         s7, s1, 1276
                  sra          a2, a4, t6
                  addi         t3, a1, -1296
                  and          t3, t6, s1
                  srai         ra, t2, 8
                  addi         t1, s2, -986
                  and          a7, sp, s6
                  slt          s0, t0, t2
                  add          t4, a0, s3
                  addi         t5, a7, 1041
                  addi         a0, s2, -481
                  srli         a3, t0, 15
                  add          gp, s4, s0
                  slt          a2, a3, s6
                  slli         zero, tp, 16
                  sub          t6, s8, zero
                  sra          s10, a3, t4
                  and          s7, t6, zero
                  xori         a7, t4, 63
                  ori          a3, a1, 1154
                  sub          t4, t1, ra
                  sll          t1, s10, a1
                  addi         s4, t5, -1810
                  and          s4, a0, t2
                  addi         zero, t3, -1643
                  nop
                  add          a5, zero, s0
                  slt          s4, s6, a2
                  srli         s3, ra, 7
                  lui          s5, 89737
                  and          s5, a6, t1
                  sltiu        s7, t0, -1269
                  xor          sp, s2, s4
                  sll          t4, t0, gp
                  slli         zero, t4, 5
                  sra          s11, s5, s9
                  or           t4, a6, s1
                  addi         t0, a3, -702
                  add          ra, zero, t6
                  sub          s7, s11, a0
                  xor          a2, zero, t0
                  ori          t6, a0, 449
                  auipc        gp, 691241
                  andi         a1, s10, 1742
                  xor          t1, t1, s8
                  sub          t5, s7, s10
                  lui          a3, 1005519
                  or           s9, a2, s3
                  sra          s6, t5, s4
                  slli         a6, t1, 2
                  sltiu        a6, s11, -1498
                  auipc        a6, 619417
                  sra          s10, tp, s2
                  srai         ra, s9, 23
                  xori         a1, s9, 28
                  or           s10, a7, t2
                  and          s7, a7, t6
                  ori          s2, t4, -1669
                  slt          a5, a3, t1
                  srl          t0, a4, t5
                  nop
                  slli         a7, a5, 26
                  srli         s3, t1, 13
                  andi         s10, gp, 277
                  xor          s5, s0, t5
                  sra          s5, ra, t5
                  srli         s7, a7, 26
                  nop
                  and          s11, s8, a5
                  xor          s3, a7, t5
                  sub          t3, s4, a3
                  auipc        a5, 266188
                  addi         s10, a4, -1329
                  sub          a1, a7, s5
                  srl          sp, gp, a0
                  slt          a7, t3, s1
                  lui          s8, 119189
                  slti         a2, t5, 1072
                  xor          s5, s9, a1
                  srl          a0, a4, t4
                  andi         s4, a5, 1174
                  sub          t0, a3, s2
                  srai         ra, s10, 12
                  nop
                  srli         a2, s4, 23
                  srai         s11, t4, 12
                  sltiu        a2, gp, -1081
                  slli         a0, t4, 16
                  andi         t3, s2, 901
                  andi         t3, a0, -436
                  srl          t0, a6, a1
                  srai         s4, s5, 7
                  and          gp, t6, a6
                  sltu         t1, t1, s4
                  or           gp, a6, s6
                  srai         s3, s0, 11
                  slli         a5, s6, 17
                  andi         t1, a1, 575
                  slt          s0, a0, t6
                  nop
                  or           s6, a4, a4
                  slti         a3, s5, -643
                  lui          a0, 817463
                  andi         s7, a0, -1604
                  andi         s5, a6, 1997
                  xor          a6, s10, a0
                  xor          t1, t3, s1
                  ori          a4, t2, -1875
                  srl          a5, s6, s0
                  sll          s3, a7, s1
                  sra          s11, a0, s3
                  sra          a1, a0, t3
                  srli         a3, s9, 8
                  ori          s5, t5, 875
                  slti         s3, a6, -816
                  and          a5, t5, s4
                  sll          s3, s5, s1
                  sll          s6, a0, a2
                  andi         a4, s4, -1052
                  add          gp, a4, s7
                  ori          s6, s5, -1348
                  slti         t0, s1, 1939
                  auipc        a6, 507741
                  sra          t1, s5, s3
                  srai         a4, t3, 29
                  sll          a4, s3, s11
                  slt          s8, t4, s2
                  andi         a7, a4, -1257
                  slt          s0, a6, t1
                  ori          s8, a2, -1675
                  slli         s7, t5, 1
                  srli         s9, t1, 20
                  sra          a6, a7, ra
                  or           s10, t0, s6
                  sub          zero, s6, s10
                  xori         a3, s2, 656
                  srai         s6, s5, 20
                  nop
                  slli         a7, sp, 17
                  xor          s4, t4, a1
                  sll          a0, s9, sp
                  nop
                  andi         a2, t1, 1168
                  or           a0, t5, a1
                  sltiu        s6, s6, 762
                  sltu         t3, a5, s5
                  andi         s9, t6, -1279
                  sub          sp, t0, tp
                  slli         t4, a1, 13
                  add          t0, t4, s7
                  lui          ra, 153361
                  or           t1, t1, a6
                  andi         a1, s1, -129
                  sltu         a6, a1, a3
                  slli         a6, a2, 7
                  sub          a0, a4, ra
                  srai         a1, zero, 2
                  srli         t4, s11, 21
                  add          a6, s8, gp
                  sll          t4, s3, t3
                  ori          t1, t2, -1314
                  add          sp, a1, a3
                  andi         s3, a5, -1086
                  nop
                  slt          s6, a4, zero
                  nop
                  and          gp, s0, s9
                  sltu         t6, sp, s6
                  andi         a6, t1, 1651
                  slti         a2, gp, -913
                  and          s4, s6, s4
                  sra          a7, a2, t0
                  addi         a7, gp, -1837
                  ori          s3, t0, 1372
                  lui          a3, 952976
                  slli         s10, t1, 31
                  sub          a7, a7, gp
                  slli         t1, gp, 14
                  sra          s10, a2, s7
                  sub          t4, gp, t3
                  srli         s9, a6, 25
                  nop
                  add          s11, s6, t6
                  andi         zero, s7, 356
                  srai         sp, t6, 4
                  nop
                  nop
                  xor          s4, s7, t3
                  srl          a1, a6, a4
                  lui          s6, 910684
                  slti         a2, s11, 582
                  slti         zero, tp, -801
                  sltu         t1, s8, s2
                  addi         s6, s9, 1777
                  sll          s6, tp, s9
                  sltu         a4, t4, a1
                  ori          a0, a7, -803
                  ori          t0, s1, 198
                  auipc        a6, 713343
                  and          a2, ra, t6
                  xori         s2, s2, 226
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t3, 0x134a84ed
                  li           s8, 0xffffffff
                  li           sp, 0xffffffff
                  li           gp, 0x0
                  li           s9, 0x0
                  li           t5, 0x0
                  li           s2, 0x80000000
                  li           ra, 0xffffffff
                  li           a4, 0xffffffff
                  addi         s7, ra, 358
                  auipc        ra, 86839
                  lui          s7, 156790
                  lui          t5, 826771
                  addi         sp, s9, 1017
                  sub          s9, s9, s2
                  addi         s7, t5, -1540
                  addi         a4, s8, 928
                  auipc        t3, 264350
                  auipc        sp, 1044507
                  sub          t5, s2, sp
                  nop
                  sub          ra, sp, s7
                  nop
                  sub          t5, t5, s8
                  auipc        t3, 597029
                  sub          a4, s9, gp
                  auipc        ra, 814125
                  sub          s2, t3, s7
                  addi         s7, s9, -175
                  nop
                  addi         s2, s8, 1634 #end riscv_int_numeric_corner_stream_1
                  slli         a5, a7, 5
                  srl          s7, s11, s3
                  andi         a4, s8, 1596
                  slti         t0, s3, -447
                  sll          zero, a6, s4
                  addi         s8, s6, 280
                  or           t4, tp, s3
                  sltu         a3, t4, a3
                  addi         s2, s2, 337
                  sll          a0, t6, a6
                  sub          s2, s11, a4
                  sltu         s6, a0, s11
                  lui          s2, 938509
                  srli         a5, s0, 21
                  sltiu        gp, zero, -501
                  xor          s5, s1, a6
                  lui          a2, 203025
                  addi         t4, s6, 617
                  srli         a7, s0, 2
                  sra          a2, tp, tp
                  slt          s6, zero, t1
                  add          a2, gp, t2
                  addi         a5, a7, 963
                  sltu         a1, s2, s3
                  and          s7, a3, s3
                  sltu         s9, t0, s4
                  sll          s8, a0, a3
                  srl          sp, s9, a3
                  and          a5, s7, t2
                  addi         s10, s1, 1807
                  slt          a3, s3, s7
                  sub          a2, s5, gp
                  sltu         s4, t6, zero
                  sltiu        a2, zero, 496
                  lui          s7, 347027
                  slli         zero, a5, 22
                  add          a7, t1, a5
                  and          t6, a7, a3
                  srli         zero, a3, 1
                  sub          s0, ra, s11
                  xor          ra, sp, s3
                  sltu         t0, s10, s3
                  slti         s11, t0, -2019
                  addi         t4, s3, 948
                  sltiu        a3, s5, -1306
                  sra          s2, s7, zero
                  slti         s6, sp, 46
                  sub          t0, a6, t4
                  or           gp, t5, a4
                  or           s4, s9, t3
                  sltiu        a2, s0, -580
                  slt          t0, t0, ra
                  srai         t4, t1, 20
                  srl          s11, s6, s9
                  slti         s0, t2, -271
                  lui          t0, 745728
                  srai         a6, s10, 0
                  lui          t5, 713210
                  add          t0, a7, a5
                  or           t1, s8, ra
                  sll          a1, a4, zero
                  sub          a0, t4, s3
                  srai         s9, s3, 20
                  auipc        s5, 580748
                  sll          s4, s2, s4
                  sltu         a2, tp, sp
                  slti         zero, a3, -1862
                  srli         t6, t0, 17
                  xor          s10, s11, ra
                  srl          s4, a4, s8
                  nop
                  slti         t6, s2, 1275
                  ori          s3, s0, 877
                  lui          gp, 941274
                  xori         a1, s1, -511
                  srl          gp, s3, a4
                  or           s9, a1, zero
                  sub          s3, s11, t5
                  srai         t6, zero, 4
                  sltiu        a7, s3, -1901
                  slt          a3, zero, gp
                  lui          gp, 31321
                  ori          a4, a6, 728
                  lui          s4, 872273
                  andi         a1, a5, 284
                  sltu         a5, s9, t4
                  or           a5, s6, t6
                  sub          s7, a4, a7
                  and          s4, s4, s7
                  nop
                  slt          ra, ra, s0
                  add          s9, ra, sp
                  sltu         t0, tp, s11
                  auipc        t1, 459976
                  slli         t5, s1, 9
                  nop
                  andi         t5, s10, 1374
                  srai         a0, ra, 23
                  sll          t3, a6, t3
                  ori          t5, t6, 1860
                  sltiu        t4, a5, 1227
                  slli         s7, s9, 20
                  srai         t4, a2, 2
                  and          t1, a3, s5
                  slti         ra, t2, -58
                  ori          a1, a7, -1889
                  sra          a5, s0, zero
                  auipc        s0, 675545
                  andi         t3, s1, -1791
                  auipc        a0, 603575
                  slli         t3, a4, 20
                  andi         s11, t1, -189
                  addi         a4, ra, 764
                  srai         a4, s4, 16
                  slt          a0, gp, a4
                  sra          zero, t4, zero
                  srl          gp, t4, s5
                  sll          t6, a1, s7
                  srli         a1, tp, 29
                  sltu         s7, t0, gp
                  sra          s6, s11, zero
                  sltiu        s8, s6, -1020
                  addi         a3, t4, 1434
                  addi         ra, t2, 1693
                  sltiu        s9, t2, 1930
                  slt          t4, t2, s9
                  sra          zero, a1, a3
                  and          s6, a1, s6
                  slli         s6, a3, 30
                  auipc        a1, 881507
                  sll          ra, zero, t1
                  srli         s6, a7, 29
                  slti         a0, s0, 26
                  sra          s5, s1, a0
                  srl          t0, a7, a5
                  slli         a0, t1, 3
                  srl          sp, a5, s9
                  add          t6, tp, t3
                  lui          a3, 430600
                  and          a0, a1, t0
                  ori          s5, t6, -669
                  ori          s4, ra, 639
                  slt          s10, t3, t3
                  sltu         a5, s7, ra
                  sll          s8, ra, s11
                  or           s2, s11, s1
                  ori          zero, zero, -1993
                  srli         s8, a3, 22
                  srai         s9, t6, 26
                  slli         s0, a6, 23
                  srai         a4, tp, 0
                  srli         s10, a5, 22
                  srai         s10, s8, 14
                  xor          gp, s1, s2
                  srl          t5, t5, gp
                  slli         a1, t2, 29
                  sltiu        t5, t5, 390
                  xori         t3, s5, 1427
                  auipc        t1, 557063
                  sll          a7, t5, s9
                  addi         t6, a0, 991
                  sra          t1, a1, a0
                  slli         s5, s5, 22
                  addi         s7, a7, 314
                  slli         s4, s2, 14
                  slti         a6, a4, -43
                  ori          zero, a0, -1079
                  sltiu        t1, a3, -1147
                  sub          t6, ra, t1
                  auipc        t1, 102722
                  xor          s0, ra, t1
                  slti         t3, s5, 405
                  slt          gp, s5, t5
                  nop
                  slli         t6, s1, 16
                  auipc        s8, 62375
                  slt          a1, t6, t0
                  auipc        a5, 161794
                  xor          t1, a4, s2
                  and          t0, a1, a5
                  xor          s8, s10, sp
                  nop
                  xor          zero, s0, a1
                  slt          s5, a2, t5
                  sltu         zero, s9, t4
                  srl          s2, a7, s8
                  xori         a0, s11, -1615
                  and          a5, t6, s1
                  srl          t0, t2, s0
                  ori          s11, t6, -874
                  or           zero, s4, s9
                  srli         zero, s4, 16
                  auipc        s5, 410837
                  sltu         s10, s6, a1
                  srli         gp, sp, 30
                  slli         s6, s3, 12
                  slt          s11, s3, s7
                  lui          t0, 847712
                  ori          s10, s9, 1642
                  slti         s11, s10, -1829
                  sub          a2, t1, tp
                  slti         a4, s2, -713
                  srai         a7, s3, 22
                  ori          t0, s1, -20
                  lui          s11, 885381
                  lui          t5, 557395
                  nop
                  xori         t5, a7, 138
                  sltiu        s11, s9, 1039
                  addi         gp, s2, 925
                  auipc        s5, 644573
                  slli         a0, s4, 4
                  slt          zero, t6, a4
                  addi         s7, t6, 225
                  sltu         s11, s0, t0
                  ori          a0, s5, -683
                  add          a4, a2, a4
                  ori          s0, a0, 846
                  srai         a4, a7, 24
                  lui          zero, 1004030
                  auipc        a5, 206791
                  slti         s6, a0, -1647
                  and          gp, s5, s9
                  lui          t0, 72328
                  srl          a5, a2, s9
                  sltu         s8, s1, s10
                  and          t4, a5, sp
                  sra          a3, t4, s7
                  andi         a1, a4, 1460
                  sltu         s3, t6, tp
                  slti         a2, s10, -679
                  sltu         s6, s4, a7
                  sra          a6, t6, a4
                  auipc        s7, 148322
                  slt          s3, a6, a0
                  ori          s9, t6, 1363
                  andi         a5, t3, 733
                  sub          a5, a2, s6
                  add          a0, s1, t0
                  slt          s9, t4, sp
                  or           a6, a5, gp
                  sltu         a4, s11, a7
                  slti         s7, s10, 1684
                  slli         s11, t5, 2
                  ori          a5, s7, 1174
                  sltu         a1, a3, s1
                  ori          t0, s9, -457
                  sltiu        ra, a6, 328
                  sll          s2, t0, sp
                  sll          ra, gp, a6
                  addi         s9, t5, -1496
                  srl          s10, s10, a1
                  sll          t0, a4, s4
                  srai         t5, s5, 11
                  and          a7, s8, a2
                  sltu         zero, t3, a1
                  ori          t0, t4, -1771
                  auipc        s2, 732770
                  sltiu        s6, s3, -1555
                  and          s9, t3, s8
                  srl          a1, a4, s0
                  slt          a7, a5, gp
                  auipc        a6, 207150
                  add          t3, a6, t2
                  ori          a0, t0, -301
                  auipc        t1, 429208
                  sll          t6, s7, s3
                  srl          a4, a1, s1
                  sll          s4, t6, s10
                  slt          sp, s11, zero
                  and          zero, t1, a3
                  sltu         s5, a2, a0
                  and          ra, s6, s7
                  xori         s7, t1, 1690
                  xor          t0, a4, t6
                  xori         s4, t0, 1349
                  add          s4, s9, a4
                  nop
                  andi         t1, s0, -988
                  nop
                  sltiu        t5, s8, 842
                  srli         ra, tp, 31
                  sub          s7, s3, a0
                  lui          s10, 624354
                  or           ra, s11, s1
                  ori          a7, zero, -153
                  sltu         a1, s0, s9
                  xor          a7, zero, s8
                  sltu         t1, t6, zero
                  nop
                  srl          a0, s3, t1
                  slli         s4, a1, 6
                  auipc        sp, 287460
                  sltiu        s2, a5, 589
                  xor          a6, s7, t0
                  slli         t1, t5, 7
                  andi         gp, s5, 178
                  lui          t6, 1021796
                  sub          s3, s1, a2
                  srli         a6, s2, 21
                  add          s5, s3, tp
                  andi         s5, s9, -324
                  nop
                  ori          t3, s10, 1746
                  sltiu        ra, sp, -193
                  sra          zero, t5, a4
                  andi         ra, tp, 44
                  srli         sp, a1, 13
                  xor          s4, s5, t6
                  slt          t1, t2, a5
                  nop
                  sll          ra, a1, s7
                  add          t5, a4, a0
                  xori         a5, s10, 1121
                  srai         t3, a1, 20
                  sub          s10, t1, t0
                  xori         s9, s7, -289
                  xor          t0, ra, a2
                  add          a6, s8, a7
                  sra          a2, t5, t3
                  srli         a1, s10, 21
                  ori          a6, s7, -1311
                  xor          s8, s8, a1
                  slt          t4, t6, t1
                  xori         gp, sp, -1877
                  add          a4, a0, a2
                  and          s2, s7, a2
                  ori          t5, a2, 2009
                  addi         a7, zero, -499
                  xor          s7, t1, gp
                  lui          zero, 145383
                  sltiu        s7, t4, -1818
                  srl          s4, s7, s2
                  slt          t1, s3, s3
                  sub          s9, s1, zero
                  srl          t6, tp, s6
                  auipc        a0, 254800
                  add          sp, tp, s11
                  nop
                  ori          s10, s0, 1990
                  or           t1, tp, a6
                  or           t1, s3, t1
                  sll          a1, a5, s11
                  sll          s5, a2, zero
                  ori          t5, a1, 1111
                  or           s3, t2, t2
                  slti         t3, s1, -1851
                  xor          a2, s6, t6
                  auipc        a7, 125020
                  srli         s2, a0, 21
                  sra          a2, t2, a7
                  slti         s9, t3, 1866
                  auipc        t3, 25668
                  srli         t1, s3, 2
                  andi         a2, s11, -856
                  sll          gp, ra, a4
                  auipc        zero, 1017739
                  or           ra, s4, a2
                  slli         s5, t1, 27
                  or           gp, t6, tp
                  slt          s11, s3, a3
                  sltiu        s3, zero, -256
                  andi         ra, sp, -626
                  sub          sp, s6, t0
                  ori          t0, a4, -666
                  sra          s11, a1, s9
                  addi         t1, a4, -1055
                  addi         t6, t6, -237
                  sll          t0, t1, s8
                  srl          zero, zero, s5
                  lui          ra, 533946
                  sltiu        ra, s2, 1698
                  sub          t3, t4, s6
                  add          t1, gp, a1
                  and          s8, a2, t2
                  slt          a4, t3, s7
                  lui          s6, 548412
                  sltiu        s5, a3, 1510
                  xor          sp, s9, s9
                  srl          s7, s2, zero
                  slli         s10, a1, 8
                  xori         t0, s10, -950
                  add          s3, s5, s7
                  sll          a4, t5, s7
                  or           t0, a5, s9
                  and          t4, a5, a6
                  auipc        s9, 1001494
                  slti         ra, ra, 1045
                  xor          s9, s6, a3
                  sltiu        a5, gp, 1635
                  srli         a5, gp, 18
                  sltu         s4, s6, s4
                  addi         a1, a3, -1099
                  lui          s11, 295978
                  srl          t5, t5, s7
                  or           ra, t3, s1
                  sll          s5, s8, a4
                  lui          gp, 599406
                  slli         s11, s6, 28
                  srai         a6, t4, 31
                  xor          t3, s0, s0
                  slt          s7, a1, zero
                  sra          t6, s4, a7
                  srli         a3, a3, 22
                  xor          a6, s10, sp
                  slli         gp, a4, 30
                  sra          a1, s4, s7
                  nop
                  auipc        t4, 681734
                  slli         t3, t3, 21
                  xori         t5, s2, 407
                  srai         s6, s6, 20
                  sltu         t6, a1, s3
                  lui          zero, 832192
                  slti         a1, a4, -2007
                  slli         s10, a1, 18
                  xor          t1, zero, t6
                  auipc        s9, 996824
                  lui          t6, 367498
                  sltiu        s6, s11, 1699
                  xor          sp, a1, t4
                  nop
                  sll          s11, tp, s10
                  ori          t1, a7, -836
                  slli         s8, a2, 0
                  lui          s5, 786311
                  add          s2, tp, s8
                  or           a2, gp, s0
                  add          a6, s2, t3
                  srli         s5, s11, 19
                  sltiu        a1, a6, -1332
                  slti         ra, s2, 1022
                  srli         a6, s0, 25
                  ori          s2, tp, -1211
                  andi         s5, s3, 203
                  srai         s9, s2, 31
                  srai         a1, s5, 11
                  addi         a5, t2, -1411
                  andi         s9, s9, -458
                  srli         a7, tp, 8
                  and          s6, a5, a2
                  auipc        gp, 128328
                  slti         t6, s4, 162
                  and          t6, t6, t5
                  slti         t6, a0, 1857
                  nop
                  lui          a7, 547599
                  slti         a3, s1, 355
                  auipc        s8, 673834
                  ori          s8, a5, 450
                  lui          s8, 248599
                  ori          a1, s11, -1726
                  slli         a5, s2, 7
                  srai         s10, ra, 20
                  slt          a2, t4, a6
                  sltiu        s4, zero, 38
                  slli         t5, t1, 19
                  lui          s4, 945324
                  lui          t1, 754694
                  ori          t1, sp, -1979
                  xori         s2, a6, -852
                  or           t3, t5, a1
                  xori         s9, s10, 469
                  sra          zero, sp, s8
                  slti         zero, s5, 344
                  andi         t4, s11, -1652
                  srai         a0, tp, 5
                  add          s10, zero, t5
                  sltu         s4, sp, t5
                  srai         t6, a0, 10
                  xori         a0, ra, 79
                  add          ra, a2, t3
                  ori          a1, s7, -1949
                  sltu         s5, s5, a6
                  or           sp, a7, s5
                  or           gp, s2, tp
                  sub          gp, sp, a0
                  sltiu        ra, a0, -107
                  xori         s0, a4, -1397
                  sra          s4, s10, s7
                  srl          a0, zero, a1
                  slli         a3, tp, 22
                  sll          t6, t5, s7
                  sll          ra, ra, a2
                  sra          gp, t2, a5
                  slti         a0, a2, -1202
                  add          a0, s9, a6
                  slti         s0, a1, 522
                  xor          t3, s8, s1
                  andi         t5, a2, 1797
                  ori          a5, sp, -703
                  xori         a3, t2, 111
                  or           s10, a5, t0
                  slti         t3, t5, -242
                  nop
                  sub          s6, t3, ra
                  slli         zero, s10, 25
                  sltu         t3, t0, sp
                  auipc        s3, 363727
                  srl          a4, s1, s2
                  ori          a1, t1, 904
                  sub          ra, t5, tp
                  sltu         a5, s6, s6
                  lui          s7, 262848
                  slt          ra, s5, t6
                  sltu         zero, s11, t2
                  slli         s10, ra, 10
                  add          zero, a7, s11
                  srai         t0, a7, 20
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a2, 0x0
                  li           s10, 0x0
                  li           t1, 0x80000000
                  li           s3, 0x0
                  li           t3, 0xb017ab08
                  li           a1, 0xffffffff
                  li           t0, 0x2335ed4a
                  li           t6, 0x80000000
                  li           s6, 0xffffffff
                  auipc        a1, 858233
                  sub          s3, t6, a1
                  lui          a2, 217688
                  lui          t3, 953481
                  add          s10, a1, t1
                  sub          s10, t3, t3
                  auipc        t3, 893099
                  sub          t0, t0, t3
                  add          s6, s10, s6
                  nop
                  nop
                  lui          a2, 671201
                  addi         s10, t0, 715
                  addi         a1, s3, -1914
                  add          t0, t0, s6
                  sub          t0, t1, s6
                  lui          a1, 151935
                  addi         t1, t6, 1511 #end riscv_int_numeric_corner_stream_3
                  sll          zero, s1, gp
                  lui          t5, 536145
                  sra          a0, s6, s0
                  addi         a2, t2, 1516
                  sub          a4, s5, a1
                  sltiu        s5, a0, -1956
                  srai         ra, tp, 4
                  xor          s4, s1, s6
                  andi         a0, s6, -748
                  srai         s5, s10, 18
                  addi         t1, t3, -187
                  auipc        t1, 572515
                  andi         t0, a3, -1200
                  or           zero, a6, s3
                  slli         s3, t6, 29
                  andi         a7, a7, 1810
                  slt          s11, gp, s4
                  sll          a6, s8, s3
                  slt          s8, a2, a5
                  addi         a5, s10, 270
                  sltu         a7, s5, a5
                  sll          t3, a7, t3
                  slli         a5, a4, 14
                  sltiu        s6, a5, -42
                  nop
                  auipc        s4, 803881
                  auipc        a1, 762460
                  or           s9, s6, s8
                  add          s7, s4, t6
                  srl          t6, s11, s6
                  ori          sp, s2, 1838
                  sra          ra, t0, s11
                  addi         s8, s11, 377
                  srli         t0, a3, 10
                  srl          a1, a6, a6
                  andi         t3, a2, 852
                  addi         ra, t0, 1146
                  and          s9, t5, a6
                  or           t3, sp, t1
                  nop
                  srl          t0, a6, s6
                  and          s5, a1, a3
                  addi         a1, t6, 489
                  auipc        s10, 325466
                  xor          t4, gp, s11
                  or           t0, tp, sp
                  add          a0, s7, t5
                  srl          a0, ra, a4
                  slt          sp, a0, t0
                  xor          sp, s0, tp
                  add          a2, s4, tp
                  srli         zero, tp, 1
                  ori          t6, t0, 730
                  xor          t4, s11, a0
                  sra          t0, ra, t4
                  xor          a6, s3, a2
                  slli         t4, t2, 25
                  add          t4, s3, a5
                  slli         a4, t3, 24
                  lui          a5, 410131
                  sub          a5, tp, s9
                  add          a2, s6, tp
                  sltu         t5, s1, a0
                  xor          t6, a4, t2
                  slti         a6, a0, 1922
                  addi         a5, tp, 676
                  sltiu        s10, sp, -1570
                  sll          s0, t4, tp
                  ori          ra, tp, 1720
                  srl          a2, a0, s5
                  slt          s9, s10, a4
                  andi         gp, t0, 600
                  sltiu        s7, gp, -822
                  slti         a6, s5, 815
                  addi         a7, s7, -521
                  sll          zero, t6, a6
                  srli         a4, t2, 7
                  addi         s9, a6, 881
                  auipc        s0, 969345
                  nop
                  srli         ra, ra, 14
                  addi         ra, s10, -689
                  srl          s8, s2, s6
                  and          s6, gp, s9
                  srai         t5, s11, 11
                  srai         s4, gp, 21
                  slti         s8, ra, -1919
                  xori         ra, a1, -709
                  sub          a4, t1, t3
                  xori         s3, zero, 1359
                  ori          a2, s11, -1574
                  or           s9, a5, s7
                  srli         s11, ra, 14
                  xori         s10, s7, 81
                  sub          s11, t5, a0
                  nop
                  slli         s6, a2, 14
                  or           t0, s2, a5
                  add          zero, a6, s10
                  xor          a1, a5, s5
                  nop
                  xor          ra, a6, t6
                  srai         a5, a1, 10
                  slti         s6, t2, 655
                  slti         a1, a3, 330
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           t1, 0xc63f7589
                  li           s0, 0x403cba00
                  li           s4, 0x0
                  li           a0, 0x0
                  li           a1, 0x80000000
                  li           t0, 0x80000000
                  li           a4, 0x80000000
                  li           s8, 0x80000000
                  li           s9, 0x80000000
                  nop
                  nop
                  addi         a4, t0, -1660
                  nop
                  addi         a4, s9, -1176
                  auipc        s8, 764696
                  addi         s9, s8, -1435
                  sub          t0, t0, s6
                  sub          s9, a1, a4
                  addi         s4, a1, -300
                  addi         t0, s9, -1696
                  nop
                  addi         s8, t0, 599
                  lui          t0, 986923
                  sub          s0, s4, a4
                  nop
                  sub          s8, s9, a0 #end riscv_int_numeric_corner_stream_15
                  sltu         s6, t1, t6
                  slt          s8, s8, s11
                  sra          t1, a0, s8
                  srli         s6, s7, 8
                  srli         sp, t2, 31
                  nop
                  sll          s4, s0, t2
                  xori         s5, s7, 1288
                  add          s7, a5, s10
                  xor          t3, zero, s6
                  slt          s0, a2, a0
                  sub          t5, s1, a1
                  slti         a3, s6, -325
                  lui          s3, 96337
                  sltiu        a4, t1, -647
                  sll          t0, s10, s4
                  add          a4, a6, ra
                  lui          t3, 551227
                  auipc        a7, 105802
                  auipc        a3, 845708
                  srli         s10, s3, 17
                  srli         s2, s11, 7
                  srai         s6, t5, 8
                  andi         s6, t3, -1577
                  add          t0, s0, t6
                  sra          a2, a3, t4
                  ori          s11, t2, 1480
                  sltu         t4, s8, a4
                  slli         s9, tp, 30
                  add          t0, t3, s10
                  xori         s11, t2, -357
                  slti         ra, s2, -747
                  auipc        a3, 924481
                  add          t4, s7, sp
                  sll          s11, t1, s5
                  slt          a1, a2, tp
                  sltiu        a0, s7, 751
                  andi         a5, s0, -177
                  slti         t5, ra, -1575
                  sll          s2, tp, t0
                  and          s10, a1, s11
                  slti         t0, s1, 2047
                  auipc        zero, 1012622
                  sltu         a4, s5, t6
                  sub          t6, a7, t5
                  xor          s6, a1, gp
                  slti         a2, s5, -99
                  slli         t3, s5, 3
                  srai         gp, a1, 20
                  srl          t3, t6, s1
                  auipc        s9, 569822
                  sra          ra, gp, t4
                  srai         sp, a2, 23
                  sltiu        a0, a4, -536
                  srl          a4, t1, s10
                  or           a6, s3, t5
                  xor          a1, s5, a7
                  sll          s4, t1, a0
                  or           t6, a5, sp
                  lui          a1, 478023
                  srai         sp, a3, 14
                  nop
                  srl          a0, ra, a6
                  xori         gp, s0, 1294
                  sub          a4, t0, s6
                  slli         s5, s3, 12
                  addi         a6, s1, -995
                  sltu         a1, a1, s2
                  ori          s7, s9, 76
                  or           t0, a7, s2
                  or           a4, zero, s7
                  ori          s3, gp, -621
                  nop
                  slt          s3, t5, a7
                  lui          t3, 235734
                  addi         t3, tp, 1816
                  xor          a2, sp, s3
                  sltiu        s10, s3, 1735
                  add          s0, t4, s9
                  and          s11, t6, tp
                  sll          gp, s11, s1
                  srai         t3, t0, 19
                  sll          t4, s2, t2
                  slti         a0, s10, -1389
                  xori         a6, a2, 1115
                  srli         a1, t0, 1
                  xor          a7, t2, s8
                  sub          sp, s4, s10
                  slti         s10, s5, 4
                  auipc        s11, 894918
                  nop
                  sra          gp, s4, s10
                  slt          t1, t0, t3
                  xor          s4, s8, s10
                  sltiu        t1, s0, 596
                  auipc        s2, 139657
                  auipc        gp, 371400
                  slti         ra, s4, -163
                  ori          s9, t1, -1544
                  add          s8, a7, a7
                  andi         s11, s5, 515
                  or           a5, s9, a1
                  srl          zero, s8, t1
                  srli         s7, s0, 11
                  nop
                  sub          s8, s5, s4
                  slti         s11, s11, 605
                  srai         zero, s7, 23
                  add          s7, t5, t3
                  sll          a6, s10, a7
                  auipc        s0, 1013252
                  slt          a6, s2, a6
                  sub          t0, t0, a6
                  sltiu        t5, sp, -1964
                  sll          t1, sp, a7
                  srli         a4, a4, 15
                  sltu         t6, a1, s5
                  slli         s2, s0, 15
                  sltu         t1, a7, ra
                  lui          sp, 811212
                  slti         s9, s1, -1307
                  addi         ra, s3, 1784
                  slt          a5, t6, t5
                  sra          s5, t1, tp
                  slti         zero, a6, -113
                  slt          s4, a6, gp
                  sub          s0, s4, s11
                  srl          s0, a5, s9
                  add          t0, zero, t0
                  slti         s6, t1, 1892
                  add          a2, s6, t5
                  nop
                  sll          a5, t5, s9
                  slti         s6, t6, -903
                  slt          t1, t2, s1
                  or           a3, t0, t0
                  xori         s10, s8, 927
                  nop
                  addi         a0, a1, 608
                  sltiu        a5, a5, -1408
                  and          t1, a3, t5
                  nop
                  sra          s6, gp, a2
                  xori         a1, a5, -1308
                  nop
                  srai         a2, a4, 4
                  or           t0, s9, ra
                  slt          s7, t6, a0
                  sub          s0, s6, s4
                  sll          s3, s1, a5
                  ori          a7, zero, 376
                  slti         s9, a4, 1574
                  sltiu        a2, a6, 287
                  sll          t4, ra, t4
                  addi         t3, s0, 1355
                  sltu         s0, sp, t4
                  srl          t6, s11, a2
                  andi         t5, s8, 617
                  xor          gp, gp, s10
                  sltu         t0, t0, t5
                  xori         s3, t3, 1599
                  or           t4, t0, s5
                  ori          t6, s5, -1677
                  sub          t4, a7, a7
                  slti         t6, sp, 1235
                  sra          a2, s9, t0
                  slti         a2, s0, -1257
                  lui          s5, 400950
                  nop
                  addi         ra, s6, 1262
                  slli         ra, t4, 16
                  sltu         gp, t5, t6
                  srli         gp, a6, 22
                  sub          s6, tp, s6
                  add          t5, s8, t4
                  andi         a4, sp, -1474
                  sltu         gp, t6, s9
                  lui          a3, 309569
                  add          t5, t3, s1
                  auipc        ra, 647684
                  slt          s8, a4, t3
                  sltu         a3, s1, a0
                  addi         a5, s5, 1389
                  srai         s4, a1, 7
                  slti         s9, s8, -426
                  sltiu        s5, a3, 1825
                  srli         a7, ra, 7
                  xor          a6, a6, s7
                  andi         t1, s7, 1334
                  slli         ra, t1, 8
                  srai         t3, t4, 18
                  srai         s8, gp, 1
                  slt          s5, a3, s5
                  lui          s9, 140606
                  sltiu        t5, t1, -719
                  sub          t5, a5, t6
                  srl          sp, s11, s0
                  sra          gp, s1, t5
                  lui          a5, 244517
                  addi         ra, a4, 793
                  slt          t1, sp, t5
                  or           t5, s9, tp
                  auipc        ra, 682963
                  sll          a4, a7, a1
                  ori          s4, t2, 431
                  lui          gp, 238175
                  srai         a4, a5, 22
                  slti         a7, s1, -2001
                  sll          s8, a6, a0
                  xor          s7, t2, a4
                  xor          s7, t5, s8
                  auipc        t5, 228939
                  slt          s11, a5, a4
                  srl          t5, s4, a5
                  xori         sp, tp, -1043
                  sll          s11, a7, a7
                  ori          a0, s6, -1667
                  srl          s4, a6, s9
                  sub          t4, s2, a7
                  sra          a6, s9, s11
                  sltiu        s6, t4, -1689
                  slti         s3, t3, 769
                  slli         gp, tp, 2
                  sltu         t3, s1, a1
                  sra          t1, s3, ra
                  sltu         s4, s7, a5
                  srli         s9, s3, 27
                  or           t4, gp, s9
                  auipc        t3, 271071
                  add          s11, s0, a7
                  and          a2, a4, s9
                  srai         s3, zero, 26
                  sub          a0, t1, a1
                  ori          t6, s3, 768
                  addi         s7, s6, -696
                  xor          zero, t4, zero
                  slli         gp, s11, 22
                  or           zero, a5, t4
                  sra          ra, t4, tp
                  sub          zero, s10, a6
                  andi         ra, s7, -644
                  xori         s7, a1, 401
                  srl          t1, s10, s2
                  and          s8, t5, a1
                  andi         a6, t4, -937
                  nop
                  ori          gp, gp, 566
                  add          a1, a0, s11
                  slli         a2, s2, 26
                  srli         t1, t1, 3
                  and          a3, t2, a3
                  and          s0, tp, s5
                  slt          t3, a7, s11
                  auipc        t6, 849666
                  nop
                  xori         t0, ra, 1287
                  ori          a0, s1, 1879
                  sll          a1, a5, a2
                  sltu         t1, s10, a6
                  add          ra, s4, s8
                  srli         t5, s10, 17
                  srl          s8, s0, t5
                  sra          a2, sp, s10
                  xor          a6, t4, t5
                  ori          s8, t1, -1284
                  sub          ra, gp, t6
                  sltiu        a3, t2, 1166
                  lui          s4, 32393
                  sll          s2, t0, s1
                  srl          t1, a4, t3
                  nop
                  xor          s0, s2, a0
                  nop
                  sltu         a2, sp, a4
                  sub          s8, a3, s5
                  ori          s4, s3, 1885
                  sltu         a6, sp, s7
                  and          a3, t6, s9
                  srl          t1, a5, a7
                  nop
                  or           zero, s5, a2
                  sltiu        a3, a2, 911
                  or           s5, a2, s9
                  srai         a6, s8, 30
                  slti         a7, gp, -341
                  ori          a5, a4, 1577
                  sub          t4, s6, t6
                  nop
                  xori         zero, a0, 562
                  srai         a7, s3, 0
                  nop
                  xor          a1, a2, s9
                  slti         s8, s4, -1596
                  auipc        gp, 561816
                  and          s2, s0, a4
                  xori         t0, a2, 1543
                  slti         s4, t3, -495
                  slli         s10, t3, 12
                  srli         sp, a7, 27
                  srl          a6, a1, s7
                  sltiu        a7, s3, 1744
                  or           a1, a4, zero
                  xori         a2, t2, 1324
                  addi         zero, s11, 1734
                  sra          s4, s8, t2
                  slti         s0, a1, -1712
                  srl          s7, t0, s9
                  andi         t6, s0, 815
                  add          t1, a5, s6
                  srli         a7, s0, 31
                  nop
                  sra          t6, t5, s0
                  nop
                  lui          s5, 965766
                  xori         t1, t1, -2035
                  auipc        sp, 384701
                  sltiu        s7, a2, 613
                  srai         s10, a2, 10
                  andi         a3, tp, 471
                  addi         a1, a0, -653
                  slli         t5, a6, 8
                  slt          a5, s10, t0
                  ori          s6, s11, 2
                  andi         a7, s6, 445
                  or           t4, a5, a7
                  ori          t1, t4, 1547
                  slt          a5, s10, s6
                  nop
                  nop
                  addi         a5, s2, 1019
                  andi         a7, s3, -509
                  srli         a7, s6, 16
                  auipc        a1, 593123
                  sltiu        s5, tp, 1333
                  xor          s6, s4, sp
                  srai         s7, s5, 4
                  or           a0, a1, a6
                  slt          t0, a4, t2
                  sll          s3, s10, s6
                  slt          a3, a4, s1
                  sra          s6, a0, s11
                  add          s4, t6, t3
                  sltiu        t3, s5, -1349
                  or           s9, t4, s10
                  slti         ra, s0, -1743
                  addi         s5, t0, 1728
                  sltu         a1, t0, s4
                  sra          a1, a5, a1
                  xori         a2, a0, -1565
                  srai         gp, a1, 14
                  nop
                  addi         gp, s0, 191
                  addi         t3, a1, 1948
                  nop
                  lui          zero, 540736
                  sub          ra, s11, zero
                  andi         s8, a4, -690
                  slt          a2, a1, tp
                  addi         t1, s10, 1082
                  sub          a0, s8, s6
                  slti         s6, t4, 1562
                  srai         a4, t4, 19
                  sltu         s9, t5, gp
                  srli         s8, t0, 10
                  slti         s0, a5, -444
                  sltu         gp, s10, t3
                  srli         a4, a3, 9
                  sll          a2, t0, a5
                  auipc        a0, 770709
                  slti         sp, s11, 34
                  srli         s8, t1, 17
                  sll          s6, gp, t5
                  auipc        s11, 73712
                  sltu         a7, a1, s0
                  slt          s7, s3, s5
                  lui          s11, 21222
                  sra          a6, zero, t6
                  nop
                  add          a4, gp, ra
                  slt          a6, t4, s8
                  sub          a1, a1, t0
                  auipc        a7, 544469
                  auipc        s10, 178314
                  addi         a3, s11, 1471
                  addi         a2, s1, -2044
                  or           s10, a3, a2
                  xori         t6, t2, 544
                  sra          a3, a7, s1
                  slli         s0, a4, 14
                  srl          s4, t2, s8
                  srl          s0, t3, t6
                  ori          s6, t0, 1100
                  srai         s7, s5, 2
                  sltu         s9, s3, s11
                  slt          sp, ra, a3
                  slt          s9, t6, t2
                  and          a3, a1, s1
                  and          t4, a1, a2
                  andi         t4, t4, 2044
                  andi         t0, t6, 824
                  or           a6, a3, s3
                  srai         sp, t5, 16
                  xor          a4, a3, a1
                  lui          s10, 73179
                  sra          t3, a1, t4
                  srai         t6, t0, 24
                  ori          s4, gp, -1644
                  sub          s0, gp, ra
                  srai         s0, t5, 22
                  sub          sp, s2, gp
                  xor          s2, s9, s9
                  srli         s8, s2, 19
                  addi         t1, s6, -530
                  sll          a7, t3, a0
                  lui          t3, 778588
                  srai         t0, t3, 17
                  sra          s3, t1, a7
                  sra          s3, sp, t4
                  nop
                  srli         s7, tp, 28
                  slli         t3, a5, 17
                  ori          s10, s4, 2044
                  and          t0, t1, t5
                  auipc        t1, 498561
                  add          a1, s6, gp
                  srl          s10, a7, s9
                  sltiu        a5, s9, 1854
                  and          s6, s7, s9
                  sltiu        s7, t5, 894
                  and          a5, t1, a4
                  srai         t3, a5, 0
                  lui          zero, 231005
                  srl          a2, t2, s9
                  srai         a5, t1, 12
                  sltu         ra, a2, s8
                  srai         t1, t5, 2
                  srl          a3, t1, a4
                  sra          a4, sp, ra
                  srl          t4, s4, s9
                  slli         sp, a2, 31
                  slti         a1, t1, -918
                  sub          a2, t6, s8
                  sra          s11, zero, zero
                  slti         t1, ra, 1500
                  lui          s0, 375340
                  andi         a6, zero, -1884
                  sll          s6, a1, t0
                  slt          ra, a4, a0
                  ori          ra, gp, 263
                  ori          a2, s2, -265
                  auipc        a2, 597035
                  sltu         t3, zero, s2
                  add          s7, s1, t6
                  addi         s7, a1, -1828
                  or           t6, t2, s8
                  auipc        a6, 1017320
                  and          s2, s2, a0
                  auipc        a0, 527815
                  and          s5, sp, t2
                  sra          s0, s7, s1
                  sltiu        a0, a7, 1357
                  slli         t4, s7, 4
                  srli         s4, s0, 29
                  andi         a3, a7, -95
                  sra          a3, a0, t5
                  slli         gp, t3, 31
                  and          t4, a2, t1
                  sub          t1, tp, a6
                  sll          zero, t4, s9
                  slti         s3, s9, -1918
                  lui          s5, 174269
                  slli         a6, s10, 9
                  ori          t0, zero, -1194
                  sltiu        ra, s8, -2
                  srai         a6, a0, 25
                  sltiu        t6, t4, -238
                  auipc        sp, 440868
                  add          t3, tp, sp
                  xor          t1, s8, s8
                  slli         t6, zero, 17
                  xori         s4, s3, 880
                  srl          zero, zero, s4
                  srli         s8, a3, 27
                  srli         a2, a4, 26
                  and          a2, s8, s7
                  slti         t5, s10, -1571
                  srli         a6, tp, 0
                  sub          t6, s6, s3
                  sra          a6, t1, tp
                  auipc        zero, 615742
                  sll          t1, zero, s6
                  add          s3, s3, t4
                  and          t1, s4, a5
                  srl          s2, gp, t2
                  and          t6, a7, s9
                  slli         sp, s9, 15
                  sltiu        s5, t0, 2037
                  slt          a3, zero, a6
                  slli         s7, s8, 6
                  sll          s5, s2, s5
                  xor          t0, s5, ra
                  ori          s7, a7, 963
                  ori          t1, a6, -1877
                  andi         ra, t1, 912
                  andi         a1, a1, 761
                  andi         a5, t2, 684
                  xor          s4, s2, s5
                  sra          sp, t6, a1
                  slti         s2, s5, -528
                  andi         gp, a6, 1799
                  addi         s2, s1, 1101
                  sra          s9, ra, a1
                  nop
                  sra          s7, t3, a2
                  srli         t4, a2, 27
                  auipc        s2, 133381
                  sra          a7, t2, t1
                  add          t0, s5, ra
                  sltu         a5, zero, t4
                  slti         a0, s4, -467
                  ori          s0, sp, -1252
                  sub          t6, s0, s8
                  slli         s8, t6, 2
                  sltu         a1, a5, s0
                  or           a3, s2, gp
                  nop
                  add          a5, t6, zero
                  addi         s9, s5, 285
                  ori          t6, s10, -1906
                  or           a2, t3, s3
                  or           a6, s8, gp
                  slt          t1, t1, s6
                  slli         ra, zero, 30
                  srl          s6, a0, s7
                  add          a6, s3, t1
                  sub          a7, a7, s9
                  slli         a6, s3, 10
                  slt          s0, s6, s0
                  srl          zero, a7, s9
                  xori         s3, sp, 2020
                  lui          a4, 961399
                  srl          s5, zero, a3
                  sub          s2, tp, s3
                  srl          t6, t2, s0
                  addi         a0, s11, 959
                  slt          a7, s1, gp
                  nop
                  slt          a7, a5, s0
                  ori          s5, t4, -243
                  andi         a3, tp, 802
                  slli         s0, s0, 19
                  sltiu        s3, s8, 1654
                  or           t4, a3, s10
                  addi         s5, gp, 1811
                  sltu         s6, s4, t4
                  slt          s5, s3, s1
                  srli         a3, t4, 2
                  sltu         s6, s7, ra
                  sltu         s6, a6, s7
                  addi         t4, gp, 716
                  srl          ra, a1, s4
                  auipc        s4, 320932
                  sltu         a1, a3, s4
                  ori          a0, tp, 1777
                  srli         a0, sp, 1
                  xori         s7, t1, -466
                  srai         a1, a2, 30
                  sll          s6, s6, gp
                  slti         t1, tp, 367
                  lui          s10, 211540
                  sll          s0, s9, a2
                  sltiu        t1, a1, 570
                  lui          a5, 159608
                  nop
                  srli         t6, s3, 23
                  sra          a7, zero, s9
                  sub          s11, s10, t1
                  srai         a2, t4, 21
                  or           a6, s7, s11
                  or           t1, a2, t4
                  sub          s4, a2, t1
                  srl          ra, s5, t0
                  sltu         t6, s1, a6
                  srai         s0, a2, 17
                  addi         a7, gp, 599
                  srli         s10, t3, 17
                  srl          a1, a0, s4
                  sltiu        s0, a3, -180
                  srl          t3, t2, s7
                  slli         a5, t5, 13
                  srli         a7, a7, 5
                  xori         s0, s8, -186
                  sltu         s5, a2, s9
                  sra          s2, t0, s3
                  slti         s10, s10, -1665
                  slt          t4, a2, zero
                  add          t0, s5, zero
                  ori          s3, a7, -273
                  addi         a0, s9, 672
                  xor          a7, t2, a7
                  slt          t3, s2, a1
                  xor          a6, s2, s6
                  and          t0, t6, s4
                  slti         t1, s6, 1538
                  or           gp, a3, a1
                  ori          ra, a1, 657
                  sltu         a6, gp, t1
                  sub          gp, s11, tp
                  xori         a7, a6, 1781
                  or           t0, a0, s4
                  sll          ra, s11, s8
                  slti         zero, s9, 251
                  slt          s3, ra, t6
                  sltiu        s10, t5, -1647
                  srli         a0, a5, 24
                  auipc        s8, 496796
                  srl          s5, s10, ra
                  sltiu        t4, s11, 1956
                  addi         a7, s6, -1656
                  slt          t5, t2, a7
                  sltiu        a4, t3, 1259
                  xor          a6, s4, a0
                  sra          a4, t0, a1
                  srai         s4, s6, 3
                  andi         s2, s9, 44
                  srli         t6, a0, 23
                  addi         t3, s7, -1793
                  andi         s0, tp, -825
                  add          zero, t0, s11
                  add          gp, gp, sp
                  auipc        a5, 28605
                  lui          t4, 23413
                  sra          a7, s2, t1
                  add          s9, t6, s10
                  or           a2, zero, t0
                  add          s9, gp, gp
                  xori         t6, s6, 777
                  srl          s8, a3, t0
                  sltu         a7, s6, t3
                  andi         s11, tp, 1757
                  slti         a7, a1, -1052
                  add          s9, s0, a0
                  sll          t0, s4, s2
                  sll          s7, s3, t2
                  sltiu        a0, s2, -884
                  sub          a4, s10, s0
                  andi         a5, s11, 673
                  xor          s5, s0, t0
                  xor          t0, s2, s10
                  xori         s5, t4, -167
                  andi         s7, a4, 341
                  nop
                  sltiu        s4, s11, -1762
                  slti         s8, t5, -1134
                  slti         s6, tp, -572
                  sltu         s2, s3, t3
                  lui          t3, 649143
                  srai         a2, s7, 23
                  slti         s0, s4, -1157
                  sub          s7, a2, ra
                  slt          a5, s5, s1
                  srl          s4, t1, gp
                  sra          t4, s3, t3
                  auipc        a7, 762111
                  xori         t6, a1, 1539
                  sll          a6, t4, zero
                  auipc        s6, 402442
                  sll          t5, t1, s6
                  slli         a1, a0, 25
                  nop
                  sub          a6, s11, s3
                  addi         a5, s7, 439
                  and          t4, t2, s7
                  and          s10, s2, a1
                  sll          t6, sp, t1
                  xor          s11, zero, s9
                  slti         a5, sp, 452
                  slli         s9, zero, 18
                  xori         a6, s6, 1805
                  add          t5, s5, a6
                  sub          a3, t2, s0
                  srai         a4, t0, 27
                  slt          sp, s1, s0
                  and          a6, s1, t6
                  lui          a5, 436249
                  xor          s0, a0, t4
                  sltu         s6, s1, t5
                  or           s6, t5, s11
                  nop
                  xor          a2, t6, sp
                  sub          gp, a3, a5
                  srli         a6, s3, 31
                  ori          a1, a2, 1703
                  sll          a0, s0, a0
                  and          t5, t5, zero
                  sub          t1, s0, s1
                  ori          t0, s3, -1735
                  and          t6, s9, s5
                  auipc        t4, 182457
                  srai         t4, t6, 14
                  auipc        t1, 788774
                  sub          t3, s7, a1
                  xor          s11, a5, a4
                  slt          s2, t6, s0
                  sub          s9, s7, s11
                  sll          a7, sp, t3
                  xor          a5, s3, s1
                  add          t3, s11, a6
                  slli         gp, t4, 6
                  andi         t6, a6, 1168
                  xor          a2, a2, t5
                  srli         gp, s3, 12
                  sltiu        t6, a7, -902
                  srli         a2, t3, 15
                  sub          s2, a0, t3
                  sll          s7, a6, tp
                  srl          s9, a6, t3
                  srl          s9, t6, a7
                  xori         gp, s5, 950
                  sltiu        s9, s1, 2046
                  sra          a7, s3, s5
                  and          zero, a5, t4
                  xori         t1, s2, 838
                  srl          a1, t4, s6
                  xor          t0, t5, a2
                  and          a1, a5, t6
                  sltiu        s9, t2, -435
                  andi         a3, t4, 1033
                  slt          a3, t6, t3
                  and          sp, a7, s6
                  srli         a1, a1, 28
                  and          a6, sp, s8
                  sll          zero, s0, a3
                  xori         a1, a0, -931
                  or           s11, t4, s7
                  lui          gp, 263628
                  lui          s7, 494365
                  sltiu        s7, s8, -473
                  auipc        t1, 266716
                  sra          t6, s5, s8
                  sra          t5, s2, zero
                  nop
                  sub          a1, a7, s10
                  add          s2, a0, s7
                  lui          gp, 104075
                  sll          a5, gp, a3
                  sll          ra, a2, a0
                  andi         t0, a5, 1519
                  sltu         a7, t3, s1
                  slt          s6, a1, a5
                  lui          a5, 960269
                  sub          s4, a1, t0
                  sltiu        s8, a2, -1671
                  sub          a2, t5, a5
                  auipc        t4, 521336
                  xori         t5, tp, -1086
                  srl          a0, s4, a1
                  xori         s3, s6, -1202
                  xor          a0, a6, t1
                  sltu         t5, sp, t1
                  srl          zero, t6, s2
                  sltiu        s9, s10, 1391
                  nop
                  srai         zero, s1, 3
                  srli         t0, tp, 28
                  slti         ra, t2, -974
                  nop
                  srl          s10, t2, a3
                  sll          t1, tp, s0
                  slli         ra, a2, 23
                  ori          t0, t2, 897
                  srai         s3, s0, 8
                  sll          s4, t1, sp
                  sltu         a7, t1, t1
                  add          t0, a2, t4
                  add          s3, a5, gp
                  slt          s10, a5, t4
                  ori          t4, a7, -898
                  addi         t4, a6, -1232
                  and          s10, a2, s0
                  srl          s9, t6, zero
                  srli         s6, s1, 2
                  xor          t3, s0, t3
                  add          s9, s0, t1
                  sra          a2, s10, t4
                  add          s9, sp, t0
                  lui          s7, 453201
                  or           zero, t3, s3
                  or           t4, s3, s8
                  srai         s8, s11, 29
                  and          t3, a2, zero
                  slti         gp, s4, 44
                  and          t5, s3, s11
                  srai         a0, s8, 29
                  srli         s3, s7, 12
                  ori          a6, s11, 454
                  sltu         s9, t3, gp
                  slli         a1, t4, 5
                  ori          t0, t0, 643
                  srl          t1, s9, t2
                  lui          t5, 547247
                  ori          s7, s9, -609
                  sra          ra, s6, a1
                  sltiu        s2, s4, -949
                  slti         a5, a0, -1832
                  addi         s4, s6, -1976
                  xori         t0, t0, 1879
                  auipc        ra, 784412
                  srli         s4, zero, 23
                  slti         a1, s7, 417
                  srl          s5, sp, t3
                  nop
                  nop
                  sra          s4, a7, a0
                  srli         t1, s8, 24
                  addi         s9, s7, 620
                  nop
                  add          a1, ra, s7
                  or           a5, s7, s0
                  add          s11, t2, sp
                  xori         t0, a4, -1186
                  sll          a5, t0, a5
                  sltu         a4, s2, s4
                  or           a5, t0, zero
                  srl          t3, s2, t5
                  slt          t1, a4, t3
                  xor          a1, t3, a5
                  srl          s11, s6, s6
                  sltiu        s3, a6, 1529
                  sub          s5, s4, s7
                  sub          a5, s9, s0
                  sub          s3, s9, t6
                  addi         s7, ra, 909
                  add          s3, a3, t0
                  sltiu        s0, a3, -746
                  sub          s11, s11, sp
                  lui          t3, 167338
                  auipc        a3, 342749
                  slli         a0, s6, 15
                  ori          s6, t4, -1574
                  and          t0, a7, s0
                  and          a7, s2, s9
                  slli         t4, a4, 21
                  srl          a4, t2, sp
                  and          gp, a1, a7
                  sltu         a3, s5, a7
                  sub          a4, t2, s3
                  xori         ra, a5, -945
                  add          t4, s11, t5
                  slt          s3, gp, sp
                  srl          s11, tp, a3
                  srl          t0, gp, t6
                  xor          s7, s10, ra
                  nop
                  auipc        s11, 253255
                  andi         s7, sp, -1401
                  andi         a4, a3, -1827
                  srl          a5, t6, t4
                  sltu         s4, a3, sp
                  addi         s5, sp, -498
                  slli         s10, a7, 6
                  srli         a2, t0, 18
                  addi         a4, s6, 101
                  sltu         zero, a0, t1
                  nop
                  lui          t1, 9137
                  lui          a4, 747397
                  or           a1, t5, sp
                  slli         ra, t3, 29
                  add          s7, ra, s1
                  addi         s6, tp, -1769
                  slt          s8, tp, s9
                  srli         s6, a0, 4
                  xor          s9, t0, s5
                  slli         a2, a6, 26
                  sltiu        a3, a6, -1755
                  srai         t1, tp, 17
                  srl          t1, a6, t6
                  sltiu        a7, t0, 826
                  sll          s7, s4, s0
                  sltu         a3, s4, a5
                  addi         t4, a7, -198
                  srl          gp, s2, s8
                  and          a0, t5, a3
                  and          s4, a2, s11
                  sll          s11, a3, t6
                  lui          a2, 627693
                  xori         zero, s10, -1235
                  sub          s10, a6, a5
                  sltu         s3, t4, t2
                  sltu         t4, s4, t5
                  slli         s8, a0, 22
                  or           s8, s0, s11
                  addi         t1, t0, -1885
                  addi         t6, s9, 227
                  addi         s4, s11, 849
                  auipc        s6, 338249
                  xor          a5, t5, a7
                  srl          s11, s1, t4
                  xori         a4, gp, -100
                  sra          a7, s11, gp
                  sub          s11, s0, a3
                  addi         a6, sp, 549
                  lui          s3, 155296
                  slt          ra, s7, t0
                  srai         t0, a4, 23
                  xor          t1, a0, a0
                  slt          a2, s0, ra
                  ori          gp, zero, 1143
                  sub          t6, sp, t0
                  slt          t5, a4, t0
                  sltiu        a0, s3, 142
                  xor          gp, s10, s3
                  slt          a6, t6, s4
                  sra          t5, a1, s7
                  xor          s7, t3, s8
                  srai         s6, t1, 26
                  sll          a6, a5, s6
                  ori          s8, a3, 1457
                  or           t3, s11, a7
                  and          t5, s8, ra
                  slti         s8, s5, 1295
                  addi         t0, s9, 1872
                  nop
                  ori          s8, a1, -1071
                  xori         s5, s8, -803
                  auipc        gp, 1003101
                  sll          s0, s0, t1
                  xor          a1, s8, t4
                  srli         s0, t5, 8
                  nop
                  and          t3, s0, a7
                  sltiu        a3, s2, -1589
                  lui          s10, 547335
                  sll          s9, s3, zero
                  slti         ra, t4, -537
                  srl          s0, s6, a3
                  slli         s9, a5, 20
                  lui          t5, 94011
                  sra          a4, sp, t1
                  or           sp, s0, a4
                  srli         a6, t3, 16
                  srai         t4, zero, 31
                  lui          t1, 614048
                  nop
                  and          t6, t5, s6
                  slli         t6, a7, 13
                  nop
                  andi         s8, gp, 982
                  ori          t5, tp, 1272
                  srl          a7, a5, a1
                  and          s2, a5, a2
                  xor          a0, a3, s4
                  xor          s11, ra, a6
                  lui          a4, 162270
                  slti         zero, s1, -819
                  auipc        t6, 151668
                  lui          a2, 473451
                  and          t4, a2, gp
                  add          a2, a5, a6
                  slli         t4, s3, 25
                  or           s7, s11, gp
                  srli         gp, s2, 1
                  sra          gp, t6, sp
                  sub          a1, t3, s7
                  slti         a1, a5, -449
                  srai         t3, s10, 29
                  slt          s7, t1, t3
                  xor          s3, s2, s1
                  xor          zero, t6, tp
                  add          a2, s7, s0
                  sra          a7, tp, gp
                  slli         gp, s9, 16
                  xor          a6, t2, s3
                  xor          a3, a0, t4
                  xor          t4, tp, s1
                  or           gp, t2, a2
                  sltiu        ra, t2, -801
                  srli         t0, t0, 13
                  sltiu        gp, a3, 922
                  srai         a7, s9, 19
                  slti         t3, a1, -230
                  add          sp, s9, gp
                  sub          a3, ra, sp
                  srl          s5, s4, a5
                  and          s6, t5, gp
                  sub          s8, t2, ra
                  lui          t0, 79311
                  and          s0, t5, s5
                  slli         ra, t0, 31
                  lui          gp, 2143
                  srai         s10, s0, 27
                  srai         ra, s10, 11
                  and          a1, t1, t1
                  slti         a4, a3, 884
                  xor          s8, s10, a1
                  auipc        s10, 739363
                  srl          s5, s7, a5
                  sltu         a5, s7, t5
                  sra          s11, t1, t3
                  sll          a2, s5, s10
                  sltiu        a4, s2, -1031
                  sub          a0, a1, a7
                  xor          s9, gp, a4
                  sll          a7, gp, s6
                  slti         a0, a6, 1462
                  slti         a3, s0, 329
                  srai         a0, s11, 3
                  srl          s0, t0, zero
                  sltu         s9, a1, s8
                  srl          a4, s8, a5
                  sra          a3, sp, a7
                  slti         zero, a6, 1052
                  sra          s0, sp, s6
                  slti         s0, t1, -676
                  or           s11, s8, s8
                  sra          t0, a5, s0
                  andi         s8, a1, 1771
                  sra          s2, t4, s5
                  and          s6, s10, s5
                  srli         a6, a0, 5
                  xor          s10, tp, a5
                  sltu         s11, t1, a7
                  and          s4, s4, s7
                  sll          s4, t3, s4
                  sra          s5, ra, t6
                  xor          t5, s4, t6
                  slli         s8, a1, 14
                  auipc        a6, 780057
                  ori          a4, a4, 902
                  andi         s4, tp, -1518
                  andi         a4, t4, 5
                  sll          sp, a1, a4
                  xori         s11, a4, -1787
                  srai         s4, s1, 8
                  srai         a0, t1, 26
                  srai         t5, sp, 26
                  nop
                  auipc        s9, 123585
                  sra          gp, sp, t4
                  slli         a3, a0, 17
                  slti         zero, s4, -1450
                  srli         a7, t1, 26
                  sra          t4, a7, s4
                  or           t1, a1, t6
                  auipc        s7, 621949
                  auipc        s7, 41159
                  sltiu        s8, s11, 145
                  andi         t1, sp, 1331
                  auipc        t4, 210716
                  auipc        ra, 127451
                  ori          ra, t4, 989
                  addi         t6, s3, 1444
                  slt          s9, s10, a4
                  sltu         s8, s5, ra
                  slti         s9, a6, -763
                  slti         s0, t0, -1678
                  sltu         s2, t1, t2
                  or           a0, s2, s9
                  sltiu        a2, s6, -1755
                  srli         s7, s7, 28
                  auipc        s8, 741390
                  nop
                  sra          a4, a0, a4
                  auipc        a6, 485895
                  sll          s0, s8, t6
                  xor          a3, a0, t5
                  srl          gp, s7, tp
                  sltiu        zero, a0, -1584
                  addi         a7, a6, -939
                  slt          t1, s11, s6
                  ori          a1, a6, -1934
                  slti         a2, t0, 1109
                  sltu         s3, s5, t4
                  nop
                  auipc        a2, 850679
                  xori         a1, s4, -261
                  andi         t0, a5, -1687
                  sll          zero, s10, a5
                  addi         s4, a4, -159
                  srl          zero, t4, a6
                  srli         a6, t5, 11
                  sll          s4, a1, zero
                  andi         a2, s10, -897
                  sll          s11, t4, zero
                  slti         s2, a7, 478
                  slli         t1, s7, 26
                  auipc        t1, 31927
                  sra          s11, s9, a4
                  xor          t0, s7, t6
                  srli         a4, a2, 19
                  sll          ra, sp, s1
                  and          gp, t1, a7
                  or           t6, a4, s10
                  srai         s7, a3, 20
                  addi         a5, s7, 1860
                  srl          a0, s9, t2
                  auipc        gp, 312426
                  srl          s10, ra, s5
                  auipc        t5, 605403
                  or           s0, s0, s0
                  xor          s0, s3, s3
                  srai         a0, a6, 23
                  addi         a3, tp, -1482
                  ori          t3, s11, -1646
                  and          ra, s6, zero
                  add          a6, s4, s10
                  srli         t0, a5, 8
                  andi         ra, a0, -1673
                  slt          a4, s10, s2
                  or           s0, a1, gp
                  sltiu        a5, a3, 1436
                  ori          s0, a6, -1037
                  ori          t5, s11, 1745
                  ori          t1, tp, -652
                  srl          a4, a4, s2
                  slt          gp, t4, a2
                  lui          gp, 842670
                  and          s2, t3, a1
                  srl          t1, s3, a6
                  and          a6, a3, t2
                  slli         gp, t3, 10
                  xor          a4, t5, s6
                  xori         a1, s9, 608
                  add          ra, tp, t3
                  add          a2, a2, s9
                  auipc        a4, 695538
                  ori          t6, s0, 1802
                  srli         a2, t5, 30
                  lui          t6, 996499
                  sltu         sp, s9, s10
                  auipc        s9, 170642
                  srai         s10, a6, 29
                  sra          t6, s6, tp
                  srli         ra, t6, 27
                  sub          a3, s1, s5
                  sltiu        t0, t5, -1151
                  xori         s10, s9, 1172
                  xori         t0, a5, 575
                  sltiu        a6, a3, 499
                  slli         s10, ra, 21
                  slli         t1, s8, 7
                  sltiu        s10, t6, 397
                  addi         a2, s2, 1008
                  sub          ra, t4, t3
                  slt          a2, t4, t3
                  srl          a5, s9, a4
                  slli         a5, s5, 23
                  nop
                  andi         ra, tp, -506
                  xor          a6, t6, s6
                  sltiu        s7, s3, 1030
                  sub          s10, s0, zero
                  auipc        ra, 655641
                  slti         a0, a3, 1000
                  and          a1, t2, t3
                  andi         t6, s10, -848
                  sltu         s5, ra, s2
                  addi         s6, sp, 1733
                  or           a7, s0, s1
                  lui          t0, 489766
                  sub          t3, s5, sp
                  srli         t4, tp, 28
                  sub          s6, s5, sp
                  xori         s0, t2, -709
                  xori         gp, s3, -1157
                  slt          a4, a5, gp
                  andi         a5, t3, 1335
                  nop
                  addi         s5, a4, 1248
                  sltu         s0, tp, s10
                  lui          s9, 585145
                  auipc        a0, 129735
                  and          t6, s2, s10
                  andi         t3, tp, 554
                  slli         t1, a3, 9
                  addi         a7, a4, 1262
                  sub          a3, t5, s11
                  sltiu        s4, s8, -712
                  sub          a3, t4, sp
                  and          t6, s5, gp
                  slli         zero, t4, 21
                  slt          s4, s8, sp
                  xor          a2, a7, t1
                  xori         t0, s5, -1548
                  slli         s4, s0, 14
                  xor          s4, t6, s2
                  ori          s3, a3, 469
                  andi         gp, t6, 1172
                  sll          t5, s4, s8
                  or           gp, a0, s4
                  sltiu        s9, s10, -378
                  sll          a6, s7, s5
                  andi         s6, a5, 35
                  sltu         a1, t2, t5
                  nop
                  sltiu        s0, t6, -363
                  andi         s3, s10, 1324
                  nop
                  lui          t3, 548975
                  or           t4, a3, t3
                  sra          s3, a3, a4
                  ori          a2, s2, 1116
                  or           s9, s8, tp
                  sltu         a0, gp, s4
                  auipc        a4, 503256
                  sub          t4, t0, a1
                  sra          s9, a0, s8
                  or           s7, ra, zero
                  slli         s7, a7, 25
                  sra          sp, a0, s3
                  lui          sp, 169097
                  and          s5, t3, t2
                  slt          s5, t2, s10
                  nop
                  or           a4, a4, t2
                  slti         s4, a2, 501
                  srai         s4, sp, 19
                  xori         a1, s9, 1517
                  andi         a5, a7, -756
                  add          a1, t0, s6
                  or           a5, a2, sp
                  sll          a3, a2, zero
                  srl          zero, zero, s11
                  slti         s6, s11, 1533
                  srai         a6, s3, 27
                  and          s4, t6, a1
                  or           a2, t2, a3
                  slt          s8, ra, s5
                  lui          t4, 881919
                  nop
                  nop
                  auipc        sp, 435389
                  sltu         a6, t1, a1
                  sub          s0, a3, t3
                  xor          s4, a1, a3
                  sltu         s7, t1, a7
                  slti         a2, s4, 685
                  sltu         s10, s10, a4
                  xor          t6, a4, ra
                  slt          t1, t3, s0
                  ori          s5, s5, 1257
                  addi         a2, s2, 719
                  xor          a3, tp, t1
                  slt          gp, t2, s0
                  andi         a2, s9, -1192
                  lui          a6, 754439
                  and          s2, t2, a5
                  sub          zero, tp, a5
                  or           a7, a1, s7
                  andi         s2, t1, 258
                  xor          s11, zero, t1
                  xori         s6, s0, -1317
                  or           t4, s5, t5
                  andi         s11, s3, 190
                  auipc        ra, 669479
                  addi         a1, t3, 1074
                  auipc        s4, 6951
                  srai         zero, s6, 18
                  sltiu        s3, s8, -1361
                  sltiu        s9, a3, 303
                  xor          a1, t4, a1
                  add          a0, s5, ra
                  sra          s5, zero, t1
                  addi         sp, s8, 536
                  lui          s7, 566345
                  ori          a5, s1, 497
                  ori          a0, t2, -851
                  slli         t3, t5, 23
                  sub          zero, a6, s10
                  srai         t3, t0, 3
                  sra          s3, t4, s9
                  auipc        t6, 563476
                  or           sp, a2, ra
                  slt          a2, s8, sp
                  sub          a0, gp, a2
                  sub          t6, t6, sp
                  srai         gp, t0, 29
                  sltiu        a4, a1, -1174
                  sra          s4, zero, s7
                  srli         t1, s0, 21
                  or           s5, a2, s4
                  addi         t0, a6, -558
                  addi         a2, a6, 554
                  addi         t0, gp, -1306
                  srl          gp, t5, t2
                  or           a4, t2, a4
                  slt          s10, s1, a4
                  slti         a0, s8, 1089
                  sra          t6, t3, t2
                  sll          a5, s3, s4
                  srl          s9, s4, s11
                  sltu         a2, sp, t3
                  slti         s11, ra, -1152
                  sub          s10, tp, a7
                  srai         a3, s5, 14
                  nop
                  and          t6, s5, s8
                  sra          s3, a6, zero
                  and          t4, ra, a4
                  xori         t5, s2, -1579
                  andi         t5, s0, -770
                  srl          a7, a2, a5
                  sltu         t3, a0, s1
                  srli         gp, a6, 10
                  auipc        a4, 965235
                  srai         s5, s10, 4
                  slti         t5, tp, 1782
                  sll          t1, s5, a4
                  andi         s10, t2, -2033
                  ori          sp, a3, -855
                  addi         s8, s6, -604
                  andi         s9, t6, -388
                  sltiu        s5, sp, 647
                  sll          t4, s4, t1
                  lui          s6, 26332
                  and          s8, a7, t0
                  lui          a2, 788154
                  slt          s2, a2, s11
                  sltu         s4, gp, sp
                  sll          s2, t2, s7
                  srai         t4, a3, 26
                  ori          t1, s11, -132
                  auipc        t4, 826157
                  andi         t3, a6, 50
                  srl          t4, t5, a6
                  xor          s2, a3, a1
                  add          s7, zero, a5
                  ori          s4, s6, -694
                  and          s4, a0, s9
                  add          t3, t3, s10
                  or           ra, t4, t3
                  xori         gp, s4, -536
                  slti         t6, sp, -448
                  or           a5, a5, t3
                  lui          a4, 324466
                  addi         s5, tp, 1524
                  sub          s5, a1, a3
                  ori          t5, t3, 573
                  sub          zero, t2, a4
                  or           a1, s5, tp
                  add          t0, s11, t6
                  xor          ra, a2, t5
                  srl          gp, a4, t3
                  andi         s10, t0, -166
                  xor          t6, s10, tp
                  auipc        zero, 814763
                  sll          s3, t2, zero
                  nop
                  auipc        a1, 420520
                  lui          a1, 676100
                  or           s9, sp, t2
                  srl          s5, a4, s11
                  nop
                  or           s11, s6, a7
                  xori         t3, a1, 1829
                  xori         s8, gp, -1733
                  sltiu        s10, t3, 804
                  slt          t3, s3, a7
                  lui          s4, 504315
                  srl          s4, a2, t2
                  andi         t3, a7, 1825
                  sub          s9, s2, s5
                  or           s7, a2, a2
                  and          a1, a3, s4
                  andi         s0, s5, -618
                  xor          t0, tp, gp
                  xor          s8, t2, t1
                  lui          s11, 131518
                  and          s7, s8, sp
                  and          zero, ra, s0
                  xori         s9, t1, 114
                  srai         s6, a4, 12
                  srli         s7, a4, 8
                  sra          s9, t3, a2
                  addi         s9, s2, -850
                  slt          s6, a3, s5
                  xor          s5, t4, s0
                  sub          a0, s0, a1
                  xori         sp, a6, 1140
                  slti         s8, s9, 1753
                  xor          gp, tp, t4
                  srli         s8, a7, 22
                  andi         s3, a1, 297
                  xor          t1, gp, t5
                  nop
                  addi         ra, gp, -312
                  xori         s7, s10, 162
                  add          sp, a0, s10
                  andi         ra, s1, 412
                  slti         t3, s3, -1195
                  nop
                  sltu         t1, ra, t0
                  sub          s5, s1, s10
                  xori         gp, t0, 1639
                  lui          s7, 1030086
                  ori          a2, sp, 160
                  or           zero, s10, a5
                  sll          s3, a0, t4
                  srai         a3, s1, 10
                  and          s10, s11, s0
                  srai         s10, s6, 16
                  add          t1, a7, a1
                  and          s9, s4, t1
                  sub          a5, a1, s3
                  slti         t4, a2, 360
                  slt          sp, a0, a2
                  addi         a6, s4, 650
                  and          t0, s1, s9
                  srl          a4, a2, s9
                  srai         a2, s8, 5
                  srai         t0, ra, 12
                  xor          a4, t3, a6
                  slti         s10, s9, 922
                  and          s2, a2, s6
                  addi         s5, a4, -1690
                  add          s0, t1, t2
                  addi         t6, s3, 1777
                  slti         gp, t5, 841
                  add          a2, sp, s3
                  lui          a7, 720849
                  and          t0, gp, a4
                  sltiu        s3, a4, -869
                  andi         s10, gp, -1050
                  lui          t1, 17075
                  sra          gp, gp, a4
                  srli         s11, s6, 6
                  ori          a3, a4, -104
                  sll          s9, zero, t6
                  sltu         a3, s10, a4
                  xori         s5, t2, 1259
                  nop
                  slti         t0, t2, 1782
                  slti         a5, s2, -1658
                  sltu         zero, s4, s4
                  auipc        s3, 342243
                  srli         a6, s7, 5
                  or           s3, a2, t4
                  auipc        t3, 890815
                  addi         a1, a0, -1854
                  slt          s3, s3, t0
                  auipc        a3, 496962
                  and          s0, s0, a7
                  add          a6, t4, t1
                  or           s5, a5, s9
                  add          sp, s5, s2
                  lui          s5, 352568
                  sltiu        t0, s0, 1103
                  slt          a7, s10, s10
                  sltiu        gp, s4, -1178
                  srai         a5, t4, 29
                  sltiu        ra, a7, -908
                  srl          a4, s9, s10
                  auipc        s10, 83771
                  auipc        a0, 248462
                  slli         s2, s0, 18
                  and          a1, a5, s2
                  sltiu        gp, ra, 76
                  auipc        a4, 165230
                  srai         t6, s10, 19
                  srli         t6, s11, 24
                  srl          zero, t6, s0
                  xor          a2, s1, a0
                  srl          s11, t1, a7
                  sra          a7, s10, t6
                  sub          t6, s5, tp
                  sra          s0, s9, gp
                  and          t1, s5, t2
                  addi         s0, t2, -1687
                  sll          a1, t6, a3
                  sltu         s4, t4, ra
                  sra          a0, a5, sp
                  sub          s3, s5, s10
                  srl          s7, t3, zero
                  sll          t0, a3, s5
                  srli         s7, a6, 9
                  auipc        sp, 973632
                  srl          t0, t6, s8
                  and          sp, s3, ra
                  sra          s5, gp, t1
                  slti         s4, s3, -1090
                  srli         t0, s7, 2
                  xori         s5, t2, -354
                  slli         ra, tp, 30
                  nop
                  and          t3, a6, a4
                  sll          s3, s5, s3
                  ori          s7, t6, -1309
                  nop
                  slli         gp, s0, 23
                  xor          s3, s8, s2
                  srai         a5, a7, 13
                  and          a1, s11, t1
                  nop
                  xori         a4, a5, -899
                  xor          s3, a5, a0
                  or           t4, a5, a0
                  srai         a0, s10, 25
                  slti         a7, s1, 556
                  addi         s10, t1, 725
                  slli         t1, s9, 26
                  lui          s2, 93429
                  slt          t3, t0, s6
                  ori          s2, tp, 31
                  slli         a3, a4, 15
                  ori          s7, a4, -1629
                  slt          s2, t2, gp
                  xori         s10, s1, -524
                  sub          t5, t1, t4
                  slt          s8, a7, s2
                  andi         t0, s9, -1392
                  slt          a5, s3, s0
                  xori         ra, s1, -846
                  lui          t5, 366357
                  sra          s9, s11, s4
                  sub          s7, a6, a4
                  xor          s9, t6, a2
                  auipc        t4, 82995
                  srl          a3, s1, sp
                  sra          s2, s6, sp
                  slli         a7, a5, 19
                  sra          s7, zero, sp
                  xor          a3, s5, s10
                  sltiu        gp, s2, 562
                  sub          a1, ra, t5
                  sltu         t6, sp, a5
                  ori          t1, s1, -497
                  or           a2, zero, tp
                  slli         s9, tp, 0
                  slli         s9, a2, 1
                  xor          t1, s10, ra
                  ori          s0, t4, 1744
                  sltiu        t6, s11, 488
                  and          t0, ra, s9
                  srl          sp, a0, t4
                  slt          s7, t2, a0
                  sub          a1, a4, s6
                  addi         a1, s2, -1578
                  or           s5, a7, s6
                  sub          gp, a3, tp
                  and          a1, a5, a4
                  xori         s5, a2, 1208
                  xor          a6, gp, t2
                  sub          s7, t5, a3
                  xori         t6, a5, -1137
                  add          s9, s3, t4
                  andi         t0, s5, -1217
                  addi         gp, t2, 124
                  add          t1, s7, a2
                  and          a5, gp, t3
                  srai         ra, a1, 3
                  auipc        a3, 817057
                  sra          sp, a4, a6
                  srli         t1, a1, 4
                  and          s7, t6, tp
                  xor          a4, a7, sp
                  or           gp, t2, s3
                  sltiu        t6, t2, 0
                  addi         a0, ra, -477
                  addi         s4, a2, -412
                  xor          t1, s6, a7
                  slt          s8, t4, a7
                  sub          s2, a2, t2
                  ori          s10, t3, 1432
                  slti         gp, a5, -624
                  srli         s0, s7, 17
                  xori         s6, t5, -190
                  srl          zero, ra, a2
                  sra          a3, a7, s2
                  srai         ra, s0, 10
                  add          t0, t6, s10
                  addi         s6, a5, 930
                  andi         zero, ra, -374
                  sll          s0, s4, a3
                  slt          zero, a6, t3
                  slti         t0, tp, -1088
                  srli         gp, s8, 6
                  xori         s9, t0, 1577
                  sltu         a1, a1, zero
                  sra          s2, zero, s3
                  add          a0, a4, s2
                  sub          s0, gp, s8
                  auipc        s9, 192301
                  sll          t5, t5, a1
                  nop
                  xor          s8, s2, s4
                  nop
                  sltiu        t5, s11, -1149
                  sll          gp, sp, s3
                  xori         a3, tp, 214
                  slti         s4, s6, 1538
                  and          s2, s3, zero
                  auipc        t4, 494594
                  sltu         a2, s11, s3
                  sll          s10, ra, s8
                  slli         ra, s5, 28
                  sll          sp, s2, t2
                  slli         ra, s5, 15
                  andi         t0, t1, -95
                  addi         s3, t0, -1557
                  srl          a5, tp, s5
                  lui          a4, 946223
                  and          s3, a7, s3
                  or           s0, t5, a5
                  srli         s9, gp, 29
                  sltiu        a7, s9, -1914
                  andi         s4, a6, -731
                  slli         sp, s3, 24
                  addi         s7, a2, -1552
                  sll          gp, s4, s4
                  or           t4, s6, t5
                  sra          a4, a6, a2
                  and          t0, t2, a5
                  addi         zero, t4, -853
                  srli         a2, s3, 7
                  ori          t5, t0, 541
                  ori          a6, s7, 291
                  lui          s2, 507928
                  sub          s3, t0, a2
                  andi         t0, t5, 1176
                  xor          a7, ra, t6
                  nop
                  sra          s7, tp, s4
                  sub          s11, tp, s7
                  lui          a1, 964038
                  nop
                  xori         a6, s9, -860
                  and          a6, ra, s7
                  srli         s11, a5, 7
                  srl          a6, s5, s10
                  or           a0, t1, gp
                  sltu         s2, s1, a3
                  nop
                  srl          t0, s5, a7
                  xor          a6, a2, t0
                  srai         t0, s4, 1
                  xor          zero, s9, a3
                  sltu         s7, a3, t4
                  xori         s0, t6, 1719
                  addi         gp, s0, 1334
                  ori          t5, a7, 1486
                  srl          s10, a6, t2
                  srl          s5, t1, s9
                  slti         t0, t5, 530
                  andi         t1, s11, -1941
                  srl          zero, t1, a1
                  auipc        a6, 298679
                  nop
                  and          ra, s7, a4
                  slt          t3, a2, t3
                  sra          s2, a3, s4
                  lui          s5, 363802
                  srl          zero, a0, a1
                  sra          a1, s9, s3
                  srai         s10, t2, 18
                  slli         a5, s8, 13
                  slli         t0, t0, 4
                  addi         sp, gp, -1102
                  or           ra, a1, zero
                  ori          s0, s9, 81
                  sll          s10, s7, sp
                  and          s5, s6, s7
                  srai         sp, t3, 27
                  lui          t3, 516564
                  sltiu        t1, a2, -1250
                  srli         s4, a0, 12
                  srli         a4, t6, 28
                  sltiu        s11, t4, -1392
                  slt          a0, s1, a2
                  sltiu        a4, t4, 784
                  xori         a5, t0, -723
                  sub          gp, s1, s2
                  slti         s11, t0, -1375
                  or           s5, a0, s8
                  srai         s4, a2, 13
                  sll          t5, s5, zero
                  auipc        a4, 94997
                  srai         s8, t5, 14
                  sltu         sp, s9, s1
                  sll          s9, s9, s8
                  ori          a7, s10, -614
                  addi         a4, t1, 1311
                  ori          a6, t0, 1911
                  sltu         s6, t4, zero
                  srai         a7, a5, 23
                  sub          s8, s6, gp
                  lui          s2, 852027
                  sub          zero, t1, a1
                  and          t4, t4, s0
                  xor          a3, s5, s0
                  ori          a0, a0, -837
                  addi         s4, gp, -428
                  slli         s9, s2, 8
                  nop
                  andi         s4, t6, -1595
                  add          s5, t3, a0
                  addi         t5, ra, -328
                  slt          s9, t5, s2
                  and          s4, t2, s11
                  ori          s0, a6, 855
                  or           t6, t4, a2
                  slli         a6, gp, 5
                  slt          s4, ra, s11
                  srai         s5, a2, 21
                  srai         a2, gp, 30
                  nop
                  xor          s4, s4, s2
                  andi         t5, s6, 1130
                  auipc        s9, 1011745
                  sltiu        ra, tp, 1484
                  xori         s11, s5, 911
                  and          t1, t4, s2
                  sll          s4, t5, a4
                  sub          t6, a5, tp
                  sra          t0, t2, s0
                  slt          s7, a5, t2
                  nop
                  slli         s11, t6, 31
                  sltiu        zero, s3, 1792
                  slt          t3, s2, s10
                  or           s7, a7, a5
                  sltu         zero, a7, t0
                  addi         t0, s6, -514
                  xor          a3, zero, s4
                  xori         t0, s8, 789
                  slti         s4, a5, -1269
                  sll          zero, s3, s1
                  sll          t6, t1, a6
                  nop
                  xor          t6, s4, sp
                  sltu         ra, t6, t0
                  xor          gp, a5, s1
                  sltiu        a4, s3, -79
                  slli         s2, s6, 17
                  srai         s4, t0, 15
                  auipc        t0, 240578
                  lui          a2, 298445
                  addi         a0, t3, 1378
                  and          a7, a5, s11
                  addi         s11, s5, 1119
                  auipc        a7, 338068
                  slli         s11, a7, 8
                  xori         s5, a2, 490
                  auipc        a0, 714430
                  sltiu        t4, a0, 1318
                  or           t5, a1, a4
                  slt          t4, sp, s1
                  auipc        a1, 380007
                  srl          s8, tp, s8
                  or           s4, t1, t3
                  auipc        s4, 791917
                  or           a0, gp, s8
                  srai         s0, t0, 23
                  srli         s2, sp, 15
                  sltiu        t3, s5, 372
                  xori         s10, s10, -314
                  or           t1, s3, a0
                  andi         a0, s11, 1086
                  sll          s7, t4, t0
                  sltu         gp, t4, a1
                  sra          s11, s9, s1
                  sll          a4, s8, t4
                  ori          s0, s7, -1613
                  xori         s7, gp, -789
                  xor          s8, a5, t5
                  nop
                  sltu         s2, t5, sp
                  auipc        t5, 375497
                  lui          s10, 798956
                  ori          ra, t0, 486
                  slti         t0, s0, 1198
                  slti         gp, a1, -638
                  srl          sp, tp, s7
                  xori         s11, zero, -538
                  sll          a0, s2, a3
                  auipc        a4, 693645
                  andi         s8, sp, -1529
                  andi         a6, ra, -2038
                  nop
                  addi         s2, s0, -302
                  ori          a2, t5, 1546
                  andi         a3, a3, -373
                  addi         s7, a0, 750
                  andi         s6, t5, 1450
                  sltiu        a2, t2, 1
                  srl          a1, t2, s11
                  ori          t0, t4, -1753
                  add          s0, gp, s3
                  or           s4, s9, a5
                  andi         t0, gp, 422
                  srli         s0, t1, 10
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s4, 0xa0dee501
                  li           s6, 0x0
                  li           a0, 0xd7628062
                  li           t6, 0xffffffff
                  li           t1, 0x2737859b
                  li           gp, 0xffffffff
                  li           sp, 0x80000000
                  li           s5, 0x80000000
                  li           s2, 0x0
                  nop
                  sub          a0, a0, gp
                  addi         s5, s5, -94
                  nop
                  nop
                  sub          s6, s4, s5
                  auipc        t6, 218836
                  lui          gp, 482696
                  add          t1, t6, a2
                  sub          a0, a2, s2
                  sub          t6, t6, s4
                  lui          t6, 723291
                  nop
                  lui          s4, 793686
                  add          sp, t6, a2
                  lui          s5, 8702
                  auipc        t6, 256380
                  auipc        s6, 92637
                  auipc        t6, 425142
                  lui          a0, 500093
                  add          t6, gp, s2
                  auipc        s6, 43467
                  auipc        t6, 596656 #end riscv_int_numeric_corner_stream_2
                  srai         a7, a3, 20
                  sltiu        s2, a6, 1691
                  slt          s9, a7, a5
                  and          t4, t0, s3
                  xor          s0, a0, a3
                  sra          zero, t2, a7
                  add          a1, a0, zero
                  ori          ra, a2, 458
                  xor          t6, t0, s10
                  slti         s7, tp, -651
                  slt          a7, a2, s6
                  andi         t0, a3, -1628
                  sltu         a4, s2, a6
                  sltu         gp, t3, t0
                  srai         s6, s10, 21
                  auipc        zero, 459202
                  srl          t1, s3, s2
                  and          s8, s6, t5
                  sub          s4, s1, s2
                  slti         s7, s5, -828
                  lui          t5, 220543
                  slt          t6, s0, s2
                  sltiu        a4, s3, -528
                  sltu         t5, a2, s11
                  sub          t0, s10, s0
                  srli         s10, a5, 26
                  slli         t1, tp, 12
                  add          a5, gp, t0
                  lui          a0, 216817
                  slli         a7, s3, 7
                  sltu         t0, s5, a0
                  sltu         t1, a3, s9
                  ori          a7, s9, 1141
                  srl          sp, a3, s5
                  nop
                  xor          a5, a1, t6
                  sub          t1, t1, s4
                  srl          s5, t0, a4
                  andi         t3, s0, -1502
                  sub          a5, a0, a6
                  srli         zero, zero, 30
                  ori          t6, t4, -1567
                  lui          ra, 904988
                  and          gp, zero, s8
                  sra          a5, a5, s4
                  and          s5, s0, a2
                  slli         t1, s4, 4
                  slt          a0, s10, t0
                  srli         s3, s0, 26
                  slli         t3, t4, 2
                  add          s10, a0, s6
                  and          s11, s6, s6
                  srai         a5, a0, 9
                  sltiu        a5, a4, 1758
                  andi         s0, a2, 366
                  sub          a3, t4, gp
                  lui          s7, 389937
                  xori         a5, s0, -2
                  addi         s9, a2, -77
                  sltiu        a2, gp, -942
                  xori         sp, a7, -1662
                  sltu         s0, zero, s8
                  add          a0, a0, a7
                  slti         s11, t6, -1113
                  srai         s10, s2, 23
                  addi         s9, s10, -1243
                  srl          s0, t3, s11
                  sub          sp, t1, a2
                  sra          a5, t0, a7
                  sltu         a0, tp, t5
                  sll          a7, a4, s5
                  sra          zero, s10, s11
                  sub          a3, s9, a7
                  sra          ra, s10, s1
                  srai         ra, t5, 10
                  sra          a3, s2, a7
                  andi         s10, a5, 1035
                  srli         a4, t4, 24
                  srli         s2, a5, 19
                  nop
                  or           t1, s10, a5
                  xori         s3, sp, 968
                  xori         gp, s5, 1395
                  add          zero, zero, s0
                  srli         s6, a3, 0
                  sltu         t3, s3, s9
                  lui          a1, 604181
                  sub          a3, a2, tp
                  add          a7, a5, s9
                  srl          a5, a7, t2
                  andi         s5, a7, -1307
                  slt          s3, t3, t6
                  sra          sp, a5, a0
                  addi         zero, a0, -799
                  nop
                  sub          t5, t2, t2
                  sll          s2, a7, s4
                  srli         zero, tp, 25
                  lui          a5, 187493
                  addi         a5, t1, 1666
                  add          s8, t4, t1
                  andi         t0, tp, 1996
                  sll          t0, a2, a7
                  slt          t1, sp, t1
                  srai         s10, a2, 7
                  lui          s4, 777180
                  srai         t0, zero, 26
                  xori         a0, s2, 1106
                  xori         s11, t2, -1967
                  auipc        t1, 79659
                  or           a5, tp, s9
                  nop
                  and          s10, s0, t1
                  sltiu        t1, a2, 1155
                  andi         s3, t5, -168
                  xor          t6, a6, s3
                  sll          a3, s3, a1
                  auipc        t0, 76663
                  lui          zero, 229035
                  slt          a1, a7, s7
                  sub          s3, s2, zero
                  xor          t6, s4, t0
                  sub          s4, s4, s2
                  sra          s6, t3, t6
                  or           a4, t6, a3
                  sll          s0, t3, s7
                  sra          zero, zero, s7
                  addi         a0, s9, 546
                  sltiu        s4, a1, 1560
                  lui          a1, 3025
                  or           a1, t0, t2
                  or           t1, s8, zero
                  addi         a3, s3, 226
                  slt          zero, s9, s7
                  sltiu        s8, a1, -1397
                  sltiu        t4, t5, 528
                  addi         s3, ra, 308
                  srai         a3, a4, 2
                  auipc        a7, 923938
                  sltiu        t0, s0, -740
                  slt          s4, ra, a7
                  sra          t6, s0, a3
                  sra          a3, s9, t3
                  srai         s11, s0, 7
                  nop
                  srli         t4, s7, 13
                  xori         sp, s11, -970
                  andi         s6, s2, -1375
                  ori          s3, s9, -606
                  slti         t6, s2, 727
                  sll          s8, s1, s4
                  sltu         a5, s6, s8
                  sra          s2, s10, ra
                  or           ra, s10, a1
                  sltiu        a4, s5, -968
                  slt          s0, a4, a2
                  sltu         t1, a0, sp
                  sra          zero, t5, s0
                  srl          a3, s9, a3
                  sltiu        t1, s2, -1745
                  srl          s2, s7, t6
                  sub          s5, t6, a2
                  xori         a5, a6, -1365
                  slti         s10, s3, 756
                  add          zero, a5, s1
                  srl          ra, t3, s1
                  andi         s9, a5, -2007
                  andi         s3, s6, 301
                  sltu         s9, s9, ra
                  srl          s4, zero, ra
                  auipc        s5, 219386
                  slti         a1, s1, 1683
                  sll          s11, a5, a7
                  and          s6, s7, a2
                  sll          a5, gp, a7
                  lui          s4, 633400
                  sltu         s7, a6, a7
                  sub          zero, t1, s4
                  slti         t4, a3, -102
                  add          s3, s3, a0
                  add          a3, a1, s4
                  sltiu        zero, s11, -1606
                  xori         sp, s8, 893
                  srl          sp, a6, zero
                  xor          s11, a4, t4
                  sltiu        a1, s4, 536
                  sra          a3, a6, t2
                  andi         s8, t0, 32
                  lui          t0, 473468
                  slt          a5, t6, ra
                  or           s8, s8, gp
                  sll          s2, a5, s6
                  slti         a3, a2, -1561
                  xori         s10, a5, 959
                  nop
                  srli         t1, s2, 3
                  sltiu        a3, s7, 197
                  xori         ra, sp, -681
                  sltu         s0, a7, s10
                  srl          s5, t3, t3
                  or           s3, t1, tp
                  and          t0, t5, s5
                  slti         s10, a4, -1831
                  ori          a0, s10, -1179
                  sll          s8, s5, a3
                  slt          s0, t1, t6
                  and          t6, a2, zero
                  slti         s4, t0, 1618
                  slt          sp, a5, t1
                  sltu         s7, t2, t6
                  sltu         s10, t6, s6
                  sll          t1, s10, s8
                  xor          s9, a6, s8
                  xor          s10, s2, t5
                  lui          gp, 204989
                  lui          t0, 924910
                  srl          zero, s11, s9
                  andi         sp, s10, 1046
                  lui          t1, 245703
                  andi         a4, tp, -571
                  ori          s4, s11, -1792
                  xori         t1, t0, 571
                  andi         t6, a7, -1513
                  srai         ra, a3, 13
                  srai         a4, a2, 9
                  and          s2, t0, s8
                  sra          s7, s0, s2
                  slti         zero, s4, -786
                  srai         s10, s10, 17
                  or           t1, t3, s7
                  add          a2, zero, t4
                  andi         a3, a3, 706
                  slt          a2, s5, s1
                  srai         s7, s1, 28
                  srli         s4, t5, 20
                  sltu         s5, s7, s7
                  sra          t0, sp, sp
                  slt          t5, t0, a0
                  sll          a3, t0, t2
                  addi         s9, t2, 782
                  sltiu        t3, s3, -69
                  slti         s9, s3, -433
                  sra          zero, a7, sp
                  srli         t0, s10, 22
                  nop
                  srai         t4, a7, 25
                  sra          a5, t3, tp
                  sub          s10, t6, a3
                  sra          gp, s1, t1
                  nop
                  srl          s7, t2, s3
                  xor          t1, ra, s1
                  sra          t3, a4, s2
                  or           s10, s10, s8
                  add          t3, t4, a6
                  sub          t3, a5, t2
                  sll          s6, s4, t2
                  sltiu        sp, zero, -269
                  srl          s0, t2, gp
                  andi         a4, a1, -1067
                  auipc        a0, 762030
                  srl          a6, s1, s11
                  or           s8, t1, zero
                  xori         s6, t5, 1196
                  slti         s5, s2, -1790
                  lui          s8, 61019
                  xori         s2, zero, -251
                  sra          a2, a2, s0
                  lui          s10, 617591
                  srl          a0, t1, s10
                  or           a3, s7, t5
                  srl          t0, t4, a2
                  srli         s6, zero, 15
                  or           s2, sp, zero
                  sltiu        s2, s0, -647
                  addi         gp, s3, -614
                  slti         t1, s10, 343
                  xori         s9, a1, 1165
                  add          t5, a4, t3
                  slli         s3, t0, 20
                  nop
                  or           t0, s1, t4
                  lui          a5, 307312
                  srai         a3, ra, 18
                  srai         a5, s8, 25
                  sll          s6, sp, a7
                  sll          s10, s7, t2
                  and          t4, a0, s11
                  slti         t1, t6, 1234
                  srli         a6, tp, 26
                  slti         s11, s5, 623
                  sltu         s4, t3, t1
                  sltiu        s5, a3, 356
                  sltu         ra, a4, a7
                  ori          t4, s2, 1548
                  andi         gp, s2, -1261
                  srli         s2, s2, 24
                  addi         a2, s9, 1652
                  sll          s6, s1, t3
                  sra          s4, s9, s0
                  ori          a3, s2, -1646
                  sra          ra, sp, t6
                  andi         s2, a4, -640
                  xori         a5, a5, -220
                  nop
                  or           sp, s3, a6
                  slt          gp, t4, s8
                  addi         s0, s10, -1110
                  or           s7, gp, t1
                  lui          a1, 992018
                  sltiu        s11, s10, -1334
                  xor          s0, s9, s9
                  slli         a2, s1, 22
                  xor          t4, sp, gp
                  nop
                  or           s0, s3, s4
                  sub          s7, t0, gp
                  and          s4, t2, a7
                  nop
                  add          ra, s9, t5
                  and          s0, a3, a1
                  slti         a2, s1, 576
                  auipc        a0, 382185
                  sub          a2, s11, s3
                  slli         t0, t6, 6
                  slti         a3, s11, -70
                  srli         t6, t5, 6
                  srai         a7, ra, 9
                  sub          t1, sp, a0
                  add          s4, sp, t2
                  srai         s4, t1, 4
                  auipc        sp, 961785
                  srli         t5, s1, 21
                  sltiu        a1, t3, 409
                  andi         a0, t0, 1868
                  add          gp, zero, s5
                  sltiu        s11, a7, -653
                  sub          gp, s4, ra
                  srl          a2, a0, a0
                  add          gp, t6, t0
                  sra          s10, a3, a3
                  srai         s9, t2, 20
                  slti         s0, zero, -981
                  add          t5, s7, s7
                  slt          sp, a4, a0
                  xori         t4, a5, -313
                  sltu         a4, t1, sp
                  slli         s2, s7, 31
                  srl          s10, s5, zero
                  andi         s10, t6, 1783
                  slti         ra, s10, -456
                  add          sp, ra, s0
                  auipc        t6, 968389
                  srl          t5, tp, a7
                  or           a5, s2, a5
                  andi         sp, t3, 868
                  slt          t0, s9, s5
                  srl          t4, s0, gp
                  slli         s11, a0, 24
                  sra          a3, s4, s10
                  srai         ra, s2, 0
                  auipc        a3, 718661
                  srli         s6, tp, 25
                  nop
                  sltu         ra, a6, s7
                  slli         s10, t3, 29
                  srai         a6, s9, 28
                  nop
                  andi         s6, a0, 1801
                  and          s8, a5, s5
                  ori          ra, t3, -1701
                  slt          t0, a5, t2
                  lui          ra, 1003050
                  xori         t1, s1, -305
                  andi         a4, a1, -224
                  xori         ra, s7, 1960
                  or           s6, t2, t6
                  addi         ra, sp, 1397
                  sra          t5, s10, a4
                  slt          s11, ra, s0
                  xori         a2, gp, 1160
                  sltu         t4, gp, s6
                  slli         ra, s0, 19
                  or           s6, ra, t4
                  sub          a2, s1, a6
                  xori         s2, t6, 2013
                  srli         t1, a4, 23
                  sra          t4, a0, s2
                  sltu         s10, t4, s9
                  sra          t0, a1, a3
                  andi         t3, sp, 1133
                  or           s3, t0, s5
                  auipc        a0, 203929
                  slti         t6, tp, 1336
                  sltu         gp, s2, s4
                  sra          s11, zero, s10
                  srai         a7, t3, 28
                  andi         t4, t6, -1552
                  slli         t4, a4, 17
                  sub          t1, s8, s7
                  sltu         s0, gp, t0
                  sll          s2, sp, a7
                  andi         a0, a7, -105
                  sra          sp, gp, sp
                  sltiu        t4, s2, -1692
                  slti         s5, s8, 1633
                  or           a1, t2, s2
                  andi         s10, zero, -621
                  srai         s4, a2, 28
                  lui          gp, 909173
                  sra          s7, s2, a7
                  sltu         a4, s9, a2
                  addi         a2, t0, -523
                  sra          s7, s4, s1
                  ori          s7, a3, -1323
                  srai         s6, s9, 9
                  srli         a3, tp, 12
                  and          s7, t0, a1
                  srli         s3, s11, 12
                  slt          a5, gp, a5
                  sra          a3, tp, tp
                  andi         a1, t3, 1206
                  sll          a0, a5, a2
                  ori          a5, ra, -649
                  andi         s10, s6, 1568
                  and          t4, t2, gp
                  sll          zero, t6, s1
                  xori         s9, a6, 1386
                  or           s5, s5, s6
                  sll          a1, s5, t3
                  sltiu        s10, a3, 661
                  ori          t6, a4, -11
                  and          a3, tp, a3
                  sra          a5, gp, s11
                  slti         t1, a7, 1916
                  slt          s8, s8, t1
                  slli         t1, t4, 5
                  or           zero, gp, s2
                  andi         s10, a1, 203
                  ori          s3, a3, 778
                  slt          t3, s4, sp
                  sll          a6, sp, s3
                  sll          s4, s4, gp
                  sll          s2, ra, a2
                  slti         sp, t2, 257
                  slli         a4, s1, 28
                  xor          t0, s1, a4
                  slli         a2, a6, 5
                  xori         a2, a0, 1634
                  srli         s4, gp, 8
                  add          s7, a6, s10
                  sub          t4, gp, s10
                  sltu         s3, gp, t3
                  slt          s5, a4, t2
                  sltu         s7, sp, s3
                  srai         t0, t2, 3
                  sltiu        t4, s1, -1664
                  slti         s11, gp, 741
                  auipc        ra, 913711
                  slli         a1, s10, 6
                  ori          a1, s2, 729
                  sltiu        s3, t3, 1580
                  slt          ra, t4, s10
                  srai         t5, t3, 24
                  or           s9, t1, s7
                  addi         s4, s10, -117
                  nop
                  sub          s11, s7, s1
                  xori         a2, s5, -772
                  sltiu        s7, tp, -218
                  slli         a4, tp, 23
                  nop
                  addi         s10, zero, 1065
                  slt          t4, s9, t0
                  andi         a5, a6, -242
                  srai         a5, a7, 26
                  and          a2, s8, t6
                  srai         s0, a4, 9
                  slli         s0, t0, 4
                  and          s4, s1, s9
                  auipc        s11, 236375
                  sll          a4, a1, a1
                  ori          ra, s4, -127
                  andi         s0, t0, 1748
                  add          ra, t5, a0
                  srl          s3, zero, zero
                  add          s5, sp, t5
                  and          a7, s8, s10
                  sltu         a0, s7, a0
                  nop
                  nop
                  or           a1, t4, gp
                  sltu         sp, s7, s5
                  sub          ra, s0, a0
                  sltu         t1, s9, t4
                  slt          s5, tp, s10
                  sll          a1, a0, a7
                  sll          s7, t5, a4
                  slt          a0, a6, s0
                  sub          s0, t5, ra
                  sub          a0, a3, s2
                  sub          a0, s10, a3
                  ori          zero, t0, -76
                  slt          t5, t2, s2
                  and          s3, t5, a1
                  add          s2, s8, t4
                  or           s6, s2, s6
                  slli         s2, t4, 1
                  add          s5, tp, ra
                  auipc        s11, 850188
                  slt          a6, t3, zero
                  xori         s6, a2, -1792
                  auipc        a3, 52433
                  srli         s8, s7, 6
                  srli         t0, s3, 5
                  lui          s2, 76811
                  andi         s9, a6, 793
                  sra          t3, s9, a7
                  srl          s9, s7, s11
                  xori         a1, gp, -1610
                  srl          t1, t1, s0
                  add          s11, a7, s10
                  srai         s2, t3, 7
                  add          t1, a0, s8
                  ori          s7, a3, 1833
                  andi         s4, t0, 1671
                  addi         a7, t6, 618
                  and          a4, a2, t5
                  sra          s0, s6, a6
                  ori          s9, t4, 1688
                  srli         s10, s3, 21
                  xori         a1, gp, -1227
                  xor          s11, a1, tp
                  lui          s3, 50334
                  lui          t0, 967255
                  ori          s7, a4, 543
                  slti         t0, s5, 1824
                  auipc        t5, 339996
                  andi         t4, s9, 1600
                  nop
                  add          s4, tp, s7
                  slt          a5, t1, t2
                  add          t0, gp, t3
                  srl          t0, t6, t2
                  lui          zero, 938599
                  add          s9, s4, s6
                  sltu         a1, gp, zero
                  addi         zero, gp, -1163
                  slt          a4, t3, t5
                  nop
                  sltiu        a0, a0, 410
                  ori          a2, a0, 999
                  srli         t1, t1, 19
                  sltu         a2, t2, t6
                  sltiu        a4, s6, 955
                  lui          a0, 699162
                  xor          sp, a0, t3
                  add          s0, a4, tp
                  srl          s0, a0, t3
                  lui          sp, 117313
                  and          t5, s9, zero
                  sra          s10, a3, a0
                  sltiu        a7, t1, -1122
                  auipc        a7, 496826
                  srai         t0, a3, 16
                  sltu         a4, s2, a1
                  srli         t0, a6, 12
                  xori         s10, s2, -1868
                  lui          s7, 493804
                  lui          t3, 247842
                  srl          zero, a1, a1
                  sltiu        a0, s5, 208
                  srli         zero, a2, 18
                  srai         t3, zero, 23
                  srli         t0, s3, 21
                  addi         s4, s8, -1283
                  xor          zero, s3, sp
                  srli         zero, a7, 16
                  sub          s8, s1, gp
                  and          ra, s4, zero
                  lui          t5, 389213
                  sll          a0, a6, tp
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           t5, 0x4aedf7e
                  li           a7, 0x4cd5f19e
                  li           t3, 0xffffffff
                  li           t0, 0xffffffff
                  li           a4, 0x80000000
                  li           s2, 0x0
                  li           s10, 0x80000000
                  li           a1, 0xf24cd185
                  li           s3, 0x0
                  add          a4, t1, a4
                  auipc        s2, 794708
                  auipc        a1, 473477
                  auipc        a7, 518357
                  auipc        t0, 250372
                  sub          t5, t1, a7
                  auipc        t1, 57162
                  add          t1, t3, a4
                  add          t3, a4, t0
                  add          a4, s2, a1
                  addi         t1, t5, 636
                  addi         a1, t0, 228
                  lui          a4, 88843
                  add          s3, t3, a1
                  lui          a1, 182267
                  auipc        s2, 724427
                  addi         s3, a1, 385
                  sub          t1, t3, t0
                  add          t0, t3, a1
                  add          s3, t3, a7
                  add          s2, a1, a7
                  lui          t1, 1031876
                  sub          s3, s3, t0 #end riscv_int_numeric_corner_stream_27
                  auipc        t1, 874156
                  auipc        a4, 891437
                  lui          s7, 471821
                  sub          t3, a5, gp
                  slli         zero, zero, 28
                  srai         s10, a7, 16
                  sltiu        a6, t2, 1803
                  slti         zero, a1, -521
                  slli         zero, ra, 5
                  and          s2, a6, a1
                  add          t4, a1, s5
                  slli         t6, t3, 9
                  sll          t4, a3, s6
                  xori         s2, s7, -408
                  xori         a4, a4, 1202
                  or           s6, s5, gp
                  sltu         s4, t5, t3
                  srl          s9, a3, t0
                  lui          s4, 498892
                  slt          s0, t5, s2
                  auipc        t3, 743466
                  slt          t6, t3, t6
                  sltu         sp, t0, s11
                  auipc        a7, 597602
                  sltu         s11, t0, s11
                  andi         s0, s1, 1495
                  or           gp, s5, a5
                  add          s10, zero, t1
                  sub          t0, t2, s2
                  nop
                  sltiu        s8, t2, 76
                  sltu         gp, gp, a7
                  auipc        zero, 778057
                  nop
                  and          t3, gp, s5
                  lui          gp, 265512
                  sltiu        a2, zero, -580
                  sll          a1, t0, sp
                  add          s0, a3, t2
                  sra          t4, t2, s4
                  srai         s6, tp, 18
                  addi         gp, tp, 1107
                  sub          s7, a4, s1
                  sll          s2, s11, a6
                  sub          t6, a2, s1
                  slli         t0, s10, 1
                  sltu         s4, s7, ra
                  add          ra, ra, t4
                  sra          s6, s4, a7
                  sll          zero, a5, a2
                  sll          s4, s5, s11
                  andi         s3, a4, 1186
                  nop
                  slt          s9, s5, tp
                  addi         s10, s8, 1858
                  sra          s0, s1, s3
                  slli         s9, s11, 8
                  lui          sp, 732543
                  auipc        s4, 256831
                  lui          gp, 918764
                  slti         t3, s8, -1201
                  ori          t1, s6, -98
                  sltiu        a5, t1, -2048
                  add          t4, a3, s4
                  slli         sp, sp, 1
                  srl          t5, s1, t5
                  or           s8, a5, s8
                  xori         t0, s0, 1406
                  add          t6, s6, s1
                  lui          a1, 875586
                  sltu         s8, s11, a5
                  srai         s10, t4, 8
                  sra          t0, a7, a6
                  srli         ra, a1, 19
                  slt          s3, a5, t5
                  sub          s10, s0, s6
                  addi         s6, ra, -865
                  nop
                  sll          a6, a6, tp
                  xor          a2, t1, s2
                  sll          s2, a3, s9
                  add          a7, t4, s5
                  add          s2, ra, s1
                  sltu         a2, s2, t5
                  xori         t6, t5, -618
                  and          a6, a1, t4
                  slt          s9, s6, a7
                  andi         s9, t6, -483
                  nop
                  add          s9, s8, s4
                  srl          s7, a4, a5
                  slti         sp, s6, 2006
                  sra          t6, t2, a1
                  sll          a1, a6, s9
                  auipc        s8, 310317
                  xor          s3, gp, s6
                  addi         s5, s3, 111
                  and          s8, s0, a2
                  ori          s0, s6, -67
                  add          sp, s11, s10
                  slti         ra, s7, -1735
                  sltu         t1, t6, s10
                  andi         t5, s6, -189
                  sltu         s11, a5, a3
                  slt          a3, s4, a0
                  xori         t6, a5, 287
                  ori          t5, gp, 63
                  srai         s5, a7, 5
                  sra          s11, s1, gp
                  slti         s5, ra, 1847
                  slt          s5, s9, a7
                  andi         s4, a4, 101
                  sll          s4, s7, a2
                  srl          gp, s6, zero
                  sltiu        a2, s2, -152
                  sll          a7, a0, t1
                  nop
                  sltu         zero, s0, t1
                  or           s10, t5, a7
                  sub          a1, a7, s6
                  nop
                  slti         t4, a5, 822
                  xor          s10, a5, t6
                  xor          a7, s4, s9
                  srl          gp, a5, ra
                  sra          a7, s6, t3
                  lui          a7, 697119
                  ori          s9, t6, -1581
                  or           s7, s2, tp
                  sltiu        s2, tp, 29
                  sltu         s0, a6, t5
                  sltu         s0, a0, tp
                  ori          s4, t5, -1352
                  srai         s11, t5, 11
                  srai         zero, s1, 14
                  or           s2, s3, ra
                  sra          s0, tp, s8
                  addi         t6, zero, 447
                  srli         t4, a4, 26
                  andi         a4, t5, -979
                  sra          t5, a5, t3
                  sltu         s3, s6, t5
                  sll          t5, sp, s10
                  auipc        s3, 451602
                  or           s4, t6, t1
                  srli         a3, t4, 14
                  nop
                  nop
                  slt          a3, a1, s4
                  add          s9, s5, a6
                  sub          s4, zero, a4
                  sltiu        s5, t0, 1948
                  ori          s0, a7, 1718
                  auipc        s11, 100670
                  slli         a1, ra, 30
                  li           t4, 0xe4f5fca6 #start riscv_int_numeric_corner_stream_23
                  li           s6, 0x80000000
                  li           t5, 0xbb927397
                  li           s5, 0xffffffff
                  li           a4, 0x5175a6f2
                  li           s10, 0xffffffff
                  li           s11, 0x80000000
                  li           a7, 0xffffffff
                  li           a1, 0x80000000
                  li           s9, 0x80000000
                  addi         a1, a1, -1135
                  auipc        a4, 965240
                  auipc        a4, 335885
                  nop
                  add          a1, s10, s11
                  nop
                  lui          t4, 621516
                  add          t4, s6, a4
                  addi         a4, s5, -644
                  nop
                  lui          a4, 233185
                  nop
                  auipc        t5, 822300
                  nop
                  auipc        s10, 881705
                  auipc        s10, 1029033
                  nop
                  sub          s10, a1, t5
                  add          t5, t4, s6
                  add          s5, a4, a1
                  add          a7, t5, s11
                  sub          a7, s10, s9
                  nop
                  auipc        s9, 959889
                  auipc        s11, 338945
                  add          t4, t4, a4
                  lui          s11, 336595
                  addi         a4, t4, -1179
                  add          a7, t4, t4 #end riscv_int_numeric_corner_stream_23
                  slt          t1, t0, a7
                  srai         s7, s2, 7
                  srli         zero, s5, 10
                  slti         gp, a3, -576
                  andi         a5, s7, -1341
                  auipc        s8, 948326
                  sub          sp, tp, s3
                  and          s8, a5, zero
                  sll          s0, gp, sp
                  xor          a5, t5, s9
                  srl          s2, a5, t3
                  add          a2, s0, t4
                  auipc        s2, 519985
                  and          t1, s11, a5
                  sltiu        s4, s8, -1592
                  xori         t1, t4, 1397
                  sll          a3, a6, t6
                  sub          a5, a0, t0
                  and          gp, a1, t3
                  andi         a3, s1, -1183
                  sra          a6, ra, t3
                  xori         a4, gp, 1173
                  sltiu        s6, s5, -1347
                  andi         a1, s5, 683
                  srl          t5, s4, sp
                  andi         s6, s9, -576
                  andi         s0, s0, 1183
                  srl          a6, a5, t2
                  sll          t6, t1, a6
                  srli         s0, s6, 10
                  auipc        a1, 78110
                  slli         s11, s2, 14
                  sltu         zero, s10, s2
                  srl          a1, a5, t5
                  sltiu        s3, t2, -110
                  slli         a5, zero, 0
                  sltu         t4, s7, a6
                  andi         s6, zero, 1557
                  or           s0, t2, s7
                  srl          s5, sp, t1
                  slti         s0, a4, 833
                  add          a2, t1, t2
                  auipc        s5, 302411
                  lui          ra, 742201
                  slt          a3, ra, s10
                  slt          s8, tp, sp
                  sll          a3, tp, s2
                  slli         s6, s5, 3
                  slli         ra, s4, 11
                  slti         a3, zero, -296
                  addi         s5, t4, -2014
                  sll          ra, a4, a4
                  andi         s5, t0, 1690
                  addi         t1, t6, 133
                  or           zero, s6, s0
                  xor          a6, a4, s0
                  lui          a3, 29485
                  sltiu        a4, a6, -1044
                  or           a1, s8, s6
                  xori         a6, a6, 371
                  slti         a1, zero, 1435
                  andi         t6, s1, 1758
                  sll          a7, a3, a3
                  lui          t1, 664613
                  and          ra, t1, a4
                  andi         t0, s1, 171
                  slt          s6, t1, s9
                  sltiu        s4, s9, -1163
                  add          t0, t5, a3
                  lui          a4, 774326
                  lui          a5, 446513
                  sub          t0, s0, zero
                  slti         a3, t3, -803
                  addi         a1, s2, -175
                  srli         gp, a1, 18
                  or           a2, s0, s1
                  slti         t5, s3, 982
                  sub          a7, s2, a3
                  srl          a5, a4, s5
                  sra          a2, s6, a7
                  srli         zero, a3, 14
                  sll          s0, s6, t3
                  xor          t6, s11, tp
                  sub          t4, a3, t1
                  nop
                  slli         gp, a7, 24
                  sll          t0, t5, s8
                  sub          zero, s8, s5
                  sltiu        a4, s10, -127
                  srl          s5, s8, s2
                  addi         a2, zero, 1077
                  ori          t6, a0, -1083
                  xori         a5, s7, -1275
                  sltiu        s5, gp, -1856
                  slti         s0, ra, -1749
                  sll          a3, s4, a3
                  xor          a1, a2, t6
                  addi         ra, zero, 899
                  xori         a0, s0, 631
                  addi         s9, a1, 147
                  nop
                  and          a5, s9, s5
                  sltu         s9, s2, a5
                  sra          s3, s8, ra
                  slt          gp, s11, sp
                  ori          s3, a5, -532
                  nop
                  addi         a4, a2, 1315
                  nop
                  sltu         t5, t2, s7
                  xor          t1, tp, t4
                  andi         sp, s6, -866
                  andi         a6, a3, 2011
                  srai         gp, zero, 6
                  sltiu        s2, gp, 2015
                  lui          s7, 245684
                  addi         ra, gp, 380
                  sub          s6, a2, s10
                  and          t3, a3, s5
                  slti         s4, s0, -849
                  slti         a2, a0, 325
                  nop
                  ori          t5, zero, 1295
                  sltiu        t0, s1, 262
                  srai         s11, s1, 31
                  or           s3, s5, s10
                  sra          t0, a5, s10
                  or           zero, t2, s9
                  addi         s7, t1, 165
                  srl          a7, ra, s6
                  srli         t3, t6, 4
                  ori          t0, zero, 1896
                  add          a0, t2, s5
                  slli         sp, a7, 17
                  slti         s2, a0, 1895
                  addi         a5, t6, 134
                  xor          t6, t4, s7
                  add          t1, a4, sp
                  sub          s5, a6, s3
                  srl          s2, t6, gp
                  andi         t3, s4, -344
                  sub          s7, s5, s11
                  srl          t5, t4, s2
                  sub          t1, a7, t3
                  sub          ra, s0, s3
                  srai         a3, t1, 6
                  srli         s8, t4, 25
                  sub          gp, a1, t5
                  xori         s4, tp, 1890
                  or           s5, s6, t6
                  or           zero, s1, s11
                  slli         s9, s11, 30
                  srli         a5, s11, 30
                  srai         gp, a3, 24
                  sra          a2, s10, t6
                  nop
                  nop
                  slt          s0, t6, s6
                  srai         s3, t3, 29
                  slti         a2, s6, -1775
                  slli         t6, t0, 13
                  sltiu        a2, s1, 865
                  slt          s6, s5, tp
                  sub          t6, s6, s3
                  srli         s0, s8, 29
                  and          a4, t6, ra
                  addi         gp, s4, -1800
                  slti         a6, t2, -849
                  slti         s2, s9, -1508
                  xori         s6, t4, 453
                  srli         sp, s0, 19
                  slti         t4, t3, 1828
                  srai         sp, t4, 16
                  and          s5, s6, a1
                  sltu         s6, gp, s8
                  ori          s5, s0, 2040
                  xori         sp, s9, 670
                  andi         a1, ra, -2038
                  add          s2, a4, t6
                  andi         ra, s8, 986
                  slt          a5, s10, s6
                  srai         s3, t6, 22
                  lui          a7, 635179
                  sub          sp, a2, t0
                  addi         sp, a4, -1659
                  andi         s8, zero, -334
                  sub          t0, s9, zero
                  slt          ra, s5, s1
                  sltu         a6, a1, a7
                  or           s3, s10, s0
                  slti         sp, s5, 1655
                  slli         a7, s9, 6
                  srl          t0, a6, ra
                  slt          a6, s3, t5
                  xori         s9, gp, -404
                  sltu         zero, sp, gp
                  sltiu        s6, a7, 243
                  srai         ra, gp, 11
                  lui          s11, 691430
                  slli         s4, a6, 24
                  xor          ra, t2, tp
                  srai         s5, s11, 12
                  srai         ra, t2, 27
                  srl          t3, s1, s5
                  sltiu        a3, a2, 457
                  sll          t6, zero, gp
                  sll          a4, s5, sp
                  or           ra, ra, s1
                  xori         t1, t0, 1513
                  sltiu        t4, s2, -860
                  srl          a0, ra, s6
                  xori         gp, a7, -815
                  srl          t3, a3, s8
                  and          a7, ra, s9
                  srli         a6, s7, 13
                  slti         gp, gp, 922
                  sub          a5, a0, s4
                  sll          a1, s4, s5
                  srai         s11, t4, 5
                  sra          a4, s11, gp
                  and          a4, a6, s5
                  slli         s6, s3, 6
                  xor          a1, tp, a3
                  xori         t4, s8, 1791
                  slt          gp, t0, a3
                  xor          gp, s2, tp
                  sub          zero, sp, s6
                  srli         a6, tp, 7
                  srai         a0, a7, 5
                  srai         s2, t4, 25
                  andi         t0, t4, 247
                  addi         s7, s7, -742
                  slti         t3, t6, -142
                  nop
                  slt          t5, s3, a7
                  sltiu        a4, gp, -576
                  srai         s3, t2, 19
                  nop
                  xor          s3, s5, s6
                  sra          s7, tp, a4
                  addi         s9, s11, 378
                  sltiu        t6, a6, -1094
                  ori          s9, s9, -1827
                  sltiu        s4, a3, -1614
                  xori         a3, s9, -192
                  sra          a2, s1, t3
                  slli         sp, s0, 15
                  slli         a6, s11, 28
                  slt          t1, a2, gp
                  sltu         s6, s2, s2
                  xori         a1, a2, 1986
                  slt          gp, a0, a1
                  sub          s0, a3, a7
                  sra          t5, s3, t6
                  or           a1, s6, sp
                  add          t1, a0, a6
                  andi         a1, t6, -358
                  xori         zero, s10, 1326
                  sra          t1, t2, ra
                  andi         a6, tp, -1466
                  ori          s11, s7, 230
                  sltu         a7, t6, t4
                  xor          a2, s8, tp
                  or           s10, gp, s9
                  xori         t3, t0, -683
                  nop
                  addi         gp, s11, 76
                  sltiu        t0, a4, 880
                  sll          t4, gp, tp
                  sub          a6, tp, s4
                  sra          s0, s10, gp
                  lui          s10, 376869
                  addi         a5, s9, -1801
                  xor          zero, a1, a3
                  srli         s7, s0, 4
                  auipc        t6, 895489
                  srli         a2, gp, 7
                  slt          s6, s4, s6
                  auipc        sp, 406137
                  srai         a0, a2, 8
                  addi         a2, a5, 1887
                  and          a4, s7, s9
                  andi         a1, s0, 408
                  slt          ra, a5, gp
                  and          ra, s4, t6
                  xori         a5, s7, -820
                  slt          s8, s4, t2
                  add          s4, a3, t3
                  sll          a0, t6, a5
                  xori         a3, t3, 854
                  sub          t4, t1, a0
                  xor          gp, t2, s10
                  sltiu        s6, a7, 1315
                  sltu         s3, a5, s1
                  sll          gp, a6, s0
                  slli         t5, a0, 4
                  srli         s5, sp, 5
                  auipc        s5, 569165
                  sltu         t4, t5, a4
                  andi         t4, t5, 396
                  xori         gp, t1, -910
                  sll          s2, s11, s5
                  addi         zero, s6, -2016
                  or           a2, s1, s3
                  sub          t4, zero, t2
                  slli         a3, s4, 16
                  slt          ra, a3, t0
                  nop
                  sra          s7, a6, s1
                  sub          a1, a1, gp
                  xori         s2, s10, 1668
                  nop
                  lui          t5, 694520
                  and          s5, s3, s9
                  sltiu        t3, s11, 1859
                  and          s3, s6, zero
                  sub          t6, t2, s11
                  ori          s4, ra, 1551
                  and          a5, s8, s11
                  srli         zero, s10, 27
                  and          a0, t4, s3
                  or           s2, a2, sp
                  or           s8, tp, gp
                  srai         a5, ra, 0
                  sra          a3, a0, gp
                  xori         t6, t1, 1410
                  sltiu        s11, s3, 1052
                  nop
                  andi         zero, t1, -400
                  add          a2, t0, s11
                  xori         zero, s8, -163
                  sll          t1, t6, s7
                  srli         a1, a1, 11
                  lui          a6, 637706
                  auipc        s4, 260709
                  sll          t1, t3, a7
                  and          t0, a7, a0
                  xori         s7, t5, 153
                  nop
                  sll          a2, s1, a1
                  add          s6, s4, a0
                  ori          s3, a7, -168
                  xori         sp, s0, -364
                  slti         s4, t0, 1834
                  slli         s8, s10, 25
                  auipc        sp, 630943
                  sra          s5, gp, sp
                  addi         gp, t5, -780
                  andi         gp, zero, 1999
                  and          t1, s6, t5
                  and          gp, s10, zero
                  sub          s8, s8, s7
                  sra          a7, s11, s6
                  slt          t3, sp, s11
                  and          s0, t2, s5
                  xor          a3, sp, s5
                  nop
                  lui          t4, 251074
                  srli         t4, a2, 1
                  xor          s0, s6, t1
                  auipc        s9, 861971
                  or           s2, sp, t5
                  or           t0, s9, s2
                  slti         t3, s1, -553
                  add          s3, a3, a4
                  lui          t5, 538324
                  sra          s4, s9, s11
                  sltiu        s8, a2, 1276
                  srli         s6, s2, 31
                  sltiu        s5, a0, 180
                  add          ra, a5, t6
                  and          s8, s7, s2
                  ori          t3, t0, -1788
                  sll          s6, t0, t1
                  auipc        s7, 675231
                  slti         s8, t6, 1441
                  sltiu        t3, s1, -114
                  lui          sp, 533160
                  srl          t4, s4, t0
                  sra          t6, gp, tp
                  sub          s7, a7, a7
                  slt          t3, t0, a4
                  lui          s8, 671241
                  andi         t3, t1, 17
                  xori         s8, a7, -62
                  slti         ra, s5, -873
                  addi         s4, t1, -1852
                  add          sp, s3, s4
                  sra          s11, s10, t6
                  and          t3, s7, s0
                  sra          s2, a3, gp
                  srl          s5, s10, s0
                  srl          a7, a4, s8
                  sub          zero, s11, tp
                  xori         s9, gp, -508
                  andi         a5, t5, 811
                  and          s2, s9, t5
                  srai         a3, t2, 4
                  sltu         a3, t5, a6
                  srli         t6, s11, 10
                  lui          a4, 777947
                  addi         a1, s0, 1073
                  srai         a6, s5, 27
                  srai         a1, tp, 18
                  add          a5, a2, sp
                  srai         s2, a5, 19
                  auipc        s4, 19481
                  andi         t0, s10, -1033
                  srl          s10, t3, s1
                  and          t1, a1, ra
                  slt          t4, s1, sp
                  srl          t4, s6, t3
                  auipc        s9, 847063
                  xor          s8, t0, s5
                  srl          zero, s5, a7
                  lui          t6, 8555
                  lui          a7, 663198
                  sltu         s9, gp, s11
                  sra          s8, a0, s9
                  srai         s5, zero, 28
                  xor          s4, s3, gp
                  and          s4, t1, t0
                  sra          s5, t3, t3
                  slli         s6, a4, 31
                  srl          a5, s11, a6
                  srl          t5, t5, t6
                  xori         s0, t4, 1836
                  sltu         t1, a7, s4
                  lui          ra, 514272
                  addi         s2, s9, -89
                  sra          s4, ra, a7
                  addi         s0, s8, -1934
                  slli         s11, ra, 5
                  srl          a6, s9, t4
                  srai         a4, a1, 8
                  xor          zero, s11, s3
                  srl          a4, a7, a1
                  sub          s11, a3, ra
                  auipc        t6, 717830
                  ori          s9, s6, -806
                  srli         a4, ra, 17
                  auipc        s4, 652616
                  srli         s8, s9, 26
                  or           s9, a2, s6
                  and          a3, s10, t6
                  srai         s4, t6, 5
                  add          ra, sp, gp
                  slti         t6, s10, -1246
                  sub          s0, s11, s6
                  sltiu        a1, ra, -1473
                  sra          a1, t4, a0
                  xori         t5, a4, -1915
                  or           a0, a4, a0
                  sll          a0, gp, t4
                  sll          zero, s8, a2
                  lui          a6, 713743
                  srl          a3, a6, t0
                  sltiu        t4, t6, -1859
                  slli         s10, t3, 2
                  or           zero, a3, t3
                  auipc        a7, 323627
                  lui          ra, 625740
                  xori         s9, a5, -1873
                  sub          t6, a2, tp
                  sll          t0, a3, gp
                  nop
                  slli         sp, a6, 30
                  sll          a3, s3, a3
                  sltiu        s11, s1, 243
                  sub          s8, s10, a5
                  sra          a5, s1, s3
                  sll          t1, s6, t4
                  ori          t5, t3, -1163
                  slti         a1, s3, -2014
                  xor          ra, a7, s1
                  xor          a0, t1, s5
                  xori         a0, gp, 1923
                  slli         sp, zero, 18
                  ori          sp, ra, -1075
                  add          t3, s10, a1
                  addi         s6, s11, -1785
                  or           t5, s7, ra
                  sra          a1, a3, s7
                  xor          t3, s6, t3
                  sltu         t6, zero, s3
                  slt          a5, tp, s6
                  addi         s9, t3, 1694
                  add          a7, a3, t6
                  sltu         s0, a2, s1
                  slti         t5, t4, 1358
                  nop
                  auipc        a6, 837064
                  sub          s5, a5, a6
                  ori          s2, t2, -521
                  li           gp, 0xbec6092a #start riscv_int_numeric_corner_stream_5
                  li           a0, 0x80000000
                  li           s7, 0xfb1e3089
                  li           a5, 0x0
                  li           t4, 0xffffffff
                  li           s9, 0x0
                  li           t5, 0x80000000
                  li           s10, 0xd6d017d6
                  li           a6, 0x80000000
                  li           t0, 0x1426435d
                  lui          t5, 456292
                  nop
                  lui          s10, 798104
                  auipc        t5, 502218
                  lui          a5, 8492
                  add          a6, a0, t5
                  auipc        a5, 874657
                  add          gp, a5, s7
                  add          t4, a6, t5
                  addi         t4, a5, 1061
                  addi         s9, t4, 1547
                  auipc        s9, 972163
                  addi         s10, a6, -6
                  sub          t5, s9, s10
                  sub          gp, gp, t5
                  addi         gp, a5, -1302
                  sub          a6, s7, t5
                  auipc        s9, 460774 #end riscv_int_numeric_corner_stream_5
                  sll          s9, s11, tp
                  ori          s3, s7, -612
                  srli         a6, t6, 10
                  auipc        t5, 61311
                  xori         s6, ra, -785
                  slli         a1, s7, 23
                  srl          ra, s10, tp
                  auipc        zero, 949380
                  addi         ra, a3, -101
                  srai         a6, s6, 27
                  and          s11, s8, t2
                  nop
                  ori          t4, s1, 1596
                  sub          zero, t4, s7
                  sub          t1, s2, s3
                  xor          t5, s4, t0
                  sll          t3, tp, t0
                  slt          s5, a2, t1
                  sltiu        s3, s8, 687
                  or           s6, t6, t6
                  srl          zero, s8, tp
                  sra          s4, sp, s8
                  ori          s10, t0, 1520
                  srli         s3, s8, 11
                  ori          a7, a6, -1244
                  srli         t1, t1, 19
                  lui          s7, 280508
                  or           a6, ra, t1
                  addi         a4, ra, 680
                  andi         s0, a3, 1331
                  add          ra, zero, t3
                  and          a5, s4, ra
                  srl          a2, s6, t4
                  or           a0, s6, a6
                  sub          s7, s0, s5
                  addi         s10, s8, 235
                  addi         a6, s5, 429
                  and          a5, a2, a0
                  addi         a2, s9, 151
                  add          s2, t0, a6
                  addi         s0, s0, 994
                  nop
                  xori         s0, t0, -86
                  sltu         a6, sp, s1
                  srai         s5, t2, 19
                  sltu         s7, t3, gp
                  xor          t0, t1, s4
                  srl          t4, s9, zero
                  lui          s5, 182090
                  sltu         s7, s8, t2
                  srl          t0, a1, sp
                  sltiu        s6, s10, 1859
                  slli         zero, s9, 28
                  srli         a4, t1, 31
                  ori          ra, a5, -537
                  sltiu        t1, a4, -682
                  slti         t6, s2, 1760
                  srli         s3, s5, 26
                  or           t6, s10, gp
                  ori          s9, zero, 1503
                  add          s8, t4, a7
                  sltu         ra, t6, s9
                  sll          t1, t2, a5
                  slti         t1, t5, 1761
                  sub          a5, gp, tp
                  andi         a6, a1, -518
                  xori         s2, a1, 1338
                  add          s6, a2, t3
                  sra          s7, gp, a3
                  sll          t3, t4, s11
                  xori         a2, a7, -1589
                  auipc        a3, 765088
                  srai         s4, s0, 23
                  nop
                  and          zero, ra, a3
                  srl          s5, s7, a0
                  sltu         zero, s4, t2
                  sub          gp, t5, a1
                  addi         a3, gp, -1753
                  srai         t4, t2, 27
                  srai         a6, s8, 22
                  slt          gp, t6, a7
                  sltu         t6, t4, s8
                  slli         a1, s3, 0
                  and          s6, a0, zero
                  sltiu        a3, t4, 1820
                  xori         a1, t2, -243
                  xori         a5, t6, 1398
                  auipc        a2, 316180
                  xori         t1, t1, -6
                  slt          a1, s9, s11
                  slti         a4, s4, -171
                  slt          t1, gp, a4
                  srl          s7, s0, a6
                  andi         zero, a3, 166
                  add          s3, s7, t2
                  or           a1, s3, t6
                  slti         a3, t5, 271
                  sltu         s5, s5, sp
                  sltu         gp, t6, t0
                  slt          a2, t6, s0
                  sub          s5, s3, a1
                  lui          a3, 995121
                  xori         s0, s1, 118
                  and          t3, t3, s3
                  andi         a3, s1, 1187
                  lui          zero, 921438
                  sub          zero, s10, a7
                  nop
                  and          s7, a2, t5
                  sltu         s11, a7, ra
                  xori         sp, a7, 546
                  addi         s10, s5, 1837
                  slt          t1, t4, s9
                  sra          a1, a5, a1
                  sltiu        t3, t0, 94
                  xori         a0, t3, -1939
                  sub          s10, a3, a5
                  xor          s9, t5, s8
                  ori          t6, t4, -296
                  xor          s10, t3, s8
                  sltiu        s0, a4, 1902
                  lui          gp, 830252
                  srl          a3, sp, a0
                  and          zero, s6, s2
                  ori          s10, a2, 2033
                  sll          s0, s9, t2
                  and          s6, s5, tp
                  add          t1, s6, s7
                  add          t6, s10, t3
                  xor          s3, t4, s0
                  addi         s7, s0, 610
                  lui          t0, 858956
                  addi         s0, s7, 1324
                  sltu         gp, t6, s10
                  slti         s6, t5, 1049
                  slti         s7, s0, -1421
                  andi         t4, a0, -363
                  andi         a3, t4, 761
                  xori         s8, s2, -1225
                  and          s6, s11, a3
                  auipc        gp, 547679
                  slli         s4, t1, 30
                  addi         s9, a3, -608
                  or           s10, a2, s11
                  or           a4, t0, t4
                  nop
                  srli         sp, a5, 21
                  sub          a1, zero, zero
                  ori          a5, a6, -344
                  slt          s2, sp, t1
                  sub          s7, t3, s8
                  sltiu        s7, s3, 444
                  ori          s2, s7, -535
                  lui          a2, 243693
                  and          s2, s2, a6
                  sub          sp, gp, gp
                  srli         t4, s8, 30
                  sll          t4, t1, t5
                  and          t3, s10, s0
                  and          ra, a5, gp
                  sub          zero, s6, a5
                  sra          t6, zero, s0
                  slli         zero, zero, 23
                  srl          gp, s9, s2
                  lui          s8, 91542
                  andi         zero, t5, -137
                  srli         a6, ra, 22
                  srli         s7, sp, 19
                  addi         s6, tp, -330
                  xori         zero, sp, -39
                  addi         s7, s4, -1658
                  sll          s0, t6, s4
                  slti         a5, a0, -229
                  sra          s4, ra, tp
                  slli         a1, a5, 28
                  andi         a1, s5, 504
                  sltu         t5, a0, ra
                  xor          ra, a1, s6
                  sltu         s4, s7, t0
                  ori          s4, gp, -1670
                  slli         a2, sp, 3
                  sltiu        a4, t6, 1203
                  slti         t5, a0, -1657
                  sltu         a2, t4, t4
                  nop
                  sra          t1, a2, gp
                  srli         a7, s9, 2
                  sltu         s8, s3, t5
                  and          t1, s5, s0
                  sll          t1, t5, a0
                  sltiu        s3, a0, -1673
                  slt          a3, a2, t2
                  xori         t0, tp, 985
                  addi         s6, t2, -939
                  sltiu        sp, gp, -1355
                  xori         s0, a0, 595
                  xor          t0, sp, s0
                  sltu         s7, a2, a0
                  srli         s4, s8, 1
                  ori          a0, s6, 825
                  srli         s3, t4, 10
                  xori         ra, s10, -1876
                  addi         t4, a5, -850
                  ori          zero, s11, -1213
                  ori          gp, zero, -676
                  andi         a3, gp, 488
                  add          s11, s0, a4
                  sra          s6, s7, s4
                  slt          s0, t2, a2
                  sll          s2, a2, a0
                  slt          gp, a0, a0
                  sra          zero, ra, a0
                  addi         a4, t4, 289
                  sltiu        s8, a2, 30
                  auipc        a1, 842773
                  sub          a7, a7, s4
                  xor          t3, s9, t6
                  addi         t0, s1, 676
                  sltiu        t4, s4, -1455
                  and          s0, t6, s3
                  ori          gp, a3, 472
                  slt          s11, t1, gp
                  sll          t6, a4, t2
                  or           s2, zero, s7
                  sll          a7, s10, a2
                  nop
                  srli         t3, ra, 22
                  sub          a7, t0, gp
                  srli         t4, a4, 2
                  auipc        t3, 179042
                  slt          s11, t3, a1
                  and          zero, a1, t6
                  sll          s2, s11, s9
                  srai         t4, t5, 11
                  addi         t4, a7, 223
                  or           s10, s6, a5
                  addi         s7, a5, 888
                  lui          a1, 686390
                  lui          a6, 346493
                  ori          t3, a7, 207
                  xori         a1, ra, 822
                  ori          a3, a2, -1883
                  srai         t5, a3, 28
                  xori         a3, t6, 1701
                  add          s6, t0, a3
                  slti         a7, a3, -514
                  sltu         t5, s0, s2
                  srl          t5, t1, s2
                  addi         ra, s7, -1743
                  slt          a1, ra, a0
                  addi         s3, t0, -931
                  slli         a5, s6, 25
                  or           s2, t2, tp
                  sub          a7, a2, a4
                  lui          ra, 240493
                  slti         s10, zero, 633
                  add          a5, s7, a5
                  lui          s8, 195911
                  auipc        s10, 881704
                  slti         s9, s4, -259
                  slti         s8, s3, -598
                  or           s8, t4, s8
                  slti         zero, t2, 603
                  lui          s2, 757662
                  srl          a6, a2, zero
                  ori          a5, s11, 1678
                  addi         s11, s1, 94
                  xor          t5, s3, zero
                  sub          t6, s7, s1
                  add          sp, t5, s2
                  slti         t1, a0, 905
                  nop
                  or           s9, ra, s7
                  sra          s8, a6, s9
                  nop
                  sltu         s6, t5, a1
                  sltiu        t5, s10, -1047
                  auipc        s10, 461249
                  xori         a6, s5, 815
                  srl          s9, t1, a0
                  srai         a6, s5, 11
                  sltiu        s2, ra, -515
                  sll          a2, t2, s10
                  sra          a2, s7, a0
                  slli         s2, a4, 3
                  and          t1, s0, t5
                  nop
                  andi         t3, s8, -1299
                  srl          s0, a4, a1
                  sltiu        a1, t1, -104
                  add          s4, s3, a0
                  and          t4, s0, s7
                  add          s4, a0, ra
                  sltiu        ra, s3, -909
                  sltu         a1, s0, gp
                  srli         t0, s2, 6
                  srai         s9, t1, 29
                  lui          s10, 375256
                  sltu         a3, ra, s11
                  srli         a0, s5, 8
                  xori         s3, zero, -971
                  nop
                  slt          s6, a5, s2
                  ori          s9, t2, 368
                  sltiu        s0, s5, 377
                  andi         a3, t4, -149
                  slli         a6, a7, 29
                  xor          s5, s8, s7
                  auipc        t1, 278515
                  xor          t0, s11, s1
                  srl          t0, sp, a5
                  and          t3, s3, t2
                  ori          a2, s5, 898
                  auipc        s9, 221765
                  srli         ra, ra, 10
                  or           zero, s7, s11
                  xori         s9, s8, -2014
                  srl          ra, tp, t0
                  sltiu        a7, a0, 1354
                  nop
                  sll          a1, a0, s7
                  slti         t4, a0, 1855
                  slti         s4, sp, 534
                  add          t3, ra, s7
                  lui          s9, 868846
                  srl          a7, t1, a4
                  and          s10, ra, a1
                  add          a2, t4, s8
                  srli         t1, s2, 27
                  sub          t5, a2, a6
                  slt          t1, s1, t0
                  slli         gp, zero, 5
                  sltiu        a5, gp, 1659
                  srai         s10, a0, 4
                  sltu         a2, a2, a5
                  sra          zero, s11, t4
                  lui          s5, 188481
                  sltiu        s0, a7, -325
                  auipc        a4, 719448
                  sra          t1, s0, a0
                  nop
                  slt          a1, s9, s2
                  srai         ra, a1, 16
                  or           s2, s8, a0
                  sltiu        s3, zero, -381
                  srl          s8, a6, s10
                  add          a4, t1, a6
                  srai         t4, s11, 29
                  sll          t4, a7, a3
                  sll          t3, t6, s5
                  or           t0, t1, s10
                  sub          t6, a5, a0
                  xori         s7, zero, -267
                  sll          s2, a4, s11
                  srli         zero, a1, 7
                  sltiu        s5, a4, -1075
                  and          t4, a1, s5
                  xor          gp, s4, sp
                  or           gp, s8, a1
                  slt          s2, t5, t6
                  auipc        a6, 751258
                  sra          sp, t6, s3
                  add          s6, ra, a6
                  addi         s0, zero, 1940
                  srai         s4, s5, 5
                  srli         t1, t6, 28
                  srli         t4, tp, 25
                  andi         t3, a4, -1924
                  sltiu        s8, t3, 1792
                  auipc        s8, 739530
                  srai         s8, gp, 28
                  sltu         s3, t2, s11
                  slli         zero, a0, 11
                  xori         sp, a6, -1438
                  xori         s3, s1, 63
                  sltu         ra, s11, t3
                  sll          s5, t0, s9
                  auipc        s11, 640944
                  slti         t6, s4, 921
                  xor          a0, a1, t3
                  sltu         a1, tp, t5
                  lui          s4, 615464
                  auipc        s5, 974299
                  auipc        t0, 898512
                  ori          sp, a1, -1768
                  srl          s9, t6, tp
                  addi         t4, t5, 1210
                  sub          s7, t5, s3
                  lui          sp, 290300
                  srli         s6, s4, 7
                  addi         a6, sp, -71
                  addi         s8, t6, -988
                  xori         a5, a1, -1976
                  andi         ra, t5, 1721
                  srli         s11, a5, 8
                  auipc        a2, 969200
                  nop
                  sra          s6, a4, s5
                  slt          a4, t0, t3
                  and          gp, t3, s6
                  addi         s3, a3, -2039
                  sltiu        a0, s4, 916
                  and          t1, a6, a0
                  add          a3, a2, s2
                  sub          t3, t2, s0
                  slli         t1, s1, 18
                  slt          a2, a6, sp
                  xor          s9, sp, s8
                  sltiu        a2, gp, -686
                  xori         t1, t4, 172
                  sra          t5, a5, a4
                  lui          gp, 664182
                  xor          a5, s11, s7
                  auipc        s10, 431536
                  auipc        a5, 287414
                  or           a3, tp, s1
                  slli         t3, s5, 30
                  slti         t5, a7, 1865
                  slti         s11, t1, 367
                  addi         t0, a0, 260
                  srl          gp, s0, a3
                  and          t0, s0, zero
                  addi         gp, t6, 1011
                  sltu         s9, a2, t0
                  nop
                  and          s5, a3, a7
                  xor          s2, t3, a2
                  slti         a3, tp, -100
                  xor          s11, a3, a5
                  sltiu        a1, t0, 1972
                  or           t6, a3, sp
                  nop
                  sra          a1, s8, s1
                  slti         t6, gp, 429
                  xor          a0, a0, s11
                  srai         t5, s8, 6
                  nop
                  sra          a2, s0, t5
                  xor          a0, s1, t5
                  nop
                  andi         t0, a6, -1291
                  xori         t4, a7, 1090
                  srli         a6, s2, 6
                  sra          t4, s5, s6
                  nop
                  lui          t4, 238238
                  srai         s3, t0, 10
                  sll          s11, ra, gp
                  add          s3, t4, s8
                  sra          s0, a2, t1
                  nop
                  sltu         s11, t2, s0
                  slti         s8, ra, -1699
                  sltiu        gp, a3, 332
                  andi         s2, t5, -1149
                  srl          sp, t0, s0
                  sra          s9, a4, t4
                  nop
                  xor          s10, t3, s11
                  srl          sp, a0, tp
                  sltiu        a1, a0, -359
                  sll          a4, s4, s7
                  nop
                  add          a3, tp, gp
                  ori          s4, t5, 30
                  sltiu        s7, s11, 1407
                  sltu         a3, s1, t1
                  ori          a1, gp, -1739
                  xor          a7, s0, tp
                  slti         t1, a0, -1508
                  sub          t3, s8, a3
                  lui          a0, 482229
                  nop
                  slt          s3, a7, s11
                  sltu         s6, gp, a7
                  sub          s10, a0, a2
                  srli         a1, s11, 1
                  lui          a0, 969961
                  ori          zero, s8, 1808
                  and          t5, a1, a2
                  srli         s5, a5, 20
                  sll          t1, a6, a5
                  sra          a2, ra, gp
                  nop
                  xori         s3, s8, -317
                  srli         s0, s7, 22
                  slli         s7, s1, 7
                  and          zero, t0, s10
                  srli         gp, t1, 15
                  andi         t3, s2, -1270
                  ori          s9, t4, 1761
                  addi         a1, s3, 1224
                  andi         s0, sp, -528
                  andi         a2, a5, 756
                  xor          s0, s10, a0
                  slti         ra, t1, -186
                  addi         t0, a3, -1196
                  srl          t0, gp, s0
                  andi         s9, t1, -141
                  xori         t1, s1, -284
                  andi         s7, s9, 1715
                  srl          ra, s3, ra
                  slli         a3, t3, 30
                  sll          a0, gp, ra
                  xori         a0, s3, -162
                  sra          a3, s9, s10
                  slli         t1, t4, 21
                  addi         t3, t0, 1481
                  add          a5, a6, s0
                  ori          s4, gp, -334
                  addi         gp, t2, -227
                  or           s6, a7, a6
                  slli         a6, t5, 8
                  xor          zero, t0, s2
                  or           s10, a5, s6
                  sub          a2, a7, s5
                  xor          t3, gp, s7
                  or           s6, a1, a6
                  xori         t1, s1, -655
                  or           s4, gp, t3
                  nop
                  sltu         t4, zero, t6
                  sub          sp, t1, tp
                  and          a2, s6, a3
                  sll          a2, s1, s4
                  sltiu        gp, tp, -1709
                  add          a4, s9, s5
                  sltu         zero, s2, gp
                  sra          a2, a6, s5
                  sra          a4, a0, t0
                  andi         a5, a0, -1188
                  ori          t3, s9, 1038
                  slti         s3, a0, 1558
                  sra          t0, a1, s5
                  sll          a3, t4, a6
                  nop
                  sll          a4, ra, s5
                  slt          a6, s0, s4
                  ori          s0, a7, -958
                  srli         s3, t0, 15
                  auipc        zero, 242636
                  or           t1, s5, a6
                  xori         s0, a0, 1461
                  slti         s5, s7, 156
                  sltu         t5, a4, a2
                  lui          s11, 226794
                  nop
                  lui          s10, 473618
                  sub          zero, t2, a3
                  srli         a4, t1, 23
                  addi         a6, t4, -1896
                  sub          t0, t4, s11
                  lui          s4, 603189
                  sll          s11, t1, s2
                  ori          a2, t6, 1979
                  xori         a7, a0, 1250
                  slli         a0, s8, 3
                  and          s9, a5, s5
                  add          t5, gp, gp
                  slti         a5, gp, 1980
                  nop
                  srli         a0, t1, 10
                  or           a5, s3, s6
                  nop
                  slt          s2, tp, a5
                  xor          t0, s1, s2
                  slti         s11, a0, 1463
                  srl          s3, a1, a2
                  sltu         s9, a5, ra
                  sub          a1, t0, sp
                  xori         s2, a0, 43
                  slli         a2, s0, 20
                  and          a7, a7, t5
                  auipc        s6, 58445
                  slli         a0, a1, 29
                  ori          a0, tp, 256
                  sub          s4, t3, s5
                  slt          t1, s11, s4
                  srai         a6, a7, 31
                  sub          t3, t0, tp
                  lui          s10, 999671
                  xor          a3, t2, s3
                  xor          t0, zero, t3
                  xori         t5, s0, 842
                  add          a5, a1, t5
                  and          t0, tp, s9
                  or           s8, t0, s7
                  sll          s5, s6, a7
                  auipc        a4, 584195
                  sra          s4, s10, a3
                  sltu         s11, t3, tp
                  srl          s8, s8, a6
                  addi         a6, a6, -84
                  srli         a5, a4, 12
                  sub          a7, t5, s7
                  srli         t6, s6, 12
                  addi         s5, t5, 826
                  sltiu        a2, a1, -1584
                  slli         s9, s4, 1
                  srl          gp, t6, t2
                  slti         s8, t3, -1103
                  srai         s2, s2, 20
                  sltu         t0, tp, s10
                  lui          s9, 583658
                  add          s10, a3, a5
                  srl          t1, s1, zero
                  srli         t4, t3, 3
                  ori          s3, a0, 1914
                  or           gp, a7, t6
                  slt          s2, s1, a3
                  and          t1, a3, a2
                  xori         a4, t4, -555
                  auipc        zero, 768907
                  sll          s8, s7, t1
                  slt          a2, t0, t3
                  slli         a3, gp, 31
                  sll          a0, a5, a2
                  add          t1, s1, s9
                  slt          s8, a0, s7
                  or           a6, s6, s10
                  andi         s10, a0, 617
                  nop
                  srai         t1, t6, 1
                  ori          t1, t6, 1148
                  ori          s10, a5, 1510
                  slli         s3, t5, 1
                  add          s8, s4, a7
                  srli         s7, a5, 23
                  xor          t1, t2, a2
                  and          s0, a1, t4
                  sltu         a5, s1, gp
                  sltiu        s9, s9, 1517
                  slti         t4, a0, -89
                  srli         s9, s5, 6
                  addi         t5, a3, -359
                  ori          s6, s4, 1359
                  lui          s9, 819173
                  auipc        s4, 170362
                  xor          a4, t3, a0
                  slli         t6, t2, 15
                  xor          a6, s8, s4
                  srai         ra, s1, 23
                  andi         a2, s2, -1213
                  srai         s2, a0, 17
                  slt          s9, t0, s10
                  add          s4, a7, s8
                  nop
                  slli         gp, s11, 21
                  sltiu        a6, t0, 265
                  nop
                  ori          t5, s2, 1225
                  slli         t3, s8, 28
                  srli         s8, s5, 2
                  and          t4, s3, s5
                  lui          s2, 974378
                  sub          gp, s3, tp
                  slti         a6, t6, 1113
                  sll          s2, t1, ra
                  and          a7, s3, a7
                  lui          ra, 786848
                  addi         t0, a2, -1179
                  sll          s3, t1, a1
                  slt          s6, s4, zero
                  slti         t6, t0, -745
                  auipc        gp, 541554
                  xori         s10, t2, 737
                  andi         a7, s1, 181
                  srli         s0, zero, 0
                  sltu         a7, s5, t1
                  slt          t6, a1, ra
                  xori         zero, ra, 1216
                  slti         sp, s11, 137
                  srli         ra, a4, 22
                  ori          s9, s0, -573
                  xor          a2, a6, a6
                  and          zero, tp, tp
                  sra          t3, tp, ra
                  addi         gp, a3, -606
                  sltu         a6, s0, t2
                  sll          t3, gp, a3
                  auipc        t4, 709094
                  add          t5, s2, a1
                  ori          sp, a4, -663
                  sll          t0, t4, a6
                  srai         s2, a0, 10
                  xor          t1, s4, ra
                  or           a7, s1, sp
                  slt          s4, s3, s6
                  auipc        s7, 57154
                  srl          t6, a2, s0
                  sltiu        s2, a4, 1865
                  and          t5, s7, a2
                  sltu         a0, t5, t0
                  sra          a1, s6, tp
                  srl          a4, s4, sp
                  slli         s7, t4, 21
                  slti         s9, sp, -1149
                  andi         a1, a7, 146
                  sltu         a2, tp, s10
                  nop
                  nop
                  lui          s4, 917530
                  sltiu        zero, a0, -408
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s0, 0x80000000
                  li           a1, 0xffffffff
                  li           a7, 0xffffffff
                  li           s9, 0x80000000
                  li           gp, 0xffffffff
                  li           s4, 0x80000000
                  li           t4, 0xd1d0734f
                  li           s6, 0x0
                  li           s3, 0x0
                  add          t4, s4, s4
                  auipc        s9, 339500
                  auipc        a7, 418868
                  add          t6, s0, s6
                  nop
                  sub          t6, s4, a7
                  add          s4, a1, s3
                  sub          t6, s3, s4
                  auipc        a7, 1001107
                  nop
                  nop
                  addi         gp, s9, -1827
                  nop
                  lui          gp, 851219
                  add          s3, s3, s0
                  sub          t6, a1, s4
                  lui          s6, 726554 #end riscv_int_numeric_corner_stream_8
                  sltiu        a2, s3, 1700
                  lui          a5, 111375
                  sll          a6, t3, a0
                  sltiu        a6, s8, -912
                  sra          s4, s3, t4
                  nop
                  add          a5, s11, s2
                  srli         s5, gp, 1
                  srl          s4, a3, sp
                  add          s6, s6, s11
                  addi         sp, s4, -89
                  slli         s3, s10, 16
                  sltiu        s10, s7, -724
                  slti         s10, a2, -1043
                  slti         t1, t6, -947
                  srl          a2, s11, zero
                  slt          s11, s3, s3
                  srl          t3, sp, s0
                  srl          s11, t4, s1
                  xor          a2, a7, s3
                  add          s11, s9, a4
                  sltiu        s11, s6, 438
                  srl          s11, s2, s5
                  addi         a0, s9, -857
                  andi         t5, a4, -1199
                  sll          s10, t2, t6
                  lui          t5, 756113
                  slt          s0, t4, s9
                  srai         t1, t6, 20
                  add          a7, t3, a5
                  sltiu        a5, s4, -1226
                  add          t1, ra, s1
                  and          s2, s11, ra
                  xori         t3, gp, 905
                  xor          a4, a4, s2
                  sltiu        zero, t3, 1086
                  lui          a1, 333937
                  slli         a7, s3, 15
                  andi         sp, s3, -1633
                  xori         zero, ra, -1461
                  lui          a5, 154323
                  lui          s7, 888643
                  xor          s5, s0, s10
                  auipc        a7, 515010
                  xori         ra, s8, -421
                  and          t1, t3, a0
                  srai         ra, t5, 13
                  srli         s6, s11, 2
                  auipc        s10, 131215
                  sll          t4, s2, s10
                  andi         t6, a4, -1745
                  sll          a5, a0, s5
                  sra          ra, t3, t5
                  ori          a2, s11, -1108
                  ori          zero, tp, -1887
                  sltu         a7, a7, a6
                  lui          zero, 362400
                  lui          s10, 896553
                  sub          ra, s2, t0
                  sub          s5, s3, a4
                  and          s10, a1, a6
                  xor          t1, gp, a5
                  sub          gp, a7, a7
                  xor          t1, ra, a4
                  sltu         zero, tp, a3
                  xor          s3, s11, s6
                  or           s5, a5, t4
                  auipc        zero, 709715
                  ori          a7, t2, 2026
                  sltiu        s0, s7, 1180
                  slti         a0, s1, -955
                  auipc        s7, 967861
                  slti         gp, s0, 651
                  add          s3, a5, a4
                  add          t6, zero, a5
                  nop
                  slli         s6, t6, 7
                  sltiu        gp, s1, -458
                  add          t5, s8, t5
                  lui          t5, 334008
                  ori          a5, s2, -207
                  or           s7, s4, t0
                  sub          zero, tp, t0
                  sltu         a4, s8, a7
                  sra          s7, t4, s11
                  nop
                  slt          a3, a2, t3
                  or           s7, s0, s3
                  xor          a1, a2, a6
                  xori         t1, a3, -1888
                  slli         t1, s3, 15
                  sltiu        s5, gp, -1923
                  slti         ra, s0, 1516
                  sltiu        ra, s0, -121
                  slti         a5, s10, -925
                  xor          s3, s0, gp
                  andi         a6, a7, 1901
                  addi         s9, s8, 816
                  sll          a5, tp, s10
                  ori          t0, t0, 1200
                  srli         t5, s8, 22
                  lui          a1, 461827
                  sub          t3, sp, sp
                  addi         t0, t0, 621
                  andi         a2, a7, -1429
                  auipc        a6, 920228
                  andi         gp, s3, 226
                  xor          s9, t2, tp
                  andi         a2, a6, -1545
                  xor          s0, t4, s6
                  srli         zero, t4, 22
                  xori         s0, t6, -1634
                  srai         s2, s1, 11
                  srl          t6, s10, sp
                  slli         sp, a1, 10
                  sltiu        a5, s1, -1840
                  ori          s6, a5, -543
                  srli         s11, s1, 11
                  sll          zero, a0, t4
                  sub          a3, s1, a4
                  srli         s9, s3, 3
                  sub          s7, t6, t2
                  andi         a0, s1, 838
                  slti         a6, a0, -472
                  sra          a1, a7, s7
                  sltiu        s5, s5, -982
                  srli         a5, ra, 25
                  srli         s3, a4, 12
                  and          sp, s1, a6
                  sltu         zero, s3, s2
                  lui          a1, 327374
                  srli         a4, t6, 7
                  nop
                  sub          t0, a4, t2
                  xor          s8, s11, s0
                  slti         t1, a2, 12
                  andi         sp, s6, 148
                  sltu         zero, s3, t4
                  addi         s6, a1, -449
                  sub          zero, s0, t0
                  add          s4, t0, a7
                  sll          t0, s0, t0
                  addi         a3, a6, 1478
                  slli         s10, t3, 23
                  srli         a6, a4, 16
                  xori         s3, s7, -1278
                  srai         a7, s0, 22
                  lui          s6, 119605
                  addi         s6, s2, 1884
                  xor          t5, s1, t4
                  slli         ra, t5, 4
                  srai         s3, s9, 14
                  or           s9, s11, zero
                  xor          s11, t6, a7
                  sll          t1, s1, a7
                  auipc        a0, 224522
                  sub          s8, ra, a7
                  sra          t4, gp, ra
                  lui          t5, 461395
                  srai         gp, s0, 19
                  sra          a6, s5, a2
                  ori          s10, s6, -2013
                  slti         s9, s3, 1735
                  slti         s9, s3, 782
                  slt          s5, s10, t0
                  sub          zero, a6, s8
                  sra          s3, s2, t5
                  sltu         s4, s9, t5
                  sll          a0, s8, s10
                  addi         t0, gp, -312
                  sub          s3, s4, s9
                  slti         a2, s9, 1328
                  and          a6, a6, tp
                  xor          t5, t1, s7
                  slti         a4, a6, 1596
                  sub          s4, s9, zero
                  addi         s0, a1, 1700
                  sub          t4, s3, zero
                  sltiu        s3, tp, -963
                  xori         a0, t6, 747
                  slti         t1, s2, 1627
                  or           t1, t2, s7
                  sltiu        s10, a4, 1703
                  andi         s0, t6, -189
                  nop
                  sra          a5, s6, s1
                  slli         t0, s10, 17
                  or           a0, t6, gp
                  sub          t3, s2, t3
                  slti         s9, a3, -974
                  slt          s7, a1, a2
                  xor          t0, a7, sp
                  xori         gp, sp, 910
                  srli         a7, s0, 24
                  slt          t0, s0, s5
                  slli         s7, s6, 21
                  sra          s8, t3, t1
                  nop
                  andi         s4, ra, -1177
                  srai         t1, t6, 11
                  slti         a5, a5, 1556
                  slt          a1, a3, s6
                  or           a1, t2, t3
                  srai         s3, s6, 13
                  slti         s7, a6, -1445
                  auipc        a1, 113908
                  srl          s10, a1, a0
                  addi         t1, t1, -553
                  and          ra, a4, a1
                  add          t4, s5, gp
                  sltu         t1, a4, zero
                  slt          a1, sp, t1
                  srl          s11, t6, t2
                  ori          s5, a3, 1535
                  and          s9, a4, a1
                  lui          s6, 271298
                  auipc        a2, 1043177
                  sra          s7, a1, s1
                  sltiu        s2, s1, -427
                  and          s9, s10, t4
                  sltiu        a1, s3, 96
                  sll          t4, s7, s5
                  sub          s2, t1, ra
                  lui          a0, 739274
                  srl          t1, s5, s6
                  slt          a2, t2, a5
                  srl          s11, s10, s7
                  add          s4, ra, t5
                  add          s9, a0, t4
                  andi         s4, sp, 343
                  slli         a3, t3, 21
                  ori          a3, s1, 2033
                  ori          a1, s0, 24
                  sll          s6, zero, a2
                  sltu         a7, sp, s4
                  slti         a3, s6, 753
                  srai         s7, a5, 29
                  addi         s8, s11, 1020
                  auipc        s9, 402666
                  or           a7, s10, a5
                  slti         t5, a7, -1954
                  andi         a5, gp, -661
                  addi         a5, t3, 1729
                  add          zero, s11, t2
                  xor          sp, a6, s8
                  andi         a5, s9, 802
                  xori         zero, s5, 1056
                  srl          s11, s0, s3
                  nop
                  sra          s8, s9, s9
                  srai         s4, tp, 18
                  ori          t6, s9, 1371
                  and          a0, s6, t2
                  srli         t4, s2, 25
                  andi         s4, s5, -1552
                  sltu         a6, t5, s7
                  sra          t3, sp, s9
                  nop
                  ori          a6, s8, 1775
                  slti         s4, s9, 167
                  xori         ra, t4, 1064
                  li           s10, 0xe52a88ba #start riscv_int_numeric_corner_stream_26
                  li           s0, 0xffffffff
                  li           t4, 0x63a0505d
                  li           ra, 0x80000000
                  li           s6, 0x80000000
                  li           s8, 0x80000000
                  li           a0, 0x5e7714d8
                  li           a1, 0x80000000
                  li           a2, 0xffffffff
                  li           s9, 0x93c01be9
                  auipc        ra, 642964
                  addi         a2, s0, -451
                  nop
                  nop
                  addi         t4, a1, -1886
                  auipc        a1, 871901
                  add          t4, ra, a2
                  sub          ra, a2, a0
                  addi         a2, a0, 790
                  sub          t4, t4, s6
                  lui          s10, 130073
                  add          t4, s9, s10
                  auipc        a0, 308967
                  nop
                  sub          t4, s6, a2
                  sub          a0, a1, a1
                  auipc        s8, 399925
                  lui          ra, 818500
                  nop
                  lui          a2, 756763
                  add          s8, s6, s0 #end riscv_int_numeric_corner_stream_26
                  slli         a3, s6, 29
                  srl          t0, t2, s11
                  sll          t6, a3, a7
                  xori         ra, ra, 1288
                  sltiu        a4, a0, -279
                  and          t1, t4, t2
                  sll          t1, a0, s7
                  or           s9, a2, t4
                  sltiu        a6, t2, -849
                  lui          s7, 731506
                  sra          a0, zero, t1
                  slt          s5, a1, t5
                  slli         t0, t4, 17
                  ori          a0, t3, -924
                  sltu         t1, ra, a1
                  or           s6, s2, a6
                  srl          s5, s3, zero
                  sub          a3, s8, s3
                  slti         sp, gp, -1880
                  andi         s5, a1, 814
                  slti         a5, ra, -1216
                  sll          a4, s5, a1
                  ori          a0, s6, 1767
                  slti         s2, a2, -707
                  slli         s3, a4, 14
                  auipc        t0, 705108
                  add          a4, s5, a5
                  slti         zero, s0, 1867
                  sltiu        ra, s10, -946
                  ori          a5, t5, 529
                  slti         gp, gp, -1982
                  and          sp, zero, sp
                  xor          t6, tp, a5
                  andi         t3, a3, -1631
                  auipc        t6, 682715
                  auipc        gp, 1039550
                  srai         s0, t6, 11
                  slti         zero, s10, -1329
                  add          s7, s11, s10
                  add          t1, a4, t4
                  srai         s10, s0, 26
                  sra          s4, t3, zero
                  sll          s11, s6, t4
                  srai         s10, s0, 24
                  sll          zero, t5, t0
                  xori         s11, s0, -901
                  add          a7, t1, s1
                  andi         s10, zero, -768
                  ori          s4, a5, 1441
                  xor          a4, a1, s11
                  ori          s0, a0, -501
                  xor          s3, gp, s0
                  slt          gp, sp, s2
                  sra          s4, t5, sp
                  andi         a2, a2, -935
                  srl          a6, tp, tp
                  slti         s8, ra, 292
                  ori          s7, a7, 1603
                  srli         t4, s0, 7
                  ori          t5, t1, -992
                  and          a6, s5, s4
                  slli         a1, tp, 12
                  slt          s2, t4, a5
                  sra          s5, s1, ra
                  or           t3, ra, ra
                  xori         s10, a0, 629
                  slt          s8, s6, s10
                  andi         t3, t4, -348
                  srl          t1, t0, a5
                  xori         s7, s1, 1207
                  auipc        a1, 697458
                  add          a3, t2, a4
                  sltu         t6, tp, a5
                  ori          a5, t1, -921
                  lui          a6, 531163
                  addi         s0, tp, -930
                  nop
                  sub          s9, s10, s1
                  auipc        a3, 837071
                  sltiu        s9, a1, -112
                  sll          t1, t4, t1
                  sltu         sp, t4, a0
                  srai         s11, t4, 30
                  and          s0, s7, ra
                  andi         a5, s2, 1881
                  andi         t0, t1, -1703
                  slti         a1, gp, -1707
                  xor          s7, s5, s11
                  sltu         s10, s5, a0
                  xor          t3, s3, a4
                  xor          t0, s4, s8
                  lui          t6, 120162
                  or           gp, s10, a4
                  srai         s9, s2, 31
                  add          t0, gp, s10
                  srai         s10, t0, 25
                  srl          a3, t5, s11
                  or           t0, t5, t4
                  slti         s0, a2, 1178
                  andi         s2, a3, 747
                  xori         a7, s8, 1596
                  add          t1, s9, s2
                  srli         s3, a0, 23
                  sub          ra, a5, t0
                  sltiu        s8, s5, 1487
                  sltu         s7, t0, s8
                  sll          s2, gp, a1
                  sub          s6, s6, s7
                  srl          zero, t2, t0
                  srli         a1, a2, 20
                  sra          s5, a5, s2
                  slt          s11, s2, t1
                  sll          zero, t5, a4
                  andi         a2, s6, 1700
                  slli         s0, a3, 30
                  add          a1, a2, ra
                  add          s0, zero, s5
                  nop
                  or           a1, a1, ra
                  xori         s9, s7, -610
                  srl          t3, gp, s11
                  sltu         t3, a6, s0
                  sltiu        t0, sp, 1851
                  sll          a6, t5, s1
                  sltu         s8, s4, a3
                  nop
                  sub          a7, t2, t4
                  ori          t5, a0, -202
                  srai         a7, t2, 7
                  andi         s3, sp, 1709
                  srli         s2, s10, 9
                  andi         a0, s10, -262
                  slt          s11, gp, a2
                  or           s10, a5, s10
                  slli         a4, a6, 7
                  sltiu        t5, s10, -1340
                  andi         zero, gp, -499
                  slli         a6, s1, 25
                  and          a3, s6, a1
                  sltiu        s7, s2, 38
                  srli         a7, t4, 11
                  xori         a6, s1, -1313
                  nop
                  sra          a0, t3, s0
                  slti         t0, a0, 326
                  sltiu        a1, s0, 1446
                  sll          a2, t3, s2
                  sub          sp, a1, s5
                  and          t5, a5, t3
                  sltiu        s7, s4, -1815
                  lui          s10, 856750
                  xor          a1, s2, s8
                  slt          a0, s6, s11
                  slli         s10, s4, 19
                  and          s2, t3, s8
                  addi         t1, s9, 1909
                  sub          t4, s7, s5
                  add          s0, a1, s7
                  srai         t5, sp, 19
                  srai         s3, t4, 3
                  nop
                  xori         t0, a4, 1733
                  xor          sp, t6, ra
                  add          s7, a1, t4
                  addi         s7, s7, -1189
                  sltiu        t1, a3, -1535
                  slli         t6, a3, 4
                  nop
                  ori          s6, s3, -2017
                  xor          s9, t1, gp
                  sltu         s6, s4, s10
                  sltu         sp, s8, a2
                  or           sp, s11, a7
                  sub          s4, s2, a6
                  addi         s8, s9, -81
                  add          s8, a3, a1
                  xori         s9, a6, -405
                  addi         t6, t0, 602
                  add          s0, s8, t1
                  slt          t0, a4, ra
                  andi         a1, sp, 1464
                  or           s7, a4, a4
                  andi         sp, s6, -1166
                  sub          s10, ra, t0
                  slt          s9, zero, sp
                  xori         a3, s5, -840
                  srai         gp, zero, 24
                  slli         zero, tp, 4
                  sltu         sp, s0, t3
                  lui          t0, 810881
                  lui          s11, 976687
                  sltiu        t1, t1, -1350
                  add          a3, s4, t0
                  sra          t3, s1, a1
                  slt          sp, ra, a6
                  sltiu        t1, s1, 889
                  slli         ra, t1, 30
                  slt          ra, s8, a6
                  sra          a6, t3, ra
                  slti         s2, s5, -246
                  xori         s8, s9, -92
                  srli         s0, s11, 8
                  slt          t5, a5, s10
                  slti         s4, t6, -650
                  nop
                  and          t3, t2, t5
                  slt          t6, s8, t1
                  srai         a0, s3, 1
                  nop
                  ori          t1, s11, -555
                  slti         t5, t2, -235
                  sra          zero, s7, a1
                  slli         gp, t0, 22
                  slli         a4, gp, 13
                  nop
                  and          zero, a5, s6
                  nop
                  nop
                  lui          a6, 934757
                  slti         t4, a1, 790
                  sltiu        s8, a1, 1147
                  sll          t3, t1, a5
                  and          t6, zero, tp
                  addi         a7, s5, 326
                  slti         a5, a4, 354
                  sra          s4, s11, t4
                  srai         s2, s7, 18
                  addi         t6, s8, -459
                  lui          a6, 204501
                  srli         a3, tp, 9
                  lui          s9, 300690
                  and          a5, s1, tp
                  slti         a1, zero, -350
                  auipc        s2, 705859
                  ori          a0, a6, -89
                  addi         t5, a7, -1102
                  add          t0, a1, gp
                  slt          t0, s7, zero
                  srli         t3, s1, 21
                  sltu         t1, s7, t1
                  slt          t6, t0, s2
                  andi         s0, a4, -1395
                  nop
                  slli         a1, s7, 1
                  sra          a6, t5, a0
                  nop
                  and          s8, t5, a4
                  sll          s0, a7, s7
                  nop
                  sltu         t0, zero, t2
                  srl          t3, s2, s11
                  auipc        s3, 184024
                  addi         s3, ra, -2040
                  lui          a5, 400684
                  sll          a6, a3, t5
                  slt          s7, a3, t5
                  andi         gp, s5, 1103
                  and          s9, a4, t2
                  xor          s7, s11, t1
                  sub          s4, ra, s7
                  sltu         t0, s6, a5
                  lui          s0, 340889
                  sltu         t6, a7, t0
                  slti         s11, ra, -556
                  srl          a3, t1, s5
                  slli         s10, a4, 20
                  nop
                  addi         gp, t6, -2032
                  auipc        t3, 531380
                  or           t4, t6, s11
                  andi         a5, t4, -1984
                  andi         a1, ra, -1531
                  slli         s7, s2, 12
                  lui          a3, 515426
                  xor          a0, s3, s1
                  auipc        ra, 543509
                  sltiu        s7, s10, 1111
                  sltu         sp, ra, s8
                  and          s2, s0, a4
                  ori          s4, s2, 375
                  sll          t5, s7, ra
                  srl          s4, tp, a7
                  sub          s4, a4, t6
                  sltiu        a1, a2, 1423
                  addi         t3, s7, -1460
                  xori         s2, a0, -1505
                  sltiu        gp, sp, 618
                  sll          a5, a0, a1
                  slt          zero, s1, t5
                  andi         t4, ra, -1996
                  sll          a0, a3, s3
                  slli         s9, gp, 9
                  slti         s3, ra, -268
                  ori          a3, t2, 367
                  ori          t6, s10, -203
                  srli         s8, tp, 31
                  slt          ra, t4, t5
                  ori          sp, zero, -124
                  and          t4, s11, s7
                  lui          s2, 220131
                  or           s6, s7, a5
                  sub          t6, a1, s5
                  sra          t4, zero, t4
                  slt          s11, s4, a1
                  slli         s9, a0, 22
                  slli         a2, s11, 15
                  xor          s0, t5, s8
                  addi         s5, t3, -1748
                  xor          s4, a1, t3
                  srai         t5, t5, 11
                  lui          a6, 461120
                  or           sp, s5, s10
                  srl          t5, a6, s11
                  andi         t0, a5, 1490
                  sra          t4, s1, t4
                  xor          t4, s0, t5
                  ori          a5, s11, -392
                  srai         ra, tp, 18
                  addi         gp, a0, -1980
                  sub          a1, a0, a0
                  xori         s7, s10, 412
                  add          s7, s1, a2
                  srl          s10, s10, a2
                  srl          a0, s7, a2
                  sll          a6, t3, t5
                  slt          s6, s3, a4
                  and          gp, t5, s7
                  srli         t4, s1, 16
                  or           sp, t5, t0
                  sltu         ra, s6, a5
                  sll          s5, s0, t4
                  sub          s2, s6, s7
                  slt          zero, s1, gp
                  and          s3, s4, t3
                  sub          a6, a5, s9
                  ori          t1, t3, -1255
                  srai         a6, a1, 7
                  sltiu        gp, zero, 1063
                  srli         a2, t3, 27
                  and          s4, sp, a7
                  xor          t3, t1, a4
                  sub          sp, s9, s7
                  sra          a3, a1, s6
                  andi         a6, t5, -1709
                  slt          zero, gp, gp
                  slti         s0, s9, -985
                  addi         a4, a1, -1703
                  xor          s10, s11, a5
                  auipc        a1, 384242
                  andi         sp, sp, -950
                  or           s0, t1, tp
                  sub          t4, s2, s6
                  sub          a7, a0, tp
                  auipc        ra, 618485
                  xori         a2, a0, -189
                  nop
                  sra          a2, zero, a0
                  sltu         gp, s11, t6
                  sub          s9, t3, a6
                  slli         a0, a6, 4
                  slt          a4, s7, t5
                  sltu         a6, t1, gp
                  sltu         ra, t1, s8
                  sltu         t1, t4, a0
                  sltiu        s0, t5, 217
                  and          t4, t5, t0
                  andi         s7, a4, -38
                  ori          s0, t4, 1476
                  add          s11, s8, s10
                  or           s9, t0, ra
                  sra          zero, a6, a5
                  add          sp, s10, a3
                  srai         s2, a1, 9
                  ori          gp, s11, -1947
                  srai         t4, sp, 12
                  slli         ra, s0, 21
                  srli         a5, t2, 15
                  ori          t3, s11, 1904
                  sra          t1, s4, t1
                  xor          s4, sp, s1
                  or           s3, s3, s5
                  sra          t4, a1, tp
                  sll          s4, t1, t2
                  and          t4, t2, zero
                  xori         s11, gp, 1588
                  srl          t0, t3, t2
                  srai         s10, t6, 24
                  xor          t4, t2, s9
                  xor          sp, a2, s6
                  nop
                  srli         zero, t1, 18
                  ori          t6, zero, -1870
                  sll          a6, t6, s4
                  or           zero, a1, s8
                  srl          s9, t3, a3
                  or           s11, a1, a3
                  auipc        a3, 105583
                  slli         a2, a2, 12
                  srli         a5, a4, 20
                  xor          s5, a7, t4
                  sll          s5, gp, s4
                  slli         s6, s1, 8
                  slli         s10, s6, 24
                  addi         a4, t5, 992
                  add          s8, a7, s5
                  slt          t6, sp, a1
                  andi         s2, t0, 195
                  srai         gp, gp, 13
                  slti         t5, t2, 922
                  slt          gp, s2, zero
                  slti         s4, s5, -853
                  sll          gp, s5, a0
                  xor          s2, s10, s4
                  lui          a0, 13742
                  add          a3, t0, t6
                  sll          s3, t6, t5
                  and          s6, s11, t6
                  andi         s4, s3, -593
                  slti         a5, a7, 626
                  slti         s6, a3, -1948
                  add          t5, s9, s5
                  srl          s10, t0, s0
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_36
                  li           sp, 0xffffffff
                  li           s6, 0x0
                  li           t0, 0xffffffff
                  li           a6, 0xffffffff
                  li           a5, 0x80000000
                  li           s11, 0x0
                  li           s9, 0x94f76974
                  li           a3, 0x0
                  li           ra, 0x7790138c
                  auipc        s6, 813857
                  auipc        a5, 622679
                  sub          ra, t0, s4
                  add          ra, a6, s9
                  nop
                  addi         s9, t0, 497
                  sub          a3, s6, s6
                  auipc        s6, 965551
                  lui          sp, 91135
                  nop
                  addi         a3, s9, 830
                  auipc        ra, 592423
                  sub          sp, s4, ra
                  nop
                  lui          s11, 1045318
                  addi         s11, a6, -1199
                  add          a3, s9, a5
                  sub          sp, s9, a3
                  lui          a3, 935553
                  nop #end riscv_int_numeric_corner_stream_36
                  srl          a2, a1, zero
                  slli         s0, a2, 18
                  andi         s8, s7, -1082
                  nop
                  add          a4, s9, t3
                  sub          s10, a6, t4
                  or           a3, a0, a7
                  addi         a3, tp, 238
                  or           s7, a7, s0
                  sltiu        t0, sp, -958
                  add          s5, s6, s7
                  sltiu        t1, s2, 718
                  srli         t1, t1, 29
                  srl          a5, zero, s1
                  addi         a6, s5, 2032
                  slti         s10, a5, -101
                  sltu         s5, sp, s8
                  xori         a2, s1, -868
                  sltiu        a3, a1, -1854
                  slti         s3, t4, -690
                  slti         t6, s0, 426
                  sub          s3, s5, t0
                  or           a7, ra, tp
                  and          a0, t2, t6
                  auipc        s11, 987732
                  sll          a6, a6, s6
                  sltu         a0, t6, a7
                  slti         s9, s3, -911
                  slti         s2, t1, 1062
                  sra          a3, s11, t0
                  add          s2, s4, ra
                  ori          s0, t1, -1330
                  slt          s10, s6, t0
                  srai         s2, s9, 1
                  sll          s4, sp, a4
                  slti         s6, t1, 1111
                  and          a0, a2, s9
                  andi         s2, zero, 1542
                  auipc        t1, 498183
                  sra          a6, sp, a5
                  xor          a4, gp, s3
                  sll          s3, t4, s11
                  auipc        a2, 494292
                  srli         s5, zero, 12
                  addi         a0, a0, 390
                  ori          t0, ra, -898
                  slt          s6, s11, a6
                  ori          s6, s6, 633
                  xori         a3, s4, 1385
                  slti         ra, t1, 1672
                  add          t0, s1, tp
                  andi         s5, s7, 310
                  addi         a5, s5, -675
                  li           ra, 0xb058e2cc #start riscv_int_numeric_corner_stream_17
                  li           a0, 0x80000000
                  li           t0, 0x0
                  li           a4, 0xffffffff
                  li           gp, 0x0
                  li           s3, 0x40fa1d64
                  li           sp, 0x80000000
                  li           a5, 0x6ad2119
                  li           s10, 0xffffffff
                  li           s9, 0xffffffff
                  addi         s9, sp, 715
                  addi         t0, a5, -423
                  lui          a4, 827720
                  lui          t0, 45752
                  nop
                  sub          s3, s10, t0
                  auipc        sp, 8125
                  addi         t0, s10, 88
                  nop
                  lui          s3, 469643
                  auipc        s10, 119404
                  nop
                  lui          a5, 1009881
                  nop
                  add          s10, s10, s10
                  lui          s3, 782545
                  lui          sp, 702094
                  auipc        s3, 446105
                  add          a0, a4, s10
                  sub          sp, s9, s9 #end riscv_int_numeric_corner_stream_17
                  slti         s6, s2, -1768
                  srl          s2, s10, s3
                  sltu         s0, a2, a0
                  ori          s4, s5, -495
                  andi         s2, t5, 1174
                  slli         a0, ra, 24
                  andi         s8, s6, -1475
                  lui          t0, 239583
                  andi         a1, a0, 1697
                  srai         s10, a1, 10
                  srl          s6, s9, s0
                  andi         a3, a5, 901
                  srl          s0, a6, tp
                  or           s5, s0, s11
                  lui          zero, 831657
                  srai         a0, sp, 18
                  ori          s8, tp, -416
                  slli         a7, sp, 21
                  sub          gp, t3, s5
                  xor          zero, a0, s2
                  xori         s0, s8, 320
                  srli         t3, s9, 1
                  sll          t6, ra, t3
                  sltiu        s9, t4, 82
                  xor          a1, a1, sp
                  srl          s4, gp, s7
                  addi         gp, t6, -1534
                  lui          t1, 332910
                  xor          zero, t6, a1
                  srai         a2, s9, 26
                  slti         t0, s6, -1099
                  addi         a2, gp, 329
                  srai         a3, sp, 22
                  sll          t0, s6, t3
                  andi         t0, s2, -1729
                  andi         s9, a3, -352
                  sub          s9, t6, tp
                  or           t1, s5, gp
                  xor          s8, t5, s3
                  sub          s8, s5, t6
                  slt          s7, ra, t3
                  sltu         gp, s1, s8
                  sub          ra, s9, s10
                  sra          t6, t4, gp
                  srl          s7, s10, s4
                  srl          a0, a7, gp
                  ori          s3, s7, 1625
                  and          s7, s2, s9
                  addi         t1, t0, 1795
                  nop
                  sll          s7, s6, s8
                  sub          t5, t3, s5
                  sll          s10, s11, gp
                  ori          t0, s2, 1249
                  srl          s10, a6, zero
                  xor          s6, t1, s7
                  and          t0, a7, s3
                  andi         s4, a3, -1449
                  addi         s3, s6, -1839
                  auipc        a0, 704688
                  ori          a0, t1, 422
                  sll          gp, a2, a5
                  srli         t0, s1, 18
                  lui          t6, 869146
                  srli         a5, t6, 14
                  add          s11, a1, a2
                  slli         a4, s9, 7
                  sltiu        s9, t4, 1761
                  addi         s2, t4, -1078
                  slli         a1, t4, 23
                  srl          s2, a6, a3
                  sltiu        a3, a2, 1495
                  add          s0, sp, a6
                  and          s7, s11, t6
                  andi         s2, s2, 1031
                  or           t1, s4, s4
                  sub          a0, tp, a2
                  nop
                  slti         a7, s10, 1291
                  and          s3, t0, t3
                  slt          a5, a3, s5
                  sra          s7, t6, s9
                  sltu         t4, a0, a5
                  nop
                  srai         a5, t5, 13
                  srai         s0, a5, 11
                  srai         sp, a1, 8
                  srai         t3, sp, 12
                  nop
                  sltu         s4, s3, t6
                  xori         sp, s8, -946
                  sra          a2, a5, t1
                  sub          gp, s1, a2
                  srai         s4, s5, 17
                  srli         t6, t2, 4
                  sll          s4, a0, a7
                  lui          zero, 1048126
                  add          a0, a2, s7
                  xori         t6, s4, 763
                  sub          a4, t0, s10
                  lui          s8, 30607
                  andi         s4, s3, 1435
                  srli         sp, t4, 31
                  slt          zero, t0, s2
                  ori          s5, s8, 1530
                  andi         a7, s9, -81
                  srli         t1, a2, 9
                  andi         a6, t5, -401
                  slli         t3, t4, 19
                  sub          s0, s11, a4
                  srai         t6, zero, 2
                  or           s11, gp, a5
                  slti         a6, a0, -1729
                  sra          s11, a0, t6
                  slli         s3, s9, 20
                  sra          t4, sp, a3
                  nop
                  andi         a5, zero, -1689
                  lui          s10, 217190
                  addi         s7, s3, -1592
                  slti         a6, s1, 63
                  sltu         a4, s2, a2
                  sltu         s6, a1, ra
                  sltu         s7, s0, t6
                  and          s5, a4, s5
                  srai         s4, t1, 21
                  slti         gp, gp, -1111
                  ori          s11, s9, 807
                  srli         a3, s1, 1
                  nop
                  add          ra, s1, s8
                  sub          a5, s6, s11
                  sra          s9, s5, s0
                  add          t5, t3, t5
                  sltiu        s4, s0, 1786
                  addi         a6, a5, 1367
                  addi         a3, a5, 222
                  or           s4, t0, s4
                  sltiu        s4, s11, -1719
                  slti         s4, a6, 1777
                  addi         ra, t2, 1364
                  srli         a3, sp, 23
                  xor          s5, s11, a5
                  sltiu        t3, t3, -1425
                  xor          s4, t4, a4
                  sub          t5, t6, gp
                  or           a2, sp, t2
                  slt          a1, t0, t3
                  andi         a7, t2, 1547
                  srl          a3, s7, t6
                  slli         sp, s11, 24
                  sltu         a4, a4, a0
                  slli         a2, a1, 19
                  slti         s3, t1, 1389
                  add          zero, t4, t2
                  or           a3, s9, a3
                  andi         a6, sp, -1633
                  and          t4, s7, s10
                  xori         s11, t6, -458
                  sltu         s9, a6, s3
                  sub          s0, s10, t3
                  andi         t0, a6, 339
                  slt          s5, s5, sp
                  slt          s3, s6, t6
                  sll          s0, a3, t1
                  srai         s0, s5, 4
                  slt          a1, sp, t2
                  sltiu        t5, a3, 414
                  slti         s7, s2, 194
                  xori         a1, gp, 707
                  srl          s9, a3, t5
                  sub          a1, a4, s11
                  ori          s9, s6, 1932
                  slt          s8, s6, a0
                  srai         s9, t2, 18
                  srli         a5, s1, 23
                  xor          s10, s7, t2
                  xori         t4, s8, -1293
                  slli         s9, s10, 17
                  andi         s0, gp, 1503
                  and          s6, a3, a1
                  slti         s9, tp, 1981
                  slli         t4, s7, 12
                  add          s5, a6, a4
                  ori          s0, t0, -1249
                  slt          zero, a1, t5
                  slti         a1, s9, -157
                  lui          zero, 454821
                  andi         ra, s1, 171
                  sra          a3, a3, t0
                  xori         s6, a2, 2022
                  sll          a3, s3, tp
                  xori         t4, s4, 1065
                  xori         s2, s9, -443
                  slli         s8, a0, 11
                  nop
                  srli         t1, t5, 29
                  xori         a4, a1, -157
                  srli         s4, s2, 20
                  lui          sp, 147272
                  add          s3, t3, s4
                  slti         gp, t1, -1544
                  srli         s3, a5, 12
                  srl          t1, t2, sp
                  auipc        t5, 478282
                  srl          gp, s4, t6
                  slli         gp, t6, 19
                  andi         a3, s2, 168
                  sltu         t1, t6, s5
                  and          ra, s7, t1
                  sll          t5, s9, a4
                  addi         s4, s5, 587
                  sra          a2, a7, s8
                  ori          t0, s5, 1013
                  sltiu        t0, s3, 818
                  add          t6, t5, s2
                  addi         ra, s6, -1593
                  or           a5, t5, s5
                  slti         a3, s4, 1721
                  nop
                  sltiu        a0, s2, 1642
                  slli         t1, t3, 17
                  lui          t4, 345904
                  ori          t5, s5, 1900
                  sltu         s6, a3, a7
                  xor          gp, zero, a3
                  sltiu        s3, s2, 1711
                  slt          s5, s8, a5
                  srai         s7, sp, 12
                  add          s0, a4, s5
                  slt          s6, t4, s7
                  ori          s5, a2, 236
                  slt          a1, s11, s2
                  xori         gp, a5, 388
                  addi         t4, s0, 1430
                  slt          t1, gp, ra
                  or           a1, s9, a4
                  auipc        s6, 358814
                  srl          s5, t2, tp
                  and          ra, gp, a0
                  addi         t4, t4, 929
                  sra          a0, a5, t4
                  slt          s4, s3, s7
                  sltu         t4, a5, t4
                  addi         s7, a1, 1751
                  add          t4, s0, t2
                  and          a5, t5, s9
                  xor          s0, s6, s2
                  xori         a6, a0, -1883
                  sra          a1, tp, s2
                  sll          s10, tp, tp
                  slti         s4, s8, 941
                  srai         a2, t4, 15
                  sll          ra, s0, a3
                  add          s2, a5, a4
                  add          a2, t4, s4
                  sra          gp, a4, t4
                  lui          a5, 255952
                  lui          a1, 749605
                  xor          a5, s11, a7
                  add          t0, a1, s3
                  xori         t6, s11, 627
                  or           t4, sp, s0
                  slt          a2, a0, s4
                  auipc        s4, 274950
                  sltiu        t5, gp, 1483
                  slli         t3, s4, 31
                  sltiu        zero, a4, 865
                  nop
                  sub          a2, s0, gp
                  xor          s7, s1, s9
                  srai         a5, s8, 30
                  xori         t0, gp, -906
                  or           a1, ra, t6
                  sub          s6, s4, sp
                  srli         s9, a0, 10
                  ori          t0, a6, -607
                  auipc        s11, 163612
                  xori         s2, s9, -1934
                  sll          a5, a6, a5
                  nop
                  addi         t1, a1, -933
                  auipc        a1, 32497
                  sltu         gp, s5, s6
                  sub          a7, t2, a6
                  sra          s10, t5, tp
                  and          t3, s8, s0
                  addi         t3, gp, -1865
                  xor          s6, a7, t4
                  sra          a3, tp, t5
                  auipc        a3, 564560
                  sll          gp, t4, s0
                  sll          s7, a1, a3
                  ori          t0, t2, 1975
                  nop
                  addi         t5, s6, 1051
                  slli         a2, a1, 20
                  sra          s7, a3, s7
                  slti         t1, a1, -905
                  and          t0, a2, sp
                  sltiu        s9, a6, -1992
                  srai         a7, s1, 18
                  andi         a5, t2, -654
                  sltiu        a3, zero, 101
                  slli         gp, t0, 24
                  sltiu        a3, s10, 154
                  addi         s8, a2, -2048
                  lui          s0, 476505
                  addi         a6, a0, 1592
                  lui          a3, 920540
                  or           s11, a6, s6
                  and          s3, s8, s0
                  slli         s7, s11, 29
                  sub          a2, s4, s3
                  sltiu        a4, a3, 2017
                  sltu         s10, s6, s10
                  and          s0, zero, s9
                  lui          zero, 406546
                  add          s11, s3, t6
                  or           a1, t2, s10
                  sub          gp, t2, s8
                  srl          ra, a7, a4
                  xori         a3, s3, 1092
                  xori         t1, t3, -206
                  nop
                  lui          t1, 172358
                  sltiu        a6, t0, -250
                  sra          t5, t4, zero
                  xori         t0, t3, -244
                  lui          t5, 160830
                  sub          a0, s8, t1
                  ori          ra, s3, -173
                  xor          a3, sp, s11
                  lui          s4, 479299
                  add          zero, s6, t6
                  sltu         t4, a4, s11
                  slli         sp, s5, 29
                  sltiu        s6, s8, -1794
                  andi         ra, s7, -1054
                  slli         ra, s10, 12
                  srl          a3, a1, t5
                  sra          a2, a3, gp
                  sub          s4, t2, t2
                  ori          s11, s10, 1176
                  srli         sp, s6, 30
                  srli         s6, s7, 16
                  sra          s6, gp, s10
                  lui          a0, 842769
                  add          t1, s9, ra
                  and          s4, s3, a4
                  sub          a5, s6, t5
                  nop
                  add          t4, t3, s11
                  ori          zero, a2, -893
                  sltu         t1, s8, s4
                  sltu         a3, s8, s2
                  sltiu        t4, a1, -1319
                  auipc        a2, 371603
                  slli         gp, s3, 6
                  sltu         s4, a6, t0
                  sltiu        t1, tp, 134
                  slt          s7, a5, a3
                  xori         t6, s10, -425
                  xor          t3, s1, s8
                  auipc        ra, 579602
                  sub          s10, s10, zero
                  xori         a5, s10, 1987
                  sltiu        sp, s11, 311
                  ori          s9, a6, 1360
                  slti         sp, a2, -569
                  or           s10, s4, a5
                  sub          s6, s10, t3
                  ori          a1, sp, -1588
                  srai         s8, t5, 3
                  or           t5, a2, t5
                  slt          s11, s10, t1
                  sltu         a0, t3, ra
                  sltiu        a3, s0, 239
                  xor          s2, t5, t4
                  or           t3, sp, t0
                  srl          a3, ra, t6
                  or           gp, a7, t0
                  lui          t0, 146453
                  srl          s8, t0, t5
                  auipc        s10, 97226
                  xori         s5, t0, 1412
                  slt          ra, s4, ra
                  addi         t0, a7, 1558
                  sub          ra, gp, a2
                  addi         s0, t0, -1329
                  slt          ra, s8, a1
                  srli         a6, a0, 17
                  sra          t1, sp, s7
                  auipc        t0, 353182
                  xor          a5, a4, s5
                  slti         a0, sp, 1386
                  ori          a3, s6, -670
                  andi         a6, a0, 200
                  xor          t4, s4, ra
                  xor          s0, t4, s0
                  andi         t0, s9, 2047
                  addi         s11, s1, 1900
                  sub          s6, t1, s9
                  sltiu        s0, s2, 783
                  srl          s7, a6, s7
                  slti         a2, a5, -918
                  sltu         ra, t5, s0
                  slli         s2, t4, 11
                  auipc        s6, 514890
                  slli         s0, s5, 5
                  ori          sp, t6, 385
                  add          s4, t2, t0
                  xori         s0, a4, -981
                  andi         t5, s10, -1994
                  addi         a0, s8, -774
                  slt          a7, t4, a7
                  andi         s10, a2, 97
                  sltu         a2, s3, a6
                  srl          s8, t0, s2
                  ori          a1, a3, -1477
                  xor          ra, sp, s10
                  srai         zero, s9, 11
                  lui          s9, 908248
                  srai         zero, gp, 29
                  srai         a5, t6, 8
                  and          a6, s4, a6
                  addi         gp, a0, 921
                  srai         s4, s10, 5
                  slli         t4, ra, 4
                  addi         s2, s7, 1198
                  xor          t4, t4, t2
                  srai         gp, s5, 10
                  and          a6, s6, s11
                  srai         a0, s7, 18
                  srai         s0, s2, 27
                  sll          s9, s10, t5
                  andi         a7, a4, 963
                  auipc        a6, 151982
                  sub          a2, a0, t5
                  lui          s0, 65502
                  sll          s9, t1, s2
                  xori         s9, s7, 1742
                  srai         s7, gp, 15
                  slt          s8, t0, t0
                  sub          s8, tp, a3
                  sub          sp, t0, t3
                  nop
                  sub          t3, t3, s11
                  xor          a4, gp, a5
                  addi         t3, a5, 322
                  srai         a3, s5, 17
                  sra          s7, t6, t3
                  slli         s10, a0, 14
                  sll          s3, gp, s4
                  auipc        a6, 816311
                  slti         t6, ra, -226
                  addi         a3, a7, -5
                  sltu         s6, t0, a3
                  sltu         s2, s3, s5
                  sltiu        ra, a5, 129
                  xori         zero, t2, -1085
                  sub          zero, s1, s4
                  ori          a0, s1, -1915
                  nop
                  nop
                  sll          t0, t3, a6
                  auipc        s8, 866318
                  sll          a2, gp, a0
                  ori          a2, a1, -1034
                  sub          a6, s6, t1
                  srli         t5, a3, 2
                  lui          s11, 504813
                  xori         a0, t3, -534
                  srai         sp, gp, 28
                  lui          a4, 637213
                  srli         s8, s0, 0
                  sub          a4, a3, ra
                  ori          s4, sp, 332
                  nop
                  sra          t4, s9, s6
                  xori         a5, s9, 910
                  srl          a3, s10, s7
                  srl          s8, s0, a4
                  sltiu        zero, s9, -1663
                  slti         zero, gp, 1691
                  sll          a4, zero, ra
                  srli         a0, s0, 20
                  srai         zero, t4, 0
                  srli         a0, t0, 0
                  ori          a1, a6, 571
                  or           t4, a1, t2
                  slli         t3, a6, 0
                  or           s7, sp, s10
                  nop
                  andi         t5, a6, -974
                  or           a4, t5, a4
                  sltu         s2, a5, t6
                  nop
                  lui          t3, 836716
                  xori         s7, s4, -775
                  sltiu        zero, s5, 286
                  srai         t0, t5, 27
                  auipc        gp, 265776
                  andi         t5, a2, 397
                  srai         s8, s3, 0
                  lui          t5, 911596
                  sra          s5, a0, t2
                  srai         s3, t6, 1
                  ori          s3, t4, 194
                  srli         s4, s9, 17
                  addi         t4, a6, 2029
                  srl          s7, s0, a2
                  sll          t0, a6, t5
                  add          s2, a7, s6
                  ori          s11, t4, 2022
                  sltiu        s0, t3, 12
                  andi         s10, a5, -529
                  or           s0, a2, t3
                  sll          ra, t5, a4
                  slti         s2, t1, 1609
                  andi         gp, s10, -221
                  sltiu        s4, s9, 1926
                  slli         t4, s11, 31
                  xor          a3, gp, s9
                  xor          a1, s10, a7
                  lui          s3, 899189
                  sll          s2, a5, t6
                  add          s5, s7, t5
                  auipc        sp, 923955
                  slt          t4, a6, a3
                  nop
                  slli         s5, t5, 7
                  sll          s0, gp, s2
                  sll          a4, ra, zero
                  sub          s0, tp, sp
                  sll          t3, s10, s8
                  ori          a3, ra, -685
                  srli         s6, a0, 15
                  sltiu        ra, sp, -228
                  ori          t0, s7, -755
                  nop
                  srl          s3, s8, a6
                  addi         a7, s3, 1844
                  sltu         s4, s5, t0
                  srl          t6, a2, zero
                  sltiu        s10, s1, -413
                  sltiu        s0, t6, -1529
                  sub          a1, t6, a5
                  srai         t6, t4, 29
                  nop
                  slti         s9, a5, -1576
                  sll          s10, s8, s4
                  and          zero, s0, t6
                  srli         s0, a4, 26
                  sltu         a5, s8, s0
                  add          sp, s2, s9
                  slli         s3, sp, 18
                  auipc        a4, 509414
                  xor          t0, sp, s7
                  ori          t1, ra, -785
                  addi         a7, a1, 1630
                  xor          a5, s11, t2
                  sltu         sp, s0, a5
                  slt          s3, s9, s10
                  addi         a6, a0, -1254
                  addi         s3, t1, -1470
                  sub          s7, s4, zero
                  andi         s8, t5, -769
                  sll          t5, s3, tp
                  xori         a3, t4, -481
                  srli         s5, tp, 30
                  ori          gp, tp, 1372
                  lui          sp, 880827
                  slt          gp, t2, a4
                  sltiu        t0, t6, -656
                  andi         t4, a5, -196
                  srai         s0, t6, 31
                  sll          ra, a6, s10
                  slti         t0, s3, -1209
                  and          zero, s3, s3
                  or           t1, s6, a2
                  srli         t5, a6, 19
                  srl          t5, zero, t4
                  sll          s11, a4, a4
                  nop
                  ori          a1, s11, -1424
                  ori          gp, zero, -1997
                  srli         a5, a0, 30
                  sltiu        t0, s10, -1199
                  sub          s9, ra, a7
                  sltu         zero, t4, s4
                  sll          zero, a2, a1
                  or           a3, t4, gp
                  srai         t4, s2, 12
                  slli         t1, s0, 20
                  nop
                  auipc        s6, 453673
                  andi         sp, a4, -1255
                  and          t1, t5, a6
                  srli         ra, a4, 15
                  srai         t4, s10, 22
                  sra          s9, t5, s7
                  andi         sp, a0, 16
                  lui          t1, 11160
                  andi         a6, s0, 522
                  andi         s3, s5, 1677
                  addi         s7, gp, -959
                  sll          s6, s3, s8
                  sra          a2, t2, a5
                  sub          s2, t2, tp
                  sltiu        s3, s8, -896
                  and          s11, s9, s3
                  srl          zero, t2, a6
                  slt          t4, s2, t6
                  slti         t1, t1, -1362
                  srai         gp, s9, 4
                  srai         s9, gp, 31
                  addi         ra, t1, -1389
                  sltu         t3, t6, t1
                  slti         s6, t3, 190
                  srli         s9, a2, 14
                  srli         s6, gp, 16
                  sltiu        a7, t1, 572
                  auipc        zero, 847839
                  slti         s7, s5, -1485
                  slt          a5, tp, s8
                  sub          a2, s4, sp
                  sltu         sp, a5, t4
                  sltu         sp, s10, s9
                  slti         s8, s0, -197
                  or           t6, s8, zero
                  nop
                  srl          ra, a7, gp
                  xor          s4, s6, s4
                  lui          a4, 812567
                  li           a2, 0x1db4f3b2 #start riscv_int_numeric_corner_stream_20
                  li           a3, 0x80000000
                  li           s5, 0xc243c81d
                  li           s0, 0x13e055ee
                  li           s8, 0xd00a4e5e
                  li           a1, 0xffffffff
                  li           s4, 0x3a40eea7
                  li           s10, 0xe9849254
                  li           ra, 0x0
                  li           t4, 0x4a6981d9
                  addi         s10, s10, 171
                  addi         s0, ra, 294
                  nop
                  add          s8, a1, ra
                  nop
                  sub          ra, s4, s8
                  nop
                  add          a2, ra, t4
                  nop
                  sub          a3, a3, ra
                  nop
                  add          ra, s8, s8
                  nop
                  nop
                  auipc        s4, 248386
                  lui          s5, 722065
                  lui          s0, 163611
                  add          s0, a1, s0
                  addi         a1, s10, 835
                  lui          a1, 121378
                  lui          s4, 911342
                  sub          s4, ra, t4 #end riscv_int_numeric_corner_stream_20
                  add          t6, ra, a2
                  sltiu        t4, s8, -1565
                  srl          s2, s1, t5
                  xor          s11, s1, a0
                  sltiu        sp, s1, 1378
                  andi         a1, s4, 277
                  slti         s9, ra, 516
                  or           sp, s3, t6
                  lui          t3, 848368
                  sra          t0, s10, s1
                  andi         s9, s4, 526
                  srli         a3, a0, 13
                  add          s7, a1, tp
                  srl          a1, s2, t2
                  auipc        s10, 981128
                  srli         a3, a7, 30
                  add          s3, a3, t3
                  and          s3, a4, a0
                  srli         t4, s1, 6
                  nop
                  sll          a4, s9, a3
                  sltu         s5, s7, s2
                  sltiu        s3, zero, 38
                  nop
                  lui          s3, 608711
                  lui          t5, 241162
                  ori          a1, a2, 866
                  sra          a1, s10, t1
                  srl          s5, ra, a7
                  add          a2, a0, s4
                  slti         s9, s7, 809
                  xor          a6, s8, t4
                  slli         ra, a3, 0
                  and          s10, s9, s10
                  slli         s9, s10, 21
                  andi         a2, t4, 726
                  slti         s3, a3, 398
                  srl          a6, a4, t3
                  slli         a2, t1, 28
                  ori          s0, zero, 987
                  sltu         s0, a3, t1
                  xori         s2, s9, -1603
                  and          s7, a5, a1
                  slt          s6, s8, s3
                  ori          s2, s6, -866
                  ori          t0, t5, 605
                  or           gp, gp, a5
                  ori          gp, a3, 1934
                  xor          s3, ra, a2
                  sltiu        gp, a1, -33
                  xor          a6, t4, t6
                  srli         s7, s0, 14
                  sra          s9, s2, a7
                  srai         s9, t3, 2
                  lui          s6, 276845
                  slti         a2, a4, -1588
                  auipc        a2, 1047926
                  lui          s11, 443608
                  sltiu        t0, s4, 3
                  sltiu        s9, a0, -1704
                  addi         a1, sp, 747
                  srai         zero, ra, 1
                  xor          t0, a0, t2
                  auipc        s4, 776247
                  add          s9, t3, t2
                  andi         s10, t6, 134
                  slti         a7, a6, -1009
                  addi         s11, gp, -1824
                  andi         s0, s9, 889
                  ori          t5, t0, -55
                  nop
                  sll          t4, t3, s8
                  add          a6, s9, t6
                  sltu         a5, s0, t5
                  sltiu        t1, t3, -1624
                  srai         s0, t6, 7
                  lui          a0, 944359
                  ori          s7, t1, 227
                  srli         s3, a4, 0
                  sub          t6, t2, tp
                  slli         s0, a1, 7
                  or           a7, t1, t2
                  sltiu        a6, t4, 513
                  sltu         s6, s2, s11
                  or           s9, a4, gp
                  srai         a7, t0, 7
                  sra          t4, s7, t1
                  nop
                  slti         a3, t3, 200
                  slli         a1, s1, 2
                  lui          t0, 28712
                  sltiu        s10, ra, 1556
                  nop
                  and          a5, gp, t4
                  or           s0, s11, s0
                  and          s6, ra, t1
                  sub          gp, t0, a4
                  add          t0, t5, tp
                  slli         s0, t1, 17
                  srli         a3, s6, 29
                  ori          s7, s11, 1713
                  auipc        t5, 690911
                  sub          s8, s4, s5
                  lui          s6, 211139
                  sltu         a5, s7, s1
                  lui          s6, 246295
                  sub          t3, t3, s0
                  slt          t4, a5, a6
                  srli         s9, t5, 18
                  andi         s7, a6, 1366
                  slli         ra, a6, 31
                  auipc        t1, 895815
                  srai         s6, s9, 9
                  sra          a7, t3, s9
                  sltiu        s4, s0, 1756
                  or           a0, a1, a4
                  add          s2, sp, s2
                  ori          t3, gp, -1596
                  xori         t1, a6, 1675
                  slli         a3, ra, 18
                  addi         t0, s1, -1701
                  andi         t6, ra, 1541
                  andi         t4, a1, 506
                  sra          a5, s1, t3
                  srli         t1, a3, 13
                  auipc        t4, 403905
                  add          sp, s10, t5
                  add          t3, a3, s7
                  srl          s4, t0, sp
                  sub          t6, t6, t4
                  add          a1, ra, a3
                  srai         zero, t2, 21
                  xori         ra, gp, -1874
                  ori          t3, s2, 142
                  sltiu        t1, s2, -761
                  xori         zero, zero, -571
                  slt          a0, s11, s5
                  sub          a7, a7, s4
                  slt          gp, s1, s7
                  addi         gp, s5, 179
                  sltiu        s8, s6, 1264
                  nop
                  nop
                  slti         t1, t3, 1705
                  slt          a3, a4, t6
                  slti         a7, t2, -968
                  xori         a3, sp, 1021
                  srl          s9, s6, s5
                  and          s3, a5, ra
                  sltu         ra, a3, t2
                  slti         a4, s0, -878
                  sra          s4, t3, a6
                  addi         a3, a1, 907
                  lui          gp, 761958
                  or           s6, zero, s6
                  sub          a0, s8, s6
                  xor          gp, a1, t0
                  sltu         t6, s9, t6
                  ori          a6, a2, -1239
                  ori          a7, a6, -146
                  srli         a0, t4, 16
                  sltiu        s6, a4, 1890
                  sra          s4, a7, s5
                  srl          s8, s5, s5
                  slt          s5, a4, a6
                  ori          ra, zero, -228
                  add          s9, gp, t6
                  and          s8, s8, s5
                  addi         ra, a2, 551
                  auipc        a4, 90554
                  slti         t0, t1, 265
                  srl          gp, t4, t3
                  ori          ra, s11, 573
                  lui          a4, 940574
                  or           t0, tp, t4
                  add          zero, t0, a7
                  slt          s2, a2, s5
                  ori          ra, t5, 1656
                  sll          a4, t6, s7
                  lui          s5, 726833
                  and          s2, a0, a0
                  add          t4, a5, t6
                  auipc        s10, 250779
                  nop
                  sll          a0, a2, a1
                  sll          a3, a6, s5
                  srl          t1, s11, s4
                  slt          a3, s9, zero
                  sll          s2, t1, t3
                  srl          s11, a4, s10
                  auipc        a4, 231048
                  nop
                  sltu         a2, sp, t4
                  srai         s10, a3, 5
                  auipc        t4, 142426
                  sltu         t4, s10, s1
                  slti         a5, s2, -104
                  srli         t1, t2, 14
                  nop
                  lui          s4, 420312
                  addi         s5, a0, -358
                  sltu         a5, t5, t3
                  ori          s8, s4, -1260
                  or           s4, t0, gp
                  auipc        t6, 519346
                  auipc        a2, 572801
                  srai         a1, t2, 13
                  andi         s7, gp, -1461
                  slti         a2, t3, 1416
                  srli         s2, s8, 12
                  addi         s9, s0, -498
                  slli         sp, t1, 10
                  srai         a5, t6, 18
                  srli         s6, a7, 2
                  srai         a3, s6, 11
                  andi         a5, s9, 781
                  slti         s7, s11, 287
                  nop
                  or           a7, s5, s5
                  xori         a2, a2, -149
                  sra          t0, a4, s2
                  or           a7, a1, t5
                  sltiu        t1, zero, -1414
                  addi         a2, t6, -1693
                  slli         t6, s2, 1
                  sra          t3, sp, s4
                  slt          s4, tp, tp
                  add          sp, s9, gp
                  slt          s7, s6, s11
                  or           s7, a3, a2
                  sra          a4, zero, s2
                  and          s9, gp, s0
                  andi         s5, s5, 200
                  addi         ra, t5, 1876
                  xor          a5, t0, a2
                  srli         s11, s7, 21
                  sll          t0, t1, a7
                  auipc        a7, 5979
                  lui          sp, 803252
                  sltiu        a7, a7, 1271
                  slti         t6, a7, -366
                  lui          a7, 718145
                  ori          sp, t5, -1518
                  andi         t6, a5, -1112
                  slt          s0, a5, a3
                  ori          a0, t0, -643
                  slt          t1, sp, s8
                  and          t1, a4, a1
                  nop
                  andi         sp, t4, 1782
                  srli         t6, a4, 27
                  slt          sp, s7, t3
                  slt          s8, s6, s10
                  andi         a4, a4, 1523
                  or           a1, t5, s0
                  sra          ra, zero, s5
                  slti         s10, a6, 1194
                  slt          s11, s8, t3
                  and          t6, s10, tp
                  andi         a2, t6, 1617
                  xori         a0, s9, -20
                  slli         sp, t1, 27
                  ori          a1, s4, -1749
                  add          s4, s3, tp
                  slli         t0, zero, 9
                  xori         s5, s10, 720
                  xori         t4, s6, 1346
                  and          s6, a4, a1
                  auipc        t0, 107602
                  lui          s10, 555226
                  srai         s11, t1, 3
                  add          sp, s6, s11
                  lui          s0, 956252
                  slt          gp, s7, t6
                  nop
                  or           ra, ra, tp
                  sll          a2, s2, s11
                  xor          s7, gp, zero
                  lui          s2, 441568
                  nop
                  slli         s5, t0, 29
                  slt          s11, gp, s5
                  sltiu        a5, t4, 1849
                  addi         a4, a2, -236
                  lui          a1, 880801
                  addi         s7, s7, -1674
                  andi         a3, t4, -832
                  srl          s5, s1, s7
                  lui          t4, 475189
                  auipc        a0, 419680
                  srai         a1, gp, 31
                  sltiu        a7, s1, -1815
                  xori         a6, s10, -46
                  srl          s11, t2, ra
                  srai         s4, zero, 15
                  or           gp, a1, tp
                  slt          s8, t2, s11
                  or           zero, s4, s1
                  xori         a5, s6, -545
                  addi         t1, t6, -913
                  lui          s5, 473376
                  addi         t1, sp, 88
                  or           t5, a3, s7
                  sub          s8, s9, t0
                  srai         s0, a1, 24
                  sra          t4, a4, a6
                  lui          sp, 812440
                  or           t1, a4, sp
                  srl          t1, s1, s1
                  or           ra, a1, s4
                  addi         t3, s7, -1539
                  slti         s4, s1, -995
                  srli         t0, t0, 28
                  or           s6, t2, t2
                  or           t6, ra, s10
                  slti         s11, s2, -756
                  nop
                  nop
                  andi         t1, t3, 1848
                  sll          s0, t0, s11
                  ori          s5, a1, -1076
                  srl          s9, t1, s1
                  andi         a0, s6, -182
                  andi         s11, a2, 563
                  nop
                  addi         a2, s9, -348
                  srl          s3, s1, sp
                  xor          a1, gp, s1
                  slti         t1, a4, 1672
                  slli         a6, t0, 22
                  srai         s11, s4, 13
                  sltiu        s9, a5, -1084
                  add          sp, s6, a1
                  lui          sp, 668426
                  nop
                  srl          t1, s0, a4
                  sub          ra, a0, s7
                  sltiu        t4, s10, 46
                  xor          a1, t0, a3
                  xori         a0, s5, -1400
                  sll          s5, t5, s7
                  slt          s4, s3, t2
                  sra          s2, s2, a6
                  sra          ra, t5, a3
                  lui          sp, 114925
                  nop
                  add          s7, t4, s8
                  sltu         t5, a1, a7
                  slti         a7, s6, -357
                  srai         t1, s9, 0
                  slt          s7, s1, t3
                  slt          t4, a6, s7
                  sub          a3, s1, a1
                  xor          sp, t2, a3
                  xori         t5, tp, 1735
                  sub          a3, t5, a2
                  sub          zero, s9, gp
                  lui          a5, 381895
                  sltiu        a5, t5, 606
                  or           s0, t1, t6
                  srli         a2, sp, 4
                  andi         ra, s0, 359
                  ori          t0, zero, 351
                  slt          s0, a1, s10
                  addi         t5, a7, 1176
                  and          t6, s1, a1
                  sltu         s9, t2, s6
                  xor          s6, a5, a4
                  slt          a2, s5, zero
                  srl          s5, t2, s6
                  sltiu        gp, a7, 1699
                  srai         s7, a3, 16
                  xor          s10, t0, t3
                  sra          a4, zero, s10
                  xori         s8, s2, 68
                  xori         a5, s1, -1459
                  srai         a3, t5, 28
                  and          zero, s5, t0
                  add          s4, sp, t1
                  srli         s0, s9, 22
                  xor          s0, t3, a7
                  lui          t0, 821765
                  slt          s9, ra, s9
                  auipc        a1, 981108
                  sltiu        t6, s11, 248
                  or           a7, t5, tp
                  nop
                  srl          a5, t0, t2
                  sra          s10, a2, a1
                  xor          s9, a7, s3
                  slli         t4, a7, 21
                  andi         s11, t3, -114
                  xor          a3, t2, s4
                  sltiu        s6, s5, -1632
                  addi         s10, s0, -664
                  slli         a2, sp, 27
                  slti         s4, a2, -868
                  srli         s6, s6, 29
                  sltu         t3, a1, t0
                  slt          s6, tp, sp
                  add          a2, s2, s0
                  srli         s10, t1, 27
                  nop
                  sub          s3, t2, s2
                  srai         a1, a2, 15
                  nop
                  and          s5, sp, t4
                  sll          t1, s8, a6
                  sltiu        zero, t1, -909
                  slli         a7, zero, 27
                  add          s5, t6, sp
                  srai         s4, t3, 7
                  xori         a7, t5, -955
                  or           zero, t1, s6
                  lui          zero, 1008634
                  srli         sp, s2, 28
                  srai         s8, t4, 20
                  andi         s4, t6, 1749
                  or           sp, zero, t1
                  or           t1, t0, t1
                  srai         t5, a3, 8
                  sltu         zero, sp, t1
                  sll          a1, s7, s8
                  xor          s2, t2, s1
                  and          t4, t1, t2
                  sltu         t1, ra, a4
                  slti         t5, tp, -792
                  sll          t4, a5, tp
                  andi         s0, t1, -1427
                  ori          s2, gp, -480
                  ori          t4, s7, -755
                  and          s8, a2, s1
                  srl          a6, a2, s9
                  or           a4, t4, t1
                  slti         zero, t3, 1495
                  sltu         s8, s6, s5
                  sra          s5, s0, sp
                  auipc        a5, 300138
                  slli         t0, t3, 25
                  ori          s4, s10, -1682
                  and          s8, s9, ra
                  slti         s7, a1, 698
                  slli         sp, t3, 28
                  or           s8, a7, t3
                  srai         gp, t4, 19
                  sra          s11, s8, t1
                  slli         a1, s4, 5
                  and          a5, a4, s2
                  sltiu        zero, a2, -392
                  addi         a4, ra, -990
                  sltiu        s0, sp, 1095
                  lui          s2, 987438
                  srli         s5, s5, 30
                  addi         a1, t1, -1135
                  ori          t4, s1, 1405
                  ori          s7, t0, 207
                  srai         a3, tp, 30
                  addi         a6, s0, -1917
                  lui          a5, 804251
                  srai         s4, s1, 12
                  andi         a1, s2, 1414
                  srai         a4, s5, 29
                  srli         sp, t5, 19
                  srl          s0, t1, s3
                  sltiu        ra, a2, 1364
                  sra          a3, a6, a7
                  addi         t4, t3, -1209
                  srai         t4, s8, 20
                  xor          t6, s2, a4
                  srli         a6, a5, 6
                  sra          t3, a4, s11
                  srai         s8, t2, 24
                  slti         t1, tp, -405
                  slti         a2, a7, -1202
                  or           a5, s6, s7
                  auipc        a1, 14874
                  sltu         a2, t1, tp
                  sltu         s10, t5, t4
                  srl          s4, a7, a3
                  sltu         s0, t2, ra
                  auipc        a5, 760032
                  lui          s4, 415438
                  slli         s7, sp, 23
                  srai         s11, gp, 27
                  ori          zero, t1, 1935
                  sltu         s4, t0, a5
                  auipc        t0, 924700
                  addi         a5, s3, 360
                  add          s3, a7, t2
                  add          a3, a3, s3
                  slli         t4, s10, 29
                  lui          sp, 22304
                  slt          s6, a1, t4
                  andi         t0, s6, -1237
                  slt          s6, t2, a1
                  slti         s3, tp, -89
                  sub          a4, s9, a3
                  srli         a5, s10, 18
                  auipc        a2, 841885
                  sub          a5, a3, s4
                  nop
                  slt          t6, a6, zero
                  srli         s3, ra, 29
                  sra          a7, s1, gp
                  slt          ra, t3, a0
                  or           a0, t4, a4
                  srl          t1, ra, t4
                  slti         ra, a3, -1331
                  sltu         s11, s0, s5
                  addi         s2, ra, -1624
                  lui          a1, 752943
                  srl          s5, s7, a5
                  and          sp, a5, a7
                  add          ra, s2, s11
                  and          a3, tp, a6
                  xor          s8, t6, t2
                  sltu         a3, s5, a4
                  xori         s5, t2, -866
                  srl          a4, a3, ra
                  xori         s9, tp, -1639
                  auipc        s4, 234041
                  xori         s0, a0, 1347
                  addi         s3, t3, -1339
                  or           a3, s3, s3
                  xori         a2, t5, 1554
                  xori         a6, t6, -362
                  slt          t5, s0, t1
                  add          s3, t5, t6
                  lui          t6, 906172
                  sll          a5, a5, a3
                  auipc        ra, 686024
                  sltiu        s8, a0, -1459
                  sub          gp, a4, s0
                  slti         a6, t4, 690
                  sltiu        a1, t4, -1677
                  sltu         s9, t6, t4
                  slti         a4, s5, -1158
                  sra          s11, s11, a3
                  sltiu        gp, a2, -1066
                  sltiu        t0, zero, -833
                  sll          a4, zero, s5
                  srl          t4, t3, a7
                  slti         t1, s5, 706
                  or           t4, a7, t3
                  srli         s7, a0, 25
                  addi         sp, a7, -1706
                  auipc        t1, 26380
                  xor          s6, s7, s2
                  slt          t6, s10, t6
                  or           t1, t2, s10
                  xori         t4, t1, 1730
                  srai         s9, a7, 6
                  srl          a1, s10, s10
                  auipc        s5, 20231
                  andi         a4, s10, -1907
                  sra          a5, gp, sp
                  slti         s8, s3, -1595
                  nop
                  srli         t0, a3, 8
                  nop
                  sll          ra, s4, s8
                  sll          s9, t2, a2
                  add          gp, s1, t4
                  addi         a4, s11, -1742
                  slti         a1, s6, 1901
                  andi         a3, t5, -494
                  or           s8, s4, a7
                  ori          s7, s0, 649
                  srai         sp, a0, 28
                  sll          t1, s10, a4
                  addi         t1, tp, -884
                  sltiu        s6, a3, -878
                  sub          s8, sp, s10
                  sub          s4, sp, t5
                  xor          a0, a0, s1
                  slli         t1, s1, 9
                  lui          s4, 797144
                  sll          a7, t0, a1
                  srl          s2, a1, t2
                  slt          sp, a5, s6
                  and          t1, a5, a1
                  slli         a6, a6, 22
                  and          a7, ra, s8
                  auipc        ra, 301843
                  addi         s4, s3, 42
                  lui          t1, 560131
                  srli         sp, t3, 24
                  srl          t4, t4, s11
                  srai         s2, t6, 25
                  add          a0, a5, a4
                  xori         s7, a1, 1088
                  xor          a2, a1, tp
                  slli         s4, a0, 22
                  sll          s2, t6, t5
                  srl          a2, s11, t6
                  srli         s11, tp, 25
                  ori          s6, a4, -1346
                  slt          gp, a6, t4
                  ori          t3, a4, 966
                  srai         t6, a6, 30
                  lui          s0, 47083
                  srl          a1, a1, s6
                  sll          s3, t4, a1
                  slti         t4, s9, 1283
                  sll          a5, s8, zero
                  xori         s0, a5, -245
                  slli         t6, a6, 3
                  srl          ra, a1, s1
                  sltu         a6, t6, sp
                  sub          t6, t4, s0
                  nop
                  auipc        t3, 944650
                  andi         t0, sp, -1872
                  ori          t0, s2, 124
                  or           s4, a5, t1
                  srli         t6, gp, 9
                  sltu         a2, s0, t2
                  slt          t0, a7, t1
                  slt          t4, t4, a1
                  or           t5, t2, t2
                  slti         a6, t5, 435
                  nop
                  sltiu        t6, s6, 1678
                  addi         t6, sp, 1527
                  auipc        s9, 859084
                  and          s3, t4, s9
                  or           a2, t4, t0
                  sra          t4, s5, t0
                  auipc        t4, 811173
                  slli         a4, s3, 22
                  slt          s8, s8, s8
                  ori          a6, a7, 258
                  andi         a3, t4, 1050
                  auipc        s5, 852968
                  or           s0, sp, t0
                  addi         ra, s1, -152
                  addi         a2, s3, 518
                  srli         gp, s0, 7
                  srai         a1, ra, 28
                  add          s3, t0, s3
                  slli         t6, gp, 3
                  sub          a1, zero, a7
                  or           t1, s10, s5
                  sll          t6, t6, a6
                  srai         s10, s0, 29
                  add          s10, t3, a3
                  srai         ra, gp, 7
                  sub          t1, s9, sp
                  slli         s7, zero, 0
                  sltu         s8, s1, s10
                  sub          a5, s8, sp
                  andi         s10, s6, 1820
                  xori         s0, s0, 1102
                  addi         s5, s2, 318
                  xor          t1, a6, t5
                  slt          s9, t2, a5
                  slt          gp, sp, t4
                  auipc        zero, 211365
                  xori         a0, a2, -1241
                  sub          t1, t2, s1
                  srai         gp, a4, 24
                  srli         s0, s0, 29
                  srai         s4, t5, 7
                  and          s7, a2, t3
                  sub          a2, a6, s5
                  add          s11, a6, zero
                  ori          t1, s2, -661
                  slt          a4, t0, tp
                  ori          s2, a6, -1193
                  slt          ra, sp, gp
                  sub          zero, s9, s8
                  slti         t1, a7, 1348
                  xori         sp, s0, -1268
                  slt          s3, a0, a0
                  slli         s7, zero, 26
                  andi         s8, s8, 664
                  auipc        a0, 956361
                  add          s10, a0, a1
                  add          s4, s11, s3
                  sll          s7, s2, s3
                  addi         s5, a1, -1659
                  srli         s5, a0, 3
                  sltiu        a2, t2, -1942
                  lui          t0, 674827
                  sltu         s9, t0, s10
                  and          a0, t0, s2
                  slt          t6, s0, a5
                  andi         a5, a0, -1726
                  sltu         t1, s10, s6
                  sub          a1, a0, a3
                  or           a7, s11, s3
                  addi         s10, ra, 1810
                  and          s11, t1, a2
                  srai         zero, s6, 22
                  sll          t3, a4, t5
                  or           ra, a4, t6
                  xor          s11, t3, s6
                  sub          a5, s10, s5
                  srl          s3, a4, t3
                  sub          s3, t0, sp
                  lui          gp, 199881
                  addi         a2, s0, 533
                  sltu         t1, s7, a3
                  add          a3, s11, s4
                  sra          a6, s11, t4
                  srai         s3, s4, 2
                  slti         s7, s2, 944
                  add          t0, tp, t6
                  sll          s8, t3, s7
                  sll          gp, t6, a2
                  or           t3, zero, s5
                  sra          s0, s0, t1
                  slti         ra, a0, -898
                  sltu         s3, s2, s1
                  addi         s5, zero, -1536
                  slti         s5, a2, 1506
                  sltiu        s2, a4, -1110
                  sltiu        s5, a1, -356
                  and          s3, tp, a2
                  or           t5, s9, s10
                  sltiu        gp, t3, 1185
                  xori         s2, a7, -1740
                  or           a0, a0, a6
                  slti         a1, s9, 122
                  or           s9, ra, sp
                  slti         s0, s9, -1171
                  slti         t5, s9, 1196
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           ra, 0xffffffff
                  li           s9, 0xe50a24d8
                  li           t4, 0x80000000
                  li           s3, 0x80000000
                  li           s4, 0x80000000
                  li           s0, 0x80000000
                  li           s2, 0x80000000
                  li           t6, 0x5511e4a8
                  li           a2, 0xffffffff
                  addi         a2, s9, 80
                  nop
                  auipc        ra, 928539
                  sub          s9, s3, s0
                  addi         t6, s2, 1808
                  auipc        s2, 539648
                  addi         ra, ra, 1715
                  lui          a2, 251901
                  nop
                  addi         t6, ra, -1441
                  add          ra, a2, s0
                  nop
                  nop
                  nop
                  sub          s0, s9, s9
                  add          t6, t6, s4 #end riscv_int_numeric_corner_stream_4
                  sltu         t6, a3, t3
                  lui          s5, 722194
                  addi         zero, s2, 1513
                  slli         t6, a3, 26
                  xor          t1, s0, ra
                  slli         s11, s2, 26
                  slt          s4, a4, sp
                  ori          a0, s1, -703
                  srli         s5, a6, 28
                  sltu         a7, a4, s9
                  and          s6, tp, tp
                  sll          s5, s8, s5
                  srli         t6, s6, 9
                  slli         t6, s3, 22
                  srli         t1, a6, 24
                  slli         s5, t3, 22
                  srai         s6, a5, 28
                  slt          a5, s7, gp
                  add          gp, ra, gp
                  srl          t3, t0, s4
                  srli         s4, s6, 4
                  srl          gp, s4, t2
                  srai         s2, a1, 29
                  andi         t6, ra, -85
                  addi         s8, t0, -1481
                  xori         a4, a7, 350
                  add          s3, t0, s0
                  andi         a7, a6, -1346
                  slti         t6, gp, -354
                  sltiu        s0, s1, 504
                  sltiu        t0, s1, -1899
                  xor          s2, tp, s2
                  add          s3, s8, gp
                  srli         zero, t6, 15
                  lui          a2, 430867
                  sub          s9, a5, a0
                  sltu         s7, a5, t1
                  nop
                  add          sp, a7, tp
                  andi         s11, s5, 313
                  ori          t6, t5, -514
                  srli         a7, a1, 19
                  add          ra, a1, a7
                  xori         a6, t0, -326
                  add          s7, t2, t6
                  sltu         s0, s2, s6
                  lui          s0, 57347
                  sltiu        gp, tp, 1441
                  xor          zero, a1, s2
                  srli         s5, s5, 26
                  lui          a5, 342426
                  nop
                  add          zero, tp, s10
                  slt          t0, a1, s0
                  sll          a2, a6, t4
                  srai         s7, a1, 31
                  xori         s9, a0, 238
                  lui          zero, 726611
                  nop
                  sltiu        s11, s0, -705
                  ori          s10, s6, 1866
                  slt          s5, t3, gp
                  xori         t1, t2, -819
                  slli         zero, a5, 21
                  add          s3, a0, s2
                  xori         ra, a0, -597
                  lui          a6, 513579
                  sltu         a3, s9, t0
                  addi         t3, ra, -1451
                  xori         a2, t5, -403
                  slli         s2, t6, 1
                  ori          s8, ra, -956
                  sltiu        ra, sp, -904
                  sll          ra, tp, s4
                  sltiu        a1, s6, 575
                  sltu         s10, a3, t6
                  ori          a4, s9, 1226
                  xor          a0, s11, a1
                  sltiu        t1, s7, -185
                  xor          t5, a5, s2
                  lui          t0, 253409
                  ori          s9, a1, 1961
                  add          s11, a4, t0
                  add          a3, t5, gp
                  slli         s11, a0, 22
                  sll          zero, t6, s5
                  slli         sp, s10, 20
                  slli         a3, a5, 30
                  lui          s2, 770734
                  ori          t0, s1, -294
                  xor          a1, a5, a6
                  add          t0, s6, s11
                  add          ra, s11, t2
                  sltu         s11, ra, a3
                  slli         t0, s7, 18
                  xor          a3, s0, t2
                  and          a6, s10, s7
                  lui          gp, 39082
                  nop
                  sltu         sp, tp, a5
                  andi         a7, a3, 1514
                  srai         s5, sp, 4
                  slli         t4, s4, 3
                  sll          s3, t0, s0
                  nop
                  sra          a6, s1, s2
                  andi         s9, s3, -1666
                  sltiu        a5, a2, 1073
                  or           s3, zero, zero
                  addi         a2, zero, 1224
                  andi         t0, a4, -416
                  xori         s9, s4, 1074
                  ori          a7, tp, 1968
                  or           t6, s8, s1
                  or           gp, a3, s10
                  sll          ra, a1, t0
                  xor          a4, t5, s0
                  srai         t0, s2, 26
                  srai         sp, s8, 16
                  xori         a4, s0, 1965
                  sub          s5, s7, s1
                  add          a3, t4, t4
                  nop
                  or           ra, s2, gp
                  slt          t5, sp, a0
                  sltiu        a4, s2, -1202
                  sra          t0, s3, t5
                  nop
                  ori          s10, a7, 957
                  andi         gp, a4, -1347
                  sll          s6, s6, s0
                  and          s11, a3, s3
                  srli         a4, s9, 25
                  srl          zero, s1, s10
                  sra          a5, t5, a0
                  auipc        a7, 34102
                  sll          s11, s9, s1
                  or           s2, t5, s9
                  or           s8, a6, t0
                  srl          a1, zero, sp
                  srl          a2, t6, a3
                  slli         a4, s0, 17
                  srl          a7, s10, t5
                  auipc        t1, 1000622
                  slti         a5, sp, 1264
                  sub          a4, ra, a2
                  srl          s7, s2, s3
                  and          s8, s4, a7
                  slt          s2, s1, s0
                  srl          t3, t0, s3
                  sltu         t3, gp, t5
                  sltu         s3, s6, t4
                  slt          s3, s10, a1
                  sll          s11, t6, s9
                  slli         t5, tp, 12
                  and          a0, s4, a0
                  or           s4, s9, ra
                  srai         t1, s8, 6
                  slt          s0, a3, t0
                  slt          s11, s3, t2
                  ori          t6, s10, 484
                  and          ra, a2, s5
                  addi         a3, t6, -277
                  slti         t5, tp, -1233
                  and          a7, t0, s4
                  sltu         s2, s8, s10
                  andi         sp, a5, -1937
                  lui          a3, 645122
                  auipc        a6, 240289
                  addi         t1, s7, 687
                  or           a1, s7, tp
                  addi         s2, a3, 969
                  xori         s5, t0, -1831
                  sltu         a0, gp, a3
                  slt          s8, t1, t1
                  nop
                  xori         a3, s0, -1288
                  andi         gp, s6, -166
                  slti         s2, s1, 1154
                  add          s3, gp, t5
                  and          s4, s3, s2
                  and          s9, s8, a2
                  sub          t5, ra, a3
                  slt          a1, sp, s2
                  addi         s4, a6, -1766
                  auipc        t6, 605839
                  or           t6, s5, s5
                  slt          t6, s9, s10
                  or           s4, a5, s4
                  xor          t0, a3, s2
                  andi         a3, s2, 812
                  srai         t6, a7, 20
                  or           t5, a5, s8
                  slti         t1, a3, -664
                  ori          t0, s7, -1711
                  sub          t1, a7, s3
                  nop
                  ori          t6, s3, 247
                  ori          a5, t1, 661
                  sub          s0, s3, a6
                  sub          t3, s10, s4
                  sra          a1, s9, t1
                  or           t5, sp, s9
                  auipc        t5, 548985
                  sub          s3, s5, s0
                  addi         zero, a1, 2045
                  slli         s2, s10, 25
                  nop
                  or           t3, s4, s9
                  srai         a5, sp, 1
                  andi         s7, tp, 489
                  sra          s3, t1, t3
                  sll          t6, t4, a0
                  sub          a0, t2, zero
                  slt          t4, t0, a3
                  srai         s10, t1, 15
                  nop
                  srli         zero, s4, 23
                  sltiu        s9, s11, -1188
                  sll          s2, t1, s6
                  slli         a1, s10, 30
                  srl          s6, s8, t5
                  and          ra, t5, a2
                  sltu         t5, a5, t4
                  nop
                  andi         s9, s0, -1451
                  srli         gp, a2, 12
                  slli         s11, a3, 23
                  ori          a0, tp, -1420
                  xori         ra, a3, -32
                  ori          t5, a4, -1811
                  nop
                  sltu         sp, a5, a1
                  and          s6, a1, a2
                  addi         t6, a1, -1186
                  nop
                  sltiu        s2, a1, -1133
                  slt          s7, a2, s7
                  add          t4, s9, ra
                  lui          a1, 41075
                  and          t3, gp, a5
                  auipc        s7, 1035688
                  slti         s0, t3, 117
                  sra          sp, s7, t0
                  nop
                  sltiu        t5, s7, 522
                  or           s6, s8, sp
                  ori          ra, a6, -447
                  slt          a7, s3, a3
                  xor          a3, a6, a2
                  slli         s9, t6, 16
                  and          s11, s0, t4
                  or           a6, t5, a5
                  sltu         s0, a5, t6
                  add          t0, a4, s9
                  srl          s7, t3, s1
                  and          a7, t4, s11
                  srli         a2, s11, 25
                  srl          a2, sp, ra
                  slti         zero, a6, 46
                  srl          a2, t2, s0
                  lui          sp, 512227
                  andi         a0, s3, -1147
                  add          a3, zero, a6
                  srai         a2, s10, 3
                  and          a6, s11, a3
                  slti         s10, s7, -1459
                  xor          a1, s9, a4
                  or           t1, s6, a6
                  sltu         t4, s4, tp
                  slli         ra, s2, 26
                  ori          a0, s9, -582
                  ori          a2, t3, -978
                  sltiu        a4, s2, 721
                  sub          t5, ra, s1
                  nop
                  sltu         s4, a7, s5
                  sltiu        t6, gp, -868
                  or           s7, t2, s2
                  or           s4, s9, a5
                  srai         s2, zero, 26
                  sltu         s8, t0, s3
                  nop
                  and          t4, t5, ra
                  auipc        t1, 771145
                  slti         a7, ra, -1890
                  nop
                  sll          t6, s11, a4
                  sltiu        s0, a7, 1472
                  andi         s0, a0, -2018
                  addi         a6, a6, 879
                  sra          s6, s9, gp
                  slli         zero, a0, 7
                  auipc        t4, 98534
                  sltiu        s11, t4, -564
                  srl          s5, s3, t3
                  sll          sp, s9, s11
                  sub          s0, t1, t5
                  sltu         a4, tp, a5
                  addi         ra, s10, -510
                  add          a3, a3, t4
                  addi         s3, s0, 1689
                  lui          t5, 404328
                  srli         s2, a1, 21
                  addi         a3, a2, 1332
                  srli         t1, a3, 18
                  and          t6, s11, s7
                  sll          a6, a4, t6
                  add          t1, s6, zero
                  sra          s7, t1, a2
                  srli         t6, t4, 16
                  slt          t1, s8, a5
                  sub          s3, sp, t3
                  srli         a4, a6, 0
                  slli         t0, zero, 21
                  add          s8, ra, a2
                  addi         sp, sp, 1945
                  lui          sp, 390589
                  slti         a0, t4, -1902
                  sltu         a2, t2, s1
                  nop
                  slli         s4, t3, 11
                  srai         s11, a7, 16
                  sub          a2, a1, a6
                  add          s9, s2, a2
                  addi         s11, a0, -1367
                  slti         t1, a5, 228
                  auipc        s10, 194651
                  sll          s7, s11, s10
                  auipc        a1, 844807
                  sltu         a5, t1, s8
                  auipc        s0, 942837
                  srl          s7, s8, s3
                  xor          s9, t6, s0
                  andi         a1, s6, 1556
                  slti         s11, s11, 55
                  slti         ra, t2, 1715
                  slli         t4, s11, 16
                  slli         a3, a4, 18
                  srl          a6, s3, a3
                  auipc        s4, 137343
                  slli         t5, tp, 20
                  slli         s6, t6, 24
                  sltu         s8, t4, t6
                  addi         s3, t0, 1760
                  lui          t4, 551690
                  slt          t0, tp, a3
                  ori          a5, s2, -306
                  nop
                  addi         s0, a5, 1668
                  slti         s2, a3, -1681
                  nop
                  slti         s0, a0, 219
                  sub          a4, sp, s1
                  slt          a0, sp, s6
                  sltiu        s10, s1, 1037
                  ori          s9, tp, 1629
                  sra          t0, t5, a1
                  sra          ra, s3, s2
                  addi         s2, s9, -853
                  lui          gp, 360043
                  lui          s8, 413945
                  xor          a5, t3, s8
                  sltiu        sp, t0, -777
                  xor          t4, s2, t6
                  srai         a3, s6, 18
                  auipc        s9, 601221
                  sltiu        s3, s10, -1386
                  srai         t1, t2, 5
                  slti         zero, a1, -173
                  sub          a3, a1, t5
                  ori          a4, s4, 341
                  slt          a6, s4, t3
                  lui          s9, 763328
                  addi         t3, s6, -785
                  and          s3, t6, s0
                  sll          ra, sp, a7
                  ori          s10, t4, -1335
                  srai         s2, s10, 9
                  ori          a1, ra, -1862
                  and          a6, s2, s2
                  slti         s9, a6, -329
                  sltiu        sp, s5, -138
                  addi         s5, sp, 19
                  addi         s5, a4, -1542
                  srl          a2, s0, gp
                  auipc        s4, 651073
                  andi         s9, a3, 1991
                  sra          s0, s10, a6
                  slti         sp, t3, 1174
                  sra          a0, ra, t5
                  sll          s7, sp, t3
                  sub          a4, s10, t0
                  ori          s2, a4, -316
                  ori          a2, a4, 930
                  slt          s7, t3, t6
                  andi         t0, s4, -1834
                  lui          ra, 562983
                  sra          t5, s7, s6
                  sltu         zero, t4, s0
                  andi         t5, s5, 296
                  addi         t3, a4, -1253
                  nop
                  add          t6, s1, a2
                  sltu         a7, s11, a1
                  auipc        a3, 493190
                  srai         s2, s0, 19
                  andi         s0, s4, 1424
                  slt          s11, s5, s3
                  srai         a5, t5, 18
                  slt          s7, t6, s7
                  auipc        s2, 401053
                  sll          a4, t2, a0
                  slt          s0, s4, t4
                  srli         s0, tp, 31
                  sltiu        t4, a3, 1563
                  sll          gp, s4, t2
                  auipc        ra, 615276
                  slli         a6, t2, 13
                  srai         s2, t3, 22
                  and          s11, s2, s2
                  srl          t4, a1, s7
                  srl          zero, s8, a1
                  or           t0, a3, a1
                  ori          a2, s1, -1623
                  slti         ra, a5, 1583
                  xori         s10, s11, 944
                  xor          sp, t5, a6
                  sltu         s10, s4, tp
                  ori          s3, t2, -557
                  srl          a3, a1, a6
                  nop
                  sub          gp, a3, t0
                  sub          s8, s10, s2
                  sub          t0, t3, a7
                  ori          a5, t2, -1383
                  slli         a6, s2, 28
                  addi         s5, sp, 1222
                  add          t6, a5, s1
                  sltu         a4, s0, zero
                  sltiu        s3, a0, 1605
                  addi         t4, s9, -348
                  addi         ra, tp, 1211
                  slli         t1, t5, 11
                  sltiu        a6, s5, -693
                  ori          a0, s1, -944
                  addi         s9, s1, -1796
                  srai         s3, t2, 28
                  ori          a7, s3, -1540
                  slti         t1, s5, -971
                  ori          t5, s0, 927
                  add          zero, s9, s1
                  addi         t6, tp, 785
                  add          a3, a6, t6
                  slti         s5, s4, 274
                  nop
                  xori         s2, a1, -745
                  sltu         t1, t1, t2
                  srai         t4, t3, 3
                  srli         a4, a2, 8
                  or           t1, s9, s5
                  srli         gp, tp, 30
                  or           s0, s11, s10
                  xor          s8, s7, t0
                  slt          s2, a2, a4
                  andi         gp, t3, -2007
                  and          a0, s10, s2
                  srl          t3, t2, s9
                  lui          s8, 195397
                  slt          a0, s3, s5
                  slli         a4, a2, 5
                  addi         gp, s0, -358
                  sltu         zero, s2, s9
                  auipc        s2, 124852
                  sltu         s11, a1, sp
                  add          zero, sp, s5
                  sub          t1, a0, a2
                  auipc        a1, 183349
                  sub          t1, t3, t6
                  slti         gp, s4, -1271
                  nop
                  sub          s9, s7, t5
                  and          t3, ra, t0
                  slti         ra, sp, 1337
                  and          s5, zero, t1
                  or           a3, a5, a0
                  srli         a6, tp, 17
                  sltu         zero, t2, s10
                  slli         a1, s0, 31
                  auipc        s4, 499732
                  sra          gp, s5, ra
                  srl          s7, t6, tp
                  srl          s6, t5, a1
                  sra          s11, s8, s9
                  sra          s2, s5, t2
                  sub          a4, a7, t5
                  slti         s3, s5, 1628
                  sub          a1, s10, a0
                  slli         zero, s3, 8
                  srai         s0, a1, 29
                  ori          ra, zero, -546
                  sub          s4, a3, t4
                  xor          s7, a2, a1
                  sltiu        t1, a0, -1975
                  sra          a4, ra, zero
                  sll          a2, t1, s3
                  or           s5, t2, a5
                  sltiu        s6, gp, 894
                  add          s11, a5, s7
                  lui          a7, 494093
                  slt          a6, t0, a0
                  andi         s6, s2, 419
                  sll          s7, s0, t2
                  sltiu        a5, a1, 648
                  auipc        a1, 395023
                  xori         t6, s8, 1624
                  add          a6, s7, a7
                  nop
                  srl          s10, a2, s2
                  slti         a1, a1, 1028
                  or           sp, a1, s1
                  ori          t1, tp, 261
                  nop
                  sltu         s0, a6, s3
                  slti         a3, ra, 7
                  lui          t5, 598953
                  sltiu        t3, a6, 1702
                  add          a1, s9, zero
                  addi         s3, gp, 1475
                  srl          s11, ra, s5
                  xori         a2, s7, -48
                  auipc        ra, 513625
                  xori         a4, a2, -346
                  andi         s9, a1, -1726
                  andi         a2, t2, -410
                  nop
                  nop
                  nop
                  lui          s9, 47451
                  srli         t6, a2, 16
                  xori         a6, tp, 1376
                  sra          a7, s1, t1
                  sltu         s8, s3, sp
                  xor          s10, a2, s9
                  srl          s10, t4, t0
                  ori          a0, a4, -159
                  srli         t3, a2, 17
                  and          t1, tp, s3
                  add          gp, s1, s3
                  srl          sp, gp, gp
                  and          t6, sp, a3
                  sra          s9, zero, a2
                  lui          s7, 883033
                  sltiu        t6, s0, -1686
                  srai         zero, s4, 14
                  xori         t6, s8, 440
                  srl          s8, t0, s9
                  sltu         a4, gp, t6
                  ori          gp, tp, -2020
                  sltu         t1, a5, s4
                  srl          s9, s2, t4
                  srai         a2, s8, 13
                  srai         t5, t5, 5
                  xor          a3, t5, s5
                  lui          a2, 667048
                  lui          t1, 538965
                  auipc        s2, 340925
                  or           a6, a0, a5
                  andi         a5, s4, 376
                  addi         a5, s9, -468
                  and          a0, t0, s7
                  lui          a5, 60475
                  and          a3, s1, tp
                  add          a4, gp, a6
                  or           s9, t6, s7
                  srai         t0, s0, 26
                  and          s4, s0, s7
                  slli         t0, s9, 11
                  and          a5, s8, t5
                  xor          t0, tp, s2
                  xori         s4, s11, 1448
                  addi         t3, a4, -559
                  xor          a0, t3, s4
                  auipc        a0, 144497
                  sll          a5, a6, zero
                  nop
                  andi         a7, s8, 458
                  xor          s0, s10, a1
                  slli         t1, t6, 31
                  and          s3, a7, s7
                  sll          a4, s0, a6
                  sra          a3, sp, s5
                  auipc        s9, 563341
                  srl          t5, s0, a6
                  sra          s5, zero, a7
                  sra          gp, t4, s10
                  xor          t4, t4, t1
                  sra          sp, a1, t6
                  nop
                  srl          s6, s0, t1
                  auipc        gp, 647087
                  srli         a7, t1, 1
                  slt          a4, a3, a2
                  lui          t1, 828228
                  sra          a1, s1, a7
                  slt          s10, s2, a2
                  sll          t5, s0, t5
                  nop
                  addi         a0, t5, 1401
                  addi         a1, s3, 888
                  add          ra, s2, a3
                  addi         s3, t1, 1117
                  auipc        a0, 151041
                  andi         s9, s11, -480
                  sll          a5, s5, a6
                  ori          s6, a4, -256
                  and          sp, s4, zero
                  lui          zero, 265415
                  add          gp, a4, zero
                  ori          a7, gp, 465
                  auipc        zero, 627632
                  xor          s11, s9, s2
                  srai         s0, zero, 14
                  srli         a4, s5, 13
                  auipc        s11, 124646
                  add          gp, t5, tp
                  ori          a6, s11, -1036
                  or           s6, a2, t6
                  addi         gp, s7, 1576
                  add          s10, sp, gp
                  auipc        s8, 376137
                  ori          a1, a0, 1573
                  sra          a6, t0, a0
                  lui          s6, 576089
                  sltu         s10, s0, a4
                  sll          a5, a6, a0
                  li           s9, 0x41950570 #start riscv_int_numeric_corner_stream_28
                  li           s8, 0x0
                  li           a3, 0x328b44a
                  li           sp, 0xebf6dc82
                  li           t4, 0x80000000
                  li           s4, 0xffffffff
                  li           a7, 0x0
                  li           gp, 0xffffffff
                  li           t6, 0x5278622f
                  li           s7, 0x0
                  add          s9, s4, s4
                  add          sp, gp, s8
                  sub          sp, s8, s7
                  add          s4, t4, sp
                  addi         t4, gp, 1298
                  auipc        sp, 56349
                  sub          s4, s4, a3
                  auipc        s9, 340877
                  sub          gp, s7, a3
                  auipc        sp, 407939
                  addi         a7, s4, -58
                  sub          s7, s8, a7
                  addi         a3, t6, 834
                  addi         s7, s4, -483
                  sub          gp, t4, a3
                  lui          s7, 884104 #end riscv_int_numeric_corner_stream_28
                  sll          t0, s8, ra
                  sra          a0, a6, sp
                  slt          a7, a3, t2
                  sub          s0, s0, t3
                  slt          s6, a7, sp
                  or           gp, t5, s10
                  slt          s0, a7, a1
                  srli         a3, s0, 20
                  sltiu        zero, a1, 418
                  sltiu        t4, t4, 1931
                  xori         a2, s5, 230
                  and          a2, a3, a7
                  ori          a1, a3, 326
                  auipc        s2, 507983
                  srai         s0, t4, 8
                  slli         s9, sp, 1
                  sra          t1, t3, s2
                  lui          s8, 508435
                  and          s4, s2, t6
                  slli         zero, zero, 25
                  srli         s9, t5, 20
                  xori         a4, a6, -1748
                  slt          zero, a4, s10
                  sll          s2, s2, s3
                  sub          s2, a4, t4
                  slli         s4, t1, 10
                  slli         a5, s7, 4
                  sll          s2, t6, s3
                  slt          s4, s1, s8
                  srai         s2, t0, 18
                  andi         s2, t2, -1786
                  xor          s9, t4, s10
                  slli         s3, tp, 6
                  xori         s3, a6, 1127
                  nop
                  srai         t0, a4, 7
                  slti         zero, a0, -1611
                  srai         a0, t3, 13
                  sra          t1, t3, s8
                  and          t4, a6, s0
                  slli         t4, s5, 8
                  slt          s4, gp, a6
                  or           zero, a5, gp
                  sltiu        a1, t3, 1256
                  and          a7, s0, a6
                  sll          s8, s0, a6
                  srli         a1, s2, 12
                  srli         s11, s7, 21
                  sltu         t4, s7, a5
                  sltiu        s11, gp, 1321
                  auipc        a6, 782543
                  add          a7, a4, s0
                  slti         t0, s1, 275
                  srl          t1, gp, s9
                  sltu         a4, sp, s10
                  auipc        t3, 878627
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_31
                  li           t1, 0xffffffff
                  li           a0, 0x4bd9fa75
                  li           s10, 0x9fbcd35
                  li           s3, 0xffffffff
                  li           t4, 0x0
                  li           a1, 0x80000000
                  li           a2, 0x80000000
                  li           s2, 0x80000000
                  li           sp, 0x80000000
                  sub          a2, t1, s3
                  lui          t1, 464785
                  nop
                  addi         a0, a1, -1806
                  lui          t4, 92632
                  sub          sp, s10, a2
                  auipc        s3, 966671
                  addi         sp, sp, 1233
                  nop
                  auipc        s10, 470500
                  lui          a4, 499692
                  nop
                  auipc        a1, 308783
                  lui          s3, 898241
                  nop
                  nop
                  sub          s2, s2, s3
                  nop
                  nop
                  nop
                  add          a1, a0, s10
                  sub          a2, a0, a2
                  lui          sp, 1036069
                  lui          t4, 902939
                  auipc        sp, 719676 #end riscv_int_numeric_corner_stream_31
                  slt          s7, s1, a5
                  sll          s9, t6, a0
                  auipc        t0, 792372
                  sll          ra, s5, t4
                  slt          a0, t4, s5
                  slt          a1, t6, a5
                  lui          s7, 278227
                  slli         a0, s4, 15
                  sub          a3, s11, s5
                  xor          s8, s2, t6
                  lui          s8, 862322
                  add          zero, a6, t5
                  sltiu        s6, s1, 1941
                  lui          s11, 41603
                  add          t5, a4, a0
                  or           s4, a4, a1
                  sll          t5, s10, a0
                  and          s5, s0, sp
                  andi         t6, s9, -278
                  slli         s3, s10, 30
                  ori          t5, a2, 427
                  nop
                  sll          a7, t6, s8
                  add          s9, s7, a1
                  slli         s4, t0, 26
                  sra          a2, s1, a0
                  or           s4, zero, s11
                  addi         sp, tp, -1324
                  addi         s4, s0, -1054
                  slt          s6, a0, s3
                  xori         s5, t1, -2
                  sll          t4, zero, t2
                  lui          a7, 209139
                  srai         s6, t2, 27
                  srl          gp, t3, s8
                  srai         s7, a3, 5
                  xori         a7, s5, -660
                  nop
                  sltiu        a1, t0, -150
                  slti         a0, a1, 661
                  lui          sp, 984129
                  sltu         t1, s10, s0
                  sra          zero, s11, t6
                  srli         zero, a5, 31
                  sra          s3, s6, s8
                  slt          sp, zero, s6
                  ori          ra, s0, -1727
                  slt          t6, s4, s0
                  nop
                  ori          a3, s0, 1777
                  or           s11, a7, t2
                  ori          s0, a3, -366
                  sll          s9, t4, a7
                  xor          a3, a0, t3
                  and          a4, a3, t5
                  lui          t0, 793153
                  srli         s6, t5, 4
                  slti         zero, t2, -476
                  or           s6, s6, a0
                  andi         t5, t2, -159
                  slt          t0, t1, a7
                  sltu         a4, s11, a1
                  xori         sp, a1, -1232
                  addi         s6, s3, -1795
                  and          a5, s8, t4
                  addi         s7, t5, 239
                  sltiu        t1, s9, -1250
                  slti         s8, zero, -219
                  lui          s10, 983602
                  slli         t6, s11, 3
                  or           t0, s2, s7
                  sra          zero, s5, s0
                  add          ra, t3, s6
                  sub          s9, ra, t5
                  auipc        a1, 149578
                  add          sp, zero, s11
                  xori         zero, a2, -1049
                  ori          gp, s7, 1079
                  slti         t6, s2, -1132
                  nop
                  sltiu        a3, t5, -766
                  xori         a4, tp, 1924
                  ori          s11, sp, -1374
                  lui          s0, 645657
                  nop
                  sra          t1, t1, s2
                  sltiu        s10, a6, -1676
                  sra          s9, s4, s2
                  and          t0, a0, s7
                  or           s4, a2, a1
                  and          a2, s7, t0
                  or           s3, a5, gp
                  slli         s8, t6, 31
                  andi         s11, t0, 2009
                  slti         t6, t3, 451
                  sltiu        a4, t5, -1836
                  addi         t6, a6, -621
                  sub          a7, zero, a1
                  sltiu        s8, a7, 1007
                  auipc        a5, 770552
                  sra          sp, sp, a3
                  slt          t4, s9, s0
                  slt          ra, t2, tp
                  slti         s0, t2, -1805
                  slli         t4, s11, 14
                  and          a4, s8, t1
                  srl          s6, s0, s6
                  xor          a3, a1, s7
                  slt          s5, s9, tp
                  andi         t1, s9, -647
                  auipc        a7, 244720
                  sub          zero, s9, s10
                  and          s6, a4, s0
                  sltu         s2, t0, s0
                  srl          s2, t4, gp
                  slli         t3, t3, 26
                  andi         zero, gp, -185
                  srli         s8, a4, 7
                  sltu         s10, s8, s4
                  add          a1, t0, a6
                  lui          s9, 654796
                  ori          s11, s6, 304
                  auipc        zero, 12147
                  sltu         sp, s1, tp
                  xor          sp, s6, s1
                  slli         s9, a6, 17
                  auipc        gp, 246478
                  sub          sp, s8, t6
                  ori          s11, t2, -1179
                  sltu         s10, a0, a3
                  srai         s4, t3, 14
                  sltiu        a2, s0, 1657
                  xor          a3, t0, t4
                  srai         ra, t4, 25
                  sltiu        s11, t2, -1681
                  slti         t1, t0, 739
                  add          a2, t4, a0
                  sll          gp, zero, s7
                  addi         a3, a7, -2029
                  xor          s0, a2, zero
                  or           gp, t6, t2
                  addi         t1, t5, -337
                  auipc        s4, 762613
                  slt          s11, s6, zero
                  addi         a2, gp, -1754
                  auipc        gp, 872726
                  and          t5, a1, t4
                  sltiu        s2, t4, -1180
                  add          a4, a7, a7
                  add          t1, zero, s0
                  srli         s9, s4, 7
                  add          s11, a7, ra
                  andi         s8, s4, 769
                  or           t3, s7, sp
                  add          zero, t6, ra
                  sra          s0, a3, s2
                  addi         s5, s5, -154
                  sltu         s4, sp, a6
                  srai         a5, zero, 21
                  sltiu        a0, a7, -469
                  or           t4, s5, s6
                  andi         gp, a6, -2044
                  andi         a1, sp, 1722
                  sltu         t0, s0, gp
                  or           a3, s4, t6
                  xor          t0, s3, a4
                  or           s10, a7, t2
                  or           a4, s1, s5
                  srli         a6, a5, 10
                  addi         a1, t2, -231
                  srai         t1, zero, 16
                  srli         t0, a6, 18
                  sltu         s3, a7, t4
                  sltiu        s9, s0, 1233
                  srai         s6, a4, 28
                  sltiu        s2, t6, -234
                  sub          a7, s5, s0
                  sll          s8, t6, s3
                  sltiu        t6, s9, 524
                  srl          ra, zero, gp
                  andi         t5, a1, -1804
                  slli         t3, s6, 20
                  and          gp, a1, s8
                  addi         s9, zero, 1932
                  sra          s0, a1, a1
                  slli         s8, s5, 16
                  slli         sp, s5, 10
                  auipc        s7, 379779
                  slt          a3, s7, s9
                  auipc        s6, 690606
                  srai         t0, a4, 19
                  slt          s4, a2, ra
                  andi         a5, s7, 268
                  addi         s11, t2, 132
                  sltu         s8, t0, s7
                  lui          s9, 979371
                  addi         a7, a7, -1402
                  auipc        t0, 69663
                  srai         t5, s1, 8
                  xor          a1, t6, a1
                  andi         s6, s11, -1589
                  slt          s4, t3, t5
                  sub          a5, ra, sp
                  srai         s7, t2, 22
                  sltiu        ra, t5, 898
                  srai         t6, a1, 11
                  sltiu        t4, s6, -540
                  auipc        t1, 588686
                  ori          t3, t2, -1399
                  srai         t0, t5, 16
                  auipc        t6, 191443
                  ori          s7, gp, 449
                  srai         s8, a7, 16
                  and          s2, a5, s5
                  auipc        s6, 124544
                  and          s10, t0, tp
                  nop
                  slt          gp, gp, ra
                  slti         zero, s4, -1560
                  or           a0, s4, a4
                  ori          a2, zero, -902
                  or           t1, s10, s3
                  nop
                  addi         s5, zero, -1743
                  slli         t1, t6, 18
                  srai         s8, s0, 29
                  slti         t5, s2, -99
                  slti         zero, s10, -25
                  nop
                  slt          s6, s4, t6
                  sll          gp, a7, s8
                  srl          zero, s1, s9
                  sltu         gp, t5, s10
                  and          t3, a5, s1
                  auipc        s10, 991907
                  slt          s4, s2, s3
                  srl          zero, s1, sp
                  slt          t1, ra, s9
                  sll          s3, a2, t0
                  lui          s6, 118
                  sltu         zero, s11, a0
                  sltu         s9, t5, s1
                  lui          t5, 1043563
                  slt          s2, a7, a6
                  add          a1, s9, a6
                  srai         t3, s11, 14
                  lui          a3, 82246
                  or           a7, s10, a4
                  srai         a5, a4, 14
                  xori         gp, a5, -1381
                  add          t1, a3, sp
                  xori         zero, a0, -1350
                  sll          s9, t4, t6
                  or           s7, s0, t3
                  add          s5, a1, a6
                  slt          s4, s4, s10
                  srli         a1, ra, 31
                  sltiu        a1, a7, -2036
                  srl          s5, s7, s11
                  and          s9, t3, s3
                  srai         s3, a1, 6
                  and          s6, s0, t5
                  xori         a4, t4, -1323
                  addi         a2, s7, 858
                  slli         sp, t1, 19
                  or           a5, s2, s10
                  add          s11, a3, a6
                  addi         s8, t6, -1748
                  sll          s4, s2, s4
                  slli         t6, s1, 9
                  sra          a5, t2, a4
                  xor          s10, s8, gp
                  addi         t4, t6, 1970
                  ori          a2, s1, -669
                  srl          a3, s6, gp
                  srl          gp, s6, a4
                  srl          t3, t6, t6
                  or           zero, a5, tp
                  slt          t1, ra, s11
                  slti         t6, a5, -1259
                  slt          zero, s10, zero
                  xor          zero, a5, a5
                  srli         s11, t4, 23
                  slti         a4, gp, 859
                  ori          a2, a6, 769
                  andi         s11, t6, -1808
                  srli         a3, s1, 25
                  auipc        gp, 469700
                  xor          t3, s1, s6
                  slt          s7, t0, a0
                  sub          t1, a4, zero
                  xori         s7, gp, -219
                  sltiu        a0, t5, 1919
                  nop
                  ori          t3, s9, 1567
                  xor          gp, t0, s4
                  slli         a3, t4, 7
                  sltu         t1, s11, s0
                  srai         s4, a6, 14
                  sltu         s8, s1, s7
                  lui          t0, 793484
                  slt          a1, s1, t2
                  ori          s10, s6, 1655
                  ori          a4, a0, 1820
                  addi         t4, t3, 1021
                  sltu         s3, s3, a2
                  or           s6, s4, s6
                  or           s10, a6, s2
                  slt          a1, s3, a4
                  xor          t1, sp, sp
                  slli         t1, s2, 23
                  slli         s9, t2, 5
                  sltiu        a7, s1, -1930
                  xori         s0, sp, 1024
                  sltiu        s5, a3, 926
                  sll          a5, s0, t3
                  ori          s10, s11, 1357
                  or           s7, s0, s3
                  xori         gp, s11, -172
                  auipc        a2, 599823
                  ori          a2, s6, -152
                  nop
                  lui          a1, 191680
                  slti         sp, t2, 1139
                  ori          gp, t5, 1005
                  srl          a3, s0, a5
                  srai         s11, s11, 3
                  srl          t1, s7, a3
                  lui          s2, 48525
                  auipc        s10, 560039
                  or           t3, s2, t4
                  sltu         gp, t4, s2
                  andi         a1, s3, -372
                  srli         s8, t6, 21
                  slti         s2, s1, -1428
                  slt          s10, s8, s10
                  srl          ra, s0, tp
                  srl          s6, t3, tp
                  slt          ra, t2, s6
                  srli         a0, t0, 25
                  sltu         s9, a3, s8
                  sub          a2, t3, s5
                  slt          a1, t0, s4
                  slti         t3, s6, -1688
                  sra          s11, t3, s11
                  srl          s0, a7, s5
                  and          a5, s4, s4
                  slt          t1, t4, a5
                  srai         a5, t0, 29
                  srli         s9, sp, 23
                  lui          s6, 258244
                  nop
                  slli         a6, t4, 16
                  slli         a0, a4, 29
                  sub          s4, t4, s1
                  sub          a1, gp, s10
                  slti         ra, a0, 946
                  srai         a6, t4, 29
                  addi         t6, t5, -264
                  add          s7, s2, s7
                  lui          s3, 136897
                  add          a5, t2, s8
                  auipc        s6, 529127
                  add          zero, a3, t2
                  xori         a3, gp, 579
                  andi         s6, s1, 525
                  addi         a4, t1, -167
                  xori         a5, s9, -1427
                  xor          s3, s7, s3
                  sub          a6, tp, t1
                  sll          s4, t6, a7
                  sltiu        s0, s4, -971
                  or           s8, s6, s5
                  slti         t3, a2, -488
                  nop
                  lui          gp, 829616
                  auipc        sp, 604167
                  srli         gp, s11, 30
                  nop
                  auipc        t5, 936712
                  sub          s4, s3, s4
                  ori          gp, a7, 169
                  nop
                  xor          s11, s6, s0
                  slt          t3, t4, sp
                  slli         a2, tp, 23
                  auipc        gp, 1002472
                  andi         a2, t2, -536
                  srl          zero, a6, tp
                  slli         s7, a1, 21
                  auipc        a5, 260247
                  lui          gp, 468811
                  and          a4, a1, s0
                  sra          s7, t2, s7
                  and          gp, a5, s5
                  srli         s9, t2, 9
                  sltu         a7, a0, s8
                  slt          s10, a6, s3
                  sltiu        a3, t3, -392
                  nop
                  addi         t6, t5, -1828
                  sll          a7, t3, s0
                  slli         t6, t1, 30
                  lui          s11, 522504
                  nop
                  slt          s2, t2, a0
                  srl          t4, ra, ra
                  slti         s3, s5, -78
                  xor          s8, a1, s8
                  addi         s2, t5, -1926
                  nop
                  srl          a3, s5, a4
                  sub          s10, a6, a4
                  sll          a4, s2, a5
                  xor          t1, s10, s1
                  add          sp, s9, t5
                  slt          gp, s8, t4
                  srli         a7, a1, 3
                  addi         a3, s4, -601
                  andi         s8, ra, 238
                  srai         sp, s11, 12
                  slli         s2, t3, 6
                  sub          s7, tp, t5
                  auipc        ra, 380067
                  ori          a0, a0, 620
                  xori         a5, s9, -1186
                  xor          s5, t0, t1
                  addi         t6, s6, -1691
                  sll          s11, s4, s4
                  and          a3, s7, s5
                  sltu         a5, t4, t0
                  ori          s9, a1, 1433
                  nop
                  ori          t5, s8, -420
                  add          s7, ra, s11
                  sub          t5, t5, s5
                  add          a5, s2, a5
                  lui          t6, 847672
                  sltu         s7, t6, t5
                  add          a2, t3, s11
                  sltu         t0, t6, t5
                  sltiu        s9, t0, 1063
                  sll          s5, s5, t4
                  srai         s4, t1, 31
                  addi         a6, t0, -1984
                  addi         sp, s10, -1705
                  sll          t3, t0, a6
                  add          s3, s0, s1
                  auipc        a1, 472047
                  sltiu        t4, a7, -521
                  add          s5, a1, s10
                  srl          s0, t1, s5
                  slli         a6, a1, 31
                  nop
                  xor          a1, s5, s2
                  sub          sp, zero, t0
                  and          s4, s6, s0
                  andi         s4, t2, -1301
                  nop
                  xori         t3, t6, 490
                  xor          a0, t3, a5
                  srai         ra, sp, 31
                  addi         a3, zero, 482
                  or           s6, s6, s5
                  slt          a2, s0, s0
                  addi         t5, a6, -1265
                  xori         a3, t0, 1118
                  sltiu        a2, s1, -1443
                  andi         a5, s10, 370
                  or           a4, t5, s2
                  lui          t3, 818245
                  xori         t5, sp, 1148
                  slli         a0, t3, 27
                  slt          t1, s9, s9
                  nop
                  add          a2, zero, s8
                  sltiu        a5, s9, -63
                  slti         t3, a7, 1789
                  addi         s5, s6, 885
                  lui          s4, 809203
                  srai         a5, a2, 27
                  auipc        zero, 89483
                  nop
                  slli         t0, s5, 14
                  sra          s7, s0, zero
                  addi         s2, s5, 866
                  ori          a2, s5, -1280
                  sll          a1, a7, gp
                  nop
                  sub          a2, s3, tp
                  xori         s9, s4, 1304
                  andi         a7, zero, -1115
                  slti         a2, a4, 2042
                  ori          t3, s2, -1494
                  and          a3, s6, t3
                  slti         a7, s9, -25
                  srl          s9, t2, s4
                  sll          a5, a7, s1
                  sltu         a1, tp, a3
                  sra          a3, t2, a3
                  sll          s11, a1, a2
                  ori          s0, s0, 1619
                  sra          t1, s5, a3
                  srai         a5, gp, 31
                  sltu         s7, s9, t5
                  nop
                  sub          t5, t5, a6
                  sra          t4, s3, a5
                  sltu         a0, s7, s0
                  slti         t5, t4, -1226
                  sltiu        a2, a0, 907
                  andi         a1, s3, 596
                  slt          s10, sp, t4
                  add          s2, a6, s10
                  sll          s2, s7, s1
                  srl          zero, a4, a3
                  slli         a2, s0, 28
                  or           t6, t0, a6
                  sra          a2, t5, zero
                  lui          a4, 461641
                  sll          a1, a4, t5
                  xori         s11, s7, -1139
                  slti         a4, s11, -1706
                  sra          a7, s3, s11
                  slli         a1, s2, 23
                  and          s4, t1, a0
                  slli         a0, a4, 31
                  xor          a2, t4, s4
                  ori          a2, t0, -1455
                  ori          ra, a6, -801
                  add          a7, a0, a1
                  add          s6, s1, ra
                  slt          t3, a2, t2
                  add          a2, t5, gp
                  sub          s10, a6, s4
                  xori         t4, s2, 1939
                  slt          a3, s11, t4
                  srl          a2, t5, t3
                  or           a5, t6, gp
                  auipc        t5, 999651
                  srl          t1, a7, a3
                  xor          s0, a0, gp
                  sra          s8, s6, t2
                  srai         s5, t5, 9
                  srai         sp, a6, 30
                  srai         t1, a7, 29
                  sltu         s4, t6, t1
                  srli         a4, s10, 11
                  sub          zero, s4, t4
                  srai         a1, a2, 17
                  lui          gp, 786889
                  auipc        s10, 325539
                  lui          s3, 136962
                  srli         t4, t1, 24
                  srl          s11, s2, s1
                  and          s2, sp, s8
                  sra          a2, s11, a1
                  srl          s10, t1, gp
                  slt          a0, sp, t0
                  srl          a2, t5, s10
                  sltu         s11, a0, a2
                  andi         a6, a4, -1266
                  srai         t4, s4, 15
                  xor          t0, a6, s5
                  slti         t5, s9, 1176
                  srl          a1, s6, zero
                  srai         t5, t5, 8
                  or           a4, a1, s5
                  auipc        t3, 650337
                  sra          t1, a4, a5
                  and          a5, t1, s10
                  sra          s0, a6, s4
                  nop
                  nop
                  srli         a5, t1, 27
                  sra          t0, sp, sp
                  xori         a3, s0, 1389
                  ori          zero, a4, 789
                  slli         t0, zero, 16
                  sll          gp, a6, t2
                  or           s4, a3, s9
                  addi         s10, t5, -687
                  sltiu        s10, a0, -726
                  sll          s11, t1, s3
                  ori          a5, s7, 618
                  xor          sp, s3, s4
                  sra          a5, gp, s4
                  sub          s10, a4, s1
                  slt          t1, t3, gp
                  slli         a4, s1, 29
                  lui          zero, 1024615
                  srl          s8, s4, t6
                  slt          a4, a5, gp
                  lui          gp, 888887
                  lui          s8, 943834
                  addi         a6, a3, 1525
                  xor          a3, s5, a3
                  sll          ra, a0, s10
                  slti         a1, a0, -1765
                  srli         sp, s2, 27
                  or           s5, s5, s7
                  add          a5, s5, t1
                  slt          s9, sp, a7
                  lui          s2, 311903
                  srl          s11, gp, a1
                  sra          s9, a0, t3
                  slli         sp, a6, 6
                  ori          s11, t1, 1920
                  slli         t1, a5, 15
                  srl          a2, s11, a0
                  xori         s3, s0, -2012
                  sra          a4, a3, tp
                  slti         t3, a1, 363
                  and          a1, t4, a6
                  and          t0, s11, a1
                  srli         zero, a6, 6
                  sltu         a4, s9, a5
                  sltiu        s9, t2, 234
                  add          ra, sp, s0
                  srl          s5, s6, s11
                  and          s10, t4, a5
                  add          a6, tp, a7
                  sll          s8, a6, s1
                  add          a0, s0, t0
                  xor          a2, t0, t2
                  nop
                  and          a3, a7, s2
                  srl          a7, t0, t4
                  srl          gp, s8, s0
                  slli         s4, s5, 26
                  slt          t6, s11, a6
                  add          s0, a1, gp
                  sltiu        a1, zero, -1107
                  srl          a0, a1, t5
                  srl          s6, s4, s1
                  addi         s3, s11, -222
                  slli         gp, a7, 28
                  xor          t4, t5, t6
                  or           s0, s4, gp
                  or           zero, s7, s10
                  and          a5, a1, a1
                  sra          t0, t2, a1
                  srl          t4, a6, gp
                  lui          a2, 784100
                  andi         s6, a1, 1863
                  sltu         s6, a1, s6
                  sra          a6, s0, s10
                  slli         a6, gp, 17
                  nop
                  xori         sp, a0, -1501
                  slli         s10, t0, 10
                  nop
                  srai         a7, a7, 25
                  add          gp, s2, s5
                  add          sp, zero, t3
                  or           a5, a4, a4
                  srl          a5, s1, a4
                  xori         a0, s1, 148
                  xori         a4, t4, 1219
                  slt          sp, s10, zero
                  slli         a2, a0, 28
                  and          a3, a2, s6
                  sll          s0, s3, t4
                  sll          a4, t2, s11
                  ori          a2, s9, 1103
                  nop
                  nop
                  auipc        a1, 359018
                  srl          sp, s10, s8
                  xori         t3, s4, -1170
                  srli         a6, gp, 11
                  sra          t0, s6, s3
                  sltiu        t6, s6, -1031
                  sra          gp, a6, a3
                  sltiu        t1, a1, -782
                  xori         a6, t6, 1503
                  srli         zero, t1, 26
                  slti         a6, t1, 1117
                  srai         gp, zero, 21
                  auipc        sp, 939497
                  add          a5, a7, t1
                  lui          t4, 517246
                  sltu         s2, a2, a6
                  slti         zero, s2, 513
                  nop
                  sltiu        a3, a5, -1380
                  sll          s9, t4, tp
                  sltiu        s4, t6, 1992
                  slli         sp, a4, 10
                  or           t1, a7, t6
                  sltiu        t6, t6, 806
                  xor          s9, ra, t5
                  xor          t0, a2, a1
                  sltiu        s9, a5, -59
                  slt          a4, s7, a6
                  srai         t6, t1, 17
                  slli         s10, a5, 19
                  srli         s6, s0, 11
                  ori          s0, s10, -1325
                  andi         t0, a7, -950
                  lui          t1, 689363
                  addi         zero, s8, 398
                  xor          s0, t4, t3
                  ori          a3, s1, -1429
                  sltu         t3, a4, t3
                  and          s4, s5, s8
                  xor          t3, s4, s2
                  xori         s6, t3, 1770
                  slti         s10, t3, 862
                  xor          a3, a1, sp
                  xor          t1, t2, t2
                  slti         a2, a1, -1077
                  sll          t1, s1, t3
                  auipc        s11, 732183
                  srl          s11, s0, a6
                  sra          a0, s7, s3
                  srli         a6, a0, 15
                  nop
                  addi         sp, a1, -964
                  andi         s8, t5, 314
                  add          s9, s6, s10
                  sub          a6, a3, a5
                  auipc        t1, 370686
                  slt          s0, s11, a6
                  xor          t3, sp, s9
                  srli         a1, s10, 15
                  srli         s5, s3, 31
                  ori          sp, t6, -293
                  addi         s5, s6, 1377
                  srai         sp, s10, 27
                  slti         a7, s5, 1263
                  sub          gp, t1, s3
                  addi         t1, t4, -1837
                  xori         a6, a1, -1830
                  nop
                  lui          a5, 418350
                  addi         t3, a6, -880
                  ori          s4, s2, -859
                  srl          s7, t5, a1
                  sltu         ra, s4, s1
                  andi         s11, t1, 782
                  lui          zero, 322990
                  sltu         sp, t4, a6
                  sltiu        s10, t3, 546
                  srl          s8, t5, t3
                  add          t5, s5, a5
                  lui          a3, 956720
                  xori         t4, a0, 942
                  sra          zero, t3, a7
                  slt          a2, t0, t5
                  sra          s5, a1, a3
                  and          s11, sp, ra
                  auipc        a3, 893676
                  srl          t0, zero, s8
                  slti         t1, s6, 1342
                  srli         s4, a1, 14
                  sub          t5, s6, s2
                  add          a1, t5, gp
                  srli         t6, t5, 23
                  add          s11, s10, s4
                  srli         zero, s0, 27
                  sub          a3, s9, a6
                  xori         a5, a7, -70
                  and          a1, s9, t1
                  slt          t4, a5, s3
                  addi         s3, ra, -663
                  addi         a1, a6, -12
                  sltiu        a2, s8, 1031
                  srl          a2, t5, t3
                  xori         t0, s5, 481
                  srl          s0, s8, a4
                  xor          zero, sp, t0
                  srl          t0, s3, t6
                  ori          s6, t4, 814
                  addi         t4, s7, -316
                  sll          gp, zero, t4
                  addi         a6, s10, -1032
                  slli         sp, s3, 8
                  andi         t5, s9, -1194
                  addi         s0, tp, 412
                  slli         sp, t3, 12
                  sub          a3, t4, t5
                  sltiu        s5, s7, 1714
                  sltu         a6, a7, s0
                  addi         t0, t4, 1191
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s8, 0x27e7b1ef
                  li           ra, 0x6b703fef
                  li           s4, 0xffffffff
                  li           gp, 0xa90ca64f
                  li           t4, 0x60db0d9b
                  li           a0, 0x678cb138
                  li           a2, 0xba009ec2
                  li           sp, 0xffffffff
                  li           s3, 0x62654f3f
                  auipc        s4, 597717
                  sub          t4, a2, gp
                  addi         s4, s11, -550
                  nop
                  auipc        ra, 463822
                  add          s11, ra, sp
                  lui          a2, 660632
                  nop
                  add          a2, gp, s4
                  lui          ra, 968910
                  sub          a0, sp, gp
                  auipc        ra, 315187
                  nop
                  addi         s8, gp, 1923
                  sub          s11, ra, sp
                  nop
                  sub          a0, s8, t4
                  addi         ra, t4, 811
                  auipc        s4, 515496
                  add          s8, a0, gp
                  add          a2, a0, ra
                  add          s3, gp, s8
                  add          s8, s8, s8
                  lui          s3, 779085
                  nop
                  sub          sp, s3, ra
                  add          s4, s3, ra #end riscv_int_numeric_corner_stream_7
                  andi         a1, t6, -838
                  nop
                  slli         a7, s7, 5
                  auipc        s2, 978267
                  add          sp, ra, ra
                  slti         t1, s8, 1323
                  sltiu        a1, t6, 102
                  andi         t5, s2, 1356
                  andi         t0, s9, 1756
                  slti         s4, s10, 935
                  sra          s8, sp, a2
                  xor          t3, a1, s1
                  slt          gp, s1, s2
                  lui          a5, 461399
                  and          gp, t0, s6
                  slli         zero, t1, 8
                  nop
                  xor          s5, t0, s3
                  sltu         s10, s3, s7
                  slt          t3, a0, s1
                  srai         s11, sp, 1
                  slt          s9, a2, s11
                  srli         s5, s11, 13
                  xori         ra, s7, -544
                  srai         a2, t4, 24
                  sub          a2, s9, s5
                  slt          a5, s6, t5
                  andi         a3, a6, -583
                  xori         s2, s3, -411
                  nop
                  slli         s7, tp, 13
                  slti         a3, t0, -954
                  sub          a7, ra, t6
                  sltiu        a6, ra, 1364
                  and          a1, t0, a4
                  nop
                  slt          gp, s11, s0
                  sltu         t4, s10, ra
                  or           s3, s1, s3
                  sltu         s4, s9, t3
                  xor          zero, ra, t3
                  nop
                  lui          a1, 934860
                  srai         gp, s9, 19
                  sll          t0, s0, s9
                  srl          t0, a4, tp
                  sub          s2, s7, s10
                  lui          a5, 23684
                  nop
                  srai         s7, t4, 25
                  sll          a7, t5, s10
                  auipc        a1, 852259
                  sub          a1, sp, t3
                  sll          a1, a6, s4
                  lui          s9, 513283
                  sltiu        t3, gp, -1981
                  addi         t1, t6, -290
                  slti         a0, a0, -1699
                  auipc        s2, 206473
                  sltu         t3, s0, t6
                  auipc        gp, 99195
                  addi         gp, s2, -766
                  xori         zero, t0, -985
                  ori          t4, a1, -493
                  xori         a2, t6, -1296
                  or           t1, gp, a7
                  xor          ra, t3, s2
                  sra          zero, a5, s11
                  srli         t3, a5, 2
                  xori         s8, s8, -865
                  lui          t1, 504701
                  slti         a3, s3, -139
                  lui          a4, 909471
                  sra          t1, a5, s11
                  srli         s2, a5, 29
                  slti         t6, a4, 1888
                  slli         s5, a7, 28
                  srli         t5, s5, 22
                  addi         s3, tp, -1947
                  sltu         s2, s5, s3
                  and          s9, a7, s1
                  srai         a4, s6, 31
                  slt          s6, a3, tp
                  slti         t1, s0, -1822
                  slti         t1, s5, 1134
                  sll          t4, a3, t2
                  sll          zero, a7, s9
                  ori          sp, a7, 1987
                  sltu         s7, t6, a5
                  nop
                  lui          a3, 233064
                  srli         a0, a3, 30
                  or           t0, tp, a6
                  and          gp, t5, a7
                  lui          s3, 392428
                  auipc        t1, 685009
                  sltiu        t3, s6, -692
                  sll          s11, a5, a4
                  srl          ra, s7, a5
                  nop
                  addi         t3, s6, 24
                  sll          a2, gp, s3
                  sra          ra, s3, s2
                  sub          a5, a7, s4
                  or           a5, ra, t6
                  sub          s10, s9, a3
                  sub          a0, sp, zero
                  sltu         t3, s10, tp
                  srli         t5, s0, 27
                  srli         a3, t3, 18
                  slt          s10, s4, sp
                  and          a6, a1, sp
                  sub          t5, t1, tp
                  xor          t5, t4, s5
                  srl          s8, ra, s3
                  andi         s7, s8, 1652
                  or           s2, a1, a0
                  andi         s8, s5, 402
                  auipc        a3, 1030308
                  sll          t3, gp, s1
                  slti         t6, s1, -1765
                  sll          s7, s1, a0
                  addi         a1, s6, 1449
                  ori          s0, a6, 145
                  or           a3, t3, a6
                  srai         t0, s8, 24
                  slt          t0, a1, ra
                  addi         t3, s3, -713
                  add          s7, tp, s6
                  add          s7, s6, s8
                  srli         t4, t1, 19
                  sub          s2, t3, ra
                  slti         a4, sp, 1417
                  slli         s3, zero, 29
                  slti         a4, sp, -1002
                  slli         a7, zero, 11
                  slt          ra, t1, a7
                  la x4, test_done
                  jalr x0, x4, 0
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
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_2:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_3:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_4:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_5:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_6:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_7:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_8:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_9:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_10:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_11:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_12:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_13:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_14:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_15:
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  addi x9, x9, -4
                  sw  x7, (x9)
                  add x7, x9, zero
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
                  add x9, x7, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x8, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x8, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x8, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x8, x10, ecall_handler
                  li x10, 0x1
                  beq x8, x10, instr_fault_handler
                  li x10, 0x5
                  beq x8, x10, load_fault_handler
                  li x10, 0x7
                  beq x8, x10, store_fault_handler
                  li x10, 0xc
                  beq x8, x10, pt_fault_handler
                  li x10, 0xd
                  beq x8, x10, pt_fault_handler
                  li x10, 0xf
                  beq x8, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x7, x9, zero
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
                  add x9, x7, zero
                  lw  x7, (x9)
                  addi x9, x9, 4
                  mret

load_fault_handler:
                  add x7, x9, zero
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
                  add x9, x7, zero
                  lw  x7, (x9)
                  addi x9, x9, 4
                  mret

store_fault_handler:
                  add x7, x9, zero
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
                  add x9, x7, zero
                  lw  x7, (x9)
                  addi x9, x9, 4
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x7, x9, zero
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
                  add x9, x7, zero
                  lw  x7, (x9)
                  addi x9, x9, 4
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x7, x9, zero
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
                  add x9, x7, zero
                  lw  x7, (x9)
                  addi x9, x9, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x7, x9, zero
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
                  add x9, x7, zero
                  lw  x7, (x9)
                  addi x9, x9, 4
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
