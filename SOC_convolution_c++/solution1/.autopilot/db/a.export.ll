; ModuleID = 'C:/Users/Mahmoud/Desktop/SOC_convolution_c++/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@out_data_2 = global [49 x double] zeroinitializer
@out_data_1 = global [196 x double] zeroinitializer
@out_data = global [49 x double] zeroinitializer
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@fifo_out = global [196 x double] zeroinitializer, align 16
@compute_str = internal unnamed_addr constant [8 x i8] c"compute\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @compute([784 x double]* %ip) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([784 x double]* %ip) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @compute_str) nounwind
  %fifo_in_temp = alloca [196 x double], align 16
  %in_conv2 = alloca [196 x double], align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %i_i = phi i4 [ 0, %0 ], [ %i_1, %.loopexit.loopexit ]
  %exitcond1_i = icmp eq i4 %i_i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %i_1 = add i4 %i_i, 1
  br i1 %exitcond1_i, label %conv1.exit.preheader, label %.preheader.preheader.i

conv1.exit.preheader:                             ; preds = %.loopexit
  br label %conv1.exit

.preheader.preheader.i:                           ; preds = %.loopexit
  %tmp_i = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i_i, i1 false)
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4 %i_i, i6 0)
  %p_shl4_cast = zext i10 %tmp to i11
  %tmp_9 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_i, i3 0)
  %p_shl5_cast = zext i7 %tmp_9 to i11
  %tmp_s = sub i11 %p_shl4_cast, %p_shl5_cast
  %tmp_16_i = or i5 %tmp_i, 1
  %tmp_1 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_16_i, i5 0)
  %p_shl2_cast = zext i10 %tmp_1 to i11
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5 %tmp_16_i, i2 0)
  %p_shl3_cast = zext i7 %tmp_6 to i11
  %tmp_7 = sub i11 %p_shl2_cast, %p_shl3_cast
  %tmp_8 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i_i, i4 0)
  %p_shl_cast = zext i8 %tmp_8 to i9
  %p_shl1_cast = zext i5 %tmp_i to i9
  %tmp_10 = sub i9 %p_shl_cast, %p_shl1_cast
  br label %.preheader.i

.preheader.i:                                     ; preds = %1, %.preheader.preheader.i
  %j_i = phi i4 [ %j_1, %1 ], [ 0, %.preheader.preheader.i ]
  %exitcond_i = icmp eq i4 %j_i, -2
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %j_1 = add i4 %j_i, 1
  br i1 %exitcond_i, label %.loopexit.loopexit, label %1

; <label>:1                                       ; preds = %.preheader.i
  %tmp_19_i = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %j_i, i1 false)
  %tmp_20_i_cast = zext i5 %tmp_19_i to i11
  %tmp_14 = add i11 %tmp_20_i_cast, %tmp_s
  %tmp_20_cast = sext i11 %tmp_14 to i64
  %ip_addr = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_20_cast
  %tmp_15 = add i11 %tmp_20_i_cast, %tmp_7
  %tmp_21_cast = sext i11 %tmp_15 to i64
  %ip_addr_2 = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_21_cast
  %ip_load = load double* %ip_addr, align 8
  %tmp_21_i = fmul double %ip_load, 9.147772e-02
  %tmp_22_i = or i5 %tmp_19_i, 1
  %tmp_23_i_cast = zext i5 %tmp_22_i to i11
  %tmp_16 = add i11 %tmp_23_i_cast, %tmp_s
  %tmp_22_cast = sext i11 %tmp_16 to i64
  %ip_addr_1 = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_22_cast
  %tmp_17 = add i11 %tmp_23_i_cast, %tmp_7
  %tmp_23_cast = sext i11 %tmp_17 to i64
  %ip_addr_3 = getelementptr [784 x double]* %ip, i64 0, i64 %tmp_23_cast
  %ip_load_1 = load double* %ip_addr_1, align 8
  %tmp_24_i = fmul double %ip_load_1, 8.124895e-02
  %tmp_25_i = fadd double %tmp_21_i, %tmp_24_i
  %ip_load_2 = load double* %ip_addr_2, align 8
  %tmp_26_i = fmul double %ip_load_2, 0xBFCA408266A2207C
  %tmp_27_i = fadd double %tmp_25_i, %tmp_26_i
  %ip_load_3 = load double* %ip_addr_3, align 8
  %tmp_28_i = fmul double %ip_load_3, -4.164300e-03
  %tmp_29_i = fadd double %tmp_27_i, %tmp_28_i
  %tmp_30_i_cast = zext i4 %j_i to i9
  %tmp_18 = add i9 %tmp_30_i_cast, %tmp_10
  %tmp_24_cast = sext i9 %tmp_18 to i64
  %out_data_1_addr_1 = getelementptr [196 x double]* @out_data_1, i64 0, i64 %tmp_24_cast
  store double %tmp_29_i, double* %out_data_1_addr_1, align 8
  br label %.preheader.i

