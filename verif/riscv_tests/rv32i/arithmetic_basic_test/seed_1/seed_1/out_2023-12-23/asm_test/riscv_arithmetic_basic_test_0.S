.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  li x23, 0x0
                  csrw 0x304, x23 # MIE
                  mret
init:             
                  li x0, 0xe
                  li x1, 0x80000000
                  li x2, 0x5
                  li x3, 0x80000000
                  li x4, 0xbebaf28d
                  li x5, 0x0
                  li x6, 0x9
                  li x7, 0xa
                  li x8, 0x80000000
                  li x9, 0x0
                  li x12, 0xfe27657c
                  li x13, 0x0
                  li x14, 0xa
                  li x15, 0x0
                  li x16, 0xa
                  li x17, 0x80000000
                  li x18, 0xa5894a5b
                  li x19, 0x2c3dbf68
                  li x20, 0xf05191e0
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x8ba3d827
                  li x24, 0xffc27e3f
                  li x25, 0x3e509f8c
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0xa
                  li x29, 0xfe3d8e9c
                  li x30, 0xfe2c545c
                  li x31, 0xfca0d1b9
                  la x11, user_stack_end
main:             li           s0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           sp, 0xffffffff
                  li           gp, 0xffffffff
                  li           s6, 0x0
                  li           t4, 0x0
                  li           ra, 0x80000000
                  li           tp, 0x1099f3b1
                  li           s7, 0x0
                  li           s5, 0x0
                  li           s10, 0xffffffff
                  addi         sp, s5, 1110
                  sub          tp, s5, s0
                  sub          s0, gp, s5
                  sub          ra, s10, ra
                  nop
                  sub          t4, tp, s10
                  sub          s7, gp, tp
                  auipc        ra, 761043
                  nop
                  nop
                  add          s6, s0, s10
                  nop
                  lui          t4, 206199
                  add          s0, s5, tp
                  add          s5, gp, tp
                  nop
                  auipc        s10, 245747
                  auipc        s6, 933943
                  addi         ra, s10, 552
                  addi         gp, s5, 675
                  addi         s5, s6, 945
                  nop
                  lui          s7, 969924 #end riscv_int_numeric_corner_stream_3
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t4, 0xffffffff
                  li           sp, 0x80000000
                  li           s5, 0x0
                  li           s1, 0x1e0663c1
                  li           t2, 0x0
                  li           t1, 0x80000000
                  li           s6, 0x80000000
                  li           tp, 0x0
                  li           s0, 0x0
                  sub          sp, t4, t1
                  lui          t1, 360330
                  nop
                  auipc        s6, 914433
                  add          t4, t1, s5
                  addi         t4, s1, 966
                  sub          t2, a6, s5
                  lui          sp, 272536
                  auipc        a6, 233615
                  add          t2, a6, sp
                  nop
                  sub          s5, s6, sp
                  lui          s5, 758938
                  sub          s1, s1, t2
                  auipc        t2, 793269
                  add          s6, sp, t2
                  auipc        t1, 133733
                  lui          a6, 335521
                  add          s0, a6, t4 #end riscv_int_numeric_corner_stream_11
                  li           sp, 0x4b5358e7 #start riscv_int_numeric_corner_stream_8
                  li           s6, 0x4ee1a60c
                  li           t6, 0xe251ba5c
                  li           s3, 0x80000000
                  li           a3, 0x3ba04d17
                  li           t4, 0x52327747
                  li           t1, 0xd9493ecd
                  li           s0, 0xffffffff
                  li           a6, 0x0
                  li           a2, 0x80000000
                  addi         a2, t6, -1670
                  auipc        s6, 112913
                  addi         sp, s3, 390
                  lui          t1, 347959
                  addi         t1, t6, 1026
                  lui          s3, 672935
                  auipc        a6, 808121
                  sub          s3, s6, sp
                  add          a6, a3, t1
                  addi         t6, t1, 969
                  lui          a3, 635050
                  nop
                  sub          a6, sp, sp
                  lui          s0, 113478
                  nop
                  nop
                  auipc        s6, 354219
                  lui          a3, 972534
                  nop
                  auipc        a6, 824396
                  add          t4, t6, a6 #end riscv_int_numeric_corner_stream_8
                  li           a5, 0x8a911c5a #start riscv_int_numeric_corner_stream_18
                  li           s11, 0x0
                  li           t1, 0x0
                  li           a3, 0x80000000
                  li           ra, 0x0
                  li           t6, 0x80000000
                  li           a6, 0x0
                  li           s9, 0x80000000
                  li           sp, 0x0
                  li           s2, 0x80000000
                  addi         s2, a5, -851
                  nop
                  sub          t1, t6, t1
                  nop
                  add          s2, a3, s9
                  nop
                  sub          a6, s11, a3
                  sub          s11, ra, sp
                  sub          a3, t1, sp
                  add          a6, s9, a3
                  sub          t1, s9, ra
                  auipc        a6, 501195
                  nop
                  nop
                  nop
                  addi         t1, s9, 1359
                  lui          ra, 681944 #end riscv_int_numeric_corner_stream_18
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_28
                  li           t3, 0x0
                  li           s7, 0x7cf804fb
                  li           t0, 0xbec106e
                  li           s6, 0xffffffff
                  li           ra, 0x80000000
                  li           s3, 0x80000000
                  li           a5, 0x423f3cd5
                  li           t1, 0x157c7651
                  li           s11, 0x512a4224
                  nop
                  sub          s7, t3, s7
                  lui          s11, 777530
                  auipc        t0, 821205
                  nop
                  add          t3, t1, s6
                  nop
                  lui          t1, 406320
                  sub          ra, s7, s3
                  sub          s3, t3, s11
                  sub          t3, a5, a5
                  nop
                  add          t3, t1, ra
                  add          s3, t0, s11
                  sub          t0, s11, s3
                  add          t1, t0, s7
                  addi         t0, t3, 380
                  add          s6, a5, a6
                  addi         t3, t3, -1215
                  nop
                  add          s3, s3, a5
                  auipc        t3, 175950 #end riscv_int_numeric_corner_stream_28
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           t0, 0x0
                  li           a3, 0xffffffff
                  li           sp, 0xffffffff
                  li           s11, 0xffffffff
                  li           s7, 0xcbc0e2a0
                  li           s10, 0x80000000
                  li           a5, 0x80000000
                  li           s5, 0x0
                  li           t3, 0x1b8ea037
                  addi         a7, s10, -1338
                  nop
                  lui          a7, 192001
                  nop
                  lui          t3, 69946
                  nop
                  add          t3, s7, a7
                  lui          s10, 309184
                  nop
                  nop
                  nop
                  nop
                  auipc        t3, 843800
                  add          t0, sp, s5
                  lui          s7, 941433
                  nop
                  add          sp, s5, s7
                  auipc        a5, 932180
                  auipc        s5, 1005916
                  lui          s10, 1001544 #end riscv_int_numeric_corner_stream_6
                  li           t0, 0x5db906ce #start riscv_int_numeric_corner_stream_26
                  li           ra, 0x0
                  li           gp, 0x3ac2578e
                  li           s3, 0x80000000
                  li           s2, 0x80000000
                  li           sp, 0x80000000
                  li           s0, 0x80000000
                  li           t1, 0x36e762f7
                  li           s5, 0x80000000
                  li           s1, 0x80000000
                  auipc        s5, 467281
                  auipc        gp, 480413
                  add          gp, t1, gp
                  addi         t1, t1, -1534
                  lui          ra, 632014
                  nop
                  nop
                  sub          s2, s5, t1
                  addi         t0, ra, 1101
                  auipc        t1, 539225
                  nop
                  auipc        ra, 116538
                  sub          s1, s0, s2
                  sub          t0, gp, s3
                  addi         t0, s1, -1067
                  add          ra, s5, t0
                  sub          sp, s3, s0
                  add          t0, t1, gp
                  lui          s5, 218850
                  auipc        t0, 473422
                  addi         s3, s2, -796
                  add          s1, s2, s2
                  add          s0, s0, s2
                  auipc        t0, 430488
                  lui          s0, 819829
                  auipc        s1, 880150
                  nop
                  add          s0, s2, sp #end riscv_int_numeric_corner_stream_26
                  li           s2, 0x93a6c1c7 #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x0
                  li           a4, 0xaa5a6af5
                  li           s0, 0x508e2e55
                  li           ra, 0x80000000
                  li           tp, 0xffffffff
                  li           s6, 0x372be1c4
                  li           s10, 0x0
                  li           a2, 0xa87b7442
                  li           s5, 0x74f9f2ca
                  add          s5, s5, s5
                  auipc        s10, 182576
                  lui          s5, 345310
                  addi         s6, s0, -418
                  sub          a4, s5, ra
                  lui          s0, 797636
                  auipc        a4, 719659
                  lui          a2, 497370
                  add          ra, a2, a2
                  auipc        tp, 411767
                  lui          s0, 85225
                  addi         a2, a6, -357
                  nop
                  auipc        s0, 105558
                  nop
                  add          ra, a4, s5
                  add          ra, s0, s0
                  sub          s0, s2, a2
                  nop
                  add          s0, s10, s6 #end riscv_int_numeric_corner_stream_14
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x80000000
                  li           sp, 0xffffffff
                  li           a4, 0xd8aeefc6
                  li           ra, 0x80000000
                  li           s1, 0xc1574481
                  li           t4, 0x80000000
                  li           s0, 0x80000000
                  li           gp, 0x0
                  li           s7, 0x1eea097b
                  addi         s0, ra, -606
                  lui          gp, 616193
                  addi         ra, a4, -1126
                  nop
                  nop
                  nop
                  lui          s7, 611286
                  add          sp, s1, s1
                  nop
                  lui          s7, 95696
                  lui          gp, 636198
                  add          s7, sp, t6
                  lui          a4, 521921
                  nop
                  addi         t4, a7, 2043 #end riscv_int_numeric_corner_stream_15
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           t4, 0x7037626a
                  li           t5, 0x80000000
                  li           s2, 0xffffffff
                  li           a3, 0x0
                  li           a6, 0x2e864fee
                  li           s7, 0x545e5b6e
                  li           tp, 0xffffffff
                  li           t0, 0x2ec5b071
                  li           ra, 0x0
                  addi         s2, t4, -1911
                  nop
                  addi         s0, t5, -1273
                  auipc        s0, 1014837
                  add          s0, t5, s0
                  lui          a3, 1025232
                  auipc        ra, 101273
                  auipc        t5, 567475
                  sub          ra, a6, a3
                  add          s0, s2, tp
                  sub          t0, t5, t0
                  auipc        tp, 972593
                  add          t4, s7, tp
                  addi         t4, a6, 582
                  addi         s7, tp, 1524
                  lui          ra, 536693
                  addi         ra, s7, -1792
                  sub          t0, ra, tp
                  addi         t0, t5, 457
                  addi         tp, a3, -962
                  add          t5, t5, tp
                  nop
                  add          ra, t0, a6
                  addi         tp, s7, -279
                  nop
                  sub          t0, tp, a3
                  lui          ra, 958580
                  addi         a6, t4, -1567
                  add          s0, a3, tp
                  nop #end riscv_int_numeric_corner_stream_7
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_24
                  li           ra, 0x0
                  li           s7, 0xffffffff
                  li           a6, 0x80000000
                  li           s1, 0x0
                  li           s4, 0xffffffff
                  li           sp, 0xffffffff
                  li           t2, 0xffffffff
                  li           s2, 0xa3beb980
                  li           s0, 0x0
                  auipc        a2, 1025098
                  addi         s7, a6, -843
                  addi         sp, sp, -1198
                  nop
                  addi         a2, a6, 792
                  add          t2, ra, t2
                  add          t2, s0, s2
                  sub          s1, ra, sp
                  sub          t2, s4, s2
                  add          s2, t2, sp
                  lui          s2, 669115
                  addi         s4, s2, 554
                  auipc        s0, 222091
                  sub          s1, t2, t2
                  addi         s1, a2, 402
                  nop
                  lui          a2, 816539
                  lui          s7, 516440
                  auipc        t2, 950967
                  add          s1, s0, s1
                  lui          s7, 458284
                  add          s2, s7, s4
                  auipc        s1, 123526 #end riscv_int_numeric_corner_stream_24
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s0, 0x80000000
                  li           a2, 0x0
                  li           s5, 0x80000000
                  li           a5, 0xea15116a
                  li           ra, 0x80000000
                  li           t0, 0x0
                  li           a7, 0x80000000
                  li           gp, 0xffffffff
                  li           sp, 0xffffffff
                  sub          s0, s0, a2
                  addi         s0, sp, 1952
                  add          a5, s0, s5
                  nop
                  lui          a7, 835672
                  lui          a2, 254437
                  add          gp, t0, t0
                  addi         sp, s5, 1737
                  lui          a5, 668198
                  add          gp, a2, ra
                  addi         a2, s5, -1319
                  addi         t1, a5, 1811
                  auipc        s5, 1037056
                  add          s0, a5, s0
                  auipc        s5, 54498
                  addi         a2, a7, -1501
                  add          t1, a5, s5
                  addi         t1, ra, -169
                  auipc        a7, 209830
                  add          sp, sp, s5
                  add          a2, t1, s0
                  sub          a7, t1, a5 #end riscv_int_numeric_corner_stream_10
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_23
                  li           s4, 0xffffffff
                  li           s11, 0x0
                  li           t5, 0x3f09126d
                  li           sp, 0x0
                  li           s2, 0xffffffff
                  li           t2, 0x6e49f5c0
                  li           t3, 0x0
                  li           s6, 0xffffffff
                  li           t6, 0xffffffff
                  auipc        t2, 538566
                  auipc        t3, 130802
                  auipc        s4, 823649
                  auipc        t1, 354934
                  addi         s11, sp, 188
                  sub          t6, t6, s2
                  add          t1, s4, s4
                  add          sp, s4, t6
                  auipc        sp, 271595
                  lui          t6, 288189
                  nop
                  addi         t1, s2, -1078
                  addi         t5, s6, 35
                  lui          t6, 760383
                  nop
                  addi         t2, t3, -535
                  nop
                  sub          s6, s6, t1
                  addi         s4, s4, -625 #end riscv_int_numeric_corner_stream_23
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           s11, 0xffffffff
                  li           t6, 0xffffffff
                  li           t0, 0x80000000
                  li           s5, 0x0
                  li           s3, 0x80000000
                  li           t3, 0xffffffff
                  li           s2, 0x7840a04
                  li           s1, 0x80000000
                  li           a6, 0x313a7f61
                  sub          s11, s2, t3
                  nop
                  lui          a6, 940590
                  add          a6, t0, a6
                  lui          s1, 108234
                  sub          t3, s5, s2
                  add          s1, s7, s1
                  add          s1, t0, t6
                  auipc        s2, 929906
                  addi         s1, a6, -903
                  lui          t6, 258696
                  add          t3, s1, s5
                  addi         s2, a6, 546
                  add          t6, s1, t0
                  auipc        s5, 42930 #end riscv_int_numeric_corner_stream_33
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           t2, 0x26d5a123
                  li           tp, 0x0
                  li           s0, 0xffffffff
                  li           a2, 0x80000000
                  li           a6, 0x47ab1cd4
                  li           a7, 0x85dd67b3
                  li           s10, 0xeb2bcc8f
                  li           s2, 0x80000000
                  li           s11, 0x80000000
                  auipc        s0, 638995
                  auipc        a7, 941995
                  sub          s0, s0, a6
                  lui          t2, 74259
                  addi         a7, a7, 444
                  nop
                  nop
                  add          a7, s10, a6
                  nop
                  auipc        s11, 133825
                  auipc        s0, 491885
                  add          tp, tp, s10
                  add          tp, s10, t2
                  lui          a2, 376170
                  addi         a2, a7, 1360
                  auipc        a6, 746596
                  lui          gp, 208173
                  sub          s11, s2, gp
                  lui          a7, 270942
                  auipc        s11, 197447
                  sub          a7, s2, tp
                  lui          gp, 219477
                  sub          t2, a7, tp
                  add          a2, tp, tp
                  add          s0, s2, s10
                  lui          a6, 204095
                  add          a2, t2, a7
                  addi         s2, gp, -785
                  nop
                  auipc        tp, 802221 #end riscv_int_numeric_corner_stream_37
                  li           s9, 0xc1b70ebf #start riscv_int_numeric_corner_stream_35
                  li           t3, 0xee44545c
                  li           s10, 0xd5d0f21b
                  li           a6, 0x80000000
                  li           s0, 0x6a55da59
                  li           sp, 0xea69514c
                  li           s4, 0xffffffff
                  li           t0, 0xffffffff
                  li           a4, 0x80000000
                  li           s11, 0x80000000
                  nop
                  sub          a4, s0, t3
                  nop
                  addi         s4, a4, 1443
                  lui          s10, 19625
                  auipc        a4, 653497
                  addi         s9, s0, -1817
                  nop
                  auipc        sp, 628438
                  addi         t0, a4, -719
                  auipc        s4, 802616
                  add          s0, t0, s9
                  lui          t0, 315339
                  addi         s9, a4, 170
                  lui          s0, 761686
                  addi         t0, a6, -2025
                  sub          s10, sp, s10
                  lui          s0, 180246 #end riscv_int_numeric_corner_stream_35
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           a2, 0x3947bc54
                  li           t1, 0x80000000
                  li           t2, 0xf524c136
                  li           a6, 0x80000000
                  li           s4, 0x80000000
                  li           s1, 0x205709fc
                  li           t3, 0x0
                  li           s6, 0x80000000
                  li           ra, 0x80000000
                  add          sp, s1, t3
                  add          t3, a2, a2
                  addi         s4, t2, 1935
                  add          s1, a2, t3
                  add          t1, t3, s1
                  lui          a2, 15326
                  add          t2, s1, sp
                  sub          a2, t1, a6
                  lui          s1, 525105
                  auipc        s6, 432591
                  sub          s6, ra, a2
                  auipc        ra, 1046107
                  addi         ra, a2, -1031
                  lui          s1, 570807
                  lui          t3, 404676
                  auipc        sp, 696897
                  nop
                  sub          t3, t2, a2
                  nop
                  nop
                  auipc        t2, 724248
                  nop
                  add          s6, t3, s6
                  auipc        s6, 522446
                  sub          t3, ra, t1
                  add          ra, s6, sp
                  nop
                  nop
                  add          s4, t2, a6 #end riscv_int_numeric_corner_stream_21
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_39
                  li           a4, 0x80000000
                  li           t0, 0x80000000
                  li           s6, 0x0
                  li           a2, 0x80000000
                  li           t4, 0x8b64e9a7
                  li           s0, 0xffffffff
                  li           a3, 0xffffffff
                  li           tp, 0x80000000
                  li           a5, 0x0
                  lui          a6, 689837
                  add          t4, a4, a5
                  lui          t4, 1026070
                  addi         s0, a5, 538
                  add          t4, s0, s0
                  addi         s6, tp, -414
                  sub          t0, s0, a4
                  lui          a3, 128146
                  nop
                  nop
                  nop
                  add          a6, a3, a2
                  lui          a5, 430629
                  nop
                  add          s6, a5, a2
                  add          a6, a5, a2
                  addi         t0, a4, -665
                  sub          s0, a4, a2
                  add          a6, tp, a6
                  add          a3, s6, a6
                  lui          a5, 791922
                  sub          a4, t4, t4
                  addi         s6, a5, 1346
                  auipc        s6, 488510
                  auipc        a5, 628488
                  nop
                  add          tp, a4, t0
                  auipc        s6, 715310 #end riscv_int_numeric_corner_stream_39
                  li           a5, 0x4347dff0 #start riscv_int_numeric_corner_stream_0
                  li           ra, 0x80000000
                  li           s2, 0xffffffff
                  li           a4, 0xffffffff
                  li           tp, 0x50d7fb3f
                  li           s10, 0x0
                  li           s6, 0x0
                  li           t5, 0xdd3a0027
                  li           s9, 0x80000000
                  li           s3, 0x703016b6
                  lui          a5, 609099
                  addi         tp, s10, 1213
                  sub          ra, t5, s10
                  sub          s3, s6, s6
                  auipc        s2, 706253
                  auipc        tp, 657383
                  add          s6, s9, s10
                  add          a5, a5, s3
                  auipc        ra, 380357
                  lui          s2, 220599
                  nop
                  auipc        ra, 501857
                  lui          tp, 1021138
                  lui          s3, 703615
                  sub          a5, ra, t5
                  add          t5, s3, s9
                  lui          s10, 95676
                  add          s6, s6, s6
                  addi         s9, s6, -1378
                  sub          s10, ra, s9
                  add          s9, tp, t5
                  auipc        ra, 555229
                  sub          tp, s3, s2
                  auipc        s10, 89334
                  sub          ra, ra, t5
                  auipc        tp, 886252
                  addi         s10, a5, 843
                  auipc        s3, 778232
                  addi         ra, s3, 63
                  lui          ra, 285332 #end riscv_int_numeric_corner_stream_0
                  li           tp, 0x746b4606 #start riscv_int_numeric_corner_stream_36
                  li           s2, 0xffffffff
                  li           a2, 0x80000000
                  li           s10, 0x80000000
                  li           s3, 0xffffffff
                  li           a3, 0xffffffff
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           t1, 0x80000000
                  li           t5, 0x6e8d7f24
                  lui          s3, 811519
                  lui          s10, 480789
                  add          s10, s3, s10
                  add          a5, a3, a3
                  auipc        s10, 388735
                  nop
                  nop
                  sub          t1, s5, s10
                  add          tp, s2, a2
                  nop
                  addi         s5, a3, -287
                  auipc        s5, 67020
                  add          t1, t1, t1
                  nop
                  lui          t5, 832845
                  add          a5, t5, t1
                  auipc        s3, 871827
                  sub          t1, a5, s3
                  sub          s2, s10, a2
                  auipc        s2, 470234
                  lui          a5, 550377
                  add          s10, s5, t1
                  auipc        tp, 903339
                  nop
                  auipc        a2, 609664
                  lui          s3, 245620
                  nop #end riscv_int_numeric_corner_stream_36
                  li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_34
                  li           s7, 0xffffffff
                  li           gp, 0x80000000
                  li           a6, 0xffffffff
                  li           sp, 0x80000000
                  li           t0, 0x80000000
                  li           a4, 0xb7477bbf
                  li           s1, 0x80000000
                  li           tp, 0xffffffff
                  li           t3, 0x80000000
                  add          a6, sp, a4
                  lui          gp, 827618
                  add          s11, a4, s1
                  sub          s1, s1, t0
                  auipc        a6, 28508
                  lui          gp, 48728
                  sub          t0, a6, t0
                  auipc        a6, 68736
                  nop
                  lui          tp, 741486
                  add          t3, tp, s11
                  sub          a6, tp, s7
                  add          a4, sp, tp
                  add          s1, t3, s11
                  lui          s7, 420020
                  lui          sp, 464670
                  addi         a4, s1, 599
                  addi         s1, t0, -1053
                  auipc        s11, 226229
                  addi         t0, sp, 1841
                  auipc        s11, 669136
                  add          tp, s11, t3
                  auipc        a4, 898083
                  auipc        t3, 1007299
                  nop
                  addi         t0, t3, -1541
                  nop
                  nop
                  lui          s1, 1002506
                  addi         t0, t0, -1712 #end riscv_int_numeric_corner_stream_34
                  li           t1, 0xde810faa #start riscv_int_numeric_corner_stream_17
                  li           s6, 0xfd3d9fd1
                  li           a3, 0xffffffff
                  li           s10, 0x843e57e3
                  li           a4, 0xffffffff
                  li           gp, 0x0
                  li           s1, 0xffffffff
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  li           t4, 0xa1dbbf1c
                  auipc        s4, 918771
                  add          t1, a3, s6
                  sub          t4, a4, a3
                  add          t4, gp, gp
                  nop
                  add          s10, a4, s4
                  nop
                  auipc        gp, 331187
                  addi         t4, t4, -1645
                  addi         s1, s10, 261
                  add          s4, t1, s1
                  add          s4, s6, a3
                  auipc        s10, 56484
                  nop
                  auipc        s4, 844849
                  add          a4, s4, s4
                  lui          t4, 296445
                  lui          a4, 67673
                  sub          gp, a3, t1 #end riscv_int_numeric_corner_stream_17
                  li           tp, 0x454688e9 #start riscv_int_numeric_corner_stream_22
                  li           s5, 0xffffffff
                  li           s0, 0x80000000
                  li           s9, 0x1b8085f2
                  li           a7, 0x39107c36
                  li           s3, 0x1b6333f1
                  li           s1, 0x0
                  li           t0, 0x0
                  li           s6, 0xffffffff
                  li           t1, 0x0
                  addi         s0, s5, 563
                  sub          s9, t1, s9
                  sub          a7, s5, s0
                  addi         a7, s9, 1298
                  addi         s0, tp, 377
                  auipc        s9, 89164
                  addi         t1, s6, -154
                  addi         tp, s1, 313
                  nop
                  auipc        tp, 625648
                  addi         t1, t1, -1819
                  lui          s0, 322196
                  auipc        s3, 97261
                  lui          s5, 438191
                  addi         t1, s5, 693
                  sub          t1, a7, a7
                  sub          t0, s6, s6
                  auipc        t0, 341445
                  nop
                  nop
                  addi         t0, tp, 821
                  add          s1, t1, s1
                  addi         s6, s0, -1354
                  addi         a7, s5, -1705
                  sub          s6, t0, a7 #end riscv_int_numeric_corner_stream_22
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a2, 0x80000000
                  li           ra, 0x0
                  li           t1, 0xc1b4a6dd
                  li           a4, 0x0
                  li           s1, 0x0
                  li           gp, 0xffffffff
                  li           t6, 0xffffffff
                  li           t0, 0x0
                  li           t5, 0x0
                  nop
                  sub          ra, ra, t1
                  add          s1, gp, gp
                  addi         gp, a4, -1095
                  lui          gp, 987615
                  auipc        t6, 894072
                  auipc        a2, 903799
                  lui          a4, 119608
                  addi         t1, t6, 1918
                  nop
                  addi         t5, ra, 1524
                  sub          t5, ra, t5
                  addi         ra, gp, -378
                  add          a4, t6, ra
                  add          a2, t6, a4
                  add          s1, t0, t6
                  nop
                  add          gp, t5, t0
                  auipc        ra, 844279
                  sub          t1, s1, t0
                  sub          t5, a4, a4
                  nop
                  lui          sp, 757993
                  addi         ra, ra, 551
                  add          t5, a4, sp
                  lui          t5, 770317 #end riscv_int_numeric_corner_stream_1
                  li           s10, 0xb81628ea #start riscv_int_numeric_corner_stream_16
                  li           a2, 0x80000000
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  li           t0, 0x0
                  li           s11, 0x0
                  li           a5, 0x0
                  li           sp, 0xffffffff
                  li           s9, 0xffffffff
                  li           tp, 0x95e0ab46
                  lui          s11, 749470
                  auipc        s11, 156065
                  add          s9, s10, sp
                  auipc        a5, 379670
                  addi         s9, a2, 433
                  auipc        t2, 502065
                  add          s4, t2, a5
                  addi         a2, s10, -350
                  auipc        s9, 640047
                  nop
                  sub          s4, t0, sp
                  auipc        a5, 456323
                  auipc        sp, 636294
                  sub          s11, s9, t0
                  nop
                  addi         s10, s9, 1294
                  nop
                  lui          s4, 108962
                  add          sp, s4, s9
                  sub          s4, a2, s10 #end riscv_int_numeric_corner_stream_16
                  addi         t3, s7, 680
                  add          sp, tp, t0
                  sub          s9, a4, a0
                  sub          a4, s0, a5
                  sltu         tp, t3, s1
                  lui          a6, 672195
                  xor          s11, ra, a7
                  auipc        a5, 932237
                  auipc        a4, 710916
                  auipc        s6, 410914
                  slli         s1, s2, 14
                  srli         s0, t5, 26
                  sltiu        a6, a4, -1728
                  slt          t2, gp, t3
                  srai         t1, s2, 15
                  add          t0, s1, s1
                  sra          s3, s8, t0
                  xor          t4, a2, a5
                  sll          s10, s5, a0
                  addi         t1, t6, 1076
                  addi         ra, s9, 2002
                  srl          t5, t3, s2
                  srai         s2, a3, 25
                  sra          a2, s5, a7
                  sltiu        s0, t5, 246
                  slli         a6, a3, 13
                  slli         s2, s4, 20
                  sltu         s10, a6, t0
                  auipc        tp, 622917
                  ori          a2, a5, -410
                  slti         a3, s2, -1060
                  xori         s4, a5, 1607
                  lui          s5, 97591
                  andi         t3, a0, 88
                  sll          t0, a5, s5
                  addi         t4, t6, -440
                  sra          a4, a3, s1
                  addi         t6, a3, 846
                  xor          t2, s9, s5
                  srli         t3, s10, 17
                  slt          s2, tp, a6
                  sra          a7, s4, t0
                  sltu         gp, s4, s4
                  sra          t4, t2, a2
                  xori         s2, s3, 318
                  sltiu        a7, a5, -1665
                  xor          a6, s11, t1
                  lui          s1, 572981
                  srai         gp, t6, 26
                  add          s6, s4, t1
                  xor          t5, a3, a5
                  xori         a6, s10, -1204
                  srli         a5, s0, 2
                  srli         s0, s10, 18
                  addi         s10, s10, 416
                  nop
                  addi         tp, t5, 526
                  sltiu        s4, tp, 1653
                  addi         a5, s7, -1017
                  and          zero, a2, a4
                  xori         s10, ra, -1853
                  slti         s7, a3, 668
                  addi         s11, tp, 1140
                  ori          s1, s0, -647
                  sub          s5, s8, s3
                  sltu         s2, gp, s6
                  srai         a3, a4, 0
                  ori          zero, tp, 472
                  ori          s6, t3, 244
                  add          a6, t2, s11
                  sltu         sp, t4, zero
                  ori          s4, a1, 1207
                  srli         s11, tp, 10
                  sltiu        t5, a2, -282
                  addi         a6, t6, -1211
                  srl          t3, t5, s8
                  andi         s2, s1, -567
                  ori          zero, a5, 1807
                  xor          t5, s11, a2
                  nop
                  sltu         s7, a5, sp
                  sltiu        gp, s4, 89
                  slti         gp, s6, 560
                  sltiu        sp, sp, -1861
                  sra          t1, s0, t6
                  or           s6, s1, a5
                  add          zero, a2, s3
                  slti         zero, s7, -1414
                  auipc        sp, 581009
                  auipc        a4, 502783
                  slti         t5, t0, -1684
                  srli         ra, s1, 21
                  auipc        t4, 586739
                  sll          tp, s11, s9
                  sub          a6, ra, ra
                  sll          s3, ra, gp
                  addi         t5, s9, 1380
                  srli         s2, s0, 19
                  ori          s11, a1, 1945
                  slt          s0, t1, a5
                  slti         a6, a2, -1626
                  sltu         s10, a2, s5
                  slti         zero, s6, -1594
                  nop
                  xor          a6, a3, s9
                  srai         a2, s0, 28
                  lui          s10, 140178
                  srl          gp, s3, t3
                  ori          s11, zero, 1465
                  srl          s7, sp, s2
                  or           t2, t0, a3
                  slli         a4, s3, 10
                  nop
                  sltiu        sp, s6, 430
                  add          a6, a6, s5
                  and          s9, t4, a4
                  srli         s0, ra, 11
                  andi         tp, a0, -8
                  add          t2, s5, t1
                  srai         t5, t2, 30
                  lui          t3, 275859
                  slti         t1, s4, -933
                  sra          s7, a5, t3
                  sll          s5, a7, s7
                  xor          s1, t3, t0
                  sltiu        a2, t3, -1522
                  and          s7, s9, t2
                  andi         t0, a3, 355
                  sub          s3, gp, a6
                  ori          t0, a0, 883
                  andi         a3, s3, -1755
                  sll          s5, gp, a6
                  srli         s5, s6, 28
                  slti         zero, s9, 35
                  andi         gp, gp, -1275
                  nop
                  sub          t5, s7, sp
                  sub          a5, s3, s4
                  slt          ra, s3, s5
                  sra          a4, t4, s10
                  ori          zero, s10, 1092
                  xor          a7, a6, s3
                  slli         s5, a5, 6
                  sub          t0, tp, a6
                  nop
                  addi         a3, s1, -55
                  srli         zero, a6, 0
                  slt          s9, t0, gp
                  srli         t1, t2, 11
                  xori         a7, t0, 2045
                  addi         s2, s2, 233
                  sub          s4, a5, t1
                  auipc        s0, 844459
                  lui          t1, 934326
                  andi         t1, tp, -872
                  srai         a7, t6, 23
                  ori          zero, a6, 1726
                  sll          t4, ra, s4
                  addi         s11, t0, 220
                  nop
                  lui          s10, 118448
                  srai         s1, s0, 30
                  sltiu        zero, a6, -358
                  sra          t5, t4, s3
                  or           a5, s8, s0
                  srai         s2, s7, 15
                  xor          s9, t0, a3
                  and          tp, t2, sp
                  auipc        sp, 961529
                  and          s3, gp, ra
                  andi         a5, s0, 110
                  slti         ra, t0, -1530
                  and          s7, zero, a5
                  or           t1, a0, s8
                  srli         s10, a4, 3
                  add          zero, sp, t3
                  xor          tp, a2, s6
                  srl          s1, t5, t4
                  slt          a7, ra, s6
                  srli         t3, s9, 3
                  slli         t5, a2, 7
                  addi         s0, sp, 1355
                  sra          zero, ra, s4
                  ori          s0, t4, -602
                  sltu         s3, s6, t3
                  srl          s4, a0, t3
                  lui          s2, 440104
                  add          s4, a3, s10
                  xor          a2, s8, t4
                  or           ra, s3, t1
                  or           zero, s8, a1
                  slli         t3, sp, 4
                  auipc        a2, 908299
                  sra          s4, zero, t4
                  ori          s9, t6, 56
                  lui          s7, 888030
                  nop
                  srai         t6, s4, 30
                  srai         t6, tp, 31
                  slti         s0, a1, -1544
                  srli         a2, a5, 22
                  nop
                  slli         a2, s10, 28
                  srli         t4, s8, 24
                  slt          t0, t2, s10
                  slti         s9, gp, -209
                  or           s7, s0, ra
                  auipc        s7, 1017952
                  sltu         s2, a3, a6
                  sll          t6, t4, a3
                  sltu         tp, tp, s4
                  srai         tp, a1, 11
                  srli         a2, s9, 14
                  lui          t4, 2091
                  slt          s0, s5, t1
                  add          s10, zero, a6
                  sub          s0, s10, s9
                  auipc        tp, 417470
                  nop
                  addi         s2, t5, -536
                  nop
                  sll          t4, t5, a6
                  slti         a5, t3, -2012
                  sra          ra, s10, s1
                  sra          s9, tp, s0
                  ori          t0, a6, 860
                  slti         ra, s8, 498
                  addi         a4, s11, 109
                  addi         gp, s8, -29
                  auipc        zero, 784067
                  sltu         t0, s3, t0
                  ori          tp, s4, 824
                  xor          a7, t1, s8
                  xori         t4, s8, 1883
                  or           sp, s1, a2
                  or           s1, gp, t2
                  andi         a3, s3, 500
                  slli         t2, ra, 5
                  nop
                  sub          zero, s6, zero
                  sll          gp, ra, t6
                  srai         a2, zero, 2
                  or           a7, s1, gp
                  slt          tp, sp, a1
                  ori          gp, t2, 1043
                  andi         sp, t1, 1040
                  srl          t2, t0, s2
                  sra          s2, s7, s5
                  sub          t5, t1, t4
                  srl          a4, s1, t6
                  sltiu        t2, s11, -505
                  or           tp, t3, gp
                  lui          a4, 459825
                  xor          s10, s8, tp
                  sltu         s10, t3, s1
                  sll          s7, s3, s4
                  andi         a7, s0, -16
                  or           a5, t5, s6
                  sll          a7, t5, s1
                  slti         s6, t5, 1908
                  xor          t6, gp, gp
                  xori         a3, t2, -2011
                  lui          s1, 173721
                  lui          s5, 717160
                  srli         t3, t1, 17
                  lui          t2, 617741
                  andi         tp, ra, 1540
                  sra          s3, s2, gp
                  sub          a7, s1, s1
                  lui          t0, 936846
                  sll          tp, t5, s9
                  sltu         t2, zero, t4
                  srl          s11, a0, a7
                  sltiu        t5, a5, -142
                  sub          sp, s2, t4
                  xor          s11, s11, a4
                  lui          a6, 523700
                  srai         s2, s7, 16
                  and          a2, s5, a2
                  and          s4, t3, t1
                  srl          t0, s8, s8
                  ori          s10, a0, -1383
                  sll          s2, a5, s0
                  sltu         a7, s8, s0
                  sll          t5, s5, s7
                  addi         s7, s10, 806
                  slt          t3, a4, s8
                  xori         s4, t2, -1420
                  lui          t0, 697187
                  srl          s6, gp, s6
                  sltu         s9, s2, t4
                  srli         s5, s10, 29
                  slli         t1, s4, 10
                  slti         a3, a7, -778
                  slli         s9, t5, 14
                  sub          s1, t3, a2
                  add          a6, s4, a7
                  xori         gp, s9, -547
                  slt          t2, sp, t6
                  nop
                  xori         s4, s2, 836
                  srl          s7, s0, s10
                  slt          s5, gp, s0
                  slti         a3, a0, -479
                  srli         s11, a7, 16
                  sra          t3, t1, s9
                  srli         s9, s0, 25
                  xori         s11, a2, -851
                  sll          a4, t6, a6
                  xori         s10, s3, 1327
                  lui          s1, 919555
                  slli         s10, tp, 15
                  xori         s6, t1, -182
                  slt          zero, t6, a7
                  sll          t3, t2, t2
                  srli         t0, a0, 5
                  slt          s11, s10, s10
                  sltu         a3, sp, ra
                  sltiu        t1, ra, -654
                  srl          t3, s11, a2
                  sltiu        s0, t5, 410
                  nop
                  sra          a5, s2, t1
                  nop
                  sra          s5, t0, a3
                  auipc        ra, 950324
                  sltu         t5, s2, t2
                  sll          s7, t5, s11
                  nop
                  xor          s10, s0, t6
                  xor          gp, s0, sp
                  srl          s0, a7, s9
                  sltu         gp, zero, a6
                  srai         t0, s2, 28
                  add          ra, t0, s6
                  slt          s10, s10, s3
                  and          s2, s5, s2
                  slli         zero, tp, 7
                  sll          tp, a7, t1
                  slti         gp, s6, -200
                  nop
                  srai         tp, t0, 2
                  addi         t1, tp, -813
                  auipc        s7, 27090
                  and          tp, s10, t0
                  sltu         s0, s4, s9
                  slli         s10, t3, 3
                  andi         s1, s1, -1
                  addi         s0, t5, -733
                  sltiu        s10, s8, -942
                  addi         a6, t0, 678
                  xori         s10, s9, -307
                  srl          gp, gp, s4
                  sra          s4, t1, a5
                  xor          s10, s1, t5
                  and          s9, t6, s2
                  xori         sp, s7, 925
                  ori          a5, zero, 1221
                  sltu         a5, s2, a6
                  andi         a7, s9, 1652
                  slti         a4, t6, -1438
                  xori         t3, s7, -728
                  addi         s2, zero, 1113
                  addi         t4, s10, 722
                  nop
                  srl          a3, s10, a5
                  or           s0, a2, s4
                  sltu         a3, s4, t3
                  add          a6, s1, a3
                  sltiu        t6, s9, -1220
                  sltu         a2, a6, t3
                  slt          sp, s2, a4
                  sltiu        s9, a4, -319
                  srai         t0, a6, 15
                  add          a2, s6, t6
                  sub          gp, s3, t1
                  slti         zero, gp, -554
                  srli         s0, sp, 3
                  slt          a3, a7, s8
                  sltu         s4, s2, tp
                  slt          s7, s0, sp
                  addi         sp, tp, -1177
                  xori         s9, a3, 1590
                  slli         s0, s6, 26
                  sll          a3, tp, s5
                  slti         s2, t3, 2003
                  ori          tp, a1, 1980
                  ori          a4, a0, 562
                  sub          t3, t4, a4
                  lui          s0, 337179
                  andi         sp, s11, -909
                  andi         s11, gp, 2002
                  srl          t4, s10, s9
                  sub          s4, s10, a0
                  ori          a6, s7, -742
                  slt          ra, a4, s0
                  slti         s11, t4, -1133
                  srl          s4, ra, s3
                  auipc        a7, 889324
                  xori         a5, s4, -1383
                  srai         t6, a5, 20
                  xor          t2, s3, a4
                  nop
                  auipc        s5, 1020415
                  srl          s11, t4, tp
                  srli         a6, zero, 29
                  sltiu        a5, gp, 1276
                  ori          t2, a3, -713
                  srai         s10, s2, 21
                  srli         sp, s4, 27
                  addi         sp, s9, -1248
                  slt          a3, t1, t6
                  slti         t3, s4, -84
                  addi         s10, s10, 1958
                  slti         s10, s5, -1194
                  slt          s5, t0, s4
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_25
                  li           t1, 0x9b47b163
                  li           s2, 0xffffffff
                  li           t5, 0x0
                  li           s9, 0x80000000
                  li           s11, 0xffffffff
                  li           a7, 0x0
                  li           t4, 0xffffffff
                  li           s5, 0x80000000
                  li           s4, 0x53908b07
                  add          a7, a7, s5
                  nop
                  nop
                  auipc        t5, 420209
                  lui          s9, 367371
                  add          s11, t5, s9
                  sub          s9, s9, s9
                  add          s4, a7, s2
                  nop
                  sub          s10, s2, s11
                  sub          s4, s2, s9
                  addi         s2, a7, 985
                  lui          t1, 147071
                  lui          s4, 683115
                  sub          t1, s10, s10
                  sub          t1, s2, s9
                  add          t1, t4, s9
                  lui          s11, 397382
                  sub          s9, t5, t1
                  add          s9, a7, s9
                  auipc        s9, 1024454
                  addi         t1, s11, -887
                  sub          t5, t1, s5
                  auipc        s4, 759409
                  addi         s9, s9, 427 #end riscv_int_numeric_corner_stream_25
                  xori         t3, t3, 1474
                  slti         t2, s4, -1461
                  srli         t0, sp, 30
                  slti         s0, tp, 1126
                  xor          ra, t4, t0
                  addi         t3, s1, -843
                  xor          gp, t1, a7
                  sll          tp, t0, a2
                  srli         s0, gp, 23
                  srl          t4, t2, a6
                  srai         s10, a1, 19
                  sra          s9, s11, zero
                  auipc        t2, 507961
                  xor          t3, t5, s10
                  sll          s6, s2, s1
                  sll          a2, t1, s6
                  sltu         s10, a0, t2
                  srai         s7, t5, 16
                  lui          s3, 342092
                  xor          t0, a1, t2
                  andi         a2, a7, -1236
                  sltiu        s1, a3, -618
                  srai         t1, s3, 22
                  srl          s1, t1, s4
                  xori         t0, s5, -767
                  srl          s11, t3, s5
                  sltiu        s6, t6, 122
                  sltu         s1, sp, zero
                  srl          t3, t6, s5
                  ori          t6, s1, -991
                  slli         s0, s9, 19
                  addi         a2, t0, -88
                  addi         ra, ra, -1859
                  andi         s7, s6, 155
                  xor          zero, s9, a3
                  addi         s7, sp, -97
                  add          a7, s6, t4
                  sltu         a2, s10, a4
                  ori          s10, t4, 756
                  xori         s10, s2, -642
                  nop
                  srli         a5, s1, 18
                  and          t6, t0, ra
                  addi         tp, s1, -946
                  srl          t1, a6, t1
                  srli         s6, a6, 5
                  nop
                  slli         s11, t3, 9
                  srl          gp, t4, s2
                  slti         a6, a5, -107
                  ori          ra, s7, -1386
                  or           a4, gp, s1
                  xor          s4, s6, t1
                  nop
                  lui          s7, 251805
                  slli         a4, s3, 22
                  slti         s11, t5, -1595
                  lui          t4, 319186
                  sra          s10, a3, a4
                  srl          s7, ra, s7
                  slti         a7, ra, 1655
                  add          t5, s11, t5
                  sub          s1, s5, a7
                  lui          a3, 268542
                  ori          t1, ra, -1704
                  slti         a2, a0, -1225
                  slt          a2, s11, s0
                  sra          s0, s1, s6
                  slt          t6, s4, a4
                  ori          s9, s1, 1920
                  sltiu        a6, a0, -1324
                  andi         t4, t4, 1794
                  srli         a7, a6, 1
                  and          s1, t0, sp
                  and          ra, a0, a1
                  slt          s11, a0, s5
                  nop
                  srl          zero, s1, s1
                  srl          s10, a0, t0
                  auipc        s0, 370960
                  srai         a4, s9, 5
                  ori          s2, s7, -1063
                  add          s5, t0, zero
                  auipc        s7, 628740
                  srai         s0, s0, 19
                  auipc        a7, 482917
                  andi         s3, zero, 560
                  sra          a5, t0, t1
                  slt          sp, t0, t1
                  xori         s2, zero, -1637
                  auipc        a7, 890742
                  sra          t1, a4, a2
                  sub          t4, s1, t6
                  sltu         ra, a2, a7
                  sltiu        t4, s8, 1194
                  xori         s11, t3, -1975
                  sra          s1, s8, s4
                  or           sp, s10, t6
                  or           s3, s2, s10
                  ori          a4, a4, -601
                  sltu         s4, a5, a7
                  and          a2, a2, s3
                  slti         s10, t0, 296
                  xori         s0, a3, 1834
                  and          s10, t6, a3
                  andi         t2, t1, 1835
                  lui          a4, 81299
                  srai         t6, t0, 19
                  srli         t5, a6, 2
                  sltu         t2, a0, s5
                  auipc        a5, 595108
                  srli         a3, sp, 11
                  sltu         a5, a7, ra
                  sll          a6, ra, s0
                  addi         s2, a2, -1566
                  addi         a4, t2, 395
                  slt          tp, s4, sp
                  or           s11, s9, t6
                  lui          a7, 567389
                  nop
                  add          s4, s6, t3
                  slti         s0, a0, 951
                  auipc        s2, 1046758
                  addi         s0, s2, -1248
                  nop
                  srl          s3, s6, a0
                  addi         s5, s10, -107
                  sltiu        a2, t2, 1865
                  addi         t0, s8, 1435
                  sltiu        s4, tp, -1340
                  sltiu        s5, a3, -463
                  or           gp, a4, zero
                  sub          s4, t2, t1
                  nop
                  slti         a7, s1, -1888
                  or           sp, a3, zero
                  addi         tp, t4, -2026
                  add          t0, t6, s7
                  or           s10, a7, sp
                  slti         t4, t6, -414
                  add          a3, t3, a7
                  sltiu        a4, a6, -1324
                  xori         t4, s9, 1500
                  sll          a2, s1, a0
                  srai         s7, t2, 26
                  srli         gp, tp, 17
                  and          ra, t2, s5
                  slli         a4, s9, 24
                  ori          a3, a6, 866
                  ori          s0, s5, -978
                  srl          s3, t6, t2
                  andi         s6, a5, -1150
                  ori          t5, zero, -1961
                  sra          s2, t3, tp
                  add          t2, tp, s9
                  ori          ra, a4, 1360
                  lui          s1, 358154
                  andi         s7, t5, -66
                  xori         s7, s4, 1873
                  and          sp, t5, s7
                  srai         a6, a7, 30
                  ori          s0, t3, 1477
                  xor          ra, a6, s8
                  slli         s6, a7, 6
                  andi         a3, s10, -1704
                  and          t3, t6, a7
                  srai         t3, tp, 20
                  slli         t0, a3, 19
                  slli         t0, t3, 24
                  sra          t1, a3, t4
                  slti         a5, t3, -88
                  nop
                  srli         t0, a2, 7
                  srai         s1, t2, 30
                  sltiu        t4, s6, 1336
                  auipc        s10, 883565
                  sltu         s1, a1, a3
                  slli         s11, s3, 14
                  nop
                  addi         s9, s4, -896
                  or           s0, a0, s1
                  and          a3, t4, a4
                  auipc        s3, 5044
                  sltu         t6, t1, a6
                  srai         t2, t2, 20
                  nop
                  sll          t4, s8, t2
                  addi         s6, gp, 867
                  and          s3, a5, a7
                  or           s7, a3, t5
                  auipc        s10, 495758
                  xor          s2, s7, t3
                  andi         s4, s10, -496
                  auipc        a2, 466404
                  sra          a7, zero, s11
                  sltiu        zero, a0, -171
                  srl          s2, t1, ra
                  srli         s1, t3, 11
                  and          s3, s0, a4
                  xori         a2, s4, -1775
                  add          t0, s11, a6
                  sltiu        s9, t2, -1398
                  lui          s5, 124685
                  sra          s10, zero, s0
                  srai         a5, a7, 8
                  andi         s0, s1, -803
                  or           s11, s5, sp
                  srl          t5, s4, zero
                  sltu         s3, s4, a6
                  xor          s10, a7, s8
                  lui          s3, 115964
                  xor          t0, t0, a4
                  auipc        zero, 847694
                  ori          s5, a0, -329
                  nop
                  srli         s9, a3, 0
                  sra          a5, a5, sp
                  slt          a7, a1, a4
                  slli         t5, s11, 17
                  slti         s5, t2, 565
                  slti         t0, gp, 936
                  nop
                  srl          a6, s3, a5
                  slt          ra, s5, s8
                  srl          a3, a4, t1
                  add          sp, t6, a0
                  lui          t5, 276625
                  slt          a5, s8, s2
                  sltiu        t1, a2, -22
                  sltiu        s1, s0, 775
                  slt          s9, a7, sp
                  slli         s5, t6, 30
                  slt          t3, s6, t5
                  nop
                  srli         gp, gp, 3
                  xor          s4, a7, a5
                  xori         s10, a1, -351
                  srl          s1, s1, s7
                  slli         t5, tp, 5
                  sll          tp, s5, s3
                  xori         ra, t3, -1320
                  xor          sp, gp, s8
                  auipc        s3, 497026
                  sub          gp, a4, s2
                  ori          s0, t5, 741
                  sub          tp, a1, zero
                  xori         s3, a0, 393
                  slt          s10, s0, s4
                  and          s10, t0, s9
                  srli         s7, a5, 22
                  slt          s0, s3, a1
                  andi         t2, s11, 146
                  sll          ra, t2, a7
                  and          t1, s1, t3
                  slt          a4, s6, sp
                  xori         a6, t2, 2004
                  sltu         a4, sp, s1
                  lui          t6, 160698
                  sll          tp, t1, s1
                  slti         gp, s2, 283
                  sltiu        t4, s2, 42
                  slli         a3, a0, 22
                  nop
                  sra          tp, s9, s2
                  auipc        gp, 337152
                  slti         sp, s0, 615
                  sra          gp, zero, a5
                  srai         s11, a3, 24
                  lui          gp, 1018558
                  srl          s6, s1, s11
                  sltu         s5, a2, a6
                  xori         a2, s3, 1094
                  auipc        a6, 451940
                  ori          s7, a6, -1894
                  or           a4, zero, s1
                  sll          t2, t0, sp
                  sll          s3, s6, s1
                  slli         s5, a4, 5
                  srl          s4, a2, t2
                  sltiu        gp, zero, -701
                  srai         t4, s6, 27
                  sll          s11, s8, a3
                  or           t3, a1, zero
                  sra          s4, s1, a6
                  sll          a7, s9, s7
                  sll          s0, s6, t5
                  or           s6, s5, a2
                  andi         t0, tp, 1181
                  auipc        t0, 7135
                  sra          a4, s2, s3
                  slt          a2, s1, t5
                  sub          zero, zero, s8
                  andi         s3, a1, 1555
                  xori         gp, t2, -1450
                  nop
                  sub          t1, s9, tp
                  slli         s10, a2, 15
                  sltu         a5, ra, s3
                  srl          t0, sp, s10
                  sub          s5, t1, s5
                  slti         t2, s1, 1910
                  sltiu        a7, a2, -1617
                  auipc        a4, 257923
                  ori          t3, a1, 1094
                  slti         a5, a4, -1502
                  slli         a3, s2, 11
                  srli         gp, s3, 18
                  auipc        s0, 883820
                  and          ra, s8, a4
                  sra          s0, s4, t4
                  slli         s11, t3, 6
                  andi         s5, s8, -531
                  srai         t2, a4, 4
                  slti         t1, t4, 2007
                  andi         zero, t1, -1001
                  xori         zero, s9, 1494
                  srli         t3, t3, 10
                  sltiu        a5, s10, -26
                  addi         t4, a6, -697
                  slli         a2, s4, 14
                  ori          t5, t3, -1238
                  andi         t1, zero, 1668
                  auipc        tp, 687578
                  or           gp, a2, t6
                  slt          s0, sp, s8
                  slti         s6, a5, -1823
                  or           zero, s10, t3
                  addi         t1, a4, 69
                  sltu         a5, s9, a1
                  xori         s4, t2, -1506
                  addi         s11, tp, -386
                  srl          t6, s5, s10
                  ori          s11, t6, -175
                  slli         s7, a0, 20
                  srl          s4, tp, s10
                  auipc        s1, 908835
                  or           a5, s8, a4
                  xori         a4, gp, 643
                  xor          t0, a5, s5
                  or           s10, s11, a7
                  xor          a2, a4, s7
                  sra          s11, s5, gp
                  xori         ra, a7, 66
                  auipc        s9, 489848
                  lui          s1, 660776
                  srl          t5, s10, s8
                  sltu         ra, s6, s6
                  srai         t4, a3, 14
                  slt          t4, a0, s7
                  slli         a6, s1, 15
                  sltiu        gp, s5, -1431
                  addi         t3, s4, -114
                  sra          a5, t1, t1
                  and          s4, sp, a0
                  slti         s2, sp, -1442
                  ori          t0, a0, -176
                  and          t2, a5, zero
                  lui          t3, 749135
                  slt          a3, s7, t4
                  slli         gp, gp, 12
                  xori         sp, s6, -22
                  or           a5, s3, a3
                  addi         a6, a6, 146
                  sub          zero, a3, s11
                  or           t5, t5, s8
                  addi         s2, gp, 465
                  srl          ra, s6, s6
                  xori         t4, s6, -1082
                  andi         s6, sp, 1734
                  or           t0, s11, t6
                  xori         s1, t2, -1034
                  srl          s0, t1, s10
                  auipc        s0, 152572
                  add          s6, s11, a7
                  lui          a5, 687743
                  lui          t6, 515066
                  ori          s7, a7, -1200
                  sltu         a4, s10, s2
                  srai         a6, t5, 2
                  srai         sp, s8, 14
                  xori         s4, a5, 805
                  lui          a4, 839352
                  and          s7, s0, t0
                  lui          s10, 173857
                  ori          s1, s9, -200
                  slli         a3, s9, 1
                  nop
                  sra          t0, tp, a7
                  ori          s3, ra, 2031
                  xor          s9, s7, zero
                  and          a5, tp, s4
                  ori          s2, s4, -212
                  slt          s10, t5, s9
                  sll          t2, t0, t3
                  srli         s9, t5, 18
                  sltu         s10, s9, s10
                  lui          a2, 285373
                  lui          a6, 211479
                  srl          a3, a5, s5
                  srai         s9, a0, 22
                  auipc        a4, 940088
                  sll          s3, s11, zero
                  addi         t5, s0, 787
                  xor          gp, a4, a2
                  add          t2, t3, a5
                  add          t0, s2, a7
                  andi         t2, s7, -1320
                  auipc        a3, 263167
                  ori          t5, a2, 1179
                  sll          t5, a5, t4
                  and          a5, s5, zero
                  lui          s6, 991293
                  andi         t3, a2, -2011
                  srl          s5, s8, a4
                  sltu         s1, tp, a0
                  srl          tp, t0, t3
                  lui          a3, 109529
                  xori         s4, a6, -40
                  srli         s11, a4, 3
                  slt          s11, s5, a7
                  slt          s10, s1, t1
                  srai         ra, a6, 9
                  slt          s11, t6, s0
                  sltu         s3, a1, t5
                  xori         s5, t4, -1396
                  sltiu        s7, tp, 766
                  addi         gp, a0, 349
                  slli         s10, a2, 21
                  sltu         a5, s3, t5
                  slti         t2, a3, 1969
                  andi         s7, a6, -977
                  ori          s7, s3, 1332
                  xori         s4, t3, 719
                  sra          s1, zero, t1
                  sub          s4, t0, sp
                  sra          a5, s3, ra
                  slli         t3, s3, 16
                  srai         a3, s7, 1
                  sltiu        gp, s5, 1140
                  xori         tp, t1, -1240
                  addi         s3, s2, 1243
                  auipc        s1, 177269
                  or           a7, a7, t1
                  srai         sp, s10, 16
                  xori         sp, s10, -422
                  sltu         s3, a2, t6
                  sltiu        a2, a0, -808
                  add          s6, s6, a1
                  or           t0, a7, s11
                  xor          s3, t4, ra
                  slt          zero, s11, s7
                  sltu         a6, t6, a3
                  and          sp, a6, s7
                  andi         t5, s3, -1407
                  slti         s10, gp, 571
                  srai         a4, tp, 10
                  ori          t4, s7, 88
                  sub          gp, s5, a5
                  nop
                  andi         t5, s0, 216
                  addi         s9, t3, 793
                  slt          s5, t0, s5
                  addi         s5, s10, -721
                  add          s0, s4, a7
                  sll          s3, s4, ra
                  ori          a3, s9, 217
                  sltiu        t1, s4, 831
                  sltu         t0, t5, s4
                  add          a3, zero, a3
                  nop
                  lui          a3, 184476
                  xori         s7, a4, -1345
                  xori         sp, t6, 1303
                  xor          s9, a3, a3
                  srli         a2, a0, 29
                  sub          s7, a0, zero
                  xori         tp, a0, 1964
                  xori         s0, zero, -1615
                  sra          a4, tp, s8
                  srai         sp, s7, 13
                  ori          s1, a0, -210
                  or           s10, a7, s2
                  srl          t1, s10, t1
                  slti         s2, s0, 647
                  addi         s2, s5, -1299
                  slti         a4, a1, 2000
                  sltu         s4, s5, tp
                  sub          s5, a3, s5
                  or           s6, t1, a3
                  slli         s5, a3, 0
                  or           a4, t4, a5
                  lui          s0, 905719
                  slt          t4, s2, a4
                  srli         a7, zero, 17
                  andi         t3, tp, 1975
                  slli         ra, s2, 18
                  sltu         s7, t5, s10
                  or           a2, a0, s1
                  srl          t5, t1, a7
                  srl          s11, s4, t2
                  lui          s7, 62104
                  slli         tp, t5, 3
                  slli         t5, s4, 31
                  srai         s4, t6, 6
                  add          a3, s11, s10
                  andi         a5, ra, -1537
                  slti         ra, sp, 606
                  srli         s6, t0, 9
                  andi         gp, s4, 1995
                  andi         t0, t1, 418
                  sra          a3, s8, gp
                  sra          s0, s2, ra
                  xori         ra, s0, 379
                  sltiu        s4, s9, -335
                  xor          t4, s8, a3
                  srai         s10, t0, 31
                  sra          a2, t6, a7
                  addi         a7, t0, 1865
                  or           a5, t2, gp
                  sltiu        a4, t6, 1160
                  sll          t1, t3, s2
                  slli         t3, a0, 26
                  ori          s7, s4, -939
                  srl          t4, tp, a5
                  or           s11, t5, a1
                  ori          s11, zero, 1263
                  srli         s11, s7, 25
                  nop
                  sltiu        a5, s0, -245
                  srli         s5, a5, 28
                  sltiu        a7, a2, -1092
                  sra          s7, s7, tp
                  xori         t1, a0, -1686
                  sll          t4, a3, s5
                  srai         t1, s0, 31
                  sub          s11, s5, a2
                  xori         a5, s2, 1690
                  auipc        s5, 635669
                  sub          sp, t3, t2
                  srli         zero, s10, 13
                  andi         a2, t3, 632
                  or           s3, s11, s11
                  xori         a4, s1, -1194
                  xor          sp, t6, t4
                  srl          s10, a5, t1
                  addi         t3, s8, 1548
                  and          s9, s5, sp
                  add          s6, a1, a5
                  sra          s1, a3, s8
                  sll          a6, a6, s0
                  addi         ra, s1, -1191
                  add          s10, zero, s4
                  andi         s6, a1, -1916
                  ori          s6, s1, -1783
                  and          s0, a0, s10
                  srai         s9, s8, 13
                  slti         t3, s3, -1806
                  ori          s5, s11, -1459
                  xor          a2, s7, s0
                  sltu         a6, s6, s9
                  slt          t6, tp, a7
                  srai         s5, gp, 21
                  slt          t5, t0, t4
                  andi         s0, t4, -1726
                  sub          a5, a7, s9
                  xor          s10, s3, t3
                  xori         s0, t6, 1052
                  srl          t6, ra, t4
                  addi         s1, gp, 570
                  lui          s4, 479593
                  addi         a4, s3, -664
                  auipc        t4, 207234
                  srl          t3, s0, t6
                  slt          s1, t3, s7
                  sll          t3, ra, a0
                  srl          s7, s3, a0
                  auipc        s7, 574807
                  add          t3, a7, s5
                  andi         s7, t3, -1898
                  andi         sp, s10, -405
                  add          s11, a5, t0
                  auipc        tp, 262885
                  sll          t1, s6, t5
                  andi         s2, t2, -1130
                  sub          sp, s11, tp
                  sra          s0, s4, tp
                  srai         a7, t2, 25
                  add          gp, s4, ra
                  slt          ra, t0, a7
                  and          t1, t3, t4
                  srai         s5, t3, 2
                  lui          t5, 170621
                  slli         sp, s3, 3
                  sra          s11, s0, t2
                  slli         s11, t5, 16
                  slli         s7, s3, 4
                  xori         s6, s0, 1288
                  xor          s5, s6, a2
                  auipc        t4, 344209
                  sra          a6, a2, t0
                  andi         a3, s9, -1516
                  add          sp, s2, a2
                  lui          s6, 300846
                  sra          s10, s5, a3
                  xor          s9, a6, s6
                  sll          sp, a3, s2
                  xori         t0, s6, -127
                  addi         zero, t4, -831
                  andi         a4, a7, -48
                  srl          ra, t5, s9
                  slli         s11, s11, 6
                  andi         s9, a1, -2040
                  lui          s11, 608951
                  auipc        t0, 739499
                  sll          t0, s3, a5
                  add          a5, sp, s11
                  sub          s1, t3, s4
                  sltiu        gp, t6, 1519
                  xori         s9, a3, 317
                  srli         zero, t6, 22
                  xori         s3, t5, -272
                  or           s6, a1, s5
                  sra          t1, t3, a2
                  sra          t3, t6, s5
                  lui          t6, 603469
                  slli         tp, gp, 10
                  nop
                  slli         s5, ra, 14
                  xori         zero, t0, 1204
                  sub          a3, sp, zero
                  lui          a7, 64867
                  sltiu        sp, s6, -418
                  or           t0, s4, s8
                  auipc        a6, 437106
                  srli         t2, a0, 5
                  sltiu        zero, s5, 421
                  auipc        a6, 662548
                  slli         s9, t5, 27
                  andi         t1, ra, 703
                  andi         s0, gp, -139
                  srli         a5, zero, 8
                  sltiu        s3, ra, -1801
                  addi         s3, s3, -1006
                  add          s9, tp, a6
                  nop
                  and          t4, tp, a3
                  add          s9, a5, ra
                  sltu         gp, t3, s9
                  srli         s0, t1, 22
                  srai         t4, ra, 25
                  addi         gp, a7, -184
                  xor          t3, s11, t0
                  sll          a5, t2, ra
                  xor          ra, a1, ra
                  addi         s2, s6, 1550
                  sub          s5, t4, a6
                  and          s9, t5, ra
                  and          a7, s11, t6
                  sub          s6, t5, tp
                  add          s6, t3, s0
                  xor          t6, s7, t1
                  add          t5, ra, tp
                  sll          tp, s9, ra
                  and          t6, a4, tp
                  xori         s4, t4, -1687
                  sltu         ra, s9, t1
                  or           a2, a7, t2
                  slt          s10, t1, tp
                  srai         t4, a1, 13
                  sltiu        t0, a0, 1559
                  or           t1, s0, t2
                  lui          a2, 764498
                  addi         s2, zero, 486
                  andi         ra, sp, -546
                  slti         s2, a0, -1406
                  srai         s9, a0, 2
                  srai         s11, a6, 30
                  nop
                  sltu         s9, t2, tp
                  slti         s7, s6, 816
                  sra          s6, t1, a0
                  slti         s0, a2, -513
                  sltiu        s6, s6, 410
                  nop
                  and          t1, s8, s7
                  andi         tp, s3, 1216
                  lui          t6, 189997
                  sub          s0, t6, a1
                  andi         s6, a4, 1711
                  sltu         s9, s7, t0
                  ori          a7, s11, -34
                  sra          s2, a7, s7
                  addi         t1, tp, 1731
                  auipc        t5, 918686
                  ori          s6, zero, 420
                  slli         gp, sp, 5
                  andi         t1, ra, -1163
                  or           s9, s8, a7
                  add          s6, gp, t2
                  xori         t4, t6, -1832
                  slti         s7, gp, -628
                  sltiu        s5, t6, 2045
                  xori         s11, t2, 13
                  xori         a4, s1, -156
                  xori         t5, s2, -1385
                  andi         t4, t0, -267
                  srl          a5, a1, a2
                  slt          a3, s9, a1
                  add          s5, a5, gp
                  xor          s6, sp, a5
                  or           gp, s11, s3
                  slli         s0, s9, 27
                  add          s2, a4, t5
                  xori         a7, t1, -1713
                  andi         a2, s7, 1542
                  addi         a6, s2, -1905
                  sub          s6, s9, s0
                  sra          s1, a7, s3
                  srl          sp, tp, s5
                  xori         t1, ra, 1628
                  srai         a2, tp, 0
                  slt          s9, t6, a5
                  lui          s3, 367245
                  sub          s6, a5, a4
                  sra          ra, t3, s11
                  sll          s6, a4, t0
                  lui          s9, 221602
                  slti         t4, t4, 302
                  sltu         s5, s3, t4
                  xor          sp, t2, s1
                  ori          t6, s10, 1119
                  or           s5, a7, zero
                  sll          ra, a0, s0
                  slti         s11, a6, -827
                  sra          a7, a4, t4
                  addi         a2, t1, 866
                  xori         s5, a1, -955
                  slli         t4, a7, 16
                  sltu         a4, sp, s11
                  srl          s4, a2, zero
                  srli         tp, t5, 31
                  xori         s9, s11, -1831
                  sub          a4, s9, s7
                  slti         s6, a7, -472
                  or           s5, s6, t0
                  sll          s10, a3, t2
                  auipc        s9, 120434
                  ori          a3, s10, 277
                  sltu         s11, a1, s0
                  srli         s10, t3, 2
                  or           t1, t1, gp
                  sltu         a3, s2, t1
                  auipc        t5, 699856
                  srli         s1, s1, 22
                  andi         t2, t0, 1484
                  sra          t4, sp, s0
                  auipc        t3, 422323
                  srli         t5, s5, 20
                  xor          s9, t5, sp
                  srli         a6, tp, 12
                  srli         s0, a3, 22
                  sll          ra, tp, s9
                  or           t4, s11, a1
                  slt          s3, a6, zero
                  add          t0, t1, t5
                  auipc        s6, 510133
                  auipc        s9, 102274
                  or           s6, s3, t2
                  addi         s0, t0, 989
                  sltiu        s9, a0, 1272
                  sra          sp, a3, s1
                  addi         t3, a3, 1586
                  slt          s4, gp, t3
                  or           t1, a4, a2
                  slt          a7, s5, s6
                  sltiu        t3, sp, 698
                  andi         a7, t4, 577
                  srli         gp, t5, 9
                  and          a4, a4, a4
                  auipc        sp, 773502
                  and          ra, t3, sp
                  sll          s6, a2, a7
                  slt          t3, a2, s3
                  or           s4, s5, s11
                  xor          a4, a3, s0
                  or           t4, t3, t4
                  lui          s3, 305603
                  slti         s3, t4, 1313
                  sltu         sp, gp, a5
                  xori         s0, t4, -383
                  auipc        s3, 593362
                  and          t6, a5, a7
                  srai         s10, a5, 25
                  srai         s9, zero, 24
                  xori         t6, s9, -1400
                  srl          a7, s11, s1
                  slti         a7, s1, -769
                  andi         s6, s8, -1357
                  slt          zero, t2, a5
                  lui          t0, 261427
                  srai         a5, tp, 31
                  lui          t6, 302374
                  sltiu        s5, t4, 942
                  slli         s0, s5, 28
                  sra          s2, a2, s0
                  slli         s0, a6, 11
                  and          t3, zero, s2
                  srl          tp, t3, a5
                  add          s5, ra, s4
                  sra          a5, ra, s7
                  sll          s10, t0, t4
                  sll          s10, t0, a5
                  sra          s3, s2, a3
                  nop
                  sra          t3, s2, ra
                  slti         s6, s1, -1783
                  nop
                  lui          s2, 368807
                  or           tp, a0, t3
                  ori          s5, a4, -2006
                  and          s11, s4, s1
                  sra          s1, s1, a1
                  xori         t5, a4, 433
                  add          gp, s11, t2
                  xor          a5, t1, a2
                  sltu         s5, t0, t4
                  slt          s4, s6, t5
                  sra          s10, t5, s8
                  addi         sp, a4, -1208
                  slti         s0, a6, 1332
                  addi         s9, a7, -1872
                  xor          zero, a2, sp
                  and          t2, t2, a7
                  addi         t3, a4, -920
                  auipc        s11, 811403
                  slti         t3, a6, -1480
                  sub          s6, s8, t3
                  sub          gp, s9, t5
                  andi         sp, t0, -1290
                  srl          s0, s3, a1
                  ori          a5, sp, -518
                  srli         gp, s3, 28
                  xori         a7, zero, 23
                  auipc        s10, 495106
                  xori         t3, s11, 31
                  slti         s3, sp, -529
                  nop
                  slli         a4, a6, 10
                  srai         s1, s4, 2
                  slli         t5, s9, 30
                  sltu         s0, tp, t4
                  sltu         t6, s6, a3
                  ori          s2, t1, 1677
                  srli         s3, a3, 10
                  andi         zero, a3, -349
                  slti         t6, s2, 509
                  srli         a7, t5, 21
                  xori         t4, gp, 878
                  slt          s10, s1, a2
                  add          a7, gp, s7
                  slti         t5, t5, -1763
                  xor          t4, a0, a3
                  nop
                  addi         t3, s9, -373
                  ori          s11, s3, 847
                  srl          t0, zero, s7
                  and          s9, s5, gp
                  nop
                  add          s5, s9, s8
                  lui          s11, 547019
                  slli         tp, a0, 21
                  andi         tp, s1, -581
                  nop
                  addi         s9, a6, -1432
                  add          t4, tp, s1
                  and          a4, a1, s0
                  xori         s6, a0, 653
                  add          a6, t1, t6
                  srli         sp, a3, 30
                  slt          a4, s10, a4
                  slt          t4, t3, s10
                  lui          s1, 260747
                  and          t6, tp, a0
                  xori         gp, s0, 143
                  xor          s2, s3, t6
                  sll          a7, a6, ra
                  sltiu        s4, s2, -251
                  sll          t3, t1, a4
                  slt          s0, a3, a0
                  lui          sp, 992035
                  and          s11, a4, a2
                  xori         t3, a7, -1506
                  slti         gp, s11, 1183
                  xor          a7, s3, a3
                  ori          gp, s10, 1484
                  or           a5, s5, a6
                  and          s6, sp, s1
                  slti         a2, s4, -1677
                  slli         ra, s9, 12
                  slli         a5, s7, 11
                  sra          s9, s5, a5
                  srli         t1, t0, 20
                  lui          s9, 207782
                  xori         s2, s5, -941
                  slt          t3, t2, s11
                  ori          t3, a5, -1440
                  lui          s2, 679549
                  slt          ra, gp, a6
                  srli         t2, t6, 31
                  sub          s6, a1, a3
                  ori          a5, t3, -644
                  srli         a7, zero, 0
                  sub          t3, s2, a1
                  auipc        s5, 147002
                  ori          gp, gp, 1148
                  srli         s0, t0, 23
                  nop
                  slti         gp, a0, -1037
                  lui          s6, 788110
                  slt          a7, a7, s10
                  andi         gp, sp, -687
                  slli         s0, a7, 2
                  slti         t5, a4, -1918
                  lui          s5, 271350
                  xor          s10, sp, a7
                  srli         t5, s2, 24
                  addi         s2, a1, -605
                  sltiu        sp, a1, 522
                  xori         s5, s10, 639
                  sra          s10, t3, sp
                  ori          s10, t3, 2022
                  auipc        tp, 11051
                  sra          a6, s6, s9
                  add          a2, s8, s1
                  sltiu        s5, s8, -1399
                  sub          s7, sp, s0
                  srai         s7, a2, 14
                  nop
                  slt          gp, a2, s0
                  slti         gp, t2, -383
                  ori          t0, s5, -1872
                  slti         a5, a7, 1101
                  auipc        s5, 869360
                  slti         s1, a7, 349
                  sra          t6, a5, s11
                  sub          a2, s5, a3
                  sub          s9, gp, gp
                  sra          a4, t5, t1
                  sltiu        s7, s6, 697
                  and          t0, s11, s10
                  slli         a7, s11, 16
                  slli         s3, s9, 7
                  slli         s5, a0, 7
                  srli         a3, a3, 31
                  or           t3, a0, s5
                  xor          t5, t3, s6
                  andi         a6, a2, -419
                  slti         s6, s1, -516
                  slt          s6, a3, a1
                  slti         ra, s7, 1563
                  srl          a6, t1, a4
                  nop
                  xor          a7, t4, s2
                  nop
                  srl          t4, s3, s3
                  sub          t6, a1, t2
                  sltu         t6, s6, a3
                  srl          s5, s4, t4
                  sltu         s0, s5, s6
                  sub          s11, t2, t0
                  sra          s0, s8, t4
                  sra          t0, t2, a4
                  add          a7, s2, s1
                  srli         t1, t2, 20
                  and          a3, s0, a4
                  addi         a7, t3, -1382
                  slti         t6, t5, 1491
                  sltu         t6, t0, a3
                  srl          s11, a2, a5
                  srli         a2, s1, 19
                  slti         s9, ra, 964
                  and          a6, s9, a0
                  srli         s2, s4, 28
                  xor          t4, gp, t3
                  add          tp, a2, zero
                  sra          gp, t6, sp
                  srl          s11, t3, a2
                  nop
                  andi         s1, t4, 1373
                  xor          a4, t3, a2
                  or           zero, s8, s2
                  ori          s7, t4, 632
                  srli         s11, tp, 12
                  andi         a2, a2, -635
                  sll          a4, a1, a5
                  and          a5, s2, ra
                  slli         s1, s9, 24
                  auipc        s9, 396279
                  sltiu        ra, t3, -1261
                  slti         t6, sp, 1494
                  slt          s0, a2, s2
                  lui          gp, 86539
                  lui          a6, 373912
                  add          s3, s4, t4
                  or           s9, t2, a2
                  sub          tp, s10, t3
                  slt          s3, t6, s0
                  slti         sp, s2, -290
                  and          t1, s8, zero
                  srli         ra, s0, 7
                  sll          s4, s6, a3
                  nop
                  and          t1, a6, a6
                  slt          s4, ra, s5
                  lui          gp, 77340
                  ori          s9, s1, 905
                  slti         s10, a6, -1870
                  sltiu        a4, gp, -662
                  srai         ra, tp, 4
                  srai         a5, s1, 10
                  sub          s4, t5, s4
                  srai         s5, ra, 10
                  and          a7, ra, a6
                  sltiu        t5, s2, -720
                  nop
                  ori          a3, ra, 1592
                  add          t4, t6, t2
                  nop
                  slli         s7, a6, 17
                  sub          sp, s7, a4
                  ori          t1, s2, 974
                  srli         gp, a3, 25
                  sltiu        s9, a4, 1604
                  lui          t2, 527697
                  auipc        zero, 991255
                  lui          t6, 44418
                  add          t0, tp, s5
                  srl          t3, s3, s4
                  srl          s2, t6, a7
                  sll          t4, t4, s2
                  slti         tp, t4, -536
                  slli         a3, s8, 13
                  nop
                  xor          a7, a1, s2
                  sub          t5, a6, t4
                  xori         tp, a0, -163
                  xori         sp, s8, -254
                  andi         ra, a2, 351
                  xor          tp, a6, tp
                  and          s11, a2, a6
                  ori          t4, s4, -123
                  nop
                  andi         t5, s8, -1785
                  srl          s10, a5, s6
                  sub          gp, ra, a0
                  sra          s6, t1, a1
                  slli         s10, s9, 12
                  addi         ra, a0, -1521
                  or           s9, s6, t4
                  srli         t5, s11, 14
                  or           a7, t3, a0
                  xori         a5, s8, 295
                  lui          gp, 139898
                  andi         a6, t6, -930
                  addi         t2, s11, -419
                  sra          zero, t4, s11
                  and          s10, a7, s0
                  add          t5, a7, t6
                  srl          a5, t3, a2
                  slli         a7, s10, 6
                  add          t1, t1, s10
                  srai         a2, s2, 5
                  andi         t2, a0, -440
                  sltu         a5, s10, a4
                  srli         t5, s10, 16
                  sltiu        a4, t4, 586
                  and          s6, t5, zero
                  sll          a7, t5, t1
                  xori         s1, t6, 1039
                  srl          s7, t4, ra
                  srai         s2, t2, 12
                  srl          s2, s4, tp
                  sltiu        t3, s9, -1325
                  srl          t4, s10, s8
                  ori          t2, s6, 1855
                  slt          s6, s2, a6
                  xori         t0, a0, -1719
                  lui          s10, 402195
                  srli         a2, t6, 23
                  slt          t6, s0, s1
                  slli         s10, a5, 16
                  srli         s5, s5, 19
                  sll          s1, s0, s3
                  sub          a3, a7, a4
                  and          t3, t6, a1
                  slt          s5, a0, s10
                  nop
                  add          t1, s11, gp
                  srl          s2, s1, s7
                  slti         s0, t2, -757
                  xori         s10, a5, -395
                  add          a4, t1, t1
                  sltiu        a4, t0, -51
                  addi         a4, t1, 335
                  slli         s10, tp, 23
                  srl          s7, t6, s5
                  sll          gp, s4, a3
                  add          t3, sp, a1
                  slli         s0, s7, 21
                  xori         t1, s7, -640
                  srli         s1, zero, 5
                  slt          s0, a6, s6
                  xori         sp, s5, -1813
                  sltiu        s1, s1, 221
                  addi         s1, a3, -1536
                  add          t0, s7, ra
                  add          s10, a1, zero
                  sltu         s11, s2, a1
                  sra          ra, a3, s10
                  sra          gp, ra, t6
                  sll          a6, tp, s1
                  srl          a7, t0, zero
                  or           t2, tp, t2
                  srli         ra, s9, 21
                  addi         s5, s4, 1969
                  add          s10, a1, s7
                  srai         a6, a0, 26
                  sub          s0, a0, ra
                  slti         s9, tp, 482
                  xori         t4, zero, -29
                  add          t3, s6, s0
                  addi         a3, a1, -1802
                  slti         s3, s4, -469
                  or           s3, a6, t2
                  srl          t2, a3, s4
                  add          tp, sp, s2
                  xor          tp, t3, t2
                  slti         a7, a2, -1102
                  sltu         a4, t3, a0
                  xor          s3, sp, s3
                  and          s6, a6, t1
                  and          s9, zero, a0
                  xori         s10, s3, -1825
                  sltiu        a5, s0, 238
                  sra          a3, zero, t0
                  srai         s2, s1, 1
                  or           ra, s6, s9
                  sltu         tp, s7, t1
                  sll          s7, t2, s2
                  ori          s1, t3, -92
                  srl          a4, t4, s1
                  addi         s11, sp, -427
                  slti         s6, a7, -415
                  sll          t4, a3, a4
                  srai         s0, t1, 15
                  sltiu        sp, sp, -324
                  sltiu        s6, t6, 2018
                  and          s0, s6, t0
                  sltu         a3, s7, a0
                  sra          a5, s0, sp
                  nop
                  sltiu        a5, t6, -1763
                  auipc        s10, 649052
                  addi         s6, zero, 1058
                  sll          t1, tp, a3
                  sltiu        gp, s11, -1119
                  nop
                  xor          gp, s7, t1
                  xori         t1, zero, -1069
                  srai         s11, a2, 4
                  auipc        a5, 628140
                  addi         a7, s7, -740
                  slt          tp, s0, s8
                  slli         a7, s5, 23
                  andi         t6, t0, 1971
                  sub          t3, ra, s10
                  and          s6, s8, a2
                  ori          s2, s4, -243
                  or           a6, a7, ra
                  srl          s7, s8, a5
                  nop
                  srli         t0, t5, 17
                  sub          a6, s9, t5
                  xor          s5, a4, tp
                  and          a5, a0, s5
                  ori          s1, s2, 1605
                  sltu         tp, gp, ra
                  add          s11, t1, s8
                  add          a2, a7, a4
                  srai         t4, a1, 12
                  srai         s1, s1, 20
                  andi         a7, t1, -1938
                  sra          t6, t1, t3
                  sll          a4, s6, s7
                  srli         s9, s6, 30
                  or           zero, a4, a3
                  add          s0, s6, t6
                  xor          a5, a0, t3
                  addi         t1, tp, 748
                  add          t2, s6, t3
                  sub          zero, gp, t1
                  sll          t3, a3, t0
                  ori          a2, t1, -15
                  srli         ra, s4, 2
                  ori          t0, a2, 107
                  or           s0, s5, s1
                  or           s11, s0, gp
                  sub          s0, a6, a5
                  sub          t3, ra, ra
                  xori         s1, t3, 800
                  sra          s7, a3, zero
                  srl          s7, s2, s4
                  srli         gp, s2, 11
                  sll          a6, s7, s6
                  xori         t1, t3, 1190
                  sll          s7, s11, s6
                  andi         s11, a1, 1815
                  xori         s0, s8, -179
                  sltu         s9, a0, a3
                  xori         t6, sp, 1564
                  srli         s3, s6, 25
                  lui          gp, 293494
                  srl          s6, s7, sp
                  addi         t5, s1, 623
                  sra          s7, s0, a1
                  xori         ra, a2, 543
                  sltiu        t0, tp, -941
                  srli         gp, s9, 28
                  lui          t6, 900837
                  xori         s11, t0, -614
                  andi         s7, t2, -1335
                  xor          gp, t3, s6
                  add          a2, a0, a1
                  srli         t3, t1, 31
                  srli         t4, s10, 26
                  xori         s0, s7, 728
                  lui          ra, 988313
                  or           a5, s5, a1
                  srl          s7, a1, a6
                  sltu         a5, a7, t2
                  slli         t5, gp, 8
                  andi         a3, s4, -341
                  sub          a6, s7, t5
                  nop
                  srai         t0, s8, 5
                  sub          a7, a2, tp
                  auipc        t1, 417315
                  xori         t4, a5, 584
                  sll          t3, a7, ra
                  sltiu        t1, s0, -771
                  sra          s9, tp, s7
                  sub          tp, s9, s7
                  srl          s9, s8, t4
                  add          t1, s7, gp
                  and          s5, t1, s10
                  add          a3, s1, s4
                  auipc        s11, 183646
                  and          t3, t3, a4
                  sra          gp, t6, t0
                  xori         t5, a2, -1136
                  lui          s11, 940482
                  xor          gp, t2, s2
                  or           a5, s11, zero
                  add          a5, s6, ra
                  auipc        s1, 277438
                  slli         gp, s5, 2
                  addi         sp, s4, 1716
                  or           tp, t2, s1
                  or           a4, a2, t4
                  slt          a7, zero, tp
                  lui          a4, 641126
                  nop
                  xor          t6, t4, s5
                  srai         s4, a1, 5
                  ori          s0, s6, -640
                  add          s11, s11, t1
                  slti         s10, s10, 460
                  lui          t1, 400588
                  sll          t3, a2, s8
                  sub          s5, s0, t3
                  slli         t3, s9, 25
                  auipc        s5, 218764
                  or           s5, sp, zero
                  lui          t2, 2533
                  sub          s10, t3, s10
                  and          tp, t0, s8
                  addi         s10, t4, -934
                  srl          s9, a7, a0
                  sltiu        s1, t2, -1964
                  slli         s11, a3, 14
                  and          t1, s7, t0
                  slt          a5, a1, sp
                  xor          a4, s1, ra
                  srli         a6, a0, 7
                  add          s11, a0, t6
                  sub          sp, t1, sp
                  auipc        s11, 71435
                  srai         a4, s3, 15
                  sll          t5, t6, s5
                  andi         s5, s1, 225
                  srli         a7, tp, 8
                  sub          gp, s2, s0
                  sra          a4, s10, s1
                  sltiu        sp, s3, -508
                  sub          s0, s7, a4
                  ori          tp, ra, 279
                  srl          s1, a4, gp
                  or           s1, a3, a2
                  srl          s11, s4, s8
                  xor          s9, s9, gp
                  or           t0, zero, a2
                  add          t3, sp, tp
                  srai         s11, a1, 10
                  slt          s6, zero, s11
                  slli         t1, t4, 20
                  addi         t1, t0, -1237
                  slti         t4, s7, -1774
                  sltu         s2, s1, t5
                  add          a5, t0, t6
                  nop
                  andi         s10, s2, 467
                  sltiu        t4, s0, -1845
                  lui          t1, 402886
                  andi         t0, a6, 487
                  andi         s9, zero, -176
                  auipc        a4, 625190
                  slt          a7, s4, tp
                  nop
                  add          s1, a0, s1
                  add          zero, t2, a7
                  add          s10, t6, s1
                  addi         s4, a2, 1211
                  nop
                  and          s11, s4, s5
                  sll          t5, s7, a2
                  lui          s11, 979411
                  andi         t2, s2, -456
                  lui          s1, 688705
                  and          s7, t1, s4
                  sltu         s3, s9, s4
                  slt          s3, a0, s8
                  nop
                  lui          a4, 929506
                  and          a7, s2, t4
                  sra          s11, sp, s8
                  auipc        t3, 1029719
                  sra          t3, s6, a3
                  sll          t3, a0, s9
                  xori         a5, gp, 1549
                  or           s6, a5, sp
                  srl          gp, ra, ra
                  nop
                  srl          t5, gp, a5
                  xori         zero, sp, -1389
                  xor          tp, t0, t2
                  or           a2, a3, t5
                  slli         t0, s11, 15
                  slt          t2, a0, s7
                  slti         zero, s4, -918
                  srai         zero, t4, 20
                  and          a5, s1, s9
                  srli         zero, s9, 16
                  srai         a7, t0, 30
                  sll          a5, s8, t2
                  and          t2, a4, a1
                  xori         t2, s3, -65
                  srli         a6, a1, 12
                  auipc        a2, 13815
                  sra          a5, s0, a1
                  or           a4, t4, s5
                  lui          a3, 957597
                  srai         t6, s2, 7
                  xori         s7, s0, -876
                  sra          s6, s7, t6
                  auipc        s4, 142829
                  or           a4, a2, a7
                  auipc        gp, 207593
                  sub          t2, s8, t5
                  add          ra, sp, zero
                  srai         s7, sp, 21
                  sll          a7, s7, a1
                  srai         s4, ra, 12
                  sltu         sp, a7, s6
                  xor          s4, s3, t6
                  sub          a5, s11, s7
                  andi         t1, a1, -1569
                  srl          sp, tp, s9
                  xor          ra, a7, s2
                  sub          s0, s8, s11
                  slt          gp, a1, a1
                  lui          sp, 74475
                  xori         s9, sp, 704
                  xori         ra, a4, -945
                  slli         s7, s11, 6
                  ori          s11, s11, -1728
                  sra          t4, s4, t2
                  sltiu        tp, t3, 1624
                  xor          s4, t1, a6
                  sltu         ra, zero, gp
                  sltiu        s9, s7, -1434
                  or           t0, gp, a6
                  srai         a6, s11, 26
                  ori          a6, s9, 1486
                  sltiu        tp, t2, 1987
                  addi         a6, s6, 2014
                  srai         a6, s6, 21
                  sltu         s5, t3, s0
                  addi         s9, a0, -1839
                  auipc        s3, 648193
                  sll          s10, s7, s0
                  srli         t1, a4, 22
                  slti         s10, a3, 1997
                  sub          a3, s2, s5
                  auipc        t2, 522737
                  sltu         a6, a7, t5
                  slti         a4, s5, 1693
                  slt          a5, a3, a4
                  auipc        a6, 710354
                  srai         s0, a0, 7
                  sltiu        tp, a7, -1005
                  sub          zero, t6, t2
                  lui          sp, 678151
                  andi         ra, t5, -706
                  srl          s7, s11, t4
                  slli         a5, t6, 23
                  add          t2, t0, t4
                  srl          t6, sp, s4
                  srl          t0, s8, a1
                  sltu         sp, t2, a2
                  sra          a2, t1, t4
                  and          t3, a3, a2
                  lui          s1, 440408
                  srl          a6, t0, t1
                  slli         s1, a3, 20
                  slt          s4, s2, s1
                  nop
                  ori          a3, s1, -792
                  sll          t6, s2, t3
                  xori         ra, a0, -916
                  andi         t5, a6, -1151
                  srl          s1, a5, a5
                  srai         s3, s0, 21
                  sub          t3, s10, a2
                  sll          s1, s1, gp
                  andi         t4, s9, 576
                  sltiu        s11, s5, -1945
                  lui          tp, 266131
                  sra          s5, ra, t4
                  xor          s0, s8, tp
                  srai         a5, gp, 0
                  slti         s3, s9, -1319
                  srli         s10, a6, 31
                  auipc        gp, 817645
                  xori         sp, s9, -313
                  slt          ra, s10, s1
                  sll          s5, s1, s2
                  auipc        a2, 78928
                  sra          gp, t0, s4
                  andi         t0, a0, 1718
                  sub          a5, a3, zero
                  ori          t4, a1, -1609
                  ori          s6, t0, 555
                  lui          t5, 65236
                  sll          sp, t0, sp
                  sll          t4, zero, t2
                  nop
                  nop
                  slt          tp, a6, s7
                  srai         s9, a1, 29
                  srai         s5, t1, 26
                  slli         t5, s8, 26
                  lui          s11, 230417
                  srli         a4, sp, 7
                  sll          s6, t1, s9
                  xori         t5, t4, 1273
                  slt          s0, t6, t6
                  srl          s9, t4, s4
                  nop
                  sltiu        a4, a1, 392
                  addi         t1, ra, -1330
                  addi         ra, a0, 151
                  srai         a7, t4, 6
                  sll          s9, t1, a5
                  andi         tp, t2, 1813
                  srai         t6, t2, 7
                  srai         s9, s6, 3
                  auipc        s1, 374997
                  lui          s11, 153962
                  slt          s1, t5, t1
                  nop
                  sub          gp, t0, s8
                  or           a4, t3, s7
                  andi         s4, t3, 1221
                  addi         s0, t6, -1524
                  sra          s10, s2, a0
                  sub          s0, sp, s1
                  and          t3, s11, s10
                  sra          s1, s10, sp
                  sltiu        s4, s3, -1811
                  xori         a4, s0, 1485
                  ori          s0, t4, 112
                  addi         ra, s6, -1752
                  ori          t1, s2, 383
                  srli         s9, s0, 19
                  slt          s5, t4, t5
                  slli         gp, s0, 22
                  slt          tp, gp, s3
                  slli         t2, t1, 3
                  and          a6, a4, t1
                  srl          a6, a6, t1
                  and          s0, a1, tp
                  lui          a3, 13576
                  sll          t3, ra, t6
                  sltiu        t1, s0, 220
                  or           s9, t2, s0
                  and          a7, s4, a3
                  xor          t3, s6, gp
                  slli         t0, s10, 4
                  xor          s11, a3, s3
                  xori         tp, s5, -1474
                  srai         sp, s8, 11
                  sra          a6, s9, t4
                  sltiu        sp, tp, 1796
                  slti         s11, s9, -1356
                  sra          a4, t3, t1
                  auipc        s10, 85966
                  sra          a6, a7, t5
                  xori         s5, sp, -1880
                  slti         s2, t2, 1810
                  srl          s2, t6, a1
                  xor          a5, ra, a0
                  andi         a3, t6, -1453
                  xor          s6, a0, t3
                  srl          a5, s11, s1
                  sltu         tp, t4, a1
                  auipc        a6, 360009
                  sltu         s10, s6, s11
                  sub          a4, t0, t4
                  and          ra, t5, s4
                  ori          gp, s8, -1639
                  add          a5, a6, t5
                  srai         t3, zero, 3
                  and          sp, s11, t6
                  sll          a5, s6, tp
                  xor          t4, ra, a3
                  nop
                  or           tp, zero, s0
                  srli         a4, s1, 7
                  and          tp, t1, a3
                  srli         a4, t6, 13
                  srai         zero, s10, 0
                  ori          gp, s10, -1339
                  lui          ra, 88424
                  add          t2, t1, s8
                  xor          ra, a7, a5
                  nop
                  slti         t1, s7, -102
                  ori          s2, t3, -1261
                  sltu         t4, s10, sp
                  sra          s0, t3, s11
                  sub          s0, s6, a2
                  sltu         s9, sp, ra
                  slti         s0, t3, 953
                  and          s11, t1, ra
                  ori          sp, gp, -99
                  sub          s2, s11, tp
                  lui          t4, 139096
                  ori          s10, t6, -396
                  addi         a6, t1, -1051
                  srl          s5, s4, zero
                  sll          s11, s11, t3
                  and          t1, a2, a5
                  nop
                  andi         s5, gp, 411
                  or           s9, s5, a0
                  xor          t1, s3, zero
                  lui          gp, 641015
                  sub          gp, s9, a7
                  sra          zero, s0, s6
                  or           gp, ra, a7
                  and          s11, s3, t5
                  slti         s2, s4, -1407
                  srl          a2, s4, t1
                  sltu         t5, s7, t4
                  slt          s1, a1, t6
                  sltu         t1, a4, a7
                  sub          sp, t4, t3
                  sltiu        t4, a1, -495
                  srli         a2, t4, 24
                  sub          s1, tp, t5
                  slti         a2, t4, 1843
                  nop
                  sub          s2, a1, a3
                  nop
                  sra          s7, a5, a3
                  auipc        s0, 442412
                  sub          t4, s5, s8
                  slt          t1, s1, a6
                  srai         s1, s7, 19
                  slli         a3, a5, 27
                  addi         t5, a5, -1697
                  slt          a5, zero, gp
                  ori          a3, gp, 1086
                  slt          a4, s3, s11
                  andi         s7, t0, 1125
                  nop
                  addi         s4, t6, -551
                  slt          a3, t6, t4
                  or           a4, s6, t6
                  slti         sp, tp, -1708
                  ori          tp, t5, 908
                  and          a3, s2, s10
                  sltu         s9, t3, a5
                  ori          s7, s3, -548
                  sltu         t2, t4, s2
                  srli         a4, s0, 19
                  nop
                  sltiu        s7, a0, 1500
                  addi         s3, s11, -188
                  sltu         t3, ra, zero
                  slli         a6, t5, 2
                  addi         s5, t6, 2042
                  lui          t6, 1037595
                  slti         a7, s0, -298
                  srl          s4, t2, t6
                  addi         a4, s7, 1296
                  sll          s4, a6, t5
                  lui          s6, 1005594
                  sra          s7, s6, s6
                  sltiu        a2, sp, 1765
                  addi         a2, s4, 911
                  xor          sp, zero, t2
                  srl          s7, t1, s9
                  addi         t2, t4, -1458
                  add          zero, a7, t1
                  addi         a3, t5, 2005
                  and          t4, a5, a3
                  xori         zero, t0, -968
                  sra          s5, s10, s3
                  sll          s4, t6, t0
                  add          s3, t5, t6
                  srai         sp, a3, 4
                  auipc        a2, 454875
                  xori         t2, s9, 678
                  add          a4, a3, s4
                  addi         t3, s8, 1187
                  and          a4, a4, s10
                  sll          t3, a7, t1
                  andi         s4, s1, -325
                  srai         tp, a6, 27
                  lui          a6, 788856
                  slli         a4, s10, 10
                  srli         zero, t0, 30
                  srl          s10, t6, s0
                  andi         s7, a3, 1829
                  slli         s0, s2, 23
                  sub          t1, s9, s8
                  ori          s4, t5, 676
                  sltiu        s6, a2, 960
                  srai         a6, s11, 24
                  ori          s3, s4, -1978
                  nop
                  nop
                  xori         s7, s4, -916
                  sra          tp, s7, s11
                  sll          s7, a5, a7
                  xori         s11, s11, 1538
                  andi         a6, sp, 1716
                  srli         t1, t0, 23
                  sltu         sp, s6, s9
                  slt          a7, zero, a4
                  sll          s6, s8, ra
                  srl          s9, gp, t3
                  srl          s7, a6, t2
                  srai         s11, a4, 9
                  lui          s2, 25719
                  slli         a5, gp, 1
                  sltu         s2, sp, t6
                  ori          sp, a7, -755
                  addi         a6, s1, 1366
                  slt          s4, s10, a6
                  nop
                  and          t0, s9, s8
                  auipc        gp, 787526
                  xor          a3, s1, s3
                  sltiu        s10, t2, -1081
                  lui          s1, 1001312
                  srl          s10, sp, a0
                  and          s6, t4, s11
                  ori          gp, zero, -693
                  slt          a7, a7, s4
                  sltu         a3, s0, t2
                  srli         s6, s2, 25
                  xor          a5, s10, s5
                  sra          a4, gp, ra
                  sub          s10, s6, gp
                  slti         tp, a0, 1458
                  slli         s5, t4, 26
                  xor          a7, a6, tp
                  add          s5, a3, tp
                  srli         t0, a7, 4
                  srli         zero, t1, 30
                  slt          a2, t1, s11
                  sltu         a6, t5, s10
                  nop
                  andi         ra, a3, -1405
                  slti         ra, a4, 1264
                  ori          t5, s3, -1521
                  addi         a6, t6, -1151
                  or           s0, a5, a3
                  ori          a3, s11, 1495
                  or           sp, s5, t4
                  slt          s5, t6, s4
                  srli         a3, s8, 22
                  srli         t4, t6, 12
                  lui          t2, 243632
                  sltu         s1, s3, s9
                  ori          a7, a4, -1629
                  sra          s10, s6, a2
                  sltiu        s1, s7, -674
                  srai         a4, s1, 18
                  addi         s5, zero, 1721
                  srli         ra, s0, 11
                  andi         s5, a4, -1834
                  sltiu        a5, s3, 929
                  slli         t2, s0, 11
                  sltiu        a4, a4, 1836
                  srli         s4, s11, 22
                  add          s9, ra, ra
                  xori         s6, t6, -1968
                  srli         a2, gp, 9
                  auipc        ra, 673717
                  ori          t0, a6, -744
                  add          t6, s1, a7
                  andi         s1, a5, -1918
                  srli         a2, t3, 27
                  addi         t3, t4, 567
                  add          s9, a0, s2
                  nop
                  sltiu        t2, s3, 135
                  sltu         a6, sp, zero
                  slli         s1, s11, 6
                  nop
                  srli         sp, a3, 28
                  add          t1, s3, s4
                  ori          t4, tp, -883
                  slli         s10, sp, 17
                  sub          s0, t1, a3
                  slli         t4, a7, 0
                  slt          sp, a5, zero
                  or           s7, s6, s4
                  sltu         s2, t0, a2
                  sltiu        a2, a4, 1748
                  auipc        t4, 121361
                  srli         s2, a5, 7
                  xori         t6, a0, 956
                  sra          s10, s8, a4
                  and          t2, s10, s1
                  srli         s9, a4, 2
                  sltiu        ra, ra, 957
                  add          sp, a7, a3
                  add          a5, s5, a5
                  andi         s2, s4, -267
                  lui          t1, 911013
                  or           gp, s7, a1
                  sltu         tp, a3, t6
                  add          s1, s10, s4
                  lui          s6, 197160
                  auipc        s11, 850009
                  slt          s3, s4, a5
                  addi         a5, s2, 138
                  sltu         t2, a6, t5
                  slli         s4, s5, 0
                  xor          s10, a0, a5
                  add          s1, t1, s8
                  slli         a3, s9, 18
                  srli         a5, sp, 28
                  srli         s7, t0, 21
                  sll          s2, a3, ra
                  sub          a5, a3, a4
                  addi         s5, zero, -1506
                  nop
                  and          s11, zero, s3
                  andi         tp, ra, 955
                  srl          t3, s3, s9
                  add          gp, t0, a6
                  slli         s4, a3, 10
                  ori          a4, s9, -994
                  slli         s9, s4, 25
                  sll          tp, s11, ra
                  slti         a3, s0, -1798
                  lui          s1, 275802
                  add          ra, s1, s3
                  srl          s11, zero, s6
                  srai         a3, a2, 4
                  srl          s4, s7, a1
                  sltu         s3, t3, s9
                  andi         s0, a5, 146
                  add          s6, s1, a4
                  or           s4, ra, s9
                  add          a2, a3, s7
                  srai         ra, s11, 12
                  or           t1, a4, a6
                  sub          s11, t2, s4
                  ori          s10, s3, 1846
                  sub          s10, t1, s4
                  slt          a6, a7, t5
                  lui          a5, 490942
                  xor          t0, s10, s9
                  srl          s2, s10, a1
                  or           s3, sp, t2
                  srai         a4, s7, 16
                  slti         a3, a5, 1745
                  lui          t4, 844594
                  lui          s0, 341919
                  ori          t5, s7, -614
                  xor          ra, a4, a4
                  srai         s9, a5, 28
                  sll          a3, s5, a4
                  add          t4, s5, a2
                  slti         s4, zero, -1360
                  slti         a3, s8, -276
                  or           sp, a4, a1
                  xori         t3, s1, -1008
                  sltiu        t3, a6, -960
                  xori         t1, s1, 1153
                  and          t5, gp, s2
                  srai         t0, s9, 1
                  slt          a2, s2, s11
                  sltiu        a7, s11, -699
                  sltiu        t2, s1, 753
                  sltu         s6, s9, a4
                  auipc        t3, 670161
                  auipc        ra, 665499
                  sll          a2, s8, s7
                  sub          s5, t1, a7
                  xori         a2, s8, 897
                  and          t5, a4, t5
                  sltiu        t3, s0, 881
                  sll          t3, a6, a3
                  sll          s0, t5, s9
                  slt          gp, s5, a6
                  xor          s9, ra, s0
                  sra          s5, zero, s6
                  sub          s5, sp, t4
                  add          a3, a2, a3
                  srl          s7, s10, t2
                  xor          ra, s11, s7
                  xori         s1, s4, -1696
                  sra          a3, s7, gp
                  slti         t4, t3, -870
                  srl          a2, tp, s0
                  sra          s3, a3, s9
                  add          s4, s6, ra
                  andi         zero, s10, 1401
                  and          a2, s9, s6
                  nop
                  slli         a5, s3, 31
                  ori          a7, zero, 384
                  srl          a5, t4, s10
                  ori          t0, s5, -360
                  srai         s4, a3, 26
                  sltiu        t0, t2, -954
                  sltiu        t3, t5, 1468
                  sra          s7, a5, s11
                  xori         a7, s10, -883
                  add          ra, sp, gp
                  and          gp, s4, a3
                  nop
                  slti         a7, a5, 1631
                  and          gp, s4, s11
                  slli         s1, a3, 6
                  lui          ra, 523430
                  srli         t1, a3, 17
                  xori         t5, a5, 1744
                  or           sp, t4, s10
                  and          s9, zero, a5
                  auipc        t6, 993828
                  sra          a7, t5, a4
                  lui          a4, 560233
                  addi         s1, ra, -1648
                  srl          a3, s8, t4
                  xori         a6, a7, 1853
                  or           a6, a7, s1
                  xori         t2, s6, 1921
                  sll          t0, t1, s10
                  slt          s0, a6, s2
                  sltiu        a3, gp, 1344
                  sltiu        s6, s5, -760
                  sll          t3, s2, gp
                  lui          a6, 580898
                  and          t4, s6, s7
                  addi         s9, a0, 404
                  sll          a5, s10, t1
                  addi         a5, t5, -667
                  andi         t2, s8, -500
                  slti         s0, t1, 2032
                  srai         a6, tp, 24
                  auipc        gp, 799082
                  and          s2, s8, s5
                  sltiu        s10, s6, 1229
                  add          s11, s2, s7
                  addi         s0, gp, 214
                  sltu         s1, t2, t5
                  srli         s9, zero, 12
                  add          a3, s7, ra
                  xori         t2, s8, -504
                  and          s2, s7, s0
                  auipc        sp, 515017
                  ori          t2, a1, -509
                  srl          s10, s11, a7
                  slli         gp, s5, 5
                  nop
                  sltiu        t6, a4, 466
                  sll          a2, tp, s9
                  sub          s4, s7, a5
                  and          s9, sp, s11
                  srai         s7, s0, 31
                  auipc        s1, 347706
                  or           s0, s2, a4
                  xor          a2, t1, s10
                  nop
                  sll          s4, zero, sp
                  srl          s4, s0, tp
                  or           t0, sp, sp
                  slli         t4, s6, 3
                  addi         s7, s1, 1079
                  slt          s11, s2, gp
                  addi         s9, zero, -1180
                  sltiu        s4, a1, -463
                  sltu         a5, t3, a0
                  addi         t2, s3, -482
                  slt          a4, a0, s11
                  srl          t4, tp, gp
                  sltiu        s11, a4, 416
                  slli         s4, s3, 6
                  addi         s9, s3, 456
                  slti         s0, a7, 1556
                  xor          a6, s8, s4
                  xori         s0, s3, 1842
                  sra          s2, a2, tp
                  srl          t6, s0, t6
                  andi         zero, s9, -593
                  slt          s11, a2, a5
                  or           gp, ra, s11
                  andi         a7, ra, -898
                  add          t0, zero, s9
                  add          s2, zero, s5
                  sltiu        s6, s0, -63
                  slt          tp, t4, s1
                  srli         t5, a0, 5
                  srli         s5, s11, 2
                  and          t4, zero, tp
                  andi         ra, a7, 349
                  sll          s2, t6, gp
                  sltu         s10, ra, a4
                  xor          ra, s6, t2
                  slt          tp, t6, s1
                  andi         a7, a6, -288
                  xor          zero, a0, s9
                  and          s0, s11, s8
                  sll          zero, a1, s10
                  ori          t3, s10, -993
                  srl          s9, a7, a1
                  andi         zero, s8, 1133
                  xori         a2, tp, 1968
                  slt          a4, t4, s8
                  slli         a4, s4, 16
                  auipc        gp, 772269
                  sltu         zero, a2, s3
                  sub          t6, s10, s5
                  auipc        t6, 592210
                  or           s7, s9, a7
                  srai         t5, s9, 14
                  srl          t0, s4, a1
                  add          s0, t0, t3
                  auipc        a4, 390594
                  auipc        a4, 559860
                  sub          t3, s3, s2
                  lui          s3, 935293
                  sub          s10, s7, a1
                  srl          s0, s1, sp
                  xor          t0, a5, a3
                  lui          a4, 276075
                  slti         s5, ra, 1448
                  srai         s0, s8, 2
                  slli         t3, a5, 24
                  andi         s1, a2, 966
                  auipc        s0, 546161
                  auipc        tp, 391148
                  srli         tp, a6, 11
                  sra          s1, sp, t4
                  auipc        a3, 167161
                  sltiu        a6, a4, -1499
                  andi         s0, a2, 161
                  sub          s3, a6, a0
                  slt          t0, t6, a6
                  xori         gp, a2, -1168
                  andi         t3, a3, -1800
                  xor          s2, s9, s4
                  slt          s2, t3, s10
                  xor          s3, s6, s1
                  srl          s7, s11, t5
                  sub          a5, a5, a6
                  add          s9, s9, t1
                  and          s6, s5, s6
                  lui          tp, 185182
                  lui          t4, 199304
                  sra          t3, a1, sp
                  srl          a3, t4, zero
                  xori         t3, a6, -1591
                  srl          tp, gp, t0
                  slli         s11, a1, 4
                  slli         a2, s3, 3
                  lui          t2, 110703
                  slt          s0, t3, t2
                  or           t3, s5, t3
                  addi         t3, t6, 2037
                  srli         t2, a0, 22
                  slli         s9, a2, 7
                  sra          s10, a1, a1
                  slli         sp, a4, 19
                  sra          t5, a6, s8
                  sra          s0, ra, s2
                  sltu         s5, a7, t5
                  sra          t2, s9, s11
                  andi         s5, s8, 584
                  sltiu        t5, s1, -2035
                  auipc        a2, 943732
                  srai         a5, s0, 18
                  sub          s3, s9, a7
                  andi         s10, a3, 1793
                  auipc        t3, 435366
                  or           zero, s2, s3
                  and          t5, a2, a5
                  ori          t1, t4, -535
                  sll          s1, t3, t6
                  or           a6, a1, sp
                  add          s10, zero, t1
                  xori         s3, s2, 1545
                  slt          a2, s5, t5
                  sll          a6, t6, a4
                  srai         a6, s5, 25
                  srai         s11, t1, 7
                  sltiu        tp, a4, 1464
                  add          t5, tp, s8
                  lui          a4, 770455
                  sll          a3, a0, a0
                  add          s4, a4, s0
                  sltu         t6, t5, t6
                  lui          s10, 361243
                  sltiu        a4, s11, -1514
                  srai         a4, sp, 30
                  slti         a5, gp, -835
                  slti         s6, zero, -1803
                  or           s7, s1, a3
                  srai         t2, a6, 28
                  sll          s7, s11, t4
                  auipc        s4, 971126
                  sltu         s9, t1, s1
                  auipc        a3, 305525
                  andi         zero, s0, -2040
                  auipc        t6, 445455
                  auipc        s6, 907346
                  xor          t3, gp, t4
                  and          zero, t2, s3
                  sltiu        a2, a6, -1580
                  sra          zero, t4, s5
                  sll          a7, a6, s2
                  slti         ra, s8, -1628
                  slti         s9, t0, -1716
                  xor          t2, s6, a5
                  auipc        s10, 695747
                  addi         s11, t0, -420
                  xor          s7, t0, t3
                  add          a7, s6, t0
                  slli         a6, a3, 4
                  srli         t4, s10, 20
                  xori         ra, a0, -1713
                  sll          gp, t3, t1
                  or           a3, s6, a0
                  lui          s7, 215918
                  sub          a7, tp, ra
                  srai         s6, s5, 27
                  srli         a2, s1, 21
                  sltu         gp, s10, a6
                  auipc        a6, 195247
                  sll          a5, s2, a1
                  slti         sp, a0, 1520
                  and          a4, t5, s2
                  andi         tp, s6, 50
                  andi         gp, s0, 1368
                  srai         t6, s11, 13
                  xori         s2, t5, -1368
                  nop
                  slli         a7, s7, 22
                  srl          s11, sp, gp
                  ori          s4, s1, 1612
                  xor          t1, t0, t2
                  srl          s10, sp, s9
                  slti         s4, a3, -233
                  slli         s0, t4, 19
                  and          s11, s5, a6
                  ori          t2, tp, -1673
                  sltu         sp, ra, a2
                  or           t6, zero, s4
                  slli         s2, t1, 18
                  lui          a4, 218130
                  addi         s7, a0, 141
                  auipc        zero, 467649
                  addi         s7, s3, -1867
                  sltiu        t0, s6, 273
                  xor          a5, a3, s8
                  sltiu        s10, a5, -571
                  sltiu        a2, s1, -1419
                  and          t1, t5, a2
                  add          s10, s3, s9
                  slt          t3, a2, s7
                  lui          t1, 712138
                  srl          t4, t1, t0
                  andi         ra, a2, -1792
                  slli         s10, t2, 19
                  or           a7, s3, a6
                  andi         t6, a4, -1847
                  andi         s5, a6, 564
                  slti         gp, s7, 158
                  sltiu        t1, a1, 119
                  slti         s2, t6, -1595
                  srai         tp, t6, 31
                  sltiu        t2, t6, -720
                  srl          a2, ra, ra
                  sra          a5, s10, s6
                  srli         a3, s5, 2
                  andi         tp, t6, 1428
                  nop
                  add          s11, s9, s4
                  sltu         s6, s5, s7
                  sub          s1, gp, t0
                  srli         a2, s6, 28
                  lui          a5, 556018
                  xori         t3, t4, 954
                  add          a5, a0, s2
                  nop
                  srl          sp, t6, t3
                  auipc        a3, 193524
                  srai         t4, a1, 24
                  ori          s11, t0, -17
                  srai         s9, s4, 18
                  sltu         s10, zero, s2
                  sra          sp, zero, s10
                  slli         zero, a2, 1
                  slli         s2, a7, 23
                  xor          s7, gp, sp
                  slli         ra, a7, 17
                  or           a3, ra, a3
                  sll          t4, s0, s4
                  slti         sp, s4, -654
                  lui          zero, 1003669
                  nop
                  sltiu        s11, t3, -314
                  or           gp, zero, sp
                  auipc        s1, 610476
                  slli         t0, t6, 13
                  add          s10, sp, a0
                  sltiu        s5, t1, 789
                  sra          a3, t3, s5
                  srli         t1, tp, 3
                  or           t4, gp, a7
                  slt          t2, tp, s7
                  auipc        s1, 143573
                  slt          t5, s2, sp
                  slti         t4, t6, -922
                  srli         t2, a5, 18
                  srl          t2, t2, t6
                  slli         s4, s10, 11
                  or           a5, s11, s11
                  or           a3, t3, t0
                  sub          s9, a4, a3
                  auipc        s3, 449302
                  sra          t2, s8, tp
                  ori          s4, gp, -1215
                  slti         t4, sp, 1801
                  slti         a6, s8, 1923
                  srli         s11, s3, 4
                  ori          s11, a0, -196
                  ori          s7, t4, -1356
                  sra          s0, s5, a7
                  slli         a2, t2, 8
                  sra          s2, s10, t0
                  auipc        s2, 173487
                  srli         a2, a3, 23
                  slt          t1, a0, s0
                  add          s5, a4, a1
                  xori         a7, s7, 515
                  add          a4, s11, sp
                  or           s5, s10, s11
                  ori          s5, t1, -1021
                  nop
                  sub          t3, zero, s11
                  addi         t5, t2, 1243
                  slli         s1, a3, 1
                  sub          a5, s5, t1
                  sltiu        t5, t0, -1139
                  or           t4, t2, tp
                  sll          t5, a6, s5
                  sra          s9, s8, s8
                  xori         gp, tp, 256
                  sll          t1, zero, a3
                  slli         s0, s0, 2
                  auipc        t4, 373095
                  add          a4, a6, a4
                  andi         a4, t3, -168
                  ori          s11, a2, 1054
                  slti         s2, a7, -1408
                  slli         a5, t4, 18
                  sra          gp, a4, a7
                  xori         ra, t6, -810
                  slt          s2, s4, s5
                  or           t2, s2, s1
                  xor          s0, t4, a7
                  sra          s0, gp, t1
                  auipc        s5, 693408
                  nop
                  slti         s10, a4, 225
                  xori         a4, a2, 1020
                  sra          t6, a2, t2
                  add          s11, a4, a6
                  add          a7, s6, s11
                  sltu         a5, s9, t0
                  add          a3, s8, t5
                  andi         s11, s7, -1298
                  xor          s1, s4, s8
                  sltu         s2, tp, a4
                  xor          t2, s5, ra
                  addi         sp, a3, 478
                  nop
                  sltiu        t5, s10, -529
                  slt          t1, t3, a4
                  slli         t3, s7, 29
                  and          t1, a6, t3
                  auipc        s3, 646327
                  sll          s5, s8, a3
                  sltu         s9, s6, s11
                  xor          s10, s0, a7
                  nop
                  xori         gp, s11, -924
                  andi         s6, s1, 1086
                  xor          t2, s3, s6
                  lui          sp, 829251
                  xor          s1, s1, t5
                  srli         a7, t2, 25
                  sra          zero, a5, a4
                  srli         a2, s11, 25
                  sll          sp, t6, s0
                  auipc        t1, 648641
                  srai         t0, s0, 12
                  ori          tp, s5, -662
                  srli         s1, s3, 12
                  andi         t1, s1, 461
                  andi         s11, s2, 641
                  sltiu        t6, s8, 1401
                  sra          t1, s7, t4
                  sub          s9, t5, t5
                  sra          s7, s8, s10
                  srli         a2, zero, 2
                  srl          s9, a2, t0
                  sltu         t3, sp, a2
                  addi         sp, t6, -1480
                  slli         a3, s2, 31
                  addi         s6, zero, -573
                  sltiu        s7, s3, -1303
                  slt          s2, s2, a3
                  slt          a5, t1, s8
                  sra          t2, s5, a4
                  andi         a6, t3, 1599
                  srai         s1, t0, 20
                  sra          a6, s8, t1
                  andi         ra, zero, -501
                  slti         sp, t0, 1929
                  sltu         a4, t5, s3
                  srai         sp, tp, 14
                  srai         s0, t4, 12
                  sll          a6, gp, s1
                  addi         sp, s5, 1458
                  xor          a2, t4, s10
                  nop
                  addi         gp, s5, 1509
                  lui          s9, 648991
                  slli         a5, a2, 13
                  ori          a2, t4, -966
                  addi         s9, s7, -668
                  slt          s6, s5, a2
                  andi         s11, s3, -753
                  auipc        zero, 161972
                  xor          t5, s8, s0
                  srli         a5, gp, 18
                  srli         s4, tp, 18
                  ori          sp, s9, -886
                  nop
                  sltu         a2, a3, s9
                  auipc        t6, 470651
                  addi         t0, s2, -475
                  sltiu        a3, a3, -1334
                  or           sp, a3, a1
                  slli         a3, zero, 28
                  sltu         t2, a1, t5
                  sltiu        s4, s1, 947
                  sub          ra, s4, s4
                  sltiu        a4, s5, -1111
                  sltiu        s4, a6, 1385
                  nop
                  sltu         gp, a7, a3
                  slti         ra, s10, 1791
                  sltiu        a2, s3, 1172
                  srai         sp, s2, 30
                  addi         s11, t5, -1413
                  sltu         s1, s11, gp
                  sltiu        a4, t0, -809
                  slt          t1, s6, a0
                  ori          a7, s9, 1896
                  auipc        t0, 521006
                  nop
                  ori          a6, s2, -1091
                  xor          ra, a7, a4
                  slti         zero, s8, -1151
                  nop
                  srai         a5, a7, 30
                  sub          s9, t4, zero
                  auipc        gp, 404828
                  srai         a5, a0, 11
                  sltu         t1, a2, t4
                  andi         s4, ra, 1240
                  srl          a3, t6, tp
                  nop
                  addi         s6, a6, 1206
                  srl          s3, a2, s10
                  slt          s11, a7, a1
                  or           t5, t4, s11
                  or           s2, s10, a0
                  andi         t6, t6, -37
                  sltu         a4, s5, s4
                  lui          t0, 105196
                  xor          s4, a4, s6
                  slli         s4, s1, 9
                  sltiu        sp, sp, 556
                  sll          s11, a0, s11
                  lui          tp, 20951
                  srai         s6, s9, 1
                  sub          a2, s7, a2
                  addi         t2, s7, -1740
                  xor          a4, s6, sp
                  sra          s2, s1, s11
                  sll          a5, s3, a2
                  auipc        s4, 967778
                  slli         a5, t6, 11
                  ori          a3, s9, 1276
                  srl          t4, s0, s2
                  ori          t5, s5, 1619
                  sra          t2, s3, s4
                  sll          zero, s6, s8
                  slti         a6, s4, -938
                  addi         s0, s7, -133
                  add          s0, s11, s8
                  add          t4, s1, t6
                  slti         s9, s8, 1821
                  slli         s10, s5, 15
                  slt          a7, s3, s6
                  sll          a7, s3, t5
                  srli         t5, s7, 2
                  slti         ra, t0, 989
                  slt          ra, sp, t5
                  nop
                  srl          t0, s7, s11
                  sll          t5, s6, s7
                  srl          ra, s9, a5
                  xor          zero, zero, s11
                  sll          t2, s10, a5
                  nop
                  srai         a5, s7, 31
                  srai         t2, s8, 7
                  nop
                  slli         t5, s10, 30
                  and          gp, s5, ra
                  lui          a6, 771515
                  srai         t2, s10, 20
                  andi         s4, s11, -992
                  slti         t5, t5, -1137
                  auipc        a7, 719477
                  slli         s5, s3, 4
                  or           ra, a1, tp
                  xor          s1, s5, s3
                  srl          gp, s4, a5
                  sltu         sp, t6, a7
                  nop
                  sra          s9, s1, s3
                  and          s1, a2, a4
                  auipc        s1, 450335
                  sltu         s10, a2, s2
                  xor          zero, a0, s6
                  addi         a4, s7, 1382
                  or           t6, gp, s7
                  andi         a5, a6, -1737
                  sltiu        s6, s3, -1979
                  sll          s9, gp, s6
                  andi         a2, t6, 1966
                  srli         s2, a3, 21
                  xor          s0, t5, s6
                  slli         a6, tp, 10
                  sll          tp, a1, s10
                  srl          t1, s2, t3
                  srl          s4, s1, a6
                  sub          t3, a6, s10
                  addi         t4, a1, 1439
                  auipc        gp, 219194
                  slti         s5, a6, -1168
                  andi         zero, t0, -174
                  slti         t3, s5, 548
                  srli         s5, t1, 20
                  sll          t1, sp, t5
                  xor          t1, tp, s0
                  andi         t1, s5, 558
                  addi         t1, t2, 1642
                  slt          sp, s6, tp
                  sltu         s4, t3, t5
                  and          a2, gp, s3
                  sll          s9, t1, s8
                  slti         s6, a5, -1501
                  slt          a2, s2, a2
                  nop
                  srai         t6, a7, 5
                  srl          sp, s8, s3
                  auipc        s10, 117606
                  sub          sp, s0, a1
                  addi         t4, s6, -517
                  xor          s6, s11, a3
                  ori          a7, a3, 682
                  andi         a4, zero, 1247
                  xor          s9, zero, t5
                  slt          ra, a4, sp
                  addi         t1, a6, -1220
                  sltiu        zero, a5, -96
                  xor          t4, tp, t5
                  add          s2, a2, s4
                  slt          zero, s3, a6
                  sltu         t4, a3, t4
                  or           s11, s3, t0
                  xor          tp, t4, s1
                  sltu         s0, a2, t6
                  sll          t6, a4, s11
                  srli         a5, a0, 17
                  ori          gp, t6, 146
                  xor          a4, t3, a7
                  sltiu        a5, zero, 618
                  sll          t3, sp, a1
                  lui          s1, 98715
                  addi         a6, s9, 1115
                  and          a4, a2, t5
                  add          t0, s5, s3
                  sltiu        t2, a5, -1631
                  ori          s2, a5, -308
                  sltu         t6, s9, s9
                  sltiu        tp, t2, 984
                  lui          s10, 23608
                  xori         t1, ra, -1432
                  xor          t1, s0, tp
                  addi         s2, s9, -1947
                  srli         s2, t6, 10
                  sra          t1, a0, a0
                  slti         s10, s9, 779
                  srli         t0, s7, 5
                  nop
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           a2, 0xffffffff
                  li           s4, 0xde5550e1
                  li           a7, 0xa33b9268
                  li           ra, 0x80000000
                  li           s3, 0xffffffff
                  li           s1, 0x0
                  li           s9, 0x3b7b76ce
                  li           s11, 0xffffffff
                  li           s10, 0x80000000
                  addi         s11, s10, -535
                  nop
                  add          s10, s3, s9
                  auipc        s3, 291089
                  sub          s10, s1, s10
                  sub          ra, t4, ra
                  addi         s1, a2, -529
                  sub          ra, ra, ra
                  add          s9, ra, ra
                  sub          t4, s10, ra
                  nop
                  addi         s3, s1, 1509
                  add          t4, s10, s1
                  add          a2, s9, a7
                  sub          s3, ra, a7
                  nop
                  addi         s10, s3, 443
                  add          s3, s3, s3
                  sub          s3, s3, ra
                  sub          s9, s10, s9 #end riscv_int_numeric_corner_stream_2
                  addi         sp, a0, -1473
                  sltiu        a2, a6, 131
                  srl          t2, a6, s0
                  or           s10, s11, s9
                  and          gp, t3, tp
                  sll          t5, a6, t6
                  auipc        t6, 66329
                  sltiu        t0, s8, 1865
                  sltu         sp, t2, s6
                  xor          s10, s3, s1
                  sra          a4, s7, s2
                  nop
                  auipc        sp, 418120
                  or           a2, s0, t1
                  slti         s6, t5, -1958
                  srl          a2, s10, gp
                  add          t5, a0, s5
                  srli         gp, t3, 31
                  sltiu        s3, a6, -1928
                  sra          a6, tp, t6
                  lui          gp, 870415
                  srl          s4, s8, t2
                  ori          s10, a1, -263
                  add          s6, s2, a7
                  lui          s9, 378122
                  slli         s3, ra, 17
                  slt          s1, tp, t0
                  sub          s6, sp, s8
                  lui          s0, 845489
                  sll          s0, a4, t6
                  add          ra, s10, s3
                  sltu         a5, gp, t6
                  srl          s7, s2, sp
                  auipc        s10, 279531
                  sra          sp, gp, tp
                  lui          s0, 774588
                  srli         a5, sp, 31
                  add          t2, s2, a3
                  sltu         t6, t4, t0
                  srai         a5, s8, 19
                  srai         zero, s2, 4
                  add          ra, s2, s7
                  srli         s2, s7, 21
                  slt          ra, tp, t4
                  and          s1, zero, s7
                  xori         t6, a2, 688
                  xori         s11, t4, -1178
                  and          a6, t2, t3
                  xor          s1, s5, a5
                  lui          s10, 840432
                  ori          s0, a3, 652
                  slti         a5, s9, -10
                  sltiu        a2, a0, -566
                  auipc        a7, 656442
                  srl          s11, sp, sp
                  auipc        sp, 239110
                  or           gp, s6, s4
                  slli         s4, t5, 17
                  sra          s7, a5, s10
                  slli         s5, tp, 16
                  lui          s5, 186305
                  slti         s11, s11, -1578
                  srl          ra, t4, s10
                  or           t6, sp, s4
                  sra          s9, t6, s2
                  slti         a5, t3, -1864
                  sltiu        zero, sp, 1190
                  add          s11, sp, a6
                  sra          s9, s5, a4
                  srl          a6, t6, s5
                  sra          t5, a3, a5
                  xor          t3, a6, s3
                  andi         s4, a7, 886
                  srli         a6, a7, 1
                  slli         t4, a3, 23
                  sub          s0, s2, s5
                  auipc        s1, 869315
                  sltu         s0, t3, a6
                  andi         t5, s3, -537
                  sra          sp, t4, t4
                  slli         t2, ra, 20
                  andi         s0, t6, -1449
                  sll          s5, s6, s4
                  slti         t1, a4, 1639
                  slli         s6, s2, 29
                  sub          sp, a7, a1
                  auipc        t3, 571417
                  srl          s10, t6, s3
                  slti         sp, zero, -1503
                  auipc        zero, 828680
                  ori          gp, a6, -1982
                  add          s2, t1, a4
                  and          a6, s5, a5
                  add          s10, s7, s10
                  srai         s5, s6, 4
                  sll          s11, a3, tp
                  sra          s2, t1, s8
                  andi         s6, s0, 1346
                  xor          t3, t0, a4
                  andi         a5, t5, -1648
                  nop
                  ori          a7, a2, -1572
                  sub          s10, ra, a6
                  lui          s11, 46527
                  sltiu        t3, t1, -1933
                  ori          gp, a1, 172
                  andi         a6, s1, 1071
                  xori         s9, s3, 851
                  auipc        s2, 724002
                  slt          a4, s6, a5
                  andi         a6, s9, -2038
                  andi         a2, s3, 1712
                  ori          t4, zero, 1762
                  slti         a5, s0, -902
                  ori          s2, t5, -1406
                  ori          t0, s5, -475
                  slt          s10, s9, s4
                  add          sp, gp, s1
                  sub          s2, t3, s7
                  xor          t4, a2, s10
                  sub          s10, s3, s9
                  ori          gp, t4, 1615
                  srl          t2, t5, tp
                  sll          t5, a6, a0
                  nop
                  and          t5, s5, a7
                  srli         s9, gp, 10
                  nop
                  add          t1, s8, s6
                  nop
                  xor          a5, a0, s4
                  ori          ra, a1, -991
                  andi         s3, sp, 196
                  andi         s5, t4, 1439
                  andi         t0, s6, -60
                  slt          s0, a5, t0
                  or           gp, s7, t6
                  slli         s5, zero, 27
                  addi         s10, sp, -2038
                  srl          t5, a6, s0
                  sra          s1, t6, s1
                  andi         tp, s10, 464
                  add          s5, ra, gp
                  srli         a5, s8, 30
                  srli         t3, s1, 4
                  sll          s1, s5, s8
                  add          s7, ra, t5
                  andi         zero, s2, -1926
                  add          s11, t5, a4
                  or           s5, t0, a0
                  or           a4, s5, a2
                  slti         s3, a3, -1277
                  add          s6, a0, a7
                  xori         sp, a7, -1046
                  sra          s3, t1, a0
                  auipc        s7, 988267
                  sll          t1, t1, a5
                  sltu         s9, t1, a7
                  srl          s10, s11, t5
                  srai         t6, t6, 28
                  srl          s3, a3, ra
                  or           t3, a7, t1
                  add          a5, a6, s3
                  srai         a6, a2, 1
                  sltu         s9, s3, a6
                  srai         s1, t6, 16
                  ori          s6, s5, -1257
                  srai         a5, s10, 19
                  sra          s3, t0, s4
                  lui          t4, 824140
                  andi         zero, tp, 958
                  srli         a2, s9, 1
                  or           sp, a3, a4
                  andi         s2, s3, -459
                  sltiu        sp, t4, 1458
                  lui          s1, 632781
                  lui          sp, 278333
                  sub          s3, t4, a3
                  andi         a6, s9, 1332
                  andi         s3, a2, 1334
                  sltu         t3, s8, s4
                  slt          s9, a4, a5
                  srai         s11, s7, 8
                  srli         s2, t1, 5
                  sra          s6, s10, s7
                  srli         gp, s2, 17
                  sltu         sp, s7, a4
                  or           s10, s8, s9
                  xor          s0, a0, t4
                  sub          s10, s10, a3
                  slt          sp, t4, s7
                  sltu         gp, a3, s4
                  nop
                  srl          sp, s3, sp
                  sltiu        s10, gp, -1287
                  sra          s1, s0, s11
                  xori         a6, a7, -1416
                  nop
                  slti         tp, s0, 131
                  slti         a5, a2, -1312
                  srai         s5, a4, 21
                  add          t0, t2, t5
                  sltu         s2, t1, t4
                  xori         s2, t3, -1556
                  add          ra, zero, a0
                  or           s5, a5, s4
                  addi         gp, t4, 147
                  lui          a4, 508990
                  ori          sp, s6, 1639
                  srai         t1, a5, 6
                  or           gp, s8, a0
                  add          t4, s3, s3
                  ori          t3, t0, 1296
                  sll          t5, sp, t1
                  srai         t6, a3, 25
                  auipc        a4, 33612
                  addi         sp, t2, -827
                  sltiu        s6, t5, 1085
                  xori         s2, sp, 22
                  and          a5, a3, t2
                  srai         s6, zero, 21
                  sltu         s2, s7, a5
                  sltiu        s10, gp, -1488
                  srl          a4, zero, s9
                  ori          t5, s10, -1775
                  sra          a2, a3, s2
                  nop
                  sll          gp, s2, s6
                  sltu         s1, s0, t2
                  sra          a5, sp, ra
                  ori          sp, gp, 1908
                  addi         a6, a3, 1202
                  slt          t5, t0, s5
                  xori         a4, a5, 1711
                  andi         s3, a0, -1277
                  or           t1, s4, a0
                  srl          s6, ra, s8
                  srai         t2, tp, 22
                  addi         a4, a7, 1136
                  or           tp, t5, a5
                  andi         t2, s1, -337
                  slli         s6, zero, 29
                  and          s3, t6, a1
                  slli         s7, a6, 9
                  sltu         gp, a0, s8
                  addi         ra, t6, -1842
                  sra          t3, zero, s5
                  sltiu        t0, s2, -601
                  sll          a5, s4, a0
                  slti         gp, t6, 347
                  srai         a2, s0, 26
                  xor          tp, s0, a0
                  xori         t1, a0, 1551
                  sub          s9, s0, a1
                  sltu         t5, a0, a0
                  and          s10, s11, a3
                  sltu         t6, s0, ra
                  slti         sp, a5, 197
                  auipc        a2, 484412
                  sra          t1, s10, gp
                  add          s9, a4, zero
                  add          a6, s0, t6
                  slt          a4, t4, a5
                  ori          s11, s2, -625
                  lui          t0, 167313
                  slti         ra, s9, -1567
                  srl          a5, a3, tp
                  sra          t4, a0, tp
                  slt          t6, a6, a3
                  srli         s6, s4, 9
                  andi         s6, tp, -18
                  addi         s7, s4, -710
                  sub          s10, s10, s11
                  andi         zero, s4, -285
                  srai         a6, t5, 22
                  andi         s10, s10, 200
                  lui          a2, 798182
                  sub          a6, t1, t4
                  sub          s10, s4, t6
                  sub          s5, gp, t1
                  or           s10, a5, s10
                  slt          t0, a6, t0
                  and          tp, a0, s3
                  sll          s1, s10, ra
                  srl          tp, a6, s3
                  auipc        a6, 950059
                  srl          sp, s10, s1
                  ori          t1, s9, -1470
                  andi         s10, a6, -416
                  nop
                  and          a2, t0, t1
                  sltu         a7, s7, s8
                  or           t1, sp, t6
                  srli         a5, sp, 5
                  add          t0, a1, sp
                  ori          t5, s10, 1283
                  sub          s0, a6, gp
                  sub          tp, t0, a3
                  slt          s3, s0, ra
                  nop
                  xor          s4, sp, a1
                  add          t6, s3, a3
                  srai         t4, t4, 16
                  slti         s3, a1, -1263
                  addi         t4, t3, 1683
                  srli         s7, s11, 3
                  or           ra, t6, zero
                  andi         s4, s4, 68
                  nop
                  sltu         zero, tp, t5
                  or           s5, a1, a6
                  sra          ra, a0, a6
                  sll          a4, tp, a3
                  srai         a5, s2, 15
                  or           a2, s4, a7
                  or           t0, s2, t2
                  add          zero, s2, s9
                  srai         t5, t1, 17
                  slli         a3, a7, 31
                  nop
                  slt          gp, s2, a4
                  sra          s1, s4, a7
                  slti         a4, a5, 819
                  srai         s0, a3, 27
                  lui          a5, 337961
                  slti         t0, tp, 574
                  andi         tp, t4, -1373
                  slli         t0, a0, 1
                  andi         a5, t4, 1726
                  andi         t0, ra, -1925
                  sra          a4, s1, t5
                  ori          zero, s11, -1126
                  ori          t3, s6, -1288
                  sll          s5, s3, s4
                  slt          a4, s2, a6
                  xori         ra, t1, -1060
                  srl          s4, a1, sp
                  or           zero, s9, s11
                  srai         a7, a7, 22
                  xori         t1, t6, 349
                  srli         s7, t6, 23
                  addi         s7, s2, 535
                  xori         ra, s4, 1369
                  slti         zero, zero, 92
                  sra          gp, t6, zero
                  auipc        t2, 461966
                  srai         a4, s4, 24
                  nop
                  xor          gp, a7, t1
                  and          s4, a1, t0
                  sltiu        s3, sp, 137
                  srl          s11, a3, t4
                  addi         a4, zero, 423
                  andi         s2, tp, -106
                  slti         s9, s4, 206
                  sub          s1, a5, t6
                  srl          gp, a2, s7
                  lui          a4, 588802
                  or           sp, zero, ra
                  slt          s3, tp, s0
                  sltu         s6, t1, a4
                  xor          sp, s11, a2
                  nop
                  sra          s0, a0, a6
                  slt          s5, tp, s6
                  nop
                  ori          a4, s7, -1918
                  srai         s5, a4, 29
                  sltu         a5, s6, t0
                  slti         a4, t4, -408
                  sll          a6, s2, s8
                  sll          s3, s0, t6
                  slli         a6, gp, 22
                  or           a7, a2, zero
                  sra          t3, sp, t6
                  sll          s7, s8, t6
                  slti         ra, a1, 1041
                  or           a2, t2, t3
                  sltu         gp, t1, s8
                  auipc        t1, 438364
                  nop
                  nop
                  ori          a6, t2, 812
                  addi         a6, t5, -1521
                  sll          s7, t0, zero
                  slti         sp, zero, 1483
                  and          s2, a7, t5
                  sll          a2, a5, ra
                  srli         s4, s3, 30
                  slti         sp, s11, -294
                  ori          s3, t0, 1056
                  or           a3, a5, s2
                  lui          s0, 363613
                  slt          t5, t1, s10
                  srai         a4, a1, 28
                  slti         t1, s11, -176
                  slli         a4, ra, 18
                  srl          s10, t5, gp
                  and          a5, t3, s2
                  and          t3, tp, s2
                  sll          s9, t1, a6
                  srli         ra, a7, 4
                  srl          s9, s2, t1
                  srl          t2, t6, t0
                  sll          t3, a6, t5
                  srl          a4, s6, t5
                  slti         a3, a5, -1379
                  andi         s5, a4, -1349
                  sub          a5, s5, a3
                  addi         gp, s9, 1637
                  add          t5, a3, zero
                  xor          a5, t3, s2
                  xori         gp, a2, -84
                  and          t2, t1, t5
                  auipc        s0, 199233
                  ori          s2, t4, -82
                  nop
                  nop
                  slli         t3, s5, 13
                  auipc        s0, 714236
                  srai         gp, a2, 29
                  xori         t0, ra, 1968
                  sltu         a3, s5, s0
                  addi         s7, s1, 1622
                  sub          s5, s3, s5
                  xor          tp, t0, sp
                  sra          tp, t6, s5
                  sub          s6, a4, t5
                  lui          s9, 50223
                  slli         a6, s10, 2
                  add          a5, zero, s6
                  slt          t0, sp, a0
                  xori         s3, tp, 1738
                  nop
                  sll          t1, a3, s10
                  slti         s0, zero, -155
                  or           s10, s7, a2
                  add          sp, ra, a5
                  srai         a2, a1, 15
                  srl          a2, s4, zero
                  andi         t0, s0, -955
                  add          t4, s5, a0
                  sub          sp, s6, s7
                  xor          s4, t5, s8
                  ori          zero, a6, 220
                  sub          a6, s11, t5
                  srl          s11, tp, t2
                  add          t4, a5, s3
                  auipc        t5, 777819
                  slt          t4, a3, s5
                  add          t4, s11, t6
                  add          t3, a6, s5
                  lui          tp, 825759
                  add          s0, s1, sp
                  srl          s3, s2, s8
                  srai         a6, s8, 2
                  srli         zero, gp, 13
                  nop
                  auipc        zero, 144158
                  slti         t1, t1, 59
                  add          s9, a2, s9
                  sra          t2, a6, a2
                  xori         t5, gp, 278
                  xor          s6, t1, a5
                  auipc        s0, 604462
                  slli         s5, gp, 15
                  add          a3, a7, a1
                  sra          t5, s3, zero
                  xor          a5, s8, s10
                  slli         s0, s1, 19
                  ori          zero, zero, 1340
                  slli         s3, a1, 21
                  andi         s10, a7, -1323
                  srli         a4, s7, 15
                  lui          sp, 970491
                  sra          tp, s8, s7
                  ori          t2, s1, 1746
                  ori          zero, a3, -1805
                  and          zero, a6, t2
                  sra          t6, t2, a4
                  ori          t3, s10, -577
                  slti         s11, t3, -1820
                  auipc        a4, 671523
                  sltu         tp, s2, t0
                  sltu         t3, a0, t4
                  srai         ra, s11, 28
                  auipc        t6, 780452
                  xor          t3, s4, a4
                  andi         a6, t1, -1520
                  or           s0, s3, t3
                  andi         s10, s4, -1640
                  addi         s9, gp, 758
                  srli         s11, t6, 27
                  auipc        tp, 667185
                  ori          t2, s1, -1009
                  auipc        s6, 864586
                  srli         gp, tp, 31
                  slti         s0, s8, 807
                  slti         gp, s3, -1109
                  slti         a6, s7, 871
                  nop
                  add          s4, a3, a2
                  nop
                  slti         t6, a5, -1250
                  or           ra, t2, s2
                  nop
                  and          s2, s4, s7
                  and          ra, a7, s7
                  add          ra, t2, t5
                  xori         t1, s5, -1373
                  slti         s3, zero, 1942
                  addi         t0, s6, 507
                  slti         a4, a1, -1602
                  nop
                  xor          sp, a2, s6
                  or           t6, a2, s5
                  auipc        s1, 710714
                  srl          s4, t3, sp
                  addi         t4, s4, 996
                  sra          t1, gp, s1
                  nop
                  slli         s7, a7, 9
                  sub          a5, t2, t3
                  srl          s2, s7, t5
                  slli         s4, tp, 23
                  srai         s4, s6, 28
                  srl          sp, a5, t4
                  and          t0, t6, a2
                  ori          s11, t4, -683
                  slti         t3, a0, 1951
                  or           t3, s2, sp
                  srl          s4, t6, s0
                  add          gp, t1, s6
                  and          s10, s4, gp
                  sltiu        a3, zero, 1319
                  or           a4, a2, s11
                  sltiu        sp, sp, 81
                  sll          s1, t5, s4
                  srli         t5, a4, 22
                  xori         sp, a4, -776
                  lui          gp, 385090
                  srai         t0, t5, 0
                  sra          a7, s11, a3
                  sll          t0, t0, a3
                  slti         a4, t3, 1891
                  sltiu        t4, zero, 1323
                  or           a6, s10, a3
                  ori          s6, s7, -859
                  slli         s2, tp, 18
                  slli         t1, tp, 4
                  and          s0, s9, gp
                  auipc        s6, 546440
                  sltu         t1, s6, s8
                  and          a7, s6, s2
                  srli         a6, s9, 31
                  srli         t1, a4, 17
                  sll          s10, t0, ra
                  ori          a2, a4, 962
                  sll          s3, a3, gp
                  sll          s6, tp, a3
                  srl          s3, s5, s2
                  addi         a5, s9, -1434
                  sltu         t4, s3, s9
                  srli         gp, a0, 11
                  srli         sp, a1, 7
                  srli         a2, t6, 7
                  auipc        ra, 966066
                  srl          t5, a0, s2
                  sltu         tp, s8, s10
                  sra          t3, a7, s9
                  srai         s5, s9, 11
                  auipc        gp, 898486
                  auipc        s5, 722099
                  sll          t3, a0, t5
                  auipc        t5, 208972
                  or           s5, t2, zero
                  and          t1, s11, a3
                  auipc        s0, 222170
                  lui          s11, 506207
                  andi         a6, a6, -1207
                  auipc        a5, 196382
                  xor          s9, s10, a0
                  sltu         gp, t6, s0
                  slt          s0, t3, t6
                  srli         s7, a4, 4
                  or           t3, s3, a3
                  andi         t4, s10, 1913
                  addi         t2, a3, -126
                  xori         t3, a6, -360
                  sra          ra, a5, tp
                  nop
                  sra          t3, a0, ra
                  sub          s11, s1, t3
                  add          a6, s1, s11
                  and          t6, a6, s0
                  auipc        s2, 566630
                  sltiu        s3, a5, 152
                  srli         t5, s8, 26
                  addi         s4, t2, -556
                  lui          t3, 523423
                  slti         a6, t4, -1836
                  srl          t6, t6, a5
                  sltiu        s10, s11, 355
                  xor          a2, s7, zero
                  slt          a7, tp, a4
                  slli         tp, t6, 25
                  sub          a4, tp, tp
                  lui          t1, 679972
                  srl          a2, s9, s4
                  slti         s1, gp, -605
                  xor          zero, t2, gp
                  sll          t1, s5, tp
                  srl          s9, s0, t5
                  srai         s10, ra, 5
                  slli         a5, t1, 8
                  sub          a7, s5, s0
                  xor          t0, a2, s3
                  xori         sp, a2, -1690
                  sub          s5, s6, s2
                  lui          a7, 74871
                  lui          t1, 230496
                  xor          s4, a5, s1
                  andi         t3, t4, 1904
                  sltu         a6, s6, s2
                  addi         s3, t2, -1004
                  sub          t0, a1, s0
                  srli         t3, s3, 9
                  srai         a4, s5, 7
                  and          t2, s3, s8
                  lui          t3, 712857
                  sll          t3, s9, t0
                  sra          s1, a3, ra
                  srli         a4, a2, 6
                  sub          t2, t2, tp
                  addi         s7, t5, 153
                  and          tp, s7, s2
                  sub          t1, s0, s7
                  sra          s1, s6, a1
                  auipc        s4, 895068
                  slti         s6, t3, -1677
                  slli         s9, s6, 28
                  sltiu        a6, a5, -835
                  xor          s10, t5, zero
                  sub          s1, a4, s3
                  sll          t2, s4, t2
                  sltu         t2, a5, s1
                  andi         s10, a0, 1422
                  slti         a5, s6, 1655
                  xor          t6, a1, s0
                  sltiu        ra, a7, -2009
                  and          sp, s8, tp
                  nop
                  ori          s7, a0, -713
                  slt          s10, s4, s4
                  srai         t6, s4, 4
                  slli         t0, a2, 19
                  sra          t6, t4, s9
                  nop
                  sltu         s11, s6, t6
                  andi         s9, t4, -81
                  addi         s0, zero, 1687
                  sll          t0, t3, s10
                  ori          sp, s1, 1192
                  sltu         t4, t5, t6
                  srai         zero, s3, 21
                  nop
                  ori          t6, a5, -1390
                  nop
                  nop
                  and          s1, s7, t5
                  slti         sp, a7, -1853
                  lui          a2, 241111
                  nop
                  nop
                  ori          zero, s5, -1519
                  lui          s5, 244465
                  lui          t1, 422095
                  sltiu        a3, sp, -1000
                  add          s0, gp, t4
                  srl          a4, gp, a6
                  or           s4, s5, gp
                  sub          tp, t0, t4
                  or           t0, t4, a6
                  xori         s11, s3, 1125
                  sltiu        s6, s8, 188
                  sra          t2, t1, a5
                  ori          zero, sp, -682
                  srai         t2, s4, 20
                  and          s7, t6, ra
                  sll          s6, zero, s1
                  addi         t4, ra, 16
                  auipc        t4, 881064
                  slti         a4, s8, -1210
                  slti         ra, a3, 1653
                  addi         s3, s11, 1745
                  andi         s10, a1, 337
                  addi         a6, t0, 1712
                  slti         s2, zero, -912
                  sub          ra, a5, zero
                  auipc        t4, 543452
                  xor          gp, a0, t4
                  or           ra, s1, s2
                  sll          s4, sp, s6
                  ori          s2, t0, -613
                  srl          s11, a6, s10
                  addi         s2, tp, 1391
                  srai         sp, s1, 29
                  lui          t1, 285892
                  addi         t4, a0, 167
                  srli         t4, t1, 13
                  ori          t0, t4, -1126
                  sra          s5, t2, a1
                  auipc        a7, 206123
                  sll          a7, s1, s10
                  xori         a3, t2, 402
                  nop
                  nop
                  srl          t3, t4, a0
                  sll          s0, s8, ra
                  and          t0, t4, s3
                  srli         ra, t3, 8
                  nop
                  add          tp, a4, s5
                  slti         a7, s9, -784
                  sltu         tp, zero, a7
                  sra          s7, t0, ra
                  slti         a6, gp, 353
                  sltiu        s3, t6, 1265
                  slli         t3, a3, 5
                  srli         t5, t0, 20
                  sltiu        t0, t2, 813
                  xori         s0, t5, -1398
                  and          s1, s10, s0
                  ori          s1, t2, -1584
                  andi         s3, a1, 332
                  nop
                  srl          t5, s0, t4
                  andi         s9, s5, -419
                  nop
                  add          t3, t1, s4
                  or           t0, s10, t5
                  ori          s7, s0, -593
                  sra          s3, s8, t2
                  sll          s10, s11, tp
                  sltiu        s5, s8, -1640
                  and          sp, s5, ra
                  addi         a3, tp, 1648
                  sll          zero, zero, t2
                  sll          s6, zero, a7
                  andi         zero, a4, 487
                  srli         a6, s6, 0
                  ori          s3, a7, -481
                  add          s9, a5, a1
                  lui          s1, 1023214
                  slt          zero, t6, s11
                  sltiu        t3, t0, 1937
                  sll          gp, t1, s5
                  srl          a2, s6, a5
                  sll          a7, s4, s3
                  or           a4, a1, sp
                  srli         s6, t3, 3
                  and          s0, sp, s11
                  or           a2, s5, s3
                  sltu         s11, a7, a5
                  xor          s6, t0, s4
                  srl          t6, a2, t6
                  slt          a5, t3, t4
                  slti         ra, t3, 1651
                  xor          a5, s5, s4
                  slt          s6, a3, a4
                  nop
                  slti         t6, s1, -1205
                  auipc        a4, 133461
                  nop
                  slli         s10, s2, 6
                  auipc        tp, 543047
                  xori         s2, s2, 720
                  sra          t3, s9, t4
                  addi         a4, s4, 497
                  sltu         s3, s8, t4
                  addi         t1, a6, 1925
                  slti         t5, s7, -1352
                  and          t1, gp, a7
                  slli         t1, s10, 16
                  andi         t4, t6, -1548
                  ori          tp, s6, 80
                  srli         a6, s8, 27
                  sub          s1, s3, a3
                  add          gp, s8, zero
                  srl          s10, zero, s7
                  srai         a4, t3, 22
                  or           sp, t3, s9
                  sub          sp, zero, s2
                  xor          a3, zero, a5
                  slli         a5, s9, 13
                  srl          t1, s11, t4
                  auipc        s6, 1045280
                  nop
                  sltiu        s9, s7, 932
                  srai         a2, t0, 30
                  nop
                  nop
                  lui          s0, 406999
                  and          a7, t6, a1
                  and          s10, a6, t2
                  add          a4, t2, s7
                  addi         s1, s9, -1464
                  slti         t1, s9, -994
                  nop
                  nop
                  xor          gp, a6, a3
                  srai         a5, t1, 28
                  srli         ra, gp, 12
                  srai         t5, t5, 8
                  slli         a6, s10, 21
                  auipc        t1, 490293
                  sltiu        t2, a5, 474
                  auipc        s9, 205529
                  nop
                  ori          s3, a0, -309
                  add          s9, t4, s4
                  ori          s4, zero, -451
                  auipc        s9, 24091
                  or           s9, s11, sp
                  srli         a5, t1, 20
                  sub          s10, s10, zero
                  nop
                  add          a6, a7, s3
                  and          s11, sp, t1
                  slt          t6, a1, t6
                  nop
                  slli         a6, s6, 28
                  andi         s9, s11, 1789
                  srl          gp, s7, a0
                  xori         s0, s2, 214
                  xor          s9, s8, s8
                  srl          t3, t2, t2
                  slti         s2, t2, -310
                  ori          s10, a7, 1673
                  slt          s7, a4, a0
                  andi         sp, s4, 36
                  nop
                  sub          a3, s2, tp
                  auipc        s2, 290126
                  slli         t3, a5, 7
                  lui          s4, 566829
                  or           s6, a1, s7
                  sltiu        a4, s2, 4
                  ori          s9, s10, 93
                  and          s5, a1, s8
                  nop
                  xor          s6, t1, a4
                  auipc        a5, 22498
                  xori         s1, s8, -412
                  srai         s0, s2, 5
                  sll          a2, t3, s3
                  addi         a3, s2, 1311
                  slt          s9, s1, t1
                  sll          s9, s5, t1
                  nop
                  auipc        a2, 80709
                  srai         ra, gp, 1
                  srl          s1, a4, s10
                  sltu         a3, s7, t0
                  nop
                  lui          gp, 692013
                  nop
                  sra          s10, s8, a1
                  add          t1, s4, s0
                  srli         a4, s3, 14
                  xori         gp, t5, 1256
                  sub          t3, s2, a7
                  sltiu        t5, s11, -1767
                  lui          gp, 899
                  and          t6, s10, tp
                  srl          s10, t2, s6
                  sra          sp, s1, t2
                  sub          ra, s4, gp
                  srai         t0, t2, 24
                  slti         s0, a1, 1983
                  andi         s2, tp, -767
                  or           a2, ra, t2
                  andi         a2, t4, 1473
                  srai         gp, s4, 1
                  slli         t6, t5, 12
                  srli         s0, a3, 13
                  nop
                  ori          s2, a6, -1404
                  sltu         s10, gp, t3
                  and          a5, s7, t3
                  and          tp, a0, a7
                  srai         s9, s8, 13
                  srl          s0, t4, zero
                  srli         t4, s3, 0
                  sub          s3, t2, s8
                  add          t4, sp, s11
                  sltiu        s7, t6, -1069
                  xor          t3, t1, t4
                  or           t5, a2, sp
                  srl          gp, t3, s11
                  and          s4, s3, t3
                  srl          s9, s10, s11
                  slli         s2, t3, 27
                  andi         s11, ra, -1136
                  and          t5, zero, s3
                  sltu         s11, s7, a3
                  or           s0, s5, t4
                  or           tp, a0, s11
                  slt          s0, s3, s4
                  slt          a5, s11, s0
                  xori         gp, t5, 954
                  auipc        sp, 782427
                  srl          s9, s6, a7
                  andi         t1, s9, -848
                  sll          a6, t5, s8
                  xori         gp, a7, 2038
                  slt          t6, a6, zero
                  and          s1, s1, s2
                  addi         a2, gp, -60
                  auipc        a7, 770569
                  srl          s5, tp, sp
                  slli         a2, t6, 5
                  srl          zero, s4, a1
                  addi         s11, gp, -1244
                  slti         s7, t4, 258
                  slt          a5, s5, a5
                  srai         s7, t2, 5
                  xor          s11, s9, s11
                  sltiu        s4, s11, -2043
                  slti         a6, s8, 1566
                  sub          t3, s8, gp
                  xori         s9, t2, -412
                  auipc        s3, 869350
                  srai         a4, s6, 10
                  sra          sp, s3, t1
                  srli         s2, a0, 10
                  sltu         a7, zero, s10
                  ori          s7, s6, -307
                  addi         ra, a5, -432
                  slt          s11, gp, s8
                  sra          s11, a3, t6
                  auipc        s9, 631680
                  or           t2, t1, s0
                  add          t2, s10, a7
                  sltiu        s4, s7, 495
                  sub          s11, s6, s1
                  ori          a6, a2, -1470
                  and          t6, a3, a7
                  srai         a7, s4, 20
                  lui          s4, 711166
                  sll          s1, s5, a4
                  slt          s1, s9, t5
                  sra          a7, s2, a0
                  add          tp, t4, t4
                  srl          s0, a0, a5
                  sra          s4, s2, s4
                  or           s6, t6, t1
                  auipc        ra, 711991
                  sll          s2, s5, ra
                  srli         a3, ra, 18
                  slli         a7, t4, 21
                  andi         a4, s10, -1318
                  lui          t6, 803015
                  addi         s9, a6, 682
                  xor          a4, a1, a6
                  nop
                  sub          s3, s3, s6
                  and          s11, a5, t5
                  or           s0, s9, t3
                  sub          a4, s3, t6
                  slti         s0, s1, 318
                  srai         s2, gp, 10
                  nop
                  andi         s2, s5, -1698
                  xori         s1, s4, -1066
                  srli         s11, t0, 0
                  xori         ra, t4, -155
                  xor          a4, t5, sp
                  sll          s2, gp, s9
                  slti         s4, t6, -591
                  lui          a7, 203151
                  sltiu        s6, s5, 734
                  sll          s4, a1, t4
                  addi         t2, t0, 187
                  srl          sp, a4, zero
                  slli         t4, a2, 24
                  andi         t3, a7, -706
                  lui          a5, 675089
                  ori          t3, s7, 1450
                  srai         s0, a1, 28
                  slti         ra, a6, -837
                  xor          s11, t5, zero
                  sll          t5, s1, ra
                  or           s2, a4, a0
                  auipc        s0, 690475
                  srli         sp, a7, 14
                  srli         a6, zero, 27
                  slti         s6, t4, 1332
                  ori          s11, a3, -1
                  auipc        tp, 1044367
                  sub          gp, a2, a5
                  or           s2, a0, s2
                  srai         s0, t1, 13
                  xori         s4, s2, 746
                  srl          t3, s10, s10
                  sll          t0, s0, t4
                  srai         s4, s10, 25
                  sll          a6, t2, s1
                  nop
                  addi         a4, s8, -1472
                  addi         s11, s3, 1543
                  or           s1, t1, s2
                  andi         s3, s6, -1309
                  or           a4, t2, s7
                  addi         s3, a0, 1323
                  sll          gp, t0, t6
                  slli         s7, ra, 29
                  or           s10, t1, zero
                  auipc        s0, 665008
                  slti         s3, t0, -1809
                  srai         a6, gp, 0
                  add          s2, t1, s7
                  andi         zero, zero, -1006
                  xor          zero, s7, s6
                  sub          s0, t2, a1
                  sll          s1, a3, a2
                  sll          s10, s5, s6
                  srli         gp, s6, 4
                  lui          s5, 119973
                  add          s11, t5, a3
                  sll          s6, s7, a1
                  nop
                  sll          s9, ra, s2
                  xor          s6, s5, gp
                  sra          a3, tp, s3
                  srai         s6, t0, 11
                  sltiu        s9, a3, -1283
                  auipc        ra, 289869
                  or           a2, t0, s1
                  xori         a2, s3, -18
                  add          a3, t0, s11
                  srai         s11, t5, 28
                  addi         a6, zero, 1549
                  slt          zero, sp, sp
                  srl          s9, s3, s2
                  and          s0, a7, s6
                  sub          a4, s1, s9
                  srli         a6, s2, 28
                  add          t0, s11, a7
                  andi         a4, s0, 334
                  slli         ra, t3, 1
                  xor          a5, t5, a2
                  sll          sp, s8, s5
                  andi         s3, s2, 1415
                  auipc        tp, 545695
                  srai         t2, s2, 11
                  xori         a3, t3, -198
                  sub          s6, gp, gp
                  slti         t3, t3, 1038
                  slli         s4, a0, 24
                  slti         a4, s1, -633
                  lui          s10, 195969
                  nop
                  xor          s7, t3, a6
                  slti         s5, zero, 1578
                  ori          s0, t2, 572
                  srl          a3, t5, s7
                  srl          sp, s7, t4
                  srai         s2, t6, 7
                  srli         s4, s1, 25
                  srli         s4, t5, 7
                  slt          tp, a1, zero
                  lui          a5, 924644
                  slli         sp, s3, 16
                  or           sp, tp, s8
                  sltiu        t0, s4, 644
                  auipc        a6, 1036448
                  xor          a5, t6, sp
                  sltu         s5, a7, a0
                  sub          a5, s5, t6
                  sll          tp, tp, t6
                  slt          t3, t6, t4
                  add          s9, t1, t4
                  nop
                  andi         s0, t0, -994
                  ori          t1, a5, 2
                  sltiu        t6, gp, -585
                  slti         s9, s1, 1864
                  auipc        a3, 764522
                  sltiu        a5, a6, 543
                  sltu         sp, s8, t1
                  and          s6, s7, a4
                  xor          s5, t4, a4
                  addi         t5, zero, -1872
                  and          t1, t1, a7
                  andi         t1, a3, 1650
                  auipc        s7, 871080
                  slt          s10, t2, a1
                  srli         a3, s7, 31
                  srli         ra, s0, 25
                  or           a3, s8, gp
                  add          a5, a0, s7
                  sltiu        s2, tp, -1200
                  sltu         s11, tp, s3
                  addi         s0, a1, 637
                  slti         a5, a3, 1098
                  nop
                  sll          sp, s3, t4
                  srl          s10, s3, s4
                  srli         s1, s3, 26
                  srli         s7, s6, 7
                  sltu         t3, s6, a7
                  xor          a3, tp, s6
                  xori         s0, a2, 1031
                  lui          a7, 940933
                  ori          s1, t4, 1816
                  or           a4, a7, t2
                  sra          gp, a1, t4
                  addi         t5, a6, 852
                  and          t2, a3, t3
                  srai         a6, s4, 18
                  srli         a3, s11, 0
                  ori          a6, t2, 86
                  auipc        s9, 845309
                  xori         sp, t6, 799
                  lui          gp, 98062
                  and          tp, s1, zero
                  sub          s11, a6, s10
                  auipc        s6, 234326
                  sltu         a3, a4, s1
                  and          a6, t3, a5
                  nop
                  andi         t2, s8, -1722
                  slt          zero, s0, a1
                  lui          t0, 938583
                  sra          s0, a7, s3
                  xori         s1, t2, -899
                  or           t0, t0, a5
                  lui          a2, 483308
                  or           a4, a4, s0
                  nop
                  sll          s2, s3, a2
                  andi         t6, a0, -772
                  or           t2, zero, s11
                  addi         t1, t3, -1757
                  slti         tp, s3, -999
                  add          a5, a5, s10
                  slti         s6, t5, 133
                  nop
                  sltu         s1, s10, s1
                  auipc        t1, 505943
                  or           t6, s6, a7
                  nop
                  auipc        tp, 802516
                  lui          tp, 249934
                  sltiu        a5, s1, -708
                  or           s11, s4, s2
                  xori         gp, s2, -891
                  slli         tp, a1, 7
                  and          s5, s4, s7
                  addi         ra, t0, 666
                  sra          a5, a2, t1
                  lui          s11, 419430
                  sll          a7, s11, t3
                  or           a5, t2, a4
                  srl          t2, s9, a4
                  xori         zero, sp, 1946
                  sra          t2, s2, a3
                  and          s2, t2, t5
                  nop
                  sltu         t2, s3, a3
                  nop
                  xori         s10, t6, -1229
                  srli         sp, s8, 10
                  add          s0, s3, t3
                  lui          t5, 661697
                  sub          s0, s5, a1
                  sltu         t1, a2, s8
                  add          t4, a3, s6
                  slti         a6, s4, 946
                  auipc        ra, 608175
                  auipc        s6, 176042
                  addi         s11, s4, -383
                  addi         gp, a2, -1767
                  nop
                  sub          s3, gp, a3
                  slli         t3, s6, 17
                  xor          t5, a6, zero
                  srli         t5, a5, 14
                  addi         s10, t6, 671
                  and          t2, a3, t0
                  xori         a5, t3, -107
                  sltiu        sp, s10, -989
                  sra          s0, t5, s2
                  xori         s6, a0, -1101
                  srai         s6, a7, 13
                  sra          s4, s3, s2
                  addi         t5, a5, 1248
                  sra          sp, zero, a2
                  add          zero, s2, tp
                  xori         a5, ra, -200
                  nop
                  sll          s4, gp, s4
                  or           a7, a2, t2
                  addi         t0, gp, 114
                  and          t5, s0, s3
                  and          s11, t1, s11
                  andi         a3, s9, 1131
                  srli         t1, s5, 18
                  srl          s0, ra, s11
                  srli         s3, s11, 3
                  slt          gp, a7, a6
                  ori          a5, s9, -253
                  auipc        sp, 850533
                  add          t0, t1, a4
                  addi         s6, t5, -293
                  xori         a6, t6, -33
                  and          sp, a3, a0
                  sra          s2, s11, s9
                  auipc        gp, 1039044
                  srli         t1, gp, 9
                  slti         a4, tp, 56
                  srai         a3, s8, 5
                  lui          s5, 661597
                  srai         gp, gp, 24
                  nop
                  xori         s4, sp, 1439
                  lui          t4, 462540
                  sra          s9, s4, s1
                  xor          s3, a7, a4
                  srli         t6, ra, 30
                  srai         t1, a1, 2
                  andi         t4, s10, -2034
                  andi         a2, s4, 1710
                  slti         a2, s7, 673
                  xor          s0, s1, t6
                  add          s3, t0, s5
                  sltu         t2, a6, a6
                  sltiu        s5, s5, -1490
                  sll          s1, s2, t3
                  srli         a6, t0, 28
                  sltiu        s10, s10, 1152
                  sltu         a5, t5, s11
                  srli         a3, zero, 16
                  and          a4, ra, t3
                  sll          gp, a6, tp
                  ori          s10, t5, -459
                  lui          t0, 950814
                  auipc        s9, 342974
                  sra          gp, s7, s0
                  srli         t3, a7, 26
                  nop
                  and          ra, a0, s3
                  slti         a6, s5, 804
                  xor          ra, t5, t4
                  and          zero, s4, s11
                  srl          sp, a1, ra
                  andi         s11, a0, 1874
                  srl          s6, a3, t4
                  sra          s11, s8, s11
                  srai         tp, s3, 12
                  slti         s7, s7, 490
                  slli         gp, s9, 8
                  xori         gp, a3, 1035
                  srl          s0, s8, t0
                  sra          s9, a7, s0
                  sub          t2, s5, a2
                  sltu         s10, s10, s2
                  slti         a3, s0, -53
                  srai         t2, a6, 9
                  nop
                  andi         s10, a2, -1941
                  auipc        zero, 423837
                  addi         a5, a5, -874
                  slti         s0, s2, 1659
                  slti         t2, t1, -1207
                  nop
                  lui          t2, 64695
                  lui          s2, 311792
                  xori         t1, s5, 1261
                  slt          s3, a2, zero
                  sra          t4, t3, gp
                  sltiu        tp, a2, -484
                  slli         t6, a3, 12
                  sltu         s5, s2, t3
                  sltu         s7, s10, s3
                  srai         a2, a1, 22
                  lui          t1, 11462
                  sll          a7, s3, t4
                  auipc        ra, 831383
                  auipc        a4, 206896
                  srai         s9, t3, 16
                  sra          s9, zero, a3
                  xor          t4, s3, t5
                  addi         a5, zero, -129
                  sltu         a4, a5, t5
                  or           gp, zero, gp
                  addi         zero, a2, -254
                  srli         ra, t1, 3
                  sra          t2, s0, t2
                  sub          s1, t3, s0
                  xori         zero, a4, -1766
                  auipc        s2, 675450
                  auipc        t1, 1019266
                  nop
                  srai         t6, s0, 27
                  auipc        s0, 535409
                  xori         a6, a5, 836
                  xori         t6, s1, -401
                  ori          t4, s11, 114
                  slli         t1, s0, 9
                  ori          s4, t2, 546
                  and          a7, ra, s4
                  slti         s2, a3, 2002
                  andi         t6, s5, 419
                  sltu         s11, a2, s3
                  slt          a2, a5, t5
                  xor          s0, t1, s5
                  nop
                  nop
                  and          a5, a2, t5
                  sra          s9, ra, s2
                  sltiu        a3, s9, -737
                  sltiu        t1, s10, 1464
                  srl          s5, s10, t0
                  sub          s3, s4, s8
                  xori         ra, s11, 1787
                  sub          gp, a7, a2
                  srl          a7, s3, s3
                  sub          a5, s10, a0
                  sltu         t3, s3, t6
                  auipc        s5, 300345
                  ori          s10, t4, 468
                  addi         s9, t3, -1602
                  andi         t3, s10, 908
                  slti         a2, a0, -1506
                  sll          a7, s4, s1
                  xori         s6, a7, -1975
                  srli         a7, gp, 28
                  srl          s5, a1, s11
                  xor          s2, a6, t6
                  sll          s7, s11, t6
                  xor          s10, a4, tp
                  and          gp, s0, a3
                  xor          s2, sp, a3
                  sub          s10, s2, zero
                  slti         a7, a0, -1123
                  sub          s4, s7, s6
                  ori          t1, ra, -638
                  auipc        zero, 289398
                  sltiu        s11, s0, -68
                  ori          sp, t2, -1959
                  slti         t4, ra, -746
                  srli         gp, a1, 26
                  or           s0, a6, a1
                  srli         s0, t3, 7
                  ori          t4, s2, -319
                  andi         a4, t4, -1817
                  lui          a2, 775024
                  srai         a6, s5, 20
                  xor          s9, a7, zero
                  andi         zero, a6, 506
                  sra          s6, s1, tp
                  addi         t0, t0, 2025
                  lui          a4, 780226
                  nop
                  xori         tp, a2, -1488
                  auipc        t0, 78485
                  ori          t6, s0, -132
                  srl          s5, zero, a2
                  ori          a3, a7, -1087
                  add          s2, a3, s3
                  slt          t5, t4, ra
                  add          t1, a7, t6
                  auipc        s6, 258632
                  lui          t1, 1008192
                  slti         gp, s3, -608
                  lui          t3, 652285
                  auipc        s0, 96625
                  sltu         gp, a6, gp
                  nop
                  slti         s0, a1, 1109
                  slt          t5, a7, s6
                  slli         sp, t6, 6
                  slti         zero, a6, 1211
                  andi         s5, s8, 1330
                  or           s1, s9, s2
                  sltiu        s10, a4, -814
                  sra          sp, s4, s7
                  srai         s7, zero, 0
                  nop
                  or           s10, s8, t1
                  slt          t3, s9, gp
                  nop
                  srl          tp, t2, a3
                  sub          t0, tp, s6
                  srli         s1, t6, 26
                  xori         t5, s7, 381
                  sltiu        s7, t0, 1693
                  srl          s9, gp, a7
                  srai         a6, t1, 21
                  andi         sp, a3, -1047
                  ori          s4, s3, -1318
                  nop
                  sra          a4, a1, ra
                  srli         t5, a3, 8
                  lui          t1, 713404
                  lui          s11, 898405
                  xor          a4, s8, s4
                  slt          t4, t3, a2
                  xori         tp, a4, -458
                  slli         s0, t5, 1
                  slti         t3, s10, -1398
                  srli         t2, s5, 30
                  slli         a3, ra, 23
                  slti         t0, a5, -254
                  sra          t2, t5, gp
                  and          a6, t4, s6
                  or           s9, t3, s10
                  sra          t3, t0, t0
                  slt          s11, a3, s11
                  sltiu        s10, s8, -996
                  addi         s0, t0, 1094
                  auipc        s5, 513986
                  slti         s5, a0, -1369
                  srl          s5, a6, t0
                  and          a3, s5, tp
                  srli         s3, s6, 9
                  srl          s7, sp, s9
                  srai         s11, a3, 1
                  sll          s10, s4, sp
                  add          zero, t6, a0
                  and          s7, a6, s7
                  add          t2, s4, t3
                  andi         a7, s9, -1562
                  nop
                  slti         s10, t2, -506
                  srli         sp, s7, 4
                  slli         ra, s3, 16
                  slt          s11, s1, s2
                  sra          s11, a3, t3
                  nop
                  sub          zero, s6, t1
                  lui          s0, 880590
                  lui          s11, 934314
                  xor          t1, s0, s9
                  auipc        sp, 393281
                  auipc        a2, 697995
                  auipc        tp, 447429
                  auipc        a6, 213918
                  xori         t1, s2, 277
                  xor          zero, t1, a2
                  ori          a3, t4, 1094
                  add          ra, s3, s11
                  auipc        a2, 703603
                  xor          a2, s0, a3
                  andi         gp, a3, 1173
                  addi         s10, s6, 829
                  addi         s2, s0, 153
                  xor          s10, a6, s9
                  add          t2, tp, a1
                  add          a3, a6, t4
                  xori         s9, s1, -261
                  addi         ra, a3, -919
                  andi         a6, a2, -484
                  sra          s10, s4, t5
                  lui          t5, 803717
                  slli         a7, t2, 20
                  slli         s10, t1, 9
                  or           t6, s1, a1
                  addi         s11, t6, 1225
                  srai         a5, s9, 12
                  andi         a2, a3, -677
                  sltiu        a3, s6, 732
                  auipc        a4, 474929
                  andi         a7, s5, -1800
                  sra          t1, t1, s10
                  sll          s3, t3, s7
                  or           t4, a3, a1
                  auipc        a6, 279909
                  srl          s2, t5, s10
                  auipc        a4, 88591
                  slli         a5, t0, 31
                  nop
                  sub          t3, a1, zero
                  addi         a7, a6, -1147
                  slt          tp, t5, s5
                  sub          s6, a6, a5
                  srai         t3, s3, 21
                  addi         t3, gp, 919
                  slti         gp, tp, 1252
                  srli         a6, t2, 8
                  srl          sp, t2, t0
                  xori         a3, a5, -1475
                  sra          t3, t1, s2
                  or           s0, s0, a4
                  add          t5, sp, s8
                  and          t1, a1, a3
                  srai         s3, s2, 8
                  addi         t6, a5, -92
                  sll          sp, s4, a3
                  or           sp, a4, s1
                  auipc        tp, 853622
                  sltiu        t0, t0, -754
                  nop
                  srl          s4, s3, a7
                  srli         a3, t5, 25
                  sra          t5, a0, s9
                  xor          s9, t2, sp
                  andi         s10, tp, -1712
                  slt          s6, t3, gp
                  srli         s1, s11, 16
                  slt          t0, sp, s6
                  ori          sp, a0, -458
                  sltiu        t2, t1, 197
                  andi         tp, t5, -326
                  ori          s10, s10, 474
                  and          t2, a2, t3
                  srai         s11, s4, 13
                  auipc        t4, 10148
                  sra          a5, t1, t6
                  sltu         t6, a5, s3
                  xori         s3, s4, -921
                  sll          tp, s3, zero
                  nop
                  addi         a6, a7, -441
                  sltiu        s0, a7, 1326
                  or           t4, a1, a0
                  sltiu        s3, t6, -962
                  slti         s6, a3, 1707
                  ori          a3, a0, 1065
                  ori          t3, t3, -1793
                  or           t2, t3, sp
                  sltiu        s11, t4, -412
                  srai         s3, s11, 6
                  slli         s1, a1, 0
                  sltiu        a2, s11, 1349
                  auipc        s11, 84488
                  srli         t2, s6, 24
                  lui          s10, 861188
                  srl          t6, s8, s3
                  sra          s7, s1, a2
                  srl          s1, t3, s10
                  srl          s11, zero, s9
                  addi         s1, a2, 218
                  lui          a6, 572853
                  sltu         gp, a5, s9
                  andi         s4, a5, -1720
                  auipc        a2, 18369
                  slt          s7, t3, s3
                  sltu         a6, a5, gp
                  sltiu        zero, sp, 1970
                  add          s2, t0, a7
                  add          sp, a4, tp
                  auipc        s4, 380011
                  slt          a6, a4, s9
                  srai         a7, a6, 5
                  andi         t5, a6, -1754
                  slt          t5, a5, t3
                  slli         a2, ra, 6
                  xori         s7, a3, 103
                  srai         t1, s2, 7
                  lui          a2, 142966
                  addi         s0, t3, -410
                  addi         t4, t5, 2045
                  addi         s3, a3, 1664
                  srl          t0, a2, s4
                  lui          s11, 296304
                  slt          tp, a6, s3
                  ori          t3, a3, 1895
                  srli         s11, s4, 14
                  srai         t2, sp, 18
                  sltu         s4, s11, a6
                  xor          a2, s0, a4
                  xor          t4, t0, s0
                  and          zero, s6, a4
                  srl          a5, ra, t3
                  addi         s6, gp, -1511
                  slli         s7, a5, 1
                  or           s9, a3, a6
                  srai         sp, t0, 2
                  add          s5, a4, t0
                  slti         a2, a1, -1366
                  ori          s10, s5, -1388
                  add          t2, a5, t2
                  or           s11, t0, gp
                  nop
                  andi         sp, t6, 1155
                  srai         s7, zero, 26
                  or           t4, tp, t0
                  andi         a7, a4, -196
                  nop
                  and          s10, s7, t4
                  nop
                  or           a6, a4, a3
                  srli         a4, s10, 10
                  or           a5, gp, t5
                  or           s7, a5, t3
                  lui          s0, 317849
                  add          t6, zero, s9
                  sub          a4, ra, t1
                  slli         a4, tp, 23
                  add          t1, sp, a4
                  auipc        a6, 803270
                  and          s11, s9, s6
                  or           a2, sp, a2
                  srl          tp, a0, a0
                  auipc        s5, 958440
                  slli         t1, t5, 22
                  slli         zero, ra, 11
                  and          s6, s0, t2
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_20
                  li           t3, 0x0
                  li           a2, 0x537ac176
                  li           t0, 0xffffffff
                  li           s6, 0x80000000
                  li           t4, 0xf7d64dfe
                  li           ra, 0x7831af6f
                  li           gp, 0xffffffff
                  li           tp, 0xd96c5b5a
                  li           a3, 0x0
                  lui          a2, 627536
                  lui          a2, 737884
                  lui          t0, 96024
                  auipc        t3, 273348
                  lui          a2, 174994
                  lui          t0, 587952
                  auipc        s6, 361767
                  lui          gp, 71352
                  sub          a3, s6, a3
                  lui          tp, 306413
                  nop
                  auipc        t4, 134132
                  add          s6, tp, t3
                  add          s6, ra, t0
                  addi         a5, t4, 1418
                  sub          a2, a2, a5
                  auipc        tp, 371470
                  addi         t3, ra, 40
                  addi         ra, tp, 2039
                  auipc        tp, 295960
                  lui          s6, 270251
                  addi         t4, s6, 645
                  nop #end riscv_int_numeric_corner_stream_20
                  slt          a4, a5, a4
                  add          t5, t2, t2
                  srli         s3, a1, 6
                  sra          s11, ra, t0
                  slti         t6, gp, -1828
                  auipc        s9, 813709
                  auipc        gp, 970809
                  sltiu        sp, gp, 538
                  and          s4, s5, s6
                  add          a4, s0, a3
                  slli         a3, a3, 9
                  slt          t0, a6, a0
                  or           s10, s8, a1
                  sltiu        s0, t6, -1841
                  slt          t6, t2, a7
                  addi         s3, tp, 1473
                  ori          t2, s8, -292
                  xor          zero, s1, s0
                  xor          a4, a6, a3
                  addi         s10, s11, 810
                  srli         s5, a2, 27
                  sub          s2, s6, a4
                  sltu         a2, s0, s4
                  sltu         s2, sp, s7
                  or           sp, a0, a7
                  srai         tp, a1, 7
                  xor          a5, t6, tp
                  lui          s0, 930081
                  or           s0, t1, sp
                  sra          t5, tp, t4
                  addi         a4, s10, 2007
                  slli         t5, t3, 25
                  and          a7, s2, s4
                  slti         s6, s10, -462
                  srai         a5, s0, 5
                  srai         ra, s8, 8
                  sltu         tp, a6, ra
                  ori          t4, t0, -1242
                  srai         a6, s4, 7
                  or           s5, t4, t0
                  slt          t0, t2, t0
                  xori         s9, a5, -1559
                  sub          t5, t0, t5
                  sub          gp, s7, s2
                  ori          ra, tp, -1475
                  sltu         t0, t1, s7
                  sra          zero, s1, a7
                  xor          s0, s7, s11
                  and          t1, t3, s7
                  sll          s10, s4, tp
                  addi         sp, t6, -1649
                  xori         a5, t2, 904
                  xor          t0, s8, t4
                  auipc        s5, 714266
                  sub          s2, a5, s7
                  sltu         a7, t6, gp
                  sra          tp, t6, t6
                  sltiu        t2, s8, 1516
                  slti         s0, t6, 488
                  lui          a6, 736508
                  lui          a5, 89397
                  sra          s6, s8, a2
                  ori          s4, t2, -400
                  add          s1, t6, a5
                  xori         zero, s3, 182
                  srl          s9, a6, gp
                  slli         sp, s0, 25
                  addi         t3, s8, -1880
                  srl          s9, a2, s10
                  srai         zero, t3, 18
                  xor          a2, t6, t0
                  sltiu        t2, t4, -126
                  or           a5, gp, s2
                  nop
                  sltu         s9, sp, t3
                  or           s0, t6, t4
                  auipc        a6, 46735
                  sltu         t0, s0, s8
                  sub          a4, t5, s3
                  srl          tp, t3, t1
                  sltiu        a6, t4, -122
                  sll          a7, t5, gp
                  sll          ra, s3, tp
                  auipc        s0, 738420
                  slti         tp, a7, -476
                  slti         a6, tp, -1014
                  srli         a7, t6, 31
                  sll          s11, t4, t1
                  sltiu        s10, t6, 534
                  and          a7, s5, s9
                  sll          t5, s3, a6
                  srl          sp, tp, s10
                  and          a7, s2, s9
                  srai         zero, t4, 29
                  srli         s9, s2, 0
                  xor          s10, ra, a6
                  sra          s5, a4, t3
                  sra          s2, t6, s6
                  nop
                  auipc        s0, 124981
                  or           t5, gp, s9
                  slli         a5, t0, 18
                  srai         tp, s4, 9
                  xori         tp, tp, -1328
                  sra          t3, a1, a1
                  srli         t3, t1, 21
                  sra          t3, s9, s5
                  slti         s10, t3, 95
                  andi         a3, t6, -1866
                  and          sp, sp, t2
                  andi         ra, s10, 676
                  sra          t3, a4, t6
                  slli         s11, s2, 10
                  sltiu        t3, a5, 517
                  xor          ra, a6, a7
                  sra          a6, s4, s0
                  slti         ra, t2, 1774
                  srai         s1, s7, 17
                  slt          sp, a4, a3
                  and          t0, t4, s7
                  sltu         t3, t3, s1
                  srai         s0, s3, 28
                  sub          zero, s9, s7
                  and          s11, a1, s0
                  add          t2, a6, s4
                  sltiu        t3, a4, -1032
                  slt          gp, t0, t3
                  nop
                  add          a7, sp, t0
                  slli         s9, a2, 27
                  and          s10, t3, s8
                  xori         tp, s2, 637
                  or           t0, t6, s0
                  slti         s1, a1, 988
                  sltu         a5, sp, t0
                  sub          s10, a5, t0
                  nop
                  add          gp, s7, s11
                  or           a5, s8, a5
                  andi         s5, gp, -1424
                  xor          s5, s1, s3
                  srai         s3, a4, 11
                  and          a2, a2, t1
                  auipc        s4, 970994
                  slti         sp, a6, -1070
                  xori         a3, s10, 1129
                  sltu         a7, a5, s7
                  sra          a4, s11, t2
                  sltu         s11, ra, a0
                  xori         s0, s6, 72
                  ori          s9, a6, 158
                  andi         s11, s3, 1233
                  slt          a4, s9, a2
                  ori          a2, a0, 468
                  addi         s11, t3, 1489
                  xori         s4, t0, 78
                  and          s5, a6, gp
                  sub          s1, a7, s4
                  andi         tp, t2, 239
                  xori         ra, gp, 1252
                  add          t6, tp, tp
                  xori         t3, a3, -743
                  srai         t0, s0, 21
                  or           gp, t3, t5
                  srai         s6, s7, 12
                  nop
                  nop
                  slt          t0, s6, s4
                  and          s6, gp, gp
                  nop
                  andi         s0, a6, 774
                  and          a4, a2, s7
                  srli         s1, s6, 6
                  sub          t4, a6, a4
                  srai         gp, t0, 2
                  sltiu        a3, s7, -367
                  xor          t4, a3, s3
                  xori         s3, s11, 932
                  sra          a6, a0, a3
                  sub          s5, s4, zero
                  xori         a4, t2, 1478
                  srai         t5, t0, 23
                  addi         s4, a4, 544
                  sltu         a7, tp, a7
                  auipc        gp, 815646
                  and          s0, s2, t5
                  lui          s1, 95726
                  or           s11, s8, t5
                  sltiu        t3, s11, 1792
                  xori         s9, s9, -938
                  xori         tp, s8, -1221
                  nop
                  srl          t1, s10, a5
                  slli         t4, a3, 30
                  srl          a7, zero, a3
                  sltiu        t0, t0, 530
                  slti         s4, s10, -573
                  lui          sp, 663331
                  add          a7, a4, a6
                  xori         a3, s4, -1976
                  nop
                  sltiu        s5, s4, -1113
                  srli         t0, a5, 22
                  ori          a6, a2, 1602
                  xor          t6, zero, t0
                  auipc        a7, 656107
                  xor          s10, s2, s2
                  sra          a3, s9, a6
                  or           s9, s6, s7
                  addi         tp, s0, 757
                  srli         t3, a0, 14
                  srl          gp, ra, t2
                  andi         s9, ra, -1702
                  sltiu        s5, t4, -50
                  slt          t0, s9, s0
                  addi         a5, s2, -427
                  slli         t3, t5, 30
                  xor          t2, a6, s9
                  addi         t0, t4, -534
                  auipc        gp, 907911
                  sll          t3, a6, a2
                  slti         t1, s1, -120
                  sll          s4, s11, a6
                  sltu         a4, s6, gp
                  addi         s3, s2, -173
                  andi         t1, s10, 1186
                  sltu         a4, tp, a7
                  sll          s11, s9, t2
                  and          s6, t2, a0
                  slti         s4, t5, -1619
                  slt          ra, s11, s4
                  andi         a6, t0, 1706
                  addi         gp, tp, -1190
                  ori          s10, a7, 420
                  slti         gp, s9, 65
                  sra          tp, t1, s4
                  slli         tp, s0, 4
                  slt          s9, s4, gp
                  slti         a4, a6, 1996
                  and          t4, zero, a0
                  ori          t6, s8, -987
                  ori          t3, a1, -1281
                  auipc        s11, 176346
                  slli         sp, sp, 30
                  addi         s5, tp, 77
                  nop
                  xori         s7, s5, 302
                  srai         t4, s7, 18
                  slt          a6, a7, t0
                  slli         s2, a5, 10
                  xor          t0, zero, gp
                  slli         s10, s4, 21
                  sub          s0, s7, zero
                  andi         t0, sp, 343
                  slti         t2, t5, 237
                  xori         t2, t3, -1243
                  sra          a7, a5, a7
                  slt          s1, a0, ra
                  xor          t1, s8, sp
                  srai         s5, s10, 12
                  or           s9, s2, a7
                  srli         s10, t3, 25
                  sltiu        t1, a4, -804
                  and          s9, t1, a7
                  srai         s3, a5, 23
                  sub          a5, t6, s8
                  ori          t5, s8, -1244
                  add          a6, zero, s0
                  sltiu        sp, s6, -828
                  addi         a7, sp, 1482
                  or           s6, s2, s6
                  slt          s7, t5, s9
                  xor          s11, t0, s2
                  sltiu        gp, s7, 1100
                  sll          s11, zero, t1
                  and          s10, tp, t3
                  xor          s4, s6, t3
                  slti         t3, sp, 1654
                  sll          s11, s0, s8
                  slti         s11, s11, 578
                  srl          s1, tp, s4
                  srli         a3, t1, 11
                  slli         gp, a3, 25
                  sra          t6, s1, a1
                  srai         s3, t1, 4
                  auipc        s6, 582648
                  sra          s5, t0, zero
                  slt          s7, t4, t0
                  slti         s5, s8, -1615
                  auipc        gp, 51568
                  sltu         ra, s6, tp
                  auipc        zero, 560239
                  addi         a4, t5, -670
                  addi         t3, t6, 1213
                  andi         a3, s1, 1015
                  sra          t4, gp, sp
                  andi         s11, s11, 1214
                  or           t5, t6, s3
                  slti         a7, a0, -403
                  and          sp, ra, s3
                  sub          t5, s11, sp
                  or           a5, a5, s3
                  xor          s11, s9, gp
                  slli         s5, s6, 27
                  srai         a3, s7, 6
                  srai         t3, a6, 29
                  srli         t1, sp, 31
                  xori         t1, s9, -1905
                  nop
                  sll          s1, sp, s5
                  srli         t0, ra, 22
                  or           a4, a5, zero
                  srli         s9, a0, 16
                  xor          s10, a7, a7
                  slt          s6, a2, t3
                  sll          a4, a1, s3
                  and          gp, t5, s5
                  sll          sp, zero, s6
                  sltiu        s3, t0, -667
                  andi         a2, gp, 1756
                  or           s10, s10, a0
                  add          s5, s5, t2
                  ori          t5, t5, -1990
                  and          s4, t4, s3
                  addi         s1, t2, 1104
                  sub          s0, s11, a1
                  srai         s0, a5, 17
                  xori         a6, s11, 316
                  sll          ra, s9, s6
                  sub          s4, t5, t2
                  or           s4, s1, a1
                  ori          s3, s3, 1274
                  sub          s9, a3, s11
                  slti         t1, s10, 1572
                  sll          sp, a6, s3
                  auipc        s11, 397164
                  xori         s4, s8, 1912
                  srai         s7, s2, 25
                  xor          gp, a3, sp
                  xori         t0, tp, -1208
                  or           s9, s0, a2
                  srai         s4, gp, 17
                  sll          t6, s5, t6
                  add          t2, s5, t6
                  slli         a3, zero, 14
                  add          a5, a2, a0
                  and          s7, gp, s6
                  xor          a7, s10, sp
                  andi         s10, t5, -1185
                  srli         t4, t0, 8
                  addi         s7, sp, -1729
                  lui          s3, 555149
                  auipc        s1, 186066
                  sltu         a7, t0, t5
                  and          zero, s6, a1
                  ori          sp, s11, 2023
                  sra          gp, sp, s6
                  addi         s6, a5, 238
                  or           gp, ra, a5
                  sltu         a2, a7, a4
                  sltu         a6, t4, s1
                  srai         a5, a7, 10
                  auipc        ra, 382594
                  sltiu        a6, a5, -1811
                  slli         t4, s6, 5
                  addi         s5, a6, 258
                  add          a7, a2, t0
                  sra          s11, s11, a1
                  nop
                  sltu         t4, zero, a5
                  sra          s3, s8, a3
                  addi         t1, t5, 1342
                  srai         s6, a5, 9
                  xor          tp, sp, a5
                  slli         t0, t6, 14
                  slli         t4, a2, 28
                  or           s1, a7, s0
                  add          s6, s8, a5
                  slti         t3, a5, -1710
                  sub          t4, s7, a3
                  srl          t3, zero, s7
                  slt          gp, sp, s8
                  sub          a3, a5, t5
                  addi         t2, tp, 1188
                  xori         tp, zero, -1976
                  or           ra, sp, s11
                  slt          t4, s0, t1
                  srl          t3, t6, s3
                  add          s6, s2, t1
                  xori         t1, s10, -1762
                  nop
                  slli         gp, t2, 17
                  nop
                  slt          s11, s11, a0
                  nop
                  addi         s1, s9, 1317
                  ori          s4, s4, 878
                  slt          a4, t1, s10
                  sltu         s9, t1, zero
                  slli         s2, a4, 30
                  sltu         s10, a6, s8
                  and          zero, zero, a0
                  slt          t2, s6, t6
                  or           t5, s0, s9
                  sra          a4, s0, zero
                  sra          s9, a3, tp
                  ori          s9, a0, -252
                  sll          t3, t3, s6
                  slli         s0, t4, 21
                  auipc        s10, 333173
                  srli         s11, a3, 26
                  sltiu        s0, a0, -990
                  sub          t4, s7, zero
                  ori          t0, a0, -1550
                  slti         a6, a5, -509
                  nop
                  sll          t3, s1, t4
                  or           a3, s6, s1
                  and          t4, t4, s3
                  sll          t5, a7, s9
                  addi         a4, s0, -651
                  and          a7, gp, s1
                  slli         t1, s8, 6
                  sltiu        t4, s6, -1278
                  sub          s9, t3, s4
                  ori          s0, s7, 1060
                  slt          a7, a0, t2
                  xori         s7, t5, -796
                  sll          s4, t6, a0
                  slt          s4, a3, t0
                  lui          ra, 987176
                  slli         t2, s2, 28
                  xor          t3, s3, ra
                  slti         s0, s9, 701
                  add          s11, t4, s3
                  andi         a2, sp, -672
                  and          s1, ra, s7
                  sub          a4, s7, zero
                  nop
                  slt          s10, a4, a3
                  slti         a2, tp, -604
                  nop
                  sll          zero, t2, s6
                  slli         t3, a7, 31
                  slti         sp, t1, 908
                  andi         a4, s5, 581
                  lui          t5, 723482
                  sra          zero, t5, zero
                  addi         s4, s10, 1576
                  slli         a4, zero, 11
                  add          a5, a5, a0
                  addi         a4, a3, 5
                  addi         gp, a4, -1335
                  sll          t4, s8, s3
                  lui          s6, 582850
                  srli         t3, t2, 9
                  andi         t2, s7, 1099
                  andi         a7, s10, -1170
                  sltiu        a7, t1, 166
                  xor          s5, a0, t1
                  sltu         t3, a7, s11
                  xor          a5, a6, sp
                  sltu         a6, s2, t6
                  add          t5, tp, a2
                  sll          s11, t3, t4
                  add          gp, a6, t3
                  or           zero, s7, a6
                  lui          t1, 23069
                  sra          sp, t4, s2
                  sub          s10, s6, sp
                  slti         t2, s6, -269
                  slt          s5, gp, s0
                  lui          s7, 580289
                  slt          s9, s9, s1
                  and          s0, s3, t5
                  or           t3, t3, s5
                  srai         s10, s8, 15
                  nop
                  xori         t0, s5, 1619
                  slli         s1, a3, 7
                  lui          t5, 1022678
                  xor          a2, a4, a2
                  sll          a5, a4, s0
                  li           a5, 0xe54dc27d #start riscv_int_numeric_corner_stream_32
                  li           s2, 0xffffffff
                  li           t0, 0x0
                  li           s4, 0x63d0d08f
                  li           s1, 0x9a374745
                  li           a4, 0x80000000
                  li           a6, 0x80000000
                  li           gp, 0x80000000
                  li           s0, 0x0
                  li           s10, 0x0
                  lui          s0, 525311
                  add          gp, s10, s0
                  add          s1, s4, s10
                  lui          t0, 715936
                  auipc        s10, 585901
                  nop
                  nop
                  nop
                  lui          s10, 225031
                  nop
                  addi         s1, gp, 744
                  add          a4, s10, t0
                  nop
                  auipc        t0, 592766
                  addi         s0, s4, 484
                  lui          s0, 207372 #end riscv_int_numeric_corner_stream_32
                  slt          s5, s4, tp
                  andi         s0, a7, -79
                  srl          tp, a0, s8
                  srli         t5, sp, 23
                  xor          sp, s9, s4
                  slli         tp, t2, 17
                  slt          a7, t0, s4
                  xor          s10, s5, s8
                  and          a6, t6, s1
                  slt          t0, a3, s2
                  auipc        s2, 966347
                  xori         t1, t6, 931
                  nop
                  add          t3, t2, t2
                  srai         a5, t6, 14
                  slli         s1, a0, 10
                  sll          a6, s0, gp
                  srai         sp, s8, 6
                  ori          s2, a6, 1890
                  sra          a7, a3, ra
                  sll          t0, sp, a1
                  slti         ra, sp, 277
                  srai         a2, s10, 13
                  lui          t0, 295335
                  andi         gp, a2, 200
                  nop
                  xori         t2, t3, -1300
                  ori          a7, s5, 354
                  addi         s0, s2, -164
                  xori         s3, s11, -883
                  srli         s11, t4, 26
                  ori          t3, a5, 318
                  srai         t6, t4, 14
                  addi         t3, a0, 1716
                  or           sp, t5, s9
                  add          t0, s8, s3
                  auipc        tp, 90943
                  or           s0, t6, s4
                  sll          s11, a4, a7
                  addi         s0, t3, -1087
                  add          gp, t5, gp
                  srl          a6, a7, s4
                  slt          s1, a0, a2
                  or           zero, s4, a0
                  xori         s4, gp, 1285
                  sra          a3, a3, s9
                  auipc        t4, 994827
                  sltiu        s0, s5, 1783
                  slt          gp, t5, s9
                  xor          s7, a2, t3
                  or           s10, s0, s6
                  slt          s6, a0, zero
                  sra          s4, s11, s6
                  slti         s1, a6, -1580
                  sra          s6, a2, sp
                  slti         ra, sp, 1076
                  slli         t2, a4, 23
                  or           a3, t3, t1
                  sltu         s7, s3, t3
                  lui          s0, 257950
                  and          s5, s5, t4
                  xori         s6, gp, 669
                  sub          s5, s5, s3
                  or           a4, a3, t3
                  nop
                  andi         a2, s11, 904
                  srai         a2, a5, 15
                  sll          s0, a7, t4
                  sltu         t4, t6, t1
                  srl          s10, t3, s11
                  sub          s10, t5, s5
                  or           a7, sp, t2
                  srai         s0, s11, 10
                  addi         sp, a3, -1375
                  lui          gp, 552938
                  sll          s0, ra, t1
                  and          sp, s10, a5
                  srai         gp, s8, 12
                  sltiu        sp, a3, 78
                  srli         s1, s5, 10
                  nop
                  auipc        t4, 868496
                  slli         gp, a4, 20
                  or           a6, zero, s7
                  srl          t1, a0, t4
                  srli         s9, a6, 17
                  srli         s6, s1, 9
                  addi         tp, s6, 1350
                  slt          a7, a2, a6
                  slti         t3, zero, 222
                  and          s1, s2, s1
                  xori         s4, a3, -842
                  xor          a6, t1, t4
                  lui          t3, 606291
                  add          s9, a4, s5
                  and          s9, t6, s11
                  sltu         s0, tp, a2
                  add          s3, t3, s1
                  or           t6, t1, a5
                  nop
                  srl          t1, a3, s8
                  sltiu        a2, s7, 954
                  or           s7, s10, t5
                  add          gp, t2, s1
                  slli         s4, s3, 13
                  nop
                  sll          s3, a5, s1
                  nop
                  addi         s3, a4, 1669
                  srai         sp, s9, 0
                  sub          sp, s9, s10
                  or           s7, t1, t2
                  srai         gp, s7, 22
                  srl          s10, t2, a2
                  sltiu        t3, t3, -818
                  sltiu        s6, t1, 1089
                  xori         t3, a5, -39
                  auipc        a6, 820071
                  slli         t0, a1, 15
                  xor          t2, a2, s1
                  srai         s6, t0, 13
                  addi         zero, s5, -871
                  slt          a5, a5, t1
                  add          ra, a1, a3
                  ori          s2, s5, 1994
                  sub          s0, s6, s0
                  nop
                  sra          s4, s11, t5
                  add          t5, s11, sp
                  andi         t6, s9, -1998
                  andi         s10, a2, -98
                  auipc        t2, 634269
                  sltu         s7, s5, s9
                  add          zero, a2, tp
                  add          a7, a4, s2
                  and          s0, t4, t5
                  slli         s11, t1, 18
                  srai         s7, a3, 5
                  srai         a6, t6, 5
                  andi         s5, ra, 689
                  xori         s7, gp, -59
                  srli         sp, s8, 19
                  srli         s3, t5, 26
                  addi         s0, s1, 2004
                  srai         s3, s10, 26
                  add          a7, a1, t3
                  sra          t5, s8, a6
                  sra          zero, s11, a2
                  sra          t0, t2, a7
                  ori          s0, s3, 1258
                  slli         a2, tp, 27
                  addi         t1, ra, -1790
                  sll          s10, s10, ra
                  srl          s9, s10, s3
                  srl          s0, a2, gp
                  sltu         s9, t4, s0
                  slt          a4, s2, s5
                  sub          s3, a7, t1
                  add          s1, s10, a6
                  slt          t2, a3, s2
                  sll          t4, a7, a5
                  sll          s10, a7, s7
                  sll          t3, s11, tp
                  srli         s0, a0, 20
                  slti         tp, a0, -1183
                  or           s7, s7, s1
                  nop
                  srli         t6, a1, 2
                  xor          a3, t1, s10
                  slli         a5, s5, 5
                  andi         t0, s1, 1310
                  auipc        a3, 673552
                  sub          a2, t0, s8
                  auipc        t4, 973636
                  andi         t3, s2, 696
                  andi         t6, t5, -1605
                  srai         t3, s10, 10
                  sll          s0, s8, s10
                  addi         t2, s1, 936
                  srl          s3, s9, s3
                  slti         a5, a0, -195
                  sll          t3, s8, t2
                  xor          t2, a5, s4
                  or           a5, s10, s10
                  sra          s2, s8, a0
                  xor          a2, t1, t6
                  sll          t6, a5, a1
                  sra          s11, a4, gp
                  srli         a2, t4, 24
                  lui          t0, 846352
                  slli         t3, t4, 8
                  sltu         s10, a1, t2
                  or           s0, t3, tp
                  or           tp, t3, sp
                  slti         t1, t6, -507
                  nop
                  or           a3, s8, a7
                  and          t4, s4, s3
                  andi         s7, sp, 1674
                  sra          a6, sp, s7
                  nop
                  nop
                  slli         s1, a4, 12
                  sub          t2, t2, tp
                  lui          s9, 27851
                  srai         s0, s2, 9
                  auipc        gp, 679641
                  xori         s0, t4, -1169
                  sltu         gp, gp, s4
                  sra          s11, s2, t4
                  or           t6, s5, ra
                  or           sp, s8, s8
                  sra          a3, t2, t5
                  sra          s11, s1, tp
                  sra          s11, a0, s4
                  sltu         s11, s3, s11
                  addi         a3, t4, 573
                  andi         a2, s7, -1808
                  auipc        gp, 608912
                  sub          gp, a4, t4
                  sub          s4, tp, s5
                  xor          a2, gp, t0
                  srl          gp, t3, s11
                  and          t0, zero, s0
                  and          t5, s8, gp
                  srli         a2, sp, 25
                  and          s0, t5, t3
                  srl          s7, t1, s10
                  sll          s9, s7, t1
                  slti         gp, s11, 1412
                  srl          t0, s3, s2
                  srl          zero, tp, gp
                  nop
                  add          zero, s2, t0
                  add          s10, s4, s8
                  sltu         gp, t3, s6
                  srl          a6, s7, gp
                  srl          tp, s9, s7
                  auipc        ra, 485491
                  add          gp, s8, ra
                  slti         a2, a4, 1367
                  andi         a4, zero, 717
                  add          s11, s11, t3
                  auipc        s1, 574796
                  sltu         gp, s3, a2
                  nop
                  nop
                  sltu         t4, zero, s4
                  lui          t4, 21703
                  sra          s0, s1, tp
                  srli         s7, a3, 26
                  or           a5, t6, s9
                  sub          a6, t5, a5
                  srli         a4, s8, 15
                  sltu         a3, s7, s8
                  srai         a3, a1, 14
                  addi         a3, t0, 1225
                  or           a3, a5, gp
                  auipc        a2, 299051
                  srl          s9, a7, s5
                  slli         a6, t2, 9
                  sll          s5, s9, s11
                  slt          t0, a1, s1
                  add          s2, a3, a6
                  xori         t1, t0, 352
                  slti         a7, sp, 1414
                  sltiu        s9, s1, -446
                  slti         gp, s4, 119
                  lui          t4, 126752
                  srli         t3, t0, 23
                  slli         s7, a1, 22
                  sltiu        s11, a1, -1757
                  slli         t4, t4, 29
                  srl          a3, a2, t3
                  ori          sp, gp, 499
                  slli         s1, t4, 15
                  slt          zero, a2, s2
                  xori         s5, sp, 1320
                  slt          s5, t5, s8
                  nop
                  sub          t3, s7, zero
                  srli         gp, a4, 31
                  xori         tp, t3, -823
                  auipc        t1, 185177
                  sub          s11, a4, zero
                  add          a4, a6, t3
                  nop
                  slt          s1, s2, t0
                  andi         a3, s10, 2021
                  auipc        s6, 208855
                  srl          a7, s11, t1
                  sltu         t5, s1, a7
                  or           tp, a2, ra
                  addi         s9, t3, 1091
                  auipc        t1, 39259
                  add          zero, t6, s5
                  srl          a4, t2, s4
                  lui          s6, 186874
                  lui          s9, 160557
                  sltu         gp, a1, zero
                  andi         a3, s7, 110
                  slti         a3, t2, -258
                  slti         gp, s4, -1503
                  sltiu        s6, t4, -1110
                  srli         s3, s5, 18
                  andi         s0, a0, 1434
                  slli         s5, s10, 7
                  addi         s11, gp, 1863
                  nop
                  auipc        s10, 1005770
                  sub          s7, a4, t5
                  srl          t3, a1, s1
                  slli         a6, s5, 24
                  srl          t1, s11, a6
                  slt          s7, s3, t2
                  xori         a5, s1, -960
                  slti         a3, s2, -1182
                  xori         s5, a0, -264
                  srli         a2, sp, 29
                  xori         s4, s9, 159
                  slli         t5, a2, 0
                  sra          t6, a0, s2
                  nop
                  andi         t2, t6, -1534
                  lui          s6, 539975
                  sll          ra, s2, zero
                  xori         t3, t4, -1213
                  lui          s7, 708107
                  and          a2, t2, a1
                  sltiu        s7, gp, 1552
                  addi         s1, a1, -173
                  xori         gp, s2, -976
                  add          t2, a4, gp
                  addi         t4, s5, -697
                  lui          s0, 83444
                  nop
                  and          a7, s3, a5
                  ori          a4, sp, -588
                  xor          s2, t0, s10
                  xori         s11, s8, 1911
                  xor          s6, s7, s8
                  slti         a6, a3, -1189
                  sltiu        t4, t0, 1353
                  sra          t4, s1, t1
                  slt          a5, a0, t3
                  srli         s3, s11, 27
                  slli         t6, s11, 15
                  or           a2, t1, a3
                  slt          s11, t0, t1
                  and          t2, s3, s8
                  sltu         s9, gp, s3
                  xori         s4, a2, 566
                  srl          t4, t3, a6
                  sltiu        a3, t1, -1468
                  xor          t1, a5, t6
                  slt          s2, a4, s0
                  srli         a2, t2, 24
                  add          s1, a2, s1
                  sra          a5, ra, gp
                  srai         s11, a5, 0
                  lui          s0, 698100
                  sltu         s9, a4, a7
                  or           t2, a6, gp
                  andi         s10, t3, -584
                  xor          a2, a7, s10
                  srai         t1, s9, 5
                  srai         ra, s7, 5
                  addi         a4, a5, -364
                  sra          a6, t1, a0
                  or           t4, t3, t0
                  sltu         s1, a6, s4
                  sra          sp, ra, a0
                  sltiu        t6, a1, -1971
                  lui          a5, 419992
                  auipc        s2, 1034325
                  slt          gp, s0, s2
                  slti         s3, a1, 98
                  xori         a2, sp, 312
                  ori          a6, t1, 340
                  sra          sp, s4, a5
                  slli         a5, tp, 4
                  lui          s11, 764758
                  xor          sp, gp, a6
                  slt          t4, s2, s6
                  srai         s10, t0, 20
                  xori         tp, a3, -1458
                  ori          s5, sp, -1533
                  slli         zero, a5, 6
                  sltiu        a4, t0, 616
                  sll          t2, sp, a1
                  or           s6, t2, t3
                  xori         t1, t5, -691
                  nop
                  add          t3, s6, s2
                  sltiu        a6, t6, -339
                  addi         ra, s5, -509
                  xori         gp, s2, -1164
                  srl          t0, s10, s6
                  slli         s0, s11, 12
                  sra          s0, t3, zero
                  xor          t5, s6, s10
                  sub          t1, a3, s5
                  andi         a2, t5, -1752
                  ori          t0, s1, 1686
                  slti         a7, a7, 45
                  srai         s9, t4, 30
                  xor          a5, t0, s5
                  srai         t0, t5, 11
                  srai         sp, a0, 11
                  sltu         tp, t1, s1
                  add          a7, t0, s1
                  sub          t2, a3, t4
                  add          a4, t2, s0
                  xor          s5, a4, a7
                  sltiu        a2, t1, 1425
                  and          t4, a2, a0
                  and          t5, s4, t2
                  sub          s3, zero, a6
                  addi         sp, s2, 1647
                  andi         s0, s10, -889
                  srl          a7, s8, t4
                  andi         t3, a1, -1556
                  sltu         s2, a6, s11
                  auipc        t4, 985071
                  slli         s5, t5, 6
                  sub          s1, s2, a2
                  srai         a5, tp, 22
                  sltu         a3, gp, t2
                  slli         t4, t1, 0
                  nop
                  sltu         t1, s0, t1
                  srl          t5, a7, s11
                  ori          sp, t2, 1064
                  lui          t6, 924475
                  or           s4, sp, a2
                  nop
                  slli         s0, t1, 10
                  slti         s9, s8, -1285
                  sub          a3, s8, s1
                  nop
                  slt          t4, a5, t5
                  slli         sp, s1, 29
                  slt          t2, s6, s4
                  sltu         s9, a3, a0
                  nop
                  nop
                  sll          s0, a0, s6
                  andi         t4, s1, -1424
                  or           tp, zero, sp
                  or           sp, s5, a5
                  xori         s11, s5, 1518
                  srli         s3, s11, 4
                  slti         a6, s1, -1681
                  lui          s11, 917918
                  sub          ra, a3, s10
                  or           s4, s1, t6
                  sltu         s10, a7, a3
                  and          a5, a2, s0
                  xori         s2, tp, 843
                  andi         s11, tp, -1079
                  srai         t5, ra, 9
                  xori         s0, t2, -1473
                  sltiu        s0, a2, -2022
                  ori          s3, t4, 36
                  and          a2, a1, t3
                  nop
                  and          a2, a3, t0
                  srl          a4, s5, a4
                  sra          a4, t6, t0
                  sra          sp, a5, a2
                  and          t5, t6, s2
                  xor          a2, t1, a7
                  srai         s1, t0, 17
                  sltiu        s4, s7, -865
                  nop
                  sll          s1, s9, t6
                  sub          gp, s11, s11
                  and          s1, gp, s5
                  auipc        s5, 1000544
                  lui          t0, 812715
                  sub          s9, a5, zero
                  sub          s4, a3, gp
                  slli         a4, s0, 2
                  srl          s1, gp, s6
                  srai         s0, a3, 30
                  ori          a5, s3, -1017
                  auipc        t2, 865711
                  slli         t4, s3, 26
                  auipc        a7, 1022035
                  nop
                  addi         t2, s10, -579
                  or           s2, a4, gp
                  sltiu        ra, t4, 1109
                  sub          s11, s8, s1
                  sltiu        a5, s4, -1521
                  sra          a7, a2, a0
                  sll          tp, s0, s2
                  sub          s2, s9, s5
                  ori          a5, s2, 593
                  xori         s2, s9, 809
                  sltiu        a7, t5, -24
                  sll          t1, zero, zero
                  sra          s4, t2, tp
                  sltu         t3, t3, s8
                  sra          t2, t1, t5
                  srai         sp, t0, 29
                  auipc        a7, 663424
                  xor          t4, s6, s5
                  andi         a5, s9, -1676
                  lui          s5, 215591
                  auipc        s0, 890396
                  slti         s9, s8, -984
                  slti         a7, t2, -1021
                  ori          gp, s3, 1341
                  slli         sp, s3, 22
                  addi         tp, s0, -2022
                  slti         s10, s9, 180
                  addi         a5, s7, 1232
                  auipc        s4, 448253
                  srai         a5, s1, 16
                  slt          a3, ra, a7
                  srl          s5, s8, s7
                  auipc        t6, 966926
                  ori          t6, s6, 458
                  auipc        s11, 819306
                  sll          t4, s11, t5
                  srl          t1, s9, s10
                  slli         t2, ra, 29
                  slt          t1, t3, t1
                  lui          sp, 854207
                  lui          a5, 269781
                  slli         a7, s0, 11
                  xor          t5, a2, s5
                  xor          t2, s10, zero
                  srl          ra, t3, t5
                  nop
                  xor          t0, t6, t0
                  xor          t3, s7, a7
                  nop
                  sll          s2, s10, a4
                  sra          a7, a2, t2
                  add          s10, t4, t2
                  sll          t0, s10, t3
                  andi         s7, t0, 375
                  sltu         s0, a3, t6
                  srai         t3, a0, 9
                  srl          s0, s4, t5
                  ori          t3, s5, 1759
                  addi         s1, a5, 1220
                  nop
                  and          gp, a6, s2
                  or           tp, t2, s11
                  srai         s2, s9, 19
                  or           t2, s0, s8
                  lui          a4, 642284
                  xori         s0, zero, 1581
                  add          s5, a5, s10
                  srli         gp, s10, 2
                  sll          s4, s8, s8
                  srl          t0, s7, s6
                  xori         a3, t1, 296
                  srai         a6, s0, 26
                  sub          a2, s10, s5
                  xori         ra, a4, -1192
                  sltu         a4, a1, s11
                  sll          a4, s6, a0
                  xori         s6, ra, 872
                  sll          tp, a0, t5
                  nop
                  slli         ra, s11, 22
                  sltu         a3, t6, t2
                  sll          s3, t1, t5
                  sub          s11, s2, s3
                  addi         a3, t1, -927
                  slt          a4, t5, a5
                  addi         a5, a0, -136
                  srai         a4, t0, 3
                  and          ra, a3, zero
                  sub          sp, t2, a3
                  lui          s2, 304187
                  sub          a2, s1, s0
                  srai         gp, s7, 6
                  or           a7, s6, t4
                  nop
                  srli         gp, s5, 8
                  xori         a5, a2, 1787
                  slti         s9, s2, -1379
                  srli         s1, t2, 19
                  srl          s7, a6, t0
                  addi         t6, s2, -25
                  sll          ra, t3, a7
                  sub          t0, t2, zero
                  xor          a2, a2, t1
                  slli         s2, a7, 31
                  slli         t0, sp, 11
                  andi         s9, s11, -1699
                  xori         s11, a4, -756
                  sltiu        s9, t2, 429
                  slti         s10, s11, -1150
                  andi         s11, t2, -1350
                  sub          a7, gp, sp
                  sltu         s4, t6, t3
                  xori         s6, a3, -1630
                  sub          s5, s5, a6
                  ori          s7, a2, -295
                  slti         gp, s6, 883
                  sltiu        s11, a2, -291
                  srli         a5, gp, 16
                  slti         s10, a4, 1634
                  addi         a5, t1, -502
                  srl          sp, s3, s2
                  sub          t3, s3, s3
                  add          t5, a0, a7
                  addi         a7, ra, 1828
                  or           a4, s7, t4
                  slti         zero, t3, -1959
                  or           a6, t3, t3
                  add          a3, tp, s10
                  sub          s9, ra, a7
                  ori          s10, a4, -318
                  xori         a4, a7, -912
                  srli         s3, s7, 26
                  and          gp, s11, a2
                  ori          a7, t5, -777
                  lui          s9, 406580
                  slt          s6, ra, s7
                  srl          sp, t4, a2
                  auipc        ra, 465774
                  xor          t5, a5, t3
                  nop
                  sll          sp, tp, t1
                  nop
                  srai         a2, sp, 30
                  or           s6, t3, s5
                  sltiu        t0, a5, 1890
                  sltiu        s1, s6, 1935
                  and          t2, t1, a5
                  lui          t3, 607110
                  add          a3, a0, gp
                  sltu         s1, s7, t6
                  slt          tp, t1, s3
                  nop
                  srli         s5, t1, 13
                  and          a2, zero, s6
                  slli         s5, s2, 18
                  or           a5, a5, t2
                  slt          a3, a4, s5
                  slti         zero, s2, -1427
                  and          a2, a1, s6
                  nop
                  sub          ra, a5, sp
                  xor          a2, gp, a2
                  sub          gp, t2, s2
                  xori         s5, ra, -821
                  andi         sp, s10, 441
                  slti         a5, sp, -695
                  sub          s0, t3, s9
                  or           gp, s6, t3
                  ori          s0, a3, -1702
                  sra          s4, t1, s10
                  srai         s11, a7, 2
                  slti         a3, s0, 328
                  lui          a3, 879836
                  srai         t1, s1, 30
                  or           s2, a2, a2
                  srli         t1, ra, 23
                  nop
                  srli         s10, s11, 30
                  sra          tp, a7, s1
                  slti         s2, s11, -1284
                  slt          t2, t6, a4
                  ori          t2, t2, 798
                  addi         t5, s9, -1867
                  sltiu        t4, a5, -2025
                  srli         ra, gp, 27
                  auipc        t3, 595449
                  add          s10, gp, s0
                  sltiu        s6, t6, 154
                  sll          s1, t3, a0
                  sub          t1, ra, s4
                  xori         s9, a0, 1017
                  xori         zero, t0, 941
                  srai         tp, tp, 31
                  sltu         t6, a0, s4
                  sltiu        s3, ra, -2018
                  srai         a4, a2, 19
                  nop
                  ori          s10, a6, 257
                  andi         ra, t5, -357
                  sra          a3, a2, zero
                  sra          t6, t2, s4
                  xori         a6, sp, -1009
                  srli         s1, ra, 23
                  xor          s0, s7, tp
                  xori         a2, a7, -1574
                  add          s1, t3, t2
                  lui          s0, 613476
                  slli         s3, s10, 31
                  or           sp, s11, s8
                  sltu         t4, a4, s0
                  sll          sp, t0, t0
                  lui          s0, 556975
                  sltu         t4, sp, s5
                  slt          s4, t6, sp
                  sub          s5, s1, s10
                  slt          s4, s2, t5
                  xor          t2, s2, s6
                  and          t4, t6, s2
                  add          t3, t1, tp
                  nop
                  and          s9, a6, s8
                  sub          t0, t1, s4
                  srl          a7, a7, a6
                  nop
                  add          s1, a3, sp
                  sltu         tp, t2, ra
                  andi         s6, s8, -518
                  xori         t4, s8, -1124
                  lui          s4, 823079
                  xor          s9, t2, a4
                  addi         a5, s2, 425
                  sll          s0, zero, a1
                  addi         a7, t5, -1810
                  sltiu        s7, s10, -1121
                  sra          s5, s5, a1
                  lui          zero, 1011471
                  slt          s6, gp, a4
                  sub          a7, t6, t4
                  nop
                  srai         s9, tp, 20
                  slt          s4, tp, a4
                  sub          s1, t4, t0
                  andi         s1, a7, -673
                  sll          s3, s8, a7
                  lui          a7, 557722
                  slli         s11, zero, 13
                  andi         t3, s2, 1965
                  sll          s6, ra, s2
                  xor          sp, a2, a1
                  auipc        t3, 295113
                  sra          t6, a0, s11
                  ori          t6, t2, -134
                  sltiu        a7, s2, 906
                  add          t6, s6, a0
                  nop
                  slt          s2, t4, t4
                  lui          ra, 746928
                  add          gp, a4, s9
                  or           a2, tp, t3
                  nop
                  sltiu        s5, zero, -1808
                  srl          s10, a2, s2
                  nop
                  srl          s7, s0, s3
                  and          s3, s2, a5
                  xori         s3, t5, 1110
                  slt          t2, s10, s2
                  slti         gp, a7, 1642
                  slt          t3, t6, s5
                  slt          t5, s9, s4
                  sltu         t2, s1, s6
                  lui          tp, 912433
                  srli         t5, ra, 13
                  nop
                  sltiu        s10, s3, -1217
                  sub          t5, t6, a1
                  xori         t6, s3, 1034
                  add          a6, s9, t6
                  andi         t3, a7, -1972
                  slti         a6, t6, -1090
                  sll          ra, t5, a3
                  or           s11, s2, s10
                  xori         a7, t6, -1131
                  sra          s0, s5, sp
                  sltu         sp, s7, t5
                  xor          a2, s9, s4
                  sll          s6, t0, s8
                  xor          s11, a4, t3
                  xori         a7, zero, 1780
                  sltu         tp, gp, s9
                  sltu         a7, t6, s0
                  sll          a3, gp, a1
                  sub          a4, a4, s3
                  addi         s7, s8, 1946
                  srl          a5, a2, s2
                  sltiu        ra, s5, -1151
                  nop
                  lui          s5, 463587
                  or           a6, s7, ra
                  slti         s9, s9, -1128
                  and          s10, ra, t4
                  lui          t2, 207022
                  or           zero, t4, t1
                  slt          a5, s1, s7
                  sll          s10, s2, tp
                  srli         gp, t2, 12
                  slt          s6, t0, t0
                  srai         zero, zero, 13
                  and          t6, s11, t3
                  slti         s4, t2, 1115
                  add          t6, a0, a6
                  auipc        a6, 855964
                  xori         t2, t6, 679
                  addi         s0, a7, 1312
                  nop
                  or           s0, a2, a1
                  addi         s10, s6, -87
                  add          s7, t3, a4
                  addi         s11, s3, 1478
                  srai         ra, a2, 29
                  and          a2, s0, t1
                  sub          gp, s1, s5
                  sra          s0, s6, a2
                  addi         sp, ra, 1542
                  sll          s7, s5, a4
                  slli         s9, t0, 10
                  andi         ra, t6, -263
                  xor          s4, s11, ra
                  slt          t0, t6, tp
                  sub          ra, sp, tp
                  slt          t6, s9, t0
                  slt          s0, a5, s2
                  lui          s0, 511099
                  and          tp, gp, a3
                  and          s6, sp, s11
                  and          t6, a4, a4
                  slli         a7, t3, 13
                  sll          s11, s5, t6
                  sltu         s10, t6, s5
                  xori         sp, t0, -734
                  slt          s11, s6, a4
                  auipc        s3, 325289
                  srai         t3, gp, 13
                  and          t4, s11, t3
                  or           a4, s5, a6
                  srli         s9, a1, 21
                  slti         t2, t5, 1601
                  nop
                  slt          s10, s7, ra
                  nop
                  auipc        s2, 501977
                  sltu         s1, tp, s0
                  nop
                  andi         s10, t6, -1897
                  add          a7, s11, a5
                  and          s11, t5, s11
                  auipc        a5, 16814
                  sltu         s4, s10, t6
                  xori         s7, t2, -1582
                  srli         s0, a3, 2
                  slti         t0, s11, 417
                  sltu         sp, a2, t1
                  srli         s1, zero, 11
                  slti         t1, s11, -955
                  slti         t1, a2, -2033
                  ori          s11, s7, 958
                  slti         a6, ra, 1585
                  srai         s1, s2, 12
                  lui          zero, 825021
                  sltiu        s7, s3, 1258
                  srli         zero, s4, 12
                  slt          s9, gp, sp
                  srli         ra, t0, 3
                  lui          a3, 162865
                  srl          t5, s3, a1
                  addi         a7, gp, -515
                  sltu         s11, a3, tp
                  srl          gp, zero, zero
                  xor          t3, t3, a6
                  lui          s11, 835535
                  srli         s10, zero, 17
                  xor          s5, a2, s11
                  xor          a4, s1, s0
                  addi         t0, s4, 1434
                  srai         zero, sp, 6
                  add          a5, a7, a1
                  lui          s6, 1012927
                  xori         t5, a7, -658
                  auipc        s10, 630474
                  xori         t3, s10, -136
                  xori         s7, a4, 1790
                  auipc        sp, 711055
                  addi         s7, s2, -28
                  sra          a6, s9, a4
                  lui          ra, 773367
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           t2, 0x80000000
                  li           t1, 0x0
                  li           a2, 0x0
                  li           t5, 0x0
                  li           s3, 0xffffffff
                  li           s5, 0x5b0ecd31
                  li           s2, 0x0
                  li           gp, 0x80000000
                  li           ra, 0x0
                  auipc        s3, 203153
                  sub          a2, t1, t2
                  lui          t1, 420566
                  addi         ra, gp, -1549
                  add          ra, s5, gp
                  addi         a2, s5, 833
                  addi         s2, t5, -456
                  addi         t5, gp, -1953
                  add          a2, a2, s2
                  add          t0, t1, t5
                  lui          s2, 2805
                  sub          s2, t2, gp
                  nop
                  sub          s2, t0, t2
                  lui          s2, 75066 #end riscv_int_numeric_corner_stream_5
                  xori         t2, a7, 1468
                  addi         sp, t5, 1772
                  xori         s6, s9, 1682
                  lui          gp, 3666
                  nop
                  xori         s10, t0, 849
                  addi         a5, t6, 1608
                  lui          t2, 393487
                  srli         a2, a4, 16
                  add          t3, t0, ra
                  auipc        gp, 267550
                  lui          zero, 224
                  sll          t3, a2, ra
                  and          s6, t2, a1
                  or           a6, a0, s1
                  andi         t1, s1, 549
                  or           s1, a7, s5
                  and          a3, s8, t3
                  ori          t2, sp, -899
                  srli         t4, a6, 0
                  slli         s6, gp, 24
                  or           ra, t4, tp
                  xor          a2, a3, s4
                  xor          s3, s0, s5
                  andi         t6, s6, 301
                  or           a2, a3, t5
                  lui          s6, 205714
                  and          s10, a2, sp
                  and          s3, a1, s7
                  slli         s0, s3, 4
                  srl          t0, s11, s7
                  auipc        a2, 7106
                  lui          a6, 205223
                  ori          a3, zero, 1088
                  add          a2, t1, s0
                  sra          gp, a4, a2
                  srli         a7, t1, 25
                  srl          a4, a0, s5
                  slti         s11, a6, -1531
                  xor          s10, s10, s5
                  sub          s10, t3, t3
                  auipc        t0, 30
                  add          ra, s1, t1
                  lui          s10, 55825
                  slli         s6, t3, 11
                  srli         a7, a1, 6
                  srl          t3, a4, t1
                  slti         t6, a2, 1976
                  sltu         t3, zero, s1
                  sltiu        s5, s4, 229
                  sub          s1, s3, s1
                  andi         s9, t6, 298
                  slti         s7, s8, 1844
                  nop
                  auipc        zero, 905602
                  sub          t3, t6, s10
                  ori          s9, s5, -267
                  sll          s3, s4, s0
                  slli         a2, tp, 27
                  add          s5, t3, s5
                  xori         s7, a7, -931
                  ori          s10, s10, 583
                  addi         s5, s0, -196
                  srl          a3, a7, t1
                  sra          a5, s0, s9
                  xor          sp, a3, s4
                  xori         s3, s5, -13
                  ori          tp, gp, 1185
                  srl          s10, t0, s2
                  add          s6, s7, s1
                  add          t4, a3, s10
                  auipc        gp, 786360
                  lui          t1, 888027
                  lui          a5, 401935
                  slti         s0, tp, 1613
                  lui          a3, 948734
                  slt          a2, s11, a6
                  srai         t2, a3, 24
                  andi         a2, t5, 2035
                  sltiu        s7, t3, 87
                  srli         s1, tp, 9
                  nop
                  sub          tp, s6, t3
                  nop
                  sra          a7, t0, t3
                  auipc        a7, 954146
                  add          s1, zero, a2
                  auipc        s1, 707265
                  xor          t1, s9, t2
                  addi         t2, s7, -1381
                  sltiu        s10, t4, 1875
                  slli         ra, s10, 4
                  or           ra, a1, s2
                  auipc        s0, 392657
                  slt          t5, t6, tp
                  xori         s3, sp, 628
                  sltu         ra, s10, a0
                  sub          tp, ra, a2
                  addi         t2, sp, 1146
                  sltu         ra, a2, zero
                  sltiu        a2, a1, 192
                  add          s0, t6, s1
                  sub          ra, ra, t3
                  sra          s0, s11, s10
                  addi         sp, a7, -1786
                  and          t5, s7, a1
                  slli         t4, s10, 18
                  xor          ra, t0, zero
                  andi         a4, s9, -1327
                  xori         s2, t2, 1159
                  andi         s10, s10, -1874
                  slt          s11, a0, s1
                  auipc        a4, 257131
                  andi         a7, a0, 253
                  nop
                  auipc        s1, 507724
                  sll          t2, a2, t1
                  srli         t3, t4, 18
                  sltu         s0, s4, s8
                  sll          sp, a6, t2
                  sltiu        s6, s10, 555
                  srl          a2, s0, zero
                  addi         tp, ra, 166
                  sra          s9, a5, s7
                  add          zero, t1, zero
                  sltiu        sp, s5, -1109
                  addi         a2, zero, -1650
                  sub          s1, a1, t0
                  sll          s6, sp, s1
                  addi         gp, t3, -87
                  slti         t1, a6, -688
                  xor          sp, t2, t2
                  auipc        a7, 370874
                  srai         s7, s5, 24
                  sra          a5, t3, gp
                  add          t0, a3, s1
                  sra          s4, s11, s9
                  nop
                  slt          s6, t5, s7
                  srai         t2, s8, 23
                  sltu         t2, t0, s0
                  sub          tp, a0, t5
                  lui          s3, 1006457
                  add          a7, gp, a4
                  lui          tp, 860968
                  or           t6, a2, t2
                  addi         t0, s8, -1670
                  xori         s1, s10, 654
                  slti         gp, s1, -117
                  lui          sp, 1046390
                  srli         gp, a2, 0
                  ori          a4, a6, -800
                  xor          a3, s6, a6
                  ori          t3, gp, -612
                  sll          tp, t1, t4
                  srai         s10, a2, 2
                  nop
                  srli         a7, a1, 4
                  slt          s0, a6, s1
                  sub          t3, zero, a4
                  nop
                  nop
                  sltiu        s1, a1, 422
                  slti         s3, s3, 411
                  auipc        zero, 755342
                  auipc        a3, 1013026
                  sll          t3, s5, a5
                  slt          a7, sp, t2
                  srli         s1, a0, 3
                  sra          s10, s2, a0
                  xori         s7, t0, 1789
                  lui          t1, 967272
                  nop
                  srai         s5, s10, 8
                  addi         a5, t2, -75
                  nop
                  xori         t1, t4, -191
                  slt          s10, gp, t5
                  nop
                  add          sp, t3, s4
                  slt          s10, t6, s2
                  nop
                  slti         s3, sp, 1763
                  add          t4, a6, zero
                  sub          t2, tp, s0
                  andi         s7, t5, -573
                  lui          s9, 240950
                  or           s3, s2, s3
                  sltiu        s9, t0, -487
                  srl          sp, a3, a4
                  sra          gp, gp, s11
                  ori          a5, a3, -610
                  sll          gp, s11, s0
                  nop
                  srl          sp, a4, s5
                  srl          ra, ra, a6
                  srli         s6, sp, 3
                  and          t6, s1, t1
                  xori         t3, a2, -1352
                  andi         sp, s1, -333
                  xor          a3, gp, s4
                  and          a5, tp, a0
                  sub          s0, t2, a1
                  auipc        s5, 218286
                  sltiu        tp, zero, 1010
                  sra          s9, s1, a3
                  srli         s9, s2, 25
                  or           t5, s7, tp
                  srli         s4, t1, 23
                  sltiu        a7, s10, 819
                  lui          s0, 512334
                  slti         t1, s7, -1714
                  andi         a6, sp, 384
                  sll          t1, t0, a4
                  sub          s10, a1, t1
                  addi         s10, s7, -1959
                  srli         a2, s0, 3
                  xori         t0, t2, 1852
                  srai         s10, t4, 3
                  ori          s9, t5, 301
                  auipc        gp, 345752
                  slt          s5, s5, ra
                  xor          s10, zero, t3
                  sub          s7, sp, a2
                  srl          s5, tp, s6
                  andi         t2, s10, -542
                  sll          s7, a5, s5
                  addi         t6, gp, 1330
                  srai         t1, t6, 18
                  slli         t1, s1, 1
                  sltu         s1, a5, t4
                  ori          a5, ra, 826
                  andi         s6, s7, -1810
                  srl          s6, s5, t4
                  auipc        a2, 573035
                  xori         s5, a0, -912
                  xori         t6, t0, 1862
                  slt          s3, s2, sp
                  srai         tp, s7, 13
                  srai         s6, s6, 1
                  xor          a7, a5, t0
                  sltu         a4, s1, s1
                  and          t2, a5, s0
                  add          a4, gp, s4
                  nop
                  add          s11, s0, s9
                  sra          t6, s11, s4
                  srl          s0, t4, a3
                  sll          s0, s3, t5
                  xori         s4, s7, -182
                  sra          gp, s10, gp
                  addi         gp, tp, 921
                  nop
                  lui          s7, 674795
                  sltu         a2, s10, s4
                  srli         a5, a1, 15
                  sltu         t6, s9, t3
                  and          zero, s2, t6
                  srai         t2, a4, 0
                  andi         sp, s0, 919
                  sub          s11, a3, t5
                  sub          s1, a0, a4
                  slti         t3, a1, 691
                  and          t3, a6, a3
                  sll          s11, s10, t2
                  nop
                  srl          a6, a6, s5
                  add          t1, s10, a5
                  slt          t0, s3, s8
                  ori          gp, s2, -1227
                  slt          a2, s3, t5
                  srai         zero, s8, 19
                  or           a7, s1, a0
                  sll          gp, s7, s3
                  slt          t1, a7, s5
                  xor          t5, tp, a6
                  add          t4, s1, a5
                  add          a5, tp, zero
                  auipc        s4, 982401
                  nop
                  slli         sp, t3, 18
                  srai         tp, a7, 10
                  ori          t5, s3, -1029
                  slt          a4, s7, a3
                  sll          s11, s6, ra
                  ori          s11, s6, 1640
                  sub          s9, t0, a3
                  slti         a5, s3, 945
                  srli         a5, t0, 6
                  sub          s4, t1, s1
                  srai         s0, s9, 10
                  slli         a5, s2, 5
                  xori         s11, s9, 447
                  auipc        gp, 389806
                  and          s7, ra, a1
                  slli         a5, s8, 2
                  srai         t3, a1, 13
                  slli         ra, s2, 24
                  addi         a2, a3, -536
                  or           a3, gp, t4
                  add          a4, s10, t5
                  sll          a5, tp, a4
                  auipc        t4, 946226
                  or           tp, t4, s10
                  sub          s0, t5, s6
                  sltiu        a6, a4, -483
                  add          s10, s10, s9
                  andi         s11, s4, 1300
                  slti         a4, t6, 1763
                  srli         t6, s0, 17
                  srl          sp, t6, s4
                  srli         t5, s7, 5
                  ori          a7, s4, 881
                  xor          zero, t0, t6
                  add          s6, a2, t6
                  addi         s5, gp, 841
                  and          s10, s8, s7
                  andi         gp, s6, -1653
                  srai         s0, s4, 16
                  slti         tp, t2, 279
                  srli         t2, t0, 23
                  xor          a3, ra, s1
                  sltu         a3, t4, t6
                  srl          a3, s4, s0
                  srl          a6, t4, s3
                  and          s10, t6, t1
                  auipc        a2, 20145
                  auipc        ra, 389288
                  sltu         a5, s2, s11
                  slt          s10, s2, s1
                  sub          s2, zero, s0
                  nop
                  sra          s7, a5, t4
                  ori          s3, s8, -1233
                  and          t1, gp, a5
                  nop
                  sub          zero, gp, a2
                  add          a4, a0, a2
                  and          zero, s9, t0
                  lui          t1, 495574
                  nop
                  srl          t1, a4, s11
                  srai         s10, a4, 17
                  sub          a3, t6, s9
                  xori         zero, s1, -1022
                  sltu         tp, tp, ra
                  sra          ra, s10, t5
                  srai         s3, s10, 11
                  slti         t2, s0, 680
                  nop
                  lui          sp, 558458
                  sub          s0, s2, t3
                  slt          a5, a5, ra
                  sra          ra, a7, t4
                  addi         s7, a2, 1573
                  xor          gp, s6, t0
                  or           ra, t1, a7
                  slti         ra, s5, -1326
                  sll          tp, t1, a3
                  ori          s0, a0, 1721
                  slli         s9, s10, 24
                  and          s9, a2, zero
                  addi         t3, a5, -1472
                  slt          t5, s7, a0
                  ori          zero, a3, -619
                  nop
                  srl          s11, a6, t6
                  addi         zero, a3, -1108
                  addi         t6, s9, -1420
                  add          s11, tp, s7
                  auipc        gp, 639579
                  srai         a4, a2, 10
                  or           t4, s5, s11
                  sub          s5, s9, t5
                  nop
                  addi         t1, t6, -1615
                  sll          zero, s2, a0
                  xori         a3, s4, -154
                  slti         ra, tp, 566
                  xor          a2, t6, sp
                  or           sp, s7, a2
                  xori         a4, t2, 310
                  srli         a3, zero, 0
                  or           t4, s11, s8
                  ori          s4, a1, -1620
                  sub          s0, s3, sp
                  and          sp, a5, a4
                  or           t6, s7, sp
                  and          a3, ra, s9
                  lui          a5, 846571
                  sltu         a6, t6, gp
                  xor          t6, t2, ra
                  srai         s6, t6, 17
                  slli         sp, ra, 11
                  addi         t3, ra, -1370
                  nop
                  ori          zero, s10, 1154
                  and          a6, a2, a4
                  sll          s11, s2, t4
                  and          t1, gp, a2
                  srai         a4, s4, 27
                  addi         s7, s7, 926
                  sll          gp, s2, s10
                  sub          ra, a6, a1
                  sll          tp, s7, s2
                  addi         gp, a0, -218
                  slti         sp, ra, -325
                  add          s9, a5, t6
                  auipc        s10, 1006574
                  add          s9, t4, t0
                  lui          t4, 25479
                  slli         s3, a7, 31
                  and          a5, a7, ra
                  xor          a7, a1, s11
                  slt          t0, t2, s10
                  srai         t2, a6, 22
                  lui          s2, 480425
                  srl          s9, a3, a1
                  add          s10, a6, a2
                  auipc        s4, 969929
                  nop
                  sltiu        a3, sp, 1096
                  sub          s4, s8, t6
                  sub          a7, a7, a6
                  and          a6, s6, sp
                  lui          s3, 924000
                  slt          tp, t1, s6
                  slt          tp, s1, a2
                  lui          s0, 378456
                  andi         s0, ra, 1200
                  andi         s7, s4, -448
                  andi         s7, t0, -1295
                  andi         tp, s3, -418
                  sll          a2, a1, t5
                  srai         s10, t5, 24
                  sub          s3, s6, s11
                  and          s6, s9, s1
                  addi         gp, a1, 828
                  xor          s5, tp, a0
                  sra          s0, s6, s7
                  and          a3, tp, a4
                  add          t4, s9, a4
                  srai         sp, s3, 3
                  srai         gp, t4, 31
                  lui          sp, 519389
                  slli         a4, s2, 10
                  slt          s0, a6, ra
                  sub          t4, s4, ra
                  sub          t1, t5, s6
                  srli         sp, s2, 27
                  addi         a5, s8, 1818
                  srli         a2, a5, 26
                  add          t3, s4, s1
                  sll          a6, s9, a4
                  sub          s6, a7, tp
                  slti         t1, t0, 1964
                  auipc        tp, 238101
                  addi         ra, t3, 236
                  sltiu        tp, s6, 1142
                  srai         s6, a7, 23
                  xori         t1, s0, 1494
                  andi         t5, s5, -1256
                  auipc        s1, 200594
                  add          s6, sp, s3
                  sra          a6, a0, s2
                  add          a3, a7, t2
                  slt          s9, a7, t6
                  slt          gp, gp, t2
                  srl          a6, s5, s11
                  andi         t1, s10, -1465
                  nop
                  sub          s4, s8, a0
                  slti         a3, s6, 1416
                  xor          s6, t6, gp
                  slt          s4, a0, s3
                  sra          t6, zero, a6
                  auipc        t4, 447808
                  srli         s10, ra, 20
                  and          sp, a2, s4
                  srl          tp, t4, a2
                  xori         s0, ra, -595
                  srai         t6, t0, 4
                  add          a5, s5, s10
                  add          a5, s0, s2
                  nop
                  xori         tp, s11, 1562
                  and          t5, s0, t0
                  xori         s0, t2, 1933
                  ori          s9, t3, 856
                  sll          a6, a7, tp
                  lui          s0, 429336
                  sra          tp, a1, a5
                  addi         s11, t1, 392
                  slti         a4, a5, 1790
                  auipc        s3, 780
                  sltu         a5, gp, t6
                  sra          s5, t0, sp
                  addi         a4, s9, -519
                  srai         ra, a2, 25
                  auipc        a5, 653221
                  sra          a6, t0, a3
                  auipc        s5, 556533
                  slli         s7, s6, 6
                  ori          s4, t3, 1722
                  sub          s1, zero, s0
                  lui          gp, 885614
                  or           t6, s8, t1
                  slli         t5, sp, 15
                  srli         a7, a5, 2
                  or           s7, s5, zero
                  andi         s1, zero, -378
                  sra          t1, t3, sp
                  addi         s6, s10, 976
                  srl          s5, a2, t0
                  sra          zero, a1, a1
                  nop
                  srai         a6, t5, 3
                  addi         a6, s6, 488
                  auipc        t4, 109589
                  xori         a5, s6, -1401
                  sll          ra, s1, s10
                  xori         t6, s5, 380
                  xori         tp, s10, 1558
                  xor          s10, a5, a7
                  nop
                  add          s11, s8, t4
                  add          zero, sp, s1
                  xor          s1, t1, a0
                  sra          s10, a5, s1
                  and          s3, s2, a2
                  sltiu        a2, s11, -1323
                  sltu         t5, a7, tp
                  auipc        a3, 250886
                  addi         s7, a7, -1519
                  and          t6, ra, ra
                  sra          s1, t4, t0
                  lui          a5, 1045492
                  ori          s6, s6, -929
                  sltiu        s10, t6, -889
                  sll          s5, s4, tp
                  sub          t3, t5, s2
                  lui          t4, 465751
                  srl          zero, a2, a1
                  sltu         t3, s6, s4
                  or           s6, a0, t4
                  andi         s10, s4, -191
                  lui          zero, 393023
                  lui          t3, 980330
                  srli         a3, s11, 26
                  xor          s1, sp, s4
                  slli         ra, s2, 1
                  ori          s2, a3, -1396
                  auipc        s10, 969270
                  xor          a5, s5, s10
                  add          s10, s6, a0
                  srai         gp, t5, 29
                  andi         s2, zero, -1518
                  srai         t2, s3, 21
                  and          s6, t1, s8
                  sub          ra, s4, ra
                  sltu         tp, s2, a7
                  srli         a5, a7, 17
                  add          s10, t3, t2
                  sltiu        s9, t0, -31
                  sll          t6, tp, s5
                  ori          a3, a6, -1428
                  xori         s5, s1, 923
                  sltu         a5, s4, s3
                  xor          t4, s5, ra
                  slt          s9, sp, s2
                  slt          s4, t4, s2
                  xor          s7, a6, a7
                  nop
                  sra          a5, t4, a6
                  or           t2, zero, tp
                  srl          t3, s8, sp
                  or           t0, a5, s1
                  add          s11, s7, s1
                  or           s0, a4, a0
                  addi         t4, s5, -551
                  xori         a3, t4, 265
                  ori          sp, a7, 1834
                  or           s11, a2, a1
                  nop
                  slt          gp, a5, a2
                  xor          t3, a5, zero
                  slti         t5, s7, -2023
                  add          s2, t5, s0
                  sub          zero, sp, t4
                  slt          s4, t5, a6
                  srl          t0, a7, zero
                  ori          s10, ra, -1322
                  lui          a7, 9704
                  lui          t5, 3876
                  nop
                  and          ra, a3, a6
                  sltu         a3, s8, a3
                  or           t3, t4, t6
                  srli         s1, t1, 26
                  lui          a6, 500879
                  andi         t1, s2, 403
                  slti         sp, tp, -155
                  and          t0, a3, s9
                  sltiu        a4, gp, 907
                  sltu         a7, s1, s2
                  andi         s6, a6, 1693
                  sll          t2, t1, gp
                  auipc        zero, 576798
                  ori          s10, t3, 1148
                  srai         s9, t1, 29
                  andi         a2, s0, 1047
                  srli         a5, s5, 14
                  sra          a6, a0, s10
                  slt          zero, sp, s1
                  andi         s3, a0, 1209
                  slli         a5, s6, 3
                  ori          s6, s0, -1006
                  sltu         gp, s8, s1
                  sll          sp, s3, zero
                  andi         a5, a6, -1242
                  nop
                  auipc        s3, 337857
                  srai         s7, t3, 16
                  slli         ra, a6, 24
                  lui          a7, 498313
                  srai         s1, s0, 15
                  slt          ra, s7, s2
                  sll          s10, s8, sp
                  auipc        sp, 922636
                  lui          s3, 731569
                  srli         s3, s8, 1
                  or           t5, tp, a5
                  slti         s10, s4, 1941
                  sltiu        s10, s11, 1047
                  andi         s2, t4, -211
                  srai         t1, a0, 9
                  andi         t2, s1, -475
                  and          s10, a0, t1
                  xor          s1, a5, s9
                  sll          t1, t3, t6
                  or           t3, sp, s4
                  sltiu        tp, s3, -941
                  slti         t0, tp, 1836
                  nop
                  sra          t2, s10, s11
                  addi         a6, t1, -836
                  or           s0, t2, t0
                  sltiu        s10, t2, -2030
                  ori          t1, s0, -1860
                  and          s4, a0, s2
                  sltiu        t3, a1, -817
                  srl          s4, t4, s0
                  sra          s7, s5, t6
                  sltu         s0, a6, a4
                  lui          s11, 11353
                  sltu         t4, ra, t5
                  srl          a4, a6, a2
                  xor          t5, s6, gp
                  srli         t6, ra, 8
                  srl          t4, a7, a1
                  lui          gp, 384122
                  andi         zero, a5, -244
                  sub          a6, a3, t5
                  slti         ra, s2, -1663
                  ori          s10, s8, -1674
                  or           t5, s0, tp
                  sltu         gp, s0, t0
                  srl          sp, s7, t5
                  lui          tp, 390298
                  lui          sp, 940954
                  addi         s1, tp, 486
                  slli         s7, a7, 4
                  or           s10, s1, t5
                  ori          s4, a5, -1526
                  sltu         s9, t1, t2
                  nop
                  sltu         s11, a7, s6
                  xori         a6, s6, -281
                  srai         s0, zero, 16
                  slt          t1, s6, t0
                  sltiu        a4, t4, -1211
                  and          s10, s8, s5
                  sltu         t4, s5, a4
                  ori          s10, s1, -622
                  srai         a7, s2, 1
                  slli         ra, s6, 24
                  sra          s3, s7, t4
                  lui          a4, 116592
                  sub          t5, zero, sp
                  sltu         t3, t4, a1
                  sra          a6, a5, t0
                  sltiu        a7, s5, 1147
                  sra          a2, t6, a0
                  srai         a2, a0, 29
                  srai         t0, s3, 12
                  srli         a6, a3, 31
                  slli         t4, a6, 18
                  auipc        s0, 543520
                  xori         s11, s8, 397
                  slli         a3, s11, 16
                  sub          a7, t2, t1
                  lui          a2, 539750
                  ori          t4, s6, 538
                  xor          s10, t3, gp
                  addi         s1, s8, 93
                  andi         s3, a7, 1806
                  add          s10, zero, a6
                  andi         s1, t1, 1354
                  addi         s4, s0, 1532
                  slt          s10, s0, t2
                  sltu         s3, s9, t3
                  and          s9, t4, s8
                  slli         tp, s5, 31
                  nop
                  xori         zero, t3, 1272
                  xor          s1, s11, s9
                  sub          s11, s7, s1
                  sltiu        t2, s8, -1502
                  sltu         a6, s4, s10
                  sra          a4, a2, t3
                  ori          s0, s0, 1080
                  addi         t2, a3, 1899
                  nop
                  sltiu        a4, a4, 1176
                  sll          s2, t6, t2
                  or           a5, s7, a0
                  slt          s10, s1, s7
                  sltiu        gp, s11, 542
                  andi         s7, t1, -1775
                  nop
                  sub          a4, a1, t6
                  or           s10, s0, zero
                  or           gp, s0, s3
                  sll          s2, a0, s11
                  addi         s10, t0, 764
                  nop
                  sub          a2, t5, s3
                  slli         ra, s0, 22
                  add          s0, ra, s7
                  srl          t3, a2, s11
                  slti         s7, a3, -367
                  xor          t0, a4, t1
                  sub          s5, t2, s7
                  lui          a5, 3434
                  lui          a7, 828147
                  or           t5, t4, s6
                  srai         s6, s4, 29
                  xori         t6, t3, -17
                  sub          sp, t2, s7
                  sub          t5, zero, s7
                  slt          s11, a4, a1
                  andi         s5, t1, -1021
                  add          s9, s11, a3
                  sltu         a6, a4, t3
                  or           sp, a7, zero
                  ori          s11, zero, 350
                  sra          t2, a7, s10
                  xori         tp, s2, 799
                  sltiu        zero, s2, -863
                  and          t1, a1, t6
                  sltu         s11, t6, a0
                  auipc        s10, 360096
                  srai         sp, s0, 22
                  slti         s10, s1, 86
                  nop
                  ori          a6, a2, -923
                  lui          s11, 880972
                  srl          a4, a4, s5
                  sra          a7, s11, s6
                  addi         a6, s3, 730
                  slli         t5, ra, 15
                  sra          t5, s5, s8
                  slli         s10, s2, 31
                  srai         tp, a1, 20
                  sltiu        s1, s1, -608
                  slli         s2, a2, 25
                  andi         s0, t4, 709
                  auipc        s0, 717195
                  sub          s2, sp, s8
                  addi         s10, s10, -40
                  addi         gp, s6, -822
                  slt          s5, s6, a4
                  sra          t3, s4, s7
                  or           s7, t1, a6
                  sltiu        tp, a2, 545
                  nop
                  xori         t6, a4, -603
                  srl          s6, s4, s6
                  lui          s5, 308316
                  add          a6, s0, s9
                  srli         t4, t5, 18
                  sll          s1, a7, a4
                  sltu         t1, t2, a5
                  sltu         a3, a4, s10
                  sll          sp, a0, ra
                  sltiu        t4, s11, -1421
                  lui          a4, 119644
                  and          s3, s2, a1
                  add          gp, sp, a4
                  sltu         s4, a1, t1
                  slti         s7, s6, -2
                  sltu         t3, a6, s6
                  slt          s0, s8, s5
                  sub          s0, zero, s9
                  sll          a4, t4, t0
                  sll          zero, s9, tp
                  xori         zero, tp, -599
                  or           s7, t5, s0
                  xor          t4, a4, gp
                  srl          ra, s7, sp
                  andi         t3, s6, -1033
                  xor          a4, s6, t2
                  lui          a6, 259072
                  and          t0, a7, s4
                  xori         s2, t4, -1430
                  lui          s0, 469647
                  slli         gp, a0, 30
                  srl          s10, s9, zero
                  sub          a4, s8, a5
                  xori         a7, s0, 458
                  addi         t3, s3, -1279
                  sltu         t3, s9, a6
                  nop
                  nop
                  addi         s10, t6, -1284
                  xor          s11, t0, a6
                  xori         s9, s5, -1629
                  and          t3, a1, a0
                  sra          a4, zero, t2
                  sll          s1, s6, t0
                  add          t0, s4, s11
                  andi         sp, zero, 1119
                  and          sp, s1, zero
                  ori          a4, t6, -1155
                  sltiu        s7, s3, -14
                  sub          s9, t0, a7
                  and          a7, a0, t5
                  or           tp, a7, s1
                  and          a3, s6, a7
                  srai         s3, t3, 8
                  or           s9, t0, s0
                  add          a5, ra, sp
                  srli         s11, s2, 18
                  auipc        t2, 303329
                  sll          tp, s8, gp
                  slli         s9, a5, 23
                  slli         t3, t4, 19
                  sub          t1, zero, s11
                  srai         s4, t5, 17
                  slli         s1, a5, 20
                  or           tp, a6, t6
                  lui          a5, 229545
                  srai         t1, a5, 9
                  slti         tp, s9, 68
                  addi         sp, t6, -760
                  sll          a3, t3, s2
                  xori         zero, s5, 1241
                  slti         s2, a0, 793
                  ori          s5, s6, -1733
                  andi         sp, a0, -1101
                  xor          tp, s1, a5
                  ori          a4, a2, 1270
                  sub          t0, tp, a1
                  add          a5, s2, s0
                  andi         a2, t6, 1900
                  and          t4, s8, t2
                  sll          a2, t0, s9
                  addi         t2, s0, -682
                  slli         t0, a6, 21
                  xori         t6, tp, 1147
                  sltu         tp, s0, t4
                  and          s4, s8, s6
                  and          s7, a3, s8
                  sll          s7, s6, tp
                  addi         ra, ra, -1948
                  sll          gp, s5, a7
                  slt          t3, t4, a4
                  and          sp, a4, t5
                  addi         s1, a2, -968
                  srli         t4, tp, 30
                  andi         a2, t2, 273
                  add          t2, t5, gp
                  addi         a3, zero, 1663
                  and          s11, a2, a6
                  add          gp, t0, a7
                  addi         tp, s4, -624
                  or           gp, s8, ra
                  ori          t2, s11, 888
                  xori         ra, t5, -847
                  sltiu        ra, tp, -1085
                  slti         s2, t2, -778
                  sltiu        a2, t4, -144
                  and          a5, sp, a1
                  sra          sp, s11, s6
                  addi         a6, s8, -1603
                  sltu         tp, a4, a6
                  srl          sp, s8, t2
                  xori         t3, sp, 96
                  srli         tp, ra, 3
                  sra          s9, a2, a4
                  sra          a5, t6, s8
                  sra          s9, t6, t5
                  ori          s7, s3, 1383
                  addi         s6, s1, 855
                  add          a5, s8, sp
                  or           t0, ra, s11
                  sub          tp, a6, tp
                  sub          gp, t0, gp
                  nop
                  and          s11, s8, s9
                  slti         a5, s1, -1147
                  sra          t6, s2, a6
                  srl          s4, zero, a3
                  xori         a3, a3, 108
                  sra          s0, t1, a2
                  srli         a6, s2, 18
                  xor          t2, s9, t4
                  slt          s9, t0, ra
                  slt          s0, s10, t2
                  srai         t0, s5, 31
                  srai         s10, tp, 15
                  addi         s3, s2, -791
                  sll          a6, s2, t6
                  sltu         s9, a5, s2
                  nop
                  xor          s0, a3, a6
                  auipc        tp, 428035
                  nop
                  add          s6, zero, a6
                  xori         a3, t0, -240
                  xori         a4, t0, -1063
                  or           gp, tp, s9
                  auipc        s9, 869329
                  sra          s4, a1, sp
                  srai         s2, a0, 13
                  xori         s2, sp, 2041
                  slt          t3, t3, t3
                  nop
                  xor          a4, t1, s1
                  xor          t6, s7, t5
                  andi         s2, s5, -1217
                  sltu         a6, tp, s1
                  sra          t4, s9, a5
                  andi         s2, a1, -212
                  ori          s11, a1, 2044
                  sll          s1, t6, s1
                  sltu         t0, zero, sp
                  sltu         t3, a1, s0
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           sp, 0xf74941e1
                  li           s4, 0xffffffff
                  li           a5, 0xffffffff
                  li           s1, 0x0
                  li           s2, 0x80000000
                  li           s3, 0x0
                  li           a3, 0x80000000
                  li           s6, 0x80000000
                  li           s5, 0xffffffff
                  nop
                  auipc        a3, 906860
                  nop
                  add          tp, s6, a5
                  auipc        s2, 712428
                  addi         s4, a5, 340
                  sub          s4, sp, a3
                  lui          s1, 384080
                  add          a5, tp, a3
                  nop
                  auipc        s5, 900581
                  nop
                  auipc        s3, 722260
                  addi         s5, a5, -622
                  lui          sp, 1040016
                  addi         s1, tp, 1135
                  sub          s3, sp, sp
                  addi         s1, s6, 515
                  add          s2, sp, s1
                  lui          s5, 804902
                  sub          s1, s5, s5 #end riscv_int_numeric_corner_stream_4
                  sltiu        zero, t4, -976
                  xori         s1, s9, 1005
                  srai         tp, sp, 19
                  sll          ra, a3, a5
                  ori          s4, s3, -1802
                  sll          ra, a7, a5
                  andi         s10, s0, 134
                  slti         t6, t1, 913
                  sltu         a6, t1, s2
                  slti         gp, a6, 1013
                  sra          t6, a0, s4
                  xor          s5, s0, s3
                  add          t1, a7, s8
                  sll          sp, s2, a5
                  add          a4, t3, a5
                  lui          sp, 574678
                  xori         s0, sp, -1290
                  slti         s11, a2, 111
                  srli         zero, s0, 31
                  sltiu        a6, t0, -1778
                  auipc        a7, 879886
                  slli         s3, t5, 15
                  ori          a5, s1, -1430
                  sub          ra, a7, t0
                  srli         a7, s11, 11
                  xor          s4, s7, zero
                  sltu         a2, t0, a3
                  nop
                  and          s5, t1, sp
                  nop
                  srli         t1, s8, 19
                  srli         t0, t5, 30
                  srai         s3, t2, 24
                  lui          tp, 365137
                  andi         t5, s0, 1100
                  slli         a6, s9, 11
                  srli         a7, t2, 29
                  sltiu        ra, t1, 11
                  slti         s2, s8, 881
                  add          s10, t0, t2
                  slli         s6, a7, 8
                  slt          sp, a5, s9
                  sub          s10, s6, t5
                  xor          s10, t0, a5
                  nop
                  srl          s2, s6, t4
                  sra          t5, t3, t5
                  srai         a3, t6, 27
                  andi         t4, a6, -1579
                  lui          s10, 100078
                  slli         t4, s6, 10
                  sltu         tp, a3, ra
                  lui          s10, 425614
                  and          t1, s8, a7
                  sltu         t2, a5, s3
                  and          s9, t3, a4
                  addi         gp, t1, 785
                  xor          zero, sp, t6
                  slt          t6, t3, t5
                  add          zero, zero, s11
                  slti         s5, s10, -1958
                  xor          sp, a7, a6
                  or           a7, t5, s1
                  andi         t5, ra, 1174
                  srli         t2, a5, 0
                  sltu         s7, t5, a4
                  slt          t2, s0, s6
                  srli         a6, a4, 19
                  lui          s5, 956412
                  nop
                  add          s1, a2, s6
                  srai         a4, tp, 10
                  sub          s9, a3, t1
                  andi         gp, gp, -753
                  sltu         t3, a2, s7
                  srl          s5, s5, gp
                  sll          zero, s5, s11
                  srl          s0, a3, t4
                  add          a3, a7, s4
                  srli         s2, t3, 13
                  or           zero, s4, s9
                  nop
                  ori          s2, t0, 1887
                  add          s4, a0, a4
                  srai         gp, s3, 15
                  andi         s5, a0, 2032
                  slli         sp, s9, 7
                  and          s4, s6, s6
                  sll          t5, s0, sp
                  slli         s3, a4, 27
                  nop
                  xori         tp, s10, -371
                  sll          s0, a7, t3
                  sll          t4, s1, sp
                  sltu         s6, t2, a1
                  or           s1, s3, a2
                  sltiu        s1, t6, 2007
                  auipc        s9, 777749
                  sra          s7, s6, a7
                  ori          s6, t0, 1954
                  xor          a5, t1, t0
                  srai         a6, s2, 10
                  nop
                  auipc        s3, 193759
                  srai         a6, s10, 25
                  sltu         gp, a0, a7
                  srl          tp, a7, a7
                  sra          s3, s10, s7
                  sltu         a7, s9, a7
                  lui          s9, 507426
                  srl          ra, a2, t1
                  slti         a5, a1, -2032
                  addi         t5, t3, 1816
                  nop
                  nop
                  or           s6, s2, t2
                  and          s6, s10, s10
                  auipc        sp, 291738
                  srl          a5, t2, a4
                  slti         t4, a5, 1778
                  slti         t5, tp, -417
                  slli         gp, tp, 22
                  and          s11, s8, s2
                  xori         s1, t5, -479
                  sll          s7, a5, t2
                  srai         sp, s6, 15
                  xor          s7, a2, a2
                  srai         a6, sp, 25
                  slli         t6, a1, 27
                  sltu         s1, t6, s2
                  sll          s0, s10, t4
                  sltu         s0, a7, gp
                  lui          gp, 480487
                  or           t6, a3, t4
                  add          sp, a5, a1
                  slt          t3, a5, a7
                  andi         s9, a5, -251
                  sra          a3, zero, a0
                  srai         t0, t4, 24
                  nop
                  and          t2, s6, a5
                  sll          s9, s3, t5
                  sub          t3, s4, a1
                  or           s4, s5, t0
                  nop
                  sltu         t3, sp, s4
                  sub          s11, a1, t0
                  nop
                  slli         t6, s0, 13
                  sltiu        a5, a0, 275
                  srl          s2, s0, a5
                  nop
                  slti         s10, zero, -796
                  xori         s5, s1, 778
                  lui          t3, 821818
                  sub          t0, s7, s11
                  nop
                  auipc        tp, 503839
                  add          t2, ra, t0
                  srl          a5, ra, s8
                  sub          s3, s10, s3
                  lui          t1, 756571
                  srli         s4, a3, 31
                  addi         s10, s10, -1397
                  sltiu        a2, a5, -112
                  or           s7, a1, tp
                  and          s5, t5, s4
                  and          a2, a2, t3
                  andi         s10, a4, 71
                  sll          s5, s10, s10
                  addi         t0, sp, -1426
                  srli         s6, s9, 27
                  xori         s3, s9, -2021
                  sll          zero, a0, a5
                  slli         a7, t6, 9
                  slt          t1, a4, s11
                  xori         a6, a3, -846
                  nop
                  sra          t1, a2, s6
                  sra          s6, s11, t4
                  srli         s6, sp, 2
                  sra          t1, t4, t5
                  srai         s0, a3, 7
                  and          s7, s4, s5
                  add          t1, s6, a4
                  or           ra, a7, t5
                  srai         t1, t0, 0
                  sltiu        t6, s6, 431
                  slli         gp, s3, 24
                  srl          s11, gp, s10
                  xor          ra, a1, t1
                  lui          s10, 88524
                  xori         s1, a1, 823
                  xori         a6, s8, 1910
                  ori          a6, s2, 1429
                  srl          a7, t2, a7
                  sltiu        s6, a6, 1242
                  addi         gp, t0, -1449
                  xori         t3, s3, -1988
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           t5, 0x0
                  li           a3, 0xffffffff
                  li           a5, 0x80000000
                  li           t3, 0xffffffff
                  li           t6, 0x80000000
                  li           t0, 0xc503b1a
                  li           s1, 0x0
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  auipc        s2, 1031634
                  nop
                  sub          a5, t5, a5
                  sub          s2, s4, t3
                  sub          t6, a5, a3
                  add          s2, t6, s4
                  sub          s4, s4, a3
                  lui          a3, 37780
                  lui          t5, 633081
                  auipc        t0, 767220
                  addi         s2, s2, 1691
                  sub          s1, s2, s1
                  add          a5, s2, t3
                  add          t5, a5, t4
                  nop
                  add          t4, t5, t3
                  lui          s1, 1629
                  nop
                  lui          a5, 553897
                  sub          s1, t0, s1
                  addi         t6, a3, -1012
                  sub          s2, s2, t6
                  addi         t6, s1, -1589
                  sub          t6, a5, t0 #end riscv_int_numeric_corner_stream_12
                  sra          gp, a6, s5
                  andi         gp, a3, -594
                  and          a5, gp, ra
                  srai         t3, s9, 1
                  sub          a5, s7, s7
                  nop
                  sra          a4, a4, t2
                  nop
                  lui          gp, 618527
                  auipc        a5, 642716
                  andi         t2, a0, 525
                  andi         s5, a6, -730
                  nop
                  sltu         zero, s5, t6
                  andi         a2, s11, 234
                  sra          s6, s8, t1
                  ori          s10, s6, -1599
                  slt          tp, s4, sp
                  srli         s5, a6, 25
                  slti         t1, gp, -395
                  slt          a7, s11, sp
                  andi         a6, tp, -1519
                  xor          t1, zero, s11
                  xor          zero, s5, s6
                  auipc        t6, 91314
                  srli         s7, a0, 1
                  sltu         sp, zero, a5
                  lui          t3, 929962
                  ori          t4, t6, -1830
                  addi         t0, gp, -2042
                  srl          ra, t2, a6
                  slt          a2, tp, sp
                  xor          s6, s5, a6
                  srai         a2, s1, 14
                  ori          s7, t4, 13
                  slt          s1, s11, s11
                  sltiu        a4, ra, 1966
                  slt          gp, a4, ra
                  slt          s0, s4, s11
                  sra          a6, a7, zero
                  lui          t4, 741582
                  srai         a5, gp, 8
                  xor          s11, s8, a2
                  nop
                  or           s9, s6, a0
                  sub          a2, t1, t0
                  lui          sp, 462389
                  lui          a7, 278134
                  add          t4, a4, t5
                  addi         t5, s1, -1119
                  addi         sp, zero, 1278
                  or           a5, a6, s7
                  sll          t0, t4, s2
                  andi         a2, ra, 738
                  sub          s3, t1, t0
                  add          s9, s11, gp
                  slli         a5, s0, 4
                  srl          s2, a0, a0
                  nop
                  slti         s5, t1, -1775
                  slti         s4, s8, -1539
                  sll          gp, t3, tp
                  andi         s1, t6, 812
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           s4, 0x0
                  li           t2, 0xb10c79af
                  li           a2, 0x80000000
                  li           a6, 0xffffffff
                  li           sp, 0x0
                  li           a4, 0xffffffff
                  li           s3, 0xffffffff
                  li           tp, 0x262d111
                  li           t1, 0xffffffff
                  nop
                  add          sp, s3, a4
                  auipc        s3, 546967
                  auipc        t2, 674027
                  add          s4, a7, sp
                  auipc        sp, 307577
                  add          a6, s4, t1
                  auipc        t2, 868017
                  addi         sp, tp, -1510
                  add          s3, sp, s3
                  addi         sp, sp, -1853
                  add          s4, sp, a4
                  auipc        a6, 557609
                  sub          t2, t2, t1
                  sub          s3, a4, a7
                  nop #end riscv_int_numeric_corner_stream_31
                  nop
                  slti         s6, a4, -1123
                  addi         a6, a4, -1229
                  addi         a2, zero, -1073
                  slli         a4, s0, 23
                  or           t4, gp, a4
                  sra          s1, t1, a4
                  add          a5, s10, zero
                  addi         ra, t3, -1894
                  auipc        a5, 654368
                  sub          s11, s4, gp
                  slti         s10, s6, 1567
                  slti         sp, t2, -1397
                  add          a2, t5, s2
                  sltiu        s0, s10, 1274
                  andi         t2, s8, -152
                  srli         t1, zero, 28
                  or           a6, s9, s5
                  sltu         s1, s2, s0
                  sltu         s5, s7, t2
                  sub          t1, s11, t2
                  nop
                  sra          gp, s0, a0
                  xor          s3, s0, s10
                  xor          a4, s11, s0
                  or           s5, t0, t0
                  xori         t3, s0, -1137
                  srli         s5, tp, 2
                  sltiu        s3, s6, 1343
                  srl          s9, gp, a1
                  andi         s3, t3, 67
                  xori         s1, s3, 1371
                  srli         ra, t5, 15
                  ori          s0, s3, 1977
                  or           a4, tp, gp
                  sra          s11, a4, zero
                  srl          s4, a7, a2
                  srai         gp, tp, 5
                  sra          t0, s0, a7
                  sub          s2, s11, s1
                  slt          s11, gp, s5
                  add          s11, s7, s11
                  xori         a4, a5, 475
                  srli         t3, t2, 19
                  sub          s5, s3, s5
                  srli         a5, t0, 22
                  srl          a6, zero, sp
                  srai         s1, zero, 26
                  slt          s1, s10, s8
                  auipc        a6, 510208
                  andi         t6, s7, 1751
                  auipc        s3, 898167
                  addi         s6, t6, 1635
                  andi         a5, t6, 1838
                  srli         a6, t4, 18
                  sra          a7, t6, s11
                  sll          a6, tp, a0
                  or           a4, s7, s11
                  srl          a6, a0, s2
                  addi         a6, s2, 209
                  srai         t2, a3, 22
                  slti         gp, s4, -1870
                  sltu         s1, a3, sp
                  ori          t3, s7, -572
                  and          a6, s0, t5
                  sll          t1, s5, zero
                  add          s3, t2, a1
                  xor          a4, s0, zero
                  and          t4, t2, t3
                  xori         a4, a7, 55
                  xor          s6, t4, a2
                  sub          t5, a4, zero
                  andi         s7, a4, -1932
                  addi         s11, a3, -1308
                  sltiu        s0, ra, -5
                  addi         s4, t6, -1098
                  nop
                  srli         t5, ra, 28
                  srl          s1, t4, a0
                  auipc        s2, 127736
                  lui          s9, 636072
                  lui          t0, 170992
                  auipc        s7, 747466
                  add          t5, s4, s9
                  lui          t0, 267409
                  sub          gp, t2, a5
                  andi         zero, a6, 1527
                  nop
                  sra          s2, s10, a0
                  sltiu        sp, t3, 1923
                  ori          ra, s9, -752
                  sltu         s9, sp, s3
                  addi         s11, t6, 1918
                  slt          s2, s2, a2
                  slt          s5, sp, ra
                  or           sp, s1, s1
                  slli         tp, a1, 16
                  sltiu        ra, s10, 689
                  xori         s1, s9, -585
                  ori          a6, s10, 2039
                  xori         s9, s0, -1703
                  slli         t1, a5, 13
                  xor          s11, s2, s3
                  addi         zero, gp, 338
                  srli         tp, s11, 1
                  andi         s6, sp, 357
                  auipc        t5, 658821
                  nop
                  slt          t3, zero, sp
                  slt          t1, a4, a2
                  sll          s4, s8, tp
                  sltu         s1, ra, s2
                  srli         ra, a7, 22
                  and          s11, s3, a0
                  slt          gp, s11, s8
                  xori         s3, t3, -1931
                  nop
                  xori         a4, a4, -476
                  sltu         s7, t2, s0
                  ori          s10, s0, 155
                  srai         t0, s1, 11
                  or           a6, tp, t5
                  xor          ra, s10, a6
                  addi         s3, a2, -169
                  sub          a2, ra, t3
                  xor          s6, sp, s6
                  slt          t3, s1, s2
                  sltu         a4, s5, t0
                  xori         t3, a2, 445
                  addi         s0, s0, 1608
                  srl          a4, a6, s10
                  sra          t0, t0, a2
                  sltu         a4, sp, s8
                  srli         s2, s11, 28
                  auipc        a3, 1035473
                  slti         s0, s9, -749
                  xori         t4, gp, 327
                  xori         t3, a1, 913
                  lui          t5, 691656
                  srai         s11, t2, 10
                  sltiu        t6, t6, -1797
                  slli         ra, s8, 17
                  srl          s11, a6, s3
                  sltiu        t4, s10, -1384
                  lui          a6, 726431
                  addi         s9, zero, -38
                  srai         s3, t1, 8
                  add          tp, t6, a3
                  srli         a3, a2, 8
                  slti         s11, s3, -1267
                  slli         a7, s2, 15
                  srli         t6, t0, 24
                  or           tp, a4, t1
                  and          ra, sp, a0
                  xor          s7, t3, tp
                  sltiu        sp, t2, 1859
                  sra          s6, t2, t6
                  lui          a3, 150978
                  srai         t4, a3, 6
                  addi         s10, gp, -342
                  auipc        s0, 372766
                  ori          t5, a7, -1834
                  auipc        sp, 620616
                  sll          s2, t6, s2
                  slt          s0, s0, t5
                  xori         a7, s11, -746
                  sltu         zero, t0, s11
                  slli         zero, a2, 29
                  lui          t2, 576991
                  srli         s5, zero, 27
                  sub          sp, a1, a0
                  andi         a3, a4, 800
                  sub          zero, s8, a0
                  or           s1, a0, a2
                  slli         zero, t6, 7
                  sltu         s0, s0, s2
                  sub          s5, a0, ra
                  and          t6, t5, a2
                  ori          a7, s1, 1438
                  sltu         a6, a2, s0
                  auipc        ra, 683260
                  and          s5, zero, a0
                  slt          s0, t4, a0
                  sra          s11, a3, s7
                  slli         s0, s6, 6
                  slli         s11, a7, 30
                  addi         s6, t6, 327
                  ori          t6, s0, 510
                  xor          gp, t1, t4
                  sltiu        s0, s0, 453
                  auipc        ra, 154089
                  sra          s7, s7, a0
                  and          t4, a3, s5
                  xori         s0, s8, -1565
                  slti         t2, s1, -714
                  lui          a4, 257596
                  sltu         t3, t2, t3
                  slli         s9, zero, 5
                  sra          s5, sp, a6
                  or           tp, t0, s11
                  sra          s11, t6, sp
                  sltiu        s1, sp, 856
                  sll          s2, t4, s2
                  add          t5, s3, a5
                  slt          t0, a7, sp
                  nop
                  slt          s11, t5, t2
                  lui          gp, 254047
                  sra          ra, t6, t4
                  slli         gp, t5, 12
                  srli         gp, s4, 13
                  ori          t1, a0, -1590
                  auipc        s2, 464206
                  addi         ra, s1, -1075
                  srai         t0, t1, 18
                  slli         a2, s7, 12
                  sub          tp, a4, tp
                  addi         gp, a7, 881
                  sltiu        s11, gp, -1891
                  ori          s4, tp, -881
                  xor          s9, t2, s5
                  xori         s0, s3, -1858
                  sltu         t4, a7, s11
                  sltiu        a3, a7, -1586
                  add          t4, t4, s1
                  andi         s10, a5, 1217
                  xori         a4, a6, -1265
                  slt          s10, a2, a6
                  srai         ra, a5, 12
                  add          sp, t1, s1
                  or           s2, s11, s2
                  sub          gp, a4, sp
                  srli         t3, t6, 16
                  sub          sp, t3, ra
                  sltiu        a7, s8, 803
                  or           s10, t0, s6
                  sub          s4, gp, t1
                  xor          s10, sp, t0
                  srli         t2, s11, 13
                  sltu         s9, a3, tp
                  xor          a6, s0, sp
                  srl          a4, t5, s6
                  sltu         a7, t4, ra
                  srli         s10, t5, 4
                  xor          sp, a0, s6
                  slli         a2, sp, 21
                  srai         a5, a2, 19
                  and          t0, a5, t3
                  xori         t4, a2, 269
                  auipc        t0, 466515
                  and          t3, t6, a4
                  slti         s1, s6, -1479
                  lui          t3, 478525
                  add          gp, t2, t5
                  lui          a5, 333272
                  or           zero, s2, gp
                  sll          s1, s8, s2
                  addi         s11, s9, 1891
                  srl          t2, sp, a2
                  and          t4, a6, t2
                  slt          a6, s2, a2
                  srai         a5, tp, 10
                  addi         t6, a4, -1431
                  srl          s2, tp, t1
                  add          sp, t0, s4
                  slli         s2, t2, 26
                  xor          t5, s11, t5
                  ori          t5, s0, -2008
                  addi         s3, ra, -1716
                  xor          t5, t0, a2
                  sll          a3, s6, a5
                  sra          ra, s3, s2
                  srli         s7, t6, 18
                  and          t1, a2, s8
                  or           s5, s0, t4
                  add          t0, t4, s7
                  nop
                  ori          s10, s0, -1830
                  andi         s9, s5, 940
                  or           zero, tp, a3
                  sub          s0, s7, a5
                  lui          t6, 6605
                  sll          s9, t5, s9
                  slt          s3, t6, s0
                  xori         s3, s3, -1081
                  andi         s7, t5, -814
                  sltu         s1, t3, t4
                  addi         ra, a3, -1970
                  sra          s9, s8, zero
                  xori         s10, ra, -1265
                  nop
                  sltiu        a6, s0, -250
                  ori          s2, a4, 1517
                  srli         t4, t1, 18
                  sra          a2, t0, s6
                  ori          s10, t5, -1686
                  xori         s9, s0, -14
                  sub          a7, s7, t5
                  srai         t1, t2, 11
                  slt          s5, a7, zero
                  sltu         zero, s10, t3
                  or           s10, s5, s3
                  xori         t2, a6, 1863
                  sub          gp, t5, s6
                  sltu         s0, s10, a6
                  add          s5, a7, s4
                  sltiu        t1, t5, 920
                  sll          t3, ra, s11
                  addi         s9, t0, 1139
                  xori         t1, a4, 1261
                  xori         a4, t3, -1598
                  nop
                  srai         s1, a1, 11
                  srl          a6, gp, a4
                  lui          a6, 515103
                  nop
                  xori         gp, ra, -1040
                  lui          t5, 873523
                  ori          ra, t2, 1107
                  sub          s10, a4, t4
                  sll          s2, a2, t4
                  lui          a2, 944002
                  sltu         t1, s2, tp
                  xori         t4, t3, -898
                  or           t6, t2, t5
                  ori          s9, s5, 1551
                  sub          s10, s6, a6
                  slt          t2, a4, a3
                  andi         t1, a1, -210
                  add          s7, ra, s2
                  sltu         a7, s11, t3
                  xori         sp, t4, -1198
                  andi         s4, a2, -1135
                  lui          s5, 777302
                  add          a7, s4, s8
                  sll          ra, a3, s3
                  lui          t6, 812706
                  srai         sp, s10, 17
                  xori         s1, t1, 1869
                  srli         s6, a1, 6
                  xori         t2, s3, 366
                  and          a4, s8, a2
                  sltu         ra, s1, ra
                  sub          a6, s3, a2
                  addi         s7, s1, -612
                  sltiu        gp, s2, -217
                  srai         t4, a0, 18
                  srai         sp, t3, 19
                  nop
                  addi         sp, a2, 1740
                  lui          s3, 1031768
                  or           s10, s1, s2
                  xor          t4, s1, s4
                  and          a5, s1, a5
                  sll          s6, t0, a7
                  xori         s0, a4, 1690
                  ori          s4, s10, -672
                  andi         s3, gp, 1815
                  nop
                  srli         s2, s3, 27
                  andi         a3, s8, 1353
                  lui          s7, 915638
                  xori         ra, s0, -1433
                  srli         t5, s5, 25
                  sltiu        s7, t5, -1460
                  xori         s1, gp, -1613
                  addi         sp, t5, 1108
                  sltiu        s4, zero, -968
                  lui          t1, 384699
                  sltiu        s0, t3, 1377
                  srli         t6, s2, 26
                  lui          s9, 897768
                  and          s4, ra, a4
                  ori          s10, s3, 1318
                  slli         s7, t5, 31
                  sub          t4, s10, a2
                  or           t6, a2, tp
                  slti         t6, t5, -1803
                  sltiu        a3, t0, 1230
                  slli         gp, s7, 10
                  xori         sp, a6, -486
                  slli         tp, s8, 12
                  sltiu        t0, s9, 700
                  sll          s4, a7, sp
                  slli         s2, t6, 1
                  xori         s10, s4, 221
                  sub          t0, t4, s9
                  slli         a3, ra, 8
                  sltu         t3, s0, a0
                  ori          s2, sp, -1915
                  slt          s9, s2, t5
                  add          s0, ra, t5
                  lui          s3, 660991
                  sra          s2, s9, t4
                  ori          zero, s3, -902
                  sltu         t4, s8, a3
                  srli         ra, sp, 23
                  sltiu        s1, s1, -2003
                  sltu         a7, t5, s5
                  lui          sp, 495099
                  add          sp, s0, a1
                  srl          a3, s6, sp
                  nop
                  add          s0, a2, s11
                  addi         tp, t0, 1201
                  sltu         s7, a3, ra
                  sll          s7, t5, s2
                  srli         a5, s2, 23
                  xor          s0, t4, s5
                  auipc        a3, 428550
                  sra          gp, s3, t3
                  add          ra, s9, gp
                  sltu         a6, s3, s4
                  srl          t5, t0, a7
                  sltiu        s5, s2, -613
                  ori          a3, zero, -481
                  addi         ra, s2, 1075
                  auipc        a5, 48537
                  lui          tp, 86221
                  addi         a6, a3, 1437
                  sll          s9, s3, s0
                  sra          a7, a6, a7
                  add          sp, s2, s6
                  sll          sp, t0, s5
                  srli         s3, gp, 8
                  srai         gp, t2, 2
                  lui          s5, 52065
                  xor          ra, t4, t2
                  or           t1, s5, sp
                  nop
                  sll          s3, a2, a4
                  srl          s9, s4, s3
                  sub          t4, t3, a3
                  xori         gp, s2, 1127
                  slli         t4, s10, 19
                  auipc        t6, 846662
                  srai         t1, s3, 7
                  srai         s10, t3, 12
                  sltu         s10, s6, a4
                  add          t6, s9, s11
                  addi         t3, sp, 532
                  lui          s3, 609633
                  addi         a5, s10, -1248
                  auipc        s3, 580044
                  srli         t6, t2, 29
                  sltu         a2, a7, gp
                  sub          a3, sp, a6
                  lui          a7, 167743
                  ori          t4, s2, 1078
                  srai         a5, s9, 21
                  sltiu        a7, s7, -598
                  sub          t4, s5, a6
                  srli         a5, s11, 9
                  slt          s3, s8, t2
                  slt          tp, a6, t4
                  slt          t6, s2, s3
                  lui          tp, 19297
                  add          a3, a0, s0
                  sll          a7, s3, a0
                  add          s9, s11, s10
                  nop
                  and          t0, a0, a1
                  and          s4, a5, sp
                  xori         s7, s6, 412
                  xori         s1, s8, -1285
                  sltiu        gp, s6, -647
                  sub          s2, a5, s9
                  sra          gp, a1, s10
                  sub          ra, a0, sp
                  sltiu        a6, t0, -1426
                  sll          t4, sp, zero
                  sra          t6, gp, a2
                  xor          s11, t3, a2
                  sub          t3, zero, s9
                  xor          a6, t1, tp
                  xor          s7, a5, gp
                  srai         ra, t3, 21
                  auipc        s0, 700979
                  nop
                  addi         gp, a2, 769
                  ori          t1, a6, -162
                  srai         s9, a3, 8
                  sub          a2, a4, a1
                  sub          t1, a4, s8
                  slli         zero, ra, 22
                  sub          a6, t1, sp
                  sub          s11, s11, s6
                  slli         zero, zero, 6
                  sll          s6, gp, sp
                  andi         s2, t1, 847
                  srl          s3, t4, sp
                  srl          s3, t1, s9
                  slt          a7, a4, ra
                  slti         a3, t2, -1344
                  lui          s0, 510958
                  lui          a2, 372602
                  slli         zero, s9, 0
                  sra          t6, a3, tp
                  slti         gp, a2, -497
                  and          s0, t6, ra
                  lui          gp, 1034527
                  ori          a6, a6, 1216
                  ori          tp, s9, 1721
                  slt          t2, a3, s7
                  nop
                  lui          sp, 311012
                  sra          s10, s0, s3
                  sra          s6, s0, s1
                  xori         gp, t2, -1430
                  lui          t3, 179002
                  sub          s9, s9, t3
                  srl          t2, tp, s10
                  xor          t5, a5, t3
                  or           t1, tp, a5
                  srai         a5, s1, 13
                  sltiu        ra, s2, -1872
                  srli         s1, ra, 11
                  sll          s1, s10, s7
                  addi         a3, ra, -883
                  auipc        s4, 626836
                  xori         t3, tp, 451
                  or           s7, t5, s9
                  slti         s2, s5, -830
                  slli         t3, a1, 8
                  xor          s3, s9, t3
                  slli         t1, s3, 17
                  or           t3, a1, a2
                  ori          s2, t3, 688
                  xori         t3, s0, 1556
                  slt          s9, a0, a4
                  sltu         zero, t3, s10
                  slt          a6, tp, gp
                  sll          t4, sp, a4
                  srli         t3, s10, 11
                  nop
                  add          s3, s5, t6
                  addi         s0, s7, 1691
                  sltu         t6, s3, s6
                  addi         s9, gp, 2025
                  andi         gp, sp, -1818
                  slti         s7, t0, -1175
                  and          s10, zero, s3
                  xori         a4, s8, -946
                  srl          ra, s0, s7
                  add          s9, a1, a4
                  xor          s2, s1, s5
                  slti         s0, zero, 386
                  andi         s1, a0, -41
                  xor          s11, a3, a2
                  and          a2, a5, t1
                  slli         s0, a3, 6
                  sub          a2, tp, s9
                  sll          s7, s4, a1
                  nop
                  sltiu        s3, a2, -405
                  andi         a6, a2, -271
                  nop
                  sub          a6, tp, s10
                  sltu         a7, a2, s10
                  or           s1, tp, a7
                  srl          s6, a3, t3
                  add          gp, s8, a5
                  xori         s3, s11, 1279
                  sltu         t2, a6, s7
                  slli         s9, a7, 4
                  nop
                  slli         s3, t6, 26
                  lui          t5, 280868
                  ori          s11, t5, -1620
                  auipc        t3, 814469
                  sltiu        a5, ra, 985
                  lui          a4, 734073
                  addi         a6, s0, 1456
                  and          s6, s4, a3
                  xor          s1, s2, s10
                  sltiu        t4, s5, -592
                  xor          t6, t6, s0
                  slti         a4, tp, -1248
                  xor          s7, a6, t5
                  slli         s3, a3, 18
                  slt          a3, s1, tp
                  andi         t2, t4, -2020
                  sltu         s6, s11, s6
                  sub          t0, s0, t3
                  xori         a6, t6, -662
                  nop
                  xori         s2, s0, -1486
                  and          s11, sp, a5
                  sll          a5, t5, s8
                  addi         s10, s11, -1399
                  auipc        s9, 685672
                  slli         a7, s10, 25
                  sll          a7, a3, gp
                  ori          s0, zero, -1189
                  auipc        a2, 744775
                  andi         a2, t4, 1551
                  sub          t0, t4, ra
                  and          sp, s7, a7
                  ori          s6, s7, 1566
                  or           s2, zero, tp
                  add          s5, s11, s6
                  sll          s2, a4, zero
                  slt          a3, a1, s8
                  ori          t1, a4, -655
                  or           t4, t2, s5
                  lui          s0, 516191
                  auipc        sp, 110083
                  slt          zero, t1, a5
                  andi         sp, s2, -15
                  addi         ra, a5, -2019
                  nop
                  ori          t5, tp, 1126
                  addi         sp, a7, -1497
                  sub          s0, a2, a6
                  srli         gp, a7, 6
                  sll          s11, s4, t2
                  slli         s0, t1, 4
                  srli         s2, a3, 22
                  andi         a3, t0, -1263
                  slt          s1, a5, a0
                  addi         s2, s11, -1232
                  slli         s2, t2, 2
                  slli         a5, sp, 31
                  sltiu        sp, s1, -508
                  sltu         s2, s10, a3
                  sub          s11, t2, s4
                  sltiu        t2, gp, -387
                  sltu         tp, a1, t4
                  xor          s10, ra, a1
                  srli         s7, a2, 9
                  sltiu        s9, s8, 1449
                  xori         ra, s7, 1993
                  or           s6, t6, s9
                  xor          s0, s7, s8
                  sra          s10, t0, s8
                  or           zero, ra, s4
                  nop
                  sll          s3, s0, s4
                  xor          s0, t4, s8
                  srli         s1, t2, 2
                  slti         t3, a0, 1385
                  xor          s10, s2, s11
                  srli         s5, sp, 25
                  addi         sp, t4, -1227
                  sra          s1, ra, s4
                  sub          s5, t4, a5
                  sll          t4, t0, t6
                  and          s3, s5, a1
                  ori          t0, a7, 1805
                  srli         a2, t5, 4
                  sll          t0, s7, t6
                  add          a4, a1, tp
                  srli         s7, s2, 27
                  sub          s7, t1, t0
                  and          a4, t3, t0
                  sltiu        s1, s4, 589
                  ori          s4, a5, 1152
                  sra          t2, t3, t6
                  andi         a2, s11, -280
                  addi         t0, s10, 2029
                  auipc        tp, 576110
                  srai         s9, s4, 5
                  ori          s11, s8, -1458
                  srai         a4, s0, 3
                  addi         s7, gp, -1839
                  srl          t2, t6, gp
                  and          t1, zero, s10
                  and          s4, tp, tp
                  lui          a4, 1002947
                  addi         s4, t3, 431
                  xor          a5, a0, s1
                  srl          t5, a4, a2
                  sltu         sp, s5, s6
                  addi         t5, s11, 244
                  sll          s1, s3, s4
                  xor          zero, a2, zero
                  sll          s3, s2, s3
                  add          gp, gp, a2
                  add          t6, tp, a4
                  addi         s5, t1, -1704
                  auipc        s11, 547333
                  lui          a5, 599044
                  ori          t3, s8, 1296
                  nop
                  srai         t3, ra, 19
                  slt          s5, s3, a4
                  sll          sp, t2, s8
                  xor          t6, t3, sp
                  srl          zero, s0, a2
                  addi         s7, a4, -1646
                  sll          s1, sp, sp
                  ori          s0, s5, -1476
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           a6, 0x80000000
                  li           s11, 0x80000000
                  li           t0, 0x80000000
                  li           t6, 0xffffffff
                  li           sp, 0xffffffff
                  li           s9, 0x7121bfdb
                  li           t4, 0x80000000
                  li           s2, 0x40e815a4
                  li           s7, 0x0
                  lui          s9, 488277
                  lui          s11, 312971
                  auipc        sp, 23635
                  addi         t0, sp, -1369
                  sub          a6, t4, s7
                  auipc        s9, 235505
                  nop
                  sub          sp, s7, t0
                  auipc        sp, 123153
                  sub          t6, s11, s6
                  nop
                  addi         sp, t0, -1570
                  nop
                  nop
                  addi         a6, s11, 218
                  sub          t4, s9, s2
                  nop
                  sub          a6, t6, s6
                  sub          sp, a6, s11
                  add          s6, t0, t0
                  lui          a6, 637037
                  sub          a6, sp, t4 #end riscv_int_numeric_corner_stream_30
                  xori         zero, t3, 878
                  srli         t3, t2, 15
                  xor          s4, a4, s2
                  sub          s7, a7, a1
                  and          s2, s1, sp
                  addi         t0, s8, -834
                  srai         a3, s10, 31
                  ori          ra, t3, 1700
                  and          s3, t3, s8
                  or           s1, s0, t2
                  sltiu        gp, a7, 837
                  lui          a3, 830867
                  srli         s1, s7, 1
                  sra          t2, a1, a7
                  addi         s1, tp, -1253
                  srl          a7, s8, t0
                  addi         sp, s4, -126
                  sub          a3, t5, t3
                  srai         a6, s1, 2
                  nop
                  and          t6, a6, s8
                  srl          a5, tp, s10
                  slli         t3, a1, 13
                  addi         s6, s4, 1264
                  add          a3, t1, t5
                  xori         a6, s8, 1542
                  sll          a4, gp, s6
                  sll          t5, t1, a0
                  srl          a3, s10, s3
                  ori          t3, a0, -255
                  or           t3, tp, s1
                  and          s6, gp, t0
                  srl          s10, a5, s9
                  xor          s0, t3, t5
                  lui          gp, 459755
                  sra          zero, a3, tp
                  add          t1, a6, a1
                  slt          s5, s4, s11
                  srai         a6, sp, 7
                  slli         sp, ra, 29
                  andi         t3, t5, 1568
                  srl          s11, t3, a1
                  sub          s11, s11, s10
                  add          a7, a6, a5
                  xori         a3, t5, -1216
                  add          a4, s6, s9
                  addi         s9, a4, -789
                  slli         t4, a1, 17
                  xor          t4, zero, t2
                  auipc        a6, 1005791
                  xor          t5, zero, s5
                  auipc        s10, 774202
                  xori         s10, t0, 1557
                  srli         gp, a0, 14
                  andi         a5, a6, -584
                  sltiu        s1, a5, -205
                  slli         s4, s8, 13
                  add          s3, t2, a3
                  xor          s2, s1, t3
                  sll          s7, s10, s0
                  auipc        s11, 790575
                  slt          sp, s6, t0
                  xor          s11, t0, s11
                  addi         s0, t2, -1579
                  nop
                  srl          s11, s9, s2
                  xor          a7, t5, a5
                  andi         a6, t5, -1064
                  auipc        s7, 280955
                  sll          a5, zero, ra
                  srai         s11, a3, 26
                  xor          s3, s10, t2
                  xor          s9, s6, a5
                  ori          a6, t3, -224
                  auipc        t1, 24079
                  and          ra, ra, a6
                  srai         s5, s11, 15
                  sra          s1, s5, a1
                  nop
                  sub          gp, t5, t3
                  sub          t4, s1, s7
                  srl          t2, t0, a4
                  and          s5, s3, s4
                  andi         s6, t3, 179
                  sltiu        s3, a5, 975
                  or           t5, tp, s4
                  addi         s10, a0, -1828
                  sltiu        t6, a3, 660
                  slt          tp, s0, t2
                  xor          a5, a7, t0
                  sra          s2, t0, s9
                  ori          gp, s6, -1900
                  xor          t2, s5, s8
                  add          s9, a3, s0
                  sll          t6, a6, s5
                  lui          t3, 162126
                  add          sp, s7, s4
                  srl          t0, s0, s0
                  addi         t5, s11, -865
                  xori         a4, a2, 2017
                  xori         t6, t2, 1658
                  srli         gp, s6, 15
                  slti         a4, ra, -365
                  srli         s9, a4, 20
                  xor          a4, s3, s1
                  slti         sp, s2, 66
                  slli         a2, s3, 12
                  or           s1, s4, t4
                  andi         t3, a6, -546
                  srl          t0, zero, a2
                  auipc        a6, 878567
                  add          a4, s7, s1
                  xori         s0, a3, -446
                  or           t1, s0, a4
                  sll          a4, s3, t2
                  slti         t6, gp, -758
                  slti         a5, a4, -205
                  slt          s11, t0, t5
                  addi         t6, a2, 1197
                  srli         t5, a4, 5
                  sra          s4, a5, gp
                  add          s11, tp, t4
                  sltiu        s5, a7, 156
                  xor          a5, s9, s0
                  andi         s0, s4, 816
                  andi         a6, s11, 922
                  auipc        t3, 821225
                  andi         s10, s10, 94
                  lui          s0, 910337
                  sltiu        t0, s5, -626
                  slt          s1, s10, s5
                  addi         t3, a5, -2048
                  or           a5, s4, s4
                  sub          t5, s8, gp
                  sub          s7, t6, t3
                  sub          s11, t5, sp
                  xori         s5, t5, 1882
                  xor          s2, zero, a1
                  slti         gp, s5, 1446
                  andi         s9, t2, 350
                  addi         s7, s11, -1673
                  srai         sp, a6, 29
                  srai         a2, a3, 12
                  sltu         t1, a7, t3
                  add          a2, s7, tp
                  slli         t2, t0, 21
                  and          s3, t1, t3
                  sltiu        s10, a6, -1874
                  addi         s0, a3, -499
                  srli         s1, gp, 21
                  lui          a2, 230371
                  slt          a4, tp, a7
                  srli         a6, t4, 30
                  xor          t4, t4, s4
                  nop
                  andi         ra, t0, -687
                  slti         a5, tp, 1940
                  sll          gp, s3, t2
                  sra          a6, a5, s2
                  srli         s3, t2, 22
                  srli         s11, s0, 6
                  and          s5, s7, s11
                  sll          gp, a3, a4
                  srl          s3, gp, sp
                  nop
                  slt          s0, a3, gp
                  ori          s7, t3, -688
                  srl          s5, a0, t0
                  srai         t1, s4, 7
                  sltu         a4, a2, ra
                  ori          a4, a5, -1093
                  slli         t6, s11, 31
                  sltu         s6, s1, t0
                  slli         t2, s8, 0
                  srai         s5, s8, 20
                  ori          a2, s6, -1370
                  sltu         s7, t0, s0
                  or           t3, a6, t2
                  slti         t2, s2, 483
                  sub          s1, zero, tp
                  sll          t3, ra, a0
                  srl          s3, a3, t5
                  srai         a3, s6, 28
                  sltiu        s1, t6, -1741
                  xori         t6, tp, -427
                  xori         a3, s1, -182
                  ori          a2, zero, 619
                  or           tp, t5, t1
                  srl          ra, t6, t4
                  slti         t5, s3, 1780
                  sltiu        zero, a0, 1685
                  add          s2, a0, sp
                  lui          s7, 713044
                  srl          s10, t6, s6
                  srli         s2, a3, 30
                  andi         t4, s10, 1003
                  sll          s4, s3, sp
                  andi         ra, a0, -833
                  sra          zero, t5, t0
                  auipc        t0, 131974
                  auipc        s5, 800216
                  xori         t1, a1, -519
                  sltu         gp, a0, s4
                  xori         s9, zero, 156
                  sll          t4, t2, a7
                  sll          gp, a0, s5
                  nop
                  sll          s6, s9, s4
                  slti         s5, sp, 1294
                  slli         t2, t0, 29
                  ori          t0, tp, -1241
                  or           t1, gp, tp
                  andi         s3, tp, 1971
                  auipc        t3, 334506
                  addi         s9, sp, -210
                  srl          t6, t3, a3
                  slli         a2, a7, 5
                  srai         a4, t6, 12
                  lui          t6, 625632
                  sub          gp, s3, t0
                  sltu         t1, s0, s10
                  slti         s9, s2, -1612
                  srli         s10, gp, 20
                  srli         a2, s7, 25
                  slt          s5, t2, s2
                  xori         s6, t2, 534
                  and          t4, t0, s3
                  srli         t0, s8, 13
                  slti         s1, s11, -1071
                  andi         gp, a6, -101
                  slti         s10, a7, -145
                  xor          s11, s0, t2
                  lui          t1, 652757
                  sll          s6, sp, s10
                  srl          s0, s2, t1
                  slt          t2, s2, a7
                  srai         t2, a7, 17
                  sltu         t5, ra, a5
                  sub          a6, gp, a7
                  slti         s4, t5, 145
                  sltu         t4, gp, s7
                  addi         a2, s11, -1238
                  ori          s11, a3, 1776
                  xori         s4, a1, -564
                  sll          s0, sp, t4
                  sltu         s9, tp, a7
                  sltu         a6, a4, s8
                  slt          tp, a3, s6
                  andi         s0, s5, 1885
                  lui          s9, 339264
                  sub          s3, t6, s5
                  auipc        s11, 530782
                  xor          s2, a3, a2
                  nop
                  xor          s4, s0, a0
                  ori          a4, s11, -1644
                  xor          gp, gp, s1
                  srli         t4, sp, 23
                  andi         a4, s4, 1712
                  lui          a5, 491901
                  addi         a3, a5, 1016
                  andi         zero, a2, 813
                  sra          s10, s10, t1
                  srl          s1, a5, s11
                  slt          zero, t5, a5
                  xori         a7, a3, -1693
                  sll          zero, s3, t6
                  srli         sp, a0, 28
                  lui          t3, 235152
                  sra          s5, t0, s2
                  slt          t5, s8, s10
                  lui          s9, 1046977
                  srli         a3, a6, 24
                  sltu         t0, a7, t1
                  add          sp, t2, zero
                  add          s1, s5, a3
                  or           gp, s0, ra
                  nop
                  srl          tp, s6, t3
                  sll          t3, s3, a0
                  and          t2, zero, a7
                  srl          a5, t6, s4
                  ori          s10, a3, -1212
                  slli         zero, s0, 22
                  sra          t5, t5, s3
                  sub          s10, s3, s10
                  add          s1, a6, a5
                  slli         ra, s3, 30
                  ori          t5, t0, 427
                  sra          t3, t6, a4
                  sll          a7, t2, gp
                  slti         s7, t3, 1975
                  andi         s3, s0, -1815
                  srai         s6, t1, 11
                  xor          t3, ra, s7
                  addi         s3, s4, -476
                  addi         s1, ra, 1678
                  nop
                  sub          t4, a7, t4
                  slti         s3, s7, 1159
                  add          s5, a1, s3
                  slt          t2, a5, s7
                  slti         s3, t4, -915
                  auipc        s6, 420685
                  sra          s1, s6, ra
                  auipc        s0, 655763
                  sltu         s1, t0, a6
                  auipc        gp, 227562
                  lui          sp, 954014
                  srli         s1, a0, 20
                  and          ra, t6, t1
                  ori          a6, s7, -1514
                  and          a6, s9, s1
                  and          s9, s9, a2
                  sltiu        tp, zero, 966
                  lui          t6, 717280
                  xor          t0, gp, a3
                  nop
                  sltu         a3, s1, a7
                  andi         s9, a7, 1488
                  sub          a5, s1, t4
                  sll          s1, tp, s8
                  slt          gp, gp, t5
                  slti         s11, a5, -850
                  srai         t2, s3, 12
                  sra          s0, t3, s6
                  slt          s7, t3, a0
                  sltiu        s7, s2, -1061
                  or           a3, t1, t4
                  slti         a5, a7, -1871
                  addi         s2, s1, -1056
                  addi         t1, s5, -1630
                  xori         a7, t1, 2040
                  srl          s7, t6, s1
                  srai         s7, s8, 29
                  addi         a5, a3, -1555
                  sra          t1, a5, t2
                  xori         s10, t1, -1704
                  sll          sp, s1, s10
                  slt          s6, t5, t6
                  add          t0, s3, s4
                  addi         gp, t1, -1476
                  slt          tp, t6, s4
                  slli         t6, s9, 14
                  srli         t4, a4, 29
                  srli         a3, s2, 14
                  sll          t5, t6, gp
                  slli         ra, a4, 18
                  nop
                  xor          t5, a4, t6
                  slt          s7, s0, s3
                  lui          a2, 702127
                  add          zero, s10, ra
                  auipc        t0, 770978
                  slti         a6, ra, -1858
                  sltu         a5, a2, s1
                  slli         s5, a5, 18
                  slt          s3, s0, s1
                  srai         a4, s7, 29
                  sltu         s4, tp, a3
                  lui          t0, 841637
                  sll          t6, a1, s11
                  sltiu        t0, s2, 877
                  sltiu        s7, s7, -771
                  sltu         s1, s5, s5
                  sub          sp, s4, t1
                  xori         t6, s3, -1258
                  sltu         a4, t5, s8
                  auipc        s6, 407905
                  srai         a2, a7, 19
                  sra          s10, a7, s9
                  nop
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_29
                  li           t6, 0x80000000
                  li           s2, 0x514e30f6
                  li           sp, 0x0
                  li           tp, 0x0
                  li           s7, 0x0
                  li           gp, 0xc5b0f11c
                  li           a7, 0xffffffff
                  li           s6, 0x80000000
                  li           a5, 0x8d927d25
                  addi         tp, t6, 821
                  lui          sp, 558498
                  nop
                  addi         gp, a5, 1408
                  lui          a3, 493197
                  nop
                  nop
                  auipc        tp, 888369
                  auipc        a5, 937674
                  lui          tp, 245377
                  lui          tp, 524686
                  auipc        a7, 246319
                  auipc        a7, 455010
                  lui          t6, 154502
                  auipc        a7, 389221
                  nop
                  lui          a7, 204412
                  sub          a7, s7, t6
                  auipc        a7, 400466
                  auipc        tp, 1025415
                  addi         sp, s2, -545
                  addi         s2, s2, -319
                  sub          a3, tp, s6
                  auipc        sp, 309719
                  addi         tp, sp, 699
                  add          tp, a7, t6
                  lui          a3, 530678 #end riscv_int_numeric_corner_stream_29
                  andi         s2, a5, -1351
                  slli         a6, gp, 20
                  srl          s5, s5, zero
                  slt          s1, s4, s6
                  srai         a2, s0, 14
                  sltu         s11, t6, s4
                  sltu         s10, s11, s1
                  sll          s11, sp, s7
                  sub          zero, t0, tp
                  auipc        sp, 450869
                  or           tp, t1, s11
                  slt          s11, s4, tp
                  lui          a7, 800350
                  slti         s4, s8, 698
                  sltiu        t6, t2, 1130
                  xori         s11, sp, -1942
                  ori          s1, a2, -1056
                  slt          t2, s10, s9
                  xor          t6, s8, s2
                  sltiu        t2, s0, -1722
                  sll          s9, gp, s8
                  sra          s11, a4, t2
                  xori         t4, s2, -1437
                  ori          s0, s10, 12
                  addi         t4, s4, 1408
                  add          a3, sp, zero
                  slti         a5, zero, 488
                  sll          s10, t6, s11
                  sra          a2, a1, t1
                  slli         t2, a4, 9
                  nop
                  sltu         t0, gp, s10
                  sra          a6, s6, a4
                  sra          s3, s3, ra
                  ori          s3, t0, -380
                  and          zero, a2, a0
                  addi         s1, t5, -1940
                  sub          s6, t1, t1
                  xori         t2, t5, -48
                  sltiu        gp, t4, 354
                  nop
                  sltu         s0, t4, a0
                  sltiu        tp, s11, 368
                  srli         s9, gp, 16
                  addi         s5, s8, -1577
                  sll          t0, s4, a7
                  srl          t1, t3, sp
                  ori          t0, a7, 524
                  xor          t2, a2, a7
                  xori         a3, a1, 1965
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s5, 0x80000000
                  li           s3, 0x80000000
                  li           sp, 0xffffffff
                  li           s2, 0x0
                  li           t3, 0x671d5b9d
                  li           t0, 0x0
                  li           s10, 0x0
                  li           t4, 0x80000000
                  li           ra, 0x80000000
                  lui          s5, 963463
                  auipc        s10, 545046
                  nop
                  addi         ra, ra, 1273
                  auipc        t4, 496464
                  auipc        t0, 794957
                  auipc        ra, 382915
                  nop
                  auipc        s2, 430228
                  add          s3, t3, s2
                  auipc        s5, 638333
                  lui          sp, 820770
                  lui          t4, 297971
                  add          t3, t4, s10
                  nop
                  auipc        s10, 830112
                  add          s3, s5, s10
                  nop
                  add          a7, s5, s3
                  lui          t4, 766307
                  add          s2, ra, s10 #end riscv_int_numeric_corner_stream_9
                  xor          s9, a2, s10
                  and          a5, s8, s1
                  xor          s7, t6, tp
                  and          gp, t6, t5
                  xor          s7, ra, s3
                  sltu         tp, a4, s11
                  ori          a7, a7, -1437
                  sltu         t0, a0, a5
                  ori          s5, s8, 1508
                  lui          t3, 613011
                  sub          s3, gp, tp
                  slti         t2, a1, 1031
                  sub          a2, t0, tp
                  and          t4, a1, a7
                  sra          s7, t6, zero
                  srai         s2, t5, 16
                  xori         a4, s10, -1657
                  and          a6, s8, s9
                  sub          t5, tp, s6
                  nop
                  xor          t6, ra, s7
                  auipc        s3, 651722
                  sltu         s5, a3, a0
                  lui          s7, 352999
                  ori          tp, a5, -646
                  nop
                  ori          s10, a1, 332
                  lui          t1, 833674
                  srl          tp, zero, s3
                  xori         a4, sp, 313
                  slli         zero, t3, 18
                  sltu         gp, t0, a2
                  nop
                  xori         a5, t1, -1135
                  sll          s4, s2, t5
                  add          s11, s9, s7
                  sra          t5, t1, sp
                  add          s9, a1, t5
                  sltu         s0, a6, tp
                  srl          t0, a0, sp
                  add          s9, s3, a1
                  srai         t6, t4, 2
                  or           s7, t6, a6
                  sub          s9, s11, a0
                  slti         s10, a1, -1187
                  srli         t0, t1, 6
                  nop
                  addi         gp, s7, -498
                  slt          a4, a7, a6
                  srai         s0, s1, 6
                  slt          s7, t3, a5
                  slli         t4, sp, 23
                  slli         s11, s4, 3
                  slti         t4, tp, -137
                  nop
                  auipc        s0, 382224
                  auipc        a2, 535761
                  auipc        t3, 937120
                  auipc        t0, 562044
                  xor          s1, a3, a3
                  addi         a5, t6, 1388
                  andi         zero, a4, -181
                  srai         s5, s3, 7
                  slli         s0, s1, 0
                  slt          t6, s10, t5
                  srli         s5, t2, 12
                  sltu         tp, a4, t4
                  slti         a5, s0, -939
                  slti         ra, s11, 1059
                  xor          s9, s3, a0
                  slt          s2, a6, s11
                  nop
                  or           s2, t4, t3
                  xor          s6, s10, s11
                  andi         t1, a3, -839
                  sub          t4, s4, a0
                  sub          sp, ra, t2
                  sub          s2, a4, a4
                  xor          t5, s11, a2
                  nop
                  slt          t3, s1, gp
                  or           a7, a6, a5
                  addi         s7, t3, -152
                  sltiu        t6, s5, 367
                  xor          t4, a7, s8
                  slti         s9, s7, 1805
                  srli         a4, s2, 14
                  addi         s6, t6, -841
                  srai         s3, gp, 30
                  sll          t4, s2, s4
                  xori         t2, s2, -1187
                  addi         a6, t5, -1025
                  sub          a3, s3, t2
                  ori          t6, sp, -1198
                  srl          a6, gp, zero
                  auipc        s6, 174819
                  srl          t1, a7, s8
                  sltiu        s4, t6, 41
                  nop
                  xor          s11, t4, ra
                  and          s7, s10, s8
                  add          a3, s11, a3
                  lui          t2, 309185
                  sub          gp, t2, t2
                  sltu         t3, sp, ra
                  nop
                  srai         s10, s7, 29
                  and          a6, t1, s4
                  add          s9, a2, a1
                  addi         s9, t3, -1969
                  sra          t0, t2, a2
                  xor          tp, a0, s10
                  auipc        s0, 298591
                  nop
                  ori          s6, a3, 1231
                  slli         t4, t4, 23
                  ori          s6, a2, -1545
                  sltiu        a5, s2, -1409
                  and          s2, s1, t1
                  slti         s2, s9, -202
                  srai         a5, s9, 28
                  and          s9, s8, zero
                  slti         s10, s6, 531
                  or           sp, a5, gp
                  sra          a4, s4, a0
                  and          sp, t3, sp
                  nop
                  sra          s1, t3, s0
                  sltu         sp, t6, s6
                  ori          s7, zero, -1964
                  auipc        t0, 285590
                  ori          gp, s5, -1196
                  srli         s1, t5, 9
                  sub          s11, sp, s7
                  srl          s6, tp, a1
                  slt          s0, t5, t4
                  sub          s1, t5, s6
                  auipc        sp, 62034
                  andi         a7, t3, 1411
                  and          t0, t1, s6
                  slti         a4, a6, 647
                  xor          s0, a2, a4
                  add          t4, a0, a3
                  sltu         a7, ra, s3
                  srl          sp, s5, s11
                  sll          s3, s2, s8
                  lui          s4, 878336
                  srl          s2, gp, s8
                  auipc        s10, 477242
                  nop
                  srl          t1, gp, s2
                  addi         t4, a2, -1772
                  auipc        a6, 518567
                  add          s9, gp, t3
                  sll          a5, a7, tp
                  or           a3, a3, t1
                  slti         s7, s0, 1249
                  sra          s0, a6, t1
                  slti         a5, t0, 980
                  slti         tp, a7, -274
                  lui          s5, 368217
                  andi         ra, t6, -822
                  slti         s2, s1, -1033
                  srl          s6, a5, a1
                  sra          t5, a1, a7
                  and          a2, s6, s3
                  slli         s5, s11, 17
                  slt          s1, s6, gp
                  add          s7, s10, s8
                  auipc        s10, 379808
                  addi         a2, t0, -1958
                  sub          s1, s8, t5
                  srai         s5, s2, 28
                  sltu         t1, s11, t3
                  lui          s9, 146393
                  slt          t2, t0, s11
                  srli         a3, a5, 29
                  sra          t4, s8, s2
                  sra          s9, a6, a1
                  add          tp, a3, a5
                  srai         t4, t3, 10
                  ori          s2, s6, -858
                  srai         gp, t0, 7
                  slli         s11, t5, 26
                  and          a6, s11, t1
                  and          s10, a1, t1
                  srl          a6, zero, s9
                  and          t4, s10, t4
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t0, 0x0
                  li           s7, 0x4d2a02b7
                  li           s1, 0x6f0ebb2f
                  li           t6, 0xffffffff
                  li           sp, 0xffffffff
                  li           gp, 0x8531a774
                  li           a6, 0x80000000
                  li           t1, 0x80000000
                  li           t2, 0x80000000
                  addi         a5, t1, 1028
                  lui          t0, 1006355
                  addi         a6, t1, -132
                  addi         t6, t6, 622
                  add          a6, t1, t6
                  addi         t6, s1, 1862
                  add          t1, t0, sp
                  nop
                  add          t6, t1, t6
                  auipc        gp, 391965
                  sub          sp, gp, t1
                  lui          t2, 555632
                  sub          t0, gp, t0
                  lui          a6, 494038
                  add          s1, a6, t0
                  auipc        s7, 63832 #end riscv_int_numeric_corner_stream_19
                  add          s11, s10, s2
                  sub          s10, a4, s2
                  sltiu        s10, s10, 949
                  sltiu        ra, s9, -650
                  xor          t2, t1, a4
                  srl          s5, s10, a1
                  ori          t1, sp, -1567
                  srli         a3, s3, 17
                  or           s7, s3, ra
                  add          gp, s0, s3
                  nop
                  and          s7, t5, tp
                  srli         s9, a5, 1
                  srli         s9, s10, 27
                  sltu         a7, tp, a4
                  sra          s5, s3, t3
                  and          gp, s10, s3
                  auipc        a7, 810040
                  andi         tp, zero, -1561
                  srli         a4, a0, 30
                  slt          s3, zero, s9
                  srai         s10, t6, 15
                  sra          s1, zero, s0
                  add          t3, t3, a7
                  and          zero, s4, s2
                  sltu         a7, a2, a0
                  ori          a5, s8, 1546
                  sltiu        t5, t3, -690
                  auipc        s2, 545117
                  xor          t3, s9, t4
                  srli         a2, t1, 31
                  slti         s2, ra, 1579
                  addi         t2, t5, -1612
                  or           t5, a3, a5
                  sll          s11, s6, a3
                  sltu         s10, t6, t0
                  srai         s11, t6, 22
                  auipc        a3, 331963
                  lui          s6, 711566
                  and          a7, t3, t4
                  sub          a5, a5, a0
                  xori         t2, a7, 1061
                  andi         s2, s6, -1046
                  srai         s10, a5, 31
                  addi         s10, a5, 1449
                  addi         s3, a1, -775
                  nop
                  slt          a3, t5, s4
                  andi         gp, a4, 778
                  xori         gp, s5, -386
                  sll          s6, a1, s6
                  sub          s4, s7, a5
                  sll          s11, t0, t0
                  sll          s0, t4, t0
                  sra          t1, a3, t5
                  srai         s2, zero, 1
                  sltu         s7, t5, zero
                  xori         a5, a1, -995
                  sll          a6, s10, a2
                  addi         a5, a2, 1746
                  or           s10, s10, s6
                  nop
                  sub          a7, s0, s5
                  sll          sp, gp, s7
                  lui          s7, 474788
                  slti         a7, s4, -154
                  sltu         ra, a1, s10
                  auipc        s11, 433305
                  and          s9, t0, s3
                  srai         t2, s0, 28
                  nop
                  sltu         s0, gp, a3
                  sll          t5, a1, s3
                  sub          s4, s5, s8
                  or           t4, s4, ra
                  xori         sp, s7, 401
                  nop
                  nop
                  slti         s1, t6, 648
                  sltu         s11, s7, a3
                  sub          t3, a3, a5
                  sltu         t5, s3, a3
                  sra          s3, s7, s4
                  srai         s10, t4, 24
                  nop
                  sub          t3, s6, a0
                  srai         s0, s6, 23
                  sra          t4, s7, a4
                  slt          s4, t4, a2
                  sub          s0, s8, a7
                  add          t0, a7, s4
                  sll          s1, a5, s5
                  xor          t2, s6, ra
                  sltu         t5, s2, s10
                  xor          s3, s8, a4
                  xor          s0, t2, a6
                  slti         s3, t3, 1359
                  sll          sp, a7, ra
                  addi         a6, tp, 411
                  sltu         s10, s1, s2
                  ori          s0, t2, 582
                  lui          s6, 1039539
                  sltu         s2, t1, a3
                  srai         s1, s1, 21
                  srai         gp, sp, 20
                  nop
                  addi         t0, t6, -375
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a6, 0x7e020089
                  li           s9, 0xd94c3e9c
                  li           a3, 0x0
                  li           s6, 0x700875ff
                  li           s7, 0xffffffff
                  li           a5, 0xffffffff
                  li           s5, 0x7eb562b2
                  li           a7, 0xffffffff
                  li           t3, 0x0
                  auipc        sp, 682801
                  auipc        s9, 627290
                  nop
                  nop
                  addi         sp, sp, -1555
                  addi         t3, a6, 744
                  lui          a5, 219104
                  addi         s9, a3, -1889
                  nop
                  addi         a7, a5, -503
                  addi         s9, a3, 1171
                  sub          a5, a5, s6
                  sub          sp, s7, s9
                  add          s9, s9, s7
                  nop
                  auipc        a5, 870307
                  lui          sp, 704204
                  add          a3, s6, t3
                  sub          s7, s6, a5
                  addi         a3, s9, -1763
                  auipc        s9, 310714
                  sub          a7, sp, sp
                  lui          a3, 603252
                  addi         a6, a6, 554
                  auipc        s9, 711025
                  add          s7, sp, t3
                  add          a7, sp, a7 #end riscv_int_numeric_corner_stream_13
                  srl          s5, tp, s9
                  lui          sp, 979642
                  srli         s7, s11, 31
                  sll          t4, s2, a0
                  sra          s10, s3, s3
                  add          s3, a0, s9
                  xori         a5, tp, -202
                  sll          s0, s10, s3
                  nop
                  lui          s3, 132891
                  srli         t5, s6, 14
                  slti         s11, t5, 1221
                  andi         t5, s7, 983
                  xori         zero, tp, 94
                  sltiu        s5, t1, -115
                  addi         t5, t3, -231
                  slli         tp, a0, 31
                  sltu         a3, t3, a2
                  slli         zero, s5, 23
                  nop
                  slti         s0, zero, -1790
                  slt          a4, s6, zero
                  or           tp, s2, t0
                  lui          t2, 512993
                  andi         s6, a2, -896
                  xor          s6, t0, s6
                  ori          s11, a0, -2048
                  sub          a4, s0, s11
                  and          s5, s7, s6
                  lui          t1, 17152
                  sra          a2, a6, s5
                  add          s10, t4, s10
                  srl          zero, t1, a3
                  xori         gp, sp, 1736
                  srli         t2, a1, 1
                  lui          s11, 236408
                  slli         a6, a7, 8
                  andi         a6, sp, -512
                  slt          s2, a4, sp
                  slt          t3, s10, s10
                  sll          s1, a1, a2
                  srli         zero, s6, 9
                  and          s5, a3, a7
                  add          s7, sp, zero
                  srli         t0, t4, 30
                  add          s1, t4, sp
                  srai         s4, a7, 14
                  lui          t0, 549637
                  srl          a4, a3, t1
                  sltu         s2, gp, tp
                  srli         t0, t1, 6
                  lui          t1, 356888
                  auipc        s5, 336372
                  ori          a6, t1, -1480
                  lui          s4, 571145
                  auipc        s4, 69843
                  slti         s7, a6, 1530
                  andi         zero, a2, -1460
                  nop
                  xor          t3, a6, a0
                  sub          t3, s3, t2
                  addi         a5, zero, 718
                  sll          s11, s11, s7
                  srai         s6, s3, 29
                  sll          s1, t3, a4
                  sll          a4, t3, a1
                  xor          s11, a3, s11
                  ori          t1, zero, 16
                  sll          t5, t5, a3
                  ori          t5, t6, -1119
                  lui          tp, 998801
                  auipc        a2, 1018996
                  srli         ra, ra, 24
                  slt          s0, a7, s10
                  addi         s11, t5, 42
                  slli         s1, a7, 23
                  lui          ra, 791540
                  slti         s0, s2, 431
                  xori         gp, t0, -678
                  slti         tp, t3, -141
                  slt          t1, t4, tp
                  lui          a2, 426214
                  sltiu        s11, a5, 1880
                  sltiu        t5, s8, -1222
                  xori         t3, t1, -702
                  srl          t3, t1, s4
                  sltu         s4, s11, t4
                  slli         s1, s5, 13
                  or           t1, gp, s8
                  nop
                  nop
                  xori         s4, a7, 920
                  or           s4, s6, s0
                  and          s9, t0, s2
                  srli         a5, t2, 4
                  slt          a7, s5, t1
                  andi         t2, s1, 1403
                  and          ra, s1, s1
                  and          tp, a1, s11
                  slli         s1, s2, 23
                  slli         a6, sp, 14
                  sltiu        t1, s9, 12
                  addi         s4, t0, 1452
                  srli         t3, a0, 28
                  srli         a6, t2, 20
                  addi         ra, ra, 305
                  addi         t0, a2, 1255
                  ori          t5, t3, -141
                  srli         s5, s4, 3
                  andi         zero, s4, 346
                  xor          s1, t6, gp
                  slti         s7, sp, -448
                  and          t3, sp, s3
                  lui          s11, 440883
                  nop
                  xor          s6, a0, a1
                  auipc        s1, 15419
                  srli         s9, a2, 28
                  xor          s11, gp, s10
                  ori          tp, s11, 124
                  auipc        a6, 916947
                  or           t5, a5, t4
                  and          a2, s8, tp
                  slt          t1, t5, s7
                  srli         ra, a5, 6
                  sub          s10, s1, s5
                  and          s1, ra, t0
                  ori          s10, t3, -2041
                  or           s7, a4, t5
                  sltu         a6, t5, a6
                  lui          a3, 508372
                  slli         t1, ra, 29
                  auipc        s0, 254664
                  sll          a6, t1, s3
                  andi         gp, s3, -292
                  nop
                  or           a5, a7, s4
                  auipc        s5, 501767
                  auipc        s9, 358349
                  sub          t5, a3, zero
                  srai         s1, s8, 19
                  xori         s1, t2, 829
                  sra          tp, t4, ra
                  sub          s10, t0, t5
                  xor          tp, t4, tp
                  auipc        s7, 383053
                  xori         ra, s1, 622
                  slti         a5, s5, -1483
                  sltiu        a4, s2, 584
                  or           t4, t3, t3
                  sltiu        s10, a5, 388
                  sll          t6, s5, s3
                  sra          s9, gp, s10
                  sra          s1, sp, s11
                  nop
                  or           s7, ra, a7
                  sltiu        ra, s1, -8
                  srai         t4, s3, 30
                  sll          t3, ra, s1
                  lui          s3, 255168
                  nop
                  addi         s9, t2, 926
                  ori          a7, s9, -1958
                  xori         t0, s2, 1974
                  sub          sp, s5, a5
                  add          tp, t2, s11
                  srai         s0, a6, 18
                  sltiu        s3, s4, 441
                  addi         a6, t2, 1077
                  srai         sp, s11, 18
                  add          t6, s3, t3
                  xor          ra, a7, gp
                  sll          s7, s10, s0
                  slti         s6, s10, -516
                  sltiu        s0, t4, -930
                  sra          s5, s10, sp
                  xori         s0, s7, 492
                  andi         a6, t6, 845
                  xor          sp, a3, t5
                  xor          tp, s7, a3
                  srli         s5, s0, 22
                  srli         s10, s1, 21
                  ori          s1, a4, 670
                  xori         sp, t3, 461
                  slt          s6, s8, a3
                  srl          t3, s0, a5
                  andi         ra, s9, -725
                  slli         a7, s6, 15
                  andi         s10, t4, 988
                  sll          s7, a0, s1
                  auipc        t0, 228470
                  lui          t6, 462492
                  add          s9, t0, sp
                  addi         t0, s7, -1532
                  nop
                  lui          t2, 767112
                  srai         s2, t5, 11
                  and          a2, t0, zero
                  add          gp, s0, a2
                  srl          s5, a3, t1
                  slli         t5, s11, 5
                  sub          s0, t3, a0
                  sltiu        t3, a1, -783
                  andi         s0, t0, 1864
                  sltiu        a3, t1, -1143
                  auipc        a2, 262185
                  sub          s0, ra, tp
                  slt          a4, s5, zero
                  or           t1, t1, a0
                  addi         s6, s2, 118
                  sra          s5, t1, t1
                  sub          s5, s11, t3
                  srai         a2, t4, 19
                  sltu         t4, ra, a3
                  andi         s5, a7, 354
                  sub          s9, s2, s10
                  xori         s3, s3, 725
                  sub          zero, t0, t6
                  slli         s2, tp, 3
                  xor          a7, tp, s6
                  sltiu        a2, s2, -1972
                  xori         s2, tp, 1828
                  addi         tp, s0, 1094
                  addi         s4, gp, -180
                  srli         s6, s8, 8
                  addi         s0, a5, -1163
                  srai         t5, s5, 3
                  srl          s10, t3, tp
                  xori         t1, a1, -294
                  add          ra, t0, zero
                  and          a2, s1, t0
                  lui          zero, 192051
                  add          s3, s9, t1
                  xori         gp, t6, 629
                  xor          s1, s7, a2
                  ori          tp, a7, 1059
                  slli         t3, a3, 25
                  and          sp, s9, t1
                  slt          tp, s4, a4
                  xori         t0, s9, -1222
                  xor          zero, a4, t5
                  xor          s9, s9, s1
                  andi         t6, s4, 1347
                  xor          a3, a1, tp
                  or           t2, s5, s6
                  sub          ra, t1, a2
                  srl          a6, gp, a2
                  auipc        t4, 384315
                  sltu         s4, tp, s11
                  srli         t1, t2, 22
                  addi         s4, a6, 1638
                  slt          sp, s5, s5
                  slt          t0, a5, t5
                  srli         a4, t2, 22
                  ori          t1, a1, -1734
                  add          gp, a0, t0
                  addi         a7, t2, -222
                  xor          s9, a1, s5
                  sltiu        a5, s4, -40
                  slli         gp, tp, 19
                  xori         a3, s9, 826
                  slti         a7, s9, -543
                  srli         s11, s1, 17
                  xor          s0, t6, a2
                  srli         tp, t4, 4
                  srli         t2, zero, 25
                  or           t0, a2, t2
                  slti         a3, t1, -743
                  srl          t2, t5, a7
                  add          t5, s11, sp
                  auipc        gp, 571503
                  nop
                  sra          a5, s8, gp
                  xori         s0, a4, 1170
                  slti         s6, a5, 180
                  ori          s6, gp, 2033
                  srl          gp, s2, s3
                  slt          a5, s8, s6
                  sll          a6, s4, a3
                  add          s0, s8, t5
                  and          s0, s0, ra
                  andi         s6, a3, -566
                  srl          a3, s11, s4
                  and          a6, a0, s7
                  sra          s10, s11, a0
                  slli         a6, a6, 24
                  addi         a5, s2, -326
                  or           s3, t1, t4
                  sub          a7, s3, a6
                  nop
                  xor          t5, a3, a3
                  sltiu        s11, gp, 1985
                  lui          s6, 245917
                  andi         t1, s7, 1190
                  or           s0, s10, sp
                  slt          t2, s1, t5
                  sra          a2, s9, t2
                  slt          gp, t5, a2
                  and          t2, s3, a3
                  slti         s5, t2, 1833
                  srai         t1, gp, 19
                  srl          zero, t1, a4
                  sltiu        s2, ra, 1488
                  nop
                  lui          s7, 556309
                  sltiu        sp, t1, -1501
                  srai         t0, t1, 6
                  sltiu        tp, s7, 456
                  sra          gp, s4, s8
                  xor          zero, ra, s1
                  srai         s10, zero, 10
                  and          s7, s8, a6
                  addi         a4, s7, -584
                  srai         a6, t6, 14
                  slt          t2, a7, s9
                  sub          t4, tp, a1
                  sra          s9, ra, tp
                  sub          ra, a5, t0
                  sll          ra, a6, a0
                  sltiu        gp, t1, 88
                  andi         zero, a6, -603
                  srli         s5, t3, 20
                  xor          s11, sp, s9
                  ori          s5, a7, 690
                  sub          a5, t4, zero
                  ori          s1, gp, 392
                  slti         sp, ra, -1703
                  srai         s5, t6, 22
                  sltiu        s11, a5, -1348
                  ori          s2, a6, -1936
                  add          s3, t4, a7
                  sltu         s7, s4, s10
                  auipc        s4, 619190
                  or           s1, s8, t6
                  sltiu        zero, sp, 1302
                  nop
                  srai         t6, t5, 11
                  ori          s9, s6, 142
                  srai         s7, s11, 30
                  and          s2, tp, zero
                  sltu         s2, a0, t6
                  nop
                  sll          s6, s8, t4
                  sra          t4, s8, a7
                  slti         a7, t5, -1902
                  slt          s7, zero, a3
                  sltiu        t6, sp, 1525
                  sll          sp, s8, tp
                  sra          t2, gp, s7
                  srl          t4, t5, s9
                  nop
                  xor          t3, s3, a6
                  xori         t5, a1, -19
                  auipc        s7, 961257
                  sub          s0, s9, tp
                  add          s0, s11, a3
                  lui          t1, 742433
                  andi         a6, t2, -1209
                  srai         a2, a2, 3
                  sra          t4, s6, s3
                  xor          s6, s6, s0
                  slt          a5, s5, a6
                  srai         ra, s0, 4
                  and          tp, a0, sp
                  xori         t0, t1, 242
                  add          s10, a3, s2
                  andi         tp, s1, -1644
                  xor          t0, a2, s11
                  srai         zero, s10, 9
                  add          ra, t0, a5
                  or           a5, s10, a6
                  sll          t1, t5, tp
                  sll          a5, s6, s0
                  srli         sp, ra, 18
                  sltu         s0, s1, sp
                  sub          t2, s4, t4
                  sltu         a2, tp, t3
                  sltiu        s2, s4, 218
                  srl          zero, s2, a7
                  srl          s6, s6, a0
                  andi         t1, t3, 1961
                  xori         s11, a7, 529
                  srl          a3, sp, s5
                  addi         a7, s5, 1657
                  slt          s2, ra, tp
                  addi         s10, a3, -1593
                  slt          ra, s4, s7
                  sll          sp, s3, zero
                  sub          a6, a7, s6
                  sltiu        s6, s0, -350
                  or           s3, zero, s9
                  sll          a5, s9, s1
                  srai         s5, s4, 23
                  lui          t3, 376594
                  srai         a6, s1, 19
                  and          s7, a2, a4
                  addi         s7, s2, 751
                  srl          s2, t5, a2
                  or           a6, a5, t0
                  xor          t1, a1, t5
                  sltu         sp, t1, zero
                  srai         gp, a6, 6
                  add          tp, t4, sp
                  addi         s1, s3, -433
                  slt          t2, t3, a4
                  auipc        t4, 458680
                  sltu         a3, t4, zero
                  slt          sp, a3, a2
                  lui          t1, 974511
                  sra          tp, sp, s8
                  slti         gp, s10, 711
                  and          zero, a3, tp
                  slti         t1, s6, -872
                  ori          sp, s2, -999
                  slt          s5, a2, t6
                  addi         a4, s10, 990
                  sltiu        s10, s8, -2046
                  srai         t3, t6, 9
                  auipc        t5, 900982
                  sra          t6, zero, ra
                  srai         a3, s9, 21
                  xor          s6, a4, s3
                  andi         a7, s5, -609
                  add          s3, t5, a2
                  lui          a7, 878977
                  lui          t1, 225113
                  andi         t2, zero, -256
                  xori         a2, s7, -1512
                  auipc        ra, 359484
                  xor          s5, s2, t0
                  or           tp, s2, s11
                  auipc        t4, 530754
                  xor          s7, a7, a0
                  lui          t6, 111512
                  and          s11, a5, sp
                  lui          t4, 608417
                  slt          s1, zero, t0
                  sub          t2, zero, s4
                  srai         sp, ra, 10
                  slti         s6, gp, -1543
                  sll          t2, t0, s11
                  andi         t5, s3, -732
                  ori          s1, a2, -872
                  auipc        a7, 72567
                  srai         t0, s7, 3
                  srai         tp, t6, 17
                  or           a6, a2, s3
                  add          t1, a1, a1
                  xor          a3, a2, s10
                  lui          s11, 209515
                  lui          s3, 132222
                  xori         gp, t3, -1253
                  slti         gp, a4, -1814
                  sub          t2, s10, ra
                  add          s7, t5, s7
                  add          s10, t3, a1
                  srl          s1, s8, a5
                  srai         tp, s2, 27
                  or           s5, a0, a1
                  or           a4, tp, s5
                  srai         t3, a6, 2
                  sra          sp, zero, a4
                  addi         ra, t4, 1167
                  and          a5, t3, gp
                  auipc        ra, 408208
                  sub          t5, a5, sp
                  sltu         t4, t5, s0
                  addi         s5, s9, -1899
                  auipc        a7, 5977
                  and          s4, s11, gp
                  sltiu        zero, a1, 588
                  srl          zero, t0, s10
                  xori         s11, sp, -1469
                  sra          s1, s10, a4
                  auipc        s2, 809108
                  sra          s1, s10, a1
                  and          t1, s6, s2
                  add          zero, t3, a5
                  xori         sp, s1, -1989
                  xori         a6, t4, 1722
                  sltiu        gp, zero, 661
                  and          s6, a1, s9
                  sltiu        t2, a3, 1860
                  andi         s1, a3, -1641
                  sltiu        sp, s10, 1197
                  sltiu        t3, t1, -1649
                  srai         t5, s2, 19
                  addi         t5, a0, 215
                  add          t1, a2, t1
                  lui          a7, 319206
                  lui          t3, 885895
                  sltu         t1, s11, t1
                  sll          a5, a5, s8
                  sltiu        t5, s11, -1531
                  nop
                  add          t4, t3, t6
                  lui          s4, 814225
                  srai         s4, s1, 30
                  auipc        s2, 76534
                  ori          t6, gp, 415
                  xor          t6, s7, t5
                  or           a6, s1, s6
                  sub          s3, tp, t2
                  slt          zero, a1, t0
                  lui          t1, 200845
                  sub          sp, t5, ra
                  nop
                  sltu         a5, t3, gp
                  srl          s6, s6, ra
                  xor          s4, a1, zero
                  xori         s0, s3, 863
                  sll          a7, s1, s10
                  sll          a7, gp, s8
                  srl          s11, s7, s8
                  auipc        t3, 192562
                  sub          ra, a4, s5
                  or           a5, t5, s0
                  or           sp, s11, zero
                  add          t4, sp, t6
                  sra          s7, s4, s11
                  auipc        s5, 1019189
                  slti         s9, s1, 1818
                  srli         sp, t1, 10
                  slli         t0, s1, 22
                  slli         t5, a1, 6
                  srl          a5, t5, a2
                  srli         t3, t4, 13
                  srai         s2, s3, 17
                  sra          s10, s1, s6
                  andi         s0, s0, 1174
                  xor          t6, s10, s11
                  ori          t3, s0, -641
                  srl          t6, s4, a2
                  sltu         s0, s11, a3
                  xor          tp, gp, s9
                  xori         s10, t6, 1288
                  and          t4, a1, s2
                  auipc        sp, 840808
                  ori          s9, t0, -1599
                  slli         t5, t5, 6
                  xori         s11, sp, 88
                  andi         ra, a5, -1220
                  sltu         t4, a5, s11
                  sltiu        s5, a0, -1683
                  xori         zero, s4, -1572
                  sll          tp, a6, s3
                  sub          sp, s2, ra
                  ori          t6, sp, -478
                  ori          t4, a7, 1574
                  srli         s7, zero, 30
                  or           zero, a6, sp
                  and          s3, t0, t5
                  srli         s6, a6, 3
                  srli         gp, s1, 24
                  andi         t4, a3, 1690
                  andi         a5, sp, -1526
                  auipc        s4, 943953
                  xori         s0, s9, 774
                  slli         s0, s1, 21
                  and          t0, s1, s10
                  slli         s7, s4, 12
                  addi         s0, gp, -1592
                  srl          s5, t5, t0
                  add          sp, s3, t1
                  addi         sp, s4, -1066
                  auipc        s0, 655177
                  slt          a3, s3, gp
                  ori          a5, t3, -317
                  auipc        t3, 806363
                  sll          s7, a2, sp
                  slt          t5, t4, tp
                  sltiu        a4, s11, -1385
                  sra          t0, tp, s7
                  xor          gp, zero, s5
                  sll          s9, t4, a1
                  ori          s1, s8, 615
                  lui          gp, 118340
                  srl          s2, s4, ra
                  lui          a4, 193933
                  srl          a6, ra, s10
                  sltu         s9, t1, zero
                  slt          a5, t1, t4
                  sltu         gp, t4, a5
                  ori          s4, s8, 485
                  sub          a3, zero, t6
                  sltiu        a7, s11, 1345
                  xori         s9, zero, -898
                  andi         s0, a5, 79
                  nop
                  slli         t1, s11, 14
                  andi         gp, s0, -941
                  slti         s2, ra, -557
                  xor          s4, s0, s9
                  xori         a5, s7, 1928
                  lui          a5, 138546
                  andi         ra, a5, 1550
                  auipc        s9, 186776
                  or           a5, t0, s10
                  sll          a5, a5, s7
                  lui          t5, 530969
                  sltiu        t6, a1, -1801
                  xor          a6, s7, a6
                  xori         a4, a0, -1591
                  srl          t1, s4, s1
                  add          t1, t6, t6
                  slt          a2, zero, gp
                  xori         s2, t1, 1858
                  ori          s2, a1, -1947
                  slti         t1, s9, 1382
                  or           s10, t6, s7
                  sra          zero, s9, s5
                  sltiu        a3, s10, 1595
                  sltu         t3, a0, t2
                  xor          t1, s6, a6
                  andi         s9, a6, -2039
                  slli         a5, a7, 28
                  sll          s0, s2, a6
                  add          s2, s5, ra
                  srli         zero, s2, 17
                  sltiu        s6, sp, -724
                  srai         a4, ra, 0
                  srl          s0, t1, a0
                  sll          s10, t3, ra
                  sltiu        t1, t5, -2036
                  xori         a5, sp, -527
                  lui          t1, 429894
                  sltiu        tp, t3, 1785
                  xori         a2, t3, 596
                  ori          a5, a5, 247
                  sub          ra, s11, t4
                  sltu         s2, s0, ra
                  xori         a2, a2, 1291
                  srli         s5, a7, 4
                  srl          t5, ra, ra
                  ori          s11, s5, -1119
                  ori          s1, t5, -1458
                  addi         s10, s1, 518
                  sll          gp, tp, t4
                  slti         a4, t4, 1672
                  addi         s11, a2, 369
                  slti         s2, tp, -1259
                  srl          t1, s6, s9
                  srai         s9, s10, 15
                  sltiu        t4, s8, -262
                  srai         s9, s3, 22
                  sltiu        s4, s7, 1667
                  slli         a2, zero, 7
                  lui          s0, 178217
                  auipc        a6, 831229
                  sub          a4, ra, a0
                  add          s11, t1, s3
                  auipc        sp, 292403
                  ori          gp, s6, -2009
                  nop
                  sltiu        s0, s8, 756
                  sltiu        t1, s7, -955
                  lui          sp, 753523
                  xor          s11, a2, t1
                  srl          s4, a2, s8
                  sltiu        tp, s7, 107
                  srl          s6, s9, s3
                  or           gp, a2, a5
                  andi         t3, t6, 1481
                  sra          ra, s9, t6
                  addi         tp, s9, -1661
                  sra          s3, s1, s10
                  slti         s0, ra, -1440
                  or           a7, s5, ra
                  auipc        t3, 562610
                  and          ra, s11, s6
                  xori         a4, t4, 930
                  slti         t0, zero, 1068
                  sra          a3, s8, s3
                  and          tp, tp, t0
                  srli         tp, a1, 25
                  sltu         s1, s2, t3
                  add          zero, ra, s5
                  sll          t1, s7, s1
                  and          s3, s7, t4
                  auipc        gp, 294053
                  sll          gp, t3, s9
                  srli         a7, s0, 23
                  ori          s5, a6, 2047
                  slti         zero, s3, 1501
                  add          tp, s2, a4
                  sltu         s6, t2, s4
                  addi         s11, a3, 18
                  slli         t4, ra, 16
                  xori         t2, s9, -208
                  and          s6, t3, s8
                  and          s10, s2, s9
                  and          s1, tp, a4
                  or           t6, s6, ra
                  sll          zero, s0, a2
                  slt          s1, s3, t0
                  slli         t6, t4, 25
                  slt          a5, t6, s6
                  slt          s3, t0, gp
                  srli         s5, t5, 8
                  addi         s1, a1, 1721
                  nop
                  slt          ra, tp, s1
                  xori         s11, t1, 1194
                  slli         s10, s1, 24
                  sra          zero, a4, a6
                  and          s2, t5, t5
                  ori          sp, t0, -371
                  sub          s3, s0, a5
                  sub          s11, a3, s7
                  auipc        s1, 926038
                  auipc        gp, 24781
                  slt          t3, t4, a7
                  auipc        a2, 282124
                  andi         s4, a1, -223
                  ori          a5, s8, -819
                  nop
                  srli         t5, s5, 16
                  sra          zero, t6, t1
                  srl          t2, a4, gp
                  slti         zero, s11, -633
                  sub          t1, zero, s11
                  sub          zero, t4, s1
                  xori         a3, s1, -1238
                  sra          s7, a1, sp
                  sll          sp, a2, t0
                  auipc        a2, 644043
                  auipc        s9, 132209
                  lui          sp, 421147
                  xor          a6, t2, s0
                  andi         sp, a1, 1906
                  slti         sp, a3, 152
                  lui          s0, 858100
                  srli         sp, s4, 29
                  addi         t4, t1, -1826
                  or           s4, sp, a3
                  addi         a6, t4, 1407
                  srl          t0, s6, a2
                  lui          s2, 291876
                  ori          gp, s3, -416
                  sll          s2, s8, s8
                  srl          s0, s4, a2
                  add          s6, t5, s6
                  xor          s3, zero, s5
                  ori          a3, ra, 1817
                  addi         s4, t2, -1350
                  srl          ra, s0, a3
                  srai         s0, tp, 29
                  auipc        t0, 325956
                  slt          tp, ra, s2
                  xor          s11, a4, s3
                  srai         t6, a5, 16
                  sll          t1, s2, t1
                  sra          a5, gp, t6
                  xori         s11, sp, 1625
                  sltiu        gp, s0, 413
                  xori         s7, ra, -162
                  slt          s0, t1, tp
                  srl          s1, s11, t0
                  slti         a6, t4, -11
                  srl          t6, a0, s4
                  sra          ra, t6, s0
                  addi         t5, s8, 1189
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_38
                  li           t4, 0xffffffff
                  li           tp, 0x80000000
                  li           ra, 0xed1815f0
                  li           t1, 0x80000000
                  li           sp, 0xffffffff
                  li           s7, 0x0
                  li           a7, 0x80000000
                  li           s4, 0x0
                  li           t2, 0x0
                  addi         tp, t1, -62
                  sub          sp, t1, s4
                  add          ra, tp, t2
                  auipc        s7, 732041
                  addi         t4, s4, 202
                  sub          t2, t2, s7
                  lui          t4, 432159
                  sub          t2, ra, t4
                  lui          s7, 122735
                  addi         t4, a7, -379
                  nop
                  add          s7, t2, t1
                  addi         sp, s4, -276
                  add          s4, t4, ra
                  add          sp, t1, s1
                  lui          t2, 548538
                  auipc        sp, 1011805
                  sub          sp, sp, tp
                  nop
                  nop
                  addi         tp, sp, 137
                  sub          t4, sp, sp
                  lui          t4, 655862
                  sub          t4, t2, ra
                  add          t2, a7, a7 #end riscv_int_numeric_corner_stream_38
                  ori          t0, t3, -1888
                  lui          t5, 201201
                  srl          s2, s9, s2
                  ori          s4, t5, 1060
                  srai         s6, a2, 17
                  xor          zero, a3, s8
                  and          s3, s1, t3
                  addi         ra, tp, 508
                  sra          zero, a4, a5
                  nop
                  sll          t6, ra, s10
                  xor          t6, a4, s7
                  addi         a5, a2, -1421
                  or           s4, s7, gp
                  ori          gp, s8, -1531
                  srai         s0, t5, 20
                  slti         s11, s9, 839
                  add          a2, a6, a6
                  sub          t3, t5, a3
                  add          t0, a3, a3
                  slti         a6, zero, -364
                  sll          a7, a2, s9
                  addi         t2, s10, 789
                  sltiu        s6, a7, -1272
                  addi         a2, t5, 68
                  ori          a6, s1, 254
                  srai         s7, t6, 30
                  andi         t1, s11, 1930
                  sll          ra, a0, a0
                  slti         s11, ra, -724
                  slli         s9, a4, 13
                  auipc        tp, 677516
                  xor          a5, s11, s9
                  sra          s0, a0, a6
                  srli         t2, sp, 19
                  xor          s4, a2, s6
                  and          ra, s1, t2
                  sltiu        a4, a1, 952
                  and          t1, s3, t2
                  srli         s5, a0, 10
                  sll          a4, t6, a6
                  add          gp, t2, zero
                  lui          t0, 86290
                  add          s2, s7, s7
                  xor          t3, s5, tp
                  nop
                  sltu         s11, a0, a0
                  srli         gp, a3, 12
                  srl          a4, t1, t6
                  slt          a2, a7, t2
                  srli         s11, s6, 10
                  srai         s11, s8, 26
                  auipc        t3, 832265
                  sll          a5, s3, a6
                  andi         s9, s7, -273
                  srli         s10, a3, 16
                  srli         sp, a0, 16
                  sltu         tp, a6, a1
                  srai         t6, a6, 22
                  sltu         t4, gp, s5
                  nop
                  sltu         t3, s10, s2
                  slli         s11, s5, 1
                  auipc        t3, 759633
                  lui          t0, 837355
                  srli         s3, s2, 26
                  slti         a3, a0, -294
                  nop
                  slli         s5, s5, 1
                  auipc        ra, 601683
                  addi         s5, t5, 603
                  sll          a4, s6, a3
                  lui          gp, 923767
                  add          s7, s11, s0
                  slli         s9, a7, 25
                  sll          a5, a2, sp
                  add          a2, t6, t6
                  slti         sp, a7, -846
                  srl          s6, a6, t5
                  lui          s0, 18007
                  xori         t2, s3, -1007
                  slli         s0, a5, 13
                  srai         t6, a2, 24
                  srai         a4, ra, 5
                  xor          s0, t3, tp
                  sltiu        t6, ra, 1015
                  sltu         s7, zero, s8
                  or           s7, a7, sp
                  lui          s0, 358560
                  xori         t0, t5, -578
                  slt          gp, tp, t5
                  nop
                  and          t6, s4, t0
                  sll          s0, s6, a2
                  sll          ra, t4, s6
                  sub          t1, s11, t6
                  addi         a2, s3, -871
                  or           s11, a4, t2
                  ori          s11, a5, 370
                  sub          t3, s1, s0
                  srai         t3, t1, 4
                  andi         tp, s1, 1254
                  slti         s1, s3, 1823
                  nop
                  sltiu        s9, s2, 976
                  nop
                  lui          t3, 519751
                  ori          t4, s10, -767
                  sltu         a6, s11, t4
                  nop
                  or           sp, s5, a1
                  add          sp, s3, s0
                  sll          a2, s3, t5
                  slli         gp, tp, 1
                  sltu         s9, s7, s11
                  xori         s0, s4, -1335
                  sltu         a7, a4, a0
                  add          zero, t0, s7
                  xori         t5, t5, -1393
                  sub          a5, t4, a0
                  and          s4, a0, a0
                  slli         a5, s2, 30
                  slt          s9, sp, zero
                  slti         t2, s2, 735
                  sub          sp, t4, a2
                  slti         a7, s5, -276
                  sltu         a3, s2, a7
                  lui          t3, 382884
                  slti         a7, s5, -1017
                  sra          s9, ra, s5
                  nop
                  or           zero, t1, t4
                  nop
                  xor          a7, s4, s2
                  or           a2, s11, s6
                  slt          t2, a5, a1
                  xor          gp, s10, s11
                  lui          t6, 10235
                  ori          s9, a5, -284
                  andi         t6, s7, -1584
                  addi         s10, a1, 1373
                  slli         ra, a7, 0
                  or           s10, t5, t5
                  nop
                  slli         s0, a3, 13
                  srai         t1, s3, 0
                  srli         a6, s1, 10
                  srai         a6, s5, 9
                  sub          s0, t5, t0
                  slli         t4, s1, 12
                  sltiu        sp, s11, 183
                  andi         zero, a4, 993
                  xor          a3, s4, a3
                  addi         t5, t1, 1089
                  srli         t2, a1, 5
                  ori          gp, s9, -1027
                  ori          s5, t4, 1406
                  srl          t1, s4, a4
                  or           s10, a4, a7
                  sltiu        s10, zero, 589
                  add          a3, sp, s10
                  xor          s10, t4, ra
                  andi         s5, tp, 1400
                  sll          s11, s2, a5
                  and          zero, s2, s9
                  xor          sp, a5, t1
                  slt          s11, s0, a1
                  slli         t6, s5, 4
                  andi         s6, s0, 1333
                  slt          s10, s3, t4
                  and          s10, s8, s4
                  auipc        ra, 747768
                  lui          s10, 386633
                  xor          a4, a5, s9
                  srl          s9, s7, s1
                  slt          s9, s11, s8
                  srai         s6, s8, 0
                  andi         s1, s7, 1682
                  andi         s10, a2, 630
                  srl          t6, t2, a7
                  xori         s1, ra, -204
                  lui          zero, 412059
                  nop
                  or           t2, t3, t1
                  sub          a2, s3, s11
                  addi         s9, gp, -701
                  or           t1, a4, t4
                  xor          sp, s10, t3
                  sltu         t0, s5, gp
                  sra          t0, gp, s0
                  ori          a2, tp, 1993
                  andi         t4, gp, -500
                  and          a2, s10, s10
                  srl          t5, t6, s11
                  sll          sp, sp, zero
                  sll          s6, s0, a0
                  ori          s11, a2, -377
                  srl          tp, sp, s4
                  add          s3, t4, s9
                  auipc        a3, 296759
                  sra          tp, s4, s7
                  slli         a6, a7, 0
                  sra          t6, t3, sp
                  slti         s2, ra, 900
                  slli         s7, s7, 19
                  or           t1, a6, a4
                  xor          t2, a3, a5
                  andi         s0, gp, -1953
                  srl          s11, t0, s9
                  slli         t2, t0, 31
                  srai         zero, t4, 0
                  sltiu        s0, a3, 1234
                  xor          s7, a1, s5
                  sll          s1, t0, t0
                  sub          s6, t3, s4
                  sltu         s4, s11, t2
                  sltiu        t5, s4, 1752
                  sll          tp, tp, s4
                  slti         sp, t4, 1840
                  srl          s7, a6, s4
                  slti         s3, a7, -1925
                  or           a4, s4, s8
                  sra          a2, ra, s4
                  addi         s6, s7, -1380
                  addi         zero, gp, -1763
                  slti         gp, gp, 1857
                  sltu         t1, ra, a6
                  slt          a2, tp, s11
                  and          gp, a3, zero
                  slt          s6, s3, tp
                  sub          zero, t1, a4
                  sub          s4, a0, s8
                  srai         t3, s2, 1
                  sltiu        s1, a1, 1063
                  sltiu        a5, s4, -1963
                  ori          s0, t6, -304
                  auipc        s1, 812971
                  srli         a4, a0, 10
                  xor          t5, t1, zero
                  slt          s7, t6, sp
                  slt          s9, a3, s3
                  xor          a2, a5, a5
                  xor          t0, gp, s1
                  slt          t4, t3, a6
                  add          s10, a5, s2
                  and          t3, s7, s5
                  slti         t1, a5, -1553
                  xori         a5, a5, 666
                  srai         s9, zero, 5
                  nop
                  xor          zero, ra, s9
                  auipc        s5, 240407
                  srai         s5, a3, 19
                  lui          zero, 554804
                  sll          t5, a4, s4
                  auipc        t5, 669637
                  sub          s10, zero, s9
                  slti         s10, s0, -327
                  lui          s11, 498164
                  auipc        s6, 217453
                  srai         s11, s11, 14
                  srli         gp, s6, 5
                  xori         tp, t5, -1961
                  slti         s7, s10, -1605
                  add          t1, s0, s6
                  sra          s6, s3, t6
                  srli         tp, t4, 3
                  srl          s5, tp, a2
                  and          a7, t4, s6
                  addi         s6, a3, 480
                  sra          t3, s0, t5
                  sub          s10, a6, s7
                  and          a2, s11, s7
                  srli         t5, s9, 20
                  and          sp, t0, a5
                  xor          t2, t3, a0
                  sub          t6, s11, s6
                  xor          s2, t2, a6
                  sltu         zero, s7, s9
                  xor          s10, t6, s0
                  andi         gp, t3, 1659
                  xor          s2, s5, a2
                  sra          s7, a4, a6
                  nop
                  addi         s0, s0, -1218
                  sra          s2, s9, t5
                  xor          s4, t4, s0
                  sra          s0, s10, a7
                  lui          t0, 18443
                  sub          s0, s4, s5
                  srli         t0, s11, 29
                  and          s7, t0, s11
                  andi         t3, a1, -950
                  sltiu        s6, t0, 713
                  sub          t0, t2, s2
                  or           s6, s0, a3
                  ori          sp, s11, -753
                  add          s0, s8, s8
                  ori          s2, a4, -1011
                  lui          t1, 881454
                  sub          t6, s2, s3
                  sra          gp, a7, s4
                  lui          s7, 435556
                  sub          s9, ra, s5
                  sll          a4, tp, zero
                  or           s10, s6, a3
                  ori          s1, t5, 707
                  addi         s9, tp, -1138
                  andi         t5, t4, -267
                  andi         s0, s1, 983
                  nop
                  add          t4, s6, s3
                  nop
                  xori         s4, s11, 915
                  or           s10, sp, t6
                  sra          t0, a5, s6
                  xor          s5, gp, ra
                  and          a2, s4, sp
                  xor          s6, t5, ra
                  srl          s3, t5, s7
                  slti         sp, s3, -526
                  slli         t5, a0, 24
                  auipc        ra, 300465
                  xori         a5, a5, 661
                  nop
                  srl          s3, zero, s0
                  srl          s6, a4, gp
                  sub          s0, s0, a4
                  sub          t3, s8, a4
                  auipc        a5, 291799
                  sltiu        a4, a3, 380
                  slti         zero, a3, 2028
                  slli         s1, s9, 6
                  sltu         tp, s8, zero
                  auipc        a4, 815338
                  nop
                  sra          s0, t4, t4
                  sra          a4, s3, t2
                  add          s4, s3, gp
                  andi         a5, a7, 1019
                  and          s10, a2, a1
                  or           t4, ra, s9
                  lui          t3, 896430
                  xor          t2, t1, s9
                  slti         ra, tp, -471
                  xori         a3, s0, 519
                  srli         t1, s10, 9
                  auipc        s10, 786163
                  sltiu        t3, s2, 1192
                  slt          t0, s3, s2
                  sltu         s10, t1, s2
                  or           ra, s3, s7
                  srli         tp, s7, 30
                  and          s11, s5, s3
                  srai         t6, a5, 5
                  add          ra, a3, t5
                  sltiu        a5, s11, 138
                  slt          sp, ra, a4
                  sltiu        t0, a7, 438
                  sra          s2, t0, s8
                  sra          a7, a3, a7
                  auipc        t1, 117427
                  andi         s5, a6, 2043
                  slt          s7, t5, s10
                  or           s4, t6, s8
                  xor          s1, gp, t6
                  and          s1, s8, sp
                  nop
                  sll          s0, t6, t6
                  sll          t3, a5, gp
                  nop
                  slli         ra, zero, 21
                  slli         s0, s6, 19
                  addi         s11, a1, -923
                  auipc        a6, 491248
                  sub          t4, a5, ra
                  sra          s5, s2, s7
                  nop
                  sub          s10, a2, a0
                  xor          s0, t0, sp
                  sra          t4, s2, s1
                  add          zero, a3, a4
                  sltu         a5, t2, t1
                  or           gp, s2, tp
                  or           s9, a4, s1
                  sra          a2, ra, s3
                  addi         t3, a1, -1863
                  sltu         s11, t0, sp
                  srli         a4, a7, 5
                  addi         s0, s5, 1266
                  slli         t3, t1, 10
                  srl          s1, t0, t4
                  add          t4, s10, s2
                  addi         s4, t1, -1259
                  sra          tp, tp, s0
                  and          s11, s1, a3
                  xori         a4, a1, -1641
                  lui          a3, 592674
                  andi         s10, gp, 1983
                  sltiu        t3, ra, -2047
                  and          sp, s11, a5
                  sll          s7, a3, ra
                  srli         s3, t3, 27
                  sub          a7, t1, sp
                  addi         t1, s6, 713
                  sra          a3, a7, s9
                  slli         zero, zero, 2
                  xori         s2, t4, 1440
                  or           s7, s5, a5
                  slli         ra, t4, 21
                  and          t4, s11, t6
                  addi         t6, s7, 333
                  or           a6, a6, t6
                  slti         a6, a0, 948
                  and          s7, s10, s3
                  xor          t2, t0, a5
                  add          zero, t6, a3
                  or           a3, s9, t2
                  sll          a7, t1, s11
                  auipc        a4, 567780
                  nop
                  srai         t3, a4, 5
                  sra          s6, s10, s5
                  lui          s4, 441811
                  slt          t1, a4, zero
                  srli         t3, zero, 9
                  sub          s0, t5, a2
                  and          ra, t6, gp
                  slli         s9, a6, 16
                  xori         s7, a0, -603
                  and          sp, s5, s10
                  nop
                  slli         s2, ra, 18
                  slli         a7, a0, 15
                  auipc        s5, 410104
                  slt          s0, s5, ra
                  sll          tp, ra, t6
                  lui          s11, 398783
                  sltiu        s0, sp, 1591
                  xor          s0, sp, ra
                  andi         s5, a2, -1632
                  srli         s6, s2, 25
                  lui          zero, 434655
                  ori          a4, a1, 1307
                  slli         tp, a2, 5
                  nop
                  add          t2, s2, s3
                  auipc        a6, 1035143
                  andi         ra, t5, 1673
                  and          t1, s3, s4
                  auipc        a6, 500433
                  addi         s2, tp, 1732
                  or           zero, s7, zero
                  sltu         sp, sp, a4
                  sub          s2, a5, t1
                  xori         t5, s3, 1780
                  sltu         a6, s5, s8
                  auipc        a6, 781253
                  xori         gp, t5, 465
                  ori          s11, s1, 539
                  sra          s5, s0, t4
                  slt          s6, s2, tp
                  andi         s11, t3, 1299
                  andi         a7, t2, 1827
                  add          s10, a3, a2
                  addi         t2, gp, -561
                  nop
                  xor          t3, s3, a3
                  andi         t3, t0, 1796
                  and          t0, s4, a4
                  andi         a6, t3, 1843
                  xori         t2, s0, 1781
                  andi         s10, a4, 1607
                  srl          a4, s7, a2
                  or           t0, t6, s3
                  slt          s1, t1, t1
                  srl          s11, s5, s11
                  andi         s5, sp, 577
                  sub          s0, a4, a2
                  slti         zero, s2, -959
                  xor          t4, a3, a4
                  slt          s4, s5, t3
                  sltiu        a2, s6, 1314
                  andi         a2, gp, -626
                  sub          s2, a0, s7
                  sra          t2, s2, t4
                  sltiu        a5, s5, 1505
                  sltiu        t3, s2, -75
                  sra          t5, s9, s8
                  slti         a4, t5, -1167
                  sra          s6, a2, t3
                  sltu         zero, s5, s0
                  slt          s5, t3, a5
                  or           s2, a2, s4
                  xori         s10, s10, 1034
                  sltu         s2, sp, s3
                  xori         a7, t6, -1117
                  sll          a3, tp, s0
                  and          t5, t0, s5
                  slli         a4, s8, 26
                  auipc        tp, 715102
                  auipc        s1, 435413
                  addi         s6, s11, 703
                  or           a2, s0, s9
                  or           t5, zero, s1
                  ori          t5, ra, 795
                  auipc        s0, 900201
                  slti         t6, t1, -966
                  srai         t4, a2, 29
                  srl          s7, s10, gp
                  auipc        s1, 551613
                  slt          s10, s5, s5
                  slti         a5, s4, 1989
                  or           s10, s1, s3
                  or           s6, a0, s1
                  addi         a6, t1, -1713
                  addi         sp, t4, 1327
                  lui          t3, 664719
                  slti         a3, a0, 574
                  srli         t6, t0, 12
                  andi         s9, t2, 1455
                  or           t4, t5, s7
                  slti         a6, s7, -1762
                  slti         t4, s11, -1968
                  sub          s4, s4, zero
                  sll          s9, s11, s2
                  nop
                  nop
                  and          s3, s8, s8
                  srai         sp, t4, 28
                  lui          a2, 480434
                  ori          a2, s11, -1975
                  slti         s3, a3, 72
                  slti         ra, a7, -682
                  auipc        s2, 842339
                  and          a5, s5, zero
                  add          tp, s1, a3
                  sltiu        a5, a5, 1856
                  sltiu        ra, a5, -1776
                  srai         s6, a4, 6
                  sll          s4, s2, a1
                  sltiu        s0, s0, -1029
                  sll          tp, t2, s10
                  ori          t6, s3, -1641
                  srai         s0, a6, 0
                  and          t2, t2, t2
                  slti         t2, a6, -180
                  add          s10, s6, a6
                  addi         t2, ra, 899
                  slt          s7, s8, s2
                  sltu         a5, a4, a2
                  and          gp, s0, t5
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           a2, 0x80000000
                  li           a3, 0x80000000
                  li           ra, 0x0
                  li           s11, 0xfeffad4a
                  li           s10, 0x80000000
                  li           gp, 0xffffffff
                  li           t5, 0xffffffff
                  li           sp, 0xffffffff
                  li           t4, 0x80000000
                  auipc        sp, 715511
                  add          t5, tp, s10
                  sub          a2, a2, tp
                  add          ra, s11, gp
                  lui          t4, 510402
                  sub          a3, gp, tp
                  auipc        gp, 115062
                  add          t4, ra, tp
                  sub          t5, t4, t5
                  sub          s10, ra, t5
                  lui          t5, 435088
                  add          t4, sp, gp
                  sub          tp, gp, ra
                  auipc        a3, 25305
                  addi         sp, t5, 1916
                  addi         s11, sp, 524
                  add          ra, tp, sp
                  add          a3, tp, s11
                  nop
                  auipc        sp, 184627
                  lui          a3, 54669
                  sub          t4, ra, s11
                  lui          t4, 558227
                  addi         t4, tp, 256 #end riscv_int_numeric_corner_stream_27
                  ori          t3, a4, 271
                  xor          ra, a6, t2
                  sltu         s5, s7, a6
                  lui          s11, 227573
                  slti         s3, t5, 1583
                  slli         t4, t0, 25
                  sra          s10, s1, ra
                  sltiu        s10, sp, -1369
                  addi         a7, s3, -1926
                  sll          s11, a2, a4
                  sra          s7, t5, t4
                  sltu         s4, s3, gp
                  xor          t4, a2, s0
                  addi         s0, sp, -300
                  slt          s2, t2, gp
                  srai         tp, ra, 17
                  addi         sp, s2, 1460
                  auipc        s7, 551000
                  xori         tp, s0, 416
                  or           tp, s8, s9
                  lui          a6, 269019
                  sra          a3, t6, a2
                  or           sp, s9, a3
                  auipc        t6, 2648
                  add          t0, t4, s11
                  slti         s0, t6, -1306
                  slli         a6, a5, 18
                  auipc        a4, 281560
                  sub          t5, ra, s7
                  srl          s0, s9, a5
                  srli         s0, zero, 16
                  or           t1, t6, a2
                  or           a2, zero, s4
                  slli         a3, zero, 21
                  slt          s0, s6, s3
                  ori          a4, s11, -1418
                  xori         s3, t1, -732
                  slli         a4, sp, 20
                  srl          t1, a7, ra
                  sltu         t2, a3, a3
                  add          t3, a1, t1
                  lui          t4, 861450
                  and          s7, s1, t2
                  srl          sp, s8, s10
                  slti         t0, a3, 212
                  add          s5, a4, s1
                  slt          t6, a6, s7
                  srli         a2, a3, 18
                  and          s9, a7, a6
                  andi         a2, t6, 1082
                  slli         s5, a4, 2
                  slti         s3, t1, -664
                  srl          t4, s5, sp
                  or           s1, s5, s10
                  xor          t4, s3, t3
                  srli         s1, a4, 16
                  nop
                  sub          s6, s0, s10
                  srl          s9, a5, t0
                  auipc        sp, 684117
                  xor          s7, t2, s9
                  nop
                  lui          s9, 178311
                  sub          t5, s5, s2
                  srai         t6, t3, 29
                  add          s5, t3, zero
                  auipc        s0, 690380
                  sra          t1, a5, zero
                  slti         tp, s9, -1327
                  andi         sp, a2, -993
                  ori          s9, t3, 1631
                  sll          s1, a7, t1
                  sltiu        sp, s1, 1540
                  add          t2, s10, a7
                  sltu         s7, a1, t0
                  sll          ra, sp, s10
                  srli         tp, s11, 15
                  slti         t3, s3, -1371
                  sra          s3, s6, t4
                  slt          a6, s8, s5
                  srli         gp, t0, 10
                  srl          s10, s2, s8
                  nop
                  andi         a5, ra, 1891
                  srai         zero, s8, 8
                  addi         s0, s5, -168
                  addi         s6, t4, -277
                  srai         s5, t0, 17
                  srli         s0, s1, 11
                  xori         t0, s5, 882
                  lui          t0, 715913
                  auipc        t6, 962188
                  sra          t2, s5, s9
                  sub          s2, a4, s4
                  sltiu        a6, t3, -674
                  nop
                  sll          a7, s1, a6
                  lui          zero, 279313
                  add          t1, a4, a2
                  slti         gp, a5, 440
                  add          gp, a2, gp
                  lui          s9, 693478
                  addi         a5, a3, -40
                  sra          s5, a0, s6
                  nop
                  ori          s3, s0, 1933
                  slt          s11, t3, t1
                  sra          s4, s4, s3
                  addi         zero, s0, 1015
                  xori         sp, t1, 1476
                  srai         s11, s10, 15
                  slt          t2, t6, s7
                  sll          s10, zero, s7
                  slti         t0, s10, -1970
                  xor          t0, t4, ra
                  andi         gp, a5, -1245
                  slti         s5, t4, -1242
                  srl          s0, a7, s1
                  and          a4, a2, t5
                  sra          a3, a0, tp
                  xori         a3, t0, 1683
                  sltiu        t2, s5, -156
                  srli         a6, a7, 8
                  slti         s10, s5, 591
                  sub          ra, t2, a0
                  slli         s11, t5, 0
                  sub          s11, s5, s8
                  sra          ra, s0, a3
                  ori          s5, ra, 818
                  sub          a3, t6, a0
                  and          s3, s11, tp
                  sll          t3, t1, gp
                  or           t0, s9, tp
                  sltu         a5, a6, a6
                  srl          s2, t5, t2
                  addi         t6, zero, 905
                  srli         s11, s3, 29
                  sltu         sp, s9, s5
                  and          a5, t3, t2
                  xor          s4, gp, s0
                  slt          s4, a1, a2
                  slli         gp, a0, 17
                  slt          tp, a7, zero
                  srl          t2, a1, gp
                  sll          t6, t6, t2
                  slt          sp, t1, s3
                  xor          s9, s11, tp
                  nop
                  sltiu        t5, a6, 1781
                  slt          gp, s7, a6
                  or           a7, a2, a3
                  xori         a6, s9, -103
                  addi         gp, a7, 1613
                  lui          s9, 848113
                  addi         t5, a4, 1326
                  sll          a4, zero, s0
                  or           zero, a2, sp
                  sub          s0, gp, a3
                  and          t3, a0, s2
                  slli         t6, t1, 17
                  xor          t0, a2, t2
                  add          a6, a5, sp
                  andi         zero, t4, -761
                  srl          s7, a2, a4
                  and          s0, s11, zero
                  xori         s7, a3, -447
                  nop
                  lui          a6, 825004
                  slli         s5, s9, 14
                  andi         zero, a5, 494
                  ori          s0, s11, -1494
                  auipc        a5, 1020331
                  slt          a7, s8, ra
                  slti         tp, a7, 1883
                  auipc        gp, 647853
                  or           s2, a0, a6
                  xor          s7, t2, a2
                  add          a6, a1, t6
                  sll          t1, a6, tp
                  slli         s2, sp, 2
                  sra          s2, s1, s0
                  srli         a7, t1, 18
                  or           a3, t2, s1
                  xor          a2, s5, sp
                  xor          s6, t2, a1
                  xor          s9, s0, s9
                  srli         zero, a4, 3
                  sll          t1, a3, t2
                  andi         zero, ra, -1885
                  auipc        s0, 595926
                  slti         t5, t6, -946
                  srai         t1, t4, 23
                  and          s6, a4, t4
                  srai         a2, s6, 7
                  xori         sp, s5, -1870
                  srai         t2, a6, 31
                  sra          s7, s11, s10
                  and          s1, s4, ra
                  addi         a5, s8, -737
                  slt          sp, t5, t3
                  and          s11, s8, zero
                  la x24, test_done
                  jalr x0, x24, 0
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
.align           2
mtvec_handler:    
                  addi x10, x10, -4
                  sw  x11, (x10)
                  add x11, x10, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x10, x11, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x23, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x23, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x23, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x23, x19, ecall_handler
                  li x19, 0x1
                  beq x23, x19, instr_fault_handler
                  li x19, 0x5
                  beq x23, x19, load_fault_handler
                  li x19, 0x7
                  beq x23, x19, store_fault_handler
                  li x19, 0xc
                  beq x23, x19, pt_fault_handler
                  li x19, 0xd
                  beq x23, x19, pt_fault_handler
                  li x19, 0xf
                  beq x23, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x10, x11, zero
                  lw  x11, (x10)
                  addi x10, x10, 4
                  mret

load_fault_handler:
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x10, x11, zero
                  lw  x11, (x10)
                  addi x10, x10, 4
                  mret

store_fault_handler:
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x10, x11, zero
                  lw  x11, (x10)
                  addi x10, x10, 4
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x10, x11, zero
                  lw  x11, (x10)
                  addi x10, x10, 4
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x10, x11, zero
                  lw  x11, (x10)
                  addi x10, x10, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x11, x10, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x10, x11, zero
                  lw  x11, (x10)
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