conv1.exit.loopexit:                              ; preds = %3
  br label %conv1.exit

conv1.exit:                                       ; preds = %conv1.exit.preheader, %conv1.exit.loopexit
  %i = phi i4 [ %i_3, %conv1.exit.loopexit ], [ 0, %conv1.exit.preheader ]
  %counter_buffer1 = phi i8 [ %counter_buffer1_2, %conv1.exit.loopexit ], [ 0, %conv1.exit.preheader ]
  %exitcond5 = icmp eq i4 %i, -2
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %i_3 = add i4 %i, 1
  br i1 %exitcond5, label %.preheader13.preheader, label %2

.preheader13.preheader:                           ; preds = %conv1.exit
  br label %.preheader13

; <label>:2                                       ; preds = %conv1.exit
  %counter_buffer1_2 = add i8 %counter_buffer1, 14
  %tmp_11 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i, i4 0)
  %p_shl6_cast = zext i8 %tmp_11 to i9
  %tmp_12 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i, i1 false)
  %p_shl7_cast = zext i5 %tmp_12 to i9
  %tmp_13 = sub i9 %p_shl6_cast, %p_shl7_cast
  br label %3

; <label>:3                                       ; preds = %4, %2
  %j = phi i4 [ 0, %2 ], [ %j_2, %4 ]
  %counter_buffer1_1 = phi i8 [ %counter_buffer1, %2 ], [ %tmp_2, %4 ]
  %exitcond4 = icmp eq i4 %j, -2
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %j_2 = add i4 %j, 1
  br i1 %exitcond4, label %conv1.exit.loopexit, label %4

; <label>:4                                       ; preds = %3
  %tmp_1_cast = zext i4 %j to i9
  %tmp_19 = add i9 %tmp_13, %tmp_1_cast
  %tmp_25_cast = sext i9 %tmp_19 to i64
  %out_data_1_addr = getelementptr [196 x double]* @out_data_1, i64 0, i64 %tmp_25_cast
  %out_data_1_load = load double* %out_data_1_addr, align 8
  %tmp_2 = add i8 %counter_buffer1_1, 1
  %tmp_3 = zext i8 %counter_buffer1_1 to i64
  %fifo_in_temp_addr = getelementptr inbounds [196 x double]* %fifo_in_temp, i64 0, i64 %tmp_3
  store double %out_data_1_load, double* %fifo_in_temp_addr, align 8
  br label %3

.preheader13:                                     ; preds = %.preheader13.preheader, %5
  %i_i1 = phi i8 [ %i_2, %5 ], [ 0, %.preheader13.preheader ]
  %exitcond_i2 = icmp eq i8 %i_i1, -60
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 196, i64 196, i64 196) nounwind
  %i_2 = add i8 %i_i1, 1
  br i1 %exitcond_i2, label %buff.exit.preheader, label %5

buff.exit.preheader:                              ; preds = %.preheader13
  br label %buff.exit

; <label>:5                                       ; preds = %.preheader13
  %tmp_i3 = zext i8 %i_i1 to i64
  %fifo_in_temp_addr_1 = getelementptr [196 x double]* %fifo_in_temp, i64 0, i64 %tmp_i3
  %fifo_in_temp_load = load double* %fifo_in_temp_addr_1, align 8
  %fifo_out_addr_1 = getelementptr inbounds [196 x double]* @fifo_out, i64 0, i64 %tmp_i3
  store double %fifo_in_temp_load, double* %fifo_out_addr_1, align 8
  br label %.preheader13

buff.exit.loopexit:                               ; preds = %7
  br label %buff.exit

buff.exit:                                        ; preds = %buff.exit.preheader, %buff.exit.loopexit
  %i1 = phi i4 [ %i_4, %buff.exit.loopexit ], [ 0, %buff.exit.preheader ]
  %counter_buffer2 = phi i8 [ %counter_buffer2_2, %buff.exit.loopexit ], [ 0, %buff.exit.preheader ]
  %exitcond3 = icmp eq i4 %i1, -2
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %i_4 = add i4 %i1, 1
  br i1 %exitcond3, label %.preheader12.preheader, label %6

.preheader12.preheader:                           ; preds = %buff.exit
  br label %.preheader12

; <label>:6                                       ; preds = %buff.exit
  %counter_buffer2_2 = add i8 %counter_buffer2, 14
  %tmp_20 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %i1, i4 0)
  %p_shl8_cast = zext i8 %tmp_20 to i9
  %tmp_21 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %i1, i1 false)
  %p_shl9_cast = zext i5 %tmp_21 to i9
  %tmp_22 = sub i9 %p_shl8_cast, %p_shl9_cast
  br label %7

; <label>:7                                       ; preds = %8, %6
  %j2 = phi i4 [ 0, %6 ], [ %j_3, %8 ]
  %counter_buffer2_1 = phi i8 [ %counter_buffer2, %6 ], [ %tmp_4, %8 ]
  %exitcond2 = icmp eq i4 %j2, -2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %j_3 = add i4 %j2, 1
  br i1 %exitcond2, label %buff.exit.loopexit, label %8

; <label>:8                                       ; preds = %7
  %tmp_4 = add i8 %counter_buffer2_1, 1
  %tmp_5 = zext i8 %counter_buffer2_1 to i64
  %fifo_out_addr = getelementptr inbounds [196 x double]* @fifo_out, i64 0, i64 %tmp_5
  %fifo_out_load = load double* %fifo_out_addr, align 8
  %tmp_6_cast = zext i4 %j2 to i9
  %tmp_31 = add i9 %tmp_22, %tmp_6_cast
  %tmp_37_cast = sext i9 %tmp_31 to i64
  %in_conv2_addr = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_37_cast
  store double %fifo_out_load, double* %in_conv2_addr, align 8
  br label %7

.preheader12.loopexit:                            ; preds = %.preheader.i10
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12.loopexit
  %i_i4 = phi i3 [ %i_6, %.preheader12.loopexit ], [ 0, %.preheader12.preheader ]
  %exitcond1_i5 = icmp eq i3 %i_i4, -1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  %i_6 = add i3 %i_i4, 1
  br i1 %exitcond1_i5, label %conv2.exit.preheader, label %.preheader.preheader.i7

conv2.exit.preheader:                             ; preds = %.preheader12
  br label %conv2.exit

.preheader.preheader.i7:                          ; preds = %.preheader12
  %tmp_i6 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %i_i4, i1 false)
  %tmp_23 = call i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3 %i_i4, i5 0)
  %p_shl13_cast = zext i8 %tmp_23 to i9
  %tmp_24 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_i4, i2 0)
  %p_shl14_cast = zext i5 %tmp_24 to i9
  %tmp_25 = sub i9 %p_shl13_cast, %p_shl14_cast
  %tmp_2_i = or i4 %tmp_i6, 1
  %tmp_26 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4 %tmp_2_i, i4 0)
  %p_shl11_cast = zext i8 %tmp_26 to i9
  %tmp_27 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_2_i, i1 false)
  %p_shl12_cast = zext i5 %tmp_27 to i9
  %tmp_28 = sub i9 %p_shl11_cast, %p_shl12_cast
  %tmp_4_i_cast = zext i3 %i_i4 to i7
  %tmp_29 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_i4, i3 0)
  %p_shl10_cast = zext i6 %tmp_29 to i7
  %tmp_30 = sub i7 %p_shl10_cast, %tmp_4_i_cast
  br label %.preheader.i10

.preheader.i10:                                   ; preds = %9, %.preheader.preheader.i7
  %j_i8 = phi i3 [ %j_4, %9 ], [ 0, %.preheader.preheader.i7 ]
  %exitcond_i9 = icmp eq i3 %j_i8, -1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  %j_4 = add i3 %j_i8, 1
  br i1 %exitcond_i9, label %.preheader12.loopexit, label %9

; <label>:9                                       ; preds = %.preheader.i10
  %tmp_6_i = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %j_i8, i1 false)
  %tmp_7_i_cast = zext i4 %tmp_6_i to i9
  %tmp_34 = add i9 %tmp_7_i_cast, %tmp_25
  %tmp_40_cast = sext i9 %tmp_34 to i64
  %in_conv2_addr_1 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_40_cast
  %tmp_35 = add i9 %tmp_7_i_cast, %tmp_28
  %tmp_41_cast = sext i9 %tmp_35 to i64
  %in_conv2_addr_3 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_41_cast
  %in_conv2_load = load double* %in_conv2_addr_1, align 16
  %tmp_8_i = fmul double %in_conv2_load, 4.559669e-02
  %tmp_9_i = or i4 %tmp_6_i, 1
  %tmp_i1_cast = zext i4 %tmp_9_i to i9
  %tmp_36 = add i9 %tmp_i1_cast, %tmp_25
  %tmp_42_cast = sext i9 %tmp_36 to i64
  %in_conv2_addr_2 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_42_cast
  %tmp_37 = add i9 %tmp_i1_cast, %tmp_28
  %tmp_43_cast = sext i9 %tmp_37 to i64
  %in_conv2_addr_4 = getelementptr [196 x double]* %in_conv2, i64 0, i64 %tmp_43_cast
  %in_conv2_load_1 = load double* %in_conv2_addr_2, align 8
  %tmp_5_i = fmul double %in_conv2_load_1, 0xBFD78CDF6179ED82
  %tmp_10_i = fadd double %tmp_8_i, %tmp_5_i
  %in_conv2_load_2 = load double* %in_conv2_addr_3, align 16
  %tmp_11_i = fmul double %in_conv2_load_2, -8.351272e-02
  %tmp_12_i = fadd double %tmp_10_i, %tmp_11_i
  %in_conv2_load_3 = load double* %in_conv2_addr_4, align 8
  %tmp_13_i = fmul double %in_conv2_load_3, 0xBFD74D55BE787633
  %tmp_14_i = fadd double %tmp_12_i, %tmp_13_i
  %tmp_15_i_cast = zext i3 %j_i8 to i7
  %tmp_38 = add i7 %tmp_15_i_cast, %tmp_30
  %tmp_44_cast = sext i7 %tmp_38 to i64
  %out_data_2_addr_1 = getelementptr [49 x double]* @out_data_2, i64 0, i64 %tmp_44_cast
  store double %tmp_14_i, double* %out_data_2_addr_1, align 8
  br label %.preheader.i10

conv2.exit.loopexit:                              ; preds = %.preheader
  br label %conv2.exit

conv2.exit:                                       ; preds = %conv2.exit.preheader, %conv2.exit.loopexit
  %i3 = phi i3 [ %i_5, %conv2.exit.loopexit ], [ 0, %conv2.exit.preheader ]
  %exitcond1 = icmp eq i3 %i3, -1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  %i_5 = add i3 %i3, 1
  br i1 %exitcond1, label %11, label %.preheader.preheader

.preheader.preheader:                             ; preds = %conv2.exit
  %tmp_7_cast = zext i3 %i3 to i7
  %tmp_32 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i3, i3 0)
  %p_shl15_cast = zext i6 %tmp_32 to i7
  %tmp_33 = sub i7 %p_shl15_cast, %tmp_7_cast
  br label %.preheader

.preheader:                                       ; preds = %10, %.preheader.preheader
  %j4 = phi i3 [ %j_5, %10 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %j4, -1
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  %j_5 = add i3 %j4, 1
  br i1 %exitcond, label %conv2.exit.loopexit, label %10

; <label>:10                                      ; preds = %.preheader
  %tmp_8_cast = zext i3 %j4 to i7
  %tmp_39 = add i7 %tmp_33, %tmp_8_cast
  %tmp_45_cast = sext i7 %tmp_39 to i64
  %out_data_2_addr = getelementptr [49 x double]* @out_data_2, i64 0, i64 %tmp_45_cast
  %out_data_addr = getelementptr [49 x double]* @out_data, i64 0, i64 %tmp_45_cast
  %out_data_2_load = load double* %out_data_2_addr, align 8
  store double %out_data_2_load, double* %out_data_addr, align 8
  br label %.preheader

; <label>:11                                      ; preds = %conv2.exit
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i4(i4, i4) nounwind readnone {
entry:
  %empty = zext i4 %0 to i8
  %empty_13 = zext i4 %1 to i8
  %empty_14 = shl i8 %empty, 4
  %empty_15 = or i8 %empty_14, %empty_13
  ret i8 %empty_15
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i3.i5(i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %0 to i8
  %empty_16 = zext i5 %1 to i8
  %empty_17 = shl i8 %empty, 5
  %empty_18 = or i8 %empty_17, %empty_16
  ret i8 %empty_18
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i5.i2(i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %0 to i7
  %empty_19 = zext i2 %1 to i7
  %empty_20 = shl i7 %empty, 2
  %empty_21 = or i7 %empty_20, %empty_19
  ret i7 %empty_21
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_22 = zext i3 %1 to i7
  %empty_23 = shl i7 %empty, 3
  %empty_24 = or i7 %empty_23, %empty_22
  ret i7 %empty_24
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_25 = zext i3 %1 to i6
  %empty_26 = shl i6 %empty, 3
  %empty_27 = or i6 %empty_26, %empty_25
  ret i6 %empty_27
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_28 = zext i1 %1 to i5
  %empty_29 = shl i5 %empty, 1
  %empty_30 = or i5 %empty_29, %empty_28
  ret i5 %empty_30
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_31 = zext i2 %1 to i5
  %empty_32 = shl i5 %empty, 2
  %empty_33 = or i5 %empty_32, %empty_31
  ret i5 %empty_33
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_34 = zext i1 %1 to i4
  %empty_35 = shl i4 %empty, 1
  %empty_36 = or i4 %empty_35, %empty_34
  ret i4 %empty_36
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_37 = zext i5 %1 to i10
  %empty_38 = shl i10 %empty, 5
  %empty_39 = or i10 %empty_38, %empty_37
  ret i10 %empty_39
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i4.i6(i4, i6) nounwind readnone {
entry:
  %empty = zext i4 %0 to i10
  %empty_40 = zext i6 %1 to i10
  %empty_41 = shl i10 %empty, 6
  %empty_42 = or i10 %empty_41, %empty_40
  ret i10 %empty_42
}

!opencl.kernels = !{!0, !7, !10, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!15, !22, !29, !34, !41, !48, !49, !50}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"double [14]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in_data"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"double [28]*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"inp"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"double*"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"fifo_in"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"ip"}
!15 = metadata !{metadata !16, null}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 63, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"out_data_2", metadata !20, metadata !"double", i32 0, i32 63}
!20 = metadata !{metadata !21, metadata !21}
!21 = metadata !{i32 0, i32 6, i32 1}
!22 = metadata !{metadata !23, null}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"out_data_1", metadata !27, metadata !"double", i32 0, i32 63}
!27 = metadata !{metadata !28, metadata !28}
!28 = metadata !{i32 0, i32 13, i32 1}
!29 = metadata !{metadata !30, null}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 63, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"out_data", metadata !20, metadata !"double", i32 0, i32 63}
!34 = metadata !{metadata !35, [0 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 1}
!41 = metadata !{metadata !42, [196 x double]* @fifo_out}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 63, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"fifo_out", metadata !46, metadata !"double", i32 0, i32 63}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 195, i32 1}
!48 = metadata !{metadata !16, [49 x double]* @out_data_2}
!49 = metadata !{metadata !23, [196 x double]* @out_data_1}
!50 = metadata !{metadata !30, [49 x double]* @out_data}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"ip", metadata !55, metadata !"double", i32 0, i32 63}
!55 = metadata !{metadata !56, metadata !56}
!56 = metadata !{i32 0, i32 27, i32 1}
